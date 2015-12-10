; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@quant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 16
@dequant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@SNGL_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@COEFF_COST8x8 = constant [2 x [64 x i8]] [[64 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09"], align 16
@img = external global %struct.ImageParameters*
@imgY_org = common global i16** null, align 8
@input = external global %struct.InputParameters*
@cofAC8x8 = external global i32****
@enc_picture = external global %struct.storable_picture*
@imgUV_org = common global i16*** null, align 8
@resTrans_R = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common global [16 x [16 x i32]] zeroinitializer, align 16
@cofAC8x8_chroma = common global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@assignSE2partition = external global [2 x i32*]
@LevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]]
@LevelOffset8x8Luma_Intra = external global [13 x [8 x [8 x i32]]]
@LevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]]
@LevelOffset8x8Luma_Inter = external global [13 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]]
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
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
@mprRGB = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
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
define i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %lambda, i32* nocapture %min_cost) #0 {
entry:
  %cost8x8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{double %lambda}, i64 0, metadata !59), !dbg !850
  call void @llvm.dbg.value(metadata !{i32* %min_cost}, i64 0, metadata !60), !dbg !850
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !61), !dbg !851
  call void @llvm.dbg.declare(metadata !{i32* %cost8x8}, metadata !63), !dbg !851
  %mul = fmul double %lambda, 6.000000e+00, !dbg !852
  %add = fadd double %mul, 4.999000e-01, !dbg !852
  %call = call double @floor(double %add) #5, !dbg !852
  %conv = fptosi double %call to i32, !dbg !852
  store i32 %conv, i32* %min_cost, align 4, !dbg !852, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !62), !dbg !856
  br label %for.body, !dbg !856

for.body:                                         ; preds = %if.end, %entry
  %b8.011 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cbp.010 = phi i32 [ 0, %entry ], [ %cbp.1, %if.end ]
  %call2 = call i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 %b8.011, double %lambda, i32* %cost8x8) #6, !dbg !858
  %tobool = icmp eq i32 %call2, 0, !dbg !858
  br i1 %tobool, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %for.body
  %shl = shl i32 1, %b8.011, !dbg !860
  %or = or i32 %shl, %cbp.010, !dbg !860
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !61), !dbg !860
  br label %if.end, !dbg !862

if.end:                                           ; preds = %for.body, %if.then
  %cbp.1 = phi i32 [ %or, %if.then ], [ %cbp.010, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %cost8x8}, i64 0, metadata !63), !dbg !863
  %0 = load i32* %cost8x8, align 4, !dbg !863, !tbaa !853
  %1 = load i32* %min_cost, align 4, !dbg !863, !tbaa !853
  %add3 = add nsw i32 %1, %0, !dbg !863
  store i32 %add3, i32* %min_cost, align 4, !dbg !863, !tbaa !853
  %inc = add nsw i32 %b8.011, 1, !dbg !856
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !62), !dbg !856
  %exitcond = icmp eq i32 %inc, 4, !dbg !856
  br i1 %exitcond, label %for.end, label %for.body, !dbg !856

for.end:                                          ; preds = %if.end
  ret i32 %cbp.1, !dbg !864
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 %b8, double %lambda, i32* nocapture %min_cost) #0 {
entry:
  %dummy = alloca i32, align 4
  %c_nz = alloca i32, align 4
  %diff = alloca [64 x i32], align 16
  %rec8x8 = alloca [8 x [8 x i16]], align 16
  %left_available = alloca i32, align 4
  %up_available = alloca i32, align 4
  %all_available = alloca i32, align 4
  %left_block = alloca %struct.pix_pos, align 4
  %top_block = alloca %struct.pix_pos, align 4
  %rec8x8_c = alloca [2 x [4 x [4 x [4 x i32]]]], align 16
  call void @llvm.dbg.value(metadata !{i32 %b8}, i64 0, metadata !68), !dbg !865
  call void @llvm.dbg.value(metadata !{double %lambda}, i64 0, metadata !69), !dbg !865
  call void @llvm.dbg.value(metadata !{i32* %min_cost}, i64 0, metadata !70), !dbg !865
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !72), !dbg !866
  call void @llvm.dbg.declare(metadata !{i32* %dummy}, metadata !79), !dbg !866
  call void @llvm.dbg.declare(metadata !{i32* %c_nz}, metadata !80), !dbg !867
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !81), !dbg !867
  %0 = bitcast [64 x i32]* %diff to i8*, !dbg !867
  call void @llvm.lifetime.start(i64 256, i8* %0) #3, !dbg !867
  call void @llvm.dbg.declare(metadata !{[64 x i32]* %diff}, metadata !82), !dbg !867
  %1 = bitcast [8 x [8 x i16]]* %rec8x8 to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 128, i8* %1) #3, !dbg !868
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %rec8x8}, metadata !86), !dbg !868
  call void @llvm.dbg.value(metadata !869, i64 0, metadata !91), !dbg !870
  %rem = srem i32 %b8, 2, !dbg !871
  %mul = shl nsw i32 %rem, 3, !dbg !871
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !94), !dbg !871
  %div = sdiv i32 %b8, 2, !dbg !872
  %mul1 = shl nsw i32 %div, 3, !dbg !872
  call void @llvm.dbg.value(metadata !{i32 %mul1}, i64 0, metadata !95), !dbg !872
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !873, !tbaa !874
  %pix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 33, !dbg !873
  %3 = load i32* %pix_x, align 4, !dbg !873, !tbaa !853
  %add = add nsw i32 %3, %mul, !dbg !873
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !96), !dbg !873
  %pix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 34, !dbg !875
  %4 = load i32* %pix_y, align 4, !dbg !875, !tbaa !853
  %add2 = add nsw i32 %4, %mul1, !dbg !875
  call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !97), !dbg !875
  %opix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 37, !dbg !876
  %5 = load i32* %opix_x, align 4, !dbg !876, !tbaa !853
  %add3 = add nsw i32 %5, %mul, !dbg !876
  call void @llvm.dbg.value(metadata !{i32 %add3}, i64 0, metadata !98), !dbg !876
  %opix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 38, !dbg !877
  %6 = load i32* %opix_y, align 4, !dbg !877, !tbaa !853
  %add4 = add nsw i32 %6, %mul1, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %add4}, i64 0, metadata !99), !dbg !877
  %div5 = sdiv i32 %add, 4, !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %div5}, i64 0, metadata !100), !dbg !878
  %div6 = sdiv i32 %add2, 4, !dbg !879
  call void @llvm.dbg.value(metadata !{i32 %div6}, i64 0, metadata !101), !dbg !879
  call void @llvm.dbg.value(metadata !880, i64 0, metadata !102), !dbg !881
  %7 = load i16*** @imgY_org, align 8, !dbg !882, !tbaa !874
  call void @llvm.dbg.value(metadata !{i16** %7}, i64 0, metadata !103), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32* %left_available}, metadata !106), !dbg !883
  call void @llvm.dbg.declare(metadata !{i32* %up_available}, metadata !107), !dbg !883
  call void @llvm.dbg.declare(metadata !{i32* %all_available}, metadata !108), !dbg !883
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %left_block}, metadata !112), !dbg !884
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %top_block}, metadata !122), !dbg !885
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3, !dbg !886
  %8 = load i32* %current_mb_nr, align 4, !dbg !886, !tbaa !853
  %idxprom = sext i32 %8 to i64, !dbg !886
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51, !dbg !886
  %9 = load %struct.macroblock** %mb_data, align 8, !dbg !886, !tbaa !874
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %9, i64 %idxprom, i32 20, !dbg !886
  %10 = load i32* %c_ipred_mode, align 4, !dbg !886, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !130), !dbg !886
  %11 = bitcast [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c to i8*, !dbg !887
  call void @llvm.lifetime.start(i64 512, i8* %11) #3, !dbg !887
  call void @llvm.dbg.declare(metadata !{[2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c}, metadata !131), !dbg !887
  %div8 = sdiv i32 %mul, 4, !dbg !888
  %div9 = sdiv i32 %mul1, 4, !dbg !888
  call void @getLuma4x4Neighbour(i32 %8, i32 %div8, i32 %div9, i32 -1, i32 0, %struct.pix_pos* %left_block) #7, !dbg !888
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !889, !tbaa !874
  %current_mb_nr10 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 3, !dbg !889
  %13 = load i32* %current_mb_nr10, align 4, !dbg !889, !tbaa !853
  call void @getLuma4x4Neighbour(i32 %13, i32 %div8, i32 %div9, i32 0, i32 -1, %struct.pix_pos* %top_block) #7, !dbg !889
  %14 = load %struct.InputParameters** @input, align 8, !dbg !890, !tbaa !874
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 24, !dbg !890
  %15 = load i32* %UseConstrainedIntraPred, align 4, !dbg !890, !tbaa !853
  %tobool = icmp eq i32 %15, 0, !dbg !890
  %available31.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 0
  %.pre3221 = load i32* %available31.phi.trans.insert, align 4, !dbg !891, !tbaa !853
  br i1 %tobool, label %if.end, label %if.then, !dbg !890

if.then:                                          ; preds = %entry
  %tobool13 = icmp eq i32 %.pre3221, 0, !dbg !892
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !892

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 1, !dbg !892
  %16 = load i32* %mb_addr, align 4, !dbg !892, !tbaa !853
  %idxprom14 = sext i32 %16 to i64, !dbg !892
  %17 = load %struct.ImageParameters** @img, align 8, !dbg !892, !tbaa !874
  %intra_block = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 54, !dbg !892
  %18 = load i32** %intra_block, align 8, !dbg !892, !tbaa !874
  %arrayidx15 = getelementptr inbounds i32* %18, i64 %idxprom14, !dbg !892
  %19 = load i32* %arrayidx15, align 4, !dbg !892, !tbaa !853
  br label %cond.end, !dbg !892

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %if.then ], !dbg !892
  store i32 %cond, i32* %available31.phi.trans.insert, align 4, !dbg !892, !tbaa !853
  %available17 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0, !dbg !894
  %20 = load i32* %available17, align 4, !dbg !894, !tbaa !853
  %tobool18 = icmp eq i32 %20, 0, !dbg !894
  br i1 %tobool18, label %cond.end25, label %cond.true19, !dbg !894

cond.true19:                                      ; preds = %cond.end
  %mb_addr20 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 1, !dbg !894
  %21 = load i32* %mb_addr20, align 4, !dbg !894, !tbaa !853
  %idxprom21 = sext i32 %21 to i64, !dbg !894
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !894, !tbaa !874
  %intra_block22 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 54, !dbg !894
  %23 = load i32** %intra_block22, align 8, !dbg !894, !tbaa !874
  %arrayidx23 = getelementptr inbounds i32* %23, i64 %idxprom21, !dbg !894
  %24 = load i32* %arrayidx23, align 4, !dbg !894, !tbaa !853
  br label %cond.end25, !dbg !894

cond.end25:                                       ; preds = %cond.end, %cond.true19
  %cond26 = phi i32 [ %24, %cond.true19 ], [ 0, %cond.end ], !dbg !894
  store i32 %cond26, i32* %available17, align 4, !dbg !894, !tbaa !853
  br label %if.end, !dbg !895

if.end:                                           ; preds = %entry, %cond.end25
  %25 = phi i32 [ %cond, %cond.end25 ], [ %.pre3221, %entry ]
  %b8.off = add i32 %b8, 1, !dbg !896
  %26 = icmp ugt i32 %b8.off, 2, !dbg !896
  %tobool32 = icmp ne i32 %25, 0, !dbg !891
  br i1 %26, label %if.then30, label %if.else, !dbg !896

if.then30:                                        ; preds = %if.end
  br i1 %tobool32, label %cond.true33, label %if.end53, !dbg !891

cond.true33:                                      ; preds = %if.then30
  %pos_y = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 5, !dbg !891
  %27 = load i32* %pos_y, align 4, !dbg !891, !tbaa !853
  %idxprom34 = sext i32 %27 to i64, !dbg !891
  %pos_x = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 4, !dbg !891
  %28 = load i32* %pos_x, align 4, !dbg !891, !tbaa !853
  %idxprom35 = sext i32 %28 to i64, !dbg !891
  %29 = load %struct.ImageParameters** @img, align 8, !dbg !891, !tbaa !874
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 26, !dbg !891
  %30 = load i32*** %ipredmode8x8, align 8, !dbg !891, !tbaa !874
  %arrayidx36 = getelementptr inbounds i32** %30, i64 %idxprom35, !dbg !891
  %31 = load i32** %arrayidx36, align 8, !dbg !891, !tbaa !874
  %arrayidx37 = getelementptr inbounds i32* %31, i64 %idxprom34, !dbg !891
  %32 = load i32* %arrayidx37, align 4, !dbg !891, !tbaa !853
  br label %if.end53, !dbg !891

if.else:                                          ; preds = %if.end
  br i1 %tobool32, label %cond.true43, label %if.end53, !dbg !897

cond.true43:                                      ; preds = %if.else
  %pos_y44 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 5, !dbg !897
  %33 = load i32* %pos_y44, align 4, !dbg !897, !tbaa !853
  %idxprom45 = sext i32 %33 to i64, !dbg !897
  %pos_x46 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 4, !dbg !897
  %34 = load i32* %pos_x46, align 4, !dbg !897, !tbaa !853
  %idxprom47 = sext i32 %34 to i64, !dbg !897
  %35 = load %struct.ImageParameters** @img, align 8, !dbg !897, !tbaa !874
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 25, !dbg !897
  %36 = load i32*** %ipredmode, align 8, !dbg !897, !tbaa !874
  %arrayidx48 = getelementptr inbounds i32** %36, i64 %idxprom47, !dbg !897
  %37 = load i32** %arrayidx48, align 8, !dbg !897, !tbaa !874
  %arrayidx49 = getelementptr inbounds i32* %37, i64 %idxprom45, !dbg !897
  %38 = load i32* %arrayidx49, align 4, !dbg !897, !tbaa !853
  br label %if.end53, !dbg !897

if.end53:                                         ; preds = %if.else, %if.then30, %cond.true43, %cond.true33
  %upMode.0 = phi i32 [ %32, %cond.true33 ], [ %38, %cond.true43 ], [ -1, %if.then30 ], [ -1, %if.else ]
  %tobool55 = icmp eq i32 %rem, 0, !dbg !898
  %available57 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0, !dbg !899
  %39 = load i32* %available57, align 4, !dbg !899, !tbaa !853
  %tobool58 = icmp ne i32 %39, 0, !dbg !899
  br i1 %tobool55, label %if.else70, label %if.then56, !dbg !898

if.then56:                                        ; preds = %if.end53
  br i1 %tobool58, label %cond.true59, label %cond.end93, !dbg !899

cond.true59:                                      ; preds = %if.then56
  %pos_y60 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 5, !dbg !899
  %40 = load i32* %pos_y60, align 4, !dbg !899, !tbaa !853
  %idxprom61 = sext i32 %40 to i64, !dbg !899
  %pos_x62 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 4, !dbg !899
  %41 = load i32* %pos_x62, align 4, !dbg !899, !tbaa !853
  %idxprom63 = sext i32 %41 to i64, !dbg !899
  %42 = load %struct.ImageParameters** @img, align 8, !dbg !899, !tbaa !874
  %ipredmode8x864 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 26, !dbg !899
  %43 = load i32*** %ipredmode8x864, align 8, !dbg !899, !tbaa !874
  %arrayidx65 = getelementptr inbounds i32** %43, i64 %idxprom63, !dbg !899
  %44 = load i32** %arrayidx65, align 8, !dbg !899, !tbaa !874
  %arrayidx66 = getelementptr inbounds i32* %44, i64 %idxprom61, !dbg !899
  br label %if.end84, !dbg !899

if.else70:                                        ; preds = %if.end53
  br i1 %tobool58, label %cond.true73, label %cond.end93, !dbg !900

cond.true73:                                      ; preds = %if.else70
  %pos_y74 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 5, !dbg !900
  %45 = load i32* %pos_y74, align 4, !dbg !900, !tbaa !853
  %idxprom75 = sext i32 %45 to i64, !dbg !900
  %pos_x76 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 4, !dbg !900
  %46 = load i32* %pos_x76, align 4, !dbg !900, !tbaa !853
  %idxprom77 = sext i32 %46 to i64, !dbg !900
  %47 = load %struct.ImageParameters** @img, align 8, !dbg !900, !tbaa !874
  %ipredmode78 = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 25, !dbg !900
  %48 = load i32*** %ipredmode78, align 8, !dbg !900, !tbaa !874
  %arrayidx79 = getelementptr inbounds i32** %48, i64 %idxprom77, !dbg !900
  %49 = load i32** %arrayidx79, align 8, !dbg !900, !tbaa !874
  %arrayidx80 = getelementptr inbounds i32* %49, i64 %idxprom75, !dbg !900
  br label %if.end84, !dbg !900

if.end84:                                         ; preds = %cond.true73, %cond.true59
  %leftMode.0.in = phi i32* [ %arrayidx66, %cond.true59 ], [ %arrayidx80, %cond.true73 ]
  %leftMode.0 = load i32* %leftMode.0.in, align 4, !dbg !899
  %50 = or i32 %leftMode.0, %upMode.0, !dbg !901
  %51 = icmp slt i32 %50, 0, !dbg !901
  br i1 %51, label %cond.end93, label %cond.false87, !dbg !901

cond.false87:                                     ; preds = %if.end84
  %cmp88 = icmp slt i32 %upMode.0, %leftMode.0, !dbg !901
  %cond92 = select i1 %cmp88, i32 %upMode.0, i32 %leftMode.0, !dbg !901
  br label %cond.end93, !dbg !901

cond.end93:                                       ; preds = %if.else70, %if.then56, %cond.false87, %if.end84
  %cond94 = phi i32 [ 2, %if.end84 ], [ %cond92, %cond.false87 ], [ 2, %if.then56 ], [ 2, %if.else70 ], !dbg !901
  call void @llvm.dbg.value(metadata !{i32 %cond94}, i64 0, metadata !111), !dbg !901
  store i32 2147483647, i32* %min_cost, align 4, !dbg !902, !tbaa !853
  call void @intrapred_luma8x8(i32 %add, i32 %add2, i32* %left_available, i32* %up_available, i32* %all_available) #6, !dbg !903
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !71), !dbg !904
  call void @llvm.dbg.value(metadata !{i32* %all_available}, i64 0, metadata !108), !dbg !906
  %52 = load i32* %all_available, align 4, !dbg !906, !tbaa !853
  %tobool111 = icmp eq i32 %52, 0, !dbg !906
  %idxprom291 = sext i32 %10 to i64, !dbg !908
  %add446 = add nsw i32 %b8, 4, !dbg !915
  %add485 = add nsw i32 %b8, 8, !dbg !918
  %idxprom906 = sext i32 %b8 to i64, !dbg !919
  %idxprom949 = sext i32 %add446 to i64, !dbg !924
  %idxprom979 = sext i32 %add485 to i64, !dbg !929
  %mul1002 = shl i32 %div, 1, !dbg !932
  %mul1007 = shl i32 %rem, 1, !dbg !932
  %arraydecay = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0, !dbg !935
  %mul144 = fmul double %lambda, 4.000000e+00, !dbg !937
  call void @llvm.dbg.value(metadata !{i32* %up_available}, i64 0, metadata !107), !dbg !906
  %53 = load i32* %up_available, align 4, !dbg !906, !tbaa !853
  %tobool103 = icmp eq i32 %53, 0, !dbg !906
  call void @llvm.dbg.value(metadata !{i32* %left_available}, i64 0, metadata !106), !dbg !906
  %54 = load i32* %left_available, align 4, !dbg !906, !tbaa !853
  %55 = sext i32 %mul to i64, !dbg !904
  %56 = sext i32 %add3 to i64, !dbg !904
  %57 = sext i32 %mul1 to i64, !dbg !904
  %58 = sext i32 %add4 to i64, !dbg !904
  %59 = sext i32 %add to i64, !dbg !904
  %60 = sext i32 %add2 to i64, !dbg !904
  %61 = shl i32 %rem, 3, !dbg !904
  %62 = add i32 %3, %61, !dbg !904
  %63 = sext i32 %62 to i64
  br label %for.body, !dbg !904

for.body:                                         ; preds = %for.inc1126, %cond.end93
  %indvars.iv3213 = phi i64 [ 0, %cond.end93 ], [ %indvars.iv.next3214, %for.inc1126 ]
  %best_ipmode.02870 = phi i32 [ 0, %cond.end93 ], [ %best_ipmode.2, %for.inc1126 ]
  %min_rdcost.02868 = phi double [ 1.000000e+30, %cond.end93 ], [ %min_rdcost.2, %for.inc1126 ]
  %nonzero.02866 = phi i32 [ 0, %cond.end93 ], [ %nonzero.2, %for.inc1126 ]
  %64 = trunc i64 %indvars.iv3213 to i32, !dbg !906
  switch i32 %64, label %lor.lhs.false110 [
    i32 2, label %if.then112
    i32 7, label %land.lhs.true
    i32 3, label %land.lhs.true
    i32 0, label %land.lhs.true
    i32 8, label %land.lhs.true108
    i32 1, label %land.lhs.true108
  ], !dbg !906

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body
  call void @llvm.dbg.value(metadata !{i32* %up_available}, i64 0, metadata !107), !dbg !906
  br i1 %tobool103, label %lor.lhs.false104, label %if.then112, !dbg !906

lor.lhs.false104:                                 ; preds = %land.lhs.true
  switch i32 %64, label %lor.lhs.false110 [
    i32 8, label %land.lhs.true108
    i32 1, label %land.lhs.true108
  ], !dbg !906

land.lhs.true108:                                 ; preds = %for.body, %for.body, %lor.lhs.false104, %lor.lhs.false104
  call void @llvm.dbg.value(metadata !{i32* %left_available}, i64 0, metadata !106), !dbg !906
  %tobool109.not = icmp ne i32 %54, 0, !dbg !906
  %tobool111.not = xor i1 %tobool111, true, !dbg !906
  %brmerge = or i1 %tobool109.not, %tobool111.not, !dbg !906
  br i1 %brmerge, label %if.then112, label %for.inc1126, !dbg !906

lor.lhs.false110:                                 ; preds = %for.body, %lor.lhs.false104
  call void @llvm.dbg.value(metadata !{i32* %all_available}, i64 0, metadata !108), !dbg !906
  br i1 %tobool111, label %for.inc1126, label %if.then112, !dbg !906

if.then112:                                       ; preds = %land.lhs.true108, %for.body, %land.lhs.true, %lor.lhs.false110
  %65 = load %struct.InputParameters** @input, align 8, !dbg !938, !tbaa !874
  %rdopt = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 85, !dbg !938
  %66 = load i32* %rdopt, align 4, !dbg !938, !tbaa !853
  %tobool113 = icmp eq i32 %66, 0, !dbg !938
  %67 = load %struct.ImageParameters** @img, align 8, !dbg !939, !tbaa !874
  br i1 %tobool113, label %for.cond118.preheader, label %if.else154, !dbg !938

for.cond118.preheader:                            ; preds = %if.then112, %for.inc137
  %indvars.iv3209 = phi i64 [ %indvars.iv.next3210, %for.inc137 ], [ 0, %if.then112 ], !dbg !943
  %indvars.iv3206 = phi i64 [ %indvars.iv.next3207, %for.inc137 ], [ 0, %if.then112 ]
  %68 = add nsw i64 %indvars.iv3206, %58, !dbg !939
  %arrayidx125 = getelementptr inbounds i16** %7, i64 %68, !dbg !939
  %69 = load i16** %arrayidx125, align 8, !dbg !939, !tbaa !874
  br label %for.body120, !dbg !944

for.body120:                                      ; preds = %for.body120, %for.cond118.preheader
  %indvars.iv3202 = phi i64 [ %indvars.iv3209, %for.cond118.preheader ], [ %indvars.iv.next3203, %for.body120 ], !dbg !944
  %indvars.iv3199 = phi i64 [ 0, %for.cond118.preheader ], [ %indvars.iv.next3200, %for.body120 ]
  %70 = add nsw i64 %indvars.iv3199, %56, !dbg !939
  %arrayidx126 = getelementptr inbounds i16* %69, i64 %70, !dbg !939
  %71 = load i16* %arrayidx126, align 2, !dbg !939, !tbaa !945
  %conv = zext i16 %71 to i32, !dbg !939
  %arrayidx132 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3206, i64 %indvars.iv3199, !dbg !939
  %72 = load i16* %arrayidx132, align 2, !dbg !939, !tbaa !945
  %conv133 = zext i16 %72 to i32, !dbg !939
  %sub = sub nsw i32 %conv, %conv133, !dbg !939
  %arrayidx135 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %indvars.iv3202, !dbg !939
  store i32 %sub, i32* %arrayidx135, align 4, !dbg !939, !tbaa !853
  %indvars.iv.next3200 = add i64 %indvars.iv3199, 1, !dbg !944
  %indvars.iv.next3203 = add i64 %indvars.iv3202, 1, !dbg !944
  %lftr.wideiv3204 = trunc i64 %indvars.iv.next3200 to i32, !dbg !944
  %exitcond3205 = icmp eq i32 %lftr.wideiv3204, 8, !dbg !944
  br i1 %exitcond3205, label %for.inc137, label %for.body120, !dbg !944

for.inc137:                                       ; preds = %for.body120
  %indvars.iv.next3210 = add i64 %indvars.iv3209, 8, !dbg !943
  %indvars.iv.next3207 = add i64 %indvars.iv3206, 1, !dbg !943
  %lftr.wideiv3211 = trunc i64 %indvars.iv.next3207 to i32, !dbg !943
  %exitcond3212 = icmp eq i32 %lftr.wideiv3211, 8, !dbg !943
  br i1 %exitcond3212, label %for.end139, label %for.cond118.preheader, !dbg !943

for.end139:                                       ; preds = %for.inc137
  %cmp140 = icmp eq i32 %64, %cond94, !dbg !937
  br i1 %cmp140, label %cond.end146, label %cond.false143, !dbg !937

cond.false143:                                    ; preds = %for.end139
  %call = call double @floor(double %mul144) #5, !dbg !937
  %conv145 = fptosi double %call to i32, !dbg !937
  br label %cond.end146, !dbg !937

cond.end146:                                      ; preds = %for.end139, %cond.false143
  %cond147 = phi i32 [ %conv145, %cond.false143 ], [ 0, %for.end139 ], !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %cond147}, i64 0, metadata !78), !dbg !937
  %hadamard = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 6, !dbg !935
  %73 = load i32* %hadamard, align 4, !dbg !935, !tbaa !853
  %call148 = call i32 @SATD8X8(i32* %arraydecay, i32 %73) #7, !dbg !935
  %add149 = add nsw i32 %call148, %cond147, !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %add149}, i64 0, metadata !78), !dbg !935
  %74 = load i32* %min_cost, align 4, !dbg !946, !tbaa !853
  %cmp150 = icmp slt i32 %add149, %74, !dbg !946
  br i1 %cmp150, label %if.then152, label %for.inc1126, !dbg !946

if.then152:                                       ; preds = %cond.end146
  call void @llvm.dbg.value(metadata !947, i64 0, metadata !72), !dbg !948
  store i32 %add149, i32* %min_cost, align 4, !dbg !950, !tbaa !853
  br label %for.inc1126, !dbg !951

if.else154:                                       ; preds = %if.then112
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 164, !dbg !952
  %75 = load i32* %residue_transform_flag, align 4, !dbg !952, !tbaa !853
  %tobool155 = icmp eq i32 %75, 0, !dbg !952
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !953
  br i1 %tobool155, label %for.cond161.preheader, label %for.cond271.preheader, !dbg !952

for.cond271.preheader:                            ; preds = %if.else154
  %76 = load i16**** @imgUV_org, align 8, !dbg !908, !tbaa !874
  %77 = load i16*** %76, align 8, !dbg !908, !tbaa !874
  %78 = load i16*** @imgY_org, align 8, !dbg !954, !tbaa !874
  %arrayidx318 = getelementptr inbounds i16*** %76, i64 1, !dbg !955
  %79 = load i16*** %arrayidx318, align 8, !dbg !955, !tbaa !874
  br label %for.cond275.preheader, !dbg !953

for.cond161.preheader:                            ; preds = %if.else154, %for.inc201
  %indvars.iv3167 = phi i64 [ %indvars.iv.next3168, %for.inc201 ], [ 0, %if.else154 ]
  %80 = add nsw i64 %indvars.iv3167, %57, !dbg !956
  %81 = add nsw i64 %indvars.iv3167, %58, !dbg !961
  %arrayidx182 = getelementptr inbounds i16** %7, i64 %81, !dbg !961
  %82 = load i16** %arrayidx182, align 8, !dbg !961, !tbaa !874
  br label %for.body164, !dbg !962

for.body164:                                      ; preds = %for.body164, %for.cond161.preheader
  %indvars.iv3161 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next3162, %for.body164 ]
  %arrayidx171 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3167, i64 %indvars.iv3161, !dbg !956
  %83 = load i16* %arrayidx171, align 2, !dbg !956, !tbaa !945
  %84 = add nsw i64 %indvars.iv3161, %55, !dbg !956
  %arrayidx177 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 45, i64 %84, i64 %80, !dbg !956
  store i16 %83, i16* %arrayidx177, align 2, !dbg !956, !tbaa !945
  %85 = add nsw i64 %indvars.iv3161, %56, !dbg !961
  %arrayidx183 = getelementptr inbounds i16* %82, i64 %85, !dbg !961
  %86 = load i16* %arrayidx183, align 2, !dbg !961, !tbaa !945
  %conv184 = zext i16 %86 to i32, !dbg !961
  %87 = load i16* %arrayidx171, align 2, !dbg !961, !tbaa !945
  %conv192 = zext i16 %87 to i32, !dbg !961
  %sub193 = sub nsw i32 %conv184, %conv192, !dbg !961
  %arrayidx197 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 %indvars.iv3161, i64 %indvars.iv3167, !dbg !961
  store i32 %sub193, i32* %arrayidx197, align 4, !dbg !961, !tbaa !853
  %indvars.iv.next3162 = add i64 %indvars.iv3161, 1, !dbg !962
  %lftr.wideiv3165 = trunc i64 %indvars.iv.next3162 to i32, !dbg !962
  %exitcond3166 = icmp eq i32 %lftr.wideiv3165, 8, !dbg !962
  br i1 %exitcond3166, label %for.inc201, label %for.body164, !dbg !962

for.inc201:                                       ; preds = %for.body164
  %indvars.iv.next3168 = add i64 %indvars.iv3167, 1, !dbg !963
  %lftr.wideiv3171 = trunc i64 %indvars.iv.next3168 to i32, !dbg !963
  %exitcond3172 = icmp eq i32 %lftr.wideiv3171, 8, !dbg !963
  br i1 %exitcond3172, label %for.end203, label %for.cond161.preheader, !dbg !963

for.end203:                                       ; preds = %for.inc201
  call void (...)* @store_coding_state_cs_cm() #7, !dbg !964
  %call204 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %b8, i32 %64, double %lambda, double undef, i32 %cond94) #6, !dbg !965
  call void @llvm.dbg.value(metadata !{double %call204}, i64 0, metadata !91), !dbg !965
  %cmp205 = fcmp olt double %call204, %min_rdcost.02868, !dbg !965
  br i1 %cmp205, label %for.cond208.preheader, label %if.end269, !dbg !965

for.cond208.preheader:                            ; preds = %for.end203
  %88 = load %struct.ImageParameters** @img, align 8, !dbg !966, !tbaa !874
  %cofAC = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 47, !dbg !966
  %89 = load i32***** %cofAC, align 8, !dbg !966, !tbaa !874
  %arrayidx224 = getelementptr inbounds i32**** %89, i64 %idxprom906, !dbg !966
  %90 = load i32**** %arrayidx224, align 8, !dbg !966, !tbaa !874
  %91 = load i32***** @cofAC8x8, align 8, !dbg !966, !tbaa !874
  %arrayidx232 = getelementptr inbounds i32**** %91, i64 %idxprom906, !dbg !966
  %92 = load i32**** %arrayidx232, align 8, !dbg !966, !tbaa !874
  br label %for.cond212.preheader, !dbg !971

for.cond212.preheader:                            ; preds = %for.inc242, %for.cond208.preheader
  %indvars.iv3181 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next3182, %for.inc242 ]
  br label %for.cond216.preheader, !dbg !972

for.cond216.preheader:                            ; preds = %for.inc239, %for.cond212.preheader
  %indvars.iv3177 = phi i64 [ 0, %for.cond212.preheader ], [ %indvars.iv.next3178, %for.inc239 ]
  br label %for.body219, !dbg !973

for.body219:                                      ; preds = %for.body219, %for.cond216.preheader
  %indvars.iv3173 = phi i64 [ 0, %for.cond216.preheader ], [ %indvars.iv.next3174, %for.body219 ]
  %arrayidx225 = getelementptr inbounds i32*** %90, i64 %indvars.iv3173, !dbg !966
  %93 = load i32*** %arrayidx225, align 8, !dbg !966, !tbaa !874
  %arrayidx226 = getelementptr inbounds i32** %93, i64 %indvars.iv3181, !dbg !966
  %94 = load i32** %arrayidx226, align 8, !dbg !966, !tbaa !874
  %arrayidx227 = getelementptr inbounds i32* %94, i64 %indvars.iv3177, !dbg !966
  %95 = load i32* %arrayidx227, align 4, !dbg !966, !tbaa !853
  %arrayidx233 = getelementptr inbounds i32*** %92, i64 %indvars.iv3173, !dbg !966
  %96 = load i32*** %arrayidx233, align 8, !dbg !966, !tbaa !874
  %arrayidx234 = getelementptr inbounds i32** %96, i64 %indvars.iv3181, !dbg !966
  %97 = load i32** %arrayidx234, align 8, !dbg !966, !tbaa !874
  %arrayidx235 = getelementptr inbounds i32* %97, i64 %indvars.iv3177, !dbg !966
  store i32 %95, i32* %arrayidx235, align 4, !dbg !966, !tbaa !853
  %indvars.iv.next3174 = add i64 %indvars.iv3173, 1, !dbg !973
  %lftr.wideiv3175 = trunc i64 %indvars.iv.next3174 to i32, !dbg !973
  %exitcond3176 = icmp eq i32 %lftr.wideiv3175, 4, !dbg !973
  br i1 %exitcond3176, label %for.inc239, label %for.body219, !dbg !973

for.inc239:                                       ; preds = %for.body219
  %indvars.iv.next3178 = add i64 %indvars.iv3177, 1, !dbg !972
  %lftr.wideiv3179 = trunc i64 %indvars.iv.next3178 to i32, !dbg !972
  %exitcond3180 = icmp eq i32 %lftr.wideiv3179, 65, !dbg !972
  br i1 %exitcond3180, label %for.inc242, label %for.cond216.preheader, !dbg !972

for.inc242:                                       ; preds = %for.inc239
  %indvars.iv.next3182 = add i64 %indvars.iv3181, 1, !dbg !971
  %lftr.wideiv3183 = trunc i64 %indvars.iv.next3182 to i32, !dbg !971
  %exitcond3184 = icmp eq i32 %lftr.wideiv3183, 2, !dbg !971
  br i1 %exitcond3184, label %for.cond245.loopexit, label %for.cond212.preheader, !dbg !971

for.cond245.loopexit:                             ; preds = %for.inc242
  %98 = load %struct.storable_picture** @enc_picture, align 8, !dbg !974, !tbaa !874
  %imgY = getelementptr inbounds %struct.storable_picture* %98, i64 0, i32 25, !dbg !974
  %99 = load i16*** %imgY, align 8, !dbg !974, !tbaa !874
  br label %for.cond249.preheader, !dbg !977

for.cond249.preheader:                            ; preds = %for.cond249.preheader, %for.cond245.loopexit
  %indvars.iv3194 = phi i64 [ 0, %for.cond245.loopexit ], [ %indvars.iv.next3195, %for.cond249.preheader ]
  %scevgep3190 = getelementptr [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv3194, i64 0
  %scevgep31903191 = bitcast i16* %scevgep3190 to i8*
  %100 = add nsw i64 %indvars.iv3194, %60, !dbg !974
  %arrayidx257 = getelementptr inbounds i16** %99, i64 %100, !dbg !974
  %101 = load i16** %arrayidx257, align 8, !dbg !974, !tbaa !874
  %scevgep3192 = getelementptr i16* %101, i64 %63
  %scevgep31923193 = bitcast i16* %scevgep3192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep31903191, i8* %scevgep31923193, i64 16, i32 2, i1 false), !dbg !974
  %indvars.iv.next3195 = add i64 %indvars.iv3194, 1, !dbg !977
  %lftr.wideiv3197 = trunc i64 %indvars.iv.next3195 to i32, !dbg !977
  %exitcond3198 = icmp eq i32 %lftr.wideiv3197, 8, !dbg !977
  br i1 %exitcond3198, label %for.end268, label %for.cond249.preheader, !dbg !977

for.end268:                                       ; preds = %for.cond249.preheader
  call void @llvm.dbg.value(metadata !{i32* %c_nz}, i64 0, metadata !80), !dbg !978
  %102 = load i32* %c_nz, align 4, !dbg !978, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %102}, i64 0, metadata !81), !dbg !978
  call void @llvm.dbg.value(metadata !{double %call204}, i64 0, metadata !102), !dbg !979
  call void @llvm.dbg.value(metadata !947, i64 0, metadata !72), !dbg !980
  br label %if.end269, !dbg !981

if.end269:                                        ; preds = %for.end268, %for.end203
  %nonzero.1 = phi i32 [ %102, %for.end268 ], [ %nonzero.02866, %for.end203 ]
  %min_rdcost.1 = phi double [ %call204, %for.end268 ], [ %min_rdcost.02868, %for.end203 ]
  %best_ipmode.1 = phi i32 [ %64, %for.end268 ], [ %best_ipmode.02870, %for.end203 ]
  call void (...)* @reset_coding_state_cs_cm() #7, !dbg !982
  br label %for.inc1126, !dbg !983

for.cond275.preheader:                            ; preds = %for.inc362, %for.cond271.preheader
  %indvars.iv3026 = phi i64 [ 0, %for.cond271.preheader ], [ %indvars.iv.next3027, %for.inc362 ]
  %103 = add nsw i64 %indvars.iv3026, %58, !dbg !908
  %arrayidx284 = getelementptr inbounds i16** %77, i64 %103, !dbg !908
  %104 = load i16** %arrayidx284, align 8, !dbg !908, !tbaa !874
  %105 = add nsw i64 %indvars.iv3026, %57, !dbg !908
  %arrayidx302 = getelementptr inbounds i16** %78, i64 %103, !dbg !954
  %106 = load i16** %arrayidx302, align 8, !dbg !954, !tbaa !874
  %arrayidx319 = getelementptr inbounds i16** %79, i64 %103, !dbg !955
  %107 = load i16** %arrayidx319, align 8, !dbg !955, !tbaa !874
  br label %for.body278, !dbg !984

for.body278:                                      ; preds = %for.body278, %for.cond275.preheader
  %indvars.iv3020 = phi i64 [ 0, %for.cond275.preheader ], [ %indvars.iv.next3021, %for.body278 ]
  %108 = add nsw i64 %indvars.iv3020, %56, !dbg !908
  %arrayidx285 = getelementptr inbounds i16* %104, i64 %108, !dbg !908
  %109 = load i16* %arrayidx285, align 2, !dbg !908, !tbaa !945
  %conv286 = zext i16 %109 to i32, !dbg !908
  %110 = add nsw i64 %indvars.iv3020, %55, !dbg !908
  %arrayidx295 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %110, i64 %105, !dbg !908
  %111 = load i16* %arrayidx295, align 2, !dbg !908, !tbaa !945
  %conv296 = zext i16 %111 to i32, !dbg !908
  %sub297 = sub nsw i32 %conv286, %conv296, !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %sub297}, i64 0, metadata !125), !dbg !908
  %arrayidx303 = getelementptr inbounds i16* %106, i64 %108, !dbg !954
  %112 = load i16* %arrayidx303, align 2, !dbg !954, !tbaa !945
  %conv304 = zext i16 %112 to i32, !dbg !954
  %arrayidx311 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3026, i64 %indvars.iv3020, !dbg !954
  %113 = load i16* %arrayidx311, align 2, !dbg !954, !tbaa !945
  %conv312 = zext i16 %113 to i32, !dbg !954
  %sub313 = sub nsw i32 %conv304, %conv312, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %sub313}, i64 0, metadata !124), !dbg !954
  %arrayidx320 = getelementptr inbounds i16* %107, i64 %108, !dbg !955
  %114 = load i16* %arrayidx320, align 2, !dbg !955, !tbaa !945
  %conv321 = zext i16 %114 to i32, !dbg !955
  %arrayidx331 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %110, i64 %105, !dbg !955
  %115 = load i16* %arrayidx331, align 2, !dbg !955, !tbaa !945
  %conv332 = zext i16 %115 to i32, !dbg !955
  %sub333 = sub nsw i32 %conv321, %conv332, !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %sub333}, i64 0, metadata !123), !dbg !955
  %sub334 = sub i32 %sub333, %sub297, !dbg !985
  %arrayidx338 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026, !dbg !985
  store i32 %sub334, i32* %arrayidx338, align 4, !dbg !985, !tbaa !853
  %shr = ashr i32 %sub334, 1, !dbg !986
  %add343 = add nsw i32 %shr, %sub297, !dbg !986
  call void @llvm.dbg.value(metadata !{i32 %add343}, i64 0, metadata !128), !dbg !986
  %sub344 = sub i32 %sub313, %add343, !dbg !987
  %arrayidx348 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026, !dbg !987
  store i32 %sub344, i32* %arrayidx348, align 4, !dbg !987, !tbaa !853
  %shr353 = ashr i32 %sub344, 1, !dbg !988
  %add354 = add nsw i32 %shr353, %add343, !dbg !988
  %arrayidx358 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026, !dbg !988
  store i32 %add354, i32* %arrayidx358, align 4, !dbg !988, !tbaa !853
  %indvars.iv.next3021 = add i64 %indvars.iv3020, 1, !dbg !984
  %lftr.wideiv3024 = trunc i64 %indvars.iv.next3021 to i32, !dbg !984
  %exitcond3025 = icmp eq i32 %lftr.wideiv3024, 8, !dbg !984
  br i1 %exitcond3025, label %for.inc362, label %for.body278, !dbg !984

for.inc362:                                       ; preds = %for.body278
  %indvars.iv.next3027 = add i64 %indvars.iv3026, 1, !dbg !953
  %lftr.wideiv3030 = trunc i64 %indvars.iv.next3027 to i32, !dbg !953
  %exitcond3031 = icmp eq i32 %lftr.wideiv3030, 8, !dbg !953
  br i1 %exitcond3031, label %for.cond369.preheader, label %for.cond275.preheader, !dbg !953

for.cond369.preheader:                            ; preds = %for.inc362, %for.inc385
  %indvars.iv3036 = phi i64 [ %indvars.iv.next3037, %for.inc385 ], [ 0, %for.inc362 ]
  br label %for.body372, !dbg !989

for.body372:                                      ; preds = %for.body372, %for.cond369.preheader
  %indvars.iv3032 = phi i64 [ 0, %for.cond369.preheader ], [ %indvars.iv.next3033, %for.body372 ]
  %arrayidx376 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv3032, i64 %indvars.iv3036, !dbg !992
  %116 = load i32* %arrayidx376, align 4, !dbg !992, !tbaa !853
  %arrayidx381 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 %indvars.iv3032, i64 %indvars.iv3036, !dbg !992
  store i32 %116, i32* %arrayidx381, align 4, !dbg !992, !tbaa !853
  %indvars.iv.next3033 = add i64 %indvars.iv3032, 1, !dbg !989
  %lftr.wideiv3034 = trunc i64 %indvars.iv.next3033 to i32, !dbg !989
  %exitcond3035 = icmp eq i32 %lftr.wideiv3034, 8, !dbg !989
  br i1 %exitcond3035, label %for.inc385, label %for.body372, !dbg !989

for.inc385:                                       ; preds = %for.body372
  %indvars.iv.next3037 = add i64 %indvars.iv3036, 1, !dbg !994
  %lftr.wideiv3038 = trunc i64 %indvars.iv.next3037 to i32, !dbg !994
  %exitcond3039 = icmp eq i32 %lftr.wideiv3038, 8, !dbg !994
  br i1 %exitcond3039, label %for.end387, label %for.cond369.preheader, !dbg !994

for.end387:                                       ; preds = %for.inc385
  call void (...)* @store_coding_state_cs_cm() #7, !dbg !995
  %call388 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %b8, i32 %64, double %lambda, double undef, i32 %cond94) #6, !dbg !996
  call void @llvm.dbg.value(metadata !{i32 %conv389}, i64 0, metadata !126), !dbg !996
  call void (...)* @reset_coding_state_cs_cm() #7, !dbg !997
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !998
  %117 = load %struct.ImageParameters** @img, align 8, !dbg !1000, !tbaa !874
  br label %for.cond394.preheader, !dbg !998

for.cond394.preheader:                            ; preds = %for.inc410, %for.end387
  %indvars.iv3044 = phi i64 [ 0, %for.end387 ], [ %indvars.iv.next3045, %for.inc410 ]
  br label %for.body397, !dbg !1003

for.body397:                                      ; preds = %for.body397, %for.cond394.preheader
  %indvars.iv3040 = phi i64 [ 0, %for.cond394.preheader ], [ %indvars.iv.next3041, %for.body397 ]
  %arrayidx402 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 46, i64 %indvars.iv3040, i64 %indvars.iv3044, !dbg !1000
  %118 = load i32* %arrayidx402, align 4, !dbg !1000, !tbaa !853
  %arrayidx406 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv3040, i64 %indvars.iv3044, !dbg !1000
  store i32 %118, i32* %arrayidx406, align 4, !dbg !1000, !tbaa !853
  %indvars.iv.next3041 = add i64 %indvars.iv3040, 1, !dbg !1003
  %lftr.wideiv3042 = trunc i64 %indvars.iv.next3041 to i32, !dbg !1003
  %exitcond3043 = icmp eq i32 %lftr.wideiv3042, 8, !dbg !1003
  br i1 %exitcond3043, label %for.inc410, label %for.body397, !dbg !1003

for.inc410:                                       ; preds = %for.body397
  %indvars.iv.next3045 = add i64 %indvars.iv3044, 1, !dbg !998
  %lftr.wideiv3046 = trunc i64 %indvars.iv.next3045 to i32, !dbg !998
  %exitcond3047 = icmp eq i32 %lftr.wideiv3046, 8, !dbg !998
  br i1 %exitcond3047, label %for.end412, label %for.cond394.preheader, !dbg !998

for.end412:                                       ; preds = %for.inc410
  %conv389 = fptosi double %call388 to i32, !dbg !996
  call void (...)* @store_coding_state_cs_cm() #7, !dbg !1004
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !129), !dbg !1005
  %.pre3218 = load %struct.ImageParameters** @img, align 8, !dbg !1006, !tbaa !874
  br label %for.body416, !dbg !1005

for.body416:                                      ; preds = %for.inc513, %for.end412
  %119 = phi %struct.ImageParameters* [ %.pre3218, %for.end412 ], [ %130, %for.inc513 ]
  %b4.02835 = phi i32 [ 0, %for.end412 ], [ %inc514, %for.inc513 ]
  %rate.02834 = phi i32 [ %conv389, %for.end412 ], [ %add487, %for.inc513 ]
  %rem417 = srem i32 %b4.02835, 2, !dbg !1010
  %mul418 = shl nsw i32 %rem417, 2, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32 %mul418}, i64 0, metadata !92), !dbg !1010
  %div419 = sdiv i32 %b4.02835, 2, !dbg !1011
  %mul420 = shl nsw i32 %div419, 2, !dbg !1011
  call void @llvm.dbg.value(metadata !{i32 %mul420}, i64 0, metadata !93), !dbg !1011
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1012
  %120 = sext i32 %mul418 to i64, !dbg !1012
  %121 = sext i32 %mul420 to i64, !dbg !1012
  br label %for.cond425.preheader, !dbg !1012

for.cond425.preheader:                            ; preds = %for.inc443, %for.body416
  %indvars.iv3053 = phi i64 [ 0, %for.body416 ], [ %indvars.iv.next3054, %for.inc443 ]
  %122 = add nsw i64 %indvars.iv3053, %121, !dbg !1006
  br label %for.body428, !dbg !1013

for.body428:                                      ; preds = %for.body428, %for.cond425.preheader
  %indvars.iv3048 = phi i64 [ 0, %for.cond425.preheader ], [ %indvars.iv.next3049, %for.body428 ]
  %123 = add nsw i64 %indvars.iv3048, %120, !dbg !1006
  %arrayidx434 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %123, i64 %122, !dbg !1006
  %124 = load i32* %arrayidx434, align 4, !dbg !1006, !tbaa !853
  %arrayidx439 = getelementptr inbounds %struct.ImageParameters* %119, i64 0, i32 46, i64 %indvars.iv3048, i64 %indvars.iv3053, !dbg !1006
  store i32 %124, i32* %arrayidx439, align 4, !dbg !1006, !tbaa !853
  %indvars.iv.next3049 = add i64 %indvars.iv3048, 1, !dbg !1013
  %lftr.wideiv3051 = trunc i64 %indvars.iv.next3049 to i32, !dbg !1013
  %exitcond3052 = icmp eq i32 %lftr.wideiv3051, 4, !dbg !1013
  br i1 %exitcond3052, label %for.inc443, label %for.body428, !dbg !1013

for.inc443:                                       ; preds = %for.body428
  %indvars.iv.next3054 = add i64 %indvars.iv3053, 1, !dbg !1012
  %lftr.wideiv3056 = trunc i64 %indvars.iv.next3054 to i32, !dbg !1012
  %exitcond3057 = icmp eq i32 %lftr.wideiv3056, 4, !dbg !1012
  br i1 %exitcond3057, label %for.end445, label %for.cond425.preheader, !dbg !1012

for.end445:                                       ; preds = %for.inc443
  %call447 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add446, i32 %b4.02835, i32 0) #7, !dbg !915
  call void @llvm.dbg.value(metadata !{i32 %add448}, i64 0, metadata !126), !dbg !915
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1014
  %125 = load %struct.ImageParameters** @img, align 8, !dbg !1016, !tbaa !874
  br label %for.cond453.preheader, !dbg !1014

for.cond453.preheader:                            ; preds = %for.inc482, %for.end445
  %indvars.iv3063 = phi i64 [ 0, %for.end445 ], [ %indvars.iv.next3064, %for.inc482 ]
  %126 = add nsw i64 %indvars.iv3063, %121, !dbg !1016
  br label %for.body456, !dbg !1019

for.body456:                                      ; preds = %for.body456, %for.cond453.preheader
  %indvars.iv3058 = phi i64 [ 0, %for.cond453.preheader ], [ %indvars.iv.next3059, %for.body456 ]
  %arrayidx461 = getelementptr inbounds %struct.ImageParameters* %125, i64 0, i32 46, i64 %indvars.iv3058, i64 %indvars.iv3063, !dbg !1016
  %127 = load i32* %arrayidx461, align 4, !dbg !1016, !tbaa !853
  %128 = add nsw i64 %indvars.iv3058, %120, !dbg !1016
  %arrayidx467 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %128, i64 %126, !dbg !1016
  store i32 %127, i32* %arrayidx467, align 4, !dbg !1016, !tbaa !853
  %arrayidx473 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %128, i64 %126, !dbg !1020
  %129 = load i32* %arrayidx473, align 4, !dbg !1020, !tbaa !853
  store i32 %129, i32* %arrayidx461, align 4, !dbg !1020, !tbaa !853
  %indvars.iv.next3059 = add i64 %indvars.iv3058, 1, !dbg !1019
  %lftr.wideiv3061 = trunc i64 %indvars.iv.next3059 to i32, !dbg !1019
  %exitcond3062 = icmp eq i32 %lftr.wideiv3061, 4, !dbg !1019
  br i1 %exitcond3062, label %for.inc482, label %for.body456, !dbg !1019

for.inc482:                                       ; preds = %for.body456
  %indvars.iv.next3064 = add i64 %indvars.iv3063, 1, !dbg !1014
  %lftr.wideiv3066 = trunc i64 %indvars.iv.next3064 to i32, !dbg !1014
  %exitcond3067 = icmp eq i32 %lftr.wideiv3066, 4, !dbg !1014
  br i1 %exitcond3067, label %for.end484, label %for.cond453.preheader, !dbg !1014

for.end484:                                       ; preds = %for.inc482
  %call486 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add485, i32 %b4.02835, i32 1) #7, !dbg !918
  call void @llvm.dbg.value(metadata !{i32 %add487}, i64 0, metadata !126), !dbg !918
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1021
  %130 = load %struct.ImageParameters** @img, align 8, !dbg !1023, !tbaa !874
  br label %for.cond492.preheader, !dbg !1021

for.cond492.preheader:                            ; preds = %for.inc510, %for.end484
  %indvars.iv3073 = phi i64 [ 0, %for.end484 ], [ %indvars.iv.next3074, %for.inc510 ]
  %131 = add nsw i64 %indvars.iv3073, %121, !dbg !1023
  br label %for.body495, !dbg !1026

for.body495:                                      ; preds = %for.body495, %for.cond492.preheader
  %indvars.iv3068 = phi i64 [ 0, %for.cond492.preheader ], [ %indvars.iv.next3069, %for.body495 ]
  %arrayidx500 = getelementptr inbounds %struct.ImageParameters* %130, i64 0, i32 46, i64 %indvars.iv3068, i64 %indvars.iv3073, !dbg !1023
  %132 = load i32* %arrayidx500, align 4, !dbg !1023, !tbaa !853
  %133 = add nsw i64 %indvars.iv3068, %120, !dbg !1023
  %arrayidx506 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %133, i64 %131, !dbg !1023
  store i32 %132, i32* %arrayidx506, align 4, !dbg !1023, !tbaa !853
  %indvars.iv.next3069 = add i64 %indvars.iv3068, 1, !dbg !1026
  %lftr.wideiv3071 = trunc i64 %indvars.iv.next3069 to i32, !dbg !1026
  %exitcond3072 = icmp eq i32 %lftr.wideiv3071, 4, !dbg !1026
  br i1 %exitcond3072, label %for.inc510, label %for.body495, !dbg !1026

for.inc510:                                       ; preds = %for.body495
  %indvars.iv.next3074 = add i64 %indvars.iv3073, 1, !dbg !1021
  %lftr.wideiv3076 = trunc i64 %indvars.iv.next3074 to i32, !dbg !1021
  %exitcond3077 = icmp eq i32 %lftr.wideiv3076, 4, !dbg !1021
  br i1 %exitcond3077, label %for.inc513, label %for.cond492.preheader, !dbg !1021

for.inc513:                                       ; preds = %for.inc510
  %add448 = add nsw i32 %call447, %rate.02834, !dbg !915
  %add487 = add nsw i32 %add448, %call486, !dbg !918
  %inc514 = add nsw i32 %b4.02835, 1, !dbg !1005
  call void @llvm.dbg.value(metadata !{i32 %inc514}, i64 0, metadata !129), !dbg !1005
  %exitcond3078 = icmp eq i32 %inc514, 4, !dbg !1005
  br i1 %exitcond3078, label %for.end515, label %for.body416, !dbg !1005

for.end515:                                       ; preds = %for.inc513
  call void (...)* @reset_coding_state_cs_cm() #7, !dbg !1027
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1028
  %134 = load %struct.ImageParameters** @img, align 8, !dbg !1030, !tbaa !874
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 156, !dbg !1030
  %135 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1030, !tbaa !874
  %imgUV = getelementptr inbounds %struct.storable_picture* %135, i64 0, i32 30, !dbg !1030
  %136 = load i16**** %imgUV, align 8, !dbg !1030, !tbaa !874
  %137 = load i16*** %136, align 8, !dbg !1030, !tbaa !874
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 155, !dbg !1033
  %imgY685 = getelementptr inbounds %struct.storable_picture* %135, i64 0, i32 25, !dbg !1033
  %138 = load i16*** %imgY685, align 8, !dbg !1033, !tbaa !874
  %arrayidx762 = getelementptr inbounds i16*** %136, i64 1, !dbg !1034
  %139 = load i16*** %arrayidx762, align 8, !dbg !1034, !tbaa !874
  %.pre3219.pre = load i32* %max_imgpel_value_uv, align 4, !dbg !1030, !tbaa !853
  %.pre3220.pre = load i32* %max_imgpel_value, align 4, !dbg !1033, !tbaa !853
  br label %for.cond520.preheader, !dbg !1028

for.cond520.preheader:                            ; preds = %for.inc768, %for.end515
  %indvars.iv3085 = phi i64 [ 0, %for.end515 ], [ %indvars.iv.next3086, %for.inc768 ]
  %140 = add nsw i64 %indvars.iv3085, %57, !dbg !1030
  %141 = add nsw i64 %indvars.iv3085, %60, !dbg !1030
  %arrayidx623 = getelementptr inbounds i16** %137, i64 %141, !dbg !1030
  %142 = load i16** %arrayidx623, align 8, !dbg !1030, !tbaa !874
  %arrayidx686 = getelementptr inbounds i16** %138, i64 %141, !dbg !1033
  %143 = load i16** %arrayidx686, align 8, !dbg !1033, !tbaa !874
  %arrayidx763 = getelementptr inbounds i16** %139, i64 %141, !dbg !1034
  %144 = load i16** %arrayidx763, align 8, !dbg !1034, !tbaa !874
  br label %for.body523, !dbg !1035

for.body523:                                      ; preds = %for.body523, %for.cond520.preheader
  %indvars.iv3079 = phi i64 [ 0, %for.cond520.preheader ], [ %indvars.iv.next3080, %for.body523 ]
  %arrayidx527 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085, !dbg !1036
  %145 = load i32* %arrayidx527, align 4, !dbg !1036, !tbaa !853
  %arrayidx531 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085, !dbg !1036
  %146 = load i32* %arrayidx531, align 4, !dbg !1036, !tbaa !853
  %shr532 = ashr i32 %146, 1, !dbg !1036
  %sub533 = sub nsw i32 %145, %shr532, !dbg !1036
  call void @llvm.dbg.value(metadata !{i32 %sub533}, i64 0, metadata !128), !dbg !1036
  %add538 = add nsw i32 %sub533, %146, !dbg !1037
  call void @llvm.dbg.value(metadata !{i32 %add538}, i64 0, metadata !124), !dbg !1037
  %arrayidx542 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085, !dbg !1038
  %147 = load i32* %arrayidx542, align 4, !dbg !1038, !tbaa !853
  %shr543 = ashr i32 %147, 1, !dbg !1038
  %sub544 = sub nsw i32 %sub533, %shr543, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %sub544}, i64 0, metadata !125), !dbg !1038
  %add549 = add nsw i32 %sub544, %147, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32 %add549}, i64 0, metadata !123), !dbg !1039
  %148 = add nsw i64 %indvars.iv3079, %55, !dbg !1030
  %arrayidx559 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %148, i64 %140, !dbg !1030
  %149 = load i16* %arrayidx559, align 2, !dbg !1030, !tbaa !945
  %conv560 = zext i16 %149 to i32, !dbg !1030
  %add561 = add nsw i32 %conv560, %sub544, !dbg !1030
  %cmp562 = icmp slt i32 %add561, 0, !dbg !1030
  %.add561 = select i1 %cmp562, i32 0, i32 %add561, !dbg !1030
  %cmp580 = icmp slt i32 %.pre3219.pre, %.add561, !dbg !1030
  %..add561 = select i1 %cmp580, i32 %.pre3219.pre, i32 %.add561, !dbg !1030
  %conv617 = trunc i32 %..add561 to i16, !dbg !1030
  %150 = add nsw i64 %indvars.iv3079, %59, !dbg !1030
  %arrayidx624 = getelementptr inbounds i16* %142, i64 %150, !dbg !1030
  store i16 %conv617, i16* %arrayidx624, align 2, !dbg !1030, !tbaa !945
  %arrayidx631 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3085, i64 %indvars.iv3079, !dbg !1033
  %151 = load i16* %arrayidx631, align 2, !dbg !1033, !tbaa !945
  %conv632 = zext i16 %151 to i32, !dbg !1033
  %add633 = add nsw i32 %add538, %conv632, !dbg !1033
  %cmp634 = icmp slt i32 %add633, 0, !dbg !1033
  %.add633 = select i1 %cmp634, i32 0, i32 %add633, !dbg !1033
  %cmp649 = icmp slt i32 %.pre3220.pre, %.add633, !dbg !1033
  %cond679 = select i1 %cmp649, i32 %.pre3220.pre, i32 %.add633, !dbg !1033
  %conv680 = trunc i32 %cond679 to i16, !dbg !1033
  %arrayidx687 = getelementptr inbounds i16* %143, i64 %150, !dbg !1033
  store i16 %conv680, i16* %arrayidx687, align 2, !dbg !1033, !tbaa !945
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %148, i64 %140, !dbg !1034
  %152 = load i16* %arrayidx698, align 2, !dbg !1034, !tbaa !945
  %conv699 = zext i16 %152 to i32, !dbg !1034
  %add700 = add nsw i32 %add549, %conv699, !dbg !1034
  %cmp701 = icmp slt i32 %add700, 0, !dbg !1034
  %.add700 = select i1 %cmp701, i32 0, i32 %add700, !dbg !1034
  %cmp719 = icmp slt i32 %.pre3219.pre, %.add700, !dbg !1034
  %..add700 = select i1 %cmp719, i32 %.pre3219.pre, i32 %.add700, !dbg !1034
  %conv756 = trunc i32 %..add700 to i16, !dbg !1034
  %arrayidx764 = getelementptr inbounds i16* %144, i64 %150, !dbg !1034
  store i16 %conv756, i16* %arrayidx764, align 2, !dbg !1034, !tbaa !945
  %indvars.iv.next3080 = add i64 %indvars.iv3079, 1, !dbg !1035
  %lftr.wideiv3083 = trunc i64 %indvars.iv.next3080 to i32, !dbg !1035
  %exitcond3084 = icmp eq i32 %lftr.wideiv3083, 8, !dbg !1035
  br i1 %exitcond3084, label %for.inc768, label %for.body523, !dbg !1035

for.inc768:                                       ; preds = %for.body523
  %indvars.iv.next3086 = add i64 %indvars.iv3085, 1, !dbg !1028
  %lftr.wideiv3089 = trunc i64 %indvars.iv.next3086 to i32, !dbg !1028
  %exitcond3090 = icmp eq i32 %lftr.wideiv3089, 8, !dbg !1028
  br i1 %exitcond3090, label %for.cond771.loopexit, label %for.cond520.preheader, !dbg !1028

for.cond771.loopexit:                             ; preds = %for.inc768
  %153 = load i16*** @imgY_org, align 8, !dbg !1040, !tbaa !874
  %154 = load i16**** @imgUV_org, align 8, !dbg !1044, !tbaa !874
  %155 = load i16*** %154, align 8, !dbg !1044, !tbaa !874
  %arrayidx847 = getelementptr inbounds i16*** %154, i64 1, !dbg !1045
  %156 = load i16*** %arrayidx847, align 8, !dbg !1045, !tbaa !874
  br label %for.cond775.preheader, !dbg !1046

for.cond775.preheader:                            ; preds = %for.inc881, %for.cond771.loopexit
  %indvars.iv3093 = phi i64 [ 0, %for.cond771.loopexit ], [ %indvars.iv.next3094, %for.inc881 ]
  %distortion.02841 = phi i32 [ 0, %for.cond771.loopexit ], [ %add877, %for.inc881 ]
  %157 = add nsw i64 %indvars.iv3093, %60, !dbg !1040
  %arrayidx783 = getelementptr inbounds i16** %153, i64 %157, !dbg !1040
  %158 = load i16** %arrayidx783, align 8, !dbg !1040, !tbaa !874
  %arrayidx790 = getelementptr inbounds i16** %138, i64 %157, !dbg !1040
  %159 = load i16** %arrayidx790, align 8, !dbg !1040, !tbaa !874
  %arrayidx814 = getelementptr inbounds i16** %155, i64 %157, !dbg !1044
  %160 = load i16** %arrayidx814, align 8, !dbg !1044, !tbaa !874
  %arrayidx822 = getelementptr inbounds i16** %137, i64 %157, !dbg !1044
  %161 = load i16** %arrayidx822, align 8, !dbg !1044, !tbaa !874
  %arrayidx848 = getelementptr inbounds i16** %156, i64 %157, !dbg !1045
  %162 = load i16** %arrayidx848, align 8, !dbg !1045, !tbaa !874
  %arrayidx856 = getelementptr inbounds i16** %139, i64 %157, !dbg !1045
  %163 = load i16** %arrayidx856, align 8, !dbg !1045, !tbaa !874
  br label %for.body779, !dbg !1047

for.body779:                                      ; preds = %for.cond775.preheader, %for.body779
  %indvars.iv3091 = phi i64 [ %63, %for.cond775.preheader ], [ %indvars.iv.next3092, %for.body779 ]
  %distortion.12839 = phi i32 [ %distortion.02841, %for.cond775.preheader ], [ %add877, %for.body779 ]
  %arrayidx784 = getelementptr inbounds i16* %158, i64 %indvars.iv3091, !dbg !1040
  %164 = load i16* %arrayidx784, align 2, !dbg !1040, !tbaa !945
  %conv785 = zext i16 %164 to i32, !dbg !1040
  %arrayidx791 = getelementptr inbounds i16* %159, i64 %indvars.iv3091, !dbg !1040
  %165 = load i16* %arrayidx791, align 2, !dbg !1040, !tbaa !945
  %conv792 = zext i16 %165 to i32, !dbg !1040
  %sub793 = sub nsw i32 %conv785, %conv792, !dbg !1040
  %mul808 = mul nsw i32 %sub793, %sub793, !dbg !1040
  %add809 = add nsw i32 %mul808, %distortion.12839, !dbg !1040
  call void @llvm.dbg.value(metadata !{i32 %add809}, i64 0, metadata !127), !dbg !1040
  %arrayidx815 = getelementptr inbounds i16* %160, i64 %indvars.iv3091, !dbg !1044
  %166 = load i16* %arrayidx815, align 2, !dbg !1044, !tbaa !945
  %conv816 = zext i16 %166 to i32, !dbg !1044
  %arrayidx823 = getelementptr inbounds i16* %161, i64 %indvars.iv3091, !dbg !1044
  %167 = load i16* %arrayidx823, align 2, !dbg !1044, !tbaa !945
  %conv824 = zext i16 %167 to i32, !dbg !1044
  %sub825 = sub nsw i32 %conv816, %conv824, !dbg !1044
  %mul842 = mul nsw i32 %sub825, %sub825, !dbg !1044
  %add843 = add nsw i32 %add809, %mul842, !dbg !1044
  call void @llvm.dbg.value(metadata !{i32 %add843}, i64 0, metadata !127), !dbg !1044
  %arrayidx849 = getelementptr inbounds i16* %162, i64 %indvars.iv3091, !dbg !1045
  %168 = load i16* %arrayidx849, align 2, !dbg !1045, !tbaa !945
  %conv850 = zext i16 %168 to i32, !dbg !1045
  %arrayidx857 = getelementptr inbounds i16* %163, i64 %indvars.iv3091, !dbg !1045
  %169 = load i16* %arrayidx857, align 2, !dbg !1045, !tbaa !945
  %conv858 = zext i16 %169 to i32, !dbg !1045
  %sub859 = sub nsw i32 %conv850, %conv858, !dbg !1045
  %mul876 = mul nsw i32 %sub859, %sub859, !dbg !1045
  %add877 = add nsw i32 %add843, %mul876, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %add877}, i64 0, metadata !127), !dbg !1045
  %indvars.iv.next3092 = add i64 %indvars.iv3091, 1, !dbg !1047
  %170 = add nsw i32 %add, 7, !dbg !1047
  %171 = trunc i64 %indvars.iv3091 to i32, !dbg !1047
  %cmp777 = icmp slt i32 %171, %170, !dbg !1047
  br i1 %cmp777, label %for.body779, label %for.inc881, !dbg !1047

for.inc881:                                       ; preds = %for.body779
  %indvars.iv.next3094 = add i64 %indvars.iv3093, 1, !dbg !1046
  %lftr.wideiv3096 = trunc i64 %indvars.iv.next3094 to i32, !dbg !1046
  %exitcond3097 = icmp eq i32 %lftr.wideiv3096, 8, !dbg !1046
  br i1 %exitcond3097, label %for.end883, label %for.cond775.preheader, !dbg !1046

for.end883:                                       ; preds = %for.inc881
  %conv884 = sitofp i32 %add877 to double, !dbg !1048
  %conv885 = sitofp i32 %add487 to double, !dbg !1048
  %mul886 = fmul double %conv885, %lambda, !dbg !1048
  %add887 = fadd double %mul886, %conv884, !dbg !1048
  call void @llvm.dbg.value(metadata !{double %add887}, i64 0, metadata !91), !dbg !1048
  %cmp888 = fcmp olt double %add887, %min_rdcost.02868, !dbg !1049
  br i1 %cmp888, label %for.cond891.preheader, label %for.inc1126, !dbg !1049

for.cond891.preheader:                            ; preds = %for.end883
  %cofAC907 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 47, !dbg !919
  %172 = load i32***** %cofAC907, align 8, !dbg !919, !tbaa !874
  %arrayidx908 = getelementptr inbounds i32**** %172, i64 %idxprom906, !dbg !919
  %173 = load i32**** %arrayidx908, align 8, !dbg !919, !tbaa !874
  %174 = load i32***** @cofAC8x8, align 8, !dbg !919, !tbaa !874
  %arrayidx916 = getelementptr inbounds i32**** %174, i64 %idxprom906, !dbg !919
  %175 = load i32**** %arrayidx916, align 8, !dbg !919, !tbaa !874
  br label %for.cond895.preheader, !dbg !1050

for.cond895.preheader:                            ; preds = %for.inc926, %for.cond891.preheader
  %indvars.iv3106 = phi i64 [ 0, %for.cond891.preheader ], [ %indvars.iv.next3107, %for.inc926 ]
  br label %for.cond899.preheader, !dbg !1051

for.cond899.preheader:                            ; preds = %for.inc923, %for.cond895.preheader
  %indvars.iv3102 = phi i64 [ 0, %for.cond895.preheader ], [ %indvars.iv.next3103, %for.inc923 ]
  br label %for.body902, !dbg !1052

for.body902:                                      ; preds = %for.body902, %for.cond899.preheader
  %indvars.iv3098 = phi i64 [ 0, %for.cond899.preheader ], [ %indvars.iv.next3099, %for.body902 ]
  %arrayidx909 = getelementptr inbounds i32*** %173, i64 %indvars.iv3098, !dbg !919
  %176 = load i32*** %arrayidx909, align 8, !dbg !919, !tbaa !874
  %arrayidx910 = getelementptr inbounds i32** %176, i64 %indvars.iv3106, !dbg !919
  %177 = load i32** %arrayidx910, align 8, !dbg !919, !tbaa !874
  %arrayidx911 = getelementptr inbounds i32* %177, i64 %indvars.iv3102, !dbg !919
  %178 = load i32* %arrayidx911, align 4, !dbg !919, !tbaa !853
  %arrayidx917 = getelementptr inbounds i32*** %175, i64 %indvars.iv3098, !dbg !919
  %179 = load i32*** %arrayidx917, align 8, !dbg !919, !tbaa !874
  %arrayidx918 = getelementptr inbounds i32** %179, i64 %indvars.iv3106, !dbg !919
  %180 = load i32** %arrayidx918, align 8, !dbg !919, !tbaa !874
  %arrayidx919 = getelementptr inbounds i32* %180, i64 %indvars.iv3102, !dbg !919
  store i32 %178, i32* %arrayidx919, align 4, !dbg !919, !tbaa !853
  %indvars.iv.next3099 = add i64 %indvars.iv3098, 1, !dbg !1052
  %lftr.wideiv3100 = trunc i64 %indvars.iv.next3099 to i32, !dbg !1052
  %exitcond3101 = icmp eq i32 %lftr.wideiv3100, 4, !dbg !1052
  br i1 %exitcond3101, label %for.inc923, label %for.body902, !dbg !1052

for.inc923:                                       ; preds = %for.body902
  %indvars.iv.next3103 = add i64 %indvars.iv3102, 1, !dbg !1051
  %lftr.wideiv3104 = trunc i64 %indvars.iv.next3103 to i32, !dbg !1051
  %exitcond3105 = icmp eq i32 %lftr.wideiv3104, 65, !dbg !1051
  br i1 %exitcond3105, label %for.inc926, label %for.cond899.preheader, !dbg !1051

for.inc926:                                       ; preds = %for.inc923
  %indvars.iv.next3107 = add i64 %indvars.iv3106, 1, !dbg !1050
  %lftr.wideiv3108 = trunc i64 %indvars.iv.next3107 to i32, !dbg !1050
  %exitcond3109 = icmp eq i32 %lftr.wideiv3108, 2, !dbg !1050
  br i1 %exitcond3109, label %for.cond929.loopexit, label %for.cond895.preheader, !dbg !1050

for.cond929.loopexit:                             ; preds = %for.inc926
  %arrayidx951 = getelementptr inbounds i32**** %172, i64 %idxprom949, !dbg !924
  %181 = load i32**** %arrayidx951, align 8, !dbg !924, !tbaa !874
  %arrayidx981 = getelementptr inbounds i32**** %172, i64 %idxprom979, !dbg !929
  %182 = load i32**** %arrayidx981, align 8, !dbg !929, !tbaa !874
  br label %for.body932, !dbg !1053

for.body932:                                      ; preds = %for.inc1094, %for.cond929.loopexit
  %indvars.iv3144 = phi i64 [ 0, %for.cond929.loopexit ], [ %indvars.iv.next3145, %for.inc1094 ]
  %183 = trunc i64 %indvars.iv3144 to i32, !dbg !1054
  %rem933 = srem i32 %183, 2, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %mul934}, i64 0, metadata !92), !dbg !1054
  %div935 = sdiv i32 %183, 2, !dbg !1055
  call void @llvm.dbg.value(metadata !{i32 %mul936}, i64 0, metadata !93), !dbg !1055
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1056
  %arrayidx952 = getelementptr inbounds i32*** %181, i64 %indvars.iv3144, !dbg !924
  %184 = load i32*** %arrayidx952, align 8, !dbg !924, !tbaa !874
  br label %for.cond941.preheader, !dbg !1056

for.cond941.preheader:                            ; preds = %for.inc964, %for.body932
  %indvars.iv3117 = phi i64 [ 0, %for.body932 ], [ %indvars.iv.next3118, %for.inc964 ]
  %arrayidx953 = getelementptr inbounds i32** %184, i64 %indvars.iv3117, !dbg !924
  %185 = load i32** %arrayidx953, align 8, !dbg !924, !tbaa !874
  br label %for.body944, !dbg !924

for.body944:                                      ; preds = %for.body944, %for.cond941.preheader
  %indvars.iv3110 = phi i64 [ 0, %for.cond941.preheader ], [ %indvars.iv.next3111, %for.body944 ]
  %arrayidx954 = getelementptr inbounds i32* %185, i64 %indvars.iv3110, !dbg !924
  %186 = load i32* %arrayidx954, align 4, !dbg !924, !tbaa !853
  %arrayidx960 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 0, i64 %indvars.iv3144, i64 %indvars.iv3117, i64 %indvars.iv3110, !dbg !924
  store i32 %186, i32* %arrayidx960, align 4, !dbg !924, !tbaa !853
  %indvars.iv.next3111 = add i64 %indvars.iv3110, 1, !dbg !924
  %lftr.wideiv3112 = trunc i64 %indvars.iv.next3111 to i32, !dbg !924
  %exitcond3113 = icmp eq i32 %lftr.wideiv3112, 18, !dbg !924
  br i1 %exitcond3113, label %for.inc964, label %for.body944, !dbg !924

for.inc964:                                       ; preds = %for.body944
  %indvars.iv.next3118 = add i64 %indvars.iv3117, 1, !dbg !1056
  %lftr.wideiv3119 = trunc i64 %indvars.iv.next3118 to i32, !dbg !1056
  %exitcond3120 = icmp eq i32 %lftr.wideiv3119, 2, !dbg !1056
  br i1 %exitcond3120, label %for.cond967.loopexit, label %for.cond941.preheader, !dbg !1056

for.cond967.loopexit:                             ; preds = %for.inc964
  %mul934 = shl i32 %rem933, 2, !dbg !1054
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !73), !dbg !929
  %arrayidx982 = getelementptr inbounds i32*** %182, i64 %indvars.iv3144, !dbg !929
  %187 = load i32*** %arrayidx982, align 8, !dbg !929, !tbaa !874
  br label %for.cond971.preheader, !dbg !1057

for.cond971.preheader:                            ; preds = %for.inc994, %for.cond967.loopexit
  %indvars.iv3128 = phi i64 [ 0, %for.cond967.loopexit ], [ %indvars.iv.next3129, %for.inc994 ]
  %arrayidx983 = getelementptr inbounds i32** %187, i64 %indvars.iv3128, !dbg !929
  %188 = load i32** %arrayidx983, align 8, !dbg !929, !tbaa !874
  br label %for.body974, !dbg !929

for.body974:                                      ; preds = %for.body974, %for.cond971.preheader
  %indvars.iv3121 = phi i64 [ 0, %for.cond971.preheader ], [ %indvars.iv.next3122, %for.body974 ]
  %arrayidx984 = getelementptr inbounds i32* %188, i64 %indvars.iv3121, !dbg !929
  %189 = load i32* %arrayidx984, align 4, !dbg !929, !tbaa !853
  %arrayidx990 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 1, i64 %indvars.iv3144, i64 %indvars.iv3128, i64 %indvars.iv3121, !dbg !929
  store i32 %189, i32* %arrayidx990, align 4, !dbg !929, !tbaa !853
  %indvars.iv.next3122 = add i64 %indvars.iv3121, 1, !dbg !929
  %lftr.wideiv3123 = trunc i64 %indvars.iv.next3122 to i32, !dbg !929
  %exitcond3124 = icmp eq i32 %lftr.wideiv3123, 18, !dbg !929
  br i1 %exitcond3124, label %for.inc994, label %for.body974, !dbg !929

for.inc994:                                       ; preds = %for.body974
  %indvars.iv.next3129 = add i64 %indvars.iv3128, 1, !dbg !1057
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !73), !dbg !929
  %lftr.wideiv3130 = trunc i64 %indvars.iv.next3129 to i32, !dbg !1057
  %exitcond3131 = icmp eq i32 %lftr.wideiv3130, 2, !dbg !1057
  br i1 %exitcond3131, label %for.cond997.loopexit, label %for.cond971.preheader, !dbg !1057

for.cond997.loopexit:                             ; preds = %for.inc994
  %mul936 = shl i32 %div935, 2, !dbg !1055
  %add1004 = add nsw i32 %div935, %mul1002, !dbg !932
  %idxprom1005 = sext i32 %add1004 to i64, !dbg !932
  %add1009 = add nsw i32 %rem933, %mul1007, !dbg !932
  %idxprom1010 = sext i32 %add1009 to i64, !dbg !932
  %add1065 = add i32 %mul934, %add, !dbg !1058
  %add1068 = add i32 %mul936, %add2, !dbg !1058
  br label %for.body1000, !dbg !1061

for.body1000:                                     ; preds = %for.inc1091, %for.cond997.loopexit
  %indvars.iv3140 = phi i64 [ 0, %for.cond997.loopexit ], [ %indvars.iv.next3141, %for.inc1091 ]
  %arrayidx1014 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005, !dbg !932
  %190 = load i32* %arrayidx1014, align 4, !dbg !932, !tbaa !853
  %arrayidx1028 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005, !dbg !932
  store i32 %190, i32* %arrayidx1028, align 4, !dbg !932, !tbaa !853
  %arrayidx1042 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005, !dbg !1062
  %191 = load i32* %arrayidx1042, align 4, !dbg !1062, !tbaa !853
  %arrayidx1056 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005, !dbg !1062
  store i32 %191, i32* %arrayidx1056, align 4, !dbg !1062, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !77), !dbg !1063
  %arrayidx1073 = getelementptr inbounds i16*** %136, i64 %indvars.iv3140, !dbg !1058
  %192 = load i16*** %arrayidx1073, align 8, !dbg !1058, !tbaa !874
  br label %for.cond1061.preheader, !dbg !1063

for.cond1061.preheader:                           ; preds = %for.inc1088, %for.body1000
  %indvars.iv3136 = phi i64 [ 0, %for.body1000 ], [ %indvars.iv.next3137, %for.inc1088 ]
  %193 = trunc i64 %indvars.iv3136 to i32, !dbg !1058
  %add1069 = add i32 %add1068, %193, !dbg !1058
  %idxprom1070 = sext i32 %add1069 to i64, !dbg !1058
  %arrayidx1074 = getelementptr inbounds i16** %192, i64 %idxprom1070, !dbg !1058
  %194 = load i16** %arrayidx1074, align 8, !dbg !1058, !tbaa !874
  br label %for.body1064, !dbg !1058

for.body1064:                                     ; preds = %for.body1064, %for.cond1061.preheader
  %indvars.iv3132 = phi i64 [ 0, %for.cond1061.preheader ], [ %indvars.iv.next3133, %for.body1064 ]
  %195 = trunc i64 %indvars.iv3132 to i32, !dbg !1058
  %add1066 = add i32 %add1065, %195, !dbg !1058
  %idxprom1067 = sext i32 %add1066 to i64, !dbg !1058
  %arrayidx1075 = getelementptr inbounds i16* %194, i64 %idxprom1067, !dbg !1058
  %196 = load i16* %arrayidx1075, align 2, !dbg !1058, !tbaa !945
  %conv1076 = zext i16 %196 to i32, !dbg !1058
  %arrayidx1084 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i64 0, i64 %indvars.iv3140, i64 %indvars.iv3144, i64 %indvars.iv3136, i64 %indvars.iv3132, !dbg !1058
  store i32 %conv1076, i32* %arrayidx1084, align 4, !dbg !1058, !tbaa !853
  %indvars.iv.next3133 = add i64 %indvars.iv3132, 1, !dbg !1058
  %lftr.wideiv3134 = trunc i64 %indvars.iv.next3133 to i32, !dbg !1058
  %exitcond3135 = icmp eq i32 %lftr.wideiv3134, 4, !dbg !1058
  br i1 %exitcond3135, label %for.inc1088, label %for.body1064, !dbg !1058

for.inc1088:                                      ; preds = %for.body1064
  %indvars.iv.next3137 = add i64 %indvars.iv3136, 1, !dbg !1063
  %lftr.wideiv3138 = trunc i64 %indvars.iv.next3137 to i32, !dbg !1063
  %exitcond3139 = icmp eq i32 %lftr.wideiv3138, 4, !dbg !1063
  br i1 %exitcond3139, label %for.inc1091, label %for.cond1061.preheader, !dbg !1063

for.inc1091:                                      ; preds = %for.inc1088
  %indvars.iv.next3141 = add i64 %indvars.iv3140, 1, !dbg !1061
  %lftr.wideiv3142 = trunc i64 %indvars.iv.next3141 to i32, !dbg !1061
  %exitcond3143 = icmp eq i32 %lftr.wideiv3142, 2, !dbg !1061
  br i1 %exitcond3143, label %for.inc1094, label %for.body1000, !dbg !1061

for.inc1094:                                      ; preds = %for.inc1091
  %indvars.iv.next3145 = add i64 %indvars.iv3144, 1, !dbg !1053
  %lftr.wideiv3146 = trunc i64 %indvars.iv.next3145 to i32, !dbg !1053
  %exitcond3147 = icmp eq i32 %lftr.wideiv3146, 4, !dbg !1053
  br i1 %exitcond3147, label %for.cond1101.preheader, label %for.body932, !dbg !1053

for.cond1101.preheader:                           ; preds = %for.inc1094, %for.cond1101.preheader
  %indvars.iv3156 = phi i64 [ %indvars.iv.next3157, %for.cond1101.preheader ], [ 0, %for.inc1094 ]
  %scevgep = getelementptr [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv3156, i64 0
  %scevgep3153 = bitcast i16* %scevgep to i8*
  %197 = add nsw i64 %indvars.iv3156, %60, !dbg !1064
  %arrayidx1110 = getelementptr inbounds i16** %138, i64 %197, !dbg !1064
  %198 = load i16** %arrayidx1110, align 8, !dbg !1064, !tbaa !874
  %scevgep3154 = getelementptr i16* %198, i64 %63
  %scevgep31543155 = bitcast i16* %scevgep3154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep3153, i8* %scevgep31543155, i64 16, i32 2, i1 false), !dbg !1064
  %indvars.iv.next3157 = add i64 %indvars.iv3156, 1, !dbg !1067
  %lftr.wideiv3159 = trunc i64 %indvars.iv.next3157 to i32, !dbg !1067
  %exitcond3160 = icmp eq i32 %lftr.wideiv3159, 8, !dbg !1067
  br i1 %exitcond3160, label %for.end1121, label %for.cond1101.preheader, !dbg !1067

for.end1121:                                      ; preds = %for.cond1101.preheader
  call void @llvm.dbg.value(metadata !{i32* %c_nz}, i64 0, metadata !80), !dbg !1068
  %199 = load i32* %c_nz, align 4, !dbg !1068, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %199}, i64 0, metadata !81), !dbg !1068
  call void @llvm.dbg.value(metadata !{double %add887}, i64 0, metadata !102), !dbg !1069
  call void @llvm.dbg.value(metadata !947, i64 0, metadata !72), !dbg !1070
  br label %for.inc1126, !dbg !1071

for.inc1126:                                      ; preds = %land.lhs.true108, %lor.lhs.false110, %if.end269, %for.end1121, %for.end883, %cond.end146, %if.then152
  %nonzero.2 = phi i32 [ %199, %for.end1121 ], [ %nonzero.02866, %for.end883 ], [ %nonzero.1, %if.end269 ], [ %nonzero.02866, %if.then152 ], [ %nonzero.02866, %cond.end146 ], [ %nonzero.02866, %lor.lhs.false110 ], [ %nonzero.02866, %land.lhs.true108 ]
  %min_rdcost.2 = phi double [ %add887, %for.end1121 ], [ %min_rdcost.02868, %for.end883 ], [ %min_rdcost.1, %if.end269 ], [ %min_rdcost.02868, %if.then152 ], [ %min_rdcost.02868, %cond.end146 ], [ %min_rdcost.02868, %lor.lhs.false110 ], [ %min_rdcost.02868, %land.lhs.true108 ]
  %best_ipmode.2 = phi i32 [ %64, %for.end1121 ], [ %best_ipmode.02870, %for.end883 ], [ %best_ipmode.1, %if.end269 ], [ %64, %if.then152 ], [ %best_ipmode.02870, %cond.end146 ], [ %best_ipmode.02870, %lor.lhs.false110 ], [ %best_ipmode.02870, %land.lhs.true108 ]
  %indvars.iv.next3214 = add i64 %indvars.iv3213, 1, !dbg !904
  %lftr.wideiv3215 = trunc i64 %indvars.iv.next3214 to i32, !dbg !904
  %exitcond3216 = icmp eq i32 %lftr.wideiv3215, 9, !dbg !904
  br i1 %exitcond3216, label %for.end1128, label %for.body, !dbg !904

for.end1128:                                      ; preds = %for.inc1126
  %idxprom1129 = sext i32 %div6 to i64, !dbg !1072
  %idxprom1130 = sext i32 %div5 to i64, !dbg !1072
  %200 = load %struct.ImageParameters** @img, align 8, !dbg !1072, !tbaa !874
  %ipredmode8x81131 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 26, !dbg !1072
  %201 = load i32*** %ipredmode8x81131, align 8, !dbg !1072, !tbaa !874
  %arrayidx1132 = getelementptr inbounds i32** %201, i64 %idxprom1130, !dbg !1072
  %202 = load i32** %arrayidx1132, align 8, !dbg !1072, !tbaa !874
  %arrayidx1133 = getelementptr inbounds i32* %202, i64 %idxprom1129, !dbg !1072
  store i32 %best_ipmode.2, i32* %arrayidx1133, align 4, !dbg !1072, !tbaa !853
  %cmp1134 = icmp eq i32 %cond94, %best_ipmode.2, !dbg !1073
  br i1 %cmp1134, label %cond.end1145, label %cond.false1137, !dbg !1073

cond.false1137:                                   ; preds = %for.end1128
  %not.cmp1138 = icmp sge i32 %best_ipmode.2, %cond94, !dbg !1073
  %sub1142 = sext i1 %not.cmp1138 to i32, !dbg !1073
  %cond1144 = add nsw i32 %sub1142, %best_ipmode.2, !dbg !1073
  br label %cond.end1145, !dbg !1073

cond.end1145:                                     ; preds = %cond.false1137, %for.end1128
  %cond1146 = phi i32 [ -1, %for.end1128 ], [ %cond1144, %cond.false1137 ], !dbg !1073
  %mul1147 = shl nsw i32 %b8, 2, !dbg !1073
  %idxprom1148 = sext i32 %mul1147 to i64, !dbg !1073
  %current_mb_nr1149 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 3, !dbg !1073
  %203 = load i32* %current_mb_nr1149, align 4, !dbg !1073, !tbaa !853
  %idxprom1150 = sext i32 %203 to i64, !dbg !1073
  %mb_data1151 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 51, !dbg !1073
  %204 = load %struct.macroblock** %mb_data1151, align 8, !dbg !1073, !tbaa !874
  %arrayidx1153 = getelementptr inbounds %struct.macroblock* %204, i64 %idxprom1150, i32 11, i64 %idxprom1148, !dbg !1073
  store i32 %cond1146, i32* %arrayidx1153, align 4, !dbg !1073, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1074
  %mb_y = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 30, !dbg !1076
  %mb_x = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 29, !dbg !1076
  br label %for.cond1158.preheader, !dbg !1074

for.cond1158.preheader:                           ; preds = %for.inc1180, %cond.end1145
  %j.132821 = phi i32 [ 0, %cond.end1145 ], [ %inc1181, %for.inc1180 ]
  %add1163 = add i32 %j.132821, %mul1002, !dbg !1076
  br label %for.body1161, !dbg !1078

for.body1161:                                     ; preds = %for.body1161, %for.cond1158.preheader
  %i.142820 = phi i32 [ 0, %for.cond1158.preheader ], [ %inc1178, %for.body1161 ]
  %205 = load i32* %mb_y, align 4, !dbg !1076, !tbaa !853
  %mul1162 = shl i32 %205, 2, !dbg !1076
  %add1166 = add i32 %add1163, %mul1162, !dbg !1076
  %idxprom1167 = sext i32 %add1166 to i64, !dbg !1076
  %206 = load i32* %mb_x, align 4, !dbg !1076, !tbaa !853
  %mul1168 = shl i32 %206, 2, !dbg !1076
  %add1169 = add i32 %i.142820, %mul1007, !dbg !1076
  %add1172 = add i32 %add1169, %mul1168, !dbg !1076
  %idxprom1173 = sext i32 %add1172 to i64, !dbg !1076
  %arrayidx1175 = getelementptr inbounds i32** %201, i64 %idxprom1173, !dbg !1076
  %207 = load i32** %arrayidx1175, align 8, !dbg !1076, !tbaa !874
  %arrayidx1176 = getelementptr inbounds i32* %207, i64 %idxprom1167, !dbg !1076
  store i32 %best_ipmode.2, i32* %arrayidx1176, align 4, !dbg !1076, !tbaa !853
  %inc1178 = add nsw i32 %i.142820, 1, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32 %inc1178}, i64 0, metadata !73), !dbg !1078
  %exitcond3018 = icmp eq i32 %inc1178, 2, !dbg !1078
  br i1 %exitcond3018, label %for.inc1180, label %for.body1161, !dbg !1078

for.inc1180:                                      ; preds = %for.body1161
  %inc1181 = add nsw i32 %j.132821, 1, !dbg !1074
  call void @llvm.dbg.value(metadata !{i32 %inc1181}, i64 0, metadata !74), !dbg !1074
  %exitcond3019 = icmp eq i32 %inc1181, 2, !dbg !1074
  br i1 %exitcond3019, label %for.end1182, label %for.cond1158.preheader, !dbg !1074

for.end1182:                                      ; preds = %for.inc1180
  %208 = load %struct.InputParameters** @input, align 8, !dbg !1079, !tbaa !874
  %rdopt1183 = getelementptr inbounds %struct.InputParameters* %208, i64 0, i32 85, !dbg !1079
  %209 = load i32* %rdopt1183, align 4, !dbg !1079, !tbaa !853
  %tobool1184 = icmp eq i32 %209, 0, !dbg !1079
  br i1 %tobool1184, label %if.then1185, label %for.cond1830.preheader, !dbg !1079

for.cond1830.preheader:                           ; preds = %for.end1182
  %210 = load i32***** @cofAC8x8, align 8, !dbg !1080, !tbaa !874
  %arrayidx1846 = getelementptr inbounds i32**** %210, i64 %idxprom906, !dbg !1080
  %211 = load i32**** %arrayidx1846, align 8, !dbg !1080, !tbaa !874
  %cofAC1854 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 47, !dbg !1080
  %212 = load i32***** %cofAC1854, align 8, !dbg !1080, !tbaa !874
  %arrayidx1855 = getelementptr inbounds i32**** %212, i64 %idxprom906, !dbg !1080
  %213 = load i32**** %arrayidx1855, align 8, !dbg !1080, !tbaa !874
  br label %for.cond1834.preheader, !dbg !1085

if.then1185:                                      ; preds = %for.end1182
  %residue_transform_flag1186 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164, !dbg !1086
  %214 = load i32* %residue_transform_flag1186, align 4, !dbg !1086, !tbaa !853
  %tobool1187 = icmp eq i32 %214, 0, !dbg !1086
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1088
  %idxprom1199 = sext i32 %best_ipmode.2 to i64, !dbg !1091
  br i1 %tobool1187, label %for.cond1193.preheader, label %for.cond1240.preheader, !dbg !1086

for.cond1240.preheader:                           ; preds = %if.then1185
  %215 = load i16**** @imgUV_org, align 8, !dbg !1096, !tbaa !874
  %216 = load i16*** %215, align 8, !dbg !1096, !tbaa !874
  %217 = load i16*** @imgY_org, align 8, !dbg !1099, !tbaa !874
  %arrayidx1302 = getelementptr inbounds i16*** %215, i64 1, !dbg !1100
  %218 = load i16*** %arrayidx1302, align 8, !dbg !1100, !tbaa !874
  br label %for.cond1244.preheader, !dbg !1088

for.cond1193.preheader:                           ; preds = %if.then1185, %for.inc1235
  %indvars.iv2880 = phi i64 [ %indvars.iv.next2881, %for.inc1235 ], [ 0, %if.then1185 ]
  %219 = add nsw i64 %indvars.iv2880, %57, !dbg !1091
  %220 = add nsw i64 %indvars.iv2880, %58, !dbg !1101
  %arrayidx1215 = getelementptr inbounds i16** %7, i64 %220, !dbg !1101
  %221 = load i16** %arrayidx1215, align 8, !dbg !1101, !tbaa !874
  br label %for.body1196, !dbg !1102

for.body1196:                                     ; preds = %for.body1196, %for.cond1193.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1193.preheader ], [ %indvars.iv.next, %for.body1196 ]
  %arrayidx1203 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2880, i64 %indvars.iv, !dbg !1091
  %222 = load i16* %arrayidx1203, align 2, !dbg !1091, !tbaa !945
  %223 = add nsw i64 %indvars.iv, %55, !dbg !1091
  %arrayidx1210 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %223, i64 %219, !dbg !1091
  store i16 %222, i16* %arrayidx1210, align 2, !dbg !1091, !tbaa !945
  %224 = add nsw i64 %indvars.iv, %56, !dbg !1101
  %arrayidx1216 = getelementptr inbounds i16* %221, i64 %224, !dbg !1101
  %225 = load i16* %arrayidx1216, align 2, !dbg !1101, !tbaa !945
  %conv1217 = zext i16 %225 to i32, !dbg !1101
  %226 = load i16* %arrayidx1203, align 2, !dbg !1101, !tbaa !945
  %conv1225 = zext i16 %226 to i32, !dbg !1101
  %sub1226 = sub nsw i32 %conv1217, %conv1225, !dbg !1101
  %arrayidx1231 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv2880, !dbg !1101
  store i32 %sub1226, i32* %arrayidx1231, align 4, !dbg !1101, !tbaa !853
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1102
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1102
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !1102
  br i1 %exitcond, label %for.inc1235, label %for.body1196, !dbg !1102

for.inc1235:                                      ; preds = %for.body1196
  %indvars.iv.next2881 = add i64 %indvars.iv2880, 1, !dbg !1103
  %lftr.wideiv2884 = trunc i64 %indvars.iv.next2881 to i32, !dbg !1103
  %exitcond2885 = icmp eq i32 %lftr.wideiv2884, 8, !dbg !1103
  br i1 %exitcond2885, label %for.end1237, label %for.cond1193.preheader, !dbg !1103

for.end1237:                                      ; preds = %for.inc1235
  %call1238 = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #6, !dbg !1104
  call void @llvm.dbg.value(metadata !{i32 %call1238}, i64 0, metadata !81), !dbg !1104
  br label %if.end2034, !dbg !1105

for.cond1244.preheader:                           ; preds = %for.inc1347, %for.cond1240.preheader
  %indvars.iv2951 = phi i64 [ 0, %for.cond1240.preheader ], [ %indvars.iv.next2952, %for.inc1347 ]
  %227 = add nsw i64 %indvars.iv2951, %57, !dbg !1106
  %228 = add nsw i64 %indvars.iv2951, %58, !dbg !1096
  %arrayidx1267 = getelementptr inbounds i16** %216, i64 %228, !dbg !1096
  %229 = load i16** %arrayidx1267, align 8, !dbg !1096, !tbaa !874
  %arrayidx1286 = getelementptr inbounds i16** %217, i64 %228, !dbg !1099
  %230 = load i16** %arrayidx1286, align 8, !dbg !1099, !tbaa !874
  %arrayidx1303 = getelementptr inbounds i16** %218, i64 %228, !dbg !1100
  %231 = load i16** %arrayidx1303, align 8, !dbg !1100, !tbaa !874
  br label %for.body1247, !dbg !1107

for.body1247:                                     ; preds = %for.body1247, %for.cond1244.preheader
  %indvars.iv2945 = phi i64 [ 0, %for.cond1244.preheader ], [ %indvars.iv.next2946, %for.body1247 ]
  %arrayidx1254 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2951, i64 %indvars.iv2945, !dbg !1106
  %232 = load i16* %arrayidx1254, align 2, !dbg !1106, !tbaa !945
  %233 = add nsw i64 %indvars.iv2945, %55, !dbg !1106
  %arrayidx1261 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %233, i64 %227, !dbg !1106
  store i16 %232, i16* %arrayidx1261, align 2, !dbg !1106, !tbaa !945
  %234 = add nsw i64 %indvars.iv2945, %56, !dbg !1096
  %arrayidx1268 = getelementptr inbounds i16* %229, i64 %234, !dbg !1096
  %235 = load i16* %arrayidx1268, align 2, !dbg !1096, !tbaa !945
  %conv1269 = zext i16 %235 to i32, !dbg !1096
  %arrayidx1279 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %233, i64 %227, !dbg !1096
  %236 = load i16* %arrayidx1279, align 2, !dbg !1096, !tbaa !945
  %conv1280 = zext i16 %236 to i32, !dbg !1096
  %sub1281 = sub nsw i32 %conv1269, %conv1280, !dbg !1096
  call void @llvm.dbg.value(metadata !{i32 %sub1281}, i64 0, metadata !125), !dbg !1096
  %arrayidx1287 = getelementptr inbounds i16* %230, i64 %234, !dbg !1099
  %237 = load i16* %arrayidx1287, align 2, !dbg !1099, !tbaa !945
  %conv1288 = zext i16 %237 to i32, !dbg !1099
  %238 = load i16* %arrayidx1254, align 2, !dbg !1099, !tbaa !945
  %conv1296 = zext i16 %238 to i32, !dbg !1099
  %sub1297 = sub nsw i32 %conv1288, %conv1296, !dbg !1099
  call void @llvm.dbg.value(metadata !{i32 %sub1297}, i64 0, metadata !124), !dbg !1099
  %arrayidx1304 = getelementptr inbounds i16* %231, i64 %234, !dbg !1100
  %239 = load i16* %arrayidx1304, align 2, !dbg !1100, !tbaa !945
  %conv1305 = zext i16 %239 to i32, !dbg !1100
  %arrayidx1315 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %233, i64 %227, !dbg !1100
  %240 = load i16* %arrayidx1315, align 2, !dbg !1100, !tbaa !945
  %conv1316 = zext i16 %240 to i32, !dbg !1100
  %sub1317 = sub nsw i32 %conv1305, %conv1316, !dbg !1100
  call void @llvm.dbg.value(metadata !{i32 %sub1317}, i64 0, metadata !123), !dbg !1100
  %sub1318 = sub i32 %sub1317, %sub1281, !dbg !1108
  %arrayidx1322 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951, !dbg !1108
  store i32 %sub1318, i32* %arrayidx1322, align 4, !dbg !1108, !tbaa !853
  %shr1327 = ashr i32 %sub1318, 1, !dbg !1109
  %add1328 = add nsw i32 %shr1327, %sub1281, !dbg !1109
  call void @llvm.dbg.value(metadata !{i32 %add1328}, i64 0, metadata !128), !dbg !1109
  %sub1329 = sub i32 %sub1297, %add1328, !dbg !1110
  %arrayidx1333 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951, !dbg !1110
  store i32 %sub1329, i32* %arrayidx1333, align 4, !dbg !1110, !tbaa !853
  %shr1338 = ashr i32 %sub1329, 1, !dbg !1111
  %add1339 = add nsw i32 %shr1338, %add1328, !dbg !1111
  %arrayidx1343 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951, !dbg !1111
  store i32 %add1339, i32* %arrayidx1343, align 4, !dbg !1111, !tbaa !853
  %indvars.iv.next2946 = add i64 %indvars.iv2945, 1, !dbg !1107
  %lftr.wideiv2949 = trunc i64 %indvars.iv.next2946 to i32, !dbg !1107
  %exitcond2950 = icmp eq i32 %lftr.wideiv2949, 8, !dbg !1107
  br i1 %exitcond2950, label %for.inc1347, label %for.body1247, !dbg !1107

for.inc1347:                                      ; preds = %for.body1247
  %indvars.iv.next2952 = add i64 %indvars.iv2951, 1, !dbg !1088
  %lftr.wideiv2955 = trunc i64 %indvars.iv.next2952 to i32, !dbg !1088
  %exitcond2956 = icmp eq i32 %lftr.wideiv2955, 8, !dbg !1088
  br i1 %exitcond2956, label %for.cond1354.preheader, label %for.cond1244.preheader, !dbg !1088

for.cond1354.preheader:                           ; preds = %for.inc1347, %for.inc1370
  %indvars.iv2941 = phi i64 [ %indvars.iv.next2942, %for.inc1370 ], [ 0, %for.inc1347 ]
  br label %for.body1357, !dbg !1112

for.body1357:                                     ; preds = %for.body1357, %for.cond1354.preheader
  %indvars.iv2937 = phi i64 [ 0, %for.cond1354.preheader ], [ %indvars.iv.next2938, %for.body1357 ]
  %arrayidx1361 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2937, i64 %indvars.iv2941, !dbg !1115
  %241 = load i32* %arrayidx1361, align 4, !dbg !1115, !tbaa !853
  %arrayidx1366 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv2937, i64 %indvars.iv2941, !dbg !1115
  store i32 %241, i32* %arrayidx1366, align 4, !dbg !1115, !tbaa !853
  %indvars.iv.next2938 = add i64 %indvars.iv2937, 1, !dbg !1112
  %lftr.wideiv2939 = trunc i64 %indvars.iv.next2938 to i32, !dbg !1112
  %exitcond2940 = icmp eq i32 %lftr.wideiv2939, 8, !dbg !1112
  br i1 %exitcond2940, label %for.inc1370, label %for.body1357, !dbg !1112

for.inc1370:                                      ; preds = %for.body1357
  %indvars.iv.next2942 = add i64 %indvars.iv2941, 1, !dbg !1117
  %lftr.wideiv2943 = trunc i64 %indvars.iv.next2942 to i32, !dbg !1117
  %exitcond2944 = icmp eq i32 %lftr.wideiv2943, 8, !dbg !1117
  br i1 %exitcond2944, label %for.end1372, label %for.cond1354.preheader, !dbg !1117

for.end1372:                                      ; preds = %for.inc1370
  %call1373 = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #6, !dbg !1118
  call void @llvm.dbg.value(metadata !{i32 %call1373}, i64 0, metadata !81), !dbg !1118
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1119
  %242 = load %struct.ImageParameters** @img, align 8, !dbg !1121, !tbaa !874
  br label %for.cond1378.preheader, !dbg !1119

for.cond1378.preheader:                           ; preds = %for.inc1394, %for.end1372
  %indvars.iv2933 = phi i64 [ 0, %for.end1372 ], [ %indvars.iv.next2934, %for.inc1394 ]
  br label %for.body1381, !dbg !1124

for.body1381:                                     ; preds = %for.body1381, %for.cond1378.preheader
  %indvars.iv2929 = phi i64 [ 0, %for.cond1378.preheader ], [ %indvars.iv.next2930, %for.body1381 ]
  %arrayidx1386 = getelementptr inbounds %struct.ImageParameters* %242, i64 0, i32 46, i64 %indvars.iv2929, i64 %indvars.iv2933, !dbg !1121
  %243 = load i32* %arrayidx1386, align 4, !dbg !1121, !tbaa !853
  %arrayidx1390 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2929, i64 %indvars.iv2933, !dbg !1121
  store i32 %243, i32* %arrayidx1390, align 4, !dbg !1121, !tbaa !853
  %indvars.iv.next2930 = add i64 %indvars.iv2929, 1, !dbg !1124
  %lftr.wideiv2931 = trunc i64 %indvars.iv.next2930 to i32, !dbg !1124
  %exitcond2932 = icmp eq i32 %lftr.wideiv2931, 8, !dbg !1124
  br i1 %exitcond2932, label %for.inc1394, label %for.body1381, !dbg !1124

for.inc1394:                                      ; preds = %for.body1381
  %indvars.iv.next2934 = add i64 %indvars.iv2933, 1, !dbg !1119
  %lftr.wideiv2935 = trunc i64 %indvars.iv.next2934 to i32, !dbg !1119
  %exitcond2936 = icmp eq i32 %lftr.wideiv2935, 8, !dbg !1119
  br i1 %exitcond2936, label %for.body1400, label %for.cond1378.preheader, !dbg !1119

for.cond1570.preheader:                           ; preds = %for.inc1567
  %max_imgpel_value_uv1604 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 156, !dbg !1125
  %244 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1125, !tbaa !874
  %imgUV1677 = getelementptr inbounds %struct.storable_picture* %244, i64 0, i32 30, !dbg !1125
  %245 = load i16**** %imgUV1677, align 8, !dbg !1125, !tbaa !874
  %246 = load i16*** %245, align 8, !dbg !1125, !tbaa !874
  %max_imgpel_value1681 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 155, !dbg !1129
  %imgY1742 = getelementptr inbounds %struct.storable_picture* %244, i64 0, i32 25, !dbg !1129
  %247 = load i16*** %imgY1742, align 8, !dbg !1129, !tbaa !874
  %arrayidx1819 = getelementptr inbounds i16*** %245, i64 1, !dbg !1130
  %248 = load i16*** %arrayidx1819, align 8, !dbg !1130, !tbaa !874
  %.pre.pre = load i32* %max_imgpel_value_uv1604, align 4, !dbg !1125, !tbaa !853
  %.pre3217.pre = load i32* %max_imgpel_value1681, align 4, !dbg !1129, !tbaa !853
  br label %for.cond1574.preheader, !dbg !1131

for.body1400:                                     ; preds = %for.inc1394, %for.inc1567
  %249 = phi %struct.ImageParameters* [ %262, %for.inc1567 ], [ %242, %for.inc1394 ]
  %b4.22798 = phi i32 [ %inc1568, %for.inc1567 ], [ 0, %for.inc1394 ]
  %rem1401 = srem i32 %b4.22798, 2, !dbg !1132
  %mul1402 = shl nsw i32 %rem1401, 2, !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %mul1402}, i64 0, metadata !92), !dbg !1132
  %div1403 = sdiv i32 %b4.22798, 2, !dbg !1135
  %mul1404 = shl nsw i32 %div1403, 2, !dbg !1135
  call void @llvm.dbg.value(metadata !{i32 %mul1404}, i64 0, metadata !93), !dbg !1135
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1136
  %250 = sext i32 %mul1402 to i64, !dbg !1136
  %251 = sext i32 %mul1404 to i64, !dbg !1136
  br label %for.cond1409.preheader, !dbg !1136

for.cond1409.preheader:                           ; preds = %for.inc1427, %for.body1400
  %indvars.iv2903 = phi i64 [ 0, %for.body1400 ], [ %indvars.iv.next2904, %for.inc1427 ]
  %252 = add nsw i64 %indvars.iv2903, %251, !dbg !1138
  br label %for.body1412, !dbg !1141

for.body1412:                                     ; preds = %for.body1412, %for.cond1409.preheader
  %indvars.iv2898 = phi i64 [ 0, %for.cond1409.preheader ], [ %indvars.iv.next2899, %for.body1412 ]
  %253 = add nsw i64 %indvars.iv2898, %250, !dbg !1138
  %arrayidx1418 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %253, i64 %252, !dbg !1138
  %254 = load i32* %arrayidx1418, align 4, !dbg !1138, !tbaa !853
  %arrayidx1423 = getelementptr inbounds %struct.ImageParameters* %249, i64 0, i32 46, i64 %indvars.iv2898, i64 %indvars.iv2903, !dbg !1138
  store i32 %254, i32* %arrayidx1423, align 4, !dbg !1138, !tbaa !853
  %indvars.iv.next2899 = add i64 %indvars.iv2898, 1, !dbg !1141
  %lftr.wideiv2901 = trunc i64 %indvars.iv.next2899 to i32, !dbg !1141
  %exitcond2902 = icmp eq i32 %lftr.wideiv2901, 4, !dbg !1141
  br i1 %exitcond2902, label %for.inc1427, label %for.body1412, !dbg !1141

for.inc1427:                                      ; preds = %for.body1412
  %indvars.iv.next2904 = add i64 %indvars.iv2903, 1, !dbg !1136
  %lftr.wideiv2906 = trunc i64 %indvars.iv.next2904 to i32, !dbg !1136
  %exitcond2907 = icmp eq i32 %lftr.wideiv2906, 4, !dbg !1136
  br i1 %exitcond2907, label %for.end1429, label %for.cond1409.preheader, !dbg !1136

for.end1429:                                      ; preds = %for.inc1427
  %call1431 = call i32 @dct_chroma4x4(i32 0, i32 %add446, i32 %b4.22798) #7, !dbg !1142
  %add1435 = add nsw i32 %div1403, %mul1002, !dbg !1142
  %idxprom1436 = sext i32 %add1435 to i64, !dbg !1142
  %add1440 = add nsw i32 %rem1401, %mul1007, !dbg !1142
  %idxprom1441 = sext i32 %add1440 to i64, !dbg !1142
  %arrayidx1443 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436, !dbg !1142
  store i32 %call1431, i32* %arrayidx1443, align 4, !dbg !1142, !tbaa !853
  %arrayidx1455 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436, !dbg !1143
  %255 = load i32* %arrayidx1455, align 4, !dbg !1143, !tbaa !853
  %arrayidx1467 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436, !dbg !1143
  store i32 %255, i32* %arrayidx1467, align 4, !dbg !1143, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1144
  %256 = load %struct.ImageParameters** @img, align 8, !dbg !1146, !tbaa !874
  br label %for.cond1472.preheader, !dbg !1144

for.cond1472.preheader:                           ; preds = %for.inc1501, %for.end1429
  %indvars.iv2913 = phi i64 [ 0, %for.end1429 ], [ %indvars.iv.next2914, %for.inc1501 ]
  %257 = add nsw i64 %indvars.iv2913, %251, !dbg !1146
  br label %for.body1475, !dbg !1149

for.body1475:                                     ; preds = %for.body1475, %for.cond1472.preheader
  %indvars.iv2908 = phi i64 [ 0, %for.cond1472.preheader ], [ %indvars.iv.next2909, %for.body1475 ]
  %arrayidx1480 = getelementptr inbounds %struct.ImageParameters* %256, i64 0, i32 46, i64 %indvars.iv2908, i64 %indvars.iv2913, !dbg !1146
  %258 = load i32* %arrayidx1480, align 4, !dbg !1146, !tbaa !853
  %259 = add nsw i64 %indvars.iv2908, %250, !dbg !1146
  %arrayidx1486 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %259, i64 %257, !dbg !1146
  store i32 %258, i32* %arrayidx1486, align 4, !dbg !1146, !tbaa !853
  %arrayidx1492 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %259, i64 %257, !dbg !1150
  %260 = load i32* %arrayidx1492, align 4, !dbg !1150, !tbaa !853
  store i32 %260, i32* %arrayidx1480, align 4, !dbg !1150, !tbaa !853
  %indvars.iv.next2909 = add i64 %indvars.iv2908, 1, !dbg !1149
  %lftr.wideiv2911 = trunc i64 %indvars.iv.next2909 to i32, !dbg !1149
  %exitcond2912 = icmp eq i32 %lftr.wideiv2911, 4, !dbg !1149
  br i1 %exitcond2912, label %for.inc1501, label %for.body1475, !dbg !1149

for.inc1501:                                      ; preds = %for.body1475
  %indvars.iv.next2914 = add i64 %indvars.iv2913, 1, !dbg !1144
  %lftr.wideiv2916 = trunc i64 %indvars.iv.next2914 to i32, !dbg !1144
  %exitcond2917 = icmp eq i32 %lftr.wideiv2916, 4, !dbg !1144
  br i1 %exitcond2917, label %for.end1503, label %for.cond1472.preheader, !dbg !1144

for.end1503:                                      ; preds = %for.inc1501
  %call1505 = call i32 @dct_chroma4x4(i32 1, i32 %add485, i32 %b4.22798) #7, !dbg !1151
  %arrayidx1517 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436, !dbg !1151
  store i32 %call1505, i32* %arrayidx1517, align 4, !dbg !1151, !tbaa !853
  %arrayidx1529 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436, !dbg !1152
  %261 = load i32* %arrayidx1529, align 4, !dbg !1152, !tbaa !853
  %arrayidx1541 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436, !dbg !1152
  store i32 %261, i32* %arrayidx1541, align 4, !dbg !1152, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !74), !dbg !1153
  %262 = load %struct.ImageParameters** @img, align 8, !dbg !1155, !tbaa !874
  br label %for.cond1546.preheader, !dbg !1153

for.cond1546.preheader:                           ; preds = %for.inc1564, %for.end1503
  %indvars.iv2923 = phi i64 [ 0, %for.end1503 ], [ %indvars.iv.next2924, %for.inc1564 ]
  %263 = add nsw i64 %indvars.iv2923, %251, !dbg !1155
  br label %for.body1549, !dbg !1158

for.body1549:                                     ; preds = %for.body1549, %for.cond1546.preheader
  %indvars.iv2918 = phi i64 [ 0, %for.cond1546.preheader ], [ %indvars.iv.next2919, %for.body1549 ]
  %arrayidx1554 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 46, i64 %indvars.iv2918, i64 %indvars.iv2923, !dbg !1155
  %264 = load i32* %arrayidx1554, align 4, !dbg !1155, !tbaa !853
  %265 = add nsw i64 %indvars.iv2918, %250, !dbg !1155
  %arrayidx1560 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %265, i64 %263, !dbg !1155
  store i32 %264, i32* %arrayidx1560, align 4, !dbg !1155, !tbaa !853
  %indvars.iv.next2919 = add i64 %indvars.iv2918, 1, !dbg !1158
  %lftr.wideiv2921 = trunc i64 %indvars.iv.next2919 to i32, !dbg !1158
  %exitcond2922 = icmp eq i32 %lftr.wideiv2921, 4, !dbg !1158
  br i1 %exitcond2922, label %for.inc1564, label %for.body1549, !dbg !1158

for.inc1564:                                      ; preds = %for.body1549
  %indvars.iv.next2924 = add i64 %indvars.iv2923, 1, !dbg !1153
  %lftr.wideiv2926 = trunc i64 %indvars.iv.next2924 to i32, !dbg !1153
  %exitcond2927 = icmp eq i32 %lftr.wideiv2926, 4, !dbg !1153
  br i1 %exitcond2927, label %for.inc1567, label %for.cond1546.preheader, !dbg !1153

for.inc1567:                                      ; preds = %for.inc1564
  %inc1568 = add nsw i32 %b4.22798, 1, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %inc1568}, i64 0, metadata !129), !dbg !1159
  %exitcond2928 = icmp eq i32 %inc1568, 4, !dbg !1159
  br i1 %exitcond2928, label %for.cond1570.preheader, label %for.body1400, !dbg !1159

for.cond1574.preheader:                           ; preds = %for.inc1825, %for.cond1570.preheader
  %indvars.iv2892 = phi i64 [ 0, %for.cond1570.preheader ], [ %indvars.iv.next2893, %for.inc1825 ]
  %266 = add nsw i64 %indvars.iv2892, %57, !dbg !1125
  %267 = add nsw i64 %indvars.iv2892, %60, !dbg !1125
  %arrayidx1679 = getelementptr inbounds i16** %246, i64 %267, !dbg !1125
  %268 = load i16** %arrayidx1679, align 8, !dbg !1125, !tbaa !874
  %arrayidx1743 = getelementptr inbounds i16** %247, i64 %267, !dbg !1129
  %269 = load i16** %arrayidx1743, align 8, !dbg !1129, !tbaa !874
  %arrayidx1820 = getelementptr inbounds i16** %248, i64 %267, !dbg !1130
  %270 = load i16** %arrayidx1820, align 8, !dbg !1130, !tbaa !874
  br label %for.body1577, !dbg !1160

for.body1577:                                     ; preds = %for.body1577, %for.cond1574.preheader
  %indvars.iv2886 = phi i64 [ 0, %for.cond1574.preheader ], [ %indvars.iv.next2887, %for.body1577 ]
  %arrayidx1581 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892, !dbg !1161
  %271 = load i32* %arrayidx1581, align 4, !dbg !1161, !tbaa !853
  %arrayidx1585 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892, !dbg !1161
  %272 = load i32* %arrayidx1585, align 4, !dbg !1161, !tbaa !853
  %shr1586 = ashr i32 %272, 1, !dbg !1161
  %sub1587 = sub nsw i32 %271, %shr1586, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %sub1587}, i64 0, metadata !128), !dbg !1161
  %add1592 = add nsw i32 %sub1587, %272, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32 %add1592}, i64 0, metadata !124), !dbg !1162
  %arrayidx1596 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892, !dbg !1163
  %273 = load i32* %arrayidx1596, align 4, !dbg !1163, !tbaa !853
  %shr1597 = ashr i32 %273, 1, !dbg !1163
  %sub1598 = sub nsw i32 %sub1587, %shr1597, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32 %sub1598}, i64 0, metadata !125), !dbg !1163
  %add1603 = add nsw i32 %sub1598, %273, !dbg !1164
  call void @llvm.dbg.value(metadata !{i32 %add1603}, i64 0, metadata !123), !dbg !1164
  %274 = add nsw i64 %indvars.iv2886, %55, !dbg !1125
  %arrayidx1614 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %274, i64 %266, !dbg !1125
  %275 = load i16* %arrayidx1614, align 2, !dbg !1125, !tbaa !945
  %conv1615 = zext i16 %275 to i32, !dbg !1125
  %add1616 = add nsw i32 %conv1615, %sub1598, !dbg !1125
  %cmp1617 = icmp slt i32 %add1616, 0, !dbg !1125
  %.add1616 = select i1 %cmp1617, i32 0, i32 %add1616, !dbg !1125
  %cmp1635 = icmp slt i32 %.pre.pre, %.add1616, !dbg !1125
  %..add1616 = select i1 %cmp1635, i32 %.pre.pre, i32 %.add1616, !dbg !1125
  %conv1672 = trunc i32 %..add1616 to i16, !dbg !1125
  %276 = add nsw i64 %indvars.iv2886, %59, !dbg !1125
  %arrayidx1680 = getelementptr inbounds i16* %268, i64 %276, !dbg !1125
  store i16 %conv1672, i16* %arrayidx1680, align 2, !dbg !1125, !tbaa !945
  %arrayidx1688 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2892, i64 %indvars.iv2886, !dbg !1129
  %277 = load i16* %arrayidx1688, align 2, !dbg !1129, !tbaa !945
  %conv1689 = zext i16 %277 to i32, !dbg !1129
  %add1690 = add nsw i32 %add1592, %conv1689, !dbg !1129
  %cmp1691 = icmp slt i32 %add1690, 0, !dbg !1129
  %.add1690 = select i1 %cmp1691, i32 0, i32 %add1690, !dbg !1129
  %cmp1706 = icmp slt i32 %.pre3217.pre, %.add1690, !dbg !1129
  %cond1736 = select i1 %cmp1706, i32 %.pre3217.pre, i32 %.add1690, !dbg !1129
  %conv1737 = trunc i32 %cond1736 to i16, !dbg !1129
  %arrayidx1744 = getelementptr inbounds i16* %269, i64 %276, !dbg !1129
  store i16 %conv1737, i16* %arrayidx1744, align 2, !dbg !1129, !tbaa !945
  %arrayidx1755 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %274, i64 %266, !dbg !1130
  %278 = load i16* %arrayidx1755, align 2, !dbg !1130, !tbaa !945
  %conv1756 = zext i16 %278 to i32, !dbg !1130
  %add1757 = add nsw i32 %add1603, %conv1756, !dbg !1130
  %cmp1758 = icmp slt i32 %add1757, 0, !dbg !1130
  %.add1757 = select i1 %cmp1758, i32 0, i32 %add1757, !dbg !1130
  %cmp1776 = icmp slt i32 %.pre.pre, %.add1757, !dbg !1130
  %..add1757 = select i1 %cmp1776, i32 %.pre.pre, i32 %.add1757, !dbg !1130
  %conv1813 = trunc i32 %..add1757 to i16, !dbg !1130
  %arrayidx1821 = getelementptr inbounds i16* %270, i64 %276, !dbg !1130
  store i16 %conv1813, i16* %arrayidx1821, align 2, !dbg !1130, !tbaa !945
  %indvars.iv.next2887 = add i64 %indvars.iv2886, 1, !dbg !1160
  %lftr.wideiv2890 = trunc i64 %indvars.iv.next2887 to i32, !dbg !1160
  %exitcond2891 = icmp eq i32 %lftr.wideiv2890, 8, !dbg !1160
  br i1 %exitcond2891, label %for.inc1825, label %for.body1577, !dbg !1160

for.inc1825:                                      ; preds = %for.body1577
  %indvars.iv.next2893 = add i64 %indvars.iv2892, 1, !dbg !1131
  %lftr.wideiv2896 = trunc i64 %indvars.iv.next2893 to i32, !dbg !1131
  %exitcond2897 = icmp eq i32 %lftr.wideiv2896, 8, !dbg !1131
  br i1 %exitcond2897, label %if.end2034, label %for.cond1574.preheader, !dbg !1131

for.cond1834.preheader:                           ; preds = %for.inc1865, %for.cond1830.preheader
  %indvars.iv3014 = phi i64 [ 0, %for.cond1830.preheader ], [ %indvars.iv.next3015, %for.inc1865 ]
  br label %for.cond1838.preheader, !dbg !1165

for.cond1838.preheader:                           ; preds = %for.inc1862, %for.cond1834.preheader
  %indvars.iv3010 = phi i64 [ 0, %for.cond1834.preheader ], [ %indvars.iv.next3011, %for.inc1862 ]
  br label %for.body1841, !dbg !1166

for.body1841:                                     ; preds = %for.body1841, %for.cond1838.preheader
  %indvars.iv3006 = phi i64 [ 0, %for.cond1838.preheader ], [ %indvars.iv.next3007, %for.body1841 ]
  %arrayidx1847 = getelementptr inbounds i32*** %211, i64 %indvars.iv3006, !dbg !1080
  %279 = load i32*** %arrayidx1847, align 8, !dbg !1080, !tbaa !874
  %arrayidx1848 = getelementptr inbounds i32** %279, i64 %indvars.iv3014, !dbg !1080
  %280 = load i32** %arrayidx1848, align 8, !dbg !1080, !tbaa !874
  %arrayidx1849 = getelementptr inbounds i32* %280, i64 %indvars.iv3010, !dbg !1080
  %281 = load i32* %arrayidx1849, align 4, !dbg !1080, !tbaa !853
  %arrayidx1856 = getelementptr inbounds i32*** %213, i64 %indvars.iv3006, !dbg !1080
  %282 = load i32*** %arrayidx1856, align 8, !dbg !1080, !tbaa !874
  %arrayidx1857 = getelementptr inbounds i32** %282, i64 %indvars.iv3014, !dbg !1080
  %283 = load i32** %arrayidx1857, align 8, !dbg !1080, !tbaa !874
  %arrayidx1858 = getelementptr inbounds i32* %283, i64 %indvars.iv3010, !dbg !1080
  store i32 %281, i32* %arrayidx1858, align 4, !dbg !1080, !tbaa !853
  %indvars.iv.next3007 = add i64 %indvars.iv3006, 1, !dbg !1166
  %lftr.wideiv3008 = trunc i64 %indvars.iv.next3007 to i32, !dbg !1166
  %exitcond3009 = icmp eq i32 %lftr.wideiv3008, 4, !dbg !1166
  br i1 %exitcond3009, label %for.inc1862, label %for.body1841, !dbg !1166

for.inc1862:                                      ; preds = %for.body1841
  %indvars.iv.next3011 = add i64 %indvars.iv3010, 1, !dbg !1165
  %lftr.wideiv3012 = trunc i64 %indvars.iv.next3011 to i32, !dbg !1165
  %exitcond3013 = icmp eq i32 %lftr.wideiv3012, 65, !dbg !1165
  br i1 %exitcond3013, label %for.inc1865, label %for.cond1838.preheader, !dbg !1165

for.inc1865:                                      ; preds = %for.inc1862
  %indvars.iv.next3015 = add i64 %indvars.iv3014, 1, !dbg !1085
  %lftr.wideiv3016 = trunc i64 %indvars.iv.next3015 to i32, !dbg !1085
  %exitcond3017 = icmp eq i32 %lftr.wideiv3016, 2, !dbg !1085
  br i1 %exitcond3017, label %for.end1867, label %for.cond1834.preheader, !dbg !1085

for.end1867:                                      ; preds = %for.inc1865
  %residue_transform_flag1868 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164, !dbg !1167
  %284 = load i32* %residue_transform_flag1868, align 4, !dbg !1167, !tbaa !853
  %tobool1869 = icmp eq i32 %284, 0, !dbg !1167
  br i1 %tobool1869, label %for.cond1939.preheader, label %for.cond1871.preheader, !dbg !1167

for.cond1871.preheader:                           ; preds = %for.end1867
  %arrayidx1895 = getelementptr inbounds i32**** %212, i64 %idxprom949, !dbg !1168
  %285 = load i32**** %arrayidx1895, align 8, !dbg !1168, !tbaa !874
  %arrayidx1925 = getelementptr inbounds i32**** %212, i64 %idxprom979, !dbg !1173
  %286 = load i32**** %arrayidx1925, align 8, !dbg !1173, !tbaa !874
  br label %for.cond1875.preheader, !dbg !1176

for.cond1875.preheader:                           ; preds = %for.inc1935, %for.cond1871.preheader
  %indvars.iv3002 = phi i64 [ 0, %for.cond1871.preheader ], [ %indvars.iv.next3003, %for.inc1935 ]
  %arrayidx1896 = getelementptr inbounds i32*** %285, i64 %indvars.iv3002, !dbg !1168
  %287 = load i32*** %arrayidx1896, align 8, !dbg !1168, !tbaa !874
  br label %for.cond1879.preheader, !dbg !1177

for.cond1939.preheader:                           ; preds = %for.inc1935, %for.end1867
  %288 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1178, !tbaa !874
  %imgY1955 = getelementptr inbounds %struct.storable_picture* %288, i64 0, i32 25, !dbg !1178
  %289 = load i16*** %imgY1955, align 8, !dbg !1178, !tbaa !874
  %idxprom1960 = sext i32 %best_ipmode.2 to i64, !dbg !1182
  br label %for.cond1943.preheader, !dbg !1183

for.cond1879.preheader:                           ; preds = %for.inc1902, %for.cond1875.preheader
  %indvars.iv2990 = phi i64 [ 0, %for.cond1875.preheader ], [ %indvars.iv.next2991, %for.inc1902 ]
  %arrayidx1897 = getelementptr inbounds i32** %287, i64 %indvars.iv2990, !dbg !1168
  %290 = load i32** %arrayidx1897, align 8, !dbg !1168, !tbaa !874
  br label %for.body1882, !dbg !1168

for.body1882:                                     ; preds = %for.body1882, %for.cond1879.preheader
  %indvars.iv2986 = phi i64 [ 0, %for.cond1879.preheader ], [ %indvars.iv.next2987, %for.body1882 ]
  %arrayidx1888 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 0, i64 %indvars.iv3002, i64 %indvars.iv2990, i64 %indvars.iv2986, !dbg !1168
  %291 = load i32* %arrayidx1888, align 4, !dbg !1168, !tbaa !853
  %arrayidx1898 = getelementptr inbounds i32* %290, i64 %indvars.iv2986, !dbg !1168
  store i32 %291, i32* %arrayidx1898, align 4, !dbg !1168, !tbaa !853
  %indvars.iv.next2987 = add i64 %indvars.iv2986, 1, !dbg !1168
  %lftr.wideiv2988 = trunc i64 %indvars.iv.next2987 to i32, !dbg !1168
  %exitcond2989 = icmp eq i32 %lftr.wideiv2988, 18, !dbg !1168
  br i1 %exitcond2989, label %for.inc1902, label %for.body1882, !dbg !1168

for.inc1902:                                      ; preds = %for.body1882
  %indvars.iv.next2991 = add i64 %indvars.iv2990, 1, !dbg !1177
  %lftr.wideiv2992 = trunc i64 %indvars.iv.next2991 to i32, !dbg !1177
  %exitcond2993 = icmp eq i32 %lftr.wideiv2992, 2, !dbg !1177
  br i1 %exitcond2993, label %for.cond1905.loopexit, label %for.cond1879.preheader, !dbg !1177

for.cond1905.loopexit:                            ; preds = %for.inc1902
  %arrayidx1926 = getelementptr inbounds i32*** %286, i64 %indvars.iv3002, !dbg !1173
  %292 = load i32*** %arrayidx1926, align 8, !dbg !1173, !tbaa !874
  br label %for.cond1909.preheader, !dbg !1184

for.cond1909.preheader:                           ; preds = %for.inc1932, %for.cond1905.loopexit
  %indvars.iv2998 = phi i64 [ 0, %for.cond1905.loopexit ], [ %indvars.iv.next2999, %for.inc1932 ]
  %arrayidx1927 = getelementptr inbounds i32** %292, i64 %indvars.iv2998, !dbg !1173
  %293 = load i32** %arrayidx1927, align 8, !dbg !1173, !tbaa !874
  br label %for.body1912, !dbg !1173

for.body1912:                                     ; preds = %for.body1912, %for.cond1909.preheader
  %indvars.iv2994 = phi i64 [ 0, %for.cond1909.preheader ], [ %indvars.iv.next2995, %for.body1912 ]
  %arrayidx1918 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 1, i64 %indvars.iv3002, i64 %indvars.iv2998, i64 %indvars.iv2994, !dbg !1173
  %294 = load i32* %arrayidx1918, align 4, !dbg !1173, !tbaa !853
  %arrayidx1928 = getelementptr inbounds i32* %293, i64 %indvars.iv2994, !dbg !1173
  store i32 %294, i32* %arrayidx1928, align 4, !dbg !1173, !tbaa !853
  %indvars.iv.next2995 = add i64 %indvars.iv2994, 1, !dbg !1173
  %lftr.wideiv2996 = trunc i64 %indvars.iv.next2995 to i32, !dbg !1173
  %exitcond2997 = icmp eq i32 %lftr.wideiv2996, 18, !dbg !1173
  br i1 %exitcond2997, label %for.inc1932, label %for.body1912, !dbg !1173

for.inc1932:                                      ; preds = %for.body1912
  %indvars.iv.next2999 = add i64 %indvars.iv2998, 1, !dbg !1184
  %lftr.wideiv3000 = trunc i64 %indvars.iv.next2999 to i32, !dbg !1184
  %exitcond3001 = icmp eq i32 %lftr.wideiv3000, 2, !dbg !1184
  br i1 %exitcond3001, label %for.inc1935, label %for.cond1909.preheader, !dbg !1184

for.inc1935:                                      ; preds = %for.inc1932
  %indvars.iv.next3003 = add i64 %indvars.iv3002, 1, !dbg !1176
  %lftr.wideiv3004 = trunc i64 %indvars.iv.next3003 to i32, !dbg !1176
  %exitcond3005 = icmp eq i32 %lftr.wideiv3004, 4, !dbg !1176
  br i1 %exitcond3005, label %for.cond1939.preheader, label %for.cond1875.preheader, !dbg !1176

for.cond1943.preheader:                           ; preds = %for.inc1975, %for.cond1939.preheader
  %indvars.iv2980 = phi i64 [ 0, %for.cond1939.preheader ], [ %indvars.iv.next2981, %for.inc1975 ]
  %295 = add nsw i64 %indvars.iv2980, %60, !dbg !1178
  %arrayidx1956 = getelementptr inbounds i16** %289, i64 %295, !dbg !1178
  %296 = load i16** %arrayidx1956, align 8, !dbg !1178, !tbaa !874
  %297 = add nsw i64 %indvars.iv2980, %57, !dbg !1182
  br label %for.body1946, !dbg !1185

for.body1946:                                     ; preds = %for.body1946, %for.cond1943.preheader
  %indvars.iv2973 = phi i64 [ 0, %for.cond1943.preheader ], [ %indvars.iv.next2974, %for.body1946 ]
  %arrayidx1950 = getelementptr inbounds [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv2980, i64 %indvars.iv2973, !dbg !1178
  %298 = load i16* %arrayidx1950, align 2, !dbg !1178, !tbaa !945
  %299 = add nsw i64 %indvars.iv2973, %59, !dbg !1178
  %arrayidx1957 = getelementptr inbounds i16* %296, i64 %299, !dbg !1178
  store i16 %298, i16* %arrayidx1957, align 2, !dbg !1178, !tbaa !945
  %arrayidx1964 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1960, i64 %indvars.iv2980, i64 %indvars.iv2973, !dbg !1182
  %300 = load i16* %arrayidx1964, align 2, !dbg !1182, !tbaa !945
  %301 = add nsw i64 %indvars.iv2973, %55, !dbg !1182
  %arrayidx1971 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %301, i64 %297, !dbg !1182
  store i16 %300, i16* %arrayidx1971, align 2, !dbg !1182, !tbaa !945
  %indvars.iv.next2974 = add i64 %indvars.iv2973, 1, !dbg !1185
  %lftr.wideiv2977 = trunc i64 %indvars.iv.next2974 to i32, !dbg !1185
  %exitcond2978 = icmp eq i32 %lftr.wideiv2977, 8, !dbg !1185
  br i1 %exitcond2978, label %for.inc1975, label %for.body1946, !dbg !1185

for.inc1975:                                      ; preds = %for.body1946
  %indvars.iv.next2981 = add i64 %indvars.iv2980, 1, !dbg !1183
  %lftr.wideiv2984 = trunc i64 %indvars.iv.next2981 to i32, !dbg !1183
  %exitcond2985 = icmp eq i32 %lftr.wideiv2984, 8, !dbg !1183
  br i1 %exitcond2985, label %for.end1977, label %for.cond1943.preheader, !dbg !1183

for.end1977:                                      ; preds = %for.inc1975
  %302 = load i32* %residue_transform_flag1868, align 4, !dbg !1186, !tbaa !853
  %tobool1979 = icmp eq i32 %302, 0, !dbg !1186
  br i1 %tobool1979, label %if.end2034, label %for.cond1981.preheader, !dbg !1186

for.cond1981.preheader:                           ; preds = %for.end1977
  %imgUV2017 = getelementptr inbounds %struct.storable_picture* %288, i64 0, i32 30, !dbg !1187
  %303 = load i16**** %imgUV2017, align 8, !dbg !1187, !tbaa !874
  br label %for.body1984, !dbg !1195

for.body1984:                                     ; preds = %for.inc2030, %for.cond1981.preheader
  %indvars.iv2969 = phi i64 [ 0, %for.cond1981.preheader ], [ %indvars.iv.next2970, %for.inc2030 ]
  %304 = trunc i64 %indvars.iv2969 to i32, !dbg !1196
  %rem1985 = srem i32 %304, 2, !dbg !1196
  %mul1986 = shl i32 %rem1985, 2, !dbg !1196
  call void @llvm.dbg.value(metadata !{i32 %mul1986}, i64 0, metadata !92), !dbg !1196
  %div1987 = sdiv i32 %304, 2, !dbg !1197
  %mul1988 = shl i32 %div1987, 2, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %mul1988}, i64 0, metadata !93), !dbg !1197
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !73), !dbg !1198
  %add2010 = add i32 %mul1986, %add, !dbg !1187
  %add2013 = add i32 %mul1988, %add2, !dbg !1187
  br label %for.cond1993.preheader, !dbg !1198

for.cond1993.preheader:                           ; preds = %for.inc2027, %for.body1984
  %indvars.iv2965 = phi i64 [ 0, %for.body1984 ], [ %indvars.iv.next2966, %for.inc2027 ]
  %arrayidx2018 = getelementptr inbounds i16*** %303, i64 %indvars.iv2965, !dbg !1187
  %305 = load i16*** %arrayidx2018, align 8, !dbg !1187, !tbaa !874
  br label %for.cond1997.preheader, !dbg !1199

for.cond1997.preheader:                           ; preds = %for.inc2024, %for.cond1993.preheader
  %indvars.iv2961 = phi i64 [ 0, %for.cond1993.preheader ], [ %indvars.iv.next2962, %for.inc2024 ]
  %306 = trunc i64 %indvars.iv2961 to i32, !dbg !1187
  %add2014 = add i32 %add2013, %306, !dbg !1187
  %idxprom2015 = sext i32 %add2014 to i64, !dbg !1187
  %arrayidx2019 = getelementptr inbounds i16** %305, i64 %idxprom2015, !dbg !1187
  %307 = load i16** %arrayidx2019, align 8, !dbg !1187, !tbaa !874
  br label %for.body2000, !dbg !1187

for.body2000:                                     ; preds = %for.body2000, %for.cond1997.preheader
  %indvars.iv2957 = phi i64 [ 0, %for.cond1997.preheader ], [ %indvars.iv.next2958, %for.body2000 ]
  %arrayidx2008 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i64 0, i64 %indvars.iv2965, i64 %indvars.iv2969, i64 %indvars.iv2961, i64 %indvars.iv2957, !dbg !1187
  %308 = load i32* %arrayidx2008, align 4, !dbg !1187, !tbaa !853
  %conv2009 = trunc i32 %308 to i16, !dbg !1187
  %309 = trunc i64 %indvars.iv2957 to i32, !dbg !1187
  %add2011 = add i32 %add2010, %309, !dbg !1187
  %idxprom2012 = sext i32 %add2011 to i64, !dbg !1187
  %arrayidx2020 = getelementptr inbounds i16* %307, i64 %idxprom2012, !dbg !1187
  store i16 %conv2009, i16* %arrayidx2020, align 2, !dbg !1187, !tbaa !945
  %indvars.iv.next2958 = add i64 %indvars.iv2957, 1, !dbg !1187
  %lftr.wideiv2959 = trunc i64 %indvars.iv.next2958 to i32, !dbg !1187
  %exitcond2960 = icmp eq i32 %lftr.wideiv2959, 4, !dbg !1187
  br i1 %exitcond2960, label %for.inc2024, label %for.body2000, !dbg !1187

for.inc2024:                                      ; preds = %for.body2000
  %indvars.iv.next2962 = add i64 %indvars.iv2961, 1, !dbg !1199
  %lftr.wideiv2963 = trunc i64 %indvars.iv.next2962 to i32, !dbg !1199
  %exitcond2964 = icmp eq i32 %lftr.wideiv2963, 4, !dbg !1199
  br i1 %exitcond2964, label %for.inc2027, label %for.cond1997.preheader, !dbg !1199

for.inc2027:                                      ; preds = %for.inc2024
  %indvars.iv.next2966 = add i64 %indvars.iv2965, 1, !dbg !1198
  %lftr.wideiv2967 = trunc i64 %indvars.iv.next2966 to i32, !dbg !1198
  %exitcond2968 = icmp eq i32 %lftr.wideiv2967, 2, !dbg !1198
  br i1 %exitcond2968, label %for.inc2030, label %for.cond1993.preheader, !dbg !1198

for.inc2030:                                      ; preds = %for.inc2027
  %indvars.iv.next2970 = add i64 %indvars.iv2969, 1, !dbg !1195
  %lftr.wideiv2971 = trunc i64 %indvars.iv.next2970 to i32, !dbg !1195
  %exitcond2972 = icmp eq i32 %lftr.wideiv2971, 4, !dbg !1195
  br i1 %exitcond2972, label %if.end2034, label %for.body1984, !dbg !1195

if.end2034:                                       ; preds = %for.inc2030, %for.inc1825, %for.end1977, %for.end1237
  %nonzero.3 = phi i32 [ %nonzero.2, %for.end1977 ], [ %call1238, %for.end1237 ], [ %call1373, %for.inc1825 ], [ %nonzero.2, %for.inc2030 ]
  call void @llvm.lifetime.end(i64 512, i8* %11) #3, !dbg !1200
  call void @llvm.lifetime.end(i64 128, i8* %1) #3, !dbg !1200
  call void @llvm.lifetime.end(i64 256, i8* %0) #3, !dbg !1200
  ret i32 %nonzero.3, !dbg !1200
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #4

; Function Attrs: nounwind optsize uwtable
define void @intrapred_luma8x8(i32 %img_x, i32 %img_y, i32* nocapture %left_available, i32* nocapture %up_available, i32* nocapture %all_available) #0 {
entry:
  %PredPel = alloca [25 x i32], align 16
  %pix_a = alloca [8 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{i32 %img_x}, i64 0, metadata !140), !dbg !1201
  call void @llvm.dbg.value(metadata !{i32 %img_y}, i64 0, metadata !141), !dbg !1201
  call void @llvm.dbg.value(metadata !{i32* %left_available}, i64 0, metadata !142), !dbg !1201
  call void @llvm.dbg.value(metadata !{i32* %up_available}, i64 0, metadata !143), !dbg !1201
  call void @llvm.dbg.value(metadata !{i32* %all_available}, i64 0, metadata !144), !dbg !1201
  %0 = bitcast [25 x i32]* %PredPel to i8*, !dbg !1202
  call void @llvm.lifetime.start(i64 100, i8* %0) #3, !dbg !1202
  call void @llvm.dbg.declare(metadata !{[25 x i32]* %PredPel}, metadata !148), !dbg !1202
  %1 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1203, !tbaa !874
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25, !dbg !1203
  %2 = load i16*** %imgY1, align 8, !dbg !1203, !tbaa !874
  call void @llvm.dbg.value(metadata !{i16** %2}, i64 0, metadata !152), !dbg !1203
  %and = and i32 %img_x, 15, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !153), !dbg !1204
  %and2 = and i32 %img_y, 15, !dbg !1205
  call void @llvm.dbg.value(metadata !{i32 %and2}, i64 0, metadata !154), !dbg !1205
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !1206, !tbaa !874
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !1206
  %4 = load i32* %current_mb_nr, align 4, !dbg !1206, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !155), !dbg !1206
  %5 = bitcast [8 x %struct.pix_pos]* %pix_a to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 192, i8* %5) #3, !dbg !1207
  call void @llvm.dbg.declare(metadata !{[8 x %struct.pix_pos]* %pix_a}, metadata !156), !dbg !1207
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_b}, metadata !159), !dbg !1208
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_c}, metadata !160), !dbg !1208
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_d}, metadata !161), !dbg !1208
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !145), !dbg !1209
  %sub = add nsw i32 %and, -1, !dbg !1211
  %6 = zext i32 %and2 to i64, !dbg !1209
  br label %for.body, !dbg !1209

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv3240 = phi i64 [ 0, %entry ], [ %indvars.iv.next3241, %for.body ]
  %7 = add nsw i64 %indvars.iv3240, %6, !dbg !1211
  %arrayidx = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3240, !dbg !1211
  %8 = trunc i64 %7 to i32, !dbg !1211
  call void @getNeighbour(i32 %4, i32 %sub, i32 %8, i32 1, %struct.pix_pos* %arrayidx) #7, !dbg !1211
  %indvars.iv.next3241 = add i64 %indvars.iv3240, 1, !dbg !1209
  %lftr.wideiv3243 = trunc i64 %indvars.iv.next3241 to i32, !dbg !1209
  %exitcond3244 = icmp eq i32 %lftr.wideiv3243, 8, !dbg !1209
  br i1 %exitcond3244, label %for.end, label %for.body, !dbg !1209

for.end:                                          ; preds = %for.body
  %sub3 = add nsw i32 %and2, -1, !dbg !1213
  call void @getNeighbour(i32 %4, i32 %and, i32 %sub3, i32 1, %struct.pix_pos* %pix_b) #7, !dbg !1213
  %add4 = add nsw i32 %and, 8, !dbg !1214
  call void @getNeighbour(i32 %4, i32 %add4, i32 %sub3, i32 1, %struct.pix_pos* %pix_c) #7, !dbg !1214
  call void @getNeighbour(i32 %4, i32 %sub, i32 %sub3, i32 1, %struct.pix_pos* %pix_d) #7, !dbg !1215
  %available = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 0, !dbg !1216
  %9 = load i32* %available, align 4, !dbg !1216, !tbaa !853
  %tobool = icmp eq i32 %9, 0, !dbg !1216
  br i1 %tobool, label %land.end11, label %land.rhs, !dbg !1216

land.rhs:                                         ; preds = %for.end
  %phitmp = icmp ne i32 %and2, 8
  %not.cmp8 = icmp ne i32 %and, 8, !dbg !1216
  %phitmp. = or i1 %phitmp, %not.cmp8, !dbg !1216
  br label %land.end11

land.end11:                                       ; preds = %for.end, %land.rhs
  %10 = phi i1 [ false, %for.end ], [ %phitmp., %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %available, align 4, !tbaa !853
  %11 = load %struct.InputParameters** @input, align 8, !dbg !1217, !tbaa !874
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 24, !dbg !1217
  %12 = load i32* %UseConstrainedIntraPred, align 4, !dbg !1217, !tbaa !853
  %tobool13 = icmp eq i32 %12, 0, !dbg !1217
  br i1 %tobool13, label %if.else, label %for.cond14.preheader, !dbg !1217

for.cond14.preheader:                             ; preds = %land.end11
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1218, !tbaa !874
  %intra_block = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 54, !dbg !1218
  br label %for.body16, !dbg !1221

for.body16:                                       ; preds = %cond.end, %for.cond14.preheader
  %indvars.iv3236 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next3237, %cond.end ]
  %block_available_left.03222 = phi i32 [ 1, %for.cond14.preheader ], [ %and25, %cond.end ]
  %available19 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3236, i32 0, !dbg !1218
  %14 = load i32* %available19, align 8, !dbg !1218, !tbaa !853
  %tobool20 = icmp eq i32 %14, 0, !dbg !1218
  br i1 %tobool20, label %cond.end, label %cond.true, !dbg !1218

cond.true:                                        ; preds = %for.body16
  %mb_addr = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3236, i32 1, !dbg !1218
  %15 = load i32* %mb_addr, align 4, !dbg !1218, !tbaa !853
  %idxprom23 = sext i32 %15 to i64, !dbg !1218
  %16 = load i32** %intra_block, align 8, !dbg !1218, !tbaa !874
  %arrayidx24 = getelementptr inbounds i32* %16, i64 %idxprom23, !dbg !1218
  %17 = load i32* %arrayidx24, align 4, !dbg !1218, !tbaa !853
  br label %cond.end, !dbg !1218

cond.end:                                         ; preds = %for.body16, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %for.body16 ], !dbg !1218
  %and25 = and i32 %cond, %block_available_left.03222, !dbg !1218
  call void @llvm.dbg.value(metadata !{i32 %and25}, i64 0, metadata !163), !dbg !1218
  %indvars.iv.next3237 = add i64 %indvars.iv3236, 1, !dbg !1221
  %lftr.wideiv3238 = trunc i64 %indvars.iv.next3237 to i32, !dbg !1221
  %exitcond3239 = icmp eq i32 %lftr.wideiv3238, 8, !dbg !1221
  br i1 %exitcond3239, label %for.end28, label %for.body16, !dbg !1221

for.end28:                                        ; preds = %cond.end
  %available29 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0, !dbg !1222
  %18 = load i32* %available29, align 4, !dbg !1222, !tbaa !853
  %tobool30 = icmp eq i32 %18, 0, !dbg !1222
  br i1 %tobool30, label %cond.end37, label %cond.true31, !dbg !1222

cond.true31:                                      ; preds = %for.end28
  %mb_addr32 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 1, !dbg !1222
  %19 = load i32* %mb_addr32, align 4, !dbg !1222, !tbaa !853
  %idxprom33 = sext i32 %19 to i64, !dbg !1222
  %20 = load i32** %intra_block, align 8, !dbg !1222, !tbaa !874
  %arrayidx35 = getelementptr inbounds i32* %20, i64 %idxprom33, !dbg !1222
  %21 = load i32* %arrayidx35, align 4, !dbg !1222, !tbaa !853
  br label %cond.end37, !dbg !1222

cond.end37:                                       ; preds = %for.end28, %cond.true31
  %cond38 = phi i32 [ %21, %cond.true31 ], [ 0, %for.end28 ], !dbg !1222
  call void @llvm.dbg.value(metadata !{i32 %cond38}, i64 0, metadata !162), !dbg !1222
  br i1 %10, label %cond.true41, label %cond.end47, !dbg !1223

cond.true41:                                      ; preds = %cond.end37
  %mb_addr42 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 1, !dbg !1223
  %22 = load i32* %mb_addr42, align 4, !dbg !1223, !tbaa !853
  %idxprom43 = sext i32 %22 to i64, !dbg !1223
  %23 = load i32** %intra_block, align 8, !dbg !1223, !tbaa !874
  %arrayidx45 = getelementptr inbounds i32* %23, i64 %idxprom43, !dbg !1223
  %24 = load i32* %arrayidx45, align 4, !dbg !1223, !tbaa !853
  br label %cond.end47, !dbg !1223

cond.end47:                                       ; preds = %cond.end37, %cond.true41
  %cond48 = phi i32 [ %24, %cond.true41 ], [ 0, %cond.end37 ], !dbg !1223
  call void @llvm.dbg.value(metadata !{i32 %cond48}, i64 0, metadata !165), !dbg !1223
  %available49 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0, !dbg !1224
  %25 = load i32* %available49, align 4, !dbg !1224, !tbaa !853
  %tobool50 = icmp eq i32 %25, 0, !dbg !1224
  br i1 %tobool50, label %if.end, label %cond.true51, !dbg !1224

cond.true51:                                      ; preds = %cond.end47
  %mb_addr52 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 1, !dbg !1224
  %26 = load i32* %mb_addr52, align 4, !dbg !1224, !tbaa !853
  %idxprom53 = sext i32 %26 to i64, !dbg !1224
  %27 = load i32** %intra_block, align 8, !dbg !1224, !tbaa !874
  %arrayidx55 = getelementptr inbounds i32* %27, i64 %idxprom53, !dbg !1224
  %28 = load i32* %arrayidx55, align 4, !dbg !1224, !tbaa !853
  br label %if.end, !dbg !1224

if.else:                                          ; preds = %land.end11
  %available60 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 0, !dbg !1225
  %29 = load i32* %available60, align 16, !dbg !1225, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !163), !dbg !1225
  %available61 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0, !dbg !1227
  %30 = load i32* %available61, align 4, !dbg !1227, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !162), !dbg !1227
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !165), !dbg !1228
  %available63 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0, !dbg !1229
  %31 = load i32* %available63, align 4, !dbg !1229, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !164), !dbg !1229
  br label %if.end

if.end:                                           ; preds = %cond.true51, %cond.end47, %if.else
  %block_available_up.0 = phi i32 [ %30, %if.else ], [ %cond38, %cond.end47 ], [ %cond38, %cond.true51 ]
  %block_available_left.1 = phi i32 [ %29, %if.else ], [ %and25, %cond.end47 ], [ %and25, %cond.true51 ]
  %block_available_up_left.0 = phi i32 [ %31, %if.else ], [ 0, %cond.end47 ], [ %28, %cond.true51 ]
  %block_available_up_right.0 = phi i32 [ %land.ext, %if.else ], [ %cond48, %cond.end47 ], [ %cond48, %cond.true51 ]
  store i32 %block_available_left.1, i32* %left_available, align 4, !dbg !1230, !tbaa !853
  store i32 %block_available_up.0, i32* %up_available, align 4, !dbg !1231, !tbaa !853
  %tobool64 = icmp ne i32 %block_available_up.0, 0, !dbg !1232
  %tobool64.not = xor i1 %tobool64, true, !dbg !1232
  %tobool67 = icmp ne i32 %block_available_up_left.0, 0, !dbg !1232
  %tobool65.not = icmp ne i32 %block_available_left.1, 0, !dbg !1232
  %not.or.cond = and i1 %tobool64, %tobool65.not, !dbg !1232
  %.tobool67 = and i1 %tobool67, %not.or.cond, !dbg !1232
  %land.ext69 = zext i1 %.tobool67 to i32
  store i32 %land.ext69, i32* %all_available, align 4, !tbaa !853
  br i1 %tobool64, label %if.then73, label %if.else143, !dbg !1233

if.then73:                                        ; preds = %if.end
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 4, !dbg !1234
  %32 = load i32* %pos_x, align 4, !dbg !1234, !tbaa !853
  %idxprom75 = sext i32 %32 to i64, !dbg !1234
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 5, !dbg !1234
  %33 = load i32* %pos_y, align 4, !dbg !1234, !tbaa !853
  %idxprom76 = sext i32 %33 to i64, !dbg !1234
  %arrayidx77 = getelementptr inbounds i16** %2, i64 %idxprom76, !dbg !1234
  %34 = load i16** %arrayidx77, align 8, !dbg !1234, !tbaa !874
  %arrayidx78 = getelementptr inbounds i16* %34, i64 %idxprom75, !dbg !1234
  %35 = load i16* %arrayidx78, align 2, !dbg !1234, !tbaa !945
  %conv = zext i16 %35 to i32, !dbg !1234
  %arrayidx79 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1, !dbg !1234
  store i32 %conv, i32* %arrayidx79, align 4, !dbg !1234, !tbaa !853
  %add81 = add nsw i32 %32, 1, !dbg !1236
  %idxprom82 = sext i32 %add81 to i64, !dbg !1236
  %arrayidx86 = getelementptr inbounds i16* %34, i64 %idxprom82, !dbg !1236
  %36 = load i16* %arrayidx86, align 2, !dbg !1236, !tbaa !945
  %conv87 = zext i16 %36 to i32, !dbg !1236
  %arrayidx88 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2, !dbg !1236
  store i32 %conv87, i32* %arrayidx88, align 8, !dbg !1236, !tbaa !853
  %add90 = add nsw i32 %32, 2, !dbg !1237
  %idxprom91 = sext i32 %add90 to i64, !dbg !1237
  %arrayidx95 = getelementptr inbounds i16* %34, i64 %idxprom91, !dbg !1237
  %37 = load i16* %arrayidx95, align 2, !dbg !1237, !tbaa !945
  %conv96 = zext i16 %37 to i32, !dbg !1237
  %arrayidx97 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3, !dbg !1237
  store i32 %conv96, i32* %arrayidx97, align 4, !dbg !1237, !tbaa !853
  %add99 = add nsw i32 %32, 3, !dbg !1238
  %idxprom100 = sext i32 %add99 to i64, !dbg !1238
  %arrayidx104 = getelementptr inbounds i16* %34, i64 %idxprom100, !dbg !1238
  %38 = load i16* %arrayidx104, align 2, !dbg !1238, !tbaa !945
  %conv105 = zext i16 %38 to i32, !dbg !1238
  %arrayidx106 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4, !dbg !1238
  store i32 %conv105, i32* %arrayidx106, align 16, !dbg !1238, !tbaa !853
  %add108 = add nsw i32 %32, 4, !dbg !1239
  %idxprom109 = sext i32 %add108 to i64, !dbg !1239
  %arrayidx113 = getelementptr inbounds i16* %34, i64 %idxprom109, !dbg !1239
  %39 = load i16* %arrayidx113, align 2, !dbg !1239, !tbaa !945
  %conv114 = zext i16 %39 to i32, !dbg !1239
  %arrayidx115 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 5, !dbg !1239
  store i32 %conv114, i32* %arrayidx115, align 4, !dbg !1239, !tbaa !853
  %add117 = add nsw i32 %32, 5, !dbg !1240
  %idxprom118 = sext i32 %add117 to i64, !dbg !1240
  %arrayidx122 = getelementptr inbounds i16* %34, i64 %idxprom118, !dbg !1240
  %40 = load i16* %arrayidx122, align 2, !dbg !1240, !tbaa !945
  %conv123 = zext i16 %40 to i32, !dbg !1240
  %arrayidx124 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6, !dbg !1240
  store i32 %conv123, i32* %arrayidx124, align 8, !dbg !1240, !tbaa !853
  %add126 = add nsw i32 %32, 6, !dbg !1241
  %idxprom127 = sext i32 %add126 to i64, !dbg !1241
  %arrayidx131 = getelementptr inbounds i16* %34, i64 %idxprom127, !dbg !1241
  %41 = load i16* %arrayidx131, align 2, !dbg !1241, !tbaa !945
  %conv132 = zext i16 %41 to i32, !dbg !1241
  %arrayidx133 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 7, !dbg !1241
  store i32 %conv132, i32* %arrayidx133, align 4, !dbg !1241, !tbaa !853
  %add135 = add nsw i32 %32, 7, !dbg !1242
  %idxprom136 = sext i32 %add135 to i64, !dbg !1242
  %arrayidx140 = getelementptr inbounds i16* %34, i64 %idxprom136, !dbg !1242
  %42 = load i16* %arrayidx140, align 2, !dbg !1242, !tbaa !945
  %conv141 = zext i16 %42 to i32, !dbg !1242
  %arrayidx142 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8, !dbg !1242
  store i32 %conv141, i32* %arrayidx142, align 16, !dbg !1242, !tbaa !853
  br label %if.end152, !dbg !1243

if.else143:                                       ; preds = %if.end
  %43 = load %struct.ImageParameters** @img, align 8, !dbg !1244, !tbaa !874
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 154, !dbg !1244
  %44 = load i32* %dc_pred_value, align 4, !dbg !1244, !tbaa !853
  %arrayidx144 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8, !dbg !1244
  store i32 %44, i32* %arrayidx144, align 16, !dbg !1244, !tbaa !853
  %arrayidx145 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 7, !dbg !1244
  store i32 %44, i32* %arrayidx145, align 4, !dbg !1244, !tbaa !853
  %arrayidx146 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6, !dbg !1244
  store i32 %44, i32* %arrayidx146, align 8, !dbg !1244, !tbaa !853
  %arrayidx147 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 5, !dbg !1244
  store i32 %44, i32* %arrayidx147, align 4, !dbg !1244, !tbaa !853
  %arrayidx148 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4, !dbg !1244
  store i32 %44, i32* %arrayidx148, align 16, !dbg !1244, !tbaa !853
  %arrayidx149 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3, !dbg !1244
  store i32 %44, i32* %arrayidx149, align 4, !dbg !1244, !tbaa !853
  %arrayidx150 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2, !dbg !1244
  store i32 %44, i32* %arrayidx150, align 8, !dbg !1244, !tbaa !853
  %arrayidx151 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1, !dbg !1244
  store i32 %44, i32* %arrayidx151, align 4, !dbg !1244, !tbaa !853
  br label %if.end152

if.end152:                                        ; preds = %if.else143, %if.then73
  %45 = phi i32 [ %44, %if.else143 ], [ %conv141, %if.then73 ]
  %tobool153 = icmp eq i32 %block_available_up_right.0, 0, !dbg !1246
  br i1 %tobool153, label %if.else227, label %if.then154, !dbg !1246

if.then154:                                       ; preds = %if.end152
  %pos_x155 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 4, !dbg !1247
  %46 = load i32* %pos_x155, align 4, !dbg !1247, !tbaa !853
  %idxprom157 = sext i32 %46 to i64, !dbg !1247
  %pos_y158 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 5, !dbg !1247
  %47 = load i32* %pos_y158, align 4, !dbg !1247, !tbaa !853
  %idxprom159 = sext i32 %47 to i64, !dbg !1247
  %arrayidx160 = getelementptr inbounds i16** %2, i64 %idxprom159, !dbg !1247
  %48 = load i16** %arrayidx160, align 8, !dbg !1247, !tbaa !874
  %arrayidx161 = getelementptr inbounds i16* %48, i64 %idxprom157, !dbg !1247
  %49 = load i16* %arrayidx161, align 2, !dbg !1247, !tbaa !945
  %conv162 = zext i16 %49 to i32, !dbg !1247
  %arrayidx163 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 9, !dbg !1247
  store i32 %conv162, i32* %arrayidx163, align 4, !dbg !1247, !tbaa !853
  %add165 = add nsw i32 %46, 1, !dbg !1249
  %idxprom166 = sext i32 %add165 to i64, !dbg !1249
  %arrayidx170 = getelementptr inbounds i16* %48, i64 %idxprom166, !dbg !1249
  %50 = load i16* %arrayidx170, align 2, !dbg !1249, !tbaa !945
  %conv171 = zext i16 %50 to i32, !dbg !1249
  %arrayidx172 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10, !dbg !1249
  store i32 %conv171, i32* %arrayidx172, align 8, !dbg !1249, !tbaa !853
  %add174 = add nsw i32 %46, 2, !dbg !1250
  %idxprom175 = sext i32 %add174 to i64, !dbg !1250
  %arrayidx179 = getelementptr inbounds i16* %48, i64 %idxprom175, !dbg !1250
  %51 = load i16* %arrayidx179, align 2, !dbg !1250, !tbaa !945
  %conv180 = zext i16 %51 to i32, !dbg !1250
  %arrayidx181 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 11, !dbg !1250
  store i32 %conv180, i32* %arrayidx181, align 4, !dbg !1250, !tbaa !853
  %add183 = add nsw i32 %46, 3, !dbg !1251
  %idxprom184 = sext i32 %add183 to i64, !dbg !1251
  %arrayidx188 = getelementptr inbounds i16* %48, i64 %idxprom184, !dbg !1251
  %52 = load i16* %arrayidx188, align 2, !dbg !1251, !tbaa !945
  %conv189 = zext i16 %52 to i32, !dbg !1251
  %arrayidx190 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12, !dbg !1251
  store i32 %conv189, i32* %arrayidx190, align 16, !dbg !1251, !tbaa !853
  %add192 = add nsw i32 %46, 4, !dbg !1252
  %idxprom193 = sext i32 %add192 to i64, !dbg !1252
  %arrayidx197 = getelementptr inbounds i16* %48, i64 %idxprom193, !dbg !1252
  %53 = load i16* %arrayidx197, align 2, !dbg !1252, !tbaa !945
  %conv198 = zext i16 %53 to i32, !dbg !1252
  %arrayidx199 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 13, !dbg !1252
  store i32 %conv198, i32* %arrayidx199, align 4, !dbg !1252, !tbaa !853
  %add201 = add nsw i32 %46, 5, !dbg !1253
  %idxprom202 = sext i32 %add201 to i64, !dbg !1253
  %arrayidx206 = getelementptr inbounds i16* %48, i64 %idxprom202, !dbg !1253
  %54 = load i16* %arrayidx206, align 2, !dbg !1253, !tbaa !945
  %conv207 = zext i16 %54 to i32, !dbg !1253
  %arrayidx208 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14, !dbg !1253
  store i32 %conv207, i32* %arrayidx208, align 8, !dbg !1253, !tbaa !853
  %add210 = add nsw i32 %46, 6, !dbg !1254
  %idxprom211 = sext i32 %add210 to i64, !dbg !1254
  %arrayidx215 = getelementptr inbounds i16* %48, i64 %idxprom211, !dbg !1254
  %55 = load i16* %arrayidx215, align 2, !dbg !1254, !tbaa !945
  %conv216 = zext i16 %55 to i32, !dbg !1254
  %arrayidx217 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 15, !dbg !1254
  store i32 %conv216, i32* %arrayidx217, align 4, !dbg !1254, !tbaa !853
  %add219 = add nsw i32 %46, 7, !dbg !1255
  %idxprom220 = sext i32 %add219 to i64, !dbg !1255
  %arrayidx224 = getelementptr inbounds i16* %48, i64 %idxprom220, !dbg !1255
  %56 = load i16* %arrayidx224, align 2, !dbg !1255, !tbaa !945
  %conv225 = zext i16 %56 to i32, !dbg !1255
  %arrayidx226 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16, !dbg !1255
  store i32 %conv225, i32* %arrayidx226, align 16, !dbg !1255, !tbaa !853
  br label %if.end237, !dbg !1256

if.else227:                                       ; preds = %if.end152
  %arrayidx229 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16, !dbg !1257
  store i32 %45, i32* %arrayidx229, align 16, !dbg !1257, !tbaa !853
  %arrayidx230 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 15, !dbg !1257
  store i32 %45, i32* %arrayidx230, align 4, !dbg !1257, !tbaa !853
  %arrayidx231 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14, !dbg !1257
  store i32 %45, i32* %arrayidx231, align 8, !dbg !1257, !tbaa !853
  %arrayidx232 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 13, !dbg !1257
  store i32 %45, i32* %arrayidx232, align 4, !dbg !1257, !tbaa !853
  %arrayidx233 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12, !dbg !1257
  store i32 %45, i32* %arrayidx233, align 16, !dbg !1257, !tbaa !853
  %arrayidx234 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 11, !dbg !1257
  store i32 %45, i32* %arrayidx234, align 4, !dbg !1257, !tbaa !853
  %arrayidx235 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10, !dbg !1257
  store i32 %45, i32* %arrayidx235, align 8, !dbg !1257, !tbaa !853
  %arrayidx236 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 9, !dbg !1257
  store i32 %45, i32* %arrayidx236, align 4, !dbg !1257, !tbaa !853
  br label %if.end237

if.end237:                                        ; preds = %if.else227, %if.then154
  br i1 %tobool65.not, label %if.then239, label %if.else320, !dbg !1259

if.then239:                                       ; preds = %if.end237
  %pos_x241 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 4, !dbg !1260
  %57 = bitcast i32* %pos_x241 to i64*, !dbg !1260
  %58 = load i64* %57, align 16, !dbg !1260
  %sext = shl i64 %58, 32, !dbg !1260
  %idxprom242 = ashr exact i64 %sext, 32, !dbg !1260
  %idxprom245 = ashr i64 %58, 32, !dbg !1260
  %arrayidx246 = getelementptr inbounds i16** %2, i64 %idxprom245, !dbg !1260
  %59 = load i16** %arrayidx246, align 8, !dbg !1260, !tbaa !874
  %arrayidx247 = getelementptr inbounds i16* %59, i64 %idxprom242, !dbg !1260
  %60 = load i16* %arrayidx247, align 2, !dbg !1260, !tbaa !945
  %conv248 = zext i16 %60 to i32, !dbg !1260
  %arrayidx249 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1260
  store i32 %conv248, i32* %arrayidx249, align 4, !dbg !1260, !tbaa !853
  %pos_x251 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 1, i32 4, !dbg !1262
  %61 = bitcast i32* %pos_x251 to i64*, !dbg !1262
  %62 = load i64* %61, align 8, !dbg !1262
  %sext3344 = shl i64 %62, 32, !dbg !1262
  %idxprom252 = ashr exact i64 %sext3344, 32, !dbg !1262
  %idxprom255 = ashr i64 %62, 32, !dbg !1262
  %arrayidx256 = getelementptr inbounds i16** %2, i64 %idxprom255, !dbg !1262
  %63 = load i16** %arrayidx256, align 8, !dbg !1262, !tbaa !874
  %arrayidx257 = getelementptr inbounds i16* %63, i64 %idxprom252, !dbg !1262
  %64 = load i16* %arrayidx257, align 2, !dbg !1262, !tbaa !945
  %conv258 = zext i16 %64 to i32, !dbg !1262
  %arrayidx259 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1262
  store i32 %conv258, i32* %arrayidx259, align 8, !dbg !1262, !tbaa !853
  %pos_x261 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 2, i32 4, !dbg !1263
  %65 = bitcast i32* %pos_x261 to i64*, !dbg !1263
  %66 = load i64* %65, align 16, !dbg !1263
  %sext3346 = shl i64 %66, 32, !dbg !1263
  %idxprom262 = ashr exact i64 %sext3346, 32, !dbg !1263
  %idxprom265 = ashr i64 %66, 32, !dbg !1263
  %arrayidx266 = getelementptr inbounds i16** %2, i64 %idxprom265, !dbg !1263
  %67 = load i16** %arrayidx266, align 8, !dbg !1263, !tbaa !874
  %arrayidx267 = getelementptr inbounds i16* %67, i64 %idxprom262, !dbg !1263
  %68 = load i16* %arrayidx267, align 2, !dbg !1263, !tbaa !945
  %conv268 = zext i16 %68 to i32, !dbg !1263
  %arrayidx269 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19, !dbg !1263
  store i32 %conv268, i32* %arrayidx269, align 4, !dbg !1263, !tbaa !853
  %pos_x271 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 3, i32 4, !dbg !1264
  %69 = bitcast i32* %pos_x271 to i64*, !dbg !1264
  %70 = load i64* %69, align 8, !dbg !1264
  %sext3348 = shl i64 %70, 32, !dbg !1264
  %idxprom272 = ashr exact i64 %sext3348, 32, !dbg !1264
  %idxprom275 = ashr i64 %70, 32, !dbg !1264
  %arrayidx276 = getelementptr inbounds i16** %2, i64 %idxprom275, !dbg !1264
  %71 = load i16** %arrayidx276, align 8, !dbg !1264, !tbaa !874
  %arrayidx277 = getelementptr inbounds i16* %71, i64 %idxprom272, !dbg !1264
  %72 = load i16* %arrayidx277, align 2, !dbg !1264, !tbaa !945
  %conv278 = zext i16 %72 to i32, !dbg !1264
  %arrayidx279 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1264
  store i32 %conv278, i32* %arrayidx279, align 16, !dbg !1264, !tbaa !853
  %pos_x281 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 4, i32 4, !dbg !1265
  %73 = bitcast i32* %pos_x281 to i64*, !dbg !1265
  %74 = load i64* %73, align 16, !dbg !1265
  %sext3350 = shl i64 %74, 32, !dbg !1265
  %idxprom282 = ashr exact i64 %sext3350, 32, !dbg !1265
  %idxprom285 = ashr i64 %74, 32, !dbg !1265
  %arrayidx286 = getelementptr inbounds i16** %2, i64 %idxprom285, !dbg !1265
  %75 = load i16** %arrayidx286, align 8, !dbg !1265, !tbaa !874
  %arrayidx287 = getelementptr inbounds i16* %75, i64 %idxprom282, !dbg !1265
  %76 = load i16* %arrayidx287, align 2, !dbg !1265, !tbaa !945
  %conv288 = zext i16 %76 to i32, !dbg !1265
  %arrayidx289 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21, !dbg !1265
  store i32 %conv288, i32* %arrayidx289, align 4, !dbg !1265, !tbaa !853
  %pos_x291 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 5, i32 4, !dbg !1266
  %77 = bitcast i32* %pos_x291 to i64*, !dbg !1266
  %78 = load i64* %77, align 8, !dbg !1266
  %sext3352 = shl i64 %78, 32, !dbg !1266
  %idxprom292 = ashr exact i64 %sext3352, 32, !dbg !1266
  %idxprom295 = ashr i64 %78, 32, !dbg !1266
  %arrayidx296 = getelementptr inbounds i16** %2, i64 %idxprom295, !dbg !1266
  %79 = load i16** %arrayidx296, align 8, !dbg !1266, !tbaa !874
  %arrayidx297 = getelementptr inbounds i16* %79, i64 %idxprom292, !dbg !1266
  %80 = load i16* %arrayidx297, align 2, !dbg !1266, !tbaa !945
  %conv298 = zext i16 %80 to i32, !dbg !1266
  %arrayidx299 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1266
  store i32 %conv298, i32* %arrayidx299, align 8, !dbg !1266, !tbaa !853
  %pos_x301 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 6, i32 4, !dbg !1267
  %81 = bitcast i32* %pos_x301 to i64*, !dbg !1267
  %82 = load i64* %81, align 16, !dbg !1267
  %sext3354 = shl i64 %82, 32, !dbg !1267
  %idxprom302 = ashr exact i64 %sext3354, 32, !dbg !1267
  %idxprom305 = ashr i64 %82, 32, !dbg !1267
  %arrayidx306 = getelementptr inbounds i16** %2, i64 %idxprom305, !dbg !1267
  %83 = load i16** %arrayidx306, align 8, !dbg !1267, !tbaa !874
  %arrayidx307 = getelementptr inbounds i16* %83, i64 %idxprom302, !dbg !1267
  %84 = load i16* %arrayidx307, align 2, !dbg !1267, !tbaa !945
  %conv308 = zext i16 %84 to i32, !dbg !1267
  %arrayidx309 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 23, !dbg !1267
  store i32 %conv308, i32* %arrayidx309, align 4, !dbg !1267, !tbaa !853
  %pos_x311 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 7, i32 4, !dbg !1268
  %85 = bitcast i32* %pos_x311 to i64*, !dbg !1268
  %86 = load i64* %85, align 8, !dbg !1268
  %sext3356 = shl i64 %86, 32, !dbg !1268
  %idxprom312 = ashr exact i64 %sext3356, 32, !dbg !1268
  %idxprom315 = ashr i64 %86, 32, !dbg !1268
  %arrayidx316 = getelementptr inbounds i16** %2, i64 %idxprom315, !dbg !1268
  %87 = load i16** %arrayidx316, align 8, !dbg !1268, !tbaa !874
  %arrayidx317 = getelementptr inbounds i16* %87, i64 %idxprom312, !dbg !1268
  %88 = load i16* %arrayidx317, align 2, !dbg !1268, !tbaa !945
  %conv318 = zext i16 %88 to i32, !dbg !1268
  %arrayidx319 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1268
  store i32 %conv318, i32* %arrayidx319, align 16, !dbg !1268, !tbaa !853
  br label %if.end330, !dbg !1269

if.else320:                                       ; preds = %if.end237
  %89 = load %struct.ImageParameters** @img, align 8, !dbg !1270, !tbaa !874
  %dc_pred_value321 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 154, !dbg !1270
  %90 = load i32* %dc_pred_value321, align 4, !dbg !1270, !tbaa !853
  %arrayidx322 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1270
  store i32 %90, i32* %arrayidx322, align 16, !dbg !1270, !tbaa !853
  %arrayidx323 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 23, !dbg !1270
  store i32 %90, i32* %arrayidx323, align 4, !dbg !1270, !tbaa !853
  %arrayidx324 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1270
  store i32 %90, i32* %arrayidx324, align 8, !dbg !1270, !tbaa !853
  %arrayidx325 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21, !dbg !1270
  store i32 %90, i32* %arrayidx325, align 4, !dbg !1270, !tbaa !853
  %arrayidx326 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1270
  store i32 %90, i32* %arrayidx326, align 16, !dbg !1270, !tbaa !853
  %arrayidx327 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19, !dbg !1270
  store i32 %90, i32* %arrayidx327, align 4, !dbg !1270, !tbaa !853
  %arrayidx328 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1270
  store i32 %90, i32* %arrayidx328, align 8, !dbg !1270, !tbaa !853
  %arrayidx329 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1270
  store i32 %90, i32* %arrayidx329, align 4, !dbg !1270, !tbaa !853
  br label %if.end330

if.end330:                                        ; preds = %if.else320, %if.then239
  br i1 %tobool67, label %if.then332, label %if.else341, !dbg !1272

if.then332:                                       ; preds = %if.end330
  %pos_x333 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 4, !dbg !1273
  %91 = load i32* %pos_x333, align 4, !dbg !1273, !tbaa !853
  %idxprom334 = sext i32 %91 to i64, !dbg !1273
  %pos_y335 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 5, !dbg !1273
  %92 = load i32* %pos_y335, align 4, !dbg !1273, !tbaa !853
  %idxprom336 = sext i32 %92 to i64, !dbg !1273
  %arrayidx337 = getelementptr inbounds i16** %2, i64 %idxprom336, !dbg !1273
  %93 = load i16** %arrayidx337, align 8, !dbg !1273, !tbaa !874
  %arrayidx338 = getelementptr inbounds i16* %93, i64 %idxprom334, !dbg !1273
  %94 = load i16* %arrayidx338, align 2, !dbg !1273, !tbaa !945
  %conv339 = zext i16 %94 to i32, !dbg !1273
  %arrayidx340 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0, !dbg !1273
  store i32 %conv339, i32* %arrayidx340, align 16, !dbg !1273, !tbaa !853
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1275, !tbaa !874
  br label %for.cond345.preheader, !dbg !1277

if.else341:                                       ; preds = %if.end330
  %95 = load %struct.ImageParameters** @img, align 8, !dbg !1278, !tbaa !874
  %dc_pred_value342 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 154, !dbg !1278
  %96 = load i32* %dc_pred_value342, align 4, !dbg !1278, !tbaa !853
  %arrayidx343 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0, !dbg !1278
  store i32 %96, i32* %arrayidx343, align 16, !dbg !1278, !tbaa !853
  br label %for.cond345.preheader

for.cond345.preheader:                            ; preds = %if.else341, %if.then332
  %97 = phi %struct.ImageParameters* [ %95, %if.else341 ], [ %.pre, %if.then332 ]
  br label %for.body348, !dbg !1280

for.body348:                                      ; preds = %for.body348, %for.cond345.preheader
  %indvars.iv3232 = phi i64 [ 0, %for.cond345.preheader ], [ %indvars.iv.next3233, %for.body348 ]
  %arrayidx352 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 43, i64 %indvars.iv3232, i64 0, i64 0, !dbg !1275
  store i16 -1, i16* %arrayidx352, align 2, !dbg !1275, !tbaa !945
  %indvars.iv.next3233 = add i64 %indvars.iv3232, 1, !dbg !1280
  %lftr.wideiv3234 = trunc i64 %indvars.iv.next3233 to i32, !dbg !1280
  %exitcond3235 = icmp eq i32 %lftr.wideiv3234, 9, !dbg !1280
  br i1 %exitcond3235, label %for.end355, label %for.body348, !dbg !1280

for.end355:                                       ; preds = %for.body348
  %arrayidx356 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0, !dbg !1281
  call void @LowPassForIntra8x8Pred(i32* %arrayidx356, i32 %block_available_up_left.0, i32 %block_available_up.0, i32 %block_available_left.1) #6, !dbg !1281
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !147), !dbg !1282
  %tobool238.not = xor i1 %tobool65.not, true, !dbg !1283
  %brmerge = or i1 %tobool64.not, %tobool238.not, !dbg !1283
  br i1 %brmerge, label %if.else393, label %if.then360, !dbg !1283

if.then360:                                       ; preds = %for.end355
  %arrayidx361 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1, !dbg !1284
  %98 = load i32* %arrayidx361, align 4, !dbg !1284, !tbaa !853
  %arrayidx362 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2, !dbg !1284
  %99 = bitcast i32* %arrayidx362 to i64*, !dbg !1284
  %100 = load i64* %99, align 8, !dbg !1284
  %101 = trunc i64 %100 to i32, !dbg !1284
  %102 = lshr i64 %100, 32
  %103 = trunc i64 %102 to i32
  %arrayidx366 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4, !dbg !1284
  %104 = bitcast i32* %arrayidx366 to i64*, !dbg !1284
  %105 = load i64* %104, align 16, !dbg !1284
  %106 = trunc i64 %105 to i32, !dbg !1284
  %107 = lshr i64 %105, 32
  %108 = trunc i64 %107 to i32
  %arrayidx370 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6, !dbg !1284
  %109 = bitcast i32* %arrayidx370 to i64*, !dbg !1284
  %110 = load i64* %109, align 8, !dbg !1284
  %111 = trunc i64 %110 to i32, !dbg !1284
  %112 = lshr i64 %110, 32
  %113 = trunc i64 %112 to i32
  %arrayidx374 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8, !dbg !1284
  %114 = load i32* %arrayidx374, align 16, !dbg !1284, !tbaa !853
  %arrayidx376 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1284
  %115 = load i32* %arrayidx376, align 4, !dbg !1284, !tbaa !853
  %arrayidx378 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1284
  %116 = bitcast i32* %arrayidx378 to i64*, !dbg !1284
  %117 = load i64* %116, align 8, !dbg !1284
  %118 = trunc i64 %117 to i32, !dbg !1284
  %119 = lshr i64 %117, 32
  %120 = trunc i64 %119 to i32
  %arrayidx382 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1284
  %121 = bitcast i32* %arrayidx382 to i64*, !dbg !1284
  %122 = load i64* %121, align 16, !dbg !1284
  %123 = trunc i64 %122 to i32, !dbg !1284
  %124 = lshr i64 %122, 32
  %125 = trunc i64 %124 to i32
  %arrayidx386 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1284
  %126 = bitcast i32* %arrayidx386 to i64*, !dbg !1284
  %127 = load i64* %126, align 8, !dbg !1284
  %128 = trunc i64 %127 to i32, !dbg !1284
  %129 = lshr i64 %127, 32
  %130 = trunc i64 %129 to i32
  %arrayidx390 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1284
  %131 = load i32* %arrayidx390, align 16, !dbg !1284, !tbaa !853
  %add363 = add i32 %98, 8, !dbg !1284
  %add365 = add i32 %add363, %101, !dbg !1284
  %add367 = add i32 %add365, %103, !dbg !1284
  %add369 = add i32 %add367, %106, !dbg !1284
  %add371 = add i32 %add369, %108, !dbg !1284
  %add373 = add i32 %add371, %111, !dbg !1284
  %add375 = add i32 %add373, %113, !dbg !1284
  %add377 = add i32 %add375, %114, !dbg !1284
  %add379 = add i32 %add377, %115, !dbg !1284
  %add381 = add i32 %add379, %118, !dbg !1284
  %add383 = add i32 %add381, %120, !dbg !1284
  %add385 = add i32 %add383, %123, !dbg !1284
  %add387 = add i32 %add385, %125, !dbg !1284
  %add389 = add i32 %add387, %128, !dbg !1284
  %add391 = add i32 %add389, %130, !dbg !1284
  %add392 = add i32 %add391, %131, !dbg !1284
  %shr = ashr i32 %add392, 4, !dbg !1284
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !147), !dbg !1284
  br label %if.end441, !dbg !1286

if.else393:                                       ; preds = %for.end355
  %brmerge3210 = or i1 %tobool64, %tobool238.not, !dbg !1287
  br i1 %brmerge3210, label %if.else415, label %if.then397, !dbg !1287

if.then397:                                       ; preds = %if.else393
  %arrayidx398 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1288
  %132 = load i32* %arrayidx398, align 4, !dbg !1288, !tbaa !853
  %arrayidx399 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1288
  %133 = bitcast i32* %arrayidx399 to i64*, !dbg !1288
  %134 = load i64* %133, align 8, !dbg !1288
  %135 = trunc i64 %134 to i32, !dbg !1288
  %136 = lshr i64 %134, 32
  %137 = trunc i64 %136 to i32
  %arrayidx403 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1288
  %138 = bitcast i32* %arrayidx403 to i64*, !dbg !1288
  %139 = load i64* %138, align 16, !dbg !1288
  %140 = trunc i64 %139 to i32, !dbg !1288
  %141 = lshr i64 %139, 32
  %142 = trunc i64 %141 to i32
  %arrayidx407 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1288
  %143 = bitcast i32* %arrayidx407 to i64*, !dbg !1288
  %144 = load i64* %143, align 8, !dbg !1288
  %145 = trunc i64 %144 to i32, !dbg !1288
  %146 = lshr i64 %144, 32
  %147 = trunc i64 %146 to i32
  %arrayidx411 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1288
  %148 = load i32* %arrayidx411, align 16, !dbg !1288, !tbaa !853
  %add400 = add i32 %132, 4, !dbg !1288
  %add402 = add i32 %add400, %135, !dbg !1288
  %add404 = add i32 %add402, %137, !dbg !1288
  %add406 = add i32 %add404, %140, !dbg !1288
  %add408 = add i32 %add406, %142, !dbg !1288
  %add410 = add i32 %add408, %145, !dbg !1288
  %add412 = add i32 %add410, %147, !dbg !1288
  %add413 = add i32 %add412, %148, !dbg !1288
  %shr414 = ashr i32 %add413, 3, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32 %shr414}, i64 0, metadata !147), !dbg !1288
  br label %if.end441, !dbg !1290

if.else415:                                       ; preds = %if.else393
  %brmerge3212 = or i1 %tobool65.not, %tobool64.not, !dbg !1291
  br i1 %brmerge3212, label %if.else437, label %if.then419, !dbg !1291

if.then419:                                       ; preds = %if.else415
  %arrayidx420 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1, !dbg !1292
  %149 = load i32* %arrayidx420, align 4, !dbg !1292, !tbaa !853
  %arrayidx421 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2, !dbg !1292
  %150 = bitcast i32* %arrayidx421 to i64*, !dbg !1292
  %151 = load i64* %150, align 8, !dbg !1292
  %152 = trunc i64 %151 to i32, !dbg !1292
  %153 = lshr i64 %151, 32
  %154 = trunc i64 %153 to i32
  %arrayidx425 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4, !dbg !1292
  %155 = bitcast i32* %arrayidx425 to i64*, !dbg !1292
  %156 = load i64* %155, align 16, !dbg !1292
  %157 = trunc i64 %156 to i32, !dbg !1292
  %158 = lshr i64 %156, 32
  %159 = trunc i64 %158 to i32
  %arrayidx429 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6, !dbg !1292
  %160 = bitcast i32* %arrayidx429 to i64*, !dbg !1292
  %161 = load i64* %160, align 8, !dbg !1292
  %162 = trunc i64 %161 to i32, !dbg !1292
  %163 = lshr i64 %161, 32
  %164 = trunc i64 %163 to i32
  %arrayidx433 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8, !dbg !1292
  %165 = load i32* %arrayidx433, align 16, !dbg !1292, !tbaa !853
  %add422 = add i32 %149, 4, !dbg !1292
  %add424 = add i32 %add422, %152, !dbg !1292
  %add426 = add i32 %add424, %154, !dbg !1292
  %add428 = add i32 %add426, %157, !dbg !1292
  %add430 = add i32 %add428, %159, !dbg !1292
  %add432 = add i32 %add430, %162, !dbg !1292
  %add434 = add i32 %add432, %164, !dbg !1292
  %add435 = add i32 %add434, %165, !dbg !1292
  %shr436 = ashr i32 %add435, 3, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32 %shr436}, i64 0, metadata !147), !dbg !1292
  br label %if.end441, !dbg !1294

if.else437:                                       ; preds = %if.else415
  %166 = load %struct.ImageParameters** @img, align 8, !dbg !1295, !tbaa !874
  %dc_pred_value438 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 154, !dbg !1295
  %167 = load i32* %dc_pred_value438, align 4, !dbg !1295, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !147), !dbg !1295
  br label %if.end441

if.end441:                                        ; preds = %if.then397, %if.else437, %if.then419, %if.then360
  %s0.0 = phi i32 [ %shr, %if.then360 ], [ %167, %if.else437 ], [ %shr436, %if.then419 ], [ %shr414, %if.then397 ]
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !146), !dbg !1297
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !145), !dbg !1299
  %conv450 = trunc i32 %s0.0 to i16, !dbg !1302
  %168 = load %struct.ImageParameters** @img, align 8, !dbg !1302, !tbaa !874
  br label %for.cond446.preheader, !dbg !1297

for.cond446.preheader:                            ; preds = %for.inc460, %if.end441
  %indvars.iv3228 = phi i64 [ 0, %if.end441 ], [ %indvars.iv.next3229, %for.inc460 ]
  br label %for.body449, !dbg !1299

for.body449:                                      ; preds = %for.body449, %for.cond446.preheader
  %indvars.iv3224 = phi i64 [ 0, %for.cond446.preheader ], [ %indvars.iv.next3225, %for.body449 ]
  %arrayidx456 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 2, i64 %indvars.iv3224, i64 %indvars.iv3228, !dbg !1302
  store i16 %conv450, i16* %arrayidx456, align 2, !dbg !1302, !tbaa !945
  %indvars.iv.next3225 = add i64 %indvars.iv3224, 1, !dbg !1299
  %lftr.wideiv3226 = trunc i64 %indvars.iv.next3225 to i32, !dbg !1299
  %exitcond3227 = icmp eq i32 %lftr.wideiv3226, 8, !dbg !1299
  br i1 %exitcond3227, label %for.inc460, label %for.body449, !dbg !1299

for.inc460:                                       ; preds = %for.body449
  %indvars.iv.next3229 = add i64 %indvars.iv3228, 1, !dbg !1297
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !145), !dbg !1299
  %lftr.wideiv3230 = trunc i64 %indvars.iv.next3229 to i32, !dbg !1297
  %exitcond3231 = icmp eq i32 %lftr.wideiv3230, 8, !dbg !1297
  br i1 %exitcond3231, label %for.body466, label %for.cond446.preheader, !dbg !1297

for.body466:                                      ; preds = %for.body466, %for.inc460
  %indvars.iv = phi i64 [ 0, %for.inc460 ], [ %arrayidx468.sum, %for.body466 ]
  %arrayidx468.sum = add i64 %indvars.iv, 1, !dbg !1304
  %arrayidx469 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 %arrayidx468.sum, !dbg !1304
  %169 = load i32* %arrayidx469, align 4, !dbg !1304, !tbaa !853
  %conv470 = trunc i32 %169 to i16, !dbg !1304
  %arrayidx475 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 7, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx475, align 2, !dbg !1304, !tbaa !945
  %arrayidx480 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 6, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx480, align 2, !dbg !1304, !tbaa !945
  %arrayidx485 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 5, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx485, align 2, !dbg !1304, !tbaa !945
  %arrayidx490 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 4, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx490, align 2, !dbg !1304, !tbaa !945
  %arrayidx495 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 3, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx495, align 2, !dbg !1304, !tbaa !945
  %arrayidx500 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 2, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx500, align 2, !dbg !1304, !tbaa !945
  %arrayidx505 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 1, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx505, align 2, !dbg !1304, !tbaa !945
  %arrayidx510 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 0, i64 %indvars.iv, !dbg !1304
  store i16 %conv470, i16* %arrayidx510, align 2, !dbg !1304, !tbaa !945
  %arrayidx512.sum = add i64 %indvars.iv, 17, !dbg !1307
  %arrayidx513 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 %arrayidx512.sum, !dbg !1307
  %170 = load i32* %arrayidx513, align 4, !dbg !1307, !tbaa !853
  %conv514 = trunc i32 %170 to i16, !dbg !1307
  %arrayidx519 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 7, !dbg !1307
  store i16 %conv514, i16* %arrayidx519, align 2, !dbg !1307, !tbaa !945
  %arrayidx524 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 6, !dbg !1307
  store i16 %conv514, i16* %arrayidx524, align 2, !dbg !1307, !tbaa !945
  %arrayidx529 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 5, !dbg !1307
  store i16 %conv514, i16* %arrayidx529, align 2, !dbg !1307, !tbaa !945
  %arrayidx534 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 4, !dbg !1307
  store i16 %conv514, i16* %arrayidx534, align 2, !dbg !1307, !tbaa !945
  %arrayidx539 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 3, !dbg !1307
  store i16 %conv514, i16* %arrayidx539, align 2, !dbg !1307, !tbaa !945
  %arrayidx544 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 2, !dbg !1307
  store i16 %conv514, i16* %arrayidx544, align 2, !dbg !1307, !tbaa !945
  %arrayidx549 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 1, !dbg !1307
  store i16 %conv514, i16* %arrayidx549, align 2, !dbg !1307, !tbaa !945
  %arrayidx554 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 0, !dbg !1307
  store i16 %conv514, i16* %arrayidx554, align 2, !dbg !1307, !tbaa !945
  %lftr.wideiv = trunc i64 %arrayidx468.sum to i32, !dbg !1308
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !1308
  br i1 %exitcond, label %for.end557, label %for.body466, !dbg !1308

for.end557:                                       ; preds = %for.body466
  br i1 %tobool64, label %if.end564, label %if.then559, !dbg !1309

if.then559:                                       ; preds = %for.end557
  %arrayidx563 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 0, i64 0, !dbg !1309
  store i16 -1, i16* %arrayidx563, align 2, !dbg !1309, !tbaa !945
  br label %if.end564, !dbg !1309

if.end564:                                        ; preds = %if.then559, %for.end557
  br i1 %tobool65.not, label %if.end571, label %if.then566, !dbg !1310

if.then566:                                       ; preds = %if.end564
  %arrayidx570 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 0, i64 0, !dbg !1310
  store i16 -1, i16* %arrayidx570, align 2, !dbg !1310, !tbaa !945
  br label %if.end571, !dbg !1310

if.end571:                                        ; preds = %if.then566, %if.end564
  br i1 %tobool64, label %if.then573, label %if.end2641, !dbg !1311

if.then573:                                       ; preds = %if.end571
  %arrayidx574 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1, !dbg !1312
  %171 = load i32* %arrayidx574, align 4, !dbg !1312, !tbaa !853
  %arrayidx575 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3, !dbg !1312
  %172 = load i32* %arrayidx575, align 4, !dbg !1312, !tbaa !853
  %arrayidx577 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2, !dbg !1312
  %173 = bitcast i32* %arrayidx577 to i64*, !dbg !1312
  %174 = load i64* %173, align 8, !dbg !1312
  %175 = trunc i64 %174 to i32, !dbg !1312
  %mul = shl i32 %175, 1, !dbg !1312
  %add576 = add i32 %171, 2, !dbg !1312
  %add578 = add i32 %add576, %172, !dbg !1312
  %add579 = add i32 %add578, %mul, !dbg !1312
  %shr5803171 = lshr i32 %add579, 2, !dbg !1312
  %conv581 = trunc i32 %shr5803171 to i16, !dbg !1312
  %arrayidx585 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 0, !dbg !1312
  store i16 %conv581, i16* %arrayidx585, align 2, !dbg !1312, !tbaa !945
  %arrayidx587 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4, !dbg !1314
  %176 = bitcast i32* %arrayidx587 to i64*, !dbg !1314
  %177 = load i64* %176, align 16, !dbg !1314
  %178 = trunc i64 %177 to i32, !dbg !1314
  %179 = lshr i64 %174, 32
  %180 = trunc i64 %179 to i32
  %mul5903312 = shl nuw nsw i64 %179, 1, !dbg !1314
  %mul590 = trunc i64 %mul5903312 to i32, !dbg !1314
  %add588 = add i32 %175, 2, !dbg !1314
  %add591 = add i32 %add588, %178, !dbg !1314
  %add592 = add i32 %add591, %mul590, !dbg !1314
  %shr5933172 = lshr i32 %add592, 2, !dbg !1314
  %conv594 = trunc i32 %shr5933172 to i16, !dbg !1314
  %arrayidx598 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 0, !dbg !1314
  store i16 %conv594, i16* %arrayidx598, align 2, !dbg !1314, !tbaa !945
  %arrayidx602 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 1, !dbg !1314
  store i16 %conv594, i16* %arrayidx602, align 2, !dbg !1314, !tbaa !945
  %181 = lshr i64 %177, 32
  %182 = trunc i64 %181 to i32
  %mul607 = shl i32 %178, 1, !dbg !1315
  %add605 = add i32 %180, 2, !dbg !1315
  %add608 = add i32 %add605, %182, !dbg !1315
  %add609 = add i32 %add608, %mul607, !dbg !1315
  %shr6103173 = lshr i32 %add609, 2, !dbg !1315
  %conv611 = trunc i32 %shr6103173 to i16, !dbg !1315
  %arrayidx615 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 0, !dbg !1315
  store i16 %conv611, i16* %arrayidx615, align 2, !dbg !1315, !tbaa !945
  %arrayidx619 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 1, !dbg !1315
  store i16 %conv611, i16* %arrayidx619, align 2, !dbg !1315, !tbaa !945
  %arrayidx623 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 2, !dbg !1315
  store i16 %conv611, i16* %arrayidx623, align 2, !dbg !1315, !tbaa !945
  %arrayidx625 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6, !dbg !1316
  %183 = bitcast i32* %arrayidx625 to i64*, !dbg !1316
  %184 = load i64* %183, align 8, !dbg !1316
  %185 = trunc i64 %184 to i32, !dbg !1316
  %mul6283313 = shl nuw nsw i64 %181, 1, !dbg !1316
  %mul628 = trunc i64 %mul6283313 to i32, !dbg !1316
  %add626 = add i32 %178, 2, !dbg !1316
  %add629 = add i32 %add626, %185, !dbg !1316
  %add630 = add i32 %add629, %mul628, !dbg !1316
  %shr6313174 = lshr i32 %add630, 2, !dbg !1316
  %conv632 = trunc i32 %shr6313174 to i16, !dbg !1316
  %arrayidx636 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 3, i64 0, !dbg !1316
  store i16 %conv632, i16* %arrayidx636, align 2, !dbg !1316, !tbaa !945
  %arrayidx640 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 1, !dbg !1316
  store i16 %conv632, i16* %arrayidx640, align 2, !dbg !1316, !tbaa !945
  %arrayidx644 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 2, !dbg !1316
  store i16 %conv632, i16* %arrayidx644, align 2, !dbg !1316, !tbaa !945
  %arrayidx648 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 3, !dbg !1316
  store i16 %conv632, i16* %arrayidx648, align 2, !dbg !1316, !tbaa !945
  %186 = lshr i64 %184, 32
  %187 = trunc i64 %186 to i32
  %mul653 = shl i32 %185, 1, !dbg !1317
  %add651 = add i32 %182, 2, !dbg !1317
  %add654 = add i32 %add651, %187, !dbg !1317
  %add655 = add i32 %add654, %mul653, !dbg !1317
  %shr6563175 = lshr i32 %add655, 2, !dbg !1317
  %conv657 = trunc i32 %shr6563175 to i16, !dbg !1317
  %arrayidx661 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 4, i64 0, !dbg !1317
  store i16 %conv657, i16* %arrayidx661, align 2, !dbg !1317, !tbaa !945
  %arrayidx665 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 3, i64 1, !dbg !1317
  store i16 %conv657, i16* %arrayidx665, align 2, !dbg !1317, !tbaa !945
  %arrayidx669 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 2, !dbg !1317
  store i16 %conv657, i16* %arrayidx669, align 2, !dbg !1317, !tbaa !945
  %188 = load %struct.ImageParameters** @img, align 8, !dbg !1317, !tbaa !874
  %arrayidx673 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 3, !dbg !1317
  store i16 %conv657, i16* %arrayidx673, align 2, !dbg !1317, !tbaa !945
  %arrayidx677 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 4, !dbg !1317
  store i16 %conv657, i16* %arrayidx677, align 2, !dbg !1317, !tbaa !945
  %arrayidx679 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8, !dbg !1318
  %189 = bitcast i32* %arrayidx679 to i64*, !dbg !1318
  %190 = load i64* %189, align 16, !dbg !1318
  %191 = trunc i64 %190 to i32, !dbg !1318
  %mul6823314 = shl nuw nsw i64 %186, 1, !dbg !1318
  %mul682 = trunc i64 %mul6823314 to i32, !dbg !1318
  %add680 = add i32 %185, 2, !dbg !1318
  %add683 = add i32 %add680, %191, !dbg !1318
  %add684 = add i32 %add683, %mul682, !dbg !1318
  %shr6853176 = lshr i32 %add684, 2, !dbg !1318
  %conv686 = trunc i32 %shr6853176 to i16, !dbg !1318
  %arrayidx690 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 0, !dbg !1318
  store i16 %conv686, i16* %arrayidx690, align 2, !dbg !1318, !tbaa !945
  %arrayidx694 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 1, !dbg !1318
  store i16 %conv686, i16* %arrayidx694, align 2, !dbg !1318, !tbaa !945
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 2, !dbg !1318
  store i16 %conv686, i16* %arrayidx698, align 2, !dbg !1318, !tbaa !945
  %arrayidx702 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 3, !dbg !1318
  store i16 %conv686, i16* %arrayidx702, align 2, !dbg !1318, !tbaa !945
  %arrayidx706 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 4, !dbg !1318
  store i16 %conv686, i16* %arrayidx706, align 2, !dbg !1318, !tbaa !945
  %arrayidx710 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 5, !dbg !1318
  store i16 %conv686, i16* %arrayidx710, align 2, !dbg !1318, !tbaa !945
  %192 = lshr i64 %190, 32
  %193 = trunc i64 %192 to i32
  %mul715 = shl i32 %191, 1, !dbg !1319
  %add713 = add i32 %187, 2, !dbg !1319
  %add716 = add i32 %add713, %193, !dbg !1319
  %add717 = add i32 %add716, %mul715, !dbg !1319
  %shr7183177 = lshr i32 %add717, 2, !dbg !1319
  %conv719 = trunc i32 %shr7183177 to i16, !dbg !1319
  %arrayidx723 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 6, i64 0, !dbg !1319
  store i16 %conv719, i16* %arrayidx723, align 2, !dbg !1319, !tbaa !945
  %arrayidx727 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 1, !dbg !1319
  store i16 %conv719, i16* %arrayidx727, align 2, !dbg !1319, !tbaa !945
  %arrayidx731 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 2, !dbg !1319
  store i16 %conv719, i16* %arrayidx731, align 2, !dbg !1319, !tbaa !945
  %arrayidx735 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 3, !dbg !1319
  store i16 %conv719, i16* %arrayidx735, align 2, !dbg !1319, !tbaa !945
  %arrayidx739 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 4, !dbg !1319
  store i16 %conv719, i16* %arrayidx739, align 2, !dbg !1319, !tbaa !945
  %arrayidx743 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 5, !dbg !1319
  store i16 %conv719, i16* %arrayidx743, align 2, !dbg !1319, !tbaa !945
  %arrayidx747 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 6, !dbg !1319
  store i16 %conv719, i16* %arrayidx747, align 2, !dbg !1319, !tbaa !945
  %arrayidx749 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10, !dbg !1320
  %194 = bitcast i32* %arrayidx749 to i64*, !dbg !1320
  %195 = load i64* %194, align 8, !dbg !1320
  %196 = trunc i64 %195 to i32, !dbg !1320
  %mul7523315 = shl nuw nsw i64 %192, 1, !dbg !1320
  %mul752 = trunc i64 %mul7523315 to i32, !dbg !1320
  %add750 = add i32 %191, 2, !dbg !1320
  %add753 = add i32 %add750, %196, !dbg !1320
  %add754 = add i32 %add753, %mul752, !dbg !1320
  %shr7553178 = lshr i32 %add754, 2, !dbg !1320
  %conv756 = trunc i32 %shr7553178 to i16, !dbg !1320
  %arrayidx760 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 7, i64 0, !dbg !1320
  store i16 %conv756, i16* %arrayidx760, align 2, !dbg !1320, !tbaa !945
  %arrayidx764 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 6, i64 1, !dbg !1320
  store i16 %conv756, i16* %arrayidx764, align 2, !dbg !1320, !tbaa !945
  %arrayidx768 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 2, !dbg !1320
  store i16 %conv756, i16* %arrayidx768, align 2, !dbg !1320, !tbaa !945
  %arrayidx772 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 3, !dbg !1320
  store i16 %conv756, i16* %arrayidx772, align 2, !dbg !1320, !tbaa !945
  %arrayidx776 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 4, !dbg !1320
  store i16 %conv756, i16* %arrayidx776, align 2, !dbg !1320, !tbaa !945
  %arrayidx780 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 5, !dbg !1320
  store i16 %conv756, i16* %arrayidx780, align 2, !dbg !1320, !tbaa !945
  %arrayidx784 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 6, !dbg !1320
  store i16 %conv756, i16* %arrayidx784, align 2, !dbg !1320, !tbaa !945
  %arrayidx788 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 7, !dbg !1320
  store i16 %conv756, i16* %arrayidx788, align 2, !dbg !1320, !tbaa !945
  %197 = lshr i64 %195, 32
  %198 = trunc i64 %197 to i32
  %mul793 = shl i32 %196, 1, !dbg !1321
  %add791 = add i32 %193, 2, !dbg !1321
  %add794 = add i32 %add791, %198, !dbg !1321
  %add795 = add i32 %add794, %mul793, !dbg !1321
  %shr7963179 = lshr i32 %add795, 2, !dbg !1321
  %conv797 = trunc i32 %shr7963179 to i16, !dbg !1321
  %199 = load %struct.ImageParameters** @img, align 8, !dbg !1321, !tbaa !874
  %arrayidx801 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 1, !dbg !1321
  store i16 %conv797, i16* %arrayidx801, align 2, !dbg !1321, !tbaa !945
  %arrayidx805 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 2, !dbg !1321
  store i16 %conv797, i16* %arrayidx805, align 2, !dbg !1321, !tbaa !945
  %arrayidx809 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 3, !dbg !1321
  store i16 %conv797, i16* %arrayidx809, align 2, !dbg !1321, !tbaa !945
  %arrayidx813 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 4, !dbg !1321
  store i16 %conv797, i16* %arrayidx813, align 2, !dbg !1321, !tbaa !945
  %arrayidx817 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 5, !dbg !1321
  store i16 %conv797, i16* %arrayidx817, align 2, !dbg !1321, !tbaa !945
  %arrayidx821 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 2, i64 6, !dbg !1321
  store i16 %conv797, i16* %arrayidx821, align 2, !dbg !1321, !tbaa !945
  %arrayidx825 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 1, i64 7, !dbg !1321
  store i16 %conv797, i16* %arrayidx825, align 2, !dbg !1321, !tbaa !945
  %arrayidx827 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12, !dbg !1322
  %200 = bitcast i32* %arrayidx827 to i64*, !dbg !1322
  %201 = load i64* %200, align 16, !dbg !1322
  %202 = trunc i64 %201 to i32, !dbg !1322
  %mul8303316 = shl nuw nsw i64 %197, 1, !dbg !1322
  %mul830 = trunc i64 %mul8303316 to i32, !dbg !1322
  %add828 = add i32 %196, 2, !dbg !1322
  %add831 = add i32 %add828, %202, !dbg !1322
  %add832 = add i32 %add831, %mul830, !dbg !1322
  %shr8333180 = lshr i32 %add832, 2, !dbg !1322
  %conv834 = trunc i32 %shr8333180 to i16, !dbg !1322
  %arrayidx838 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 2, !dbg !1322
  store i16 %conv834, i16* %arrayidx838, align 2, !dbg !1322, !tbaa !945
  %arrayidx842 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 3, !dbg !1322
  store i16 %conv834, i16* %arrayidx842, align 2, !dbg !1322, !tbaa !945
  %arrayidx846 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 4, !dbg !1322
  store i16 %conv834, i16* %arrayidx846, align 2, !dbg !1322, !tbaa !945
  %arrayidx850 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 5, !dbg !1322
  store i16 %conv834, i16* %arrayidx850, align 2, !dbg !1322, !tbaa !945
  %arrayidx854 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 6, !dbg !1322
  store i16 %conv834, i16* %arrayidx854, align 2, !dbg !1322, !tbaa !945
  %arrayidx858 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 2, i64 7, !dbg !1322
  store i16 %conv834, i16* %arrayidx858, align 2, !dbg !1322, !tbaa !945
  %203 = lshr i64 %201, 32
  %204 = trunc i64 %203 to i32
  %mul863 = shl i32 %202, 1, !dbg !1323
  %add861 = add i32 %198, 2, !dbg !1323
  %add864 = add i32 %add861, %204, !dbg !1323
  %add865 = add i32 %add864, %mul863, !dbg !1323
  %shr8663181 = lshr i32 %add865, 2, !dbg !1323
  %conv867 = trunc i32 %shr8663181 to i16, !dbg !1323
  %arrayidx871 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 3, !dbg !1323
  store i16 %conv867, i16* %arrayidx871, align 2, !dbg !1323, !tbaa !945
  %arrayidx875 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 4, !dbg !1323
  store i16 %conv867, i16* %arrayidx875, align 2, !dbg !1323, !tbaa !945
  %arrayidx879 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 5, !dbg !1323
  store i16 %conv867, i16* %arrayidx879, align 2, !dbg !1323, !tbaa !945
  %arrayidx883 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 6, !dbg !1323
  store i16 %conv867, i16* %arrayidx883, align 2, !dbg !1323, !tbaa !945
  %arrayidx887 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 7, !dbg !1323
  store i16 %conv867, i16* %arrayidx887, align 2, !dbg !1323, !tbaa !945
  %arrayidx889 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14, !dbg !1324
  %205 = bitcast i32* %arrayidx889 to i64*, !dbg !1324
  %206 = load i64* %205, align 8, !dbg !1324
  %207 = trunc i64 %206 to i32, !dbg !1324
  %mul8923317 = shl nuw nsw i64 %203, 1, !dbg !1324
  %mul892 = trunc i64 %mul8923317 to i32, !dbg !1324
  %add890 = add i32 %202, 2, !dbg !1324
  %add893 = add i32 %add890, %207, !dbg !1324
  %add894 = add i32 %add893, %mul892, !dbg !1324
  %shr8953182 = lshr i32 %add894, 2, !dbg !1324
  %conv896 = trunc i32 %shr8953182 to i16, !dbg !1324
  %arrayidx900 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 4, !dbg !1324
  store i16 %conv896, i16* %arrayidx900, align 2, !dbg !1324, !tbaa !945
  %arrayidx904 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 5, !dbg !1324
  store i16 %conv896, i16* %arrayidx904, align 2, !dbg !1324, !tbaa !945
  %arrayidx908 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 6, !dbg !1324
  store i16 %conv896, i16* %arrayidx908, align 2, !dbg !1324, !tbaa !945
  %arrayidx912 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 7, !dbg !1324
  store i16 %conv896, i16* %arrayidx912, align 2, !dbg !1324, !tbaa !945
  %208 = lshr i64 %206, 32
  %209 = trunc i64 %208 to i32
  %mul917 = shl i32 %207, 1, !dbg !1325
  %add915 = add i32 %204, 2, !dbg !1325
  %add918 = add i32 %add915, %209, !dbg !1325
  %add919 = add i32 %add918, %mul917, !dbg !1325
  %shr9203183 = lshr i32 %add919, 2, !dbg !1325
  %conv921 = trunc i32 %shr9203183 to i16, !dbg !1325
  %210 = load %struct.ImageParameters** @img, align 8, !dbg !1325, !tbaa !874
  %arrayidx925 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 5, !dbg !1325
  store i16 %conv921, i16* %arrayidx925, align 2, !dbg !1325, !tbaa !945
  %arrayidx929 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 6, i64 6, !dbg !1325
  store i16 %conv921, i16* %arrayidx929, align 2, !dbg !1325, !tbaa !945
  %arrayidx933 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 5, i64 7, !dbg !1325
  store i16 %conv921, i16* %arrayidx933, align 2, !dbg !1325, !tbaa !945
  %arrayidx935 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16, !dbg !1326
  %211 = load i32* %arrayidx935, align 16, !dbg !1326, !tbaa !853
  %mul9383318 = shl nuw nsw i64 %208, 1, !dbg !1326
  %mul938 = trunc i64 %mul9383318 to i32, !dbg !1326
  %add936 = add i32 %207, 2, !dbg !1326
  %add939 = add i32 %add936, %211, !dbg !1326
  %add940 = add i32 %add939, %mul938, !dbg !1326
  %shr9413184 = lshr i32 %add940, 2, !dbg !1326
  %conv942 = trunc i32 %shr9413184 to i16, !dbg !1326
  %arrayidx946 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 6, !dbg !1326
  store i16 %conv942, i16* %arrayidx946, align 2, !dbg !1326, !tbaa !945
  %arrayidx950 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 6, i64 7, !dbg !1326
  store i16 %conv942, i16* %arrayidx950, align 2, !dbg !1326, !tbaa !945
  %mul953 = mul nsw i32 %211, 3, !dbg !1327
  %add954 = add i32 %209, 2, !dbg !1327
  %add955 = add i32 %add954, %mul953, !dbg !1327
  %shr9563185 = lshr i32 %add955, 2, !dbg !1327
  %conv957 = trunc i32 %shr9563185 to i16, !dbg !1327
  %arrayidx961 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 7, !dbg !1327
  store i16 %conv957, i16* %arrayidx961, align 2, !dbg !1327, !tbaa !945
  %212 = load i32* %arrayidx574, align 4, !dbg !1328, !tbaa !853
  %213 = load i64* %173, align 8, !dbg !1328
  %214 = trunc i64 %213 to i32, !dbg !1328
  %add964 = add i32 %212, 1, !dbg !1328
  %add965 = add i32 %add964, %214, !dbg !1328
  %shr9663186 = lshr i32 %add965, 1, !dbg !1328
  %conv967 = trunc i32 %shr9663186 to i16, !dbg !1328
  %arrayidx971 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 0, !dbg !1328
  store i16 %conv967, i16* %arrayidx971, align 2, !dbg !1328, !tbaa !945
  %215 = lshr i64 %213, 32
  %216 = trunc i64 %215 to i32
  %add974 = add i32 %214, 1, !dbg !1329
  %add975 = add i32 %add974, %216, !dbg !1329
  %shr9763187 = lshr i32 %add975, 1, !dbg !1329
  %conv977 = trunc i32 %shr9763187 to i16, !dbg !1329
  %arrayidx981 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 0, !dbg !1329
  store i16 %conv977, i16* %arrayidx981, align 2, !dbg !1329, !tbaa !945
  %arrayidx985 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 1, !dbg !1329
  store i16 %conv977, i16* %arrayidx985, align 2, !dbg !1329, !tbaa !945
  %217 = load i64* %176, align 16, !dbg !1330
  %218 = trunc i64 %217 to i32, !dbg !1330
  %add988 = add i32 %216, 1, !dbg !1330
  %add989 = add i32 %add988, %218, !dbg !1330
  %shr9903188 = lshr i32 %add989, 1, !dbg !1330
  %conv991 = trunc i32 %shr9903188 to i16, !dbg !1330
  %arrayidx995 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 0, !dbg !1330
  store i16 %conv991, i16* %arrayidx995, align 2, !dbg !1330, !tbaa !945
  %arrayidx999 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 1, !dbg !1330
  store i16 %conv991, i16* %arrayidx999, align 2, !dbg !1330, !tbaa !945
  %arrayidx1003 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 2, !dbg !1330
  store i16 %conv991, i16* %arrayidx1003, align 2, !dbg !1330, !tbaa !945
  %219 = lshr i64 %217, 32
  %220 = trunc i64 %219 to i32
  %add1006 = add i32 %218, 1, !dbg !1331
  %add1007 = add i32 %add1006, %220, !dbg !1331
  %shr10083189 = lshr i32 %add1007, 1, !dbg !1331
  %conv1009 = trunc i32 %shr10083189 to i16, !dbg !1331
  %arrayidx1013 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 6, i64 0, !dbg !1331
  store i16 %conv1009, i16* %arrayidx1013, align 2, !dbg !1331, !tbaa !945
  %arrayidx1017 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 1, !dbg !1331
  store i16 %conv1009, i16* %arrayidx1017, align 2, !dbg !1331, !tbaa !945
  %arrayidx1021 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 2, !dbg !1331
  store i16 %conv1009, i16* %arrayidx1021, align 2, !dbg !1331, !tbaa !945
  %arrayidx1025 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 3, !dbg !1331
  store i16 %conv1009, i16* %arrayidx1025, align 2, !dbg !1331, !tbaa !945
  %221 = load i64* %183, align 8, !dbg !1332
  %222 = trunc i64 %221 to i32, !dbg !1332
  %add1028 = add i32 %220, 1, !dbg !1332
  %add1029 = add i32 %add1028, %222, !dbg !1332
  %shr10303190 = lshr i32 %add1029, 1, !dbg !1332
  %conv1031 = trunc i32 %shr10303190 to i16, !dbg !1332
  %arrayidx1035 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 6, i64 1, !dbg !1332
  store i16 %conv1031, i16* %arrayidx1035, align 2, !dbg !1332, !tbaa !945
  %arrayidx1039 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 2, !dbg !1332
  store i16 %conv1031, i16* %arrayidx1039, align 2, !dbg !1332, !tbaa !945
  %arrayidx1043 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 3, !dbg !1332
  store i16 %conv1031, i16* %arrayidx1043, align 2, !dbg !1332, !tbaa !945
  %223 = load %struct.ImageParameters** @img, align 8, !dbg !1332, !tbaa !874
  %arrayidx1047 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 4, !dbg !1332
  store i16 %conv1031, i16* %arrayidx1047, align 2, !dbg !1332, !tbaa !945
  %224 = lshr i64 %221, 32
  %225 = trunc i64 %224 to i32
  %add1050 = add i32 %222, 1, !dbg !1333
  %add1051 = add i32 %add1050, %225, !dbg !1333
  %shr10523191 = lshr i32 %add1051, 1, !dbg !1333
  %conv1053 = trunc i32 %shr10523191 to i16, !dbg !1333
  %arrayidx1057 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 2, !dbg !1333
  store i16 %conv1053, i16* %arrayidx1057, align 2, !dbg !1333, !tbaa !945
  %arrayidx1061 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 3, !dbg !1333
  store i16 %conv1053, i16* %arrayidx1061, align 2, !dbg !1333, !tbaa !945
  %arrayidx1065 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 4, !dbg !1333
  store i16 %conv1053, i16* %arrayidx1065, align 2, !dbg !1333, !tbaa !945
  %arrayidx1069 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 5, !dbg !1333
  store i16 %conv1053, i16* %arrayidx1069, align 2, !dbg !1333, !tbaa !945
  %226 = load i64* %189, align 16, !dbg !1334
  %227 = trunc i64 %226 to i32, !dbg !1334
  %add1072 = add i32 %225, 1, !dbg !1334
  %add1073 = add i32 %add1072, %227, !dbg !1334
  %shr10743192 = lshr i32 %add1073, 1, !dbg !1334
  %conv1075 = trunc i32 %shr10743192 to i16, !dbg !1334
  %arrayidx1079 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 3, !dbg !1334
  store i16 %conv1075, i16* %arrayidx1079, align 2, !dbg !1334, !tbaa !945
  %arrayidx1083 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 4, !dbg !1334
  store i16 %conv1075, i16* %arrayidx1083, align 2, !dbg !1334, !tbaa !945
  %arrayidx1087 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 5, !dbg !1334
  store i16 %conv1075, i16* %arrayidx1087, align 2, !dbg !1334, !tbaa !945
  %arrayidx1091 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 6, !dbg !1334
  store i16 %conv1075, i16* %arrayidx1091, align 2, !dbg !1334, !tbaa !945
  %228 = lshr i64 %226, 32
  %229 = trunc i64 %228 to i32
  %add1094 = add i32 %227, 1, !dbg !1335
  %add1095 = add i32 %add1094, %229, !dbg !1335
  %shr10963193 = lshr i32 %add1095, 1, !dbg !1335
  %conv1097 = trunc i32 %shr10963193 to i16, !dbg !1335
  %arrayidx1101 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 4, !dbg !1335
  store i16 %conv1097, i16* %arrayidx1101, align 2, !dbg !1335, !tbaa !945
  %arrayidx1105 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 5, !dbg !1335
  store i16 %conv1097, i16* %arrayidx1105, align 2, !dbg !1335, !tbaa !945
  %arrayidx1109 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 6, !dbg !1335
  store i16 %conv1097, i16* %arrayidx1109, align 2, !dbg !1335, !tbaa !945
  %arrayidx1113 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 7, !dbg !1335
  store i16 %conv1097, i16* %arrayidx1113, align 2, !dbg !1335, !tbaa !945
  %230 = load i64* %194, align 8, !dbg !1336
  %231 = trunc i64 %230 to i32, !dbg !1336
  %add1116 = add i32 %229, 1, !dbg !1336
  %add1117 = add i32 %add1116, %231, !dbg !1336
  %shr11183194 = lshr i32 %add1117, 1, !dbg !1336
  %conv1119 = trunc i32 %shr11183194 to i16, !dbg !1336
  %arrayidx1123 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 5, !dbg !1336
  store i16 %conv1119, i16* %arrayidx1123, align 2, !dbg !1336, !tbaa !945
  %arrayidx1127 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 6, !dbg !1336
  store i16 %conv1119, i16* %arrayidx1127, align 2, !dbg !1336, !tbaa !945
  %arrayidx1131 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 7, !dbg !1336
  store i16 %conv1119, i16* %arrayidx1131, align 2, !dbg !1336, !tbaa !945
  %232 = lshr i64 %230, 32
  %233 = trunc i64 %232 to i32
  %add1134 = add i32 %231, 1, !dbg !1337
  %add1135 = add i32 %add1134, %233, !dbg !1337
  %shr11363195 = lshr i32 %add1135, 1, !dbg !1337
  %conv1137 = trunc i32 %shr11363195 to i16, !dbg !1337
  %arrayidx1141 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 6, !dbg !1337
  store i16 %conv1137, i16* %arrayidx1141, align 2, !dbg !1337, !tbaa !945
  %arrayidx1145 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 7, !dbg !1337
  store i16 %conv1137, i16* %arrayidx1145, align 2, !dbg !1337, !tbaa !945
  %234 = load i32* %arrayidx827, align 16, !dbg !1338, !tbaa !853
  %add1148 = add i32 %233, 1, !dbg !1338
  %add1149 = add i32 %add1148, %234, !dbg !1338
  %shr11503196 = lshr i32 %add1149, 1, !dbg !1338
  %conv1151 = trunc i32 %shr11503196 to i16, !dbg !1338
  %arrayidx1155 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 7, !dbg !1338
  store i16 %conv1151, i16* %arrayidx1155, align 2, !dbg !1338, !tbaa !945
  %235 = load i32* %arrayidx574, align 4, !dbg !1339, !tbaa !853
  %236 = load i32* %arrayidx575, align 4, !dbg !1339, !tbaa !853
  %237 = load i64* %173, align 8, !dbg !1339
  %238 = trunc i64 %237 to i32, !dbg !1339
  %mul1160 = shl i32 %238, 1, !dbg !1339
  %add1158 = add i32 %235, 2, !dbg !1339
  %add1161 = add i32 %add1158, %236, !dbg !1339
  %add1162 = add i32 %add1161, %mul1160, !dbg !1339
  %shr11633197 = lshr i32 %add1162, 2, !dbg !1339
  %conv1164 = trunc i32 %shr11633197 to i16, !dbg !1339
  %arrayidx1168 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 1, i64 0, !dbg !1339
  store i16 %conv1164, i16* %arrayidx1168, align 2, !dbg !1339, !tbaa !945
  %239 = load i64* %176, align 16, !dbg !1340
  %240 = trunc i64 %239 to i32, !dbg !1340
  %241 = lshr i64 %237, 32
  %242 = trunc i64 %241 to i32
  %mul11733319 = shl nuw nsw i64 %241, 1, !dbg !1340
  %mul1173 = trunc i64 %mul11733319 to i32, !dbg !1340
  %add1171 = add i32 %238, 2, !dbg !1340
  %add1174 = add i32 %add1171, %240, !dbg !1340
  %add1175 = add i32 %add1174, %mul1173, !dbg !1340
  %shr11763198 = lshr i32 %add1175, 2, !dbg !1340
  %conv1177 = trunc i32 %shr11763198 to i16, !dbg !1340
  %243 = load %struct.ImageParameters** @img, align 8, !dbg !1340, !tbaa !874
  %arrayidx1181 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 0, !dbg !1340
  store i16 %conv1177, i16* %arrayidx1181, align 2, !dbg !1340, !tbaa !945
  %arrayidx1185 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 1, !dbg !1340
  store i16 %conv1177, i16* %arrayidx1185, align 2, !dbg !1340, !tbaa !945
  %244 = lshr i64 %239, 32
  %245 = trunc i64 %244 to i32
  %mul1190 = shl i32 %240, 1, !dbg !1341
  %add1188 = add i32 %242, 2, !dbg !1341
  %add1191 = add i32 %add1188, %245, !dbg !1341
  %add1192 = add i32 %add1191, %mul1190, !dbg !1341
  %shr11933199 = lshr i32 %add1192, 2, !dbg !1341
  %conv1194 = trunc i32 %shr11933199 to i16, !dbg !1341
  %arrayidx1198 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 0, !dbg !1341
  store i16 %conv1194, i16* %arrayidx1198, align 2, !dbg !1341, !tbaa !945
  %arrayidx1202 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 1, !dbg !1341
  store i16 %conv1194, i16* %arrayidx1202, align 2, !dbg !1341, !tbaa !945
  %arrayidx1206 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 2, !dbg !1341
  store i16 %conv1194, i16* %arrayidx1206, align 2, !dbg !1341, !tbaa !945
  %246 = load i64* %183, align 8, !dbg !1342
  %247 = trunc i64 %246 to i32, !dbg !1342
  %mul12113320 = shl nuw nsw i64 %244, 1, !dbg !1342
  %mul1211 = trunc i64 %mul12113320 to i32, !dbg !1342
  %add1209 = add i32 %240, 2, !dbg !1342
  %add1212 = add i32 %add1209, %247, !dbg !1342
  %add1213 = add i32 %add1212, %mul1211, !dbg !1342
  %shr12143200 = lshr i32 %add1213, 2, !dbg !1342
  %conv1215 = trunc i32 %shr12143200 to i16, !dbg !1342
  %arrayidx1219 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 0, !dbg !1342
  store i16 %conv1215, i16* %arrayidx1219, align 2, !dbg !1342, !tbaa !945
  %arrayidx1223 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 1, !dbg !1342
  store i16 %conv1215, i16* %arrayidx1223, align 2, !dbg !1342, !tbaa !945
  %arrayidx1227 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 2, !dbg !1342
  store i16 %conv1215, i16* %arrayidx1227, align 2, !dbg !1342, !tbaa !945
  %arrayidx1231 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 3, !dbg !1342
  store i16 %conv1215, i16* %arrayidx1231, align 2, !dbg !1342, !tbaa !945
  %248 = lshr i64 %246, 32
  %249 = trunc i64 %248 to i32
  %mul1236 = shl i32 %247, 1, !dbg !1343
  %add1234 = add i32 %245, 2, !dbg !1343
  %add1237 = add i32 %add1234, %249, !dbg !1343
  %add1238 = add i32 %add1237, %mul1236, !dbg !1343
  %shr12393201 = lshr i32 %add1238, 2, !dbg !1343
  %conv1240 = trunc i32 %shr12393201 to i16, !dbg !1343
  %arrayidx1244 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 1, !dbg !1343
  store i16 %conv1240, i16* %arrayidx1244, align 2, !dbg !1343, !tbaa !945
  %arrayidx1248 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 2, !dbg !1343
  store i16 %conv1240, i16* %arrayidx1248, align 2, !dbg !1343, !tbaa !945
  %arrayidx1252 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 3, !dbg !1343
  store i16 %conv1240, i16* %arrayidx1252, align 2, !dbg !1343, !tbaa !945
  %arrayidx1256 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 4, !dbg !1343
  store i16 %conv1240, i16* %arrayidx1256, align 2, !dbg !1343, !tbaa !945
  %250 = load i64* %189, align 16, !dbg !1344
  %251 = trunc i64 %250 to i32, !dbg !1344
  %mul12613321 = shl nuw nsw i64 %248, 1, !dbg !1344
  %mul1261 = trunc i64 %mul12613321 to i32, !dbg !1344
  %add1259 = add i32 %247, 2, !dbg !1344
  %add1262 = add i32 %add1259, %251, !dbg !1344
  %add1263 = add i32 %add1262, %mul1261, !dbg !1344
  %shr12643202 = lshr i32 %add1263, 2, !dbg !1344
  %conv1265 = trunc i32 %shr12643202 to i16, !dbg !1344
  %arrayidx1269 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 2, !dbg !1344
  store i16 %conv1265, i16* %arrayidx1269, align 2, !dbg !1344, !tbaa !945
  %arrayidx1273 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 3, !dbg !1344
  store i16 %conv1265, i16* %arrayidx1273, align 2, !dbg !1344, !tbaa !945
  %arrayidx1277 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 4, !dbg !1344
  store i16 %conv1265, i16* %arrayidx1277, align 2, !dbg !1344, !tbaa !945
  %arrayidx1281 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 5, !dbg !1344
  store i16 %conv1265, i16* %arrayidx1281, align 2, !dbg !1344, !tbaa !945
  %252 = lshr i64 %250, 32
  %253 = trunc i64 %252 to i32
  %mul1286 = shl i32 %251, 1, !dbg !1345
  %add1284 = add i32 %249, 2, !dbg !1345
  %add1287 = add i32 %add1284, %253, !dbg !1345
  %add1288 = add i32 %add1287, %mul1286, !dbg !1345
  %shr12893203 = lshr i32 %add1288, 2, !dbg !1345
  %conv1290 = trunc i32 %shr12893203 to i16, !dbg !1345
  %254 = load %struct.ImageParameters** @img, align 8, !dbg !1345, !tbaa !874
  %arrayidx1294 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 3, !dbg !1345
  store i16 %conv1290, i16* %arrayidx1294, align 2, !dbg !1345, !tbaa !945
  %arrayidx1298 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 4, !dbg !1345
  store i16 %conv1290, i16* %arrayidx1298, align 2, !dbg !1345, !tbaa !945
  %arrayidx1302 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 5, !dbg !1345
  store i16 %conv1290, i16* %arrayidx1302, align 2, !dbg !1345, !tbaa !945
  %arrayidx1306 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 1, i64 6, !dbg !1345
  store i16 %conv1290, i16* %arrayidx1306, align 2, !dbg !1345, !tbaa !945
  %255 = load i64* %194, align 8, !dbg !1346
  %256 = trunc i64 %255 to i32, !dbg !1346
  %mul13113322 = shl nuw nsw i64 %252, 1, !dbg !1346
  %mul1311 = trunc i64 %mul13113322 to i32, !dbg !1346
  %add1309 = add i32 %251, 2, !dbg !1346
  %add1312 = add i32 %add1309, %256, !dbg !1346
  %add1313 = add i32 %add1312, %mul1311, !dbg !1346
  %shr13143204 = lshr i32 %add1313, 2, !dbg !1346
  %conv1315 = trunc i32 %shr13143204 to i16, !dbg !1346
  %arrayidx1319 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 4, !dbg !1346
  store i16 %conv1315, i16* %arrayidx1319, align 2, !dbg !1346, !tbaa !945
  %arrayidx1323 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 5, !dbg !1346
  store i16 %conv1315, i16* %arrayidx1323, align 2, !dbg !1346, !tbaa !945
  %arrayidx1327 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 6, !dbg !1346
  store i16 %conv1315, i16* %arrayidx1327, align 2, !dbg !1346, !tbaa !945
  %arrayidx1331 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 1, i64 7, !dbg !1346
  store i16 %conv1315, i16* %arrayidx1331, align 2, !dbg !1346, !tbaa !945
  %257 = lshr i64 %255, 32
  %258 = trunc i64 %257 to i32
  %mul1336 = shl i32 %256, 1, !dbg !1347
  %add1334 = add i32 %253, 2, !dbg !1347
  %add1337 = add i32 %add1334, %258, !dbg !1347
  %add1338 = add i32 %add1337, %mul1336, !dbg !1347
  %shr13393205 = lshr i32 %add1338, 2, !dbg !1347
  %conv1340 = trunc i32 %shr13393205 to i16, !dbg !1347
  %arrayidx1344 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 5, !dbg !1347
  store i16 %conv1340, i16* %arrayidx1344, align 2, !dbg !1347, !tbaa !945
  %arrayidx1348 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 6, !dbg !1347
  store i16 %conv1340, i16* %arrayidx1348, align 2, !dbg !1347, !tbaa !945
  %arrayidx1352 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 7, !dbg !1347
  store i16 %conv1340, i16* %arrayidx1352, align 2, !dbg !1347, !tbaa !945
  %259 = load i64* %200, align 16, !dbg !1348
  %260 = trunc i64 %259 to i32, !dbg !1348
  %mul13573323 = shl nuw nsw i64 %257, 1, !dbg !1348
  %mul1357 = trunc i64 %mul13573323 to i32, !dbg !1348
  %add1355 = add i32 %256, 2, !dbg !1348
  %add1358 = add i32 %add1355, %260, !dbg !1348
  %add1359 = add i32 %add1358, %mul1357, !dbg !1348
  %shr13603206 = lshr i32 %add1359, 2, !dbg !1348
  %conv1361 = trunc i32 %shr13603206 to i16, !dbg !1348
  %arrayidx1365 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 6, !dbg !1348
  store i16 %conv1361, i16* %arrayidx1365, align 2, !dbg !1348, !tbaa !945
  %arrayidx1369 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 7, !dbg !1348
  store i16 %conv1361, i16* %arrayidx1369, align 2, !dbg !1348, !tbaa !945
  %261 = lshr i64 %259, 32
  %262 = trunc i64 %261 to i32
  %mul1374 = shl i32 %260, 1, !dbg !1349
  %add1372 = add i32 %258, 2, !dbg !1349
  %add1375 = add i32 %add1372, %262, !dbg !1349
  %add1376 = add i32 %add1375, %mul1374, !dbg !1349
  %shr13773207 = lshr i32 %add1376, 2, !dbg !1349
  %conv1378 = trunc i32 %shr13773207 to i16, !dbg !1349
  %arrayidx1382 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 7, !dbg !1349
  store i16 %conv1378, i16* %arrayidx1382, align 2, !dbg !1349, !tbaa !945
  %tobool331.not = xor i1 %tobool67, true, !dbg !1350
  %brmerge3216 = or i1 %brmerge, %tobool331.not, !dbg !1350
  br i1 %brmerge3216, label %if.end2641, label %if.then1389, !dbg !1350

if.then1389:                                      ; preds = %if.then573
  %arrayidx1390 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1351
  %263 = load i32* %arrayidx1390, align 16, !dbg !1351, !tbaa !853
  %arrayidx1391 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1351
  %264 = bitcast i32* %arrayidx1391 to i64*, !dbg !1351
  %265 = load i64* %264, align 8, !dbg !1351
  %266 = trunc i64 %265 to i32, !dbg !1351
  %267 = lshr i64 %265, 32
  %268 = trunc i64 %267 to i32
  %mul13943324 = shl nuw nsw i64 %267, 1, !dbg !1351
  %mul1394 = trunc i64 %mul13943324 to i32, !dbg !1351
  %add1392 = add i32 %263, 2, !dbg !1351
  %add1395 = add i32 %add1392, %266, !dbg !1351
  %add1396 = add i32 %add1395, %mul1394, !dbg !1351
  %shr13973112 = lshr i32 %add1396, 2, !dbg !1351
  %conv1398 = trunc i32 %shr13973112 to i16, !dbg !1351
  %arrayidx1402 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 0, !dbg !1351
  store i16 %conv1398, i16* %arrayidx1402, align 2, !dbg !1351, !tbaa !945
  %arrayidx1404 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21, !dbg !1353
  %269 = load i32* %arrayidx1404, align 4, !dbg !1353, !tbaa !853
  %mul1407 = shl i32 %266, 1, !dbg !1353
  %add1405 = add i32 %268, 2, !dbg !1353
  %add1408 = add i32 %add1405, %269, !dbg !1353
  %add1409 = add i32 %add1408, %mul1407, !dbg !1353
  %shr14103113 = lshr i32 %add1409, 2, !dbg !1353
  %conv1411 = trunc i32 %shr14103113 to i16, !dbg !1353
  %arrayidx1415 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 1, !dbg !1353
  store i16 %conv1411, i16* %arrayidx1415, align 2, !dbg !1353, !tbaa !945
  %arrayidx1419 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 0, !dbg !1353
  store i16 %conv1411, i16* %arrayidx1419, align 2, !dbg !1353, !tbaa !945
  %arrayidx1421 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1354
  %270 = bitcast i32* %arrayidx1421 to i64*, !dbg !1354
  %271 = load i64* %270, align 16, !dbg !1354
  %272 = trunc i64 %271 to i32, !dbg !1354
  %273 = lshr i64 %271, 32
  %274 = trunc i64 %273 to i32
  %mul14243325 = shl nuw nsw i64 %273, 1, !dbg !1354
  %mul1424 = trunc i64 %mul14243325 to i32, !dbg !1354
  %add1422 = add i32 %266, 2, !dbg !1354
  %add1425 = add i32 %add1422, %272, !dbg !1354
  %add1426 = add i32 %add1425, %mul1424, !dbg !1354
  %shr14273114 = lshr i32 %add1426, 2, !dbg !1354
  %conv1428 = trunc i32 %shr14273114 to i16, !dbg !1354
  %arrayidx1432 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 2, !dbg !1354
  store i16 %conv1428, i16* %arrayidx1432, align 2, !dbg !1354, !tbaa !945
  %arrayidx1436 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 1, !dbg !1354
  store i16 %conv1428, i16* %arrayidx1436, align 2, !dbg !1354, !tbaa !945
  %arrayidx1440 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 0, !dbg !1354
  store i16 %conv1428, i16* %arrayidx1440, align 2, !dbg !1354, !tbaa !945
  %arrayidx1442 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19, !dbg !1355
  %275 = load i32* %arrayidx1442, align 4, !dbg !1355, !tbaa !853
  %mul1445 = shl i32 %272, 1, !dbg !1355
  %add1443 = add i32 %274, 2, !dbg !1355
  %add1446 = add i32 %add1443, %275, !dbg !1355
  %add1447 = add i32 %add1446, %mul1445, !dbg !1355
  %shr14483115 = lshr i32 %add1447, 2, !dbg !1355
  %conv1449 = trunc i32 %shr14483115 to i16, !dbg !1355
  %arrayidx1453 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 3, !dbg !1355
  store i16 %conv1449, i16* %arrayidx1453, align 2, !dbg !1355, !tbaa !945
  %arrayidx1457 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 2, !dbg !1355
  store i16 %conv1449, i16* %arrayidx1457, align 2, !dbg !1355, !tbaa !945
  %arrayidx1461 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 1, !dbg !1355
  store i16 %conv1449, i16* %arrayidx1461, align 2, !dbg !1355, !tbaa !945
  %arrayidx1465 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 4, i64 0, !dbg !1355
  store i16 %conv1449, i16* %arrayidx1465, align 2, !dbg !1355, !tbaa !945
  %arrayidx1467 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1356
  %276 = bitcast i32* %arrayidx1467 to i64*, !dbg !1356
  %277 = load i64* %276, align 8, !dbg !1356
  %278 = trunc i64 %277 to i32, !dbg !1356
  %279 = lshr i64 %277, 32
  %280 = trunc i64 %279 to i32
  %mul14703326 = shl nuw nsw i64 %279, 1, !dbg !1356
  %mul1470 = trunc i64 %mul14703326 to i32, !dbg !1356
  %add1468 = add i32 %272, 2, !dbg !1356
  %add1471 = add i32 %add1468, %278, !dbg !1356
  %add1472 = add i32 %add1471, %mul1470, !dbg !1356
  %shr14733116 = lshr i32 %add1472, 2, !dbg !1356
  %conv1474 = trunc i32 %shr14733116 to i16, !dbg !1356
  %arrayidx1478 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 4, !dbg !1356
  store i16 %conv1474, i16* %arrayidx1478, align 2, !dbg !1356, !tbaa !945
  %arrayidx1482 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 3, !dbg !1356
  store i16 %conv1474, i16* %arrayidx1482, align 2, !dbg !1356, !tbaa !945
  %arrayidx1486 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 2, !dbg !1356
  store i16 %conv1474, i16* %arrayidx1486, align 2, !dbg !1356, !tbaa !945
  %arrayidx1490 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 4, i64 1, !dbg !1356
  store i16 %conv1474, i16* %arrayidx1490, align 2, !dbg !1356, !tbaa !945
  %281 = load %struct.ImageParameters** @img, align 8, !dbg !1356, !tbaa !874
  %arrayidx1494 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 0, !dbg !1356
  store i16 %conv1474, i16* %arrayidx1494, align 2, !dbg !1356, !tbaa !945
  %arrayidx1496 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1357
  %282 = load i32* %arrayidx1496, align 4, !dbg !1357, !tbaa !853
  %mul1499 = shl i32 %278, 1, !dbg !1357
  %add1497 = add i32 %280, 2, !dbg !1357
  %add1500 = add i32 %add1497, %282, !dbg !1357
  %add1501 = add i32 %add1500, %mul1499, !dbg !1357
  %shr15023117 = lshr i32 %add1501, 2, !dbg !1357
  %conv1503 = trunc i32 %shr15023117 to i16, !dbg !1357
  %arrayidx1507 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 5, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1507, align 2, !dbg !1357, !tbaa !945
  %arrayidx1511 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 4, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1511, align 2, !dbg !1357, !tbaa !945
  %arrayidx1515 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 3, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1515, align 2, !dbg !1357, !tbaa !945
  %arrayidx1519 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 2, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1519, align 2, !dbg !1357, !tbaa !945
  %arrayidx1523 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 1, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1523, align 2, !dbg !1357, !tbaa !945
  %arrayidx1527 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 0, !dbg !1357
  store i16 %conv1503, i16* %arrayidx1527, align 2, !dbg !1357, !tbaa !945
  %283 = bitcast [25 x i32]* %PredPel to i64*, !dbg !1358
  %284 = load i64* %283, align 16, !dbg !1358
  %285 = trunc i64 %284 to i32, !dbg !1358
  %mul1532 = shl i32 %282, 1, !dbg !1358
  %add1530 = add i32 %278, 2, !dbg !1358
  %add1533 = add i32 %add1530, %285, !dbg !1358
  %add1534 = add i32 %add1533, %mul1532, !dbg !1358
  %shr15353118 = lshr i32 %add1534, 2, !dbg !1358
  %conv1536 = trunc i32 %shr15353118 to i16, !dbg !1358
  %arrayidx1540 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 6, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1540, align 2, !dbg !1358, !tbaa !945
  %arrayidx1544 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 5, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1544, align 2, !dbg !1358, !tbaa !945
  %arrayidx1548 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 4, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1548, align 2, !dbg !1358, !tbaa !945
  %arrayidx1552 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 3, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1552, align 2, !dbg !1358, !tbaa !945
  %arrayidx1556 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 2, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1556, align 2, !dbg !1358, !tbaa !945
  %arrayidx1560 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 1, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1560, align 2, !dbg !1358, !tbaa !945
  %arrayidx1564 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 0, !dbg !1358
  store i16 %conv1536, i16* %arrayidx1564, align 2, !dbg !1358, !tbaa !945
  %286 = lshr i64 %284, 32
  %287 = trunc i64 %286 to i32
  %mul1569 = shl i32 %285, 1, !dbg !1359
  %add1567 = add i32 %282, 2, !dbg !1359
  %add1570 = add i32 %add1567, %287, !dbg !1359
  %add1571 = add i32 %add1570, %mul1569, !dbg !1359
  %shr15723119 = lshr i32 %add1571, 2, !dbg !1359
  %conv1573 = trunc i32 %shr15723119 to i16, !dbg !1359
  %arrayidx1577 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 7, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1577, align 2, !dbg !1359, !tbaa !945
  %arrayidx1581 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 6, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1581, align 2, !dbg !1359, !tbaa !945
  %arrayidx1585 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 5, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1585, align 2, !dbg !1359, !tbaa !945
  %arrayidx1589 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 4, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1589, align 2, !dbg !1359, !tbaa !945
  %arrayidx1593 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 3, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1593, align 2, !dbg !1359, !tbaa !945
  %arrayidx1597 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 2, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1597, align 2, !dbg !1359, !tbaa !945
  %arrayidx1601 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 1, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1601, align 2, !dbg !1359, !tbaa !945
  %arrayidx1605 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 0, i64 0, !dbg !1359
  store i16 %conv1573, i16* %arrayidx1605, align 2, !dbg !1359, !tbaa !945
  %288 = load i64* %173, align 8, !dbg !1360
  %289 = trunc i64 %288 to i32, !dbg !1360
  %mul16103327 = shl nuw nsw i64 %286, 1, !dbg !1360
  %mul1610 = trunc i64 %mul16103327 to i32, !dbg !1360
  %add1608 = add i32 %285, 2, !dbg !1360
  %add1611 = add i32 %add1608, %289, !dbg !1360
  %add1612 = add i32 %add1611, %mul1610, !dbg !1360
  %shr16133120 = lshr i32 %add1612, 2, !dbg !1360
  %conv1614 = trunc i32 %shr16133120 to i16, !dbg !1360
  %arrayidx1618 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 7, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1618, align 2, !dbg !1360, !tbaa !945
  %arrayidx1622 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 6, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1622, align 2, !dbg !1360, !tbaa !945
  %arrayidx1626 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 5, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1626, align 2, !dbg !1360, !tbaa !945
  %arrayidx1630 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 4, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1630, align 2, !dbg !1360, !tbaa !945
  %arrayidx1634 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 3, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1634, align 2, !dbg !1360, !tbaa !945
  %arrayidx1638 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 2, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1638, align 2, !dbg !1360, !tbaa !945
  %290 = load %struct.ImageParameters** @img, align 8, !dbg !1360, !tbaa !874
  %arrayidx1642 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 1, !dbg !1360
  store i16 %conv1614, i16* %arrayidx1642, align 2, !dbg !1360, !tbaa !945
  %291 = lshr i64 %288, 32
  %292 = trunc i64 %291 to i32
  %mul1647 = shl i32 %289, 1, !dbg !1361
  %add1645 = add i32 %287, 2, !dbg !1361
  %add1648 = add i32 %add1645, %292, !dbg !1361
  %add1649 = add i32 %add1648, %mul1647, !dbg !1361
  %shr16503121 = lshr i32 %add1649, 2, !dbg !1361
  %conv1651 = trunc i32 %shr16503121 to i16, !dbg !1361
  %arrayidx1655 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 5, i64 7, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1655, align 2, !dbg !1361, !tbaa !945
  %arrayidx1659 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 4, i64 6, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1659, align 2, !dbg !1361, !tbaa !945
  %arrayidx1663 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 5, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1663, align 2, !dbg !1361, !tbaa !945
  %arrayidx1667 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 4, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1667, align 2, !dbg !1361, !tbaa !945
  %arrayidx1671 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 3, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1671, align 2, !dbg !1361, !tbaa !945
  %arrayidx1675 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 2, !dbg !1361
  store i16 %conv1651, i16* %arrayidx1675, align 2, !dbg !1361, !tbaa !945
  %293 = load i64* %176, align 16, !dbg !1362
  %294 = trunc i64 %293 to i32, !dbg !1362
  %mul16803328 = shl nuw nsw i64 %291, 1, !dbg !1362
  %mul1680 = trunc i64 %mul16803328 to i32, !dbg !1362
  %add1678 = add i32 %289, 2, !dbg !1362
  %add1681 = add i32 %add1678, %294, !dbg !1362
  %add1682 = add i32 %add1681, %mul1680, !dbg !1362
  %shr16833122 = lshr i32 %add1682, 2, !dbg !1362
  %conv1684 = trunc i32 %shr16833122 to i16, !dbg !1362
  %arrayidx1688 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 4, i64 7, !dbg !1362
  store i16 %conv1684, i16* %arrayidx1688, align 2, !dbg !1362, !tbaa !945
  %arrayidx1692 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 6, !dbg !1362
  store i16 %conv1684, i16* %arrayidx1692, align 2, !dbg !1362, !tbaa !945
  %arrayidx1696 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 5, !dbg !1362
  store i16 %conv1684, i16* %arrayidx1696, align 2, !dbg !1362, !tbaa !945
  %arrayidx1700 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 4, !dbg !1362
  store i16 %conv1684, i16* %arrayidx1700, align 2, !dbg !1362, !tbaa !945
  %arrayidx1704 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 3, !dbg !1362
  store i16 %conv1684, i16* %arrayidx1704, align 2, !dbg !1362, !tbaa !945
  %295 = lshr i64 %293, 32
  %296 = trunc i64 %295 to i32
  %mul1709 = shl i32 %294, 1, !dbg !1363
  %add1707 = add i32 %292, 2, !dbg !1363
  %add1710 = add i32 %add1707, %296, !dbg !1363
  %add1711 = add i32 %add1710, %mul1709, !dbg !1363
  %shr17123123 = lshr i32 %add1711, 2, !dbg !1363
  %conv1713 = trunc i32 %shr17123123 to i16, !dbg !1363
  %arrayidx1717 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 7, !dbg !1363
  store i16 %conv1713, i16* %arrayidx1717, align 2, !dbg !1363, !tbaa !945
  %arrayidx1721 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 6, !dbg !1363
  store i16 %conv1713, i16* %arrayidx1721, align 2, !dbg !1363, !tbaa !945
  %arrayidx1725 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 5, !dbg !1363
  store i16 %conv1713, i16* %arrayidx1725, align 2, !dbg !1363, !tbaa !945
  %arrayidx1729 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 4, !dbg !1363
  store i16 %conv1713, i16* %arrayidx1729, align 2, !dbg !1363, !tbaa !945
  %297 = load i64* %183, align 8, !dbg !1364
  %298 = trunc i64 %297 to i32, !dbg !1364
  %mul17343329 = shl nuw nsw i64 %295, 1, !dbg !1364
  %mul1734 = trunc i64 %mul17343329 to i32, !dbg !1364
  %add1732 = add i32 %294, 2, !dbg !1364
  %add1735 = add i32 %add1732, %298, !dbg !1364
  %add1736 = add i32 %add1735, %mul1734, !dbg !1364
  %shr17373124 = lshr i32 %add1736, 2, !dbg !1364
  %conv1738 = trunc i32 %shr17373124 to i16, !dbg !1364
  %arrayidx1742 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 7, !dbg !1364
  store i16 %conv1738, i16* %arrayidx1742, align 2, !dbg !1364, !tbaa !945
  %arrayidx1746 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 6, !dbg !1364
  store i16 %conv1738, i16* %arrayidx1746, align 2, !dbg !1364, !tbaa !945
  %arrayidx1750 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 5, !dbg !1364
  store i16 %conv1738, i16* %arrayidx1750, align 2, !dbg !1364, !tbaa !945
  %299 = lshr i64 %297, 32
  %300 = trunc i64 %299 to i32
  %mul1755 = shl i32 %298, 1, !dbg !1365
  %add1753 = add i32 %296, 2, !dbg !1365
  %add1756 = add i32 %add1753, %300, !dbg !1365
  %add1757 = add i32 %add1756, %mul1755, !dbg !1365
  %shr17583125 = lshr i32 %add1757, 2, !dbg !1365
  %conv1759 = trunc i32 %shr17583125 to i16, !dbg !1365
  %301 = load %struct.ImageParameters** @img, align 8, !dbg !1365, !tbaa !874
  %arrayidx1763 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 1, i64 7, !dbg !1365
  store i16 %conv1759, i16* %arrayidx1763, align 2, !dbg !1365, !tbaa !945
  %arrayidx1767 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 0, i64 6, !dbg !1365
  store i16 %conv1759, i16* %arrayidx1767, align 2, !dbg !1365, !tbaa !945
  %302 = load i32* %arrayidx679, align 16, !dbg !1366, !tbaa !853
  %mul17723330 = shl nuw nsw i64 %299, 1, !dbg !1366
  %mul1772 = trunc i64 %mul17723330 to i32, !dbg !1366
  %add1770 = add i32 %298, 2, !dbg !1366
  %add1773 = add i32 %add1770, %302, !dbg !1366
  %add1774 = add i32 %add1773, %mul1772, !dbg !1366
  %shr17753126 = lshr i32 %add1774, 2, !dbg !1366
  %conv1776 = trunc i32 %shr17753126 to i16, !dbg !1366
  %arrayidx1780 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 0, i64 7, !dbg !1366
  store i16 %conv1776, i16* %arrayidx1780, align 2, !dbg !1366, !tbaa !945
  %303 = load i64* %283, align 16, !dbg !1367
  %304 = trunc i64 %303 to i32, !dbg !1367
  %305 = lshr i64 %303, 32
  %306 = trunc i64 %305 to i32
  %add1783 = add i32 %304, 1, !dbg !1367
  %add1784 = add i32 %add1783, %306, !dbg !1367
  %shr17853127 = lshr i32 %add1784, 1, !dbg !1367
  %conv1786 = trunc i32 %shr17853127 to i16, !dbg !1367
  %arrayidx1790 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 3, !dbg !1367
  store i16 %conv1786, i16* %arrayidx1790, align 2, !dbg !1367, !tbaa !945
  %arrayidx1794 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 2, !dbg !1367
  store i16 %conv1786, i16* %arrayidx1794, align 2, !dbg !1367, !tbaa !945
  %arrayidx1798 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 1, !dbg !1367
  store i16 %conv1786, i16* %arrayidx1798, align 2, !dbg !1367, !tbaa !945
  %arrayidx1802 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 0, !dbg !1367
  store i16 %conv1786, i16* %arrayidx1802, align 2, !dbg !1367, !tbaa !945
  %307 = load i64* %173, align 8, !dbg !1368
  %308 = trunc i64 %307 to i32, !dbg !1368
  %add1805 = add i32 %306, 1, !dbg !1368
  %add1806 = add i32 %add1805, %308, !dbg !1368
  %shr18073128 = lshr i32 %add1806, 1, !dbg !1368
  %conv1808 = trunc i32 %shr18073128 to i16, !dbg !1368
  %arrayidx1812 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 4, !dbg !1368
  store i16 %conv1808, i16* %arrayidx1812, align 2, !dbg !1368, !tbaa !945
  %arrayidx1816 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 3, !dbg !1368
  store i16 %conv1808, i16* %arrayidx1816, align 2, !dbg !1368, !tbaa !945
  %arrayidx1820 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 2, !dbg !1368
  store i16 %conv1808, i16* %arrayidx1820, align 2, !dbg !1368, !tbaa !945
  %arrayidx1824 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 1, !dbg !1368
  store i16 %conv1808, i16* %arrayidx1824, align 2, !dbg !1368, !tbaa !945
  %309 = lshr i64 %307, 32
  %310 = trunc i64 %309 to i32
  %add1827 = add i32 %308, 1, !dbg !1369
  %add1828 = add i32 %add1827, %310, !dbg !1369
  %shr18293129 = lshr i32 %add1828, 1, !dbg !1369
  %conv1830 = trunc i32 %shr18293129 to i16, !dbg !1369
  %arrayidx1834 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 5, !dbg !1369
  store i16 %conv1830, i16* %arrayidx1834, align 2, !dbg !1369, !tbaa !945
  %arrayidx1838 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 4, !dbg !1369
  store i16 %conv1830, i16* %arrayidx1838, align 2, !dbg !1369, !tbaa !945
  %arrayidx1842 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 3, !dbg !1369
  store i16 %conv1830, i16* %arrayidx1842, align 2, !dbg !1369, !tbaa !945
  %arrayidx1846 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 2, !dbg !1369
  store i16 %conv1830, i16* %arrayidx1846, align 2, !dbg !1369, !tbaa !945
  %311 = load i64* %176, align 16, !dbg !1370
  %312 = trunc i64 %311 to i32, !dbg !1370
  %add1849 = add i32 %310, 1, !dbg !1370
  %add1850 = add i32 %add1849, %312, !dbg !1370
  %shr18513130 = lshr i32 %add1850, 1, !dbg !1370
  %conv1852 = trunc i32 %shr18513130 to i16, !dbg !1370
  %arrayidx1856 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 6, !dbg !1370
  store i16 %conv1852, i16* %arrayidx1856, align 2, !dbg !1370, !tbaa !945
  %arrayidx1860 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 5, !dbg !1370
  store i16 %conv1852, i16* %arrayidx1860, align 2, !dbg !1370, !tbaa !945
  %arrayidx1864 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 4, !dbg !1370
  store i16 %conv1852, i16* %arrayidx1864, align 2, !dbg !1370, !tbaa !945
  %arrayidx1868 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 3, !dbg !1370
  store i16 %conv1852, i16* %arrayidx1868, align 2, !dbg !1370, !tbaa !945
  %313 = lshr i64 %311, 32
  %314 = trunc i64 %313 to i32
  %add1871 = add i32 %312, 1, !dbg !1371
  %add1872 = add i32 %add1871, %314, !dbg !1371
  %shr18733131 = lshr i32 %add1872, 1, !dbg !1371
  %conv1874 = trunc i32 %shr18733131 to i16, !dbg !1371
  %arrayidx1878 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 7, !dbg !1371
  store i16 %conv1874, i16* %arrayidx1878, align 2, !dbg !1371, !tbaa !945
  %arrayidx1882 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 6, !dbg !1371
  store i16 %conv1874, i16* %arrayidx1882, align 2, !dbg !1371, !tbaa !945
  %315 = load %struct.ImageParameters** @img, align 8, !dbg !1371, !tbaa !874
  %arrayidx1886 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 5, !dbg !1371
  store i16 %conv1874, i16* %arrayidx1886, align 2, !dbg !1371, !tbaa !945
  %arrayidx1890 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 4, !dbg !1371
  store i16 %conv1874, i16* %arrayidx1890, align 2, !dbg !1371, !tbaa !945
  %316 = load i64* %183, align 8, !dbg !1372
  %317 = trunc i64 %316 to i32, !dbg !1372
  %add1893 = add i32 %314, 1, !dbg !1372
  %add1894 = add i32 %add1893, %317, !dbg !1372
  %shr18953132 = lshr i32 %add1894, 1, !dbg !1372
  %conv1896 = trunc i32 %shr18953132 to i16, !dbg !1372
  %arrayidx1900 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 4, i64 7, !dbg !1372
  store i16 %conv1896, i16* %arrayidx1900, align 2, !dbg !1372, !tbaa !945
  %arrayidx1904 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 6, !dbg !1372
  store i16 %conv1896, i16* %arrayidx1904, align 2, !dbg !1372, !tbaa !945
  %arrayidx1908 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 5, !dbg !1372
  store i16 %conv1896, i16* %arrayidx1908, align 2, !dbg !1372, !tbaa !945
  %318 = lshr i64 %316, 32
  %319 = trunc i64 %318 to i32
  %add1911 = add i32 %317, 1, !dbg !1373
  %add1912 = add i32 %add1911, %319, !dbg !1373
  %shr19133133 = lshr i32 %add1912, 1, !dbg !1373
  %conv1914 = trunc i32 %shr19133133 to i16, !dbg !1373
  %arrayidx1918 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 7, !dbg !1373
  store i16 %conv1914, i16* %arrayidx1918, align 2, !dbg !1373, !tbaa !945
  %arrayidx1922 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 6, !dbg !1373
  store i16 %conv1914, i16* %arrayidx1922, align 2, !dbg !1373, !tbaa !945
  %320 = load i32* %arrayidx679, align 16, !dbg !1374, !tbaa !853
  %add1925 = add i32 %319, 1, !dbg !1374
  %add1926 = add i32 %add1925, %320, !dbg !1374
  %shr19273134 = lshr i32 %add1926, 1, !dbg !1374
  %conv1928 = trunc i32 %shr19273134 to i16, !dbg !1374
  %arrayidx1932 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 7, !dbg !1374
  store i16 %conv1928, i16* %arrayidx1932, align 2, !dbg !1374, !tbaa !945
  %321 = load i32* %arrayidx1496, align 4, !dbg !1375, !tbaa !853
  %322 = load i32* %arrayidx574, align 4, !dbg !1375, !tbaa !853
  %323 = load i64* %283, align 16, !dbg !1375
  %324 = trunc i64 %323 to i32, !dbg !1375
  %mul1937 = shl i32 %324, 1, !dbg !1375
  %add1935 = add i32 %321, 2, !dbg !1375
  %add1938 = add i32 %add1935, %322, !dbg !1375
  %add1939 = add i32 %add1938, %mul1937, !dbg !1375
  %shr19403135 = lshr i32 %add1939, 2, !dbg !1375
  %conv1941 = trunc i32 %shr19403135 to i16, !dbg !1375
  %arrayidx1945 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 3, !dbg !1375
  store i16 %conv1941, i16* %arrayidx1945, align 2, !dbg !1375, !tbaa !945
  %arrayidx1949 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 2, !dbg !1375
  store i16 %conv1941, i16* %arrayidx1949, align 2, !dbg !1375, !tbaa !945
  %arrayidx1953 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 3, i64 1, !dbg !1375
  store i16 %conv1941, i16* %arrayidx1953, align 2, !dbg !1375, !tbaa !945
  %arrayidx1957 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 1, i64 0, !dbg !1375
  store i16 %conv1941, i16* %arrayidx1957, align 2, !dbg !1375, !tbaa !945
  %325 = load i64* %173, align 8, !dbg !1376
  %326 = trunc i64 %325 to i32, !dbg !1376
  %327 = lshr i64 %323, 32
  %328 = trunc i64 %327 to i32
  %mul19623331 = shl nuw nsw i64 %327, 1, !dbg !1376
  %mul1962 = trunc i64 %mul19623331 to i32, !dbg !1376
  %add1960 = add i32 %324, 2, !dbg !1376
  %add1963 = add i32 %add1960, %326, !dbg !1376
  %add1964 = add i32 %add1963, %mul1962, !dbg !1376
  %shr19653136 = lshr i32 %add1964, 2, !dbg !1376
  %conv1966 = trunc i32 %shr19653136 to i16, !dbg !1376
  %arrayidx1970 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 4, !dbg !1376
  store i16 %conv1966, i16* %arrayidx1970, align 2, !dbg !1376, !tbaa !945
  %arrayidx1974 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 3, !dbg !1376
  store i16 %conv1966, i16* %arrayidx1974, align 2, !dbg !1376, !tbaa !945
  %arrayidx1978 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 3, i64 2, !dbg !1376
  store i16 %conv1966, i16* %arrayidx1978, align 2, !dbg !1376, !tbaa !945
  %arrayidx1982 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 1, i64 1, !dbg !1376
  store i16 %conv1966, i16* %arrayidx1982, align 2, !dbg !1376, !tbaa !945
  %329 = lshr i64 %325, 32
  %330 = trunc i64 %329 to i32
  %mul1987 = shl i32 %326, 1, !dbg !1377
  %add1985 = add i32 %328, 2, !dbg !1377
  %add1988 = add i32 %add1985, %330, !dbg !1377
  %add1989 = add i32 %add1988, %mul1987, !dbg !1377
  %shr19903137 = lshr i32 %add1989, 2, !dbg !1377
  %conv1991 = trunc i32 %shr19903137 to i16, !dbg !1377
  %arrayidx1995 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 5, !dbg !1377
  store i16 %conv1991, i16* %arrayidx1995, align 2, !dbg !1377, !tbaa !945
  %arrayidx1999 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 4, !dbg !1377
  store i16 %conv1991, i16* %arrayidx1999, align 2, !dbg !1377, !tbaa !945
  %331 = load %struct.ImageParameters** @img, align 8, !dbg !1377, !tbaa !874
  %arrayidx2003 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 3, !dbg !1377
  store i16 %conv1991, i16* %arrayidx2003, align 2, !dbg !1377, !tbaa !945
  %arrayidx2007 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 2, !dbg !1377
  store i16 %conv1991, i16* %arrayidx2007, align 2, !dbg !1377, !tbaa !945
  %332 = load i64* %176, align 16, !dbg !1378
  %333 = trunc i64 %332 to i32, !dbg !1378
  %mul20123332 = shl nuw nsw i64 %329, 1, !dbg !1378
  %mul2012 = trunc i64 %mul20123332 to i32, !dbg !1378
  %add2010 = add i32 %326, 2, !dbg !1378
  %add2013 = add i32 %add2010, %333, !dbg !1378
  %add2014 = add i32 %add2013, %mul2012, !dbg !1378
  %shr20153138 = lshr i32 %add2014, 2, !dbg !1378
  %conv2016 = trunc i32 %shr20153138 to i16, !dbg !1378
  %arrayidx2020 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 7, i64 6, !dbg !1378
  store i16 %conv2016, i16* %arrayidx2020, align 2, !dbg !1378, !tbaa !945
  %arrayidx2024 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 5, !dbg !1378
  store i16 %conv2016, i16* %arrayidx2024, align 2, !dbg !1378, !tbaa !945
  %arrayidx2028 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 4, !dbg !1378
  store i16 %conv2016, i16* %arrayidx2028, align 2, !dbg !1378, !tbaa !945
  %arrayidx2032 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 3, !dbg !1378
  store i16 %conv2016, i16* %arrayidx2032, align 2, !dbg !1378, !tbaa !945
  %334 = lshr i64 %332, 32
  %335 = trunc i64 %334 to i32
  %mul2037 = shl i32 %333, 1, !dbg !1379
  %add2035 = add i32 %330, 2, !dbg !1379
  %add2038 = add i32 %add2035, %335, !dbg !1379
  %add2039 = add i32 %add2038, %mul2037, !dbg !1379
  %shr20403139 = lshr i32 %add2039, 2, !dbg !1379
  %conv2041 = trunc i32 %shr20403139 to i16, !dbg !1379
  %arrayidx2045 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 7, i64 7, !dbg !1379
  store i16 %conv2041, i16* %arrayidx2045, align 2, !dbg !1379, !tbaa !945
  %arrayidx2049 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 6, !dbg !1379
  store i16 %conv2041, i16* %arrayidx2049, align 2, !dbg !1379, !tbaa !945
  %arrayidx2053 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 5, !dbg !1379
  store i16 %conv2041, i16* %arrayidx2053, align 2, !dbg !1379, !tbaa !945
  %arrayidx2057 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 4, !dbg !1379
  store i16 %conv2041, i16* %arrayidx2057, align 2, !dbg !1379, !tbaa !945
  %336 = load i64* %183, align 8, !dbg !1380
  %337 = trunc i64 %336 to i32, !dbg !1380
  %mul20623333 = shl nuw nsw i64 %334, 1, !dbg !1380
  %mul2062 = trunc i64 %mul20623333 to i32, !dbg !1380
  %add2060 = add i32 %333, 2, !dbg !1380
  %add2063 = add i32 %add2060, %337, !dbg !1380
  %add2064 = add i32 %add2063, %mul2062, !dbg !1380
  %shr20653140 = lshr i32 %add2064, 2, !dbg !1380
  %conv2066 = trunc i32 %shr20653140 to i16, !dbg !1380
  %arrayidx2070 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 7, !dbg !1380
  store i16 %conv2066, i16* %arrayidx2070, align 2, !dbg !1380, !tbaa !945
  %arrayidx2074 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 6, !dbg !1380
  store i16 %conv2066, i16* %arrayidx2074, align 2, !dbg !1380, !tbaa !945
  %arrayidx2078 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 5, !dbg !1380
  store i16 %conv2066, i16* %arrayidx2078, align 2, !dbg !1380, !tbaa !945
  %338 = lshr i64 %336, 32
  %339 = trunc i64 %338 to i32
  %mul2083 = shl i32 %337, 1, !dbg !1381
  %add2081 = add i32 %335, 2, !dbg !1381
  %add2084 = add i32 %add2081, %339, !dbg !1381
  %add2085 = add i32 %add2084, %mul2083, !dbg !1381
  %shr20863141 = lshr i32 %add2085, 2, !dbg !1381
  %conv2087 = trunc i32 %shr20863141 to i16, !dbg !1381
  %arrayidx2091 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 7, !dbg !1381
  store i16 %conv2087, i16* %arrayidx2091, align 2, !dbg !1381, !tbaa !945
  %arrayidx2095 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 6, !dbg !1381
  store i16 %conv2087, i16* %arrayidx2095, align 2, !dbg !1381, !tbaa !945
  %340 = load i32* %arrayidx679, align 16, !dbg !1382, !tbaa !853
  %mul21003334 = shl nuw nsw i64 %338, 1, !dbg !1382
  %mul2100 = trunc i64 %mul21003334 to i32, !dbg !1382
  %add2098 = add i32 %337, 2, !dbg !1382
  %add2101 = add i32 %add2098, %340, !dbg !1382
  %add2102 = add i32 %add2101, %mul2100, !dbg !1382
  %shr21033142 = lshr i32 %add2102, 2, !dbg !1382
  %conv2104 = trunc i32 %shr21033142 to i16, !dbg !1382
  %arrayidx2108 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 7, !dbg !1382
  store i16 %conv2104, i16* %arrayidx2108, align 2, !dbg !1382, !tbaa !945
  %341 = load i64* %276, align 8, !dbg !1383
  %342 = trunc i64 %341 to i32, !dbg !1383
  %343 = load i32* %arrayidx356, align 16, !dbg !1383, !tbaa !853
  %344 = load i32* %arrayidx1496, align 4, !dbg !1383, !tbaa !853
  %mul2113 = shl i32 %344, 1, !dbg !1383
  %add2111 = add i32 %342, 2, !dbg !1383
  %add2114 = add i32 %add2111, %343, !dbg !1383
  %add2115 = add i32 %add2114, %mul2113, !dbg !1383
  %shr21163143 = lshr i32 %add2115, 2, !dbg !1383
  %conv2117 = trunc i32 %shr21163143 to i16, !dbg !1383
  %345 = load %struct.ImageParameters** @img, align 8, !dbg !1383, !tbaa !874
  %arrayidx2121 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 2, !dbg !1383
  store i16 %conv2117, i16* %arrayidx2121, align 2, !dbg !1383, !tbaa !945
  %arrayidx2125 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 4, i64 1, !dbg !1383
  store i16 %conv2117, i16* %arrayidx2125, align 2, !dbg !1383, !tbaa !945
  %arrayidx2129 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 2, i64 0, !dbg !1383
  store i16 %conv2117, i16* %arrayidx2129, align 2, !dbg !1383, !tbaa !945
  %346 = lshr i64 %341, 32
  %347 = trunc i64 %346 to i32
  %mul2134 = shl i32 %342, 1, !dbg !1384
  %add2132 = add i32 %347, 2, !dbg !1384
  %add2135 = add i32 %add2132, %344, !dbg !1384
  %add2136 = add i32 %add2135, %mul2134, !dbg !1384
  %shr21373144 = lshr i32 %add2136, 2, !dbg !1384
  %conv2138 = trunc i32 %shr21373144 to i16, !dbg !1384
  %arrayidx2142 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 2, !dbg !1384
  store i16 %conv2138, i16* %arrayidx2142, align 2, !dbg !1384, !tbaa !945
  %arrayidx2146 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 5, i64 1, !dbg !1384
  store i16 %conv2138, i16* %arrayidx2146, align 2, !dbg !1384, !tbaa !945
  %arrayidx2150 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 3, i64 0, !dbg !1384
  store i16 %conv2138, i16* %arrayidx2150, align 2, !dbg !1384, !tbaa !945
  %348 = load i64* %270, align 16, !dbg !1385
  %349 = trunc i64 %348 to i32, !dbg !1385
  %mul21553335 = shl nuw nsw i64 %346, 1, !dbg !1385
  %mul2155 = trunc i64 %mul21553335 to i32, !dbg !1385
  %add2153 = add i32 %349, 2, !dbg !1385
  %add2156 = add i32 %add2153, %342, !dbg !1385
  %add2157 = add i32 %add2156, %mul2155, !dbg !1385
  %shr21583145 = lshr i32 %add2157, 2, !dbg !1385
  %conv2159 = trunc i32 %shr21583145 to i16, !dbg !1385
  %arrayidx2163 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 1, !dbg !1385
  store i16 %conv2159, i16* %arrayidx2163, align 2, !dbg !1385, !tbaa !945
  %arrayidx2167 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 4, i64 0, !dbg !1385
  store i16 %conv2159, i16* %arrayidx2167, align 2, !dbg !1385, !tbaa !945
  %350 = lshr i64 %348, 32
  %351 = trunc i64 %350 to i32
  %mul2172 = shl i32 %349, 1, !dbg !1386
  %add2170 = add i32 %351, 2, !dbg !1386
  %add2173 = add i32 %add2170, %347, !dbg !1386
  %add2174 = add i32 %add2173, %mul2172, !dbg !1386
  %shr21753146 = lshr i32 %add2174, 2, !dbg !1386
  %conv2176 = trunc i32 %shr21753146 to i16, !dbg !1386
  %arrayidx2180 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 1, !dbg !1386
  store i16 %conv2176, i16* %arrayidx2180, align 2, !dbg !1386, !tbaa !945
  %arrayidx2184 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 5, i64 0, !dbg !1386
  store i16 %conv2176, i16* %arrayidx2184, align 2, !dbg !1386, !tbaa !945
  %352 = load i64* %264, align 8, !dbg !1387
  %353 = trunc i64 %352 to i32, !dbg !1387
  %mul21893336 = shl nuw nsw i64 %350, 1, !dbg !1387
  %mul2189 = trunc i64 %mul21893336 to i32, !dbg !1387
  %add2187 = add i32 %353, 2, !dbg !1387
  %add2190 = add i32 %add2187, %349, !dbg !1387
  %add2191 = add i32 %add2190, %mul2189, !dbg !1387
  %shr21923147 = lshr i32 %add2191, 2, !dbg !1387
  %conv2193 = trunc i32 %shr21923147 to i16, !dbg !1387
  %arrayidx2197 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 0, !dbg !1387
  store i16 %conv2193, i16* %arrayidx2197, align 2, !dbg !1387, !tbaa !945
  %354 = lshr i64 %352, 32
  %355 = trunc i64 %354 to i32
  %mul2202 = shl i32 %353, 1, !dbg !1388
  %add2200 = add i32 %355, 2, !dbg !1388
  %add2203 = add i32 %add2200, %351, !dbg !1388
  %add2204 = add i32 %add2203, %mul2202, !dbg !1388
  %shr22053148 = lshr i32 %add2204, 2, !dbg !1388
  %conv2206 = trunc i32 %shr22053148 to i16, !dbg !1388
  %arrayidx2210 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 0, !dbg !1388
  store i16 %conv2206, i16* %arrayidx2210, align 2, !dbg !1388, !tbaa !945
  %add2213 = add i32 %344, 1, !dbg !1389
  %add2214 = add i32 %add2213, %343, !dbg !1389
  %shr22153149 = lshr i32 %add2214, 1, !dbg !1389
  %conv2216 = trunc i32 %shr22153149 to i16, !dbg !1389
  %arrayidx2220 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 3, i64 6, !dbg !1389
  store i16 %conv2216, i16* %arrayidx2220, align 2, !dbg !1389, !tbaa !945
  %arrayidx2224 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 2, i64 4, !dbg !1389
  store i16 %conv2216, i16* %arrayidx2224, align 2, !dbg !1389, !tbaa !945
  %arrayidx2228 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 1, i64 2, !dbg !1389
  store i16 %conv2216, i16* %arrayidx2228, align 2, !dbg !1389, !tbaa !945
  %arrayidx2232 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 0, i64 0, !dbg !1389
  store i16 %conv2216, i16* %arrayidx2232, align 2, !dbg !1389, !tbaa !945
  %356 = load i64* %276, align 8, !dbg !1390
  %357 = trunc i64 %356 to i32, !dbg !1390
  %358 = load i32* %arrayidx1496, align 4, !dbg !1390, !tbaa !853
  %add2235 = add i32 %357, 1, !dbg !1390
  %add2236 = add i32 %add2235, %358, !dbg !1390
  %shr22373150 = lshr i32 %add2236, 1, !dbg !1390
  %conv2238 = trunc i32 %shr22373150 to i16, !dbg !1390
  %359 = load %struct.ImageParameters** @img, align 8, !dbg !1390, !tbaa !874
  %arrayidx2242 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 6, !dbg !1390
  store i16 %conv2238, i16* %arrayidx2242, align 2, !dbg !1390, !tbaa !945
  %arrayidx2246 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 4, !dbg !1390
  store i16 %conv2238, i16* %arrayidx2246, align 2, !dbg !1390, !tbaa !945
  %arrayidx2250 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 2, i64 2, !dbg !1390
  store i16 %conv2238, i16* %arrayidx2250, align 2, !dbg !1390, !tbaa !945
  %arrayidx2254 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 1, i64 0, !dbg !1390
  store i16 %conv2238, i16* %arrayidx2254, align 2, !dbg !1390, !tbaa !945
  %360 = lshr i64 %356, 32
  %361 = trunc i64 %360 to i32
  %add2257 = add i32 %361, 1, !dbg !1391
  %add2258 = add i32 %add2257, %357, !dbg !1391
  %shr22593151 = lshr i32 %add2258, 1, !dbg !1391
  %conv2260 = trunc i32 %shr22593151 to i16, !dbg !1391
  %arrayidx2264 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 6, !dbg !1391
  store i16 %conv2260, i16* %arrayidx2264, align 2, !dbg !1391, !tbaa !945
  %arrayidx2268 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 4, !dbg !1391
  store i16 %conv2260, i16* %arrayidx2268, align 2, !dbg !1391, !tbaa !945
  %arrayidx2272 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 2, !dbg !1391
  store i16 %conv2260, i16* %arrayidx2272, align 2, !dbg !1391, !tbaa !945
  %arrayidx2276 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 2, i64 0, !dbg !1391
  store i16 %conv2260, i16* %arrayidx2276, align 2, !dbg !1391, !tbaa !945
  %362 = load i64* %270, align 16, !dbg !1392
  %363 = trunc i64 %362 to i32, !dbg !1392
  %add2279 = add i32 %363, 1, !dbg !1392
  %add2280 = add i32 %add2279, %361, !dbg !1392
  %shr22813152 = lshr i32 %add2280, 1, !dbg !1392
  %conv2282 = trunc i32 %shr22813152 to i16, !dbg !1392
  %arrayidx2286 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 6, !dbg !1392
  store i16 %conv2282, i16* %arrayidx2286, align 2, !dbg !1392, !tbaa !945
  %arrayidx2290 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 4, !dbg !1392
  store i16 %conv2282, i16* %arrayidx2290, align 2, !dbg !1392, !tbaa !945
  %arrayidx2294 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 2, !dbg !1392
  store i16 %conv2282, i16* %arrayidx2294, align 2, !dbg !1392, !tbaa !945
  %arrayidx2298 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 0, !dbg !1392
  store i16 %conv2282, i16* %arrayidx2298, align 2, !dbg !1392, !tbaa !945
  %364 = lshr i64 %362, 32
  %365 = trunc i64 %364 to i32
  %add2301 = add i32 %365, 1, !dbg !1393
  %add2302 = add i32 %add2301, %363, !dbg !1393
  %shr23033153 = lshr i32 %add2302, 1, !dbg !1393
  %conv2304 = trunc i32 %shr23033153 to i16, !dbg !1393
  %arrayidx2308 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 6, !dbg !1393
  store i16 %conv2304, i16* %arrayidx2308, align 2, !dbg !1393, !tbaa !945
  %arrayidx2312 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 4, !dbg !1393
  store i16 %conv2304, i16* %arrayidx2312, align 2, !dbg !1393, !tbaa !945
  %arrayidx2316 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 2, !dbg !1393
  store i16 %conv2304, i16* %arrayidx2316, align 2, !dbg !1393, !tbaa !945
  %arrayidx2320 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 0, !dbg !1393
  store i16 %conv2304, i16* %arrayidx2320, align 2, !dbg !1393, !tbaa !945
  %366 = load i64* %264, align 8, !dbg !1394
  %367 = trunc i64 %366 to i32, !dbg !1394
  %add2323 = add i32 %367, 1, !dbg !1394
  %add2324 = add i32 %add2323, %365, !dbg !1394
  %shr23253154 = lshr i32 %add2324, 1, !dbg !1394
  %conv2326 = trunc i32 %shr23253154 to i16, !dbg !1394
  %arrayidx2330 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 4, !dbg !1394
  store i16 %conv2326, i16* %arrayidx2330, align 2, !dbg !1394, !tbaa !945
  %arrayidx2334 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 2, !dbg !1394
  store i16 %conv2326, i16* %arrayidx2334, align 2, !dbg !1394, !tbaa !945
  %arrayidx2338 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 0, !dbg !1394
  store i16 %conv2326, i16* %arrayidx2338, align 2, !dbg !1394, !tbaa !945
  %368 = lshr i64 %366, 32
  %369 = trunc i64 %368 to i32
  %add2341 = add i32 %369, 1, !dbg !1395
  %add2342 = add i32 %add2341, %367, !dbg !1395
  %shr23433155 = lshr i32 %add2342, 1, !dbg !1395
  %conv2344 = trunc i32 %shr23433155 to i16, !dbg !1395
  %arrayidx2348 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 2, !dbg !1395
  store i16 %conv2344, i16* %arrayidx2348, align 2, !dbg !1395, !tbaa !945
  %arrayidx2352 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 0, !dbg !1395
  store i16 %conv2344, i16* %arrayidx2352, align 2, !dbg !1395, !tbaa !945
  %370 = load i32* %arrayidx1390, align 16, !dbg !1396, !tbaa !853
  %add2355 = add i32 %370, 1, !dbg !1396
  %add2356 = add i32 %add2355, %369, !dbg !1396
  %shr23573156 = lshr i32 %add2356, 1, !dbg !1396
  %conv2358 = trunc i32 %shr23573156 to i16, !dbg !1396
  %arrayidx2362 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 0, !dbg !1396
  store i16 %conv2358, i16* %arrayidx2362, align 2, !dbg !1396, !tbaa !945
  %371 = load i32* %arrayidx1496, align 4, !dbg !1397, !tbaa !853
  %372 = load i32* %arrayidx574, align 4, !dbg !1397, !tbaa !853
  %373 = load i32* %arrayidx356, align 16, !dbg !1397, !tbaa !853
  %mul2367 = shl i32 %373, 1, !dbg !1397
  %add2365 = add i32 %371, 2, !dbg !1397
  %add2368 = add i32 %add2365, %372, !dbg !1397
  %add2369 = add i32 %add2368, %mul2367, !dbg !1397
  %shr23703157 = lshr i32 %add2369, 2, !dbg !1397
  %conv2371 = trunc i32 %shr23703157 to i16, !dbg !1397
  %374 = load %struct.ImageParameters** @img, align 8, !dbg !1397, !tbaa !874
  %arrayidx2375 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 7, !dbg !1397
  store i16 %conv2371, i16* %arrayidx2375, align 2, !dbg !1397, !tbaa !945
  %arrayidx2379 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 5, !dbg !1397
  store i16 %conv2371, i16* %arrayidx2379, align 2, !dbg !1397, !tbaa !945
  %arrayidx2383 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 1, i64 3, !dbg !1397
  store i16 %conv2371, i16* %arrayidx2383, align 2, !dbg !1397, !tbaa !945
  %arrayidx2387 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 0, i64 1, !dbg !1397
  store i16 %conv2371, i16* %arrayidx2387, align 2, !dbg !1397, !tbaa !945
  %375 = load i64* %276, align 8, !dbg !1398
  %376 = trunc i64 %375 to i32, !dbg !1398
  %mul2392 = shl i32 %371, 1, !dbg !1398
  %add2390 = add i32 %373, 2, !dbg !1398
  %add2393 = add i32 %add2390, %376, !dbg !1398
  %add2394 = add i32 %add2393, %mul2392, !dbg !1398
  %shr23953158 = lshr i32 %add2394, 2, !dbg !1398
  %conv2396 = trunc i32 %shr23953158 to i16, !dbg !1398
  %arrayidx2400 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 7, !dbg !1398
  store i16 %conv2396, i16* %arrayidx2400, align 2, !dbg !1398, !tbaa !945
  %arrayidx2404 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 5, !dbg !1398
  store i16 %conv2396, i16* %arrayidx2404, align 2, !dbg !1398, !tbaa !945
  %arrayidx2408 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 3, !dbg !1398
  store i16 %conv2396, i16* %arrayidx2408, align 2, !dbg !1398, !tbaa !945
  %arrayidx2412 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 1, i64 1, !dbg !1398
  store i16 %conv2396, i16* %arrayidx2412, align 2, !dbg !1398, !tbaa !945
  %377 = lshr i64 %375, 32
  %378 = trunc i64 %377 to i32
  %mul2417 = shl i32 %376, 1, !dbg !1399
  %add2418 = add i32 %add2365, %378, !dbg !1399
  %add2419 = add i32 %add2418, %mul2417, !dbg !1399
  %shr24203159 = lshr i32 %add2419, 2, !dbg !1399
  %conv2421 = trunc i32 %shr24203159 to i16, !dbg !1399
  %arrayidx2425 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 7, !dbg !1399
  store i16 %conv2421, i16* %arrayidx2425, align 2, !dbg !1399, !tbaa !945
  %arrayidx2429 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 5, !dbg !1399
  store i16 %conv2421, i16* %arrayidx2429, align 2, !dbg !1399, !tbaa !945
  %arrayidx2433 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 3, !dbg !1399
  store i16 %conv2421, i16* %arrayidx2433, align 2, !dbg !1399, !tbaa !945
  %arrayidx2437 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 1, !dbg !1399
  store i16 %conv2421, i16* %arrayidx2437, align 2, !dbg !1399, !tbaa !945
  %379 = load i64* %270, align 16, !dbg !1400
  %380 = trunc i64 %379 to i32, !dbg !1400
  %mul24423337 = shl nuw nsw i64 %377, 1, !dbg !1400
  %mul2442 = trunc i64 %mul24423337 to i32, !dbg !1400
  %add2440 = add i32 %376, 2, !dbg !1400
  %add2443 = add i32 %add2440, %380, !dbg !1400
  %add2444 = add i32 %add2443, %mul2442, !dbg !1400
  %shr24453160 = lshr i32 %add2444, 2, !dbg !1400
  %conv2446 = trunc i32 %shr24453160 to i16, !dbg !1400
  %arrayidx2450 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 6, i64 7, !dbg !1400
  store i16 %conv2446, i16* %arrayidx2450, align 2, !dbg !1400, !tbaa !945
  %arrayidx2454 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 5, !dbg !1400
  store i16 %conv2446, i16* %arrayidx2454, align 2, !dbg !1400, !tbaa !945
  %arrayidx2458 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 3, !dbg !1400
  store i16 %conv2446, i16* %arrayidx2458, align 2, !dbg !1400, !tbaa !945
  %arrayidx2462 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 1, !dbg !1400
  store i16 %conv2446, i16* %arrayidx2462, align 2, !dbg !1400, !tbaa !945
  %381 = lshr i64 %379, 32
  %382 = trunc i64 %381 to i32
  %mul2467 = shl i32 %380, 1, !dbg !1401
  %add2465 = add i32 %378, 2, !dbg !1401
  %add2468 = add i32 %add2465, %382, !dbg !1401
  %add2469 = add i32 %add2468, %mul2467, !dbg !1401
  %shr24703161 = lshr i32 %add2469, 2, !dbg !1401
  %conv2471 = trunc i32 %shr24703161 to i16, !dbg !1401
  %arrayidx2475 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 7, i64 7, !dbg !1401
  store i16 %conv2471, i16* %arrayidx2475, align 2, !dbg !1401, !tbaa !945
  %arrayidx2479 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 6, i64 5, !dbg !1401
  store i16 %conv2471, i16* %arrayidx2479, align 2, !dbg !1401, !tbaa !945
  %arrayidx2483 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 3, !dbg !1401
  store i16 %conv2471, i16* %arrayidx2483, align 2, !dbg !1401, !tbaa !945
  %arrayidx2487 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 1, !dbg !1401
  store i16 %conv2471, i16* %arrayidx2487, align 2, !dbg !1401, !tbaa !945
  %383 = load i64* %264, align 8, !dbg !1402
  %384 = trunc i64 %383 to i32, !dbg !1402
  %mul24923338 = shl nuw nsw i64 %381, 1, !dbg !1402
  %mul2492 = trunc i64 %mul24923338 to i32, !dbg !1402
  %add2490 = add i32 %380, 2, !dbg !1402
  %add2493 = add i32 %add2490, %384, !dbg !1402
  %add2494 = add i32 %add2493, %mul2492, !dbg !1402
  %shr24953162 = lshr i32 %add2494, 2, !dbg !1402
  %conv2496 = trunc i32 %shr24953162 to i16, !dbg !1402
  %385 = load %struct.ImageParameters** @img, align 8, !dbg !1402, !tbaa !874
  %arrayidx2500 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 5, !dbg !1402
  store i16 %conv2496, i16* %arrayidx2500, align 2, !dbg !1402, !tbaa !945
  %arrayidx2504 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 6, i64 3, !dbg !1402
  store i16 %conv2496, i16* %arrayidx2504, align 2, !dbg !1402, !tbaa !945
  %arrayidx2508 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 5, i64 1, !dbg !1402
  store i16 %conv2496, i16* %arrayidx2508, align 2, !dbg !1402, !tbaa !945
  %386 = lshr i64 %383, 32
  %387 = trunc i64 %386 to i32
  %mul2513 = shl i32 %384, 1, !dbg !1403
  %add2511 = add i32 %382, 2, !dbg !1403
  %add2514 = add i32 %add2511, %387, !dbg !1403
  %add2515 = add i32 %add2514, %mul2513, !dbg !1403
  %shr25163163 = lshr i32 %add2515, 2, !dbg !1403
  %conv2517 = trunc i32 %shr25163163 to i16, !dbg !1403
  %arrayidx2521 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 3, !dbg !1403
  store i16 %conv2517, i16* %arrayidx2521, align 2, !dbg !1403, !tbaa !945
  %arrayidx2525 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 6, i64 1, !dbg !1403
  store i16 %conv2517, i16* %arrayidx2525, align 2, !dbg !1403, !tbaa !945
  %388 = load i32* %arrayidx1390, align 16, !dbg !1404, !tbaa !853
  %mul25303339 = shl nuw nsw i64 %386, 1, !dbg !1404
  %mul2530 = trunc i64 %mul25303339 to i32, !dbg !1404
  %add2528 = add i32 %384, 2, !dbg !1404
  %add2531 = add i32 %add2528, %388, !dbg !1404
  %add2532 = add i32 %add2531, %mul2530, !dbg !1404
  %shr25333164 = lshr i32 %add2532, 2, !dbg !1404
  %conv2534 = trunc i32 %shr25333164 to i16, !dbg !1404
  %arrayidx2538 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 1, !dbg !1404
  store i16 %conv2534, i16* %arrayidx2538, align 2, !dbg !1404, !tbaa !945
  %389 = load i64* %283, align 16, !dbg !1405
  %390 = trunc i64 %389 to i32, !dbg !1405
  %391 = load i64* %173, align 8, !dbg !1405
  %392 = trunc i64 %391 to i32, !dbg !1405
  %393 = lshr i64 %389, 32
  %394 = trunc i64 %393 to i32
  %mul25433340 = shl nuw nsw i64 %393, 1, !dbg !1405
  %mul2543 = trunc i64 %mul25433340 to i32, !dbg !1405
  %add2541 = add i32 %390, 2, !dbg !1405
  %add2544 = add i32 %add2541, %392, !dbg !1405
  %add2545 = add i32 %add2544, %mul2543, !dbg !1405
  %shr25463165 = lshr i32 %add2545, 2, !dbg !1405
  %conv2547 = trunc i32 %shr25463165 to i16, !dbg !1405
  %arrayidx2551 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 2, i64 6, !dbg !1405
  store i16 %conv2547, i16* %arrayidx2551, align 2, !dbg !1405, !tbaa !945
  %arrayidx2555 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 4, !dbg !1405
  store i16 %conv2547, i16* %arrayidx2555, align 2, !dbg !1405, !tbaa !945
  %arrayidx2559 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 2, !dbg !1405
  store i16 %conv2547, i16* %arrayidx2559, align 2, !dbg !1405, !tbaa !945
  %395 = lshr i64 %391, 32
  %396 = trunc i64 %395 to i32
  %mul2564 = shl i32 %392, 1, !dbg !1406
  %add2562 = add i32 %394, 2, !dbg !1406
  %add2565 = add i32 %add2562, %396, !dbg !1406
  %add2566 = add i32 %add2565, %mul2564, !dbg !1406
  %shr25673166 = lshr i32 %add2566, 2, !dbg !1406
  %conv2568 = trunc i32 %shr25673166 to i16, !dbg !1406
  %arrayidx2572 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 2, i64 7, !dbg !1406
  store i16 %conv2568, i16* %arrayidx2572, align 2, !dbg !1406, !tbaa !945
  %arrayidx2576 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 5, !dbg !1406
  store i16 %conv2568, i16* %arrayidx2576, align 2, !dbg !1406, !tbaa !945
  %arrayidx2580 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 3, !dbg !1406
  store i16 %conv2568, i16* %arrayidx2580, align 2, !dbg !1406, !tbaa !945
  %397 = load i64* %176, align 16, !dbg !1407
  %398 = trunc i64 %397 to i32, !dbg !1407
  %mul25853341 = shl nuw nsw i64 %395, 1, !dbg !1407
  %mul2585 = trunc i64 %mul25853341 to i32, !dbg !1407
  %add2583 = add i32 %392, 2, !dbg !1407
  %add2586 = add i32 %add2583, %398, !dbg !1407
  %add2587 = add i32 %add2586, %mul2585, !dbg !1407
  %shr25883167 = lshr i32 %add2587, 2, !dbg !1407
  %conv2589 = trunc i32 %shr25883167 to i16, !dbg !1407
  %arrayidx2593 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 6, !dbg !1407
  store i16 %conv2589, i16* %arrayidx2593, align 2, !dbg !1407, !tbaa !945
  %arrayidx2597 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 4, !dbg !1407
  store i16 %conv2589, i16* %arrayidx2597, align 2, !dbg !1407, !tbaa !945
  %399 = lshr i64 %397, 32
  %400 = trunc i64 %399 to i32
  %mul2602 = shl i32 %398, 1, !dbg !1408
  %add2600 = add i32 %396, 2, !dbg !1408
  %add2603 = add i32 %add2600, %400, !dbg !1408
  %add2604 = add i32 %add2603, %mul2602, !dbg !1408
  %shr26053168 = lshr i32 %add2604, 2, !dbg !1408
  %conv2606 = trunc i32 %shr26053168 to i16, !dbg !1408
  %401 = load %struct.ImageParameters** @img, align 8, !dbg !1408, !tbaa !874
  %arrayidx2610 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 1, i64 7, !dbg !1408
  store i16 %conv2606, i16* %arrayidx2610, align 2, !dbg !1408, !tbaa !945
  %arrayidx2614 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 5, !dbg !1408
  store i16 %conv2606, i16* %arrayidx2614, align 2, !dbg !1408, !tbaa !945
  %402 = load i64* %183, align 8, !dbg !1409
  %403 = trunc i64 %402 to i32, !dbg !1409
  %mul26193342 = shl nuw nsw i64 %399, 1, !dbg !1409
  %mul2619 = trunc i64 %mul26193342 to i32, !dbg !1409
  %add2617 = add i32 %398, 2, !dbg !1409
  %add2620 = add i32 %add2617, %403, !dbg !1409
  %add2621 = add i32 %add2620, %mul2619, !dbg !1409
  %shr26223169 = lshr i32 %add2621, 2, !dbg !1409
  %conv2623 = trunc i32 %shr26223169 to i16, !dbg !1409
  %arrayidx2627 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 6, !dbg !1409
  store i16 %conv2623, i16* %arrayidx2627, align 2, !dbg !1409, !tbaa !945
  %404 = lshr i64 %402, 32
  %405 = trunc i64 %404 to i32
  %mul2632 = shl i32 %403, 1, !dbg !1410
  %add2630 = add i32 %400, 2, !dbg !1410
  %add2633 = add i32 %add2630, %405, !dbg !1410
  %add2634 = add i32 %add2633, %mul2632, !dbg !1410
  %shr26353170 = lshr i32 %add2634, 2, !dbg !1410
  %conv2636 = trunc i32 %shr26353170 to i16, !dbg !1410
  %arrayidx2640 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 7, !dbg !1410
  store i16 %conv2636, i16* %arrayidx2640, align 2, !dbg !1410, !tbaa !945
  br label %if.end2641, !dbg !1411

if.end2641:                                       ; preds = %if.end571, %if.then573, %if.then1389
  %406 = phi %struct.ImageParameters* [ %168, %if.end571 ], [ %254, %if.then573 ], [ %401, %if.then1389 ]
  br i1 %tobool65.not, label %if.then2643, label %if.end3005, !dbg !1412

if.then2643:                                      ; preds = %if.end2641
  %arrayidx2644 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17, !dbg !1413
  %407 = load i32* %arrayidx2644, align 4, !dbg !1413, !tbaa !853
  %arrayidx2645 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18, !dbg !1413
  %408 = bitcast i32* %arrayidx2645 to i64*, !dbg !1413
  %409 = load i64* %408, align 8, !dbg !1413
  %410 = trunc i64 %409 to i32, !dbg !1413
  %add2646 = add i32 %407, 1, !dbg !1413
  %add2647 = add i32 %add2646, %410, !dbg !1413
  %shr26483098 = lshr i32 %add2647, 1, !dbg !1413
  %conv2649 = trunc i32 %shr26483098 to i16, !dbg !1413
  %arrayidx2653 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 0, !dbg !1413
  store i16 %conv2649, i16* %arrayidx2653, align 2, !dbg !1413, !tbaa !945
  %arrayidx2655 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19, !dbg !1415
  %411 = lshr i64 %409, 32
  %412 = trunc i64 %411 to i32
  %add2656 = add i32 %410, 1, !dbg !1415
  %add2657 = add i32 %add2656, %412, !dbg !1415
  %shr26583099 = lshr i32 %add2657, 1, !dbg !1415
  %conv2659 = trunc i32 %shr26583099 to i16, !dbg !1415
  %arrayidx2663 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 2, !dbg !1415
  store i16 %conv2659, i16* %arrayidx2663, align 2, !dbg !1415, !tbaa !945
  %arrayidx2667 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 0, !dbg !1415
  store i16 %conv2659, i16* %arrayidx2667, align 2, !dbg !1415, !tbaa !945
  %arrayidx2669 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20, !dbg !1416
  %413 = bitcast i32* %arrayidx2669 to i64*, !dbg !1416
  %414 = load i64* %413, align 16, !dbg !1416
  %415 = trunc i64 %414 to i32, !dbg !1416
  %add2670 = add i32 %412, 1, !dbg !1416
  %add2671 = add i32 %add2670, %415, !dbg !1416
  %shr26723100 = lshr i32 %add2671, 1, !dbg !1416
  %conv2673 = trunc i32 %shr26723100 to i16, !dbg !1416
  %arrayidx2677 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 4, !dbg !1416
  store i16 %conv2673, i16* %arrayidx2677, align 2, !dbg !1416, !tbaa !945
  %arrayidx2681 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 2, !dbg !1416
  store i16 %conv2673, i16* %arrayidx2681, align 2, !dbg !1416, !tbaa !945
  %arrayidx2685 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 0, !dbg !1416
  store i16 %conv2673, i16* %arrayidx2685, align 2, !dbg !1416, !tbaa !945
  %arrayidx2687 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21, !dbg !1417
  %416 = lshr i64 %414, 32
  %417 = trunc i64 %416 to i32
  %add2688 = add i32 %415, 1, !dbg !1417
  %add2689 = add i32 %add2688, %417, !dbg !1417
  %shr26903101 = lshr i32 %add2689, 1, !dbg !1417
  %conv2691 = trunc i32 %shr26903101 to i16, !dbg !1417
  %arrayidx2695 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 6, !dbg !1417
  store i16 %conv2691, i16* %arrayidx2695, align 2, !dbg !1417, !tbaa !945
  %arrayidx2699 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 4, !dbg !1417
  store i16 %conv2691, i16* %arrayidx2699, align 2, !dbg !1417, !tbaa !945
  %arrayidx2703 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 2, !dbg !1417
  store i16 %conv2691, i16* %arrayidx2703, align 2, !dbg !1417, !tbaa !945
  %arrayidx2707 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 0, !dbg !1417
  store i16 %conv2691, i16* %arrayidx2707, align 2, !dbg !1417, !tbaa !945
  %arrayidx2709 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22, !dbg !1418
  %418 = bitcast i32* %arrayidx2709 to i64*, !dbg !1418
  %419 = load i64* %418, align 8, !dbg !1418
  %420 = trunc i64 %419 to i32, !dbg !1418
  %add2710 = add i32 %417, 1, !dbg !1418
  %add2711 = add i32 %add2710, %420, !dbg !1418
  %shr27123102 = lshr i32 %add2711, 1, !dbg !1418
  %conv2713 = trunc i32 %shr27123102 to i16, !dbg !1418
  %arrayidx2717 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 6, !dbg !1418
  store i16 %conv2713, i16* %arrayidx2717, align 2, !dbg !1418, !tbaa !945
  %arrayidx2721 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 4, !dbg !1418
  store i16 %conv2713, i16* %arrayidx2721, align 2, !dbg !1418, !tbaa !945
  %arrayidx2725 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 2, !dbg !1418
  store i16 %conv2713, i16* %arrayidx2725, align 2, !dbg !1418, !tbaa !945
  %arrayidx2729 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 4, i64 0, !dbg !1418
  store i16 %conv2713, i16* %arrayidx2729, align 2, !dbg !1418, !tbaa !945
  %421 = lshr i64 %419, 32
  %422 = trunc i64 %421 to i32
  %add2732 = add i32 %420, 1, !dbg !1419
  %add2733 = add i32 %add2732, %422, !dbg !1419
  %shr27343103 = lshr i32 %add2733, 1, !dbg !1419
  %conv2735 = trunc i32 %shr27343103 to i16, !dbg !1419
  %arrayidx2739 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 6, !dbg !1419
  store i16 %conv2735, i16* %arrayidx2739, align 2, !dbg !1419, !tbaa !945
  %arrayidx2743 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 4, !dbg !1419
  store i16 %conv2735, i16* %arrayidx2743, align 2, !dbg !1419, !tbaa !945
  %arrayidx2747 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 4, i64 2, !dbg !1419
  store i16 %conv2735, i16* %arrayidx2747, align 2, !dbg !1419, !tbaa !945
  %arrayidx2751 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 5, i64 0, !dbg !1419
  store i16 %conv2735, i16* %arrayidx2751, align 2, !dbg !1419, !tbaa !945
  %arrayidx2753 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24, !dbg !1420
  %423 = load i32* %arrayidx2753, align 16, !dbg !1420, !tbaa !853
  %add2754 = add i32 %422, 1, !dbg !1420
  %add2755 = add i32 %add2754, %423, !dbg !1420
  %shr27563104 = lshr i32 %add2755, 1, !dbg !1420
  %conv2757 = trunc i32 %shr27563104 to i16, !dbg !1420
  %424 = load %struct.ImageParameters** @img, align 8, !dbg !1420, !tbaa !874
  %arrayidx2761 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 6, !dbg !1420
  store i16 %conv2757, i16* %arrayidx2761, align 2, !dbg !1420, !tbaa !945
  %arrayidx2765 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 4, !dbg !1420
  store i16 %conv2757, i16* %arrayidx2765, align 2, !dbg !1420, !tbaa !945
  %arrayidx2769 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 2, !dbg !1420
  store i16 %conv2757, i16* %arrayidx2769, align 2, !dbg !1420, !tbaa !945
  %arrayidx2773 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 0, !dbg !1420
  store i16 %conv2757, i16* %arrayidx2773, align 2, !dbg !1420, !tbaa !945
  %conv2775 = trunc i32 %423 to i16, !dbg !1421
  %arrayidx2779 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 7, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2779, align 2, !dbg !1421, !tbaa !945
  %arrayidx2783 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 6, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2783, align 2, !dbg !1421, !tbaa !945
  %arrayidx2787 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 5, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2787, align 2, !dbg !1421, !tbaa !945
  %arrayidx2791 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 4, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2791, align 2, !dbg !1421, !tbaa !945
  %arrayidx2795 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 3, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2795, align 2, !dbg !1421, !tbaa !945
  %arrayidx2799 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 2, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2799, align 2, !dbg !1421, !tbaa !945
  %arrayidx2803 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 1, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2803, align 2, !dbg !1421, !tbaa !945
  %arrayidx2807 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 0, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2807, align 2, !dbg !1421, !tbaa !945
  %arrayidx2811 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 7, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2811, align 2, !dbg !1421, !tbaa !945
  %arrayidx2815 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 6, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2815, align 2, !dbg !1421, !tbaa !945
  %arrayidx2819 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 5, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2819, align 2, !dbg !1421, !tbaa !945
  %arrayidx2823 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 4, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2823, align 2, !dbg !1421, !tbaa !945
  %arrayidx2827 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 3, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2827, align 2, !dbg !1421, !tbaa !945
  %arrayidx2831 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 2, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2831, align 2, !dbg !1421, !tbaa !945
  %arrayidx2835 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 7, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2835, align 2, !dbg !1421, !tbaa !945
  %arrayidx2839 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 6, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2839, align 2, !dbg !1421, !tbaa !945
  %arrayidx2843 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 5, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2843, align 2, !dbg !1421, !tbaa !945
  %arrayidx2847 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 4, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2847, align 2, !dbg !1421, !tbaa !945
  %arrayidx2851 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 7, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2851, align 2, !dbg !1421, !tbaa !945
  %arrayidx2855 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 6, !dbg !1421
  store i16 %conv2775, i16* %arrayidx2855, align 2, !dbg !1421, !tbaa !945
  %mul2858 = mul nsw i32 %423, 3, !dbg !1422
  %add2859 = add i32 %422, 2, !dbg !1422
  %add2860 = add i32 %add2859, %mul2858, !dbg !1422
  %shr28613105 = lshr i32 %add2860, 2, !dbg !1422
  %conv2862 = trunc i32 %shr28613105 to i16, !dbg !1422
  %arrayidx2866 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 7, !dbg !1422
  store i16 %conv2862, i16* %arrayidx2866, align 2, !dbg !1422, !tbaa !945
  %arrayidx2870 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 5, !dbg !1422
  store i16 %conv2862, i16* %arrayidx2870, align 2, !dbg !1422, !tbaa !945
  %arrayidx2874 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 3, !dbg !1422
  store i16 %conv2862, i16* %arrayidx2874, align 2, !dbg !1422, !tbaa !945
  %arrayidx2878 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 1, !dbg !1422
  store i16 %conv2862, i16* %arrayidx2878, align 2, !dbg !1422, !tbaa !945
  %425 = load i64* %418, align 8, !dbg !1423
  %426 = trunc i64 %425 to i32, !dbg !1423
  %427 = lshr i64 %425, 32
  %428 = trunc i64 %427 to i32
  %mul28833309 = shl nuw nsw i64 %427, 1, !dbg !1423
  %mul2883 = trunc i64 %mul28833309 to i32, !dbg !1423
  %add2881 = add i32 %423, 2, !dbg !1423
  %add2884 = add i32 %add2881, %426, !dbg !1423
  %add2885 = add i32 %add2884, %mul2883, !dbg !1423
  %shr28863106 = lshr i32 %add2885, 2, !dbg !1423
  %conv2887 = trunc i32 %shr28863106 to i16, !dbg !1423
  %arrayidx2891 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 2, i64 7, !dbg !1423
  store i16 %conv2887, i16* %arrayidx2891, align 2, !dbg !1423, !tbaa !945
  %arrayidx2895 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 5, !dbg !1423
  store i16 %conv2887, i16* %arrayidx2895, align 2, !dbg !1423, !tbaa !945
  %arrayidx2899 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 3, !dbg !1423
  store i16 %conv2887, i16* %arrayidx2899, align 2, !dbg !1423, !tbaa !945
  %arrayidx2903 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 1, !dbg !1423
  store i16 %conv2887, i16* %arrayidx2903, align 2, !dbg !1423, !tbaa !945
  %429 = load i32* %arrayidx2687, align 4, !dbg !1424, !tbaa !853
  %mul2908 = shl i32 %426, 1, !dbg !1424
  %add2906 = add i32 %428, 2, !dbg !1424
  %add2909 = add i32 %add2906, %429, !dbg !1424
  %add2910 = add i32 %add2909, %mul2908, !dbg !1424
  %shr29113107 = lshr i32 %add2910, 2, !dbg !1424
  %conv2912 = trunc i32 %shr29113107 to i16, !dbg !1424
  %arrayidx2916 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 1, i64 7, !dbg !1424
  store i16 %conv2912, i16* %arrayidx2916, align 2, !dbg !1424, !tbaa !945
  %430 = load %struct.ImageParameters** @img, align 8, !dbg !1424, !tbaa !874
  %arrayidx2920 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 5, !dbg !1424
  store i16 %conv2912, i16* %arrayidx2920, align 2, !dbg !1424, !tbaa !945
  %arrayidx2924 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 3, i64 3, !dbg !1424
  store i16 %conv2912, i16* %arrayidx2924, align 2, !dbg !1424, !tbaa !945
  %arrayidx2928 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 4, i64 1, !dbg !1424
  store i16 %conv2912, i16* %arrayidx2928, align 2, !dbg !1424, !tbaa !945
  %431 = load i64* %413, align 16, !dbg !1425
  %432 = trunc i64 %431 to i32, !dbg !1425
  %433 = lshr i64 %431, 32
  %434 = trunc i64 %433 to i32
  %mul29333310 = shl nuw nsw i64 %433, 1, !dbg !1425
  %mul2933 = trunc i64 %mul29333310 to i32, !dbg !1425
  %add2931 = add i32 %426, 2, !dbg !1425
  %add2934 = add i32 %add2931, %432, !dbg !1425
  %add2935 = add i32 %add2934, %mul2933, !dbg !1425
  %shr29363108 = lshr i32 %add2935, 2, !dbg !1425
  %conv2937 = trunc i32 %shr29363108 to i16, !dbg !1425
  %arrayidx2941 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 7, !dbg !1425
  store i16 %conv2937, i16* %arrayidx2941, align 2, !dbg !1425, !tbaa !945
  %arrayidx2945 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 5, !dbg !1425
  store i16 %conv2937, i16* %arrayidx2945, align 2, !dbg !1425, !tbaa !945
  %arrayidx2949 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 3, !dbg !1425
  store i16 %conv2937, i16* %arrayidx2949, align 2, !dbg !1425, !tbaa !945
  %arrayidx2953 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 3, i64 1, !dbg !1425
  store i16 %conv2937, i16* %arrayidx2953, align 2, !dbg !1425, !tbaa !945
  %435 = load i32* %arrayidx2655, align 4, !dbg !1426, !tbaa !853
  %mul2958 = shl i32 %432, 1, !dbg !1426
  %add2956 = add i32 %434, 2, !dbg !1426
  %add2959 = add i32 %add2956, %435, !dbg !1426
  %add2960 = add i32 %add2959, %mul2958, !dbg !1426
  %shr29613109 = lshr i32 %add2960, 2, !dbg !1426
  %conv2962 = trunc i32 %shr29613109 to i16, !dbg !1426
  %arrayidx2966 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 5, !dbg !1426
  store i16 %conv2962, i16* %arrayidx2966, align 2, !dbg !1426, !tbaa !945
  %arrayidx2970 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 3, !dbg !1426
  store i16 %conv2962, i16* %arrayidx2970, align 2, !dbg !1426, !tbaa !945
  %arrayidx2974 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 1, !dbg !1426
  store i16 %conv2962, i16* %arrayidx2974, align 2, !dbg !1426, !tbaa !945
  %436 = load i64* %408, align 8, !dbg !1427
  %437 = trunc i64 %436 to i32, !dbg !1427
  %438 = lshr i64 %436, 32
  %439 = trunc i64 %438 to i32
  %mul29793311 = shl nuw nsw i64 %438, 1, !dbg !1427
  %mul2979 = trunc i64 %mul29793311 to i32, !dbg !1427
  %add2977 = add i32 %432, 2, !dbg !1427
  %add2980 = add i32 %add2977, %437, !dbg !1427
  %add2981 = add i32 %add2980, %mul2979, !dbg !1427
  %shr29823110 = lshr i32 %add2981, 2, !dbg !1427
  %conv2983 = trunc i32 %shr29823110 to i16, !dbg !1427
  %arrayidx2987 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 3, !dbg !1427
  store i16 %conv2983, i16* %arrayidx2987, align 2, !dbg !1427, !tbaa !945
  %arrayidx2991 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 1, !dbg !1427
  store i16 %conv2983, i16* %arrayidx2991, align 2, !dbg !1427, !tbaa !945
  %440 = load i32* %arrayidx2644, align 4, !dbg !1428, !tbaa !853
  %mul2996 = shl i32 %437, 1, !dbg !1428
  %add2994 = add i32 %439, 2, !dbg !1428
  %add2997 = add i32 %add2994, %440, !dbg !1428
  %add2998 = add i32 %add2997, %mul2996, !dbg !1428
  %shr29993111 = lshr i32 %add2998, 2, !dbg !1428
  %conv3000 = trunc i32 %shr29993111 to i16, !dbg !1428
  %arrayidx3004 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 1, !dbg !1428
  store i16 %conv3000, i16* %arrayidx3004, align 2, !dbg !1428, !tbaa !945
  br label %if.end3005, !dbg !1429

if.end3005:                                       ; preds = %if.then2643, %if.end2641
  call void @llvm.lifetime.end(i64 192, i8* %5) #3, !dbg !1430
  call void @llvm.lifetime.end(i64 100, i8* %0) #3, !dbg !1430
  ret void, !dbg !1430
}

; Function Attrs: optsize
declare i32 @SATD8X8(i32*, i32) #4

; Function Attrs: optsize
declare void @store_coding_state_cs_cm(...) #4

; Function Attrs: nounwind optsize uwtable
define double @RDCost_for_8x8IntraBlocks(i32* nocapture %nonzero, i32 %b8, i32 %ipmode, double %lambda, double %min_rdcost, i32 %mostProbableMode) #0 {
entry:
  %dummy = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %nonzero}, i64 0, metadata !180), !dbg !1431
  call void @llvm.dbg.value(metadata !{i32 %b8}, i64 0, metadata !181), !dbg !1431
  call void @llvm.dbg.value(metadata !{i32 %ipmode}, i64 0, metadata !182), !dbg !1431
  call void @llvm.dbg.value(metadata !{double %lambda}, i64 0, metadata !183), !dbg !1431
  call void @llvm.dbg.value(metadata !{double %min_rdcost}, i64 0, metadata !184), !dbg !1431
  call void @llvm.dbg.value(metadata !{i32 %mostProbableMode}, i64 0, metadata !185), !dbg !1431
  call void @llvm.dbg.value(metadata !869, i64 0, metadata !186), !dbg !1432
  call void @llvm.dbg.declare(metadata !{i32* %dummy}, metadata !187), !dbg !1433
  call void @llvm.dbg.value(metadata !1434, i64 0, metadata !191), !dbg !1435
  %rem = srem i32 %b8, 2, !dbg !1436
  %mul = shl nsw i32 %rem, 3, !dbg !1436
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !195), !dbg !1436
  %div = sdiv i32 %b8, 2, !dbg !1437
  %mul1 = shl nsw i32 %div, 3, !dbg !1437
  call void @llvm.dbg.value(metadata !{i32 %mul1}, i64 0, metadata !196), !dbg !1437
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1438, !tbaa !874
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !1438
  %1 = load i32* %pix_x, align 4, !dbg !1438, !tbaa !853
  %add = add nsw i32 %1, %mul, !dbg !1438
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !197), !dbg !1438
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !1439
  %2 = load i32* %pix_y, align 4, !dbg !1439, !tbaa !853
  %add2 = add nsw i32 %2, %mul1, !dbg !1439
  call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !198), !dbg !1439
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38, !dbg !1440
  %3 = load i32* %opix_y, align 4, !dbg !1440, !tbaa !853
  %add3 = add nsw i32 %3, %mul1, !dbg !1440
  call void @llvm.dbg.value(metadata !{i32 %add3}, i64 0, metadata !199), !dbg !1440
  %4 = load i16*** @imgY_org, align 8, !dbg !1441, !tbaa !874
  call void @llvm.dbg.value(metadata !{i16** %4}, i64 0, metadata !200), !dbg !1441
  %5 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1442, !tbaa !874
  %imgY4 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 25, !dbg !1442
  %6 = load i16*** %imgY4, align 8, !dbg !1442, !tbaa !874
  call void @llvm.dbg.value(metadata !{i16** %6}, i64 0, metadata !201), !dbg !1442
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1443
  %7 = load %struct.Slice** %currentSlice, align 8, !dbg !1443, !tbaa !874
  call void @llvm.dbg.value(metadata !{%struct.Slice* %7}, i64 0, metadata !202), !dbg !1443
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1444
  %8 = load i32* %current_mb_nr, align 4, !dbg !1444, !tbaa !853
  %idxprom = sext i32 %8 to i64, !dbg !1444
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1444
  %9 = load %struct.macroblock** %mb_data, align 8, !dbg !1444, !tbaa !874
  %currSEnr = getelementptr inbounds %struct.macroblock* %9, i64 %idxprom, i32 0, !dbg !1445
  %10 = load i32* %currSEnr, align 4, !dbg !1445, !tbaa !853
  %idxprom5 = sext i32 %10 to i64, !dbg !1445
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %arrayidx6}, i64 0, metadata !436), !dbg !1445
  %11 = load %struct.InputParameters** @input, align 8, !dbg !1446, !tbaa !874
  %partition_mode = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 61, !dbg !1446
  %12 = load i32* %partition_mode, align 4, !dbg !1446, !tbaa !853
  %idxprom7 = sext i32 %12 to i64, !dbg !1446
  %arrayidx8 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom7, !dbg !1446
  %13 = load i32** %arrayidx8, align 8, !dbg !1446, !tbaa !874
  call void @llvm.dbg.value(metadata !{i32* %13}, i64 0, metadata !437), !dbg !1446
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !187), !dbg !1447
  store i32 0, i32* %dummy, align 4, !dbg !1447, !tbaa !853
  %call = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #6, !dbg !1448
  store i32 %call, i32* %nonzero, align 4, !dbg !1448, !tbaa !853
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !189), !dbg !1449
  %14 = load %struct.ImageParameters** @img, align 8, !dbg !1451, !tbaa !874
  %quad = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 53, !dbg !1451
  %15 = load i32** %quad, align 8, !dbg !1451, !tbaa !874
  %16 = shl i32 %rem, 3, !dbg !1449
  %17 = add i32 %1, %16, !dbg !1449
  %18 = sext i32 %17 to i64
  %19 = sext i32 %add2 to i64, !dbg !1449
  %20 = sext i32 %add3 to i64, !dbg !1449
  br label %for.cond9.preheader, !dbg !1449

for.cond9.preheader:                              ; preds = %for.inc28, %entry
  %indvars.iv127 = phi i64 [ 0, %entry ], [ %indvars.iv.next128, %for.inc28 ]
  %distortion.0125 = phi i64 [ 0, %entry ], [ %add27, %for.inc28 ]
  %21 = add nsw i64 %20, %indvars.iv127, !dbg !1451
  %arrayidx16 = getelementptr inbounds i16** %4, i64 %21, !dbg !1451
  %22 = load i16** %arrayidx16, align 8, !dbg !1451, !tbaa !874
  %23 = add nsw i64 %19, %indvars.iv127, !dbg !1451
  %arrayidx21 = getelementptr inbounds i16** %6, i64 %23, !dbg !1451
  %24 = load i16** %arrayidx21, align 8, !dbg !1451, !tbaa !874
  br label %for.body12, !dbg !1453

for.body12:                                       ; preds = %for.cond9.preheader, %for.body12
  %indvars.iv = phi i64 [ %18, %for.cond9.preheader ], [ %indvars.iv.next, %for.body12 ]
  %distortion.1123 = phi i64 [ %distortion.0125, %for.cond9.preheader ], [ %add27, %for.body12 ]
  %arrayidx17 = getelementptr inbounds i16* %22, i64 %indvars.iv, !dbg !1451
  %25 = load i16* %arrayidx17, align 2, !dbg !1451, !tbaa !945
  %conv = zext i16 %25 to i64, !dbg !1451
  %arrayidx22 = getelementptr inbounds i16* %24, i64 %indvars.iv, !dbg !1451
  %26 = load i16* %arrayidx22, align 2, !dbg !1451, !tbaa !945
  %conv23 = zext i16 %26 to i64, !dbg !1451
  %sub = sub i64 %conv, %conv23, !dbg !1451
  %arrayidx25 = getelementptr inbounds i32* %15, i64 %sub, !dbg !1451
  %27 = load i32* %arrayidx25, align 4, !dbg !1451, !tbaa !853
  %conv26 = sext i32 %27 to i64, !dbg !1451
  %add27 = add nsw i64 %conv26, %distortion.1123, !dbg !1451
  call void @llvm.dbg.value(metadata !{i64 %add27}, i64 0, metadata !191), !dbg !1451
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1453
  %28 = add nsw i32 %add, 7, !dbg !1453
  %29 = trunc i64 %indvars.iv to i32, !dbg !1453
  %cmp11 = icmp slt i32 %29, %28, !dbg !1453
  br i1 %cmp11, label %for.body12, label %for.inc28, !dbg !1453

for.inc28:                                        ; preds = %for.body12
  %indvars.iv.next128 = add i64 %indvars.iv127, 1, !dbg !1449
  %lftr.wideiv = trunc i64 %indvars.iv.next128 to i32, !dbg !1449
  %exitcond131 = icmp eq i32 %lftr.wideiv, 8, !dbg !1449
  br i1 %exitcond131, label %for.end30, label %for.cond9.preheader, !dbg !1449

for.end30:                                        ; preds = %for.inc28
  %arrayidx6 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, !dbg !1445
  %cmp31 = icmp eq i32 %mostProbableMode, %ipmode, !dbg !1454
  br i1 %cmp31, label %cond.end38, label %cond.false, !dbg !1454

cond.false:                                       ; preds = %for.end30
  %not.cmp33 = icmp sge i32 %ipmode, %mostProbableMode, !dbg !1454
  %sub37 = sext i1 %not.cmp33 to i32, !dbg !1454
  %cond = add nsw i32 %sub37, %ipmode, !dbg !1454
  br label %cond.end38, !dbg !1454

cond.end38:                                       ; preds = %cond.false, %for.end30
  %cond39 = phi i32 [ -1, %for.end30 ], [ %cond, %cond.false ], !dbg !1454
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 1, !dbg !1454
  store i32 %cond39, i32* %value1, align 4, !dbg !1454, !tbaa !853
  %context = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 6, !dbg !1455
  store i32 %b8, i32* %context, align 4, !dbg !1455, !tbaa !853
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx6, i64 0, i32 0, !dbg !1456
  store i32 4, i32* %type, align 4, !dbg !1456, !tbaa !853
  %30 = load %struct.InputParameters** @input, align 8, !dbg !1457, !tbaa !874
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 59, !dbg !1457
  %31 = load i32* %symbol_mode, align 4, !dbg !1457, !tbaa !853
  %cmp40 = icmp eq i32 %31, 0, !dbg !1457
  br i1 %cmp40, label %if.end, label %if.then, !dbg !1457

if.then:                                          ; preds = %cond.end38
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 9, !dbg !1458
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !dbg !1458, !tbaa !874
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1459, !tbaa !874
  br label %if.end, !dbg !1458

if.end:                                           ; preds = %cond.end38, %if.then
  %32 = phi %struct.ImageParameters* [ %14, %cond.end38 ], [ %.pre, %if.then ]
  %type42 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 6, !dbg !1459
  %33 = load i32* %type42, align 4, !dbg !1459, !tbaa !853
  %cmp43 = icmp eq i32 %33, 1, !dbg !1459
  br i1 %cmp43, label %if.else, label %if.then45, !dbg !1459

if.then45:                                        ; preds = %if.end
  %arrayidx46 = getelementptr inbounds i32* %13, i64 4, !dbg !1460
  %34 = load i32* %arrayidx46, align 4, !dbg !1460, !tbaa !853
  %idxprom47 = sext i32 %34 to i64, !dbg !1460
  %partArr = getelementptr inbounds %struct.Slice* %7, i64 0, i32 6, !dbg !1460
  %35 = load %struct.datapartition** %partArr, align 8, !dbg !1460, !tbaa !874
  %arrayidx48 = getelementptr inbounds %struct.datapartition* %35, i64 %idxprom47, !dbg !1460
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx48}, i64 0, metadata !440), !dbg !1460
  br label %if.end53, !dbg !1460

if.else:                                          ; preds = %if.end
  %arrayidx49 = getelementptr inbounds i32* %13, i64 18, !dbg !1461
  %36 = load i32* %arrayidx49, align 4, !dbg !1461, !tbaa !853
  %idxprom50 = sext i32 %36 to i64, !dbg !1461
  %partArr51 = getelementptr inbounds %struct.Slice* %7, i64 0, i32 6, !dbg !1461
  %37 = load %struct.datapartition** %partArr51, align 8, !dbg !1461, !tbaa !874
  %arrayidx52 = getelementptr inbounds %struct.datapartition* %37, i64 %idxprom50, !dbg !1461
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx52}, i64 0, metadata !440), !dbg !1461
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then45
  %dataPart.0 = phi %struct.datapartition* [ %arrayidx48, %if.then45 ], [ %arrayidx52, %if.else ]
  %38 = load %struct.InputParameters** @input, align 8, !dbg !1462, !tbaa !874
  %symbol_mode54 = getelementptr inbounds %struct.InputParameters* %38, i64 0, i32 59, !dbg !1462
  %39 = load i32* %symbol_mode54, align 4, !dbg !1462, !tbaa !853
  %cmp55 = icmp eq i32 %39, 0, !dbg !1462
  br i1 %cmp55, label %if.then57, label %if.else59, !dbg !1462

if.then57:                                        ; preds = %if.end53
  %call58 = call i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %arrayidx6, %struct.datapartition* %dataPart.0) #7, !dbg !1463
  br label %if.end61, !dbg !1463

if.else59:                                        ; preds = %if.end53
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %dataPart.0, i64 0, i32 2, !dbg !1464
  %40 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !dbg !1464, !tbaa !874
  %call60 = call i32 %40(%struct.syntaxelement* %arrayidx6, %struct.datapartition* %dataPart.0) #7, !dbg !1464
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 3, !dbg !1465
  %41 = load i32* %len, align 4, !dbg !1465, !tbaa !853
  call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !190), !dbg !1465
  %42 = load i32* %currSEnr, align 4, !dbg !1466, !tbaa !853
  %inc63 = add nsw i32 %42, 1, !dbg !1466
  store i32 %inc63, i32* %currSEnr, align 4, !dbg !1466, !tbaa !853
  %43 = load %struct.InputParameters** @input, align 8, !dbg !1467, !tbaa !874
  %symbol_mode64 = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 59, !dbg !1467
  %44 = load i32* %symbol_mode64, align 4, !dbg !1467, !tbaa !853
  %cmp65 = icmp eq i32 %44, 0, !dbg !1467
  br i1 %cmp65, label %for.body71, label %if.else77, !dbg !1467

for.body71:                                       ; preds = %if.end61, %for.body71
  %b4.0122 = phi i32 [ %inc75, %for.body71 ], [ 0, %if.end61 ]
  %rate.0121 = phi i32 [ %add73, %for.body71 ], [ %41, %if.end61 ]
  %call72 = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %b8, i32 %b4.0122, i32 0) #7, !dbg !1468
  %add73 = add nsw i32 %call72, %rate.0121, !dbg !1468
  call void @llvm.dbg.value(metadata !{i32 %add73}, i64 0, metadata !190), !dbg !1468
  %inc75 = add nsw i32 %b4.0122, 1, !dbg !1470
  call void @llvm.dbg.value(metadata !{i32 %inc75}, i64 0, metadata !441), !dbg !1470
  %exitcond = icmp eq i32 %inc75, 4, !dbg !1470
  br i1 %exitcond, label %if.end80, label %for.body71, !dbg !1470

if.else77:                                        ; preds = %if.end61
  %call78 = call i32 @writeLumaCoeff8x8_CABAC(i32 %b8, i32 1) #7, !dbg !1471
  %add79 = add nsw i32 %call78, %41, !dbg !1471
  call void @llvm.dbg.value(metadata !{i32 %add79}, i64 0, metadata !190), !dbg !1471
  br label %if.end80

if.end80:                                         ; preds = %for.body71, %if.else77
  %rate.1 = phi i32 [ %add79, %if.else77 ], [ %add73, %for.body71 ]
  %conv82 = sitofp i32 %rate.1 to double, !dbg !1473
  call void @llvm.dbg.value(metadata !{double %add84}, i64 0, metadata !186), !dbg !1473
  %45 = load %struct.ImageParameters** @img, align 8, !dbg !1474, !tbaa !874
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 164, !dbg !1474
  %46 = load i32* %residue_transform_flag, align 4, !dbg !1474, !tbaa !853
  %tobool = icmp eq i32 %46, 0, !dbg !1474
  br i1 %tobool, label %if.else87, label %return, !dbg !1474

if.else87:                                        ; preds = %if.end80
  %mul83 = fmul double %conv82, %lambda, !dbg !1473
  %conv81 = sitofp i64 %add27 to double, !dbg !1473
  %add84 = fadd double %conv81, %mul83, !dbg !1473
  br label %return, !dbg !1475

return:                                           ; preds = %if.end80, %if.else87
  %retval.0 = phi double [ %add84, %if.else87 ], [ %conv82, %if.end80 ]
  ret double %retval.0, !dbg !1476
}

; Function Attrs: optsize
declare void @reset_coding_state_cs_cm(...) #4

; Function Attrs: optsize
declare i32 @RDCost_for_4x4Blocks_Chroma(i32, i32, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma8x8(i32 %b8, i32* nocapture %coeff_cost, i32 %intra) #0 {
entry:
  %m6 = alloca [8 x [8 x i32]], align 16
  %scan_poss = alloca [4 x i32], align 16
  %runs = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata !{i32 %b8}, i64 0, metadata !447), !dbg !1477
  call void @llvm.dbg.value(metadata !{i32* %coeff_cost}, i64 0, metadata !448), !dbg !1477
  call void @llvm.dbg.value(metadata !{i32 %intra}, i64 0, metadata !449), !dbg !1477
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !462), !dbg !1478
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !463), !dbg !1478
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !464), !dbg !1478
  %rem = srem i32 %b8, 2, !dbg !1479
  %mul = shl nsw i32 %rem, 3, !dbg !1479
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !465), !dbg !1479
  %div = sdiv i32 %b8, 2, !dbg !1480
  %mul1 = shl nsw i32 %div, 3, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %mul1}, i64 0, metadata !466), !dbg !1480
  %idxprom = sext i32 %b8 to i64, !dbg !1481
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1481, !tbaa !874
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47, !dbg !1481
  %1 = load i32***** %cofAC, align 8, !dbg !1481, !tbaa !874
  %arrayidx = getelementptr inbounds i32**** %1, i64 %idxprom, !dbg !1481
  %2 = load i32**** %arrayidx, align 8, !dbg !1481, !tbaa !874
  %3 = load i32*** %2, align 8, !dbg !1481, !tbaa !874
  %4 = load i32** %3, align 8, !dbg !1481, !tbaa !874
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !467), !dbg !1481
  %arrayidx8 = getelementptr inbounds i32** %3, i64 1, !dbg !1482
  %5 = load i32** %arrayidx8, align 8, !dbg !1482, !tbaa !874
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !468), !dbg !1482
  %6 = bitcast [8 x [8 x i32]]* %m6 to i8*, !dbg !1483
  call void @llvm.lifetime.start(i64 256, i8* %6) #3, !dbg !1483
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i32]]* %m6}, metadata !469), !dbg !1483
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %scan_poss}, metadata !471), !dbg !1484
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %runs}, metadata !472), !dbg !1484
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1485
  %7 = load i32* %current_mb_nr, align 4, !dbg !1485, !tbaa !853
  %idxprom9 = sext i32 %7 to i64, !dbg !1485
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1485
  %8 = load %struct.macroblock** %mb_data, align 8, !dbg !1485, !tbaa !874
  %qp = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 10, !dbg !1486
  %9 = load i32* %qp, align 4, !dbg !1486, !tbaa !853
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151, !dbg !1486
  %10 = load i32* %bitdepth_luma_qp_scale, align 4, !dbg !1486, !tbaa !853
  %add = sub i32 0, %10, !dbg !1486
  %cmp = icmp eq i32 %9, %add, !dbg !1486
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1486

land.rhs:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160, !dbg !1486
  %11 = load i32* %lossless_qpprime_flag, align 4, !dbg !1486, !tbaa !853
  %cmp11 = icmp eq i32 %11, 1, !dbg !1486
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %add14 = add nsw i32 %10, %9, !dbg !1487
  %div15 = sdiv i32 %add14, 6, !dbg !1487
  call void @llvm.dbg.value(metadata !{i32 %div15}, i64 0, metadata !459), !dbg !1487
  %rem20 = srem i32 %add14, 6, !dbg !1488
  call void @llvm.dbg.value(metadata !{i32 %rem20}, i64 0, metadata !460), !dbg !1488
  %add21 = add nsw i32 %div15, 16, !dbg !1489
  call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !461), !dbg !1489
  %cmp22 = icmp slt i32 %add14, 36, !dbg !1490
  br i1 %cmp22, label %if.then, label %if.else, !dbg !1490

if.then:                                          ; preds = %land.end
  %sub23 = sub nsw i32 6, %div15, !dbg !1491
  call void @llvm.dbg.value(metadata !{i32 %sub23}, i64 0, metadata !463), !dbg !1491
  %sub24 = sub nsw i32 5, %div15, !dbg !1493
  %shl = shl i32 1, %sub24, !dbg !1493
  call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !464), !dbg !1493
  br label %if.end, !dbg !1494

if.else:                                          ; preds = %land.end
  %sub25 = add nsw i32 %div15, -6, !dbg !1495
  call void @llvm.dbg.value(metadata !{i32 %sub25}, i64 0, metadata !462), !dbg !1495
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dq_round.0 = phi i32 [ %shl, %if.then ], [ 0, %if.else ]
  %dq_rshift.0 = phi i32 [ %sub23, %if.then ], [ 0, %if.else ]
  %dq_lshift.0 = phi i32 [ 0, %if.then ], [ %sub25, %if.else ]
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !450), !dbg !1496
  br i1 %12, label %for.end414, label %for.body, !dbg !1496

for.cond223.preheader:                            ; preds = %for.body
  br i1 %12, label %for.end414, label %for.body230, !dbg !1497

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv1708 = phi i64 [ %indvars.iv.next1709, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.declare(metadata !1498, metadata !475), !dbg !1499
  call void @llvm.dbg.declare(metadata !1498, metadata !478), !dbg !1499
  %arrayidx40 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv1708, !dbg !1500
  %13 = load i32* %arrayidx40, align 4, !dbg !1500, !tbaa !853
  %arrayidx44 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 7, i64 %indvars.iv1708, !dbg !1500
  %14 = load i32* %arrayidx44, align 4, !dbg !1500, !tbaa !853
  %add45 = add nsw i32 %14, %13, !dbg !1500
  %arrayidx50 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv1708, !dbg !1501
  %15 = load i32* %arrayidx50, align 4, !dbg !1501, !tbaa !853
  %arrayidx54 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 6, i64 %indvars.iv1708, !dbg !1501
  %16 = load i32* %arrayidx54, align 4, !dbg !1501, !tbaa !853
  %add55 = add nsw i32 %16, %15, !dbg !1501
  %arrayidx60 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv1708, !dbg !1502
  %17 = load i32* %arrayidx60, align 4, !dbg !1502, !tbaa !853
  %arrayidx64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 5, i64 %indvars.iv1708, !dbg !1502
  %18 = load i32* %arrayidx64, align 4, !dbg !1502, !tbaa !853
  %add65 = add nsw i32 %18, %17, !dbg !1502
  %arrayidx70 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv1708, !dbg !1503
  %19 = load i32* %arrayidx70, align 4, !dbg !1503, !tbaa !853
  %arrayidx74 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 %indvars.iv1708, !dbg !1503
  %20 = load i32* %arrayidx74, align 4, !dbg !1503, !tbaa !853
  %add75 = add nsw i32 %20, %19, !dbg !1503
  %add79 = add nsw i32 %add75, %add45, !dbg !1504
  %add83 = add nsw i32 %add65, %add55, !dbg !1505
  %sub87 = sub nsw i32 %add45, %add75, !dbg !1506
  %sub91 = sub nsw i32 %add55, %add65, !dbg !1507
  %sub101 = sub nsw i32 %13, %14, !dbg !1508
  %sub111 = sub nsw i32 %15, %16, !dbg !1509
  %sub121 = sub nsw i32 %17, %18, !dbg !1510
  %sub131 = sub nsw i32 %19, %20, !dbg !1511
  %shr = ashr i32 %sub101, 1, !dbg !1512
  %add138 = add nsw i32 %shr, %sub101, !dbg !1512
  %add135 = add i32 %add138, %sub111, !dbg !1512
  %add139 = add i32 %add135, %sub121, !dbg !1512
  %sub143 = sub nsw i32 %sub101, %sub131, !dbg !1513
  %shr145 = ashr i32 %sub121, 1, !dbg !1513
  %sum = add i32 %shr145, %sub121, !dbg !1513
  %sub148 = sub i32 %sub143, %sum, !dbg !1513
  %shr154 = ashr i32 %sub111, 1, !dbg !1514
  %add156.neg = sub i32 %sub101, %sub111, !dbg !1514
  %add152 = sub i32 %add156.neg, %shr154, !dbg !1514
  %sub157 = add i32 %add152, %sub131, !dbg !1514
  %sub161 = sub nsw i32 %sub111, %sub121, !dbg !1515
  %shr163 = ashr i32 %sub131, 1, !dbg !1515
  %add165 = add i32 %sub131, %sub161, !dbg !1515
  %add166 = add i32 %add165, %shr163, !dbg !1515
  %add170 = add nsw i32 %add79, %add83, !dbg !1516
  %arrayidx173 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 0, i64 %indvars.iv1708, !dbg !1516
  store i32 %add170, i32* %arrayidx173, align 4, !dbg !1516, !tbaa !853
  %shr176 = ashr i32 %sub91, 1, !dbg !1517
  %add177 = add nsw i32 %sub87, %shr176, !dbg !1517
  %arrayidx180 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 2, i64 %indvars.iv1708, !dbg !1517
  store i32 %add177, i32* %arrayidx180, align 4, !dbg !1517, !tbaa !853
  %sub183 = sub nsw i32 %add79, %add83, !dbg !1518
  %arrayidx186 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 4, i64 %indvars.iv1708, !dbg !1518
  store i32 %sub183, i32* %arrayidx186, align 4, !dbg !1518, !tbaa !853
  %shr188 = ashr i32 %sub87, 1, !dbg !1519
  %sub190 = sub nsw i32 %shr188, %sub91, !dbg !1519
  %arrayidx193 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 6, i64 %indvars.iv1708, !dbg !1519
  store i32 %sub190, i32* %arrayidx193, align 4, !dbg !1519, !tbaa !853
  %shr196 = ashr i32 %add166, 2, !dbg !1520
  %add197 = add nsw i32 %shr196, %add139, !dbg !1520
  %arrayidx200 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 1, i64 %indvars.iv1708, !dbg !1520
  store i32 %add197, i32* %arrayidx200, align 4, !dbg !1520, !tbaa !853
  %shr203 = ashr i32 %sub157, 2, !dbg !1521
  %add204 = add nsw i32 %sub148, %shr203, !dbg !1521
  %arrayidx207 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 3, i64 %indvars.iv1708, !dbg !1521
  store i32 %add204, i32* %arrayidx207, align 4, !dbg !1521, !tbaa !853
  %shr210 = ashr i32 %sub148, 2, !dbg !1522
  %sub211 = sub nsw i32 %sub157, %shr210, !dbg !1522
  %arrayidx214 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 5, i64 %indvars.iv1708, !dbg !1522
  store i32 %sub211, i32* %arrayidx214, align 4, !dbg !1522, !tbaa !853
  %shr218 = ashr i32 %add139, 2, !dbg !1523
  %add219 = sub i32 %shr218, %add166, !dbg !1523
  %arrayidx222 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 7, i64 %indvars.iv1708, !dbg !1523
  store i32 %add219, i32* %arrayidx222, align 4, !dbg !1523, !tbaa !853
  %indvars.iv.next1709 = add i64 %indvars.iv1708, 1, !dbg !1496
  %21 = trunc i64 %indvars.iv1708 to i32, !dbg !1496
  %cmp34.not = icmp sgt i32 %21, 6, !dbg !1496
  br i1 %cmp34.not, label %for.cond223.preheader, label %for.body, !dbg !1496

for.body230:                                      ; preds = %for.cond223.preheader, %for.body230
  %indvars.iv1706 = phi i64 [ %indvars.iv.next1707, %for.body230 ], [ 0, %for.cond223.preheader ]
  call void @llvm.dbg.declare(metadata !1498, metadata !479), !dbg !1524
  call void @llvm.dbg.declare(metadata !1498, metadata !482), !dbg !1524
  %arrayidx235 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 0, !dbg !1525
  %22 = load i32* %arrayidx235, align 16, !dbg !1525, !tbaa !853
  %arrayidx238 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 7, !dbg !1525
  %23 = load i32* %arrayidx238, align 4, !dbg !1525, !tbaa !853
  %add239 = add nsw i32 %23, %22, !dbg !1525
  %arrayidx243 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 1, !dbg !1526
  %24 = load i32* %arrayidx243, align 4, !dbg !1526, !tbaa !853
  %arrayidx246 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 6, !dbg !1526
  %25 = load i32* %arrayidx246, align 8, !dbg !1526, !tbaa !853
  %add247 = add nsw i32 %25, %24, !dbg !1526
  %arrayidx251 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 2, !dbg !1527
  %26 = load i32* %arrayidx251, align 8, !dbg !1527, !tbaa !853
  %arrayidx254 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 5, !dbg !1527
  %27 = load i32* %arrayidx254, align 4, !dbg !1527, !tbaa !853
  %add255 = add nsw i32 %27, %26, !dbg !1527
  %arrayidx259 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 3, !dbg !1528
  %28 = load i32* %arrayidx259, align 4, !dbg !1528, !tbaa !853
  %arrayidx262 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 4, !dbg !1528
  %29 = load i32* %arrayidx262, align 16, !dbg !1528, !tbaa !853
  %add263 = add nsw i32 %29, %28, !dbg !1528
  %add267 = add nsw i32 %add263, %add239, !dbg !1529
  %add271 = add nsw i32 %add255, %add247, !dbg !1530
  %sub275 = sub nsw i32 %add239, %add263, !dbg !1531
  %sub279 = sub nsw i32 %add247, %add255, !dbg !1532
  %sub287 = sub nsw i32 %22, %23, !dbg !1533
  %sub295 = sub nsw i32 %24, %25, !dbg !1534
  %sub303 = sub nsw i32 %26, %27, !dbg !1535
  %sub311 = sub nsw i32 %28, %29, !dbg !1536
  %shr317 = ashr i32 %sub287, 1, !dbg !1537
  %add319 = add nsw i32 %shr317, %sub287, !dbg !1537
  %add315 = add i32 %add319, %sub295, !dbg !1537
  %add320 = add i32 %add315, %sub303, !dbg !1537
  %sub324 = sub nsw i32 %sub287, %sub311, !dbg !1538
  %shr326 = ashr i32 %sub303, 1, !dbg !1538
  %sum1675 = add i32 %shr326, %sub303, !dbg !1538
  %sub329 = sub i32 %sub324, %sum1675, !dbg !1538
  %shr335 = ashr i32 %sub295, 1, !dbg !1539
  %add337.neg = sub i32 %sub287, %sub295, !dbg !1539
  %add333 = sub i32 %add337.neg, %shr335, !dbg !1539
  %sub338 = add i32 %add333, %sub311, !dbg !1539
  %sub342 = sub nsw i32 %sub295, %sub303, !dbg !1540
  %shr344 = ashr i32 %sub311, 1, !dbg !1540
  %add346 = add i32 %sub311, %sub342, !dbg !1540
  %add347 = add i32 %add346, %shr344, !dbg !1540
  %add351 = add nsw i32 %add267, %add271, !dbg !1541
  %arrayidx355 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 0, !dbg !1541
  store i32 %add351, i32* %arrayidx355, align 4, !dbg !1541, !tbaa !853
  %shr358 = ashr i32 %sub279, 1, !dbg !1542
  %add359 = add nsw i32 %sub275, %shr358, !dbg !1542
  %arrayidx363 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 2, !dbg !1542
  store i32 %add359, i32* %arrayidx363, align 4, !dbg !1542, !tbaa !853
  %sub366 = sub nsw i32 %add267, %add271, !dbg !1543
  %arrayidx370 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 4, !dbg !1543
  store i32 %sub366, i32* %arrayidx370, align 4, !dbg !1543, !tbaa !853
  %shr372 = ashr i32 %sub275, 1, !dbg !1544
  %sub374 = sub nsw i32 %shr372, %sub279, !dbg !1544
  %arrayidx378 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 6, !dbg !1544
  store i32 %sub374, i32* %arrayidx378, align 4, !dbg !1544, !tbaa !853
  %shr381 = ashr i32 %add347, 2, !dbg !1545
  %add382 = add nsw i32 %shr381, %add320, !dbg !1545
  %arrayidx386 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 1, !dbg !1545
  store i32 %add382, i32* %arrayidx386, align 4, !dbg !1545, !tbaa !853
  %shr389 = ashr i32 %sub338, 2, !dbg !1546
  %add390 = add nsw i32 %sub329, %shr389, !dbg !1546
  %arrayidx394 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 3, !dbg !1546
  store i32 %add390, i32* %arrayidx394, align 4, !dbg !1546, !tbaa !853
  %shr397 = ashr i32 %sub329, 2, !dbg !1547
  %sub398 = sub nsw i32 %sub338, %shr397, !dbg !1547
  %arrayidx402 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 5, !dbg !1547
  store i32 %sub398, i32* %arrayidx402, align 4, !dbg !1547, !tbaa !853
  %shr406 = ashr i32 %add320, 2, !dbg !1548
  %add407 = sub i32 %shr406, %add347, !dbg !1548
  %arrayidx411 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 7, !dbg !1548
  store i32 %add407, i32* %arrayidx411, align 4, !dbg !1548, !tbaa !853
  %indvars.iv.next1707 = add i64 %indvars.iv1706, 1, !dbg !1497
  %30 = trunc i64 %indvars.iv1706 to i32, !dbg !1497
  %cmp224.not = icmp sgt i32 %30, 6, !dbg !1497
  br i1 %cmp224.not, label %for.end414, label %for.body230, !dbg !1497

for.end414:                                       ; preds = %if.end, %for.body230, %for.cond223.preheader
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !458), !dbg !1549
  call void @llvm.dbg.value(metadata !1550, i64 0, metadata !457), !dbg !1551
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !456), !dbg !1552
  %31 = bitcast [4 x i32]* %runs to i8*, !dbg !1553
  call void @llvm.memset.p0i8.i64(i8* %31, i8 -1, i64 16, i32 16, i1 false), !dbg !1554
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !453), !dbg !1555
  %mb_field = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom9, i32 22, !dbg !1557
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom9, i32 32, !dbg !1559
  %cmp605 = icmp eq i32 %intra, 1, !dbg !1561
  %cmp608 = icmp sgt i32 %add14, 35, !dbg !1562
  %idxprom613 = sext i32 %rem20 to i64, !dbg !1564
  %idxprom477 = sext i32 %div15 to i64, !dbg !1565
  %32 = bitcast [4 x i32]* %scan_poss to i8*, !dbg !1555
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 16, i32 16, i1 false), !dbg !1553
  br label %for.body425, !dbg !1555

for.body425:                                      ; preds = %for.inc664.for.body425_crit_edge, %for.end414
  %33 = phi %struct.ImageParameters* [ %0, %for.end414 ], [ %.pre1710, %for.inc664.for.body425_crit_edge ], !dbg !1557
  %indvars.iv1702 = phi i64 [ 0, %for.end414 ], [ %indvars.iv.next1703, %for.inc664.for.body425_crit_edge ]
  %scan_pos.01670 = phi i32 [ 0, %for.end414 ], [ %scan_pos.21650, %for.inc664.for.body425_crit_edge ]
  %run.01669 = phi i32 [ -1, %for.end414 ], [ %run.21649, %for.inc664.for.body425_crit_edge ]
  %nonzero.01668 = phi i32 [ 0, %for.end414 ], [ %nonzero.11648, %for.inc664.for.body425_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 100, !dbg !1557
  %34 = load i32* %field_picture, align 4, !dbg !1557, !tbaa !853
  %tobool426 = icmp eq i32 %34, 0, !dbg !1557
  br i1 %tobool426, label %lor.lhs.false, label %if.end446, !dbg !1557

lor.lhs.false:                                    ; preds = %for.body425
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 90, !dbg !1557
  %35 = load i32* %MbaffFrameFlag, align 4, !dbg !1557, !tbaa !853
  %tobool427 = icmp eq i32 %35, 0, !dbg !1557
  br i1 %tobool427, label %if.else437, label %land.lhs.true, !dbg !1557

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load i32* %mb_field, align 4, !dbg !1557, !tbaa !853
  %tobool428 = icmp eq i32 %36, 0, !dbg !1557
  br i1 %tobool428, label %if.else437, label %if.end446, !dbg !1557

if.else437:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end446

if.end446:                                        ; preds = %for.body425, %land.lhs.true, %if.else437
  %FIELD_SCAN8x8.pn = phi [64 x [2 x i8]]* [ @SNGL_SCAN8x8, %if.else437 ], [ @FIELD_SCAN8x8, %land.lhs.true ], [ @FIELD_SCAN8x8, %for.body425 ]
  %i.2.in.in = getelementptr inbounds [64 x [2 x i8]]* %FIELD_SCAN8x8.pn, i64 0, i64 %indvars.iv1702, i64 0, !dbg !1566
  %j.0.in.in = getelementptr inbounds [64 x [2 x i8]]* %FIELD_SCAN8x8.pn, i64 0, i64 %indvars.iv1702, i64 1, !dbg !1568
  %i.2.in = load i8* %i.2.in.in, align 2, !dbg !1566
  %j.0.in = load i8* %j.0.in.in, align 1, !dbg !1568
  %inc447 = add nsw i32 %run.01669, 1, !dbg !1569
  call void @llvm.dbg.value(metadata !{i32 %inc447}, i64 0, metadata !457), !dbg !1569
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !452), !dbg !1570
  %and = and i64 %indvars.iv1702, 3, !dbg !1571
  %arrayidx449 = getelementptr inbounds [4 x i32]* %runs, i64 0, i64 %and, !dbg !1571
  %37 = load i32* %arrayidx449, align 4, !dbg !1571, !tbaa !853
  %inc450 = add nsw i32 %37, 1, !dbg !1571
  store i32 %inc450, i32* %arrayidx449, align 4, !dbg !1571, !tbaa !853
  %idxprom453 = zext i8 %j.0.in to i64, !dbg !1572
  %idxprom454 = zext i8 %i.2.in to i64, !dbg !1572
  %arrayidx457 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom454, i64 %idxprom453, !dbg !1572
  %38 = load i32* %arrayidx457, align 4, !dbg !1572, !tbaa !853
  %ispos1643 = icmp sgt i32 %38, -1, !dbg !1572
  %neg1644 = sub i32 0, %38, !dbg !1572
  %39 = select i1 %ispos1643, i32 %38, i32 %neg1644, !dbg !1572
  br i1 %12, label %if.end506, label %if.else458, !dbg !1573

if.else458:                                       ; preds = %if.end446
  br i1 %cmp605, label %if.then461, label %if.else483, !dbg !1574

if.then461:                                       ; preds = %if.else458
  %arrayidx473 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %idxprom613, i64 %idxprom454, i64 %idxprom453, !dbg !1565
  %40 = load i32* %arrayidx473, align 4, !dbg !1565, !tbaa !853
  %mul474 = mul nsw i32 %40, %39, !dbg !1565
  %arrayidx480 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %idxprom477, i64 %idxprom454, i64 %idxprom453, !dbg !1565
  %41 = load i32* %arrayidx480, align 4, !dbg !1565, !tbaa !853
  %add481 = add nsw i32 %mul474, %41, !dbg !1565
  %shr482 = ashr i32 %add481, %add21, !dbg !1565
  call void @llvm.dbg.value(metadata !{i32 %shr482}, i64 0, metadata !455), !dbg !1565
  br label %if.end506, !dbg !1565

if.else483:                                       ; preds = %if.else458
  %arrayidx495 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %idxprom613, i64 %idxprom454, i64 %idxprom453, !dbg !1575
  %42 = load i32* %arrayidx495, align 4, !dbg !1575, !tbaa !853
  %mul496 = mul nsw i32 %42, %39, !dbg !1575
  %arrayidx502 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %idxprom477, i64 %idxprom454, i64 %idxprom453, !dbg !1575
  %43 = load i32* %arrayidx502, align 4, !dbg !1575, !tbaa !853
  %add503 = add nsw i32 %mul496, %43, !dbg !1575
  %shr504 = ashr i32 %add503, %add21, !dbg !1575
  call void @llvm.dbg.value(metadata !{i32 %shr504}, i64 0, metadata !455), !dbg !1575
  br label %if.end506

if.end506:                                        ; preds = %if.end446, %if.then461, %if.else483
  %level.0 = phi i32 [ %shr482, %if.then461 ], [ %shr504, %if.else483 ], [ %39, %if.end446 ]
  %cmp507 = icmp eq i32 %level.0, 0, !dbg !1576
  br i1 %cmp507, label %if.end655, label %if.then509, !dbg !1576

if.then509:                                       ; preds = %if.end506
  call void @llvm.dbg.value(metadata !1577, i64 0, metadata !458), !dbg !1578
  %44 = load i32* %luma_transform_size_8x8_flag, align 4, !dbg !1559, !tbaa !853
  %tobool510 = icmp eq i32 %44, 0, !dbg !1559
  br i1 %tobool510, label %if.else570, label %land.lhs.true511, !dbg !1559

land.lhs.true511:                                 ; preds = %if.then509
  %45 = load %struct.InputParameters** @input, align 8, !dbg !1559, !tbaa !874
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 59, !dbg !1559
  %46 = load i32* %symbol_mode, align 4, !dbg !1559, !tbaa !853
  %cmp512 = icmp eq i32 %46, 0, !dbg !1559
  br i1 %cmp512, label %if.then514, label %if.else570, !dbg !1559

if.then514:                                       ; preds = %land.lhs.true511
  %cmp515 = icmp sgt i32 %level.0, 1, !dbg !1579
  br i1 %cmp515, label %if.then517, label %if.else519, !dbg !1579

if.then517:                                       ; preds = %if.then514
  %47 = load i32* %coeff_cost, align 4, !dbg !1581, !tbaa !853
  %add518 = add nsw i32 %47, 999999, !dbg !1581
  br label %if.end529, !dbg !1581

if.else519:                                       ; preds = %if.then514
  %idxprom523 = sext i32 %inc450 to i64, !dbg !1582
  %disthres = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 86, !dbg !1582
  %48 = load i32* %disthres, align 4, !dbg !1582, !tbaa !853
  %idxprom524 = sext i32 %48 to i64, !dbg !1582
  %arrayidx526 = getelementptr inbounds [2 x [64 x i8]]* @COEFF_COST8x8, i64 0, i64 %idxprom524, i64 %idxprom523, !dbg !1582
  %49 = load i8* %arrayidx526, align 1, !dbg !1582, !tbaa !854
  %conv527 = zext i8 %49 to i32, !dbg !1582
  %50 = load i32* %coeff_cost, align 4, !dbg !1582, !tbaa !853
  %add528 = add nsw i32 %50, %conv527, !dbg !1582
  br label %if.end529

if.end529:                                        ; preds = %if.else519, %if.then517
  %storemerge1642 = phi i32 [ %add528, %if.else519 ], [ %add518, %if.then517 ]
  store i32 %storemerge1642, i32* %coeff_cost, align 4, !dbg !1581, !tbaa !853
  %idxprom530 = zext i8 %j.0.in to i64, !dbg !1583
  %idxprom531 = zext i8 %i.2.in to i64, !dbg !1583
  %arrayidx534 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom531, i64 %idxprom530, !dbg !1583
  %51 = load i32* %arrayidx534, align 4, !dbg !1583, !tbaa !853
  %call535 = call i32 @sign(i32 %level.0, i32 %51) #7, !dbg !1583
  %arrayidx538 = getelementptr inbounds [4 x i32]* %scan_poss, i64 0, i64 %and, !dbg !1583
  %52 = load i32* %arrayidx538, align 4, !dbg !1583, !tbaa !853
  %idxprom539 = sext i32 %52 to i64, !dbg !1583
  %53 = load %struct.ImageParameters** @img, align 8, !dbg !1583, !tbaa !874
  %cofAC543 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 47, !dbg !1583
  %54 = load i32***** %cofAC543, align 8, !dbg !1583, !tbaa !874
  %arrayidx544 = getelementptr inbounds i32**** %54, i64 %idxprom, !dbg !1583
  %55 = load i32**** %arrayidx544, align 8, !dbg !1583, !tbaa !874
  %arrayidx545 = getelementptr inbounds i32*** %55, i64 %and, !dbg !1583
  %56 = load i32*** %arrayidx545, align 8, !dbg !1583, !tbaa !874
  %57 = load i32** %56, align 8, !dbg !1583, !tbaa !874
  %arrayidx547 = getelementptr inbounds i32* %57, i64 %idxprom539, !dbg !1583
  store i32 %call535, i32* %arrayidx547, align 4, !dbg !1583, !tbaa !853
  %arrayidx561 = getelementptr inbounds i32** %56, i64 1, !dbg !1584
  %58 = load i32** %arrayidx561, align 8, !dbg !1584, !tbaa !874
  %arrayidx562 = getelementptr inbounds i32* %58, i64 %idxprom539, !dbg !1584
  store i32 %inc450, i32* %arrayidx562, align 4, !dbg !1584, !tbaa !853
  %inc566 = add nsw i32 %52, 1, !dbg !1585
  store i32 %inc566, i32* %arrayidx538, align 4, !dbg !1585, !tbaa !853
  store i32 -1, i32* %arrayidx449, align 4, !dbg !1586, !tbaa !853
  br label %if.end595, !dbg !1587

if.else570:                                       ; preds = %if.then509, %land.lhs.true511
  %cmp571 = icmp sgt i32 %level.0, 1, !dbg !1588
  br i1 %cmp571, label %if.then573, label %if.else575, !dbg !1588

if.then573:                                       ; preds = %if.else570
  %59 = load i32* %coeff_cost, align 4, !dbg !1590, !tbaa !853
  %add574 = add nsw i32 %59, 999999, !dbg !1590
  br label %if.end583, !dbg !1590

if.else575:                                       ; preds = %if.else570
  %idxprom576 = sext i32 %inc447 to i64, !dbg !1591
  %60 = load %struct.InputParameters** @input, align 8, !dbg !1591, !tbaa !874
  %disthres577 = getelementptr inbounds %struct.InputParameters* %60, i64 0, i32 86, !dbg !1591
  %61 = load i32* %disthres577, align 4, !dbg !1591, !tbaa !853
  %idxprom578 = sext i32 %61 to i64, !dbg !1591
  %arrayidx580 = getelementptr inbounds [2 x [64 x i8]]* @COEFF_COST8x8, i64 0, i64 %idxprom578, i64 %idxprom576, !dbg !1591
  %62 = load i8* %arrayidx580, align 1, !dbg !1591, !tbaa !854
  %conv581 = zext i8 %62 to i32, !dbg !1591
  %63 = load i32* %coeff_cost, align 4, !dbg !1591, !tbaa !853
  %add582 = add nsw i32 %63, %conv581, !dbg !1591
  br label %if.end583

if.end583:                                        ; preds = %if.else575, %if.then573
  %storemerge = phi i32 [ %add582, %if.else575 ], [ %add574, %if.then573 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !dbg !1590, !tbaa !853
  %idxprom584 = zext i8 %j.0.in to i64, !dbg !1592
  %idxprom585 = zext i8 %i.2.in to i64, !dbg !1592
  %arrayidx588 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom585, i64 %idxprom584, !dbg !1592
  %64 = load i32* %arrayidx588, align 4, !dbg !1592, !tbaa !853
  %call589 = call i32 @sign(i32 %level.0, i32 %64) #7, !dbg !1592
  %idxprom590 = sext i32 %scan_pos.01670 to i64, !dbg !1592
  %arrayidx591 = getelementptr inbounds i32* %4, i64 %idxprom590, !dbg !1592
  store i32 %call589, i32* %arrayidx591, align 4, !dbg !1592, !tbaa !853
  %arrayidx593 = getelementptr inbounds i32* %5, i64 %idxprom590, !dbg !1593
  store i32 %inc447, i32* %arrayidx593, align 4, !dbg !1593, !tbaa !853
  %inc594 = add nsw i32 %scan_pos.01670, 1, !dbg !1594
  call void @llvm.dbg.value(metadata !{i32 %inc594}, i64 0, metadata !456), !dbg !1594
  call void @llvm.dbg.value(metadata !1550, i64 0, metadata !457), !dbg !1595
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1596, !tbaa !874
  br label %if.end595

if.end595:                                        ; preds = %if.end583, %if.end529
  %65 = phi %struct.ImageParameters* [ %53, %if.end529 ], [ %.pre, %if.end583 ]
  %run.1 = phi i32 [ %inc447, %if.end529 ], [ -1, %if.end583 ]
  %scan_pos.1 = phi i32 [ %scan_pos.01670, %if.end529 ], [ %inc594, %if.end583 ]
  %idxprom596 = zext i8 %j.0.in to i64, !dbg !1596
  %idxprom597 = zext i8 %i.2.in to i64, !dbg !1596
  %arrayidx600 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 46, i64 %idxprom597, i64 %idxprom596, !dbg !1596
  %66 = load i32* %arrayidx600, align 4, !dbg !1596, !tbaa !853
  %call601 = call i32 @sign(i32 %level.0, i32 %66) #7, !dbg !1596
  call void @llvm.dbg.value(metadata !{i32 %call601}, i64 0, metadata !455), !dbg !1596
  br i1 %12, label %for.inc664, label %if.else604, !dbg !1597

if.else604:                                       ; preds = %if.end595
  br i1 %cmp605, label %if.then607, label %if.else630, !dbg !1561

if.then607:                                       ; preds = %if.else604
  %arrayidx616 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %idxprom613, i64 %idxprom597, i64 %idxprom596, !dbg !1564
  %67 = load i32* %arrayidx616, align 4, !dbg !1564, !tbaa !853
  %mul617 = mul nsw i32 %67, %call601, !dbg !1564
  br i1 %cmp608, label %if.then610, label %if.end655.thread1651, !dbg !1562

if.then610:                                       ; preds = %if.then607
  %shl618 = shl i32 %mul617, %dq_lshift.0, !dbg !1564
  call void @llvm.dbg.value(metadata !{i32 %shl618}, i64 0, metadata !452), !dbg !1564
  br label %if.end655, !dbg !1564

if.end655.thread1651:                             ; preds = %if.then607
  %add627 = add nsw i32 %mul617, %dq_round.0, !dbg !1598
  %shr628 = ashr i32 %add627, %dq_rshift.0, !dbg !1598
  call void @llvm.dbg.value(metadata !{i32 %shr628}, i64 0, metadata !452), !dbg !1598
  br label %if.then657, !dbg !1599

if.else630:                                       ; preds = %if.else604
  %arrayidx639 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %idxprom613, i64 %idxprom597, i64 %idxprom596, !dbg !1600
  %68 = load i32* %arrayidx639, align 4, !dbg !1600, !tbaa !853
  %mul640 = mul nsw i32 %68, %call601, !dbg !1600
  br i1 %cmp608, label %if.then633, label %if.end655.thread, !dbg !1602

if.then633:                                       ; preds = %if.else630
  %shl641 = shl i32 %mul640, %dq_lshift.0, !dbg !1600
  call void @llvm.dbg.value(metadata !{i32 %shl641}, i64 0, metadata !452), !dbg !1600
  br label %if.end655, !dbg !1600

if.end655.thread:                                 ; preds = %if.else630
  %add650 = add nsw i32 %mul640, %dq_round.0, !dbg !1603
  %shr651 = ashr i32 %add650, %dq_rshift.0, !dbg !1603
  call void @llvm.dbg.value(metadata !{i32 %shr651}, i64 0, metadata !452), !dbg !1603
  br label %if.end655.if.then657_crit_edge, !dbg !1599

if.end655:                                        ; preds = %if.end506, %if.then633, %if.then610
  %nonzero.1 = phi i32 [ 1, %if.then610 ], [ 1, %if.then633 ], [ %nonzero.01668, %if.end506 ]
  %run.2 = phi i32 [ %run.1, %if.then610 ], [ %run.1, %if.then633 ], [ %inc447, %if.end506 ]
  %scan_pos.2 = phi i32 [ %scan_pos.1, %if.then610 ], [ %scan_pos.1, %if.then633 ], [ %scan_pos.01670, %if.end506 ]
  %ilev.0 = phi i32 [ %shl618, %if.then610 ], [ %shl641, %if.then633 ], [ 0, %if.end506 ]
  br i1 %12, label %for.inc664, label %if.end655.if.then657_crit_edge, !dbg !1599

if.end655.if.then657_crit_edge:                   ; preds = %if.end655.thread, %if.end655
  %ilev.01716 = phi i32 [ %shr651, %if.end655.thread ], [ %ilev.0, %if.end655 ]
  %scan_pos.21715 = phi i32 [ %scan_pos.1, %if.end655.thread ], [ %scan_pos.2, %if.end655 ]
  %run.21714 = phi i32 [ %run.1, %if.end655.thread ], [ %run.2, %if.end655 ]
  %nonzero.11713 = phi i32 [ 1, %if.end655.thread ], [ %nonzero.1, %if.end655 ]
  %idxprom658.pre = zext i8 %j.0.in to i64, !dbg !1604
  %idxprom659.pre = zext i8 %i.2.in to i64, !dbg !1604
  br label %if.then657, !dbg !1599

if.then657:                                       ; preds = %if.end655.if.then657_crit_edge, %if.end655.thread1651
  %idxprom659.pre-phi = phi i64 [ %idxprom659.pre, %if.end655.if.then657_crit_edge ], [ %idxprom597, %if.end655.thread1651 ], !dbg !1604
  %idxprom658.pre-phi = phi i64 [ %idxprom658.pre, %if.end655.if.then657_crit_edge ], [ %idxprom596, %if.end655.thread1651 ], !dbg !1604
  %ilev.01655 = phi i32 [ %ilev.01716, %if.end655.if.then657_crit_edge ], [ %shr628, %if.end655.thread1651 ]
  %scan_pos.21654 = phi i32 [ %scan_pos.21715, %if.end655.if.then657_crit_edge ], [ %scan_pos.1, %if.end655.thread1651 ]
  %run.21653 = phi i32 [ %run.21714, %if.end655.if.then657_crit_edge ], [ %run.1, %if.end655.thread1651 ]
  %nonzero.11652 = phi i32 [ %nonzero.11713, %if.end655.if.then657_crit_edge ], [ 1, %if.end655.thread1651 ]
  %69 = load %struct.ImageParameters** @img, align 8, !dbg !1604, !tbaa !874
  %arrayidx662 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 46, i64 %idxprom659.pre-phi, i64 %idxprom658.pre-phi, !dbg !1604
  store i32 %ilev.01655, i32* %arrayidx662, align 4, !dbg !1604, !tbaa !853
  br label %for.inc664, !dbg !1604

for.inc664:                                       ; preds = %if.end595, %if.end655, %if.then657
  %scan_pos.21650 = phi i32 [ %scan_pos.2, %if.end655 ], [ %scan_pos.21654, %if.then657 ], [ %scan_pos.1, %if.end595 ]
  %run.21649 = phi i32 [ %run.2, %if.end655 ], [ %run.21653, %if.then657 ], [ %run.1, %if.end595 ]
  %nonzero.11648 = phi i32 [ %nonzero.1, %if.end655 ], [ %nonzero.11652, %if.then657 ], [ 1, %if.end595 ]
  %indvars.iv.next1703 = add i64 %indvars.iv1702, 1, !dbg !1555
  %lftr.wideiv1704 = trunc i64 %indvars.iv.next1703 to i32, !dbg !1555
  %exitcond1705 = icmp eq i32 %lftr.wideiv1704, 64, !dbg !1555
  br i1 %exitcond1705, label %for.end666, label %for.inc664.for.body425_crit_edge, !dbg !1555

for.inc664.for.body425_crit_edge:                 ; preds = %for.inc664
  %.pre1710 = load %struct.ImageParameters** @img, align 8, !dbg !1557, !tbaa !874
  br label %for.body425, !dbg !1555

for.end666:                                       ; preds = %for.inc664
  %70 = load i32* %luma_transform_size_8x8_flag, align 4, !dbg !1605, !tbaa !853
  %tobool668 = icmp eq i32 %70, 0, !dbg !1605
  br i1 %tobool668, label %if.then673, label %lor.lhs.false669, !dbg !1605

lor.lhs.false669:                                 ; preds = %for.end666
  %71 = load %struct.InputParameters** @input, align 8, !dbg !1605, !tbaa !874
  %symbol_mode670 = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 59, !dbg !1605
  %72 = load i32* %symbol_mode670, align 4, !dbg !1605, !tbaa !853
  %cmp671 = icmp eq i32 %72, 0, !dbg !1605
  br i1 %cmp671, label %for.cond677.preheader, label %if.then673, !dbg !1605

for.cond677.preheader:                            ; preds = %lor.lhs.false669
  %73 = load %struct.ImageParameters** @img, align 8, !dbg !1606, !tbaa !874
  %cofAC686 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 47, !dbg !1606
  %74 = load i32***** %cofAC686, align 8, !dbg !1606, !tbaa !874
  %arrayidx687 = getelementptr inbounds i32**** %74, i64 %idxprom, !dbg !1606
  %75 = load i32**** %arrayidx687, align 8, !dbg !1606, !tbaa !874
  br label %for.body680, !dbg !1608

if.then673:                                       ; preds = %lor.lhs.false669, %for.end666
  %idxprom674 = sext i32 %scan_pos.21650 to i64, !dbg !1609
  %arrayidx675 = getelementptr inbounds i32* %4, i64 %idxprom674, !dbg !1609
  store i32 0, i32* %arrayidx675, align 4, !dbg !1609, !tbaa !853
  br label %for.cond695.preheader, !dbg !1609

for.cond695.preheader:                            ; preds = %for.body680, %if.then673
  br i1 %12, label %for.cond922.preheader.for.cond1133.preheader_crit_edge, label %for.body703.lr.ph, !dbg !1610

for.body703.lr.ph:                                ; preds = %for.cond695.preheader
  %76 = load %struct.ImageParameters** @img, align 8, !dbg !1611, !tbaa !874
  br label %for.body703, !dbg !1610

for.body680:                                      ; preds = %for.body680, %for.cond677.preheader
  %indvars.iv1698 = phi i64 [ 0, %for.cond677.preheader ], [ %indvars.iv.next1699, %for.body680 ]
  %arrayidx682 = getelementptr inbounds [4 x i32]* %scan_poss, i64 0, i64 %indvars.iv1698, !dbg !1606
  %77 = load i32* %arrayidx682, align 4, !dbg !1606, !tbaa !853
  %idxprom683 = sext i32 %77 to i64, !dbg !1606
  %arrayidx688 = getelementptr inbounds i32*** %75, i64 %indvars.iv1698, !dbg !1606
  %78 = load i32*** %arrayidx688, align 8, !dbg !1606, !tbaa !874
  %79 = load i32** %78, align 8, !dbg !1606, !tbaa !874
  %arrayidx690 = getelementptr inbounds i32* %79, i64 %idxprom683, !dbg !1606
  store i32 0, i32* %arrayidx690, align 4, !dbg !1606, !tbaa !853
  %indvars.iv.next1699 = add i64 %indvars.iv1698, 1, !dbg !1608
  %lftr.wideiv1700 = trunc i64 %indvars.iv.next1699 to i32, !dbg !1608
  %exitcond1701 = icmp eq i32 %lftr.wideiv1700, 4, !dbg !1608
  br i1 %exitcond1701, label %for.cond695.preheader, label %for.body680, !dbg !1608

for.cond922.preheader:                            ; preds = %for.body703
  br i1 %12, label %for.cond922.preheader.for.cond1133.preheader_crit_edge, label %for.body930.lr.ph, !dbg !1612

for.cond922.preheader.for.cond1133.preheader_crit_edge: ; preds = %for.cond695.preheader, %for.cond922.preheader
  %.pre1711 = load %struct.ImageParameters** @img, align 8, !dbg !1613, !tbaa !874
  br label %for.cond1133.preheader, !dbg !1612

for.body930.lr.ph:                                ; preds = %for.cond922.preheader
  %80 = load %struct.ImageParameters** @img, align 8, !dbg !1617, !tbaa !874
  br label %for.body930, !dbg !1612

for.body703:                                      ; preds = %for.body703.lr.ph, %for.body703
  %indvars.iv1696 = phi i64 [ 0, %for.body703.lr.ph ], [ %indvars.iv.next1697, %for.body703 ]
  call void @llvm.dbg.declare(metadata !1498, metadata !483), !dbg !1618
  call void @llvm.dbg.declare(metadata !1498, metadata !486), !dbg !1618
  %arrayidx709 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 0, i64 %indvars.iv1696, !dbg !1611
  %81 = load i32* %arrayidx709, align 4, !dbg !1611, !tbaa !853
  %arrayidx713 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 4, i64 %indvars.iv1696, !dbg !1611
  %82 = load i32* %arrayidx713, align 4, !dbg !1611, !tbaa !853
  %add714 = add nsw i32 %82, %81, !dbg !1611
  %sub724 = sub nsw i32 %81, %82, !dbg !1619
  %arrayidx729 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 2, i64 %indvars.iv1696, !dbg !1620
  %83 = load i32* %arrayidx729, align 4, !dbg !1620, !tbaa !853
  %shr730 = ashr i32 %83, 1, !dbg !1620
  %arrayidx734 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 6, i64 %indvars.iv1696, !dbg !1620
  %84 = load i32* %arrayidx734, align 4, !dbg !1620, !tbaa !853
  %sub735 = sub nsw i32 %shr730, %84, !dbg !1620
  %shr745 = ashr i32 %84, 1, !dbg !1621
  %add746 = add nsw i32 %shr745, %83, !dbg !1621
  %add750 = add nsw i32 %add746, %add714, !dbg !1622
  %add754 = add nsw i32 %sub735, %sub724, !dbg !1623
  %sub758 = sub nsw i32 %sub724, %sub735, !dbg !1624
  %sub762 = sub nsw i32 %add714, %add746, !dbg !1625
  %arrayidx767 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 3, i64 %indvars.iv1696, !dbg !1626
  %85 = load i32* %arrayidx767, align 4, !dbg !1626, !tbaa !853
  %arrayidx772 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 5, i64 %indvars.iv1696, !dbg !1626
  %86 = load i32* %arrayidx772, align 4, !dbg !1626, !tbaa !853
  %add773 = sub i32 %86, %85, !dbg !1626
  %arrayidx777 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 7, i64 %indvars.iv1696, !dbg !1626
  %87 = load i32* %arrayidx777, align 4, !dbg !1626, !tbaa !853
  %sub778 = sub i32 %add773, %87, !dbg !1626
  %shr783 = ashr i32 %87, 1, !dbg !1626
  %sub784 = sub i32 %sub778, %shr783, !dbg !1626
  %arrayidx789 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 1, i64 %indvars.iv1696, !dbg !1627
  %88 = load i32* %arrayidx789, align 4, !dbg !1627, !tbaa !853
  %shr804 = ashr i32 %85, 1, !dbg !1627
  %sum1676 = add i32 %shr804, %85, !dbg !1627
  %sub799 = sub i32 %87, %sum1676, !dbg !1627
  %sub805 = add i32 %sub799, %88, !dbg !1627
  %shr826 = ashr i32 %86, 1, !dbg !1628
  %add816 = add i32 %87, %86, !dbg !1628
  %add821 = add i32 %add816, %shr826, !dbg !1628
  %add827 = sub i32 %add821, %88, !dbg !1628
  %add837 = add nsw i32 %86, %85, !dbg !1629
  %add842 = add nsw i32 %add837, %88, !dbg !1629
  %shr847 = ashr i32 %88, 1, !dbg !1629
  %add848 = add nsw i32 %add842, %shr847, !dbg !1629
  %shr852 = ashr i32 %add848, 2, !dbg !1630
  %add853 = add nsw i32 %shr852, %sub784, !dbg !1630
  %shr856 = ashr i32 %sub784, 2, !dbg !1631
  %add859 = sub i32 %add848, %shr856, !dbg !1631
  %shr863 = ashr i32 %add827, 2, !dbg !1632
  %add864 = add nsw i32 %shr863, %sub805, !dbg !1632
  %shr867 = ashr i32 %sub805, 2, !dbg !1633
  %sub869 = sub nsw i32 %shr867, %add827, !dbg !1633
  %add873 = add nsw i32 %add859, %add750, !dbg !1634
  %arrayidx876 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 0, i64 %indvars.iv1696, !dbg !1634
  store i32 %add873, i32* %arrayidx876, align 4, !dbg !1634, !tbaa !853
  %add879 = add nsw i32 %sub869, %add754, !dbg !1635
  %arrayidx882 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 1, i64 %indvars.iv1696, !dbg !1635
  store i32 %add879, i32* %arrayidx882, align 4, !dbg !1635, !tbaa !853
  %add885 = add nsw i32 %add864, %sub758, !dbg !1636
  %arrayidx888 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 2, i64 %indvars.iv1696, !dbg !1636
  store i32 %add885, i32* %arrayidx888, align 4, !dbg !1636, !tbaa !853
  %add891 = add nsw i32 %add853, %sub762, !dbg !1637
  %arrayidx894 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 3, i64 %indvars.iv1696, !dbg !1637
  store i32 %add891, i32* %arrayidx894, align 4, !dbg !1637, !tbaa !853
  %sub897 = sub nsw i32 %sub762, %add853, !dbg !1638
  %arrayidx900 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 4, i64 %indvars.iv1696, !dbg !1638
  store i32 %sub897, i32* %arrayidx900, align 4, !dbg !1638, !tbaa !853
  %sub903 = sub nsw i32 %sub758, %add864, !dbg !1639
  %arrayidx906 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 5, i64 %indvars.iv1696, !dbg !1639
  store i32 %sub903, i32* %arrayidx906, align 4, !dbg !1639, !tbaa !853
  %sub909 = sub nsw i32 %add754, %sub869, !dbg !1640
  %arrayidx912 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 6, i64 %indvars.iv1696, !dbg !1640
  store i32 %sub909, i32* %arrayidx912, align 4, !dbg !1640, !tbaa !853
  %sub915 = sub nsw i32 %add750, %add859, !dbg !1641
  %arrayidx918 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 7, i64 %indvars.iv1696, !dbg !1641
  store i32 %sub915, i32* %arrayidx918, align 4, !dbg !1641, !tbaa !853
  %indvars.iv.next1697 = add i64 %indvars.iv1696, 1, !dbg !1610
  %89 = trunc i64 %indvars.iv1696 to i32, !dbg !1610
  %cmp696.not = icmp sgt i32 %89, 6, !dbg !1610
  br i1 %cmp696.not, label %for.cond922.preheader, label %for.body703, !dbg !1610

for.cond1133.preheader:                           ; preds = %for.body930, %for.cond922.preheader.for.cond1133.preheader_crit_edge
  %90 = phi %struct.ImageParameters* [ %.pre1711, %for.cond922.preheader.for.cond1133.preheader_crit_edge ], [ %80, %for.body930 ]
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 164, !dbg !1642
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 155, !dbg !1644
  %91 = sext i32 %mul1 to i64, !dbg !1645
  %92 = sext i32 %mul to i64, !dbg !1645
  br label %for.cond1137.preheader, !dbg !1645

for.body930:                                      ; preds = %for.body930.lr.ph, %for.body930
  %indvars.iv1694 = phi i64 [ 0, %for.body930.lr.ph ], [ %indvars.iv.next1695, %for.body930 ]
  call void @llvm.dbg.declare(metadata !1498, metadata !487), !dbg !1646
  call void @llvm.dbg.declare(metadata !1498, metadata !490), !dbg !1646
  %arrayidx935 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 0, !dbg !1647
  %93 = load i32* %arrayidx935, align 16, !dbg !1647, !tbaa !853
  %arrayidx938 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 4, !dbg !1647
  %94 = load i32* %arrayidx938, align 16, !dbg !1647, !tbaa !853
  %add939 = add nsw i32 %94, %93, !dbg !1647
  %sub947 = sub nsw i32 %93, %94, !dbg !1648
  %arrayidx951 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 2, !dbg !1649
  %95 = load i32* %arrayidx951, align 8, !dbg !1649, !tbaa !853
  %shr952 = ashr i32 %95, 1, !dbg !1649
  %arrayidx955 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 6, !dbg !1649
  %96 = load i32* %arrayidx955, align 8, !dbg !1649, !tbaa !853
  %sub956 = sub nsw i32 %shr952, %96, !dbg !1649
  %shr964 = ashr i32 %96, 1, !dbg !1650
  %add965 = add nsw i32 %shr964, %95, !dbg !1650
  %add969 = add nsw i32 %add965, %add939, !dbg !1651
  %add973 = add nsw i32 %sub956, %sub947, !dbg !1652
  %sub977 = sub nsw i32 %sub947, %sub956, !dbg !1653
  %sub981 = sub nsw i32 %add939, %add965, !dbg !1654
  %arrayidx985 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 3, !dbg !1655
  %97 = load i32* %arrayidx985, align 4, !dbg !1655, !tbaa !853
  %arrayidx989 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 5, !dbg !1655
  %98 = load i32* %arrayidx989, align 4, !dbg !1655, !tbaa !853
  %add990 = sub i32 %98, %97, !dbg !1655
  %arrayidx993 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 7, !dbg !1655
  %99 = load i32* %arrayidx993, align 4, !dbg !1655, !tbaa !853
  %sub994 = sub i32 %add990, %99, !dbg !1655
  %shr998 = ashr i32 %99, 1, !dbg !1655
  %sub999 = sub i32 %sub994, %shr998, !dbg !1655
  %arrayidx1003 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 1, !dbg !1656
  %100 = load i32* %arrayidx1003, align 4, !dbg !1656, !tbaa !853
  %shr1015 = ashr i32 %97, 1, !dbg !1656
  %sum1677 = add i32 %shr1015, %97, !dbg !1656
  %sub1011 = sub i32 %99, %sum1677, !dbg !1656
  %sub1016 = add i32 %sub1011, %100, !dbg !1656
  %shr1033 = ashr i32 %98, 1, !dbg !1657
  %add1025 = add i32 %99, %98, !dbg !1657
  %add1029 = add i32 %add1025, %shr1033, !dbg !1657
  %add1034 = sub i32 %add1029, %100, !dbg !1657
  %add1042 = add nsw i32 %98, %97, !dbg !1658
  %add1046 = add nsw i32 %add1042, %100, !dbg !1658
  %shr1050 = ashr i32 %100, 1, !dbg !1658
  %add1051 = add nsw i32 %add1046, %shr1050, !dbg !1658
  %shr1055 = ashr i32 %add1051, 2, !dbg !1659
  %add1056 = add nsw i32 %shr1055, %sub999, !dbg !1659
  %shr1059 = ashr i32 %sub999, 2, !dbg !1660
  %add1062 = sub i32 %add1051, %shr1059, !dbg !1660
  %shr1066 = ashr i32 %add1034, 2, !dbg !1661
  %add1067 = add nsw i32 %shr1066, %sub1016, !dbg !1661
  %shr1070 = ashr i32 %sub1016, 2, !dbg !1662
  %sub1072 = sub nsw i32 %shr1070, %add1034, !dbg !1662
  %add1076 = add nsw i32 %add1062, %add969, !dbg !1617
  %arrayidx1080 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 0, !dbg !1617
  store i32 %add1076, i32* %arrayidx1080, align 4, !dbg !1617, !tbaa !853
  %add1083 = add nsw i32 %sub1072, %add973, !dbg !1663
  %arrayidx1087 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 1, !dbg !1663
  store i32 %add1083, i32* %arrayidx1087, align 4, !dbg !1663, !tbaa !853
  %add1090 = add nsw i32 %add1067, %sub977, !dbg !1664
  %arrayidx1094 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 2, !dbg !1664
  store i32 %add1090, i32* %arrayidx1094, align 4, !dbg !1664, !tbaa !853
  %add1097 = add nsw i32 %add1056, %sub981, !dbg !1665
  %arrayidx1101 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 3, !dbg !1665
  store i32 %add1097, i32* %arrayidx1101, align 4, !dbg !1665, !tbaa !853
  %sub1104 = sub nsw i32 %sub981, %add1056, !dbg !1666
  %arrayidx1108 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 4, !dbg !1666
  store i32 %sub1104, i32* %arrayidx1108, align 4, !dbg !1666, !tbaa !853
  %sub1111 = sub nsw i32 %sub977, %add1067, !dbg !1667
  %arrayidx1115 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 5, !dbg !1667
  store i32 %sub1111, i32* %arrayidx1115, align 4, !dbg !1667, !tbaa !853
  %sub1118 = sub nsw i32 %add973, %sub1072, !dbg !1668
  %arrayidx1122 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 6, !dbg !1668
  store i32 %sub1118, i32* %arrayidx1122, align 4, !dbg !1668, !tbaa !853
  %sub1125 = sub nsw i32 %add969, %add1062, !dbg !1669
  %arrayidx1129 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 7, !dbg !1669
  store i32 %sub1125, i32* %arrayidx1129, align 4, !dbg !1669, !tbaa !853
  %indvars.iv.next1695 = add i64 %indvars.iv1694, 1, !dbg !1612
  %101 = trunc i64 %indvars.iv1694 to i32, !dbg !1612
  %cmp923.not = icmp sgt i32 %101, 6, !dbg !1612
  br i1 %cmp923.not, label %for.cond1133.preheader, label %for.body930, !dbg !1612

for.cond1137.preheader:                           ; preds = %for.inc1277, %for.cond1133.preheader
  %indvars.iv1688 = phi i64 [ 0, %for.cond1133.preheader ], [ %indvars.iv.next1689, %for.inc1277 ]
  %102 = add nsw i64 %indvars.iv1688, %92, !dbg !1613
  br label %for.body1140, !dbg !1670

for.body1140:                                     ; preds = %for.inc1274, %for.cond1137.preheader
  %indvars.iv1682 = phi i64 [ 0, %for.cond1137.preheader ], [ %indvars.iv.next1683, %for.inc1274 ]
  br i1 %12, label %if.then1142, label %if.else1161, !dbg !1671

if.then1142:                                      ; preds = %for.body1140
  %arrayidx1147 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682, !dbg !1613
  %103 = load i32* %arrayidx1147, align 4, !dbg !1613, !tbaa !853
  %104 = add nsw i64 %indvars.iv1682, %91, !dbg !1613
  %arrayidx1153 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 45, i64 %102, i64 %104, !dbg !1613
  %105 = load i16* %arrayidx1153, align 2, !dbg !1613, !tbaa !945
  %conv1154 = zext i16 %105 to i32, !dbg !1613
  %add1155 = add nsw i32 %conv1154, %103, !dbg !1613
  store i32 %add1155, i32* %arrayidx1147, align 4, !dbg !1613, !tbaa !853
  br label %for.inc1274, !dbg !1613

if.else1161:                                      ; preds = %for.body1140
  %106 = load i32* %residue_transform_flag, align 4, !dbg !1642, !tbaa !853
  %tobool1162 = icmp eq i32 %106, 0, !dbg !1642
  br i1 %tobool1162, label %if.then1163, label %if.else1259, !dbg !1642

if.then1163:                                      ; preds = %if.else1161
  %107 = load i32* %max_imgpel_value, align 4, !dbg !1644, !tbaa !853
  %conv1164 = sext i32 %107 to i64, !dbg !1644
  %arrayidx1169 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682, !dbg !1644
  %108 = load i32* %arrayidx1169, align 4, !dbg !1644, !tbaa !853
  %conv1170 = sext i32 %108 to i64, !dbg !1644
  %109 = add nsw i64 %indvars.iv1682, %91, !dbg !1644
  %arrayidx1177 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 45, i64 %102, i64 %109, !dbg !1644
  %110 = load i16* %arrayidx1177, align 2, !dbg !1644, !tbaa !945
  %conv1178 = zext i16 %110 to i64, !dbg !1644
  %shl1179 = shl nuw nsw i64 %conv1178, 6, !dbg !1644
  %add1180 = add i64 %conv1170, 32, !dbg !1644
  %add1181 = add i64 %add1180, %shl1179, !dbg !1644
  %shr1182 = ashr i64 %add1181, 6, !dbg !1644
  %cmp1183 = icmp slt i64 %shr1182, 0, !dbg !1644
  %.shr1182 = select i1 %cmp1183, i64 0, i64 %shr1182, !dbg !1644
  %cmp1203 = icmp slt i64 %conv1164, %.shr1182, !dbg !1644
  %conv1164..shr1182 = select i1 %cmp1203, i64 %conv1164, i64 %.shr1182, !dbg !1644
  %conv1253 = trunc i64 %conv1164..shr1182 to i32, !dbg !1644
  store i32 %conv1253, i32* %arrayidx1169, align 4, !dbg !1644, !tbaa !853
  br label %for.inc1274, !dbg !1644

if.else1259:                                      ; preds = %if.else1161
  %arrayidx1264 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682, !dbg !1672
  %111 = load i32* %arrayidx1264, align 4, !dbg !1672, !tbaa !853
  %add1265 = add nsw i32 %111, 32, !dbg !1672
  %shr1266 = ashr i32 %add1265, 6, !dbg !1672
  store i32 %shr1266, i32* %arrayidx1264, align 4, !dbg !1672, !tbaa !853
  br label %for.inc1274

for.inc1274:                                      ; preds = %if.then1142, %if.else1259, %if.then1163
  %indvars.iv.next1683 = add i64 %indvars.iv1682, 1, !dbg !1670
  %lftr.wideiv1686 = trunc i64 %indvars.iv.next1683 to i32, !dbg !1670
  %exitcond1687 = icmp eq i32 %lftr.wideiv1686, 8, !dbg !1670
  br i1 %exitcond1687, label %for.inc1277, label %for.body1140, !dbg !1670

for.inc1277:                                      ; preds = %for.inc1274
  %indvars.iv.next1689 = add i64 %indvars.iv1688, 1, !dbg !1645
  %lftr.wideiv1692 = trunc i64 %indvars.iv.next1689 to i32, !dbg !1645
  %exitcond1693 = icmp eq i32 %lftr.wideiv1692, 8, !dbg !1645
  br i1 %exitcond1693, label %for.end1279, label %for.cond1137.preheader, !dbg !1645

for.end1279:                                      ; preds = %for.inc1277
  %112 = load i32* %residue_transform_flag, align 4, !dbg !1673, !tbaa !853
  %tobool1281 = icmp eq i32 %112, 0, !dbg !1673
  br i1 %tobool1281, label %for.cond1283.preheader, label %if.end1311, !dbg !1673

for.cond1283.preheader:                           ; preds = %for.end1279
  %pix_x = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 33, !dbg !1674
  %113 = load i32* %pix_x, align 4, !dbg !1674, !tbaa !853
  %pix_y = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 34, !dbg !1674
  %114 = load i32* %pix_y, align 4, !dbg !1674, !tbaa !853
  %115 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1674, !tbaa !874
  %imgY = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 25, !dbg !1674
  %116 = load i16*** %imgY, align 8, !dbg !1674, !tbaa !874
  br label %for.cond1287.preheader, !dbg !1677

for.cond1287.preheader:                           ; preds = %for.inc1308, %for.cond1283.preheader
  %indvars.iv1678 = phi i64 [ 0, %for.cond1283.preheader ], [ %indvars.iv.next1679, %for.inc1308 ]
  %117 = trunc i64 %indvars.iv1678 to i32, !dbg !1674
  %add1300 = add i32 %117, %mul1, !dbg !1674
  %add1301 = add i32 %add1300, %114, !dbg !1674
  %idxprom1302 = sext i32 %add1301 to i64, !dbg !1674
  %arrayidx1303 = getelementptr inbounds i16** %116, i64 %idxprom1302, !dbg !1674
  %118 = load i16** %arrayidx1303, align 8, !dbg !1674, !tbaa !874
  br label %for.body1290, !dbg !1678

for.body1290:                                     ; preds = %for.body1290, %for.cond1287.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1287.preheader ], [ %indvars.iv.next, %for.body1290 ]
  %arrayidx1295 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1678, !dbg !1674
  %119 = load i32* %arrayidx1295, align 4, !dbg !1674, !tbaa !853
  %conv1296 = trunc i32 %119 to i16, !dbg !1674
  %120 = trunc i64 %indvars.iv to i32, !dbg !1674
  %add1297 = add i32 %120, %mul, !dbg !1674
  %add1298 = add i32 %add1297, %113, !dbg !1674
  %idxprom1299 = sext i32 %add1298 to i64, !dbg !1674
  %arrayidx1304 = getelementptr inbounds i16* %118, i64 %idxprom1299, !dbg !1674
  store i16 %conv1296, i16* %arrayidx1304, align 2, !dbg !1674, !tbaa !945
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1678
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1678
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !1678
  br i1 %exitcond, label %for.inc1308, label %for.body1290, !dbg !1678

for.inc1308:                                      ; preds = %for.body1290
  %indvars.iv.next1679 = add i64 %indvars.iv1678, 1, !dbg !1677
  %lftr.wideiv1680 = trunc i64 %indvars.iv.next1679 to i32, !dbg !1677
  %exitcond1681 = icmp eq i32 %lftr.wideiv1680, 8, !dbg !1677
  br i1 %exitcond1681, label %if.end1311, label %for.cond1287.preheader, !dbg !1677

if.end1311:                                       ; preds = %for.inc1308, %for.end1279
  call void @llvm.lifetime.end(i64 256, i8* %6) #3, !dbg !1679
  ret i32 %nonzero.11648, !dbg !1679
}

; Function Attrs: optsize
declare i32 @dct_chroma4x4(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #4

; Function Attrs: nounwind optsize uwtable
define void @LowPassForIntra8x8Pred(i32* %PredPel, i32 %block_up_left, i32 %block_up, i32 %block_left) #0 {
entry:
  %PredPel230 = bitcast i32* %PredPel to i8*
  %LoopArray = alloca [25 x i32], align 16
  %0 = bitcast [25 x i32]* %LoopArray to i8*
  call void @llvm.dbg.value(metadata !{i32* %PredPel}, i64 0, metadata !170), !dbg !1680
  call void @llvm.dbg.value(metadata !{i32 %block_up_left}, i64 0, metadata !171), !dbg !1680
  call void @llvm.dbg.value(metadata !{i32 %block_up}, i64 0, metadata !172), !dbg !1680
  call void @llvm.dbg.value(metadata !{i32 %block_left}, i64 0, metadata !173), !dbg !1680
  call void @llvm.lifetime.start(i64 100, i8* %0) #3, !dbg !1681
  call void @llvm.dbg.declare(metadata !{[25 x i32]* %LoopArray}, metadata !175), !dbg !1681
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !174), !dbg !1682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %PredPel230, i64 100, i32 4, i1 false), !dbg !1684
  %tobool = icmp ne i32 %block_up, 0, !dbg !1685
  br i1 %tobool, label %if.then, label %if.end58, !dbg !1685

if.then:                                          ; preds = %entry
  %tobool3 = icmp eq i32 %block_up_left, 0, !dbg !1686
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !1686

if.then4:                                         ; preds = %if.then
  %1 = load i32* %PredPel, align 4, !dbg !1688, !tbaa !853
  %arrayidx8 = getelementptr inbounds i32* %PredPel, i64 1, !dbg !1688
  %2 = load i32* %arrayidx8, align 4, !dbg !1688, !tbaa !853
  %shl = shl i32 %2, 1, !dbg !1688
  %arrayidx10 = getelementptr inbounds i32* %PredPel, i64 2, !dbg !1688
  %3 = load i32* %arrayidx10, align 4, !dbg !1688, !tbaa !853
  %add = add i32 %1, 2, !dbg !1688
  %add11 = add i32 %add, %shl, !dbg !1688
  %add12 = add i32 %add11, %3, !dbg !1688
  %shr = ashr i32 %add12, 2, !dbg !1688
  %arrayidx13 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 1, !dbg !1688
  store i32 %shr, i32* %arrayidx13, align 4, !dbg !1688, !tbaa !853
  br label %for.body28, !dbg !1690

if.else:                                          ; preds = %if.then
  %arrayidx15 = getelementptr inbounds i32* %PredPel, i64 1, !dbg !1691
  %4 = load i32* %arrayidx15, align 4, !dbg !1691, !tbaa !853
  %add19 = mul i32 %4, 3, !dbg !1691
  %arrayidx21 = getelementptr inbounds i32* %PredPel, i64 2, !dbg !1691
  %5 = load i32* %arrayidx21, align 4, !dbg !1691, !tbaa !853
  %add22 = add i32 %5, 2, !dbg !1691
  %add23 = add i32 %add22, %add19, !dbg !1691
  %shr24 = ashr i32 %add23, 2, !dbg !1691
  %arrayidx25 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 1, !dbg !1691
  store i32 %shr24, i32* %arrayidx25, align 4, !dbg !1691, !tbaa !853
  br label %for.body28

for.body28:                                       ; preds = %if.then4, %if.else, %for.body28
  %6 = phi i32 [ %8, %for.body28 ], [ %5, %if.else ], [ %3, %if.then4 ], !dbg !1692
  %7 = phi i32 [ %6, %for.body28 ], [ %4, %if.else ], [ %2, %if.then4 ], !dbg !1692
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.body28 ], [ 2, %if.else ], [ 2, %if.then4 ]
  %shl35 = shl i32 %6, 1, !dbg !1692
  %indvars.iv.next233 = add i64 %indvars.iv232, 1, !dbg !1695
  %arrayidx40 = getelementptr inbounds i32* %PredPel, i64 %indvars.iv.next233, !dbg !1692
  %8 = load i32* %arrayidx40, align 4, !dbg !1692, !tbaa !853
  %add36 = add i32 %7, 2, !dbg !1692
  %add41 = add i32 %add36, %shl35, !dbg !1692
  %add42 = add i32 %add41, %8, !dbg !1692
  %shr43 = ashr i32 %add42, 2, !dbg !1692
  %arrayidx45 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 %indvars.iv232, !dbg !1692
  store i32 %shr43, i32* %arrayidx45, align 4, !dbg !1692, !tbaa !853
  %lftr.wideiv235 = trunc i64 %indvars.iv.next233 to i32, !dbg !1695
  %exitcond236 = icmp eq i32 %lftr.wideiv235, 16, !dbg !1695
  br i1 %exitcond236, label %for.end48, label %for.body28, !dbg !1695

for.end48:                                        ; preds = %for.body28
  %arrayidx49 = getelementptr inbounds i32* %PredPel, i64 16, !dbg !1696
  %9 = load i32* %arrayidx49, align 4, !dbg !1696, !tbaa !853
  %add52 = mul i32 %9, 3, !dbg !1696
  %arrayidx53 = getelementptr inbounds i32* %PredPel, i64 15, !dbg !1696
  %10 = load i32* %arrayidx53, align 4, !dbg !1696, !tbaa !853
  %add54 = add i32 %10, 2, !dbg !1696
  %add55 = add i32 %add54, %add52, !dbg !1696
  %shr56 = ashr i32 %add55, 2, !dbg !1696
  %arrayidx57 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 16, !dbg !1696
  store i32 %shr56, i32* %arrayidx57, align 16, !dbg !1696, !tbaa !853
  br label %if.end58, !dbg !1697

if.end58:                                         ; preds = %for.end48, %entry
  %tobool59 = icmp ne i32 %block_up_left, 0, !dbg !1698
  br i1 %tobool59, label %if.then60, label %if.end100, !dbg !1698

if.then60:                                        ; preds = %if.end58
  %tobool.not = xor i1 %tobool, true, !dbg !1699
  %tobool62 = icmp eq i32 %block_left, 0, !dbg !1699
  %or.cond = or i1 %tobool62, %tobool.not, !dbg !1699
  br i1 %or.cond, label %if.else73, label %if.then63, !dbg !1699

if.then63:                                        ; preds = %if.then60
  %arrayidx64 = getelementptr inbounds i32* %PredPel, i64 17, !dbg !1701
  %11 = load i32* %arrayidx64, align 4, !dbg !1701, !tbaa !853
  %12 = load i32* %PredPel, align 4, !dbg !1701, !tbaa !853
  %shl66 = shl i32 %12, 1, !dbg !1701
  %arrayidx68 = getelementptr inbounds i32* %PredPel, i64 1, !dbg !1701
  %13 = load i32* %arrayidx68, align 4, !dbg !1701, !tbaa !853
  %add67 = add i32 %11, 2, !dbg !1701
  %add69 = add i32 %add67, %shl66, !dbg !1701
  %add70 = add i32 %add69, %13, !dbg !1701
  %shr71 = ashr i32 %add70, 2, !dbg !1701
  %arrayidx72 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0, !dbg !1701
  store i32 %shr71, i32* %arrayidx72, align 16, !dbg !1701, !tbaa !853
  br label %if.end100, !dbg !1703

if.else73:                                        ; preds = %if.then60
  br i1 %tobool, label %if.then75, label %if.else85, !dbg !1704

if.then75:                                        ; preds = %if.else73
  %14 = load i32* %PredPel, align 4, !dbg !1706, !tbaa !853
  %add79 = mul i32 %14, 3, !dbg !1706
  %arrayidx80 = getelementptr inbounds i32* %PredPel, i64 1, !dbg !1706
  %15 = load i32* %arrayidx80, align 4, !dbg !1706, !tbaa !853
  %add81 = add i32 %15, 2, !dbg !1706
  %add82 = add i32 %add81, %add79, !dbg !1706
  %shr83 = ashr i32 %add82, 2, !dbg !1706
  %arrayidx84 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0, !dbg !1706
  store i32 %shr83, i32* %arrayidx84, align 16, !dbg !1706, !tbaa !853
  br label %if.end100, !dbg !1706

if.else85:                                        ; preds = %if.else73
  br i1 %tobool62, label %for.cond159.preheader, label %if.then87, !dbg !1707

if.then87:                                        ; preds = %if.else85
  %16 = load i32* %PredPel, align 4, !dbg !1708, !tbaa !853
  %add91 = mul i32 %16, 3, !dbg !1708
  %arrayidx92 = getelementptr inbounds i32* %PredPel, i64 17, !dbg !1708
  %17 = load i32* %arrayidx92, align 4, !dbg !1708, !tbaa !853
  %add93 = add i32 %17, 2, !dbg !1708
  %add94 = add i32 %add93, %add91, !dbg !1708
  %shr95 = ashr i32 %add94, 2, !dbg !1708
  %arrayidx96 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0, !dbg !1708
  store i32 %shr95, i32* %arrayidx96, align 16, !dbg !1708, !tbaa !853
  br label %if.end100, !dbg !1708

if.end100:                                        ; preds = %if.then63, %if.then87, %if.then75, %if.end58
  %tobool101 = icmp eq i32 %block_left, 0, !dbg !1709
  br i1 %tobool101, label %for.cond159.preheader, label %if.then102, !dbg !1709

if.then102:                                       ; preds = %if.end100
  br i1 %tobool59, label %if.then104, label %if.else114, !dbg !1710

if.then104:                                       ; preds = %if.then102
  %18 = load i32* %PredPel, align 4, !dbg !1712, !tbaa !853
  %arrayidx106 = getelementptr inbounds i32* %PredPel, i64 17, !dbg !1712
  %19 = load i32* %arrayidx106, align 4, !dbg !1712, !tbaa !853
  %shl107 = shl i32 %19, 1, !dbg !1712
  %arrayidx109 = getelementptr inbounds i32* %PredPel, i64 18, !dbg !1712
  %20 = load i32* %arrayidx109, align 4, !dbg !1712, !tbaa !853
  %add108 = add i32 %18, 2, !dbg !1712
  %add110 = add i32 %add108, %shl107, !dbg !1712
  %add111 = add i32 %add110, %20, !dbg !1712
  %shr112 = ashr i32 %add111, 2, !dbg !1712
  %arrayidx113 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 17, !dbg !1712
  store i32 %shr112, i32* %arrayidx113, align 4, !dbg !1712, !tbaa !853
  br label %for.body127, !dbg !1712

if.else114:                                       ; preds = %if.then102
  %arrayidx115 = getelementptr inbounds i32* %PredPel, i64 17, !dbg !1713
  %21 = load i32* %arrayidx115, align 4, !dbg !1713, !tbaa !853
  %add118 = mul i32 %21, 3, !dbg !1713
  %arrayidx119 = getelementptr inbounds i32* %PredPel, i64 18, !dbg !1713
  %22 = load i32* %arrayidx119, align 4, !dbg !1713, !tbaa !853
  %add120 = add i32 %22, 2, !dbg !1713
  %add121 = add i32 %add120, %add118, !dbg !1713
  %shr122 = ashr i32 %add121, 2, !dbg !1713
  %arrayidx123 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 17, !dbg !1713
  store i32 %shr122, i32* %arrayidx123, align 4, !dbg !1713, !tbaa !853
  br label %for.body127

for.body127:                                      ; preds = %if.then104, %if.else114, %for.body127
  %23 = phi i32 [ %25, %for.body127 ], [ %22, %if.else114 ], [ %20, %if.then104 ], !dbg !1714
  %24 = phi i32 [ %23, %for.body127 ], [ %21, %if.else114 ], [ %19, %if.then104 ], !dbg !1714
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body127 ], [ 18, %if.else114 ], [ 18, %if.then104 ]
  %shl135 = shl i32 %23, 1, !dbg !1714
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1717
  %arrayidx140 = getelementptr inbounds i32* %PredPel, i64 %indvars.iv.next, !dbg !1714
  %25 = load i32* %arrayidx140, align 4, !dbg !1714, !tbaa !853
  %add136 = add i32 %24, 2, !dbg !1714
  %add141 = add i32 %add136, %shl135, !dbg !1714
  %add142 = add i32 %add141, %25, !dbg !1714
  %shr143 = ashr i32 %add142, 2, !dbg !1714
  %arrayidx145 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 %indvars.iv, !dbg !1714
  store i32 %shr143, i32* %arrayidx145, align 4, !dbg !1714, !tbaa !853
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1717
  %exitcond = icmp eq i32 %lftr.wideiv, 24, !dbg !1717
  br i1 %exitcond, label %for.end148, label %for.body127, !dbg !1717

for.end148:                                       ; preds = %for.body127
  %arrayidx149 = getelementptr inbounds i32* %PredPel, i64 23, !dbg !1718
  %26 = load i32* %arrayidx149, align 4, !dbg !1718, !tbaa !853
  %arrayidx150 = getelementptr inbounds i32* %PredPel, i64 24, !dbg !1718
  %27 = load i32* %arrayidx150, align 4, !dbg !1718, !tbaa !853
  %shl151 = shl i32 %27, 1, !dbg !1718
  %add152 = add i32 %26, 2, !dbg !1718
  %add154 = add i32 %add152, %27, !dbg !1718
  %add155 = add i32 %add154, %shl151, !dbg !1718
  %shr156 = ashr i32 %add155, 2, !dbg !1718
  %arrayidx157 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 24, !dbg !1718
  store i32 %shr156, i32* %arrayidx157, align 16, !dbg !1718, !tbaa !853
  br label %for.cond159.preheader, !dbg !1719

for.cond159.preheader:                            ; preds = %if.end100, %for.end148, %if.else85
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %PredPel230, i8* %0, i64 100, i32 4, i1 false), !dbg !1720
  call void @llvm.lifetime.end(i64 100, i8* %0) #3, !dbg !1722
  ret void, !dbg !1722
}

; Function Attrs: optsize
declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #4

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement*, %struct.datapartition*) #4

; Function Attrs: optsize
declare i32 @writeCoeff4x4_CAVLC(i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32 @writeLumaCoeff8x8_CABAC(i32, i32) #4

; Function Attrs: optsize
declare i32 @sign(i32, i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !49, metadata !50, metadata !491, metadata !49, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !14, metadata !38, metadata !42}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!12 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!13 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!14 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 119, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!16 = metadata !{i32 786472, metadata !"SE_HEADER", i64 0} ; [ DW_TAG_enumerator ] [SE_HEADER :: 0]
!17 = metadata !{i32 786472, metadata !"SE_PTYPE", i64 1} ; [ DW_TAG_enumerator ] [SE_PTYPE :: 1]
!18 = metadata !{i32 786472, metadata !"SE_MBTYPE", i64 2} ; [ DW_TAG_enumerator ] [SE_MBTYPE :: 2]
!19 = metadata !{i32 786472, metadata !"SE_REFFRAME", i64 3} ; [ DW_TAG_enumerator ] [SE_REFFRAME :: 3]
!20 = metadata !{i32 786472, metadata !"SE_INTRAPREDMODE", i64 4} ; [ DW_TAG_enumerator ] [SE_INTRAPREDMODE :: 4]
!21 = metadata !{i32 786472, metadata !"SE_MVD", i64 5} ; [ DW_TAG_enumerator ] [SE_MVD :: 5]
!22 = metadata !{i32 786472, metadata !"SE_CBP_INTRA", i64 6} ; [ DW_TAG_enumerator ] [SE_CBP_INTRA :: 6]
!23 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTRA", i64 7} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTRA :: 7]
!24 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTRA", i64 8} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTRA :: 8]
!25 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTRA", i64 9} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTRA :: 9]
!26 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTRA", i64 10} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTRA :: 10]
!27 = metadata !{i32 786472, metadata !"SE_CBP_INTER", i64 11} ; [ DW_TAG_enumerator ] [SE_CBP_INTER :: 11]
!28 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTER", i64 12} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTER :: 12]
!29 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTER", i64 13} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTER :: 13]
!30 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTER", i64 14} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTER :: 14]
!31 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTER", i64 15} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTER :: 15]
!32 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTER", i64 16} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTER :: 16]
!33 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTRA", i64 17} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTRA :: 17]
!34 = metadata !{i32 786472, metadata !"SE_BFRAME", i64 18} ; [ DW_TAG_enumerator ] [SE_BFRAME :: 18]
!35 = metadata !{i32 786472, metadata !"SE_EOS", i64 19} ; [ DW_TAG_enumerator ] [SE_EOS :: 19]
!36 = metadata !{i32 786472, metadata !"SE_TRANSFORM_SIZE_FLAG", i64 20} ; [ DW_TAG_enumerator ] [SE_TRANSFORM_SIZE_FLAG :: 20]
!37 = metadata !{i32 786472, metadata !"SE_MAX_ELEMENTS", i64 21} ; [ DW_TAG_enumerator ] [SE_MAX_ELEMENTS :: 21]
!38 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41}
!40 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!41 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!42 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!44 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!45 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!46 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!47 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!48 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!49 = metadata !{i32 0}
!50 = metadata !{metadata !51, metadata !64, metadata !136, metadata !166, metadata !176, metadata !443}
!51 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"Mode_Decision_for_new_Intra8x8Macroblock", metadata !"Mode_Decision_for_new_Intra8x8Macroblock", metadata !"", i32 217, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, i32*)* @Mode_Decision_for_new_Intra8x8Macroblock, null, null, metadata !58, i32 218} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 218] [Mode_Decision_for_new_Intra8x8Macroblock]
!52 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57}
!55 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!56 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!59 = metadata !{i32 786689, metadata !51, metadata !"lambda", metadata !52, i32 16777433, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 217]
!60 = metadata !{i32 786689, metadata !51, metadata !"min_cost", metadata !52, i32 33554649, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_cost] [line 217]
!61 = metadata !{i32 786688, metadata !51, metadata !"cbp", metadata !52, i32 219, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbp] [line 219]
!62 = metadata !{i32 786688, metadata !51, metadata !"b8", metadata !52, i32 219, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 219]
!63 = metadata !{i32 786688, metadata !51, metadata !"cost8x8", metadata !52, i32 219, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost8x8] [line 219]
!64 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"Mode_Decision_for_new_8x8IntraBlocks", metadata !"Mode_Decision_for_new_8x8IntraBlocks", metadata !"", i32 242, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, double, i32*)* @Mode_Decision_for_new_8x8IntraBlocks, null, null, metadata !67, i32 243} ; [ DW_TAG_subprogram ] [line 242] [def] [scope 243] [Mode_Decision_for_new_8x8IntraBlocks]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !55, metadata !55, metadata !56, metadata !57}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !86, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!68 = metadata !{i32 786689, metadata !64, metadata !"b8", metadata !52, i32 16777458, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8] [line 242]
!69 = metadata !{i32 786689, metadata !64, metadata !"lambda", metadata !52, i32 33554674, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 242]
!70 = metadata !{i32 786689, metadata !64, metadata !"min_cost", metadata !52, i32 50331890, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_cost] [line 242]
!71 = metadata !{i32 786688, metadata !64, metadata !"ipmode", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipmode] [line 244]
!72 = metadata !{i32 786688, metadata !64, metadata !"best_ipmode", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_ipmode] [line 244]
!73 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 244]
!74 = metadata !{i32 786688, metadata !64, metadata !"j", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 244]
!75 = metadata !{i32 786688, metadata !64, metadata !"k", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 244]
!76 = metadata !{i32 786688, metadata !64, metadata !"x", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 244]
!77 = metadata !{i32 786688, metadata !64, metadata !"y", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 244]
!78 = metadata !{i32 786688, metadata !64, metadata !"cost", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 244]
!79 = metadata !{i32 786688, metadata !64, metadata !"dummy", metadata !52, i32 244, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 244]
!80 = metadata !{i32 786688, metadata !64, metadata !"c_nz", metadata !52, i32 245, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_nz] [line 245]
!81 = metadata !{i32 786688, metadata !64, metadata !"nonzero", metadata !52, i32 245, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzero] [line 245]
!82 = metadata !{i32 786688, metadata !64, metadata !"diff", metadata !52, i32 245, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 245]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !55, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 64}       ; [ DW_TAG_subrange_type ] [0, 63]
!86 = metadata !{i32 786688, metadata !64, metadata !"rec8x8", metadata !52, i32 246, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rec8x8] [line 246]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !88, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 16, offset 0] [from unsigned short]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{metadata !90, metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!91 = metadata !{i32 786688, metadata !64, metadata !"rdcost", metadata !52, i32 247, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rdcost] [line 247]
!92 = metadata !{i32 786688, metadata !64, metadata !"block4x4_x", metadata !52, i32 248, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block4x4_x] [line 248]
!93 = metadata !{i32 786688, metadata !64, metadata !"block4x4_y", metadata !52, i32 248, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block4x4_y] [line 248]
!94 = metadata !{i32 786688, metadata !64, metadata !"block_x", metadata !52, i32 249, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_x] [line 249]
!95 = metadata !{i32 786688, metadata !64, metadata !"block_y", metadata !52, i32 250, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_y] [line 250]
!96 = metadata !{i32 786688, metadata !64, metadata !"pic_pix_x", metadata !52, i32 251, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_pix_x] [line 251]
!97 = metadata !{i32 786688, metadata !64, metadata !"pic_pix_y", metadata !52, i32 252, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_pix_y] [line 252]
!98 = metadata !{i32 786688, metadata !64, metadata !"pic_opix_x", metadata !52, i32 253, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_opix_x] [line 253]
!99 = metadata !{i32 786688, metadata !64, metadata !"pic_opix_y", metadata !52, i32 254, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_opix_y] [line 254]
!100 = metadata !{i32 786688, metadata !64, metadata !"pic_block_x", metadata !52, i32 255, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_block_x] [line 255]
!101 = metadata !{i32 786688, metadata !64, metadata !"pic_block_y", metadata !52, i32 256, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_block_y] [line 256]
!102 = metadata !{i32 786688, metadata !64, metadata !"min_rdcost", metadata !52, i32 257, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_rdcost] [line 257]
!103 = metadata !{i32 786688, metadata !64, metadata !"imgY_orig", metadata !52, i32 258, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY_orig] [line 258]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!106 = metadata !{i32 786688, metadata !64, metadata !"left_available", metadata !52, i32 261, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left_available] [line 261]
!107 = metadata !{i32 786688, metadata !64, metadata !"up_available", metadata !52, i32 261, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up_available] [line 261]
!108 = metadata !{i32 786688, metadata !64, metadata !"all_available", metadata !52, i32 261, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [all_available] [line 261]
!109 = metadata !{i32 786688, metadata !64, metadata !"upMode", metadata !52, i32 263, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upMode] [line 263]
!110 = metadata !{i32 786688, metadata !64, metadata !"leftMode", metadata !52, i32 264, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [leftMode] [line 264]
!111 = metadata !{i32 786688, metadata !64, metadata !"mostProbableMode", metadata !52, i32 265, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mostProbableMode] [line 265]
!112 = metadata !{i32 786688, metadata !64, metadata !"left_block", metadata !52, i32 267, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left_block] [line 267]
!113 = metadata !{i32 786454, metadata !1, null, metadata !"PixelPos", i32 305, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [PixelPos] [line 305, size 0, align 0, offset 0] [from pix_pos]
!114 = metadata !{i32 786451, metadata !9, null, metadata !"pix_pos", i32 297, i64 192, i64 32, i32 0, i32 0, null, metadata !115, i32 0, null, null} ; [ DW_TAG_structure_type ] [pix_pos] [line 297, size 192, align 32, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!116 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"available", i32 299, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [available] [line 299, size 32, align 32, offset 0] [from int]
!117 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"mb_addr", i32 300, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [mb_addr] [line 300, size 32, align 32, offset 32] [from int]
!118 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"x", i32 301, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [x] [line 301, size 32, align 32, offset 64] [from int]
!119 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"y", i32 302, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [y] [line 302, size 32, align 32, offset 96] [from int]
!120 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"pos_x", i32 303, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [pos_x] [line 303, size 32, align 32, offset 128] [from int]
!121 = metadata !{i32 786445, metadata !9, metadata !114, metadata !"pos_y", i32 304, i64 32, i64 32, i64 160, i32 0, metadata !55} ; [ DW_TAG_member ] [pos_y] [line 304, size 32, align 32, offset 160] [from int]
!122 = metadata !{i32 786688, metadata !64, metadata !"top_block", metadata !52, i32 268, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top_block] [line 268]
!123 = metadata !{i32 786688, metadata !64, metadata !"residue_R", metadata !52, i32 271, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [residue_R] [line 271]
!124 = metadata !{i32 786688, metadata !64, metadata !"residue_G", metadata !52, i32 271, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [residue_G] [line 271]
!125 = metadata !{i32 786688, metadata !64, metadata !"residue_B", metadata !52, i32 271, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [residue_B] [line 271]
!126 = metadata !{i32 786688, metadata !64, metadata !"rate", metadata !52, i32 272, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rate] [line 272]
!127 = metadata !{i32 786688, metadata !64, metadata !"distortion", metadata !52, i32 272, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distortion] [line 272]
!128 = metadata !{i32 786688, metadata !64, metadata !"temp", metadata !52, i32 272, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 272]
!129 = metadata !{i32 786688, metadata !64, metadata !"b4", metadata !52, i32 272, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 272]
!130 = metadata !{i32 786688, metadata !64, metadata !"c_ipmode", metadata !52, i32 273, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_ipmode] [line 273]
!131 = metadata !{i32 786688, metadata !64, metadata !"rec8x8_c", metadata !52, i32 274, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rec8x8_c] [line 274]
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !55, metadata !133, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 32, offset 0] [from int]
!133 = metadata !{metadata !134, metadata !135, metadata !135, metadata !135}
!134 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!135 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!136 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"intrapred_luma8x8", metadata !"intrapred_luma8x8", metadata !"", i32 693, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*, i32*)* @intrapred_luma8x8, null, null, metadata !139, i32 694} ; [ DW_TAG_subprogram ] [line 693] [def] [scope 694] [intrapred_luma8x8]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{null, metadata !55, metadata !55, metadata !57, metadata !57, metadata !57}
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!140 = metadata !{i32 786689, metadata !136, metadata !"img_x", metadata !52, i32 16777909, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_x] [line 693]
!141 = metadata !{i32 786689, metadata !136, metadata !"img_y", metadata !52, i32 33555125, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_y] [line 693]
!142 = metadata !{i32 786689, metadata !136, metadata !"left_available", metadata !52, i32 50332341, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [left_available] [line 693]
!143 = metadata !{i32 786689, metadata !136, metadata !"up_available", metadata !52, i32 67109557, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up_available] [line 693]
!144 = metadata !{i32 786689, metadata !136, metadata !"all_available", metadata !52, i32 83886773, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [all_available] [line 693]
!145 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !52, i32 695, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 695]
!146 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !52, i32 695, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 695]
!147 = metadata !{i32 786688, metadata !136, metadata !"s0", metadata !52, i32 696, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 696]
!148 = metadata !{i32 786688, metadata !136, metadata !"PredPel", metadata !52, i32 697, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PredPel] [line 697]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 32, i32 0, i32 0, metadata !55, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800, align 32, offset 0] [from int]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 25}      ; [ DW_TAG_subrange_type ] [0, 24]
!152 = metadata !{i32 786688, metadata !136, metadata !"imgY", metadata !52, i32 698, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY] [line 698]
!153 = metadata !{i32 786688, metadata !136, metadata !"ioff", metadata !52, i32 700, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 700]
!154 = metadata !{i32 786688, metadata !136, metadata !"joff", metadata !52, i32 701, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 701]
!155 = metadata !{i32 786688, metadata !136, metadata !"mb_nr", metadata !52, i32 702, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_nr] [line 702]
!156 = metadata !{i32 786688, metadata !136, metadata !"pix_a", metadata !52, i32 704, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_a] [line 704]
!157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !113, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 32, offset 0] [from PixelPos]
!158 = metadata !{metadata !90}
!159 = metadata !{i32 786688, metadata !136, metadata !"pix_b", metadata !52, i32 705, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_b] [line 705]
!160 = metadata !{i32 786688, metadata !136, metadata !"pix_c", metadata !52, i32 705, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_c] [line 705]
!161 = metadata !{i32 786688, metadata !136, metadata !"pix_d", metadata !52, i32 705, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_d] [line 705]
!162 = metadata !{i32 786688, metadata !136, metadata !"block_available_up", metadata !52, i32 707, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up] [line 707]
!163 = metadata !{i32 786688, metadata !136, metadata !"block_available_left", metadata !52, i32 708, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_left] [line 708]
!164 = metadata !{i32 786688, metadata !136, metadata !"block_available_up_left", metadata !52, i32 709, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up_left] [line 709]
!165 = metadata !{i32 786688, metadata !136, metadata !"block_available_up_right", metadata !52, i32 710, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up_right] [line 710]
!166 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"LowPassForIntra8x8Pred", metadata !"LowPassForIntra8x8Pred", metadata !"", i32 1300, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32, i32)* @LowPassForIntra8x8Pred, null, null, metadata !169, i32 1301} ; [ DW_TAG_subprogram ] [line 1300] [def] [scope 1301] [LowPassForIntra8x8Pred]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{null, metadata !57, metadata !55, metadata !55, metadata !55}
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!170 = metadata !{i32 786689, metadata !166, metadata !"PredPel", metadata !52, i32 16778516, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PredPel] [line 1300]
!171 = metadata !{i32 786689, metadata !166, metadata !"block_up_left", metadata !52, i32 33555732, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_up_left] [line 1300]
!172 = metadata !{i32 786689, metadata !166, metadata !"block_up", metadata !52, i32 50332948, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_up] [line 1300]
!173 = metadata !{i32 786689, metadata !166, metadata !"block_left", metadata !52, i32 67110164, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_left] [line 1300]
!174 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !52, i32 1302, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1302]
!175 = metadata !{i32 786688, metadata !166, metadata !"LoopArray", metadata !52, i32 1303, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LoopArray] [line 1303]
!176 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"RDCost_for_8x8IntraBlocks", metadata !"RDCost_for_8x8IntraBlocks", metadata !"", i32 1373, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32*, i32, i32, double, double, i32)* @RDCost_for_8x8IntraBlocks, null, null, metadata !179, i32 1374} ; [ DW_TAG_subprogram ] [line 1373] [def] [scope 1374] [RDCost_for_8x8IntraBlocks]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !56, metadata !57, metadata !55, metadata !55, metadata !56, metadata !56, metadata !55}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !378, metadata !436, metadata !437, metadata !440, metadata !441}
!180 = metadata !{i32 786689, metadata !176, metadata !"nonzero", metadata !52, i32 16778589, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nonzero] [line 1373]
!181 = metadata !{i32 786689, metadata !176, metadata !"b8", metadata !52, i32 33555805, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8] [line 1373]
!182 = metadata !{i32 786689, metadata !176, metadata !"ipmode", metadata !52, i32 50333021, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipmode] [line 1373]
!183 = metadata !{i32 786689, metadata !176, metadata !"lambda", metadata !52, i32 67110237, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 1373]
!184 = metadata !{i32 786689, metadata !176, metadata !"min_rdcost", metadata !52, i32 83887453, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_rdcost] [line 1373]
!185 = metadata !{i32 786689, metadata !176, metadata !"mostProbableMode", metadata !52, i32 100664669, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mostProbableMode] [line 1373]
!186 = metadata !{i32 786688, metadata !176, metadata !"rdcost", metadata !52, i32 1375, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rdcost] [line 1375]
!187 = metadata !{i32 786688, metadata !176, metadata !"dummy", metadata !52, i32 1376, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 1376]
!188 = metadata !{i32 786688, metadata !176, metadata !"x", metadata !52, i32 1376, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1376]
!189 = metadata !{i32 786688, metadata !176, metadata !"y", metadata !52, i32 1376, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 1376]
!190 = metadata !{i32 786688, metadata !176, metadata !"rate", metadata !52, i32 1376, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rate] [line 1376]
!191 = metadata !{i32 786688, metadata !176, metadata !"distortion", metadata !52, i32 1377, metadata !192, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [distortion] [line 1377]
!192 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!193 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!194 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!195 = metadata !{i32 786688, metadata !176, metadata !"block_x", metadata !52, i32 1378, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_x] [line 1378]
!196 = metadata !{i32 786688, metadata !176, metadata !"block_y", metadata !52, i32 1379, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_y] [line 1379]
!197 = metadata !{i32 786688, metadata !176, metadata !"pic_pix_x", metadata !52, i32 1380, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_pix_x] [line 1380]
!198 = metadata !{i32 786688, metadata !176, metadata !"pic_pix_y", metadata !52, i32 1381, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_pix_y] [line 1381]
!199 = metadata !{i32 786688, metadata !176, metadata !"pic_opix_y", metadata !52, i32 1382, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_opix_y] [line 1382]
!200 = metadata !{i32 786688, metadata !176, metadata !"imgY_orig", metadata !52, i32 1383, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY_orig] [line 1383]
!201 = metadata !{i32 786688, metadata !176, metadata !"imgY", metadata !52, i32 1384, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY] [line 1384]
!202 = metadata !{i32 786688, metadata !176, metadata !"currSlice", metadata !52, i32 1386, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 1386]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!204 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!205 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !206, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !290, metadata !326, metadata !353, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !375}
!207 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!208 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!209 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!210 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!211 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!212 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !55} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!213 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !214} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!215 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!216 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !217, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!217 = metadata !{metadata !218, metadata !237, metadata !262}
!218 = metadata !{i32 786445, metadata !9, metadata !216, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!220 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!221 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !222, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !236}
!223 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!224 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!225 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !226} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!226 = metadata !{i32 786454, metadata !1, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!227 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!228 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!229 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!230 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !226} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!231 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !226} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!232 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!233 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !55} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!234 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !235} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !226} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!236 = metadata !{i32 786445, metadata !9, metadata !221, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !55} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!237 = metadata !{i32 786445, metadata !9, metadata !216, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !238} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!238 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!239 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !240, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!240 = metadata !{metadata !241, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!241 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!242 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!243 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !242} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!244 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !242} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!245 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !242} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!246 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !242} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!247 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !235} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!248 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!249 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !242} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!250 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !242} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!251 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !242} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!252 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !242} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!253 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !242} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!254 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !235} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!255 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!256 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !55} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!257 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !55} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!258 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !55} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!259 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !55} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!260 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !55} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!261 = metadata !{i32 786445, metadata !9, metadata !239, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !55} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!262 = metadata !{i32 786445, metadata !9, metadata !216, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !263} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !264} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{metadata !55, metadata !266, metadata !289}
!266 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!267 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !268} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!268 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !269, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!269 = metadata !{metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !282}
!270 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!271 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!272 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!273 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!274 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!275 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !242} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!276 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !55} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!277 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !55} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!278 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !279} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!280 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{null, metadata !55, metadata !55, metadata !57, metadata !57}
!282 = metadata !{i32 786445, metadata !9, metadata !268, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !283} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!283 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!284 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !286, metadata !287}
!286 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!287 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !216} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!290 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !291} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!292 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!293 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !294, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!294 = metadata !{metadata !295, metadata !307, metadata !311, metadata !315, metadata !319, metadata !322, metadata !323}
!295 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!296 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !297, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!297 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!298 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !299, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302}
!300 = metadata !{i32 786445, metadata !9, metadata !298, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!301 = metadata !{i32 786445, metadata !9, metadata !298, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !227} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!302 = metadata !{i32 786445, metadata !9, metadata !298, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !303} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!303 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!304 = metadata !{metadata !305, metadata !306}
!305 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!306 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!307 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !308} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!308 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !297, metadata !309, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!309 = metadata !{metadata !134, metadata !310}
!310 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!311 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !312} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!312 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !297, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!313 = metadata !{metadata !134, metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!315 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !316} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !297, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!317 = metadata !{metadata !134, metadata !318}
!318 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!319 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !320} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!320 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !297, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!321 = metadata !{metadata !135}
!322 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !320} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!323 = metadata !{i32 786445, metadata !9, metadata !293, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !324} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !297, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!325 = metadata !{metadata !305}
!326 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !327} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !328} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!328 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!329 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !330, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!330 = metadata !{metadata !331, metadata !334, metadata !335, metadata !338, metadata !341, metadata !345, metadata !346, metadata !350, metadata !351, metadata !352}
!331 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !332} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!332 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !297, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!333 = metadata !{metadata !134}
!334 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !320} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!335 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !336} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !297, metadata !337, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!337 = metadata !{metadata !305, metadata !135}
!338 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !339} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!339 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !297, metadata !340, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!340 = metadata !{metadata !314, metadata !135}
!341 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !342} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !297, metadata !343, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!343 = metadata !{metadata !314, metadata !344}
!344 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!345 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !342} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!346 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !347} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!347 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !297, metadata !348, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!348 = metadata !{metadata !314, metadata !349}
!349 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!350 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !347} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!351 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !342} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!352 = metadata !{i32 786445, metadata !9, metadata !329, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !342} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!353 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !354} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!354 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !355} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!355 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!356 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !357, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!357 = metadata !{metadata !358, metadata !359, metadata !360}
!358 = metadata !{i32 786445, metadata !9, metadata !356, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!359 = metadata !{i32 786445, metadata !9, metadata !356, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!360 = metadata !{i32 786445, metadata !9, metadata !356, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !361} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !356} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!362 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !55} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!363 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !57} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!364 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!365 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !57} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!366 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !55} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!367 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !57} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!368 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !57} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!369 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !57} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!370 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !371} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!372 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!373 = metadata !{metadata !374, metadata !55}
!374 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!375 = metadata !{i32 786445, metadata !9, metadata !205, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !376} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!376 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !55, metadata !377, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!377 = metadata !{metadata !305, metadata !134}
!378 = metadata !{i32 786688, metadata !176, metadata !"currMB", metadata !52, i32 1387, metadata !379, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1387]
!379 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !380} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!380 = metadata !{i32 786454, metadata !9, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!381 = metadata !{i32 786451, metadata !9, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !382, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!382 = metadata !{metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !390, metadata !392, metadata !393, metadata !394, metadata !397, metadata !401, metadata !402, metadata !403, metadata !404, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435}
!383 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!384 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!385 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!386 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!387 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!388 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !389} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!389 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !55, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!390 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !391} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!391 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !381} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!392 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !391} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!393 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !55} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!394 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !395} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!395 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !55, metadata !396, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!396 = metadata !{metadata !134, metadata !135, metadata !135, metadata !134}
!397 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !398} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!398 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !55, metadata !399, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!399 = metadata !{metadata !400}
!400 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!401 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !398} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!402 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !55} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!403 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !192} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!404 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !405} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!405 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !55, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!406 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !405} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!407 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !303} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!408 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !55} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!409 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !55} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!410 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !55} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!411 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !55} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!412 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !55} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!413 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !55} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!414 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!415 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!416 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!417 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!418 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!419 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!420 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!421 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !55} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!422 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !55} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!423 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !55} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!424 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !55} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!425 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !55} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!426 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !56} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!427 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !55} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!428 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !55} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!429 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !55} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!430 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !55} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!431 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !55} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!432 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !55} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!433 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !55} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!434 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !55} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!435 = metadata !{i32 786445, metadata !9, metadata !381, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !55} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!436 = metadata !{i32 786688, metadata !176, metadata !"currSE", metadata !52, i32 1388, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSE] [line 1388]
!437 = metadata !{i32 786688, metadata !176, metadata !"partMap", metadata !52, i32 1389, metadata !438, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partMap] [line 1389]
!438 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !439} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!439 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!440 = metadata !{i32 786688, metadata !176, metadata !"dataPart", metadata !52, i32 1390, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dataPart] [line 1390]
!441 = metadata !{i32 786688, metadata !442, metadata !"b4", metadata !52, i32 1433, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 1433]
!442 = metadata !{i32 786443, metadata !1, metadata !176, i32 1432, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!443 = metadata !{i32 786478, metadata !1, metadata !52, metadata !"dct_luma8x8", metadata !"dct_luma8x8", metadata !"", i32 1470, metadata !444, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32)* @dct_luma8x8, null, null, metadata !446, i32 1471} ; [ DW_TAG_subprogram ] [line 1470] [def] [scope 1471] [dct_luma8x8]
!444 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!445 = metadata !{metadata !55, metadata !55, metadata !57, metadata !55}
!446 = metadata !{metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !478, metadata !479, metadata !482, metadata !483, metadata !486, metadata !487, metadata !490}
!447 = metadata !{i32 786689, metadata !443, metadata !"b8", metadata !52, i32 16778686, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8] [line 1470]
!448 = metadata !{i32 786689, metadata !443, metadata !"coeff_cost", metadata !52, i32 33555902, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff_cost] [line 1470]
!449 = metadata !{i32 786689, metadata !443, metadata !"intra", metadata !52, i32 50333118, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intra] [line 1470]
!450 = metadata !{i32 786688, metadata !443, metadata !"i", metadata !52, i32 1474, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1474]
!451 = metadata !{i32 786688, metadata !443, metadata !"j", metadata !52, i32 1474, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1474]
!452 = metadata !{i32 786688, metadata !443, metadata !"ilev", metadata !52, i32 1474, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 1474]
!453 = metadata !{i32 786688, metadata !443, metadata !"coeff_ctr", metadata !52, i32 1474, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 1474]
!454 = metadata !{i32 786688, metadata !443, metadata !"qp_const", metadata !52, i32 1475, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const] [line 1475]
!455 = metadata !{i32 786688, metadata !443, metadata !"level", metadata !52, i32 1475, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1475]
!456 = metadata !{i32 786688, metadata !443, metadata !"scan_pos", metadata !52, i32 1475, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 1475]
!457 = metadata !{i32 786688, metadata !443, metadata !"run", metadata !52, i32 1475, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 1475]
!458 = metadata !{i32 786688, metadata !443, metadata !"nonzero", metadata !52, i32 1476, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzero] [line 1476]
!459 = metadata !{i32 786688, metadata !443, metadata !"qp_per", metadata !52, i32 1477, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 1477]
!460 = metadata !{i32 786688, metadata !443, metadata !"qp_rem", metadata !52, i32 1477, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 1477]
!461 = metadata !{i32 786688, metadata !443, metadata !"q_bits", metadata !52, i32 1477, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 1477]
!462 = metadata !{i32 786688, metadata !443, metadata !"dq_lshift", metadata !52, i32 1478, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dq_lshift] [line 1478]
!463 = metadata !{i32 786688, metadata !443, metadata !"dq_rshift", metadata !52, i32 1478, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dq_rshift] [line 1478]
!464 = metadata !{i32 786688, metadata !443, metadata !"dq_round", metadata !52, i32 1478, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dq_round] [line 1478]
!465 = metadata !{i32 786688, metadata !443, metadata !"block_x", metadata !52, i32 1480, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_x] [line 1480]
!466 = metadata !{i32 786688, metadata !443, metadata !"block_y", metadata !52, i32 1481, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_y] [line 1481]
!467 = metadata !{i32 786688, metadata !443, metadata !"ACLevel", metadata !52, i32 1482, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 1482]
!468 = metadata !{i32 786688, metadata !443, metadata !"ACRun", metadata !52, i32 1483, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 1483]
!469 = metadata !{i32 786688, metadata !443, metadata !"m6", metadata !52, i32 1484, metadata !470, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 1484]
!470 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !55, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!471 = metadata !{i32 786688, metadata !443, metadata !"scan_poss", metadata !52, i32 1485, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_poss] [line 1485]
!472 = metadata !{i32 786688, metadata !443, metadata !"runs", metadata !52, i32 1485, metadata !405, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [runs] [line 1485]
!473 = metadata !{i32 786688, metadata !443, metadata !"currMB", metadata !52, i32 1487, metadata !379, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1487]
!474 = metadata !{i32 786688, metadata !443, metadata !"lossless_qpprime", metadata !52, i32 1488, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lossless_qpprime] [line 1488]
!475 = metadata !{i32 786688, metadata !476, metadata !"a", metadata !52, i32 1518, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1518]
!476 = metadata !{i32 786443, metadata !1, metadata !477, i32 1517, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!477 = metadata !{i32 786443, metadata !1, metadata !443, i32 1516, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!478 = metadata !{i32 786688, metadata !476, metadata !"b", metadata !52, i32 1518, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1518]
!479 = metadata !{i32 786688, metadata !480, metadata !"a", metadata !52, i32 1552, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1552]
!480 = metadata !{i32 786443, metadata !1, metadata !481, i32 1551, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!481 = metadata !{i32 786443, metadata !1, metadata !443, i32 1550, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!482 = metadata !{i32 786688, metadata !480, metadata !"b", metadata !52, i32 1552, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1552]
!483 = metadata !{i32 786688, metadata !484, metadata !"a", metadata !52, i32 1686, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1686]
!484 = metadata !{i32 786443, metadata !1, metadata !485, i32 1685, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!485 = metadata !{i32 786443, metadata !1, metadata !443, i32 1684, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!486 = metadata !{i32 786688, metadata !484, metadata !"b", metadata !52, i32 1686, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1686]
!487 = metadata !{i32 786688, metadata !488, metadata !"a", metadata !52, i32 1720, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1720]
!488 = metadata !{i32 786443, metadata !1, metadata !489, i32 1719, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!489 = metadata !{i32 786443, metadata !1, metadata !443, i32 1718, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!490 = metadata !{i32 786688, metadata !488, metadata !"b", metadata !52, i32 1720, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1720]
!491 = metadata !{metadata !492, metadata !495, metadata !496, metadata !500, metadata !501, metadata !504, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !528, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !570, metadata !665, metadata !666, metadata !667, metadata !669, metadata !670, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !689, metadata !690, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !706, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !717, metadata !720, metadata !721, metadata !722, metadata !723, metadata !726, metadata !727, metadata !738, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846}
!492 = metadata !{i32 786484, i32 0, null, metadata !"quant_coef8", metadata !"quant_coef8", metadata !"", metadata !52, i32 40, metadata !493, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @quant_coef8, null} ; [ DW_TAG_variable ] [quant_coef8] [line 40] [def]
!493 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12288, i64 32, i32 0, i32 0, metadata !439, metadata !494, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12288, align 32, offset 0] [from ]
!494 = metadata !{metadata !318, metadata !90, metadata !90}
!495 = metadata !{i32 786484, i32 0, null, metadata !"dequant_coef8", metadata !"dequant_coef8", metadata !"", metadata !52, i32 105, metadata !493, i32 0, i32 1, [6 x [8 x [8 x i32]]]* @dequant_coef8, null} ; [ DW_TAG_variable ] [dequant_coef8] [line 105] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"SNGL_SCAN8x8", metadata !"SNGL_SCAN8x8", metadata !"", metadata !52, i32 172, metadata !497, i32 0, i32 1, [64 x [2 x i8]]* @SNGL_SCAN8x8, null} ; [ DW_TAG_variable ] [SNGL_SCAN8x8] [line 172] [def]
!497 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !498, metadata !499, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from ]
!498 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from byte]
!499 = metadata !{metadata !85, metadata !134}
!500 = metadata !{i32 786484, i32 0, null, metadata !"FIELD_SCAN8x8", metadata !"FIELD_SCAN8x8", metadata !"", metadata !52, i32 185, metadata !497, i32 0, i32 1, [64 x [2 x i8]]* @FIELD_SCAN8x8, null} ; [ DW_TAG_variable ] [FIELD_SCAN8x8] [line 185] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"COEFF_COST8x8", metadata !"COEFF_COST8x8", metadata !"", metadata !52, i32 198, metadata !502, i32 0, i32 1, [2 x [64 x i8]]* @COEFF_COST8x8, null} ; [ DW_TAG_variable ] [COEFF_COST8x8] [line 198] [def]
!502 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !498, metadata !503, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from ]
!503 = metadata !{metadata !134, metadata !85}
!504 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !505, i32 558, metadata !506, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!505 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!506 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !507} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!507 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !508} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!508 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !509, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !516, metadata !517, metadata !519, metadata !520}
!510 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!511 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!512 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !513} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!513 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !203, metadata !514, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!516 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !55} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!517 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !518} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!518 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!519 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !518} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!520 = metadata !{i32 786445, metadata !9, metadata !508, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !518} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!521 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !505, i32 559, metadata !506, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!522 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !505, i32 560, metadata !506, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!523 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !505, i32 561, metadata !506, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!524 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !505, i32 562, metadata !506, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !505, i32 565, metadata !104, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !505, i32 566, metadata !527, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!527 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!528 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !505, i32 567, metadata !529, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!529 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!530 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !505, i32 569, metadata !242, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !505, i32 570, metadata !242, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !505, i32 572, metadata !55, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !505, i32 572, metadata !55, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!534 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !505, i32 573, metadata !535, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!535 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!536 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !537} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!537 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !538, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!538 = metadata !{metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569}
!539 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!540 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !242} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!541 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !242} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!542 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !374} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!543 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !374} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!544 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !374} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!545 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !389} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!546 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !374} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!547 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !242} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!548 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !242} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!549 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !550} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!550 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !242, metadata !158, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!551 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !550} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!552 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !550} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!553 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !374} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!554 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !242} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!555 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !242} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!556 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !235} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!557 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !55} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!558 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !55} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!559 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !374} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!560 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !242} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!561 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !55} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!562 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !55} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!563 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !55} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!564 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !55} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!565 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !55} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!566 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !374} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!567 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !374} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!568 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !374} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!569 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !374} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!570 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !505, i32 574, metadata !571, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!571 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !572} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!572 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !573} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!573 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !574, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!574 = metadata !{metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612}
!575 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!576 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !242} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!577 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !374} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!578 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !374} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!579 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !374} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!580 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !374} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!581 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !242} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!582 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !242} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!583 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !242} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!584 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !374} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!585 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !389} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!586 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !242} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!587 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !242} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!588 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !242} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!589 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !242} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!590 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !242} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!591 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !374} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!592 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !55} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!593 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !55} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!594 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !242} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!595 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !596} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!596 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !55, metadata !597, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!597 = metadata !{metadata !598}
!598 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!599 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !242} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!600 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !374} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!601 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !242} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!602 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !242} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!603 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !374} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!604 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !374} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!605 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !374} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!606 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !374} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!607 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !242} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!608 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !242} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!609 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !242} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!610 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !242} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!611 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !374} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!612 = metadata !{i32 786445, metadata !4, metadata !573, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !613} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!613 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !614} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!614 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !615, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!615 = metadata !{metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664}
!616 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!617 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !242} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!618 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !242} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!619 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !242} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!620 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !374} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!621 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !374} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!622 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !374} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!623 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !242} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!624 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !374} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!625 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !374} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!626 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !242} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!627 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !242} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!628 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !242} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!629 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !374} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!630 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !242} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!631 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !242} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!632 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !374} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!633 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !242} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!634 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !242} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!635 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !374} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!636 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !374} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!637 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !638} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!638 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !639} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!639 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !640, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!640 = metadata !{metadata !641, metadata !642, metadata !643, metadata !644, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653}
!641 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!642 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !242} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!643 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !242} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!644 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !645} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!645 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !242, metadata !646, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!646 = metadata !{metadata !647}
!647 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!648 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !645} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!649 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !645} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!650 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !242} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!651 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !242} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!652 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !242} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!653 = metadata !{i32 786445, metadata !4, metadata !639, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !242} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!654 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !374} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!655 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !638} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!656 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !374} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!657 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !374} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!658 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !374} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!659 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !242} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!660 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !242} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!661 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !242} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!662 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !242} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!663 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !242} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!664 = metadata !{i32 786445, metadata !4, metadata !614, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !242} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!665 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !505, i32 578, metadata !55, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !505, i32 579, metadata !55, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!667 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !505, i32 583, metadata !668, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!668 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !529} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!669 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !505, i32 584, metadata !668, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!670 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !505, i32 585, metadata !671, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!671 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !668} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!672 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !505, i32 586, metadata !55, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!673 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !505, i32 587, metadata !55, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!674 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !505, i32 588, metadata !55, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!675 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !505, i32 589, metadata !55, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!676 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !505, i32 592, metadata !104, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!677 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !505, i32 593, metadata !104, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!678 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !505, i32 595, metadata !527, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!679 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !505, i32 596, metadata !527, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!680 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !505, i32 598, metadata !104, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!681 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !505, i32 599, metadata !527, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!682 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !505, i32 601, metadata !104, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!683 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !505, i32 602, metadata !527, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!684 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !505, i32 604, metadata !685, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!685 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !686} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!686 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !687} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!687 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !688} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!688 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!689 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !505, i32 605, metadata !686, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!690 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !505, i32 608, metadata !691, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!691 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!692 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !505, i32 609, metadata !691, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!693 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !505, i32 610, metadata !55, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!694 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !505, i32 612, metadata !55, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!695 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !505, i32 612, metadata !55, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!696 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !505, i32 612, metadata !55, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!697 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !505, i32 613, metadata !55, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!698 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !505, i32 613, metadata !55, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!699 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !505, i32 613, metadata !55, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!700 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !505, i32 614, metadata !55, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!701 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !505, i32 617, metadata !702, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!702 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !703, metadata !704, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!703 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!704 = metadata !{metadata !705}
!705 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!706 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !505, i32 620, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!707 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !55, metadata !708, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!708 = metadata !{metadata !400, metadata !400}
!709 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !505, i32 620, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!710 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !505, i32 620, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!711 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !505, i32 621, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!712 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !505, i32 621, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!713 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !505, i32 621, metadata !707, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!714 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !505, i32 622, metadata !715, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!715 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !55, metadata !716, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!716 = metadata !{metadata !305, metadata !400, metadata !400}
!717 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !505, i32 623, metadata !718, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!718 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !55, metadata !719, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!719 = metadata !{metadata !134, metadata !135, metadata !135}
!720 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !505, i32 623, metadata !718, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!721 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !505, i32 624, metadata !718, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!722 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !505, i32 624, metadata !718, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!723 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !505, i32 625, metadata !724, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!724 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !55, metadata !725, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!725 = metadata !{metadata !135, metadata !135}
!726 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !505, i32 625, metadata !398, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!727 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !505, i32 1201, metadata !728, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!728 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !729} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!729 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !730} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!730 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !731, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!731 = metadata !{metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737}
!732 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!733 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !55} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!734 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!735 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !55} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!736 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!737 = metadata !{i32 786445, metadata !9, metadata !730, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !55} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!738 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !505, i32 1202, metadata !739, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!739 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !740} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!740 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !741} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!741 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !742, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!742 = metadata !{metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !762, metadata !763, metadata !764, metadata !765, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773}
!743 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!744 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !707} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!745 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !707} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!746 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !707} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!747 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !671} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!748 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !668} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!749 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !55} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!750 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !55} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!751 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !405} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!752 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !405} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!753 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !529} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!754 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !398} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!755 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !55} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!756 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !192} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!757 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !55} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!758 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !759} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!759 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !760} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!760 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !761} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!761 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !685} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!762 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !759} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!763 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !759} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!764 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !759} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!765 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !766} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!766 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !688, metadata !719, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!767 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !55} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!768 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !55} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!769 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !55} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!770 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !55} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!771 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !55} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!772 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !55} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!773 = metadata !{i32 786445, metadata !9, metadata !741, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !55} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!774 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !505, i32 1203, metadata !740, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!775 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !505, i32 1203, metadata !740, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!776 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !505, i32 1204, metadata !740, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!777 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !505, i32 1204, metadata !740, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!778 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !505, i32 1230, metadata !779, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!779 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !780} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!780 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !781} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!781 = metadata !{i32 786451, metadata !782, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !783, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!782 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!783 = metadata !{metadata !784, metadata !785, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !805, metadata !806, metadata !807, metadata !808, metadata !810, metadata !811, metadata !813, metadata !817, metadata !819, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !827, metadata !828}
!784 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!785 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!786 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !703} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!787 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!788 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!789 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!790 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!791 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!792 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!793 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!794 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!795 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!796 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !786} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!797 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !798} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!798 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !799} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!799 = metadata !{i32 786451, metadata !782, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !800, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!800 = metadata !{metadata !801, metadata !802, metadata !804}
!801 = metadata !{i32 786445, metadata !782, metadata !799, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !798} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!802 = metadata !{i32 786445, metadata !782, metadata !799, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !803} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!803 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !781} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!804 = metadata !{i32 786445, metadata !782, metadata !799, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!805 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !803} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!806 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !55} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!807 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !55} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!808 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !809} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!809 = metadata !{i32 786454, metadata !782, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!810 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!811 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !812} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!812 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!813 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !814} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!814 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !703, metadata !815, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!815 = metadata !{metadata !816}
!816 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!817 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !818} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!818 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!819 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !820} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!820 = metadata !{i32 786454, metadata !782, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!821 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !818} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!822 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !818} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!823 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !818} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!824 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !818} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!825 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !826} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!826 = metadata !{i32 786454, metadata !782, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!827 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !55} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!828 = metadata !{i32 786445, metadata !782, metadata !781, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !829} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!829 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !703, metadata !830, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!830 = metadata !{metadata !831}
!831 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!832 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !505, i32 1231, metadata !779, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!833 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !505, i32 1232, metadata !779, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!834 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !505, i32 1233, metadata !55, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!835 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !505, i32 1234, metadata !55, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!836 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !505, i32 1237, metadata !837, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!837 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !55, metadata !830, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!838 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !505, i32 1238, metadata !837, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!839 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !505, i32 1239, metadata !837, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!840 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !505, i32 1240, metadata !837, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!841 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !505, i32 1241, metadata !837, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!842 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !505, i32 1242, metadata !837, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!843 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !505, i32 1456, metadata !55, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!844 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !505, i32 1465, metadata !55, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!845 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !505, i32 1466, metadata !55, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!846 = metadata !{i32 786484, i32 0, null, metadata !"cofAC8x8_chroma", metadata !"cofAC8x8_chroma", metadata !"", metadata !52, i32 33, metadata !847, i32 0, i32 1, [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, null} ; [ DW_TAG_variable ] [cofAC8x8_chroma] [line 33] [def]
!847 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9216, i64 32, i32 0, i32 0, metadata !55, metadata !848, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9216, align 32, offset 0] [from int]
!848 = metadata !{metadata !134, metadata !135, metadata !134, metadata !849}
!849 = metadata !{i32 786465, i64 0, i64 18}      ; [ DW_TAG_subrange_type ] [0, 17]
!850 = metadata !{i32 217, i32 0, metadata !51, null}
!851 = metadata !{i32 219, i32 0, metadata !51, null}
!852 = metadata !{i32 221, i32 0, metadata !51, null}
!853 = metadata !{metadata !"int", metadata !854}
!854 = metadata !{metadata !"omnipotent char", metadata !855}
!855 = metadata !{metadata !"Simple C/C++ TBAA"}
!856 = metadata !{i32 223, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !51, i32 223, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!858 = metadata !{i32 225, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !857, i32 224, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!860 = metadata !{i32 227, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !859, i32 226, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!862 = metadata !{i32 228, i32 0, metadata !861, null}
!863 = metadata !{i32 229, i32 0, metadata !859, null}
!864 = metadata !{i32 232, i32 0, metadata !51, null}
!865 = metadata !{i32 242, i32 0, metadata !64, null}
!866 = metadata !{i32 244, i32 0, metadata !64, null}
!867 = metadata !{i32 245, i32 0, metadata !64, null}
!868 = metadata !{i32 246, i32 0, metadata !64, null}
!869 = metadata !{double 0.000000e+00}
!870 = metadata !{i32 247, i32 0, metadata !64, null}
!871 = metadata !{i32 249, i32 0, metadata !64, null}
!872 = metadata !{i32 250, i32 0, metadata !64, null}
!873 = metadata !{i32 251, i32 0, metadata !64, null}
!874 = metadata !{metadata !"any pointer", metadata !854}
!875 = metadata !{i32 252, i32 0, metadata !64, null}
!876 = metadata !{i32 253, i32 0, metadata !64, null}
!877 = metadata !{i32 254, i32 0, metadata !64, null}
!878 = metadata !{i32 255, i32 0, metadata !64, null}
!879 = metadata !{i32 256, i32 0, metadata !64, null}
!880 = metadata !{double 1.000000e+30}
!881 = metadata !{i32 257, i32 0, metadata !64, null}
!882 = metadata !{i32 258, i32 0, metadata !64, null}
!883 = metadata !{i32 261, i32 0, metadata !64, null}
!884 = metadata !{i32 267, i32 0, metadata !64, null}
!885 = metadata !{i32 268, i32 0, metadata !64, null}
!886 = metadata !{i32 273, i32 0, metadata !64, null}
!887 = metadata !{i32 274, i32 0, metadata !64, null}
!888 = metadata !{i32 276, i32 0, metadata !64, null}
!889 = metadata !{i32 277, i32 0, metadata !64, null}
!890 = metadata !{i32 279, i32 0, metadata !64, null}
!891 = metadata !{i32 286, i32 0, metadata !64, null}
!892 = metadata !{i32 281, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !64, i32 280, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!894 = metadata !{i32 282, i32 0, metadata !893, null}
!895 = metadata !{i32 283, i32 0, metadata !893, null}
!896 = metadata !{i32 285, i32 0, metadata !64, null}
!897 = metadata !{i32 288, i32 0, metadata !64, null}
!898 = metadata !{i32 289, i32 0, metadata !64, null}
!899 = metadata !{i32 290, i32 0, metadata !64, null}
!900 = metadata !{i32 292, i32 0, metadata !64, null}
!901 = metadata !{i32 294, i32 0, metadata !64, null}
!902 = metadata !{i32 296, i32 0, metadata !64, null}
!903 = metadata !{i32 299, i32 0, metadata !64, null}
!904 = metadata !{i32 302, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !64, i32 302, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!906 = metadata !{i32 304, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !905, i32 303, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!908 = metadata !{i32 369, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !910, i32 368, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!910 = metadata !{i32 786443, metadata !1, metadata !911, i32 367, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!911 = metadata !{i32 786443, metadata !1, metadata !912, i32 366, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!912 = metadata !{i32 786443, metadata !1, metadata !913, i32 364, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!913 = metadata !{i32 786443, metadata !1, metadata !914, i32 325, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!914 = metadata !{i32 786443, metadata !1, metadata !907, i32 308, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!915 = metadata !{i32 408, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !917, i32 398, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!917 = metadata !{i32 786443, metadata !1, metadata !912, i32 397, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!918 = metadata !{i32 415, i32 0, metadata !916, null}
!919 = metadata !{i32 453, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !921, i32 452, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!921 = metadata !{i32 786443, metadata !1, metadata !922, i32 451, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!922 = metadata !{i32 786443, metadata !1, metadata !923, i32 450, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!923 = metadata !{i32 786443, metadata !1, metadata !912, i32 448, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!924 = metadata !{i32 461, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !926, i32 461, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!926 = metadata !{i32 786443, metadata !1, metadata !927, i32 460, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!927 = metadata !{i32 786443, metadata !1, metadata !928, i32 456, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!928 = metadata !{i32 786443, metadata !1, metadata !923, i32 455, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!929 = metadata !{i32 463, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !931, i32 463, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!931 = metadata !{i32 786443, metadata !1, metadata !927, i32 462, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!932 = metadata !{i32 467, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !934, i32 466, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!934 = metadata !{i32 786443, metadata !1, metadata !927, i32 465, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!935 = metadata !{i32 317, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !914, i32 310, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!937 = metadata !{i32 316, i32 0, metadata !936, null}
!938 = metadata !{i32 309, i32 0, metadata !914, null}
!939 = metadata !{i32 314, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !941, i32 313, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!941 = metadata !{i32 786443, metadata !1, metadata !942, i32 312, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!942 = metadata !{i32 786443, metadata !1, metadata !936, i32 311, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!943 = metadata !{i32 311, i32 0, metadata !942, null}
!944 = metadata !{i32 312, i32 0, metadata !941, null}
!945 = metadata !{metadata !"short", metadata !854}
!946 = metadata !{i32 318, i32 0, metadata !936, null}
!947 = metadata !{i32 undef}
!948 = metadata !{i32 320, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !936, i32 319, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!950 = metadata !{i32 321, i32 0, metadata !949, null}
!951 = metadata !{i32 322, i32 0, metadata !949, null}
!952 = metadata !{i32 327, i32 0, metadata !913, null}
!953 = metadata !{i32 366, i32 0, metadata !911, null}
!954 = metadata !{i32 370, i32 0, metadata !909, null}
!955 = metadata !{i32 371, i32 0, metadata !909, null}
!956 = metadata !{i32 333, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !1, metadata !958, i32 332, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!958 = metadata !{i32 786443, metadata !1, metadata !959, i32 331, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!959 = metadata !{i32 786443, metadata !1, metadata !960, i32 330, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!960 = metadata !{i32 786443, metadata !1, metadata !913, i32 328, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!961 = metadata !{i32 334, i32 0, metadata !957, null}
!962 = metadata !{i32 331, i32 0, metadata !958, null}
!963 = metadata !{i32 330, i32 0, metadata !959, null}
!964 = metadata !{i32 338, i32 0, metadata !960, null}
!965 = metadata !{i32 341, i32 0, metadata !960, null}
!966 = metadata !{i32 347, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !968, i32 346, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!968 = metadata !{i32 786443, metadata !1, metadata !969, i32 345, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!969 = metadata !{i32 786443, metadata !1, metadata !970, i32 344, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!970 = metadata !{i32 786443, metadata !1, metadata !960, i32 342, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!971 = metadata !{i32 344, i32 0, metadata !969, null}
!972 = metadata !{i32 345, i32 0, metadata !968, null}
!973 = metadata !{i32 346, i32 0, metadata !967, null}
!974 = metadata !{i32 352, i32 0, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !976, i32 351, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!976 = metadata !{i32 786443, metadata !1, metadata !970, i32 350, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!977 = metadata !{i32 350, i32 0, metadata !976, null}
!978 = metadata !{i32 355, i32 0, metadata !970, null}
!979 = metadata !{i32 358, i32 0, metadata !970, null}
!980 = metadata !{i32 359, i32 0, metadata !970, null}
!981 = metadata !{i32 360, i32 0, metadata !970, null}
!982 = metadata !{i32 361, i32 0, metadata !960, null}
!983 = metadata !{i32 362, i32 0, metadata !960, null}
!984 = metadata !{i32 367, i32 0, metadata !910, null}
!985 = metadata !{i32 374, i32 0, metadata !909, null}
!986 = metadata !{i32 375, i32 0, metadata !909, null}
!987 = metadata !{i32 376, i32 0, metadata !909, null}
!988 = metadata !{i32 377, i32 0, metadata !909, null}
!989 = metadata !{i32 381, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !991, i32 381, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!991 = metadata !{i32 786443, metadata !1, metadata !912, i32 380, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!992 = metadata !{i32 383, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !990, i32 382, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!994 = metadata !{i32 380, i32 0, metadata !991, null}
!995 = metadata !{i32 386, i32 0, metadata !912, null}
!996 = metadata !{i32 387, i32 0, metadata !912, null}
!997 = metadata !{i32 388, i32 0, metadata !912, null}
!998 = metadata !{i32 390, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !912, i32 390, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1000 = metadata !{i32 393, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !1002, i32 392, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1002 = metadata !{i32 786443, metadata !1, metadata !999, i32 391, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1003 = metadata !{i32 391, i32 0, metadata !1002, null}
!1004 = metadata !{i32 396, i32 0, metadata !912, null}
!1005 = metadata !{i32 397, i32 0, metadata !917, null}
!1006 = metadata !{i32 406, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !1008, i32 405, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1008 = metadata !{i32 786443, metadata !1, metadata !1009, i32 404, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1009 = metadata !{i32 786443, metadata !1, metadata !916, i32 403, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1010 = metadata !{i32 400, i32 0, metadata !916, null}
!1011 = metadata !{i32 401, i32 0, metadata !916, null}
!1012 = metadata !{i32 403, i32 0, metadata !1009, null}
!1013 = metadata !{i32 404, i32 0, metadata !1008, null}
!1014 = metadata !{i32 409, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !916, i32 409, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1016 = metadata !{i32 412, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1018, i32 411, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1018 = metadata !{i32 786443, metadata !1, metadata !1015, i32 410, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1019 = metadata !{i32 410, i32 0, metadata !1018, null}
!1020 = metadata !{i32 413, i32 0, metadata !1017, null}
!1021 = metadata !{i32 416, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !916, i32 416, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1023 = metadata !{i32 419, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !1025, i32 418, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1025 = metadata !{i32 786443, metadata !1, metadata !1022, i32 417, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1026 = metadata !{i32 417, i32 0, metadata !1025, null}
!1027 = metadata !{i32 422, i32 0, metadata !912, null}
!1028 = metadata !{i32 424, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !912, i32 424, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1030 = metadata !{i32 432, i32 0, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !1032, i32 426, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1032 = metadata !{i32 786443, metadata !1, metadata !1029, i32 425, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1033 = metadata !{i32 433, i32 0, metadata !1031, null}
!1034 = metadata !{i32 434, i32 0, metadata !1031, null}
!1035 = metadata !{i32 425, i32 0, metadata !1032, null}
!1036 = metadata !{i32 428, i32 0, metadata !1031, null}
!1037 = metadata !{i32 429, i32 0, metadata !1031, null}
!1038 = metadata !{i32 430, i32 0, metadata !1031, null}
!1039 = metadata !{i32 431, i32 0, metadata !1031, null}
!1040 = metadata !{i32 441, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !1042, i32 440, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1042 = metadata !{i32 786443, metadata !1, metadata !1043, i32 439, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1043 = metadata !{i32 786443, metadata !1, metadata !912, i32 438, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1044 = metadata !{i32 442, i32 0, metadata !1041, null}
!1045 = metadata !{i32 443, i32 0, metadata !1041, null}
!1046 = metadata !{i32 438, i32 0, metadata !1043, null}
!1047 = metadata !{i32 439, i32 0, metadata !1042, null}
!1048 = metadata !{i32 445, i32 0, metadata !912, null}
!1049 = metadata !{i32 447, i32 0, metadata !912, null}
!1050 = metadata !{i32 450, i32 0, metadata !922, null}
!1051 = metadata !{i32 451, i32 0, metadata !921, null}
!1052 = metadata !{i32 452, i32 0, metadata !920, null}
!1053 = metadata !{i32 455, i32 0, metadata !928, null}
!1054 = metadata !{i32 457, i32 0, metadata !927, null}
!1055 = metadata !{i32 458, i32 0, metadata !927, null}
!1056 = metadata !{i32 460, i32 0, metadata !926, null}
!1057 = metadata !{i32 462, i32 0, metadata !931, null}
!1058 = metadata !{i32 471, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !1060, i32 471, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1060 = metadata !{i32 786443, metadata !1, metadata !933, i32 470, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1061 = metadata !{i32 465, i32 0, metadata !934, null}
!1062 = metadata !{i32 468, i32 0, metadata !933, null}
!1063 = metadata !{i32 470, i32 0, metadata !1060, null}
!1064 = metadata !{i32 478, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !1066, i32 477, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1066 = metadata !{i32 786443, metadata !1, metadata !923, i32 476, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1067 = metadata !{i32 476, i32 0, metadata !1066, null}
!1068 = metadata !{i32 481, i32 0, metadata !923, null}
!1069 = metadata !{i32 484, i32 0, metadata !923, null}
!1070 = metadata !{i32 485, i32 0, metadata !923, null}
!1071 = metadata !{i32 486, i32 0, metadata !923, null}
!1072 = metadata !{i32 493, i32 0, metadata !64, null}
!1073 = metadata !{i32 494, i32 0, metadata !64, null}
!1074 = metadata !{i32 496, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !64, i32 496, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1076 = metadata !{i32 498, i32 0, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !1, metadata !1075, i32 497, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1078 = metadata !{i32 497, i32 0, metadata !1077, null}
!1079 = metadata !{i32 501, i32 0, metadata !64, null}
!1080 = metadata !{i32 594, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 593, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !1083, i32 592, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1083 = metadata !{i32 786443, metadata !1, metadata !1084, i32 591, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1084 = metadata !{i32 786443, metadata !1, metadata !64, i32 589, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1085 = metadata !{i32 591, i32 0, metadata !1083, null}
!1086 = metadata !{i32 504, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !64, i32 502, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1088 = metadata !{i32 518, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1090, i32 518, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1090 = metadata !{i32 786443, metadata !1, metadata !1087, i32 517, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1091 = metadata !{i32 510, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1093, i32 509, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1093 = metadata !{i32 786443, metadata !1, metadata !1094, i32 508, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1094 = metadata !{i32 786443, metadata !1, metadata !1095, i32 507, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1095 = metadata !{i32 786443, metadata !1, metadata !1087, i32 505, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1096 = metadata !{i32 522, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !1098, i32 520, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1098 = metadata !{i32 786443, metadata !1, metadata !1089, i32 519, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1099 = metadata !{i32 523, i32 0, metadata !1097, null}
!1100 = metadata !{i32 524, i32 0, metadata !1097, null}
!1101 = metadata !{i32 511, i32 0, metadata !1092, null}
!1102 = metadata !{i32 508, i32 0, metadata !1093, null}
!1103 = metadata !{i32 507, i32 0, metadata !1094, null}
!1104 = metadata !{i32 514, i32 0, metadata !1095, null}
!1105 = metadata !{i32 515, i32 0, metadata !1095, null}
!1106 = metadata !{i32 521, i32 0, metadata !1097, null}
!1107 = metadata !{i32 519, i32 0, metadata !1098, null}
!1108 = metadata !{i32 527, i32 0, metadata !1097, null}
!1109 = metadata !{i32 528, i32 0, metadata !1097, null}
!1110 = metadata !{i32 529, i32 0, metadata !1097, null}
!1111 = metadata !{i32 530, i32 0, metadata !1097, null}
!1112 = metadata !{i32 534, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !1114, i32 534, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1114 = metadata !{i32 786443, metadata !1, metadata !1090, i32 533, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1115 = metadata !{i32 536, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1113, i32 535, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1117 = metadata !{i32 533, i32 0, metadata !1114, null}
!1118 = metadata !{i32 539, i32 0, metadata !1090, null}
!1119 = metadata !{i32 541, i32 0, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !1, metadata !1090, i32 541, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1121 = metadata !{i32 544, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1123, i32 543, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1123 = metadata !{i32 786443, metadata !1, metadata !1120, i32 542, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1124 = metadata !{i32 542, i32 0, metadata !1123, null}
!1125 = metadata !{i32 582, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1127, i32 576, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1127 = metadata !{i32 786443, metadata !1, metadata !1128, i32 575, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1128 = metadata !{i32 786443, metadata !1, metadata !1090, i32 574, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1129 = metadata !{i32 583, i32 0, metadata !1126, null}
!1130 = metadata !{i32 584, i32 0, metadata !1126, null}
!1131 = metadata !{i32 574, i32 0, metadata !1128, null}
!1132 = metadata !{i32 549, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1134, i32 548, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1134 = metadata !{i32 786443, metadata !1, metadata !1090, i32 547, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1135 = metadata !{i32 550, i32 0, metadata !1133, null}
!1136 = metadata !{i32 552, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1133, i32 552, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1138 = metadata !{i32 555, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !1140, i32 554, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1140 = metadata !{i32 786443, metadata !1, metadata !1137, i32 553, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1141 = metadata !{i32 553, i32 0, metadata !1140, null}
!1142 = metadata !{i32 557, i32 0, metadata !1133, null}
!1143 = metadata !{i32 558, i32 0, metadata !1133, null}
!1144 = metadata !{i32 559, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !1133, i32 559, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1146 = metadata !{i32 562, i32 0, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !1148, i32 561, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1148 = metadata !{i32 786443, metadata !1, metadata !1145, i32 560, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1149 = metadata !{i32 560, i32 0, metadata !1148, null}
!1150 = metadata !{i32 563, i32 0, metadata !1147, null}
!1151 = metadata !{i32 565, i32 0, metadata !1133, null}
!1152 = metadata !{i32 566, i32 0, metadata !1133, null}
!1153 = metadata !{i32 567, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1, metadata !1133, i32 567, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1155 = metadata !{i32 570, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !1, metadata !1157, i32 569, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1157 = metadata !{i32 786443, metadata !1, metadata !1154, i32 568, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1158 = metadata !{i32 568, i32 0, metadata !1157, null}
!1159 = metadata !{i32 547, i32 0, metadata !1134, null}
!1160 = metadata !{i32 575, i32 0, metadata !1127, null}
!1161 = metadata !{i32 578, i32 0, metadata !1126, null}
!1162 = metadata !{i32 579, i32 0, metadata !1126, null}
!1163 = metadata !{i32 580, i32 0, metadata !1126, null}
!1164 = metadata !{i32 581, i32 0, metadata !1126, null}
!1165 = metadata !{i32 592, i32 0, metadata !1082, null}
!1166 = metadata !{i32 593, i32 0, metadata !1081, null}
!1167 = metadata !{i32 597, i32 0, metadata !1084, null}
!1168 = metadata !{i32 600, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1170, i32 600, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1170 = metadata !{i32 786443, metadata !1, metadata !1171, i32 599, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1171 = metadata !{i32 786443, metadata !1, metadata !1172, i32 598, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1172 = metadata !{i32 786443, metadata !1, metadata !1084, i32 598, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1173 = metadata !{i32 602, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !1175, i32 602, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1175 = metadata !{i32 786443, metadata !1, metadata !1171, i32 601, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1176 = metadata !{i32 598, i32 0, metadata !1172, null}
!1177 = metadata !{i32 599, i32 0, metadata !1170, null}
!1178 = metadata !{i32 609, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !1180, i32 608, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1180 = metadata !{i32 786443, metadata !1, metadata !1181, i32 607, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1181 = metadata !{i32 786443, metadata !1, metadata !1084, i32 606, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1182 = metadata !{i32 610, i32 0, metadata !1179, null}
!1183 = metadata !{i32 606, i32 0, metadata !1181, null}
!1184 = metadata !{i32 601, i32 0, metadata !1175, null}
!1185 = metadata !{i32 607, i32 0, metadata !1180, null}
!1186 = metadata !{i32 614, i32 0, metadata !1084, null}
!1187 = metadata !{i32 624, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1189, i32 624, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1189 = metadata !{i32 786443, metadata !1, metadata !1190, i32 623, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1190 = metadata !{i32 786443, metadata !1, metadata !1191, i32 621, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1191 = metadata !{i32 786443, metadata !1, metadata !1192, i32 620, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1192 = metadata !{i32 786443, metadata !1, metadata !1193, i32 617, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1193 = metadata !{i32 786443, metadata !1, metadata !1194, i32 616, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1194 = metadata !{i32 786443, metadata !1, metadata !1084, i32 615, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1195 = metadata !{i32 616, i32 0, metadata !1193, null}
!1196 = metadata !{i32 618, i32 0, metadata !1192, null}
!1197 = metadata !{i32 619, i32 0, metadata !1192, null}
!1198 = metadata !{i32 620, i32 0, metadata !1191, null}
!1199 = metadata !{i32 623, i32 0, metadata !1189, null}
!1200 = metadata !{i32 631, i32 0, metadata !64, null}
!1201 = metadata !{i32 693, i32 0, metadata !136, null}
!1202 = metadata !{i32 697, i32 0, metadata !136, null}
!1203 = metadata !{i32 698, i32 0, metadata !136, null}
!1204 = metadata !{i32 700, i32 0, metadata !136, null}
!1205 = metadata !{i32 701, i32 0, metadata !136, null}
!1206 = metadata !{i32 702, i32 0, metadata !136, null}
!1207 = metadata !{i32 704, i32 0, metadata !136, null}
!1208 = metadata !{i32 705, i32 0, metadata !136, null}
!1209 = metadata !{i32 712, i32 0, metadata !1210, null}
!1210 = metadata !{i32 786443, metadata !1, metadata !136, i32 712, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1211 = metadata !{i32 714, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1, metadata !1210, i32 713, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1213 = metadata !{i32 717, i32 0, metadata !136, null}
!1214 = metadata !{i32 718, i32 0, metadata !136, null}
!1215 = metadata !{i32 719, i32 0, metadata !136, null}
!1216 = metadata !{i32 721, i32 0, metadata !136, null}
!1217 = metadata !{i32 723, i32 0, metadata !136, null}
!1218 = metadata !{i32 726, i32 0, metadata !1219, null}
!1219 = metadata !{i32 786443, metadata !1, metadata !1220, i32 725, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1220 = metadata !{i32 786443, metadata !1, metadata !136, i32 724, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1221 = metadata !{i32 725, i32 0, metadata !1219, null}
!1222 = metadata !{i32 727, i32 0, metadata !1220, null}
!1223 = metadata !{i32 728, i32 0, metadata !1220, null}
!1224 = metadata !{i32 729, i32 0, metadata !1220, null}
!1225 = metadata !{i32 733, i32 0, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !1, metadata !136, i32 732, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1227 = metadata !{i32 734, i32 0, metadata !1226, null}
!1228 = metadata !{i32 735, i32 0, metadata !1226, null}
!1229 = metadata !{i32 736, i32 0, metadata !1226, null}
!1230 = metadata !{i32 739, i32 0, metadata !136, null}
!1231 = metadata !{i32 740, i32 0, metadata !136, null}
!1232 = metadata !{i32 741, i32 0, metadata !136, null}
!1233 = metadata !{i32 748, i32 0, metadata !136, null}
!1234 = metadata !{i32 750, i32 0, metadata !1235, null}
!1235 = metadata !{i32 786443, metadata !1, metadata !136, i32 749, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1236 = metadata !{i32 751, i32 0, metadata !1235, null}
!1237 = metadata !{i32 752, i32 0, metadata !1235, null}
!1238 = metadata !{i32 753, i32 0, metadata !1235, null}
!1239 = metadata !{i32 754, i32 0, metadata !1235, null}
!1240 = metadata !{i32 755, i32 0, metadata !1235, null}
!1241 = metadata !{i32 756, i32 0, metadata !1235, null}
!1242 = metadata !{i32 757, i32 0, metadata !1235, null}
!1243 = metadata !{i32 758, i32 0, metadata !1235, null}
!1244 = metadata !{i32 761, i32 0, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !1, metadata !136, i32 760, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1246 = metadata !{i32 764, i32 0, metadata !136, null}
!1247 = metadata !{i32 766, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !1, metadata !136, i32 765, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1249 = metadata !{i32 767, i32 0, metadata !1248, null}
!1250 = metadata !{i32 768, i32 0, metadata !1248, null}
!1251 = metadata !{i32 769, i32 0, metadata !1248, null}
!1252 = metadata !{i32 770, i32 0, metadata !1248, null}
!1253 = metadata !{i32 771, i32 0, metadata !1248, null}
!1254 = metadata !{i32 772, i32 0, metadata !1248, null}
!1255 = metadata !{i32 773, i32 0, metadata !1248, null}
!1256 = metadata !{i32 775, i32 0, metadata !1248, null}
!1257 = metadata !{i32 778, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !136, i32 777, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1259 = metadata !{i32 781, i32 0, metadata !136, null}
!1260 = metadata !{i32 783, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !136, i32 782, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1262 = metadata !{i32 784, i32 0, metadata !1261, null}
!1263 = metadata !{i32 785, i32 0, metadata !1261, null}
!1264 = metadata !{i32 786, i32 0, metadata !1261, null}
!1265 = metadata !{i32 787, i32 0, metadata !1261, null}
!1266 = metadata !{i32 788, i32 0, metadata !1261, null}
!1267 = metadata !{i32 789, i32 0, metadata !1261, null}
!1268 = metadata !{i32 790, i32 0, metadata !1261, null}
!1269 = metadata !{i32 791, i32 0, metadata !1261, null}
!1270 = metadata !{i32 794, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1, metadata !136, i32 793, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1272 = metadata !{i32 797, i32 0, metadata !136, null}
!1273 = metadata !{i32 799, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !136, i32 798, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1275 = metadata !{i32 807, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !136, i32 806, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1277 = metadata !{i32 800, i32 0, metadata !1274, null}
!1278 = metadata !{i32 803, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !136, i32 802, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1280 = metadata !{i32 806, i32 0, metadata !1276, null}
!1281 = metadata !{i32 809, i32 0, metadata !136, null}
!1282 = metadata !{i32 814, i32 0, metadata !136, null}
!1283 = metadata !{i32 815, i32 0, metadata !136, null}
!1284 = metadata !{i32 818, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !136, i32 816, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1286 = metadata !{i32 819, i32 0, metadata !1285, null}
!1287 = metadata !{i32 820, i32 0, metadata !136, null}
!1288 = metadata !{i32 823, i32 0, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !136, i32 821, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1290 = metadata !{i32 824, i32 0, metadata !1289, null}
!1291 = metadata !{i32 825, i32 0, metadata !136, null}
!1292 = metadata !{i32 828, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !136, i32 826, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1294 = metadata !{i32 829, i32 0, metadata !1293, null}
!1295 = metadata !{i32 833, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !136, i32 831, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1297 = metadata !{i32 836, i32 0, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !136, i32 836, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1299 = metadata !{i32 838, i32 0, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !1, metadata !1301, i32 838, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1301 = metadata !{i32 786443, metadata !1, metadata !1298, i32 837, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1302 = metadata !{i32 841, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1, metadata !1300, i32 839, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1304 = metadata !{i32 852, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1306, i32 851, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1306 = metadata !{i32 786443, metadata !1, metadata !136, i32 850, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1307 = metadata !{i32 860, i32 0, metadata !1305, null}
!1308 = metadata !{i32 850, i32 0, metadata !1306, null}
!1309 = metadata !{i32 870, i32 0, metadata !136, null}
!1310 = metadata !{i32 871, i32 0, metadata !136, null}
!1311 = metadata !{i32 876, i32 0, metadata !136, null}
!1312 = metadata !{i32 879, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !136, i32 877, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1314 = metadata !{i32 880, i32 0, metadata !1313, null}
!1315 = metadata !{i32 882, i32 0, metadata !1313, null}
!1316 = metadata !{i32 885, i32 0, metadata !1313, null}
!1317 = metadata !{i32 889, i32 0, metadata !1313, null}
!1318 = metadata !{i32 894, i32 0, metadata !1313, null}
!1319 = metadata !{i32 900, i32 0, metadata !1313, null}
!1320 = metadata !{i32 907, i32 0, metadata !1313, null}
!1321 = metadata !{i32 915, i32 0, metadata !1313, null}
!1322 = metadata !{i32 922, i32 0, metadata !1313, null}
!1323 = metadata !{i32 928, i32 0, metadata !1313, null}
!1324 = metadata !{i32 933, i32 0, metadata !1313, null}
!1325 = metadata !{i32 937, i32 0, metadata !1313, null}
!1326 = metadata !{i32 940, i32 0, metadata !1313, null}
!1327 = metadata !{i32 942, i32 0, metadata !1313, null}
!1328 = metadata !{i32 947, i32 0, metadata !1313, null}
!1329 = metadata !{i32 948, i32 0, metadata !1313, null}
!1330 = metadata !{i32 950, i32 0, metadata !1313, null}
!1331 = metadata !{i32 953, i32 0, metadata !1313, null}
!1332 = metadata !{i32 957, i32 0, metadata !1313, null}
!1333 = metadata !{i32 961, i32 0, metadata !1313, null}
!1334 = metadata !{i32 965, i32 0, metadata !1313, null}
!1335 = metadata !{i32 969, i32 0, metadata !1313, null}
!1336 = metadata !{i32 973, i32 0, metadata !1313, null}
!1337 = metadata !{i32 976, i32 0, metadata !1313, null}
!1338 = metadata !{i32 978, i32 0, metadata !1313, null}
!1339 = metadata !{i32 979, i32 0, metadata !1313, null}
!1340 = metadata !{i32 980, i32 0, metadata !1313, null}
!1341 = metadata !{i32 982, i32 0, metadata !1313, null}
!1342 = metadata !{i32 985, i32 0, metadata !1313, null}
!1343 = metadata !{i32 989, i32 0, metadata !1313, null}
!1344 = metadata !{i32 993, i32 0, metadata !1313, null}
!1345 = metadata !{i32 997, i32 0, metadata !1313, null}
!1346 = metadata !{i32 1001, i32 0, metadata !1313, null}
!1347 = metadata !{i32 1005, i32 0, metadata !1313, null}
!1348 = metadata !{i32 1008, i32 0, metadata !1313, null}
!1349 = metadata !{i32 1010, i32 0, metadata !1313, null}
!1350 = metadata !{i32 1016, i32 0, metadata !136, null}
!1351 = metadata !{i32 1019, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !136, i32 1017, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1353 = metadata !{i32 1020, i32 0, metadata !1352, null}
!1354 = metadata !{i32 1022, i32 0, metadata !1352, null}
!1355 = metadata !{i32 1025, i32 0, metadata !1352, null}
!1356 = metadata !{i32 1029, i32 0, metadata !1352, null}
!1357 = metadata !{i32 1034, i32 0, metadata !1352, null}
!1358 = metadata !{i32 1040, i32 0, metadata !1352, null}
!1359 = metadata !{i32 1047, i32 0, metadata !1352, null}
!1360 = metadata !{i32 1055, i32 0, metadata !1352, null}
!1361 = metadata !{i32 1062, i32 0, metadata !1352, null}
!1362 = metadata !{i32 1068, i32 0, metadata !1352, null}
!1363 = metadata !{i32 1073, i32 0, metadata !1352, null}
!1364 = metadata !{i32 1077, i32 0, metadata !1352, null}
!1365 = metadata !{i32 1080, i32 0, metadata !1352, null}
!1366 = metadata !{i32 1082, i32 0, metadata !1352, null}
!1367 = metadata !{i32 1087, i32 0, metadata !1352, null}
!1368 = metadata !{i32 1091, i32 0, metadata !1352, null}
!1369 = metadata !{i32 1095, i32 0, metadata !1352, null}
!1370 = metadata !{i32 1099, i32 0, metadata !1352, null}
!1371 = metadata !{i32 1103, i32 0, metadata !1352, null}
!1372 = metadata !{i32 1107, i32 0, metadata !1352, null}
!1373 = metadata !{i32 1110, i32 0, metadata !1352, null}
!1374 = metadata !{i32 1112, i32 0, metadata !1352, null}
!1375 = metadata !{i32 1113, i32 0, metadata !1352, null}
!1376 = metadata !{i32 1117, i32 0, metadata !1352, null}
!1377 = metadata !{i32 1121, i32 0, metadata !1352, null}
!1378 = metadata !{i32 1125, i32 0, metadata !1352, null}
!1379 = metadata !{i32 1129, i32 0, metadata !1352, null}
!1380 = metadata !{i32 1133, i32 0, metadata !1352, null}
!1381 = metadata !{i32 1136, i32 0, metadata !1352, null}
!1382 = metadata !{i32 1138, i32 0, metadata !1352, null}
!1383 = metadata !{i32 1139, i32 0, metadata !1352, null}
!1384 = metadata !{i32 1142, i32 0, metadata !1352, null}
!1385 = metadata !{i32 1145, i32 0, metadata !1352, null}
!1386 = metadata !{i32 1147, i32 0, metadata !1352, null}
!1387 = metadata !{i32 1149, i32 0, metadata !1352, null}
!1388 = metadata !{i32 1150, i32 0, metadata !1352, null}
!1389 = metadata !{i32 1156, i32 0, metadata !1352, null}
!1390 = metadata !{i32 1160, i32 0, metadata !1352, null}
!1391 = metadata !{i32 1164, i32 0, metadata !1352, null}
!1392 = metadata !{i32 1168, i32 0, metadata !1352, null}
!1393 = metadata !{i32 1172, i32 0, metadata !1352, null}
!1394 = metadata !{i32 1176, i32 0, metadata !1352, null}
!1395 = metadata !{i32 1179, i32 0, metadata !1352, null}
!1396 = metadata !{i32 1181, i32 0, metadata !1352, null}
!1397 = metadata !{i32 1182, i32 0, metadata !1352, null}
!1398 = metadata !{i32 1186, i32 0, metadata !1352, null}
!1399 = metadata !{i32 1190, i32 0, metadata !1352, null}
!1400 = metadata !{i32 1194, i32 0, metadata !1352, null}
!1401 = metadata !{i32 1198, i32 0, metadata !1352, null}
!1402 = metadata !{i32 1202, i32 0, metadata !1352, null}
!1403 = metadata !{i32 1205, i32 0, metadata !1352, null}
!1404 = metadata !{i32 1207, i32 0, metadata !1352, null}
!1405 = metadata !{i32 1208, i32 0, metadata !1352, null}
!1406 = metadata !{i32 1211, i32 0, metadata !1352, null}
!1407 = metadata !{i32 1214, i32 0, metadata !1352, null}
!1408 = metadata !{i32 1216, i32 0, metadata !1352, null}
!1409 = metadata !{i32 1218, i32 0, metadata !1352, null}
!1410 = metadata !{i32 1219, i32 0, metadata !1352, null}
!1411 = metadata !{i32 1220, i32 0, metadata !1352, null}
!1412 = metadata !{i32 1225, i32 0, metadata !136, null}
!1413 = metadata !{i32 1227, i32 0, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !1, metadata !136, i32 1226, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1415 = metadata !{i32 1228, i32 0, metadata !1414, null}
!1416 = metadata !{i32 1230, i32 0, metadata !1414, null}
!1417 = metadata !{i32 1233, i32 0, metadata !1414, null}
!1418 = metadata !{i32 1237, i32 0, metadata !1414, null}
!1419 = metadata !{i32 1241, i32 0, metadata !1414, null}
!1420 = metadata !{i32 1245, i32 0, metadata !1414, null}
!1421 = metadata !{i32 1249, i32 0, metadata !1414, null}
!1422 = metadata !{i32 1269, i32 0, metadata !1414, null}
!1423 = metadata !{i32 1273, i32 0, metadata !1414, null}
!1424 = metadata !{i32 1277, i32 0, metadata !1414, null}
!1425 = metadata !{i32 1281, i32 0, metadata !1414, null}
!1426 = metadata !{i32 1285, i32 0, metadata !1414, null}
!1427 = metadata !{i32 1288, i32 0, metadata !1414, null}
!1428 = metadata !{i32 1290, i32 0, metadata !1414, null}
!1429 = metadata !{i32 1291, i32 0, metadata !1414, null}
!1430 = metadata !{i32 1292, i32 0, metadata !136, null}
!1431 = metadata !{i32 1373, i32 0, metadata !176, null}
!1432 = metadata !{i32 1375, i32 0, metadata !176, null}
!1433 = metadata !{i32 1376, i32 0, metadata !176, null}
!1434 = metadata !{i64 0}
!1435 = metadata !{i32 1377, i32 0, metadata !176, null}
!1436 = metadata !{i32 1378, i32 0, metadata !176, null}
!1437 = metadata !{i32 1379, i32 0, metadata !176, null}
!1438 = metadata !{i32 1380, i32 0, metadata !176, null}
!1439 = metadata !{i32 1381, i32 0, metadata !176, null}
!1440 = metadata !{i32 1382, i32 0, metadata !176, null}
!1441 = metadata !{i32 1383, i32 0, metadata !176, null}
!1442 = metadata !{i32 1384, i32 0, metadata !176, null}
!1443 = metadata !{i32 1386, i32 0, metadata !176, null}
!1444 = metadata !{i32 1387, i32 0, metadata !176, null}
!1445 = metadata !{i32 1388, i32 0, metadata !176, null}
!1446 = metadata !{i32 1389, i32 0, metadata !176, null}
!1447 = metadata !{i32 1393, i32 0, metadata !176, null}
!1448 = metadata !{i32 1395, i32 0, metadata !176, null}
!1449 = metadata !{i32 1398, i32 0, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !1, metadata !176, i32 1398, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1451 = metadata !{i32 1400, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1, metadata !1450, i32 1399, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1453 = metadata !{i32 1399, i32 0, metadata !1452, null}
!1454 = metadata !{i32 1403, i32 0, metadata !176, null}
!1455 = metadata !{i32 1406, i32 0, metadata !176, null}
!1456 = metadata !{i32 1407, i32 0, metadata !176, null}
!1457 = metadata !{i32 1410, i32 0, metadata !176, null}
!1458 = metadata !{i32 1411, i32 0, metadata !176, null}
!1459 = metadata !{i32 1414, i32 0, metadata !176, null}
!1460 = metadata !{i32 1415, i32 0, metadata !176, null}
!1461 = metadata !{i32 1417, i32 0, metadata !176, null}
!1462 = metadata !{i32 1420, i32 0, metadata !176, null}
!1463 = metadata !{i32 1421, i32 0, metadata !176, null}
!1464 = metadata !{i32 1423, i32 0, metadata !176, null}
!1465 = metadata !{i32 1425, i32 0, metadata !176, null}
!1466 = metadata !{i32 1427, i32 0, metadata !176, null}
!1467 = metadata !{i32 1431, i32 0, metadata !176, null}
!1468 = metadata !{i32 1435, i32 0, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !1, metadata !442, i32 1434, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1470 = metadata !{i32 1434, i32 0, metadata !1469, null}
!1471 = metadata !{i32 1439, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !1, metadata !176, i32 1438, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1473 = metadata !{i32 1443, i32 0, metadata !176, null}
!1474 = metadata !{i32 1445, i32 0, metadata !176, null}
!1475 = metadata !{i32 1448, i32 0, metadata !176, null}
!1476 = metadata !{i32 1449, i32 0, metadata !176, null}
!1477 = metadata !{i32 1470, i32 0, metadata !443, null}
!1478 = metadata !{i32 1478, i32 0, metadata !443, null}
!1479 = metadata !{i32 1480, i32 0, metadata !443, null}
!1480 = metadata !{i32 1481, i32 0, metadata !443, null}
!1481 = metadata !{i32 1482, i32 0, metadata !443, null}
!1482 = metadata !{i32 1483, i32 0, metadata !443, null}
!1483 = metadata !{i32 1484, i32 0, metadata !443, null}
!1484 = metadata !{i32 1485, i32 0, metadata !443, null}
!1485 = metadata !{i32 1487, i32 0, metadata !443, null}
!1486 = metadata !{i32 1488, i32 0, metadata !443, null}
!1487 = metadata !{i32 1490, i32 0, metadata !443, null}
!1488 = metadata !{i32 1491, i32 0, metadata !443, null}
!1489 = metadata !{i32 1492, i32 0, metadata !443, null}
!1490 = metadata !{i32 1494, i32 0, metadata !443, null}
!1491 = metadata !{i32 1496, i32 0, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !1, metadata !443, i32 1495, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1493 = metadata !{i32 1497, i32 0, metadata !1492, null}
!1494 = metadata !{i32 1498, i32 0, metadata !1492, null}
!1495 = metadata !{i32 1500, i32 0, metadata !443, null}
!1496 = metadata !{i32 1516, i32 0, metadata !477, null}
!1497 = metadata !{i32 1550, i32 0, metadata !481, null}
!1498 = metadata !{[8 x i32]* undef}
!1499 = metadata !{i32 1518, i32 0, metadata !476, null}
!1500 = metadata !{i32 1519, i32 0, metadata !476, null}
!1501 = metadata !{i32 1520, i32 0, metadata !476, null}
!1502 = metadata !{i32 1521, i32 0, metadata !476, null}
!1503 = metadata !{i32 1522, i32 0, metadata !476, null}
!1504 = metadata !{i32 1524, i32 0, metadata !476, null}
!1505 = metadata !{i32 1525, i32 0, metadata !476, null}
!1506 = metadata !{i32 1526, i32 0, metadata !476, null}
!1507 = metadata !{i32 1527, i32 0, metadata !476, null}
!1508 = metadata !{i32 1529, i32 0, metadata !476, null}
!1509 = metadata !{i32 1530, i32 0, metadata !476, null}
!1510 = metadata !{i32 1531, i32 0, metadata !476, null}
!1511 = metadata !{i32 1532, i32 0, metadata !476, null}
!1512 = metadata !{i32 1534, i32 0, metadata !476, null}
!1513 = metadata !{i32 1535, i32 0, metadata !476, null}
!1514 = metadata !{i32 1536, i32 0, metadata !476, null}
!1515 = metadata !{i32 1537, i32 0, metadata !476, null}
!1516 = metadata !{i32 1539, i32 0, metadata !476, null}
!1517 = metadata !{i32 1540, i32 0, metadata !476, null}
!1518 = metadata !{i32 1541, i32 0, metadata !476, null}
!1519 = metadata !{i32 1542, i32 0, metadata !476, null}
!1520 = metadata !{i32 1543, i32 0, metadata !476, null}
!1521 = metadata !{i32 1544, i32 0, metadata !476, null}
!1522 = metadata !{i32 1545, i32 0, metadata !476, null}
!1523 = metadata !{i32 1546, i32 0, metadata !476, null}
!1524 = metadata !{i32 1552, i32 0, metadata !480, null}
!1525 = metadata !{i32 1553, i32 0, metadata !480, null}
!1526 = metadata !{i32 1554, i32 0, metadata !480, null}
!1527 = metadata !{i32 1555, i32 0, metadata !480, null}
!1528 = metadata !{i32 1556, i32 0, metadata !480, null}
!1529 = metadata !{i32 1558, i32 0, metadata !480, null}
!1530 = metadata !{i32 1559, i32 0, metadata !480, null}
!1531 = metadata !{i32 1560, i32 0, metadata !480, null}
!1532 = metadata !{i32 1561, i32 0, metadata !480, null}
!1533 = metadata !{i32 1563, i32 0, metadata !480, null}
!1534 = metadata !{i32 1564, i32 0, metadata !480, null}
!1535 = metadata !{i32 1565, i32 0, metadata !480, null}
!1536 = metadata !{i32 1566, i32 0, metadata !480, null}
!1537 = metadata !{i32 1568, i32 0, metadata !480, null}
!1538 = metadata !{i32 1569, i32 0, metadata !480, null}
!1539 = metadata !{i32 1570, i32 0, metadata !480, null}
!1540 = metadata !{i32 1571, i32 0, metadata !480, null}
!1541 = metadata !{i32 1573, i32 0, metadata !480, null}
!1542 = metadata !{i32 1574, i32 0, metadata !480, null}
!1543 = metadata !{i32 1575, i32 0, metadata !480, null}
!1544 = metadata !{i32 1576, i32 0, metadata !480, null}
!1545 = metadata !{i32 1577, i32 0, metadata !480, null}
!1546 = metadata !{i32 1578, i32 0, metadata !480, null}
!1547 = metadata !{i32 1579, i32 0, metadata !480, null}
!1548 = metadata !{i32 1580, i32 0, metadata !480, null}
!1549 = metadata !{i32 1586, i32 0, metadata !443, null}
!1550 = metadata !{i32 -1}
!1551 = metadata !{i32 1588, i32 0, metadata !443, null}
!1552 = metadata !{i32 1589, i32 0, metadata !443, null}
!1553 = metadata !{i32 1592, i32 0, metadata !443, null}
!1554 = metadata !{i32 1591, i32 0, metadata !443, null}
!1555 = metadata !{i32 1594, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !1, metadata !443, i32 1594, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1557 = metadata !{i32 1597, i32 0, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !1, metadata !1556, i32 1595, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1559 = metadata !{i32 1626, i32 0, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !1, metadata !1558, i32 1623, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1561 = metadata !{i32 1654, i32 0, metadata !1560, null}
!1562 = metadata !{i32 1656, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1655, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1564 = metadata !{i32 1657, i32 0, metadata !1563, null}
!1565 = metadata !{i32 1616, i32 0, metadata !1558, null}
!1566 = metadata !{i32 1599, i32 0, metadata !1567, null}
!1567 = metadata !{i32 786443, metadata !1, metadata !1558, i32 1598, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1568 = metadata !{i32 1600, i32 0, metadata !1567, null}
!1569 = metadata !{i32 1608, i32 0, metadata !1558, null}
!1570 = metadata !{i32 1609, i32 0, metadata !1558, null}
!1571 = metadata !{i32 1611, i32 0, metadata !1558, null}
!1572 = metadata !{i32 1614, i32 0, metadata !1558, null}
!1573 = metadata !{i32 1613, i32 0, metadata !1558, null}
!1574 = metadata !{i32 1615, i32 0, metadata !1558, null}
!1575 = metadata !{i32 1619, i32 0, metadata !1558, null}
!1576 = metadata !{i32 1622, i32 0, metadata !1558, null}
!1577 = metadata !{i32 1}
!1578 = metadata !{i32 1624, i32 0, metadata !1560, null}
!1579 = metadata !{i32 1628, i32 0, metadata !1580, null}
!1580 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1627, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1581 = metadata !{i32 1629, i32 0, metadata !1580, null}
!1582 = metadata !{i32 1631, i32 0, metadata !1580, null}
!1583 = metadata !{i32 1633, i32 0, metadata !1580, null}
!1584 = metadata !{i32 1634, i32 0, metadata !1580, null}
!1585 = metadata !{i32 1635, i32 0, metadata !1580, null}
!1586 = metadata !{i32 1636, i32 0, metadata !1580, null}
!1587 = metadata !{i32 1637, i32 0, metadata !1580, null}
!1588 = metadata !{i32 1640, i32 0, metadata !1589, null}
!1589 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1639, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1590 = metadata !{i32 1641, i32 0, metadata !1589, null}
!1591 = metadata !{i32 1643, i32 0, metadata !1589, null}
!1592 = metadata !{i32 1644, i32 0, metadata !1589, null}
!1593 = metadata !{i32 1645, i32 0, metadata !1589, null}
!1594 = metadata !{i32 1646, i32 0, metadata !1589, null}
!1595 = metadata !{i32 1647, i32 0, metadata !1589, null}
!1596 = metadata !{i32 1649, i32 0, metadata !1560, null}
!1597 = metadata !{i32 1650, i32 0, metadata !1560, null}
!1598 = metadata !{i32 1659, i32 0, metadata !1563, null}
!1599 = metadata !{i32 1669, i32 0, metadata !1558, null}
!1600 = metadata !{i32 1664, i32 0, metadata !1601, null}
!1601 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1662, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1602 = metadata !{i32 1663, i32 0, metadata !1601, null}
!1603 = metadata !{i32 1666, i32 0, metadata !1601, null}
!1604 = metadata !{i32 1670, i32 0, metadata !1558, null}
!1605 = metadata !{i32 1672, i32 0, metadata !443, null}
!1606 = metadata !{i32 1676, i32 0, metadata !1607, null}
!1607 = metadata !{i32 786443, metadata !1, metadata !443, i32 1675, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1608 = metadata !{i32 1675, i32 0, metadata !1607, null}
!1609 = metadata !{i32 1673, i32 0, metadata !443, null}
!1610 = metadata !{i32 1684, i32 0, metadata !485, null}
!1611 = metadata !{i32 1687, i32 0, metadata !484, null}
!1612 = metadata !{i32 1718, i32 0, metadata !489, null}
!1613 = metadata !{i32 1755, i32 0, metadata !1614, null}
!1614 = metadata !{i32 786443, metadata !1, metadata !1615, i32 1753, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1615 = metadata !{i32 786443, metadata !1, metadata !1616, i32 1752, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1616 = metadata !{i32 786443, metadata !1, metadata !443, i32 1751, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1617 = metadata !{i32 1741, i32 0, metadata !488, null}
!1618 = metadata !{i32 1686, i32 0, metadata !484, null}
!1619 = metadata !{i32 1688, i32 0, metadata !484, null}
!1620 = metadata !{i32 1689, i32 0, metadata !484, null}
!1621 = metadata !{i32 1690, i32 0, metadata !484, null}
!1622 = metadata !{i32 1692, i32 0, metadata !484, null}
!1623 = metadata !{i32 1693, i32 0, metadata !484, null}
!1624 = metadata !{i32 1694, i32 0, metadata !484, null}
!1625 = metadata !{i32 1695, i32 0, metadata !484, null}
!1626 = metadata !{i32 1697, i32 0, metadata !484, null}
!1627 = metadata !{i32 1698, i32 0, metadata !484, null}
!1628 = metadata !{i32 1699, i32 0, metadata !484, null}
!1629 = metadata !{i32 1700, i32 0, metadata !484, null}
!1630 = metadata !{i32 1702, i32 0, metadata !484, null}
!1631 = metadata !{i32 1703, i32 0, metadata !484, null}
!1632 = metadata !{i32 1704, i32 0, metadata !484, null}
!1633 = metadata !{i32 1705, i32 0, metadata !484, null}
!1634 = metadata !{i32 1707, i32 0, metadata !484, null}
!1635 = metadata !{i32 1708, i32 0, metadata !484, null}
!1636 = metadata !{i32 1709, i32 0, metadata !484, null}
!1637 = metadata !{i32 1710, i32 0, metadata !484, null}
!1638 = metadata !{i32 1711, i32 0, metadata !484, null}
!1639 = metadata !{i32 1712, i32 0, metadata !484, null}
!1640 = metadata !{i32 1713, i32 0, metadata !484, null}
!1641 = metadata !{i32 1714, i32 0, metadata !484, null}
!1642 = metadata !{i32 1758, i32 0, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !1, metadata !1614, i32 1756, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1644 = metadata !{i32 1759, i32 0, metadata !1643, null}
!1645 = metadata !{i32 1751, i32 0, metadata !1616, null}
!1646 = metadata !{i32 1720, i32 0, metadata !488, null}
!1647 = metadata !{i32 1721, i32 0, metadata !488, null}
!1648 = metadata !{i32 1722, i32 0, metadata !488, null}
!1649 = metadata !{i32 1723, i32 0, metadata !488, null}
!1650 = metadata !{i32 1724, i32 0, metadata !488, null}
!1651 = metadata !{i32 1726, i32 0, metadata !488, null}
!1652 = metadata !{i32 1727, i32 0, metadata !488, null}
!1653 = metadata !{i32 1728, i32 0, metadata !488, null}
!1654 = metadata !{i32 1729, i32 0, metadata !488, null}
!1655 = metadata !{i32 1731, i32 0, metadata !488, null}
!1656 = metadata !{i32 1732, i32 0, metadata !488, null}
!1657 = metadata !{i32 1733, i32 0, metadata !488, null}
!1658 = metadata !{i32 1734, i32 0, metadata !488, null}
!1659 = metadata !{i32 1736, i32 0, metadata !488, null}
!1660 = metadata !{i32 1737, i32 0, metadata !488, null}
!1661 = metadata !{i32 1738, i32 0, metadata !488, null}
!1662 = metadata !{i32 1739, i32 0, metadata !488, null}
!1663 = metadata !{i32 1742, i32 0, metadata !488, null}
!1664 = metadata !{i32 1743, i32 0, metadata !488, null}
!1665 = metadata !{i32 1744, i32 0, metadata !488, null}
!1666 = metadata !{i32 1745, i32 0, metadata !488, null}
!1667 = metadata !{i32 1746, i32 0, metadata !488, null}
!1668 = metadata !{i32 1747, i32 0, metadata !488, null}
!1669 = metadata !{i32 1748, i32 0, metadata !488, null}
!1670 = metadata !{i32 1752, i32 0, metadata !1615, null}
!1671 = metadata !{i32 1754, i32 0, metadata !1614, null}
!1672 = metadata !{i32 1761, i32 0, metadata !1643, null}
!1673 = metadata !{i32 1767, i32 0, metadata !443, null}
!1674 = metadata !{i32 1770, i32 0, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !1, metadata !1676, i32 1769, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1676 = metadata !{i32 786443, metadata !1, metadata !443, i32 1768, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1677 = metadata !{i32 1768, i32 0, metadata !1676, null}
!1678 = metadata !{i32 1769, i32 0, metadata !1675, null}
!1679 = metadata !{i32 1773, i32 0, metadata !443, null}
!1680 = metadata !{i32 1300, i32 0, metadata !166, null}
!1681 = metadata !{i32 1303, i32 0, metadata !166, null}
!1682 = metadata !{i32 1306, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !166, i32 1306, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1684 = metadata !{i32 1307, i32 0, metadata !1683, null}
!1685 = metadata !{i32 1309, i32 0, metadata !166, null}
!1686 = metadata !{i32 1311, i32 0, metadata !1687, null}
!1687 = metadata !{i32 786443, metadata !1, metadata !166, i32 1310, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1688 = metadata !{i32 1313, i32 0, metadata !1689, null}
!1689 = metadata !{i32 786443, metadata !1, metadata !1687, i32 1312, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1690 = metadata !{i32 1314, i32 0, metadata !1689, null}
!1691 = metadata !{i32 1316, i32 0, metadata !1687, null}
!1692 = metadata !{i32 1321, i32 0, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !1, metadata !1694, i32 1320, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1694 = metadata !{i32 786443, metadata !1, metadata !1687, i32 1319, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1695 = metadata !{i32 1319, i32 0, metadata !1694, null}
!1696 = metadata !{i32 1323, i32 0, metadata !1687, null}
!1697 = metadata !{i32 1324, i32 0, metadata !1687, null}
!1698 = metadata !{i32 1326, i32 0, metadata !166, null}
!1699 = metadata !{i32 1329, i32 0, metadata !1700, null}
!1700 = metadata !{i32 786443, metadata !1, metadata !166, i32 1327, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1701 = metadata !{i32 1331, i32 0, metadata !1702, null}
!1702 = metadata !{i32 786443, metadata !1, metadata !1700, i32 1330, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1703 = metadata !{i32 1332, i32 0, metadata !1702, null}
!1704 = metadata !{i32 1335, i32 0, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !1, metadata !1700, i32 1334, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1706 = metadata !{i32 1336, i32 0, metadata !1705, null}
!1707 = metadata !{i32 1338, i32 0, metadata !1705, null}
!1708 = metadata !{i32 1339, i32 0, metadata !1705, null}
!1709 = metadata !{i32 1344, i32 0, metadata !166, null}
!1710 = metadata !{i32 1346, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !1, metadata !166, i32 1345, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1712 = metadata !{i32 1347, i32 0, metadata !1711, null}
!1713 = metadata !{i32 1349, i32 0, metadata !1711, null}
!1714 = metadata !{i32 1353, i32 0, metadata !1715, null}
!1715 = metadata !{i32 786443, metadata !1, metadata !1716, i32 1352, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1716 = metadata !{i32 786443, metadata !1, metadata !1711, i32 1351, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1717 = metadata !{i32 1351, i32 0, metadata !1716, null}
!1718 = metadata !{i32 1355, i32 0, metadata !1711, null}
!1719 = metadata !{i32 1356, i32 0, metadata !1711, null}
!1720 = metadata !{i32 1359, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !1, metadata !166, i32 1358, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/transform8x8.c]
!1722 = metadata !{i32 1360, i32 0, metadata !166, null}
