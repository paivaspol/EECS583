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
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@quant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 16
@dequant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@SNGL_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@COEFF_COST8x8 = constant [2 x [64 x i8]] [[64 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09"], align 16
@img = external global %struct.ImageParameters*
@imgY_org = external global i16**
@input = external global %struct.InputParameters*
@cofAC8x8 = external global i32****
@enc_picture = external global %struct.storable_picture*
@imgUV_org = external global i16***
@resTrans_R = external global [16 x [16 x i32]]
@resTrans_B = external global [16 x [16 x i32]]
@resTrans_G = external global [16 x [16 x i32]]
@rec_resG = external global [16 x [16 x i32]]
@rec_resR = external global [16 x [16 x i32]]
@rec_resB = external global [16 x [16 x i32]]
@cofAC8x8_chroma = common global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 16
@dc_level_temp = external global [2 x [4 x [4 x i32]]]
@dc_level = external global [2 x [4 x [4 x i32]]]
@cbp_chroma_block_temp = external global [2 x [4 x [4 x i32]]]
@cbp_chroma_block = external global [2 x [4 x [4 x i32]]]
@assignSE2partition = external global [2 x i32*]
@LevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]]
@LevelOffset8x8Luma_Intra = external global [13 x [8 x [8 x i32]]]
@LevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]]
@LevelOffset8x8Luma_Inter = external global [13 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]]
@InvLevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]]

; Function Attrs: nounwind optsize uwtable
define i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %lambda, i32* nocapture %min_cost) #0 {
entry:
  %cost8x8 = alloca i32, align 4
  %mul = fmul double %lambda, 6.000000e+00
  %add = fadd double %mul, 4.999000e-01
  %call = call double @floor(double %add) #4
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %min_cost, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %b8.011 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cbp.010 = phi i32 [ 0, %entry ], [ %cbp.1, %if.end ]
  %call2 = call i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 %b8.011, double %lambda, i32* %cost8x8) #5
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %shl = shl i32 1, %b8.011
  %or = or i32 %shl, %cbp.010
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %cbp.1 = phi i32 [ %or, %if.then ], [ %cbp.010, %for.body ]
  %0 = load i32* %cost8x8, align 4, !tbaa !0
  %1 = load i32* %min_cost, align 4, !tbaa !0
  %add3 = add nsw i32 %1, %0
  store i32 %add3, i32* %min_cost, align 4, !tbaa !0
  %inc = add nsw i32 %b8.011, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret i32 %cbp.1
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #1

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
  %0 = bitcast [64 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast [8 x [8 x i16]]* %rec8x8 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #2
  %rem = srem i32 %b8, 2
  %mul = shl nsw i32 %rem, 3
  %div = sdiv i32 %b8, 2
  %mul1 = shl nsw i32 %div, 3
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %pix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 33
  %3 = load i32* %pix_x, align 4, !tbaa !0
  %add = add nsw i32 %3, %mul
  %pix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 34
  %4 = load i32* %pix_y, align 4, !tbaa !0
  %add2 = add nsw i32 %4, %mul1
  %opix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 37
  %5 = load i32* %opix_x, align 4, !tbaa !0
  %add3 = add nsw i32 %5, %mul
  %opix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 38
  %6 = load i32* %opix_y, align 4, !tbaa !0
  %add4 = add nsw i32 %6, %mul1
  %div5 = sdiv i32 %add, 4
  %div6 = sdiv i32 %add2, 4
  %7 = load i16*** @imgY_org, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %8 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %8 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51
  %9 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %9, i64 %idxprom, i32 20
  %10 = load i32* %c_ipred_mode, align 4, !tbaa !0
  %11 = bitcast [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #2
  %div8 = sdiv i32 %mul, 4
  %div9 = sdiv i32 %mul1, 4
  call void @getLuma4x4Neighbour(i32 %8, i32 %div8, i32 %div9, i32 -1, i32 0, %struct.pix_pos* %left_block) #6
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr10 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 3
  %13 = load i32* %current_mb_nr10, align 4, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %13, i32 %div8, i32 %div9, i32 0, i32 -1, %struct.pix_pos* %top_block) #6
  %14 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 24
  %15 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !0
  %tobool = icmp eq i32 %15, 0
  %available31.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 0
  %.pre3221 = load i32* %available31.phi.trans.insert, align 4, !tbaa !0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool13 = icmp eq i32 %.pre3221, 0
  br i1 %tobool13, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 1
  %16 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %intra_block = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 54
  %18 = load i32** %intra_block, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %18, i64 %idxprom14
  %19 = load i32* %arrayidx15, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %if.then ]
  store i32 %cond, i32* %available31.phi.trans.insert, align 4, !tbaa !0
  %available17 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0
  %20 = load i32* %available17, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %20, 0
  br i1 %tobool18, label %cond.end25, label %cond.true19

cond.true19:                                      ; preds = %cond.end
  %mb_addr20 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 1
  %21 = load i32* %mb_addr20, align 4, !tbaa !0
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %intra_block22 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 54
  %23 = load i32** %intra_block22, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i32* %23, i64 %idxprom21
  %24 = load i32* %arrayidx23, align 4, !tbaa !0
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end, %cond.true19
  %cond26 = phi i32 [ %24, %cond.true19 ], [ 0, %cond.end ]
  store i32 %cond26, i32* %available17, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end25
  %25 = phi i32 [ %cond, %cond.end25 ], [ %.pre3221, %entry ]
  %b8.off = add i32 %b8, 1
  %26 = icmp ugt i32 %b8.off, 2
  %tobool32 = icmp ne i32 %25, 0
  br i1 %26, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end
  br i1 %tobool32, label %cond.true33, label %if.end53

cond.true33:                                      ; preds = %if.then30
  %pos_y = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 5
  %27 = load i32* %pos_y, align 4, !tbaa !0
  %idxprom34 = sext i32 %27 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 4
  %28 = load i32* %pos_x, align 4, !tbaa !0
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 26
  %30 = load i32*** %ipredmode8x8, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32** %30, i64 %idxprom35
  %31 = load i32** %arrayidx36, align 8, !tbaa !3
  %arrayidx37 = getelementptr inbounds i32* %31, i64 %idxprom34
  %32 = load i32* %arrayidx37, align 4, !tbaa !0
  br label %if.end53

if.else:                                          ; preds = %if.end
  br i1 %tobool32, label %cond.true43, label %if.end53

cond.true43:                                      ; preds = %if.else
  %pos_y44 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 5
  %33 = load i32* %pos_y44, align 4, !tbaa !0
  %idxprom45 = sext i32 %33 to i64
  %pos_x46 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 4
  %34 = load i32* %pos_x46, align 4, !tbaa !0
  %idxprom47 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 25
  %36 = load i32*** %ipredmode, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds i32** %36, i64 %idxprom47
  %37 = load i32** %arrayidx48, align 8, !tbaa !3
  %arrayidx49 = getelementptr inbounds i32* %37, i64 %idxprom45
  %38 = load i32* %arrayidx49, align 4, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then30, %cond.true43, %cond.true33
  %upMode.0 = phi i32 [ %32, %cond.true33 ], [ %38, %cond.true43 ], [ -1, %if.then30 ], [ -1, %if.else ]
  %tobool55 = icmp eq i32 %rem, 0
  %available57 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0
  %39 = load i32* %available57, align 4, !tbaa !0
  %tobool58 = icmp ne i32 %39, 0
  br i1 %tobool55, label %if.else70, label %if.then56

if.then56:                                        ; preds = %if.end53
  br i1 %tobool58, label %cond.true59, label %cond.end93

cond.true59:                                      ; preds = %if.then56
  %pos_y60 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 5
  %40 = load i32* %pos_y60, align 4, !tbaa !0
  %idxprom61 = sext i32 %40 to i64
  %pos_x62 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 4
  %41 = load i32* %pos_x62, align 4, !tbaa !0
  %idxprom63 = sext i32 %41 to i64
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode8x864 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 26
  %43 = load i32*** %ipredmode8x864, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i32** %43, i64 %idxprom63
  %44 = load i32** %arrayidx65, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds i32* %44, i64 %idxprom61
  br label %if.end84

if.else70:                                        ; preds = %if.end53
  br i1 %tobool58, label %cond.true73, label %cond.end93

cond.true73:                                      ; preds = %if.else70
  %pos_y74 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 5
  %45 = load i32* %pos_y74, align 4, !tbaa !0
  %idxprom75 = sext i32 %45 to i64
  %pos_x76 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 4
  %46 = load i32* %pos_x76, align 4, !tbaa !0
  %idxprom77 = sext i32 %46 to i64
  %47 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode78 = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 25
  %48 = load i32*** %ipredmode78, align 8, !tbaa !3
  %arrayidx79 = getelementptr inbounds i32** %48, i64 %idxprom77
  %49 = load i32** %arrayidx79, align 8, !tbaa !3
  %arrayidx80 = getelementptr inbounds i32* %49, i64 %idxprom75
  br label %if.end84

if.end84:                                         ; preds = %cond.true73, %cond.true59
  %leftMode.0.in = phi i32* [ %arrayidx66, %cond.true59 ], [ %arrayidx80, %cond.true73 ]
  %leftMode.0 = load i32* %leftMode.0.in, align 4
  %50 = or i32 %leftMode.0, %upMode.0
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %cond.end93, label %cond.false87

cond.false87:                                     ; preds = %if.end84
  %cmp88 = icmp slt i32 %upMode.0, %leftMode.0
  %cond92 = select i1 %cmp88, i32 %upMode.0, i32 %leftMode.0
  br label %cond.end93

cond.end93:                                       ; preds = %if.else70, %if.then56, %cond.false87, %if.end84
  %cond94 = phi i32 [ 2, %if.end84 ], [ %cond92, %cond.false87 ], [ 2, %if.then56 ], [ 2, %if.else70 ]
  store i32 2147483647, i32* %min_cost, align 4, !tbaa !0
  call void @intrapred_luma8x8(i32 %add, i32 %add2, i32* %left_available, i32* %up_available, i32* %all_available) #5
  %52 = load i32* %all_available, align 4, !tbaa !0
  %tobool111 = icmp eq i32 %52, 0
  %idxprom291 = sext i32 %10 to i64
  %add446 = add nsw i32 %b8, 4
  %add485 = add nsw i32 %b8, 8
  %idxprom906 = sext i32 %b8 to i64
  %idxprom949 = sext i32 %add446 to i64
  %idxprom979 = sext i32 %add485 to i64
  %mul1002 = shl i32 %div, 1
  %mul1007 = shl i32 %rem, 1
  %arraydecay = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  %mul144 = fmul double %lambda, 4.000000e+00
  %53 = load i32* %up_available, align 4, !tbaa !0
  %tobool103 = icmp eq i32 %53, 0
  %54 = load i32* %left_available, align 4, !tbaa !0
  %55 = sext i32 %mul to i64
  %56 = sext i32 %add3 to i64
  %57 = sext i32 %mul1 to i64
  %58 = sext i32 %add4 to i64
  %59 = sext i32 %add to i64
  %60 = sext i32 %add2 to i64
  %61 = shl i32 %rem, 3
  %62 = add i32 %3, %61
  %63 = sext i32 %62 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc1126, %cond.end93
  %indvars.iv3213 = phi i64 [ 0, %cond.end93 ], [ %indvars.iv.next3214, %for.inc1126 ]
  %best_ipmode.02870 = phi i32 [ 0, %cond.end93 ], [ %best_ipmode.2, %for.inc1126 ]
  %min_rdcost.02868 = phi double [ 1.000000e+30, %cond.end93 ], [ %min_rdcost.2, %for.inc1126 ]
  %nonzero.02866 = phi i32 [ 0, %cond.end93 ], [ %nonzero.2, %for.inc1126 ]
  %64 = trunc i64 %indvars.iv3213 to i32
  switch i32 %64, label %lor.lhs.false110 [
    i32 2, label %if.then112
    i32 7, label %land.lhs.true
    i32 3, label %land.lhs.true
    i32 0, label %land.lhs.true
    i32 8, label %land.lhs.true108
    i32 1, label %land.lhs.true108
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body
  br i1 %tobool103, label %lor.lhs.false104, label %if.then112

lor.lhs.false104:                                 ; preds = %land.lhs.true
  switch i32 %64, label %lor.lhs.false110 [
    i32 8, label %land.lhs.true108
    i32 1, label %land.lhs.true108
  ]

land.lhs.true108:                                 ; preds = %for.body, %for.body, %lor.lhs.false104, %lor.lhs.false104
  %tobool109.not = icmp ne i32 %54, 0
  %tobool111.not = xor i1 %tobool111, true
  %brmerge = or i1 %tobool109.not, %tobool111.not
  br i1 %brmerge, label %if.then112, label %for.inc1126

lor.lhs.false110:                                 ; preds = %for.body, %lor.lhs.false104
  br i1 %tobool111, label %for.inc1126, label %if.then112

if.then112:                                       ; preds = %land.lhs.true108, %for.body, %land.lhs.true, %lor.lhs.false110
  %65 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %rdopt = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 85
  %66 = load i32* %rdopt, align 4, !tbaa !0
  %tobool113 = icmp eq i32 %66, 0
  %67 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br i1 %tobool113, label %for.cond118.preheader, label %if.else154

for.cond118.preheader:                            ; preds = %if.then112, %for.inc137
  %indvars.iv3209 = phi i64 [ %indvars.iv.next3210, %for.inc137 ], [ 0, %if.then112 ]
  %indvars.iv3206 = phi i64 [ %indvars.iv.next3207, %for.inc137 ], [ 0, %if.then112 ]
  %68 = add nsw i64 %indvars.iv3206, %58
  %arrayidx125 = getelementptr inbounds i16** %7, i64 %68
  %69 = load i16** %arrayidx125, align 8, !tbaa !3
  br label %for.body120

for.body120:                                      ; preds = %for.body120, %for.cond118.preheader
  %indvars.iv3202 = phi i64 [ %indvars.iv3209, %for.cond118.preheader ], [ %indvars.iv.next3203, %for.body120 ]
  %indvars.iv3199 = phi i64 [ 0, %for.cond118.preheader ], [ %indvars.iv.next3200, %for.body120 ]
  %70 = add nsw i64 %indvars.iv3199, %56
  %arrayidx126 = getelementptr inbounds i16* %69, i64 %70
  %71 = load i16* %arrayidx126, align 2, !tbaa !4
  %conv = zext i16 %71 to i32
  %arrayidx132 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3206, i64 %indvars.iv3199
  %72 = load i16* %arrayidx132, align 2, !tbaa !4
  %conv133 = zext i16 %72 to i32
  %sub = sub nsw i32 %conv, %conv133
  %arrayidx135 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %indvars.iv3202
  store i32 %sub, i32* %arrayidx135, align 4, !tbaa !0
  %indvars.iv.next3200 = add i64 %indvars.iv3199, 1
  %indvars.iv.next3203 = add i64 %indvars.iv3202, 1
  %lftr.wideiv3204 = trunc i64 %indvars.iv.next3200 to i32
  %exitcond3205 = icmp eq i32 %lftr.wideiv3204, 8
  br i1 %exitcond3205, label %for.inc137, label %for.body120

for.inc137:                                       ; preds = %for.body120
  %indvars.iv.next3210 = add i64 %indvars.iv3209, 8
  %indvars.iv.next3207 = add i64 %indvars.iv3206, 1
  %lftr.wideiv3211 = trunc i64 %indvars.iv.next3207 to i32
  %exitcond3212 = icmp eq i32 %lftr.wideiv3211, 8
  br i1 %exitcond3212, label %for.end139, label %for.cond118.preheader

for.end139:                                       ; preds = %for.inc137
  %cmp140 = icmp eq i32 %64, %cond94
  br i1 %cmp140, label %cond.end146, label %cond.false143

cond.false143:                                    ; preds = %for.end139
  %call = call double @floor(double %mul144) #4
  %conv145 = fptosi double %call to i32
  br label %cond.end146

cond.end146:                                      ; preds = %for.end139, %cond.false143
  %cond147 = phi i32 [ %conv145, %cond.false143 ], [ 0, %for.end139 ]
  %hadamard = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 6
  %73 = load i32* %hadamard, align 4, !tbaa !0
  %call148 = call i32 @SATD8X8(i32* %arraydecay, i32 %73) #6
  %add149 = add nsw i32 %call148, %cond147
  %74 = load i32* %min_cost, align 4, !tbaa !0
  %cmp150 = icmp slt i32 %add149, %74
  br i1 %cmp150, label %if.then152, label %for.inc1126

if.then152:                                       ; preds = %cond.end146
  store i32 %add149, i32* %min_cost, align 4, !tbaa !0
  br label %for.inc1126

if.else154:                                       ; preds = %if.then112
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 164
  %75 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool155 = icmp eq i32 %75, 0
  br i1 %tobool155, label %for.cond161.preheader, label %for.cond271.preheader

for.cond271.preheader:                            ; preds = %if.else154
  %76 = load i16**** @imgUV_org, align 8, !tbaa !3
  %77 = load i16*** %76, align 8, !tbaa !3
  %78 = load i16*** @imgY_org, align 8, !tbaa !3
  %arrayidx318 = getelementptr inbounds i16*** %76, i64 1
  %79 = load i16*** %arrayidx318, align 8, !tbaa !3
  br label %for.cond275.preheader

for.cond161.preheader:                            ; preds = %if.else154, %for.inc201
  %indvars.iv3167 = phi i64 [ %indvars.iv.next3168, %for.inc201 ], [ 0, %if.else154 ]
  %80 = add nsw i64 %indvars.iv3167, %57
  %81 = add nsw i64 %indvars.iv3167, %58
  %arrayidx182 = getelementptr inbounds i16** %7, i64 %81
  %82 = load i16** %arrayidx182, align 8, !tbaa !3
  br label %for.body164

for.body164:                                      ; preds = %for.body164, %for.cond161.preheader
  %indvars.iv3161 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next3162, %for.body164 ]
  %arrayidx171 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3167, i64 %indvars.iv3161
  %83 = load i16* %arrayidx171, align 2, !tbaa !4
  %84 = add nsw i64 %indvars.iv3161, %55
  %arrayidx177 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 45, i64 %84, i64 %80
  store i16 %83, i16* %arrayidx177, align 2, !tbaa !4
  %85 = add nsw i64 %indvars.iv3161, %56
  %arrayidx183 = getelementptr inbounds i16* %82, i64 %85
  %86 = load i16* %arrayidx183, align 2, !tbaa !4
  %conv184 = zext i16 %86 to i32
  %87 = load i16* %arrayidx171, align 2, !tbaa !4
  %conv192 = zext i16 %87 to i32
  %sub193 = sub nsw i32 %conv184, %conv192
  %arrayidx197 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 %indvars.iv3161, i64 %indvars.iv3167
  store i32 %sub193, i32* %arrayidx197, align 4, !tbaa !0
  %indvars.iv.next3162 = add i64 %indvars.iv3161, 1
  %lftr.wideiv3165 = trunc i64 %indvars.iv.next3162 to i32
  %exitcond3166 = icmp eq i32 %lftr.wideiv3165, 8
  br i1 %exitcond3166, label %for.inc201, label %for.body164

for.inc201:                                       ; preds = %for.body164
  %indvars.iv.next3168 = add i64 %indvars.iv3167, 1
  %lftr.wideiv3171 = trunc i64 %indvars.iv.next3168 to i32
  %exitcond3172 = icmp eq i32 %lftr.wideiv3171, 8
  br i1 %exitcond3172, label %for.end203, label %for.cond161.preheader

for.end203:                                       ; preds = %for.inc201
  call void (...)* @store_coding_state_cs_cm() #6
  %call204 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %b8, i32 %64, double %lambda, double undef, i32 %cond94) #5
  %cmp205 = fcmp olt double %call204, %min_rdcost.02868
  br i1 %cmp205, label %for.cond208.preheader, label %if.end269

for.cond208.preheader:                            ; preds = %for.end203
  %88 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 47
  %89 = load i32***** %cofAC, align 8, !tbaa !3
  %arrayidx224 = getelementptr inbounds i32**** %89, i64 %idxprom906
  %90 = load i32**** %arrayidx224, align 8, !tbaa !3
  %91 = load i32***** @cofAC8x8, align 8, !tbaa !3
  %arrayidx232 = getelementptr inbounds i32**** %91, i64 %idxprom906
  %92 = load i32**** %arrayidx232, align 8, !tbaa !3
  br label %for.cond212.preheader

for.cond212.preheader:                            ; preds = %for.inc242, %for.cond208.preheader
  %indvars.iv3181 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next3182, %for.inc242 ]
  br label %for.cond216.preheader

for.cond216.preheader:                            ; preds = %for.inc239, %for.cond212.preheader
  %indvars.iv3177 = phi i64 [ 0, %for.cond212.preheader ], [ %indvars.iv.next3178, %for.inc239 ]
  br label %for.body219

for.body219:                                      ; preds = %for.body219, %for.cond216.preheader
  %indvars.iv3173 = phi i64 [ 0, %for.cond216.preheader ], [ %indvars.iv.next3174, %for.body219 ]
  %arrayidx225 = getelementptr inbounds i32*** %90, i64 %indvars.iv3173
  %93 = load i32*** %arrayidx225, align 8, !tbaa !3
  %arrayidx226 = getelementptr inbounds i32** %93, i64 %indvars.iv3181
  %94 = load i32** %arrayidx226, align 8, !tbaa !3
  %arrayidx227 = getelementptr inbounds i32* %94, i64 %indvars.iv3177
  %95 = load i32* %arrayidx227, align 4, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32*** %92, i64 %indvars.iv3173
  %96 = load i32*** %arrayidx233, align 8, !tbaa !3
  %arrayidx234 = getelementptr inbounds i32** %96, i64 %indvars.iv3181
  %97 = load i32** %arrayidx234, align 8, !tbaa !3
  %arrayidx235 = getelementptr inbounds i32* %97, i64 %indvars.iv3177
  store i32 %95, i32* %arrayidx235, align 4, !tbaa !0
  %indvars.iv.next3174 = add i64 %indvars.iv3173, 1
  %lftr.wideiv3175 = trunc i64 %indvars.iv.next3174 to i32
  %exitcond3176 = icmp eq i32 %lftr.wideiv3175, 4
  br i1 %exitcond3176, label %for.inc239, label %for.body219

for.inc239:                                       ; preds = %for.body219
  %indvars.iv.next3178 = add i64 %indvars.iv3177, 1
  %lftr.wideiv3179 = trunc i64 %indvars.iv.next3178 to i32
  %exitcond3180 = icmp eq i32 %lftr.wideiv3179, 65
  br i1 %exitcond3180, label %for.inc242, label %for.cond216.preheader

for.inc242:                                       ; preds = %for.inc239
  %indvars.iv.next3182 = add i64 %indvars.iv3181, 1
  %lftr.wideiv3183 = trunc i64 %indvars.iv.next3182 to i32
  %exitcond3184 = icmp eq i32 %lftr.wideiv3183, 2
  br i1 %exitcond3184, label %for.cond245.loopexit, label %for.cond212.preheader

for.cond245.loopexit:                             ; preds = %for.inc242
  %98 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %98, i64 0, i32 25
  %99 = load i16*** %imgY, align 8, !tbaa !3
  br label %for.cond249.preheader

for.cond249.preheader:                            ; preds = %for.cond249.preheader, %for.cond245.loopexit
  %indvars.iv3194 = phi i64 [ 0, %for.cond245.loopexit ], [ %indvars.iv.next3195, %for.cond249.preheader ]
  %scevgep3190 = getelementptr [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv3194, i64 0
  %scevgep31903191 = bitcast i16* %scevgep3190 to i8*
  %100 = add nsw i64 %indvars.iv3194, %60
  %arrayidx257 = getelementptr inbounds i16** %99, i64 %100
  %101 = load i16** %arrayidx257, align 8, !tbaa !3
  %scevgep3192 = getelementptr i16* %101, i64 %63
  %scevgep31923193 = bitcast i16* %scevgep3192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep31903191, i8* %scevgep31923193, i64 16, i32 2, i1 false)
  %indvars.iv.next3195 = add i64 %indvars.iv3194, 1
  %lftr.wideiv3197 = trunc i64 %indvars.iv.next3195 to i32
  %exitcond3198 = icmp eq i32 %lftr.wideiv3197, 8
  br i1 %exitcond3198, label %for.end268, label %for.cond249.preheader

for.end268:                                       ; preds = %for.cond249.preheader
  %102 = load i32* %c_nz, align 4, !tbaa !0
  br label %if.end269

if.end269:                                        ; preds = %for.end268, %for.end203
  %nonzero.1 = phi i32 [ %102, %for.end268 ], [ %nonzero.02866, %for.end203 ]
  %min_rdcost.1 = phi double [ %call204, %for.end268 ], [ %min_rdcost.02868, %for.end203 ]
  %best_ipmode.1 = phi i32 [ %64, %for.end268 ], [ %best_ipmode.02870, %for.end203 ]
  call void (...)* @reset_coding_state_cs_cm() #6
  br label %for.inc1126

for.cond275.preheader:                            ; preds = %for.inc362, %for.cond271.preheader
  %indvars.iv3026 = phi i64 [ 0, %for.cond271.preheader ], [ %indvars.iv.next3027, %for.inc362 ]
  %103 = add nsw i64 %indvars.iv3026, %58
  %arrayidx284 = getelementptr inbounds i16** %77, i64 %103
  %104 = load i16** %arrayidx284, align 8, !tbaa !3
  %105 = add nsw i64 %indvars.iv3026, %57
  %arrayidx302 = getelementptr inbounds i16** %78, i64 %103
  %106 = load i16** %arrayidx302, align 8, !tbaa !3
  %arrayidx319 = getelementptr inbounds i16** %79, i64 %103
  %107 = load i16** %arrayidx319, align 8, !tbaa !3
  br label %for.body278

for.body278:                                      ; preds = %for.body278, %for.cond275.preheader
  %indvars.iv3020 = phi i64 [ 0, %for.cond275.preheader ], [ %indvars.iv.next3021, %for.body278 ]
  %108 = add nsw i64 %indvars.iv3020, %56
  %arrayidx285 = getelementptr inbounds i16* %104, i64 %108
  %109 = load i16* %arrayidx285, align 2, !tbaa !4
  %conv286 = zext i16 %109 to i32
  %110 = add nsw i64 %indvars.iv3020, %55
  %arrayidx295 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %110, i64 %105
  %111 = load i16* %arrayidx295, align 2, !tbaa !4
  %conv296 = zext i16 %111 to i32
  %sub297 = sub nsw i32 %conv286, %conv296
  %arrayidx303 = getelementptr inbounds i16* %106, i64 %108
  %112 = load i16* %arrayidx303, align 2, !tbaa !4
  %conv304 = zext i16 %112 to i32
  %arrayidx311 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3026, i64 %indvars.iv3020
  %113 = load i16* %arrayidx311, align 2, !tbaa !4
  %conv312 = zext i16 %113 to i32
  %sub313 = sub nsw i32 %conv304, %conv312
  %arrayidx320 = getelementptr inbounds i16* %107, i64 %108
  %114 = load i16* %arrayidx320, align 2, !tbaa !4
  %conv321 = zext i16 %114 to i32
  %arrayidx331 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %110, i64 %105
  %115 = load i16* %arrayidx331, align 2, !tbaa !4
  %conv332 = zext i16 %115 to i32
  %sub333 = sub nsw i32 %conv321, %conv332
  %sub334 = sub i32 %sub333, %sub297
  %arrayidx338 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026
  store i32 %sub334, i32* %arrayidx338, align 4, !tbaa !0
  %shr = ashr i32 %sub334, 1
  %add343 = add nsw i32 %shr, %sub297
  %sub344 = sub i32 %sub313, %add343
  %arrayidx348 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026
  store i32 %sub344, i32* %arrayidx348, align 4, !tbaa !0
  %shr353 = ashr i32 %sub344, 1
  %add354 = add nsw i32 %shr353, %add343
  %arrayidx358 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv3020, i64 %indvars.iv3026
  store i32 %add354, i32* %arrayidx358, align 4, !tbaa !0
  %indvars.iv.next3021 = add i64 %indvars.iv3020, 1
  %lftr.wideiv3024 = trunc i64 %indvars.iv.next3021 to i32
  %exitcond3025 = icmp eq i32 %lftr.wideiv3024, 8
  br i1 %exitcond3025, label %for.inc362, label %for.body278

for.inc362:                                       ; preds = %for.body278
  %indvars.iv.next3027 = add i64 %indvars.iv3026, 1
  %lftr.wideiv3030 = trunc i64 %indvars.iv.next3027 to i32
  %exitcond3031 = icmp eq i32 %lftr.wideiv3030, 8
  br i1 %exitcond3031, label %for.cond369.preheader, label %for.cond275.preheader

for.cond369.preheader:                            ; preds = %for.inc362, %for.inc385
  %indvars.iv3036 = phi i64 [ %indvars.iv.next3037, %for.inc385 ], [ 0, %for.inc362 ]
  br label %for.body372

for.body372:                                      ; preds = %for.body372, %for.cond369.preheader
  %indvars.iv3032 = phi i64 [ 0, %for.cond369.preheader ], [ %indvars.iv.next3033, %for.body372 ]
  %arrayidx376 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv3032, i64 %indvars.iv3036
  %116 = load i32* %arrayidx376, align 4, !tbaa !0
  %arrayidx381 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 %indvars.iv3032, i64 %indvars.iv3036
  store i32 %116, i32* %arrayidx381, align 4, !tbaa !0
  %indvars.iv.next3033 = add i64 %indvars.iv3032, 1
  %lftr.wideiv3034 = trunc i64 %indvars.iv.next3033 to i32
  %exitcond3035 = icmp eq i32 %lftr.wideiv3034, 8
  br i1 %exitcond3035, label %for.inc385, label %for.body372

for.inc385:                                       ; preds = %for.body372
  %indvars.iv.next3037 = add i64 %indvars.iv3036, 1
  %lftr.wideiv3038 = trunc i64 %indvars.iv.next3037 to i32
  %exitcond3039 = icmp eq i32 %lftr.wideiv3038, 8
  br i1 %exitcond3039, label %for.end387, label %for.cond369.preheader

for.end387:                                       ; preds = %for.inc385
  call void (...)* @store_coding_state_cs_cm() #6
  %call388 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %b8, i32 %64, double %lambda, double undef, i32 %cond94) #5
  call void (...)* @reset_coding_state_cs_cm() #6
  %117 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond394.preheader

for.cond394.preheader:                            ; preds = %for.inc410, %for.end387
  %indvars.iv3044 = phi i64 [ 0, %for.end387 ], [ %indvars.iv.next3045, %for.inc410 ]
  br label %for.body397

for.body397:                                      ; preds = %for.body397, %for.cond394.preheader
  %indvars.iv3040 = phi i64 [ 0, %for.cond394.preheader ], [ %indvars.iv.next3041, %for.body397 ]
  %arrayidx402 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 46, i64 %indvars.iv3040, i64 %indvars.iv3044
  %118 = load i32* %arrayidx402, align 4, !tbaa !0
  %arrayidx406 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv3040, i64 %indvars.iv3044
  store i32 %118, i32* %arrayidx406, align 4, !tbaa !0
  %indvars.iv.next3041 = add i64 %indvars.iv3040, 1
  %lftr.wideiv3042 = trunc i64 %indvars.iv.next3041 to i32
  %exitcond3043 = icmp eq i32 %lftr.wideiv3042, 8
  br i1 %exitcond3043, label %for.inc410, label %for.body397

for.inc410:                                       ; preds = %for.body397
  %indvars.iv.next3045 = add i64 %indvars.iv3044, 1
  %lftr.wideiv3046 = trunc i64 %indvars.iv.next3045 to i32
  %exitcond3047 = icmp eq i32 %lftr.wideiv3046, 8
  br i1 %exitcond3047, label %for.end412, label %for.cond394.preheader

for.end412:                                       ; preds = %for.inc410
  %conv389 = fptosi double %call388 to i32
  call void (...)* @store_coding_state_cs_cm() #6
  %.pre3218 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.body416

for.body416:                                      ; preds = %for.inc513, %for.end412
  %119 = phi %struct.ImageParameters* [ %.pre3218, %for.end412 ], [ %130, %for.inc513 ]
  %b4.02835 = phi i32 [ 0, %for.end412 ], [ %inc514, %for.inc513 ]
  %rate.02834 = phi i32 [ %conv389, %for.end412 ], [ %add487, %for.inc513 ]
  %rem417 = srem i32 %b4.02835, 2
  %mul418 = shl nsw i32 %rem417, 2
  %div419 = sdiv i32 %b4.02835, 2
  %mul420 = shl nsw i32 %div419, 2
  %120 = sext i32 %mul418 to i64
  %121 = sext i32 %mul420 to i64
  br label %for.cond425.preheader

for.cond425.preheader:                            ; preds = %for.inc443, %for.body416
  %indvars.iv3053 = phi i64 [ 0, %for.body416 ], [ %indvars.iv.next3054, %for.inc443 ]
  %122 = add nsw i64 %indvars.iv3053, %121
  br label %for.body428

for.body428:                                      ; preds = %for.body428, %for.cond425.preheader
  %indvars.iv3048 = phi i64 [ 0, %for.cond425.preheader ], [ %indvars.iv.next3049, %for.body428 ]
  %123 = add nsw i64 %indvars.iv3048, %120
  %arrayidx434 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %123, i64 %122
  %124 = load i32* %arrayidx434, align 4, !tbaa !0
  %arrayidx439 = getelementptr inbounds %struct.ImageParameters* %119, i64 0, i32 46, i64 %indvars.iv3048, i64 %indvars.iv3053
  store i32 %124, i32* %arrayidx439, align 4, !tbaa !0
  %indvars.iv.next3049 = add i64 %indvars.iv3048, 1
  %lftr.wideiv3051 = trunc i64 %indvars.iv.next3049 to i32
  %exitcond3052 = icmp eq i32 %lftr.wideiv3051, 4
  br i1 %exitcond3052, label %for.inc443, label %for.body428

for.inc443:                                       ; preds = %for.body428
  %indvars.iv.next3054 = add i64 %indvars.iv3053, 1
  %lftr.wideiv3056 = trunc i64 %indvars.iv.next3054 to i32
  %exitcond3057 = icmp eq i32 %lftr.wideiv3056, 4
  br i1 %exitcond3057, label %for.end445, label %for.cond425.preheader

for.end445:                                       ; preds = %for.inc443
  %call447 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add446, i32 %b4.02835, i32 0) #6
  %125 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond453.preheader

for.cond453.preheader:                            ; preds = %for.inc482, %for.end445
  %indvars.iv3063 = phi i64 [ 0, %for.end445 ], [ %indvars.iv.next3064, %for.inc482 ]
  %126 = add nsw i64 %indvars.iv3063, %121
  br label %for.body456

for.body456:                                      ; preds = %for.body456, %for.cond453.preheader
  %indvars.iv3058 = phi i64 [ 0, %for.cond453.preheader ], [ %indvars.iv.next3059, %for.body456 ]
  %arrayidx461 = getelementptr inbounds %struct.ImageParameters* %125, i64 0, i32 46, i64 %indvars.iv3058, i64 %indvars.iv3063
  %127 = load i32* %arrayidx461, align 4, !tbaa !0
  %128 = add nsw i64 %indvars.iv3058, %120
  %arrayidx467 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %128, i64 %126
  store i32 %127, i32* %arrayidx467, align 4, !tbaa !0
  %arrayidx473 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %128, i64 %126
  %129 = load i32* %arrayidx473, align 4, !tbaa !0
  store i32 %129, i32* %arrayidx461, align 4, !tbaa !0
  %indvars.iv.next3059 = add i64 %indvars.iv3058, 1
  %lftr.wideiv3061 = trunc i64 %indvars.iv.next3059 to i32
  %exitcond3062 = icmp eq i32 %lftr.wideiv3061, 4
  br i1 %exitcond3062, label %for.inc482, label %for.body456

for.inc482:                                       ; preds = %for.body456
  %indvars.iv.next3064 = add i64 %indvars.iv3063, 1
  %lftr.wideiv3066 = trunc i64 %indvars.iv.next3064 to i32
  %exitcond3067 = icmp eq i32 %lftr.wideiv3066, 4
  br i1 %exitcond3067, label %for.end484, label %for.cond453.preheader

for.end484:                                       ; preds = %for.inc482
  %call486 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add485, i32 %b4.02835, i32 1) #6
  %130 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond492.preheader

for.cond492.preheader:                            ; preds = %for.inc510, %for.end484
  %indvars.iv3073 = phi i64 [ 0, %for.end484 ], [ %indvars.iv.next3074, %for.inc510 ]
  %131 = add nsw i64 %indvars.iv3073, %121
  br label %for.body495

for.body495:                                      ; preds = %for.body495, %for.cond492.preheader
  %indvars.iv3068 = phi i64 [ 0, %for.cond492.preheader ], [ %indvars.iv.next3069, %for.body495 ]
  %arrayidx500 = getelementptr inbounds %struct.ImageParameters* %130, i64 0, i32 46, i64 %indvars.iv3068, i64 %indvars.iv3073
  %132 = load i32* %arrayidx500, align 4, !tbaa !0
  %133 = add nsw i64 %indvars.iv3068, %120
  %arrayidx506 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %133, i64 %131
  store i32 %132, i32* %arrayidx506, align 4, !tbaa !0
  %indvars.iv.next3069 = add i64 %indvars.iv3068, 1
  %lftr.wideiv3071 = trunc i64 %indvars.iv.next3069 to i32
  %exitcond3072 = icmp eq i32 %lftr.wideiv3071, 4
  br i1 %exitcond3072, label %for.inc510, label %for.body495

for.inc510:                                       ; preds = %for.body495
  %indvars.iv.next3074 = add i64 %indvars.iv3073, 1
  %lftr.wideiv3076 = trunc i64 %indvars.iv.next3074 to i32
  %exitcond3077 = icmp eq i32 %lftr.wideiv3076, 4
  br i1 %exitcond3077, label %for.inc513, label %for.cond492.preheader

for.inc513:                                       ; preds = %for.inc510
  %add448 = add nsw i32 %call447, %rate.02834
  %add487 = add nsw i32 %add448, %call486
  %inc514 = add nsw i32 %b4.02835, 1
  %exitcond3078 = icmp eq i32 %inc514, 4
  br i1 %exitcond3078, label %for.end515, label %for.body416

for.end515:                                       ; preds = %for.inc513
  call void (...)* @reset_coding_state_cs_cm() #6
  %134 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 156
  %135 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgUV = getelementptr inbounds %struct.storable_picture* %135, i64 0, i32 30
  %136 = load i16**** %imgUV, align 8, !tbaa !3
  %137 = load i16*** %136, align 8, !tbaa !3
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 155
  %imgY685 = getelementptr inbounds %struct.storable_picture* %135, i64 0, i32 25
  %138 = load i16*** %imgY685, align 8, !tbaa !3
  %arrayidx762 = getelementptr inbounds i16*** %136, i64 1
  %139 = load i16*** %arrayidx762, align 8, !tbaa !3
  %.pre3219.pre = load i32* %max_imgpel_value_uv, align 4, !tbaa !0
  %.pre3220.pre = load i32* %max_imgpel_value, align 4, !tbaa !0
  br label %for.cond520.preheader

for.cond520.preheader:                            ; preds = %for.inc768, %for.end515
  %indvars.iv3085 = phi i64 [ 0, %for.end515 ], [ %indvars.iv.next3086, %for.inc768 ]
  %140 = add nsw i64 %indvars.iv3085, %57
  %141 = add nsw i64 %indvars.iv3085, %60
  %arrayidx623 = getelementptr inbounds i16** %137, i64 %141
  %142 = load i16** %arrayidx623, align 8, !tbaa !3
  %arrayidx686 = getelementptr inbounds i16** %138, i64 %141
  %143 = load i16** %arrayidx686, align 8, !tbaa !3
  %arrayidx763 = getelementptr inbounds i16** %139, i64 %141
  %144 = load i16** %arrayidx763, align 8, !tbaa !3
  br label %for.body523

for.body523:                                      ; preds = %for.body523, %for.cond520.preheader
  %indvars.iv3079 = phi i64 [ 0, %for.cond520.preheader ], [ %indvars.iv.next3080, %for.body523 ]
  %arrayidx527 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085
  %145 = load i32* %arrayidx527, align 4, !tbaa !0
  %arrayidx531 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085
  %146 = load i32* %arrayidx531, align 4, !tbaa !0
  %shr532 = ashr i32 %146, 1
  %sub533 = sub nsw i32 %145, %shr532
  %add538 = add nsw i32 %sub533, %146
  %arrayidx542 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv3079, i64 %indvars.iv3085
  %147 = load i32* %arrayidx542, align 4, !tbaa !0
  %shr543 = ashr i32 %147, 1
  %sub544 = sub nsw i32 %sub533, %shr543
  %add549 = add nsw i32 %sub544, %147
  %148 = add nsw i64 %indvars.iv3079, %55
  %arrayidx559 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %148, i64 %140
  %149 = load i16* %arrayidx559, align 2, !tbaa !4
  %conv560 = zext i16 %149 to i32
  %add561 = add nsw i32 %conv560, %sub544
  %cmp562 = icmp slt i32 %add561, 0
  %.add561 = select i1 %cmp562, i32 0, i32 %add561
  %cmp580 = icmp slt i32 %.pre3219.pre, %.add561
  %..add561 = select i1 %cmp580, i32 %.pre3219.pre, i32 %.add561
  %conv617 = trunc i32 %..add561 to i16
  %150 = add nsw i64 %indvars.iv3079, %59
  %arrayidx624 = getelementptr inbounds i16* %142, i64 %150
  store i16 %conv617, i16* %arrayidx624, align 2, !tbaa !4
  %arrayidx631 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 43, i64 %indvars.iv3213, i64 %indvars.iv3085, i64 %indvars.iv3079
  %151 = load i16* %arrayidx631, align 2, !tbaa !4
  %conv632 = zext i16 %151 to i32
  %add633 = add nsw i32 %add538, %conv632
  %cmp634 = icmp slt i32 %add633, 0
  %.add633 = select i1 %cmp634, i32 0, i32 %add633
  %cmp649 = icmp slt i32 %.pre3220.pre, %.add633
  %cond679 = select i1 %cmp649, i32 %.pre3220.pre, i32 %.add633
  %conv680 = trunc i32 %cond679 to i16
  %arrayidx687 = getelementptr inbounds i16* %143, i64 %150
  store i16 %conv680, i16* %arrayidx687, align 2, !tbaa !4
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %148, i64 %140
  %152 = load i16* %arrayidx698, align 2, !tbaa !4
  %conv699 = zext i16 %152 to i32
  %add700 = add nsw i32 %add549, %conv699
  %cmp701 = icmp slt i32 %add700, 0
  %.add700 = select i1 %cmp701, i32 0, i32 %add700
  %cmp719 = icmp slt i32 %.pre3219.pre, %.add700
  %..add700 = select i1 %cmp719, i32 %.pre3219.pre, i32 %.add700
  %conv756 = trunc i32 %..add700 to i16
  %arrayidx764 = getelementptr inbounds i16* %144, i64 %150
  store i16 %conv756, i16* %arrayidx764, align 2, !tbaa !4
  %indvars.iv.next3080 = add i64 %indvars.iv3079, 1
  %lftr.wideiv3083 = trunc i64 %indvars.iv.next3080 to i32
  %exitcond3084 = icmp eq i32 %lftr.wideiv3083, 8
  br i1 %exitcond3084, label %for.inc768, label %for.body523

for.inc768:                                       ; preds = %for.body523
  %indvars.iv.next3086 = add i64 %indvars.iv3085, 1
  %lftr.wideiv3089 = trunc i64 %indvars.iv.next3086 to i32
  %exitcond3090 = icmp eq i32 %lftr.wideiv3089, 8
  br i1 %exitcond3090, label %for.cond771.loopexit, label %for.cond520.preheader

for.cond771.loopexit:                             ; preds = %for.inc768
  %153 = load i16*** @imgY_org, align 8, !tbaa !3
  %154 = load i16**** @imgUV_org, align 8, !tbaa !3
  %155 = load i16*** %154, align 8, !tbaa !3
  %arrayidx847 = getelementptr inbounds i16*** %154, i64 1
  %156 = load i16*** %arrayidx847, align 8, !tbaa !3
  br label %for.cond775.preheader

for.cond775.preheader:                            ; preds = %for.inc881, %for.cond771.loopexit
  %indvars.iv3093 = phi i64 [ 0, %for.cond771.loopexit ], [ %indvars.iv.next3094, %for.inc881 ]
  %distortion.02841 = phi i32 [ 0, %for.cond771.loopexit ], [ %add877, %for.inc881 ]
  %157 = add nsw i64 %indvars.iv3093, %60
  %arrayidx783 = getelementptr inbounds i16** %153, i64 %157
  %158 = load i16** %arrayidx783, align 8, !tbaa !3
  %arrayidx790 = getelementptr inbounds i16** %138, i64 %157
  %159 = load i16** %arrayidx790, align 8, !tbaa !3
  %arrayidx814 = getelementptr inbounds i16** %155, i64 %157
  %160 = load i16** %arrayidx814, align 8, !tbaa !3
  %arrayidx822 = getelementptr inbounds i16** %137, i64 %157
  %161 = load i16** %arrayidx822, align 8, !tbaa !3
  %arrayidx848 = getelementptr inbounds i16** %156, i64 %157
  %162 = load i16** %arrayidx848, align 8, !tbaa !3
  %arrayidx856 = getelementptr inbounds i16** %139, i64 %157
  %163 = load i16** %arrayidx856, align 8, !tbaa !3
  br label %for.body779

for.body779:                                      ; preds = %for.cond775.preheader, %for.body779
  %indvars.iv3091 = phi i64 [ %63, %for.cond775.preheader ], [ %indvars.iv.next3092, %for.body779 ]
  %distortion.12839 = phi i32 [ %distortion.02841, %for.cond775.preheader ], [ %add877, %for.body779 ]
  %arrayidx784 = getelementptr inbounds i16* %158, i64 %indvars.iv3091
  %164 = load i16* %arrayidx784, align 2, !tbaa !4
  %conv785 = zext i16 %164 to i32
  %arrayidx791 = getelementptr inbounds i16* %159, i64 %indvars.iv3091
  %165 = load i16* %arrayidx791, align 2, !tbaa !4
  %conv792 = zext i16 %165 to i32
  %sub793 = sub nsw i32 %conv785, %conv792
  %mul808 = mul nsw i32 %sub793, %sub793
  %add809 = add nsw i32 %mul808, %distortion.12839
  %arrayidx815 = getelementptr inbounds i16* %160, i64 %indvars.iv3091
  %166 = load i16* %arrayidx815, align 2, !tbaa !4
  %conv816 = zext i16 %166 to i32
  %arrayidx823 = getelementptr inbounds i16* %161, i64 %indvars.iv3091
  %167 = load i16* %arrayidx823, align 2, !tbaa !4
  %conv824 = zext i16 %167 to i32
  %sub825 = sub nsw i32 %conv816, %conv824
  %mul842 = mul nsw i32 %sub825, %sub825
  %add843 = add nsw i32 %add809, %mul842
  %arrayidx849 = getelementptr inbounds i16* %162, i64 %indvars.iv3091
  %168 = load i16* %arrayidx849, align 2, !tbaa !4
  %conv850 = zext i16 %168 to i32
  %arrayidx857 = getelementptr inbounds i16* %163, i64 %indvars.iv3091
  %169 = load i16* %arrayidx857, align 2, !tbaa !4
  %conv858 = zext i16 %169 to i32
  %sub859 = sub nsw i32 %conv850, %conv858
  %mul876 = mul nsw i32 %sub859, %sub859
  %add877 = add nsw i32 %add843, %mul876
  %indvars.iv.next3092 = add i64 %indvars.iv3091, 1
  %170 = add nsw i32 %add, 7
  %171 = trunc i64 %indvars.iv3091 to i32
  %cmp777 = icmp slt i32 %171, %170
  br i1 %cmp777, label %for.body779, label %for.inc881

for.inc881:                                       ; preds = %for.body779
  %indvars.iv.next3094 = add i64 %indvars.iv3093, 1
  %lftr.wideiv3096 = trunc i64 %indvars.iv.next3094 to i32
  %exitcond3097 = icmp eq i32 %lftr.wideiv3096, 8
  br i1 %exitcond3097, label %for.end883, label %for.cond775.preheader

for.end883:                                       ; preds = %for.inc881
  %conv884 = sitofp i32 %add877 to double
  %conv885 = sitofp i32 %add487 to double
  %mul886 = fmul double %conv885, %lambda
  %add887 = fadd double %mul886, %conv884
  %cmp888 = fcmp olt double %add887, %min_rdcost.02868
  br i1 %cmp888, label %for.cond891.preheader, label %for.inc1126

for.cond891.preheader:                            ; preds = %for.end883
  %cofAC907 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 47
  %172 = load i32***** %cofAC907, align 8, !tbaa !3
  %arrayidx908 = getelementptr inbounds i32**** %172, i64 %idxprom906
  %173 = load i32**** %arrayidx908, align 8, !tbaa !3
  %174 = load i32***** @cofAC8x8, align 8, !tbaa !3
  %arrayidx916 = getelementptr inbounds i32**** %174, i64 %idxprom906
  %175 = load i32**** %arrayidx916, align 8, !tbaa !3
  br label %for.cond895.preheader

for.cond895.preheader:                            ; preds = %for.inc926, %for.cond891.preheader
  %indvars.iv3106 = phi i64 [ 0, %for.cond891.preheader ], [ %indvars.iv.next3107, %for.inc926 ]
  br label %for.cond899.preheader

for.cond899.preheader:                            ; preds = %for.inc923, %for.cond895.preheader
  %indvars.iv3102 = phi i64 [ 0, %for.cond895.preheader ], [ %indvars.iv.next3103, %for.inc923 ]
  br label %for.body902

for.body902:                                      ; preds = %for.body902, %for.cond899.preheader
  %indvars.iv3098 = phi i64 [ 0, %for.cond899.preheader ], [ %indvars.iv.next3099, %for.body902 ]
  %arrayidx909 = getelementptr inbounds i32*** %173, i64 %indvars.iv3098
  %176 = load i32*** %arrayidx909, align 8, !tbaa !3
  %arrayidx910 = getelementptr inbounds i32** %176, i64 %indvars.iv3106
  %177 = load i32** %arrayidx910, align 8, !tbaa !3
  %arrayidx911 = getelementptr inbounds i32* %177, i64 %indvars.iv3102
  %178 = load i32* %arrayidx911, align 4, !tbaa !0
  %arrayidx917 = getelementptr inbounds i32*** %175, i64 %indvars.iv3098
  %179 = load i32*** %arrayidx917, align 8, !tbaa !3
  %arrayidx918 = getelementptr inbounds i32** %179, i64 %indvars.iv3106
  %180 = load i32** %arrayidx918, align 8, !tbaa !3
  %arrayidx919 = getelementptr inbounds i32* %180, i64 %indvars.iv3102
  store i32 %178, i32* %arrayidx919, align 4, !tbaa !0
  %indvars.iv.next3099 = add i64 %indvars.iv3098, 1
  %lftr.wideiv3100 = trunc i64 %indvars.iv.next3099 to i32
  %exitcond3101 = icmp eq i32 %lftr.wideiv3100, 4
  br i1 %exitcond3101, label %for.inc923, label %for.body902

for.inc923:                                       ; preds = %for.body902
  %indvars.iv.next3103 = add i64 %indvars.iv3102, 1
  %lftr.wideiv3104 = trunc i64 %indvars.iv.next3103 to i32
  %exitcond3105 = icmp eq i32 %lftr.wideiv3104, 65
  br i1 %exitcond3105, label %for.inc926, label %for.cond899.preheader

for.inc926:                                       ; preds = %for.inc923
  %indvars.iv.next3107 = add i64 %indvars.iv3106, 1
  %lftr.wideiv3108 = trunc i64 %indvars.iv.next3107 to i32
  %exitcond3109 = icmp eq i32 %lftr.wideiv3108, 2
  br i1 %exitcond3109, label %for.cond929.loopexit, label %for.cond895.preheader

for.cond929.loopexit:                             ; preds = %for.inc926
  %arrayidx951 = getelementptr inbounds i32**** %172, i64 %idxprom949
  %181 = load i32**** %arrayidx951, align 8, !tbaa !3
  %arrayidx981 = getelementptr inbounds i32**** %172, i64 %idxprom979
  %182 = load i32**** %arrayidx981, align 8, !tbaa !3
  br label %for.body932

for.body932:                                      ; preds = %for.inc1094, %for.cond929.loopexit
  %indvars.iv3144 = phi i64 [ 0, %for.cond929.loopexit ], [ %indvars.iv.next3145, %for.inc1094 ]
  %183 = trunc i64 %indvars.iv3144 to i32
  %rem933 = srem i32 %183, 2
  %div935 = sdiv i32 %183, 2
  %arrayidx952 = getelementptr inbounds i32*** %181, i64 %indvars.iv3144
  %184 = load i32*** %arrayidx952, align 8, !tbaa !3
  br label %for.cond941.preheader

for.cond941.preheader:                            ; preds = %for.inc964, %for.body932
  %indvars.iv3117 = phi i64 [ 0, %for.body932 ], [ %indvars.iv.next3118, %for.inc964 ]
  %arrayidx953 = getelementptr inbounds i32** %184, i64 %indvars.iv3117
  %185 = load i32** %arrayidx953, align 8, !tbaa !3
  br label %for.body944

for.body944:                                      ; preds = %for.body944, %for.cond941.preheader
  %indvars.iv3110 = phi i64 [ 0, %for.cond941.preheader ], [ %indvars.iv.next3111, %for.body944 ]
  %arrayidx954 = getelementptr inbounds i32* %185, i64 %indvars.iv3110
  %186 = load i32* %arrayidx954, align 4, !tbaa !0
  %arrayidx960 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 0, i64 %indvars.iv3144, i64 %indvars.iv3117, i64 %indvars.iv3110
  store i32 %186, i32* %arrayidx960, align 4, !tbaa !0
  %indvars.iv.next3111 = add i64 %indvars.iv3110, 1
  %lftr.wideiv3112 = trunc i64 %indvars.iv.next3111 to i32
  %exitcond3113 = icmp eq i32 %lftr.wideiv3112, 18
  br i1 %exitcond3113, label %for.inc964, label %for.body944

for.inc964:                                       ; preds = %for.body944
  %indvars.iv.next3118 = add i64 %indvars.iv3117, 1
  %lftr.wideiv3119 = trunc i64 %indvars.iv.next3118 to i32
  %exitcond3120 = icmp eq i32 %lftr.wideiv3119, 2
  br i1 %exitcond3120, label %for.cond967.loopexit, label %for.cond941.preheader

for.cond967.loopexit:                             ; preds = %for.inc964
  %mul934 = shl i32 %rem933, 2
  %arrayidx982 = getelementptr inbounds i32*** %182, i64 %indvars.iv3144
  %187 = load i32*** %arrayidx982, align 8, !tbaa !3
  br label %for.cond971.preheader

for.cond971.preheader:                            ; preds = %for.inc994, %for.cond967.loopexit
  %indvars.iv3128 = phi i64 [ 0, %for.cond967.loopexit ], [ %indvars.iv.next3129, %for.inc994 ]
  %arrayidx983 = getelementptr inbounds i32** %187, i64 %indvars.iv3128
  %188 = load i32** %arrayidx983, align 8, !tbaa !3
  br label %for.body974

for.body974:                                      ; preds = %for.body974, %for.cond971.preheader
  %indvars.iv3121 = phi i64 [ 0, %for.cond971.preheader ], [ %indvars.iv.next3122, %for.body974 ]
  %arrayidx984 = getelementptr inbounds i32* %188, i64 %indvars.iv3121
  %189 = load i32* %arrayidx984, align 4, !tbaa !0
  %arrayidx990 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 1, i64 %indvars.iv3144, i64 %indvars.iv3128, i64 %indvars.iv3121
  store i32 %189, i32* %arrayidx990, align 4, !tbaa !0
  %indvars.iv.next3122 = add i64 %indvars.iv3121, 1
  %lftr.wideiv3123 = trunc i64 %indvars.iv.next3122 to i32
  %exitcond3124 = icmp eq i32 %lftr.wideiv3123, 18
  br i1 %exitcond3124, label %for.inc994, label %for.body974

for.inc994:                                       ; preds = %for.body974
  %indvars.iv.next3129 = add i64 %indvars.iv3128, 1
  %lftr.wideiv3130 = trunc i64 %indvars.iv.next3129 to i32
  %exitcond3131 = icmp eq i32 %lftr.wideiv3130, 2
  br i1 %exitcond3131, label %for.cond997.loopexit, label %for.cond971.preheader

for.cond997.loopexit:                             ; preds = %for.inc994
  %mul936 = shl i32 %div935, 2
  %add1004 = add nsw i32 %div935, %mul1002
  %idxprom1005 = sext i32 %add1004 to i64
  %add1009 = add nsw i32 %rem933, %mul1007
  %idxprom1010 = sext i32 %add1009 to i64
  %add1065 = add i32 %mul934, %add
  %add1068 = add i32 %mul936, %add2
  br label %for.body1000

for.body1000:                                     ; preds = %for.inc1091, %for.cond997.loopexit
  %indvars.iv3140 = phi i64 [ 0, %for.cond997.loopexit ], [ %indvars.iv.next3141, %for.inc1091 ]
  %arrayidx1014 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005
  %190 = load i32* %arrayidx1014, align 4, !tbaa !0
  %arrayidx1028 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005
  store i32 %190, i32* %arrayidx1028, align 4, !tbaa !0
  %arrayidx1042 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005
  %191 = load i32* %arrayidx1042, align 4, !tbaa !0
  %arrayidx1056 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv3140, i64 %idxprom1010, i64 %idxprom1005
  store i32 %191, i32* %arrayidx1056, align 4, !tbaa !0
  %arrayidx1073 = getelementptr inbounds i16*** %136, i64 %indvars.iv3140
  %192 = load i16*** %arrayidx1073, align 8, !tbaa !3
  br label %for.cond1061.preheader

for.cond1061.preheader:                           ; preds = %for.inc1088, %for.body1000
  %indvars.iv3136 = phi i64 [ 0, %for.body1000 ], [ %indvars.iv.next3137, %for.inc1088 ]
  %193 = trunc i64 %indvars.iv3136 to i32
  %add1069 = add i32 %add1068, %193
  %idxprom1070 = sext i32 %add1069 to i64
  %arrayidx1074 = getelementptr inbounds i16** %192, i64 %idxprom1070
  %194 = load i16** %arrayidx1074, align 8, !tbaa !3
  br label %for.body1064

for.body1064:                                     ; preds = %for.body1064, %for.cond1061.preheader
  %indvars.iv3132 = phi i64 [ 0, %for.cond1061.preheader ], [ %indvars.iv.next3133, %for.body1064 ]
  %195 = trunc i64 %indvars.iv3132 to i32
  %add1066 = add i32 %add1065, %195
  %idxprom1067 = sext i32 %add1066 to i64
  %arrayidx1075 = getelementptr inbounds i16* %194, i64 %idxprom1067
  %196 = load i16* %arrayidx1075, align 2, !tbaa !4
  %conv1076 = zext i16 %196 to i32
  %arrayidx1084 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i64 0, i64 %indvars.iv3140, i64 %indvars.iv3144, i64 %indvars.iv3136, i64 %indvars.iv3132
  store i32 %conv1076, i32* %arrayidx1084, align 4, !tbaa !0
  %indvars.iv.next3133 = add i64 %indvars.iv3132, 1
  %lftr.wideiv3134 = trunc i64 %indvars.iv.next3133 to i32
  %exitcond3135 = icmp eq i32 %lftr.wideiv3134, 4
  br i1 %exitcond3135, label %for.inc1088, label %for.body1064

for.inc1088:                                      ; preds = %for.body1064
  %indvars.iv.next3137 = add i64 %indvars.iv3136, 1
  %lftr.wideiv3138 = trunc i64 %indvars.iv.next3137 to i32
  %exitcond3139 = icmp eq i32 %lftr.wideiv3138, 4
  br i1 %exitcond3139, label %for.inc1091, label %for.cond1061.preheader

for.inc1091:                                      ; preds = %for.inc1088
  %indvars.iv.next3141 = add i64 %indvars.iv3140, 1
  %lftr.wideiv3142 = trunc i64 %indvars.iv.next3141 to i32
  %exitcond3143 = icmp eq i32 %lftr.wideiv3142, 2
  br i1 %exitcond3143, label %for.inc1094, label %for.body1000

for.inc1094:                                      ; preds = %for.inc1091
  %indvars.iv.next3145 = add i64 %indvars.iv3144, 1
  %lftr.wideiv3146 = trunc i64 %indvars.iv.next3145 to i32
  %exitcond3147 = icmp eq i32 %lftr.wideiv3146, 4
  br i1 %exitcond3147, label %for.cond1101.preheader, label %for.body932

for.cond1101.preheader:                           ; preds = %for.inc1094, %for.cond1101.preheader
  %indvars.iv3156 = phi i64 [ %indvars.iv.next3157, %for.cond1101.preheader ], [ 0, %for.inc1094 ]
  %scevgep = getelementptr [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv3156, i64 0
  %scevgep3153 = bitcast i16* %scevgep to i8*
  %197 = add nsw i64 %indvars.iv3156, %60
  %arrayidx1110 = getelementptr inbounds i16** %138, i64 %197
  %198 = load i16** %arrayidx1110, align 8, !tbaa !3
  %scevgep3154 = getelementptr i16* %198, i64 %63
  %scevgep31543155 = bitcast i16* %scevgep3154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep3153, i8* %scevgep31543155, i64 16, i32 2, i1 false)
  %indvars.iv.next3157 = add i64 %indvars.iv3156, 1
  %lftr.wideiv3159 = trunc i64 %indvars.iv.next3157 to i32
  %exitcond3160 = icmp eq i32 %lftr.wideiv3159, 8
  br i1 %exitcond3160, label %for.end1121, label %for.cond1101.preheader

for.end1121:                                      ; preds = %for.cond1101.preheader
  %199 = load i32* %c_nz, align 4, !tbaa !0
  br label %for.inc1126

for.inc1126:                                      ; preds = %land.lhs.true108, %lor.lhs.false110, %if.end269, %for.end1121, %for.end883, %cond.end146, %if.then152
  %nonzero.2 = phi i32 [ %199, %for.end1121 ], [ %nonzero.02866, %for.end883 ], [ %nonzero.1, %if.end269 ], [ %nonzero.02866, %if.then152 ], [ %nonzero.02866, %cond.end146 ], [ %nonzero.02866, %lor.lhs.false110 ], [ %nonzero.02866, %land.lhs.true108 ]
  %min_rdcost.2 = phi double [ %add887, %for.end1121 ], [ %min_rdcost.02868, %for.end883 ], [ %min_rdcost.1, %if.end269 ], [ %min_rdcost.02868, %if.then152 ], [ %min_rdcost.02868, %cond.end146 ], [ %min_rdcost.02868, %lor.lhs.false110 ], [ %min_rdcost.02868, %land.lhs.true108 ]
  %best_ipmode.2 = phi i32 [ %64, %for.end1121 ], [ %best_ipmode.02870, %for.end883 ], [ %best_ipmode.1, %if.end269 ], [ %64, %if.then152 ], [ %best_ipmode.02870, %cond.end146 ], [ %best_ipmode.02870, %lor.lhs.false110 ], [ %best_ipmode.02870, %land.lhs.true108 ]
  %indvars.iv.next3214 = add i64 %indvars.iv3213, 1
  %lftr.wideiv3215 = trunc i64 %indvars.iv.next3214 to i32
  %exitcond3216 = icmp eq i32 %lftr.wideiv3215, 9
  br i1 %exitcond3216, label %for.end1128, label %for.body

for.end1128:                                      ; preds = %for.inc1126
  %idxprom1129 = sext i32 %div6 to i64
  %idxprom1130 = sext i32 %div5 to i64
  %200 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode8x81131 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 26
  %201 = load i32*** %ipredmode8x81131, align 8, !tbaa !3
  %arrayidx1132 = getelementptr inbounds i32** %201, i64 %idxprom1130
  %202 = load i32** %arrayidx1132, align 8, !tbaa !3
  %arrayidx1133 = getelementptr inbounds i32* %202, i64 %idxprom1129
  store i32 %best_ipmode.2, i32* %arrayidx1133, align 4, !tbaa !0
  %cmp1134 = icmp eq i32 %cond94, %best_ipmode.2
  br i1 %cmp1134, label %cond.end1145, label %cond.false1137

cond.false1137:                                   ; preds = %for.end1128
  %not.cmp1138 = icmp sge i32 %best_ipmode.2, %cond94
  %sub1142 = sext i1 %not.cmp1138 to i32
  %cond1144 = add nsw i32 %sub1142, %best_ipmode.2
  br label %cond.end1145

cond.end1145:                                     ; preds = %cond.false1137, %for.end1128
  %cond1146 = phi i32 [ -1, %for.end1128 ], [ %cond1144, %cond.false1137 ]
  %mul1147 = shl nsw i32 %b8, 2
  %idxprom1148 = sext i32 %mul1147 to i64
  %current_mb_nr1149 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 3
  %203 = load i32* %current_mb_nr1149, align 4, !tbaa !0
  %idxprom1150 = sext i32 %203 to i64
  %mb_data1151 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 51
  %204 = load %struct.macroblock** %mb_data1151, align 8, !tbaa !3
  %arrayidx1153 = getelementptr inbounds %struct.macroblock* %204, i64 %idxprom1150, i32 11, i64 %idxprom1148
  store i32 %cond1146, i32* %arrayidx1153, align 4, !tbaa !0
  %mb_y = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 30
  %mb_x = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 29
  br label %for.cond1158.preheader

for.cond1158.preheader:                           ; preds = %for.inc1180, %cond.end1145
  %j.132821 = phi i32 [ 0, %cond.end1145 ], [ %inc1181, %for.inc1180 ]
  %add1163 = add i32 %j.132821, %mul1002
  br label %for.body1161

for.body1161:                                     ; preds = %for.body1161, %for.cond1158.preheader
  %i.142820 = phi i32 [ 0, %for.cond1158.preheader ], [ %inc1178, %for.body1161 ]
  %205 = load i32* %mb_y, align 4, !tbaa !0
  %mul1162 = shl i32 %205, 2
  %add1166 = add i32 %add1163, %mul1162
  %idxprom1167 = sext i32 %add1166 to i64
  %206 = load i32* %mb_x, align 4, !tbaa !0
  %mul1168 = shl i32 %206, 2
  %add1169 = add i32 %i.142820, %mul1007
  %add1172 = add i32 %add1169, %mul1168
  %idxprom1173 = sext i32 %add1172 to i64
  %arrayidx1175 = getelementptr inbounds i32** %201, i64 %idxprom1173
  %207 = load i32** %arrayidx1175, align 8, !tbaa !3
  %arrayidx1176 = getelementptr inbounds i32* %207, i64 %idxprom1167
  store i32 %best_ipmode.2, i32* %arrayidx1176, align 4, !tbaa !0
  %inc1178 = add nsw i32 %i.142820, 1
  %exitcond3018 = icmp eq i32 %inc1178, 2
  br i1 %exitcond3018, label %for.inc1180, label %for.body1161

for.inc1180:                                      ; preds = %for.body1161
  %inc1181 = add nsw i32 %j.132821, 1
  %exitcond3019 = icmp eq i32 %inc1181, 2
  br i1 %exitcond3019, label %for.end1182, label %for.cond1158.preheader

for.end1182:                                      ; preds = %for.inc1180
  %208 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %rdopt1183 = getelementptr inbounds %struct.InputParameters* %208, i64 0, i32 85
  %209 = load i32* %rdopt1183, align 4, !tbaa !0
  %tobool1184 = icmp eq i32 %209, 0
  br i1 %tobool1184, label %if.then1185, label %for.cond1830.preheader

for.cond1830.preheader:                           ; preds = %for.end1182
  %210 = load i32***** @cofAC8x8, align 8, !tbaa !3
  %arrayidx1846 = getelementptr inbounds i32**** %210, i64 %idxprom906
  %211 = load i32**** %arrayidx1846, align 8, !tbaa !3
  %cofAC1854 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 47
  %212 = load i32***** %cofAC1854, align 8, !tbaa !3
  %arrayidx1855 = getelementptr inbounds i32**** %212, i64 %idxprom906
  %213 = load i32**** %arrayidx1855, align 8, !tbaa !3
  br label %for.cond1834.preheader

if.then1185:                                      ; preds = %for.end1182
  %residue_transform_flag1186 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164
  %214 = load i32* %residue_transform_flag1186, align 4, !tbaa !0
  %tobool1187 = icmp eq i32 %214, 0
  %idxprom1199 = sext i32 %best_ipmode.2 to i64
  br i1 %tobool1187, label %for.cond1193.preheader, label %for.cond1240.preheader

for.cond1240.preheader:                           ; preds = %if.then1185
  %215 = load i16**** @imgUV_org, align 8, !tbaa !3
  %216 = load i16*** %215, align 8, !tbaa !3
  %217 = load i16*** @imgY_org, align 8, !tbaa !3
  %arrayidx1302 = getelementptr inbounds i16*** %215, i64 1
  %218 = load i16*** %arrayidx1302, align 8, !tbaa !3
  br label %for.cond1244.preheader

for.cond1193.preheader:                           ; preds = %if.then1185, %for.inc1235
  %indvars.iv2880 = phi i64 [ %indvars.iv.next2881, %for.inc1235 ], [ 0, %if.then1185 ]
  %219 = add nsw i64 %indvars.iv2880, %57
  %220 = add nsw i64 %indvars.iv2880, %58
  %arrayidx1215 = getelementptr inbounds i16** %7, i64 %220
  %221 = load i16** %arrayidx1215, align 8, !tbaa !3
  br label %for.body1196

for.body1196:                                     ; preds = %for.body1196, %for.cond1193.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1193.preheader ], [ %indvars.iv.next, %for.body1196 ]
  %arrayidx1203 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2880, i64 %indvars.iv
  %222 = load i16* %arrayidx1203, align 2, !tbaa !4
  %223 = add nsw i64 %indvars.iv, %55
  %arrayidx1210 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %223, i64 %219
  store i16 %222, i16* %arrayidx1210, align 2, !tbaa !4
  %224 = add nsw i64 %indvars.iv, %56
  %arrayidx1216 = getelementptr inbounds i16* %221, i64 %224
  %225 = load i16* %arrayidx1216, align 2, !tbaa !4
  %conv1217 = zext i16 %225 to i32
  %226 = load i16* %arrayidx1203, align 2, !tbaa !4
  %conv1225 = zext i16 %226 to i32
  %sub1226 = sub nsw i32 %conv1217, %conv1225
  %arrayidx1231 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv2880
  store i32 %sub1226, i32* %arrayidx1231, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc1235, label %for.body1196

for.inc1235:                                      ; preds = %for.body1196
  %indvars.iv.next2881 = add i64 %indvars.iv2880, 1
  %lftr.wideiv2884 = trunc i64 %indvars.iv.next2881 to i32
  %exitcond2885 = icmp eq i32 %lftr.wideiv2884, 8
  br i1 %exitcond2885, label %for.end1237, label %for.cond1193.preheader

for.end1237:                                      ; preds = %for.inc1235
  %call1238 = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #5
  br label %if.end2034

for.cond1244.preheader:                           ; preds = %for.inc1347, %for.cond1240.preheader
  %indvars.iv2951 = phi i64 [ 0, %for.cond1240.preheader ], [ %indvars.iv.next2952, %for.inc1347 ]
  %227 = add nsw i64 %indvars.iv2951, %57
  %228 = add nsw i64 %indvars.iv2951, %58
  %arrayidx1267 = getelementptr inbounds i16** %216, i64 %228
  %229 = load i16** %arrayidx1267, align 8, !tbaa !3
  %arrayidx1286 = getelementptr inbounds i16** %217, i64 %228
  %230 = load i16** %arrayidx1286, align 8, !tbaa !3
  %arrayidx1303 = getelementptr inbounds i16** %218, i64 %228
  %231 = load i16** %arrayidx1303, align 8, !tbaa !3
  br label %for.body1247

for.body1247:                                     ; preds = %for.body1247, %for.cond1244.preheader
  %indvars.iv2945 = phi i64 [ 0, %for.cond1244.preheader ], [ %indvars.iv.next2946, %for.body1247 ]
  %arrayidx1254 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2951, i64 %indvars.iv2945
  %232 = load i16* %arrayidx1254, align 2, !tbaa !4
  %233 = add nsw i64 %indvars.iv2945, %55
  %arrayidx1261 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %233, i64 %227
  store i16 %232, i16* %arrayidx1261, align 2, !tbaa !4
  %234 = add nsw i64 %indvars.iv2945, %56
  %arrayidx1268 = getelementptr inbounds i16* %229, i64 %234
  %235 = load i16* %arrayidx1268, align 2, !tbaa !4
  %conv1269 = zext i16 %235 to i32
  %arrayidx1279 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %233, i64 %227
  %236 = load i16* %arrayidx1279, align 2, !tbaa !4
  %conv1280 = zext i16 %236 to i32
  %sub1281 = sub nsw i32 %conv1269, %conv1280
  %arrayidx1287 = getelementptr inbounds i16* %230, i64 %234
  %237 = load i16* %arrayidx1287, align 2, !tbaa !4
  %conv1288 = zext i16 %237 to i32
  %238 = load i16* %arrayidx1254, align 2, !tbaa !4
  %conv1296 = zext i16 %238 to i32
  %sub1297 = sub nsw i32 %conv1288, %conv1296
  %arrayidx1304 = getelementptr inbounds i16* %231, i64 %234
  %239 = load i16* %arrayidx1304, align 2, !tbaa !4
  %conv1305 = zext i16 %239 to i32
  %arrayidx1315 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %233, i64 %227
  %240 = load i16* %arrayidx1315, align 2, !tbaa !4
  %conv1316 = zext i16 %240 to i32
  %sub1317 = sub nsw i32 %conv1305, %conv1316
  %sub1318 = sub i32 %sub1317, %sub1281
  %arrayidx1322 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951
  store i32 %sub1318, i32* %arrayidx1322, align 4, !tbaa !0
  %shr1327 = ashr i32 %sub1318, 1
  %add1328 = add nsw i32 %shr1327, %sub1281
  %sub1329 = sub i32 %sub1297, %add1328
  %arrayidx1333 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951
  store i32 %sub1329, i32* %arrayidx1333, align 4, !tbaa !0
  %shr1338 = ashr i32 %sub1329, 1
  %add1339 = add nsw i32 %shr1338, %add1328
  %arrayidx1343 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2945, i64 %indvars.iv2951
  store i32 %add1339, i32* %arrayidx1343, align 4, !tbaa !0
  %indvars.iv.next2946 = add i64 %indvars.iv2945, 1
  %lftr.wideiv2949 = trunc i64 %indvars.iv.next2946 to i32
  %exitcond2950 = icmp eq i32 %lftr.wideiv2949, 8
  br i1 %exitcond2950, label %for.inc1347, label %for.body1247

for.inc1347:                                      ; preds = %for.body1247
  %indvars.iv.next2952 = add i64 %indvars.iv2951, 1
  %lftr.wideiv2955 = trunc i64 %indvars.iv.next2952 to i32
  %exitcond2956 = icmp eq i32 %lftr.wideiv2955, 8
  br i1 %exitcond2956, label %for.cond1354.preheader, label %for.cond1244.preheader

for.cond1354.preheader:                           ; preds = %for.inc1347, %for.inc1370
  %indvars.iv2941 = phi i64 [ %indvars.iv.next2942, %for.inc1370 ], [ 0, %for.inc1347 ]
  br label %for.body1357

for.body1357:                                     ; preds = %for.body1357, %for.cond1354.preheader
  %indvars.iv2937 = phi i64 [ 0, %for.cond1354.preheader ], [ %indvars.iv.next2938, %for.body1357 ]
  %arrayidx1361 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2937, i64 %indvars.iv2941
  %241 = load i32* %arrayidx1361, align 4, !tbaa !0
  %arrayidx1366 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv2937, i64 %indvars.iv2941
  store i32 %241, i32* %arrayidx1366, align 4, !tbaa !0
  %indvars.iv.next2938 = add i64 %indvars.iv2937, 1
  %lftr.wideiv2939 = trunc i64 %indvars.iv.next2938 to i32
  %exitcond2940 = icmp eq i32 %lftr.wideiv2939, 8
  br i1 %exitcond2940, label %for.inc1370, label %for.body1357

for.inc1370:                                      ; preds = %for.body1357
  %indvars.iv.next2942 = add i64 %indvars.iv2941, 1
  %lftr.wideiv2943 = trunc i64 %indvars.iv.next2942 to i32
  %exitcond2944 = icmp eq i32 %lftr.wideiv2943, 8
  br i1 %exitcond2944, label %for.end1372, label %for.cond1354.preheader

for.end1372:                                      ; preds = %for.inc1370
  %call1373 = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #5
  %242 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond1378.preheader

for.cond1378.preheader:                           ; preds = %for.inc1394, %for.end1372
  %indvars.iv2933 = phi i64 [ 0, %for.end1372 ], [ %indvars.iv.next2934, %for.inc1394 ]
  br label %for.body1381

for.body1381:                                     ; preds = %for.body1381, %for.cond1378.preheader
  %indvars.iv2929 = phi i64 [ 0, %for.cond1378.preheader ], [ %indvars.iv.next2930, %for.body1381 ]
  %arrayidx1386 = getelementptr inbounds %struct.ImageParameters* %242, i64 0, i32 46, i64 %indvars.iv2929, i64 %indvars.iv2933
  %243 = load i32* %arrayidx1386, align 4, !tbaa !0
  %arrayidx1390 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2929, i64 %indvars.iv2933
  store i32 %243, i32* %arrayidx1390, align 4, !tbaa !0
  %indvars.iv.next2930 = add i64 %indvars.iv2929, 1
  %lftr.wideiv2931 = trunc i64 %indvars.iv.next2930 to i32
  %exitcond2932 = icmp eq i32 %lftr.wideiv2931, 8
  br i1 %exitcond2932, label %for.inc1394, label %for.body1381

for.inc1394:                                      ; preds = %for.body1381
  %indvars.iv.next2934 = add i64 %indvars.iv2933, 1
  %lftr.wideiv2935 = trunc i64 %indvars.iv.next2934 to i32
  %exitcond2936 = icmp eq i32 %lftr.wideiv2935, 8
  br i1 %exitcond2936, label %for.body1400, label %for.cond1378.preheader

for.cond1570.preheader:                           ; preds = %for.inc1567
  %max_imgpel_value_uv1604 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 156
  %244 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgUV1677 = getelementptr inbounds %struct.storable_picture* %244, i64 0, i32 30
  %245 = load i16**** %imgUV1677, align 8, !tbaa !3
  %246 = load i16*** %245, align 8, !tbaa !3
  %max_imgpel_value1681 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 155
  %imgY1742 = getelementptr inbounds %struct.storable_picture* %244, i64 0, i32 25
  %247 = load i16*** %imgY1742, align 8, !tbaa !3
  %arrayidx1819 = getelementptr inbounds i16*** %245, i64 1
  %248 = load i16*** %arrayidx1819, align 8, !tbaa !3
  %.pre.pre = load i32* %max_imgpel_value_uv1604, align 4, !tbaa !0
  %.pre3217.pre = load i32* %max_imgpel_value1681, align 4, !tbaa !0
  br label %for.cond1574.preheader

for.body1400:                                     ; preds = %for.inc1394, %for.inc1567
  %249 = phi %struct.ImageParameters* [ %262, %for.inc1567 ], [ %242, %for.inc1394 ]
  %b4.22798 = phi i32 [ %inc1568, %for.inc1567 ], [ 0, %for.inc1394 ]
  %rem1401 = srem i32 %b4.22798, 2
  %mul1402 = shl nsw i32 %rem1401, 2
  %div1403 = sdiv i32 %b4.22798, 2
  %mul1404 = shl nsw i32 %div1403, 2
  %250 = sext i32 %mul1402 to i64
  %251 = sext i32 %mul1404 to i64
  br label %for.cond1409.preheader

for.cond1409.preheader:                           ; preds = %for.inc1427, %for.body1400
  %indvars.iv2903 = phi i64 [ 0, %for.body1400 ], [ %indvars.iv.next2904, %for.inc1427 ]
  %252 = add nsw i64 %indvars.iv2903, %251
  br label %for.body1412

for.body1412:                                     ; preds = %for.body1412, %for.cond1409.preheader
  %indvars.iv2898 = phi i64 [ 0, %for.cond1409.preheader ], [ %indvars.iv.next2899, %for.body1412 ]
  %253 = add nsw i64 %indvars.iv2898, %250
  %arrayidx1418 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %253, i64 %252
  %254 = load i32* %arrayidx1418, align 4, !tbaa !0
  %arrayidx1423 = getelementptr inbounds %struct.ImageParameters* %249, i64 0, i32 46, i64 %indvars.iv2898, i64 %indvars.iv2903
  store i32 %254, i32* %arrayidx1423, align 4, !tbaa !0
  %indvars.iv.next2899 = add i64 %indvars.iv2898, 1
  %lftr.wideiv2901 = trunc i64 %indvars.iv.next2899 to i32
  %exitcond2902 = icmp eq i32 %lftr.wideiv2901, 4
  br i1 %exitcond2902, label %for.inc1427, label %for.body1412

for.inc1427:                                      ; preds = %for.body1412
  %indvars.iv.next2904 = add i64 %indvars.iv2903, 1
  %lftr.wideiv2906 = trunc i64 %indvars.iv.next2904 to i32
  %exitcond2907 = icmp eq i32 %lftr.wideiv2906, 4
  br i1 %exitcond2907, label %for.end1429, label %for.cond1409.preheader

for.end1429:                                      ; preds = %for.inc1427
  %call1431 = call i32 @dct_chroma4x4(i32 0, i32 %add446, i32 %b4.22798) #6
  %add1435 = add nsw i32 %div1403, %mul1002
  %idxprom1436 = sext i32 %add1435 to i64
  %add1440 = add nsw i32 %rem1401, %mul1007
  %idxprom1441 = sext i32 %add1440 to i64
  %arrayidx1443 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436
  store i32 %call1431, i32* %arrayidx1443, align 4, !tbaa !0
  %arrayidx1455 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436
  %255 = load i32* %arrayidx1455, align 4, !tbaa !0
  %arrayidx1467 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 0, i64 %idxprom1441, i64 %idxprom1436
  store i32 %255, i32* %arrayidx1467, align 4, !tbaa !0
  %256 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond1472.preheader

for.cond1472.preheader:                           ; preds = %for.inc1501, %for.end1429
  %indvars.iv2913 = phi i64 [ 0, %for.end1429 ], [ %indvars.iv.next2914, %for.inc1501 ]
  %257 = add nsw i64 %indvars.iv2913, %251
  br label %for.body1475

for.body1475:                                     ; preds = %for.body1475, %for.cond1472.preheader
  %indvars.iv2908 = phi i64 [ 0, %for.cond1472.preheader ], [ %indvars.iv.next2909, %for.body1475 ]
  %arrayidx1480 = getelementptr inbounds %struct.ImageParameters* %256, i64 0, i32 46, i64 %indvars.iv2908, i64 %indvars.iv2913
  %258 = load i32* %arrayidx1480, align 4, !tbaa !0
  %259 = add nsw i64 %indvars.iv2908, %250
  %arrayidx1486 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %259, i64 %257
  store i32 %258, i32* %arrayidx1486, align 4, !tbaa !0
  %arrayidx1492 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %259, i64 %257
  %260 = load i32* %arrayidx1492, align 4, !tbaa !0
  store i32 %260, i32* %arrayidx1480, align 4, !tbaa !0
  %indvars.iv.next2909 = add i64 %indvars.iv2908, 1
  %lftr.wideiv2911 = trunc i64 %indvars.iv.next2909 to i32
  %exitcond2912 = icmp eq i32 %lftr.wideiv2911, 4
  br i1 %exitcond2912, label %for.inc1501, label %for.body1475

for.inc1501:                                      ; preds = %for.body1475
  %indvars.iv.next2914 = add i64 %indvars.iv2913, 1
  %lftr.wideiv2916 = trunc i64 %indvars.iv.next2914 to i32
  %exitcond2917 = icmp eq i32 %lftr.wideiv2916, 4
  br i1 %exitcond2917, label %for.end1503, label %for.cond1472.preheader

for.end1503:                                      ; preds = %for.inc1501
  %call1505 = call i32 @dct_chroma4x4(i32 1, i32 %add485, i32 %b4.22798) #6
  %arrayidx1517 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436
  store i32 %call1505, i32* %arrayidx1517, align 4, !tbaa !0
  %arrayidx1529 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436
  %261 = load i32* %arrayidx1529, align 4, !tbaa !0
  %arrayidx1541 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 1, i64 %idxprom1441, i64 %idxprom1436
  store i32 %261, i32* %arrayidx1541, align 4, !tbaa !0
  %262 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond1546.preheader

for.cond1546.preheader:                           ; preds = %for.inc1564, %for.end1503
  %indvars.iv2923 = phi i64 [ 0, %for.end1503 ], [ %indvars.iv.next2924, %for.inc1564 ]
  %263 = add nsw i64 %indvars.iv2923, %251
  br label %for.body1549

for.body1549:                                     ; preds = %for.body1549, %for.cond1546.preheader
  %indvars.iv2918 = phi i64 [ 0, %for.cond1546.preheader ], [ %indvars.iv.next2919, %for.body1549 ]
  %arrayidx1554 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 46, i64 %indvars.iv2918, i64 %indvars.iv2923
  %264 = load i32* %arrayidx1554, align 4, !tbaa !0
  %265 = add nsw i64 %indvars.iv2918, %250
  %arrayidx1560 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %265, i64 %263
  store i32 %264, i32* %arrayidx1560, align 4, !tbaa !0
  %indvars.iv.next2919 = add i64 %indvars.iv2918, 1
  %lftr.wideiv2921 = trunc i64 %indvars.iv.next2919 to i32
  %exitcond2922 = icmp eq i32 %lftr.wideiv2921, 4
  br i1 %exitcond2922, label %for.inc1564, label %for.body1549

for.inc1564:                                      ; preds = %for.body1549
  %indvars.iv.next2924 = add i64 %indvars.iv2923, 1
  %lftr.wideiv2926 = trunc i64 %indvars.iv.next2924 to i32
  %exitcond2927 = icmp eq i32 %lftr.wideiv2926, 4
  br i1 %exitcond2927, label %for.inc1567, label %for.cond1546.preheader

for.inc1567:                                      ; preds = %for.inc1564
  %inc1568 = add nsw i32 %b4.22798, 1
  %exitcond2928 = icmp eq i32 %inc1568, 4
  br i1 %exitcond2928, label %for.cond1570.preheader, label %for.body1400

for.cond1574.preheader:                           ; preds = %for.inc1825, %for.cond1570.preheader
  %indvars.iv2892 = phi i64 [ 0, %for.cond1570.preheader ], [ %indvars.iv.next2893, %for.inc1825 ]
  %266 = add nsw i64 %indvars.iv2892, %57
  %267 = add nsw i64 %indvars.iv2892, %60
  %arrayidx1679 = getelementptr inbounds i16** %246, i64 %267
  %268 = load i16** %arrayidx1679, align 8, !tbaa !3
  %arrayidx1743 = getelementptr inbounds i16** %247, i64 %267
  %269 = load i16** %arrayidx1743, align 8, !tbaa !3
  %arrayidx1820 = getelementptr inbounds i16** %248, i64 %267
  %270 = load i16** %arrayidx1820, align 8, !tbaa !3
  br label %for.body1577

for.body1577:                                     ; preds = %for.body1577, %for.cond1574.preheader
  %indvars.iv2886 = phi i64 [ 0, %for.cond1574.preheader ], [ %indvars.iv.next2887, %for.body1577 ]
  %arrayidx1581 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892
  %271 = load i32* %arrayidx1581, align 4, !tbaa !0
  %arrayidx1585 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892
  %272 = load i32* %arrayidx1585, align 4, !tbaa !0
  %shr1586 = ashr i32 %272, 1
  %sub1587 = sub nsw i32 %271, %shr1586
  %add1592 = add nsw i32 %sub1587, %272
  %arrayidx1596 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2886, i64 %indvars.iv2892
  %273 = load i32* %arrayidx1596, align 4, !tbaa !0
  %shr1597 = ashr i32 %273, 1
  %sub1598 = sub nsw i32 %sub1587, %shr1597
  %add1603 = add nsw i32 %sub1598, %273
  %274 = add nsw i64 %indvars.iv2886, %55
  %arrayidx1614 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 44, i64 0, i64 %idxprom291, i64 %274, i64 %266
  %275 = load i16* %arrayidx1614, align 2, !tbaa !4
  %conv1615 = zext i16 %275 to i32
  %add1616 = add nsw i32 %conv1615, %sub1598
  %cmp1617 = icmp slt i32 %add1616, 0
  %.add1616 = select i1 %cmp1617, i32 0, i32 %add1616
  %cmp1635 = icmp slt i32 %.pre.pre, %.add1616
  %..add1616 = select i1 %cmp1635, i32 %.pre.pre, i32 %.add1616
  %conv1672 = trunc i32 %..add1616 to i16
  %276 = add nsw i64 %indvars.iv2886, %59
  %arrayidx1680 = getelementptr inbounds i16* %268, i64 %276
  store i16 %conv1672, i16* %arrayidx1680, align 2, !tbaa !4
  %arrayidx1688 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 43, i64 %idxprom1199, i64 %indvars.iv2892, i64 %indvars.iv2886
  %277 = load i16* %arrayidx1688, align 2, !tbaa !4
  %conv1689 = zext i16 %277 to i32
  %add1690 = add nsw i32 %add1592, %conv1689
  %cmp1691 = icmp slt i32 %add1690, 0
  %.add1690 = select i1 %cmp1691, i32 0, i32 %add1690
  %cmp1706 = icmp slt i32 %.pre3217.pre, %.add1690
  %cond1736 = select i1 %cmp1706, i32 %.pre3217.pre, i32 %.add1690
  %conv1737 = trunc i32 %cond1736 to i16
  %arrayidx1744 = getelementptr inbounds i16* %269, i64 %276
  store i16 %conv1737, i16* %arrayidx1744, align 2, !tbaa !4
  %arrayidx1755 = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 44, i64 1, i64 %idxprom291, i64 %274, i64 %266
  %278 = load i16* %arrayidx1755, align 2, !tbaa !4
  %conv1756 = zext i16 %278 to i32
  %add1757 = add nsw i32 %add1603, %conv1756
  %cmp1758 = icmp slt i32 %add1757, 0
  %.add1757 = select i1 %cmp1758, i32 0, i32 %add1757
  %cmp1776 = icmp slt i32 %.pre.pre, %.add1757
  %..add1757 = select i1 %cmp1776, i32 %.pre.pre, i32 %.add1757
  %conv1813 = trunc i32 %..add1757 to i16
  %arrayidx1821 = getelementptr inbounds i16* %270, i64 %276
  store i16 %conv1813, i16* %arrayidx1821, align 2, !tbaa !4
  %indvars.iv.next2887 = add i64 %indvars.iv2886, 1
  %lftr.wideiv2890 = trunc i64 %indvars.iv.next2887 to i32
  %exitcond2891 = icmp eq i32 %lftr.wideiv2890, 8
  br i1 %exitcond2891, label %for.inc1825, label %for.body1577

for.inc1825:                                      ; preds = %for.body1577
  %indvars.iv.next2893 = add i64 %indvars.iv2892, 1
  %lftr.wideiv2896 = trunc i64 %indvars.iv.next2893 to i32
  %exitcond2897 = icmp eq i32 %lftr.wideiv2896, 8
  br i1 %exitcond2897, label %if.end2034, label %for.cond1574.preheader

for.cond1834.preheader:                           ; preds = %for.inc1865, %for.cond1830.preheader
  %indvars.iv3014 = phi i64 [ 0, %for.cond1830.preheader ], [ %indvars.iv.next3015, %for.inc1865 ]
  br label %for.cond1838.preheader

for.cond1838.preheader:                           ; preds = %for.inc1862, %for.cond1834.preheader
  %indvars.iv3010 = phi i64 [ 0, %for.cond1834.preheader ], [ %indvars.iv.next3011, %for.inc1862 ]
  br label %for.body1841

for.body1841:                                     ; preds = %for.body1841, %for.cond1838.preheader
  %indvars.iv3006 = phi i64 [ 0, %for.cond1838.preheader ], [ %indvars.iv.next3007, %for.body1841 ]
  %arrayidx1847 = getelementptr inbounds i32*** %211, i64 %indvars.iv3006
  %279 = load i32*** %arrayidx1847, align 8, !tbaa !3
  %arrayidx1848 = getelementptr inbounds i32** %279, i64 %indvars.iv3014
  %280 = load i32** %arrayidx1848, align 8, !tbaa !3
  %arrayidx1849 = getelementptr inbounds i32* %280, i64 %indvars.iv3010
  %281 = load i32* %arrayidx1849, align 4, !tbaa !0
  %arrayidx1856 = getelementptr inbounds i32*** %213, i64 %indvars.iv3006
  %282 = load i32*** %arrayidx1856, align 8, !tbaa !3
  %arrayidx1857 = getelementptr inbounds i32** %282, i64 %indvars.iv3014
  %283 = load i32** %arrayidx1857, align 8, !tbaa !3
  %arrayidx1858 = getelementptr inbounds i32* %283, i64 %indvars.iv3010
  store i32 %281, i32* %arrayidx1858, align 4, !tbaa !0
  %indvars.iv.next3007 = add i64 %indvars.iv3006, 1
  %lftr.wideiv3008 = trunc i64 %indvars.iv.next3007 to i32
  %exitcond3009 = icmp eq i32 %lftr.wideiv3008, 4
  br i1 %exitcond3009, label %for.inc1862, label %for.body1841

for.inc1862:                                      ; preds = %for.body1841
  %indvars.iv.next3011 = add i64 %indvars.iv3010, 1
  %lftr.wideiv3012 = trunc i64 %indvars.iv.next3011 to i32
  %exitcond3013 = icmp eq i32 %lftr.wideiv3012, 65
  br i1 %exitcond3013, label %for.inc1865, label %for.cond1838.preheader

for.inc1865:                                      ; preds = %for.inc1862
  %indvars.iv.next3015 = add i64 %indvars.iv3014, 1
  %lftr.wideiv3016 = trunc i64 %indvars.iv.next3015 to i32
  %exitcond3017 = icmp eq i32 %lftr.wideiv3016, 2
  br i1 %exitcond3017, label %for.end1867, label %for.cond1834.preheader

for.end1867:                                      ; preds = %for.inc1865
  %residue_transform_flag1868 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164
  %284 = load i32* %residue_transform_flag1868, align 4, !tbaa !0
  %tobool1869 = icmp eq i32 %284, 0
  br i1 %tobool1869, label %for.cond1939.preheader, label %for.cond1871.preheader

for.cond1871.preheader:                           ; preds = %for.end1867
  %arrayidx1895 = getelementptr inbounds i32**** %212, i64 %idxprom949
  %285 = load i32**** %arrayidx1895, align 8, !tbaa !3
  %arrayidx1925 = getelementptr inbounds i32**** %212, i64 %idxprom979
  %286 = load i32**** %arrayidx1925, align 8, !tbaa !3
  br label %for.cond1875.preheader

for.cond1875.preheader:                           ; preds = %for.inc1935, %for.cond1871.preheader
  %indvars.iv3002 = phi i64 [ 0, %for.cond1871.preheader ], [ %indvars.iv.next3003, %for.inc1935 ]
  %arrayidx1896 = getelementptr inbounds i32*** %285, i64 %indvars.iv3002
  %287 = load i32*** %arrayidx1896, align 8, !tbaa !3
  br label %for.cond1879.preheader

for.cond1939.preheader:                           ; preds = %for.inc1935, %for.end1867
  %288 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgY1955 = getelementptr inbounds %struct.storable_picture* %288, i64 0, i32 25
  %289 = load i16*** %imgY1955, align 8, !tbaa !3
  %idxprom1960 = sext i32 %best_ipmode.2 to i64
  br label %for.cond1943.preheader

for.cond1879.preheader:                           ; preds = %for.inc1902, %for.cond1875.preheader
  %indvars.iv2990 = phi i64 [ 0, %for.cond1875.preheader ], [ %indvars.iv.next2991, %for.inc1902 ]
  %arrayidx1897 = getelementptr inbounds i32** %287, i64 %indvars.iv2990
  %290 = load i32** %arrayidx1897, align 8, !tbaa !3
  br label %for.body1882

for.body1882:                                     ; preds = %for.body1882, %for.cond1879.preheader
  %indvars.iv2986 = phi i64 [ 0, %for.cond1879.preheader ], [ %indvars.iv.next2987, %for.body1882 ]
  %arrayidx1888 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 0, i64 %indvars.iv3002, i64 %indvars.iv2990, i64 %indvars.iv2986
  %291 = load i32* %arrayidx1888, align 4, !tbaa !0
  %arrayidx1898 = getelementptr inbounds i32* %290, i64 %indvars.iv2986
  store i32 %291, i32* %arrayidx1898, align 4, !tbaa !0
  %indvars.iv.next2987 = add i64 %indvars.iv2986, 1
  %lftr.wideiv2988 = trunc i64 %indvars.iv.next2987 to i32
  %exitcond2989 = icmp eq i32 %lftr.wideiv2988, 18
  br i1 %exitcond2989, label %for.inc1902, label %for.body1882

for.inc1902:                                      ; preds = %for.body1882
  %indvars.iv.next2991 = add i64 %indvars.iv2990, 1
  %lftr.wideiv2992 = trunc i64 %indvars.iv.next2991 to i32
  %exitcond2993 = icmp eq i32 %lftr.wideiv2992, 2
  br i1 %exitcond2993, label %for.cond1905.loopexit, label %for.cond1879.preheader

for.cond1905.loopexit:                            ; preds = %for.inc1902
  %arrayidx1926 = getelementptr inbounds i32*** %286, i64 %indvars.iv3002
  %292 = load i32*** %arrayidx1926, align 8, !tbaa !3
  br label %for.cond1909.preheader

for.cond1909.preheader:                           ; preds = %for.inc1932, %for.cond1905.loopexit
  %indvars.iv2998 = phi i64 [ 0, %for.cond1905.loopexit ], [ %indvars.iv.next2999, %for.inc1932 ]
  %arrayidx1927 = getelementptr inbounds i32** %292, i64 %indvars.iv2998
  %293 = load i32** %arrayidx1927, align 8, !tbaa !3
  br label %for.body1912

for.body1912:                                     ; preds = %for.body1912, %for.cond1909.preheader
  %indvars.iv2994 = phi i64 [ 0, %for.cond1909.preheader ], [ %indvars.iv.next2995, %for.body1912 ]
  %arrayidx1918 = getelementptr inbounds [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i64 0, i64 1, i64 %indvars.iv3002, i64 %indvars.iv2998, i64 %indvars.iv2994
  %294 = load i32* %arrayidx1918, align 4, !tbaa !0
  %arrayidx1928 = getelementptr inbounds i32* %293, i64 %indvars.iv2994
  store i32 %294, i32* %arrayidx1928, align 4, !tbaa !0
  %indvars.iv.next2995 = add i64 %indvars.iv2994, 1
  %lftr.wideiv2996 = trunc i64 %indvars.iv.next2995 to i32
  %exitcond2997 = icmp eq i32 %lftr.wideiv2996, 18
  br i1 %exitcond2997, label %for.inc1932, label %for.body1912

for.inc1932:                                      ; preds = %for.body1912
  %indvars.iv.next2999 = add i64 %indvars.iv2998, 1
  %lftr.wideiv3000 = trunc i64 %indvars.iv.next2999 to i32
  %exitcond3001 = icmp eq i32 %lftr.wideiv3000, 2
  br i1 %exitcond3001, label %for.inc1935, label %for.cond1909.preheader

for.inc1935:                                      ; preds = %for.inc1932
  %indvars.iv.next3003 = add i64 %indvars.iv3002, 1
  %lftr.wideiv3004 = trunc i64 %indvars.iv.next3003 to i32
  %exitcond3005 = icmp eq i32 %lftr.wideiv3004, 4
  br i1 %exitcond3005, label %for.cond1939.preheader, label %for.cond1875.preheader

for.cond1943.preheader:                           ; preds = %for.inc1975, %for.cond1939.preheader
  %indvars.iv2980 = phi i64 [ 0, %for.cond1939.preheader ], [ %indvars.iv.next2981, %for.inc1975 ]
  %295 = add nsw i64 %indvars.iv2980, %60
  %arrayidx1956 = getelementptr inbounds i16** %289, i64 %295
  %296 = load i16** %arrayidx1956, align 8, !tbaa !3
  %297 = add nsw i64 %indvars.iv2980, %57
  br label %for.body1946

for.body1946:                                     ; preds = %for.body1946, %for.cond1943.preheader
  %indvars.iv2973 = phi i64 [ 0, %for.cond1943.preheader ], [ %indvars.iv.next2974, %for.body1946 ]
  %arrayidx1950 = getelementptr inbounds [8 x [8 x i16]]* %rec8x8, i64 0, i64 %indvars.iv2980, i64 %indvars.iv2973
  %298 = load i16* %arrayidx1950, align 2, !tbaa !4
  %299 = add nsw i64 %indvars.iv2973, %59
  %arrayidx1957 = getelementptr inbounds i16* %296, i64 %299
  store i16 %298, i16* %arrayidx1957, align 2, !tbaa !4
  %arrayidx1964 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 43, i64 %idxprom1960, i64 %indvars.iv2980, i64 %indvars.iv2973
  %300 = load i16* %arrayidx1964, align 2, !tbaa !4
  %301 = add nsw i64 %indvars.iv2973, %55
  %arrayidx1971 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %301, i64 %297
  store i16 %300, i16* %arrayidx1971, align 2, !tbaa !4
  %indvars.iv.next2974 = add i64 %indvars.iv2973, 1
  %lftr.wideiv2977 = trunc i64 %indvars.iv.next2974 to i32
  %exitcond2978 = icmp eq i32 %lftr.wideiv2977, 8
  br i1 %exitcond2978, label %for.inc1975, label %for.body1946

for.inc1975:                                      ; preds = %for.body1946
  %indvars.iv.next2981 = add i64 %indvars.iv2980, 1
  %lftr.wideiv2984 = trunc i64 %indvars.iv.next2981 to i32
  %exitcond2985 = icmp eq i32 %lftr.wideiv2984, 8
  br i1 %exitcond2985, label %for.end1977, label %for.cond1943.preheader

for.end1977:                                      ; preds = %for.inc1975
  %302 = load i32* %residue_transform_flag1868, align 4, !tbaa !0
  %tobool1979 = icmp eq i32 %302, 0
  br i1 %tobool1979, label %if.end2034, label %for.cond1981.preheader

for.cond1981.preheader:                           ; preds = %for.end1977
  %imgUV2017 = getelementptr inbounds %struct.storable_picture* %288, i64 0, i32 30
  %303 = load i16**** %imgUV2017, align 8, !tbaa !3
  br label %for.body1984

for.body1984:                                     ; preds = %for.inc2030, %for.cond1981.preheader
  %indvars.iv2969 = phi i64 [ 0, %for.cond1981.preheader ], [ %indvars.iv.next2970, %for.inc2030 ]
  %304 = trunc i64 %indvars.iv2969 to i32
  %rem1985 = srem i32 %304, 2
  %mul1986 = shl i32 %rem1985, 2
  %div1987 = sdiv i32 %304, 2
  %mul1988 = shl i32 %div1987, 2
  %add2010 = add i32 %mul1986, %add
  %add2013 = add i32 %mul1988, %add2
  br label %for.cond1993.preheader

for.cond1993.preheader:                           ; preds = %for.inc2027, %for.body1984
  %indvars.iv2965 = phi i64 [ 0, %for.body1984 ], [ %indvars.iv.next2966, %for.inc2027 ]
  %arrayidx2018 = getelementptr inbounds i16*** %303, i64 %indvars.iv2965
  %305 = load i16*** %arrayidx2018, align 8, !tbaa !3
  br label %for.cond1997.preheader

for.cond1997.preheader:                           ; preds = %for.inc2024, %for.cond1993.preheader
  %indvars.iv2961 = phi i64 [ 0, %for.cond1993.preheader ], [ %indvars.iv.next2962, %for.inc2024 ]
  %306 = trunc i64 %indvars.iv2961 to i32
  %add2014 = add i32 %add2013, %306
  %idxprom2015 = sext i32 %add2014 to i64
  %arrayidx2019 = getelementptr inbounds i16** %305, i64 %idxprom2015
  %307 = load i16** %arrayidx2019, align 8, !tbaa !3
  br label %for.body2000

for.body2000:                                     ; preds = %for.body2000, %for.cond1997.preheader
  %indvars.iv2957 = phi i64 [ 0, %for.cond1997.preheader ], [ %indvars.iv.next2958, %for.body2000 ]
  %arrayidx2008 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i64 0, i64 %indvars.iv2965, i64 %indvars.iv2969, i64 %indvars.iv2961, i64 %indvars.iv2957
  %308 = load i32* %arrayidx2008, align 4, !tbaa !0
  %conv2009 = trunc i32 %308 to i16
  %309 = trunc i64 %indvars.iv2957 to i32
  %add2011 = add i32 %add2010, %309
  %idxprom2012 = sext i32 %add2011 to i64
  %arrayidx2020 = getelementptr inbounds i16* %307, i64 %idxprom2012
  store i16 %conv2009, i16* %arrayidx2020, align 2, !tbaa !4
  %indvars.iv.next2958 = add i64 %indvars.iv2957, 1
  %lftr.wideiv2959 = trunc i64 %indvars.iv.next2958 to i32
  %exitcond2960 = icmp eq i32 %lftr.wideiv2959, 4
  br i1 %exitcond2960, label %for.inc2024, label %for.body2000

for.inc2024:                                      ; preds = %for.body2000
  %indvars.iv.next2962 = add i64 %indvars.iv2961, 1
  %lftr.wideiv2963 = trunc i64 %indvars.iv.next2962 to i32
  %exitcond2964 = icmp eq i32 %lftr.wideiv2963, 4
  br i1 %exitcond2964, label %for.inc2027, label %for.cond1997.preheader

for.inc2027:                                      ; preds = %for.inc2024
  %indvars.iv.next2966 = add i64 %indvars.iv2965, 1
  %lftr.wideiv2967 = trunc i64 %indvars.iv.next2966 to i32
  %exitcond2968 = icmp eq i32 %lftr.wideiv2967, 2
  br i1 %exitcond2968, label %for.inc2030, label %for.cond1993.preheader

for.inc2030:                                      ; preds = %for.inc2027
  %indvars.iv.next2970 = add i64 %indvars.iv2969, 1
  %lftr.wideiv2971 = trunc i64 %indvars.iv.next2970 to i32
  %exitcond2972 = icmp eq i32 %lftr.wideiv2971, 4
  br i1 %exitcond2972, label %if.end2034, label %for.body1984

if.end2034:                                       ; preds = %for.inc2030, %for.inc1825, %for.end1977, %for.end1237
  %nonzero.3 = phi i32 [ %nonzero.2, %for.end1977 ], [ %call1238, %for.end1237 ], [ %call1373, %for.inc1825 ], [ %nonzero.2, %for.inc2030 ]
  call void @llvm.lifetime.end(i64 512, i8* %11) #2
  call void @llvm.lifetime.end(i64 128, i8* %1) #2
  call void @llvm.lifetime.end(i64 256, i8* %0) #2
  ret i32 %nonzero.3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #3

; Function Attrs: nounwind optsize uwtable
define void @intrapred_luma8x8(i32 %img_x, i32 %img_y, i32* nocapture %left_available, i32* nocapture %up_available, i32* nocapture %all_available) #0 {
entry:
  %PredPel = alloca [25 x i32], align 16
  %pix_a = alloca [8 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  %0 = bitcast [25 x i32]* %PredPel to i8*
  call void @llvm.lifetime.start(i64 100, i8* %0) #2
  %1 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25
  %2 = load i16*** %imgY1, align 8, !tbaa !3
  %and = and i32 %img_x, 15
  %and2 = and i32 %img_y, 15
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !0
  %5 = bitcast [8 x %struct.pix_pos]* %pix_a to i8*
  call void @llvm.lifetime.start(i64 192, i8* %5) #2
  %sub = add nsw i32 %and, -1
  %6 = zext i32 %and2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv3240 = phi i64 [ 0, %entry ], [ %indvars.iv.next3241, %for.body ]
  %7 = add nsw i64 %indvars.iv3240, %6
  %arrayidx = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3240
  %8 = trunc i64 %7 to i32
  call void @getNeighbour(i32 %4, i32 %sub, i32 %8, i32 1, %struct.pix_pos* %arrayidx) #6
  %indvars.iv.next3241 = add i64 %indvars.iv3240, 1
  %lftr.wideiv3243 = trunc i64 %indvars.iv.next3241 to i32
  %exitcond3244 = icmp eq i32 %lftr.wideiv3243, 8
  br i1 %exitcond3244, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %sub3 = add nsw i32 %and2, -1
  call void @getNeighbour(i32 %4, i32 %and, i32 %sub3, i32 1, %struct.pix_pos* %pix_b) #6
  %add4 = add nsw i32 %and, 8
  call void @getNeighbour(i32 %4, i32 %add4, i32 %sub3, i32 1, %struct.pix_pos* %pix_c) #6
  call void @getNeighbour(i32 %4, i32 %sub, i32 %sub3, i32 1, %struct.pix_pos* %pix_d) #6
  %available = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 0
  %9 = load i32* %available, align 4, !tbaa !0
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %land.end11, label %land.rhs

land.rhs:                                         ; preds = %for.end
  %phitmp = icmp ne i32 %and2, 8
  %not.cmp8 = icmp ne i32 %and, 8
  %phitmp. = or i1 %phitmp, %not.cmp8
  br label %land.end11

land.end11:                                       ; preds = %for.end, %land.rhs
  %10 = phi i1 [ false, %for.end ], [ %phitmp., %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %available, align 4, !tbaa !0
  %11 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 24
  %12 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %12, 0
  br i1 %tobool13, label %if.else, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %land.end11
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %intra_block = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 54
  br label %for.body16

for.body16:                                       ; preds = %cond.end, %for.cond14.preheader
  %indvars.iv3236 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next3237, %cond.end ]
  %block_available_left.03222 = phi i32 [ 1, %for.cond14.preheader ], [ %and25, %cond.end ]
  %available19 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3236, i32 0
  %14 = load i32* %available19, align 8, !tbaa !0
  %tobool20 = icmp eq i32 %14, 0
  br i1 %tobool20, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body16
  %mb_addr = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv3236, i32 1
  %15 = load i32* %mb_addr, align 4, !tbaa !0
  %idxprom23 = sext i32 %15 to i64
  %16 = load i32** %intra_block, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %16, i64 %idxprom23
  %17 = load i32* %arrayidx24, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %for.body16, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %for.body16 ]
  %and25 = and i32 %cond, %block_available_left.03222
  %indvars.iv.next3237 = add i64 %indvars.iv3236, 1
  %lftr.wideiv3238 = trunc i64 %indvars.iv.next3237 to i32
  %exitcond3239 = icmp eq i32 %lftr.wideiv3238, 8
  br i1 %exitcond3239, label %for.end28, label %for.body16

for.end28:                                        ; preds = %cond.end
  %available29 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0
  %18 = load i32* %available29, align 4, !tbaa !0
  %tobool30 = icmp eq i32 %18, 0
  br i1 %tobool30, label %cond.end37, label %cond.true31

cond.true31:                                      ; preds = %for.end28
  %mb_addr32 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 1
  %19 = load i32* %mb_addr32, align 4, !tbaa !0
  %idxprom33 = sext i32 %19 to i64
  %20 = load i32** %intra_block, align 8, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %20, i64 %idxprom33
  %21 = load i32* %arrayidx35, align 4, !tbaa !0
  br label %cond.end37

cond.end37:                                       ; preds = %for.end28, %cond.true31
  %cond38 = phi i32 [ %21, %cond.true31 ], [ 0, %for.end28 ]
  br i1 %10, label %cond.true41, label %cond.end47

cond.true41:                                      ; preds = %cond.end37
  %mb_addr42 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 1
  %22 = load i32* %mb_addr42, align 4, !tbaa !0
  %idxprom43 = sext i32 %22 to i64
  %23 = load i32** %intra_block, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds i32* %23, i64 %idxprom43
  %24 = load i32* %arrayidx45, align 4, !tbaa !0
  br label %cond.end47

cond.end47:                                       ; preds = %cond.end37, %cond.true41
  %cond48 = phi i32 [ %24, %cond.true41 ], [ 0, %cond.end37 ]
  %available49 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0
  %25 = load i32* %available49, align 4, !tbaa !0
  %tobool50 = icmp eq i32 %25, 0
  br i1 %tobool50, label %if.end, label %cond.true51

cond.true51:                                      ; preds = %cond.end47
  %mb_addr52 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 1
  %26 = load i32* %mb_addr52, align 4, !tbaa !0
  %idxprom53 = sext i32 %26 to i64
  %27 = load i32** %intra_block, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32* %27, i64 %idxprom53
  %28 = load i32* %arrayidx55, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %land.end11
  %available60 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 0
  %29 = load i32* %available60, align 16, !tbaa !0
  %available61 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0
  %30 = load i32* %available61, align 4, !tbaa !0
  %available63 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0
  %31 = load i32* %available63, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cond.true51, %cond.end47, %if.else
  %block_available_up.0 = phi i32 [ %30, %if.else ], [ %cond38, %cond.end47 ], [ %cond38, %cond.true51 ]
  %block_available_left.1 = phi i32 [ %29, %if.else ], [ %and25, %cond.end47 ], [ %and25, %cond.true51 ]
  %block_available_up_left.0 = phi i32 [ %31, %if.else ], [ 0, %cond.end47 ], [ %28, %cond.true51 ]
  %block_available_up_right.0 = phi i32 [ %land.ext, %if.else ], [ %cond48, %cond.end47 ], [ %cond48, %cond.true51 ]
  store i32 %block_available_left.1, i32* %left_available, align 4, !tbaa !0
  store i32 %block_available_up.0, i32* %up_available, align 4, !tbaa !0
  %tobool64 = icmp ne i32 %block_available_up.0, 0
  %tobool64.not = xor i1 %tobool64, true
  %tobool67 = icmp ne i32 %block_available_up_left.0, 0
  %tobool65.not = icmp ne i32 %block_available_left.1, 0
  %not.or.cond = and i1 %tobool64, %tobool65.not
  %.tobool67 = and i1 %tobool67, %not.or.cond
  %land.ext69 = zext i1 %.tobool67 to i32
  store i32 %land.ext69, i32* %all_available, align 4, !tbaa !0
  br i1 %tobool64, label %if.then73, label %if.else143

if.then73:                                        ; preds = %if.end
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 4
  %32 = load i32* %pos_x, align 4, !tbaa !0
  %idxprom75 = sext i32 %32 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 5
  %33 = load i32* %pos_y, align 4, !tbaa !0
  %idxprom76 = sext i32 %33 to i64
  %arrayidx77 = getelementptr inbounds i16** %2, i64 %idxprom76
  %34 = load i16** %arrayidx77, align 8, !tbaa !3
  %arrayidx78 = getelementptr inbounds i16* %34, i64 %idxprom75
  %35 = load i16* %arrayidx78, align 2, !tbaa !4
  %conv = zext i16 %35 to i32
  %arrayidx79 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1
  store i32 %conv, i32* %arrayidx79, align 4, !tbaa !0
  %add81 = add nsw i32 %32, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx86 = getelementptr inbounds i16* %34, i64 %idxprom82
  %36 = load i16* %arrayidx86, align 2, !tbaa !4
  %conv87 = zext i16 %36 to i32
  %arrayidx88 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2
  store i32 %conv87, i32* %arrayidx88, align 8, !tbaa !0
  %add90 = add nsw i32 %32, 2
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx95 = getelementptr inbounds i16* %34, i64 %idxprom91
  %37 = load i16* %arrayidx95, align 2, !tbaa !4
  %conv96 = zext i16 %37 to i32
  %arrayidx97 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3
  store i32 %conv96, i32* %arrayidx97, align 4, !tbaa !0
  %add99 = add nsw i32 %32, 3
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx104 = getelementptr inbounds i16* %34, i64 %idxprom100
  %38 = load i16* %arrayidx104, align 2, !tbaa !4
  %conv105 = zext i16 %38 to i32
  %arrayidx106 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4
  store i32 %conv105, i32* %arrayidx106, align 16, !tbaa !0
  %add108 = add nsw i32 %32, 4
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx113 = getelementptr inbounds i16* %34, i64 %idxprom109
  %39 = load i16* %arrayidx113, align 2, !tbaa !4
  %conv114 = zext i16 %39 to i32
  %arrayidx115 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 5
  store i32 %conv114, i32* %arrayidx115, align 4, !tbaa !0
  %add117 = add nsw i32 %32, 5
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx122 = getelementptr inbounds i16* %34, i64 %idxprom118
  %40 = load i16* %arrayidx122, align 2, !tbaa !4
  %conv123 = zext i16 %40 to i32
  %arrayidx124 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6
  store i32 %conv123, i32* %arrayidx124, align 8, !tbaa !0
  %add126 = add nsw i32 %32, 6
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx131 = getelementptr inbounds i16* %34, i64 %idxprom127
  %41 = load i16* %arrayidx131, align 2, !tbaa !4
  %conv132 = zext i16 %41 to i32
  %arrayidx133 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 7
  store i32 %conv132, i32* %arrayidx133, align 4, !tbaa !0
  %add135 = add nsw i32 %32, 7
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx140 = getelementptr inbounds i16* %34, i64 %idxprom136
  %42 = load i16* %arrayidx140, align 2, !tbaa !4
  %conv141 = zext i16 %42 to i32
  %arrayidx142 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8
  store i32 %conv141, i32* %arrayidx142, align 16, !tbaa !0
  br label %if.end152

if.else143:                                       ; preds = %if.end
  %43 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 154
  %44 = load i32* %dc_pred_value, align 4, !tbaa !0
  %arrayidx144 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8
  store i32 %44, i32* %arrayidx144, align 16, !tbaa !0
  %arrayidx145 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 7
  store i32 %44, i32* %arrayidx145, align 4, !tbaa !0
  %arrayidx146 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6
  store i32 %44, i32* %arrayidx146, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 5
  store i32 %44, i32* %arrayidx147, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4
  store i32 %44, i32* %arrayidx148, align 16, !tbaa !0
  %arrayidx149 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3
  store i32 %44, i32* %arrayidx149, align 4, !tbaa !0
  %arrayidx150 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2
  store i32 %44, i32* %arrayidx150, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1
  store i32 %44, i32* %arrayidx151, align 4, !tbaa !0
  br label %if.end152

if.end152:                                        ; preds = %if.else143, %if.then73
  %45 = phi i32 [ %44, %if.else143 ], [ %conv141, %if.then73 ]
  %tobool153 = icmp eq i32 %block_available_up_right.0, 0
  br i1 %tobool153, label %if.else227, label %if.then154

if.then154:                                       ; preds = %if.end152
  %pos_x155 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 4
  %46 = load i32* %pos_x155, align 4, !tbaa !0
  %idxprom157 = sext i32 %46 to i64
  %pos_y158 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 5
  %47 = load i32* %pos_y158, align 4, !tbaa !0
  %idxprom159 = sext i32 %47 to i64
  %arrayidx160 = getelementptr inbounds i16** %2, i64 %idxprom159
  %48 = load i16** %arrayidx160, align 8, !tbaa !3
  %arrayidx161 = getelementptr inbounds i16* %48, i64 %idxprom157
  %49 = load i16* %arrayidx161, align 2, !tbaa !4
  %conv162 = zext i16 %49 to i32
  %arrayidx163 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 9
  store i32 %conv162, i32* %arrayidx163, align 4, !tbaa !0
  %add165 = add nsw i32 %46, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx170 = getelementptr inbounds i16* %48, i64 %idxprom166
  %50 = load i16* %arrayidx170, align 2, !tbaa !4
  %conv171 = zext i16 %50 to i32
  %arrayidx172 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10
  store i32 %conv171, i32* %arrayidx172, align 8, !tbaa !0
  %add174 = add nsw i32 %46, 2
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx179 = getelementptr inbounds i16* %48, i64 %idxprom175
  %51 = load i16* %arrayidx179, align 2, !tbaa !4
  %conv180 = zext i16 %51 to i32
  %arrayidx181 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 11
  store i32 %conv180, i32* %arrayidx181, align 4, !tbaa !0
  %add183 = add nsw i32 %46, 3
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx188 = getelementptr inbounds i16* %48, i64 %idxprom184
  %52 = load i16* %arrayidx188, align 2, !tbaa !4
  %conv189 = zext i16 %52 to i32
  %arrayidx190 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12
  store i32 %conv189, i32* %arrayidx190, align 16, !tbaa !0
  %add192 = add nsw i32 %46, 4
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx197 = getelementptr inbounds i16* %48, i64 %idxprom193
  %53 = load i16* %arrayidx197, align 2, !tbaa !4
  %conv198 = zext i16 %53 to i32
  %arrayidx199 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 13
  store i32 %conv198, i32* %arrayidx199, align 4, !tbaa !0
  %add201 = add nsw i32 %46, 5
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx206 = getelementptr inbounds i16* %48, i64 %idxprom202
  %54 = load i16* %arrayidx206, align 2, !tbaa !4
  %conv207 = zext i16 %54 to i32
  %arrayidx208 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14
  store i32 %conv207, i32* %arrayidx208, align 8, !tbaa !0
  %add210 = add nsw i32 %46, 6
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx215 = getelementptr inbounds i16* %48, i64 %idxprom211
  %55 = load i16* %arrayidx215, align 2, !tbaa !4
  %conv216 = zext i16 %55 to i32
  %arrayidx217 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 15
  store i32 %conv216, i32* %arrayidx217, align 4, !tbaa !0
  %add219 = add nsw i32 %46, 7
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx224 = getelementptr inbounds i16* %48, i64 %idxprom220
  %56 = load i16* %arrayidx224, align 2, !tbaa !4
  %conv225 = zext i16 %56 to i32
  %arrayidx226 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16
  store i32 %conv225, i32* %arrayidx226, align 16, !tbaa !0
  br label %if.end237

if.else227:                                       ; preds = %if.end152
  %arrayidx229 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16
  store i32 %45, i32* %arrayidx229, align 16, !tbaa !0
  %arrayidx230 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 15
  store i32 %45, i32* %arrayidx230, align 4, !tbaa !0
  %arrayidx231 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14
  store i32 %45, i32* %arrayidx231, align 8, !tbaa !0
  %arrayidx232 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 13
  store i32 %45, i32* %arrayidx232, align 4, !tbaa !0
  %arrayidx233 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12
  store i32 %45, i32* %arrayidx233, align 16, !tbaa !0
  %arrayidx234 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 11
  store i32 %45, i32* %arrayidx234, align 4, !tbaa !0
  %arrayidx235 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10
  store i32 %45, i32* %arrayidx235, align 8, !tbaa !0
  %arrayidx236 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 9
  store i32 %45, i32* %arrayidx236, align 4, !tbaa !0
  br label %if.end237

if.end237:                                        ; preds = %if.else227, %if.then154
  br i1 %tobool65.not, label %if.then239, label %if.else320

if.then239:                                       ; preds = %if.end237
  %pos_x241 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 4
  %57 = bitcast i32* %pos_x241 to i64*
  %58 = load i64* %57, align 16
  %sext = shl i64 %58, 32
  %idxprom242 = ashr exact i64 %sext, 32
  %idxprom245 = ashr i64 %58, 32
  %arrayidx246 = getelementptr inbounds i16** %2, i64 %idxprom245
  %59 = load i16** %arrayidx246, align 8, !tbaa !3
  %arrayidx247 = getelementptr inbounds i16* %59, i64 %idxprom242
  %60 = load i16* %arrayidx247, align 2, !tbaa !4
  %conv248 = zext i16 %60 to i32
  %arrayidx249 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  store i32 %conv248, i32* %arrayidx249, align 4, !tbaa !0
  %pos_x251 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 1, i32 4
  %61 = bitcast i32* %pos_x251 to i64*
  %62 = load i64* %61, align 8
  %sext3344 = shl i64 %62, 32
  %idxprom252 = ashr exact i64 %sext3344, 32
  %idxprom255 = ashr i64 %62, 32
  %arrayidx256 = getelementptr inbounds i16** %2, i64 %idxprom255
  %63 = load i16** %arrayidx256, align 8, !tbaa !3
  %arrayidx257 = getelementptr inbounds i16* %63, i64 %idxprom252
  %64 = load i16* %arrayidx257, align 2, !tbaa !4
  %conv258 = zext i16 %64 to i32
  %arrayidx259 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  store i32 %conv258, i32* %arrayidx259, align 8, !tbaa !0
  %pos_x261 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 2, i32 4
  %65 = bitcast i32* %pos_x261 to i64*
  %66 = load i64* %65, align 16
  %sext3346 = shl i64 %66, 32
  %idxprom262 = ashr exact i64 %sext3346, 32
  %idxprom265 = ashr i64 %66, 32
  %arrayidx266 = getelementptr inbounds i16** %2, i64 %idxprom265
  %67 = load i16** %arrayidx266, align 8, !tbaa !3
  %arrayidx267 = getelementptr inbounds i16* %67, i64 %idxprom262
  %68 = load i16* %arrayidx267, align 2, !tbaa !4
  %conv268 = zext i16 %68 to i32
  %arrayidx269 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19
  store i32 %conv268, i32* %arrayidx269, align 4, !tbaa !0
  %pos_x271 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 3, i32 4
  %69 = bitcast i32* %pos_x271 to i64*
  %70 = load i64* %69, align 8
  %sext3348 = shl i64 %70, 32
  %idxprom272 = ashr exact i64 %sext3348, 32
  %idxprom275 = ashr i64 %70, 32
  %arrayidx276 = getelementptr inbounds i16** %2, i64 %idxprom275
  %71 = load i16** %arrayidx276, align 8, !tbaa !3
  %arrayidx277 = getelementptr inbounds i16* %71, i64 %idxprom272
  %72 = load i16* %arrayidx277, align 2, !tbaa !4
  %conv278 = zext i16 %72 to i32
  %arrayidx279 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  store i32 %conv278, i32* %arrayidx279, align 16, !tbaa !0
  %pos_x281 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 4, i32 4
  %73 = bitcast i32* %pos_x281 to i64*
  %74 = load i64* %73, align 16
  %sext3350 = shl i64 %74, 32
  %idxprom282 = ashr exact i64 %sext3350, 32
  %idxprom285 = ashr i64 %74, 32
  %arrayidx286 = getelementptr inbounds i16** %2, i64 %idxprom285
  %75 = load i16** %arrayidx286, align 8, !tbaa !3
  %arrayidx287 = getelementptr inbounds i16* %75, i64 %idxprom282
  %76 = load i16* %arrayidx287, align 2, !tbaa !4
  %conv288 = zext i16 %76 to i32
  %arrayidx289 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21
  store i32 %conv288, i32* %arrayidx289, align 4, !tbaa !0
  %pos_x291 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 5, i32 4
  %77 = bitcast i32* %pos_x291 to i64*
  %78 = load i64* %77, align 8
  %sext3352 = shl i64 %78, 32
  %idxprom292 = ashr exact i64 %sext3352, 32
  %idxprom295 = ashr i64 %78, 32
  %arrayidx296 = getelementptr inbounds i16** %2, i64 %idxprom295
  %79 = load i16** %arrayidx296, align 8, !tbaa !3
  %arrayidx297 = getelementptr inbounds i16* %79, i64 %idxprom292
  %80 = load i16* %arrayidx297, align 2, !tbaa !4
  %conv298 = zext i16 %80 to i32
  %arrayidx299 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  store i32 %conv298, i32* %arrayidx299, align 8, !tbaa !0
  %pos_x301 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 6, i32 4
  %81 = bitcast i32* %pos_x301 to i64*
  %82 = load i64* %81, align 16
  %sext3354 = shl i64 %82, 32
  %idxprom302 = ashr exact i64 %sext3354, 32
  %idxprom305 = ashr i64 %82, 32
  %arrayidx306 = getelementptr inbounds i16** %2, i64 %idxprom305
  %83 = load i16** %arrayidx306, align 8, !tbaa !3
  %arrayidx307 = getelementptr inbounds i16* %83, i64 %idxprom302
  %84 = load i16* %arrayidx307, align 2, !tbaa !4
  %conv308 = zext i16 %84 to i32
  %arrayidx309 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 23
  store i32 %conv308, i32* %arrayidx309, align 4, !tbaa !0
  %pos_x311 = getelementptr inbounds [8 x %struct.pix_pos]* %pix_a, i64 0, i64 7, i32 4
  %85 = bitcast i32* %pos_x311 to i64*
  %86 = load i64* %85, align 8
  %sext3356 = shl i64 %86, 32
  %idxprom312 = ashr exact i64 %sext3356, 32
  %idxprom315 = ashr i64 %86, 32
  %arrayidx316 = getelementptr inbounds i16** %2, i64 %idxprom315
  %87 = load i16** %arrayidx316, align 8, !tbaa !3
  %arrayidx317 = getelementptr inbounds i16* %87, i64 %idxprom312
  %88 = load i16* %arrayidx317, align 2, !tbaa !4
  %conv318 = zext i16 %88 to i32
  %arrayidx319 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  store i32 %conv318, i32* %arrayidx319, align 16, !tbaa !0
  br label %if.end330

if.else320:                                       ; preds = %if.end237
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %dc_pred_value321 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 154
  %90 = load i32* %dc_pred_value321, align 4, !tbaa !0
  %arrayidx322 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  store i32 %90, i32* %arrayidx322, align 16, !tbaa !0
  %arrayidx323 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 23
  store i32 %90, i32* %arrayidx323, align 4, !tbaa !0
  %arrayidx324 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  store i32 %90, i32* %arrayidx324, align 8, !tbaa !0
  %arrayidx325 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21
  store i32 %90, i32* %arrayidx325, align 4, !tbaa !0
  %arrayidx326 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  store i32 %90, i32* %arrayidx326, align 16, !tbaa !0
  %arrayidx327 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19
  store i32 %90, i32* %arrayidx327, align 4, !tbaa !0
  %arrayidx328 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  store i32 %90, i32* %arrayidx328, align 8, !tbaa !0
  %arrayidx329 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  store i32 %90, i32* %arrayidx329, align 4, !tbaa !0
  br label %if.end330

if.end330:                                        ; preds = %if.else320, %if.then239
  br i1 %tobool67, label %if.then332, label %if.else341

if.then332:                                       ; preds = %if.end330
  %pos_x333 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 4
  %91 = load i32* %pos_x333, align 4, !tbaa !0
  %idxprom334 = sext i32 %91 to i64
  %pos_y335 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 5
  %92 = load i32* %pos_y335, align 4, !tbaa !0
  %idxprom336 = sext i32 %92 to i64
  %arrayidx337 = getelementptr inbounds i16** %2, i64 %idxprom336
  %93 = load i16** %arrayidx337, align 8, !tbaa !3
  %arrayidx338 = getelementptr inbounds i16* %93, i64 %idxprom334
  %94 = load i16* %arrayidx338, align 2, !tbaa !4
  %conv339 = zext i16 %94 to i32
  %arrayidx340 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0
  store i32 %conv339, i32* %arrayidx340, align 16, !tbaa !0
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond345.preheader

if.else341:                                       ; preds = %if.end330
  %95 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %dc_pred_value342 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 154
  %96 = load i32* %dc_pred_value342, align 4, !tbaa !0
  %arrayidx343 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0
  store i32 %96, i32* %arrayidx343, align 16, !tbaa !0
  br label %for.cond345.preheader

for.cond345.preheader:                            ; preds = %if.else341, %if.then332
  %97 = phi %struct.ImageParameters* [ %95, %if.else341 ], [ %.pre, %if.then332 ]
  br label %for.body348

for.body348:                                      ; preds = %for.body348, %for.cond345.preheader
  %indvars.iv3232 = phi i64 [ 0, %for.cond345.preheader ], [ %indvars.iv.next3233, %for.body348 ]
  %arrayidx352 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 43, i64 %indvars.iv3232, i64 0, i64 0
  store i16 -1, i16* %arrayidx352, align 2, !tbaa !4
  %indvars.iv.next3233 = add i64 %indvars.iv3232, 1
  %lftr.wideiv3234 = trunc i64 %indvars.iv.next3233 to i32
  %exitcond3235 = icmp eq i32 %lftr.wideiv3234, 9
  br i1 %exitcond3235, label %for.end355, label %for.body348

for.end355:                                       ; preds = %for.body348
  %arrayidx356 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 0
  call void @LowPassForIntra8x8Pred(i32* %arrayidx356, i32 %block_available_up_left.0, i32 %block_available_up.0, i32 %block_available_left.1) #5
  %tobool238.not = xor i1 %tobool65.not, true
  %brmerge = or i1 %tobool64.not, %tobool238.not
  br i1 %brmerge, label %if.else393, label %if.then360

if.then360:                                       ; preds = %for.end355
  %arrayidx361 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1
  %98 = load i32* %arrayidx361, align 4, !tbaa !0
  %arrayidx362 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2
  %99 = bitcast i32* %arrayidx362 to i64*
  %100 = load i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = lshr i64 %100, 32
  %103 = trunc i64 %102 to i32
  %arrayidx366 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4
  %104 = bitcast i32* %arrayidx366 to i64*
  %105 = load i64* %104, align 16
  %106 = trunc i64 %105 to i32
  %107 = lshr i64 %105, 32
  %108 = trunc i64 %107 to i32
  %arrayidx370 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6
  %109 = bitcast i32* %arrayidx370 to i64*
  %110 = load i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = lshr i64 %110, 32
  %113 = trunc i64 %112 to i32
  %arrayidx374 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8
  %114 = load i32* %arrayidx374, align 16, !tbaa !0
  %arrayidx376 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  %115 = load i32* %arrayidx376, align 4, !tbaa !0
  %arrayidx378 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  %116 = bitcast i32* %arrayidx378 to i64*
  %117 = load i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = lshr i64 %117, 32
  %120 = trunc i64 %119 to i32
  %arrayidx382 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  %121 = bitcast i32* %arrayidx382 to i64*
  %122 = load i64* %121, align 16
  %123 = trunc i64 %122 to i32
  %124 = lshr i64 %122, 32
  %125 = trunc i64 %124 to i32
  %arrayidx386 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  %126 = bitcast i32* %arrayidx386 to i64*
  %127 = load i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = lshr i64 %127, 32
  %130 = trunc i64 %129 to i32
  %arrayidx390 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  %131 = load i32* %arrayidx390, align 16, !tbaa !0
  %add363 = add i32 %98, 8
  %add365 = add i32 %add363, %101
  %add367 = add i32 %add365, %103
  %add369 = add i32 %add367, %106
  %add371 = add i32 %add369, %108
  %add373 = add i32 %add371, %111
  %add375 = add i32 %add373, %113
  %add377 = add i32 %add375, %114
  %add379 = add i32 %add377, %115
  %add381 = add i32 %add379, %118
  %add383 = add i32 %add381, %120
  %add385 = add i32 %add383, %123
  %add387 = add i32 %add385, %125
  %add389 = add i32 %add387, %128
  %add391 = add i32 %add389, %130
  %add392 = add i32 %add391, %131
  %shr = ashr i32 %add392, 4
  br label %if.end441

if.else393:                                       ; preds = %for.end355
  %brmerge3210 = or i1 %tobool64, %tobool238.not
  br i1 %brmerge3210, label %if.else415, label %if.then397

if.then397:                                       ; preds = %if.else393
  %arrayidx398 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  %132 = load i32* %arrayidx398, align 4, !tbaa !0
  %arrayidx399 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  %133 = bitcast i32* %arrayidx399 to i64*
  %134 = load i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = lshr i64 %134, 32
  %137 = trunc i64 %136 to i32
  %arrayidx403 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  %138 = bitcast i32* %arrayidx403 to i64*
  %139 = load i64* %138, align 16
  %140 = trunc i64 %139 to i32
  %141 = lshr i64 %139, 32
  %142 = trunc i64 %141 to i32
  %arrayidx407 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  %143 = bitcast i32* %arrayidx407 to i64*
  %144 = load i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = lshr i64 %144, 32
  %147 = trunc i64 %146 to i32
  %arrayidx411 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  %148 = load i32* %arrayidx411, align 16, !tbaa !0
  %add400 = add i32 %132, 4
  %add402 = add i32 %add400, %135
  %add404 = add i32 %add402, %137
  %add406 = add i32 %add404, %140
  %add408 = add i32 %add406, %142
  %add410 = add i32 %add408, %145
  %add412 = add i32 %add410, %147
  %add413 = add i32 %add412, %148
  %shr414 = ashr i32 %add413, 3
  br label %if.end441

if.else415:                                       ; preds = %if.else393
  %brmerge3212 = or i1 %tobool65.not, %tobool64.not
  br i1 %brmerge3212, label %if.else437, label %if.then419

if.then419:                                       ; preds = %if.else415
  %arrayidx420 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1
  %149 = load i32* %arrayidx420, align 4, !tbaa !0
  %arrayidx421 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2
  %150 = bitcast i32* %arrayidx421 to i64*
  %151 = load i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = lshr i64 %151, 32
  %154 = trunc i64 %153 to i32
  %arrayidx425 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4
  %155 = bitcast i32* %arrayidx425 to i64*
  %156 = load i64* %155, align 16
  %157 = trunc i64 %156 to i32
  %158 = lshr i64 %156, 32
  %159 = trunc i64 %158 to i32
  %arrayidx429 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6
  %160 = bitcast i32* %arrayidx429 to i64*
  %161 = load i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = lshr i64 %161, 32
  %164 = trunc i64 %163 to i32
  %arrayidx433 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8
  %165 = load i32* %arrayidx433, align 16, !tbaa !0
  %add422 = add i32 %149, 4
  %add424 = add i32 %add422, %152
  %add426 = add i32 %add424, %154
  %add428 = add i32 %add426, %157
  %add430 = add i32 %add428, %159
  %add432 = add i32 %add430, %162
  %add434 = add i32 %add432, %164
  %add435 = add i32 %add434, %165
  %shr436 = ashr i32 %add435, 3
  br label %if.end441

if.else437:                                       ; preds = %if.else415
  %166 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %dc_pred_value438 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 154
  %167 = load i32* %dc_pred_value438, align 4, !tbaa !0
  br label %if.end441

if.end441:                                        ; preds = %if.then397, %if.else437, %if.then419, %if.then360
  %s0.0 = phi i32 [ %shr, %if.then360 ], [ %167, %if.else437 ], [ %shr436, %if.then419 ], [ %shr414, %if.then397 ]
  %conv450 = trunc i32 %s0.0 to i16
  %168 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond446.preheader

for.cond446.preheader:                            ; preds = %for.inc460, %if.end441
  %indvars.iv3228 = phi i64 [ 0, %if.end441 ], [ %indvars.iv.next3229, %for.inc460 ]
  br label %for.body449

for.body449:                                      ; preds = %for.body449, %for.cond446.preheader
  %indvars.iv3224 = phi i64 [ 0, %for.cond446.preheader ], [ %indvars.iv.next3225, %for.body449 ]
  %arrayidx456 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 2, i64 %indvars.iv3224, i64 %indvars.iv3228
  store i16 %conv450, i16* %arrayidx456, align 2, !tbaa !4
  %indvars.iv.next3225 = add i64 %indvars.iv3224, 1
  %lftr.wideiv3226 = trunc i64 %indvars.iv.next3225 to i32
  %exitcond3227 = icmp eq i32 %lftr.wideiv3226, 8
  br i1 %exitcond3227, label %for.inc460, label %for.body449

for.inc460:                                       ; preds = %for.body449
  %indvars.iv.next3229 = add i64 %indvars.iv3228, 1
  %lftr.wideiv3230 = trunc i64 %indvars.iv.next3229 to i32
  %exitcond3231 = icmp eq i32 %lftr.wideiv3230, 8
  br i1 %exitcond3231, label %for.body466, label %for.cond446.preheader

for.body466:                                      ; preds = %for.body466, %for.inc460
  %indvars.iv = phi i64 [ 0, %for.inc460 ], [ %arrayidx468.sum, %for.body466 ]
  %arrayidx468.sum = add i64 %indvars.iv, 1
  %arrayidx469 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 %arrayidx468.sum
  %169 = load i32* %arrayidx469, align 4, !tbaa !0
  %conv470 = trunc i32 %169 to i16
  %arrayidx475 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 7, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx475, align 2, !tbaa !4
  %arrayidx480 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 6, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx480, align 2, !tbaa !4
  %arrayidx485 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 5, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx485, align 2, !tbaa !4
  %arrayidx490 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 4, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx490, align 2, !tbaa !4
  %arrayidx495 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 3, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx495, align 2, !tbaa !4
  %arrayidx500 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 2, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx500, align 2, !tbaa !4
  %arrayidx505 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 1, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx505, align 2, !tbaa !4
  %arrayidx510 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 0, i64 %indvars.iv
  store i16 %conv470, i16* %arrayidx510, align 2, !tbaa !4
  %arrayidx512.sum = add i64 %indvars.iv, 17
  %arrayidx513 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 %arrayidx512.sum
  %170 = load i32* %arrayidx513, align 4, !tbaa !0
  %conv514 = trunc i32 %170 to i16
  %arrayidx519 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 7
  store i16 %conv514, i16* %arrayidx519, align 2, !tbaa !4
  %arrayidx524 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 6
  store i16 %conv514, i16* %arrayidx524, align 2, !tbaa !4
  %arrayidx529 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 5
  store i16 %conv514, i16* %arrayidx529, align 2, !tbaa !4
  %arrayidx534 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 4
  store i16 %conv514, i16* %arrayidx534, align 2, !tbaa !4
  %arrayidx539 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 3
  store i16 %conv514, i16* %arrayidx539, align 2, !tbaa !4
  %arrayidx544 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 2
  store i16 %conv514, i16* %arrayidx544, align 2, !tbaa !4
  %arrayidx549 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 1
  store i16 %conv514, i16* %arrayidx549, align 2, !tbaa !4
  %arrayidx554 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 %indvars.iv, i64 0
  store i16 %conv514, i16* %arrayidx554, align 2, !tbaa !4
  %lftr.wideiv = trunc i64 %arrayidx468.sum to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end557, label %for.body466

for.end557:                                       ; preds = %for.body466
  br i1 %tobool64, label %if.end564, label %if.then559

if.then559:                                       ; preds = %for.end557
  %arrayidx563 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 0, i64 0, i64 0
  store i16 -1, i16* %arrayidx563, align 2, !tbaa !4
  br label %if.end564

if.end564:                                        ; preds = %if.then559, %for.end557
  br i1 %tobool65.not, label %if.end571, label %if.then566

if.then566:                                       ; preds = %if.end564
  %arrayidx570 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 1, i64 0, i64 0
  store i16 -1, i16* %arrayidx570, align 2, !tbaa !4
  br label %if.end571

if.end571:                                        ; preds = %if.then566, %if.end564
  br i1 %tobool64, label %if.then573, label %if.end2641

if.then573:                                       ; preds = %if.end571
  %arrayidx574 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 1
  %171 = load i32* %arrayidx574, align 4, !tbaa !0
  %arrayidx575 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 3
  %172 = load i32* %arrayidx575, align 4, !tbaa !0
  %arrayidx577 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 2
  %173 = bitcast i32* %arrayidx577 to i64*
  %174 = load i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %mul = shl i32 %175, 1
  %add576 = add i32 %171, 2
  %add578 = add i32 %add576, %172
  %add579 = add i32 %add578, %mul
  %shr5803171 = lshr i32 %add579, 2
  %conv581 = trunc i32 %shr5803171 to i16
  %arrayidx585 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 0
  store i16 %conv581, i16* %arrayidx585, align 2, !tbaa !4
  %arrayidx587 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 4
  %176 = bitcast i32* %arrayidx587 to i64*
  %177 = load i64* %176, align 16
  %178 = trunc i64 %177 to i32
  %179 = lshr i64 %174, 32
  %180 = trunc i64 %179 to i32
  %mul5903312 = shl nuw nsw i64 %179, 1
  %mul590 = trunc i64 %mul5903312 to i32
  %add588 = add i32 %175, 2
  %add591 = add i32 %add588, %178
  %add592 = add i32 %add591, %mul590
  %shr5933172 = lshr i32 %add592, 2
  %conv594 = trunc i32 %shr5933172 to i16
  %arrayidx598 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 0
  store i16 %conv594, i16* %arrayidx598, align 2, !tbaa !4
  %arrayidx602 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 1
  store i16 %conv594, i16* %arrayidx602, align 2, !tbaa !4
  %181 = lshr i64 %177, 32
  %182 = trunc i64 %181 to i32
  %mul607 = shl i32 %178, 1
  %add605 = add i32 %180, 2
  %add608 = add i32 %add605, %182
  %add609 = add i32 %add608, %mul607
  %shr6103173 = lshr i32 %add609, 2
  %conv611 = trunc i32 %shr6103173 to i16
  %arrayidx615 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 0
  store i16 %conv611, i16* %arrayidx615, align 2, !tbaa !4
  %arrayidx619 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 1
  store i16 %conv611, i16* %arrayidx619, align 2, !tbaa !4
  %arrayidx623 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 2
  store i16 %conv611, i16* %arrayidx623, align 2, !tbaa !4
  %arrayidx625 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 6
  %183 = bitcast i32* %arrayidx625 to i64*
  %184 = load i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %mul6283313 = shl nuw nsw i64 %181, 1
  %mul628 = trunc i64 %mul6283313 to i32
  %add626 = add i32 %178, 2
  %add629 = add i32 %add626, %185
  %add630 = add i32 %add629, %mul628
  %shr6313174 = lshr i32 %add630, 2
  %conv632 = trunc i32 %shr6313174 to i16
  %arrayidx636 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 3, i64 0
  store i16 %conv632, i16* %arrayidx636, align 2, !tbaa !4
  %arrayidx640 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 1
  store i16 %conv632, i16* %arrayidx640, align 2, !tbaa !4
  %arrayidx644 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 1, i64 2
  store i16 %conv632, i16* %arrayidx644, align 2, !tbaa !4
  %arrayidx648 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 0, i64 3
  store i16 %conv632, i16* %arrayidx648, align 2, !tbaa !4
  %186 = lshr i64 %184, 32
  %187 = trunc i64 %186 to i32
  %mul653 = shl i32 %185, 1
  %add651 = add i32 %182, 2
  %add654 = add i32 %add651, %187
  %add655 = add i32 %add654, %mul653
  %shr6563175 = lshr i32 %add655, 2
  %conv657 = trunc i32 %shr6563175 to i16
  %arrayidx661 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 4, i64 0
  store i16 %conv657, i16* %arrayidx661, align 2, !tbaa !4
  %arrayidx665 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 3, i64 1
  store i16 %conv657, i16* %arrayidx665, align 2, !tbaa !4
  %arrayidx669 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 43, i64 3, i64 2, i64 2
  store i16 %conv657, i16* %arrayidx669, align 2, !tbaa !4
  %188 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx673 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 3
  store i16 %conv657, i16* %arrayidx673, align 2, !tbaa !4
  %arrayidx677 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 4
  store i16 %conv657, i16* %arrayidx677, align 2, !tbaa !4
  %arrayidx679 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 8
  %189 = bitcast i32* %arrayidx679 to i64*
  %190 = load i64* %189, align 16
  %191 = trunc i64 %190 to i32
  %mul6823314 = shl nuw nsw i64 %186, 1
  %mul682 = trunc i64 %mul6823314 to i32
  %add680 = add i32 %185, 2
  %add683 = add i32 %add680, %191
  %add684 = add i32 %add683, %mul682
  %shr6853176 = lshr i32 %add684, 2
  %conv686 = trunc i32 %shr6853176 to i16
  %arrayidx690 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 0
  store i16 %conv686, i16* %arrayidx690, align 2, !tbaa !4
  %arrayidx694 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 1
  store i16 %conv686, i16* %arrayidx694, align 2, !tbaa !4
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 2
  store i16 %conv686, i16* %arrayidx698, align 2, !tbaa !4
  %arrayidx702 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 3
  store i16 %conv686, i16* %arrayidx702, align 2, !tbaa !4
  %arrayidx706 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 4
  store i16 %conv686, i16* %arrayidx706, align 2, !tbaa !4
  %arrayidx710 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 5
  store i16 %conv686, i16* %arrayidx710, align 2, !tbaa !4
  %192 = lshr i64 %190, 32
  %193 = trunc i64 %192 to i32
  %mul715 = shl i32 %191, 1
  %add713 = add i32 %187, 2
  %add716 = add i32 %add713, %193
  %add717 = add i32 %add716, %mul715
  %shr7183177 = lshr i32 %add717, 2
  %conv719 = trunc i32 %shr7183177 to i16
  %arrayidx723 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 6, i64 0
  store i16 %conv719, i16* %arrayidx723, align 2, !tbaa !4
  %arrayidx727 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 1
  store i16 %conv719, i16* %arrayidx727, align 2, !tbaa !4
  %arrayidx731 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 2
  store i16 %conv719, i16* %arrayidx731, align 2, !tbaa !4
  %arrayidx735 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 3
  store i16 %conv719, i16* %arrayidx735, align 2, !tbaa !4
  %arrayidx739 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 4
  store i16 %conv719, i16* %arrayidx739, align 2, !tbaa !4
  %arrayidx743 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 5
  store i16 %conv719, i16* %arrayidx743, align 2, !tbaa !4
  %arrayidx747 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 6
  store i16 %conv719, i16* %arrayidx747, align 2, !tbaa !4
  %arrayidx749 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 10
  %194 = bitcast i32* %arrayidx749 to i64*
  %195 = load i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %mul7523315 = shl nuw nsw i64 %192, 1
  %mul752 = trunc i64 %mul7523315 to i32
  %add750 = add i32 %191, 2
  %add753 = add i32 %add750, %196
  %add754 = add i32 %add753, %mul752
  %shr7553178 = lshr i32 %add754, 2
  %conv756 = trunc i32 %shr7553178 to i16
  %arrayidx760 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 7, i64 0
  store i16 %conv756, i16* %arrayidx760, align 2, !tbaa !4
  %arrayidx764 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 6, i64 1
  store i16 %conv756, i16* %arrayidx764, align 2, !tbaa !4
  %arrayidx768 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 5, i64 2
  store i16 %conv756, i16* %arrayidx768, align 2, !tbaa !4
  %arrayidx772 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 4, i64 3
  store i16 %conv756, i16* %arrayidx772, align 2, !tbaa !4
  %arrayidx776 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 3, i64 4
  store i16 %conv756, i16* %arrayidx776, align 2, !tbaa !4
  %arrayidx780 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 2, i64 5
  store i16 %conv756, i16* %arrayidx780, align 2, !tbaa !4
  %arrayidx784 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 1, i64 6
  store i16 %conv756, i16* %arrayidx784, align 2, !tbaa !4
  %arrayidx788 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 43, i64 3, i64 0, i64 7
  store i16 %conv756, i16* %arrayidx788, align 2, !tbaa !4
  %197 = lshr i64 %195, 32
  %198 = trunc i64 %197 to i32
  %mul793 = shl i32 %196, 1
  %add791 = add i32 %193, 2
  %add794 = add i32 %add791, %198
  %add795 = add i32 %add794, %mul793
  %shr7963179 = lshr i32 %add795, 2
  %conv797 = trunc i32 %shr7963179 to i16
  %199 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx801 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 1
  store i16 %conv797, i16* %arrayidx801, align 2, !tbaa !4
  %arrayidx805 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 2
  store i16 %conv797, i16* %arrayidx805, align 2, !tbaa !4
  %arrayidx809 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 3
  store i16 %conv797, i16* %arrayidx809, align 2, !tbaa !4
  %arrayidx813 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 4
  store i16 %conv797, i16* %arrayidx813, align 2, !tbaa !4
  %arrayidx817 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 5
  store i16 %conv797, i16* %arrayidx817, align 2, !tbaa !4
  %arrayidx821 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 2, i64 6
  store i16 %conv797, i16* %arrayidx821, align 2, !tbaa !4
  %arrayidx825 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 1, i64 7
  store i16 %conv797, i16* %arrayidx825, align 2, !tbaa !4
  %arrayidx827 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 12
  %200 = bitcast i32* %arrayidx827 to i64*
  %201 = load i64* %200, align 16
  %202 = trunc i64 %201 to i32
  %mul8303316 = shl nuw nsw i64 %197, 1
  %mul830 = trunc i64 %mul8303316 to i32
  %add828 = add i32 %196, 2
  %add831 = add i32 %add828, %202
  %add832 = add i32 %add831, %mul830
  %shr8333180 = lshr i32 %add832, 2
  %conv834 = trunc i32 %shr8333180 to i16
  %arrayidx838 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 2
  store i16 %conv834, i16* %arrayidx838, align 2, !tbaa !4
  %arrayidx842 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 3
  store i16 %conv834, i16* %arrayidx842, align 2, !tbaa !4
  %arrayidx846 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 4
  store i16 %conv834, i16* %arrayidx846, align 2, !tbaa !4
  %arrayidx850 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 5
  store i16 %conv834, i16* %arrayidx850, align 2, !tbaa !4
  %arrayidx854 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 6
  store i16 %conv834, i16* %arrayidx854, align 2, !tbaa !4
  %arrayidx858 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 2, i64 7
  store i16 %conv834, i16* %arrayidx858, align 2, !tbaa !4
  %203 = lshr i64 %201, 32
  %204 = trunc i64 %203 to i32
  %mul863 = shl i32 %202, 1
  %add861 = add i32 %198, 2
  %add864 = add i32 %add861, %204
  %add865 = add i32 %add864, %mul863
  %shr8663181 = lshr i32 %add865, 2
  %conv867 = trunc i32 %shr8663181 to i16
  %arrayidx871 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 3
  store i16 %conv867, i16* %arrayidx871, align 2, !tbaa !4
  %arrayidx875 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 4
  store i16 %conv867, i16* %arrayidx875, align 2, !tbaa !4
  %arrayidx879 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 5
  store i16 %conv867, i16* %arrayidx879, align 2, !tbaa !4
  %arrayidx883 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 6
  store i16 %conv867, i16* %arrayidx883, align 2, !tbaa !4
  %arrayidx887 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 3, i64 7
  store i16 %conv867, i16* %arrayidx887, align 2, !tbaa !4
  %arrayidx889 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 14
  %205 = bitcast i32* %arrayidx889 to i64*
  %206 = load i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %mul8923317 = shl nuw nsw i64 %203, 1
  %mul892 = trunc i64 %mul8923317 to i32
  %add890 = add i32 %202, 2
  %add893 = add i32 %add890, %207
  %add894 = add i32 %add893, %mul892
  %shr8953182 = lshr i32 %add894, 2
  %conv896 = trunc i32 %shr8953182 to i16
  %arrayidx900 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 7, i64 4
  store i16 %conv896, i16* %arrayidx900, align 2, !tbaa !4
  %arrayidx904 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 6, i64 5
  store i16 %conv896, i16* %arrayidx904, align 2, !tbaa !4
  %arrayidx908 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 5, i64 6
  store i16 %conv896, i16* %arrayidx908, align 2, !tbaa !4
  %arrayidx912 = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 43, i64 3, i64 4, i64 7
  store i16 %conv896, i16* %arrayidx912, align 2, !tbaa !4
  %208 = lshr i64 %206, 32
  %209 = trunc i64 %208 to i32
  %mul917 = shl i32 %207, 1
  %add915 = add i32 %204, 2
  %add918 = add i32 %add915, %209
  %add919 = add i32 %add918, %mul917
  %shr9203183 = lshr i32 %add919, 2
  %conv921 = trunc i32 %shr9203183 to i16
  %210 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx925 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 5
  store i16 %conv921, i16* %arrayidx925, align 2, !tbaa !4
  %arrayidx929 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 6, i64 6
  store i16 %conv921, i16* %arrayidx929, align 2, !tbaa !4
  %arrayidx933 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 5, i64 7
  store i16 %conv921, i16* %arrayidx933, align 2, !tbaa !4
  %arrayidx935 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 16
  %211 = load i32* %arrayidx935, align 16, !tbaa !0
  %mul9383318 = shl nuw nsw i64 %208, 1
  %mul938 = trunc i64 %mul9383318 to i32
  %add936 = add i32 %207, 2
  %add939 = add i32 %add936, %211
  %add940 = add i32 %add939, %mul938
  %shr9413184 = lshr i32 %add940, 2
  %conv942 = trunc i32 %shr9413184 to i16
  %arrayidx946 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 6
  store i16 %conv942, i16* %arrayidx946, align 2, !tbaa !4
  %arrayidx950 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 6, i64 7
  store i16 %conv942, i16* %arrayidx950, align 2, !tbaa !4
  %mul953 = mul nsw i32 %211, 3
  %add954 = add i32 %209, 2
  %add955 = add i32 %add954, %mul953
  %shr9563185 = lshr i32 %add955, 2
  %conv957 = trunc i32 %shr9563185 to i16
  %arrayidx961 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 3, i64 7, i64 7
  store i16 %conv957, i16* %arrayidx961, align 2, !tbaa !4
  %212 = load i32* %arrayidx574, align 4, !tbaa !0
  %213 = load i64* %173, align 8
  %214 = trunc i64 %213 to i32
  %add964 = add i32 %212, 1
  %add965 = add i32 %add964, %214
  %shr9663186 = lshr i32 %add965, 1
  %conv967 = trunc i32 %shr9663186 to i16
  %arrayidx971 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 0
  store i16 %conv967, i16* %arrayidx971, align 2, !tbaa !4
  %215 = lshr i64 %213, 32
  %216 = trunc i64 %215 to i32
  %add974 = add i32 %214, 1
  %add975 = add i32 %add974, %216
  %shr9763187 = lshr i32 %add975, 1
  %conv977 = trunc i32 %shr9763187 to i16
  %arrayidx981 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 0
  store i16 %conv977, i16* %arrayidx981, align 2, !tbaa !4
  %arrayidx985 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 1
  store i16 %conv977, i16* %arrayidx985, align 2, !tbaa !4
  %217 = load i64* %176, align 16
  %218 = trunc i64 %217 to i32
  %add988 = add i32 %216, 1
  %add989 = add i32 %add988, %218
  %shr9903188 = lshr i32 %add989, 1
  %conv991 = trunc i32 %shr9903188 to i16
  %arrayidx995 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 0
  store i16 %conv991, i16* %arrayidx995, align 2, !tbaa !4
  %arrayidx999 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 1
  store i16 %conv991, i16* %arrayidx999, align 2, !tbaa !4
  %arrayidx1003 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 2
  store i16 %conv991, i16* %arrayidx1003, align 2, !tbaa !4
  %219 = lshr i64 %217, 32
  %220 = trunc i64 %219 to i32
  %add1006 = add i32 %218, 1
  %add1007 = add i32 %add1006, %220
  %shr10083189 = lshr i32 %add1007, 1
  %conv1009 = trunc i32 %shr10083189 to i16
  %arrayidx1013 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 6, i64 0
  store i16 %conv1009, i16* %arrayidx1013, align 2, !tbaa !4
  %arrayidx1017 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 1
  store i16 %conv1009, i16* %arrayidx1017, align 2, !tbaa !4
  %arrayidx1021 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 2
  store i16 %conv1009, i16* %arrayidx1021, align 2, !tbaa !4
  %arrayidx1025 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 0, i64 3
  store i16 %conv1009, i16* %arrayidx1025, align 2, !tbaa !4
  %221 = load i64* %183, align 8
  %222 = trunc i64 %221 to i32
  %add1028 = add i32 %220, 1
  %add1029 = add i32 %add1028, %222
  %shr10303190 = lshr i32 %add1029, 1
  %conv1031 = trunc i32 %shr10303190 to i16
  %arrayidx1035 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 6, i64 1
  store i16 %conv1031, i16* %arrayidx1035, align 2, !tbaa !4
  %arrayidx1039 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 4, i64 2
  store i16 %conv1031, i16* %arrayidx1039, align 2, !tbaa !4
  %arrayidx1043 = getelementptr inbounds %struct.ImageParameters* %210, i64 0, i32 43, i64 7, i64 2, i64 3
  store i16 %conv1031, i16* %arrayidx1043, align 2, !tbaa !4
  %223 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1047 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 4
  store i16 %conv1031, i16* %arrayidx1047, align 2, !tbaa !4
  %224 = lshr i64 %221, 32
  %225 = trunc i64 %224 to i32
  %add1050 = add i32 %222, 1
  %add1051 = add i32 %add1050, %225
  %shr10523191 = lshr i32 %add1051, 1
  %conv1053 = trunc i32 %shr10523191 to i16
  %arrayidx1057 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 2
  store i16 %conv1053, i16* %arrayidx1057, align 2, !tbaa !4
  %arrayidx1061 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 3
  store i16 %conv1053, i16* %arrayidx1061, align 2, !tbaa !4
  %arrayidx1065 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 4
  store i16 %conv1053, i16* %arrayidx1065, align 2, !tbaa !4
  %arrayidx1069 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 5
  store i16 %conv1053, i16* %arrayidx1069, align 2, !tbaa !4
  %226 = load i64* %189, align 16
  %227 = trunc i64 %226 to i32
  %add1072 = add i32 %225, 1
  %add1073 = add i32 %add1072, %227
  %shr10743192 = lshr i32 %add1073, 1
  %conv1075 = trunc i32 %shr10743192 to i16
  %arrayidx1079 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 3
  store i16 %conv1075, i16* %arrayidx1079, align 2, !tbaa !4
  %arrayidx1083 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 4
  store i16 %conv1075, i16* %arrayidx1083, align 2, !tbaa !4
  %arrayidx1087 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 5
  store i16 %conv1075, i16* %arrayidx1087, align 2, !tbaa !4
  %arrayidx1091 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 6
  store i16 %conv1075, i16* %arrayidx1091, align 2, !tbaa !4
  %228 = lshr i64 %226, 32
  %229 = trunc i64 %228 to i32
  %add1094 = add i32 %227, 1
  %add1095 = add i32 %add1094, %229
  %shr10963193 = lshr i32 %add1095, 1
  %conv1097 = trunc i32 %shr10963193 to i16
  %arrayidx1101 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 4
  store i16 %conv1097, i16* %arrayidx1101, align 2, !tbaa !4
  %arrayidx1105 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 5
  store i16 %conv1097, i16* %arrayidx1105, align 2, !tbaa !4
  %arrayidx1109 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 6
  store i16 %conv1097, i16* %arrayidx1109, align 2, !tbaa !4
  %arrayidx1113 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 0, i64 7
  store i16 %conv1097, i16* %arrayidx1113, align 2, !tbaa !4
  %230 = load i64* %194, align 8
  %231 = trunc i64 %230 to i32
  %add1116 = add i32 %229, 1
  %add1117 = add i32 %add1116, %231
  %shr11183194 = lshr i32 %add1117, 1
  %conv1119 = trunc i32 %shr11183194 to i16
  %arrayidx1123 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 5
  store i16 %conv1119, i16* %arrayidx1123, align 2, !tbaa !4
  %arrayidx1127 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 6
  store i16 %conv1119, i16* %arrayidx1127, align 2, !tbaa !4
  %arrayidx1131 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 2, i64 7
  store i16 %conv1119, i16* %arrayidx1131, align 2, !tbaa !4
  %232 = lshr i64 %230, 32
  %233 = trunc i64 %232 to i32
  %add1134 = add i32 %231, 1
  %add1135 = add i32 %add1134, %233
  %shr11363195 = lshr i32 %add1135, 1
  %conv1137 = trunc i32 %shr11363195 to i16
  %arrayidx1141 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 6
  store i16 %conv1137, i16* %arrayidx1141, align 2, !tbaa !4
  %arrayidx1145 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 4, i64 7
  store i16 %conv1137, i16* %arrayidx1145, align 2, !tbaa !4
  %234 = load i32* %arrayidx827, align 16, !tbaa !0
  %add1148 = add i32 %233, 1
  %add1149 = add i32 %add1148, %234
  %shr11503196 = lshr i32 %add1149, 1
  %conv1151 = trunc i32 %shr11503196 to i16
  %arrayidx1155 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 6, i64 7
  store i16 %conv1151, i16* %arrayidx1155, align 2, !tbaa !4
  %235 = load i32* %arrayidx574, align 4, !tbaa !0
  %236 = load i32* %arrayidx575, align 4, !tbaa !0
  %237 = load i64* %173, align 8
  %238 = trunc i64 %237 to i32
  %mul1160 = shl i32 %238, 1
  %add1158 = add i32 %235, 2
  %add1161 = add i32 %add1158, %236
  %add1162 = add i32 %add1161, %mul1160
  %shr11633197 = lshr i32 %add1162, 2
  %conv1164 = trunc i32 %shr11633197 to i16
  %arrayidx1168 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 43, i64 7, i64 1, i64 0
  store i16 %conv1164, i16* %arrayidx1168, align 2, !tbaa !4
  %239 = load i64* %176, align 16
  %240 = trunc i64 %239 to i32
  %241 = lshr i64 %237, 32
  %242 = trunc i64 %241 to i32
  %mul11733319 = shl nuw nsw i64 %241, 1
  %mul1173 = trunc i64 %mul11733319 to i32
  %add1171 = add i32 %238, 2
  %add1174 = add i32 %add1171, %240
  %add1175 = add i32 %add1174, %mul1173
  %shr11763198 = lshr i32 %add1175, 2
  %conv1177 = trunc i32 %shr11763198 to i16
  %243 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1181 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 0
  store i16 %conv1177, i16* %arrayidx1181, align 2, !tbaa !4
  %arrayidx1185 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 1
  store i16 %conv1177, i16* %arrayidx1185, align 2, !tbaa !4
  %244 = lshr i64 %239, 32
  %245 = trunc i64 %244 to i32
  %mul1190 = shl i32 %240, 1
  %add1188 = add i32 %242, 2
  %add1191 = add i32 %add1188, %245
  %add1192 = add i32 %add1191, %mul1190
  %shr11933199 = lshr i32 %add1192, 2
  %conv1194 = trunc i32 %shr11933199 to i16
  %arrayidx1198 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 0
  store i16 %conv1194, i16* %arrayidx1198, align 2, !tbaa !4
  %arrayidx1202 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 1
  store i16 %conv1194, i16* %arrayidx1202, align 2, !tbaa !4
  %arrayidx1206 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 2
  store i16 %conv1194, i16* %arrayidx1206, align 2, !tbaa !4
  %246 = load i64* %183, align 8
  %247 = trunc i64 %246 to i32
  %mul12113320 = shl nuw nsw i64 %244, 1
  %mul1211 = trunc i64 %mul12113320 to i32
  %add1209 = add i32 %240, 2
  %add1212 = add i32 %add1209, %247
  %add1213 = add i32 %add1212, %mul1211
  %shr12143200 = lshr i32 %add1213, 2
  %conv1215 = trunc i32 %shr12143200 to i16
  %arrayidx1219 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 0
  store i16 %conv1215, i16* %arrayidx1219, align 2, !tbaa !4
  %arrayidx1223 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 1
  store i16 %conv1215, i16* %arrayidx1223, align 2, !tbaa !4
  %arrayidx1227 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 2
  store i16 %conv1215, i16* %arrayidx1227, align 2, !tbaa !4
  %arrayidx1231 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 3
  store i16 %conv1215, i16* %arrayidx1231, align 2, !tbaa !4
  %248 = lshr i64 %246, 32
  %249 = trunc i64 %248 to i32
  %mul1236 = shl i32 %247, 1
  %add1234 = add i32 %245, 2
  %add1237 = add i32 %add1234, %249
  %add1238 = add i32 %add1237, %mul1236
  %shr12393201 = lshr i32 %add1238, 2
  %conv1240 = trunc i32 %shr12393201 to i16
  %arrayidx1244 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 1
  store i16 %conv1240, i16* %arrayidx1244, align 2, !tbaa !4
  %arrayidx1248 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 2
  store i16 %conv1240, i16* %arrayidx1248, align 2, !tbaa !4
  %arrayidx1252 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 3
  store i16 %conv1240, i16* %arrayidx1252, align 2, !tbaa !4
  %arrayidx1256 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 4
  store i16 %conv1240, i16* %arrayidx1256, align 2, !tbaa !4
  %250 = load i64* %189, align 16
  %251 = trunc i64 %250 to i32
  %mul12613321 = shl nuw nsw i64 %248, 1
  %mul1261 = trunc i64 %mul12613321 to i32
  %add1259 = add i32 %247, 2
  %add1262 = add i32 %add1259, %251
  %add1263 = add i32 %add1262, %mul1261
  %shr12643202 = lshr i32 %add1263, 2
  %conv1265 = trunc i32 %shr12643202 to i16
  %arrayidx1269 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 7, i64 2
  store i16 %conv1265, i16* %arrayidx1269, align 2, !tbaa !4
  %arrayidx1273 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 5, i64 3
  store i16 %conv1265, i16* %arrayidx1273, align 2, !tbaa !4
  %arrayidx1277 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 3, i64 4
  store i16 %conv1265, i16* %arrayidx1277, align 2, !tbaa !4
  %arrayidx1281 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 43, i64 7, i64 1, i64 5
  store i16 %conv1265, i16* %arrayidx1281, align 2, !tbaa !4
  %252 = lshr i64 %250, 32
  %253 = trunc i64 %252 to i32
  %mul1286 = shl i32 %251, 1
  %add1284 = add i32 %249, 2
  %add1287 = add i32 %add1284, %253
  %add1288 = add i32 %add1287, %mul1286
  %shr12893203 = lshr i32 %add1288, 2
  %conv1290 = trunc i32 %shr12893203 to i16
  %254 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1294 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 3
  store i16 %conv1290, i16* %arrayidx1294, align 2, !tbaa !4
  %arrayidx1298 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 4
  store i16 %conv1290, i16* %arrayidx1298, align 2, !tbaa !4
  %arrayidx1302 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 5
  store i16 %conv1290, i16* %arrayidx1302, align 2, !tbaa !4
  %arrayidx1306 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 1, i64 6
  store i16 %conv1290, i16* %arrayidx1306, align 2, !tbaa !4
  %255 = load i64* %194, align 8
  %256 = trunc i64 %255 to i32
  %mul13113322 = shl nuw nsw i64 %252, 1
  %mul1311 = trunc i64 %mul13113322 to i32
  %add1309 = add i32 %251, 2
  %add1312 = add i32 %add1309, %256
  %add1313 = add i32 %add1312, %mul1311
  %shr13143204 = lshr i32 %add1313, 2
  %conv1315 = trunc i32 %shr13143204 to i16
  %arrayidx1319 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 4
  store i16 %conv1315, i16* %arrayidx1319, align 2, !tbaa !4
  %arrayidx1323 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 5
  store i16 %conv1315, i16* %arrayidx1323, align 2, !tbaa !4
  %arrayidx1327 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 6
  store i16 %conv1315, i16* %arrayidx1327, align 2, !tbaa !4
  %arrayidx1331 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 1, i64 7
  store i16 %conv1315, i16* %arrayidx1331, align 2, !tbaa !4
  %257 = lshr i64 %255, 32
  %258 = trunc i64 %257 to i32
  %mul1336 = shl i32 %256, 1
  %add1334 = add i32 %253, 2
  %add1337 = add i32 %add1334, %258
  %add1338 = add i32 %add1337, %mul1336
  %shr13393205 = lshr i32 %add1338, 2
  %conv1340 = trunc i32 %shr13393205 to i16
  %arrayidx1344 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 5
  store i16 %conv1340, i16* %arrayidx1344, align 2, !tbaa !4
  %arrayidx1348 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 6
  store i16 %conv1340, i16* %arrayidx1348, align 2, !tbaa !4
  %arrayidx1352 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 3, i64 7
  store i16 %conv1340, i16* %arrayidx1352, align 2, !tbaa !4
  %259 = load i64* %200, align 16
  %260 = trunc i64 %259 to i32
  %mul13573323 = shl nuw nsw i64 %257, 1
  %mul1357 = trunc i64 %mul13573323 to i32
  %add1355 = add i32 %256, 2
  %add1358 = add i32 %add1355, %260
  %add1359 = add i32 %add1358, %mul1357
  %shr13603206 = lshr i32 %add1359, 2
  %conv1361 = trunc i32 %shr13603206 to i16
  %arrayidx1365 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 6
  store i16 %conv1361, i16* %arrayidx1365, align 2, !tbaa !4
  %arrayidx1369 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 5, i64 7
  store i16 %conv1361, i16* %arrayidx1369, align 2, !tbaa !4
  %261 = lshr i64 %259, 32
  %262 = trunc i64 %261 to i32
  %mul1374 = shl i32 %260, 1
  %add1372 = add i32 %258, 2
  %add1375 = add i32 %add1372, %262
  %add1376 = add i32 %add1375, %mul1374
  %shr13773207 = lshr i32 %add1376, 2
  %conv1378 = trunc i32 %shr13773207 to i16
  %arrayidx1382 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 7, i64 7, i64 7
  store i16 %conv1378, i16* %arrayidx1382, align 2, !tbaa !4
  %tobool331.not = xor i1 %tobool67, true
  %brmerge3216 = or i1 %brmerge, %tobool331.not
  br i1 %brmerge3216, label %if.end2641, label %if.then1389

if.then1389:                                      ; preds = %if.then573
  %arrayidx1390 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  %263 = load i32* %arrayidx1390, align 16, !tbaa !0
  %arrayidx1391 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  %264 = bitcast i32* %arrayidx1391 to i64*
  %265 = load i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = lshr i64 %265, 32
  %268 = trunc i64 %267 to i32
  %mul13943324 = shl nuw nsw i64 %267, 1
  %mul1394 = trunc i64 %mul13943324 to i32
  %add1392 = add i32 %263, 2
  %add1395 = add i32 %add1392, %266
  %add1396 = add i32 %add1395, %mul1394
  %shr13973112 = lshr i32 %add1396, 2
  %conv1398 = trunc i32 %shr13973112 to i16
  %arrayidx1402 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 0
  store i16 %conv1398, i16* %arrayidx1402, align 2, !tbaa !4
  %arrayidx1404 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21
  %269 = load i32* %arrayidx1404, align 4, !tbaa !0
  %mul1407 = shl i32 %266, 1
  %add1405 = add i32 %268, 2
  %add1408 = add i32 %add1405, %269
  %add1409 = add i32 %add1408, %mul1407
  %shr14103113 = lshr i32 %add1409, 2
  %conv1411 = trunc i32 %shr14103113 to i16
  %arrayidx1415 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 1
  store i16 %conv1411, i16* %arrayidx1415, align 2, !tbaa !4
  %arrayidx1419 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 0
  store i16 %conv1411, i16* %arrayidx1419, align 2, !tbaa !4
  %arrayidx1421 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  %270 = bitcast i32* %arrayidx1421 to i64*
  %271 = load i64* %270, align 16
  %272 = trunc i64 %271 to i32
  %273 = lshr i64 %271, 32
  %274 = trunc i64 %273 to i32
  %mul14243325 = shl nuw nsw i64 %273, 1
  %mul1424 = trunc i64 %mul14243325 to i32
  %add1422 = add i32 %266, 2
  %add1425 = add i32 %add1422, %272
  %add1426 = add i32 %add1425, %mul1424
  %shr14273114 = lshr i32 %add1426, 2
  %conv1428 = trunc i32 %shr14273114 to i16
  %arrayidx1432 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 2
  store i16 %conv1428, i16* %arrayidx1432, align 2, !tbaa !4
  %arrayidx1436 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 1
  store i16 %conv1428, i16* %arrayidx1436, align 2, !tbaa !4
  %arrayidx1440 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 0
  store i16 %conv1428, i16* %arrayidx1440, align 2, !tbaa !4
  %arrayidx1442 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19
  %275 = load i32* %arrayidx1442, align 4, !tbaa !0
  %mul1445 = shl i32 %272, 1
  %add1443 = add i32 %274, 2
  %add1446 = add i32 %add1443, %275
  %add1447 = add i32 %add1446, %mul1445
  %shr14483115 = lshr i32 %add1447, 2
  %conv1449 = trunc i32 %shr14483115 to i16
  %arrayidx1453 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 3
  store i16 %conv1449, i16* %arrayidx1453, align 2, !tbaa !4
  %arrayidx1457 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 2
  store i16 %conv1449, i16* %arrayidx1457, align 2, !tbaa !4
  %arrayidx1461 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 1
  store i16 %conv1449, i16* %arrayidx1461, align 2, !tbaa !4
  %arrayidx1465 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 4, i64 0
  store i16 %conv1449, i16* %arrayidx1465, align 2, !tbaa !4
  %arrayidx1467 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  %276 = bitcast i32* %arrayidx1467 to i64*
  %277 = load i64* %276, align 8
  %278 = trunc i64 %277 to i32
  %279 = lshr i64 %277, 32
  %280 = trunc i64 %279 to i32
  %mul14703326 = shl nuw nsw i64 %279, 1
  %mul1470 = trunc i64 %mul14703326 to i32
  %add1468 = add i32 %272, 2
  %add1471 = add i32 %add1468, %278
  %add1472 = add i32 %add1471, %mul1470
  %shr14733116 = lshr i32 %add1472, 2
  %conv1474 = trunc i32 %shr14733116 to i16
  %arrayidx1478 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 7, i64 4
  store i16 %conv1474, i16* %arrayidx1478, align 2, !tbaa !4
  %arrayidx1482 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 6, i64 3
  store i16 %conv1474, i16* %arrayidx1482, align 2, !tbaa !4
  %arrayidx1486 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 5, i64 2
  store i16 %conv1474, i16* %arrayidx1486, align 2, !tbaa !4
  %arrayidx1490 = getelementptr inbounds %struct.ImageParameters* %254, i64 0, i32 43, i64 4, i64 4, i64 1
  store i16 %conv1474, i16* %arrayidx1490, align 2, !tbaa !4
  %281 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1494 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 0
  store i16 %conv1474, i16* %arrayidx1494, align 2, !tbaa !4
  %arrayidx1496 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  %282 = load i32* %arrayidx1496, align 4, !tbaa !0
  %mul1499 = shl i32 %278, 1
  %add1497 = add i32 %280, 2
  %add1500 = add i32 %add1497, %282
  %add1501 = add i32 %add1500, %mul1499
  %shr15023117 = lshr i32 %add1501, 2
  %conv1503 = trunc i32 %shr15023117 to i16
  %arrayidx1507 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 5
  store i16 %conv1503, i16* %arrayidx1507, align 2, !tbaa !4
  %arrayidx1511 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 4
  store i16 %conv1503, i16* %arrayidx1511, align 2, !tbaa !4
  %arrayidx1515 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 3
  store i16 %conv1503, i16* %arrayidx1515, align 2, !tbaa !4
  %arrayidx1519 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 2
  store i16 %conv1503, i16* %arrayidx1519, align 2, !tbaa !4
  %arrayidx1523 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 1
  store i16 %conv1503, i16* %arrayidx1523, align 2, !tbaa !4
  %arrayidx1527 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 0
  store i16 %conv1503, i16* %arrayidx1527, align 2, !tbaa !4
  %283 = bitcast [25 x i32]* %PredPel to i64*
  %284 = load i64* %283, align 16
  %285 = trunc i64 %284 to i32
  %mul1532 = shl i32 %282, 1
  %add1530 = add i32 %278, 2
  %add1533 = add i32 %add1530, %285
  %add1534 = add i32 %add1533, %mul1532
  %shr15353118 = lshr i32 %add1534, 2
  %conv1536 = trunc i32 %shr15353118 to i16
  %arrayidx1540 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 6
  store i16 %conv1536, i16* %arrayidx1540, align 2, !tbaa !4
  %arrayidx1544 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 5
  store i16 %conv1536, i16* %arrayidx1544, align 2, !tbaa !4
  %arrayidx1548 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 4
  store i16 %conv1536, i16* %arrayidx1548, align 2, !tbaa !4
  %arrayidx1552 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 3
  store i16 %conv1536, i16* %arrayidx1552, align 2, !tbaa !4
  %arrayidx1556 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 2
  store i16 %conv1536, i16* %arrayidx1556, align 2, !tbaa !4
  %arrayidx1560 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 1
  store i16 %conv1536, i16* %arrayidx1560, align 2, !tbaa !4
  %arrayidx1564 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 0
  store i16 %conv1536, i16* %arrayidx1564, align 2, !tbaa !4
  %286 = lshr i64 %284, 32
  %287 = trunc i64 %286 to i32
  %mul1569 = shl i32 %285, 1
  %add1567 = add i32 %282, 2
  %add1570 = add i32 %add1567, %287
  %add1571 = add i32 %add1570, %mul1569
  %shr15723119 = lshr i32 %add1571, 2
  %conv1573 = trunc i32 %shr15723119 to i16
  %arrayidx1577 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 7, i64 7
  store i16 %conv1573, i16* %arrayidx1577, align 2, !tbaa !4
  %arrayidx1581 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 6
  store i16 %conv1573, i16* %arrayidx1581, align 2, !tbaa !4
  %arrayidx1585 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 5
  store i16 %conv1573, i16* %arrayidx1585, align 2, !tbaa !4
  %arrayidx1589 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 4
  store i16 %conv1573, i16* %arrayidx1589, align 2, !tbaa !4
  %arrayidx1593 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 3
  store i16 %conv1573, i16* %arrayidx1593, align 2, !tbaa !4
  %arrayidx1597 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 2
  store i16 %conv1573, i16* %arrayidx1597, align 2, !tbaa !4
  %arrayidx1601 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 1
  store i16 %conv1573, i16* %arrayidx1601, align 2, !tbaa !4
  %arrayidx1605 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 0, i64 0
  store i16 %conv1573, i16* %arrayidx1605, align 2, !tbaa !4
  %288 = load i64* %173, align 8
  %289 = trunc i64 %288 to i32
  %mul16103327 = shl nuw nsw i64 %286, 1
  %mul1610 = trunc i64 %mul16103327 to i32
  %add1608 = add i32 %285, 2
  %add1611 = add i32 %add1608, %289
  %add1612 = add i32 %add1611, %mul1610
  %shr16133120 = lshr i32 %add1612, 2
  %conv1614 = trunc i32 %shr16133120 to i16
  %arrayidx1618 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 6, i64 7
  store i16 %conv1614, i16* %arrayidx1618, align 2, !tbaa !4
  %arrayidx1622 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 5, i64 6
  store i16 %conv1614, i16* %arrayidx1622, align 2, !tbaa !4
  %arrayidx1626 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 4, i64 5
  store i16 %conv1614, i16* %arrayidx1626, align 2, !tbaa !4
  %arrayidx1630 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 3, i64 4
  store i16 %conv1614, i16* %arrayidx1630, align 2, !tbaa !4
  %arrayidx1634 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 2, i64 3
  store i16 %conv1614, i16* %arrayidx1634, align 2, !tbaa !4
  %arrayidx1638 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 43, i64 4, i64 1, i64 2
  store i16 %conv1614, i16* %arrayidx1638, align 2, !tbaa !4
  %290 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1642 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 1
  store i16 %conv1614, i16* %arrayidx1642, align 2, !tbaa !4
  %291 = lshr i64 %288, 32
  %292 = trunc i64 %291 to i32
  %mul1647 = shl i32 %289, 1
  %add1645 = add i32 %287, 2
  %add1648 = add i32 %add1645, %292
  %add1649 = add i32 %add1648, %mul1647
  %shr16503121 = lshr i32 %add1649, 2
  %conv1651 = trunc i32 %shr16503121 to i16
  %arrayidx1655 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 5, i64 7
  store i16 %conv1651, i16* %arrayidx1655, align 2, !tbaa !4
  %arrayidx1659 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 4, i64 6
  store i16 %conv1651, i16* %arrayidx1659, align 2, !tbaa !4
  %arrayidx1663 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 5
  store i16 %conv1651, i16* %arrayidx1663, align 2, !tbaa !4
  %arrayidx1667 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 4
  store i16 %conv1651, i16* %arrayidx1667, align 2, !tbaa !4
  %arrayidx1671 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 3
  store i16 %conv1651, i16* %arrayidx1671, align 2, !tbaa !4
  %arrayidx1675 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 2
  store i16 %conv1651, i16* %arrayidx1675, align 2, !tbaa !4
  %293 = load i64* %176, align 16
  %294 = trunc i64 %293 to i32
  %mul16803328 = shl nuw nsw i64 %291, 1
  %mul1680 = trunc i64 %mul16803328 to i32
  %add1678 = add i32 %289, 2
  %add1681 = add i32 %add1678, %294
  %add1682 = add i32 %add1681, %mul1680
  %shr16833122 = lshr i32 %add1682, 2
  %conv1684 = trunc i32 %shr16833122 to i16
  %arrayidx1688 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 4, i64 7
  store i16 %conv1684, i16* %arrayidx1688, align 2, !tbaa !4
  %arrayidx1692 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 6
  store i16 %conv1684, i16* %arrayidx1692, align 2, !tbaa !4
  %arrayidx1696 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 5
  store i16 %conv1684, i16* %arrayidx1696, align 2, !tbaa !4
  %arrayidx1700 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 4
  store i16 %conv1684, i16* %arrayidx1700, align 2, !tbaa !4
  %arrayidx1704 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 3
  store i16 %conv1684, i16* %arrayidx1704, align 2, !tbaa !4
  %295 = lshr i64 %293, 32
  %296 = trunc i64 %295 to i32
  %mul1709 = shl i32 %294, 1
  %add1707 = add i32 %292, 2
  %add1710 = add i32 %add1707, %296
  %add1711 = add i32 %add1710, %mul1709
  %shr17123123 = lshr i32 %add1711, 2
  %conv1713 = trunc i32 %shr17123123 to i16
  %arrayidx1717 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 3, i64 7
  store i16 %conv1713, i16* %arrayidx1717, align 2, !tbaa !4
  %arrayidx1721 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 6
  store i16 %conv1713, i16* %arrayidx1721, align 2, !tbaa !4
  %arrayidx1725 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 5
  store i16 %conv1713, i16* %arrayidx1725, align 2, !tbaa !4
  %arrayidx1729 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 4
  store i16 %conv1713, i16* %arrayidx1729, align 2, !tbaa !4
  %297 = load i64* %183, align 8
  %298 = trunc i64 %297 to i32
  %mul17343329 = shl nuw nsw i64 %295, 1
  %mul1734 = trunc i64 %mul17343329 to i32
  %add1732 = add i32 %294, 2
  %add1735 = add i32 %add1732, %298
  %add1736 = add i32 %add1735, %mul1734
  %shr17373124 = lshr i32 %add1736, 2
  %conv1738 = trunc i32 %shr17373124 to i16
  %arrayidx1742 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 2, i64 7
  store i16 %conv1738, i16* %arrayidx1742, align 2, !tbaa !4
  %arrayidx1746 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 1, i64 6
  store i16 %conv1738, i16* %arrayidx1746, align 2, !tbaa !4
  %arrayidx1750 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 43, i64 4, i64 0, i64 5
  store i16 %conv1738, i16* %arrayidx1750, align 2, !tbaa !4
  %299 = lshr i64 %297, 32
  %300 = trunc i64 %299 to i32
  %mul1755 = shl i32 %298, 1
  %add1753 = add i32 %296, 2
  %add1756 = add i32 %add1753, %300
  %add1757 = add i32 %add1756, %mul1755
  %shr17583125 = lshr i32 %add1757, 2
  %conv1759 = trunc i32 %shr17583125 to i16
  %301 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1763 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 1, i64 7
  store i16 %conv1759, i16* %arrayidx1763, align 2, !tbaa !4
  %arrayidx1767 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 0, i64 6
  store i16 %conv1759, i16* %arrayidx1767, align 2, !tbaa !4
  %302 = load i32* %arrayidx679, align 16, !tbaa !0
  %mul17723330 = shl nuw nsw i64 %299, 1
  %mul1772 = trunc i64 %mul17723330 to i32
  %add1770 = add i32 %298, 2
  %add1773 = add i32 %add1770, %302
  %add1774 = add i32 %add1773, %mul1772
  %shr17753126 = lshr i32 %add1774, 2
  %conv1776 = trunc i32 %shr17753126 to i16
  %arrayidx1780 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 4, i64 0, i64 7
  store i16 %conv1776, i16* %arrayidx1780, align 2, !tbaa !4
  %303 = load i64* %283, align 16
  %304 = trunc i64 %303 to i32
  %305 = lshr i64 %303, 32
  %306 = trunc i64 %305 to i32
  %add1783 = add i32 %304, 1
  %add1784 = add i32 %add1783, %306
  %shr17853127 = lshr i32 %add1784, 1
  %conv1786 = trunc i32 %shr17853127 to i16
  %arrayidx1790 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 3
  store i16 %conv1786, i16* %arrayidx1790, align 2, !tbaa !4
  %arrayidx1794 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 2
  store i16 %conv1786, i16* %arrayidx1794, align 2, !tbaa !4
  %arrayidx1798 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 1
  store i16 %conv1786, i16* %arrayidx1798, align 2, !tbaa !4
  %arrayidx1802 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 0
  store i16 %conv1786, i16* %arrayidx1802, align 2, !tbaa !4
  %307 = load i64* %173, align 8
  %308 = trunc i64 %307 to i32
  %add1805 = add i32 %306, 1
  %add1806 = add i32 %add1805, %308
  %shr18073128 = lshr i32 %add1806, 1
  %conv1808 = trunc i32 %shr18073128 to i16
  %arrayidx1812 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 4
  store i16 %conv1808, i16* %arrayidx1812, align 2, !tbaa !4
  %arrayidx1816 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 3
  store i16 %conv1808, i16* %arrayidx1816, align 2, !tbaa !4
  %arrayidx1820 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 2
  store i16 %conv1808, i16* %arrayidx1820, align 2, !tbaa !4
  %arrayidx1824 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 1
  store i16 %conv1808, i16* %arrayidx1824, align 2, !tbaa !4
  %309 = lshr i64 %307, 32
  %310 = trunc i64 %309 to i32
  %add1827 = add i32 %308, 1
  %add1828 = add i32 %add1827, %310
  %shr18293129 = lshr i32 %add1828, 1
  %conv1830 = trunc i32 %shr18293129 to i16
  %arrayidx1834 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 5
  store i16 %conv1830, i16* %arrayidx1834, align 2, !tbaa !4
  %arrayidx1838 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 4
  store i16 %conv1830, i16* %arrayidx1838, align 2, !tbaa !4
  %arrayidx1842 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 3
  store i16 %conv1830, i16* %arrayidx1842, align 2, !tbaa !4
  %arrayidx1846 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 2
  store i16 %conv1830, i16* %arrayidx1846, align 2, !tbaa !4
  %311 = load i64* %176, align 16
  %312 = trunc i64 %311 to i32
  %add1849 = add i32 %310, 1
  %add1850 = add i32 %add1849, %312
  %shr18513130 = lshr i32 %add1850, 1
  %conv1852 = trunc i32 %shr18513130 to i16
  %arrayidx1856 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 6
  store i16 %conv1852, i16* %arrayidx1856, align 2, !tbaa !4
  %arrayidx1860 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 5
  store i16 %conv1852, i16* %arrayidx1860, align 2, !tbaa !4
  %arrayidx1864 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 2, i64 4
  store i16 %conv1852, i16* %arrayidx1864, align 2, !tbaa !4
  %arrayidx1868 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 0, i64 3
  store i16 %conv1852, i16* %arrayidx1868, align 2, !tbaa !4
  %313 = lshr i64 %311, 32
  %314 = trunc i64 %313 to i32
  %add1871 = add i32 %312, 1
  %add1872 = add i32 %add1871, %314
  %shr18733131 = lshr i32 %add1872, 1
  %conv1874 = trunc i32 %shr18733131 to i16
  %arrayidx1878 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 6, i64 7
  store i16 %conv1874, i16* %arrayidx1878, align 2, !tbaa !4
  %arrayidx1882 = getelementptr inbounds %struct.ImageParameters* %301, i64 0, i32 43, i64 5, i64 4, i64 6
  store i16 %conv1874, i16* %arrayidx1882, align 2, !tbaa !4
  %315 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx1886 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 5
  store i16 %conv1874, i16* %arrayidx1886, align 2, !tbaa !4
  %arrayidx1890 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 4
  store i16 %conv1874, i16* %arrayidx1890, align 2, !tbaa !4
  %316 = load i64* %183, align 8
  %317 = trunc i64 %316 to i32
  %add1893 = add i32 %314, 1
  %add1894 = add i32 %add1893, %317
  %shr18953132 = lshr i32 %add1894, 1
  %conv1896 = trunc i32 %shr18953132 to i16
  %arrayidx1900 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 4, i64 7
  store i16 %conv1896, i16* %arrayidx1900, align 2, !tbaa !4
  %arrayidx1904 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 6
  store i16 %conv1896, i16* %arrayidx1904, align 2, !tbaa !4
  %arrayidx1908 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 5
  store i16 %conv1896, i16* %arrayidx1908, align 2, !tbaa !4
  %318 = lshr i64 %316, 32
  %319 = trunc i64 %318 to i32
  %add1911 = add i32 %317, 1
  %add1912 = add i32 %add1911, %319
  %shr19133133 = lshr i32 %add1912, 1
  %conv1914 = trunc i32 %shr19133133 to i16
  %arrayidx1918 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 2, i64 7
  store i16 %conv1914, i16* %arrayidx1918, align 2, !tbaa !4
  %arrayidx1922 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 6
  store i16 %conv1914, i16* %arrayidx1922, align 2, !tbaa !4
  %320 = load i32* %arrayidx679, align 16, !tbaa !0
  %add1925 = add i32 %319, 1
  %add1926 = add i32 %add1925, %320
  %shr19273134 = lshr i32 %add1926, 1
  %conv1928 = trunc i32 %shr19273134 to i16
  %arrayidx1932 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 0, i64 7
  store i16 %conv1928, i16* %arrayidx1932, align 2, !tbaa !4
  %321 = load i32* %arrayidx1496, align 4, !tbaa !0
  %322 = load i32* %arrayidx574, align 4, !tbaa !0
  %323 = load i64* %283, align 16
  %324 = trunc i64 %323 to i32
  %mul1937 = shl i32 %324, 1
  %add1935 = add i32 %321, 2
  %add1938 = add i32 %add1935, %322
  %add1939 = add i32 %add1938, %mul1937
  %shr19403135 = lshr i32 %add1939, 2
  %conv1941 = trunc i32 %shr19403135 to i16
  %arrayidx1945 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 3
  store i16 %conv1941, i16* %arrayidx1945, align 2, !tbaa !4
  %arrayidx1949 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 2
  store i16 %conv1941, i16* %arrayidx1949, align 2, !tbaa !4
  %arrayidx1953 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 3, i64 1
  store i16 %conv1941, i16* %arrayidx1953, align 2, !tbaa !4
  %arrayidx1957 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 1, i64 0
  store i16 %conv1941, i16* %arrayidx1957, align 2, !tbaa !4
  %325 = load i64* %173, align 8
  %326 = trunc i64 %325 to i32
  %327 = lshr i64 %323, 32
  %328 = trunc i64 %327 to i32
  %mul19623331 = shl nuw nsw i64 %327, 1
  %mul1962 = trunc i64 %mul19623331 to i32
  %add1960 = add i32 %324, 2
  %add1963 = add i32 %add1960, %326
  %add1964 = add i32 %add1963, %mul1962
  %shr19653136 = lshr i32 %add1964, 2
  %conv1966 = trunc i32 %shr19653136 to i16
  %arrayidx1970 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 4
  store i16 %conv1966, i16* %arrayidx1970, align 2, !tbaa !4
  %arrayidx1974 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 3
  store i16 %conv1966, i16* %arrayidx1974, align 2, !tbaa !4
  %arrayidx1978 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 3, i64 2
  store i16 %conv1966, i16* %arrayidx1978, align 2, !tbaa !4
  %arrayidx1982 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 1, i64 1
  store i16 %conv1966, i16* %arrayidx1982, align 2, !tbaa !4
  %329 = lshr i64 %325, 32
  %330 = trunc i64 %329 to i32
  %mul1987 = shl i32 %326, 1
  %add1985 = add i32 %328, 2
  %add1988 = add i32 %add1985, %330
  %add1989 = add i32 %add1988, %mul1987
  %shr19903137 = lshr i32 %add1989, 2
  %conv1991 = trunc i32 %shr19903137 to i16
  %arrayidx1995 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 7, i64 5
  store i16 %conv1991, i16* %arrayidx1995, align 2, !tbaa !4
  %arrayidx1999 = getelementptr inbounds %struct.ImageParameters* %315, i64 0, i32 43, i64 5, i64 5, i64 4
  store i16 %conv1991, i16* %arrayidx1999, align 2, !tbaa !4
  %331 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2003 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 3
  store i16 %conv1991, i16* %arrayidx2003, align 2, !tbaa !4
  %arrayidx2007 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 2
  store i16 %conv1991, i16* %arrayidx2007, align 2, !tbaa !4
  %332 = load i64* %176, align 16
  %333 = trunc i64 %332 to i32
  %mul20123332 = shl nuw nsw i64 %329, 1
  %mul2012 = trunc i64 %mul20123332 to i32
  %add2010 = add i32 %326, 2
  %add2013 = add i32 %add2010, %333
  %add2014 = add i32 %add2013, %mul2012
  %shr20153138 = lshr i32 %add2014, 2
  %conv2016 = trunc i32 %shr20153138 to i16
  %arrayidx2020 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 7, i64 6
  store i16 %conv2016, i16* %arrayidx2020, align 2, !tbaa !4
  %arrayidx2024 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 5
  store i16 %conv2016, i16* %arrayidx2024, align 2, !tbaa !4
  %arrayidx2028 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 4
  store i16 %conv2016, i16* %arrayidx2028, align 2, !tbaa !4
  %arrayidx2032 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 3
  store i16 %conv2016, i16* %arrayidx2032, align 2, !tbaa !4
  %334 = lshr i64 %332, 32
  %335 = trunc i64 %334 to i32
  %mul2037 = shl i32 %333, 1
  %add2035 = add i32 %330, 2
  %add2038 = add i32 %add2035, %335
  %add2039 = add i32 %add2038, %mul2037
  %shr20403139 = lshr i32 %add2039, 2
  %conv2041 = trunc i32 %shr20403139 to i16
  %arrayidx2045 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 7, i64 7
  store i16 %conv2041, i16* %arrayidx2045, align 2, !tbaa !4
  %arrayidx2049 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 6
  store i16 %conv2041, i16* %arrayidx2049, align 2, !tbaa !4
  %arrayidx2053 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 5
  store i16 %conv2041, i16* %arrayidx2053, align 2, !tbaa !4
  %arrayidx2057 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 4
  store i16 %conv2041, i16* %arrayidx2057, align 2, !tbaa !4
  %336 = load i64* %183, align 8
  %337 = trunc i64 %336 to i32
  %mul20623333 = shl nuw nsw i64 %334, 1
  %mul2062 = trunc i64 %mul20623333 to i32
  %add2060 = add i32 %333, 2
  %add2063 = add i32 %add2060, %337
  %add2064 = add i32 %add2063, %mul2062
  %shr20653140 = lshr i32 %add2064, 2
  %conv2066 = trunc i32 %shr20653140 to i16
  %arrayidx2070 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 5, i64 7
  store i16 %conv2066, i16* %arrayidx2070, align 2, !tbaa !4
  %arrayidx2074 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 6
  store i16 %conv2066, i16* %arrayidx2074, align 2, !tbaa !4
  %arrayidx2078 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 5
  store i16 %conv2066, i16* %arrayidx2078, align 2, !tbaa !4
  %338 = lshr i64 %336, 32
  %339 = trunc i64 %338 to i32
  %mul2083 = shl i32 %337, 1
  %add2081 = add i32 %335, 2
  %add2084 = add i32 %add2081, %339
  %add2085 = add i32 %add2084, %mul2083
  %shr20863141 = lshr i32 %add2085, 2
  %conv2087 = trunc i32 %shr20863141 to i16
  %arrayidx2091 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 3, i64 7
  store i16 %conv2087, i16* %arrayidx2091, align 2, !tbaa !4
  %arrayidx2095 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 6
  store i16 %conv2087, i16* %arrayidx2095, align 2, !tbaa !4
  %340 = load i32* %arrayidx679, align 16, !tbaa !0
  %mul21003334 = shl nuw nsw i64 %338, 1
  %mul2100 = trunc i64 %mul21003334 to i32
  %add2098 = add i32 %337, 2
  %add2101 = add i32 %add2098, %340
  %add2102 = add i32 %add2101, %mul2100
  %shr21033142 = lshr i32 %add2102, 2
  %conv2104 = trunc i32 %shr21033142 to i16
  %arrayidx2108 = getelementptr inbounds %struct.ImageParameters* %331, i64 0, i32 43, i64 5, i64 1, i64 7
  store i16 %conv2104, i16* %arrayidx2108, align 2, !tbaa !4
  %341 = load i64* %276, align 8
  %342 = trunc i64 %341 to i32
  %343 = load i32* %arrayidx356, align 16, !tbaa !0
  %344 = load i32* %arrayidx1496, align 4, !tbaa !0
  %mul2113 = shl i32 %344, 1
  %add2111 = add i32 %342, 2
  %add2114 = add i32 %add2111, %343
  %add2115 = add i32 %add2114, %mul2113
  %shr21163143 = lshr i32 %add2115, 2
  %conv2117 = trunc i32 %shr21163143 to i16
  %345 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2121 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 2
  store i16 %conv2117, i16* %arrayidx2121, align 2, !tbaa !4
  %arrayidx2125 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 4, i64 1
  store i16 %conv2117, i16* %arrayidx2125, align 2, !tbaa !4
  %arrayidx2129 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 2, i64 0
  store i16 %conv2117, i16* %arrayidx2129, align 2, !tbaa !4
  %346 = lshr i64 %341, 32
  %347 = trunc i64 %346 to i32
  %mul2134 = shl i32 %342, 1
  %add2132 = add i32 %347, 2
  %add2135 = add i32 %add2132, %344
  %add2136 = add i32 %add2135, %mul2134
  %shr21373144 = lshr i32 %add2136, 2
  %conv2138 = trunc i32 %shr21373144 to i16
  %arrayidx2142 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 2
  store i16 %conv2138, i16* %arrayidx2142, align 2, !tbaa !4
  %arrayidx2146 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 5, i64 1
  store i16 %conv2138, i16* %arrayidx2146, align 2, !tbaa !4
  %arrayidx2150 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 3, i64 0
  store i16 %conv2138, i16* %arrayidx2150, align 2, !tbaa !4
  %348 = load i64* %270, align 16
  %349 = trunc i64 %348 to i32
  %mul21553335 = shl nuw nsw i64 %346, 1
  %mul2155 = trunc i64 %mul21553335 to i32
  %add2153 = add i32 %349, 2
  %add2156 = add i32 %add2153, %342
  %add2157 = add i32 %add2156, %mul2155
  %shr21583145 = lshr i32 %add2157, 2
  %conv2159 = trunc i32 %shr21583145 to i16
  %arrayidx2163 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 1
  store i16 %conv2159, i16* %arrayidx2163, align 2, !tbaa !4
  %arrayidx2167 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 4, i64 0
  store i16 %conv2159, i16* %arrayidx2167, align 2, !tbaa !4
  %350 = lshr i64 %348, 32
  %351 = trunc i64 %350 to i32
  %mul2172 = shl i32 %349, 1
  %add2170 = add i32 %351, 2
  %add2173 = add i32 %add2170, %347
  %add2174 = add i32 %add2173, %mul2172
  %shr21753146 = lshr i32 %add2174, 2
  %conv2176 = trunc i32 %shr21753146 to i16
  %arrayidx2180 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 1
  store i16 %conv2176, i16* %arrayidx2180, align 2, !tbaa !4
  %arrayidx2184 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 5, i64 0
  store i16 %conv2176, i16* %arrayidx2184, align 2, !tbaa !4
  %352 = load i64* %264, align 8
  %353 = trunc i64 %352 to i32
  %mul21893336 = shl nuw nsw i64 %350, 1
  %mul2189 = trunc i64 %mul21893336 to i32
  %add2187 = add i32 %353, 2
  %add2190 = add i32 %add2187, %349
  %add2191 = add i32 %add2190, %mul2189
  %shr21923147 = lshr i32 %add2191, 2
  %conv2193 = trunc i32 %shr21923147 to i16
  %arrayidx2197 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 6, i64 0
  store i16 %conv2193, i16* %arrayidx2197, align 2, !tbaa !4
  %354 = lshr i64 %352, 32
  %355 = trunc i64 %354 to i32
  %mul2202 = shl i32 %353, 1
  %add2200 = add i32 %355, 2
  %add2203 = add i32 %add2200, %351
  %add2204 = add i32 %add2203, %mul2202
  %shr22053148 = lshr i32 %add2204, 2
  %conv2206 = trunc i32 %shr22053148 to i16
  %arrayidx2210 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 5, i64 7, i64 0
  store i16 %conv2206, i16* %arrayidx2210, align 2, !tbaa !4
  %add2213 = add i32 %344, 1
  %add2214 = add i32 %add2213, %343
  %shr22153149 = lshr i32 %add2214, 1
  %conv2216 = trunc i32 %shr22153149 to i16
  %arrayidx2220 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 3, i64 6
  store i16 %conv2216, i16* %arrayidx2220, align 2, !tbaa !4
  %arrayidx2224 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 2, i64 4
  store i16 %conv2216, i16* %arrayidx2224, align 2, !tbaa !4
  %arrayidx2228 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 1, i64 2
  store i16 %conv2216, i16* %arrayidx2228, align 2, !tbaa !4
  %arrayidx2232 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 43, i64 6, i64 0, i64 0
  store i16 %conv2216, i16* %arrayidx2232, align 2, !tbaa !4
  %356 = load i64* %276, align 8
  %357 = trunc i64 %356 to i32
  %358 = load i32* %arrayidx1496, align 4, !tbaa !0
  %add2235 = add i32 %357, 1
  %add2236 = add i32 %add2235, %358
  %shr22373150 = lshr i32 %add2236, 1
  %conv2238 = trunc i32 %shr22373150 to i16
  %359 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2242 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 6
  store i16 %conv2238, i16* %arrayidx2242, align 2, !tbaa !4
  %arrayidx2246 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 4
  store i16 %conv2238, i16* %arrayidx2246, align 2, !tbaa !4
  %arrayidx2250 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 2, i64 2
  store i16 %conv2238, i16* %arrayidx2250, align 2, !tbaa !4
  %arrayidx2254 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 1, i64 0
  store i16 %conv2238, i16* %arrayidx2254, align 2, !tbaa !4
  %360 = lshr i64 %356, 32
  %361 = trunc i64 %360 to i32
  %add2257 = add i32 %361, 1
  %add2258 = add i32 %add2257, %357
  %shr22593151 = lshr i32 %add2258, 1
  %conv2260 = trunc i32 %shr22593151 to i16
  %arrayidx2264 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 6
  store i16 %conv2260, i16* %arrayidx2264, align 2, !tbaa !4
  %arrayidx2268 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 4
  store i16 %conv2260, i16* %arrayidx2268, align 2, !tbaa !4
  %arrayidx2272 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 2
  store i16 %conv2260, i16* %arrayidx2272, align 2, !tbaa !4
  %arrayidx2276 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 2, i64 0
  store i16 %conv2260, i16* %arrayidx2276, align 2, !tbaa !4
  %362 = load i64* %270, align 16
  %363 = trunc i64 %362 to i32
  %add2279 = add i32 %363, 1
  %add2280 = add i32 %add2279, %361
  %shr22813152 = lshr i32 %add2280, 1
  %conv2282 = trunc i32 %shr22813152 to i16
  %arrayidx2286 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 6
  store i16 %conv2282, i16* %arrayidx2286, align 2, !tbaa !4
  %arrayidx2290 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 4
  store i16 %conv2282, i16* %arrayidx2290, align 2, !tbaa !4
  %arrayidx2294 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 2
  store i16 %conv2282, i16* %arrayidx2294, align 2, !tbaa !4
  %arrayidx2298 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 3, i64 0
  store i16 %conv2282, i16* %arrayidx2298, align 2, !tbaa !4
  %364 = lshr i64 %362, 32
  %365 = trunc i64 %364 to i32
  %add2301 = add i32 %365, 1
  %add2302 = add i32 %add2301, %363
  %shr23033153 = lshr i32 %add2302, 1
  %conv2304 = trunc i32 %shr23033153 to i16
  %arrayidx2308 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 6
  store i16 %conv2304, i16* %arrayidx2308, align 2, !tbaa !4
  %arrayidx2312 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 4
  store i16 %conv2304, i16* %arrayidx2312, align 2, !tbaa !4
  %arrayidx2316 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 2
  store i16 %conv2304, i16* %arrayidx2316, align 2, !tbaa !4
  %arrayidx2320 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 4, i64 0
  store i16 %conv2304, i16* %arrayidx2320, align 2, !tbaa !4
  %366 = load i64* %264, align 8
  %367 = trunc i64 %366 to i32
  %add2323 = add i32 %367, 1
  %add2324 = add i32 %add2323, %365
  %shr23253154 = lshr i32 %add2324, 1
  %conv2326 = trunc i32 %shr23253154 to i16
  %arrayidx2330 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 4
  store i16 %conv2326, i16* %arrayidx2330, align 2, !tbaa !4
  %arrayidx2334 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 2
  store i16 %conv2326, i16* %arrayidx2334, align 2, !tbaa !4
  %arrayidx2338 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 5, i64 0
  store i16 %conv2326, i16* %arrayidx2338, align 2, !tbaa !4
  %368 = lshr i64 %366, 32
  %369 = trunc i64 %368 to i32
  %add2341 = add i32 %369, 1
  %add2342 = add i32 %add2341, %367
  %shr23433155 = lshr i32 %add2342, 1
  %conv2344 = trunc i32 %shr23433155 to i16
  %arrayidx2348 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 2
  store i16 %conv2344, i16* %arrayidx2348, align 2, !tbaa !4
  %arrayidx2352 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 6, i64 0
  store i16 %conv2344, i16* %arrayidx2352, align 2, !tbaa !4
  %370 = load i32* %arrayidx1390, align 16, !tbaa !0
  %add2355 = add i32 %370, 1
  %add2356 = add i32 %add2355, %369
  %shr23573156 = lshr i32 %add2356, 1
  %conv2358 = trunc i32 %shr23573156 to i16
  %arrayidx2362 = getelementptr inbounds %struct.ImageParameters* %359, i64 0, i32 43, i64 6, i64 7, i64 0
  store i16 %conv2358, i16* %arrayidx2362, align 2, !tbaa !4
  %371 = load i32* %arrayidx1496, align 4, !tbaa !0
  %372 = load i32* %arrayidx574, align 4, !tbaa !0
  %373 = load i32* %arrayidx356, align 16, !tbaa !0
  %mul2367 = shl i32 %373, 1
  %add2365 = add i32 %371, 2
  %add2368 = add i32 %add2365, %372
  %add2369 = add i32 %add2368, %mul2367
  %shr23703157 = lshr i32 %add2369, 2
  %conv2371 = trunc i32 %shr23703157 to i16
  %374 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2375 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 7
  store i16 %conv2371, i16* %arrayidx2375, align 2, !tbaa !4
  %arrayidx2379 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 5
  store i16 %conv2371, i16* %arrayidx2379, align 2, !tbaa !4
  %arrayidx2383 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 1, i64 3
  store i16 %conv2371, i16* %arrayidx2383, align 2, !tbaa !4
  %arrayidx2387 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 0, i64 1
  store i16 %conv2371, i16* %arrayidx2387, align 2, !tbaa !4
  %375 = load i64* %276, align 8
  %376 = trunc i64 %375 to i32
  %mul2392 = shl i32 %371, 1
  %add2390 = add i32 %373, 2
  %add2393 = add i32 %add2390, %376
  %add2394 = add i32 %add2393, %mul2392
  %shr23953158 = lshr i32 %add2394, 2
  %conv2396 = trunc i32 %shr23953158 to i16
  %arrayidx2400 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 7
  store i16 %conv2396, i16* %arrayidx2400, align 2, !tbaa !4
  %arrayidx2404 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 5
  store i16 %conv2396, i16* %arrayidx2404, align 2, !tbaa !4
  %arrayidx2408 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 3
  store i16 %conv2396, i16* %arrayidx2408, align 2, !tbaa !4
  %arrayidx2412 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 1, i64 1
  store i16 %conv2396, i16* %arrayidx2412, align 2, !tbaa !4
  %377 = lshr i64 %375, 32
  %378 = trunc i64 %377 to i32
  %mul2417 = shl i32 %376, 1
  %add2418 = add i32 %add2365, %378
  %add2419 = add i32 %add2418, %mul2417
  %shr24203159 = lshr i32 %add2419, 2
  %conv2421 = trunc i32 %shr24203159 to i16
  %arrayidx2425 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 7
  store i16 %conv2421, i16* %arrayidx2425, align 2, !tbaa !4
  %arrayidx2429 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 5
  store i16 %conv2421, i16* %arrayidx2429, align 2, !tbaa !4
  %arrayidx2433 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 3
  store i16 %conv2421, i16* %arrayidx2433, align 2, !tbaa !4
  %arrayidx2437 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 2, i64 1
  store i16 %conv2421, i16* %arrayidx2437, align 2, !tbaa !4
  %379 = load i64* %270, align 16
  %380 = trunc i64 %379 to i32
  %mul24423337 = shl nuw nsw i64 %377, 1
  %mul2442 = trunc i64 %mul24423337 to i32
  %add2440 = add i32 %376, 2
  %add2443 = add i32 %add2440, %380
  %add2444 = add i32 %add2443, %mul2442
  %shr24453160 = lshr i32 %add2444, 2
  %conv2446 = trunc i32 %shr24453160 to i16
  %arrayidx2450 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 6, i64 7
  store i16 %conv2446, i16* %arrayidx2450, align 2, !tbaa !4
  %arrayidx2454 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 5
  store i16 %conv2446, i16* %arrayidx2454, align 2, !tbaa !4
  %arrayidx2458 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 3
  store i16 %conv2446, i16* %arrayidx2458, align 2, !tbaa !4
  %arrayidx2462 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 3, i64 1
  store i16 %conv2446, i16* %arrayidx2462, align 2, !tbaa !4
  %381 = lshr i64 %379, 32
  %382 = trunc i64 %381 to i32
  %mul2467 = shl i32 %380, 1
  %add2465 = add i32 %378, 2
  %add2468 = add i32 %add2465, %382
  %add2469 = add i32 %add2468, %mul2467
  %shr24703161 = lshr i32 %add2469, 2
  %conv2471 = trunc i32 %shr24703161 to i16
  %arrayidx2475 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 7, i64 7
  store i16 %conv2471, i16* %arrayidx2475, align 2, !tbaa !4
  %arrayidx2479 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 6, i64 5
  store i16 %conv2471, i16* %arrayidx2479, align 2, !tbaa !4
  %arrayidx2483 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 5, i64 3
  store i16 %conv2471, i16* %arrayidx2483, align 2, !tbaa !4
  %arrayidx2487 = getelementptr inbounds %struct.ImageParameters* %374, i64 0, i32 43, i64 6, i64 4, i64 1
  store i16 %conv2471, i16* %arrayidx2487, align 2, !tbaa !4
  %383 = load i64* %264, align 8
  %384 = trunc i64 %383 to i32
  %mul24923338 = shl nuw nsw i64 %381, 1
  %mul2492 = trunc i64 %mul24923338 to i32
  %add2490 = add i32 %380, 2
  %add2493 = add i32 %add2490, %384
  %add2494 = add i32 %add2493, %mul2492
  %shr24953162 = lshr i32 %add2494, 2
  %conv2496 = trunc i32 %shr24953162 to i16
  %385 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2500 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 5
  store i16 %conv2496, i16* %arrayidx2500, align 2, !tbaa !4
  %arrayidx2504 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 6, i64 3
  store i16 %conv2496, i16* %arrayidx2504, align 2, !tbaa !4
  %arrayidx2508 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 5, i64 1
  store i16 %conv2496, i16* %arrayidx2508, align 2, !tbaa !4
  %386 = lshr i64 %383, 32
  %387 = trunc i64 %386 to i32
  %mul2513 = shl i32 %384, 1
  %add2511 = add i32 %382, 2
  %add2514 = add i32 %add2511, %387
  %add2515 = add i32 %add2514, %mul2513
  %shr25163163 = lshr i32 %add2515, 2
  %conv2517 = trunc i32 %shr25163163 to i16
  %arrayidx2521 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 3
  store i16 %conv2517, i16* %arrayidx2521, align 2, !tbaa !4
  %arrayidx2525 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 6, i64 1
  store i16 %conv2517, i16* %arrayidx2525, align 2, !tbaa !4
  %388 = load i32* %arrayidx1390, align 16, !tbaa !0
  %mul25303339 = shl nuw nsw i64 %386, 1
  %mul2530 = trunc i64 %mul25303339 to i32
  %add2528 = add i32 %384, 2
  %add2531 = add i32 %add2528, %388
  %add2532 = add i32 %add2531, %mul2530
  %shr25333164 = lshr i32 %add2532, 2
  %conv2534 = trunc i32 %shr25333164 to i16
  %arrayidx2538 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 7, i64 1
  store i16 %conv2534, i16* %arrayidx2538, align 2, !tbaa !4
  %389 = load i64* %283, align 16
  %390 = trunc i64 %389 to i32
  %391 = load i64* %173, align 8
  %392 = trunc i64 %391 to i32
  %393 = lshr i64 %389, 32
  %394 = trunc i64 %393 to i32
  %mul25433340 = shl nuw nsw i64 %393, 1
  %mul2543 = trunc i64 %mul25433340 to i32
  %add2541 = add i32 %390, 2
  %add2544 = add i32 %add2541, %392
  %add2545 = add i32 %add2544, %mul2543
  %shr25463165 = lshr i32 %add2545, 2
  %conv2547 = trunc i32 %shr25463165 to i16
  %arrayidx2551 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 2, i64 6
  store i16 %conv2547, i16* %arrayidx2551, align 2, !tbaa !4
  %arrayidx2555 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 4
  store i16 %conv2547, i16* %arrayidx2555, align 2, !tbaa !4
  %arrayidx2559 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 2
  store i16 %conv2547, i16* %arrayidx2559, align 2, !tbaa !4
  %395 = lshr i64 %391, 32
  %396 = trunc i64 %395 to i32
  %mul2564 = shl i32 %392, 1
  %add2562 = add i32 %394, 2
  %add2565 = add i32 %add2562, %396
  %add2566 = add i32 %add2565, %mul2564
  %shr25673166 = lshr i32 %add2566, 2
  %conv2568 = trunc i32 %shr25673166 to i16
  %arrayidx2572 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 2, i64 7
  store i16 %conv2568, i16* %arrayidx2572, align 2, !tbaa !4
  %arrayidx2576 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 5
  store i16 %conv2568, i16* %arrayidx2576, align 2, !tbaa !4
  %arrayidx2580 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 3
  store i16 %conv2568, i16* %arrayidx2580, align 2, !tbaa !4
  %397 = load i64* %176, align 16
  %398 = trunc i64 %397 to i32
  %mul25853341 = shl nuw nsw i64 %395, 1
  %mul2585 = trunc i64 %mul25853341 to i32
  %add2583 = add i32 %392, 2
  %add2586 = add i32 %add2583, %398
  %add2587 = add i32 %add2586, %mul2585
  %shr25883167 = lshr i32 %add2587, 2
  %conv2589 = trunc i32 %shr25883167 to i16
  %arrayidx2593 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 1, i64 6
  store i16 %conv2589, i16* %arrayidx2593, align 2, !tbaa !4
  %arrayidx2597 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 43, i64 6, i64 0, i64 4
  store i16 %conv2589, i16* %arrayidx2597, align 2, !tbaa !4
  %399 = lshr i64 %397, 32
  %400 = trunc i64 %399 to i32
  %mul2602 = shl i32 %398, 1
  %add2600 = add i32 %396, 2
  %add2603 = add i32 %add2600, %400
  %add2604 = add i32 %add2603, %mul2602
  %shr26053168 = lshr i32 %add2604, 2
  %conv2606 = trunc i32 %shr26053168 to i16
  %401 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2610 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 1, i64 7
  store i16 %conv2606, i16* %arrayidx2610, align 2, !tbaa !4
  %arrayidx2614 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 5
  store i16 %conv2606, i16* %arrayidx2614, align 2, !tbaa !4
  %402 = load i64* %183, align 8
  %403 = trunc i64 %402 to i32
  %mul26193342 = shl nuw nsw i64 %399, 1
  %mul2619 = trunc i64 %mul26193342 to i32
  %add2617 = add i32 %398, 2
  %add2620 = add i32 %add2617, %403
  %add2621 = add i32 %add2620, %mul2619
  %shr26223169 = lshr i32 %add2621, 2
  %conv2623 = trunc i32 %shr26223169 to i16
  %arrayidx2627 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 6
  store i16 %conv2623, i16* %arrayidx2627, align 2, !tbaa !4
  %404 = lshr i64 %402, 32
  %405 = trunc i64 %404 to i32
  %mul2632 = shl i32 %403, 1
  %add2630 = add i32 %400, 2
  %add2633 = add i32 %add2630, %405
  %add2634 = add i32 %add2633, %mul2632
  %shr26353170 = lshr i32 %add2634, 2
  %conv2636 = trunc i32 %shr26353170 to i16
  %arrayidx2640 = getelementptr inbounds %struct.ImageParameters* %401, i64 0, i32 43, i64 6, i64 0, i64 7
  store i16 %conv2636, i16* %arrayidx2640, align 2, !tbaa !4
  br label %if.end2641

if.end2641:                                       ; preds = %if.end571, %if.then573, %if.then1389
  %406 = phi %struct.ImageParameters* [ %168, %if.end571 ], [ %254, %if.then573 ], [ %401, %if.then1389 ]
  br i1 %tobool65.not, label %if.then2643, label %if.end3005

if.then2643:                                      ; preds = %if.end2641
  %arrayidx2644 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 17
  %407 = load i32* %arrayidx2644, align 4, !tbaa !0
  %arrayidx2645 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 18
  %408 = bitcast i32* %arrayidx2645 to i64*
  %409 = load i64* %408, align 8
  %410 = trunc i64 %409 to i32
  %add2646 = add i32 %407, 1
  %add2647 = add i32 %add2646, %410
  %shr26483098 = lshr i32 %add2647, 1
  %conv2649 = trunc i32 %shr26483098 to i16
  %arrayidx2653 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 0
  store i16 %conv2649, i16* %arrayidx2653, align 2, !tbaa !4
  %arrayidx2655 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 19
  %411 = lshr i64 %409, 32
  %412 = trunc i64 %411 to i32
  %add2656 = add i32 %410, 1
  %add2657 = add i32 %add2656, %412
  %shr26583099 = lshr i32 %add2657, 1
  %conv2659 = trunc i32 %shr26583099 to i16
  %arrayidx2663 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 2
  store i16 %conv2659, i16* %arrayidx2663, align 2, !tbaa !4
  %arrayidx2667 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 0
  store i16 %conv2659, i16* %arrayidx2667, align 2, !tbaa !4
  %arrayidx2669 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 20
  %413 = bitcast i32* %arrayidx2669 to i64*
  %414 = load i64* %413, align 16
  %415 = trunc i64 %414 to i32
  %add2670 = add i32 %412, 1
  %add2671 = add i32 %add2670, %415
  %shr26723100 = lshr i32 %add2671, 1
  %conv2673 = trunc i32 %shr26723100 to i16
  %arrayidx2677 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 4
  store i16 %conv2673, i16* %arrayidx2677, align 2, !tbaa !4
  %arrayidx2681 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 2
  store i16 %conv2673, i16* %arrayidx2681, align 2, !tbaa !4
  %arrayidx2685 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 0
  store i16 %conv2673, i16* %arrayidx2685, align 2, !tbaa !4
  %arrayidx2687 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 21
  %416 = lshr i64 %414, 32
  %417 = trunc i64 %416 to i32
  %add2688 = add i32 %415, 1
  %add2689 = add i32 %add2688, %417
  %shr26903101 = lshr i32 %add2689, 1
  %conv2691 = trunc i32 %shr26903101 to i16
  %arrayidx2695 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 0, i64 6
  store i16 %conv2691, i16* %arrayidx2695, align 2, !tbaa !4
  %arrayidx2699 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 4
  store i16 %conv2691, i16* %arrayidx2699, align 2, !tbaa !4
  %arrayidx2703 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 2
  store i16 %conv2691, i16* %arrayidx2703, align 2, !tbaa !4
  %arrayidx2707 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 0
  store i16 %conv2691, i16* %arrayidx2707, align 2, !tbaa !4
  %arrayidx2709 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 22
  %418 = bitcast i32* %arrayidx2709 to i64*
  %419 = load i64* %418, align 8
  %420 = trunc i64 %419 to i32
  %add2710 = add i32 %417, 1
  %add2711 = add i32 %add2710, %420
  %shr27123102 = lshr i32 %add2711, 1
  %conv2713 = trunc i32 %shr27123102 to i16
  %arrayidx2717 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 1, i64 6
  store i16 %conv2713, i16* %arrayidx2717, align 2, !tbaa !4
  %arrayidx2721 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 4
  store i16 %conv2713, i16* %arrayidx2721, align 2, !tbaa !4
  %arrayidx2725 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 2
  store i16 %conv2713, i16* %arrayidx2725, align 2, !tbaa !4
  %arrayidx2729 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 4, i64 0
  store i16 %conv2713, i16* %arrayidx2729, align 2, !tbaa !4
  %421 = lshr i64 %419, 32
  %422 = trunc i64 %421 to i32
  %add2732 = add i32 %420, 1
  %add2733 = add i32 %add2732, %422
  %shr27343103 = lshr i32 %add2733, 1
  %conv2735 = trunc i32 %shr27343103 to i16
  %arrayidx2739 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 2, i64 6
  store i16 %conv2735, i16* %arrayidx2739, align 2, !tbaa !4
  %arrayidx2743 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 3, i64 4
  store i16 %conv2735, i16* %arrayidx2743, align 2, !tbaa !4
  %arrayidx2747 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 4, i64 2
  store i16 %conv2735, i16* %arrayidx2747, align 2, !tbaa !4
  %arrayidx2751 = getelementptr inbounds %struct.ImageParameters* %406, i64 0, i32 43, i64 8, i64 5, i64 0
  store i16 %conv2735, i16* %arrayidx2751, align 2, !tbaa !4
  %arrayidx2753 = getelementptr inbounds [25 x i32]* %PredPel, i64 0, i64 24
  %423 = load i32* %arrayidx2753, align 16, !tbaa !0
  %add2754 = add i32 %422, 1
  %add2755 = add i32 %add2754, %423
  %shr27563104 = lshr i32 %add2755, 1
  %conv2757 = trunc i32 %shr27563104 to i16
  %424 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2761 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 6
  store i16 %conv2757, i16* %arrayidx2761, align 2, !tbaa !4
  %arrayidx2765 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 4
  store i16 %conv2757, i16* %arrayidx2765, align 2, !tbaa !4
  %arrayidx2769 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 2
  store i16 %conv2757, i16* %arrayidx2769, align 2, !tbaa !4
  %arrayidx2773 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 0
  store i16 %conv2757, i16* %arrayidx2773, align 2, !tbaa !4
  %conv2775 = trunc i32 %423 to i16
  %arrayidx2779 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 7
  store i16 %conv2775, i16* %arrayidx2779, align 2, !tbaa !4
  %arrayidx2783 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 6
  store i16 %conv2775, i16* %arrayidx2783, align 2, !tbaa !4
  %arrayidx2787 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 5
  store i16 %conv2775, i16* %arrayidx2787, align 2, !tbaa !4
  %arrayidx2791 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 4
  store i16 %conv2775, i16* %arrayidx2791, align 2, !tbaa !4
  %arrayidx2795 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 3
  store i16 %conv2775, i16* %arrayidx2795, align 2, !tbaa !4
  %arrayidx2799 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 2
  store i16 %conv2775, i16* %arrayidx2799, align 2, !tbaa !4
  %arrayidx2803 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 1
  store i16 %conv2775, i16* %arrayidx2803, align 2, !tbaa !4
  %arrayidx2807 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 7, i64 0
  store i16 %conv2775, i16* %arrayidx2807, align 2, !tbaa !4
  %arrayidx2811 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 7
  store i16 %conv2775, i16* %arrayidx2811, align 2, !tbaa !4
  %arrayidx2815 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 6
  store i16 %conv2775, i16* %arrayidx2815, align 2, !tbaa !4
  %arrayidx2819 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 5
  store i16 %conv2775, i16* %arrayidx2819, align 2, !tbaa !4
  %arrayidx2823 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 4
  store i16 %conv2775, i16* %arrayidx2823, align 2, !tbaa !4
  %arrayidx2827 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 3
  store i16 %conv2775, i16* %arrayidx2827, align 2, !tbaa !4
  %arrayidx2831 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 2
  store i16 %conv2775, i16* %arrayidx2831, align 2, !tbaa !4
  %arrayidx2835 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 7
  store i16 %conv2775, i16* %arrayidx2835, align 2, !tbaa !4
  %arrayidx2839 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 6
  store i16 %conv2775, i16* %arrayidx2839, align 2, !tbaa !4
  %arrayidx2843 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 5
  store i16 %conv2775, i16* %arrayidx2843, align 2, !tbaa !4
  %arrayidx2847 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 4
  store i16 %conv2775, i16* %arrayidx2847, align 2, !tbaa !4
  %arrayidx2851 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 7
  store i16 %conv2775, i16* %arrayidx2851, align 2, !tbaa !4
  %arrayidx2855 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 6
  store i16 %conv2775, i16* %arrayidx2855, align 2, !tbaa !4
  %mul2858 = mul nsw i32 %423, 3
  %add2859 = add i32 %422, 2
  %add2860 = add i32 %add2859, %mul2858
  %shr28613105 = lshr i32 %add2860, 2
  %conv2862 = trunc i32 %shr28613105 to i16
  %arrayidx2866 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 7
  store i16 %conv2862, i16* %arrayidx2866, align 2, !tbaa !4
  %arrayidx2870 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 5
  store i16 %conv2862, i16* %arrayidx2870, align 2, !tbaa !4
  %arrayidx2874 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 3
  store i16 %conv2862, i16* %arrayidx2874, align 2, !tbaa !4
  %arrayidx2878 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 6, i64 1
  store i16 %conv2862, i16* %arrayidx2878, align 2, !tbaa !4
  %425 = load i64* %418, align 8
  %426 = trunc i64 %425 to i32
  %427 = lshr i64 %425, 32
  %428 = trunc i64 %427 to i32
  %mul28833309 = shl nuw nsw i64 %427, 1
  %mul2883 = trunc i64 %mul28833309 to i32
  %add2881 = add i32 %423, 2
  %add2884 = add i32 %add2881, %426
  %add2885 = add i32 %add2884, %mul2883
  %shr28863106 = lshr i32 %add2885, 2
  %conv2887 = trunc i32 %shr28863106 to i16
  %arrayidx2891 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 2, i64 7
  store i16 %conv2887, i16* %arrayidx2891, align 2, !tbaa !4
  %arrayidx2895 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 3, i64 5
  store i16 %conv2887, i16* %arrayidx2895, align 2, !tbaa !4
  %arrayidx2899 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 4, i64 3
  store i16 %conv2887, i16* %arrayidx2899, align 2, !tbaa !4
  %arrayidx2903 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 5, i64 1
  store i16 %conv2887, i16* %arrayidx2903, align 2, !tbaa !4
  %429 = load i32* %arrayidx2687, align 4, !tbaa !0
  %mul2908 = shl i32 %426, 1
  %add2906 = add i32 %428, 2
  %add2909 = add i32 %add2906, %429
  %add2910 = add i32 %add2909, %mul2908
  %shr29113107 = lshr i32 %add2910, 2
  %conv2912 = trunc i32 %shr29113107 to i16
  %arrayidx2916 = getelementptr inbounds %struct.ImageParameters* %424, i64 0, i32 43, i64 8, i64 1, i64 7
  store i16 %conv2912, i16* %arrayidx2916, align 2, !tbaa !4
  %430 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx2920 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 5
  store i16 %conv2912, i16* %arrayidx2920, align 2, !tbaa !4
  %arrayidx2924 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 3, i64 3
  store i16 %conv2912, i16* %arrayidx2924, align 2, !tbaa !4
  %arrayidx2928 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 4, i64 1
  store i16 %conv2912, i16* %arrayidx2928, align 2, !tbaa !4
  %431 = load i64* %413, align 16
  %432 = trunc i64 %431 to i32
  %433 = lshr i64 %431, 32
  %434 = trunc i64 %433 to i32
  %mul29333310 = shl nuw nsw i64 %433, 1
  %mul2933 = trunc i64 %mul29333310 to i32
  %add2931 = add i32 %426, 2
  %add2934 = add i32 %add2931, %432
  %add2935 = add i32 %add2934, %mul2933
  %shr29363108 = lshr i32 %add2935, 2
  %conv2937 = trunc i32 %shr29363108 to i16
  %arrayidx2941 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 7
  store i16 %conv2937, i16* %arrayidx2941, align 2, !tbaa !4
  %arrayidx2945 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 5
  store i16 %conv2937, i16* %arrayidx2945, align 2, !tbaa !4
  %arrayidx2949 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 3
  store i16 %conv2937, i16* %arrayidx2949, align 2, !tbaa !4
  %arrayidx2953 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 3, i64 1
  store i16 %conv2937, i16* %arrayidx2953, align 2, !tbaa !4
  %435 = load i32* %arrayidx2655, align 4, !tbaa !0
  %mul2958 = shl i32 %432, 1
  %add2956 = add i32 %434, 2
  %add2959 = add i32 %add2956, %435
  %add2960 = add i32 %add2959, %mul2958
  %shr29613109 = lshr i32 %add2960, 2
  %conv2962 = trunc i32 %shr29613109 to i16
  %arrayidx2966 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 5
  store i16 %conv2962, i16* %arrayidx2966, align 2, !tbaa !4
  %arrayidx2970 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 3
  store i16 %conv2962, i16* %arrayidx2970, align 2, !tbaa !4
  %arrayidx2974 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 2, i64 1
  store i16 %conv2962, i16* %arrayidx2974, align 2, !tbaa !4
  %436 = load i64* %408, align 8
  %437 = trunc i64 %436 to i32
  %438 = lshr i64 %436, 32
  %439 = trunc i64 %438 to i32
  %mul29793311 = shl nuw nsw i64 %438, 1
  %mul2979 = trunc i64 %mul29793311 to i32
  %add2977 = add i32 %432, 2
  %add2980 = add i32 %add2977, %437
  %add2981 = add i32 %add2980, %mul2979
  %shr29823110 = lshr i32 %add2981, 2
  %conv2983 = trunc i32 %shr29823110 to i16
  %arrayidx2987 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 3
  store i16 %conv2983, i16* %arrayidx2987, align 2, !tbaa !4
  %arrayidx2991 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 1, i64 1
  store i16 %conv2983, i16* %arrayidx2991, align 2, !tbaa !4
  %440 = load i32* %arrayidx2644, align 4, !tbaa !0
  %mul2996 = shl i32 %437, 1
  %add2994 = add i32 %439, 2
  %add2997 = add i32 %add2994, %440
  %add2998 = add i32 %add2997, %mul2996
  %shr29993111 = lshr i32 %add2998, 2
  %conv3000 = trunc i32 %shr29993111 to i16
  %arrayidx3004 = getelementptr inbounds %struct.ImageParameters* %430, i64 0, i32 43, i64 8, i64 0, i64 1
  store i16 %conv3000, i16* %arrayidx3004, align 2, !tbaa !4
  br label %if.end3005

if.end3005:                                       ; preds = %if.then2643, %if.end2641
  call void @llvm.lifetime.end(i64 192, i8* %5) #2
  call void @llvm.lifetime.end(i64 100, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare i32 @SATD8X8(i32*, i32) #3

; Function Attrs: optsize
declare void @store_coding_state_cs_cm(...) #3

; Function Attrs: nounwind optsize uwtable
define double @RDCost_for_8x8IntraBlocks(i32* nocapture %nonzero, i32 %b8, i32 %ipmode, double %lambda, double %min_rdcost, i32 %mostProbableMode) #0 {
entry:
  %dummy = alloca i32, align 4
  %rem = srem i32 %b8, 2
  %mul = shl nsw i32 %rem, 3
  %div = sdiv i32 %b8, 2
  %mul1 = shl nsw i32 %div, 3
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %1 = load i32* %pix_x, align 4, !tbaa !0
  %add = add nsw i32 %1, %mul
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %2 = load i32* %pix_y, align 4, !tbaa !0
  %add2 = add nsw i32 %2, %mul1
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %3 = load i32* %opix_y, align 4, !tbaa !0
  %add3 = add nsw i32 %3, %mul1
  %4 = load i16*** @imgY_org, align 8, !tbaa !3
  %5 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgY4 = getelementptr inbounds %struct.storable_picture* %5, i64 0, i32 25
  %6 = load i16*** %imgY4, align 8, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %7 = load %struct.Slice** %currentSlice, align 8, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %8 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom = sext i32 %8 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %9 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %currSEnr = getelementptr inbounds %struct.macroblock* %9, i64 %idxprom, i32 0
  %10 = load i32* %currSEnr, align 4, !tbaa !0
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %partition_mode = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 61
  %12 = load i32* %partition_mode, align 4, !tbaa !0
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom7
  %13 = load i32** %arrayidx8, align 8, !tbaa !3
  store i32 0, i32* %dummy, align 4, !tbaa !0
  %call = call i32 @dct_luma8x8(i32 %b8, i32* %dummy, i32 1) #5
  store i32 %call, i32* %nonzero, align 4, !tbaa !0
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %quad = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 53
  %15 = load i32** %quad, align 8, !tbaa !3
  %16 = shl i32 %rem, 3
  %17 = add i32 %1, %16
  %18 = sext i32 %17 to i64
  %19 = sext i32 %add2 to i64
  %20 = sext i32 %add3 to i64
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc28, %entry
  %indvars.iv127 = phi i64 [ 0, %entry ], [ %indvars.iv.next128, %for.inc28 ]
  %distortion.0125 = phi i64 [ 0, %entry ], [ %add27, %for.inc28 ]
  %21 = add nsw i64 %20, %indvars.iv127
  %arrayidx16 = getelementptr inbounds i16** %4, i64 %21
  %22 = load i16** %arrayidx16, align 8, !tbaa !3
  %23 = add nsw i64 %19, %indvars.iv127
  %arrayidx21 = getelementptr inbounds i16** %6, i64 %23
  %24 = load i16** %arrayidx21, align 8, !tbaa !3
  br label %for.body12

for.body12:                                       ; preds = %for.cond9.preheader, %for.body12
  %indvars.iv = phi i64 [ %18, %for.cond9.preheader ], [ %indvars.iv.next, %for.body12 ]
  %distortion.1123 = phi i64 [ %distortion.0125, %for.cond9.preheader ], [ %add27, %for.body12 ]
  %arrayidx17 = getelementptr inbounds i16* %22, i64 %indvars.iv
  %25 = load i16* %arrayidx17, align 2, !tbaa !4
  %conv = zext i16 %25 to i64
  %arrayidx22 = getelementptr inbounds i16* %24, i64 %indvars.iv
  %26 = load i16* %arrayidx22, align 2, !tbaa !4
  %conv23 = zext i16 %26 to i64
  %sub = sub i64 %conv, %conv23
  %arrayidx25 = getelementptr inbounds i32* %15, i64 %sub
  %27 = load i32* %arrayidx25, align 4, !tbaa !0
  %conv26 = sext i32 %27 to i64
  %add27 = add nsw i64 %conv26, %distortion.1123
  %indvars.iv.next = add i64 %indvars.iv, 1
  %28 = add nsw i32 %add, 7
  %29 = trunc i64 %indvars.iv to i32
  %cmp11 = icmp slt i32 %29, %28
  br i1 %cmp11, label %for.body12, label %for.inc28

for.inc28:                                        ; preds = %for.body12
  %indvars.iv.next128 = add i64 %indvars.iv127, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next128 to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond131, label %for.end30, label %for.cond9.preheader

for.end30:                                        ; preds = %for.inc28
  %arrayidx6 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5
  %cmp31 = icmp eq i32 %mostProbableMode, %ipmode
  br i1 %cmp31, label %cond.end38, label %cond.false

cond.false:                                       ; preds = %for.end30
  %not.cmp33 = icmp sge i32 %ipmode, %mostProbableMode
  %sub37 = sext i1 %not.cmp33 to i32
  %cond = add nsw i32 %sub37, %ipmode
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false, %for.end30
  %cond39 = phi i32 [ -1, %for.end30 ], [ %cond, %cond.false ]
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 1
  store i32 %cond39, i32* %value1, align 4, !tbaa !0
  %context = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 6
  store i32 %b8, i32* %context, align 4, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx6, i64 0, i32 0
  store i32 4, i32* %type, align 4, !tbaa !0
  %30 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 59
  %31 = load i32* %symbol_mode, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %31, 0
  br i1 %cmp40, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end38
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !3
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end38, %if.then
  %32 = phi %struct.ImageParameters* [ %14, %cond.end38 ], [ %.pre, %if.then ]
  %type42 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 6
  %33 = load i32* %type42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %33, 1
  br i1 %cmp43, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end
  %arrayidx46 = getelementptr inbounds i32* %13, i64 4
  %34 = load i32* %arrayidx46, align 4, !tbaa !0
  %idxprom47 = sext i32 %34 to i64
  %partArr = getelementptr inbounds %struct.Slice* %7, i64 0, i32 6
  %35 = load %struct.datapartition** %partArr, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds %struct.datapartition* %35, i64 %idxprom47
  br label %if.end53

if.else:                                          ; preds = %if.end
  %arrayidx49 = getelementptr inbounds i32* %13, i64 18
  %36 = load i32* %arrayidx49, align 4, !tbaa !0
  %idxprom50 = sext i32 %36 to i64
  %partArr51 = getelementptr inbounds %struct.Slice* %7, i64 0, i32 6
  %37 = load %struct.datapartition** %partArr51, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds %struct.datapartition* %37, i64 %idxprom50
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then45
  %dataPart.0 = phi %struct.datapartition* [ %arrayidx48, %if.then45 ], [ %arrayidx52, %if.else ]
  %38 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode54 = getelementptr inbounds %struct.InputParameters* %38, i64 0, i32 59
  %39 = load i32* %symbol_mode54, align 4, !tbaa !0
  %cmp55 = icmp eq i32 %39, 0
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end53
  %call58 = call i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %arrayidx6, %struct.datapartition* %dataPart.0) #6
  br label %if.end61

if.else59:                                        ; preds = %if.end53
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %dataPart.0, i64 0, i32 2
  %40 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !3
  %call60 = call i32 %40(%struct.syntaxelement* %arrayidx6, %struct.datapartition* %dataPart.0) #6
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom5, i32 3
  %41 = load i32* %len, align 4, !tbaa !0
  %42 = load i32* %currSEnr, align 4, !tbaa !0
  %inc63 = add nsw i32 %42, 1
  store i32 %inc63, i32* %currSEnr, align 4, !tbaa !0
  %43 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode64 = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 59
  %44 = load i32* %symbol_mode64, align 4, !tbaa !0
  %cmp65 = icmp eq i32 %44, 0
  br i1 %cmp65, label %for.body71, label %if.else77

for.body71:                                       ; preds = %if.end61, %for.body71
  %b4.0122 = phi i32 [ %inc75, %for.body71 ], [ 0, %if.end61 ]
  %rate.0121 = phi i32 [ %add73, %for.body71 ], [ %41, %if.end61 ]
  %call72 = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %b8, i32 %b4.0122, i32 0) #6
  %add73 = add nsw i32 %call72, %rate.0121
  %inc75 = add nsw i32 %b4.0122, 1
  %exitcond = icmp eq i32 %inc75, 4
  br i1 %exitcond, label %if.end80, label %for.body71

if.else77:                                        ; preds = %if.end61
  %call78 = call i32 @writeLumaCoeff8x8_CABAC(i32 %b8, i32 1) #6
  %add79 = add nsw i32 %call78, %41
  br label %if.end80

if.end80:                                         ; preds = %for.body71, %if.else77
  %rate.1 = phi i32 [ %add79, %if.else77 ], [ %add73, %for.body71 ]
  %conv82 = sitofp i32 %rate.1 to double
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 164
  %46 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool = icmp eq i32 %46, 0
  br i1 %tobool, label %if.else87, label %return

if.else87:                                        ; preds = %if.end80
  %mul83 = fmul double %conv82, %lambda
  %conv81 = sitofp i64 %add27 to double
  %add84 = fadd double %conv81, %mul83
  br label %return

return:                                           ; preds = %if.end80, %if.else87
  %retval.0 = phi double [ %add84, %if.else87 ], [ %conv82, %if.end80 ]
  ret double %retval.0
}

; Function Attrs: optsize
declare void @reset_coding_state_cs_cm(...) #3

; Function Attrs: optsize
declare i32 @RDCost_for_4x4Blocks_Chroma(i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma8x8(i32 %b8, i32* nocapture %coeff_cost, i32 %intra) #0 {
entry:
  %m6 = alloca [8 x [8 x i32]], align 16
  %scan_poss = alloca [4 x i32], align 16
  %runs = alloca [4 x i32], align 16
  %rem = srem i32 %b8, 2
  %mul = shl nsw i32 %rem, 3
  %div = sdiv i32 %b8, 2
  %mul1 = shl nsw i32 %div, 3
  %idxprom = sext i32 %b8 to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %1 = load i32***** %cofAC, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32**** %1, i64 %idxprom
  %2 = load i32**** %arrayidx, align 8, !tbaa !3
  %3 = load i32*** %2, align 8, !tbaa !3
  %4 = load i32** %3, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i32** %3, i64 1
  %5 = load i32** %arrayidx8, align 8, !tbaa !3
  %6 = bitcast [8 x [8 x i32]]* %m6 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %6) #2
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %7 = load i32* %current_mb_nr, align 4, !tbaa !0
  %idxprom9 = sext i32 %7 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %qp = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 10
  %9 = load i32* %qp, align 4, !tbaa !0
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151
  %10 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !0
  %add = sub i32 0, %10
  %cmp = icmp eq i32 %9, %add
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160
  %11 = load i32* %lossless_qpprime_flag, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %11, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %add14 = add nsw i32 %10, %9
  %div15 = sdiv i32 %add14, 6
  %rem20 = srem i32 %add14, 6
  %add21 = add nsw i32 %div15, 16
  %cmp22 = icmp slt i32 %add14, 36
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %sub23 = sub nsw i32 6, %div15
  %sub24 = sub nsw i32 5, %div15
  %shl = shl i32 1, %sub24
  br label %if.end

if.else:                                          ; preds = %land.end
  %sub25 = add nsw i32 %div15, -6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dq_round.0 = phi i32 [ %shl, %if.then ], [ 0, %if.else ]
  %dq_rshift.0 = phi i32 [ %sub23, %if.then ], [ 0, %if.else ]
  %dq_lshift.0 = phi i32 [ 0, %if.then ], [ %sub25, %if.else ]
  br i1 %12, label %for.end414, label %for.body

for.cond223.preheader:                            ; preds = %for.body
  br i1 %12, label %for.end414, label %for.body230

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv1708 = phi i64 [ %indvars.iv.next1709, %for.body ], [ 0, %if.end ]
  %arrayidx40 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv1708
  %13 = load i32* %arrayidx40, align 4, !tbaa !0
  %arrayidx44 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 7, i64 %indvars.iv1708
  %14 = load i32* %arrayidx44, align 4, !tbaa !0
  %add45 = add nsw i32 %14, %13
  %arrayidx50 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv1708
  %15 = load i32* %arrayidx50, align 4, !tbaa !0
  %arrayidx54 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 6, i64 %indvars.iv1708
  %16 = load i32* %arrayidx54, align 4, !tbaa !0
  %add55 = add nsw i32 %16, %15
  %arrayidx60 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv1708
  %17 = load i32* %arrayidx60, align 4, !tbaa !0
  %arrayidx64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 5, i64 %indvars.iv1708
  %18 = load i32* %arrayidx64, align 4, !tbaa !0
  %add65 = add nsw i32 %18, %17
  %arrayidx70 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv1708
  %19 = load i32* %arrayidx70, align 4, !tbaa !0
  %arrayidx74 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 %indvars.iv1708
  %20 = load i32* %arrayidx74, align 4, !tbaa !0
  %add75 = add nsw i32 %20, %19
  %add79 = add nsw i32 %add75, %add45
  %add83 = add nsw i32 %add65, %add55
  %sub87 = sub nsw i32 %add45, %add75
  %sub91 = sub nsw i32 %add55, %add65
  %sub101 = sub nsw i32 %13, %14
  %sub111 = sub nsw i32 %15, %16
  %sub121 = sub nsw i32 %17, %18
  %sub131 = sub nsw i32 %19, %20
  %shr = ashr i32 %sub101, 1
  %add138 = add nsw i32 %shr, %sub101
  %add135 = add i32 %add138, %sub111
  %add139 = add i32 %add135, %sub121
  %sub143 = sub nsw i32 %sub101, %sub131
  %shr145 = ashr i32 %sub121, 1
  %sum = add i32 %shr145, %sub121
  %sub148 = sub i32 %sub143, %sum
  %shr154 = ashr i32 %sub111, 1
  %add156.neg = sub i32 %sub101, %sub111
  %add152 = sub i32 %add156.neg, %shr154
  %sub157 = add i32 %add152, %sub131
  %sub161 = sub nsw i32 %sub111, %sub121
  %shr163 = ashr i32 %sub131, 1
  %add165 = add i32 %sub131, %sub161
  %add166 = add i32 %add165, %shr163
  %add170 = add nsw i32 %add79, %add83
  %arrayidx173 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 0, i64 %indvars.iv1708
  store i32 %add170, i32* %arrayidx173, align 4, !tbaa !0
  %shr176 = ashr i32 %sub91, 1
  %add177 = add nsw i32 %sub87, %shr176
  %arrayidx180 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 2, i64 %indvars.iv1708
  store i32 %add177, i32* %arrayidx180, align 4, !tbaa !0
  %sub183 = sub nsw i32 %add79, %add83
  %arrayidx186 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 4, i64 %indvars.iv1708
  store i32 %sub183, i32* %arrayidx186, align 4, !tbaa !0
  %shr188 = ashr i32 %sub87, 1
  %sub190 = sub nsw i32 %shr188, %sub91
  %arrayidx193 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 6, i64 %indvars.iv1708
  store i32 %sub190, i32* %arrayidx193, align 4, !tbaa !0
  %shr196 = ashr i32 %add166, 2
  %add197 = add nsw i32 %shr196, %add139
  %arrayidx200 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 1, i64 %indvars.iv1708
  store i32 %add197, i32* %arrayidx200, align 4, !tbaa !0
  %shr203 = ashr i32 %sub157, 2
  %add204 = add nsw i32 %sub148, %shr203
  %arrayidx207 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 3, i64 %indvars.iv1708
  store i32 %add204, i32* %arrayidx207, align 4, !tbaa !0
  %shr210 = ashr i32 %sub148, 2
  %sub211 = sub nsw i32 %sub157, %shr210
  %arrayidx214 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 5, i64 %indvars.iv1708
  store i32 %sub211, i32* %arrayidx214, align 4, !tbaa !0
  %shr218 = ashr i32 %add139, 2
  %add219 = sub i32 %shr218, %add166
  %arrayidx222 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 7, i64 %indvars.iv1708
  store i32 %add219, i32* %arrayidx222, align 4, !tbaa !0
  %indvars.iv.next1709 = add i64 %indvars.iv1708, 1
  %21 = trunc i64 %indvars.iv1708 to i32
  %cmp34.not = icmp sgt i32 %21, 6
  br i1 %cmp34.not, label %for.cond223.preheader, label %for.body

for.body230:                                      ; preds = %for.cond223.preheader, %for.body230
  %indvars.iv1706 = phi i64 [ %indvars.iv.next1707, %for.body230 ], [ 0, %for.cond223.preheader ]
  %arrayidx235 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 0
  %22 = load i32* %arrayidx235, align 16, !tbaa !0
  %arrayidx238 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 7
  %23 = load i32* %arrayidx238, align 4, !tbaa !0
  %add239 = add nsw i32 %23, %22
  %arrayidx243 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 1
  %24 = load i32* %arrayidx243, align 4, !tbaa !0
  %arrayidx246 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 6
  %25 = load i32* %arrayidx246, align 8, !tbaa !0
  %add247 = add nsw i32 %25, %24
  %arrayidx251 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 2
  %26 = load i32* %arrayidx251, align 8, !tbaa !0
  %arrayidx254 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 5
  %27 = load i32* %arrayidx254, align 4, !tbaa !0
  %add255 = add nsw i32 %27, %26
  %arrayidx259 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 3
  %28 = load i32* %arrayidx259, align 4, !tbaa !0
  %arrayidx262 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1706, i64 4
  %29 = load i32* %arrayidx262, align 16, !tbaa !0
  %add263 = add nsw i32 %29, %28
  %add267 = add nsw i32 %add263, %add239
  %add271 = add nsw i32 %add255, %add247
  %sub275 = sub nsw i32 %add239, %add263
  %sub279 = sub nsw i32 %add247, %add255
  %sub287 = sub nsw i32 %22, %23
  %sub295 = sub nsw i32 %24, %25
  %sub303 = sub nsw i32 %26, %27
  %sub311 = sub nsw i32 %28, %29
  %shr317 = ashr i32 %sub287, 1
  %add319 = add nsw i32 %shr317, %sub287
  %add315 = add i32 %add319, %sub295
  %add320 = add i32 %add315, %sub303
  %sub324 = sub nsw i32 %sub287, %sub311
  %shr326 = ashr i32 %sub303, 1
  %sum1675 = add i32 %shr326, %sub303
  %sub329 = sub i32 %sub324, %sum1675
  %shr335 = ashr i32 %sub295, 1
  %add337.neg = sub i32 %sub287, %sub295
  %add333 = sub i32 %add337.neg, %shr335
  %sub338 = add i32 %add333, %sub311
  %sub342 = sub nsw i32 %sub295, %sub303
  %shr344 = ashr i32 %sub311, 1
  %add346 = add i32 %sub311, %sub342
  %add347 = add i32 %add346, %shr344
  %add351 = add nsw i32 %add267, %add271
  %arrayidx355 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 0
  store i32 %add351, i32* %arrayidx355, align 4, !tbaa !0
  %shr358 = ashr i32 %sub279, 1
  %add359 = add nsw i32 %sub275, %shr358
  %arrayidx363 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 2
  store i32 %add359, i32* %arrayidx363, align 4, !tbaa !0
  %sub366 = sub nsw i32 %add267, %add271
  %arrayidx370 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 4
  store i32 %sub366, i32* %arrayidx370, align 4, !tbaa !0
  %shr372 = ashr i32 %sub275, 1
  %sub374 = sub nsw i32 %shr372, %sub279
  %arrayidx378 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 6
  store i32 %sub374, i32* %arrayidx378, align 4, !tbaa !0
  %shr381 = ashr i32 %add347, 2
  %add382 = add nsw i32 %shr381, %add320
  %arrayidx386 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 1
  store i32 %add382, i32* %arrayidx386, align 4, !tbaa !0
  %shr389 = ashr i32 %sub338, 2
  %add390 = add nsw i32 %sub329, %shr389
  %arrayidx394 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 3
  store i32 %add390, i32* %arrayidx394, align 4, !tbaa !0
  %shr397 = ashr i32 %sub329, 2
  %sub398 = sub nsw i32 %sub338, %shr397
  %arrayidx402 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 5
  store i32 %sub398, i32* %arrayidx402, align 4, !tbaa !0
  %shr406 = ashr i32 %add320, 2
  %add407 = sub i32 %shr406, %add347
  %arrayidx411 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1706, i64 7
  store i32 %add407, i32* %arrayidx411, align 4, !tbaa !0
  %indvars.iv.next1707 = add i64 %indvars.iv1706, 1
  %30 = trunc i64 %indvars.iv1706 to i32
  %cmp224.not = icmp sgt i32 %30, 6
  br i1 %cmp224.not, label %for.end414, label %for.body230

for.end414:                                       ; preds = %if.end, %for.body230, %for.cond223.preheader
  %31 = bitcast [4 x i32]* %runs to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 -1, i64 16, i32 16, i1 false)
  %mb_field = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom9, i32 22
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom9, i32 32
  %cmp605 = icmp eq i32 %intra, 1
  %cmp608 = icmp sgt i32 %add14, 35
  %idxprom613 = sext i32 %rem20 to i64
  %idxprom477 = sext i32 %div15 to i64
  %32 = bitcast [4 x i32]* %scan_poss to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 16, i32 16, i1 false)
  br label %for.body425

for.body425:                                      ; preds = %for.inc664.for.body425_crit_edge, %for.end414
  %33 = phi %struct.ImageParameters* [ %0, %for.end414 ], [ %.pre1710, %for.inc664.for.body425_crit_edge ]
  %indvars.iv1702 = phi i64 [ 0, %for.end414 ], [ %indvars.iv.next1703, %for.inc664.for.body425_crit_edge ]
  %scan_pos.01670 = phi i32 [ 0, %for.end414 ], [ %scan_pos.21650, %for.inc664.for.body425_crit_edge ]
  %run.01669 = phi i32 [ -1, %for.end414 ], [ %run.21649, %for.inc664.for.body425_crit_edge ]
  %nonzero.01668 = phi i32 [ 0, %for.end414 ], [ %nonzero.11648, %for.inc664.for.body425_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 100
  %34 = load i32* %field_picture, align 4, !tbaa !0
  %tobool426 = icmp eq i32 %34, 0
  br i1 %tobool426, label %lor.lhs.false, label %if.end446

lor.lhs.false:                                    ; preds = %for.body425
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 90
  %35 = load i32* %MbaffFrameFlag, align 4, !tbaa !0
  %tobool427 = icmp eq i32 %35, 0
  br i1 %tobool427, label %if.else437, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load i32* %mb_field, align 4, !tbaa !0
  %tobool428 = icmp eq i32 %36, 0
  br i1 %tobool428, label %if.else437, label %if.end446

if.else437:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end446

if.end446:                                        ; preds = %for.body425, %land.lhs.true, %if.else437
  %FIELD_SCAN8x8.pn = phi [64 x [2 x i8]]* [ @SNGL_SCAN8x8, %if.else437 ], [ @FIELD_SCAN8x8, %land.lhs.true ], [ @FIELD_SCAN8x8, %for.body425 ]
  %i.2.in.in = getelementptr inbounds [64 x [2 x i8]]* %FIELD_SCAN8x8.pn, i64 0, i64 %indvars.iv1702, i64 0
  %j.0.in.in = getelementptr inbounds [64 x [2 x i8]]* %FIELD_SCAN8x8.pn, i64 0, i64 %indvars.iv1702, i64 1
  %i.2.in = load i8* %i.2.in.in, align 2
  %j.0.in = load i8* %j.0.in.in, align 1
  %inc447 = add nsw i32 %run.01669, 1
  %and = and i64 %indvars.iv1702, 3
  %arrayidx449 = getelementptr inbounds [4 x i32]* %runs, i64 0, i64 %and
  %37 = load i32* %arrayidx449, align 4, !tbaa !0
  %inc450 = add nsw i32 %37, 1
  store i32 %inc450, i32* %arrayidx449, align 4, !tbaa !0
  %idxprom453 = zext i8 %j.0.in to i64
  %idxprom454 = zext i8 %i.2.in to i64
  %arrayidx457 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom454, i64 %idxprom453
  %38 = load i32* %arrayidx457, align 4, !tbaa !0
  %ispos1643 = icmp sgt i32 %38, -1
  %neg1644 = sub i32 0, %38
  %39 = select i1 %ispos1643, i32 %38, i32 %neg1644
  br i1 %12, label %if.end506, label %if.else458

if.else458:                                       ; preds = %if.end446
  br i1 %cmp605, label %if.then461, label %if.else483

if.then461:                                       ; preds = %if.else458
  %arrayidx473 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %idxprom613, i64 %idxprom454, i64 %idxprom453
  %40 = load i32* %arrayidx473, align 4, !tbaa !0
  %mul474 = mul nsw i32 %40, %39
  %arrayidx480 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i64 0, i64 %idxprom477, i64 %idxprom454, i64 %idxprom453
  %41 = load i32* %arrayidx480, align 4, !tbaa !0
  %add481 = add nsw i32 %mul474, %41
  %shr482 = ashr i32 %add481, %add21
  br label %if.end506

if.else483:                                       ; preds = %if.else458
  %arrayidx495 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %idxprom613, i64 %idxprom454, i64 %idxprom453
  %42 = load i32* %arrayidx495, align 4, !tbaa !0
  %mul496 = mul nsw i32 %42, %39
  %arrayidx502 = getelementptr inbounds [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i64 0, i64 %idxprom477, i64 %idxprom454, i64 %idxprom453
  %43 = load i32* %arrayidx502, align 4, !tbaa !0
  %add503 = add nsw i32 %mul496, %43
  %shr504 = ashr i32 %add503, %add21
  br label %if.end506

if.end506:                                        ; preds = %if.end446, %if.then461, %if.else483
  %level.0 = phi i32 [ %shr482, %if.then461 ], [ %shr504, %if.else483 ], [ %39, %if.end446 ]
  %cmp507 = icmp eq i32 %level.0, 0
  br i1 %cmp507, label %if.end655, label %if.then509

if.then509:                                       ; preds = %if.end506
  %44 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !0
  %tobool510 = icmp eq i32 %44, 0
  br i1 %tobool510, label %if.else570, label %land.lhs.true511

land.lhs.true511:                                 ; preds = %if.then509
  %45 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 59
  %46 = load i32* %symbol_mode, align 4, !tbaa !0
  %cmp512 = icmp eq i32 %46, 0
  br i1 %cmp512, label %if.then514, label %if.else570

if.then514:                                       ; preds = %land.lhs.true511
  %cmp515 = icmp sgt i32 %level.0, 1
  br i1 %cmp515, label %if.then517, label %if.else519

if.then517:                                       ; preds = %if.then514
  %47 = load i32* %coeff_cost, align 4, !tbaa !0
  %add518 = add nsw i32 %47, 999999
  br label %if.end529

if.else519:                                       ; preds = %if.then514
  %idxprom523 = sext i32 %inc450 to i64
  %disthres = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 86
  %48 = load i32* %disthres, align 4, !tbaa !0
  %idxprom524 = sext i32 %48 to i64
  %arrayidx526 = getelementptr inbounds [2 x [64 x i8]]* @COEFF_COST8x8, i64 0, i64 %idxprom524, i64 %idxprom523
  %49 = load i8* %arrayidx526, align 1, !tbaa !1
  %conv527 = zext i8 %49 to i32
  %50 = load i32* %coeff_cost, align 4, !tbaa !0
  %add528 = add nsw i32 %50, %conv527
  br label %if.end529

if.end529:                                        ; preds = %if.else519, %if.then517
  %storemerge1642 = phi i32 [ %add528, %if.else519 ], [ %add518, %if.then517 ]
  store i32 %storemerge1642, i32* %coeff_cost, align 4, !tbaa !0
  %idxprom530 = zext i8 %j.0.in to i64
  %idxprom531 = zext i8 %i.2.in to i64
  %arrayidx534 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom531, i64 %idxprom530
  %51 = load i32* %arrayidx534, align 4, !tbaa !0
  %call535 = call i32 @sign(i32 %level.0, i32 %51) #6
  %arrayidx538 = getelementptr inbounds [4 x i32]* %scan_poss, i64 0, i64 %and
  %52 = load i32* %arrayidx538, align 4, !tbaa !0
  %idxprom539 = sext i32 %52 to i64
  %53 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC543 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 47
  %54 = load i32***** %cofAC543, align 8, !tbaa !3
  %arrayidx544 = getelementptr inbounds i32**** %54, i64 %idxprom
  %55 = load i32**** %arrayidx544, align 8, !tbaa !3
  %arrayidx545 = getelementptr inbounds i32*** %55, i64 %and
  %56 = load i32*** %arrayidx545, align 8, !tbaa !3
  %57 = load i32** %56, align 8, !tbaa !3
  %arrayidx547 = getelementptr inbounds i32* %57, i64 %idxprom539
  store i32 %call535, i32* %arrayidx547, align 4, !tbaa !0
  %arrayidx561 = getelementptr inbounds i32** %56, i64 1
  %58 = load i32** %arrayidx561, align 8, !tbaa !3
  %arrayidx562 = getelementptr inbounds i32* %58, i64 %idxprom539
  store i32 %inc450, i32* %arrayidx562, align 4, !tbaa !0
  %inc566 = add nsw i32 %52, 1
  store i32 %inc566, i32* %arrayidx538, align 4, !tbaa !0
  store i32 -1, i32* %arrayidx449, align 4, !tbaa !0
  br label %if.end595

if.else570:                                       ; preds = %if.then509, %land.lhs.true511
  %cmp571 = icmp sgt i32 %level.0, 1
  br i1 %cmp571, label %if.then573, label %if.else575

if.then573:                                       ; preds = %if.else570
  %59 = load i32* %coeff_cost, align 4, !tbaa !0
  %add574 = add nsw i32 %59, 999999
  br label %if.end583

if.else575:                                       ; preds = %if.else570
  %idxprom576 = sext i32 %inc447 to i64
  %60 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %disthres577 = getelementptr inbounds %struct.InputParameters* %60, i64 0, i32 86
  %61 = load i32* %disthres577, align 4, !tbaa !0
  %idxprom578 = sext i32 %61 to i64
  %arrayidx580 = getelementptr inbounds [2 x [64 x i8]]* @COEFF_COST8x8, i64 0, i64 %idxprom578, i64 %idxprom576
  %62 = load i8* %arrayidx580, align 1, !tbaa !1
  %conv581 = zext i8 %62 to i32
  %63 = load i32* %coeff_cost, align 4, !tbaa !0
  %add582 = add nsw i32 %63, %conv581
  br label %if.end583

if.end583:                                        ; preds = %if.else575, %if.then573
  %storemerge = phi i32 [ %add582, %if.else575 ], [ %add574, %if.then573 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !tbaa !0
  %idxprom584 = zext i8 %j.0.in to i64
  %idxprom585 = zext i8 %i.2.in to i64
  %arrayidx588 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 46, i64 %idxprom585, i64 %idxprom584
  %64 = load i32* %arrayidx588, align 4, !tbaa !0
  %call589 = call i32 @sign(i32 %level.0, i32 %64) #6
  %idxprom590 = sext i32 %scan_pos.01670 to i64
  %arrayidx591 = getelementptr inbounds i32* %4, i64 %idxprom590
  store i32 %call589, i32* %arrayidx591, align 4, !tbaa !0
  %arrayidx593 = getelementptr inbounds i32* %5, i64 %idxprom590
  store i32 %inc447, i32* %arrayidx593, align 4, !tbaa !0
  %inc594 = add nsw i32 %scan_pos.01670, 1
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %if.end595

if.end595:                                        ; preds = %if.end583, %if.end529
  %65 = phi %struct.ImageParameters* [ %53, %if.end529 ], [ %.pre, %if.end583 ]
  %run.1 = phi i32 [ %inc447, %if.end529 ], [ -1, %if.end583 ]
  %scan_pos.1 = phi i32 [ %scan_pos.01670, %if.end529 ], [ %inc594, %if.end583 ]
  %idxprom596 = zext i8 %j.0.in to i64
  %idxprom597 = zext i8 %i.2.in to i64
  %arrayidx600 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 46, i64 %idxprom597, i64 %idxprom596
  %66 = load i32* %arrayidx600, align 4, !tbaa !0
  %call601 = call i32 @sign(i32 %level.0, i32 %66) #6
  br i1 %12, label %for.inc664, label %if.else604

if.else604:                                       ; preds = %if.end595
  br i1 %cmp605, label %if.then607, label %if.else630

if.then607:                                       ; preds = %if.else604
  %arrayidx616 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %idxprom613, i64 %idxprom597, i64 %idxprom596
  %67 = load i32* %arrayidx616, align 4, !tbaa !0
  %mul617 = mul nsw i32 %67, %call601
  br i1 %cmp608, label %if.then610, label %if.end655.thread1651

if.then610:                                       ; preds = %if.then607
  %shl618 = shl i32 %mul617, %dq_lshift.0
  br label %if.end655

if.end655.thread1651:                             ; preds = %if.then607
  %add627 = add nsw i32 %mul617, %dq_round.0
  %shr628 = ashr i32 %add627, %dq_rshift.0
  br label %if.then657

if.else630:                                       ; preds = %if.else604
  %arrayidx639 = getelementptr inbounds [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %idxprom613, i64 %idxprom597, i64 %idxprom596
  %68 = load i32* %arrayidx639, align 4, !tbaa !0
  %mul640 = mul nsw i32 %68, %call601
  br i1 %cmp608, label %if.then633, label %if.end655.thread

if.then633:                                       ; preds = %if.else630
  %shl641 = shl i32 %mul640, %dq_lshift.0
  br label %if.end655

if.end655.thread:                                 ; preds = %if.else630
  %add650 = add nsw i32 %mul640, %dq_round.0
  %shr651 = ashr i32 %add650, %dq_rshift.0
  br label %if.end655.if.then657_crit_edge

if.end655:                                        ; preds = %if.end506, %if.then633, %if.then610
  %nonzero.1 = phi i32 [ 1, %if.then610 ], [ 1, %if.then633 ], [ %nonzero.01668, %if.end506 ]
  %run.2 = phi i32 [ %run.1, %if.then610 ], [ %run.1, %if.then633 ], [ %inc447, %if.end506 ]
  %scan_pos.2 = phi i32 [ %scan_pos.1, %if.then610 ], [ %scan_pos.1, %if.then633 ], [ %scan_pos.01670, %if.end506 ]
  %ilev.0 = phi i32 [ %shl618, %if.then610 ], [ %shl641, %if.then633 ], [ 0, %if.end506 ]
  br i1 %12, label %for.inc664, label %if.end655.if.then657_crit_edge

if.end655.if.then657_crit_edge:                   ; preds = %if.end655.thread, %if.end655
  %ilev.01716 = phi i32 [ %shr651, %if.end655.thread ], [ %ilev.0, %if.end655 ]
  %scan_pos.21715 = phi i32 [ %scan_pos.1, %if.end655.thread ], [ %scan_pos.2, %if.end655 ]
  %run.21714 = phi i32 [ %run.1, %if.end655.thread ], [ %run.2, %if.end655 ]
  %nonzero.11713 = phi i32 [ 1, %if.end655.thread ], [ %nonzero.1, %if.end655 ]
  %idxprom658.pre = zext i8 %j.0.in to i64
  %idxprom659.pre = zext i8 %i.2.in to i64
  br label %if.then657

if.then657:                                       ; preds = %if.end655.if.then657_crit_edge, %if.end655.thread1651
  %idxprom659.pre-phi = phi i64 [ %idxprom659.pre, %if.end655.if.then657_crit_edge ], [ %idxprom597, %if.end655.thread1651 ]
  %idxprom658.pre-phi = phi i64 [ %idxprom658.pre, %if.end655.if.then657_crit_edge ], [ %idxprom596, %if.end655.thread1651 ]
  %ilev.01655 = phi i32 [ %ilev.01716, %if.end655.if.then657_crit_edge ], [ %shr628, %if.end655.thread1651 ]
  %scan_pos.21654 = phi i32 [ %scan_pos.21715, %if.end655.if.then657_crit_edge ], [ %scan_pos.1, %if.end655.thread1651 ]
  %run.21653 = phi i32 [ %run.21714, %if.end655.if.then657_crit_edge ], [ %run.1, %if.end655.thread1651 ]
  %nonzero.11652 = phi i32 [ %nonzero.11713, %if.end655.if.then657_crit_edge ], [ 1, %if.end655.thread1651 ]
  %69 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %arrayidx662 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 46, i64 %idxprom659.pre-phi, i64 %idxprom658.pre-phi
  store i32 %ilev.01655, i32* %arrayidx662, align 4, !tbaa !0
  br label %for.inc664

for.inc664:                                       ; preds = %if.end595, %if.end655, %if.then657
  %scan_pos.21650 = phi i32 [ %scan_pos.2, %if.end655 ], [ %scan_pos.21654, %if.then657 ], [ %scan_pos.1, %if.end595 ]
  %run.21649 = phi i32 [ %run.2, %if.end655 ], [ %run.21653, %if.then657 ], [ %run.1, %if.end595 ]
  %nonzero.11648 = phi i32 [ %nonzero.1, %if.end655 ], [ %nonzero.11652, %if.then657 ], [ 1, %if.end595 ]
  %indvars.iv.next1703 = add i64 %indvars.iv1702, 1
  %lftr.wideiv1704 = trunc i64 %indvars.iv.next1703 to i32
  %exitcond1705 = icmp eq i32 %lftr.wideiv1704, 64
  br i1 %exitcond1705, label %for.end666, label %for.inc664.for.body425_crit_edge

for.inc664.for.body425_crit_edge:                 ; preds = %for.inc664
  %.pre1710 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.body425

for.end666:                                       ; preds = %for.inc664
  %70 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !0
  %tobool668 = icmp eq i32 %70, 0
  br i1 %tobool668, label %if.then673, label %lor.lhs.false669

lor.lhs.false669:                                 ; preds = %for.end666
  %71 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode670 = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 59
  %72 = load i32* %symbol_mode670, align 4, !tbaa !0
  %cmp671 = icmp eq i32 %72, 0
  br i1 %cmp671, label %for.cond677.preheader, label %if.then673

for.cond677.preheader:                            ; preds = %lor.lhs.false669
  %73 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC686 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 47
  %74 = load i32***** %cofAC686, align 8, !tbaa !3
  %arrayidx687 = getelementptr inbounds i32**** %74, i64 %idxprom
  %75 = load i32**** %arrayidx687, align 8, !tbaa !3
  br label %for.body680

if.then673:                                       ; preds = %lor.lhs.false669, %for.end666
  %idxprom674 = sext i32 %scan_pos.21650 to i64
  %arrayidx675 = getelementptr inbounds i32* %4, i64 %idxprom674
  store i32 0, i32* %arrayidx675, align 4, !tbaa !0
  br label %for.cond695.preheader

for.cond695.preheader:                            ; preds = %for.body680, %if.then673
  br i1 %12, label %for.cond922.preheader.for.cond1133.preheader_crit_edge, label %for.body703.lr.ph

for.body703.lr.ph:                                ; preds = %for.cond695.preheader
  %76 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.body703

for.body680:                                      ; preds = %for.body680, %for.cond677.preheader
  %indvars.iv1698 = phi i64 [ 0, %for.cond677.preheader ], [ %indvars.iv.next1699, %for.body680 ]
  %arrayidx682 = getelementptr inbounds [4 x i32]* %scan_poss, i64 0, i64 %indvars.iv1698
  %77 = load i32* %arrayidx682, align 4, !tbaa !0
  %idxprom683 = sext i32 %77 to i64
  %arrayidx688 = getelementptr inbounds i32*** %75, i64 %indvars.iv1698
  %78 = load i32*** %arrayidx688, align 8, !tbaa !3
  %79 = load i32** %78, align 8, !tbaa !3
  %arrayidx690 = getelementptr inbounds i32* %79, i64 %idxprom683
  store i32 0, i32* %arrayidx690, align 4, !tbaa !0
  %indvars.iv.next1699 = add i64 %indvars.iv1698, 1
  %lftr.wideiv1700 = trunc i64 %indvars.iv.next1699 to i32
  %exitcond1701 = icmp eq i32 %lftr.wideiv1700, 4
  br i1 %exitcond1701, label %for.cond695.preheader, label %for.body680

for.cond922.preheader:                            ; preds = %for.body703
  br i1 %12, label %for.cond922.preheader.for.cond1133.preheader_crit_edge, label %for.body930.lr.ph

for.cond922.preheader.for.cond1133.preheader_crit_edge: ; preds = %for.cond695.preheader, %for.cond922.preheader
  %.pre1711 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.cond1133.preheader

for.body930.lr.ph:                                ; preds = %for.cond922.preheader
  %80 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br label %for.body930

for.body703:                                      ; preds = %for.body703.lr.ph, %for.body703
  %indvars.iv1696 = phi i64 [ 0, %for.body703.lr.ph ], [ %indvars.iv.next1697, %for.body703 ]
  %arrayidx709 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 0, i64 %indvars.iv1696
  %81 = load i32* %arrayidx709, align 4, !tbaa !0
  %arrayidx713 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 4, i64 %indvars.iv1696
  %82 = load i32* %arrayidx713, align 4, !tbaa !0
  %add714 = add nsw i32 %82, %81
  %sub724 = sub nsw i32 %81, %82
  %arrayidx729 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 2, i64 %indvars.iv1696
  %83 = load i32* %arrayidx729, align 4, !tbaa !0
  %shr730 = ashr i32 %83, 1
  %arrayidx734 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 6, i64 %indvars.iv1696
  %84 = load i32* %arrayidx734, align 4, !tbaa !0
  %sub735 = sub nsw i32 %shr730, %84
  %shr745 = ashr i32 %84, 1
  %add746 = add nsw i32 %shr745, %83
  %add750 = add nsw i32 %add746, %add714
  %add754 = add nsw i32 %sub735, %sub724
  %sub758 = sub nsw i32 %sub724, %sub735
  %sub762 = sub nsw i32 %add714, %add746
  %arrayidx767 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 3, i64 %indvars.iv1696
  %85 = load i32* %arrayidx767, align 4, !tbaa !0
  %arrayidx772 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 5, i64 %indvars.iv1696
  %86 = load i32* %arrayidx772, align 4, !tbaa !0
  %add773 = sub i32 %86, %85
  %arrayidx777 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 7, i64 %indvars.iv1696
  %87 = load i32* %arrayidx777, align 4, !tbaa !0
  %sub778 = sub i32 %add773, %87
  %shr783 = ashr i32 %87, 1
  %sub784 = sub i32 %sub778, %shr783
  %arrayidx789 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 46, i64 1, i64 %indvars.iv1696
  %88 = load i32* %arrayidx789, align 4, !tbaa !0
  %shr804 = ashr i32 %85, 1
  %sum1676 = add i32 %shr804, %85
  %sub799 = sub i32 %87, %sum1676
  %sub805 = add i32 %sub799, %88
  %shr826 = ashr i32 %86, 1
  %add816 = add i32 %87, %86
  %add821 = add i32 %add816, %shr826
  %add827 = sub i32 %add821, %88
  %add837 = add nsw i32 %86, %85
  %add842 = add nsw i32 %add837, %88
  %shr847 = ashr i32 %88, 1
  %add848 = add nsw i32 %add842, %shr847
  %shr852 = ashr i32 %add848, 2
  %add853 = add nsw i32 %shr852, %sub784
  %shr856 = ashr i32 %sub784, 2
  %add859 = sub i32 %add848, %shr856
  %shr863 = ashr i32 %add827, 2
  %add864 = add nsw i32 %shr863, %sub805
  %shr867 = ashr i32 %sub805, 2
  %sub869 = sub nsw i32 %shr867, %add827
  %add873 = add nsw i32 %add859, %add750
  %arrayidx876 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 0, i64 %indvars.iv1696
  store i32 %add873, i32* %arrayidx876, align 4, !tbaa !0
  %add879 = add nsw i32 %sub869, %add754
  %arrayidx882 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 1, i64 %indvars.iv1696
  store i32 %add879, i32* %arrayidx882, align 4, !tbaa !0
  %add885 = add nsw i32 %add864, %sub758
  %arrayidx888 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 2, i64 %indvars.iv1696
  store i32 %add885, i32* %arrayidx888, align 4, !tbaa !0
  %add891 = add nsw i32 %add853, %sub762
  %arrayidx894 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 3, i64 %indvars.iv1696
  store i32 %add891, i32* %arrayidx894, align 4, !tbaa !0
  %sub897 = sub nsw i32 %sub762, %add853
  %arrayidx900 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 4, i64 %indvars.iv1696
  store i32 %sub897, i32* %arrayidx900, align 4, !tbaa !0
  %sub903 = sub nsw i32 %sub758, %add864
  %arrayidx906 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 5, i64 %indvars.iv1696
  store i32 %sub903, i32* %arrayidx906, align 4, !tbaa !0
  %sub909 = sub nsw i32 %add754, %sub869
  %arrayidx912 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 6, i64 %indvars.iv1696
  store i32 %sub909, i32* %arrayidx912, align 4, !tbaa !0
  %sub915 = sub nsw i32 %add750, %add859
  %arrayidx918 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 7, i64 %indvars.iv1696
  store i32 %sub915, i32* %arrayidx918, align 4, !tbaa !0
  %indvars.iv.next1697 = add i64 %indvars.iv1696, 1
  %89 = trunc i64 %indvars.iv1696 to i32
  %cmp696.not = icmp sgt i32 %89, 6
  br i1 %cmp696.not, label %for.cond922.preheader, label %for.body703

for.cond1133.preheader:                           ; preds = %for.body930, %for.cond922.preheader.for.cond1133.preheader_crit_edge
  %90 = phi %struct.ImageParameters* [ %.pre1711, %for.cond922.preheader.for.cond1133.preheader_crit_edge ], [ %80, %for.body930 ]
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 164
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 155
  %91 = sext i32 %mul1 to i64
  %92 = sext i32 %mul to i64
  br label %for.cond1137.preheader

for.body930:                                      ; preds = %for.body930.lr.ph, %for.body930
  %indvars.iv1694 = phi i64 [ 0, %for.body930.lr.ph ], [ %indvars.iv.next1695, %for.body930 ]
  %arrayidx935 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 0
  %93 = load i32* %arrayidx935, align 16, !tbaa !0
  %arrayidx938 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 4
  %94 = load i32* %arrayidx938, align 16, !tbaa !0
  %add939 = add nsw i32 %94, %93
  %sub947 = sub nsw i32 %93, %94
  %arrayidx951 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 2
  %95 = load i32* %arrayidx951, align 8, !tbaa !0
  %shr952 = ashr i32 %95, 1
  %arrayidx955 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 6
  %96 = load i32* %arrayidx955, align 8, !tbaa !0
  %sub956 = sub nsw i32 %shr952, %96
  %shr964 = ashr i32 %96, 1
  %add965 = add nsw i32 %shr964, %95
  %add969 = add nsw i32 %add965, %add939
  %add973 = add nsw i32 %sub956, %sub947
  %sub977 = sub nsw i32 %sub947, %sub956
  %sub981 = sub nsw i32 %add939, %add965
  %arrayidx985 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 3
  %97 = load i32* %arrayidx985, align 4, !tbaa !0
  %arrayidx989 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 5
  %98 = load i32* %arrayidx989, align 4, !tbaa !0
  %add990 = sub i32 %98, %97
  %arrayidx993 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 7
  %99 = load i32* %arrayidx993, align 4, !tbaa !0
  %sub994 = sub i32 %add990, %99
  %shr998 = ashr i32 %99, 1
  %sub999 = sub i32 %sub994, %shr998
  %arrayidx1003 = getelementptr inbounds [8 x [8 x i32]]* %m6, i64 0, i64 %indvars.iv1694, i64 1
  %100 = load i32* %arrayidx1003, align 4, !tbaa !0
  %shr1015 = ashr i32 %97, 1
  %sum1677 = add i32 %shr1015, %97
  %sub1011 = sub i32 %99, %sum1677
  %sub1016 = add i32 %sub1011, %100
  %shr1033 = ashr i32 %98, 1
  %add1025 = add i32 %99, %98
  %add1029 = add i32 %add1025, %shr1033
  %add1034 = sub i32 %add1029, %100
  %add1042 = add nsw i32 %98, %97
  %add1046 = add nsw i32 %add1042, %100
  %shr1050 = ashr i32 %100, 1
  %add1051 = add nsw i32 %add1046, %shr1050
  %shr1055 = ashr i32 %add1051, 2
  %add1056 = add nsw i32 %shr1055, %sub999
  %shr1059 = ashr i32 %sub999, 2
  %add1062 = sub i32 %add1051, %shr1059
  %shr1066 = ashr i32 %add1034, 2
  %add1067 = add nsw i32 %shr1066, %sub1016
  %shr1070 = ashr i32 %sub1016, 2
  %sub1072 = sub nsw i32 %shr1070, %add1034
  %add1076 = add nsw i32 %add1062, %add969
  %arrayidx1080 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 0
  store i32 %add1076, i32* %arrayidx1080, align 4, !tbaa !0
  %add1083 = add nsw i32 %sub1072, %add973
  %arrayidx1087 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 1
  store i32 %add1083, i32* %arrayidx1087, align 4, !tbaa !0
  %add1090 = add nsw i32 %add1067, %sub977
  %arrayidx1094 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 2
  store i32 %add1090, i32* %arrayidx1094, align 4, !tbaa !0
  %add1097 = add nsw i32 %add1056, %sub981
  %arrayidx1101 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 3
  store i32 %add1097, i32* %arrayidx1101, align 4, !tbaa !0
  %sub1104 = sub nsw i32 %sub981, %add1056
  %arrayidx1108 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 4
  store i32 %sub1104, i32* %arrayidx1108, align 4, !tbaa !0
  %sub1111 = sub nsw i32 %sub977, %add1067
  %arrayidx1115 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 5
  store i32 %sub1111, i32* %arrayidx1115, align 4, !tbaa !0
  %sub1118 = sub nsw i32 %add973, %sub1072
  %arrayidx1122 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 6
  store i32 %sub1118, i32* %arrayidx1122, align 4, !tbaa !0
  %sub1125 = sub nsw i32 %add969, %add1062
  %arrayidx1129 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 46, i64 %indvars.iv1694, i64 7
  store i32 %sub1125, i32* %arrayidx1129, align 4, !tbaa !0
  %indvars.iv.next1695 = add i64 %indvars.iv1694, 1
  %101 = trunc i64 %indvars.iv1694 to i32
  %cmp923.not = icmp sgt i32 %101, 6
  br i1 %cmp923.not, label %for.cond1133.preheader, label %for.body930

for.cond1137.preheader:                           ; preds = %for.inc1277, %for.cond1133.preheader
  %indvars.iv1688 = phi i64 [ 0, %for.cond1133.preheader ], [ %indvars.iv.next1689, %for.inc1277 ]
  %102 = add nsw i64 %indvars.iv1688, %92
  br label %for.body1140

for.body1140:                                     ; preds = %for.inc1274, %for.cond1137.preheader
  %indvars.iv1682 = phi i64 [ 0, %for.cond1137.preheader ], [ %indvars.iv.next1683, %for.inc1274 ]
  br i1 %12, label %if.then1142, label %if.else1161

if.then1142:                                      ; preds = %for.body1140
  %arrayidx1147 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682
  %103 = load i32* %arrayidx1147, align 4, !tbaa !0
  %104 = add nsw i64 %indvars.iv1682, %91
  %arrayidx1153 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 45, i64 %102, i64 %104
  %105 = load i16* %arrayidx1153, align 2, !tbaa !4
  %conv1154 = zext i16 %105 to i32
  %add1155 = add nsw i32 %conv1154, %103
  store i32 %add1155, i32* %arrayidx1147, align 4, !tbaa !0
  br label %for.inc1274

if.else1161:                                      ; preds = %for.body1140
  %106 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool1162 = icmp eq i32 %106, 0
  br i1 %tobool1162, label %if.then1163, label %if.else1259

if.then1163:                                      ; preds = %if.else1161
  %107 = load i32* %max_imgpel_value, align 4, !tbaa !0
  %conv1164 = sext i32 %107 to i64
  %arrayidx1169 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682
  %108 = load i32* %arrayidx1169, align 4, !tbaa !0
  %conv1170 = sext i32 %108 to i64
  %109 = add nsw i64 %indvars.iv1682, %91
  %arrayidx1177 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 45, i64 %102, i64 %109
  %110 = load i16* %arrayidx1177, align 2, !tbaa !4
  %conv1178 = zext i16 %110 to i64
  %shl1179 = shl nuw nsw i64 %conv1178, 6
  %add1180 = add i64 %conv1170, 32
  %add1181 = add i64 %add1180, %shl1179
  %shr1182 = ashr i64 %add1181, 6
  %cmp1183 = icmp slt i64 %shr1182, 0
  %.shr1182 = select i1 %cmp1183, i64 0, i64 %shr1182
  %cmp1203 = icmp slt i64 %conv1164, %.shr1182
  %conv1164..shr1182 = select i1 %cmp1203, i64 %conv1164, i64 %.shr1182
  %conv1253 = trunc i64 %conv1164..shr1182 to i32
  store i32 %conv1253, i32* %arrayidx1169, align 4, !tbaa !0
  br label %for.inc1274

if.else1259:                                      ; preds = %if.else1161
  %arrayidx1264 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv1688, i64 %indvars.iv1682
  %111 = load i32* %arrayidx1264, align 4, !tbaa !0
  %add1265 = add nsw i32 %111, 32
  %shr1266 = ashr i32 %add1265, 6
  store i32 %shr1266, i32* %arrayidx1264, align 4, !tbaa !0
  br label %for.inc1274

for.inc1274:                                      ; preds = %if.then1142, %if.else1259, %if.then1163
  %indvars.iv.next1683 = add i64 %indvars.iv1682, 1
  %lftr.wideiv1686 = trunc i64 %indvars.iv.next1683 to i32
  %exitcond1687 = icmp eq i32 %lftr.wideiv1686, 8
  br i1 %exitcond1687, label %for.inc1277, label %for.body1140

for.inc1277:                                      ; preds = %for.inc1274
  %indvars.iv.next1689 = add i64 %indvars.iv1688, 1
  %lftr.wideiv1692 = trunc i64 %indvars.iv.next1689 to i32
  %exitcond1693 = icmp eq i32 %lftr.wideiv1692, 8
  br i1 %exitcond1693, label %for.end1279, label %for.cond1137.preheader

for.end1279:                                      ; preds = %for.inc1277
  %112 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool1281 = icmp eq i32 %112, 0
  br i1 %tobool1281, label %for.cond1283.preheader, label %if.end1311

for.cond1283.preheader:                           ; preds = %for.end1279
  %pix_x = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 33
  %113 = load i32* %pix_x, align 4, !tbaa !0
  %pix_y = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 34
  %114 = load i32* %pix_y, align 4, !tbaa !0
  %115 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 25
  %116 = load i16*** %imgY, align 8, !tbaa !3
  br label %for.cond1287.preheader

for.cond1287.preheader:                           ; preds = %for.inc1308, %for.cond1283.preheader
  %indvars.iv1678 = phi i64 [ 0, %for.cond1283.preheader ], [ %indvars.iv.next1679, %for.inc1308 ]
  %117 = trunc i64 %indvars.iv1678 to i32
  %add1300 = add i32 %117, %mul1
  %add1301 = add i32 %add1300, %114
  %idxprom1302 = sext i32 %add1301 to i64
  %arrayidx1303 = getelementptr inbounds i16** %116, i64 %idxprom1302
  %118 = load i16** %arrayidx1303, align 8, !tbaa !3
  br label %for.body1290

for.body1290:                                     ; preds = %for.body1290, %for.cond1287.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1287.preheader ], [ %indvars.iv.next, %for.body1290 ]
  %arrayidx1295 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1678
  %119 = load i32* %arrayidx1295, align 4, !tbaa !0
  %conv1296 = trunc i32 %119 to i16
  %120 = trunc i64 %indvars.iv to i32
  %add1297 = add i32 %120, %mul
  %add1298 = add i32 %add1297, %113
  %idxprom1299 = sext i32 %add1298 to i64
  %arrayidx1304 = getelementptr inbounds i16* %118, i64 %idxprom1299
  store i16 %conv1296, i16* %arrayidx1304, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc1308, label %for.body1290

for.inc1308:                                      ; preds = %for.body1290
  %indvars.iv.next1679 = add i64 %indvars.iv1678, 1
  %lftr.wideiv1680 = trunc i64 %indvars.iv.next1679 to i32
  %exitcond1681 = icmp eq i32 %lftr.wideiv1680, 8
  br i1 %exitcond1681, label %if.end1311, label %for.cond1287.preheader

if.end1311:                                       ; preds = %for.inc1308, %for.end1279
  call void @llvm.lifetime.end(i64 256, i8* %6) #2
  ret i32 %nonzero.11648
}

; Function Attrs: optsize
declare i32 @dct_chroma4x4(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #3

; Function Attrs: nounwind optsize uwtable
define void @LowPassForIntra8x8Pred(i32* %PredPel, i32 %block_up_left, i32 %block_up, i32 %block_left) #0 {
entry:
  %PredPel230 = bitcast i32* %PredPel to i8*
  %LoopArray = alloca [25 x i32], align 16
  %0 = bitcast [25 x i32]* %LoopArray to i8*
  call void @llvm.lifetime.start(i64 100, i8* %0) #2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %PredPel230, i64 100, i32 4, i1 false)
  %tobool = icmp ne i32 %block_up, 0
  br i1 %tobool, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  %tobool3 = icmp eq i32 %block_up_left, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %1 = load i32* %PredPel, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %PredPel, i64 1
  %2 = load i32* %arrayidx8, align 4, !tbaa !0
  %shl = shl i32 %2, 1
  %arrayidx10 = getelementptr inbounds i32* %PredPel, i64 2
  %3 = load i32* %arrayidx10, align 4, !tbaa !0
  %add = add i32 %1, 2
  %add11 = add i32 %add, %shl
  %add12 = add i32 %add11, %3
  %shr = ashr i32 %add12, 2
  %arrayidx13 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 1
  store i32 %shr, i32* %arrayidx13, align 4, !tbaa !0
  br label %for.body28

if.else:                                          ; preds = %if.then
  %arrayidx15 = getelementptr inbounds i32* %PredPel, i64 1
  %4 = load i32* %arrayidx15, align 4, !tbaa !0
  %add19 = mul i32 %4, 3
  %arrayidx21 = getelementptr inbounds i32* %PredPel, i64 2
  %5 = load i32* %arrayidx21, align 4, !tbaa !0
  %add22 = add i32 %5, 2
  %add23 = add i32 %add22, %add19
  %shr24 = ashr i32 %add23, 2
  %arrayidx25 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 1
  store i32 %shr24, i32* %arrayidx25, align 4, !tbaa !0
  br label %for.body28

for.body28:                                       ; preds = %if.then4, %if.else, %for.body28
  %6 = phi i32 [ %8, %for.body28 ], [ %5, %if.else ], [ %3, %if.then4 ]
  %7 = phi i32 [ %6, %for.body28 ], [ %4, %if.else ], [ %2, %if.then4 ]
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.body28 ], [ 2, %if.else ], [ 2, %if.then4 ]
  %shl35 = shl i32 %6, 1
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %arrayidx40 = getelementptr inbounds i32* %PredPel, i64 %indvars.iv.next233
  %8 = load i32* %arrayidx40, align 4, !tbaa !0
  %add36 = add i32 %7, 2
  %add41 = add i32 %add36, %shl35
  %add42 = add i32 %add41, %8
  %shr43 = ashr i32 %add42, 2
  %arrayidx45 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 %indvars.iv232
  store i32 %shr43, i32* %arrayidx45, align 4, !tbaa !0
  %lftr.wideiv235 = trunc i64 %indvars.iv.next233 to i32
  %exitcond236 = icmp eq i32 %lftr.wideiv235, 16
  br i1 %exitcond236, label %for.end48, label %for.body28

for.end48:                                        ; preds = %for.body28
  %arrayidx49 = getelementptr inbounds i32* %PredPel, i64 16
  %9 = load i32* %arrayidx49, align 4, !tbaa !0
  %add52 = mul i32 %9, 3
  %arrayidx53 = getelementptr inbounds i32* %PredPel, i64 15
  %10 = load i32* %arrayidx53, align 4, !tbaa !0
  %add54 = add i32 %10, 2
  %add55 = add i32 %add54, %add52
  %shr56 = ashr i32 %add55, 2
  %arrayidx57 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 16
  store i32 %shr56, i32* %arrayidx57, align 16, !tbaa !0
  br label %if.end58

if.end58:                                         ; preds = %for.end48, %entry
  %tobool59 = icmp ne i32 %block_up_left, 0
  br i1 %tobool59, label %if.then60, label %if.end100

if.then60:                                        ; preds = %if.end58
  %tobool.not = xor i1 %tobool, true
  %tobool62 = icmp eq i32 %block_left, 0
  %or.cond = or i1 %tobool62, %tobool.not
  br i1 %or.cond, label %if.else73, label %if.then63

if.then63:                                        ; preds = %if.then60
  %arrayidx64 = getelementptr inbounds i32* %PredPel, i64 17
  %11 = load i32* %arrayidx64, align 4, !tbaa !0
  %12 = load i32* %PredPel, align 4, !tbaa !0
  %shl66 = shl i32 %12, 1
  %arrayidx68 = getelementptr inbounds i32* %PredPel, i64 1
  %13 = load i32* %arrayidx68, align 4, !tbaa !0
  %add67 = add i32 %11, 2
  %add69 = add i32 %add67, %shl66
  %add70 = add i32 %add69, %13
  %shr71 = ashr i32 %add70, 2
  %arrayidx72 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0
  store i32 %shr71, i32* %arrayidx72, align 16, !tbaa !0
  br label %if.end100

if.else73:                                        ; preds = %if.then60
  br i1 %tobool, label %if.then75, label %if.else85

if.then75:                                        ; preds = %if.else73
  %14 = load i32* %PredPel, align 4, !tbaa !0
  %add79 = mul i32 %14, 3
  %arrayidx80 = getelementptr inbounds i32* %PredPel, i64 1
  %15 = load i32* %arrayidx80, align 4, !tbaa !0
  %add81 = add i32 %15, 2
  %add82 = add i32 %add81, %add79
  %shr83 = ashr i32 %add82, 2
  %arrayidx84 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0
  store i32 %shr83, i32* %arrayidx84, align 16, !tbaa !0
  br label %if.end100

if.else85:                                        ; preds = %if.else73
  br i1 %tobool62, label %for.cond159.preheader, label %if.then87

if.then87:                                        ; preds = %if.else85
  %16 = load i32* %PredPel, align 4, !tbaa !0
  %add91 = mul i32 %16, 3
  %arrayidx92 = getelementptr inbounds i32* %PredPel, i64 17
  %17 = load i32* %arrayidx92, align 4, !tbaa !0
  %add93 = add i32 %17, 2
  %add94 = add i32 %add93, %add91
  %shr95 = ashr i32 %add94, 2
  %arrayidx96 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 0
  store i32 %shr95, i32* %arrayidx96, align 16, !tbaa !0
  br label %if.end100

if.end100:                                        ; preds = %if.then63, %if.then87, %if.then75, %if.end58
  %tobool101 = icmp eq i32 %block_left, 0
  br i1 %tobool101, label %for.cond159.preheader, label %if.then102

if.then102:                                       ; preds = %if.end100
  br i1 %tobool59, label %if.then104, label %if.else114

if.then104:                                       ; preds = %if.then102
  %18 = load i32* %PredPel, align 4, !tbaa !0
  %arrayidx106 = getelementptr inbounds i32* %PredPel, i64 17
  %19 = load i32* %arrayidx106, align 4, !tbaa !0
  %shl107 = shl i32 %19, 1
  %arrayidx109 = getelementptr inbounds i32* %PredPel, i64 18
  %20 = load i32* %arrayidx109, align 4, !tbaa !0
  %add108 = add i32 %18, 2
  %add110 = add i32 %add108, %shl107
  %add111 = add i32 %add110, %20
  %shr112 = ashr i32 %add111, 2
  %arrayidx113 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 17
  store i32 %shr112, i32* %arrayidx113, align 4, !tbaa !0
  br label %for.body127

if.else114:                                       ; preds = %if.then102
  %arrayidx115 = getelementptr inbounds i32* %PredPel, i64 17
  %21 = load i32* %arrayidx115, align 4, !tbaa !0
  %add118 = mul i32 %21, 3
  %arrayidx119 = getelementptr inbounds i32* %PredPel, i64 18
  %22 = load i32* %arrayidx119, align 4, !tbaa !0
  %add120 = add i32 %22, 2
  %add121 = add i32 %add120, %add118
  %shr122 = ashr i32 %add121, 2
  %arrayidx123 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 17
  store i32 %shr122, i32* %arrayidx123, align 4, !tbaa !0
  br label %for.body127

for.body127:                                      ; preds = %if.then104, %if.else114, %for.body127
  %23 = phi i32 [ %25, %for.body127 ], [ %22, %if.else114 ], [ %20, %if.then104 ]
  %24 = phi i32 [ %23, %for.body127 ], [ %21, %if.else114 ], [ %19, %if.then104 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body127 ], [ 18, %if.else114 ], [ 18, %if.then104 ]
  %shl135 = shl i32 %23, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx140 = getelementptr inbounds i32* %PredPel, i64 %indvars.iv.next
  %25 = load i32* %arrayidx140, align 4, !tbaa !0
  %add136 = add i32 %24, 2
  %add141 = add i32 %add136, %shl135
  %add142 = add i32 %add141, %25
  %shr143 = ashr i32 %add142, 2
  %arrayidx145 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 %indvars.iv
  store i32 %shr143, i32* %arrayidx145, align 4, !tbaa !0
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 24
  br i1 %exitcond, label %for.end148, label %for.body127

for.end148:                                       ; preds = %for.body127
  %arrayidx149 = getelementptr inbounds i32* %PredPel, i64 23
  %26 = load i32* %arrayidx149, align 4, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32* %PredPel, i64 24
  %27 = load i32* %arrayidx150, align 4, !tbaa !0
  %shl151 = shl i32 %27, 1
  %add152 = add i32 %26, 2
  %add154 = add i32 %add152, %27
  %add155 = add i32 %add154, %shl151
  %shr156 = ashr i32 %add155, 2
  %arrayidx157 = getelementptr inbounds [25 x i32]* %LoopArray, i64 0, i64 24
  store i32 %shr156, i32* %arrayidx157, align 16, !tbaa !0
  br label %for.cond159.preheader

for.cond159.preheader:                            ; preds = %if.end100, %for.end148, %if.else85
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %PredPel230, i8* %0, i64 100, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 100, i8* %0) #2
  ret void
}

; Function Attrs: optsize
declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #3

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement*, %struct.datapartition*) #3

; Function Attrs: optsize
declare i32 @writeCoeff4x4_CAVLC(i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @writeLumaCoeff8x8_CABAC(i32, i32) #3

; Function Attrs: optsize
declare i32 @sign(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
