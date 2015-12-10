; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@QP_SCALE_CR = constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 16
@SNGL_SCAN = constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\03\03"], align 16
@FIELD_SCAN = constant [16 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03", [2 x i8] c"\02\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\02\03", [2 x i8] c"\03\00", [2 x i8] c"\03\01", [2 x i8] c"\03\02", [2 x i8] c"\03\03"], align 16
@COEFF_COST = constant [2 x [16 x i8]] [[16 x i8] c"\03\02\02\01\01\01\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09"], align 16
@COEFF_BIT_COST = constant [3 x [16 x [16 x i8]]] [[16 x [16 x i8]] [[16 x i8] c"\03\05\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D", [16 x i8] c"\05\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D", [16 x i8] c"\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0F", [16 x i8] c"\07\09\09\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0F", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D", [16 x i8] c"\07\07\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D"], [16 x [16 x i8]] [[16 x i8] c"\03\05\07\07\07\09\09\09\09\0B\0B\0D\0D\0D\0D\0F", [16 x i8] c"\05\09\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F", [16 x i8] c"\07\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\09\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] c"\0B\0B\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\11\11", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer], [16 x [16 x i8]] [[16 x i8] c"\03\07\09\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11", [16 x i8] c"\05\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11", [16 x i8] c"\05\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\07\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\09\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13", [16 x i8] c"\0B\0D\0D\0F\0F\0F\0F\11\11\11\11\11\11\11\11\13"]], align 16
@SCAN_YUV422 = constant [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\01\00", [2 x i8] c"\00\02", [2 x i8] c"\00\03", [2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] c"\01\03"], align 16
@hor_offset = constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@ver_offset = constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@quant_coef = constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@dequant_coef = constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@enc_picture = external global %struct.storable_picture*
@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*
@imgY_org = common global i16** null, align 8
@mb_adaptive = common global i32 0, align 4
@LevelScale4x4Luma_Intra = external global [6 x [4 x [4 x i32]]]
@LevelOffset4x4Luma_Intra = external global [13 x [4 x [4 x i32]]]
@InvLevelScale4x4Luma_Intra = external global [6 x [4 x [4 x i32]]]
@LevelScale4x4Luma_Inter = external global [6 x [4 x [4 x i32]]]
@LevelOffset4x4Luma_Inter = external global [13 x [4 x [4 x i32]]]
@InvLevelScale4x4Luma_Inter = external global [6 x [4 x [4 x i32]]]
@dct_chroma.cbpblk_pattern = private unnamed_addr constant [4 x i64] [i64 0, i64 983040, i64 16711680, i64 4294901760], align 16
@LevelScale4x4Chroma_Intra = external global [2 x [6 x [4 x [4 x i32]]]]
@LevelOffset4x4Chroma_Intra = external global [2 x [13 x [4 x [4 x i32]]]]
@LevelScale4x4Chroma_Inter = external global [2 x [6 x [4 x [4 x i32]]]]
@LevelOffset4x4Chroma_Inter = external global [2 x [13 x [4 x [4 x i32]]]]
@InvLevelScale4x4Chroma_Intra = external global [2 x [6 x [4 x [4 x i32]]]]
@InvLevelScale4x4Chroma_Inter = external global [2 x [6 x [4 x [4 x i32]]]]
@cbp_blk_chroma = internal unnamed_addr constant [8 x [4 x i8]] [[4 x i8] c"\10\11\12\13", [4 x i8] c"\14\15\16\17", [4 x i8] c"\18\19\1A\1B", [4 x i8] c"\1C\1D\1E\1F", [4 x i8] c" !\22#", [4 x i8] c"$%&'", [4 x i8] c"()*+", [4 x i8] c",-./"], align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@A = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
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
define void @intrapred_luma(i32 %img_x, i32 %img_y, i32* nocapture %left_available, i32* nocapture %up_available, i32* nocapture %all_available) #0 {
entry:
  %PredPel = alloca [13 x i32], align 16
  %pix_a = alloca [4 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{i32 %img_x}, i64 0, metadata !27), !dbg !975
  call void @llvm.dbg.value(metadata !{i32 %img_y}, i64 0, metadata !28), !dbg !975
  call void @llvm.dbg.value(metadata !{i32* %left_available}, i64 0, metadata !29), !dbg !975
  call void @llvm.dbg.value(metadata !{i32* %up_available}, i64 0, metadata !30), !dbg !975
  call void @llvm.dbg.value(metadata !{i32* %all_available}, i64 0, metadata !31), !dbg !975
  %0 = bitcast [13 x i32]* %PredPel to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 52, i8* %0) #2, !dbg !976
  call void @llvm.dbg.declare(metadata !{[13 x i32]* %PredPel}, metadata !35), !dbg !976
  %1 = load %struct.storable_picture** @enc_picture, align 8, !dbg !977, !tbaa !978
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25, !dbg !977
  %2 = load i16*** %imgY1, align 8, !dbg !977, !tbaa !978
  call void @llvm.dbg.value(metadata !{i16** %2}, i64 0, metadata !39), !dbg !977
  %and = and i32 %img_x, 15, !dbg !981
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !43), !dbg !981
  %and2 = and i32 %img_y, 15, !dbg !982
  call void @llvm.dbg.value(metadata !{i32 %and2}, i64 0, metadata !44), !dbg !982
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !983, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !983
  %4 = load i32* %current_mb_nr, align 4, !dbg !983, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !45), !dbg !983
  %5 = bitcast [4 x %struct.pix_pos]* %pix_a to i8*, !dbg !985
  call void @llvm.lifetime.start(i64 96, i8* %5) #2, !dbg !985
  call void @llvm.dbg.declare(metadata !{[4 x %struct.pix_pos]* %pix_a}, metadata !46), !dbg !985
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_b}, metadata !59), !dbg !986
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_c}, metadata !60), !dbg !986
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %pix_d}, metadata !61), !dbg !986
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !32), !dbg !987
  %sub = add nsw i32 %and, -1, !dbg !989
  %6 = zext i32 %and2 to i64, !dbg !987
  br label %for.body, !dbg !987

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv1278 = phi i64 [ 0, %entry ], [ %indvars.iv.next1279, %for.body ]
  %7 = add nsw i64 %indvars.iv1278, %6, !dbg !989
  %arrayidx = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1278, !dbg !989
  %8 = trunc i64 %7 to i32, !dbg !989
  call void @getNeighbour(i32 %4, i32 %sub, i32 %8, i32 1, %struct.pix_pos* %arrayidx) #4, !dbg !989
  %indvars.iv.next1279 = add i64 %indvars.iv1278, 1, !dbg !987
  %lftr.wideiv1281 = trunc i64 %indvars.iv.next1279 to i32, !dbg !987
  %exitcond1282 = icmp eq i32 %lftr.wideiv1281, 4, !dbg !987
  br i1 %exitcond1282, label %for.end, label %for.body, !dbg !987

for.end:                                          ; preds = %for.body
  %sub3 = add nsw i32 %and2, -1, !dbg !991
  call void @getNeighbour(i32 %4, i32 %and, i32 %sub3, i32 1, %struct.pix_pos* %pix_b) #4, !dbg !991
  %add4 = add nsw i32 %and, 4, !dbg !992
  call void @getNeighbour(i32 %4, i32 %add4, i32 %sub3, i32 1, %struct.pix_pos* %pix_c) #4, !dbg !992
  call void @getNeighbour(i32 %4, i32 %sub, i32 %sub3, i32 1, %struct.pix_pos* %pix_d) #4, !dbg !993
  %available = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 0, !dbg !994
  %9 = load i32* %available, align 4, !dbg !994, !tbaa !984
  %tobool = icmp eq i32 %9, 0, !dbg !994
  br i1 %tobool, label %land.end13, label %land.rhs, !dbg !994

land.rhs:                                         ; preds = %for.end
  %10 = and i32 %img_x, 7, !dbg !994
  %11 = icmp eq i32 %10, 4, !dbg !994
  br i1 %11, label %land.rhs10, label %land.end13, !dbg !994

land.rhs10:                                       ; preds = %land.rhs
  %phitmp = icmp ne i32 %and2, 12, !dbg !994
  %not.cmp11 = icmp ne i32 %and2, 4, !dbg !994
  %.phitmp = and i1 %phitmp, %not.cmp11, !dbg !994
  br label %land.end13, !dbg !994

land.end13:                                       ; preds = %land.rhs10, %land.rhs, %for.end
  %12 = phi i1 [ false, %for.end ], [ true, %land.rhs ], [ %.phitmp, %land.rhs10 ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %available, align 4, !tbaa !984
  %13 = load %struct.InputParameters** @input, align 8, !dbg !995, !tbaa !978
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 24, !dbg !995
  %14 = load i32* %UseConstrainedIntraPred, align 4, !dbg !995, !tbaa !984
  %tobool15 = icmp eq i32 %14, 0, !dbg !995
  br i1 %tobool15, label %if.else, label %for.cond16.preheader, !dbg !995

for.cond16.preheader:                             ; preds = %land.end13
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !996, !tbaa !978
  %intra_block = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 54, !dbg !996
  br label %for.body18, !dbg !999

for.body18:                                       ; preds = %cond.end, %for.cond16.preheader
  %indvars.iv1274 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next1275, %cond.end ]
  %block_available_left.01260 = phi i32 [ 1, %for.cond16.preheader ], [ %and27, %cond.end ]
  %available21 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1274, i32 0, !dbg !996
  %16 = load i32* %available21, align 8, !dbg !996, !tbaa !984
  %tobool22 = icmp eq i32 %16, 0, !dbg !996
  br i1 %tobool22, label %cond.end, label %cond.true, !dbg !996

cond.true:                                        ; preds = %for.body18
  %mb_addr = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1274, i32 1, !dbg !996
  %17 = load i32* %mb_addr, align 4, !dbg !996, !tbaa !984
  %idxprom25 = sext i32 %17 to i64, !dbg !996
  %18 = load i32** %intra_block, align 8, !dbg !996, !tbaa !978
  %arrayidx26 = getelementptr inbounds i32* %18, i64 %idxprom25, !dbg !996
  %19 = load i32* %arrayidx26, align 4, !dbg !996, !tbaa !984
  br label %cond.end, !dbg !996

cond.end:                                         ; preds = %for.body18, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %for.body18 ], !dbg !996
  %and27 = and i32 %cond, %block_available_left.01260, !dbg !996
  call void @llvm.dbg.value(metadata !{i32 %and27}, i64 0, metadata !63), !dbg !996
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 1, !dbg !999
  %lftr.wideiv1276 = trunc i64 %indvars.iv.next1275 to i32, !dbg !999
  %exitcond1277 = icmp eq i32 %lftr.wideiv1276, 4, !dbg !999
  br i1 %exitcond1277, label %for.end30, label %for.body18, !dbg !999

for.end30:                                        ; preds = %cond.end
  %available31 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0, !dbg !1000
  %20 = load i32* %available31, align 4, !dbg !1000, !tbaa !984
  %tobool32 = icmp eq i32 %20, 0, !dbg !1000
  br i1 %tobool32, label %cond.end39, label %cond.true33, !dbg !1000

cond.true33:                                      ; preds = %for.end30
  %mb_addr34 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 1, !dbg !1000
  %21 = load i32* %mb_addr34, align 4, !dbg !1000, !tbaa !984
  %idxprom35 = sext i32 %21 to i64, !dbg !1000
  %22 = load i32** %intra_block, align 8, !dbg !1000, !tbaa !978
  %arrayidx37 = getelementptr inbounds i32* %22, i64 %idxprom35, !dbg !1000
  %23 = load i32* %arrayidx37, align 4, !dbg !1000, !tbaa !984
  br label %cond.end39, !dbg !1000

cond.end39:                                       ; preds = %for.end30, %cond.true33
  %cond40 = phi i32 [ %23, %cond.true33 ], [ 0, %for.end30 ], !dbg !1000
  call void @llvm.dbg.value(metadata !{i32 %cond40}, i64 0, metadata !62), !dbg !1000
  br i1 %12, label %cond.true43, label %cond.end49, !dbg !1001

cond.true43:                                      ; preds = %cond.end39
  %mb_addr44 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 1, !dbg !1001
  %24 = load i32* %mb_addr44, align 4, !dbg !1001, !tbaa !984
  %idxprom45 = sext i32 %24 to i64, !dbg !1001
  %25 = load i32** %intra_block, align 8, !dbg !1001, !tbaa !978
  %arrayidx47 = getelementptr inbounds i32* %25, i64 %idxprom45, !dbg !1001
  %26 = load i32* %arrayidx47, align 4, !dbg !1001, !tbaa !984
  br label %cond.end49, !dbg !1001

cond.end49:                                       ; preds = %cond.end39, %cond.true43
  %cond50 = phi i32 [ %26, %cond.true43 ], [ 0, %cond.end39 ], !dbg !1001
  call void @llvm.dbg.value(metadata !{i32 %cond50}, i64 0, metadata !65), !dbg !1001
  %available51 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0, !dbg !1002
  %27 = load i32* %available51, align 4, !dbg !1002, !tbaa !984
  %tobool52 = icmp eq i32 %27, 0, !dbg !1002
  br i1 %tobool52, label %if.end, label %cond.true53, !dbg !1002

cond.true53:                                      ; preds = %cond.end49
  %mb_addr54 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 1, !dbg !1002
  %28 = load i32* %mb_addr54, align 4, !dbg !1002, !tbaa !984
  %idxprom55 = sext i32 %28 to i64, !dbg !1002
  %29 = load i32** %intra_block, align 8, !dbg !1002, !tbaa !978
  %arrayidx57 = getelementptr inbounds i32* %29, i64 %idxprom55, !dbg !1002
  %30 = load i32* %arrayidx57, align 4, !dbg !1002, !tbaa !984
  br label %if.end, !dbg !1002

if.else:                                          ; preds = %land.end13
  %available62 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 0, !dbg !1003
  %31 = load i32* %available62, align 16, !dbg !1003, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !63), !dbg !1003
  %available63 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0, !dbg !1005
  %32 = load i32* %available63, align 4, !dbg !1005, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !62), !dbg !1005
  call void @llvm.dbg.value(metadata !{i32 %land.ext}, i64 0, metadata !65), !dbg !1006
  %available65 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0, !dbg !1007
  %33 = load i32* %available65, align 4, !dbg !1007, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !64), !dbg !1007
  br label %if.end

if.end:                                           ; preds = %cond.true53, %cond.end49, %if.else
  %block_available_up.0 = phi i32 [ %32, %if.else ], [ %cond40, %cond.end49 ], [ %cond40, %cond.true53 ]
  %block_available_left.1 = phi i32 [ %31, %if.else ], [ %and27, %cond.end49 ], [ %and27, %cond.true53 ]
  %block_available_up_left.0 = phi i32 [ %33, %if.else ], [ 0, %cond.end49 ], [ %30, %cond.true53 ]
  %block_available_up_right.0 = phi i32 [ %land.ext, %if.else ], [ %cond50, %cond.end49 ], [ %cond50, %cond.true53 ]
  store i32 %block_available_left.1, i32* %left_available, align 4, !dbg !1008, !tbaa !984
  store i32 %block_available_up.0, i32* %up_available, align 4, !dbg !1009, !tbaa !984
  %tobool66 = icmp ne i32 %block_available_up.0, 0, !dbg !1010
  %tobool66.not = xor i1 %tobool66, true, !dbg !1010
  %tobool69 = icmp ne i32 %block_available_up_left.0, 0, !dbg !1010
  %tobool67.not = icmp ne i32 %block_available_left.1, 0, !dbg !1010
  %not.or.cond = and i1 %tobool66, %tobool67.not, !dbg !1010
  %.tobool69 = and i1 %tobool69, %not.or.cond, !dbg !1010
  %land.ext71 = zext i1 %.tobool69 to i32
  store i32 %land.ext71, i32* %all_available, align 4, !tbaa !984
  br i1 %tobool66, label %if.then75, label %if.else109, !dbg !1011

if.then75:                                        ; preds = %if.end
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 4, !dbg !1012
  %34 = load i32* %pos_x, align 4, !dbg !1012, !tbaa !984
  %idxprom77 = sext i32 %34 to i64, !dbg !1012
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 5, !dbg !1012
  %35 = load i32* %pos_y, align 4, !dbg !1012, !tbaa !984
  %idxprom78 = sext i32 %35 to i64, !dbg !1012
  %arrayidx79 = getelementptr inbounds i16** %2, i64 %idxprom78, !dbg !1012
  %36 = load i16** %arrayidx79, align 8, !dbg !1012, !tbaa !978
  %arrayidx80 = getelementptr inbounds i16* %36, i64 %idxprom77, !dbg !1012
  %37 = load i16* %arrayidx80, align 2, !dbg !1012, !tbaa !1014
  %conv = zext i16 %37 to i32, !dbg !1012
  %arrayidx81 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1, !dbg !1012
  store i32 %conv, i32* %arrayidx81, align 4, !dbg !1012, !tbaa !984
  %add83 = add nsw i32 %34, 1, !dbg !1015
  %idxprom84 = sext i32 %add83 to i64, !dbg !1015
  %arrayidx88 = getelementptr inbounds i16* %36, i64 %idxprom84, !dbg !1015
  %38 = load i16* %arrayidx88, align 2, !dbg !1015, !tbaa !1014
  %conv89 = zext i16 %38 to i32, !dbg !1015
  %arrayidx90 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2, !dbg !1015
  store i32 %conv89, i32* %arrayidx90, align 8, !dbg !1015, !tbaa !984
  %add92 = add nsw i32 %34, 2, !dbg !1016
  %idxprom93 = sext i32 %add92 to i64, !dbg !1016
  %arrayidx97 = getelementptr inbounds i16* %36, i64 %idxprom93, !dbg !1016
  %39 = load i16* %arrayidx97, align 2, !dbg !1016, !tbaa !1014
  %conv98 = zext i16 %39 to i32, !dbg !1016
  %arrayidx99 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3, !dbg !1016
  store i32 %conv98, i32* %arrayidx99, align 4, !dbg !1016, !tbaa !984
  %add101 = add nsw i32 %34, 3, !dbg !1017
  %idxprom102 = sext i32 %add101 to i64, !dbg !1017
  %arrayidx106 = getelementptr inbounds i16* %36, i64 %idxprom102, !dbg !1017
  %40 = load i16* %arrayidx106, align 2, !dbg !1017, !tbaa !1014
  %conv107 = zext i16 %40 to i32, !dbg !1017
  %arrayidx108 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4, !dbg !1017
  store i32 %conv107, i32* %arrayidx108, align 16, !dbg !1017, !tbaa !984
  br label %if.end114, !dbg !1018

if.else109:                                       ; preds = %if.end
  %41 = load %struct.ImageParameters** @img, align 8, !dbg !1019, !tbaa !978
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 154, !dbg !1019
  %42 = load i32* %dc_pred_value, align 4, !dbg !1019, !tbaa !984
  %arrayidx110 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4, !dbg !1019
  store i32 %42, i32* %arrayidx110, align 16, !dbg !1019, !tbaa !984
  %arrayidx111 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3, !dbg !1019
  store i32 %42, i32* %arrayidx111, align 4, !dbg !1019, !tbaa !984
  %arrayidx112 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2, !dbg !1019
  store i32 %42, i32* %arrayidx112, align 8, !dbg !1019, !tbaa !984
  %arrayidx113 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1, !dbg !1019
  store i32 %42, i32* %arrayidx113, align 4, !dbg !1019, !tbaa !984
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.then75
  %43 = phi i32 [ %42, %if.else109 ], [ %conv98, %if.then75 ]
  %44 = phi i32 [ %42, %if.else109 ], [ %conv89, %if.then75 ]
  %45 = phi i32 [ %42, %if.else109 ], [ %conv, %if.then75 ]
  %46 = phi i32 [ %42, %if.else109 ], [ %conv107, %if.then75 ]
  %tobool115 = icmp eq i32 %block_available_up_right.0, 0, !dbg !1021
  br i1 %tobool115, label %if.else153, label %if.then116, !dbg !1021

if.then116:                                       ; preds = %if.end114
  %pos_x117 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 4, !dbg !1022
  %47 = load i32* %pos_x117, align 4, !dbg !1022, !tbaa !984
  %idxprom119 = sext i32 %47 to i64, !dbg !1022
  %pos_y120 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 5, !dbg !1022
  %48 = load i32* %pos_y120, align 4, !dbg !1022, !tbaa !984
  %idxprom121 = sext i32 %48 to i64, !dbg !1022
  %arrayidx122 = getelementptr inbounds i16** %2, i64 %idxprom121, !dbg !1022
  %49 = load i16** %arrayidx122, align 8, !dbg !1022, !tbaa !978
  %arrayidx123 = getelementptr inbounds i16* %49, i64 %idxprom119, !dbg !1022
  %50 = load i16* %arrayidx123, align 2, !dbg !1022, !tbaa !1014
  %conv124 = zext i16 %50 to i32, !dbg !1022
  %arrayidx125 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 5, !dbg !1022
  store i32 %conv124, i32* %arrayidx125, align 4, !dbg !1022, !tbaa !984
  %add127 = add nsw i32 %47, 1, !dbg !1024
  %idxprom128 = sext i32 %add127 to i64, !dbg !1024
  %arrayidx132 = getelementptr inbounds i16* %49, i64 %idxprom128, !dbg !1024
  %51 = load i16* %arrayidx132, align 2, !dbg !1024, !tbaa !1014
  %conv133 = zext i16 %51 to i32, !dbg !1024
  %arrayidx134 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6, !dbg !1024
  store i32 %conv133, i32* %arrayidx134, align 8, !dbg !1024, !tbaa !984
  %add136 = add nsw i32 %47, 2, !dbg !1025
  %idxprom137 = sext i32 %add136 to i64, !dbg !1025
  %arrayidx141 = getelementptr inbounds i16* %49, i64 %idxprom137, !dbg !1025
  %52 = load i16* %arrayidx141, align 2, !dbg !1025, !tbaa !1014
  %conv142 = zext i16 %52 to i32, !dbg !1025
  %arrayidx143 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 7, !dbg !1025
  store i32 %conv142, i32* %arrayidx143, align 4, !dbg !1025, !tbaa !984
  %add145 = add nsw i32 %47, 3, !dbg !1026
  %idxprom146 = sext i32 %add145 to i64, !dbg !1026
  %arrayidx150 = getelementptr inbounds i16* %49, i64 %idxprom146, !dbg !1026
  %53 = load i16* %arrayidx150, align 2, !dbg !1026, !tbaa !1014
  %conv151 = zext i16 %53 to i32, !dbg !1026
  %arrayidx152 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 8, !dbg !1026
  store i32 %conv151, i32* %arrayidx152, align 16, !dbg !1026, !tbaa !984
  br label %if.end159, !dbg !1027

if.else153:                                       ; preds = %if.end114
  %arrayidx155 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 8, !dbg !1028
  store i32 %46, i32* %arrayidx155, align 16, !dbg !1028, !tbaa !984
  %arrayidx156 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 7, !dbg !1028
  store i32 %46, i32* %arrayidx156, align 4, !dbg !1028, !tbaa !984
  %arrayidx157 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6, !dbg !1028
  store i32 %46, i32* %arrayidx157, align 8, !dbg !1028, !tbaa !984
  %arrayidx158 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 5, !dbg !1028
  store i32 %46, i32* %arrayidx158, align 4, !dbg !1028, !tbaa !984
  br label %if.end159

if.end159:                                        ; preds = %if.else153, %if.then116
  %54 = phi i32 [ %46, %if.else153 ], [ %conv151, %if.then116 ]
  %55 = phi i32 [ %46, %if.else153 ], [ %conv142, %if.then116 ]
  %56 = phi i32 [ %46, %if.else153 ], [ %conv133, %if.then116 ]
  %57 = phi i32 [ %46, %if.else153 ], [ %conv124, %if.then116 ]
  br i1 %tobool67.not, label %if.then161, label %if.else202, !dbg !1030

if.then161:                                       ; preds = %if.end159
  %pos_x163 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 4, !dbg !1031
  %58 = bitcast i32* %pos_x163 to i64*, !dbg !1031
  %59 = load i64* %58, align 16, !dbg !1031
  %sext = shl i64 %59, 32, !dbg !1031
  %idxprom164 = ashr exact i64 %sext, 32, !dbg !1031
  %idxprom167 = ashr i64 %59, 32, !dbg !1031
  %arrayidx168 = getelementptr inbounds i16** %2, i64 %idxprom167, !dbg !1031
  %60 = load i16** %arrayidx168, align 8, !dbg !1031, !tbaa !978
  %arrayidx169 = getelementptr inbounds i16* %60, i64 %idxprom164, !dbg !1031
  %61 = load i16* %arrayidx169, align 2, !dbg !1031, !tbaa !1014
  %conv170 = zext i16 %61 to i32, !dbg !1031
  %arrayidx171 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9, !dbg !1031
  store i32 %conv170, i32* %arrayidx171, align 4, !dbg !1031, !tbaa !984
  %pos_x173 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 1, i32 4, !dbg !1033
  %62 = bitcast i32* %pos_x173 to i64*, !dbg !1033
  %63 = load i64* %62, align 8, !dbg !1033
  %sext1317 = shl i64 %63, 32, !dbg !1033
  %idxprom174 = ashr exact i64 %sext1317, 32, !dbg !1033
  %idxprom177 = ashr i64 %63, 32, !dbg !1033
  %arrayidx178 = getelementptr inbounds i16** %2, i64 %idxprom177, !dbg !1033
  %64 = load i16** %arrayidx178, align 8, !dbg !1033, !tbaa !978
  %arrayidx179 = getelementptr inbounds i16* %64, i64 %idxprom174, !dbg !1033
  %65 = load i16* %arrayidx179, align 2, !dbg !1033, !tbaa !1014
  %conv180 = zext i16 %65 to i32, !dbg !1033
  %arrayidx181 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10, !dbg !1033
  store i32 %conv180, i32* %arrayidx181, align 8, !dbg !1033, !tbaa !984
  %pos_x183 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 2, i32 4, !dbg !1034
  %66 = bitcast i32* %pos_x183 to i64*, !dbg !1034
  %67 = load i64* %66, align 16, !dbg !1034
  %sext1319 = shl i64 %67, 32, !dbg !1034
  %idxprom184 = ashr exact i64 %sext1319, 32, !dbg !1034
  %idxprom187 = ashr i64 %67, 32, !dbg !1034
  %arrayidx188 = getelementptr inbounds i16** %2, i64 %idxprom187, !dbg !1034
  %68 = load i16** %arrayidx188, align 8, !dbg !1034, !tbaa !978
  %arrayidx189 = getelementptr inbounds i16* %68, i64 %idxprom184, !dbg !1034
  %69 = load i16* %arrayidx189, align 2, !dbg !1034, !tbaa !1014
  %conv190 = zext i16 %69 to i32, !dbg !1034
  %arrayidx191 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11, !dbg !1034
  store i32 %conv190, i32* %arrayidx191, align 4, !dbg !1034, !tbaa !984
  %pos_x193 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 3, i32 4, !dbg !1035
  %70 = bitcast i32* %pos_x193 to i64*, !dbg !1035
  %71 = load i64* %70, align 8, !dbg !1035
  %sext1321 = shl i64 %71, 32, !dbg !1035
  %idxprom194 = ashr exact i64 %sext1321, 32, !dbg !1035
  %idxprom197 = ashr i64 %71, 32, !dbg !1035
  %arrayidx198 = getelementptr inbounds i16** %2, i64 %idxprom197, !dbg !1035
  %72 = load i16** %arrayidx198, align 8, !dbg !1035, !tbaa !978
  %arrayidx199 = getelementptr inbounds i16* %72, i64 %idxprom194, !dbg !1035
  %73 = load i16* %arrayidx199, align 2, !dbg !1035, !tbaa !1014
  %conv200 = zext i16 %73 to i32, !dbg !1035
  %arrayidx201 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12, !dbg !1035
  store i32 %conv200, i32* %arrayidx201, align 16, !dbg !1035, !tbaa !984
  br label %if.end208, !dbg !1036

if.else202:                                       ; preds = %if.end159
  %74 = load %struct.ImageParameters** @img, align 8, !dbg !1037, !tbaa !978
  %dc_pred_value203 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 154, !dbg !1037
  %75 = load i32* %dc_pred_value203, align 4, !dbg !1037, !tbaa !984
  %arrayidx204 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12, !dbg !1037
  store i32 %75, i32* %arrayidx204, align 16, !dbg !1037, !tbaa !984
  %arrayidx205 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11, !dbg !1037
  store i32 %75, i32* %arrayidx205, align 4, !dbg !1037, !tbaa !984
  %arrayidx206 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10, !dbg !1037
  store i32 %75, i32* %arrayidx206, align 8, !dbg !1037, !tbaa !984
  %arrayidx207 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9, !dbg !1037
  store i32 %75, i32* %arrayidx207, align 4, !dbg !1037, !tbaa !984
  br label %if.end208

if.end208:                                        ; preds = %if.else202, %if.then161
  %76 = phi i32 [ %75, %if.else202 ], [ %conv200, %if.then161 ]
  %77 = phi i32 [ %75, %if.else202 ], [ %conv190, %if.then161 ]
  %78 = phi i32 [ %75, %if.else202 ], [ %conv180, %if.then161 ]
  %79 = phi i32 [ %75, %if.else202 ], [ %conv170, %if.then161 ]
  br i1 %tobool69, label %if.then210, label %if.else219, !dbg !1039

if.then210:                                       ; preds = %if.end208
  %pos_x211 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 4, !dbg !1040
  %80 = load i32* %pos_x211, align 4, !dbg !1040, !tbaa !984
  %idxprom212 = sext i32 %80 to i64, !dbg !1040
  %pos_y213 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 5, !dbg !1040
  %81 = load i32* %pos_y213, align 4, !dbg !1040, !tbaa !984
  %idxprom214 = sext i32 %81 to i64, !dbg !1040
  %arrayidx215 = getelementptr inbounds i16** %2, i64 %idxprom214, !dbg !1040
  %82 = load i16** %arrayidx215, align 8, !dbg !1040, !tbaa !978
  %arrayidx216 = getelementptr inbounds i16* %82, i64 %idxprom212, !dbg !1040
  %83 = load i16* %arrayidx216, align 2, !dbg !1040, !tbaa !1014
  %conv217 = zext i16 %83 to i32, !dbg !1040
  %arrayidx218 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 0, !dbg !1040
  store i32 %conv217, i32* %arrayidx218, align 16, !dbg !1040, !tbaa !984
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1042, !tbaa !978
  br label %for.cond223.preheader, !dbg !1044

if.else219:                                       ; preds = %if.end208
  %84 = load %struct.ImageParameters** @img, align 8, !dbg !1045, !tbaa !978
  %dc_pred_value220 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 154, !dbg !1045
  %85 = load i32* %dc_pred_value220, align 4, !dbg !1045, !tbaa !984
  %arrayidx221 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 0, !dbg !1045
  store i32 %85, i32* %arrayidx221, align 16, !dbg !1045, !tbaa !984
  br label %for.cond223.preheader

for.cond223.preheader:                            ; preds = %if.else219, %if.then210
  %86 = phi %struct.ImageParameters* [ %84, %if.else219 ], [ %.pre, %if.then210 ]
  br label %for.body226, !dbg !1047

for.body226:                                      ; preds = %for.body226, %for.cond223.preheader
  %indvars.iv1270 = phi i64 [ 0, %for.cond223.preheader ], [ %indvars.iv.next1271, %for.body226 ]
  %arrayidx230 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 %indvars.iv1270, i64 0, i64 0, !dbg !1042
  store i16 -1, i16* %arrayidx230, align 2, !dbg !1042, !tbaa !1014
  %indvars.iv.next1271 = add i64 %indvars.iv1270, 1, !dbg !1047
  %lftr.wideiv1272 = trunc i64 %indvars.iv.next1271 to i32, !dbg !1047
  %exitcond1273 = icmp eq i32 %lftr.wideiv1272, 9, !dbg !1047
  br i1 %exitcond1273, label %for.end233, label %for.body226, !dbg !1047

for.end233:                                       ; preds = %for.body226
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !34), !dbg !1048
  %tobool160.not = xor i1 %tobool67.not, true, !dbg !1049
  %brmerge = or i1 %tobool66.not, %tobool160.not, !dbg !1049
  br i1 %brmerge, label %if.else254, label %if.then237, !dbg !1049

if.then237:                                       ; preds = %for.end233
  %arrayidx243 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4, !dbg !1050
  %87 = bitcast i32* %arrayidx243 to i64*, !dbg !1050
  %88 = load i64* %87, align 16, !dbg !1050
  %89 = trunc i64 %88 to i32, !dbg !1050
  %add240 = add i32 %45, 4, !dbg !1050
  %add242 = add i32 %add240, %44, !dbg !1050
  %add244 = add i32 %add242, %43, !dbg !1050
  %add246 = add i32 %add244, %89, !dbg !1050
  %add248 = add i32 %add246, %79, !dbg !1050
  %add250 = add i32 %add248, %78, !dbg !1050
  %add252 = add i32 %add250, %77, !dbg !1050
  %add253 = add i32 %add252, %76, !dbg !1050
  %div = sdiv i32 %add253, 8, !dbg !1050
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !34), !dbg !1050
  %90 = lshr i64 %88, 32
  %91 = trunc i64 %90 to i32
  br label %if.end286, !dbg !1052

if.else254:                                       ; preds = %for.end233
  %brmerge1248 = or i1 %tobool66, %tobool160.not, !dbg !1053
  br i1 %brmerge1248, label %if.else268, label %if.then258, !dbg !1053

if.then258:                                       ; preds = %if.else254
  %add261 = add i32 %79, 2, !dbg !1054
  %add263 = add i32 %add261, %78, !dbg !1054
  %add265 = add i32 %add263, %77, !dbg !1054
  %add266 = add i32 %add265, %76, !dbg !1054
  %div267 = sdiv i32 %add266, 4, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32 %div267}, i64 0, metadata !34), !dbg !1054
  br label %if.end286, !dbg !1056

if.else268:                                       ; preds = %if.else254
  %brmerge1250 = or i1 %tobool67.not, %tobool66.not, !dbg !1057
  br i1 %brmerge1250, label %if.else282, label %if.then272, !dbg !1057

if.then272:                                       ; preds = %if.else268
  %add275 = add i32 %45, 2, !dbg !1058
  %add277 = add i32 %add275, %44, !dbg !1058
  %add279 = add i32 %add277, %43, !dbg !1058
  %add280 = add i32 %add279, %46, !dbg !1058
  %div281 = sdiv i32 %add280, 4, !dbg !1058
  call void @llvm.dbg.value(metadata !{i32 %div281}, i64 0, metadata !34), !dbg !1058
  br label %if.end286, !dbg !1060

if.else282:                                       ; preds = %if.else268
  %dc_pred_value283 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 154, !dbg !1061
  %92 = load i32* %dc_pred_value283, align 4, !dbg !1061, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %92}, i64 0, metadata !34), !dbg !1061
  br label %if.end286

if.end286:                                        ; preds = %if.then258, %if.else282, %if.then272, %if.then237
  %93 = phi i32 [ %89, %if.then237 ], [ %46, %if.else282 ], [ %46, %if.then272 ], [ %46, %if.then258 ]
  %94 = phi i32 [ %91, %if.then237 ], [ %57, %if.else282 ], [ %57, %if.then272 ], [ %57, %if.then258 ]
  %s0.0 = phi i32 [ %div, %if.then237 ], [ %92, %if.else282 ], [ %div281, %if.then272 ], [ %div267, %if.then258 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !33), !dbg !1063
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !32), !dbg !1065
  %conv295 = trunc i32 %s0.0 to i16, !dbg !1068
  br label %for.cond291.preheader, !dbg !1063

for.cond291.preheader:                            ; preds = %for.inc305, %if.end286
  %indvars.iv1266 = phi i64 [ 0, %if.end286 ], [ %indvars.iv.next1267, %for.inc305 ]
  br label %for.body294, !dbg !1065

for.body294:                                      ; preds = %for.body294, %for.cond291.preheader
  %indvars.iv1262 = phi i64 [ 0, %for.cond291.preheader ], [ %indvars.iv.next1263, %for.body294 ]
  %arrayidx301 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 2, i64 %indvars.iv1262, i64 %indvars.iv1266, !dbg !1068
  store i16 %conv295, i16* %arrayidx301, align 2, !dbg !1068, !tbaa !1014
  %indvars.iv.next1263 = add i64 %indvars.iv1262, 1, !dbg !1065
  %lftr.wideiv1264 = trunc i64 %indvars.iv.next1263 to i32, !dbg !1065
  %exitcond1265 = icmp eq i32 %lftr.wideiv1264, 4, !dbg !1065
  br i1 %exitcond1265, label %for.inc305, label %for.body294, !dbg !1065

for.inc305:                                       ; preds = %for.body294
  %indvars.iv.next1267 = add i64 %indvars.iv1266, 1, !dbg !1063
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !32), !dbg !1065
  %lftr.wideiv1268 = trunc i64 %indvars.iv.next1267 to i32, !dbg !1063
  %exitcond1269 = icmp eq i32 %lftr.wideiv1268, 4, !dbg !1063
  br i1 %exitcond1269, label %for.body311, label %for.cond291.preheader, !dbg !1063

for.body311:                                      ; preds = %for.body311, %for.inc305
  %indvars.iv = phi i64 [ 0, %for.inc305 ], [ %arrayidx313.sum, %for.body311 ]
  %arrayidx313.sum = add i64 %indvars.iv, 1, !dbg !1070
  %arrayidx314 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 %arrayidx313.sum, !dbg !1070
  %95 = load i32* %arrayidx314, align 4, !dbg !1070, !tbaa !984
  %conv315 = trunc i32 %95 to i16, !dbg !1070
  %arrayidx320 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 3, i64 %indvars.iv, !dbg !1070
  store i16 %conv315, i16* %arrayidx320, align 2, !dbg !1070, !tbaa !1014
  %arrayidx325 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 2, i64 %indvars.iv, !dbg !1070
  store i16 %conv315, i16* %arrayidx325, align 2, !dbg !1070, !tbaa !1014
  %arrayidx330 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 1, i64 %indvars.iv, !dbg !1070
  store i16 %conv315, i16* %arrayidx330, align 2, !dbg !1070, !tbaa !1014
  %arrayidx335 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 0, i64 %indvars.iv, !dbg !1070
  store i16 %conv315, i16* %arrayidx335, align 2, !dbg !1070, !tbaa !1014
  %arrayidx337.sum = add i64 %indvars.iv, 9, !dbg !1073
  %arrayidx338 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 %arrayidx337.sum, !dbg !1073
  %96 = load i32* %arrayidx338, align 4, !dbg !1073, !tbaa !984
  %conv339 = trunc i32 %96 to i16, !dbg !1073
  %arrayidx344 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 3, !dbg !1073
  store i16 %conv339, i16* %arrayidx344, align 2, !dbg !1073, !tbaa !1014
  %arrayidx349 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 2, !dbg !1073
  store i16 %conv339, i16* %arrayidx349, align 2, !dbg !1073, !tbaa !1014
  %arrayidx354 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 1, !dbg !1073
  store i16 %conv339, i16* %arrayidx354, align 2, !dbg !1073, !tbaa !1014
  %arrayidx359 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 0, !dbg !1073
  store i16 %conv339, i16* %arrayidx359, align 2, !dbg !1073, !tbaa !1014
  %lftr.wideiv = trunc i64 %arrayidx313.sum to i32, !dbg !1074
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1074
  br i1 %exitcond, label %for.end362, label %for.body311, !dbg !1074

for.end362:                                       ; preds = %for.body311
  br i1 %tobool66, label %if.end369, label %if.then364, !dbg !1075

if.then364:                                       ; preds = %for.end362
  %arrayidx368 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 0, i64 0, !dbg !1075
  store i16 -1, i16* %arrayidx368, align 2, !dbg !1075, !tbaa !1014
  br label %if.end369, !dbg !1075

if.end369:                                        ; preds = %if.then364, %for.end362
  br i1 %tobool67.not, label %if.end376, label %if.then371, !dbg !1076

if.then371:                                       ; preds = %if.end369
  %arrayidx375 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 0, i64 0, !dbg !1076
  store i16 -1, i16* %arrayidx375, align 2, !dbg !1076, !tbaa !1014
  br label %if.end376, !dbg !1076

if.end376:                                        ; preds = %if.then371, %if.end369
  br i1 %tobool66, label %if.then378, label %if.end642, !dbg !1077

if.then378:                                       ; preds = %if.end376
  %arrayidx379 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1, !dbg !1078
  %arrayidx382 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2, !dbg !1078
  %mul = shl i32 %44, 1, !dbg !1078
  %add381 = add i32 %45, 2, !dbg !1078
  %add383 = add i32 %add381, %43, !dbg !1078
  %add384 = add i32 %add383, %mul, !dbg !1078
  %div385 = sdiv i32 %add384, 4, !dbg !1078
  %conv386 = trunc i32 %div385 to i16, !dbg !1078
  %arrayidx390 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 0, !dbg !1078
  store i16 %conv386, i16* %arrayidx390, align 2, !dbg !1078, !tbaa !1014
  %arrayidx392 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4, !dbg !1080
  %mul395 = shl i32 %43, 1, !dbg !1080
  %add393 = add i32 %44, 2, !dbg !1080
  %add396 = add i32 %add393, %93, !dbg !1080
  %add397 = add i32 %add396, %mul395, !dbg !1080
  %div398 = sdiv i32 %add397, 4, !dbg !1080
  %conv399 = trunc i32 %div398 to i16, !dbg !1080
  %arrayidx403 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 0, !dbg !1080
  store i16 %conv399, i16* %arrayidx403, align 2, !dbg !1080, !tbaa !1014
  %arrayidx407 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 1, !dbg !1080
  store i16 %conv399, i16* %arrayidx407, align 2, !dbg !1080, !tbaa !1014
  %mul412 = shl i32 %93, 1, !dbg !1081
  %add410 = add i32 %43, 2, !dbg !1081
  %add413 = add i32 %add410, %94, !dbg !1081
  %add414 = add i32 %add413, %mul412, !dbg !1081
  %div415 = sdiv i32 %add414, 4, !dbg !1081
  %conv416 = trunc i32 %div415 to i16, !dbg !1081
  %arrayidx420 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 0, !dbg !1081
  store i16 %conv416, i16* %arrayidx420, align 2, !dbg !1081, !tbaa !1014
  %arrayidx424 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 1, !dbg !1081
  store i16 %conv416, i16* %arrayidx424, align 2, !dbg !1081, !tbaa !1014
  %arrayidx428 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 2, !dbg !1081
  store i16 %conv416, i16* %arrayidx428, align 2, !dbg !1081, !tbaa !1014
  %arrayidx430 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6, !dbg !1082
  %mul433 = shl i32 %94, 1, !dbg !1082
  %add431 = add i32 %93, 2, !dbg !1082
  %add434 = add i32 %add431, %56, !dbg !1082
  %add435 = add i32 %add434, %mul433, !dbg !1082
  %div436 = sdiv i32 %add435, 4, !dbg !1082
  %conv437 = trunc i32 %div436 to i16, !dbg !1082
  %arrayidx441 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 0, !dbg !1082
  store i16 %conv437, i16* %arrayidx441, align 2, !dbg !1082, !tbaa !1014
  %arrayidx445 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 1, !dbg !1082
  store i16 %conv437, i16* %arrayidx445, align 2, !dbg !1082, !tbaa !1014
  %arrayidx449 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 2, !dbg !1082
  store i16 %conv437, i16* %arrayidx449, align 2, !dbg !1082, !tbaa !1014
  %arrayidx453 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 3, !dbg !1082
  store i16 %conv437, i16* %arrayidx453, align 2, !dbg !1082, !tbaa !1014
  %mul458 = shl i32 %56, 1, !dbg !1083
  %add456 = add i32 %94, 2, !dbg !1083
  %add459 = add i32 %add456, %55, !dbg !1083
  %add460 = add i32 %add459, %mul458, !dbg !1083
  %div461 = sdiv i32 %add460, 4, !dbg !1083
  %conv462 = trunc i32 %div461 to i16, !dbg !1083
  %arrayidx466 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 1, !dbg !1083
  store i16 %conv462, i16* %arrayidx466, align 2, !dbg !1083, !tbaa !1014
  %arrayidx470 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 2, !dbg !1083
  store i16 %conv462, i16* %arrayidx470, align 2, !dbg !1083, !tbaa !1014
  %arrayidx474 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 3, !dbg !1083
  store i16 %conv462, i16* %arrayidx474, align 2, !dbg !1083, !tbaa !1014
  %mul479 = shl i32 %55, 1, !dbg !1084
  %add477 = add i32 %56, 2, !dbg !1084
  %add480 = add i32 %add477, %54, !dbg !1084
  %add481 = add i32 %add480, %mul479, !dbg !1084
  %div482 = sdiv i32 %add481, 4, !dbg !1084
  %conv483 = trunc i32 %div482 to i16, !dbg !1084
  %arrayidx487 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 2, !dbg !1084
  store i16 %conv483, i16* %arrayidx487, align 2, !dbg !1084, !tbaa !1014
  %arrayidx491 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 3, !dbg !1084
  store i16 %conv483, i16* %arrayidx491, align 2, !dbg !1084, !tbaa !1014
  %mul494 = mul nsw i32 %54, 3, !dbg !1085
  %add495 = add i32 %55, 2, !dbg !1085
  %add496 = add i32 %add495, %mul494, !dbg !1085
  %div497 = sdiv i32 %add496, 4, !dbg !1085
  %conv498 = trunc i32 %div497 to i16, !dbg !1085
  %arrayidx502 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 3, !dbg !1085
  store i16 %conv498, i16* %arrayidx502, align 2, !dbg !1085, !tbaa !1014
  %add505 = add i32 %45, 1, !dbg !1086
  %add506 = add i32 %add505, %44, !dbg !1086
  %div507 = sdiv i32 %add506, 2, !dbg !1086
  %conv508 = trunc i32 %div507 to i16, !dbg !1086
  %arrayidx512 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 0, i64 0, !dbg !1086
  store i16 %conv508, i16* %arrayidx512, align 2, !dbg !1086, !tbaa !1014
  %add515 = add i32 %44, 1, !dbg !1087
  %add516 = add i32 %add515, %43, !dbg !1087
  %div517 = sdiv i32 %add516, 2, !dbg !1087
  %conv518 = trunc i32 %div517 to i16, !dbg !1087
  %arrayidx522 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 2, i64 0, !dbg !1087
  store i16 %conv518, i16* %arrayidx522, align 2, !dbg !1087, !tbaa !1014
  %arrayidx526 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 0, i64 1, !dbg !1087
  store i16 %conv518, i16* %arrayidx526, align 2, !dbg !1087, !tbaa !1014
  %add529 = add i32 %43, 1, !dbg !1088
  %add530 = add i32 %add529, %93, !dbg !1088
  %div531 = sdiv i32 %add530, 2, !dbg !1088
  %conv532 = trunc i32 %div531 to i16, !dbg !1088
  %arrayidx536 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 2, i64 1, !dbg !1088
  store i16 %conv532, i16* %arrayidx536, align 2, !dbg !1088, !tbaa !1014
  %97 = load %struct.ImageParameters** @img, align 8, !dbg !1088, !tbaa !978
  %arrayidx540 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 0, i64 2, !dbg !1088
  store i16 %conv532, i16* %arrayidx540, align 2, !dbg !1088, !tbaa !1014
  %98 = bitcast i32* %arrayidx392 to i64*, !dbg !1089
  %99 = load i64* %98, align 16, !dbg !1089
  %100 = trunc i64 %99 to i32, !dbg !1089
  %101 = lshr i64 %99, 32
  %102 = trunc i64 %101 to i32
  %add543 = add i32 %100, 1, !dbg !1089
  %add544 = add i32 %add543, %102, !dbg !1089
  %div545 = sdiv i32 %add544, 2, !dbg !1089
  %conv546 = trunc i32 %div545 to i16, !dbg !1089
  %arrayidx550 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 2, i64 2, !dbg !1089
  store i16 %conv546, i16* %arrayidx550, align 2, !dbg !1089, !tbaa !1014
  %arrayidx554 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 0, i64 3, !dbg !1089
  store i16 %conv546, i16* %arrayidx554, align 2, !dbg !1089, !tbaa !1014
  %103 = bitcast i32* %arrayidx430 to i64*, !dbg !1090
  %104 = load i64* %103, align 8, !dbg !1090
  %105 = trunc i64 %104 to i32, !dbg !1090
  %add557 = add i32 %102, 1, !dbg !1090
  %add558 = add i32 %add557, %105, !dbg !1090
  %div559 = sdiv i32 %add558, 2, !dbg !1090
  %conv560 = trunc i32 %div559 to i16, !dbg !1090
  %arrayidx564 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 2, i64 3, !dbg !1090
  store i16 %conv560, i16* %arrayidx564, align 2, !dbg !1090, !tbaa !1014
  %106 = load i32* %arrayidx379, align 4, !dbg !1091, !tbaa !984
  %107 = bitcast i32* %arrayidx382 to i64*, !dbg !1091
  %108 = load i64* %107, align 8, !dbg !1091
  %109 = trunc i64 %108 to i32, !dbg !1091
  %mul567 = shl i32 %109, 1, !dbg !1091
  %110 = lshr i64 %108, 32
  %111 = trunc i64 %110 to i32
  %add568 = add i32 %106, 2, !dbg !1091
  %add570 = add i32 %add568, %mul567, !dbg !1091
  %add571 = add i32 %add570, %111, !dbg !1091
  %div572 = sdiv i32 %add571, 4, !dbg !1091
  %conv573 = trunc i32 %div572 to i16, !dbg !1091
  %arrayidx577 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 0, !dbg !1091
  store i16 %conv573, i16* %arrayidx577, align 2, !dbg !1091, !tbaa !1014
  %mul5801314 = shl nuw nsw i64 %110, 1, !dbg !1092
  %mul580 = trunc i64 %mul5801314 to i32, !dbg !1092
  %add581 = add i32 %109, 2, !dbg !1092
  %add583 = add i32 %add581, %mul580, !dbg !1092
  %add584 = add i32 %add583, %100, !dbg !1092
  %div585 = sdiv i32 %add584, 4, !dbg !1092
  %conv586 = trunc i32 %div585 to i16, !dbg !1092
  %arrayidx590 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 0, !dbg !1092
  store i16 %conv586, i16* %arrayidx590, align 2, !dbg !1092, !tbaa !1014
  %arrayidx594 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 1, !dbg !1092
  store i16 %conv586, i16* %arrayidx594, align 2, !dbg !1092, !tbaa !1014
  %mul597 = shl i32 %100, 1, !dbg !1093
  %add598 = add i32 %111, 2, !dbg !1093
  %add600 = add i32 %add598, %mul597, !dbg !1093
  %add601 = add i32 %add600, %102, !dbg !1093
  %div602 = sdiv i32 %add601, 4, !dbg !1093
  %conv603 = trunc i32 %div602 to i16, !dbg !1093
  %arrayidx607 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 1, !dbg !1093
  store i16 %conv603, i16* %arrayidx607, align 2, !dbg !1093, !tbaa !1014
  %arrayidx611 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 2, !dbg !1093
  store i16 %conv603, i16* %arrayidx611, align 2, !dbg !1093, !tbaa !1014
  %mul6141315 = shl nuw nsw i64 %101, 1, !dbg !1094
  %mul614 = trunc i64 %mul6141315 to i32, !dbg !1094
  %add615 = add i32 %100, 2, !dbg !1094
  %add617 = add i32 %add615, %mul614, !dbg !1094
  %add618 = add i32 %add617, %105, !dbg !1094
  %div619 = sdiv i32 %add618, 4, !dbg !1094
  %conv620 = trunc i32 %div619 to i16, !dbg !1094
  %arrayidx624 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 2, !dbg !1094
  store i16 %conv620, i16* %arrayidx624, align 2, !dbg !1094, !tbaa !1014
  %arrayidx628 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 3, !dbg !1094
  store i16 %conv620, i16* %arrayidx628, align 2, !dbg !1094, !tbaa !1014
  %mul631 = shl i32 %105, 1, !dbg !1095
  %112 = lshr i64 %104, 32
  %113 = trunc i64 %112 to i32
  %add632 = add i32 %102, 2, !dbg !1095
  %add634 = add i32 %add632, %mul631, !dbg !1095
  %add635 = add i32 %add634, %113, !dbg !1095
  %div636 = sdiv i32 %add635, 4, !dbg !1095
  %conv637 = trunc i32 %div636 to i16, !dbg !1095
  %114 = load %struct.ImageParameters** @img, align 8, !dbg !1095, !tbaa !978
  %arrayidx641 = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 41, i64 7, i64 3, i64 3, !dbg !1095
  store i16 %conv637, i16* %arrayidx641, align 2, !dbg !1095, !tbaa !1014
  br label %if.end642, !dbg !1096

if.end642:                                        ; preds = %if.then378, %if.end376
  %115 = phi i32 [ %111, %if.then378 ], [ %43, %if.end376 ]
  %116 = phi i32 [ %109, %if.then378 ], [ %44, %if.end376 ]
  %117 = phi %struct.ImageParameters* [ %114, %if.then378 ], [ %86, %if.end376 ]
  br i1 %tobool67.not, label %if.then644, label %if.end756, !dbg !1097

if.then644:                                       ; preds = %if.end642
  %arrayidx645 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9, !dbg !1098
  %118 = load i32* %arrayidx645, align 4, !dbg !1098, !tbaa !984
  %arrayidx646 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10, !dbg !1098
  %119 = bitcast i32* %arrayidx646 to i64*, !dbg !1098
  %120 = load i64* %119, align 8, !dbg !1098
  %121 = trunc i64 %120 to i32, !dbg !1098
  %add647 = add i32 %118, 1, !dbg !1098
  %add648 = add i32 %add647, %121, !dbg !1098
  %div649 = sdiv i32 %add648, 2, !dbg !1098
  %conv650 = trunc i32 %div649 to i16, !dbg !1098
  %arrayidx654 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 0, !dbg !1098
  store i16 %conv650, i16* %arrayidx654, align 2, !dbg !1098, !tbaa !1014
  %mul657 = shl i32 %121, 1, !dbg !1100
  %122 = lshr i64 %120, 32
  %123 = trunc i64 %122 to i32
  %add658 = add i32 %118, 2, !dbg !1100
  %add660 = add i32 %add658, %mul657, !dbg !1100
  %add661 = add i32 %add660, %123, !dbg !1100
  %div662 = sdiv i32 %add661, 4, !dbg !1100
  %conv663 = trunc i32 %div662 to i16, !dbg !1100
  %arrayidx667 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 1, !dbg !1100
  store i16 %conv663, i16* %arrayidx667, align 2, !dbg !1100, !tbaa !1014
  %add670 = add i32 %121, 1, !dbg !1101
  %add671 = add i32 %add670, %123, !dbg !1101
  %div672 = sdiv i32 %add671, 2, !dbg !1101
  %conv673 = trunc i32 %div672 to i16, !dbg !1101
  %arrayidx677 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 0, !dbg !1101
  store i16 %conv673, i16* %arrayidx677, align 2, !dbg !1101, !tbaa !1014
  %arrayidx681 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 2, !dbg !1101
  store i16 %conv673, i16* %arrayidx681, align 2, !dbg !1101, !tbaa !1014
  %mul6841313 = shl nuw nsw i64 %122, 1, !dbg !1102
  %mul684 = trunc i64 %mul6841313 to i32, !dbg !1102
  %arrayidx686 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12, !dbg !1102
  %124 = load i32* %arrayidx686, align 16, !dbg !1102, !tbaa !984
  %add685 = add i32 %121, 2, !dbg !1102
  %add687 = add i32 %add685, %mul684, !dbg !1102
  %add688 = add i32 %add687, %124, !dbg !1102
  %div689 = sdiv i32 %add688, 4, !dbg !1102
  %conv690 = trunc i32 %div689 to i16, !dbg !1102
  %arrayidx694 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 1, !dbg !1102
  store i16 %conv690, i16* %arrayidx694, align 2, !dbg !1102, !tbaa !1014
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 3, !dbg !1102
  store i16 %conv690, i16* %arrayidx698, align 2, !dbg !1102, !tbaa !1014
  %add701 = add i32 %123, 1, !dbg !1103
  %add702 = add i32 %add701, %124, !dbg !1103
  %div703 = sdiv i32 %add702, 2, !dbg !1103
  %conv704 = trunc i32 %div703 to i16, !dbg !1103
  %arrayidx708 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 0, !dbg !1103
  store i16 %conv704, i16* %arrayidx708, align 2, !dbg !1103, !tbaa !1014
  %arrayidx712 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 2, !dbg !1103
  store i16 %conv704, i16* %arrayidx712, align 2, !dbg !1103, !tbaa !1014
  %mul715 = shl i32 %124, 1, !dbg !1104
  %add716 = add i32 %123, 2, !dbg !1104
  %add718 = add i32 %add716, %124, !dbg !1104
  %add719 = add i32 %add718, %mul715, !dbg !1104
  %div720 = sdiv i32 %add719, 4, !dbg !1104
  %conv721 = trunc i32 %div720 to i16, !dbg !1104
  %arrayidx725 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 1, !dbg !1104
  store i16 %conv721, i16* %arrayidx725, align 2, !dbg !1104, !tbaa !1014
  %arrayidx729 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 3, !dbg !1104
  store i16 %conv721, i16* %arrayidx729, align 2, !dbg !1104, !tbaa !1014
  %conv731 = trunc i32 %124 to i16, !dbg !1105
  %arrayidx735 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 3, !dbg !1105
  store i16 %conv731, i16* %arrayidx735, align 2, !dbg !1105, !tbaa !1014
  %arrayidx739 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 2, !dbg !1105
  store i16 %conv731, i16* %arrayidx739, align 2, !dbg !1105, !tbaa !1014
  %arrayidx743 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 1, !dbg !1105
  store i16 %conv731, i16* %arrayidx743, align 2, !dbg !1105, !tbaa !1014
  %arrayidx747 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 3, !dbg !1105
  store i16 %conv731, i16* %arrayidx747, align 2, !dbg !1105, !tbaa !1014
  %arrayidx751 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 2, !dbg !1105
  store i16 %conv731, i16* %arrayidx751, align 2, !dbg !1105, !tbaa !1014
  %arrayidx755 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 0, !dbg !1105
  store i16 %conv731, i16* %arrayidx755, align 2, !dbg !1105, !tbaa !1014
  br label %if.end756, !dbg !1106

if.end756:                                        ; preds = %if.then644, %if.end642
  %tobool209.not = xor i1 %tobool69, true, !dbg !1107
  %brmerge1254 = or i1 %brmerge, %tobool209.not, !dbg !1107
  br i1 %brmerge1254, label %if.end1174, label %if.then762, !dbg !1107

if.then762:                                       ; preds = %if.end756
  %arrayidx763 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12, !dbg !1108
  %125 = load i32* %arrayidx763, align 16, !dbg !1108, !tbaa !984
  %arrayidx764 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11, !dbg !1108
  %126 = load i32* %arrayidx764, align 4, !dbg !1108, !tbaa !984
  %mul765 = shl i32 %126, 1, !dbg !1108
  %arrayidx767 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10, !dbg !1108
  %127 = bitcast i32* %arrayidx767 to i64*, !dbg !1108
  %128 = load i64* %127, align 8, !dbg !1108
  %129 = trunc i64 %128 to i32, !dbg !1108
  %add766 = add i32 %125, 2, !dbg !1108
  %add768 = add i32 %add766, %mul765, !dbg !1108
  %add769 = add i32 %add768, %129, !dbg !1108
  %div770 = sdiv i32 %add769, 4, !dbg !1108
  %conv771 = trunc i32 %div770 to i16, !dbg !1108
  %arrayidx775 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 0, !dbg !1108
  store i16 %conv771, i16* %arrayidx775, align 2, !dbg !1108, !tbaa !1014
  %130 = lshr i64 %128, 32
  %131 = trunc i64 %130 to i32
  %mul778 = shl i32 %129, 1, !dbg !1110
  %arrayidx780 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9, !dbg !1110
  %132 = load i32* %arrayidx780, align 4, !dbg !1110, !tbaa !984
  %add779 = add i32 %131, 2, !dbg !1110
  %add781 = add i32 %add779, %mul778, !dbg !1110
  %add782 = add i32 %add781, %132, !dbg !1110
  %div783 = sdiv i32 %add782, 4, !dbg !1110
  %conv784 = trunc i32 %div783 to i16, !dbg !1110
  %arrayidx788 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 1, !dbg !1110
  store i16 %conv784, i16* %arrayidx788, align 2, !dbg !1110, !tbaa !1014
  %arrayidx792 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 0, !dbg !1110
  store i16 %conv784, i16* %arrayidx792, align 2, !dbg !1110, !tbaa !1014
  %mul795 = shl i32 %132, 1, !dbg !1111
  %133 = bitcast [13 x i32]* %PredPel to i64*, !dbg !1111
  %134 = load i64* %133, align 16, !dbg !1111
  %135 = trunc i64 %134 to i32, !dbg !1111
  %add796 = add i32 %129, 2, !dbg !1111
  %add798 = add i32 %add796, %mul795, !dbg !1111
  %add799 = add i32 %add798, %135, !dbg !1111
  %div800 = sdiv i32 %add799, 4, !dbg !1111
  %conv801 = trunc i32 %div800 to i16, !dbg !1111
  %arrayidx805 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 2, !dbg !1111
  store i16 %conv801, i16* %arrayidx805, align 2, !dbg !1111, !tbaa !1014
  %arrayidx809 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 1, !dbg !1111
  store i16 %conv801, i16* %arrayidx809, align 2, !dbg !1111, !tbaa !1014
  %arrayidx813 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 0, !dbg !1111
  store i16 %conv801, i16* %arrayidx813, align 2, !dbg !1111, !tbaa !1014
  %mul816 = shl i32 %135, 1, !dbg !1112
  %136 = lshr i64 %134, 32
  %137 = trunc i64 %136 to i32
  %add817 = add i32 %132, 2, !dbg !1112
  %add819 = add i32 %add817, %mul816, !dbg !1112
  %add820 = add i32 %add819, %137, !dbg !1112
  %div821 = sdiv i32 %add820, 4, !dbg !1112
  %conv822 = trunc i32 %div821 to i16, !dbg !1112
  %arrayidx826 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 3, !dbg !1112
  store i16 %conv822, i16* %arrayidx826, align 2, !dbg !1112, !tbaa !1014
  %arrayidx830 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 2, !dbg !1112
  store i16 %conv822, i16* %arrayidx830, align 2, !dbg !1112, !tbaa !1014
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 1, !dbg !1112
  store i16 %conv822, i16* %arrayidx834, align 2, !dbg !1112, !tbaa !1014
  %arrayidx838 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 0, i64 0, !dbg !1112
  store i16 %conv822, i16* %arrayidx838, align 2, !dbg !1112, !tbaa !1014
  %mul8411307 = shl nuw nsw i64 %136, 1, !dbg !1113
  %mul841 = trunc i64 %mul8411307 to i32, !dbg !1113
  %arrayidx843 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2, !dbg !1113
  %add842 = add i32 %135, 2, !dbg !1113
  %add844 = add i32 %add842, %mul841, !dbg !1113
  %add845 = add i32 %add844, %116, !dbg !1113
  %div846 = sdiv i32 %add845, 4, !dbg !1113
  %conv847 = trunc i32 %div846 to i16, !dbg !1113
  %arrayidx851 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 3, !dbg !1113
  store i16 %conv847, i16* %arrayidx851, align 2, !dbg !1113, !tbaa !1014
  %arrayidx855 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 2, !dbg !1113
  store i16 %conv847, i16* %arrayidx855, align 2, !dbg !1113, !tbaa !1014
  %arrayidx859 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 0, i64 1, !dbg !1113
  store i16 %conv847, i16* %arrayidx859, align 2, !dbg !1113, !tbaa !1014
  %mul862 = shl i32 %116, 1, !dbg !1114
  %arrayidx864 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3, !dbg !1114
  %add863 = add i32 %137, 2, !dbg !1114
  %add865 = add i32 %add863, %mul862, !dbg !1114
  %add866 = add i32 %add865, %115, !dbg !1114
  %div867 = sdiv i32 %add866, 4, !dbg !1114
  %conv868 = trunc i32 %div867 to i16, !dbg !1114
  %arrayidx872 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 3, !dbg !1114
  store i16 %conv868, i16* %arrayidx872, align 2, !dbg !1114, !tbaa !1014
  %138 = load %struct.ImageParameters** @img, align 8, !dbg !1114, !tbaa !978
  %arrayidx876 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 4, i64 0, i64 2, !dbg !1114
  store i16 %conv868, i16* %arrayidx876, align 2, !dbg !1114, !tbaa !1014
  %139 = bitcast i32* %arrayidx843 to i64*, !dbg !1115
  %140 = load i64* %139, align 8, !dbg !1115
  %141 = trunc i64 %140 to i32, !dbg !1115
  %142 = lshr i64 %140, 32
  %143 = trunc i64 %142 to i32
  %mul8791308 = shl nuw nsw i64 %142, 1, !dbg !1115
  %mul879 = trunc i64 %mul8791308 to i32, !dbg !1115
  %arrayidx881 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4, !dbg !1115
  %144 = load i32* %arrayidx881, align 16, !dbg !1115, !tbaa !984
  %add880 = add i32 %141, 2, !dbg !1115
  %add882 = add i32 %add880, %mul879, !dbg !1115
  %add883 = add i32 %add882, %144, !dbg !1115
  %div884 = sdiv i32 %add883, 4, !dbg !1115
  %conv885 = trunc i32 %div884 to i16, !dbg !1115
  %arrayidx889 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 4, i64 0, i64 3, !dbg !1115
  store i16 %conv885, i16* %arrayidx889, align 2, !dbg !1115, !tbaa !1014
  %add892 = add i32 %135, 1, !dbg !1116
  %add893 = add i32 %add892, %137, !dbg !1116
  %div894 = sdiv i32 %add893, 2, !dbg !1116
  %conv895 = trunc i32 %div894 to i16, !dbg !1116
  %arrayidx899 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 1, !dbg !1116
  store i16 %conv895, i16* %arrayidx899, align 2, !dbg !1116, !tbaa !1014
  %arrayidx903 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 0, !dbg !1116
  store i16 %conv895, i16* %arrayidx903, align 2, !dbg !1116, !tbaa !1014
  %add906 = add i32 %137, 1, !dbg !1117
  %add907 = add i32 %add906, %141, !dbg !1117
  %div908 = sdiv i32 %add907, 2, !dbg !1117
  %conv909 = trunc i32 %div908 to i16, !dbg !1117
  %arrayidx913 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 2, !dbg !1117
  store i16 %conv909, i16* %arrayidx913, align 2, !dbg !1117, !tbaa !1014
  %arrayidx917 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 1, !dbg !1117
  store i16 %conv909, i16* %arrayidx917, align 2, !dbg !1117, !tbaa !1014
  %add920 = add i32 %141, 1, !dbg !1118
  %add921 = add i32 %add920, %143, !dbg !1118
  %div922 = sdiv i32 %add921, 2, !dbg !1118
  %conv923 = trunc i32 %div922 to i16, !dbg !1118
  %arrayidx927 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 3, !dbg !1118
  store i16 %conv923, i16* %arrayidx927, align 2, !dbg !1118, !tbaa !1014
  %arrayidx931 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 2, !dbg !1118
  store i16 %conv923, i16* %arrayidx931, align 2, !dbg !1118, !tbaa !1014
  %add934 = add i32 %143, 1, !dbg !1119
  %add935 = add i32 %add934, %144, !dbg !1119
  %div936 = sdiv i32 %add935, 2, !dbg !1119
  %conv937 = trunc i32 %div936 to i16, !dbg !1119
  %arrayidx941 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 3, !dbg !1119
  store i16 %conv937, i16* %arrayidx941, align 2, !dbg !1119, !tbaa !1014
  %145 = load i32* %arrayidx780, align 4, !dbg !1120, !tbaa !984
  %146 = load i64* %133, align 16, !dbg !1120
  %147 = trunc i64 %146 to i32, !dbg !1120
  %mul944 = shl i32 %147, 1, !dbg !1120
  %148 = lshr i64 %146, 32
  %149 = trunc i64 %148 to i32
  %add945 = add i32 %145, 2, !dbg !1120
  %add947 = add i32 %add945, %mul944, !dbg !1120
  %add948 = add i32 %add947, %149, !dbg !1120
  %div949 = sdiv i32 %add948, 4, !dbg !1120
  %conv950 = trunc i32 %div949 to i16, !dbg !1120
  %arrayidx954 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 3, i64 1, !dbg !1120
  store i16 %conv950, i16* %arrayidx954, align 2, !dbg !1120, !tbaa !1014
  %arrayidx958 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 1, i64 0, !dbg !1120
  store i16 %conv950, i16* %arrayidx958, align 2, !dbg !1120, !tbaa !1014
  %mul9611309 = shl nuw nsw i64 %148, 1, !dbg !1121
  %mul961 = trunc i64 %mul9611309 to i32, !dbg !1121
  %add962 = add i32 %147, 2, !dbg !1121
  %add964 = add i32 %add962, %mul961, !dbg !1121
  %add965 = add i32 %add964, %141, !dbg !1121
  %div966 = sdiv i32 %add965, 4, !dbg !1121
  %conv967 = trunc i32 %div966 to i16, !dbg !1121
  %arrayidx971 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 3, i64 2, !dbg !1121
  store i16 %conv967, i16* %arrayidx971, align 2, !dbg !1121, !tbaa !1014
  %arrayidx975 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 1, i64 1, !dbg !1121
  store i16 %conv967, i16* %arrayidx975, align 2, !dbg !1121, !tbaa !1014
  %mul978 = shl i32 %141, 1, !dbg !1122
  %150 = load i32* %arrayidx864, align 4, !dbg !1122, !tbaa !984
  %add979 = add i32 %149, 2, !dbg !1122
  %add981 = add i32 %add979, %mul978, !dbg !1122
  %add982 = add i32 %add981, %150, !dbg !1122
  %div983 = sdiv i32 %add982, 4, !dbg !1122
  %conv984 = trunc i32 %div983 to i16, !dbg !1122
  %151 = load %struct.ImageParameters** @img, align 8, !dbg !1122, !tbaa !978
  %arrayidx988 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 3, i64 3, !dbg !1122
  store i16 %conv984, i16* %arrayidx988, align 2, !dbg !1122, !tbaa !1014
  %arrayidx992 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 1, i64 2, !dbg !1122
  store i16 %conv984, i16* %arrayidx992, align 2, !dbg !1122, !tbaa !1014
  %152 = load i64* %139, align 8, !dbg !1123
  %153 = trunc i64 %152 to i32, !dbg !1123
  %154 = lshr i64 %152, 32
  %155 = trunc i64 %154 to i32
  %mul9951310 = shl nuw nsw i64 %154, 1, !dbg !1123
  %mul995 = trunc i64 %mul9951310 to i32, !dbg !1123
  %156 = load i32* %arrayidx881, align 16, !dbg !1123, !tbaa !984
  %add996 = add i32 %153, 2, !dbg !1123
  %add998 = add i32 %add996, %mul995, !dbg !1123
  %add999 = add i32 %add998, %156, !dbg !1123
  %div1000 = sdiv i32 %add999, 4, !dbg !1123
  %conv1001 = trunc i32 %div1000 to i16, !dbg !1123
  %arrayidx1005 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 1, i64 3, !dbg !1123
  store i16 %conv1001, i16* %arrayidx1005, align 2, !dbg !1123, !tbaa !1014
  %mul1008 = shl i32 %145, 1, !dbg !1124
  %157 = load i64* %127, align 8, !dbg !1124
  %158 = trunc i64 %157 to i32, !dbg !1124
  %add1011 = add i32 %add962, %mul1008, !dbg !1124
  %add1012 = add i32 %add1011, %158, !dbg !1124
  %div1013 = sdiv i32 %add1012, 4, !dbg !1124
  %conv1014 = trunc i32 %div1013 to i16, !dbg !1124
  %arrayidx1018 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 2, i64 0, !dbg !1124
  store i16 %conv1014, i16* %arrayidx1018, align 2, !dbg !1124, !tbaa !1014
  %mul1021 = shl i32 %158, 1, !dbg !1125
  %159 = lshr i64 %157, 32
  %160 = trunc i64 %159 to i32
  %add1024 = add i32 %add945, %mul1021, !dbg !1125
  %add1025 = add i32 %add1024, %160, !dbg !1125
  %div1026 = sdiv i32 %add1025, 4, !dbg !1125
  %conv1027 = trunc i32 %div1026 to i16, !dbg !1125
  %arrayidx1031 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 3, i64 0, !dbg !1125
  store i16 %conv1027, i16* %arrayidx1031, align 2, !dbg !1125, !tbaa !1014
  %add1034 = add i32 %147, 1, !dbg !1126
  %add1035 = add i32 %add1034, %145, !dbg !1126
  %div1036 = sdiv i32 %add1035, 2, !dbg !1126
  %conv1037 = trunc i32 %div1036 to i16, !dbg !1126
  %arrayidx1041 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 1, i64 2, !dbg !1126
  store i16 %conv1037, i16* %arrayidx1041, align 2, !dbg !1126, !tbaa !1014
  %arrayidx1045 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 0, !dbg !1126
  store i16 %conv1037, i16* %arrayidx1045, align 2, !dbg !1126, !tbaa !1014
  %arrayidx1058 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 1, i64 3, !dbg !1127
  store i16 %conv950, i16* %arrayidx1058, align 2, !dbg !1127, !tbaa !1014
  %arrayidx1062 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 1, !dbg !1127
  store i16 %conv950, i16* %arrayidx1062, align 2, !dbg !1127, !tbaa !1014
  %161 = load i64* %133, align 16, !dbg !1128
  %162 = trunc i64 %161 to i32, !dbg !1128
  %163 = lshr i64 %161, 32
  %164 = trunc i64 %163 to i32
  %mul10651311 = shl nuw nsw i64 %163, 1, !dbg !1128
  %mul1065 = trunc i64 %mul10651311 to i32, !dbg !1128
  %add1066 = add i32 %162, 2, !dbg !1128
  %add1068 = add i32 %add1066, %mul1065, !dbg !1128
  %add1069 = add i32 %add1068, %153, !dbg !1128
  %div1070 = sdiv i32 %add1069, 4, !dbg !1128
  %conv1071 = trunc i32 %div1070 to i16, !dbg !1128
  %arrayidx1075 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 2, !dbg !1128
  store i16 %conv1071, i16* %arrayidx1075, align 2, !dbg !1128, !tbaa !1014
  %mul1078 = shl i32 %153, 1, !dbg !1129
  %add1079 = add i32 %164, 2, !dbg !1129
  %add1081 = add i32 %add1079, %mul1078, !dbg !1129
  %add1082 = add i32 %add1081, %155, !dbg !1129
  %div1083 = sdiv i32 %add1082, 4, !dbg !1129
  %conv1084 = trunc i32 %div1083 to i16, !dbg !1129
  %arrayidx1088 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 3, !dbg !1129
  store i16 %conv1084, i16* %arrayidx1088, align 2, !dbg !1129, !tbaa !1014
  %165 = load i32* %arrayidx780, align 4, !dbg !1130, !tbaa !984
  %add1091 = add i32 %165, 1, !dbg !1130
  %add1092 = add i32 %add1091, %158, !dbg !1130
  %div1093 = sdiv i32 %add1092, 2, !dbg !1130
  %conv1094 = trunc i32 %div1093 to i16, !dbg !1130
  %166 = load %struct.ImageParameters** @img, align 8, !dbg !1130, !tbaa !978
  %arrayidx1098 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 2, !dbg !1130
  store i16 %conv1094, i16* %arrayidx1098, align 2, !dbg !1130, !tbaa !1014
  %arrayidx1102 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 1, i64 0, !dbg !1130
  store i16 %conv1094, i16* %arrayidx1102, align 2, !dbg !1130, !tbaa !1014
  %mul1105 = shl i32 %165, 1, !dbg !1131
  %add1108 = add i32 %add1066, %mul1105, !dbg !1131
  %add1109 = add i32 %add1108, %158, !dbg !1131
  %div1110 = sdiv i32 %add1109, 4, !dbg !1131
  %conv1111 = trunc i32 %div1110 to i16, !dbg !1131
  %arrayidx1115 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 3, !dbg !1131
  store i16 %conv1111, i16* %arrayidx1115, align 2, !dbg !1131, !tbaa !1014
  %arrayidx1119 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 1, i64 1, !dbg !1131
  store i16 %conv1111, i16* %arrayidx1119, align 2, !dbg !1131, !tbaa !1014
  %add1122 = add i32 %158, 1, !dbg !1132
  %add1123 = add i32 %add1122, %160, !dbg !1132
  %div1124 = sdiv i32 %add1123, 2, !dbg !1132
  %conv1125 = trunc i32 %div1124 to i16, !dbg !1132
  %arrayidx1129 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 2, !dbg !1132
  store i16 %conv1125, i16* %arrayidx1129, align 2, !dbg !1132, !tbaa !1014
  %arrayidx1133 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 0, !dbg !1132
  store i16 %conv1125, i16* %arrayidx1133, align 2, !dbg !1132, !tbaa !1014
  %167 = load i64* %127, align 8, !dbg !1133
  %168 = trunc i64 %167 to i32, !dbg !1133
  %mul1136 = shl i32 %168, 1, !dbg !1133
  %169 = lshr i64 %167, 32
  %170 = trunc i64 %169 to i32
  %add1137 = add i32 %165, 2, !dbg !1133
  %add1139 = add i32 %add1137, %mul1136, !dbg !1133
  %add1140 = add i32 %add1139, %170, !dbg !1133
  %div1141 = sdiv i32 %add1140, 4, !dbg !1133
  %conv1142 = trunc i32 %div1141 to i16, !dbg !1133
  %arrayidx1146 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 3, !dbg !1133
  store i16 %conv1142, i16* %arrayidx1146, align 2, !dbg !1133, !tbaa !1014
  %arrayidx1150 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 1, !dbg !1133
  store i16 %conv1142, i16* %arrayidx1150, align 2, !dbg !1133, !tbaa !1014
  %171 = load i32* %arrayidx763, align 16, !dbg !1134, !tbaa !984
  %add1153 = add i32 %170, 1, !dbg !1134
  %add1154 = add i32 %add1153, %171, !dbg !1134
  %div1155 = sdiv i32 %add1154, 2, !dbg !1134
  %conv1156 = trunc i32 %div1155 to i16, !dbg !1134
  %arrayidx1160 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 0, !dbg !1134
  store i16 %conv1156, i16* %arrayidx1160, align 2, !dbg !1134, !tbaa !1014
  %mul11631312 = shl nuw nsw i64 %169, 1, !dbg !1135
  %mul1163 = trunc i64 %mul11631312 to i32, !dbg !1135
  %add1164 = add i32 %168, 2, !dbg !1135
  %add1166 = add i32 %add1164, %mul1163, !dbg !1135
  %add1167 = add i32 %add1166, %171, !dbg !1135
  %div1168 = sdiv i32 %add1167, 4, !dbg !1135
  %conv1169 = trunc i32 %div1168 to i16, !dbg !1135
  %arrayidx1173 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 1, !dbg !1135
  store i16 %conv1169, i16* %arrayidx1173, align 2, !dbg !1135, !tbaa !1014
  br label %if.end1174, !dbg !1136

if.end1174:                                       ; preds = %if.end756, %if.then762
  call void @llvm.lifetime.end(i64 96, i8* %5) #2, !dbg !1137
  call void @llvm.lifetime.end(i64 52, i8* %0) #2, !dbg !1137
  ret void, !dbg !1137
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @intrapred_luma_16x16() #0 {
entry:
  %s = alloca [16 x [2 x i32]], align 16
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !70), !dbg !1138
  %0 = bitcast [16 x [2 x i32]]* %s to i8*, !dbg !1139
  call void @llvm.lifetime.start(i64 128, i8* %0) #2, !dbg !1139
  call void @llvm.dbg.declare(metadata !{[16 x [2 x i32]]* %s}, metadata !73), !dbg !1139
  %1 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1140, !tbaa !978
  %imgY = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25, !dbg !1140
  %2 = load i16*** %imgY, align 8, !dbg !1140, !tbaa !978
  call void @llvm.dbg.value(metadata !{i16** %2}, i64 0, metadata !85), !dbg !1140
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !1141, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !1141
  %4 = load i32* %current_mb_nr, align 4, !dbg !1141, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !86), !dbg !1141
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %up}, metadata !87), !dbg !1142
  %5 = bitcast [17 x %struct.pix_pos]* %left to i8*, !dbg !1143
  call void @llvm.lifetime.start(i64 408, i8* %5) #2, !dbg !1143
  call void @llvm.dbg.declare(metadata !{[17 x %struct.pix_pos]* %left}, metadata !88), !dbg !1143
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !78), !dbg !1144
  br label %for.body, !dbg !1144

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv516 = phi i64 [ 0, %entry ], [ %indvars.iv.next517, %for.body ]
  %6 = add nsw i64 %indvars.iv516, 4294967295, !dbg !1146
  %arrayidx = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv516, !dbg !1146
  %7 = trunc i64 %6 to i32, !dbg !1146
  call void @getNeighbour(i32 %4, i32 -1, i32 %7, i32 1, %struct.pix_pos* %arrayidx) #4, !dbg !1146
  %indvars.iv.next517 = add i64 %indvars.iv516, 1, !dbg !1144
  %lftr.wideiv519 = trunc i64 %indvars.iv.next517 to i32, !dbg !1144
  %exitcond520 = icmp eq i32 %lftr.wideiv519, 17, !dbg !1144
  br i1 %exitcond520, label %for.end, label %for.body, !dbg !1144

for.end:                                          ; preds = %for.body
  call void @getNeighbour(i32 %4, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #4, !dbg !1148
  %8 = load %struct.InputParameters** @input, align 8, !dbg !1149, !tbaa !978
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 24, !dbg !1149
  %9 = load i32* %UseConstrainedIntraPred, align 4, !dbg !1149, !tbaa !984
  %tobool = icmp eq i32 %9, 0, !dbg !1149
  %available5 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0, !dbg !1150
  %10 = load i32* %available5, align 4, !dbg !1150, !tbaa !984
  br i1 %tobool, label %if.then, label %if.else, !dbg !1149

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !92), !dbg !1152
  %available2 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 1, i32 0, !dbg !1154
  %11 = load i32* %available2, align 8, !dbg !1154, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !93), !dbg !1154
  %available4 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 0, !dbg !1155
  %12 = load i32* %available4, align 16, !dbg !1155, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !94), !dbg !1155
  br label %if.end, !dbg !1156

if.else:                                          ; preds = %for.end
  %tobool6 = icmp eq i32 %10, 0, !dbg !1150
  br i1 %tobool6, label %if.else.cond.end_crit_edge, label %cond.true, !dbg !1150

if.else.cond.end_crit_edge:                       ; preds = %if.else
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1157, !tbaa !978
  br label %cond.end, !dbg !1150

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1, !dbg !1150
  %13 = load i32* %mb_addr, align 4, !dbg !1150, !tbaa !984
  %idxprom7 = sext i32 %13 to i64, !dbg !1150
  %14 = load %struct.ImageParameters** @img, align 8, !dbg !1150, !tbaa !978
  %intra_block = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 54, !dbg !1150
  %15 = load i32** %intra_block, align 8, !dbg !1150, !tbaa !978
  %arrayidx8 = getelementptr inbounds i32* %15, i64 %idxprom7, !dbg !1150
  %16 = load i32* %arrayidx8, align 4, !dbg !1150, !tbaa !984
  br label %cond.end, !dbg !1150

cond.end:                                         ; preds = %if.else.cond.end_crit_edge, %cond.true
  %17 = phi %struct.ImageParameters* [ %14, %cond.true ], [ %.pre, %if.else.cond.end_crit_edge ]
  %cond = phi i32 [ %16, %cond.true ], [ 0, %if.else.cond.end_crit_edge ], !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !92), !dbg !1150
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !78), !dbg !1160
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !93), !dbg !1160
  %intra_block21 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 54, !dbg !1157
  br label %for.body11, !dbg !1160

for.body11:                                       ; preds = %cond.end24, %cond.end
  %indvars.iv512 = phi i64 [ 1, %cond.end ], [ %indvars.iv.next513, %cond.end24 ]
  %left_avail.0477 = phi i32 [ 1, %cond.end ], [ %and, %cond.end24 ]
  %available14 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv512, i32 0, !dbg !1157
  %18 = load i32* %available14, align 8, !dbg !1157, !tbaa !984
  %tobool15 = icmp eq i32 %18, 0, !dbg !1157
  br i1 %tobool15, label %cond.end24, label %cond.true16, !dbg !1157

cond.true16:                                      ; preds = %for.body11
  %mb_addr19 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv512, i32 1, !dbg !1157
  %19 = load i32* %mb_addr19, align 4, !dbg !1157, !tbaa !984
  %idxprom20 = sext i32 %19 to i64, !dbg !1157
  %20 = load i32** %intra_block21, align 8, !dbg !1157, !tbaa !978
  %arrayidx22 = getelementptr inbounds i32* %20, i64 %idxprom20, !dbg !1157
  %21 = load i32* %arrayidx22, align 4, !dbg !1157, !tbaa !984
  br label %cond.end24, !dbg !1157

cond.end24:                                       ; preds = %for.body11, %cond.true16
  %cond25 = phi i32 [ %21, %cond.true16 ], [ 0, %for.body11 ], !dbg !1157
  %and = and i32 %cond25, %left_avail.0477, !dbg !1157
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !93), !dbg !1157
  %indvars.iv.next513 = add i64 %indvars.iv512, 1, !dbg !1160
  %lftr.wideiv514 = trunc i64 %indvars.iv.next513 to i32, !dbg !1160
  %exitcond515 = icmp eq i32 %lftr.wideiv514, 17, !dbg !1160
  br i1 %exitcond515, label %for.end28, label %for.body11, !dbg !1160

for.end28:                                        ; preds = %cond.end24
  %22 = bitcast [17 x %struct.pix_pos]* %left to i64*, !dbg !1161
  %23 = load i64* %22, align 16, !dbg !1161
  %24 = trunc i64 %23 to i32, !dbg !1161
  %tobool31 = icmp eq i32 %24, 0, !dbg !1161
  br i1 %tobool31, label %if.end, label %cond.true32, !dbg !1161

cond.true32:                                      ; preds = %for.end28
  %idxprom35 = ashr i64 %23, 32, !dbg !1161
  %25 = load i32** %intra_block21, align 8, !dbg !1161, !tbaa !978
  %arrayidx37 = getelementptr inbounds i32* %25, i64 %idxprom35, !dbg !1161
  %26 = load i32* %arrayidx37, align 4, !dbg !1161, !tbaa !984
  br label %if.end, !dbg !1161

if.end:                                           ; preds = %cond.true32, %for.end28, %if.then
  %up_avail.0 = phi i32 [ %10, %if.then ], [ %cond, %for.end28 ], [ %cond, %cond.true32 ]
  %left_avail.1 = phi i32 [ %11, %if.then ], [ %and, %for.end28 ], [ %and, %cond.true32 ]
  %left_up_avail.0 = phi i32 [ %12, %if.then ], [ 0, %for.end28 ], [ %26, %cond.true32 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !72), !dbg !1162
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !71), !dbg !1162
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !78), !dbg !1163
  %tobool44 = icmp ne i32 %up_avail.0, 0, !dbg !1165
  %pos_x = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 4, !dbg !1167
  %27 = load i32* %pos_x, align 4, !dbg !1167, !tbaa !984
  %pos_y = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 5, !dbg !1167
  %28 = load i32* %pos_y, align 4, !dbg !1167, !tbaa !984
  %idxprom47 = sext i32 %28 to i64, !dbg !1167
  %arrayidx48 = getelementptr inbounds i16** %2, i64 %idxprom47, !dbg !1167
  %tobool52 = icmp eq i32 %left_avail.1, 0, !dbg !1168
  %29 = sext i32 %27 to i64, !dbg !1163
  br label %for.body43, !dbg !1163

for.body43:                                       ; preds = %for.inc69, %if.end
  %indvars.iv506 = phi i64 [ 0, %if.end ], [ %indvars.iv.next507.pre, %for.inc69 ]
  %s1.0475 = phi i32 [ 0, %if.end ], [ %s1.1, %for.inc69 ]
  %s2.0474 = phi i32 [ 0, %if.end ], [ %s2.1, %for.inc69 ]
  br i1 %tobool44, label %if.then45, label %if.end51, !dbg !1165

if.then45:                                        ; preds = %for.body43
  %30 = add nsw i64 %29, %indvars.iv506, !dbg !1167
  %31 = load i16** %arrayidx48, align 8, !dbg !1167, !tbaa !978
  %arrayidx49 = getelementptr inbounds i16* %31, i64 %30, !dbg !1167
  %32 = load i16* %arrayidx49, align 2, !dbg !1167, !tbaa !1014
  %conv = zext i16 %32 to i32, !dbg !1167
  %add50 = add nsw i32 %conv, %s1.0475, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %add50}, i64 0, metadata !71), !dbg !1167
  br label %if.end51, !dbg !1167

if.end51:                                         ; preds = %if.then45, %for.body43
  %s1.1 = phi i32 [ %add50, %if.then45 ], [ %s1.0475, %for.body43 ]
  %indvars.iv.next507.pre = add i64 %indvars.iv506, 1, !dbg !1163
  br i1 %tobool52, label %for.inc69, label %if.then53, !dbg !1168

if.then53:                                        ; preds = %if.end51
  %pos_x57 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next507.pre, i32 4, !dbg !1169
  %33 = load i32* %pos_x57, align 8, !dbg !1169, !tbaa !984
  %idxprom58 = sext i32 %33 to i64, !dbg !1169
  %pos_y62 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next507.pre, i32 5, !dbg !1169
  %34 = load i32* %pos_y62, align 4, !dbg !1169, !tbaa !984
  %idxprom63 = sext i32 %34 to i64, !dbg !1169
  %arrayidx64 = getelementptr inbounds i16** %2, i64 %idxprom63, !dbg !1169
  %35 = load i16** %arrayidx64, align 8, !dbg !1169, !tbaa !978
  %arrayidx65 = getelementptr inbounds i16* %35, i64 %idxprom58, !dbg !1169
  %36 = load i16* %arrayidx65, align 2, !dbg !1169, !tbaa !1014
  %conv66 = zext i16 %36 to i32, !dbg !1169
  %add67 = add nsw i32 %conv66, %s2.0474, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %add67}, i64 0, metadata !72), !dbg !1169
  br label %for.inc69, !dbg !1169

for.inc69:                                        ; preds = %if.end51, %if.then53
  %s2.1 = phi i32 [ %add67, %if.then53 ], [ %s2.0474, %if.end51 ]
  %lftr.wideiv510 = trunc i64 %indvars.iv.next507.pre to i32, !dbg !1163
  %exitcond511 = icmp eq i32 %lftr.wideiv510, 16, !dbg !1163
  br i1 %exitcond511, label %for.end71, label %for.body43, !dbg !1163

for.end71:                                        ; preds = %for.inc69
  %tobool44.not = xor i1 %tobool44, true, !dbg !1170
  %or.cond = or i1 %tobool52, %tobool44.not, !dbg !1170
  br i1 %or.cond, label %if.end77, label %if.then74, !dbg !1170

if.then74:                                        ; preds = %for.end71
  %add75 = add i32 %s2.1, 16, !dbg !1171
  %add76 = add i32 %add75, %s1.1, !dbg !1171
  %div = sdiv i32 %add76, 32, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !70), !dbg !1171
  br label %if.end77, !dbg !1171

if.end77:                                         ; preds = %for.end71, %if.then74
  %s0.0 = phi i32 [ %div, %if.then74 ], [ 0, %for.end71 ]
  %or.cond457 = or i1 %tobool44, %tobool52, !dbg !1172
  br i1 %or.cond457, label %if.end84, label %if.then81, !dbg !1172

if.then81:                                        ; preds = %if.end77
  %add82 = add nsw i32 %s2.1, 8, !dbg !1173
  %div83 = sdiv i32 %add82, 16, !dbg !1173
  call void @llvm.dbg.value(metadata !{i32 %div83}, i64 0, metadata !70), !dbg !1173
  br label %if.end84, !dbg !1173

if.end84:                                         ; preds = %if.then81, %if.end77
  %s0.1 = phi i32 [ %s0.0, %if.end77 ], [ %div83, %if.then81 ]
  %or.cond458 = and i1 %tobool44, %tobool52, !dbg !1174
  br i1 %or.cond458, label %if.then88, label %if.end91, !dbg !1174

if.then88:                                        ; preds = %if.end84
  %add89 = add nsw i32 %s1.1, 8, !dbg !1175
  %div90 = sdiv i32 %add89, 16, !dbg !1175
  call void @llvm.dbg.value(metadata !{i32 %div90}, i64 0, metadata !70), !dbg !1175
  br label %if.end91, !dbg !1175

if.end91:                                         ; preds = %if.then88, %if.end84
  %s0.2 = phi i32 [ %div90, %if.then88 ], [ %s0.1, %if.end84 ]
  %or.cond460 = and i1 %tobool52, %tobool44.not, !dbg !1176
  br i1 %or.cond460, label %if.then95, label %if.end96, !dbg !1176

if.then95:                                        ; preds = %if.end91
  %37 = load %struct.ImageParameters** @img, align 8, !dbg !1177, !tbaa !978
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 154, !dbg !1177
  %38 = load i32* %dc_pred_value, align 4, !dbg !1177, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !70), !dbg !1177
  br label %if.end96, !dbg !1177

if.end96:                                         ; preds = %if.end91, %if.then95
  %s0.3 = phi i32 [ %s0.2, %if.end91 ], [ %38, %if.then95 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !78), !dbg !1178
  br label %for.body100, !dbg !1178

for.cond137.preheader:                            ; preds = %for.inc134
  %39 = load %struct.ImageParameters** @img, align 8, !dbg !1180, !tbaa !978
  %conv164 = trunc i32 %s0.3 to i16, !dbg !1185
  br label %for.cond141.preheader, !dbg !1186

for.body100:                                      ; preds = %for.inc134, %if.end96
  %indvars.iv500 = phi i64 [ 0, %if.end96 ], [ %indvars.iv.next501.pre, %for.inc134 ]
  br i1 %tobool44, label %if.then102, label %if.end114, !dbg !1187

if.then102:                                       ; preds = %for.body100
  %40 = add nsw i64 %29, %indvars.iv500, !dbg !1189
  %41 = load i16** %arrayidx48, align 8, !dbg !1189, !tbaa !978
  %arrayidx109 = getelementptr inbounds i16* %41, i64 %40, !dbg !1189
  %42 = load i16* %arrayidx109, align 2, !dbg !1189, !tbaa !1014
  %conv110 = zext i16 %42 to i32, !dbg !1189
  %arrayidx113 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv500, i64 0, !dbg !1189
  store i32 %conv110, i32* %arrayidx113, align 8, !dbg !1189, !tbaa !984
  br label %if.end114, !dbg !1189

if.end114:                                        ; preds = %if.then102, %for.body100
  %indvars.iv.next501.pre = add i64 %indvars.iv500, 1, !dbg !1178
  br i1 %tobool52, label %for.inc134, label %if.then116, !dbg !1190

if.then116:                                       ; preds = %if.end114
  %pos_x120 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next501.pre, i32 4, !dbg !1191
  %43 = load i32* %pos_x120, align 8, !dbg !1191, !tbaa !984
  %idxprom121 = sext i32 %43 to i64, !dbg !1191
  %pos_y125 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next501.pre, i32 5, !dbg !1191
  %44 = load i32* %pos_y125, align 4, !dbg !1191, !tbaa !984
  %idxprom126 = sext i32 %44 to i64, !dbg !1191
  %arrayidx127 = getelementptr inbounds i16** %2, i64 %idxprom126, !dbg !1191
  %45 = load i16** %arrayidx127, align 8, !dbg !1191, !tbaa !978
  %arrayidx128 = getelementptr inbounds i16* %45, i64 %idxprom121, !dbg !1191
  %46 = load i16* %arrayidx128, align 2, !dbg !1191, !tbaa !1014
  %conv129 = zext i16 %46 to i32, !dbg !1191
  %arrayidx132 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv500, i64 1, !dbg !1191
  store i32 %conv129, i32* %arrayidx132, align 4, !dbg !1191, !tbaa !984
  br label %for.inc134, !dbg !1191

for.inc134:                                       ; preds = %if.end114, %if.then116
  %lftr.wideiv504 = trunc i64 %indvars.iv.next501.pre to i32, !dbg !1178
  %exitcond505 = icmp eq i32 %lftr.wideiv504, 16, !dbg !1178
  br i1 %exitcond505, label %for.cond137.preheader, label %for.body100, !dbg !1178

for.cond141.preheader:                            ; preds = %for.inc174, %for.cond137.preheader
  %indvars.iv496 = phi i64 [ 0, %for.cond137.preheader ], [ %indvars.iv.next497, %for.inc174 ]
  %arrayidx156 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv496, i64 1, !dbg !1192
  %47 = load i32* %arrayidx156, align 4, !dbg !1192, !tbaa !984
  %conv157 = trunc i32 %47 to i16, !dbg !1192
  br label %for.body144, !dbg !1193

for.body144:                                      ; preds = %for.body144, %for.cond141.preheader
  %indvars.iv492 = phi i64 [ 0, %for.cond141.preheader ], [ %indvars.iv.next493, %for.body144 ]
  %arrayidx147 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv492, i64 0, !dbg !1180
  %48 = load i32* %arrayidx147, align 8, !dbg !1180, !tbaa !984
  %conv148 = trunc i32 %48 to i16, !dbg !1180
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 0, i64 %indvars.iv496, i64 %indvars.iv492, !dbg !1180
  store i16 %conv148, i16* %arrayidx153, align 2, !dbg !1180, !tbaa !1014
  %arrayidx163 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 1, i64 %indvars.iv496, i64 %indvars.iv492, !dbg !1192
  store i16 %conv157, i16* %arrayidx163, align 2, !dbg !1192, !tbaa !1014
  %arrayidx170 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 2, i64 %indvars.iv496, i64 %indvars.iv492, !dbg !1185
  store i16 %conv164, i16* %arrayidx170, align 2, !dbg !1185, !tbaa !1014
  %indvars.iv.next493 = add i64 %indvars.iv492, 1, !dbg !1193
  %lftr.wideiv494 = trunc i64 %indvars.iv.next493 to i32, !dbg !1193
  %exitcond495 = icmp eq i32 %lftr.wideiv494, 16, !dbg !1193
  br i1 %exitcond495, label %for.inc174, label %for.body144, !dbg !1193

for.inc174:                                       ; preds = %for.body144
  %indvars.iv.next497 = add i64 %indvars.iv496, 1, !dbg !1186
  %lftr.wideiv498 = trunc i64 %indvars.iv.next497 to i32, !dbg !1186
  %exitcond499 = icmp eq i32 %lftr.wideiv498, 16, !dbg !1186
  br i1 %exitcond499, label %for.end176, label %for.cond141.preheader, !dbg !1186

for.end176:                                       ; preds = %for.inc174
  %tobool180 = icmp eq i32 %left_up_avail.0, 0, !dbg !1194
  %or.cond463 = or i1 %or.cond, %tobool180, !dbg !1194
  br i1 %or.cond463, label %cleanup, label %for.cond183.preheader, !dbg !1194

for.cond183.preheader:                            ; preds = %for.end176
  %add191 = add nsw i32 %27, 7, !dbg !1195
  %49 = load i16** %arrayidx48, align 8, !dbg !1195, !tbaa !978
  %pos_x221 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 4, !dbg !1198
  %50 = bitcast i32* %pos_x221 to i64*, !dbg !1198
  %51 = load i64* %50, align 16, !dbg !1198
  %sext = shl i64 %51, 32, !dbg !1198
  %idxprom222 = ashr exact i64 %sext, 32, !dbg !1198
  %idxprom225 = ashr i64 %51, 32, !dbg !1198
  %arrayidx226 = getelementptr inbounds i16** %2, i64 %idxprom225, !dbg !1198
  %52 = sext i32 %add191 to i64, !dbg !1199
  br label %for.body186, !dbg !1199

for.body186:                                      ; preds = %if.end232, %for.cond183.preheader
  %indvars.iv485 = phi i64 [ 1, %for.cond183.preheader ], [ %indvars.iv.next486, %if.end232 ]
  %iv.0468 = phi i32 [ 0, %for.cond183.preheader ], [ %add261, %if.end232 ]
  %ih.0467 = phi i32 [ 0, %for.cond183.preheader ], [ %ih.1, %if.end232 ]
  %53 = trunc i64 %indvars.iv485 to i32, !dbg !1200
  %cmp187 = icmp slt i32 %53, 8, !dbg !1200
  %54 = add nsw i64 %52, %indvars.iv485, !dbg !1195
  %arrayidx197 = getelementptr inbounds i16* %49, i64 %54, !dbg !1195
  %55 = load i16* %arrayidx197, align 2, !dbg !1195, !tbaa !1014
  %conv198 = zext i16 %55 to i32, !dbg !1195
  br i1 %cmp187, label %if.then189, label %if.else210, !dbg !1200

if.then189:                                       ; preds = %for.body186
  %sub201 = sub nsw i32 %add191, %53, !dbg !1195
  %idxprom202 = sext i32 %sub201 to i64, !dbg !1195
  %arrayidx206 = getelementptr inbounds i16* %49, i64 %idxprom202, !dbg !1195
  br label %if.end232, !dbg !1195

if.else210:                                       ; preds = %for.body186
  %56 = load i16** %arrayidx226, align 8, !dbg !1198, !tbaa !978
  %arrayidx227 = getelementptr inbounds i16* %56, i64 %idxprom222, !dbg !1198
  br label %if.end232

if.end232:                                        ; preds = %if.else210, %if.then189
  %conv207.pn.in.in = phi i16* [ %arrayidx206, %if.then189 ], [ %arrayidx227, %if.else210 ]
  %conv207.pn.in = load i16* %conv207.pn.in.in, align 2, !dbg !1195
  %conv207.pn = zext i16 %conv207.pn.in to i32, !dbg !1195
  %sub208.pn = sub nsw i32 %conv198, %conv207.pn, !dbg !1195
  %mul.pn = mul nsw i32 %sub208.pn, %53, !dbg !1195
  %ih.1 = add nsw i32 %mul.pn, %ih.0467, !dbg !1195
  %57 = add nsw i64 %indvars.iv485, 8, !dbg !1201
  %pos_x236 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %57, i32 4, !dbg !1201
  %58 = load i32* %pos_x236, align 8, !dbg !1201, !tbaa !984
  %idxprom237 = sext i32 %58 to i64, !dbg !1201
  %pos_y241 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %57, i32 5, !dbg !1201
  %59 = load i32* %pos_y241, align 4, !dbg !1201, !tbaa !984
  %idxprom242 = sext i32 %59 to i64, !dbg !1201
  %arrayidx243 = getelementptr inbounds i16** %2, i64 %idxprom242, !dbg !1201
  %60 = load i16** %arrayidx243, align 8, !dbg !1201, !tbaa !978
  %arrayidx244 = getelementptr inbounds i16* %60, i64 %idxprom237, !dbg !1201
  %61 = load i16* %arrayidx244, align 2, !dbg !1201, !tbaa !1014
  %conv245 = zext i16 %61 to i32, !dbg !1201
  %62 = sub nsw i64 8, %indvars.iv485, !dbg !1201
  %pos_x249 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %62, i32 4, !dbg !1201
  %63 = load i32* %pos_x249, align 8, !dbg !1201, !tbaa !984
  %idxprom250 = sext i32 %63 to i64, !dbg !1201
  %pos_y254 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %62, i32 5, !dbg !1201
  %64 = load i32* %pos_y254, align 4, !dbg !1201, !tbaa !984
  %idxprom255 = sext i32 %64 to i64, !dbg !1201
  %arrayidx256 = getelementptr inbounds i16** %2, i64 %idxprom255, !dbg !1201
  %65 = load i16** %arrayidx256, align 8, !dbg !1201, !tbaa !978
  %arrayidx257 = getelementptr inbounds i16* %65, i64 %idxprom250, !dbg !1201
  %66 = load i16* %arrayidx257, align 2, !dbg !1201, !tbaa !1014
  %conv258 = zext i16 %66 to i32, !dbg !1201
  %sub259 = sub nsw i32 %conv245, %conv258, !dbg !1201
  %mul260 = mul nsw i32 %sub259, %53, !dbg !1201
  %add261 = add nsw i32 %mul260, %iv.0468, !dbg !1201
  call void @llvm.dbg.value(metadata !{i32 %add261}, i64 0, metadata !81), !dbg !1201
  %indvars.iv.next486 = add i64 %indvars.iv485, 1, !dbg !1199
  %lftr.wideiv490 = trunc i64 %indvars.iv.next486 to i32, !dbg !1199
  %exitcond491 = icmp eq i32 %lftr.wideiv490, 9, !dbg !1199
  br i1 %exitcond491, label %for.end264, label %for.body186, !dbg !1199

for.end264:                                       ; preds = %if.end232
  %mul265 = mul nsw i32 %ih.1, 5, !dbg !1202
  %add266 = add nsw i32 %mul265, 32, !dbg !1202
  %shr = ashr i32 %add266, 6, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !82), !dbg !1202
  %mul267 = mul nsw i32 %add261, 5, !dbg !1203
  %add268 = add nsw i32 %mul267, 32, !dbg !1203
  %shr269 = ashr i32 %add268, 6, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32 %shr269}, i64 0, metadata !83), !dbg !1203
  %add271 = add nsw i32 %27, 15, !dbg !1204
  %idxprom272 = sext i32 %add271 to i64, !dbg !1204
  %arrayidx276 = getelementptr inbounds i16* %49, i64 %idxprom272, !dbg !1204
  %67 = load i16* %arrayidx276, align 2, !dbg !1204, !tbaa !1014
  %conv277 = zext i16 %67 to i32, !dbg !1204
  %pos_x279 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 16, i32 4, !dbg !1204
  %68 = bitcast i32* %pos_x279 to i64*, !dbg !1204
  %69 = load i64* %68, align 16, !dbg !1204
  %sext522 = shl i64 %69, 32, !dbg !1204
  %idxprom280 = ashr exact i64 %sext522, 32, !dbg !1204
  %idxprom283 = ashr i64 %69, 32, !dbg !1204
  %arrayidx284 = getelementptr inbounds i16** %2, i64 %idxprom283, !dbg !1204
  %70 = load i16** %arrayidx284, align 8, !dbg !1204, !tbaa !978
  %arrayidx285 = getelementptr inbounds i16* %70, i64 %idxprom280, !dbg !1204
  %71 = load i16* %arrayidx285, align 2, !dbg !1204, !tbaa !1014
  %conv286 = zext i16 %71 to i32, !dbg !1204
  %add287 = add nsw i32 %conv286, %conv277, !dbg !1204
  %mul288 = shl nsw i32 %add287, 4, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %mul288}, i64 0, metadata !84), !dbg !1204
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !79), !dbg !1205
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 155, !dbg !1207
  %72 = load i32* %max_imgpel_value, align 4, !dbg !1207, !tbaa !984
  %add299 = add i32 %mul288, 16, !dbg !1207
  br label %for.cond293.preheader, !dbg !1205

for.cond293.preheader:                            ; preds = %for.inc360, %for.end264
  %indvars.iv480 = phi i64 [ 0, %for.end264 ], [ %indvars.iv.next481, %for.inc360 ]
  %73 = add nsw i64 %indvars.iv480, 4294967289, !dbg !1207
  %74 = trunc i64 %73 to i32, !dbg !1207
  %mul301 = mul nsw i32 %74, %shr269, !dbg !1207
  %add302 = add i32 %add299, %mul301, !dbg !1207
  br label %for.body296, !dbg !1211

for.body296:                                      ; preds = %for.body296, %for.cond293.preheader
  %indvars.iv = phi i64 [ 0, %for.cond293.preheader ], [ %indvars.iv.next, %for.body296 ]
  %75 = add nsw i64 %indvars.iv, 4294967289, !dbg !1207
  %76 = trunc i64 %75 to i32, !dbg !1207
  %mul298 = mul nsw i32 %76, %shr, !dbg !1207
  %add303 = add i32 %add302, %mul298, !dbg !1207
  %div304 = sdiv i32 %add303, 32, !dbg !1207
  %cmp305 = icmp slt i32 %72, %div304, !dbg !1207
  %.div304 = select i1 %cmp305, i32 %72, i32 %div304, !dbg !1207
  %cmp320 = icmp slt i32 %.div304, 0, !dbg !1207
  %77 = trunc i32 %.div304 to i16, !dbg !1207
  %conv350 = select i1 %cmp320, i16 0, i16 %77, !dbg !1207
  %arrayidx356 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 3, i64 %indvars.iv480, i64 %indvars.iv, !dbg !1207
  store i16 %conv350, i16* %arrayidx356, align 2, !dbg !1207, !tbaa !1014
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1211
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1211
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !1211
  br i1 %exitcond, label %for.inc360, label %for.body296, !dbg !1211

for.inc360:                                       ; preds = %for.body296
  %indvars.iv.next481 = add i64 %indvars.iv480, 1, !dbg !1205
  %lftr.wideiv483 = trunc i64 %indvars.iv.next481 to i32, !dbg !1205
  %exitcond484 = icmp eq i32 %lftr.wideiv483, 16, !dbg !1205
  br i1 %exitcond484, label %cleanup, label %for.cond293.preheader, !dbg !1205

cleanup:                                          ; preds = %for.inc360, %for.end176
  call void @llvm.lifetime.end(i64 408, i8* %5) #2, !dbg !1212
  call void @llvm.lifetime.end(i64 128, i8* %0) #2, !dbg !1212
  ret void, !dbg !1213
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma_16x16(i32 %new_intra_mode) #0 {
entry:
  %M1 = alloca [16 x [16 x i32]], align 16
  %M4 = alloca [4 x [4 x i32]], align 16
  %M5 = alloca [4 x i32], align 16
  %M51784 = bitcast [4 x i32]* %M5 to i8*
  %M6 = alloca [4 x i32], align 16
  %M0 = alloca [4 x [4 x [4 x [4 x i32]]]], align 16
  call void @llvm.dbg.value(metadata !{i32 %new_intra_mode}, i64 0, metadata !99), !dbg !1214
  %0 = bitcast [16 x [16 x i32]]* %M1 to i8*, !dbg !1215
  call void @llvm.lifetime.start(i64 1024, i8* %0) #2, !dbg !1215
  call void @llvm.dbg.declare(metadata !{[16 x [16 x i32]]* %M1}, metadata !106), !dbg !1215
  %1 = bitcast [4 x [4 x i32]]* %M4 to i8*, !dbg !1216
  call void @llvm.lifetime.start(i64 64, i8* %1) #2, !dbg !1216
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i32]]* %M4}, metadata !109), !dbg !1216
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %M5}, metadata !112), !dbg !1217
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %M6}, metadata !114), !dbg !1217
  %2 = bitcast [4 x [4 x [4 x [4 x i32]]]]* %M0 to i8*, !dbg !1218
  call void @llvm.lifetime.start(i64 1024, i8* %2) #2, !dbg !1218
  call void @llvm.dbg.declare(metadata !{[4 x [4 x [4 x [4 x i32]]]]* %M0}, metadata !115), !dbg !1218
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !125), !dbg !1219
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !1220, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !1220
  %4 = load i32* %current_mb_nr, align 4, !dbg !1220, !tbaa !984
  %idxprom = sext i32 %4 to i64, !dbg !1220
  %mb_data = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 51, !dbg !1220
  %5 = load %struct.macroblock** %mb_data, align 8, !dbg !1220, !tbaa !978
  %cofDC = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 48, !dbg !1221
  %6 = load i32**** %cofDC, align 8, !dbg !1221, !tbaa !978
  %7 = load i32*** %6, align 8, !dbg !1221, !tbaa !978
  %8 = load i32** %7, align 8, !dbg !1221, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !192), !dbg !1221
  %arrayidx5 = getelementptr inbounds i32** %7, i64 1, !dbg !1222
  %9 = load i32** %arrayidx5, align 8, !dbg !1222, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %9}, i64 0, metadata !193), !dbg !1222
  %qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3, !dbg !1223
  %10 = load i32* %qp, align 4, !dbg !1223, !tbaa !984
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 151, !dbg !1223
  %11 = load i32* %bitdepth_luma_qp_scale, align 4, !dbg !1223, !tbaa !984
  %add = sub i32 0, %11, !dbg !1223
  %cmp = icmp eq i32 %10, %add, !dbg !1223
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1223

land.rhs:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 160, !dbg !1223
  %12 = load i32* %lossless_qpprime_flag, align 4, !dbg !1223, !tbaa !984
  %cmp6 = icmp eq i32 %12, 1, !dbg !1223
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %add9 = add nsw i32 %11, %10, !dbg !1224
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !122), !dbg !1224
  %rem = srem i32 %add9, 6, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !123), !dbg !1225
  call void @llvm.dbg.value(metadata !{i32 %add14}, i64 0, metadata !124), !dbg !1226
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1227
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 164, !dbg !1229
  %opix_x = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 37, !dbg !1233
  %opix_y = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 38, !dbg !1233
  %14 = load i16*** @imgY_org, align 8, !dbg !1233, !tbaa !978
  %idxprom27 = sext i32 %new_intra_mode to i64, !dbg !1233
  br label %for.cond16.preheader, !dbg !1227

for.cond16.preheader:                             ; preds = %for.inc61, %land.end
  %indvars.iv1858 = phi i64 [ 0, %land.end ], [ %indvars.iv.next1859, %for.inc61 ]
  %15 = trunc i64 %indvars.iv1858 to i32, !dbg !1234
  %div49 = sdiv i32 %15, 4, !dbg !1234
  %idxprom50 = sext i32 %div49 to i64, !dbg !1234
  %rem51 = srem i32 %15, 4, !dbg !1234
  %idxprom52 = sext i32 %rem51 to i64, !dbg !1234
  br label %for.body18, !dbg !1235

for.cond64.preheader:                             ; preds = %for.inc61
  %div = sdiv i32 %add9, 6, !dbg !1224
  %add14 = add nsw i32 %div, 15, !dbg !1226
  br i1 %13, label %for.cond275.preheader, label %for.cond72.preheader.lr.ph, !dbg !1236

for.cond72.preheader.lr.ph:                       ; preds = %for.cond64.preheader
  %arrayidx146 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3, !dbg !1238
  %arrayidx147 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1238
  br label %for.cond72.preheader, !dbg !1236

for.body18:                                       ; preds = %if.end, %for.cond16.preheader
  %indvars.iv1854 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next1855, %if.end ]
  %16 = load i32* %residue_transform_flag, align 4, !dbg !1229, !tbaa !984
  %tobool = icmp eq i32 %16, 0, !dbg !1229
  br i1 %tobool, label %if.then, label %if.else, !dbg !1229

if.then:                                          ; preds = %for.body18
  %17 = load i32* %opix_x, align 4, !dbg !1233, !tbaa !984
  %18 = trunc i64 %indvars.iv1854 to i32, !dbg !1233
  %add19 = add nsw i32 %17, %18, !dbg !1233
  %idxprom20 = sext i32 %add19 to i64, !dbg !1233
  %19 = load i32* %opix_y, align 4, !dbg !1233, !tbaa !984
  %add21 = add nsw i32 %19, %15, !dbg !1233
  %idxprom22 = sext i32 %add21 to i64, !dbg !1233
  %arrayidx23 = getelementptr inbounds i16** %14, i64 %idxprom22, !dbg !1233
  %20 = load i16** %arrayidx23, align 8, !dbg !1233, !tbaa !978
  %arrayidx24 = getelementptr inbounds i16* %20, i64 %idxprom20, !dbg !1233
  %21 = load i16* %arrayidx24, align 2, !dbg !1233, !tbaa !1014
  %conv = zext i16 %21 to i32, !dbg !1233
  %arrayidx30 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1858, i64 %indvars.iv1854, !dbg !1233
  %22 = load i16* %arrayidx30, align 2, !dbg !1233, !tbaa !1014
  %conv31 = zext i16 %22 to i32, !dbg !1233
  %sub32 = sub nsw i32 %conv, %conv31, !dbg !1233
  %arrayidx36 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1854, i64 %indvars.iv1858, !dbg !1233
  store i32 %sub32, i32* %arrayidx36, align 4, !dbg !1233, !tbaa !984
  br label %if.end, !dbg !1233

if.else:                                          ; preds = %for.body18
  %arrayidx40 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 46, i64 %indvars.iv1854, i64 %indvars.iv1858, !dbg !1244
  %23 = load i32* %arrayidx40, align 4, !dbg !1244, !tbaa !984
  %arrayidx44 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1854, i64 %indvars.iv1858, !dbg !1244
  store i32 %23, i32* %arrayidx44, align 4, !dbg !1244, !tbaa !984
  %.pre1875 = trunc i64 %indvars.iv1854 to i32, !dbg !1234
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi = phi i32 [ %.pre1875, %if.else ], [ %18, %if.then ], !dbg !1234
  %24 = phi i32 [ %23, %if.else ], [ %sub32, %if.then ]
  %div53 = sdiv i32 %.pre-phi, 4, !dbg !1234
  %idxprom54 = sext i32 %div53 to i64, !dbg !1234
  %rem55 = srem i32 %.pre-phi, 4, !dbg !1234
  %idxprom56 = sext i32 %rem55 to i64, !dbg !1234
  %arrayidx60 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom56, i64 %idxprom54, i64 %idxprom52, i64 %idxprom50, !dbg !1234
  store i32 %24, i32* %arrayidx60, align 4, !dbg !1234, !tbaa !984
  %indvars.iv.next1855 = add i64 %indvars.iv1854, 1, !dbg !1235
  %lftr.wideiv1856 = trunc i64 %indvars.iv.next1855 to i32, !dbg !1235
  %exitcond1857 = icmp eq i32 %lftr.wideiv1856, 16, !dbg !1235
  br i1 %exitcond1857, label %for.inc61, label %for.body18, !dbg !1235

for.inc61:                                        ; preds = %if.end
  %indvars.iv.next1859 = add i64 %indvars.iv1858, 1, !dbg !1227
  %lftr.wideiv1860 = trunc i64 %indvars.iv.next1859 to i32, !dbg !1227
  %exitcond1861 = icmp eq i32 %lftr.wideiv1860, 16, !dbg !1227
  br i1 %exitcond1861, label %for.cond64.preheader, label %for.cond16.preheader, !dbg !1227

for.cond72.preheader:                             ; preds = %for.cond72.preheader.lr.ph, %for.inc268
  %indvars.iv1852 = phi i64 [ 0, %for.cond72.preheader.lr.ph ], [ %indvars.iv.next1853, %for.inc268 ]
  br label %for.cond76.preheader, !dbg !1245

for.cond76.preheader:                             ; preds = %for.inc265, %for.cond72.preheader
  %indvars.iv1848 = phi i64 [ 0, %for.cond72.preheader ], [ %indvars.iv.next1849, %for.inc265 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1246
  br label %for.cond80.preheader, !dbg !1248

for.cond80.preheader:                             ; preds = %for.end125, %for.cond76.preheader
  %indvars.iv1835 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next1836, %for.end125 ]
  br label %for.body83, !dbg !1246

for.body83:                                       ; preds = %for.body83, %for.cond80.preheader
  %indvars.iv1830 = phi i64 [ 0, %for.cond80.preheader ], [ %indvars.iv.next1831, %for.body83 ]
  %25 = sub nsw i64 3, %indvars.iv1830, !dbg !1249
  %arrayidx92 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1830, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1251
  %26 = load i32* %arrayidx92, align 4, !dbg !1251, !tbaa !984
  %arrayidx100 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %25, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1251
  %27 = load i32* %arrayidx100, align 4, !dbg !1251, !tbaa !984
  %add101 = add nsw i32 %27, %26, !dbg !1251
  %arrayidx103 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1830, !dbg !1251
  store i32 %add101, i32* %arrayidx103, align 4, !dbg !1251, !tbaa !984
  %sub120 = sub nsw i32 %26, %27, !dbg !1252
  %arrayidx122 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %25, !dbg !1252
  store i32 %sub120, i32* %arrayidx122, align 4, !dbg !1252, !tbaa !984
  %indvars.iv.next1831 = add i64 %indvars.iv1830, 1, !dbg !1246
  %lftr.wideiv1833 = trunc i64 %indvars.iv.next1831 to i32, !dbg !1246
  %exitcond1834 = icmp eq i32 %lftr.wideiv1833, 2, !dbg !1246
  br i1 %exitcond1834, label %for.end125, label %for.body83, !dbg !1246

for.end125:                                       ; preds = %for.body83
  %28 = bitcast [4 x i32]* %M5 to i64*, !dbg !1253
  %29 = load i64* %28, align 16, !dbg !1253
  %30 = trunc i64 %29 to i32, !dbg !1253
  %31 = lshr i64 %29, 32
  %32 = trunc i64 %31 to i32
  %add128 = add nsw i32 %32, %30, !dbg !1253
  %arrayidx135 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1253
  store i32 %add128, i32* %arrayidx135, align 4, !dbg !1253, !tbaa !984
  %sub138 = sub nsw i32 %30, %32, !dbg !1254
  %arrayidx145 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 2, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1254
  store i32 %sub138, i32* %arrayidx145, align 4, !dbg !1254, !tbaa !984
  %33 = load i32* %arrayidx146, align 4, !dbg !1238, !tbaa !984
  %mul = shl i32 %33, 1, !dbg !1238
  %34 = bitcast i32* %arrayidx147 to i64*, !dbg !1238
  %35 = load i64* %34, align 8, !dbg !1238
  %36 = trunc i64 %35 to i32, !dbg !1238
  %add148 = add nsw i32 %mul, %36, !dbg !1238
  %arrayidx155 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 1, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1238
  store i32 %add148, i32* %arrayidx155, align 4, !dbg !1238, !tbaa !984
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  %mul158 = shl nsw i32 %36, 1, !dbg !1255
  %sub159 = sub nsw i32 %38, %mul158, !dbg !1255
  %arrayidx166 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 3, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852, !dbg !1255
  store i32 %sub159, i32* %arrayidx166, align 4, !dbg !1255, !tbaa !984
  %indvars.iv.next1836 = add i64 %indvars.iv1835, 1, !dbg !1248
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1246
  %lftr.wideiv1837 = trunc i64 %indvars.iv.next1836 to i32, !dbg !1248
  %exitcond1838 = icmp eq i32 %lftr.wideiv1837, 4, !dbg !1248
  br i1 %exitcond1838, label %for.cond174.preheader, label %for.cond80.preheader, !dbg !1248

for.cond174.preheader:                            ; preds = %for.end125, %for.end219
  %indvars.iv1844 = phi i64 [ %indvars.iv.next1845, %for.end219 ], [ 0, %for.end125 ]
  br label %for.body177, !dbg !1256

for.body177:                                      ; preds = %for.body177, %for.cond174.preheader
  %indvars.iv1839 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next1840, %for.body177 ]
  %39 = sub nsw i64 3, %indvars.iv1839, !dbg !1260
  %arrayidx186 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 %indvars.iv1839, i64 %indvars.iv1852, !dbg !1262
  %40 = load i32* %arrayidx186, align 4, !dbg !1262, !tbaa !984
  %arrayidx194 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 %39, i64 %indvars.iv1852, !dbg !1262
  %41 = load i32* %arrayidx194, align 4, !dbg !1262, !tbaa !984
  %add195 = add nsw i32 %41, %40, !dbg !1262
  %arrayidx197 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1839, !dbg !1262
  store i32 %add195, i32* %arrayidx197, align 4, !dbg !1262, !tbaa !984
  %sub214 = sub nsw i32 %40, %41, !dbg !1263
  %arrayidx216 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %39, !dbg !1263
  store i32 %sub214, i32* %arrayidx216, align 4, !dbg !1263, !tbaa !984
  %indvars.iv.next1840 = add i64 %indvars.iv1839, 1, !dbg !1256
  %lftr.wideiv1842 = trunc i64 %indvars.iv.next1840 to i32, !dbg !1256
  %exitcond1843 = icmp eq i32 %lftr.wideiv1842, 2, !dbg !1256
  br i1 %exitcond1843, label %for.end219, label %for.body177, !dbg !1256

for.end219:                                       ; preds = %for.body177
  %42 = load i64* %28, align 16, !dbg !1264
  %43 = trunc i64 %42 to i32, !dbg !1264
  %44 = lshr i64 %42, 32
  %45 = trunc i64 %44 to i32
  %add222 = add nsw i32 %45, %43, !dbg !1264
  %arrayidx229 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 0, i64 %indvars.iv1852, !dbg !1264
  store i32 %add222, i32* %arrayidx229, align 4, !dbg !1264, !tbaa !984
  %sub232 = sub nsw i32 %43, %45, !dbg !1265
  %arrayidx239 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 2, i64 %indvars.iv1852, !dbg !1265
  store i32 %sub232, i32* %arrayidx239, align 4, !dbg !1265, !tbaa !984
  %46 = load i32* %arrayidx146, align 4, !dbg !1266, !tbaa !984
  %mul241 = shl i32 %46, 1, !dbg !1266
  %47 = load i64* %34, align 8, !dbg !1266
  %48 = trunc i64 %47 to i32, !dbg !1266
  %add243 = add nsw i32 %mul241, %48, !dbg !1266
  %arrayidx250 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 1, i64 %indvars.iv1852, !dbg !1266
  store i32 %add243, i32* %arrayidx250, align 4, !dbg !1266, !tbaa !984
  %49 = lshr i64 %47, 32
  %50 = trunc i64 %49 to i32
  %mul253 = shl nsw i32 %48, 1, !dbg !1267
  %sub254 = sub nsw i32 %50, %mul253, !dbg !1267
  %arrayidx261 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 3, i64 %indvars.iv1852, !dbg !1267
  store i32 %sub254, i32* %arrayidx261, align 4, !dbg !1267, !tbaa !984
  %indvars.iv.next1845 = add i64 %indvars.iv1844, 1, !dbg !1268
  %lftr.wideiv1846 = trunc i64 %indvars.iv.next1845 to i32, !dbg !1268
  %exitcond1847 = icmp eq i32 %lftr.wideiv1846, 4, !dbg !1268
  br i1 %exitcond1847, label %for.inc265, label %for.cond174.preheader, !dbg !1268

for.inc265:                                       ; preds = %for.end219
  %indvars.iv.next1849 = add i64 %indvars.iv1848, 1, !dbg !1245
  %lftr.wideiv1850 = trunc i64 %indvars.iv.next1849 to i32, !dbg !1245
  %exitcond1851 = icmp eq i32 %lftr.wideiv1850, 4, !dbg !1245
  br i1 %exitcond1851, label %for.inc268, label %for.cond76.preheader, !dbg !1245

for.inc268:                                       ; preds = %for.inc265
  %indvars.iv.next1853 = add i64 %indvars.iv1852, 1, !dbg !1236
  %51 = trunc i64 %indvars.iv1852 to i32, !dbg !1236
  %cmp65.not = icmp sgt i32 %51, 2, !dbg !1236
  br i1 %cmp65.not, label %for.cond275.preheader, label %for.cond72.preheader, !dbg !1236

for.cond275.preheader:                            ; preds = %for.cond64.preheader, %for.inc268, %for.inc292
  %indvars.iv1826 = phi i64 [ %indvars.iv.next1827, %for.inc292 ], [ 0, %for.inc268 ], [ 0, %for.cond64.preheader ]
  br label %for.body278, !dbg !1269

for.cond295.preheader:                            ; preds = %for.inc292
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1272
  br i1 %13, label %for.cond430.preheader, label %for.cond304.preheader.lr.ph, !dbg !1276

for.cond304.preheader.lr.ph:                      ; preds = %for.cond295.preheader
  %arrayidx346 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3, !dbg !1277
  %arrayidx347 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1277
  br label %for.cond304.preheader, !dbg !1276

for.body278:                                      ; preds = %for.body278, %for.cond275.preheader
  %indvars.iv1822 = phi i64 [ 0, %for.cond275.preheader ], [ %indvars.iv.next1823, %for.body278 ]
  %arrayidx284 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1822, i64 0, i64 %indvars.iv1826, !dbg !1278
  %52 = load i32* %arrayidx284, align 4, !dbg !1278, !tbaa !984
  %arrayidx288 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1822, i64 %indvars.iv1826, !dbg !1278
  store i32 %52, i32* %arrayidx288, align 4, !dbg !1278, !tbaa !984
  %indvars.iv.next1823 = add i64 %indvars.iv1822, 1, !dbg !1269
  %lftr.wideiv1824 = trunc i64 %indvars.iv.next1823 to i32, !dbg !1269
  %exitcond1825 = icmp eq i32 %lftr.wideiv1824, 4, !dbg !1269
  br i1 %exitcond1825, label %for.inc292, label %for.body278, !dbg !1269

for.inc292:                                       ; preds = %for.body278
  %indvars.iv.next1827 = add i64 %indvars.iv1826, 1, !dbg !1279
  %lftr.wideiv1828 = trunc i64 %indvars.iv.next1827 to i32, !dbg !1279
  %exitcond1829 = icmp eq i32 %lftr.wideiv1828, 4, !dbg !1279
  br i1 %exitcond1829, label %for.cond295.preheader, label %for.cond275.preheader, !dbg !1279

for.cond304.preheader:                            ; preds = %for.cond304.preheader.lr.ph, %for.end333
  %indvars.iv1820 = phi i64 [ 0, %for.cond304.preheader.lr.ph ], [ %indvars.iv.next1821, %for.end333 ]
  br label %for.body307, !dbg !1272

for.cond361.preheader:                            ; preds = %for.end333
  br i1 %13, label %for.cond430.preheader, label %for.cond370.preheader.lr.ph, !dbg !1280

for.cond370.preheader.lr.ph:                      ; preds = %for.cond361.preheader
  %arrayidx413 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3, !dbg !1282
  %arrayidx414 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1282
  br label %for.cond370.preheader, !dbg !1280

for.body307:                                      ; preds = %for.body307, %for.cond304.preheader
  %indvars.iv1815 = phi i64 [ 0, %for.cond304.preheader ], [ %indvars.iv.next1816, %for.body307 ]
  %53 = sub nsw i64 3, %indvars.iv1815, !dbg !1284
  %arrayidx312 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1815, i64 %indvars.iv1820, !dbg !1286
  %54 = load i32* %arrayidx312, align 4, !dbg !1286, !tbaa !984
  %arrayidx316 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %53, i64 %indvars.iv1820, !dbg !1286
  %55 = load i32* %arrayidx316, align 4, !dbg !1286, !tbaa !984
  %add317 = add nsw i32 %55, %54, !dbg !1286
  %arrayidx319 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1815, !dbg !1286
  store i32 %add317, i32* %arrayidx319, align 4, !dbg !1286, !tbaa !984
  %sub328 = sub nsw i32 %54, %55, !dbg !1287
  %arrayidx330 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %53, !dbg !1287
  store i32 %sub328, i32* %arrayidx330, align 4, !dbg !1287, !tbaa !984
  %indvars.iv.next1816 = add i64 %indvars.iv1815, 1, !dbg !1272
  %lftr.wideiv1818 = trunc i64 %indvars.iv.next1816 to i32, !dbg !1272
  %exitcond1819 = icmp eq i32 %lftr.wideiv1818, 2, !dbg !1272
  br i1 %exitcond1819, label %for.end333, label %for.body307, !dbg !1272

for.end333:                                       ; preds = %for.body307
  %56 = bitcast [4 x i32]* %M5 to i64*, !dbg !1288
  %57 = load i64* %56, align 16, !dbg !1288
  %58 = trunc i64 %57 to i32, !dbg !1288
  %59 = lshr i64 %57, 32
  %60 = trunc i64 %59 to i32
  %add336 = add nsw i32 %60, %58, !dbg !1288
  %arrayidx339 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 0, i64 %indvars.iv1820, !dbg !1288
  store i32 %add336, i32* %arrayidx339, align 4, !dbg !1288, !tbaa !984
  %sub342 = sub nsw i32 %58, %60, !dbg !1289
  %arrayidx345 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 2, i64 %indvars.iv1820, !dbg !1289
  store i32 %sub342, i32* %arrayidx345, align 4, !dbg !1289, !tbaa !984
  %61 = load i32* %arrayidx346, align 4, !dbg !1277, !tbaa !984
  %62 = bitcast i32* %arrayidx347 to i64*, !dbg !1277
  %63 = load i64* %62, align 8, !dbg !1277
  %64 = trunc i64 %63 to i32, !dbg !1277
  %add348 = add nsw i32 %64, %61, !dbg !1277
  %arrayidx351 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 1, i64 %indvars.iv1820, !dbg !1277
  store i32 %add348, i32* %arrayidx351, align 4, !dbg !1277, !tbaa !984
  %65 = lshr i64 %63, 32
  %66 = trunc i64 %65 to i32
  %sub354 = sub nsw i32 %66, %64, !dbg !1290
  %arrayidx357 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 3, i64 %indvars.iv1820, !dbg !1290
  store i32 %sub354, i32* %arrayidx357, align 4, !dbg !1290, !tbaa !984
  %indvars.iv.next1821 = add i64 %indvars.iv1820, 1, !dbg !1276
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1272
  %67 = trunc i64 %indvars.iv1820 to i32, !dbg !1276
  %cmp296.not = icmp sgt i32 %67, 2, !dbg !1276
  br i1 %cmp296.not, label %for.cond361.preheader, label %for.cond304.preheader, !dbg !1276

for.cond370.preheader:                            ; preds = %for.cond370.preheader.lr.ph, %for.end399
  %indvars.iv1813 = phi i64 [ 0, %for.cond370.preheader.lr.ph ], [ %indvars.iv.next1814, %for.end399 ]
  br label %for.body373, !dbg !1291

for.cond430.preheader:                            ; preds = %for.cond295.preheader, %for.end399, %for.cond361.preheader
  %idxprom469 = sext i32 %rem to i64, !dbg !1293
  %arrayidx472 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 0, i64 0, !dbg !1293
  %idxprom474 = sext i32 %div to i64, !dbg !1293
  %arrayidx477 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom474, i64 0, i64 0, !dbg !1293
  %add479 = add nsw i32 %div, 16, !dbg !1293
  br label %for.body433, !dbg !1296

for.body373:                                      ; preds = %for.body373, %for.cond370.preheader
  %indvars.iv1808 = phi i64 [ 0, %for.cond370.preheader ], [ %indvars.iv.next1809, %for.body373 ]
  %68 = sub nsw i64 3, %indvars.iv1808, !dbg !1297
  %arrayidx378 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 %indvars.iv1808, !dbg !1299
  %69 = load i32* %arrayidx378, align 4, !dbg !1299, !tbaa !984
  %arrayidx382 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 %68, !dbg !1299
  %70 = load i32* %arrayidx382, align 4, !dbg !1299, !tbaa !984
  %add383 = add nsw i32 %70, %69, !dbg !1299
  %arrayidx385 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1808, !dbg !1299
  store i32 %add383, i32* %arrayidx385, align 4, !dbg !1299, !tbaa !984
  %sub394 = sub nsw i32 %69, %70, !dbg !1300
  %arrayidx396 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %68, !dbg !1300
  store i32 %sub394, i32* %arrayidx396, align 4, !dbg !1300, !tbaa !984
  %indvars.iv.next1809 = add i64 %indvars.iv1808, 1, !dbg !1291
  %lftr.wideiv1811 = trunc i64 %indvars.iv.next1809 to i32, !dbg !1291
  %exitcond1812 = icmp eq i32 %lftr.wideiv1811, 2, !dbg !1291
  br i1 %exitcond1812, label %for.end399, label %for.body373, !dbg !1291

for.end399:                                       ; preds = %for.body373
  %71 = bitcast [4 x i32]* %M5 to i64*, !dbg !1301
  %72 = load i64* %71, align 16, !dbg !1301
  %73 = trunc i64 %72 to i32, !dbg !1301
  %74 = lshr i64 %72, 32
  %75 = trunc i64 %74 to i32
  %add402 = add nsw i32 %75, %73, !dbg !1301
  %shr = ashr i32 %add402, 1, !dbg !1301
  %arrayidx405 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 0, !dbg !1301
  store i32 %shr, i32* %arrayidx405, align 16, !dbg !1301, !tbaa !984
  %sub408 = sub nsw i32 %73, %75, !dbg !1302
  %shr409 = ashr i32 %sub408, 1, !dbg !1302
  %arrayidx412 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 2, !dbg !1302
  store i32 %shr409, i32* %arrayidx412, align 8, !dbg !1302, !tbaa !984
  %76 = load i32* %arrayidx413, align 4, !dbg !1282, !tbaa !984
  %77 = bitcast i32* %arrayidx414 to i64*, !dbg !1282
  %78 = load i64* %77, align 8, !dbg !1282
  %79 = trunc i64 %78 to i32, !dbg !1282
  %add415 = add nsw i32 %79, %76, !dbg !1282
  %shr416 = ashr i32 %add415, 1, !dbg !1282
  %arrayidx419 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 1, !dbg !1282
  store i32 %shr416, i32* %arrayidx419, align 4, !dbg !1282, !tbaa !984
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  %sub422 = sub nsw i32 %81, %79, !dbg !1303
  %shr423 = ashr i32 %sub422, 1, !dbg !1303
  %arrayidx426 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 3, !dbg !1303
  store i32 %shr423, i32* %arrayidx426, align 4, !dbg !1303, !tbaa !984
  %indvars.iv.next1814 = add i64 %indvars.iv1813, 1, !dbg !1280
  %82 = trunc i64 %indvars.iv1813 to i32, !dbg !1280
  %cmp362.not = icmp sgt i32 %82, 2, !dbg !1280
  br i1 %cmp362.not, label %for.cond430.preheader, label %for.cond370.preheader, !dbg !1280

for.body433:                                      ; preds = %for.inc520.for.body433_crit_edge, %for.cond430.preheader
  %83 = phi %struct.ImageParameters* [ %3, %for.cond430.preheader ], [ %.pre1869, %for.inc520.for.body433_crit_edge ], !dbg !1304
  %indvars.iv1804 = phi i64 [ 0, %for.cond430.preheader ], [ %indvars.iv.next1805, %for.inc520.for.body433_crit_edge ]
  %run.01711 = phi i32 [ -1, %for.cond430.preheader ], [ %run.1, %for.inc520.for.body433_crit_edge ]
  %scan_pos.01710 = phi i32 [ 0, %for.cond430.preheader ], [ %scan_pos.1, %for.inc520.for.body433_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 100, !dbg !1304
  %84 = load i32* %field_picture, align 4, !dbg !1304, !tbaa !984
  %tobool434 = icmp eq i32 %84, 0, !dbg !1304
  br i1 %tobool434, label %lor.lhs.false, label %if.end455, !dbg !1304

lor.lhs.false:                                    ; preds = %for.body433
  %85 = load i32* @mb_adaptive, align 4, !dbg !1304, !tbaa !984
  %tobool435 = icmp eq i32 %85, 0, !dbg !1304
  br i1 %tobool435, label %if.else446, label %land.lhs.true, !dbg !1304

land.lhs.true:                                    ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 81, !dbg !1304
  %86 = load i32* %field_mode, align 4, !dbg !1304, !tbaa !984
  %tobool436 = icmp eq i32 %86, 0, !dbg !1304
  br i1 %tobool436, label %if.else446, label %if.end455, !dbg !1304

if.else446:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end455

if.end455:                                        ; preds = %for.body433, %land.lhs.true, %if.else446
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else446 ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body433 ]
  %i.6.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1804, i64 0, !dbg !1305
  %j.6.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1804, i64 1, !dbg !1307
  %i.6.in = load i8* %i.6.in.in, align 2, !dbg !1305
  %j.6.in = load i8* %j.6.in.in, align 1, !dbg !1307
  %inc456 = add nsw i32 %run.01711, 1, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32 %inc456}, i64 0, metadata !118), !dbg !1308
  %idxprom459 = zext i8 %j.6.in to i64, !dbg !1309
  %idxprom460 = zext i8 %i.6.in to i64, !dbg !1309
  %arrayidx462 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %idxprom460, i64 %idxprom459, !dbg !1309
  %87 = load i32* %arrayidx462, align 4, !dbg !1309, !tbaa !984
  %ispos1672 = icmp sgt i32 %87, -1, !dbg !1309
  %neg1673 = sub i32 0, %87, !dbg !1309
  %88 = select i1 %ispos1672, i32 %87, i32 %neg1673, !dbg !1309
  br i1 %13, label %if.end481, label %if.else463, !dbg !1310

if.else463:                                       ; preds = %if.end455
  %89 = load i32* %arrayidx472, align 4, !dbg !1293, !tbaa !984
  %mul473 = mul nsw i32 %89, %88, !dbg !1293
  %90 = load i32* %arrayidx477, align 4, !dbg !1293, !tbaa !984
  %shl = shl i32 %90, 1, !dbg !1293
  %add478 = add nsw i32 %shl, %mul473, !dbg !1293
  %shr480 = ashr i32 %add478, %add479, !dbg !1293
  call void @llvm.dbg.value(metadata !{i32 %shr480}, i64 0, metadata !121), !dbg !1293
  br label %if.end481

if.end481:                                        ; preds = %if.end455, %if.else463
  %level.0 = phi i32 [ %shr480, %if.else463 ], [ %88, %if.end455 ]
  %91 = load %struct.InputParameters** @input, align 8, !dbg !1311, !tbaa !978
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 59, !dbg !1311
  %92 = load i32* %symbol_mode, align 4, !dbg !1311, !tbaa !984
  %cmp482 = icmp eq i32 %92, 0, !dbg !1311
  br i1 %cmp482, label %land.lhs.true484, label %if.end493, !dbg !1311

land.lhs.true484:                                 ; preds = %if.end481
  %qp485 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 10, !dbg !1311
  %93 = load i32* %qp485, align 4, !dbg !1311, !tbaa !984
  %cmp486 = icmp slt i32 %93, 10, !dbg !1311
  %cmp489 = icmp sgt i32 %level.0, 2063, !dbg !1312
  %or.cond = and i1 %cmp486, %cmp489, !dbg !1311
  call void @llvm.dbg.value(metadata !1314, i64 0, metadata !121), !dbg !1315
  %.level.0 = select i1 %or.cond, i32 2063, i32 %level.0, !dbg !1311
  br label %if.end493, !dbg !1311

if.end493:                                        ; preds = %land.lhs.true484, %if.end481
  %level.1 = phi i32 [ %level.0, %if.end481 ], [ %.level.0, %land.lhs.true484 ]
  %cmp494 = icmp eq i32 %level.1, 0, !dbg !1317
  br i1 %cmp494, label %if.end507, label %if.then496, !dbg !1317

if.then496:                                       ; preds = %if.end493
  %call501 = call i32 @sign(i32 %level.1, i32 %87) #4, !dbg !1318
  %idxprom502 = sext i32 %scan_pos.01710 to i64, !dbg !1318
  %arrayidx503 = getelementptr inbounds i32* %8, i64 %idxprom502, !dbg !1318
  store i32 %call501, i32* %arrayidx503, align 4, !dbg !1318, !tbaa !984
  %arrayidx505 = getelementptr inbounds i32* %9, i64 %idxprom502, !dbg !1320
  store i32 %inc456, i32* %arrayidx505, align 4, !dbg !1320, !tbaa !984
  %inc506 = add nsw i32 %scan_pos.01710, 1, !dbg !1321
  call void @llvm.dbg.value(metadata !{i32 %inc506}, i64 0, metadata !119), !dbg !1321
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !118), !dbg !1323
  br label %if.end507, !dbg !1324

if.end507:                                        ; preds = %if.end493, %if.then496
  %scan_pos.1 = phi i32 [ %inc506, %if.then496 ], [ %scan_pos.01710, %if.end493 ]
  %run.1 = phi i32 [ -1, %if.then496 ], [ %inc456, %if.end493 ]
  br i1 %13, label %for.inc520, label %if.then509, !dbg !1325

if.then509:                                       ; preds = %if.end507
  %call514 = call i32 @sign(i32 %level.1, i32 %87) #4, !dbg !1326
  store i32 %call514, i32* %arrayidx462, align 4, !dbg !1326, !tbaa !984
  br label %for.inc520, !dbg !1326

for.inc520:                                       ; preds = %if.end507, %if.then509
  %indvars.iv.next1805 = add i64 %indvars.iv1804, 1, !dbg !1296
  %lftr.wideiv1806 = trunc i64 %indvars.iv.next1805 to i32, !dbg !1296
  %exitcond1807 = icmp eq i32 %lftr.wideiv1806, 16, !dbg !1296
  br i1 %exitcond1807, label %for.end522, label %for.inc520.for.body433_crit_edge, !dbg !1296

for.inc520.for.body433_crit_edge:                 ; preds = %for.inc520
  %.pre1869 = load %struct.ImageParameters** @img, align 8, !dbg !1304, !tbaa !978
  br label %for.body433, !dbg !1296

for.end522:                                       ; preds = %for.inc520
  %idxprom523 = sext i32 %scan_pos.1 to i64, !dbg !1327
  %arrayidx524 = getelementptr inbounds i32* %8, i64 %idxprom523, !dbg !1327
  store i32 0, i32* %arrayidx524, align 4, !dbg !1327, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1328
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1330
  br i1 %13, label %for.cond592.preheader.for.cond724.preheader_crit_edge, label %for.cond534.preheader.lr.ph, !dbg !1328

for.cond534.preheader.lr.ph:                      ; preds = %for.end522
  %arrayidx548 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1333
  %arrayidx550 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0, !dbg !1333
  %arrayidx554 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1, !dbg !1334
  %arrayidx558 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2, !dbg !1335
  %arrayidx562 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3, !dbg !1336
  br label %for.cond534.preheader, !dbg !1328

for.cond534.preheader:                            ; preds = %for.cond534.preheader.lr.ph, %for.inc589
  %indvars.iv1802 = phi i64 [ 0, %for.cond534.preheader.lr.ph ], [ %indvars.iv.next1803, %for.inc589 ]
  br label %for.body537, !dbg !1330

for.cond592.preheader:                            ; preds = %for.inc589
  br i1 %13, label %for.cond592.preheader.for.cond724.preheader_crit_edge, label %for.cond601.preheader.lr.ph, !dbg !1337

for.cond592.preheader.for.cond724.preheader_crit_edge: ; preds = %for.end522, %for.cond592.preheader
  %arrayidx1003.pre = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 0, !dbg !1339
  %arrayidx1004.pre = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1339
  %arrayidx1006.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0, !dbg !1339
  %arrayidx1010.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1, !dbg !1346
  %arrayidx1015.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2, !dbg !1347
  %arrayidx1020.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3, !dbg !1348
  br label %for.cond724.preheader, !dbg !1337

for.cond601.preheader.lr.ph:                      ; preds = %for.cond592.preheader
  %arrayidx614 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 0, !dbg !1349
  %arrayidx615 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2, !dbg !1349
  %arrayidx617 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0, !dbg !1349
  %arrayidx621 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1, !dbg !1351
  %arrayidx625 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2, !dbg !1352
  %arrayidx629 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3, !dbg !1353
  %cmp635 = icmp slt i32 %add9, 36, !dbg !1354
  %arrayidx646 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 0, i64 0, !dbg !1357
  %94 = load i32* %arrayidx646, align 4, !dbg !1357, !tbaa !984
  %sub648 = sub nsw i32 5, %div, !dbg !1357
  %shl649 = shl i32 1, %sub648, !dbg !1357
  %sub651 = sub nsw i32 6, %div, !dbg !1357
  %sub691 = add nsw i32 %div, -6, !dbg !1359
  br label %for.cond601.preheader, !dbg !1337

for.body537:                                      ; preds = %for.body537, %for.cond534.preheader
  %indvars.iv1793 = phi i64 [ 0, %for.cond534.preheader ], [ %indvars.iv.next1794, %for.body537 ]
  %arrayidx541 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1793, i64 %indvars.iv1802, !dbg !1361
  %95 = load i32* %arrayidx541, align 4, !dbg !1361, !tbaa !984
  %arrayidx543 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1793, !dbg !1361
  store i32 %95, i32* %arrayidx543, align 4, !dbg !1361, !tbaa !984
  %indvars.iv.next1794 = add i64 %indvars.iv1793, 1, !dbg !1330
  %lftr.wideiv1795 = trunc i64 %indvars.iv.next1794 to i32, !dbg !1330
  %exitcond1796 = icmp eq i32 %lftr.wideiv1795, 4, !dbg !1330
  br i1 %exitcond1796, label %for.end546, label %for.body537, !dbg !1330

for.end546:                                       ; preds = %for.body537
  %96 = bitcast [4 x i32]* %M5 to i64*, !dbg !1333
  %97 = load i64* %96, align 16, !dbg !1333
  %98 = trunc i64 %97 to i32, !dbg !1333
  %99 = bitcast i32* %arrayidx548 to i64*, !dbg !1333
  %100 = load i64* %99, align 8, !dbg !1333
  %101 = trunc i64 %100 to i32, !dbg !1333
  %add549 = add nsw i32 %101, %98, !dbg !1333
  store i32 %add549, i32* %arrayidx550, align 16, !dbg !1333, !tbaa !984
  %sub553 = sub nsw i32 %98, %101, !dbg !1334
  store i32 %sub553, i32* %arrayidx554, align 4, !dbg !1334, !tbaa !984
  %102 = lshr i64 %97, 32
  %103 = trunc i64 %102 to i32
  %104 = lshr i64 %100, 32
  %105 = trunc i64 %104 to i32
  %sub557 = sub nsw i32 %103, %105, !dbg !1335
  store i32 %sub557, i32* %arrayidx558, align 8, !dbg !1335, !tbaa !984
  %add561 = add nsw i32 %105, %103, !dbg !1336
  store i32 %add561, i32* %arrayidx562, align 4, !dbg !1336, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1362
  br label %for.body566, !dbg !1362

for.body566:                                      ; preds = %for.body566.for.body566_crit_edge, %for.end546
  %106 = phi i32 [ %add549, %for.end546 ], [ %.pre1874, %for.body566.for.body566_crit_edge ]
  %indvars.iv1797 = phi i64 [ 0, %for.end546 ], [ %indvars.iv.next1798, %for.body566.for.body566_crit_edge ]
  %107 = sub nsw i64 3, %indvars.iv1797, !dbg !1364
  %arrayidx571 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %107, !dbg !1366
  %108 = load i32* %arrayidx571, align 4, !dbg !1366, !tbaa !984
  %add572 = add nsw i32 %108, %106, !dbg !1366
  %arrayidx576 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1797, i64 %indvars.iv1802, !dbg !1366
  store i32 %add572, i32* %arrayidx576, align 4, !dbg !1366, !tbaa !984
  %sub581 = sub nsw i32 %106, %108, !dbg !1367
  %arrayidx585 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %107, i64 %indvars.iv1802, !dbg !1367
  store i32 %sub581, i32* %arrayidx585, align 4, !dbg !1367, !tbaa !984
  %indvars.iv.next1798 = add i64 %indvars.iv1797, 1, !dbg !1362
  %lftr.wideiv1800 = trunc i64 %indvars.iv.next1798 to i32, !dbg !1362
  %exitcond1801 = icmp eq i32 %lftr.wideiv1800, 2, !dbg !1362
  br i1 %exitcond1801, label %for.inc589, label %for.body566.for.body566_crit_edge, !dbg !1362

for.body566.for.body566_crit_edge:                ; preds = %for.body566
  %arrayidx569.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1798
  %.pre1874 = load i32* %arrayidx569.phi.trans.insert, align 4, !dbg !1366, !tbaa !984
  br label %for.body566, !dbg !1362

for.inc589:                                       ; preds = %for.body566
  %indvars.iv.next1803 = add i64 %indvars.iv1802, 1, !dbg !1328
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1330
  %109 = trunc i64 %indvars.iv1802 to i32, !dbg !1328
  %cmp526.not = icmp sgt i32 %109, 2, !dbg !1328
  br i1 %cmp526.not, label %for.cond592.preheader, label %for.cond534.preheader, !dbg !1328

for.cond601.preheader:                            ; preds = %for.cond601.preheader.lr.ph, %for.inc721
  %indvars.iv1791 = phi i64 [ 0, %for.cond601.preheader.lr.ph ], [ %indvars.iv.next1792, %for.inc721 ]
  %scevgep = getelementptr [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1791, i64 0
  %scevgep1785 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %M51784, i8* %scevgep1785, i64 16, i32 16, i1 false), !dbg !1368
  %110 = bitcast [4 x i32]* %M5 to i64*, !dbg !1349
  %111 = load i64* %110, align 16, !dbg !1349
  %112 = trunc i64 %111 to i32, !dbg !1349
  %113 = bitcast i32* %arrayidx615 to i64*, !dbg !1349
  %114 = load i64* %113, align 8, !dbg !1349
  %115 = trunc i64 %114 to i32, !dbg !1349
  %add616 = add nsw i32 %115, %112, !dbg !1349
  store i32 %add616, i32* %arrayidx617, align 16, !dbg !1349, !tbaa !984
  %sub620 = sub nsw i32 %112, %115, !dbg !1351
  store i32 %sub620, i32* %arrayidx621, align 4, !dbg !1351, !tbaa !984
  %116 = lshr i64 %111, 32
  %117 = trunc i64 %116 to i32
  %118 = lshr i64 %114, 32
  %119 = trunc i64 %118 to i32
  %sub624 = sub nsw i32 %117, %119, !dbg !1352
  store i32 %sub624, i32* %arrayidx625, align 8, !dbg !1352, !tbaa !984
  %add628 = add nsw i32 %119, %117, !dbg !1353
  store i32 %add628, i32* %arrayidx629, align 4, !dbg !1353, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1370
  br label %for.body633, !dbg !1370

for.cond724.preheader:                            ; preds = %for.inc721, %for.cond592.preheader.for.cond724.preheader_crit_edge
  %arrayidx1020.pre-phi = phi i32* [ %arrayidx1020.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx629, %for.inc721 ], !dbg !1348
  %arrayidx1015.pre-phi = phi i32* [ %arrayidx1015.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx625, %for.inc721 ], !dbg !1347
  %arrayidx1010.pre-phi = phi i32* [ %arrayidx1010.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx621, %for.inc721 ], !dbg !1346
  %arrayidx1006.pre-phi = phi i32* [ %arrayidx1006.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx617, %for.inc721 ], !dbg !1339
  %arrayidx1004.pre-phi = phi i32* [ %arrayidx1004.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx615, %for.inc721 ], !dbg !1339
  %arrayidx1003.pre-phi = phi i32* [ %arrayidx1003.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx614, %for.inc721 ], !dbg !1339
  %cmp848 = icmp slt i32 %add9, 24, !dbg !1371
  %sub858 = sub nsw i32 3, %div, !dbg !1375
  %shl859 = shl i32 1, %sub858, !dbg !1375
  %sub861 = sub nsw i32 4, %div, !dbg !1375
  %sub879 = add nsw i32 %div, -4, !dbg !1376
  br label %for.cond728.preheader, !dbg !1377

for.body633:                                      ; preds = %for.inc718.for.body633_crit_edge, %for.cond601.preheader
  %120 = phi i32 [ %add616, %for.cond601.preheader ], [ %.pre1873, %for.inc718.for.body633_crit_edge ]
  %indvars.iv1786 = phi i64 [ 0, %for.cond601.preheader ], [ %indvars.iv.next1787, %for.inc718.for.body633_crit_edge ]
  %121 = sub nsw i64 3, %indvars.iv1786, !dbg !1378
  %arrayidx641 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %121, !dbg !1357
  %122 = load i32* %arrayidx641, align 4, !dbg !1357, !tbaa !984
  %add642 = add nsw i32 %122, %120, !dbg !1357
  %mul647 = mul nsw i32 %add642, %94, !dbg !1357
  br i1 %cmp635, label %if.then637, label %if.else680, !dbg !1354

if.then637:                                       ; preds = %for.body633
  %add650 = add nsw i32 %mul647, %shl649, !dbg !1357
  %shr652 = ashr i32 %add650, %sub651, !dbg !1357
  %arrayidx658 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %indvars.iv1786, !dbg !1357
  store i32 %shr652, i32* %arrayidx658, align 4, !dbg !1357, !tbaa !984
  %sub663 = sub nsw i32 %120, %122, !dbg !1379
  %mul668 = mul nsw i32 %sub663, %94, !dbg !1379
  %add671 = add nsw i32 %mul668, %shl649, !dbg !1379
  %shr673 = ashr i32 %add671, %sub651, !dbg !1379
  %arrayidx679 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %121, !dbg !1379
  store i32 %shr673, i32* %arrayidx679, align 4, !dbg !1379, !tbaa !984
  br label %for.inc718, !dbg !1380

if.else680:                                       ; preds = %for.body633
  %shl692 = shl i32 %mul647, %sub691, !dbg !1359
  %arrayidx698 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %indvars.iv1786, !dbg !1359
  store i32 %shl692, i32* %arrayidx698, align 4, !dbg !1359, !tbaa !984
  %sub703 = sub nsw i32 %120, %122, !dbg !1381
  %mul708 = mul nsw i32 %sub703, %94, !dbg !1381
  %shl710 = shl i32 %mul708, %sub691, !dbg !1381
  %arrayidx716 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %121, !dbg !1381
  store i32 %shl710, i32* %arrayidx716, align 4, !dbg !1381, !tbaa !984
  br label %for.inc718

for.inc718:                                       ; preds = %if.then637, %if.else680
  %indvars.iv.next1787 = add i64 %indvars.iv1786, 1, !dbg !1370
  %lftr.wideiv1789 = trunc i64 %indvars.iv.next1787 to i32, !dbg !1370
  %exitcond1790 = icmp eq i32 %lftr.wideiv1789, 2, !dbg !1370
  br i1 %exitcond1790, label %for.inc721, label %for.inc718.for.body633_crit_edge, !dbg !1370

for.inc718.for.body633_crit_edge:                 ; preds = %for.inc718
  %arrayidx639.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1787
  %.pre1873 = load i32* %arrayidx639.phi.trans.insert, align 4, !dbg !1357, !tbaa !984
  br label %for.body633, !dbg !1370

for.inc721:                                       ; preds = %for.inc718
  %indvars.iv.next1792 = add i64 %indvars.iv1791, 1, !dbg !1337
  %123 = trunc i64 %indvars.iv1791 to i32, !dbg !1337
  %cmp593.not = icmp sgt i32 %123, 2, !dbg !1337
  br i1 %cmp593.not, label %for.cond724.preheader, label %for.cond601.preheader, !dbg !1337

for.cond728.preheader:                            ; preds = %for.inc1061, %for.cond724.preheader
  %indvars.iv1776 = phi i64 [ 0, %for.cond724.preheader ], [ %indvars.iv.next1777, %for.inc1061 ]
  %ac_coef.01700 = phi i32 [ 0, %for.cond724.preheader ], [ %ac_coef.3, %for.inc1061 ]
  %124 = trunc i64 %indvars.iv1776 to i32, !dbg !1382
  %div732 = sdiv i32 %124, 2, !dbg !1382
  %mul733 = shl i32 %div732, 1, !dbg !1382
  %rem736 = srem i32 %124, 2, !dbg !1383
  %mul737 = shl i32 %rem736, 1, !dbg !1383
  br label %for.body731, !dbg !1384

for.body731:                                      ; preds = %for.inc1058, %for.cond728.preheader
  %indvars.iv1772 = phi i64 [ 0, %for.cond728.preheader ], [ %indvars.iv.next1773, %for.inc1058 ]
  %ac_coef.11698 = phi i32 [ %ac_coef.01700, %for.cond728.preheader ], [ %ac_coef.3, %for.inc1058 ]
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !118), !dbg !1385
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !119), !dbg !1386
  %125 = trunc i64 %indvars.iv1772 to i32, !dbg !1382
  %div734 = sdiv i32 %125, 2, !dbg !1382
  %add735 = add nsw i32 %mul733, %div734, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %add735}, i64 0, metadata !190), !dbg !1382
  %rem738 = srem i32 %125, 2, !dbg !1383
  %add739 = add nsw i32 %mul737, %rem738, !dbg !1383
  call void @llvm.dbg.value(metadata !{i32 %add739}, i64 0, metadata !191), !dbg !1383
  %idxprom740 = sext i32 %add739 to i64, !dbg !1387
  %idxprom741 = sext i32 %add735 to i64, !dbg !1387
  %126 = load %struct.ImageParameters** @img, align 8, !dbg !1387, !tbaa !978
  %cofAC = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 47, !dbg !1387
  %127 = load i32***** %cofAC, align 8, !dbg !1387, !tbaa !978
  %arrayidx742 = getelementptr inbounds i32**** %127, i64 %idxprom741, !dbg !1387
  %128 = load i32**** %arrayidx742, align 8, !dbg !1387, !tbaa !978
  %arrayidx743 = getelementptr inbounds i32*** %128, i64 %idxprom740, !dbg !1387
  %129 = load i32*** %arrayidx743, align 8, !dbg !1387, !tbaa !978
  %130 = load i32** %129, align 8, !dbg !1387, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %130}, i64 0, metadata !194), !dbg !1387
  %arrayidx750 = getelementptr inbounds i32** %129, i64 1, !dbg !1388
  %131 = load i32** %arrayidx750, align 8, !dbg !1388, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %131}, i64 0, metadata !195), !dbg !1388
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !120), !dbg !1389
  br label %for.body754, !dbg !1389

for.body754:                                      ; preds = %for.inc891.for.body754_crit_edge, %for.body731
  %132 = phi %struct.ImageParameters* [ %126, %for.body731 ], [ %.pre1870, %for.inc891.for.body754_crit_edge ], !dbg !1390
  %indvars.iv1746 = phi i64 [ 1, %for.body731 ], [ %indvars.iv.next1747, %for.inc891.for.body754_crit_edge ]
  %run.21691 = phi i32 [ -1, %for.body731 ], [ %run.3, %for.inc891.for.body754_crit_edge ]
  %scan_pos.21690 = phi i32 [ 0, %for.body731 ], [ %scan_pos.3, %for.inc891.for.body754_crit_edge ]
  %ac_coef.21687 = phi i32 [ %ac_coef.11698, %for.body731 ], [ %ac_coef.3, %for.inc891.for.body754_crit_edge ]
  %field_picture755 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 100, !dbg !1390
  %133 = load i32* %field_picture755, align 4, !dbg !1390, !tbaa !984
  %tobool756 = icmp eq i32 %133, 0, !dbg !1390
  br i1 %tobool756, label %lor.lhs.false757, label %if.end780, !dbg !1390

lor.lhs.false757:                                 ; preds = %for.body754
  %134 = load i32* @mb_adaptive, align 4, !dbg !1390, !tbaa !984
  %tobool758 = icmp eq i32 %134, 0, !dbg !1390
  br i1 %tobool758, label %if.else771, label %land.lhs.true759, !dbg !1390

land.lhs.true759:                                 ; preds = %lor.lhs.false757
  %field_mode760 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 81, !dbg !1390
  %135 = load i32* %field_mode760, align 4, !dbg !1390, !tbaa !984
  %tobool761 = icmp eq i32 %135, 0, !dbg !1390
  br i1 %tobool761, label %if.else771, label %if.end780, !dbg !1390

if.else771:                                       ; preds = %land.lhs.true759, %lor.lhs.false757
  br label %if.end780

if.end780:                                        ; preds = %for.body754, %land.lhs.true759, %if.else771
  %FIELD_SCAN.pn1877 = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else771 ], [ @FIELD_SCAN, %land.lhs.true759 ], [ @FIELD_SCAN, %for.body754 ]
  %i.10.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn1877, i64 0, i64 %indvars.iv1746, i64 0, !dbg !1391
  %j.10.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn1877, i64 0, i64 %indvars.iv1746, i64 1, !dbg !1393
  %i.10.in = load i8* %i.10.in.in, align 2, !dbg !1391
  %j.10.in = load i8* %j.10.in.in, align 1, !dbg !1393
  %inc781 = add nsw i32 %run.21691, 1, !dbg !1394
  call void @llvm.dbg.value(metadata !{i32 %inc781}, i64 0, metadata !118), !dbg !1394
  %idxprom785 = zext i8 %j.10.in to i64, !dbg !1395
  %idxprom787 = zext i8 %i.10.in to i64, !dbg !1395
  %arrayidx791 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom787, i64 %indvars.iv1772, i64 %idxprom785, i64 %indvars.iv1776, !dbg !1395
  %136 = load i32* %arrayidx791, align 4, !dbg !1395, !tbaa !984
  %ispos = icmp sgt i32 %136, -1, !dbg !1395
  %neg = sub i32 0, %136, !dbg !1395
  %137 = select i1 %ispos, i32 %136, i32 %neg, !dbg !1395
  br i1 %13, label %if.end818, label %if.else793, !dbg !1396

if.else793:                                       ; preds = %if.end780
  %arrayidx808 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 %idxprom787, i64 %idxprom785, !dbg !1397
  %138 = load i32* %arrayidx808, align 4, !dbg !1397, !tbaa !984
  %mul809 = mul nsw i32 %138, %137, !dbg !1397
  %arrayidx815 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom474, i64 %idxprom787, i64 %idxprom785, !dbg !1397
  %139 = load i32* %arrayidx815, align 4, !dbg !1397, !tbaa !984
  %add816 = add nsw i32 %mul809, %139, !dbg !1397
  %shr817 = ashr i32 %add816, %add14, !dbg !1397
  call void @llvm.dbg.value(metadata !{i32 %shr817}, i64 0, metadata !121), !dbg !1397
  br label %if.end818

if.end818:                                        ; preds = %if.end780, %if.else793
  %level.2 = phi i32 [ %shr817, %if.else793 ], [ %137, %if.end780 ]
  %cmp819 = icmp eq i32 %level.2, 0, !dbg !1398
  br i1 %cmp819, label %if.end836, label %if.then821, !dbg !1398

if.then821:                                       ; preds = %if.end818
  call void @llvm.dbg.value(metadata !1399, i64 0, metadata !125), !dbg !1400
  %call830 = call i32 @sign(i32 %level.2, i32 %136) #4, !dbg !1402
  %idxprom831 = sext i32 %scan_pos.21690 to i64, !dbg !1402
  %arrayidx832 = getelementptr inbounds i32* %130, i64 %idxprom831, !dbg !1402
  store i32 %call830, i32* %arrayidx832, align 4, !dbg !1402, !tbaa !984
  %arrayidx834 = getelementptr inbounds i32* %131, i64 %idxprom831, !dbg !1403
  store i32 %inc781, i32* %arrayidx834, align 4, !dbg !1403, !tbaa !984
  %inc835 = add nsw i32 %scan_pos.21690, 1, !dbg !1404
  call void @llvm.dbg.value(metadata !{i32 %inc835}, i64 0, metadata !119), !dbg !1404
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !118), !dbg !1405
  br label %if.end836, !dbg !1406

if.end836:                                        ; preds = %if.end818, %if.then821
  %ac_coef.3 = phi i32 [ 15, %if.then821 ], [ %ac_coef.21687, %if.end818 ]
  %scan_pos.3 = phi i32 [ %inc835, %if.then821 ], [ %scan_pos.21690, %if.end818 ]
  %run.3 = phi i32 [ -1, %if.then821 ], [ %inc781, %if.end818 ]
  br i1 %13, label %for.inc891, label %if.then838, !dbg !1407

if.then838:                                       ; preds = %if.end836
  %140 = load i32* %arrayidx791, align 4, !dbg !1408, !tbaa !984
  %call847 = call i32 @sign(i32 %level.2, i32 %140) #4, !dbg !1408
  call void @llvm.dbg.value(metadata !{i32 %call847}, i64 0, metadata !121), !dbg !1408
  %arrayidx856 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 %idxprom787, i64 %idxprom785, !dbg !1375
  %141 = load i32* %arrayidx856, align 4, !dbg !1375, !tbaa !984
  %mul857 = mul nsw i32 %141, %call847, !dbg !1375
  br i1 %cmp848, label %if.then850, label %if.else871, !dbg !1371

if.then850:                                       ; preds = %if.then838
  %add860 = add nsw i32 %mul857, %shl859, !dbg !1375
  %shr862 = ashr i32 %add860, %sub861, !dbg !1375
  store i32 %shr862, i32* %arrayidx791, align 4, !dbg !1375, !tbaa !984
  br label %for.inc891, !dbg !1375

if.else871:                                       ; preds = %if.then838
  %shl880 = shl i32 %mul857, %sub879, !dbg !1376
  store i32 %shl880, i32* %arrayidx791, align 4, !dbg !1376, !tbaa !984
  br label %for.inc891

for.inc891:                                       ; preds = %if.end836, %if.else871, %if.then850
  %indvars.iv.next1747 = add i64 %indvars.iv1746, 1, !dbg !1389
  %lftr.wideiv1748 = trunc i64 %indvars.iv.next1747 to i32, !dbg !1389
  %exitcond1749 = icmp eq i32 %lftr.wideiv1748, 16, !dbg !1389
  br i1 %exitcond1749, label %for.end893, label %for.inc891.for.body754_crit_edge, !dbg !1389

for.inc891.for.body754_crit_edge:                 ; preds = %for.inc891
  %.pre1870 = load %struct.ImageParameters** @img, align 8, !dbg !1390, !tbaa !978
  br label %for.body754, !dbg !1389

for.end893:                                       ; preds = %for.inc891
  %idxprom894 = sext i32 %scan_pos.3 to i64, !dbg !1409
  %arrayidx895 = getelementptr inbounds i32* %130, i64 %idxprom894, !dbg !1409
  store i32 0, i32* %arrayidx895, align 4, !dbg !1409, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1410
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1412
  br i1 %13, label %for.inc1058, label %for.cond905.preheader, !dbg !1410

for.cond905.preheader:                            ; preds = %for.end893, %for.inc974
  %indvars.iv1759 = phi i64 [ %indvars.iv.next1760, %for.inc974 ], [ 0, %for.end893 ]
  br label %for.body908, !dbg !1412

for.body908:                                      ; preds = %for.body908, %for.cond905.preheader
  %indvars.iv1750 = phi i64 [ 0, %for.cond905.preheader ], [ %indvars.iv.next1751, %for.body908 ]
  %arrayidx916 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1750, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776, !dbg !1415
  %142 = load i32* %arrayidx916, align 4, !dbg !1415, !tbaa !984
  %arrayidx918 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1750, !dbg !1415
  store i32 %142, i32* %arrayidx918, align 4, !dbg !1415, !tbaa !984
  %indvars.iv.next1751 = add i64 %indvars.iv1750, 1, !dbg !1412
  %lftr.wideiv1752 = trunc i64 %indvars.iv.next1751 to i32, !dbg !1412
  %exitcond1753 = icmp eq i32 %lftr.wideiv1752, 4, !dbg !1412
  br i1 %exitcond1753, label %for.end921, label %for.body908, !dbg !1412

for.end921:                                       ; preds = %for.body908
  %143 = bitcast i32* %arrayidx1003.pre-phi to i64*, !dbg !1417
  %144 = load i64* %143, align 16, !dbg !1417
  %145 = trunc i64 %144 to i32, !dbg !1417
  %146 = bitcast i32* %arrayidx1004.pre-phi to i64*, !dbg !1417
  %147 = load i64* %146, align 8, !dbg !1417
  %148 = trunc i64 %147 to i32, !dbg !1417
  %add924 = add nsw i32 %148, %145, !dbg !1417
  store i32 %add924, i32* %arrayidx1006.pre-phi, align 16, !dbg !1417, !tbaa !984
  %sub928 = sub nsw i32 %145, %148, !dbg !1418
  store i32 %sub928, i32* %arrayidx1010.pre-phi, align 4, !dbg !1418, !tbaa !984
  %149 = lshr i64 %144, 32
  %150 = trunc i64 %149 to i32
  %shr931 = ashr i32 %150, 1, !dbg !1419
  %151 = lshr i64 %147, 32
  %152 = trunc i64 %151 to i32
  %sub933 = sub nsw i32 %shr931, %152, !dbg !1419
  store i32 %sub933, i32* %arrayidx1015.pre-phi, align 8, !dbg !1419, !tbaa !984
  %shr937 = ashr i32 %152, 1, !dbg !1420
  %add938 = add nsw i32 %shr937, %150, !dbg !1420
  store i32 %add938, i32* %arrayidx1020.pre-phi, align 4, !dbg !1420, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1421
  br label %for.body943, !dbg !1421

for.body943:                                      ; preds = %for.body943.for.body943_crit_edge, %for.end921
  %153 = phi i32 [ %add924, %for.end921 ], [ %.pre1872, %for.body943.for.body943_crit_edge ]
  %indvars.iv1754 = phi i64 [ 0, %for.end921 ], [ %indvars.iv.next1755, %for.body943.for.body943_crit_edge ]
  %154 = sub nsw i64 3, %indvars.iv1754, !dbg !1423
  %arrayidx948 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %154, !dbg !1425
  %155 = load i32* %arrayidx948, align 4, !dbg !1425, !tbaa !984
  %add949 = add nsw i32 %155, %153, !dbg !1425
  %arrayidx957 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1754, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776, !dbg !1425
  store i32 %add949, i32* %arrayidx957, align 4, !dbg !1425, !tbaa !984
  %sub962 = sub nsw i32 %153, %155, !dbg !1426
  %arrayidx970 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %154, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776, !dbg !1426
  store i32 %sub962, i32* %arrayidx970, align 4, !dbg !1426, !tbaa !984
  %indvars.iv.next1755 = add i64 %indvars.iv1754, 1, !dbg !1421
  %lftr.wideiv1757 = trunc i64 %indvars.iv.next1755 to i32, !dbg !1421
  %exitcond1758 = icmp eq i32 %lftr.wideiv1757, 2, !dbg !1421
  br i1 %exitcond1758, label %for.inc974, label %for.body943.for.body943_crit_edge, !dbg !1421

for.body943.for.body943_crit_edge:                ; preds = %for.body943
  %arrayidx946.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1755
  %.pre1872 = load i32* %arrayidx946.phi.trans.insert, align 4, !dbg !1425, !tbaa !984
  br label %for.body943, !dbg !1421

for.inc974:                                       ; preds = %for.body943
  %indvars.iv.next1760 = add i64 %indvars.iv1759, 1, !dbg !1410
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !100), !dbg !1412
  %156 = trunc i64 %indvars.iv1759 to i32, !dbg !1410
  %cmp897.not = icmp sgt i32 %156, 2, !dbg !1410
  br i1 %cmp897.not, label %for.cond977.loopexit, label %for.cond905.preheader, !dbg !1410

for.cond977.loopexit:                             ; preds = %for.inc974
  br i1 %13, label %for.inc1058, label %for.cond986.preheader, !dbg !1427

for.cond986.preheader:                            ; preds = %for.cond977.loopexit, %for.inc1055
  %indvars.iv1770 = phi i64 [ %indvars.iv.next1771, %for.inc1055 ], [ 0, %for.cond977.loopexit ]
  br label %for.body989, !dbg !1428

for.body989:                                      ; preds = %for.body989, %for.cond986.preheader
  %indvars.iv1761 = phi i64 [ 0, %for.cond986.preheader ], [ %indvars.iv.next1762, %for.body989 ]
  %arrayidx997 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %indvars.iv1761, i64 %indvars.iv1776, !dbg !1430
  %157 = load i32* %arrayidx997, align 4, !dbg !1430, !tbaa !984
  %arrayidx999 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1761, !dbg !1430
  store i32 %157, i32* %arrayidx999, align 4, !dbg !1430, !tbaa !984
  %indvars.iv.next1762 = add i64 %indvars.iv1761, 1, !dbg !1428
  %lftr.wideiv1763 = trunc i64 %indvars.iv.next1762 to i32, !dbg !1428
  %exitcond1764 = icmp eq i32 %lftr.wideiv1763, 4, !dbg !1428
  br i1 %exitcond1764, label %for.end1002, label %for.body989, !dbg !1428

for.end1002:                                      ; preds = %for.body989
  %158 = bitcast i32* %arrayidx1003.pre-phi to i64*, !dbg !1339
  %159 = load i64* %158, align 16, !dbg !1339
  %160 = trunc i64 %159 to i32, !dbg !1339
  %161 = bitcast i32* %arrayidx1004.pre-phi to i64*, !dbg !1339
  %162 = load i64* %161, align 8, !dbg !1339
  %163 = trunc i64 %162 to i32, !dbg !1339
  %add1005 = add nsw i32 %163, %160, !dbg !1339
  store i32 %add1005, i32* %arrayidx1006.pre-phi, align 16, !dbg !1339, !tbaa !984
  %sub1009 = sub nsw i32 %160, %163, !dbg !1346
  store i32 %sub1009, i32* %arrayidx1010.pre-phi, align 4, !dbg !1346, !tbaa !984
  %164 = lshr i64 %159, 32
  %165 = trunc i64 %164 to i32
  %shr1012 = ashr i32 %165, 1, !dbg !1347
  %166 = lshr i64 %162, 32
  %167 = trunc i64 %166 to i32
  %sub1014 = sub nsw i32 %shr1012, %167, !dbg !1347
  store i32 %sub1014, i32* %arrayidx1015.pre-phi, align 8, !dbg !1347, !tbaa !984
  %shr1018 = ashr i32 %167, 1, !dbg !1348
  %add1019 = add nsw i32 %shr1018, %165, !dbg !1348
  store i32 %add1019, i32* %arrayidx1020.pre-phi, align 4, !dbg !1348, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1431
  br label %for.body1024, !dbg !1431

for.body1024:                                     ; preds = %for.body1024.for.body1024_crit_edge, %for.end1002
  %168 = phi i32 [ %add1005, %for.end1002 ], [ %.pre1871, %for.body1024.for.body1024_crit_edge ]
  %indvars.iv1765 = phi i64 [ 0, %for.end1002 ], [ %indvars.iv.next1766, %for.body1024.for.body1024_crit_edge ]
  %169 = sub nsw i64 3, %indvars.iv1765, !dbg !1433
  %arrayidx1029 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %169, !dbg !1435
  %170 = load i32* %arrayidx1029, align 4, !dbg !1435, !tbaa !984
  %add1030 = add nsw i32 %170, %168, !dbg !1435
  %arrayidx1038 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %indvars.iv1765, i64 %indvars.iv1776, !dbg !1435
  store i32 %add1030, i32* %arrayidx1038, align 4, !dbg !1435, !tbaa !984
  %sub1043 = sub nsw i32 %168, %170, !dbg !1436
  %arrayidx1051 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %169, i64 %indvars.iv1776, !dbg !1436
  store i32 %sub1043, i32* %arrayidx1051, align 4, !dbg !1436, !tbaa !984
  %indvars.iv.next1766 = add i64 %indvars.iv1765, 1, !dbg !1431
  %lftr.wideiv1768 = trunc i64 %indvars.iv.next1766 to i32, !dbg !1431
  %exitcond1769 = icmp eq i32 %lftr.wideiv1768, 2, !dbg !1431
  br i1 %exitcond1769, label %for.inc1055, label %for.body1024.for.body1024_crit_edge, !dbg !1431

for.body1024.for.body1024_crit_edge:              ; preds = %for.body1024
  %arrayidx1027.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1766
  %.pre1871 = load i32* %arrayidx1027.phi.trans.insert, align 4, !dbg !1435, !tbaa !984
  br label %for.body1024, !dbg !1431

for.inc1055:                                      ; preds = %for.body1024
  %indvars.iv.next1771 = add i64 %indvars.iv1770, 1, !dbg !1427
  %171 = trunc i64 %indvars.iv1770 to i32, !dbg !1427
  %cmp978.not = icmp sgt i32 %171, 2, !dbg !1427
  br i1 %cmp978.not, label %for.inc1058, label %for.cond986.preheader, !dbg !1427

for.inc1058:                                      ; preds = %for.end893, %for.inc1055, %for.cond977.loopexit
  %indvars.iv.next1773 = add i64 %indvars.iv1772, 1, !dbg !1384
  %lftr.wideiv1774 = trunc i64 %indvars.iv.next1773 to i32, !dbg !1384
  %exitcond1775 = icmp eq i32 %lftr.wideiv1774, 4, !dbg !1384
  br i1 %exitcond1775, label %for.inc1061, label %for.body731, !dbg !1384

for.inc1061:                                      ; preds = %for.inc1058
  %indvars.iv.next1777 = add i64 %indvars.iv1776, 1, !dbg !1377
  %lftr.wideiv1778 = trunc i64 %indvars.iv.next1777 to i32, !dbg !1377
  %exitcond1779 = icmp eq i32 %lftr.wideiv1778, 4, !dbg !1377
  br i1 %exitcond1779, label %for.end1063, label %for.cond728.preheader, !dbg !1377

for.end1063:                                      ; preds = %for.inc1061
  %172 = load %struct.ImageParameters** @img, align 8, !dbg !1437, !tbaa !978
  %residue_transform_flag1064 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 164, !dbg !1437
  %173 = load i32* %residue_transform_flag1064, align 4, !dbg !1437, !tbaa !984
  %tobool1065 = icmp eq i32 %173, 0, !dbg !1437
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !1438
  br i1 %tobool1065, label %for.cond1071.preheader, label %for.cond1102.preheader, !dbg !1437

for.cond1071.preheader:                           ; preds = %for.end1063, %for.inc1094
  %indvars.iv1734 = phi i64 [ %indvars.iv.next1735, %for.inc1094 ], [ 0, %for.end1063 ]
  %174 = trunc i64 %indvars.iv1734 to i32, !dbg !1441
  %div1075 = sdiv i32 %174, 4, !dbg !1441
  %idxprom1076 = sext i32 %div1075 to i64, !dbg !1441
  %rem1077 = srem i32 %174, 4, !dbg !1441
  %idxprom1078 = sext i32 %rem1077 to i64, !dbg !1441
  br label %for.body1074, !dbg !1447

for.body1074:                                     ; preds = %for.body1074, %for.cond1071.preheader
  %indvars.iv1730 = phi i64 [ 0, %for.cond1071.preheader ], [ %indvars.iv.next1731, %for.body1074 ]
  %175 = trunc i64 %indvars.iv1730 to i32, !dbg !1441
  %div1079 = sdiv i32 %175, 4, !dbg !1441
  %idxprom1080 = sext i32 %div1079 to i64, !dbg !1441
  %rem1081 = srem i32 %175, 4, !dbg !1441
  %idxprom1082 = sext i32 %rem1081 to i64, !dbg !1441
  %arrayidx1086 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom1082, i64 %idxprom1080, i64 %idxprom1078, i64 %idxprom1076, !dbg !1441
  %176 = load i32* %arrayidx1086, align 4, !dbg !1441, !tbaa !984
  %arrayidx1090 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1730, i64 %indvars.iv1734, !dbg !1441
  store i32 %176, i32* %arrayidx1090, align 4, !dbg !1441, !tbaa !984
  %indvars.iv.next1731 = add i64 %indvars.iv1730, 1, !dbg !1447
  %lftr.wideiv1732 = trunc i64 %indvars.iv.next1731 to i32, !dbg !1447
  %exitcond1733 = icmp eq i32 %lftr.wideiv1732, 16, !dbg !1447
  br i1 %exitcond1733, label %for.inc1094, label %for.body1074, !dbg !1447

for.inc1094:                                      ; preds = %for.body1074
  %indvars.iv.next1735 = add i64 %indvars.iv1734, 1, !dbg !1448
  %lftr.wideiv1736 = trunc i64 %indvars.iv.next1735 to i32, !dbg !1448
  %exitcond1737 = icmp eq i32 %lftr.wideiv1736, 16, !dbg !1448
  br i1 %exitcond1737, label %for.cond1156.preheader, label %for.cond1071.preheader, !dbg !1448

for.cond1102.preheader:                           ; preds = %for.end1063, %for.inc1149
  %indvars.iv1742 = phi i64 [ %indvars.iv.next1743, %for.inc1149 ], [ 0, %for.end1063 ]
  %177 = trunc i64 %indvars.iv1742 to i32, !dbg !1449
  %div1108 = sdiv i32 %177, 4, !dbg !1449
  %idxprom1109 = sext i32 %div1108 to i64, !dbg !1449
  %rem1110 = srem i32 %177, 4, !dbg !1449
  %idxprom1111 = sext i32 %rem1110 to i64, !dbg !1449
  br label %for.body1105, !dbg !1453

for.body1105:                                     ; preds = %for.inc1146, %for.cond1102.preheader
  %indvars.iv1738 = phi i64 [ 0, %for.cond1102.preheader ], [ %indvars.iv.next1739, %for.inc1146 ]
  %178 = trunc i64 %indvars.iv1738 to i32, !dbg !1449
  %div1112 = sdiv i32 %178, 4, !dbg !1449
  %idxprom1113 = sext i32 %div1112 to i64, !dbg !1449
  %rem1114 = srem i32 %178, 4, !dbg !1449
  %idxprom1115 = sext i32 %rem1114 to i64, !dbg !1449
  %arrayidx1119 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom1115, i64 %idxprom1113, i64 %idxprom1111, i64 %idxprom1109, !dbg !1449
  %179 = load i32* %arrayidx1119, align 4, !dbg !1449, !tbaa !984
  br i1 %13, label %if.then1107, label %if.else1125, !dbg !1454

if.then1107:                                      ; preds = %for.body1105
  %arrayidx1124 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 46, i64 %indvars.iv1738, i64 %indvars.iv1742, !dbg !1449
  store i32 %179, i32* %arrayidx1124, align 4, !dbg !1449, !tbaa !984
  br label %for.inc1146, !dbg !1449

if.else1125:                                      ; preds = %for.body1105
  %add1138 = add nsw i32 %179, 32, !dbg !1455
  %shr1139 = ashr i32 %add1138, 6, !dbg !1455
  %arrayidx1144 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 46, i64 %indvars.iv1738, i64 %indvars.iv1742, !dbg !1455
  store i32 %shr1139, i32* %arrayidx1144, align 4, !dbg !1455, !tbaa !984
  br label %for.inc1146

for.inc1146:                                      ; preds = %if.then1107, %if.else1125
  %indvars.iv.next1739 = add i64 %indvars.iv1738, 1, !dbg !1453
  %lftr.wideiv1740 = trunc i64 %indvars.iv.next1739 to i32, !dbg !1453
  %exitcond1741 = icmp eq i32 %lftr.wideiv1740, 16, !dbg !1453
  br i1 %exitcond1741, label %for.inc1149, label %for.body1105, !dbg !1453

for.inc1149:                                      ; preds = %for.inc1146
  %indvars.iv.next1743 = add i64 %indvars.iv1742, 1, !dbg !1438
  %lftr.wideiv1744 = trunc i64 %indvars.iv.next1743 to i32, !dbg !1438
  %exitcond1745 = icmp eq i32 %lftr.wideiv1744, 16, !dbg !1438
  br i1 %exitcond1745, label %if.end1152, label %for.cond1102.preheader, !dbg !1438

if.end1152:                                       ; preds = %for.inc1149
  %.pre = load i32* %residue_transform_flag1064, align 4, !dbg !1456, !tbaa !984
  %phitmp = icmp eq i32 %.pre, 0
  br i1 %phitmp, label %for.cond1156.preheader, label %if.end1289, !dbg !1456

for.cond1156.preheader:                           ; preds = %for.inc1094, %if.end1152
  %pix_x = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 33, !dbg !1457
  %pix_y = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 34, !dbg !1457
  %180 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1457, !tbaa !978
  %imgY = getelementptr inbounds %struct.storable_picture* %180, i64 0, i32 25, !dbg !1457
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 155, !dbg !1463
  br label %for.cond1160.preheader, !dbg !1464

for.cond1160.preheader:                           ; preds = %for.inc1286, %for.cond1156.preheader
  %indvars.iv1726 = phi i64 [ 0, %for.cond1156.preheader ], [ %indvars.iv.next1727, %for.inc1286 ]
  br label %for.body1163, !dbg !1465

for.body1163:                                     ; preds = %for.inc1283, %for.cond1160.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1160.preheader ], [ %indvars.iv.next, %for.inc1283 ]
  br i1 %13, label %if.then1165, label %if.else1186, !dbg !1466

if.then1165:                                      ; preds = %for.body1163
  %arrayidx1169 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv, i64 %indvars.iv1726, !dbg !1457
  %181 = load i32* %arrayidx1169, align 4, !dbg !1457, !tbaa !984
  %arrayidx1176 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1726, i64 %indvars.iv, !dbg !1457
  %182 = load i16* %arrayidx1176, align 2, !dbg !1457, !tbaa !1014
  %conv1177 = zext i16 %182 to i32, !dbg !1457
  %add1178 = add nsw i32 %conv1177, %181, !dbg !1457
  %conv1179 = trunc i32 %add1178 to i16, !dbg !1457
  %183 = load i32* %pix_x, align 4, !dbg !1457, !tbaa !984
  %184 = trunc i64 %indvars.iv to i32, !dbg !1457
  %add1180 = add nsw i32 %183, %184, !dbg !1457
  %idxprom1181 = sext i32 %add1180 to i64, !dbg !1457
  %185 = load i32* %pix_y, align 4, !dbg !1457, !tbaa !984
  %186 = trunc i64 %indvars.iv1726 to i32, !dbg !1457
  %add1182 = add nsw i32 %185, %186, !dbg !1457
  %idxprom1183 = sext i32 %add1182 to i64, !dbg !1457
  %187 = load i16*** %imgY, align 8, !dbg !1457, !tbaa !978
  %arrayidx1184 = getelementptr inbounds i16** %187, i64 %idxprom1183, !dbg !1457
  %188 = load i16** %arrayidx1184, align 8, !dbg !1457, !tbaa !978
  %arrayidx1185 = getelementptr inbounds i16* %188, i64 %idxprom1181, !dbg !1457
  store i16 %conv1179, i16* %arrayidx1185, align 2, !dbg !1457, !tbaa !1014
  br label %for.inc1283, !dbg !1457

if.else1186:                                      ; preds = %for.body1163
  %189 = load i32* %max_imgpel_value, align 4, !dbg !1463, !tbaa !984
  %conv1187 = sext i32 %189 to i64, !dbg !1463
  %arrayidx1191 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv, i64 %indvars.iv1726, !dbg !1463
  %190 = load i32* %arrayidx1191, align 4, !dbg !1463, !tbaa !984
  %conv1192 = sext i32 %190 to i64, !dbg !1463
  %arrayidx1199 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1726, i64 %indvars.iv, !dbg !1463
  %191 = load i16* %arrayidx1199, align 2, !dbg !1463, !tbaa !1014
  %conv1200 = zext i16 %191 to i64, !dbg !1463
  %shl1201 = shl nuw nsw i64 %conv1200, 6, !dbg !1463
  %add1202 = add i64 %conv1192, 32, !dbg !1463
  %add1203 = add i64 %add1202, %shl1201, !dbg !1463
  %shr1204 = ashr i64 %add1203, 6, !dbg !1463
  %cmp1205 = icmp slt i64 %shr1204, 0, !dbg !1463
  %.shr1204 = select i1 %cmp1205, i64 0, i64 %shr1204, !dbg !1463
  %cmp1224 = icmp slt i64 %conv1187, %.shr1204, !dbg !1463
  %conv1187..shr1204 = select i1 %cmp1224, i64 %conv1187, i64 %.shr1204, !dbg !1463
  %conv1272 = trunc i64 %conv1187..shr1204 to i16, !dbg !1463
  %192 = load i32* %pix_x, align 4, !dbg !1463, !tbaa !984
  %193 = trunc i64 %indvars.iv to i32, !dbg !1463
  %add1274 = add nsw i32 %192, %193, !dbg !1463
  %idxprom1275 = sext i32 %add1274 to i64, !dbg !1463
  %194 = load i32* %pix_y, align 4, !dbg !1463, !tbaa !984
  %195 = trunc i64 %indvars.iv1726 to i32, !dbg !1463
  %add1277 = add nsw i32 %194, %195, !dbg !1463
  %idxprom1278 = sext i32 %add1277 to i64, !dbg !1463
  %196 = load i16*** %imgY, align 8, !dbg !1463, !tbaa !978
  %arrayidx1280 = getelementptr inbounds i16** %196, i64 %idxprom1278, !dbg !1463
  %197 = load i16** %arrayidx1280, align 8, !dbg !1463, !tbaa !978
  %arrayidx1281 = getelementptr inbounds i16* %197, i64 %idxprom1275, !dbg !1463
  store i16 %conv1272, i16* %arrayidx1281, align 2, !dbg !1463, !tbaa !1014
  br label %for.inc1283

for.inc1283:                                      ; preds = %if.then1165, %if.else1186
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1465
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1465
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !1465
  br i1 %exitcond, label %for.inc1286, label %for.body1163, !dbg !1465

for.inc1286:                                      ; preds = %for.inc1283
  %indvars.iv.next1727 = add i64 %indvars.iv1726, 1, !dbg !1464
  %lftr.wideiv1728 = trunc i64 %indvars.iv.next1727 to i32, !dbg !1464
  %exitcond1729 = icmp eq i32 %lftr.wideiv1728, 16, !dbg !1464
  br i1 %exitcond1729, label %if.end1289, label %for.cond1160.preheader, !dbg !1464

if.end1289:                                       ; preds = %for.inc1286, %if.end1152
  call void @llvm.lifetime.end(i64 1024, i8* %2) #2, !dbg !1467
  call void @llvm.lifetime.end(i64 64, i8* %1) #2, !dbg !1467
  call void @llvm.lifetime.end(i64 1024, i8* %0) #2, !dbg !1467
  ret i32 %ac_coef.3, !dbg !1467
}

; Function Attrs: optsize
declare i32 @sign(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma(i32 %block_x, i32 %block_y, i32* nocapture %coeff_cost, i32 %intra) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !202), !dbg !1468
  call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !203), !dbg !1468
  call void @llvm.dbg.value(metadata !{i32* %coeff_cost}, i64 0, metadata !204), !dbg !1468
  call void @llvm.dbg.value(metadata !{i32 %intra}, i64 0, metadata !205), !dbg !1468
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !211), !dbg !1469
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !212), !dbg !1469
  %div = sdiv i32 %block_x, 4, !dbg !1470
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !221), !dbg !1470
  %div1 = sdiv i32 %block_y, 4, !dbg !1471
  call void @llvm.dbg.value(metadata !{i32 %div1}, i64 0, metadata !222), !dbg !1471
  %div2 = sdiv i32 %block_y, 8, !dbg !1472
  %mul = shl i32 %div2, 1, !dbg !1472
  %div3 = sdiv i32 %block_x, 8, !dbg !1472
  %add = add nsw i32 %mul, %div3, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !223), !dbg !1472
  %rem = srem i32 %div1, 2, !dbg !1473
  %mul4 = shl i32 %rem, 1, !dbg !1473
  %rem5 = srem i32 %div, 2, !dbg !1473
  %add6 = add nsw i32 %mul4, %rem5, !dbg !1473
  call void @llvm.dbg.value(metadata !{i32 %add6}, i64 0, metadata !224), !dbg !1473
  %idxprom = sext i32 %add6 to i64, !dbg !1474
  %idxprom7 = sext i32 %add to i64, !dbg !1474
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1474, !tbaa !978
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47, !dbg !1474
  %1 = load i32***** %cofAC, align 8, !dbg !1474, !tbaa !978
  %arrayidx = getelementptr inbounds i32**** %1, i64 %idxprom7, !dbg !1474
  %2 = load i32**** %arrayidx, align 8, !dbg !1474, !tbaa !978
  %arrayidx8 = getelementptr inbounds i32*** %2, i64 %idxprom, !dbg !1474
  %3 = load i32*** %arrayidx8, align 8, !dbg !1474, !tbaa !978
  %4 = load i32** %3, align 8, !dbg !1474, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !225), !dbg !1474
  %arrayidx15 = getelementptr inbounds i32** %3, i64 1, !dbg !1475
  %5 = load i32** %arrayidx15, align 8, !dbg !1475, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !226), !dbg !1475
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1476
  %6 = load i32* %current_mb_nr, align 4, !dbg !1476, !tbaa !984
  %idxprom16 = sext i32 %6 to i64, !dbg !1476
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1476
  %7 = load %struct.macroblock** %mb_data, align 8, !dbg !1476, !tbaa !978
  %qp = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom16, i32 3, !dbg !1477
  %8 = load i32* %qp, align 4, !dbg !1477, !tbaa !984
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151, !dbg !1477
  %9 = load i32* %bitdepth_luma_qp_scale, align 4, !dbg !1477, !tbaa !984
  %add18 = sub i32 0, %9, !dbg !1477
  %cmp = icmp eq i32 %8, %add18, !dbg !1477
  br i1 %cmp, label %land.end, label %land.end.thread, !dbg !1477

land.end.thread:                                  ; preds = %entry
  %add221080 = add nsw i32 %9, %8, !dbg !1478
  %div231081 = sdiv i32 %add221080, 6, !dbg !1478
  call void @llvm.dbg.value(metadata !{i32 %div2310871094}, i64 0, metadata !218), !dbg !1478
  %rem281082 = srem i32 %add221080, 6, !dbg !1479
  call void @llvm.dbg.value(metadata !{i32 %rem2810891093}, i64 0, metadata !219), !dbg !1479
  %add291083 = add nsw i32 %div231081, 15, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %add2910911092}, i64 0, metadata !220), !dbg !1480
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !207), !dbg !1481
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1483
  br label %for.cond34.preheader.lr.ph, !dbg !1481

land.end:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160, !dbg !1477
  %10 = load i32* %lossless_qpprime_flag, align 4, !dbg !1477, !tbaa !984
  %cmp19 = icmp eq i32 %10, 1, !dbg !1477
  %add22 = add nsw i32 %9, %8, !dbg !1478
  %div23 = sdiv i32 %add22, 6, !dbg !1478
  call void @llvm.dbg.value(metadata !{i32 %div2310871094}, i64 0, metadata !218), !dbg !1478
  %rem28 = srem i32 %add22, 6, !dbg !1479
  call void @llvm.dbg.value(metadata !{i32 %rem2810891093}, i64 0, metadata !219), !dbg !1479
  %add29 = add nsw i32 %div23, 15, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %add2910911092}, i64 0, metadata !220), !dbg !1480
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !207), !dbg !1481
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1483
  br i1 %cmp19, label %for.cond170.preheader, label %for.cond34.preheader.lr.ph, !dbg !1481

for.cond34.preheader.lr.ph:                       ; preds = %land.end.thread, %land.end
  %add291090 = phi i32 [ %add291083, %land.end.thread ], [ %add29, %land.end ]
  %rem281088 = phi i32 [ %rem281082, %land.end.thread ], [ %rem28, %land.end ]
  %div231086 = phi i32 [ %div231081, %land.end.thread ], [ %div23, %land.end ]
  %add221084 = phi i32 [ %add221080, %land.end.thread ], [ %add22, %land.end ]
  %arrayidx77 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1486
  %arrayidx79 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1486
  br label %for.cond34.preheader, !dbg !1481

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.end
  %indvars.iv1075 = phi i64 [ 0, %for.cond34.preheader.lr.ph ], [ %indvars.iv.next1076, %for.end ]
  br label %for.body36, !dbg !1483

for.cond104.preheader.lr.ph:                      ; preds = %for.end
  %arrayidx151 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1487
  %arrayidx153 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1487
  br label %for.cond104.preheader, !dbg !1490

for.body36:                                       ; preds = %for.body36, %for.cond34.preheader
  %indvars.iv1070 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next1071, %for.body36 ]
  %11 = sub nsw i64 3, %indvars.iv1070, !dbg !1491
  %arrayidx41 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1070, i64 %indvars.iv1075, !dbg !1493
  %12 = load i32* %arrayidx41, align 4, !dbg !1493, !tbaa !984
  %arrayidx46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %11, i64 %indvars.iv1075, !dbg !1493
  %13 = load i32* %arrayidx46, align 4, !dbg !1493, !tbaa !984
  %add47 = add nsw i32 %13, %12, !dbg !1493
  %arrayidx49 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1070, !dbg !1493
  store i32 %add47, i32* %arrayidx49, align 4, !dbg !1493, !tbaa !984
  %14 = load i32* %arrayidx41, align 4, !dbg !1494, !tbaa !984
  %15 = load i32* %arrayidx46, align 4, !dbg !1494, !tbaa !984
  %sub60 = sub nsw i32 %14, %15, !dbg !1494
  %arrayidx62 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %11, !dbg !1494
  store i32 %sub60, i32* %arrayidx62, align 4, !dbg !1494, !tbaa !984
  %indvars.iv.next1071 = add i64 %indvars.iv1070, 1, !dbg !1483
  %lftr.wideiv1073 = trunc i64 %indvars.iv.next1071 to i32, !dbg !1483
  %exitcond1074 = icmp eq i32 %lftr.wideiv1073, 2, !dbg !1483
  br i1 %exitcond1074, label %for.end, label %for.body36, !dbg !1483

for.end:                                          ; preds = %for.body36
  %16 = bitcast [4 x i32]* %m5 to i64*, !dbg !1495
  %17 = load i64* %16, align 16, !dbg !1495
  %18 = trunc i64 %17 to i32, !dbg !1495
  %19 = lshr i64 %17, 32
  %20 = trunc i64 %19 to i32
  %add65 = add nsw i32 %20, %18, !dbg !1495
  %arrayidx69 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv1075, !dbg !1495
  store i32 %add65, i32* %arrayidx69, align 4, !dbg !1495, !tbaa !984
  %21 = load i64* %16, align 16, !dbg !1496
  %22 = trunc i64 %21 to i32, !dbg !1496
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %sub72 = sub nsw i32 %22, %24, !dbg !1496
  %arrayidx76 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv1075, !dbg !1496
  store i32 %sub72, i32* %arrayidx76, align 4, !dbg !1496, !tbaa !984
  %25 = load i32* %arrayidx77, align 4, !dbg !1486, !tbaa !984
  %mul78 = shl i32 %25, 1, !dbg !1486
  %26 = load i32* %arrayidx79, align 8, !dbg !1486, !tbaa !984
  %add80 = add nsw i32 %mul78, %26, !dbg !1486
  %arrayidx84 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv1075, !dbg !1486
  store i32 %add80, i32* %arrayidx84, align 4, !dbg !1486, !tbaa !984
  %27 = load i32* %arrayidx77, align 4, !dbg !1497, !tbaa !984
  %28 = load i32* %arrayidx79, align 8, !dbg !1497, !tbaa !984
  %mul87 = shl nsw i32 %28, 1, !dbg !1497
  %sub88 = sub nsw i32 %27, %mul87, !dbg !1497
  %arrayidx92 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv1075, !dbg !1497
  store i32 %sub88, i32* %arrayidx92, align 4, !dbg !1497, !tbaa !984
  %indvars.iv.next1076 = add i64 %indvars.iv1075, 1, !dbg !1481
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1483
  %29 = trunc i64 %indvars.iv1075 to i32, !dbg !1481
  %cmp30.not = icmp sgt i32 %29, 2, !dbg !1481
  br i1 %cmp30.not, label %for.cond104.preheader.lr.ph, label %for.cond34.preheader, !dbg !1481

for.cond104.preheader:                            ; preds = %for.cond104.preheader.lr.ph, %for.end136
  %indvars.iv1068 = phi i64 [ 0, %for.cond104.preheader.lr.ph ], [ %indvars.iv.next1069, %for.end136 ]
  br label %for.body106, !dbg !1498

for.cond170.preheader:                            ; preds = %land.end, %for.end136
  %30 = phi i1 [ false, %for.end136 ], [ true, %land.end ]
  %add2210851095 = phi i32 [ %add221084, %for.end136 ], [ %add22, %land.end ]
  %div2310871094 = phi i32 [ %div231086, %for.end136 ], [ %div23, %land.end ]
  %rem2810891093 = phi i32 [ %rem281088, %for.end136 ], [ %rem28, %land.end ]
  %add2910911092 = phi i32 [ %add291090, %for.end136 ], [ %add29, %land.end ]
  %mb_field = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom16, i32 22, !dbg !1500
  %cmp284 = icmp slt i32 %add2210851095, 24, !dbg !1503
  %cmp287 = icmp eq i32 %intra, 1, !dbg !1505
  %idxprom292 = sext i32 %rem2810891093 to i64, !dbg !1507
  %sub297 = sub nsw i32 3, %div2310871094, !dbg !1507
  %shl = shl i32 1, %sub297, !dbg !1507
  %sub299 = sub nsw i32 4, %div2310871094, !dbg !1507
  %sub326 = add nsw i32 %div2310871094, -4, !dbg !1508
  %idxprom218 = sext i32 %div2310871094 to i64, !dbg !1510
  br label %for.body172, !dbg !1511

for.body106:                                      ; preds = %for.body106, %for.cond104.preheader
  %indvars.iv1063 = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next1064, %for.body106 ]
  %31 = sub nsw i64 3, %indvars.iv1063, !dbg !1512
  %arrayidx112 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 %indvars.iv1063, !dbg !1514
  %32 = load i32* %arrayidx112, align 4, !dbg !1514, !tbaa !984
  %arrayidx117 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 %31, !dbg !1514
  %33 = load i32* %arrayidx117, align 4, !dbg !1514, !tbaa !984
  %add118 = add nsw i32 %33, %32, !dbg !1514
  %arrayidx120 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1063, !dbg !1514
  store i32 %add118, i32* %arrayidx120, align 4, !dbg !1514, !tbaa !984
  %34 = load i32* %arrayidx112, align 4, !dbg !1515, !tbaa !984
  %35 = load i32* %arrayidx117, align 4, !dbg !1515, !tbaa !984
  %sub131 = sub nsw i32 %34, %35, !dbg !1515
  %arrayidx133 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %31, !dbg !1515
  store i32 %sub131, i32* %arrayidx133, align 4, !dbg !1515, !tbaa !984
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 1, !dbg !1498
  %lftr.wideiv1066 = trunc i64 %indvars.iv.next1064 to i32, !dbg !1498
  %exitcond1067 = icmp eq i32 %lftr.wideiv1066, 2, !dbg !1498
  br i1 %exitcond1067, label %for.end136, label %for.body106, !dbg !1498

for.end136:                                       ; preds = %for.body106
  %36 = bitcast [4 x i32]* %m5 to i64*, !dbg !1516
  %37 = load i64* %36, align 16, !dbg !1516
  %38 = trunc i64 %37 to i32, !dbg !1516
  %39 = lshr i64 %37, 32
  %40 = trunc i64 %39 to i32
  %add139 = add nsw i32 %40, %38, !dbg !1516
  %arrayidx143 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 0, !dbg !1516
  store i32 %add139, i32* %arrayidx143, align 4, !dbg !1516, !tbaa !984
  %41 = load i64* %36, align 16, !dbg !1517
  %42 = trunc i64 %41 to i32, !dbg !1517
  %43 = lshr i64 %41, 32
  %44 = trunc i64 %43 to i32
  %sub146 = sub nsw i32 %42, %44, !dbg !1517
  %arrayidx150 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 2, !dbg !1517
  store i32 %sub146, i32* %arrayidx150, align 4, !dbg !1517, !tbaa !984
  %45 = load i32* %arrayidx151, align 4, !dbg !1487, !tbaa !984
  %mul152 = shl i32 %45, 1, !dbg !1487
  %46 = load i32* %arrayidx153, align 8, !dbg !1487, !tbaa !984
  %add154 = add nsw i32 %mul152, %46, !dbg !1487
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 1, !dbg !1487
  store i32 %add154, i32* %arrayidx158, align 4, !dbg !1487, !tbaa !984
  %47 = load i32* %arrayidx151, align 4, !dbg !1518, !tbaa !984
  %48 = load i32* %arrayidx153, align 8, !dbg !1518, !tbaa !984
  %mul161 = shl nsw i32 %48, 1, !dbg !1518
  %sub162 = sub nsw i32 %47, %mul161, !dbg !1518
  %arrayidx166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 3, !dbg !1518
  store i32 %sub162, i32* %arrayidx166, align 4, !dbg !1518, !tbaa !984
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1, !dbg !1490
  %49 = trunc i64 %indvars.iv1068 to i32, !dbg !1490
  %cmp97.not = icmp sgt i32 %49, 2, !dbg !1490
  br i1 %cmp97.not, label %for.cond170.preheader, label %for.cond104.preheader, !dbg !1490

for.body172:                                      ; preds = %for.inc350.for.body172_crit_edge, %for.cond170.preheader
  %50 = phi %struct.ImageParameters* [ %0, %for.cond170.preheader ], [ %.pre, %for.inc350.for.body172_crit_edge ], !dbg !1500
  %indvars.iv1059 = phi i64 [ 0, %for.cond170.preheader ], [ %indvars.iv.next1060, %for.inc350.for.body172_crit_edge ]
  %scan_pos.01020 = phi i32 [ 0, %for.cond170.preheader ], [ %scan_pos.11004, %for.inc350.for.body172_crit_edge ]
  %run.01019 = phi i32 [ -1, %for.cond170.preheader ], [ %run.11003, %for.inc350.for.body172_crit_edge ]
  %nonzero.01018 = phi i32 [ 0, %for.cond170.preheader ], [ %nonzero.11002, %for.inc350.for.body172_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 100, !dbg !1500
  %51 = load i32* %field_picture, align 4, !dbg !1500, !tbaa !984
  %tobool173 = icmp eq i32 %51, 0, !dbg !1500
  br i1 %tobool173, label %lor.lhs.false, label %if.end, !dbg !1500

lor.lhs.false:                                    ; preds = %for.body172
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 90, !dbg !1500
  %52 = load i32* %MbaffFrameFlag, align 4, !dbg !1500, !tbaa !984
  %tobool174 = icmp eq i32 %52, 0, !dbg !1500
  br i1 %tobool174, label %if.else, label %land.lhs.true, !dbg !1500

land.lhs.true:                                    ; preds = %lor.lhs.false
  %53 = load i32* %mb_field, align 4, !dbg !1500, !tbaa !984
  %tobool175 = icmp eq i32 %53, 0, !dbg !1500
  br i1 %tobool175, label %if.else, label %if.end, !dbg !1500

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end

if.end:                                           ; preds = %for.body172, %land.lhs.true, %if.else
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body172 ]
  %i.2.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1059, i64 0, !dbg !1519
  %j.2.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1059, i64 1, !dbg !1521
  %i.2.in = load i8* %i.2.in.in, align 2, !dbg !1519
  %j.2.in = load i8* %j.2.in.in, align 1, !dbg !1521
  %inc191 = add nsw i32 %run.01019, 1, !dbg !1522
  call void @llvm.dbg.value(metadata !{i32 %inc191}, i64 0, metadata !216), !dbg !1522
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !210), !dbg !1523
  %idxprom194 = zext i8 %j.2.in to i64, !dbg !1524
  %idxprom195 = zext i8 %i.2.in to i64, !dbg !1524
  %arrayidx198 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 46, i64 %idxprom195, i64 %idxprom194, !dbg !1524
  %54 = load i32* %arrayidx198, align 4, !dbg !1524, !tbaa !984
  %ispos996 = icmp sgt i32 %54, -1, !dbg !1524
  %neg997 = sub i32 0, %54, !dbg !1524
  %55 = select i1 %ispos996, i32 %54, i32 %neg997, !dbg !1524
  br i1 %30, label %if.end246, label %if.else199, !dbg !1525

if.else199:                                       ; preds = %if.end
  br i1 %cmp287, label %if.then202, label %if.else223, !dbg !1526

if.then202:                                       ; preds = %if.else199
  %arrayidx214 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom195, i64 %idxprom194, !dbg !1510
  %56 = load i32* %arrayidx214, align 4, !dbg !1510, !tbaa !984
  %mul215 = mul nsw i32 %56, %55, !dbg !1510
  %arrayidx221 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom218, i64 %idxprom195, i64 %idxprom194, !dbg !1510
  %57 = load i32* %arrayidx221, align 4, !dbg !1510, !tbaa !984
  %add222 = add nsw i32 %mul215, %57, !dbg !1510
  %shr = ashr i32 %add222, %add2910911092, !dbg !1510
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !214), !dbg !1510
  br label %if.end246, !dbg !1510

if.else223:                                       ; preds = %if.else199
  %arrayidx235 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom195, i64 %idxprom194, !dbg !1527
  %58 = load i32* %arrayidx235, align 4, !dbg !1527, !tbaa !984
  %mul236 = mul nsw i32 %58, %55, !dbg !1527
  %arrayidx242 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %idxprom218, i64 %idxprom195, i64 %idxprom194, !dbg !1527
  %59 = load i32* %arrayidx242, align 4, !dbg !1527, !tbaa !984
  %add243 = add nsw i32 %mul236, %59, !dbg !1527
  %shr244 = ashr i32 %add243, %add2910911092, !dbg !1527
  call void @llvm.dbg.value(metadata !{i32 %shr244}, i64 0, metadata !214), !dbg !1527
  br label %if.end246

if.end246:                                        ; preds = %if.end, %if.then202, %if.else223
  %level.0 = phi i32 [ %shr, %if.then202 ], [ %shr244, %if.else223 ], [ %55, %if.end ]
  %cmp247 = icmp eq i32 %level.0, 0, !dbg !1528
  br i1 %cmp247, label %if.end341, label %if.then249, !dbg !1528

if.then249:                                       ; preds = %if.end246
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !217), !dbg !1529
  %cmp250 = icmp sgt i32 %level.0, 1, !dbg !1530
  %brmerge998 = or i1 %cmp250, %30, !dbg !1530
  br i1 %brmerge998, label %if.then254, label %if.else256, !dbg !1530

if.then254:                                       ; preds = %if.then249
  %60 = load i32* %coeff_cost, align 4, !dbg !1531, !tbaa !984
  %add255 = add nsw i32 %60, 999999, !dbg !1531
  br label %if.end263, !dbg !1531

if.else256:                                       ; preds = %if.then249
  %idxprom257 = sext i32 %inc191 to i64, !dbg !1532
  %61 = load %struct.InputParameters** @input, align 8, !dbg !1532, !tbaa !978
  %disthres = getelementptr inbounds %struct.InputParameters* %61, i64 0, i32 86, !dbg !1532
  %62 = load i32* %disthres, align 4, !dbg !1532, !tbaa !984
  %idxprom258 = sext i32 %62 to i64, !dbg !1532
  %arrayidx260 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom258, i64 %idxprom257, !dbg !1532
  %63 = load i8* %arrayidx260, align 1, !dbg !1532, !tbaa !979
  %conv261 = zext i8 %63 to i32, !dbg !1532
  %64 = load i32* %coeff_cost, align 4, !dbg !1532, !tbaa !984
  %add262 = add nsw i32 %64, %conv261, !dbg !1532
  br label %if.end263

if.end263:                                        ; preds = %if.else256, %if.then254
  %storemerge = phi i32 [ %add262, %if.else256 ], [ %add255, %if.then254 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !dbg !1531, !tbaa !984
  %idxprom264 = zext i8 %j.2.in to i64, !dbg !1533
  %idxprom265 = zext i8 %i.2.in to i64, !dbg !1533
  %arrayidx268 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 46, i64 %idxprom265, i64 %idxprom264, !dbg !1533
  %65 = load i32* %arrayidx268, align 4, !dbg !1533, !tbaa !984
  %call269 = call i32 @sign(i32 %level.0, i32 %65) #4, !dbg !1533
  %idxprom270 = sext i32 %scan_pos.01020 to i64, !dbg !1533
  %arrayidx271 = getelementptr inbounds i32* %4, i64 %idxprom270, !dbg !1533
  store i32 %call269, i32* %arrayidx271, align 4, !dbg !1533, !tbaa !984
  %arrayidx273 = getelementptr inbounds i32* %5, i64 %idxprom270, !dbg !1534
  store i32 %inc191, i32* %arrayidx273, align 4, !dbg !1534, !tbaa !984
  %inc274 = add nsw i32 %scan_pos.01020, 1, !dbg !1535
  call void @llvm.dbg.value(metadata !{i32 %inc274}, i64 0, metadata !215), !dbg !1535
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !216), !dbg !1536
  %66 = load %struct.ImageParameters** @img, align 8, !dbg !1537, !tbaa !978
  %arrayidx279 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 46, i64 %idxprom265, i64 %idxprom264, !dbg !1537
  %67 = load i32* %arrayidx279, align 4, !dbg !1537, !tbaa !984
  %call280 = call i32 @sign(i32 %level.0, i32 %67) #4, !dbg !1537
  call void @llvm.dbg.value(metadata !{i32 %call280}, i64 0, metadata !214), !dbg !1537
  br i1 %30, label %for.inc350, label %if.else283, !dbg !1538

if.else283:                                       ; preds = %if.end263
  br i1 %cmp284, label %if.then286, label %if.else315, !dbg !1503

if.then286:                                       ; preds = %if.else283
  br i1 %cmp287, label %if.then289, label %if.end341.thread1005, !dbg !1505

if.then289:                                       ; preds = %if.then286
  %arrayidx295 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264, !dbg !1507
  %68 = load i32* %arrayidx295, align 4, !dbg !1507, !tbaa !984
  %mul296 = mul nsw i32 %68, %call280, !dbg !1507
  %add298 = add nsw i32 %mul296, %shl, !dbg !1507
  %shr300 = ashr i32 %add298, %sub299, !dbg !1507
  call void @llvm.dbg.value(metadata !{i32 %shr300}, i64 0, metadata !210), !dbg !1507
  br label %if.end341, !dbg !1507

if.end341.thread1005:                             ; preds = %if.then286
  %arrayidx307 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264, !dbg !1539
  %69 = load i32* %arrayidx307, align 4, !dbg !1539, !tbaa !984
  %mul308 = mul nsw i32 %69, %call280, !dbg !1539
  %add311 = add nsw i32 %mul308, %shl, !dbg !1539
  %shr313 = ashr i32 %add311, %sub299, !dbg !1539
  call void @llvm.dbg.value(metadata !{i32 %shr313}, i64 0, metadata !210), !dbg !1539
  br label %if.then343, !dbg !1540

if.else315:                                       ; preds = %if.else283
  br i1 %cmp287, label %if.then318, label %if.end341.thread, !dbg !1541

if.then318:                                       ; preds = %if.else315
  %arrayidx324 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264, !dbg !1508
  %70 = load i32* %arrayidx324, align 4, !dbg !1508, !tbaa !984
  %mul325 = mul nsw i32 %70, %call280, !dbg !1508
  %shl327 = shl i32 %mul325, %sub326, !dbg !1508
  call void @llvm.dbg.value(metadata !{i32 %shl327}, i64 0, metadata !210), !dbg !1508
  br label %if.end341, !dbg !1508

if.end341.thread:                                 ; preds = %if.else315
  %arrayidx334 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264, !dbg !1542
  %71 = load i32* %arrayidx334, align 4, !dbg !1542, !tbaa !984
  %mul335 = mul nsw i32 %71, %call280, !dbg !1542
  %shl337 = shl i32 %mul335, %sub326, !dbg !1542
  call void @llvm.dbg.value(metadata !{i32 %shl337}, i64 0, metadata !210), !dbg !1542
  br label %if.end341.if.then343_crit_edge, !dbg !1540

if.end341:                                        ; preds = %if.end246, %if.then318, %if.then289
  %nonzero.1 = phi i32 [ 1, %if.then289 ], [ 1, %if.then318 ], [ %nonzero.01018, %if.end246 ]
  %run.1 = phi i32 [ -1, %if.then289 ], [ -1, %if.then318 ], [ %inc191, %if.end246 ]
  %scan_pos.1 = phi i32 [ %inc274, %if.then289 ], [ %inc274, %if.then318 ], [ %scan_pos.01020, %if.end246 ]
  %ilev.0 = phi i32 [ %shr300, %if.then289 ], [ %shl327, %if.then318 ], [ 0, %if.end246 ]
  br i1 %30, label %for.inc350, label %if.end341.if.then343_crit_edge, !dbg !1540

if.end341.if.then343_crit_edge:                   ; preds = %if.end341.thread, %if.end341
  %ilev.01099 = phi i32 [ %shl337, %if.end341.thread ], [ %ilev.0, %if.end341 ]
  %scan_pos.11098 = phi i32 [ %inc274, %if.end341.thread ], [ %scan_pos.1, %if.end341 ]
  %run.11097 = phi i32 [ -1, %if.end341.thread ], [ %run.1, %if.end341 ]
  %nonzero.11096 = phi i32 [ 1, %if.end341.thread ], [ %nonzero.1, %if.end341 ]
  %idxprom344.pre = zext i8 %j.2.in to i64, !dbg !1543
  %idxprom345.pre = zext i8 %i.2.in to i64, !dbg !1543
  br label %if.then343, !dbg !1540

if.then343:                                       ; preds = %if.end341.if.then343_crit_edge, %if.end341.thread1005
  %idxprom345.pre-phi = phi i64 [ %idxprom345.pre, %if.end341.if.then343_crit_edge ], [ %idxprom265, %if.end341.thread1005 ], !dbg !1543
  %idxprom344.pre-phi = phi i64 [ %idxprom344.pre, %if.end341.if.then343_crit_edge ], [ %idxprom264, %if.end341.thread1005 ], !dbg !1543
  %ilev.01009 = phi i32 [ %ilev.01099, %if.end341.if.then343_crit_edge ], [ %shr313, %if.end341.thread1005 ]
  %scan_pos.11008 = phi i32 [ %scan_pos.11098, %if.end341.if.then343_crit_edge ], [ %inc274, %if.end341.thread1005 ]
  %run.11007 = phi i32 [ %run.11097, %if.end341.if.then343_crit_edge ], [ -1, %if.end341.thread1005 ]
  %nonzero.11006 = phi i32 [ %nonzero.11096, %if.end341.if.then343_crit_edge ], [ 1, %if.end341.thread1005 ]
  %72 = load %struct.ImageParameters** @img, align 8, !dbg !1543, !tbaa !978
  %arrayidx348 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 46, i64 %idxprom345.pre-phi, i64 %idxprom344.pre-phi, !dbg !1543
  store i32 %ilev.01009, i32* %arrayidx348, align 4, !dbg !1543, !tbaa !984
  br label %for.inc350, !dbg !1543

for.inc350:                                       ; preds = %if.end263, %if.end341, %if.then343
  %scan_pos.11004 = phi i32 [ %scan_pos.1, %if.end341 ], [ %scan_pos.11008, %if.then343 ], [ %inc274, %if.end263 ]
  %run.11003 = phi i32 [ %run.1, %if.end341 ], [ %run.11007, %if.then343 ], [ -1, %if.end263 ]
  %nonzero.11002 = phi i32 [ %nonzero.1, %if.end341 ], [ %nonzero.11006, %if.then343 ], [ 1, %if.end263 ]
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1, !dbg !1511
  %lftr.wideiv1061 = trunc i64 %indvars.iv.next1060 to i32, !dbg !1511
  %exitcond1062 = icmp eq i32 %lftr.wideiv1061, 16, !dbg !1511
  br i1 %exitcond1062, label %for.end352, label %for.inc350.for.body172_crit_edge, !dbg !1511

for.inc350.for.body172_crit_edge:                 ; preds = %for.inc350
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1500, !tbaa !978
  br label %for.body172, !dbg !1511

for.end352:                                       ; preds = %for.inc350
  %idxprom353 = sext i32 %scan_pos.11004 to i64, !dbg !1544
  %arrayidx354 = getelementptr inbounds i32* %4, i64 %idxprom353, !dbg !1544
  store i32 0, i32* %arrayidx354, align 4, !dbg !1544, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !207), !dbg !1545
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1547
  br i1 %30, label %for.cond427.preheader.for.end724_crit_edge, label %for.cond364.preheader.lr.ph, !dbg !1545

for.cond364.preheader.lr.ph:                      ; preds = %for.end352
  %73 = load %struct.ImageParameters** @img, align 8, !dbg !1550, !tbaa !978
  %arrayidx379 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1552
  %arrayidx381 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1552
  %arrayidx385 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1553
  %arrayidx390 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1554
  %arrayidx395 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !1555
  br label %for.cond364.preheader, !dbg !1545

for.cond364.preheader:                            ; preds = %for.cond364.preheader.lr.ph, %for.inc424
  %indvars.iv1057 = phi i64 [ 0, %for.cond364.preheader.lr.ph ], [ %indvars.iv.next1058, %for.inc424 ]
  br label %for.body367, !dbg !1547

for.cond427.preheader:                            ; preds = %for.inc424
  br i1 %30, label %for.cond427.preheader.for.end724_crit_edge, label %for.cond436.preheader.lr.ph, !dbg !1556

for.cond427.preheader.for.end724_crit_edge:       ; preds = %for.end352, %for.cond427.preheader
  %.pre1077 = load %struct.ImageParameters** @img, align 8, !dbg !1558, !tbaa !978
  br label %for.end724, !dbg !1556

for.cond436.preheader.lr.ph:                      ; preds = %for.cond427.preheader
  %74 = load %struct.ImageParameters** @img, align 8, !dbg !1559, !tbaa !978
  %arrayidx451 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1563
  %arrayidx453 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1563
  %arrayidx457 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1564
  %arrayidx462 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1565
  %arrayidx467 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !1566
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 164, !dbg !1567
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 155, !dbg !1570
  %75 = sext i32 %block_y to i64, !dbg !1556
  %76 = sext i32 %block_x to i64, !dbg !1556
  br label %for.cond436.preheader, !dbg !1556

for.body367:                                      ; preds = %for.body367, %for.cond364.preheader
  %indvars.iv1048 = phi i64 [ 0, %for.cond364.preheader ], [ %indvars.iv.next1049, %for.body367 ]
  %arrayidx372 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %indvars.iv1048, i64 %indvars.iv1057, !dbg !1550
  %77 = load i32* %arrayidx372, align 4, !dbg !1550, !tbaa !984
  %arrayidx374 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1048, !dbg !1550
  store i32 %77, i32* %arrayidx374, align 4, !dbg !1550, !tbaa !984
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1, !dbg !1547
  %lftr.wideiv1050 = trunc i64 %indvars.iv.next1049 to i32, !dbg !1547
  %exitcond1051 = icmp eq i32 %lftr.wideiv1050, 4, !dbg !1547
  br i1 %exitcond1051, label %for.end377, label %for.body367, !dbg !1547

for.end377:                                       ; preds = %for.body367
  %78 = bitcast [4 x i32]* %m5 to i64*, !dbg !1552
  %79 = load i64* %78, align 16, !dbg !1552
  %80 = trunc i64 %79 to i32, !dbg !1552
  %81 = bitcast i32* %arrayidx379 to i64*, !dbg !1552
  %82 = load i64* %81, align 8, !dbg !1552
  %83 = trunc i64 %82 to i32, !dbg !1552
  %add380 = add nsw i32 %83, %80, !dbg !1552
  store i32 %add380, i32* %arrayidx381, align 16, !dbg !1552, !tbaa !984
  %sub384 = sub nsw i32 %80, %83, !dbg !1553
  store i32 %sub384, i32* %arrayidx385, align 4, !dbg !1553, !tbaa !984
  %84 = lshr i64 %79, 32
  %85 = trunc i64 %84 to i32
  %shr387 = ashr i32 %85, 1, !dbg !1554
  %86 = lshr i64 %82, 32
  %87 = trunc i64 %86 to i32
  %sub389 = sub nsw i32 %shr387, %87, !dbg !1554
  store i32 %sub389, i32* %arrayidx390, align 8, !dbg !1554, !tbaa !984
  %shr393 = ashr i32 %87, 1, !dbg !1555
  %add394 = add nsw i32 %shr393, %85, !dbg !1555
  store i32 %add394, i32* %arrayidx395, align 4, !dbg !1555, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1572
  br label %for.body399, !dbg !1572

for.body399:                                      ; preds = %for.body399.for.body399_crit_edge, %for.end377
  %88 = phi i32 [ %add380, %for.end377 ], [ %.pre1078, %for.body399.for.body399_crit_edge ]
  %indvars.iv1052 = phi i64 [ 0, %for.end377 ], [ %indvars.iv.next1053, %for.body399.for.body399_crit_edge ]
  %89 = sub nsw i64 3, %indvars.iv1052, !dbg !1574
  %arrayidx404 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %89, !dbg !1576
  %90 = load i32* %arrayidx404, align 4, !dbg !1576, !tbaa !984
  %add405 = add nsw i32 %90, %88, !dbg !1576
  %arrayidx410 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %indvars.iv1052, i64 %indvars.iv1057, !dbg !1576
  store i32 %add405, i32* %arrayidx410, align 4, !dbg !1576, !tbaa !984
  %sub415 = sub nsw i32 %88, %90, !dbg !1577
  %arrayidx420 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %89, i64 %indvars.iv1057, !dbg !1577
  store i32 %sub415, i32* %arrayidx420, align 4, !dbg !1577, !tbaa !984
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1, !dbg !1572
  %lftr.wideiv1055 = trunc i64 %indvars.iv.next1053 to i32, !dbg !1572
  %exitcond1056 = icmp eq i32 %lftr.wideiv1055, 2, !dbg !1572
  br i1 %exitcond1056, label %for.inc424, label %for.body399.for.body399_crit_edge, !dbg !1572

for.body399.for.body399_crit_edge:                ; preds = %for.body399
  %arrayidx402.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1053
  %.pre1078 = load i32* %arrayidx402.phi.trans.insert, align 4, !dbg !1576, !tbaa !984
  br label %for.body399, !dbg !1572

for.inc424:                                       ; preds = %for.body399
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1, !dbg !1545
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !206), !dbg !1547
  %91 = trunc i64 %indvars.iv1057 to i32, !dbg !1545
  %cmp356.not = icmp sgt i32 %91, 2, !dbg !1545
  br i1 %cmp356.not, label %for.cond427.preheader, label %for.cond364.preheader, !dbg !1545

for.cond436.preheader:                            ; preds = %for.cond436.preheader.lr.ph, %for.inc722
  %indvars.iv1045 = phi i64 [ 0, %for.cond436.preheader.lr.ph ], [ %indvars.iv.next1046, %for.inc722 ]
  br label %for.body439, !dbg !1578

for.body439:                                      ; preds = %for.body439, %for.cond436.preheader
  %indvars.iv1033 = phi i64 [ 0, %for.cond436.preheader ], [ %indvars.iv.next1034, %for.body439 ]
  %arrayidx444 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1033, !dbg !1559
  %92 = load i32* %arrayidx444, align 4, !dbg !1559, !tbaa !984
  %arrayidx446 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1033, !dbg !1559
  store i32 %92, i32* %arrayidx446, align 4, !dbg !1559, !tbaa !984
  %indvars.iv.next1034 = add i64 %indvars.iv1033, 1, !dbg !1578
  %lftr.wideiv1035 = trunc i64 %indvars.iv.next1034 to i32, !dbg !1578
  %exitcond1036 = icmp eq i32 %lftr.wideiv1035, 4, !dbg !1578
  br i1 %exitcond1036, label %for.end449, label %for.body439, !dbg !1578

for.end449:                                       ; preds = %for.body439
  %93 = bitcast [4 x i32]* %m5 to i64*, !dbg !1563
  %94 = load i64* %93, align 16, !dbg !1563
  %95 = trunc i64 %94 to i32, !dbg !1563
  %96 = bitcast i32* %arrayidx451 to i64*, !dbg !1563
  %97 = load i64* %96, align 8, !dbg !1563
  %98 = trunc i64 %97 to i32, !dbg !1563
  %add452 = add nsw i32 %98, %95, !dbg !1563
  store i32 %add452, i32* %arrayidx453, align 16, !dbg !1563, !tbaa !984
  %sub456 = sub nsw i32 %95, %98, !dbg !1564
  store i32 %sub456, i32* %arrayidx457, align 4, !dbg !1564, !tbaa !984
  %99 = lshr i64 %94, 32
  %100 = trunc i64 %99 to i32
  %shr459 = ashr i32 %100, 1, !dbg !1565
  %101 = lshr i64 %97, 32
  %102 = trunc i64 %101 to i32
  %sub461 = sub nsw i32 %shr459, %102, !dbg !1565
  store i32 %sub461, i32* %arrayidx462, align 8, !dbg !1565, !tbaa !984
  %shr465 = ashr i32 %102, 1, !dbg !1566
  %add466 = add nsw i32 %shr465, %100, !dbg !1566
  store i32 %add466, i32* %arrayidx467, align 4, !dbg !1566, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !207), !dbg !1579
  %103 = add nsw i64 %indvars.iv1045, %76, !dbg !1570
  br label %for.body471, !dbg !1579

for.body471:                                      ; preds = %for.inc719, %for.end449
  %indvars.iv1038 = phi i64 [ 0, %for.end449 ], [ %indvars.iv.next1039, %for.inc719 ]
  %104 = sub nsw i64 3, %indvars.iv1038, !dbg !1580
  %105 = load i32* %residue_transform_flag, align 4, !dbg !1567, !tbaa !984
  %tobool473 = icmp eq i32 %105, 0, !dbg !1567
  br i1 %tobool473, label %if.then474, label %if.else692, !dbg !1567

if.then474:                                       ; preds = %for.body471
  %106 = load i32* %max_imgpel_value, align 4, !dbg !1570, !tbaa !984
  %conv475 = sext i32 %106 to i64, !dbg !1570
  %arrayidx477 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv1038, !dbg !1570
  %107 = load i32* %arrayidx477, align 4, !dbg !1570, !tbaa !984
  %arrayidx479 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %104, !dbg !1570
  %108 = load i32* %arrayidx479, align 4, !dbg !1570, !tbaa !984
  %add480 = add nsw i32 %108, %107, !dbg !1570
  %conv481 = sext i32 %add480 to i64, !dbg !1570
  %109 = add nsw i64 %indvars.iv1038, %75, !dbg !1570
  %arrayidx487 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 45, i64 %103, i64 %109, !dbg !1570
  %110 = load i16* %arrayidx487, align 2, !dbg !1570, !tbaa !1014
  %conv488 = zext i16 %110 to i64, !dbg !1570
  %shl489 = shl nuw nsw i64 %conv488, 6, !dbg !1570
  %add490 = add i64 %conv481, 32, !dbg !1570
  %add491 = add i64 %add490, %shl489, !dbg !1570
  %shr492 = ashr i64 %add491, 6, !dbg !1570
  %cmp493 = icmp slt i64 %shr492, 0, !dbg !1570
  %.shr492 = select i1 %cmp493, i64 0, i64 %shr492, !dbg !1570
  %cmp513 = icmp slt i64 %conv475, %.shr492, !dbg !1570
  %conv475..shr492 = select i1 %cmp513, i64 %conv475, i64 %.shr492, !dbg !1570
  %conv563 = trunc i64 %conv475..shr492 to i32, !dbg !1570
  %arrayidx568 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1038, !dbg !1570
  store i32 %conv563, i32* %arrayidx568, align 4, !dbg !1570, !tbaa !984
  %111 = load i32* %max_imgpel_value, align 4, !dbg !1581, !tbaa !984
  %conv570 = sext i32 %111 to i64, !dbg !1581
  %sub575 = sub nsw i32 %107, %108, !dbg !1581
  %conv576 = sext i32 %sub575 to i64, !dbg !1581
  %112 = add nsw i64 %104, %75, !dbg !1581
  %arrayidx583 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 45, i64 %103, i64 %112, !dbg !1581
  %113 = load i16* %arrayidx583, align 2, !dbg !1581, !tbaa !1014
  %conv584 = zext i16 %113 to i64, !dbg !1581
  %shl585 = shl nuw nsw i64 %conv584, 6, !dbg !1581
  %add586 = add i64 %conv576, 32, !dbg !1581
  %add587 = add i64 %add586, %shl585, !dbg !1581
  %shr588 = ashr i64 %add587, 6, !dbg !1581
  %cmp589 = icmp slt i64 %shr588, 0, !dbg !1581
  %.shr588 = select i1 %cmp589, i64 0, i64 %shr588, !dbg !1581
  %cmp613 = icmp slt i64 %conv570, %.shr588, !dbg !1581
  %cond662 = select i1 %cmp613, i64 %conv570, i64 %.shr588, !dbg !1581
  %conv663 = trunc i64 %cond662 to i32, !dbg !1581
  %arrayidx668 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %104, !dbg !1581
  store i32 %conv663, i32* %arrayidx668, align 4, !dbg !1581, !tbaa !984
  br label %for.inc719, !dbg !1582

if.else692:                                       ; preds = %for.body471
  %arrayidx673 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv1038, !dbg !1583
  %114 = load i32* %arrayidx673, align 4, !dbg !1583, !tbaa !984
  %arrayidx675 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %104, !dbg !1583
  %115 = load i32* %arrayidx675, align 4, !dbg !1583, !tbaa !984
  %add676 = add nsw i32 %115, %114, !dbg !1583
  %add698 = add nsw i32 %add676, 32, !dbg !1586
  %shr699 = ashr i32 %add698, 6, !dbg !1586
  %arrayidx704 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1038, !dbg !1586
  store i32 %shr699, i32* %arrayidx704, align 4, !dbg !1586, !tbaa !984
  %sub709 = add i32 %114, 32, !dbg !1588
  %add710 = sub i32 %sub709, %115, !dbg !1588
  %shr711 = ashr i32 %add710, 6, !dbg !1588
  %arrayidx716 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %104, !dbg !1588
  store i32 %shr711, i32* %arrayidx716, align 4, !dbg !1588, !tbaa !984
  br label %for.inc719

for.inc719:                                       ; preds = %if.then474, %if.else692
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 1, !dbg !1579
  %lftr.wideiv1043 = trunc i64 %indvars.iv.next1039 to i32, !dbg !1579
  %exitcond1044 = icmp eq i32 %lftr.wideiv1043, 2, !dbg !1579
  br i1 %exitcond1044, label %for.inc722, label %for.body471, !dbg !1579

for.inc722:                                       ; preds = %for.inc719
  %indvars.iv.next1046 = add i64 %indvars.iv1045, 1, !dbg !1556
  %116 = trunc i64 %indvars.iv1045 to i32, !dbg !1556
  %cmp428.not = icmp sgt i32 %116, 2, !dbg !1556
  br i1 %cmp428.not, label %for.end724, label %for.cond436.preheader, !dbg !1556

for.end724:                                       ; preds = %for.inc722, %for.cond427.preheader.for.end724_crit_edge
  %117 = phi %struct.ImageParameters* [ %.pre1077, %for.cond427.preheader.for.end724_crit_edge ], [ %74, %for.inc722 ]
  %residue_transform_flag725 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 164, !dbg !1558
  %118 = load i32* %residue_transform_flag725, align 4, !dbg !1558, !tbaa !984
  %tobool726 = icmp eq i32 %118, 0, !dbg !1558
  br i1 %tobool726, label %for.cond728.preheader, label %if.end786, !dbg !1558

for.cond728.preheader:                            ; preds = %for.end724
  %pix_x = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 33, !dbg !1589
  %pix_y = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 34, !dbg !1589
  %119 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1589, !tbaa !978
  %imgY = getelementptr inbounds %struct.storable_picture* %119, i64 0, i32 25, !dbg !1589
  %120 = sext i32 %block_x to i64, !dbg !1595
  %121 = sext i32 %block_y to i64, !dbg !1595
  br label %for.cond732.preheader, !dbg !1595

for.cond732.preheader:                            ; preds = %for.inc783, %for.cond728.preheader
  %indvars.iv1028 = phi i64 [ 0, %for.cond728.preheader ], [ %indvars.iv.next1029, %for.inc783 ]
  %122 = add nsw i64 %indvars.iv1028, %121, !dbg !1589
  %123 = trunc i64 %indvars.iv1028 to i32, !dbg !1589
  %add756 = add i32 %123, %block_y, !dbg !1589
  br label %for.body735, !dbg !1596

for.body735:                                      ; preds = %for.inc780, %for.cond732.preheader
  %indvars.iv = phi i64 [ 0, %for.cond732.preheader ], [ %indvars.iv.next, %for.inc780 ]
  %arrayidx742 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1028, !dbg !1589
  %124 = load i32* %arrayidx742, align 4, !dbg !1589, !tbaa !984
  br i1 %30, label %if.then737, label %if.else761, !dbg !1597

if.then737:                                       ; preds = %for.body735
  %125 = add nsw i64 %indvars.iv, %120, !dbg !1589
  %arrayidx749 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 45, i64 %125, i64 %122, !dbg !1589
  %126 = load i16* %arrayidx749, align 2, !dbg !1589, !tbaa !1014
  %conv750 = zext i16 %126 to i32, !dbg !1589
  %add751 = add nsw i32 %conv750, %124, !dbg !1589
  %conv752 = trunc i32 %add751 to i16, !dbg !1589
  %127 = load i32* %pix_x, align 4, !dbg !1589, !tbaa !984
  %128 = trunc i64 %indvars.iv to i32, !dbg !1589
  %add753 = add i32 %128, %block_x, !dbg !1589
  %add754 = add i32 %add753, %127, !dbg !1589
  %idxprom755 = sext i32 %add754 to i64, !dbg !1589
  %129 = load i32* %pix_y, align 4, !dbg !1589, !tbaa !984
  %add757 = add i32 %add756, %129, !dbg !1589
  %idxprom758 = sext i32 %add757 to i64, !dbg !1589
  %130 = load i16*** %imgY, align 8, !dbg !1589, !tbaa !978
  %arrayidx759 = getelementptr inbounds i16** %130, i64 %idxprom758, !dbg !1589
  %131 = load i16** %arrayidx759, align 8, !dbg !1589, !tbaa !978
  %arrayidx760 = getelementptr inbounds i16* %131, i64 %idxprom755, !dbg !1589
  store i16 %conv752, i16* %arrayidx760, align 2, !dbg !1589, !tbaa !1014
  br label %for.inc780, !dbg !1589

if.else761:                                       ; preds = %for.body735
  %conv767 = trunc i32 %124 to i16, !dbg !1598
  %132 = load i32* %pix_x, align 4, !dbg !1598, !tbaa !984
  %133 = trunc i64 %indvars.iv to i32, !dbg !1598
  %add769 = add i32 %133, %block_x, !dbg !1598
  %add770 = add i32 %add769, %132, !dbg !1598
  %idxprom771 = sext i32 %add770 to i64, !dbg !1598
  %134 = load i32* %pix_y, align 4, !dbg !1598, !tbaa !984
  %add774 = add i32 %add756, %134, !dbg !1598
  %idxprom775 = sext i32 %add774 to i64, !dbg !1598
  %135 = load i16*** %imgY, align 8, !dbg !1598, !tbaa !978
  %arrayidx777 = getelementptr inbounds i16** %135, i64 %idxprom775, !dbg !1598
  %136 = load i16** %arrayidx777, align 8, !dbg !1598, !tbaa !978
  %arrayidx778 = getelementptr inbounds i16* %136, i64 %idxprom771, !dbg !1598
  store i16 %conv767, i16* %arrayidx778, align 2, !dbg !1598, !tbaa !1014
  br label %for.inc780

for.inc780:                                       ; preds = %if.then737, %if.else761
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1596
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1596
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1596
  br i1 %exitcond, label %for.inc783, label %for.body735, !dbg !1596

for.inc783:                                       ; preds = %for.inc780
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1, !dbg !1595
  %lftr.wideiv1031 = trunc i64 %indvars.iv.next1029 to i32, !dbg !1595
  %exitcond1032 = icmp eq i32 %lftr.wideiv1031, 4, !dbg !1595
  br i1 %exitcond1032, label %if.end786, label %for.cond732.preheader, !dbg !1595

if.end786:                                        ; preds = %for.inc783, %for.end724
  ret i32 %nonzero.11002, !dbg !1599
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma(i32 %uv, i32 %cr_cbp) #0 {
entry:
  %m1 = alloca [4 x i32], align 16
  %m5 = alloca [4 x i32], align 16
  %m53437 = bitcast [4 x i32]* %m5 to i8*
  %m6 = alloca [4 x i32], align 16
  %m3 = alloca [4 x [4 x i32]], align 16
  %m4 = alloca [4 x [4 x i32]], align 16
  call void @llvm.dbg.value(metadata !{i32 %uv}, i64 0, metadata !233), !dbg !1600
  call void @llvm.dbg.value(metadata !{i32 %cr_cbp}, i64 0, metadata !234), !dbg !1600
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m1}, metadata !248), !dbg !1601
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !249), !dbg !1601
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !250), !dbg !1601
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !253), !dbg !1602
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1603, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1603
  %1 = load i32* %current_mb_nr, align 4, !dbg !1603, !tbaa !984
  %idxprom = sext i32 %1 to i64, !dbg !1603
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1603
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !1603, !tbaa !978
  %add = add nsw i32 %uv, 1, !dbg !1604
  %idxprom1 = sext i32 %add to i64, !dbg !1604
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48, !dbg !1604
  %3 = load i32**** %cofDC, align 8, !dbg !1604, !tbaa !978
  %arrayidx2 = getelementptr inbounds i32*** %3, i64 %idxprom1, !dbg !1604
  %4 = load i32*** %arrayidx2, align 8, !dbg !1604, !tbaa !978
  %5 = load i32** %4, align 8, !dbg !1604, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !260), !dbg !1604
  %arrayidx8 = getelementptr inbounds i32** %4, i64 1, !dbg !1605
  %6 = load i32** %arrayidx8, align 8, !dbg !1605, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !261), !dbg !1605
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8, !dbg !1606
  %7 = load i32* %mb_type, align 4, !dbg !1606, !tbaa !984
  switch i32 %7, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ], !dbg !1606

lor.rhs:                                          ; preds = %entry
  br label %lor.end, !dbg !1606

lor.end:                                          ; preds = %entry, %entry, %entry, %lor.rhs
  %8 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ true, %entry ], [ true, %entry ]
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157, !dbg !1607
  %9 = load i32* %num_blk8x8_uv, align 4, !dbg !1607, !tbaa !984
  %div = sdiv i32 %9, 2, !dbg !1607
  %mul = mul nsw i32 %div, %uv, !dbg !1607
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !265), !dbg !1607
  call void @llvm.dbg.declare(metadata !1608, metadata !266), !dbg !1609
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !1610
  %10 = load i32* %yuv_format, align 4, !dbg !1610, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !268), !dbg !1610
  %11 = bitcast [4 x [4 x i32]]* %m3 to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 64, i8* %11) #2, !dbg !1611
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i32]]* %m3}, metadata !270), !dbg !1611
  %12 = bitcast [4 x [4 x i32]]* %m4 to i8*, !dbg !1612
  call void @llvm.lifetime.start(i64 64, i8* %12) #2, !dbg !1612
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i32]]* %m4}, metadata !271), !dbg !1612
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !272), !dbg !1613
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !273), !dbg !1614
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !274), !dbg !1615
  %qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3, !dbg !1616
  %13 = load i32* %qp, align 4, !dbg !1616, !tbaa !984
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151, !dbg !1616
  %14 = load i32* %bitdepth_luma_qp_scale, align 4, !dbg !1616, !tbaa !984
  %add13 = sub i32 0, %14, !dbg !1616
  %cmp14 = icmp eq i32 %13, %add13, !dbg !1616
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !1616

land.rhs:                                         ; preds = %lor.end
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160, !dbg !1616
  %15 = load i32* %lossless_qpprime_flag, align 4, !dbg !1616, !tbaa !984
  %cmp15 = icmp eq i32 %15, 1, !dbg !1616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %16 = phi i1 [ false, %lor.end ], [ %cmp15, %land.rhs ]
  %idxprom17 = sext i32 %uv to i64, !dbg !1617
  %arrayidx18 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 163, i64 %idxprom17, !dbg !1617
  %17 = load i32* %arrayidx18, align 4, !dbg !1617, !tbaa !984
  %add19 = add nsw i32 %17, %13, !dbg !1617
  call void @llvm.dbg.value(metadata !{i32 %add19}, i64 0, metadata !258), !dbg !1617
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 152, !dbg !1618
  %18 = load i32* %bitdepth_chroma_qp_scale, align 4, !dbg !1618, !tbaa !984
  %sub = sub nsw i32 0, %18, !dbg !1618
  %cmp20 = icmp slt i32 %add19, %sub, !dbg !1618
  br i1 %cmp20, label %cond.end26, label %cond.false, !dbg !1618

cond.false:                                       ; preds = %land.end
  %cmp23 = icmp sgt i32 %add19, 51, !dbg !1618
  %cond = select i1 %cmp23, i32 51, i32 %add19, !dbg !1618
  br label %cond.end26, !dbg !1618

cond.end26:                                       ; preds = %land.end, %cond.false
  %cond27 = phi i32 [ %cond, %cond.false ], [ %sub, %land.end ], !dbg !1618
  call void @llvm.dbg.value(metadata !{i32 %cond27}, i64 0, metadata !258), !dbg !1618
  %cmp28 = icmp slt i32 %cond27, 0, !dbg !1619
  br i1 %cmp28, label %cond.end34, label %cond.false30, !dbg !1619

cond.false30:                                     ; preds = %cond.end26
  %idxprom32 = sext i32 %cond27 to i64, !dbg !1619
  %arrayidx33 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom32, !dbg !1619
  %19 = load i8* %arrayidx33, align 1, !dbg !1619, !tbaa !979
  %conv = zext i8 %19 to i32, !dbg !1619
  br label %cond.end34, !dbg !1619

cond.end34:                                       ; preds = %cond.end26, %cond.false30
  %cond35 = phi i32 [ %conv, %cond.false30 ], [ %cond27, %cond.end26 ], !dbg !1619
  call void @llvm.dbg.value(metadata !{i32 %cond35}, i64 0, metadata !258), !dbg !1619
  %add37 = add nsw i32 %18, %cond35, !dbg !1620
  %div38 = sdiv i32 %add37, 6, !dbg !1620
  call void @llvm.dbg.value(metadata !{i32 %div38}, i64 0, metadata !255), !dbg !1620
  %rem = srem i32 %add37, 6, !dbg !1621
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !256), !dbg !1621
  %add41 = add nsw i32 %div38, 15, !dbg !1622
  call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !257), !dbg !1622
  %cmp43 = icmp eq i32 %10, 2, !dbg !1623
  br i1 %cmp43, label %if.then, label %if.end, !dbg !1623

if.then:                                          ; preds = %cond.end34
  %add45 = add nsw i32 %cond35, 3, !dbg !1624
  %add47 = add nsw i32 %add45, %18, !dbg !1624
  %div48 = sdiv i32 %add47, 6, !dbg !1624
  call void @llvm.dbg.value(metadata !{i32 %div48}, i64 0, metadata !272), !dbg !1624
  %rem52 = srem i32 %add47, 6, !dbg !1626
  call void @llvm.dbg.value(metadata !{i32 %rem52}, i64 0, metadata !273), !dbg !1626
  %phitmp = sext i32 %rem52 to i64, !dbg !1627
  %phitmp3215 = add i32 %div48, 16, !dbg !1627
  br label %if.end, !dbg !1627

if.end:                                           ; preds = %if.then, %cond.end34
  %qp_per_dc.0 = phi i32 [ %div48, %if.then ], [ 0, %cond.end34 ]
  %qp_rem_dc.0 = phi i64 [ %phitmp, %if.then ], [ 0, %cond.end34 ]
  %q_bits_422.0 = phi i32 [ %phitmp3215, %if.then ], [ 1, %cond.end34 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !240), !dbg !1628
  %mb_cr_size_y3353 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162, !dbg !1628
  %20 = load i32* %mb_cr_size_y3353, align 4, !dbg !1628, !tbaa !984
  %cmp543354 = icmp sgt i32 %20, 0, !dbg !1628
  br i1 %cmp543354, label %for.cond56.preheader.lr.ph, label %for.end236, !dbg !1628

for.cond56.preheader.lr.ph:                       ; preds = %if.end
  %mb_cr_size_x3348 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !1630
  %arrayidx208 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1633
  %arrayidx210 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1633
  %.pre3596 = load i32* %mb_cr_size_x3348, align 4, !dbg !1630, !tbaa !984
  br label %for.cond56.preheader, !dbg !1628

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.inc234
  %21 = phi i32 [ %20, %for.cond56.preheader.lr.ph ], [ %69, %for.inc234 ]
  %22 = phi i32 [ %.pre3596, %for.cond56.preheader.lr.ph ], [ %70, %for.inc234 ], !dbg !1630
  %indvars.iv3557 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next3558, %for.inc234 ]
  %cmp573349 = icmp sgt i32 %22, 0, !dbg !1630
  br i1 %cmp573349, label %for.cond60.preheader.lr.ph, label %for.inc234, !dbg !1630

for.cond60.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  %add2023218 = shl i64 %indvars.iv3557, 32, !dbg !1637
  %sext = ashr exact i64 %add2023218, 32, !dbg !1637
  %idxprom203 = or i64 %sext, 2, !dbg !1637
  %add2123219 = shl i64 %indvars.iv3557, 32, !dbg !1633
  %sext3609 = ashr exact i64 %add2123219, 32, !dbg !1633
  %idxprom213 = or i64 %sext3609, 1, !dbg !1633
  %add2223220 = shl i64 %indvars.iv3557, 32, !dbg !1638
  %sext3610 = ashr exact i64 %add2223220, 32, !dbg !1638
  %idxprom223 = or i64 %sext3610, 3, !dbg !1638
  br label %for.cond60.preheader, !dbg !1630

for.cond60.preheader:                             ; preds = %for.cond60.preheader.lr.ph, %for.inc231
  %indvars.iv3555 = phi i64 [ 0, %for.cond60.preheader.lr.ph ], [ %indvars.iv.next3556, %for.inc231 ]
  br i1 %16, label %for.inc231, label %for.body66.lr.ph, !dbg !1639

for.body66.lr.ph:                                 ; preds = %for.cond60.preheader
  %add1143221 = shl i64 %indvars.iv3555, 32, !dbg !1641
  %sext3611 = ashr exact i64 %add1143221, 32, !dbg !1641
  %idxprom115 = or i64 %sext3611, 2, !dbg !1641
  %add1243222 = shl i64 %indvars.iv3555, 32, !dbg !1643
  %sext3612 = ashr exact i64 %add1243222, 32, !dbg !1643
  %idxprom125 = or i64 %sext3612, 1, !dbg !1643
  %add1343223 = shl i64 %indvars.iv3555, 32, !dbg !1644
  %sext3613 = ashr exact i64 %add1343223, 32, !dbg !1644
  %idxprom135 = or i64 %sext3613, 3, !dbg !1644
  br label %for.body66, !dbg !1639

for.body66:                                       ; preds = %for.body66.lr.ph, %for.end
  %indvars.iv3542 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next3543, %for.end ]
  %23 = add nsw i64 %indvars.iv3542, %indvars.iv3557, !dbg !1645
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1646
  br label %for.body71, !dbg !1646

for.body71:                                       ; preds = %for.body71, %for.body66
  %indvars.iv3535 = phi i64 [ 0, %for.body66 ], [ %indvars.iv.next3536, %for.body71 ]
  %24 = sub nsw i64 3, %indvars.iv3535, !dbg !1648
  %25 = add nsw i64 %indvars.iv3535, %indvars.iv3555, !dbg !1650
  %arrayidx77 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %25, i64 %23, !dbg !1650
  %26 = load i32* %arrayidx77, align 4, !dbg !1650, !tbaa !984
  %27 = add nsw i64 %24, %indvars.iv3555, !dbg !1650
  %arrayidx83 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %27, i64 %23, !dbg !1650
  %28 = load i32* %arrayidx83, align 4, !dbg !1650, !tbaa !984
  %add84 = add nsw i32 %28, %26, !dbg !1650
  %arrayidx86 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3535, !dbg !1650
  store i32 %add84, i32* %arrayidx86, align 4, !dbg !1650, !tbaa !984
  %29 = load i32* %arrayidx77, align 4, !dbg !1651, !tbaa !984
  %30 = load i32* %arrayidx83, align 4, !dbg !1651, !tbaa !984
  %sub99 = sub nsw i32 %29, %30, !dbg !1651
  %arrayidx101 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %24, !dbg !1651
  store i32 %sub99, i32* %arrayidx101, align 4, !dbg !1651, !tbaa !984
  %indvars.iv.next3536 = add i64 %indvars.iv3535, 1, !dbg !1646
  %lftr.wideiv3540 = trunc i64 %indvars.iv.next3536 to i32, !dbg !1646
  %exitcond3541 = icmp eq i32 %lftr.wideiv3540, 2, !dbg !1646
  br i1 %exitcond3541, label %for.end, label %for.body71, !dbg !1646

for.end:                                          ; preds = %for.body71
  %31 = bitcast [4 x i32]* %m5 to i64*, !dbg !1652
  %32 = load i64* %31, align 16, !dbg !1652
  %33 = trunc i64 %32 to i32, !dbg !1652
  %34 = lshr i64 %32, 32
  %35 = trunc i64 %34 to i32
  %add104 = add nsw i32 %35, %33, !dbg !1652
  %arrayidx109 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3555, i64 %23, !dbg !1652
  store i32 %add104, i32* %arrayidx109, align 4, !dbg !1652, !tbaa !984
  %36 = load i64* %31, align 16, !dbg !1641
  %37 = trunc i64 %36 to i32, !dbg !1641
  %38 = lshr i64 %36, 32
  %39 = trunc i64 %38 to i32
  %sub112 = sub nsw i32 %37, %39, !dbg !1641
  %arrayidx118 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom115, i64 %23, !dbg !1641
  store i32 %sub112, i32* %arrayidx118, align 4, !dbg !1641, !tbaa !984
  %40 = load i32* %arrayidx208, align 4, !dbg !1643, !tbaa !984
  %mul120 = shl i32 %40, 1, !dbg !1643
  %41 = load i32* %arrayidx210, align 8, !dbg !1643, !tbaa !984
  %add122 = add nsw i32 %mul120, %41, !dbg !1643
  %arrayidx128 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom125, i64 %23, !dbg !1643
  store i32 %add122, i32* %arrayidx128, align 4, !dbg !1643, !tbaa !984
  %42 = load i32* %arrayidx208, align 4, !dbg !1644, !tbaa !984
  %43 = load i32* %arrayidx210, align 8, !dbg !1644, !tbaa !984
  %mul131 = shl nsw i32 %43, 1, !dbg !1644
  %sub132 = sub nsw i32 %42, %mul131, !dbg !1644
  %arrayidx138 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom135, i64 %23, !dbg !1644
  store i32 %sub132, i32* %arrayidx138, align 4, !dbg !1644, !tbaa !984
  %indvars.iv.next3543 = add i64 %indvars.iv3542, 1, !dbg !1639
  %44 = trunc i64 %indvars.iv3542 to i32, !dbg !1639
  %cmp61.not = icmp sgt i32 %44, 2, !dbg !1639
  br i1 %cmp61.not, label %for.cond142.loopexit, label %for.body66, !dbg !1639

for.cond142.loopexit:                             ; preds = %for.end
  br i1 %16, label %for.inc231, label %for.body150, !dbg !1653

for.body150:                                      ; preds = %for.cond142.loopexit, %for.end189
  %indvars.iv3552 = phi i64 [ %indvars.iv.next3553, %for.end189 ], [ 0, %for.cond142.loopexit ]
  %45 = add nsw i64 %indvars.iv3552, %indvars.iv3555, !dbg !1654
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !236), !dbg !1655
  br label %for.body155, !dbg !1655

for.body155:                                      ; preds = %for.body155, %for.body150
  %indvars.iv3545 = phi i64 [ 0, %for.body150 ], [ %indvars.iv.next3546, %for.body155 ]
  %46 = sub nsw i64 3, %indvars.iv3545, !dbg !1657
  %47 = add nsw i64 %indvars.iv3545, %indvars.iv3557, !dbg !1659
  %arrayidx162 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %47, !dbg !1659
  %48 = load i32* %arrayidx162, align 4, !dbg !1659, !tbaa !984
  %49 = add nsw i64 %46, %indvars.iv3557, !dbg !1659
  %arrayidx168 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %49, !dbg !1659
  %50 = load i32* %arrayidx168, align 4, !dbg !1659, !tbaa !984
  %add169 = add nsw i32 %50, %48, !dbg !1659
  %arrayidx171 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3545, !dbg !1659
  store i32 %add169, i32* %arrayidx171, align 4, !dbg !1659, !tbaa !984
  %51 = load i32* %arrayidx162, align 4, !dbg !1660, !tbaa !984
  %52 = load i32* %arrayidx168, align 4, !dbg !1660, !tbaa !984
  %sub184 = sub nsw i32 %51, %52, !dbg !1660
  %arrayidx186 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %46, !dbg !1660
  store i32 %sub184, i32* %arrayidx186, align 4, !dbg !1660, !tbaa !984
  %indvars.iv.next3546 = add i64 %indvars.iv3545, 1, !dbg !1655
  %lftr.wideiv3550 = trunc i64 %indvars.iv.next3546 to i32, !dbg !1655
  %exitcond3551 = icmp eq i32 %lftr.wideiv3550, 2, !dbg !1655
  br i1 %exitcond3551, label %for.end189, label %for.body155, !dbg !1655

for.end189:                                       ; preds = %for.body155
  %53 = bitcast [4 x i32]* %m5 to i64*, !dbg !1661
  %54 = load i64* %53, align 16, !dbg !1661
  %55 = trunc i64 %54 to i32, !dbg !1661
  %56 = lshr i64 %54, 32
  %57 = trunc i64 %56 to i32
  %add192 = add nsw i32 %57, %55, !dbg !1661
  %arrayidx198 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %indvars.iv3557, !dbg !1661
  store i32 %add192, i32* %arrayidx198, align 4, !dbg !1661, !tbaa !984
  %58 = load i64* %53, align 16, !dbg !1637
  %59 = trunc i64 %58 to i32, !dbg !1637
  %60 = lshr i64 %58, 32
  %61 = trunc i64 %60 to i32
  %sub201 = sub nsw i32 %59, %61, !dbg !1637
  %arrayidx207 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom203, !dbg !1637
  store i32 %sub201, i32* %arrayidx207, align 4, !dbg !1637, !tbaa !984
  %62 = load i32* %arrayidx208, align 4, !dbg !1633, !tbaa !984
  %mul209 = shl i32 %62, 1, !dbg !1633
  %63 = load i32* %arrayidx210, align 8, !dbg !1633, !tbaa !984
  %add211 = add nsw i32 %mul209, %63, !dbg !1633
  %arrayidx217 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom213, !dbg !1633
  store i32 %add211, i32* %arrayidx217, align 4, !dbg !1633, !tbaa !984
  %64 = load i32* %arrayidx208, align 4, !dbg !1638, !tbaa !984
  %65 = load i32* %arrayidx210, align 8, !dbg !1638, !tbaa !984
  %mul220 = shl nsw i32 %65, 1, !dbg !1638
  %sub221 = sub nsw i32 %64, %mul220, !dbg !1638
  %arrayidx227 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom223, !dbg !1638
  store i32 %sub221, i32* %arrayidx227, align 4, !dbg !1638, !tbaa !984
  %indvars.iv.next3553 = add i64 %indvars.iv3552, 1, !dbg !1653
  %66 = trunc i64 %indvars.iv3552 to i32, !dbg !1653
  %cmp143.not = icmp sgt i32 %66, 2, !dbg !1653
  br i1 %cmp143.not, label %for.inc231, label %for.body150, !dbg !1653

for.inc231:                                       ; preds = %for.cond60.preheader, %for.end189, %for.cond142.loopexit
  %indvars.iv.next3556 = add i64 %indvars.iv3555, 4, !dbg !1630
  %67 = load i32* %mb_cr_size_x3348, align 4, !dbg !1630, !tbaa !984
  %68 = trunc i64 %indvars.iv.next3556 to i32, !dbg !1630
  %cmp57 = icmp slt i32 %68, %67, !dbg !1630
  br i1 %cmp57, label %for.cond60.preheader, label %for.cond56.for.inc234_crit_edge, !dbg !1630

for.cond56.for.inc234_crit_edge:                  ; preds = %for.inc231
  %.pre3597 = load i32* %mb_cr_size_y3353, align 4, !dbg !1628, !tbaa !984
  br label %for.inc234, !dbg !1630

for.inc234:                                       ; preds = %for.cond56.for.inc234_crit_edge, %for.cond56.preheader
  %69 = phi i32 [ %.pre3597, %for.cond56.for.inc234_crit_edge ], [ %21, %for.cond56.preheader ], !dbg !1628
  %70 = phi i32 [ %67, %for.cond56.for.inc234_crit_edge ], [ %22, %for.cond56.preheader ]
  %indvars.iv.next3558 = add i64 %indvars.iv3557, 4, !dbg !1628
  %71 = trunc i64 %indvars.iv.next3558 to i32, !dbg !1628
  %cmp54 = icmp slt i32 %71, %69, !dbg !1628
  br i1 %cmp54, label %for.cond56.preheader, label %for.end236, !dbg !1628

for.end236:                                       ; preds = %for.inc234, %if.end
  %72 = phi i32 [ %20, %if.end ], [ %69, %for.inc234 ]
  switch i32 %10, label %if.end1682 [
    i32 1, label %if.then239
    i32 2, label %for.cond518.preheader
    i32 3, label %for.cond1078.preheader
  ], !dbg !1662

for.cond1078.preheader:                           ; preds = %for.end236
  %cmp10803342 = icmp sgt i32 %72, 0, !dbg !1663
  br i1 %cmp10803342, label %for.cond1083.preheader.lr.ph, label %for.cond1105.preheader, !dbg !1663

for.cond1083.preheader.lr.ph:                     ; preds = %for.cond1078.preheader
  %mb_cr_size_x10843338 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !1666
  %.pre3594 = load i32* %mb_cr_size_x10843338, align 4, !dbg !1666, !tbaa !984
  br label %for.cond1083.preheader, !dbg !1663

for.cond518.preheader:                            ; preds = %for.end236
  %cmp5203320 = icmp sgt i32 %72, 0, !dbg !1668
  br i1 %cmp5203320, label %for.cond523.preheader.lr.ph, label %for.cond518.preheader.for.end544_crit_edge, !dbg !1668

for.cond518.preheader.for.end544_crit_edge:       ; preds = %for.cond518.preheader
  %arrayidx546.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 0, !dbg !1671
  %arrayidx548.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 0, !dbg !1671
  %arrayidx560.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 2, !dbg !1672
  %arrayidx562.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 2, !dbg !1672
  br label %for.end544, !dbg !1668

for.cond523.preheader.lr.ph:                      ; preds = %for.cond518.preheader
  %mb_cr_size_x5243316 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !1673
  %73 = load i32* %mb_cr_size_x5243316, align 4, !dbg !1673, !tbaa !984
  %cmp5253317 = icmp sgt i32 %73, 0, !dbg !1673
  br label %for.cond523.preheader, !dbg !1668

if.then239:                                       ; preds = %for.end236
  %arrayidx242 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0, !dbg !1675
  %74 = load i32* %arrayidx242, align 4, !dbg !1675, !tbaa !984
  %arrayidx245 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 0, !dbg !1675
  %75 = load i32* %arrayidx245, align 4, !dbg !1675, !tbaa !984
  %add246 = add nsw i32 %75, %74, !dbg !1675
  %arrayidx249 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 4, !dbg !1675
  %76 = load i32* %arrayidx249, align 4, !dbg !1675, !tbaa !984
  %add250 = add nsw i32 %add246, %76, !dbg !1675
  %arrayidx253 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 4, !dbg !1675
  %77 = load i32* %arrayidx253, align 4, !dbg !1675, !tbaa !984
  %add254 = add nsw i32 %add250, %77, !dbg !1675
  %arrayidx255 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 0, !dbg !1675
  store i32 %add254, i32* %arrayidx255, align 16, !dbg !1675, !tbaa !984
  %78 = load i32* %arrayidx242, align 4, !dbg !1677, !tbaa !984
  %79 = load i32* %arrayidx245, align 4, !dbg !1677, !tbaa !984
  %sub262 = sub i32 %78, %79, !dbg !1677
  %80 = load i32* %arrayidx249, align 4, !dbg !1677, !tbaa !984
  %add266 = add nsw i32 %sub262, %80, !dbg !1677
  %81 = load i32* %arrayidx253, align 4, !dbg !1677, !tbaa !984
  %sub270 = sub i32 %add266, %81, !dbg !1677
  %arrayidx271 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 1, !dbg !1677
  store i32 %sub270, i32* %arrayidx271, align 4, !dbg !1677, !tbaa !984
  %add278 = add nsw i32 %79, %78, !dbg !1678
  %sub282 = sub i32 %add278, %80, !dbg !1678
  %sub286 = sub i32 %sub282, %81, !dbg !1678
  %arrayidx287 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 2, !dbg !1678
  store i32 %sub286, i32* %arrayidx287, align 8, !dbg !1678, !tbaa !984
  %sub298 = sub i32 %sub262, %80, !dbg !1679
  %add302 = add nsw i32 %sub298, %81, !dbg !1679
  %arrayidx303 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 3, !dbg !1679
  store i32 %add302, i32* %arrayidx303, align 4, !dbg !1679, !tbaa !984
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1680
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !246), !dbg !1681
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !244), !dbg !1682
  %idxprom314 = sext i32 %rem to i64, !dbg !1684
  %arrayidx319 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0, !dbg !1684
  %idxprom321 = sext i32 %div38 to i64, !dbg !1684
  %arrayidx326 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom321, i64 0, i64 0, !dbg !1684
  %add328 = add nsw i32 %div38, 16, !dbg !1684
  %shl364 = shl i32 %uv, 2, !dbg !1686
  %shl365 = shl i32 983040, %shl364, !dbg !1686
  %conv366 = sext i32 %shl365 to i64, !dbg !1686
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !1686
  %arrayidx337 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0, !dbg !1688
  %arrayidx344 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom321, i64 0, i64 0, !dbg !1688
  br label %for.body307, !dbg !1682

for.body307:                                      ; preds = %if.end384.for.body307_crit_edge, %if.then239
  %82 = phi i32 [ %add254, %if.then239 ], [ %.pre3601, %if.end384.for.body307_crit_edge ]
  %indvars.iv3429 = phi i64 [ 0, %if.then239 ], [ %indvars.iv.next3430, %if.end384.for.body307_crit_edge ]
  %cr_cbp.addr.03305 = phi i32 [ %cr_cbp, %if.then239 ], [ %cr_cbp.addr.1, %if.end384.for.body307_crit_edge ]
  %DCcoded.03303 = phi i32 [ 0, %if.then239 ], [ %DCcoded.1, %if.end384.for.body307_crit_edge ]
  %run.03302 = phi i32 [ -1, %if.then239 ], [ %run.1, %if.end384.for.body307_crit_edge ]
  %scan_pos.03301 = phi i32 [ 0, %if.then239 ], [ %scan_pos.1, %if.end384.for.body307_crit_edge ]
  %inc308 = add nsw i32 %run.03302, 1, !dbg !1689
  call void @llvm.dbg.value(metadata !{i32 %inc308}, i64 0, metadata !247), !dbg !1689
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !239), !dbg !1690
  %arrayidx313 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3429, !dbg !1684
  %ispos3216 = icmp sgt i32 %82, -1, !dbg !1684
  %neg3217 = sub i32 0, %82, !dbg !1684
  %83 = select i1 %ispos3216, i32 %82, i32 %neg3217, !dbg !1684
  br i1 %8, label %if.then311, label %if.else, !dbg !1691

if.then311:                                       ; preds = %for.body307
  %84 = load i32* %arrayidx319, align 4, !dbg !1684, !tbaa !984
  %mul320 = mul nsw i32 %84, %83, !dbg !1684
  %85 = load i32* %arrayidx326, align 4, !dbg !1684, !tbaa !984
  %shl = shl i32 %85, 1, !dbg !1684
  %add327 = add nsw i32 %shl, %mul320, !dbg !1684
  br label %if.end349, !dbg !1684

if.else:                                          ; preds = %for.body307
  %86 = load i32* %arrayidx337, align 4, !dbg !1688, !tbaa !984
  %mul338 = mul nsw i32 %86, %83, !dbg !1688
  %87 = load i32* %arrayidx344, align 4, !dbg !1688, !tbaa !984
  %shl345 = shl i32 %87, 1, !dbg !1688
  %add346 = add nsw i32 %shl345, %mul338, !dbg !1688
  br label %if.end349

if.end349:                                        ; preds = %if.else, %if.then311
  %add327.pn = phi i32 [ %add327, %if.then311 ], [ %add346, %if.else ]
  %level.0 = ashr i32 %add327.pn, %add328, !dbg !1684
  %88 = load %struct.InputParameters** @input, align 8, !dbg !1692, !tbaa !978
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 59, !dbg !1692
  %89 = load i32* %symbol_mode, align 4, !dbg !1692, !tbaa !984
  %cmp350 = icmp eq i32 %89, 0, !dbg !1692
  br i1 %cmp350, label %land.lhs.true, label %if.end360, !dbg !1692

land.lhs.true:                                    ; preds = %if.end349
  %90 = load %struct.ImageParameters** @img, align 8, !dbg !1692, !tbaa !978
  %qp352 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 10, !dbg !1692
  %91 = load i32* %qp352, align 4, !dbg !1692, !tbaa !984
  %cmp353 = icmp slt i32 %91, 4, !dbg !1692
  %cmp356 = icmp sgt i32 %level.0, 2063, !dbg !1693
  %or.cond = and i1 %cmp353, %cmp356, !dbg !1692
  call void @llvm.dbg.value(metadata !1314, i64 0, metadata !245), !dbg !1695
  %.level.0 = select i1 %or.cond, i32 2063, i32 %level.0, !dbg !1692
  br label %if.end360, !dbg !1692

if.end360:                                        ; preds = %land.lhs.true, %if.end349
  %level.1 = phi i32 [ %level.0, %if.end349 ], [ %.level.0, %land.lhs.true ]
  %cmp361 = icmp eq i32 %level.1, 0, !dbg !1697
  br i1 %cmp361, label %if.end384, label %if.then363, !dbg !1697

if.then363:                                       ; preds = %if.end360
  %92 = load i64* %cbp_blk, align 8, !dbg !1686, !tbaa !1698
  %or = or i64 %92, %conv366, !dbg !1686
  store i64 %or, i64* %cbp_blk, align 8, !dbg !1686, !tbaa !1698
  %cmp367 = icmp slt i32 %cr_cbp.addr.03305, 1, !dbg !1699
  %cond372 = select i1 %cmp367, i32 1, i32 %cr_cbp.addr.03305, !dbg !1699
  call void @llvm.dbg.value(metadata !{i32 %cond372}, i64 0, metadata !234), !dbg !1699
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !253), !dbg !1700
  %call375 = call i32 @sign(i32 %level.1, i32 %82) #4, !dbg !1701
  %idxprom376 = sext i32 %scan_pos.03301 to i64, !dbg !1701
  %arrayidx377 = getelementptr inbounds i32* %5, i64 %idxprom376, !dbg !1701
  store i32 %call375, i32* %arrayidx377, align 4, !dbg !1701, !tbaa !984
  %arrayidx379 = getelementptr inbounds i32* %6, i64 %idxprom376, !dbg !1702
  store i32 %inc308, i32* %arrayidx379, align 4, !dbg !1702, !tbaa !984
  %inc380 = add nsw i32 %scan_pos.03301, 1, !dbg !1703
  call void @llvm.dbg.value(metadata !{i32 %inc380}, i64 0, metadata !246), !dbg !1703
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1704
  %call383 = call i32 @sign(i32 %level.1, i32 %82) #4, !dbg !1705
  call void @llvm.dbg.value(metadata !{i32 %call383}, i64 0, metadata !239), !dbg !1705
  br label %if.end384, !dbg !1706

if.end384:                                        ; preds = %if.end360, %if.then363
  %scan_pos.1 = phi i32 [ %inc380, %if.then363 ], [ %scan_pos.03301, %if.end360 ]
  %run.1 = phi i32 [ -1, %if.then363 ], [ %inc308, %if.end360 ]
  %DCcoded.1 = phi i32 [ 1, %if.then363 ], [ %DCcoded.03303, %if.end360 ]
  %ilev.0 = phi i32 [ %call383, %if.then363 ], [ 0, %if.end360 ]
  %cr_cbp.addr.1 = phi i32 [ %cond372, %if.then363 ], [ %cr_cbp.addr.03305, %if.end360 ]
  store i32 %ilev.0, i32* %arrayidx313, align 4, !dbg !1707, !tbaa !984
  %indvars.iv.next3430 = add i64 %indvars.iv3429, 1, !dbg !1682
  %lftr.wideiv3431 = trunc i64 %indvars.iv.next3430 to i32, !dbg !1682
  %exitcond3432 = icmp eq i32 %lftr.wideiv3431, 4, !dbg !1682
  br i1 %exitcond3432, label %for.end389, label %if.end384.for.body307_crit_edge, !dbg !1682

if.end384.for.body307_crit_edge:                  ; preds = %if.end384
  %arrayidx313.phi.trans.insert = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv.next3430
  %.pre3601 = load i32* %arrayidx313.phi.trans.insert, align 4, !dbg !1684, !tbaa !984
  br label %for.body307, !dbg !1682

for.end389:                                       ; preds = %if.end384
  %idxprom390 = sext i32 %scan_pos.1 to i64, !dbg !1708
  %arrayidx391 = getelementptr inbounds i32* %5, i64 %idxprom390, !dbg !1708
  store i32 0, i32* %arrayidx391, align 4, !dbg !1708, !tbaa !984
  %93 = bitcast [4 x i32]* %m1 to i64*, !dbg !1709
  %94 = load i64* %93, align 16, !dbg !1709
  %95 = trunc i64 %94 to i32, !dbg !1709
  %96 = lshr i64 %94, 32
  %97 = trunc i64 %96 to i32
  %add394 = add nsw i32 %97, %95, !dbg !1709
  %98 = bitcast i32* %arrayidx287 to i64*, !dbg !1709
  %99 = load i64* %98, align 8, !dbg !1709
  %100 = trunc i64 %99 to i32, !dbg !1709
  %add396 = add nsw i32 %add394, %100, !dbg !1709
  %101 = lshr i64 %99, 32
  %102 = trunc i64 %101 to i32
  %add398 = add nsw i32 %add396, %102, !dbg !1709
  %arrayidx399 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 0, !dbg !1709
  store i32 %add398, i32* %arrayidx399, align 16, !dbg !1709, !tbaa !984
  %sub402 = sub i32 %95, %97, !dbg !1710
  %add404 = add nsw i32 %sub402, %100, !dbg !1710
  %sub406 = sub i32 %add404, %102, !dbg !1710
  %arrayidx407 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 1, !dbg !1710
  store i32 %sub406, i32* %arrayidx407, align 4, !dbg !1710, !tbaa !984
  %sub412 = sub i32 %add394, %100, !dbg !1711
  %sub414 = sub i32 %sub412, %102, !dbg !1711
  %arrayidx415 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1711
  store i32 %sub414, i32* %arrayidx415, align 8, !dbg !1711, !tbaa !984
  %sub420 = sub i32 %sub402, %100, !dbg !1712
  %add422 = add nsw i32 %sub420, %102, !dbg !1712
  %arrayidx423 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1712
  store i32 %add422, i32* %arrayidx423, align 4, !dbg !1712, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1713
  %cmp428 = icmp slt i32 %add37, 30, !dbg !1715
  %arrayidx441 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0, !dbg !1717
  %sub443 = sub nsw i32 5, %div38, !dbg !1717
  %arrayidx455 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0, !dbg !1719
  %sub475 = add nsw i32 %div38, -5, !dbg !1720
  br label %for.body427, !dbg !1713

for.body427:                                      ; preds = %for.inc495.for.body427_crit_edge, %for.end389
  %103 = phi i32 [ %add398, %for.end389 ], [ %.pre3602, %for.inc495.for.body427_crit_edge ]
  %indvars.iv3425 = phi i64 [ 0, %for.end389 ], [ %indvars.iv.next3426, %for.inc495.for.body427_crit_edge ]
  br i1 %cmp428, label %if.then430, label %if.else462, !dbg !1715

if.then430:                                       ; preds = %for.body427
  br i1 %8, label %if.then433, label %if.else447, !dbg !1722

if.then433:                                       ; preds = %if.then430
  %104 = load i32* %arrayidx441, align 4, !dbg !1717, !tbaa !984
  %mul442 = mul nsw i32 %104, %103, !dbg !1717
  %shr444 = ashr i32 %mul442, %sub443, !dbg !1717
  %arrayidx446 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425, !dbg !1717
  store i32 %shr444, i32* %arrayidx446, align 4, !dbg !1717, !tbaa !984
  br label %for.inc495, !dbg !1717

if.else447:                                       ; preds = %if.then430
  %105 = load i32* %arrayidx455, align 4, !dbg !1719, !tbaa !984
  %mul456 = mul nsw i32 %105, %103, !dbg !1719
  %shr458 = ashr i32 %mul456, %sub443, !dbg !1719
  %arrayidx460 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425, !dbg !1719
  store i32 %shr458, i32* %arrayidx460, align 4, !dbg !1719, !tbaa !984
  br label %for.inc495

if.else462:                                       ; preds = %for.body427
  br i1 %8, label %if.then465, label %if.else479, !dbg !1723

if.then465:                                       ; preds = %if.else462
  %106 = load i32* %arrayidx441, align 4, !dbg !1720, !tbaa !984
  %mul474 = mul nsw i32 %106, %103, !dbg !1720
  %shl476 = shl i32 %mul474, %sub475, !dbg !1720
  %arrayidx478 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425, !dbg !1720
  store i32 %shl476, i32* %arrayidx478, align 4, !dbg !1720, !tbaa !984
  br label %for.inc495, !dbg !1720

if.else479:                                       ; preds = %if.else462
  %107 = load i32* %arrayidx455, align 4, !dbg !1724, !tbaa !984
  %mul488 = mul nsw i32 %107, %103, !dbg !1724
  %shl490 = shl i32 %mul488, %sub475, !dbg !1724
  %arrayidx492 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425, !dbg !1724
  store i32 %shl490, i32* %arrayidx492, align 4, !dbg !1724, !tbaa !984
  br label %for.inc495

for.inc495:                                       ; preds = %if.else447, %if.then433, %if.else479, %if.then465
  %indvars.iv.next3426 = add i64 %indvars.iv3425, 1, !dbg !1713
  %lftr.wideiv3427 = trunc i64 %indvars.iv.next3426 to i32, !dbg !1713
  %exitcond3428 = icmp eq i32 %lftr.wideiv3427, 4, !dbg !1713
  br i1 %exitcond3428, label %for.end497, label %for.inc495.for.body427_crit_edge, !dbg !1713

for.inc495.for.body427_crit_edge:                 ; preds = %for.inc495
  %arrayidx435.phi.trans.insert = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv.next3426
  %.pre3602 = load i32* %arrayidx435.phi.trans.insert, align 4, !dbg !1717, !tbaa !984
  br label %for.body427, !dbg !1713

for.end497:                                       ; preds = %for.inc495
  %108 = load i64* %93, align 16, !dbg !1725
  %109 = trunc i64 %108 to i32, !dbg !1725
  %110 = load %struct.ImageParameters** @img, align 8, !dbg !1725, !tbaa !978
  %arrayidx501 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 0, i64 0, !dbg !1725
  store i32 %109, i32* %arrayidx501, align 4, !dbg !1725, !tbaa !984
  %111 = lshr i64 %108, 32
  %112 = trunc i64 %111 to i32
  %arrayidx505 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 4, i64 0, !dbg !1726
  store i32 %112, i32* %arrayidx505, align 4, !dbg !1726, !tbaa !984
  %113 = load i64* %98, align 8, !dbg !1727
  %114 = trunc i64 %113 to i32, !dbg !1727
  %arrayidx509 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 0, i64 4, !dbg !1727
  store i32 %114, i32* %arrayidx509, align 4, !dbg !1727, !tbaa !984
  %115 = lshr i64 %113, 32
  %116 = trunc i64 %115 to i32
  %arrayidx513 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 4, i64 4, !dbg !1728
  store i32 %116, i32* %arrayidx513, align 4, !dbg !1728, !tbaa !984
  br label %if.end1682, !dbg !1729

for.cond523.preheader:                            ; preds = %for.cond523.preheader.lr.ph, %for.inc542
  %indvars.iv3475 = phi i64 [ 0, %for.cond523.preheader.lr.ph ], [ %indvars.iv.next3476, %for.inc542 ]
  br i1 %cmp5253317, label %for.body527.lr.ph, label %for.inc542, !dbg !1673

for.body527.lr.ph:                                ; preds = %for.cond523.preheader
  %117 = trunc i64 %indvars.iv3475 to i32, !dbg !1730
  %shr533 = ashr exact i32 %117, 2, !dbg !1730
  %idxprom534 = sext i32 %shr533 to i64, !dbg !1730
  br label %for.body527, !dbg !1673

for.body527:                                      ; preds = %for.body527.lr.ph, %for.body527
  %indvars.iv3473 = phi i64 [ 0, %for.body527.lr.ph ], [ %indvars.iv.next3474, %for.body527 ]
  %arrayidx532 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3473, i64 %indvars.iv3475, !dbg !1730
  %118 = load i32* %arrayidx532, align 4, !dbg !1730, !tbaa !984
  %119 = trunc i64 %indvars.iv3473 to i32, !dbg !1730
  %shr535 = ashr exact i32 %119, 2, !dbg !1730
  %idxprom536 = sext i32 %shr535 to i64, !dbg !1730
  %arrayidx538 = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 %idxprom536, i64 %idxprom534, !dbg !1730
  store i32 %118, i32* %arrayidx538, align 4, !dbg !1730, !tbaa !984
  %indvars.iv.next3474 = add i64 %indvars.iv3473, 4, !dbg !1673
  %120 = trunc i64 %indvars.iv.next3474 to i32, !dbg !1673
  %cmp525 = icmp slt i32 %120, %73, !dbg !1673
  br i1 %cmp525, label %for.body527, label %for.inc542, !dbg !1673

for.inc542:                                       ; preds = %for.body527, %for.cond523.preheader
  %indvars.iv.next3476 = add i64 %indvars.iv3475, 4, !dbg !1668
  %121 = trunc i64 %indvars.iv.next3476 to i32, !dbg !1668
  %cmp520 = icmp slt i32 %121, %72, !dbg !1668
  br i1 %cmp520, label %for.cond523.preheader, label %for.cond518.for.end544_crit_edge, !dbg !1668

for.cond518.for.end544_crit_edge:                 ; preds = %for.inc542
  %arrayidx546.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 0
  %122 = bitcast [4 x [4 x i32]]* %m3 to i64*, !dbg !1671
  %123 = load i64* %122, align 16, !dbg !1671
  %124 = trunc i64 %123 to i32, !dbg !1671
  %arrayidx548.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 0
  %125 = bitcast i32* %arrayidx548.phi.trans.insert to i64*, !dbg !1671
  %126 = load i64* %125, align 16, !dbg !1671
  %127 = trunc i64 %126 to i32, !dbg !1671
  %128 = lshr i64 %123, 32
  %129 = trunc i64 %128 to i32
  %130 = lshr i64 %126, 32
  %131 = trunc i64 %130 to i32
  %arrayidx560.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 2
  %132 = bitcast i32* %arrayidx560.phi.trans.insert to i64*, !dbg !1672
  %133 = load i64* %132, align 8, !dbg !1672
  %134 = trunc i64 %133 to i32, !dbg !1672
  %arrayidx562.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 2
  %135 = bitcast i32* %arrayidx562.phi.trans.insert to i64*, !dbg !1672
  %136 = load i64* %135, align 8, !dbg !1672
  %137 = trunc i64 %136 to i32, !dbg !1672
  %138 = lshr i64 %133, 32
  %139 = trunc i64 %138 to i32
  %140 = lshr i64 %136, 32
  %141 = trunc i64 %140 to i32
  br label %for.end544, !dbg !1668

for.end544:                                       ; preds = %for.cond518.preheader.for.end544_crit_edge, %for.cond518.for.end544_crit_edge
  %arrayidx562.pre-phi = phi i32* [ %arrayidx562.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx562.phi.trans.insert, %for.cond518.for.end544_crit_edge ], !dbg !1672
  %arrayidx560.pre-phi = phi i32* [ %arrayidx560.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx560.phi.trans.insert, %for.cond518.for.end544_crit_edge ], !dbg !1672
  %arrayidx548.pre-phi = phi i32* [ %arrayidx548.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx548.phi.trans.insert, %for.cond518.for.end544_crit_edge ], !dbg !1671
  %arrayidx546.pre-phi = phi i32* [ %arrayidx546.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx546.phi.trans.insert, %for.cond518.for.end544_crit_edge ], !dbg !1671
  %142 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %141, %for.cond518.for.end544_crit_edge ]
  %143 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %139, %for.cond518.for.end544_crit_edge ]
  %144 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %137, %for.cond518.for.end544_crit_edge ]
  %145 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %134, %for.cond518.for.end544_crit_edge ]
  %146 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %131, %for.cond518.for.end544_crit_edge ]
  %147 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %129, %for.cond518.for.end544_crit_edge ]
  %148 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %127, %for.cond518.for.end544_crit_edge ]
  %149 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %124, %for.cond518.for.end544_crit_edge ]
  %add549 = add nsw i32 %148, %149, !dbg !1671
  %arrayidx551 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 0, !dbg !1671
  store i32 %add549, i32* %arrayidx551, align 16, !dbg !1671, !tbaa !984
  %add556 = add nsw i32 %146, %147, !dbg !1731
  %arrayidx558 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 1, !dbg !1731
  store i32 %add556, i32* %arrayidx558, align 4, !dbg !1731, !tbaa !984
  %add563 = add nsw i32 %144, %145, !dbg !1672
  %arrayidx565 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 2, !dbg !1672
  store i32 %add563, i32* %arrayidx565, align 8, !dbg !1672, !tbaa !984
  %add570 = add nsw i32 %142, %143, !dbg !1732
  %arrayidx572 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 3, !dbg !1732
  store i32 %add570, i32* %arrayidx572, align 4, !dbg !1732, !tbaa !984
  %sub577 = sub nsw i32 %149, %148, !dbg !1733
  %arrayidx579 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 0, !dbg !1733
  store i32 %sub577, i32* %arrayidx579, align 16, !dbg !1733, !tbaa !984
  %sub584 = sub nsw i32 %147, %146, !dbg !1734
  %arrayidx586 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 1, !dbg !1734
  store i32 %sub584, i32* %arrayidx586, align 4, !dbg !1734, !tbaa !984
  %sub591 = sub nsw i32 %145, %144, !dbg !1735
  %arrayidx593 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 2, !dbg !1735
  store i32 %sub591, i32* %arrayidx593, align 8, !dbg !1735, !tbaa !984
  %sub598 = sub nsw i32 %143, %142, !dbg !1736
  %arrayidx600 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 3, !dbg !1736
  store i32 %sub598, i32* %arrayidx600, align 4, !dbg !1736, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1737
  %arrayidx647 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1739
  %arrayidx648 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1739
  br label %for.cond605.preheader, !dbg !1737

for.cond605.preheader:                            ; preds = %for.end634, %for.end544
  %indvars.iv3469 = phi i64 [ 0, %for.end544 ], [ %indvars.iv.next3470, %for.end634 ]
  br label %for.body608, !dbg !1741

for.cond662.preheader:                            ; preds = %for.end634
  %arrayidx688 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0, !dbg !1743
  %idxprom690 = sext i32 %qp_per_dc.0 to i64, !dbg !1743
  %arrayidx695 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom690, i64 0, i64 0, !dbg !1743
  %shl727 = shl i32 %uv, 3, !dbg !1746
  %shl728 = shl i32 16711680, %shl727, !dbg !1746
  %conv729 = sext i32 %shl728 to i64, !dbg !1746
  %cbp_blk730 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !1746
  %arrayidx711 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0, !dbg !1748
  %arrayidx718 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom690, i64 0, i64 0, !dbg !1748
  br label %for.body665, !dbg !1749

for.body608:                                      ; preds = %for.body608, %for.cond605.preheader
  %indvars.iv3464 = phi i64 [ 0, %for.cond605.preheader ], [ %indvars.iv.next3465, %for.body608 ]
  %150 = sub nsw i64 3, %indvars.iv3464, !dbg !1750
  %arrayidx613 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 %indvars.iv3464, !dbg !1752
  %151 = load i32* %arrayidx613, align 4, !dbg !1752, !tbaa !984
  %arrayidx617 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 %150, !dbg !1752
  %152 = load i32* %arrayidx617, align 4, !dbg !1752, !tbaa !984
  %add618 = add nsw i32 %152, %151, !dbg !1752
  %arrayidx620 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3464, !dbg !1752
  store i32 %add618, i32* %arrayidx620, align 4, !dbg !1752, !tbaa !984
  %sub629 = sub nsw i32 %151, %152, !dbg !1753
  %arrayidx631 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %150, !dbg !1753
  store i32 %sub629, i32* %arrayidx631, align 4, !dbg !1753, !tbaa !984
  %indvars.iv.next3465 = add i64 %indvars.iv3464, 1, !dbg !1741
  %lftr.wideiv3467 = trunc i64 %indvars.iv.next3465 to i32, !dbg !1741
  %exitcond3468 = icmp eq i32 %lftr.wideiv3467, 2, !dbg !1741
  br i1 %exitcond3468, label %for.end634, label %for.body608, !dbg !1741

for.end634:                                       ; preds = %for.body608
  %153 = bitcast [4 x i32]* %m5 to i64*, !dbg !1754
  %154 = load i64* %153, align 16, !dbg !1754
  %155 = trunc i64 %154 to i32, !dbg !1754
  %156 = lshr i64 %154, 32
  %157 = trunc i64 %156 to i32
  %add637 = add nsw i32 %157, %155, !dbg !1754
  %arrayidx640 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 0, !dbg !1754
  store i32 %add637, i32* %arrayidx640, align 16, !dbg !1754, !tbaa !984
  %sub643 = sub nsw i32 %155, %157, !dbg !1755
  %arrayidx646 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 2, !dbg !1755
  store i32 %sub643, i32* %arrayidx646, align 8, !dbg !1755, !tbaa !984
  %158 = load i32* %arrayidx647, align 4, !dbg !1739, !tbaa !984
  %159 = bitcast i32* %arrayidx648 to i64*, !dbg !1739
  %160 = load i64* %159, align 8, !dbg !1739
  %161 = trunc i64 %160 to i32, !dbg !1739
  %add649 = add nsw i32 %161, %158, !dbg !1739
  %arrayidx652 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 1, !dbg !1739
  store i32 %add649, i32* %arrayidx652, align 4, !dbg !1739, !tbaa !984
  %162 = lshr i64 %160, 32
  %163 = trunc i64 %162 to i32
  %sub655 = sub nsw i32 %163, %161, !dbg !1756
  %arrayidx658 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 3, !dbg !1756
  store i32 %sub655, i32* %arrayidx658, align 4, !dbg !1756, !tbaa !984
  %indvars.iv.next3470 = add i64 %indvars.iv3469, 1, !dbg !1737
  %lftr.wideiv3471 = trunc i64 %indvars.iv.next3470 to i32, !dbg !1737
  %exitcond3472 = icmp eq i32 %lftr.wideiv3471, 2, !dbg !1737
  br i1 %exitcond3472, label %for.cond662.preheader, label %for.cond605.preheader, !dbg !1737

for.body665:                                      ; preds = %if.end748, %for.cond662.preheader
  %indvars.iv3460 = phi i64 [ 0, %for.cond662.preheader ], [ %indvars.iv.next3461, %if.end748 ]
  %cr_cbp.addr.23313 = phi i32 [ %cr_cbp, %for.cond662.preheader ], [ %cr_cbp.addr.3, %if.end748 ]
  %DCcoded.23311 = phi i32 [ 0, %for.cond662.preheader ], [ %DCcoded.3, %if.end748 ]
  %run.23310 = phi i32 [ -1, %for.cond662.preheader ], [ %run.3, %if.end748 ]
  %scan_pos.23309 = phi i32 [ 0, %for.cond662.preheader ], [ %scan_pos.3, %if.end748 ]
  %arrayidx668 = getelementptr inbounds [8 x [2 x i8]]* @SCAN_YUV422, i64 0, i64 %indvars.iv3460, i64 0, !dbg !1757
  %164 = load i8* %arrayidx668, align 2, !dbg !1757, !tbaa !979
  %arrayidx672 = getelementptr inbounds [8 x [2 x i8]]* @SCAN_YUV422, i64 0, i64 %indvars.iv3460, i64 1, !dbg !1758
  %165 = load i8* %arrayidx672, align 1, !dbg !1758, !tbaa !979
  %inc674 = add nsw i32 %run.23310, 1, !dbg !1759
  call void @llvm.dbg.value(metadata !{i32 %inc674}, i64 0, metadata !247), !dbg !1759
  %idxprom678 = zext i8 %165 to i64, !dbg !1743
  %idxprom679 = zext i8 %164 to i64, !dbg !1743
  %arrayidx681 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom679, i64 %idxprom678, !dbg !1743
  %166 = load i32* %arrayidx681, align 4, !dbg !1743, !tbaa !984
  %ispos3213 = icmp sgt i32 %166, -1, !dbg !1743
  %neg3214 = sub i32 0, %166, !dbg !1743
  %167 = select i1 %ispos3213, i32 %166, i32 %neg3214, !dbg !1743
  br i1 %8, label %if.then677, label %if.else700, !dbg !1760

if.then677:                                       ; preds = %for.body665
  %168 = load i32* %arrayidx688, align 4, !dbg !1743, !tbaa !984
  %mul689 = mul nsw i32 %168, %167, !dbg !1743
  %169 = load i32* %arrayidx695, align 4, !dbg !1743, !tbaa !984
  %mul696 = shl i32 %169, 1, !dbg !1743
  %add697 = add nsw i32 %mul696, %mul689, !dbg !1743
  br label %if.end723, !dbg !1743

if.else700:                                       ; preds = %for.body665
  %170 = load i32* %arrayidx711, align 4, !dbg !1748, !tbaa !984
  %mul712 = mul nsw i32 %170, %167, !dbg !1748
  %171 = load i32* %arrayidx718, align 4, !dbg !1748, !tbaa !984
  %mul719 = shl i32 %171, 1, !dbg !1748
  %add720 = add nsw i32 %mul719, %mul712, !dbg !1748
  br label %if.end723

if.end723:                                        ; preds = %if.else700, %if.then677
  %add697.pn = phi i32 [ %add697, %if.then677 ], [ %add720, %if.else700 ]
  %level.2 = ashr i32 %add697.pn, %q_bits_422.0, !dbg !1743
  %cmp724 = icmp eq i32 %level.2, 0, !dbg !1761
  br i1 %cmp724, label %if.end748, label %if.then726, !dbg !1761

if.then726:                                       ; preds = %if.end723
  %172 = load i64* %cbp_blk730, align 8, !dbg !1746, !tbaa !1698
  %or731 = or i64 %172, %conv729, !dbg !1746
  store i64 %or731, i64* %cbp_blk730, align 8, !dbg !1746, !tbaa !1698
  %cmp732 = icmp slt i32 %cr_cbp.addr.23313, 1, !dbg !1762
  %cond737 = select i1 %cmp732, i32 1, i32 %cr_cbp.addr.23313, !dbg !1762
  call void @llvm.dbg.value(metadata !{i32 %cond737}, i64 0, metadata !234), !dbg !1762
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !253), !dbg !1763
  %call742 = call i32 @sign(i32 %level.2, i32 %166) #4, !dbg !1764
  %idxprom743 = sext i32 %scan_pos.23309 to i64, !dbg !1764
  %arrayidx744 = getelementptr inbounds i32* %5, i64 %idxprom743, !dbg !1764
  store i32 %call742, i32* %arrayidx744, align 4, !dbg !1764, !tbaa !984
  %arrayidx746 = getelementptr inbounds i32* %6, i64 %idxprom743, !dbg !1765
  store i32 %inc674, i32* %arrayidx746, align 4, !dbg !1765, !tbaa !984
  %inc747 = add nsw i32 %scan_pos.23309, 1, !dbg !1766
  call void @llvm.dbg.value(metadata !{i32 %inc747}, i64 0, metadata !246), !dbg !1766
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1767
  %.pre3581 = load i32* %arrayidx681, align 4, !dbg !1768, !tbaa !984
  br label %if.end748, !dbg !1769

if.end748:                                        ; preds = %if.end723, %if.then726
  %173 = phi i32 [ %.pre3581, %if.then726 ], [ %166, %if.end723 ]
  %scan_pos.3 = phi i32 [ %inc747, %if.then726 ], [ %scan_pos.23309, %if.end723 ]
  %run.3 = phi i32 [ -1, %if.then726 ], [ %inc674, %if.end723 ]
  %DCcoded.3 = phi i32 [ 1, %if.then726 ], [ %DCcoded.23311, %if.end723 ]
  %cr_cbp.addr.3 = phi i32 [ %cond737, %if.then726 ], [ %cr_cbp.addr.23313, %if.end723 ]
  %call753 = call i32 @sign(i32 %level.2, i32 %173) #4, !dbg !1768
  %arrayidx757 = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 %idxprom679, i64 %idxprom678, !dbg !1768
  store i32 %call753, i32* %arrayidx757, align 4, !dbg !1768, !tbaa !984
  %indvars.iv.next3461 = add i64 %indvars.iv3460, 1, !dbg !1749
  %lftr.wideiv3462 = trunc i64 %indvars.iv.next3461 to i32, !dbg !1749
  %exitcond3463 = icmp eq i32 %lftr.wideiv3462, 8, !dbg !1749
  br i1 %exitcond3463, label %for.end760, label %for.body665, !dbg !1749

for.end760:                                       ; preds = %if.end748
  %idxprom761 = sext i32 %scan_pos.3 to i64, !dbg !1770
  %arrayidx762 = getelementptr inbounds i32* %5, i64 %idxprom761, !dbg !1770
  store i32 0, i32* %arrayidx762, align 4, !dbg !1770, !tbaa !984
  %174 = bitcast i32* %arrayidx546.pre-phi to i64*, !dbg !1771
  %175 = load i64* %174, align 16, !dbg !1771
  %176 = trunc i64 %175 to i32, !dbg !1771
  %177 = bitcast i32* %arrayidx548.pre-phi to i64*, !dbg !1771
  %178 = load i64* %177, align 16, !dbg !1771
  %179 = trunc i64 %178 to i32, !dbg !1771
  %add767 = add nsw i32 %179, %176, !dbg !1771
  store i32 %add767, i32* %arrayidx551, align 16, !dbg !1771, !tbaa !984
  %180 = lshr i64 %175, 32
  %181 = trunc i64 %180 to i32
  %182 = lshr i64 %178, 32
  %183 = trunc i64 %182 to i32
  %add774 = add nsw i32 %183, %181, !dbg !1772
  store i32 %add774, i32* %arrayidx558, align 4, !dbg !1772, !tbaa !984
  %184 = bitcast i32* %arrayidx560.pre-phi to i64*, !dbg !1773
  %185 = load i64* %184, align 8, !dbg !1773
  %186 = trunc i64 %185 to i32, !dbg !1773
  %187 = bitcast i32* %arrayidx562.pre-phi to i64*, !dbg !1773
  %188 = load i64* %187, align 8, !dbg !1773
  %189 = trunc i64 %188 to i32, !dbg !1773
  %add781 = add nsw i32 %189, %186, !dbg !1773
  store i32 %add781, i32* %arrayidx565, align 8, !dbg !1773, !tbaa !984
  %190 = lshr i64 %185, 32
  %191 = trunc i64 %190 to i32
  %192 = lshr i64 %188, 32
  %193 = trunc i64 %192 to i32
  %add788 = add nsw i32 %193, %191, !dbg !1774
  store i32 %add788, i32* %arrayidx572, align 4, !dbg !1774, !tbaa !984
  %sub795 = sub nsw i32 %176, %179, !dbg !1775
  store i32 %sub795, i32* %arrayidx579, align 16, !dbg !1775, !tbaa !984
  %sub802 = sub nsw i32 %181, %183, !dbg !1776
  store i32 %sub802, i32* %arrayidx586, align 4, !dbg !1776, !tbaa !984
  %sub809 = sub nsw i32 %186, %189, !dbg !1777
  store i32 %sub809, i32* %arrayidx593, align 8, !dbg !1777, !tbaa !984
  %sub816 = sub nsw i32 %191, %193, !dbg !1778
  store i32 %sub816, i32* %arrayidx600, align 4, !dbg !1778, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1779
  %arrayidx839 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1781
  %arrayidx843 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1783
  %arrayidx847 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1784
  %arrayidx851 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !1785
  %cmp857 = icmp slt i32 %qp_per_dc.0, 4, !dbg !1786
  %arrayidx873 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0, !dbg !1789
  %sub875 = sub nsw i32 3, %qp_per_dc.0, !dbg !1789
  %shl876 = shl i32 1, %sub875, !dbg !1789
  %sub878 = sub nsw i32 4, %qp_per_dc.0, !dbg !1789
  %194 = load %struct.ImageParameters** @img, align 8, !dbg !1789, !tbaa !978
  %arrayidx926 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0, !dbg !1792
  %sub985 = add nsw i32 %qp_per_dc.0, -4, !dbg !1794
  br label %for.cond823.preheader, !dbg !1779

for.cond823.preheader:                            ; preds = %for.inc1071, %for.end760
  %indvars.iv3452 = phi i64 [ 0, %for.end760 ], [ %indvars.iv.next3453, %for.inc1071 ]
  %scevgep = getelementptr [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3452, i64 0
  %scevgep3438 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %m53437, i8* %scevgep3438, i64 16, i32 16, i1 false), !dbg !1797
  %195 = load i64* %153, align 16, !dbg !1781
  %196 = trunc i64 %195 to i32, !dbg !1781
  %197 = load i64* %159, align 8, !dbg !1781
  %198 = trunc i64 %197 to i32, !dbg !1781
  %add838 = add nsw i32 %198, %196, !dbg !1781
  store i32 %add838, i32* %arrayidx839, align 16, !dbg !1781, !tbaa !984
  %sub842 = sub nsw i32 %196, %198, !dbg !1783
  store i32 %sub842, i32* %arrayidx843, align 4, !dbg !1783, !tbaa !984
  %199 = lshr i64 %195, 32
  %200 = trunc i64 %199 to i32
  %201 = lshr i64 %197, 32
  %202 = trunc i64 %201 to i32
  %sub846 = sub nsw i32 %200, %202, !dbg !1784
  store i32 %sub846, i32* %arrayidx847, align 8, !dbg !1784, !tbaa !984
  %add850 = add nsw i32 %202, %200, !dbg !1785
  store i32 %add850, i32* %arrayidx851, align 4, !dbg !1785, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !236), !dbg !1799
  %203 = shl nsw i64 %indvars.iv3452, 2, !dbg !1789
  br label %for.body855, !dbg !1799

for.body855:                                      ; preds = %for.inc1068.for.body855_crit_edge, %for.cond823.preheader
  %204 = phi i32 [ %add838, %for.cond823.preheader ], [ %.pre3603, %for.inc1068.for.body855_crit_edge ]
  %indvars.iv3439 = phi i64 [ 0, %for.cond823.preheader ], [ %indvars.iv.next3440, %for.inc1068.for.body855_crit_edge ]
  %205 = sub nsw i64 3, %indvars.iv3439, !dbg !1800
  %arrayidx864 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3439, !dbg !1789
  %arrayidx866 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %205, !dbg !1789
  %206 = load i32* %arrayidx866, align 4, !dbg !1789, !tbaa !984
  %add867 = add nsw i32 %206, %204, !dbg !1789
  br i1 %cmp857, label %if.then859, label %if.else969, !dbg !1786

if.then859:                                       ; preds = %for.body855
  br i1 %8, label %if.then862, label %if.else915, !dbg !1801

if.then862:                                       ; preds = %if.then859
  %207 = load i32* %arrayidx873, align 4, !dbg !1789, !tbaa !984
  %mul874 = mul nsw i32 %207, %add867, !dbg !1789
  %add877 = add nsw i32 %mul874, %shl876, !dbg !1789
  %shr879 = ashr i32 %add877, %sub878, !dbg !1789
  %add880 = add nsw i32 %shr879, 2, !dbg !1789
  %shr881 = ashr i32 %add880, 2, !dbg !1789
  %208 = shl nsw i64 %indvars.iv3439, 2, !dbg !1789
  %arrayidx888 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %208, !dbg !1789
  store i32 %shr881, i32* %arrayidx888, align 4, !dbg !1789, !tbaa !984
  %209 = load i32* %arrayidx864, align 4, !dbg !1802, !tbaa !984
  %210 = load i32* %arrayidx866, align 4, !dbg !1802, !tbaa !984
  %sub893 = sub nsw i32 %209, %210, !dbg !1802
  %211 = load i32* %arrayidx873, align 4, !dbg !1802, !tbaa !984
  %mul900 = mul nsw i32 %sub893, %211, !dbg !1802
  %add903 = add nsw i32 %mul900, %shl876, !dbg !1802
  %shr905 = ashr i32 %add903, %sub878, !dbg !1802
  %add906 = add nsw i32 %shr905, 2, !dbg !1802
  %shr907 = ashr i32 %add906, 2, !dbg !1802
  %212 = shl nsw i64 %205, 2, !dbg !1802
  %arrayidx914 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %212, !dbg !1802
  store i32 %shr907, i32* %arrayidx914, align 4, !dbg !1802, !tbaa !984
  br label %for.inc1068, !dbg !1803

if.else915:                                       ; preds = %if.then859
  %213 = load i32* %arrayidx926, align 4, !dbg !1792, !tbaa !984
  %mul927 = mul nsw i32 %213, %add867, !dbg !1792
  %add930 = add nsw i32 %mul927, %shl876, !dbg !1792
  %shr932 = ashr i32 %add930, %sub878, !dbg !1792
  %add933 = add nsw i32 %shr932, 2, !dbg !1792
  %shr934 = ashr i32 %add933, 2, !dbg !1792
  %214 = shl nsw i64 %indvars.iv3439, 2, !dbg !1792
  %arrayidx941 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %214, !dbg !1792
  store i32 %shr934, i32* %arrayidx941, align 4, !dbg !1792, !tbaa !984
  %215 = load i32* %arrayidx864, align 4, !dbg !1804, !tbaa !984
  %216 = load i32* %arrayidx866, align 4, !dbg !1804, !tbaa !984
  %sub946 = sub nsw i32 %215, %216, !dbg !1804
  %217 = load i32* %arrayidx926, align 4, !dbg !1804, !tbaa !984
  %mul953 = mul nsw i32 %sub946, %217, !dbg !1804
  %add956 = add nsw i32 %mul953, %shl876, !dbg !1804
  %shr958 = ashr i32 %add956, %sub878, !dbg !1804
  %add959 = add nsw i32 %shr958, 2, !dbg !1804
  %shr960 = ashr i32 %add959, 2, !dbg !1804
  %218 = shl nsw i64 %205, 2, !dbg !1804
  %arrayidx967 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %218, !dbg !1804
  store i32 %shr960, i32* %arrayidx967, align 4, !dbg !1804, !tbaa !984
  br label %for.inc1068

if.else969:                                       ; preds = %for.body855
  br i1 %8, label %if.then972, label %if.else1019, !dbg !1805

if.then972:                                       ; preds = %if.else969
  %219 = load i32* %arrayidx873, align 4, !dbg !1794, !tbaa !984
  %mul984 = mul nsw i32 %219, %add867, !dbg !1794
  %shl986 = shl i32 %mul984, %sub985, !dbg !1794
  %add987 = add nsw i32 %shl986, 2, !dbg !1794
  %shr988 = ashr i32 %add987, 2, !dbg !1794
  %220 = shl nsw i64 %indvars.iv3439, 2, !dbg !1794
  %arrayidx995 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %220, !dbg !1794
  store i32 %shr988, i32* %arrayidx995, align 4, !dbg !1794, !tbaa !984
  %221 = load i32* %arrayidx864, align 4, !dbg !1806, !tbaa !984
  %222 = load i32* %arrayidx866, align 4, !dbg !1806, !tbaa !984
  %sub1000 = sub nsw i32 %221, %222, !dbg !1806
  %223 = load i32* %arrayidx873, align 4, !dbg !1806, !tbaa !984
  %mul1007 = mul nsw i32 %sub1000, %223, !dbg !1806
  %shl1009 = shl i32 %mul1007, %sub985, !dbg !1806
  %add1010 = add nsw i32 %shl1009, 2, !dbg !1806
  %shr1011 = ashr i32 %add1010, 2, !dbg !1806
  %224 = shl nsw i64 %205, 2, !dbg !1806
  %arrayidx1018 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %224, !dbg !1806
  store i32 %shr1011, i32* %arrayidx1018, align 4, !dbg !1806, !tbaa !984
  br label %for.inc1068, !dbg !1807

if.else1019:                                      ; preds = %if.else969
  %225 = load i32* %arrayidx926, align 4, !dbg !1808, !tbaa !984
  %mul1031 = mul nsw i32 %225, %add867, !dbg !1808
  %shl1033 = shl i32 %mul1031, %sub985, !dbg !1808
  %add1034 = add nsw i32 %shl1033, 2, !dbg !1808
  %shr1035 = ashr i32 %add1034, 2, !dbg !1808
  %226 = shl nsw i64 %indvars.iv3439, 2, !dbg !1808
  %arrayidx1042 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %226, !dbg !1808
  store i32 %shr1035, i32* %arrayidx1042, align 4, !dbg !1808, !tbaa !984
  %227 = load i32* %arrayidx864, align 4, !dbg !1810, !tbaa !984
  %228 = load i32* %arrayidx866, align 4, !dbg !1810, !tbaa !984
  %sub1047 = sub nsw i32 %227, %228, !dbg !1810
  %229 = load i32* %arrayidx926, align 4, !dbg !1810, !tbaa !984
  %mul1054 = mul nsw i32 %sub1047, %229, !dbg !1810
  %shl1056 = shl i32 %mul1054, %sub985, !dbg !1810
  %add1057 = add nsw i32 %shl1056, 2, !dbg !1810
  %shr1058 = ashr i32 %add1057, 2, !dbg !1810
  %230 = shl nsw i64 %205, 2, !dbg !1810
  %arrayidx1065 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %230, !dbg !1810
  store i32 %shr1058, i32* %arrayidx1065, align 4, !dbg !1810, !tbaa !984
  br label %for.inc1068

for.inc1068:                                      ; preds = %if.else915, %if.then862, %if.else1019, %if.then972
  %indvars.iv.next3440 = add i64 %indvars.iv3439, 1, !dbg !1799
  %lftr.wideiv3450 = trunc i64 %indvars.iv.next3440 to i32, !dbg !1799
  %exitcond3451 = icmp eq i32 %lftr.wideiv3450, 2, !dbg !1799
  br i1 %exitcond3451, label %for.inc1071, label %for.inc1068.for.body855_crit_edge, !dbg !1799

for.inc1068.for.body855_crit_edge:                ; preds = %for.inc1068
  %arrayidx864.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3440
  %.pre3603 = load i32* %arrayidx864.phi.trans.insert, align 4, !dbg !1789, !tbaa !984
  br label %for.body855, !dbg !1799

for.inc1071:                                      ; preds = %for.inc1068
  %indvars.iv.next3453 = add i64 %indvars.iv3452, 1, !dbg !1779
  %lftr.wideiv3458 = trunc i64 %indvars.iv.next3453 to i32, !dbg !1779
  %exitcond3459 = icmp eq i32 %lftr.wideiv3458, 2, !dbg !1779
  br i1 %exitcond3459, label %if.end1682, label %for.cond823.preheader, !dbg !1779

for.cond1083.preheader:                           ; preds = %for.cond1083.preheader.lr.ph, %for.inc1102
  %231 = phi i32 [ %72, %for.cond1083.preheader.lr.ph ], [ %238, %for.inc1102 ]
  %232 = phi i32 [ %.pre3594, %for.cond1083.preheader.lr.ph ], [ %239, %for.inc1102 ], !dbg !1666
  %indvars.iv3533 = phi i64 [ 0, %for.cond1083.preheader.lr.ph ], [ %indvars.iv.next3534, %for.inc1102 ]
  %cmp10853339 = icmp sgt i32 %232, 0, !dbg !1666
  br i1 %cmp10853339, label %for.body1087.lr.ph, label %for.inc1102, !dbg !1666

for.body1087.lr.ph:                               ; preds = %for.cond1083.preheader
  %233 = trunc i64 %indvars.iv3533 to i32, !dbg !1811
  %shr1093 = ashr exact i32 %233, 2, !dbg !1811
  %idxprom1094 = sext i32 %shr1093 to i64, !dbg !1811
  br label %for.body1087, !dbg !1666

for.cond1105.preheader:                           ; preds = %for.inc1102, %for.cond1078.preheader
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1812
  br i1 %16, label %for.cond1241.preheader, label %for.cond1114.preheader.lr.ph, !dbg !1816

for.cond1114.preheader.lr.ph:                     ; preds = %for.cond1105.preheader
  %arrayidx1156 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1817
  %arrayidx1157 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1817
  br label %for.cond1114.preheader, !dbg !1816

for.body1087:                                     ; preds = %for.body1087.lr.ph, %for.body1087
  %indvars.iv3531 = phi i64 [ 0, %for.body1087.lr.ph ], [ %indvars.iv.next3532, %for.body1087 ]
  %arrayidx1092 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3531, i64 %indvars.iv3533, !dbg !1811
  %234 = load i32* %arrayidx1092, align 4, !dbg !1811, !tbaa !984
  %235 = trunc i64 %indvars.iv3531 to i32, !dbg !1811
  %shr1095 = ashr exact i32 %235, 2, !dbg !1811
  %idxprom1096 = sext i32 %shr1095 to i64, !dbg !1811
  %arrayidx1098 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom1096, i64 %idxprom1094, !dbg !1811
  store i32 %234, i32* %arrayidx1098, align 4, !dbg !1811, !tbaa !984
  %indvars.iv.next3532 = add i64 %indvars.iv3531, 4, !dbg !1666
  %236 = load i32* %mb_cr_size_x10843338, align 4, !dbg !1666, !tbaa !984
  %237 = trunc i64 %indvars.iv.next3532 to i32, !dbg !1666
  %cmp1085 = icmp slt i32 %237, %236, !dbg !1666
  br i1 %cmp1085, label %for.body1087, label %for.cond1083.for.inc1102_crit_edge, !dbg !1666

for.cond1083.for.inc1102_crit_edge:               ; preds = %for.body1087
  %.pre3595 = load i32* %mb_cr_size_y3353, align 4, !dbg !1663, !tbaa !984
  br label %for.inc1102, !dbg !1666

for.inc1102:                                      ; preds = %for.cond1083.for.inc1102_crit_edge, %for.cond1083.preheader
  %238 = phi i32 [ %.pre3595, %for.cond1083.for.inc1102_crit_edge ], [ %231, %for.cond1083.preheader ], !dbg !1663
  %239 = phi i32 [ %236, %for.cond1083.for.inc1102_crit_edge ], [ %232, %for.cond1083.preheader ]
  %indvars.iv.next3534 = add i64 %indvars.iv3533, 4, !dbg !1663
  %240 = trunc i64 %indvars.iv.next3534 to i32, !dbg !1663
  %cmp1080 = icmp slt i32 %240, %238, !dbg !1663
  br i1 %cmp1080, label %for.cond1083.preheader, label %for.cond1105.preheader, !dbg !1663

for.cond1114.preheader:                           ; preds = %for.cond1114.preheader.lr.ph, %for.end1143
  %indvars.iv3529 = phi i64 [ 0, %for.cond1114.preheader.lr.ph ], [ %indvars.iv.next3530, %for.end1143 ]
  br label %for.body1117, !dbg !1812

for.cond1171.preheader:                           ; preds = %for.end1143
  br i1 %16, label %for.cond1241.preheader, label %for.cond1180.preheader.lr.ph, !dbg !1818

for.cond1180.preheader.lr.ph:                     ; preds = %for.cond1171.preheader
  %arrayidx1224 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !1820
  %arrayidx1225 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1820
  br label %for.cond1180.preheader, !dbg !1818

for.body1117:                                     ; preds = %for.body1117, %for.cond1114.preheader
  %indvars.iv3524 = phi i64 [ 0, %for.cond1114.preheader ], [ %indvars.iv.next3525, %for.body1117 ]
  %241 = sub nsw i64 3, %indvars.iv3524, !dbg !1822
  %arrayidx1122 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3524, i64 %indvars.iv3529, !dbg !1824
  %242 = load i32* %arrayidx1122, align 4, !dbg !1824, !tbaa !984
  %arrayidx1126 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %241, i64 %indvars.iv3529, !dbg !1824
  %243 = load i32* %arrayidx1126, align 4, !dbg !1824, !tbaa !984
  %add1127 = add nsw i32 %243, %242, !dbg !1824
  %arrayidx1129 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3524, !dbg !1824
  store i32 %add1127, i32* %arrayidx1129, align 4, !dbg !1824, !tbaa !984
  %sub1138 = sub nsw i32 %242, %243, !dbg !1825
  %arrayidx1140 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %241, !dbg !1825
  store i32 %sub1138, i32* %arrayidx1140, align 4, !dbg !1825, !tbaa !984
  %indvars.iv.next3525 = add i64 %indvars.iv3524, 1, !dbg !1812
  %lftr.wideiv3527 = trunc i64 %indvars.iv.next3525 to i32, !dbg !1812
  %exitcond3528 = icmp eq i32 %lftr.wideiv3527, 2, !dbg !1812
  br i1 %exitcond3528, label %for.end1143, label %for.body1117, !dbg !1812

for.end1143:                                      ; preds = %for.body1117
  %244 = bitcast [4 x i32]* %m5 to i64*, !dbg !1826
  %245 = load i64* %244, align 16, !dbg !1826
  %246 = trunc i64 %245 to i32, !dbg !1826
  %247 = lshr i64 %245, 32
  %248 = trunc i64 %247 to i32
  %add1146 = add nsw i32 %248, %246, !dbg !1826
  %arrayidx1149 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 %indvars.iv3529, !dbg !1826
  store i32 %add1146, i32* %arrayidx1149, align 4, !dbg !1826, !tbaa !984
  %sub1152 = sub nsw i32 %246, %248, !dbg !1827
  %arrayidx1155 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 2, i64 %indvars.iv3529, !dbg !1827
  store i32 %sub1152, i32* %arrayidx1155, align 4, !dbg !1827, !tbaa !984
  %249 = load i32* %arrayidx1156, align 4, !dbg !1817, !tbaa !984
  %250 = bitcast i32* %arrayidx1157 to i64*, !dbg !1817
  %251 = load i64* %250, align 8, !dbg !1817
  %252 = trunc i64 %251 to i32, !dbg !1817
  %add1158 = add nsw i32 %252, %249, !dbg !1817
  %arrayidx1161 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 %indvars.iv3529, !dbg !1817
  store i32 %add1158, i32* %arrayidx1161, align 4, !dbg !1817, !tbaa !984
  %253 = lshr i64 %251, 32
  %254 = trunc i64 %253 to i32
  %sub1164 = sub nsw i32 %254, %252, !dbg !1828
  %arrayidx1167 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 3, i64 %indvars.iv3529, !dbg !1828
  store i32 %sub1164, i32* %arrayidx1167, align 4, !dbg !1828, !tbaa !984
  %indvars.iv.next3530 = add i64 %indvars.iv3529, 1, !dbg !1816
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1812
  %255 = trunc i64 %indvars.iv3529 to i32, !dbg !1816
  %cmp1106.not = icmp sgt i32 %255, 2, !dbg !1816
  br i1 %cmp1106.not, label %for.cond1171.preheader, label %for.cond1114.preheader, !dbg !1816

for.cond1180.preheader:                           ; preds = %for.cond1180.preheader.lr.ph, %for.end1209
  %indvars.iv3522 = phi i64 [ 0, %for.cond1180.preheader.lr.ph ], [ %indvars.iv.next3523, %for.end1209 ]
  br label %for.body1183, !dbg !1829

for.cond1241.preheader:                           ; preds = %for.cond1105.preheader, %for.end1209, %for.cond1171.preheader
  %shl1315 = shl i32 %uv, 4, !dbg !1831
  %sh_prom = zext i32 %shl1315 to i64, !dbg !1831
  %shl1316 = shl i64 4294901760, %sh_prom, !dbg !1831
  %cbp_blk1317 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !1831
  %idxprom1270 = sext i32 %rem to i64, !dbg !1835
  %arrayidx1275 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0, !dbg !1835
  %idxprom1277 = sext i32 %div38 to i64, !dbg !1835
  %arrayidx1282 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1277, i64 0, i64 0, !dbg !1835
  %add1285 = add nsw i32 %div38, 16, !dbg !1835
  %arrayidx1298 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0, !dbg !1836
  %arrayidx1305 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1277, i64 0, i64 0, !dbg !1836
  br label %for.body1244, !dbg !1837

for.body1183:                                     ; preds = %for.body1183, %for.cond1180.preheader
  %indvars.iv3517 = phi i64 [ 0, %for.cond1180.preheader ], [ %indvars.iv.next3518, %for.body1183 ]
  %256 = sub nsw i64 3, %indvars.iv3517, !dbg !1838
  %arrayidx1188 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 %indvars.iv3517, !dbg !1840
  %257 = load i32* %arrayidx1188, align 4, !dbg !1840, !tbaa !984
  %arrayidx1192 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 %256, !dbg !1840
  %258 = load i32* %arrayidx1192, align 4, !dbg !1840, !tbaa !984
  %add1193 = add nsw i32 %258, %257, !dbg !1840
  %arrayidx1195 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3517, !dbg !1840
  store i32 %add1193, i32* %arrayidx1195, align 4, !dbg !1840, !tbaa !984
  %sub1204 = sub nsw i32 %257, %258, !dbg !1841
  %arrayidx1206 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %256, !dbg !1841
  store i32 %sub1204, i32* %arrayidx1206, align 4, !dbg !1841, !tbaa !984
  %indvars.iv.next3518 = add i64 %indvars.iv3517, 1, !dbg !1829
  %lftr.wideiv3520 = trunc i64 %indvars.iv.next3518 to i32, !dbg !1829
  %exitcond3521 = icmp eq i32 %lftr.wideiv3520, 2, !dbg !1829
  br i1 %exitcond3521, label %for.end1209, label %for.body1183, !dbg !1829

for.end1209:                                      ; preds = %for.body1183
  %259 = bitcast [4 x i32]* %m5 to i64*, !dbg !1842
  %260 = load i64* %259, align 16, !dbg !1842
  %261 = trunc i64 %260 to i32, !dbg !1842
  %262 = lshr i64 %260, 32
  %263 = trunc i64 %262 to i32
  %add1212 = add nsw i32 %263, %261, !dbg !1842
  %shr1213 = ashr i32 %add1212, 1, !dbg !1842
  %arrayidx1216 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 0, !dbg !1842
  store i32 %shr1213, i32* %arrayidx1216, align 16, !dbg !1842, !tbaa !984
  %sub1219 = sub nsw i32 %261, %263, !dbg !1843
  %shr1220 = ashr i32 %sub1219, 1, !dbg !1843
  %arrayidx1223 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 2, !dbg !1843
  store i32 %shr1220, i32* %arrayidx1223, align 8, !dbg !1843, !tbaa !984
  %264 = load i32* %arrayidx1224, align 4, !dbg !1820, !tbaa !984
  %265 = bitcast i32* %arrayidx1225 to i64*, !dbg !1820
  %266 = load i64* %265, align 8, !dbg !1820
  %267 = trunc i64 %266 to i32, !dbg !1820
  %add1226 = add nsw i32 %267, %264, !dbg !1820
  %shr1227 = ashr i32 %add1226, 1, !dbg !1820
  %arrayidx1230 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 1, !dbg !1820
  store i32 %shr1227, i32* %arrayidx1230, align 4, !dbg !1820, !tbaa !984
  %268 = lshr i64 %266, 32
  %269 = trunc i64 %268 to i32
  %sub1233 = sub nsw i32 %269, %267, !dbg !1844
  %shr1234 = ashr i32 %sub1233, 1, !dbg !1844
  %arrayidx1237 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 3, !dbg !1844
  store i32 %shr1234, i32* %arrayidx1237, align 4, !dbg !1844, !tbaa !984
  %indvars.iv.next3523 = add i64 %indvars.iv3522, 1, !dbg !1818
  %270 = trunc i64 %indvars.iv3522 to i32, !dbg !1818
  %cmp1172.not = icmp sgt i32 %270, 2, !dbg !1818
  br i1 %cmp1172.not, label %for.cond1241.preheader, label %for.cond1180.preheader, !dbg !1818

for.body1244:                                     ; preds = %for.inc1348, %for.cond1241.preheader
  %indvars.iv3513 = phi i64 [ 0, %for.cond1241.preheader ], [ %indvars.iv.next3514, %for.inc1348 ]
  %cr_cbp.addr.43333 = phi i32 [ %cr_cbp, %for.cond1241.preheader ], [ %cr_cbp.addr.5, %for.inc1348 ]
  %DCcoded.43331 = phi i32 [ 0, %for.cond1241.preheader ], [ %DCcoded.5, %for.inc1348 ]
  %run.43330 = phi i32 [ -1, %for.cond1241.preheader ], [ %run.5, %for.inc1348 ]
  %scan_pos.43329 = phi i32 [ 0, %for.cond1241.preheader ], [ %scan_pos.5, %for.inc1348 ]
  %arrayidx1247 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv3513, i64 0, !dbg !1845
  %271 = load i8* %arrayidx1247, align 2, !dbg !1845, !tbaa !979
  %arrayidx1251 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv3513, i64 1, !dbg !1846
  %272 = load i8* %arrayidx1251, align 1, !dbg !1846, !tbaa !979
  %inc1253 = add nsw i32 %run.43330, 1, !dbg !1847
  call void @llvm.dbg.value(metadata !{i32 %inc1253}, i64 0, metadata !247), !dbg !1847
  %idxprom1256 = zext i8 %272 to i64, !dbg !1848
  %idxprom1257 = zext i8 %271 to i64, !dbg !1848
  %arrayidx1259 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom1257, i64 %idxprom1256, !dbg !1848
  %273 = load i32* %arrayidx1259, align 4, !dbg !1848, !tbaa !984
  %ispos3211 = icmp sgt i32 %273, -1, !dbg !1848
  %neg3212 = sub i32 0, %273, !dbg !1848
  %274 = select i1 %ispos3211, i32 %273, i32 %neg3212, !dbg !1848
  br i1 %16, label %if.end1311, label %if.else1261, !dbg !1849

if.else1261:                                      ; preds = %for.body1244
  br i1 %8, label %if.then1264, label %if.else1287, !dbg !1850

if.then1264:                                      ; preds = %if.else1261
  %275 = load i32* %arrayidx1275, align 4, !dbg !1835, !tbaa !984
  %mul1276 = mul nsw i32 %275, %274, !dbg !1835
  %276 = load i32* %arrayidx1282, align 4, !dbg !1835, !tbaa !984
  %mul1283 = shl i32 %276, 1, !dbg !1835
  %add1284 = add nsw i32 %mul1283, %mul1276, !dbg !1835
  %shr1286 = ashr i32 %add1284, %add1285, !dbg !1835
  call void @llvm.dbg.value(metadata !{i32 %shr1286}, i64 0, metadata !245), !dbg !1835
  br label %if.end1311, !dbg !1835

if.else1287:                                      ; preds = %if.else1261
  %277 = load i32* %arrayidx1298, align 4, !dbg !1836, !tbaa !984
  %mul1299 = mul nsw i32 %277, %274, !dbg !1836
  %278 = load i32* %arrayidx1305, align 4, !dbg !1836, !tbaa !984
  %mul1306 = shl i32 %278, 1, !dbg !1836
  %add1307 = add nsw i32 %mul1306, %mul1299, !dbg !1836
  %shr1309 = ashr i32 %add1307, %add1285, !dbg !1836
  call void @llvm.dbg.value(metadata !{i32 %shr1309}, i64 0, metadata !245), !dbg !1836
  br label %if.end1311

if.end1311:                                       ; preds = %for.body1244, %if.then1264, %if.else1287
  %level.3 = phi i32 [ %shr1286, %if.then1264 ], [ %shr1309, %if.else1287 ], [ %274, %for.body1244 ]
  %cmp1312 = icmp eq i32 %level.3, 0, !dbg !1851
  br i1 %cmp1312, label %if.end1335, label %if.then1314, !dbg !1851

if.then1314:                                      ; preds = %if.end1311
  %279 = load i64* %cbp_blk1317, align 8, !dbg !1831, !tbaa !1698
  %or1318 = or i64 %279, %shl1316, !dbg !1831
  store i64 %or1318, i64* %cbp_blk1317, align 8, !dbg !1831, !tbaa !1698
  %cmp1319 = icmp slt i32 %cr_cbp.addr.43333, 1, !dbg !1852
  %cond1324 = select i1 %cmp1319, i32 1, i32 %cr_cbp.addr.43333, !dbg !1852
  call void @llvm.dbg.value(metadata !{i32 %cond1324}, i64 0, metadata !234), !dbg !1852
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !253), !dbg !1853
  %call1329 = call i32 @sign(i32 %level.3, i32 %273) #4, !dbg !1854
  %idxprom1330 = sext i32 %scan_pos.43329 to i64, !dbg !1854
  %arrayidx1331 = getelementptr inbounds i32* %5, i64 %idxprom1330, !dbg !1854
  store i32 %call1329, i32* %arrayidx1331, align 4, !dbg !1854, !tbaa !984
  %arrayidx1333 = getelementptr inbounds i32* %6, i64 %idxprom1330, !dbg !1855
  store i32 %inc1253, i32* %arrayidx1333, align 4, !dbg !1855, !tbaa !984
  %inc1334 = add nsw i32 %scan_pos.43329, 1, !dbg !1856
  call void @llvm.dbg.value(metadata !{i32 %inc1334}, i64 0, metadata !246), !dbg !1856
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1857
  br label %if.end1335, !dbg !1858

if.end1335:                                       ; preds = %if.end1311, %if.then1314
  %scan_pos.5 = phi i32 [ %inc1334, %if.then1314 ], [ %scan_pos.43329, %if.end1311 ]
  %run.5 = phi i32 [ -1, %if.then1314 ], [ %inc1253, %if.end1311 ]
  %DCcoded.5 = phi i32 [ 1, %if.then1314 ], [ %DCcoded.43331, %if.end1311 ]
  %cr_cbp.addr.5 = phi i32 [ %cond1324, %if.then1314 ], [ %cr_cbp.addr.43333, %if.end1311 ]
  br i1 %16, label %for.inc1348, label %if.then1337, !dbg !1859

if.then1337:                                      ; preds = %if.end1335
  %280 = load i32* %arrayidx1259, align 4, !dbg !1860, !tbaa !984
  %call1342 = call i32 @sign(i32 %level.3, i32 %280) #4, !dbg !1860
  store i32 %call1342, i32* %arrayidx1259, align 4, !dbg !1860, !tbaa !984
  br label %for.inc1348, !dbg !1860

for.inc1348:                                      ; preds = %if.end1335, %if.then1337
  %indvars.iv.next3514 = add i64 %indvars.iv3513, 1, !dbg !1837
  %lftr.wideiv3515 = trunc i64 %indvars.iv.next3514 to i32, !dbg !1837
  %exitcond3516 = icmp eq i32 %lftr.wideiv3515, 16, !dbg !1837
  br i1 %exitcond3516, label %for.end1350, label %for.body1244, !dbg !1837

for.end1350:                                      ; preds = %for.inc1348
  %idxprom1351 = sext i32 %scan_pos.5 to i64, !dbg !1861
  %arrayidx1352 = getelementptr inbounds i32* %5, i64 %idxprom1351, !dbg !1861
  store i32 0, i32* %arrayidx1352, align 4, !dbg !1861, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !236), !dbg !1862
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1864
  br i1 %16, label %if.end1682.loopexit3324, label %for.cond1362.preheader.lr.ph, !dbg !1862

for.cond1362.preheader.lr.ph:                     ; preds = %for.end1350
  %arrayidx1376 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1867
  %arrayidx1378 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1867
  %arrayidx1382 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1868
  %arrayidx1386 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1869
  %arrayidx1390 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !1870
  br label %for.cond1362.preheader, !dbg !1862

for.cond1362.preheader:                           ; preds = %for.cond1362.preheader.lr.ph, %for.inc1417
  %indvars.iv3511 = phi i64 [ 0, %for.cond1362.preheader.lr.ph ], [ %indvars.iv.next3512, %for.inc1417 ]
  br label %for.body1365, !dbg !1864

for.cond1420.preheader:                           ; preds = %for.inc1417
  br i1 %16, label %if.end1682.loopexit3324, label %for.cond1429.preheader.lr.ph, !dbg !1871

for.cond1429.preheader.lr.ph:                     ; preds = %for.cond1420.preheader
  %arrayidx1443 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1873
  %arrayidx1445 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1873
  %arrayidx1449 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1875
  %arrayidx1453 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1876
  %arrayidx1457 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !1877
  %cmp1463 = icmp slt i32 %add37, 24, !dbg !1878
  %arrayidx1479 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0, !dbg !1881
  %sub1481 = sub nsw i32 3, %div38, !dbg !1881
  %shl1482 = shl i32 1, %sub1481, !dbg !1881
  %sub1484 = sub nsw i32 4, %div38, !dbg !1881
  %281 = load %struct.ImageParameters** @img, align 8, !dbg !1881, !tbaa !978
  %arrayidx1532 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0, !dbg !1884
  %sub1591 = add nsw i32 %div38, -4, !dbg !1886
  br label %for.cond1429.preheader, !dbg !1871

for.body1365:                                     ; preds = %for.body1365, %for.cond1362.preheader
  %indvars.iv3502 = phi i64 [ 0, %for.cond1362.preheader ], [ %indvars.iv.next3503, %for.body1365 ]
  %arrayidx1369 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3502, i64 %indvars.iv3511, !dbg !1889
  %282 = load i32* %arrayidx1369, align 4, !dbg !1889, !tbaa !984
  %arrayidx1371 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3502, !dbg !1889
  store i32 %282, i32* %arrayidx1371, align 4, !dbg !1889, !tbaa !984
  %indvars.iv.next3503 = add i64 %indvars.iv3502, 1, !dbg !1864
  %lftr.wideiv3504 = trunc i64 %indvars.iv.next3503 to i32, !dbg !1864
  %exitcond3505 = icmp eq i32 %lftr.wideiv3504, 4, !dbg !1864
  br i1 %exitcond3505, label %for.end1374, label %for.body1365, !dbg !1864

for.end1374:                                      ; preds = %for.body1365
  %283 = bitcast [4 x i32]* %m5 to i64*, !dbg !1867
  %284 = load i64* %283, align 16, !dbg !1867
  %285 = trunc i64 %284 to i32, !dbg !1867
  %286 = bitcast i32* %arrayidx1376 to i64*, !dbg !1867
  %287 = load i64* %286, align 8, !dbg !1867
  %288 = trunc i64 %287 to i32, !dbg !1867
  %add1377 = add nsw i32 %288, %285, !dbg !1867
  store i32 %add1377, i32* %arrayidx1378, align 16, !dbg !1867, !tbaa !984
  %sub1381 = sub nsw i32 %285, %288, !dbg !1868
  store i32 %sub1381, i32* %arrayidx1382, align 4, !dbg !1868, !tbaa !984
  %289 = lshr i64 %284, 32
  %290 = trunc i64 %289 to i32
  %291 = lshr i64 %287, 32
  %292 = trunc i64 %291 to i32
  %sub1385 = sub nsw i32 %290, %292, !dbg !1869
  store i32 %sub1385, i32* %arrayidx1386, align 8, !dbg !1869, !tbaa !984
  %add1389 = add nsw i32 %292, %290, !dbg !1870
  store i32 %add1389, i32* %arrayidx1390, align 4, !dbg !1870, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1890
  br label %for.body1394, !dbg !1890

for.body1394:                                     ; preds = %for.body1394.for.body1394_crit_edge, %for.end1374
  %293 = phi i32 [ %add1377, %for.end1374 ], [ %.pre3605, %for.body1394.for.body1394_crit_edge ]
  %indvars.iv3506 = phi i64 [ 0, %for.end1374 ], [ %indvars.iv.next3507, %for.body1394.for.body1394_crit_edge ]
  %294 = sub nsw i64 3, %indvars.iv3506, !dbg !1892
  %arrayidx1399 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %294, !dbg !1894
  %295 = load i32* %arrayidx1399, align 4, !dbg !1894, !tbaa !984
  %add1400 = add nsw i32 %295, %293, !dbg !1894
  %arrayidx1404 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3506, i64 %indvars.iv3511, !dbg !1894
  store i32 %add1400, i32* %arrayidx1404, align 4, !dbg !1894, !tbaa !984
  %sub1409 = sub nsw i32 %293, %295, !dbg !1895
  %arrayidx1413 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %294, i64 %indvars.iv3511, !dbg !1895
  store i32 %sub1409, i32* %arrayidx1413, align 4, !dbg !1895, !tbaa !984
  %indvars.iv.next3507 = add i64 %indvars.iv3506, 1, !dbg !1890
  %lftr.wideiv3509 = trunc i64 %indvars.iv.next3507 to i32, !dbg !1890
  %exitcond3510 = icmp eq i32 %lftr.wideiv3509, 2, !dbg !1890
  br i1 %exitcond3510, label %for.inc1417, label %for.body1394.for.body1394_crit_edge, !dbg !1890

for.body1394.for.body1394_crit_edge:              ; preds = %for.body1394
  %arrayidx1397.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3507
  %.pre3605 = load i32* %arrayidx1397.phi.trans.insert, align 4, !dbg !1894, !tbaa !984
  br label %for.body1394, !dbg !1890

for.inc1417:                                      ; preds = %for.body1394
  %indvars.iv.next3512 = add i64 %indvars.iv3511, 1, !dbg !1862
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !1864
  %296 = trunc i64 %indvars.iv3511 to i32, !dbg !1862
  %cmp1354.not = icmp sgt i32 %296, 2, !dbg !1862
  br i1 %cmp1354.not, label %for.cond1420.preheader, label %for.cond1362.preheader, !dbg !1862

for.cond1429.preheader:                           ; preds = %for.cond1429.preheader.lr.ph, %for.inc1677
  %indvars.iv3496 = phi i64 [ 0, %for.cond1429.preheader.lr.ph ], [ %indvars.iv.next3497, %for.inc1677 ]
  %scevgep3481 = getelementptr [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3496, i64 0
  %scevgep34813482 = bitcast i32* %scevgep3481 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %m53437, i8* %scevgep34813482, i64 16, i32 16, i1 false), !dbg !1896
  %297 = bitcast [4 x i32]* %m5 to i64*, !dbg !1873
  %298 = load i64* %297, align 16, !dbg !1873
  %299 = trunc i64 %298 to i32, !dbg !1873
  %300 = bitcast i32* %arrayidx1443 to i64*, !dbg !1873
  %301 = load i64* %300, align 8, !dbg !1873
  %302 = trunc i64 %301 to i32, !dbg !1873
  %add1444 = add nsw i32 %302, %299, !dbg !1873
  store i32 %add1444, i32* %arrayidx1445, align 16, !dbg !1873, !tbaa !984
  %sub1448 = sub nsw i32 %299, %302, !dbg !1875
  store i32 %sub1448, i32* %arrayidx1449, align 4, !dbg !1875, !tbaa !984
  %303 = lshr i64 %298, 32
  %304 = trunc i64 %303 to i32
  %305 = lshr i64 %301, 32
  %306 = trunc i64 %305 to i32
  %sub1452 = sub nsw i32 %304, %306, !dbg !1876
  store i32 %sub1452, i32* %arrayidx1453, align 8, !dbg !1876, !tbaa !984
  %add1456 = add nsw i32 %306, %304, !dbg !1877
  store i32 %add1456, i32* %arrayidx1457, align 4, !dbg !1877, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !236), !dbg !1898
  %307 = shl nsw i64 %indvars.iv3496, 2, !dbg !1881
  br label %for.body1461, !dbg !1898

for.body1461:                                     ; preds = %for.inc1674.for.body1461_crit_edge, %for.cond1429.preheader
  %308 = phi i32 [ %add1444, %for.cond1429.preheader ], [ %.pre3604, %for.inc1674.for.body1461_crit_edge ]
  %indvars.iv3483 = phi i64 [ 0, %for.cond1429.preheader ], [ %indvars.iv.next3484, %for.inc1674.for.body1461_crit_edge ]
  %309 = sub nsw i64 3, %indvars.iv3483, !dbg !1899
  %arrayidx1470 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3483, !dbg !1881
  %arrayidx1472 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %309, !dbg !1881
  %310 = load i32* %arrayidx1472, align 4, !dbg !1881, !tbaa !984
  %add1473 = add nsw i32 %310, %308, !dbg !1881
  br i1 %cmp1463, label %if.then1465, label %if.else1575, !dbg !1878

if.then1465:                                      ; preds = %for.body1461
  br i1 %8, label %if.then1468, label %if.else1521, !dbg !1900

if.then1468:                                      ; preds = %if.then1465
  %311 = load i32* %arrayidx1479, align 4, !dbg !1881, !tbaa !984
  %mul1480 = mul nsw i32 %311, %add1473, !dbg !1881
  %add1483 = add nsw i32 %mul1480, %shl1482, !dbg !1881
  %shr1485 = ashr i32 %add1483, %sub1484, !dbg !1881
  %add1486 = add nsw i32 %shr1485, 2, !dbg !1881
  %shr1487 = ashr i32 %add1486, 2, !dbg !1881
  %312 = shl nsw i64 %indvars.iv3483, 2, !dbg !1881
  %arrayidx1494 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %312, !dbg !1881
  store i32 %shr1487, i32* %arrayidx1494, align 4, !dbg !1881, !tbaa !984
  %313 = load i32* %arrayidx1470, align 4, !dbg !1901, !tbaa !984
  %314 = load i32* %arrayidx1472, align 4, !dbg !1901, !tbaa !984
  %sub1499 = sub nsw i32 %313, %314, !dbg !1901
  %315 = load i32* %arrayidx1479, align 4, !dbg !1901, !tbaa !984
  %mul1506 = mul nsw i32 %sub1499, %315, !dbg !1901
  %add1509 = add nsw i32 %mul1506, %shl1482, !dbg !1901
  %shr1511 = ashr i32 %add1509, %sub1484, !dbg !1901
  %add1512 = add nsw i32 %shr1511, 2, !dbg !1901
  %shr1513 = ashr i32 %add1512, 2, !dbg !1901
  %316 = shl nsw i64 %309, 2, !dbg !1901
  %arrayidx1520 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %316, !dbg !1901
  store i32 %shr1513, i32* %arrayidx1520, align 4, !dbg !1901, !tbaa !984
  br label %for.inc1674, !dbg !1902

if.else1521:                                      ; preds = %if.then1465
  %317 = load i32* %arrayidx1532, align 4, !dbg !1884, !tbaa !984
  %mul1533 = mul nsw i32 %317, %add1473, !dbg !1884
  %add1536 = add nsw i32 %mul1533, %shl1482, !dbg !1884
  %shr1538 = ashr i32 %add1536, %sub1484, !dbg !1884
  %add1539 = add nsw i32 %shr1538, 2, !dbg !1884
  %shr1540 = ashr i32 %add1539, 2, !dbg !1884
  %318 = shl nsw i64 %indvars.iv3483, 2, !dbg !1884
  %arrayidx1547 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %318, !dbg !1884
  store i32 %shr1540, i32* %arrayidx1547, align 4, !dbg !1884, !tbaa !984
  %319 = load i32* %arrayidx1470, align 4, !dbg !1903, !tbaa !984
  %320 = load i32* %arrayidx1472, align 4, !dbg !1903, !tbaa !984
  %sub1552 = sub nsw i32 %319, %320, !dbg !1903
  %321 = load i32* %arrayidx1532, align 4, !dbg !1903, !tbaa !984
  %mul1559 = mul nsw i32 %sub1552, %321, !dbg !1903
  %add1562 = add nsw i32 %mul1559, %shl1482, !dbg !1903
  %shr1564 = ashr i32 %add1562, %sub1484, !dbg !1903
  %add1565 = add nsw i32 %shr1564, 2, !dbg !1903
  %shr1566 = ashr i32 %add1565, 2, !dbg !1903
  %322 = shl nsw i64 %309, 2, !dbg !1903
  %arrayidx1573 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %322, !dbg !1903
  store i32 %shr1566, i32* %arrayidx1573, align 4, !dbg !1903, !tbaa !984
  br label %for.inc1674

if.else1575:                                      ; preds = %for.body1461
  br i1 %8, label %if.then1578, label %if.else1625, !dbg !1904

if.then1578:                                      ; preds = %if.else1575
  %323 = load i32* %arrayidx1479, align 4, !dbg !1886, !tbaa !984
  %mul1590 = mul nsw i32 %323, %add1473, !dbg !1886
  %shl1592 = shl i32 %mul1590, %sub1591, !dbg !1886
  %add1593 = add nsw i32 %shl1592, 2, !dbg !1886
  %shr1594 = ashr i32 %add1593, 2, !dbg !1886
  %324 = shl nsw i64 %indvars.iv3483, 2, !dbg !1886
  %arrayidx1601 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %324, !dbg !1886
  store i32 %shr1594, i32* %arrayidx1601, align 4, !dbg !1886, !tbaa !984
  %325 = load i32* %arrayidx1470, align 4, !dbg !1905, !tbaa !984
  %326 = load i32* %arrayidx1472, align 4, !dbg !1905, !tbaa !984
  %sub1606 = sub nsw i32 %325, %326, !dbg !1905
  %327 = load i32* %arrayidx1479, align 4, !dbg !1905, !tbaa !984
  %mul1613 = mul nsw i32 %sub1606, %327, !dbg !1905
  %shl1615 = shl i32 %mul1613, %sub1591, !dbg !1905
  %add1616 = add nsw i32 %shl1615, 2, !dbg !1905
  %shr1617 = ashr i32 %add1616, 2, !dbg !1905
  %328 = shl nsw i64 %309, 2, !dbg !1905
  %arrayidx1624 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %328, !dbg !1905
  store i32 %shr1617, i32* %arrayidx1624, align 4, !dbg !1905, !tbaa !984
  br label %for.inc1674, !dbg !1906

if.else1625:                                      ; preds = %if.else1575
  %329 = load i32* %arrayidx1532, align 4, !dbg !1907, !tbaa !984
  %mul1637 = mul nsw i32 %329, %add1473, !dbg !1907
  %shl1639 = shl i32 %mul1637, %sub1591, !dbg !1907
  %add1640 = add nsw i32 %shl1639, 2, !dbg !1907
  %shr1641 = ashr i32 %add1640, 2, !dbg !1907
  %330 = shl nsw i64 %indvars.iv3483, 2, !dbg !1907
  %arrayidx1648 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %330, !dbg !1907
  store i32 %shr1641, i32* %arrayidx1648, align 4, !dbg !1907, !tbaa !984
  %331 = load i32* %arrayidx1470, align 4, !dbg !1909, !tbaa !984
  %332 = load i32* %arrayidx1472, align 4, !dbg !1909, !tbaa !984
  %sub1653 = sub nsw i32 %331, %332, !dbg !1909
  %333 = load i32* %arrayidx1532, align 4, !dbg !1909, !tbaa !984
  %mul1660 = mul nsw i32 %sub1653, %333, !dbg !1909
  %shl1662 = shl i32 %mul1660, %sub1591, !dbg !1909
  %add1663 = add nsw i32 %shl1662, 2, !dbg !1909
  %shr1664 = ashr i32 %add1663, 2, !dbg !1909
  %334 = shl nsw i64 %309, 2, !dbg !1909
  %arrayidx1671 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %334, !dbg !1909
  store i32 %shr1664, i32* %arrayidx1671, align 4, !dbg !1909, !tbaa !984
  br label %for.inc1674

for.inc1674:                                      ; preds = %if.else1521, %if.then1468, %if.else1625, %if.then1578
  %indvars.iv.next3484 = add i64 %indvars.iv3483, 1, !dbg !1898
  %lftr.wideiv3494 = trunc i64 %indvars.iv.next3484 to i32, !dbg !1898
  %exitcond3495 = icmp eq i32 %lftr.wideiv3494, 2, !dbg !1898
  br i1 %exitcond3495, label %for.inc1677, label %for.inc1674.for.body1461_crit_edge, !dbg !1898

for.inc1674.for.body1461_crit_edge:               ; preds = %for.inc1674
  %arrayidx1470.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3484
  %.pre3604 = load i32* %arrayidx1470.phi.trans.insert, align 4, !dbg !1881, !tbaa !984
  br label %for.body1461, !dbg !1898

for.inc1677:                                      ; preds = %for.inc1674
  %indvars.iv.next3497 = add i64 %indvars.iv3496, 1, !dbg !1871
  %335 = trunc i64 %indvars.iv3496 to i32, !dbg !1871
  %cmp1421.not = icmp sgt i32 %335, 2, !dbg !1871
  br i1 %cmp1421.not, label %if.end1682.loopexit3324, label %for.cond1429.preheader, !dbg !1871

if.end1682.loopexit3324:                          ; preds = %for.end1350, %for.inc1677, %for.cond1420.preheader
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1910, !tbaa !978
  br label %if.end1682

if.end1682:                                       ; preds = %for.inc1071, %for.end236, %if.end1682.loopexit3324, %for.end497
  %336 = phi %struct.ImageParameters* [ %110, %for.end497 ], [ %.pre, %if.end1682.loopexit3324 ], [ %0, %for.end236 ], [ %194, %for.inc1071 ]
  %DCcoded.6 = phi i32 [ %DCcoded.1, %for.end497 ], [ %DCcoded.5, %if.end1682.loopexit3324 ], [ 0, %for.end236 ], [ %DCcoded.3, %for.inc1071 ]
  %cr_cbp.addr.6 = phi i32 [ %cr_cbp.addr.1, %for.end497 ], [ %cr_cbp.addr.5, %if.end1682.loopexit3324 ], [ %cr_cbp, %for.end236 ], [ %cr_cbp.addr.3, %for.inc1071 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !251), !dbg !1912
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !252), !dbg !1913
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !269), !dbg !1910
  %num_blk8x8_uv16843292 = getelementptr inbounds %struct.ImageParameters* %336, i64 0, i32 157, !dbg !1910
  %337 = load i32* %num_blk8x8_uv16843292, align 4, !dbg !1910, !tbaa !984
  %cmp16863294 = icmp sgt i32 %337, 1, !dbg !1910
  br i1 %cmp16863294, label %for.cond1689.preheader.lr.ph, label %for.end1960, !dbg !1910

for.cond1689.preheader.lr.ph:                     ; preds = %if.end1682
  %idxprom1695 = sext i32 %10 to i64, !dbg !1914
  %add1708 = add i32 %mul, 4, !dbg !1918
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22, !dbg !1919
  %cbp_blk1833 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !1922
  %cmp1873 = icmp slt i32 %add37, 24, !dbg !1924
  %idxprom1881 = sext i32 %rem to i64, !dbg !1925
  %sub1888 = sub nsw i32 3, %div38, !dbg !1925
  %shl1889 = shl i32 1, %sub1888, !dbg !1925
  %sub1891 = sub nsw i32 4, %div38, !dbg !1925
  %sub1922 = add nsw i32 %div38, -4, !dbg !1927
  %idxprom1784 = sext i32 %div38 to i64, !dbg !1929
  %338 = sext i32 %mul to i64, !dbg !1910
  br label %for.cond1689.preheader, !dbg !1910

for.cond1689.preheader:                           ; preds = %for.cond1689.preheader.lr.ph, %for.inc1958
  %339 = phi %struct.ImageParameters* [ %336, %for.cond1689.preheader.lr.ph ], [ %372, %for.inc1958 ]
  %indvars.iv3422 = phi i64 [ 0, %for.cond1689.preheader.lr.ph ], [ %indvars.iv.next3423, %for.inc1958 ]
  %cr_cbp_tmp.03296 = phi i32 [ 0, %for.cond1689.preheader.lr.ph ], [ %cr_cbp_tmp.33236, %for.inc1958 ]
  %coeff_cost.03295 = phi i32 [ 0, %for.cond1689.preheader.lr.ph ], [ %coeff_cost.43235, %for.inc1958 ]
  %340 = trunc i64 %indvars.iv3422 to i32, !dbg !1918
  %add1709 = add i32 %add1708, %340, !dbg !1918
  %idxprom1710 = sext i32 %add1709 to i64, !dbg !1918
  %341 = add nsw i64 %indvars.iv3422, %338, !dbg !1922
  br label %for.body1692, !dbg !1930

for.body1692:                                     ; preds = %for.end1952.for.body1692_crit_edge, %for.cond1689.preheader
  %342 = phi %struct.ImageParameters* [ %339, %for.cond1689.preheader ], [ %.pre3599, %for.end1952.for.body1692_crit_edge ]
  %indvars.iv3418 = phi i64 [ 0, %for.cond1689.preheader ], [ %indvars.iv.next3419, %for.end1952.for.body1692_crit_edge ]
  %cr_cbp_tmp.13290 = phi i32 [ %cr_cbp_tmp.03296, %for.cond1689.preheader ], [ %cr_cbp_tmp.33236, %for.end1952.for.body1692_crit_edge ]
  %coeff_cost.13289 = phi i32 [ %coeff_cost.03295, %for.cond1689.preheader ], [ %coeff_cost.43235, %for.end1952.for.body1692_crit_edge ]
  %arrayidx1698 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @hor_offset, i64 0, i64 %idxprom1695, i64 %indvars.iv3422, i64 %indvars.iv3418, !dbg !1914
  %343 = load i8* %arrayidx1698, align 1, !dbg !1914, !tbaa !979
  %conv1699 = zext i8 %343 to i64, !dbg !1914
  %arrayidx1705 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @ver_offset, i64 0, i64 %idxprom1695, i64 %indvars.iv3422, i64 %indvars.iv3418, !dbg !1931
  %344 = load i8* %arrayidx1705, align 1, !dbg !1931, !tbaa !979
  %conv1706 = zext i8 %344 to i64, !dbg !1931
  %cofAC = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 47, !dbg !1918
  %345 = load i32***** %cofAC, align 8, !dbg !1918, !tbaa !978
  %arrayidx1711 = getelementptr inbounds i32**** %345, i64 %idxprom1710, !dbg !1918
  %346 = load i32**** %arrayidx1711, align 8, !dbg !1918, !tbaa !978
  %arrayidx1712 = getelementptr inbounds i32*** %346, i64 %indvars.iv3418, !dbg !1918
  %347 = load i32*** %arrayidx1712, align 8, !dbg !1918, !tbaa !978
  %348 = load i32** %347, align 8, !dbg !1918, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %348}, i64 0, metadata !262), !dbg !1918
  %arrayidx1721 = getelementptr inbounds i32** %347, i64 1, !dbg !1932
  %349 = load i32** %arrayidx1721, align 8, !dbg !1932, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %349}, i64 0, metadata !263), !dbg !1932
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1933
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !246), !dbg !1934
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !244), !dbg !1935
  %arrayidx1829 = getelementptr inbounds [8 x [4 x i8]]* @cbp_blk_chroma, i64 0, i64 %341, i64 %indvars.iv3418, !dbg !1922
  br label %for.body1725, !dbg !1935

for.body1725:                                     ; preds = %for.inc1950.for.body1725_crit_edge, %for.body1692
  %350 = phi %struct.ImageParameters* [ %342, %for.body1692 ], [ %.pre3600, %for.inc1950.for.body1725_crit_edge ], !dbg !1919
  %indvars.iv3414 = phi i64 [ 1, %for.body1692 ], [ %indvars.iv.next3415, %for.inc1950.for.body1725_crit_edge ]
  %cr_cbp_tmp.23286 = phi i32 [ %cr_cbp_tmp.13290, %for.body1692 ], [ %cr_cbp_tmp.33236, %for.inc1950.for.body1725_crit_edge ]
  %coeff_cost.23285 = phi i32 [ %coeff_cost.13289, %for.body1692 ], [ %coeff_cost.43235, %for.inc1950.for.body1725_crit_edge ]
  %run.63284 = phi i32 [ -1, %for.body1692 ], [ %run.73234, %for.inc1950.for.body1725_crit_edge ]
  %scan_pos.63283 = phi i32 [ 0, %for.body1692 ], [ %scan_pos.73233, %for.inc1950.for.body1725_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 100, !dbg !1919
  %351 = load i32* %field_picture, align 4, !dbg !1919, !tbaa !984
  %tobool1726 = icmp eq i32 %351, 0, !dbg !1919
  br i1 %tobool1726, label %lor.lhs.false1727, label %if.end1749, !dbg !1919

lor.lhs.false1727:                                ; preds = %for.body1725
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 90, !dbg !1919
  %352 = load i32* %MbaffFrameFlag, align 4, !dbg !1919, !tbaa !984
  %tobool1728 = icmp eq i32 %352, 0, !dbg !1919
  br i1 %tobool1728, label %if.else1740, label %land.lhs.true1729, !dbg !1919

land.lhs.true1729:                                ; preds = %lor.lhs.false1727
  %353 = load i32* %mb_field, align 4, !dbg !1919, !tbaa !984
  %tobool1730 = icmp eq i32 %353, 0, !dbg !1919
  br i1 %tobool1730, label %if.else1740, label %if.end1749, !dbg !1919

if.else1740:                                      ; preds = %land.lhs.true1729, %lor.lhs.false1727
  br label %if.end1749

if.end1749:                                       ; preds = %for.body1725, %land.lhs.true1729, %if.else1740
  %FIELD_SCAN.pn3607 = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else1740 ], [ @FIELD_SCAN, %land.lhs.true1729 ], [ @FIELD_SCAN, %for.body1725 ]
  %i.12.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn3607, i64 0, i64 %indvars.iv3414, i64 0, !dbg !1936
  %j.12.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn3607, i64 0, i64 %indvars.iv3414, i64 1, !dbg !1938
  %i.12.in = load i8* %i.12.in.in, align 2, !dbg !1936
  %j.12.in = load i8* %j.12.in.in, align 1, !dbg !1938
  %i.12 = zext i8 %i.12.in to i64, !dbg !1936
  %j.12 = zext i8 %j.12.in to i64, !dbg !1938
  %inc1750 = add nsw i32 %run.63284, 1, !dbg !1939
  call void @llvm.dbg.value(metadata !{i32 %inc1750}, i64 0, metadata !247), !dbg !1939
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !239), !dbg !1940
  %add1753 = add i64 %j.12, %conv1706, !dbg !1941
  %add1755 = add i64 %i.12, %conv1699, !dbg !1941
  %arrayidx1759 = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 46, i64 %add1755, i64 %add1753, !dbg !1941
  %354 = load i32* %arrayidx1759, align 4, !dbg !1941, !tbaa !984
  %ispos3207 = icmp sgt i32 %354, -1, !dbg !1941
  %neg3208 = sub i32 0, %354, !dbg !1941
  %355 = select i1 %ispos3207, i32 %354, i32 %neg3208, !dbg !1941
  br i1 %16, label %if.end1821, label %if.else1761, !dbg !1942

if.else1761:                                      ; preds = %if.end1749
  br i1 %8, label %if.then1764, label %if.else1792, !dbg !1943

if.then1764:                                      ; preds = %if.else1761
  %arrayidx1780 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1929
  %356 = load i32* %arrayidx1780, align 4, !dbg !1929, !tbaa !984
  %mul1781 = mul nsw i32 %356, %355, !dbg !1929
  %arrayidx1789 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1784, i64 %i.12, i64 %j.12, !dbg !1929
  %357 = load i32* %arrayidx1789, align 4, !dbg !1929, !tbaa !984
  %add1790 = add nsw i32 %mul1781, %357, !dbg !1929
  %shr1791 = ashr i32 %add1790, %add41, !dbg !1929
  call void @llvm.dbg.value(metadata !{i32 %shr1791}, i64 0, metadata !245), !dbg !1929
  br label %if.end1821, !dbg !1929

if.else1792:                                      ; preds = %if.else1761
  %arrayidx1808 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1944
  %358 = load i32* %arrayidx1808, align 4, !dbg !1944, !tbaa !984
  %mul1809 = mul nsw i32 %358, %355, !dbg !1944
  %arrayidx1817 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1784, i64 %i.12, i64 %j.12, !dbg !1944
  %359 = load i32* %arrayidx1817, align 4, !dbg !1944, !tbaa !984
  %add1818 = add nsw i32 %mul1809, %359, !dbg !1944
  %shr1819 = ashr i32 %add1818, %add41, !dbg !1944
  call void @llvm.dbg.value(metadata !{i32 %shr1819}, i64 0, metadata !245), !dbg !1944
  br label %if.end1821

if.end1821:                                       ; preds = %if.end1749, %if.then1764, %if.else1792
  %level.4 = phi i32 [ %shr1791, %if.then1764 ], [ %shr1819, %if.else1792 ], [ %355, %if.end1749 ]
  %cmp1822 = icmp eq i32 %level.4, 0, !dbg !1945
  br i1 %cmp1822, label %if.end1939, label %if.then1824, !dbg !1945

if.then1824:                                      ; preds = %if.end1821
  %360 = load i8* %arrayidx1829, align 1, !dbg !1922, !tbaa !979
  %sh_prom1831 = zext i8 %360 to i64, !dbg !1922
  %shl1832 = shl i64 1, %sh_prom1831, !dbg !1922
  %361 = load i64* %cbp_blk1833, align 8, !dbg !1922, !tbaa !1698
  %or1834 = or i64 %shl1832, %361, !dbg !1922
  store i64 %or1834, i64* %cbp_blk1833, align 8, !dbg !1922, !tbaa !1698
  %cmp1835 = icmp sgt i32 %level.4, 1, !dbg !1946
  %brmerge3227 = or i1 %cmp1835, %16, !dbg !1946
  br i1 %brmerge3227, label %if.then1839, label %if.else1841, !dbg !1946

if.then1839:                                      ; preds = %if.then1824
  %add1840 = add nsw i32 %coeff_cost.23285, 999999, !dbg !1947
  call void @llvm.dbg.value(metadata !{i32 %add1840}, i64 0, metadata !251), !dbg !1947
  br label %if.end1848, !dbg !1947

if.else1841:                                      ; preds = %if.then1824
  %idxprom1842 = sext i32 %inc1750 to i64, !dbg !1948
  %362 = load %struct.InputParameters** @input, align 8, !dbg !1948, !tbaa !978
  %disthres = getelementptr inbounds %struct.InputParameters* %362, i64 0, i32 86, !dbg !1948
  %363 = load i32* %disthres, align 4, !dbg !1948, !tbaa !984
  %idxprom1843 = sext i32 %363 to i64, !dbg !1948
  %arrayidx1845 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom1843, i64 %idxprom1842, !dbg !1948
  %364 = load i8* %arrayidx1845, align 1, !dbg !1948, !tbaa !979
  %conv1846 = zext i8 %364 to i32, !dbg !1948
  %add1847 = add nsw i32 %conv1846, %coeff_cost.23285, !dbg !1948
  call void @llvm.dbg.value(metadata !{i32 %add1847}, i64 0, metadata !251), !dbg !1948
  br label %if.end1848

if.end1848:                                       ; preds = %if.else1841, %if.then1839
  %coeff_cost.3 = phi i32 [ %add1840, %if.then1839 ], [ %add1847, %if.else1841 ]
  call void @llvm.dbg.value(metadata !1949, i64 0, metadata !252), !dbg !1950
  %call1856 = call i32 @sign(i32 %level.4, i32 %354) #4, !dbg !1951
  %idxprom1857 = sext i32 %scan_pos.63283 to i64, !dbg !1951
  %arrayidx1858 = getelementptr inbounds i32* %348, i64 %idxprom1857, !dbg !1951
  store i32 %call1856, i32* %arrayidx1858, align 4, !dbg !1951, !tbaa !984
  %arrayidx1860 = getelementptr inbounds i32* %349, i64 %idxprom1857, !dbg !1952
  store i32 %inc1750, i32* %arrayidx1860, align 4, !dbg !1952, !tbaa !984
  %inc1861 = add nsw i32 %scan_pos.63283, 1, !dbg !1953
  call void @llvm.dbg.value(metadata !{i32 %inc1861}, i64 0, metadata !246), !dbg !1953
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !247), !dbg !1954
  %365 = load %struct.ImageParameters** @img, align 8, !dbg !1955, !tbaa !978
  %arrayidx1868 = getelementptr inbounds %struct.ImageParameters* %365, i64 0, i32 46, i64 %add1755, i64 %add1753, !dbg !1955
  %366 = load i32* %arrayidx1868, align 4, !dbg !1955, !tbaa !984
  %call1869 = call i32 @sign(i32 %level.4, i32 %366) #4, !dbg !1955
  call void @llvm.dbg.value(metadata !{i32 %call1869}, i64 0, metadata !245), !dbg !1955
  br i1 %16, label %for.inc1950, label %if.else1872, !dbg !1956

if.else1872:                                      ; preds = %if.end1848
  br i1 %cmp1873, label %if.then1875, label %if.else1909, !dbg !1924

if.then1875:                                      ; preds = %if.else1872
  br i1 %8, label %if.then1878, label %if.end1939.thread3237, !dbg !1957

if.then1878:                                      ; preds = %if.then1875
  %arrayidx1886 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1925
  %367 = load i32* %arrayidx1886, align 4, !dbg !1925, !tbaa !984
  %mul1887 = mul nsw i32 %367, %call1869, !dbg !1925
  %add1890 = add nsw i32 %mul1887, %shl1889, !dbg !1925
  %shr1892 = ashr i32 %add1890, %sub1891, !dbg !1925
  call void @llvm.dbg.value(metadata !{i32 %shr1892}, i64 0, metadata !239), !dbg !1925
  br label %if.end1939, !dbg !1925

if.end1939.thread3237:                            ; preds = %if.then1875
  %arrayidx1901 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1958
  %368 = load i32* %arrayidx1901, align 4, !dbg !1958, !tbaa !984
  %mul1902 = mul nsw i32 %368, %call1869, !dbg !1958
  %add1905 = add nsw i32 %mul1902, %shl1889, !dbg !1958
  %shr1907 = ashr i32 %add1905, %sub1891, !dbg !1958
  call void @llvm.dbg.value(metadata !{i32 %shr1907}, i64 0, metadata !239), !dbg !1958
  br label %if.then1941, !dbg !1959

if.else1909:                                      ; preds = %if.else1872
  br i1 %8, label %if.then1912, label %if.end1939.thread, !dbg !1960

if.then1912:                                      ; preds = %if.else1909
  %arrayidx1920 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1927
  %369 = load i32* %arrayidx1920, align 4, !dbg !1927, !tbaa !984
  %mul1921 = mul nsw i32 %369, %call1869, !dbg !1927
  %shl1923 = shl i32 %mul1921, %sub1922, !dbg !1927
  call void @llvm.dbg.value(metadata !{i32 %shl1923}, i64 0, metadata !239), !dbg !1927
  br label %if.end1939, !dbg !1927

if.end1939.thread:                                ; preds = %if.else1909
  %arrayidx1932 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12, !dbg !1961
  %370 = load i32* %arrayidx1932, align 4, !dbg !1961, !tbaa !984
  %mul1933 = mul nsw i32 %370, %call1869, !dbg !1961
  %shl1935 = shl i32 %mul1933, %sub1922, !dbg !1961
  call void @llvm.dbg.value(metadata !{i32 %shl1935}, i64 0, metadata !239), !dbg !1961
  br label %if.then1941, !dbg !1959

if.end1939:                                       ; preds = %if.end1821, %if.then1912, %if.then1878
  %scan_pos.7 = phi i32 [ %inc1861, %if.then1878 ], [ %inc1861, %if.then1912 ], [ %scan_pos.63283, %if.end1821 ]
  %run.7 = phi i32 [ -1, %if.then1878 ], [ -1, %if.then1912 ], [ %inc1750, %if.end1821 ]
  %coeff_cost.4 = phi i32 [ %coeff_cost.3, %if.then1878 ], [ %coeff_cost.3, %if.then1912 ], [ %coeff_cost.23285, %if.end1821 ]
  %cr_cbp_tmp.3 = phi i32 [ 2, %if.then1878 ], [ 2, %if.then1912 ], [ %cr_cbp_tmp.23286, %if.end1821 ]
  %ilev.1 = phi i32 [ %shr1892, %if.then1878 ], [ %shl1923, %if.then1912 ], [ 0, %if.end1821 ]
  br i1 %16, label %for.inc1950, label %if.then1941, !dbg !1959

if.then1941:                                      ; preds = %if.end1939, %if.end1939.thread, %if.end1939.thread3237
  %ilev.13242 = phi i32 [ %shr1907, %if.end1939.thread3237 ], [ %shl1935, %if.end1939.thread ], [ %ilev.1, %if.end1939 ]
  %cr_cbp_tmp.33241 = phi i32 [ 2, %if.end1939.thread3237 ], [ 2, %if.end1939.thread ], [ %cr_cbp_tmp.3, %if.end1939 ]
  %coeff_cost.43240 = phi i32 [ %coeff_cost.3, %if.end1939.thread3237 ], [ %coeff_cost.3, %if.end1939.thread ], [ %coeff_cost.4, %if.end1939 ]
  %run.73239 = phi i32 [ -1, %if.end1939.thread3237 ], [ -1, %if.end1939.thread ], [ %run.7, %if.end1939 ]
  %scan_pos.73238 = phi i32 [ %inc1861, %if.end1939.thread3237 ], [ %inc1861, %if.end1939.thread ], [ %scan_pos.7, %if.end1939 ]
  %371 = load %struct.ImageParameters** @img, align 8, !dbg !1962, !tbaa !978
  %arrayidx1948 = getelementptr inbounds %struct.ImageParameters* %371, i64 0, i32 46, i64 %add1755, i64 %add1753, !dbg !1962
  store i32 %ilev.13242, i32* %arrayidx1948, align 4, !dbg !1962, !tbaa !984
  br label %for.inc1950, !dbg !1962

for.inc1950:                                      ; preds = %if.end1848, %if.end1939, %if.then1941
  %cr_cbp_tmp.33236 = phi i32 [ %cr_cbp_tmp.3, %if.end1939 ], [ %cr_cbp_tmp.33241, %if.then1941 ], [ 2, %if.end1848 ]
  %coeff_cost.43235 = phi i32 [ %coeff_cost.4, %if.end1939 ], [ %coeff_cost.43240, %if.then1941 ], [ %coeff_cost.3, %if.end1848 ]
  %run.73234 = phi i32 [ %run.7, %if.end1939 ], [ %run.73239, %if.then1941 ], [ -1, %if.end1848 ]
  %scan_pos.73233 = phi i32 [ %scan_pos.7, %if.end1939 ], [ %scan_pos.73238, %if.then1941 ], [ %inc1861, %if.end1848 ]
  %indvars.iv.next3415 = add i64 %indvars.iv3414, 1, !dbg !1935
  %lftr.wideiv3416 = trunc i64 %indvars.iv.next3415 to i32, !dbg !1935
  %exitcond3417 = icmp eq i32 %lftr.wideiv3416, 16, !dbg !1935
  br i1 %exitcond3417, label %for.end1952, label %for.inc1950.for.body1725_crit_edge, !dbg !1935

for.inc1950.for.body1725_crit_edge:               ; preds = %for.inc1950
  %.pre3600 = load %struct.ImageParameters** @img, align 8, !dbg !1919, !tbaa !978
  br label %for.body1725, !dbg !1935

for.end1952:                                      ; preds = %for.inc1950
  %idxprom1953 = sext i32 %scan_pos.73233 to i64, !dbg !1963
  %arrayidx1954 = getelementptr inbounds i32* %348, i64 %idxprom1953, !dbg !1963
  store i32 0, i32* %arrayidx1954, align 4, !dbg !1963, !tbaa !984
  %indvars.iv.next3419 = add i64 %indvars.iv3418, 1, !dbg !1930
  %lftr.wideiv3420 = trunc i64 %indvars.iv.next3419 to i32, !dbg !1930
  %exitcond3421 = icmp eq i32 %lftr.wideiv3420, 4, !dbg !1930
  br i1 %exitcond3421, label %for.inc1958, label %for.end1952.for.body1692_crit_edge, !dbg !1930

for.end1952.for.body1692_crit_edge:               ; preds = %for.end1952
  %.pre3599 = load %struct.ImageParameters** @img, align 8, !dbg !1918, !tbaa !978
  br label %for.body1692, !dbg !1930

for.inc1958:                                      ; preds = %for.end1952
  %indvars.iv.next3423 = add i64 %indvars.iv3422, 1, !dbg !1910
  %372 = load %struct.ImageParameters** @img, align 8, !dbg !1910, !tbaa !978
  %num_blk8x8_uv1684 = getelementptr inbounds %struct.ImageParameters* %372, i64 0, i32 157, !dbg !1910
  %373 = load i32* %num_blk8x8_uv1684, align 4, !dbg !1910, !tbaa !984
  %div1685 = sdiv i32 %373, 2, !dbg !1910
  %374 = trunc i64 %indvars.iv.next3423 to i32, !dbg !1910
  %cmp1686 = icmp slt i32 %374, %div1685, !dbg !1910
  br i1 %cmp1686, label %for.cond1689.preheader, label %for.end1960, !dbg !1910

for.end1960:                                      ; preds = %for.inc1958, %if.end1682
  %375 = phi i32 [ %337, %if.end1682 ], [ %373, %for.inc1958 ]
  %376 = phi %struct.ImageParameters* [ %336, %if.end1682 ], [ %372, %for.inc1958 ]
  %cr_cbp_tmp.0.lcssa = phi i32 [ 0, %if.end1682 ], [ %cr_cbp_tmp.33236, %for.inc1958 ]
  %coeff_cost.0.lcssa = phi i32 [ 0, %if.end1682 ], [ %coeff_cost.43235, %for.inc1958 ]
  %cmp1961.not = icmp sgt i32 %coeff_cost.0.lcssa, 3, !dbg !1964
  %brmerge3228 = or i1 %cmp1961.not, %16, !dbg !1964
  br i1 %brmerge3228, label %if.end2067, label %for.cond1966.preheader, !dbg !1964

for.cond1966.preheader:                           ; preds = %for.end1960
  %num_blk8x8_uv19673279 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 157, !dbg !1965
  %cmp19693281 = icmp sgt i32 %375, 1, !dbg !1965
  br i1 %cmp19693281, label %for.cond1972.preheader.lr.ph, label %if.end2067, !dbg !1965

for.cond1972.preheader.lr.ph:                     ; preds = %for.cond1966.preheader
  %idxprom1978 = sext i32 %10 to i64, !dbg !1968
  %add1991 = add i32 %mul, 4, !dbg !1972
  %cmp2006 = icmp eq i32 %DCcoded.6, 0, !dbg !1973
  %arrayidx2010 = getelementptr inbounds [4 x i64]* @dct_chroma.cbpblk_pattern, i64 0, i64 %idxprom1978, !dbg !1973
  %add2011 = add nsw i32 %10, 1, !dbg !1973
  %shl2012 = shl i32 %uv, %add2011, !dbg !1973
  %sh_prom2013 = zext i32 %shl2012 to i64, !dbg !1973
  %cbp_blk2015 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !1973
  %mb_field2028 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22, !dbg !1974
  br label %for.cond1972.preheader, !dbg !1965

for.cond1972.preheader:                           ; preds = %for.cond1972.preheader.lr.ph, %for.inc2064
  %indvars.iv3412 = phi i64 [ 0, %for.cond1972.preheader.lr.ph ], [ %indvars.iv.next3413, %for.inc2064 ]
  %377 = trunc i64 %indvars.iv3412 to i32, !dbg !1972
  %add1992 = add i32 %add1991, %377, !dbg !1972
  %idxprom1993 = sext i32 %add1992 to i64, !dbg !1972
  br label %for.body1975, !dbg !1977

for.body1975:                                     ; preds = %for.inc2061, %for.cond1972.preheader
  %indvars.iv3408 = phi i64 [ 0, %for.cond1972.preheader ], [ %indvars.iv.next3409, %for.inc2061 ]
  %arrayidx1981 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @hor_offset, i64 0, i64 %idxprom1978, i64 %indvars.iv3412, i64 %indvars.iv3408, !dbg !1968
  %378 = load i8* %arrayidx1981, align 1, !dbg !1968, !tbaa !979
  %conv1982 = zext i8 %378 to i64, !dbg !1968
  %arrayidx1988 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @ver_offset, i64 0, i64 %idxprom1978, i64 %indvars.iv3412, i64 %indvars.iv3408, !dbg !1978
  %379 = load i8* %arrayidx1988, align 1, !dbg !1978, !tbaa !979
  %conv1989 = zext i8 %379 to i64, !dbg !1978
  %cofAC1994 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 47, !dbg !1972
  %380 = load i32***** %cofAC1994, align 8, !dbg !1972, !tbaa !978
  %arrayidx1995 = getelementptr inbounds i32**** %380, i64 %idxprom1993, !dbg !1972
  %381 = load i32**** %arrayidx1995, align 8, !dbg !1972, !tbaa !978
  %arrayidx1996 = getelementptr inbounds i32*** %381, i64 %indvars.iv3408, !dbg !1972
  %382 = load i32*** %arrayidx1996, align 8, !dbg !1972, !tbaa !978
  %383 = load i32** %382, align 8, !dbg !1972, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %383}, i64 0, metadata !262), !dbg !1972
  br i1 %cmp2006, label %if.then2008, label %if.end2016, !dbg !1973

if.then2008:                                      ; preds = %for.body1975
  %384 = load i64* %arrayidx2010, align 8, !dbg !1973, !tbaa !1698
  %shl2014 = shl i64 %384, %sh_prom2013, !dbg !1973
  %neg = xor i64 %shl2014, -1, !dbg !1973
  %385 = load i64* %cbp_blk2015, align 8, !dbg !1973, !tbaa !1698
  %and = and i64 %385, %neg, !dbg !1973
  store i64 %and, i64* %cbp_blk2015, align 8, !dbg !1973, !tbaa !1698
  br label %if.end2016, !dbg !1973

if.end2016:                                       ; preds = %if.then2008, %for.body1975
  store i32 0, i32* %383, align 4, !dbg !1979, !tbaa !984
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !244), !dbg !1980
  %field_picture2022 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 100, !dbg !1974
  %MbaffFrameFlag2025 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 90, !dbg !1974
  br label %for.body2021, !dbg !1980

for.body2021:                                     ; preds = %if.end2048, %if.end2016
  %indvars.iv3403 = phi i64 [ 1, %if.end2016 ], [ %indvars.iv.next3404, %if.end2048 ]
  %386 = load i32* %field_picture2022, align 4, !dbg !1974, !tbaa !984
  %tobool2023 = icmp eq i32 %386, 0, !dbg !1974
  br i1 %tobool2023, label %lor.lhs.false2024, label %if.end2048, !dbg !1974

lor.lhs.false2024:                                ; preds = %for.body2021
  %387 = load i32* %MbaffFrameFlag2025, align 4, !dbg !1974, !tbaa !984
  %tobool2026 = icmp eq i32 %387, 0, !dbg !1974
  br i1 %tobool2026, label %if.else2039, label %land.lhs.true2027, !dbg !1974

land.lhs.true2027:                                ; preds = %lor.lhs.false2024
  %388 = load i32* %mb_field2028, align 4, !dbg !1974, !tbaa !984
  %tobool2029 = icmp eq i32 %388, 0, !dbg !1974
  br i1 %tobool2029, label %if.else2039, label %if.end2048, !dbg !1974

if.else2039:                                      ; preds = %land.lhs.true2027, %lor.lhs.false2024
  br label %if.end2048

if.end2048:                                       ; preds = %for.body2021, %land.lhs.true2027, %if.else2039
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else2039 ], [ @FIELD_SCAN, %land.lhs.true2027 ], [ @FIELD_SCAN, %for.body2021 ]
  %i.13.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv3403, i64 0, !dbg !1981
  %j.13.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv3403, i64 1, !dbg !1983
  %i.13.in = load i8* %i.13.in.in, align 2, !dbg !1981
  %j.13.in = load i8* %j.13.in.in, align 1, !dbg !1983
  %i.13 = zext i8 %i.13.in to i64, !dbg !1981
  %j.13 = zext i8 %j.13.in to i64, !dbg !1983
  %add2049 = add i64 %j.13, %conv1989, !dbg !1984
  %add2051 = add i64 %i.13, %conv1982, !dbg !1984
  %arrayidx2055 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %add2051, i64 %add2049, !dbg !1984
  store i32 0, i32* %arrayidx2055, align 4, !dbg !1984, !tbaa !984
  %arrayidx2057 = getelementptr inbounds i32* %383, i64 %indvars.iv3403, !dbg !1985
  store i32 0, i32* %arrayidx2057, align 4, !dbg !1985, !tbaa !984
  %indvars.iv.next3404 = add i64 %indvars.iv3403, 1, !dbg !1980
  %lftr.wideiv3405 = trunc i64 %indvars.iv.next3404 to i32, !dbg !1980
  %exitcond3406 = icmp eq i32 %lftr.wideiv3405, 16, !dbg !1980
  br i1 %exitcond3406, label %for.inc2061, label %for.body2021, !dbg !1980

for.inc2061:                                      ; preds = %if.end2048
  %indvars.iv.next3409 = add i64 %indvars.iv3408, 1, !dbg !1977
  %lftr.wideiv3410 = trunc i64 %indvars.iv.next3409 to i32, !dbg !1977
  %exitcond3411 = icmp eq i32 %lftr.wideiv3410, 4, !dbg !1977
  br i1 %exitcond3411, label %for.inc2064, label %for.body1975, !dbg !1977

for.inc2064:                                      ; preds = %for.inc2061
  %indvars.iv.next3413 = add i64 %indvars.iv3412, 1, !dbg !1965
  %389 = load i32* %num_blk8x8_uv19673279, align 4, !dbg !1965, !tbaa !984
  %div1968 = sdiv i32 %389, 2, !dbg !1965
  %390 = trunc i64 %indvars.iv.next3413 to i32, !dbg !1965
  %cmp1969 = icmp slt i32 %390, %div1968, !dbg !1965
  br i1 %cmp1969, label %for.cond1972.preheader, label %if.end2067, !dbg !1965

if.end2067:                                       ; preds = %for.cond1966.preheader, %for.inc2064, %for.end1960
  %cr_cbp_tmp.4 = phi i32 [ %cr_cbp_tmp.0.lcssa, %for.end1960 ], [ 0, %for.inc2064 ], [ 0, %for.cond1966.preheader ]
  %cmp2068 = icmp eq i32 %cr_cbp_tmp.4, 2, !dbg !1986
  call void @llvm.dbg.value(metadata !1949, i64 0, metadata !234), !dbg !1987
  %.cr_cbp.addr.6 = select i1 %cmp2068, i32 2, i32 %cr_cbp.addr.6, !dbg !1986
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !240), !dbg !1988
  %mb_cr_size_y20733271 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 162, !dbg !1988
  %391 = load i32* %mb_cr_size_y20733271, align 4, !dbg !1988, !tbaa !984
  %cmp2074.not3272 = icmp slt i32 %391, 1, !dbg !1988
  %brmerge32293273 = or i1 %cmp2074.not3272, %16, !dbg !1988
  br i1 %brmerge32293273, label %if.end2067.for.end2481_crit_edge, label %for.cond2082.preheader.lr.ph, !dbg !1988

if.end2067.for.end2481_crit_edge:                 ; preds = %if.end2067
  %residue_transform_flag2482.pre = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 164, !dbg !1990
  br label %for.end2481, !dbg !1988

for.cond2082.preheader.lr.ph:                     ; preds = %if.end2067
  %mb_cr_size_x20833267 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 161, !dbg !1991
  %arrayidx2108 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !1994
  %arrayidx2110 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !1994
  %arrayidx2114 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !1998
  %arrayidx2119 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !1999
  %arrayidx2124 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !2000
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 164, !dbg !2001
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 156, !dbg !2006
  %.pre3560 = load i32* %mb_cr_size_x20833267, align 4, !dbg !1991, !tbaa !984
  br label %for.cond2082.preheader, !dbg !1988

for.cond2082.preheader:                           ; preds = %for.inc2479, %for.cond2082.preheader.lr.ph
  %392 = phi i32 [ %391, %for.cond2082.preheader.lr.ph ], [ %446, %for.inc2479 ]
  %393 = phi i32 [ %.pre3560, %for.cond2082.preheader.lr.ph ], [ %447, %for.inc2479 ], !dbg !1991
  %indvars.iv3401 = phi i64 [ 0, %for.cond2082.preheader.lr.ph ], [ %indvars.iv.next3402, %for.inc2479 ]
  %cmp20843268 = icmp sgt i32 %393, 0, !dbg !1991
  br i1 %cmp20843268, label %for.cond2087.preheader, label %for.inc2479, !dbg !1991

for.cond2087.preheader:                           ; preds = %for.cond2082.preheader, %for.inc2476
  %indvars.iv3399 = phi i64 [ %indvars.iv.next3400, %for.inc2476 ], [ 0, %for.cond2082.preheader ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !2008
  br label %for.cond2091.preheader, !dbg !2010

for.cond2091.preheader:                           ; preds = %for.inc2157, %for.cond2087.preheader
  %indvars.iv3370 = phi i64 [ 0, %for.cond2087.preheader ], [ %indvars.iv.next3371, %for.inc2157 ]
  %394 = add nsw i64 %indvars.iv3370, %indvars.iv3401, !dbg !2011
  br label %for.body2094, !dbg !2008

for.body2094:                                     ; preds = %for.body2094, %for.cond2091.preheader
  %indvars.iv3360 = phi i64 [ 0, %for.cond2091.preheader ], [ %indvars.iv.next3361, %for.body2094 ]
  %395 = add nsw i64 %indvars.iv3360, %indvars.iv3399, !dbg !2011
  %arrayidx2101 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %395, i64 %394, !dbg !2011
  %396 = load i32* %arrayidx2101, align 4, !dbg !2011, !tbaa !984
  %arrayidx2103 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3360, !dbg !2011
  store i32 %396, i32* %arrayidx2103, align 4, !dbg !2011, !tbaa !984
  %indvars.iv.next3361 = add i64 %indvars.iv3360, 1, !dbg !2008
  %lftr.wideiv = trunc i64 %indvars.iv.next3361 to i32, !dbg !2008
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2008
  br i1 %exitcond, label %for.end2106, label %for.body2094, !dbg !2008

for.end2106:                                      ; preds = %for.body2094
  %397 = bitcast [4 x i32]* %m5 to i64*, !dbg !1994
  %398 = load i64* %397, align 16, !dbg !1994
  %399 = trunc i64 %398 to i32, !dbg !1994
  %400 = bitcast i32* %arrayidx2108 to i64*, !dbg !1994
  %401 = load i64* %400, align 8, !dbg !1994
  %402 = trunc i64 %401 to i32, !dbg !1994
  %add2109 = add nsw i32 %402, %399, !dbg !1994
  store i32 %add2109, i32* %arrayidx2110, align 16, !dbg !1994, !tbaa !984
  %sub2113 = sub nsw i32 %399, %402, !dbg !1998
  store i32 %sub2113, i32* %arrayidx2114, align 4, !dbg !1998, !tbaa !984
  %403 = lshr i64 %398, 32
  %404 = trunc i64 %403 to i32
  %shr2116 = ashr i32 %404, 1, !dbg !1999
  %405 = lshr i64 %401, 32
  %406 = trunc i64 %405 to i32
  %sub2118 = sub nsw i32 %shr2116, %406, !dbg !1999
  store i32 %sub2118, i32* %arrayidx2119, align 8, !dbg !1999, !tbaa !984
  %shr2122 = ashr i32 %406, 1, !dbg !2000
  %add2123 = add nsw i32 %shr2122, %404, !dbg !2000
  store i32 %add2123, i32* %arrayidx2124, align 4, !dbg !2000, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !2013
  br label %for.body2128, !dbg !2013

for.body2128:                                     ; preds = %for.body2128.for.body2128_crit_edge, %for.end2106
  %407 = phi i32 [ %add2109, %for.end2106 ], [ %.pre3598, %for.body2128.for.body2128_crit_edge ]
  %indvars.iv3363 = phi i64 [ 0, %for.end2106 ], [ %indvars.iv.next3364, %for.body2128.for.body2128_crit_edge ]
  %408 = sub nsw i64 3, %indvars.iv3363, !dbg !2015
  %arrayidx2131 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3363, !dbg !2017
  %arrayidx2133 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %408, !dbg !2017
  %409 = load i32* %arrayidx2133, align 4, !dbg !2017, !tbaa !984
  %add2134 = add nsw i32 %409, %407, !dbg !2017
  %410 = add nsw i64 %indvars.iv3363, %indvars.iv3399, !dbg !2017
  %arrayidx2141 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %410, i64 %394, !dbg !2017
  store i32 %add2134, i32* %arrayidx2141, align 4, !dbg !2017, !tbaa !984
  %411 = load i32* %arrayidx2131, align 4, !dbg !2018, !tbaa !984
  %412 = load i32* %arrayidx2133, align 4, !dbg !2018, !tbaa !984
  %sub2146 = sub nsw i32 %411, %412, !dbg !2018
  %413 = add nsw i64 %408, %indvars.iv3399, !dbg !2018
  %arrayidx2153 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %413, i64 %394, !dbg !2018
  store i32 %sub2146, i32* %arrayidx2153, align 4, !dbg !2018, !tbaa !984
  %indvars.iv.next3364 = add i64 %indvars.iv3363, 1, !dbg !2013
  %lftr.wideiv3368 = trunc i64 %indvars.iv.next3364 to i32, !dbg !2013
  %exitcond3369 = icmp eq i32 %lftr.wideiv3368, 2, !dbg !2013
  br i1 %exitcond3369, label %for.inc2157, label %for.body2128.for.body2128_crit_edge, !dbg !2013

for.body2128.for.body2128_crit_edge:              ; preds = %for.body2128
  %arrayidx2131.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3364
  %.pre3598 = load i32* %arrayidx2131.phi.trans.insert, align 4, !dbg !2017, !tbaa !984
  br label %for.body2128, !dbg !2013

for.inc2157:                                      ; preds = %for.body2128
  %indvars.iv.next3371 = add i64 %indvars.iv3370, 1, !dbg !2010
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !235), !dbg !2008
  %lftr.wideiv3374 = trunc i64 %indvars.iv.next3371 to i32, !dbg !2010
  %exitcond3375 = icmp eq i32 %lftr.wideiv3374, 4, !dbg !2010
  br i1 %exitcond3375, label %for.cond2169.preheader, label %for.cond2091.preheader, !dbg !2010

for.cond2169.preheader:                           ; preds = %for.inc2157, %for.inc2473
  %indvars.iv3393 = phi i64 [ %indvars.iv.next3394, %for.inc2473 ], [ 0, %for.inc2157 ]
  %414 = add nsw i64 %indvars.iv3393, %indvars.iv3399, !dbg !2019
  br label %for.body2172, !dbg !2022

for.body2172:                                     ; preds = %for.body2172, %for.cond2169.preheader
  %indvars.iv3376 = phi i64 [ 0, %for.cond2169.preheader ], [ %indvars.iv.next3377, %for.body2172 ]
  %415 = add nsw i64 %indvars.iv3376, %indvars.iv3401, !dbg !2019
  %arrayidx2179 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %415, !dbg !2019
  %416 = load i32* %arrayidx2179, align 4, !dbg !2019, !tbaa !984
  %arrayidx2181 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3376, !dbg !2019
  store i32 %416, i32* %arrayidx2181, align 4, !dbg !2019, !tbaa !984
  %indvars.iv.next3377 = add i64 %indvars.iv3376, 1, !dbg !2022
  %lftr.wideiv3379 = trunc i64 %indvars.iv.next3377 to i32, !dbg !2022
  %exitcond3380 = icmp eq i32 %lftr.wideiv3379, 4, !dbg !2022
  br i1 %exitcond3380, label %for.end2184, label %for.body2172, !dbg !2022

for.end2184:                                      ; preds = %for.body2172
  %417 = load i64* %397, align 16, !dbg !2023
  %418 = trunc i64 %417 to i32, !dbg !2023
  %419 = load i64* %400, align 8, !dbg !2023
  %420 = trunc i64 %419 to i32, !dbg !2023
  %add2187 = add nsw i32 %420, %418, !dbg !2023
  store i32 %add2187, i32* %arrayidx2110, align 16, !dbg !2023, !tbaa !984
  %sub2191 = sub nsw i32 %418, %420, !dbg !2024
  store i32 %sub2191, i32* %arrayidx2114, align 4, !dbg !2024, !tbaa !984
  %421 = lshr i64 %417, 32
  %422 = trunc i64 %421 to i32
  %shr2194 = ashr i32 %422, 1, !dbg !2025
  %423 = lshr i64 %419, 32
  %424 = trunc i64 %423 to i32
  %sub2196 = sub nsw i32 %shr2194, %424, !dbg !2025
  store i32 %sub2196, i32* %arrayidx2119, align 8, !dbg !2025, !tbaa !984
  %shr2200 = ashr i32 %424, 1, !dbg !2026
  %add2201 = add nsw i32 %shr2200, %422, !dbg !2026
  store i32 %add2201, i32* %arrayidx2124, align 4, !dbg !2026, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !236), !dbg !2027
  br label %for.body2206, !dbg !2027

for.body2206:                                     ; preds = %for.inc2470, %for.end2184
  %indvars.iv3382 = phi i64 [ 0, %for.end2184 ], [ %indvars.iv.next3383, %for.inc2470 ]
  %425 = sub nsw i64 3, %indvars.iv3382, !dbg !2028
  %426 = load i32* %residue_transform_flag, align 4, !dbg !2001, !tbaa !984
  %tobool2208 = icmp eq i32 %426, 0, !dbg !2001
  br i1 %tobool2208, label %if.then2209, label %if.else2439, !dbg !2001

if.then2209:                                      ; preds = %for.body2206
  %427 = load i32* %max_imgpel_value_uv, align 4, !dbg !2006, !tbaa !984
  %conv2210 = sext i32 %427 to i64, !dbg !2006
  %arrayidx2212 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3382, !dbg !2006
  %428 = load i32* %arrayidx2212, align 4, !dbg !2006, !tbaa !984
  %arrayidx2214 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %425, !dbg !2006
  %429 = load i32* %arrayidx2214, align 4, !dbg !2006, !tbaa !984
  %add2215 = add nsw i32 %429, %428, !dbg !2006
  %conv2216 = sext i32 %add2215 to i64, !dbg !2006
  %430 = add nsw i64 %indvars.iv3382, %indvars.iv3401, !dbg !2006
  %arrayidx2222 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %414, i64 %430, !dbg !2006
  %431 = load i16* %arrayidx2222, align 2, !dbg !2006, !tbaa !1014
  %conv2223 = zext i16 %431 to i64, !dbg !2006
  %shl2224 = shl nuw nsw i64 %conv2223, 6, !dbg !2006
  %add2225 = add i64 %conv2216, 32, !dbg !2006
  %add2226 = add i64 %add2225, %shl2224, !dbg !2006
  %shr2227 = ashr i64 %add2226, 6, !dbg !2006
  %cmp2228 = icmp slt i64 %shr2227, 0, !dbg !2006
  %.shr2227 = select i1 %cmp2228, i64 0, i64 %shr2227, !dbg !2006
  %cmp2252 = icmp slt i64 %conv2210, %.shr2227, !dbg !2006
  %conv2210..shr2227 = select i1 %cmp2252, i64 %conv2210, i64 %.shr2227, !dbg !2006
  %conv2302 = trunc i64 %conv2210..shr2227 to i32, !dbg !2006
  %arrayidx2309 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %430, !dbg !2006
  store i32 %conv2302, i32* %arrayidx2309, align 4, !dbg !2006, !tbaa !984
  %432 = load i32* %max_imgpel_value_uv, align 4, !dbg !2029, !tbaa !984
  %conv2311 = sext i32 %432 to i64, !dbg !2029
  %433 = load i32* %arrayidx2212, align 4, !dbg !2029, !tbaa !984
  %434 = load i32* %arrayidx2214, align 4, !dbg !2029, !tbaa !984
  %sub2316 = sub nsw i32 %433, %434, !dbg !2029
  %conv2317 = sext i32 %sub2316 to i64, !dbg !2029
  %435 = add nsw i64 %425, %indvars.iv3401, !dbg !2029
  %arrayidx2324 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %414, i64 %435, !dbg !2029
  %436 = load i16* %arrayidx2324, align 2, !dbg !2029, !tbaa !1014
  %conv2325 = zext i16 %436 to i64, !dbg !2029
  %shl2326 = shl nuw nsw i64 %conv2325, 6, !dbg !2029
  %add2327 = add i64 %conv2317, 32, !dbg !2029
  %add2328 = add i64 %add2327, %shl2326, !dbg !2029
  %shr2329 = ashr i64 %add2328, 6, !dbg !2029
  %cmp2330 = icmp slt i64 %shr2329, 0, !dbg !2029
  %.shr2329 = select i1 %cmp2330, i64 0, i64 %shr2329, !dbg !2029
  %cmp2354 = icmp slt i64 %conv2311, %.shr2329, !dbg !2029
  %cond2403 = select i1 %cmp2354, i64 %conv2311, i64 %.shr2329, !dbg !2029
  %conv2404 = trunc i64 %cond2403 to i32, !dbg !2029
  %arrayidx2411 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %435, !dbg !2029
  store i32 %conv2404, i32* %arrayidx2411, align 4, !dbg !2029, !tbaa !984
  br label %for.inc2470, !dbg !2030

if.else2439:                                      ; preds = %for.body2206
  %arrayidx2416 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3382, !dbg !2031
  %arrayidx2418 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %425, !dbg !2031
  %437 = load i32* %arrayidx2418, align 4, !dbg !2031, !tbaa !984
  %438 = load i32* %arrayidx2416, align 4, !dbg !2031, !tbaa !984
  %add2419 = add nsw i32 %437, %438, !dbg !2031
  %add2445 = add nsw i32 %add2419, 32, !dbg !2034
  %shr2446 = ashr i32 %add2445, 6, !dbg !2034
  %439 = add nsw i64 %indvars.iv3382, %indvars.iv3401, !dbg !2034
  %arrayidx2453 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %439, !dbg !2034
  store i32 %shr2446, i32* %arrayidx2453, align 4, !dbg !2034, !tbaa !984
  %440 = load i32* %arrayidx2416, align 4, !dbg !2036, !tbaa !984
  %441 = load i32* %arrayidx2418, align 4, !dbg !2036, !tbaa !984
  %sub2458 = add i32 %440, 32, !dbg !2036
  %add2459 = sub i32 %sub2458, %441, !dbg !2036
  %shr2460 = ashr i32 %add2459, 6, !dbg !2036
  %442 = add nsw i64 %425, %indvars.iv3401, !dbg !2036
  %arrayidx2467 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %442, !dbg !2036
  store i32 %shr2460, i32* %arrayidx2467, align 4, !dbg !2036, !tbaa !984
  br label %for.inc2470

for.inc2470:                                      ; preds = %if.then2209, %if.else2439
  %indvars.iv.next3383 = add i64 %indvars.iv3382, 1, !dbg !2027
  %lftr.wideiv3391 = trunc i64 %indvars.iv.next3383 to i32, !dbg !2027
  %exitcond3392 = icmp eq i32 %lftr.wideiv3391, 2, !dbg !2027
  br i1 %exitcond3392, label %for.inc2473, label %for.body2206, !dbg !2027

for.inc2473:                                      ; preds = %for.inc2470
  %indvars.iv.next3394 = add i64 %indvars.iv3393, 1, !dbg !2037
  %443 = trunc i64 %indvars.iv3393 to i32, !dbg !2037
  %cmp2161.not = icmp sgt i32 %443, 2, !dbg !2037
  br i1 %cmp2161.not, label %for.inc2476, label %for.cond2169.preheader, !dbg !2037

for.inc2476:                                      ; preds = %for.inc2473
  %indvars.iv.next3400 = add i64 %indvars.iv3399, 4, !dbg !1991
  %444 = load i32* %mb_cr_size_x20833267, align 4, !dbg !1991, !tbaa !984
  %445 = trunc i64 %indvars.iv.next3400 to i32, !dbg !1991
  %cmp2084 = icmp slt i32 %445, %444, !dbg !1991
  br i1 %cmp2084, label %for.cond2087.preheader, label %for.cond2082.for.inc2479_crit_edge, !dbg !1991

for.cond2082.for.inc2479_crit_edge:               ; preds = %for.inc2476
  %.pre3561 = load i32* %mb_cr_size_y20733271, align 4, !dbg !1988, !tbaa !984
  br label %for.inc2479, !dbg !1991

for.inc2479:                                      ; preds = %for.cond2082.for.inc2479_crit_edge, %for.cond2082.preheader
  %446 = phi i32 [ %.pre3561, %for.cond2082.for.inc2479_crit_edge ], [ %392, %for.cond2082.preheader ], !dbg !1988
  %447 = phi i32 [ %444, %for.cond2082.for.inc2479_crit_edge ], [ %393, %for.cond2082.preheader ]
  %indvars.iv.next3402 = add i64 %indvars.iv3401, 4, !dbg !1988
  %448 = trunc i64 %indvars.iv.next3402 to i32, !dbg !1988
  %cmp2074.not = icmp slt i32 %448, %446, !dbg !1988
  br i1 %cmp2074.not, label %for.cond2082.preheader, label %for.end2481, !dbg !1988

for.end2481:                                      ; preds = %for.inc2479, %if.end2067.for.end2481_crit_edge
  %residue_transform_flag2482.pre-phi = phi i32* [ %residue_transform_flag2482.pre, %if.end2067.for.end2481_crit_edge ], [ %residue_transform_flag, %for.inc2479 ], !dbg !1990
  %449 = phi i32 [ %391, %if.end2067.for.end2481_crit_edge ], [ %446, %for.inc2479 ]
  %450 = load i32* %residue_transform_flag2482.pre-phi, align 4, !dbg !1990, !tbaa !984
  %tobool2483 = icmp eq i32 %450, 0, !dbg !1990
  %cmp24873259 = icmp sgt i32 %449, 0, !dbg !2038
  %or.cond3619 = and i1 %tobool2483, %cmp24873259, !dbg !1990
  br i1 %or.cond3619, label %for.cond2490.preheader.lr.ph, label %if.end2543, !dbg !1990

for.cond2490.preheader.lr.ph:                     ; preds = %for.end2481
  %mb_cr_size_x24913255 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 161, !dbg !2040
  %451 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2043, !tbaa !978
  %imgUV = getelementptr inbounds %struct.storable_picture* %451, i64 0, i32 30, !dbg !2043
  %.pre3559 = load i32* %mb_cr_size_x24913255, align 4, !dbg !2040, !tbaa !984
  br label %for.cond2490.preheader, !dbg !2038

for.cond2490.preheader:                           ; preds = %for.cond2490.preheader.lr.ph, %for.inc2540
  %indvars.iv3358 = phi i64 [ 0, %for.cond2490.preheader.lr.ph ], [ %indvars.iv.next3359, %for.inc2540 ]
  %cmp24923256 = icmp sgt i32 %.pre3559, 0, !dbg !2040
  br i1 %cmp24923256, label %for.body2494, label %for.inc2540, !dbg !2040

for.body2494:                                     ; preds = %for.cond2490.preheader, %for.inc2537
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc2537 ], [ 0, %for.cond2490.preheader ]
  %arrayidx2501 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv3358, !dbg !2043
  %452 = load i32* %arrayidx2501, align 4, !dbg !2043, !tbaa !984
  br i1 %16, label %if.then2496, label %if.else2518, !dbg !2045

if.then2496:                                      ; preds = %for.body2494
  %arrayidx2506 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv3358, !dbg !2043
  %453 = load i16* %arrayidx2506, align 2, !dbg !2043, !tbaa !1014
  %conv2507 = zext i16 %453 to i32, !dbg !2043
  %add2508 = add nsw i32 %conv2507, %452, !dbg !2043
  %conv2509 = trunc i32 %add2508 to i16, !dbg !2043
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 35, !dbg !2043
  %454 = load i32* %pix_c_x, align 4, !dbg !2043, !tbaa !984
  %455 = trunc i64 %indvars.iv to i32, !dbg !2043
  %add2510 = add nsw i32 %454, %455, !dbg !2043
  %idxprom2511 = sext i32 %add2510 to i64, !dbg !2043
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 36, !dbg !2043
  %456 = load i32* %pix_c_y, align 4, !dbg !2043, !tbaa !984
  %457 = trunc i64 %indvars.iv3358 to i32, !dbg !2043
  %add2512 = add nsw i32 %456, %457, !dbg !2043
  %idxprom2513 = sext i32 %add2512 to i64, !dbg !2043
  %458 = load i16**** %imgUV, align 8, !dbg !2043, !tbaa !978
  %arrayidx2515 = getelementptr inbounds i16*** %458, i64 %idxprom17, !dbg !2043
  %459 = load i16*** %arrayidx2515, align 8, !dbg !2043, !tbaa !978
  %arrayidx2516 = getelementptr inbounds i16** %459, i64 %idxprom2513, !dbg !2043
  %460 = load i16** %arrayidx2516, align 8, !dbg !2043, !tbaa !978
  %arrayidx2517 = getelementptr inbounds i16* %460, i64 %idxprom2511, !dbg !2043
  store i16 %conv2509, i16* %arrayidx2517, align 2, !dbg !2043, !tbaa !1014
  br label %for.inc2537, !dbg !2043

if.else2518:                                      ; preds = %for.body2494
  %conv2524 = trunc i32 %452 to i16, !dbg !2046
  %pix_c_x2525 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 35, !dbg !2046
  %461 = load i32* %pix_c_x2525, align 4, !dbg !2046, !tbaa !984
  %462 = trunc i64 %indvars.iv to i32, !dbg !2046
  %add2526 = add nsw i32 %461, %462, !dbg !2046
  %idxprom2527 = sext i32 %add2526 to i64, !dbg !2046
  %pix_c_y2528 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 36, !dbg !2046
  %463 = load i32* %pix_c_y2528, align 4, !dbg !2046, !tbaa !984
  %464 = trunc i64 %indvars.iv3358 to i32, !dbg !2046
  %add2529 = add nsw i32 %463, %464, !dbg !2046
  %idxprom2530 = sext i32 %add2529 to i64, !dbg !2046
  %465 = load i16**** %imgUV, align 8, !dbg !2046, !tbaa !978
  %arrayidx2533 = getelementptr inbounds i16*** %465, i64 %idxprom17, !dbg !2046
  %466 = load i16*** %arrayidx2533, align 8, !dbg !2046, !tbaa !978
  %arrayidx2534 = getelementptr inbounds i16** %466, i64 %idxprom2530, !dbg !2046
  %467 = load i16** %arrayidx2534, align 8, !dbg !2046, !tbaa !978
  %arrayidx2535 = getelementptr inbounds i16* %467, i64 %idxprom2527, !dbg !2046
  store i16 %conv2524, i16* %arrayidx2535, align 2, !dbg !2046, !tbaa !1014
  br label %for.inc2537

for.inc2537:                                      ; preds = %if.then2496, %if.else2518
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2040
  %468 = trunc i64 %indvars.iv.next to i32, !dbg !2040
  %cmp2492 = icmp slt i32 %468, %.pre3559, !dbg !2040
  br i1 %cmp2492, label %for.body2494, label %for.inc2540, !dbg !2040

for.inc2540:                                      ; preds = %for.inc2537, %for.cond2490.preheader
  %indvars.iv.next3359 = add i64 %indvars.iv3358, 1, !dbg !2038
  %469 = trunc i64 %indvars.iv.next3359 to i32, !dbg !2038
  %cmp2487 = icmp slt i32 %469, %449, !dbg !2038
  br i1 %cmp2487, label %for.cond2490.preheader, label %if.end2543, !dbg !2038

if.end2543:                                       ; preds = %for.inc2540, %for.end2481
  call void @llvm.lifetime.end(i64 64, i8* %12) #2, !dbg !2047
  call void @llvm.lifetime.end(i64 64, i8* %11) #2, !dbg !2047
  ret i32 %.cr_cbp.addr.6, !dbg !2047
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma4x4(i32 %uv, i32 %b8, i32 %b4) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata !{i32 %uv}, i64 0, metadata !280), !dbg !2048
  call void @llvm.dbg.value(metadata !{i32 %b8}, i64 0, metadata !281), !dbg !2048
  call void @llvm.dbg.value(metadata !{i32 %b4}, i64 0, metadata !282), !dbg !2048
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !288), !dbg !2049
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !289), !dbg !2049
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2050, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !2050
  %1 = load i32* %current_mb_nr, align 4, !dbg !2050, !tbaa !984
  %idxprom = sext i32 %1 to i64, !dbg !2050
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !2050
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !2050, !tbaa !978
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8, !dbg !2051
  %3 = load i32* %mb_type, align 4, !dbg !2051, !tbaa !984
  switch i32 %3, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ], !dbg !2051

lor.rhs:                                          ; preds = %entry
  br label %lor.end, !dbg !2051

lor.end:                                          ; preds = %entry, %entry, %entry, %lor.rhs
  %4 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ true, %entry ], [ true, %entry ]
  %idxprom5 = sext i32 %b4 to i64, !dbg !2052
  %idxprom6 = sext i32 %b8 to i64, !dbg !2052
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47, !dbg !2052
  %5 = load i32***** %cofAC, align 8, !dbg !2052, !tbaa !978
  %arrayidx7 = getelementptr inbounds i32**** %5, i64 %idxprom6, !dbg !2052
  %6 = load i32**** %arrayidx7, align 8, !dbg !2052, !tbaa !978
  %arrayidx8 = getelementptr inbounds i32*** %6, i64 %idxprom5, !dbg !2052
  %7 = load i32*** %arrayidx8, align 8, !dbg !2052, !tbaa !978
  %8 = load i32** %7, align 8, !dbg !2052, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !301), !dbg !2052
  %arrayidx15 = getelementptr inbounds i32** %7, i64 1, !dbg !2053
  %9 = load i32** %arrayidx15, align 8, !dbg !2053, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %9}, i64 0, metadata !302), !dbg !2053
  %qp = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 10, !dbg !2054
  %10 = load i32* %qp, align 4, !dbg !2054, !tbaa !984
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151, !dbg !2054
  %11 = load i32* %bitdepth_luma_qp_scale, align 4, !dbg !2054, !tbaa !984
  %add = sub i32 0, %11, !dbg !2054
  %cmp16 = icmp eq i32 %10, %add, !dbg !2054
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !2054

land.rhs:                                         ; preds = %lor.end
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160, !dbg !2054
  %12 = load i32* %lossless_qpprime_flag, align 4, !dbg !2054, !tbaa !984
  %cmp17 = icmp eq i32 %12, 1, !dbg !2054
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %13 = phi i1 [ false, %lor.end ], [ %cmp17, %land.rhs ]
  %qp18 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3, !dbg !2055
  %14 = load i32* %qp18, align 4, !dbg !2055, !tbaa !984
  %idxprom19 = sext i32 %uv to i64, !dbg !2055
  %arrayidx20 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 163, i64 %idxprom19, !dbg !2055
  %15 = load i32* %arrayidx20, align 4, !dbg !2055, !tbaa !984
  %add21 = add nsw i32 %15, %14, !dbg !2055
  call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !300), !dbg !2055
  %cmp22 = icmp slt i32 %add21, 0, !dbg !2056
  br i1 %cmp22, label %cond.end, label %cond.false, !dbg !2056

cond.false:                                       ; preds = %land.end
  %idxprom23 = sext i32 %add21 to i64, !dbg !2056
  %arrayidx24 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom23, !dbg !2056
  %16 = load i8* %arrayidx24, align 1, !dbg !2056, !tbaa !979
  %conv = zext i8 %16 to i32, !dbg !2056
  br label %cond.end, !dbg !2056

cond.end:                                         ; preds = %land.end, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ %add21, %land.end ], !dbg !2056
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !300), !dbg !2056
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 152, !dbg !2057
  %17 = load i32* %bitdepth_chroma_qp_scale, align 4, !dbg !2057, !tbaa !984
  %add25 = add nsw i32 %17, %cond, !dbg !2057
  %div = sdiv i32 %add25, 6, !dbg !2057
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !297), !dbg !2057
  %rem = srem i32 %add25, 6, !dbg !2058
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !298), !dbg !2058
  %add28 = add nsw i32 %div, 15, !dbg !2059
  call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !299), !dbg !2059
  br i1 %13, label %if.end166.thread, label %for.cond.preheader, !dbg !2060

for.cond.preheader:                               ; preds = %cond.end
  %arrayidx75 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !2061
  %arrayidx76 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !2061
  br label %for.cond31.preheader, !dbg !2064

for.cond31.preheader:                             ; preds = %for.end, %for.cond.preheader
  %indvars.iv896 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next897, %for.end ]
  br label %for.body34, !dbg !2065

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv891 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next892, %for.body34 ]
  %18 = sub nsw i64 3, %indvars.iv891, !dbg !2067
  %arrayidx39 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv891, i64 %indvars.iv896, !dbg !2069
  %19 = load i32* %arrayidx39, align 4, !dbg !2069, !tbaa !984
  %arrayidx44 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %18, i64 %indvars.iv896, !dbg !2069
  %20 = load i32* %arrayidx44, align 4, !dbg !2069, !tbaa !984
  %add45 = add nsw i32 %20, %19, !dbg !2069
  %arrayidx47 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv891, !dbg !2069
  store i32 %add45, i32* %arrayidx47, align 4, !dbg !2069, !tbaa !984
  %sub58 = sub nsw i32 %19, %20, !dbg !2070
  %arrayidx60 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %18, !dbg !2070
  store i32 %sub58, i32* %arrayidx60, align 4, !dbg !2070, !tbaa !984
  %indvars.iv.next892 = add i64 %indvars.iv891, 1, !dbg !2065
  %lftr.wideiv894 = trunc i64 %indvars.iv.next892 to i32, !dbg !2065
  %exitcond895 = icmp eq i32 %lftr.wideiv894, 2, !dbg !2065
  br i1 %exitcond895, label %for.end, label %for.body34, !dbg !2065

for.end:                                          ; preds = %for.body34
  %21 = bitcast [4 x i32]* %m5 to i64*, !dbg !2071
  %22 = load i64* %21, align 16, !dbg !2071
  %23 = trunc i64 %22 to i32, !dbg !2071
  %24 = lshr i64 %22, 32
  %25 = trunc i64 %24 to i32
  %add63 = add nsw i32 %25, %23, !dbg !2071
  %arrayidx67 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv896, !dbg !2071
  store i32 %add63, i32* %arrayidx67, align 4, !dbg !2071, !tbaa !984
  %sub70 = sub nsw i32 %23, %25, !dbg !2072
  %arrayidx74 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv896, !dbg !2072
  store i32 %sub70, i32* %arrayidx74, align 4, !dbg !2072, !tbaa !984
  %26 = load i32* %arrayidx75, align 4, !dbg !2061, !tbaa !984
  %mul = shl i32 %26, 1, !dbg !2061
  %27 = bitcast i32* %arrayidx76 to i64*, !dbg !2061
  %28 = load i64* %27, align 8, !dbg !2061
  %29 = trunc i64 %28 to i32, !dbg !2061
  %add77 = add nsw i32 %mul, %29, !dbg !2061
  %arrayidx81 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv896, !dbg !2061
  store i32 %add77, i32* %arrayidx81, align 4, !dbg !2061, !tbaa !984
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  %mul84 = shl nsw i32 %29, 1, !dbg !2073
  %sub85 = sub nsw i32 %31, %mul84, !dbg !2073
  %arrayidx89 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv896, !dbg !2073
  store i32 %sub85, i32* %arrayidx89, align 4, !dbg !2073, !tbaa !984
  %indvars.iv.next897 = add i64 %indvars.iv896, 1, !dbg !2064
  %lftr.wideiv898 = trunc i64 %indvars.iv.next897 to i32, !dbg !2064
  %exitcond899 = icmp eq i32 %lftr.wideiv898, 4, !dbg !2064
  br i1 %exitcond899, label %for.cond99.preheader, label %for.cond31.preheader, !dbg !2064

for.cond99.preheader:                             ; preds = %for.end, %for.end132
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %for.end132 ], [ 0, %for.end ]
  br label %for.body102, !dbg !2074

for.body102:                                      ; preds = %for.body102, %for.cond99.preheader
  %indvars.iv882 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next883, %for.body102 ]
  %32 = sub nsw i64 3, %indvars.iv882, !dbg !2078
  %arrayidx108 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 %indvars.iv882, !dbg !2080
  %33 = load i32* %arrayidx108, align 4, !dbg !2080, !tbaa !984
  %arrayidx113 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 %32, !dbg !2080
  %34 = load i32* %arrayidx113, align 4, !dbg !2080, !tbaa !984
  %add114 = add nsw i32 %34, %33, !dbg !2080
  %arrayidx116 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv882, !dbg !2080
  store i32 %add114, i32* %arrayidx116, align 4, !dbg !2080, !tbaa !984
  %sub127 = sub nsw i32 %33, %34, !dbg !2081
  %arrayidx129 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %32, !dbg !2081
  store i32 %sub127, i32* %arrayidx129, align 4, !dbg !2081, !tbaa !984
  %indvars.iv.next883 = add i64 %indvars.iv882, 1, !dbg !2074
  %lftr.wideiv885 = trunc i64 %indvars.iv.next883 to i32, !dbg !2074
  %exitcond886 = icmp eq i32 %lftr.wideiv885, 2, !dbg !2074
  br i1 %exitcond886, label %for.end132, label %for.body102, !dbg !2074

for.end132:                                       ; preds = %for.body102
  %35 = load i64* %21, align 16, !dbg !2082
  %36 = trunc i64 %35 to i32, !dbg !2082
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  %add135 = add nsw i32 %38, %36, !dbg !2082
  %arrayidx139 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 0, !dbg !2082
  store i32 %add135, i32* %arrayidx139, align 4, !dbg !2082, !tbaa !984
  %sub142 = sub nsw i32 %36, %38, !dbg !2083
  %arrayidx146 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 2, !dbg !2083
  store i32 %sub142, i32* %arrayidx146, align 4, !dbg !2083, !tbaa !984
  %39 = load i32* %arrayidx75, align 4, !dbg !2084, !tbaa !984
  %mul148 = shl i32 %39, 1, !dbg !2084
  %40 = load i64* %27, align 8, !dbg !2084
  %41 = trunc i64 %40 to i32, !dbg !2084
  %add150 = add nsw i32 %mul148, %41, !dbg !2084
  %arrayidx154 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 1, !dbg !2084
  store i32 %add150, i32* %arrayidx154, align 4, !dbg !2084, !tbaa !984
  %42 = lshr i64 %40, 32
  %43 = trunc i64 %42 to i32
  %mul157 = shl nsw i32 %41, 1, !dbg !2085
  %sub158 = sub nsw i32 %43, %mul157, !dbg !2085
  %arrayidx162 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 3, !dbg !2085
  store i32 %sub158, i32* %arrayidx162, align 4, !dbg !2085, !tbaa !984
  %indvars.iv.next888 = add i64 %indvars.iv887, 1, !dbg !2086
  %lftr.wideiv889 = trunc i64 %indvars.iv.next888 to i32, !dbg !2086
  %exitcond890 = icmp eq i32 %lftr.wideiv889, 4, !dbg !2086
  br i1 %exitcond890, label %if.else, label %for.cond99.preheader, !dbg !2086

if.end166.thread:                                 ; preds = %cond.end
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !294), !dbg !2087
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !293), !dbg !2088
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !292), !dbg !2089
  %arrayidx171830 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0, !dbg !2090
  %44 = load i32* %arrayidx171830, align 4, !dbg !2090, !tbaa !984
  %ispos828831 = icmp sgt i32 %44, -1, !dbg !2090
  %neg829832 = sub i32 0, %44, !dbg !2090
  %45 = select i1 %ispos828831, i32 %44, i32 %neg829832, !dbg !2090
  br label %if.end214, !dbg !2091

if.else:                                          ; preds = %for.end132
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !294), !dbg !2087
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !293), !dbg !2088
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !292), !dbg !2089
  %arrayidx171 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0, !dbg !2090
  %46 = load i32* %arrayidx171, align 4, !dbg !2090, !tbaa !984
  %ispos828 = icmp sgt i32 %46, -1, !dbg !2090
  %neg829 = sub i32 0, %46, !dbg !2090
  %47 = select i1 %ispos828, i32 %46, i32 %neg829, !dbg !2090
  %idxprom179 = sext i32 %rem to i64, !dbg !2092
  br i1 %4, label %if.then174, label %if.else193, !dbg !2093

if.then174:                                       ; preds = %if.else
  %arrayidx184 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom179, i64 0, i64 0, !dbg !2092
  %48 = load i32* %arrayidx184, align 4, !dbg !2092, !tbaa !984
  %mul185 = mul nsw i32 %48, %47, !dbg !2092
  %idxprom186 = sext i32 %div to i64, !dbg !2092
  %arrayidx191 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom186, i64 0, i64 0, !dbg !2092
  %49 = load i32* %arrayidx191, align 4, !dbg !2092, !tbaa !984
  %add192 = add nsw i32 %mul185, %49, !dbg !2092
  %shr = ashr i32 %add192, %add28, !dbg !2092
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !291), !dbg !2092
  br label %if.end214, !dbg !2092

if.else193:                                       ; preds = %if.else
  %arrayidx203 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom179, i64 0, i64 0, !dbg !2094
  %50 = load i32* %arrayidx203, align 4, !dbg !2094, !tbaa !984
  %mul204 = mul nsw i32 %50, %47, !dbg !2094
  %idxprom205 = sext i32 %div to i64, !dbg !2094
  %arrayidx210 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom205, i64 0, i64 0, !dbg !2094
  %51 = load i32* %arrayidx210, align 4, !dbg !2094, !tbaa !984
  %add211 = add nsw i32 %mul204, %51, !dbg !2094
  %shr212 = ashr i32 %add211, %add28, !dbg !2094
  call void @llvm.dbg.value(metadata !{i32 %shr212}, i64 0, metadata !291), !dbg !2094
  br label %if.end214

if.end214:                                        ; preds = %if.end166.thread, %if.then174, %if.else193
  %52 = phi i32 [ %46, %if.then174 ], [ %46, %if.else193 ], [ %44, %if.end166.thread ]
  %level.0 = phi i32 [ %shr, %if.then174 ], [ %shr212, %if.else193 ], [ %45, %if.end166.thread ]
  %add215 = shl i32 %uv, 2, !dbg !2095
  %mul216.neg = sub i32 -4, %add215, !dbg !2095
  %sub217 = add i32 %mul216.neg, %b8, !dbg !2095
  call void @llvm.dbg.value(metadata !{i32 %sub217}, i64 0, metadata !281), !dbg !2095
  %call221 = call i32 @sign(i32 %level.0, i32 %52) #4, !dbg !2096
  %div222 = sdiv i32 %sub217, 2, !dbg !2096
  %mul223 = shl i32 %div222, 1, !dbg !2096
  %div224 = sdiv i32 %b4, 2, !dbg !2096
  %add225 = add nsw i32 %mul223, %div224, !dbg !2096
  %idxprom226 = sext i32 %add225 to i64, !dbg !2096
  %rem227 = srem i32 %sub217, 2, !dbg !2096
  %mul228 = shl i32 %rem227, 1, !dbg !2096
  %rem229 = srem i32 %b4, 2, !dbg !2096
  %add230 = add nsw i32 %mul228, %rem229, !dbg !2096
  %idxprom231 = sext i32 %add230 to i64, !dbg !2096
  %arrayidx235 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 %idxprom19, i64 %idxprom231, i64 %idxprom226, !dbg !2096
  store i32 %call221, i32* %arrayidx235, align 4, !dbg !2096, !tbaa !984
  br i1 %13, label %if.then237, label %if.else245, !dbg !2097

if.then237:                                       ; preds = %if.end214
  %53 = load %struct.ImageParameters** @img, align 8, !dbg !2098, !tbaa !978
  %arrayidx240 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 46, i64 0, i64 0, !dbg !2098
  %54 = load i32* %arrayidx240, align 4, !dbg !2098, !tbaa !984
  %call241 = call i32 @sign(i32 %level.0, i32 %54) #4, !dbg !2098
  %55 = load %struct.ImageParameters** @img, align 8, !dbg !2098, !tbaa !978
  %arrayidx244 = getelementptr inbounds %struct.ImageParameters* %55, i64 0, i32 46, i64 0, i64 0, !dbg !2098
  store i32 %call241, i32* %arrayidx244, align 4, !dbg !2098, !tbaa !984
  %idxprom445.pre = sext i32 %rem to i64, !dbg !2100
  br label %for.cond331.preheader, !dbg !2105

if.else245:                                       ; preds = %if.end214
  %cmp246 = icmp slt i32 %add25, 24, !dbg !2106
  %idxprom252 = sext i32 %rem to i64, !dbg !2108
  br i1 %cmp246, label %if.then248, label %if.else291, !dbg !2106

if.then248:                                       ; preds = %if.else245
  br i1 %4, label %if.then251, label %if.else270, !dbg !2110

if.then251:                                       ; preds = %if.then248
  %arrayidx257 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0, !dbg !2108
  %56 = load i32* %arrayidx257, align 4, !dbg !2108, !tbaa !984
  %mul258 = mul nsw i32 %56, %level.0, !dbg !2108
  %sub259 = sub nsw i32 3, %div, !dbg !2108
  %shl = shl i32 1, %sub259, !dbg !2108
  %add260 = add nsw i32 %mul258, %shl, !dbg !2108
  %sub261 = sub nsw i32 4, %div, !dbg !2108
  %shr262 = ashr i32 %add260, %sub261, !dbg !2108
  %57 = load %struct.ImageParameters** @img, align 8, !dbg !2108, !tbaa !978
  %arrayidx265 = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 46, i64 0, i64 0, !dbg !2108
  %58 = load i32* %arrayidx265, align 4, !dbg !2108, !tbaa !984
  %call266 = call i32 @sign(i32 %shr262, i32 %58) #4, !dbg !2108
  %59 = load %struct.ImageParameters** @img, align 8, !dbg !2108, !tbaa !978
  %arrayidx269 = getelementptr inbounds %struct.ImageParameters* %59, i64 0, i32 46, i64 0, i64 0, !dbg !2108
  store i32 %call266, i32* %arrayidx269, align 4, !dbg !2108, !tbaa !984
  br label %for.cond331.preheader, !dbg !2108

if.else270:                                       ; preds = %if.then248
  %arrayidx276 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0, !dbg !2111
  %60 = load i32* %arrayidx276, align 4, !dbg !2111, !tbaa !984
  %mul277 = mul nsw i32 %60, %level.0, !dbg !2111
  %sub278 = sub nsw i32 3, %div, !dbg !2111
  %shl279 = shl i32 1, %sub278, !dbg !2111
  %add280 = add nsw i32 %mul277, %shl279, !dbg !2111
  %sub281 = sub nsw i32 4, %div, !dbg !2111
  %shr282 = ashr i32 %add280, %sub281, !dbg !2111
  %61 = load %struct.ImageParameters** @img, align 8, !dbg !2111, !tbaa !978
  %arrayidx285 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 46, i64 0, i64 0, !dbg !2111
  %62 = load i32* %arrayidx285, align 4, !dbg !2111, !tbaa !984
  %call286 = call i32 @sign(i32 %shr282, i32 %62) #4, !dbg !2111
  %63 = load %struct.ImageParameters** @img, align 8, !dbg !2111, !tbaa !978
  %arrayidx289 = getelementptr inbounds %struct.ImageParameters* %63, i64 0, i32 46, i64 0, i64 0, !dbg !2111
  store i32 %call286, i32* %arrayidx289, align 4, !dbg !2111, !tbaa !984
  br label %for.cond331.preheader

if.else291:                                       ; preds = %if.else245
  br i1 %4, label %if.then294, label %if.else311, !dbg !2112

if.then294:                                       ; preds = %if.else291
  %arrayidx300 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0, !dbg !2114
  %64 = load i32* %arrayidx300, align 4, !dbg !2114, !tbaa !984
  %mul301 = mul nsw i32 %64, %level.0, !dbg !2114
  %sub302 = add nsw i32 %div, -4, !dbg !2114
  %shl303 = shl i32 %mul301, %sub302, !dbg !2114
  %65 = load %struct.ImageParameters** @img, align 8, !dbg !2114, !tbaa !978
  %arrayidx306 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 46, i64 0, i64 0, !dbg !2114
  %66 = load i32* %arrayidx306, align 4, !dbg !2114, !tbaa !984
  %call307 = call i32 @sign(i32 %shl303, i32 %66) #4, !dbg !2114
  %67 = load %struct.ImageParameters** @img, align 8, !dbg !2114, !tbaa !978
  %arrayidx310 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 0, i64 0, !dbg !2114
  store i32 %call307, i32* %arrayidx310, align 4, !dbg !2114, !tbaa !984
  br label %for.cond331.preheader, !dbg !2114

if.else311:                                       ; preds = %if.else291
  %arrayidx317 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0, !dbg !2115
  %68 = load i32* %arrayidx317, align 4, !dbg !2115, !tbaa !984
  %mul318 = mul nsw i32 %68, %level.0, !dbg !2115
  %sub319 = add nsw i32 %div, -4, !dbg !2115
  %shl320 = shl i32 %mul318, %sub319, !dbg !2115
  %69 = load %struct.ImageParameters** @img, align 8, !dbg !2115, !tbaa !978
  %arrayidx323 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 46, i64 0, i64 0, !dbg !2115
  %70 = load i32* %arrayidx323, align 4, !dbg !2115, !tbaa !984
  %call324 = call i32 @sign(i32 %shl320, i32 %70) #4, !dbg !2115
  %71 = load %struct.ImageParameters** @img, align 8, !dbg !2115, !tbaa !978
  %arrayidx327 = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 46, i64 0, i64 0, !dbg !2115
  store i32 %call324, i32* %arrayidx327, align 4, !dbg !2115, !tbaa !984
  br label %for.cond331.preheader

for.cond331.preheader:                            ; preds = %if.else270, %if.then251, %if.else311, %if.then294, %if.then237
  %idxprom445.pre-phi = phi i64 [ %idxprom252, %if.else270 ], [ %idxprom252, %if.then251 ], [ %idxprom252, %if.else311 ], [ %idxprom252, %if.then294 ], [ %idxprom445.pre, %if.then237 ], !dbg !2100
  %72 = phi %struct.ImageParameters* [ %63, %if.else270 ], [ %59, %if.then251 ], [ %71, %if.else311 ], [ %67, %if.then294 ], [ %55, %if.then237 ]
  %cmp437 = icmp slt i32 %add25, 24, !dbg !2116
  %sub452 = sub nsw i32 3, %div, !dbg !2100
  %shl453 = shl i32 1, %sub452, !dbg !2100
  %sub455 = sub nsw i32 4, %div, !dbg !2100
  %sub486 = add nsw i32 %div, -4, !dbg !2117
  %idxprom373 = sext i32 %div to i64, !dbg !2119
  br label %for.body334, !dbg !2120

for.body334:                                      ; preds = %for.inc512.for.body334_crit_edge, %for.cond331.preheader
  %73 = phi %struct.ImageParameters* [ %72, %for.cond331.preheader ], [ %.pre, %for.inc512.for.body334_crit_edge ], !dbg !2121
  %indvars.iv878 = phi i64 [ 1, %for.cond331.preheader ], [ %indvars.iv.next879, %for.inc512.for.body334_crit_edge ]
  %nonzeroAC.0849 = phi i32 [ 0, %for.cond331.preheader ], [ %nonzeroAC.2835, %for.inc512.for.body334_crit_edge ]
  %run.0848 = phi i32 [ -1, %for.cond331.preheader ], [ %run.1834, %for.inc512.for.body334_crit_edge ]
  %scan_pos.0847 = phi i32 [ 0, %for.cond331.preheader ], [ %scan_pos.1833, %for.inc512.for.body334_crit_edge ]
  %arrayidx337 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv878, i64 0, !dbg !2121
  %74 = load i8* %arrayidx337, align 2, !dbg !2121, !tbaa !979
  %arrayidx341 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv878, i64 1, !dbg !2122
  %75 = load i8* %arrayidx341, align 1, !dbg !2122, !tbaa !979
  %inc343 = add nsw i32 %run.0848, 1, !dbg !2123
  call void @llvm.dbg.value(metadata !{i32 %inc343}, i64 0, metadata !293), !dbg !2123
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !287), !dbg !2124
  %idxprom346 = zext i8 %75 to i64, !dbg !2125
  %idxprom347 = zext i8 %74 to i64, !dbg !2125
  %arrayidx350 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346, !dbg !2125
  %76 = load i32* %arrayidx350, align 4, !dbg !2125, !tbaa !984
  %ispos826 = icmp sgt i32 %76, -1, !dbg !2125
  %neg827 = sub i32 0, %76, !dbg !2125
  %77 = select i1 %ispos826, i32 %76, i32 %neg827, !dbg !2125
  br i1 %13, label %if.end408, label %if.else352, !dbg !2126

if.else352:                                       ; preds = %for.body334
  br i1 %4, label %if.then355, label %if.else381, !dbg !2127

if.then355:                                       ; preds = %if.else352
  %arrayidx369 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2119
  %78 = load i32* %arrayidx369, align 4, !dbg !2119, !tbaa !984
  %mul370 = mul nsw i32 %78, %77, !dbg !2119
  %arrayidx378 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom373, i64 %idxprom347, i64 %idxprom346, !dbg !2119
  %79 = load i32* %arrayidx378, align 4, !dbg !2119, !tbaa !984
  %add379 = add nsw i32 %mul370, %79, !dbg !2119
  %shr380 = ashr i32 %add379, %add28, !dbg !2119
  call void @llvm.dbg.value(metadata !{i32 %shr380}, i64 0, metadata !291), !dbg !2119
  br label %if.end408, !dbg !2119

if.else381:                                       ; preds = %if.else352
  %arrayidx395 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2128
  %80 = load i32* %arrayidx395, align 4, !dbg !2128, !tbaa !984
  %mul396 = mul nsw i32 %80, %77, !dbg !2128
  %arrayidx404 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom373, i64 %idxprom347, i64 %idxprom346, !dbg !2128
  %81 = load i32* %arrayidx404, align 4, !dbg !2128, !tbaa !984
  %add405 = add nsw i32 %mul396, %81, !dbg !2128
  %shr406 = ashr i32 %add405, %add28, !dbg !2128
  call void @llvm.dbg.value(metadata !{i32 %shr406}, i64 0, metadata !291), !dbg !2128
  br label %if.end408

if.end408:                                        ; preds = %for.body334, %if.then355, %if.else381
  %level.1 = phi i32 [ %shr380, %if.then355 ], [ %shr406, %if.else381 ], [ %77, %for.body334 ]
  %cmp409 = icmp eq i32 %level.1, 0, !dbg !2129
  br i1 %cmp409, label %if.end503, label %if.then411, !dbg !2129

if.then411:                                       ; preds = %if.end408
  %82 = lshr i64 525, %indvars.iv878, !dbg !2130
  %83 = and i64 %82, 1, !dbg !2130
  %tobool412 = icmp eq i64 %83, 0, !dbg !2130
  br i1 %tobool412, label %if.then415, label %lor.lhs.false413, !dbg !2130

lor.lhs.false413:                                 ; preds = %if.then411
  %84 = lshr i64 65436, %indvars.iv878, !dbg !2130
  %85 = and i64 %84, 1, !dbg !2130
  %tobool414 = icmp eq i64 %85, 0, !dbg !2130
  br i1 %tobool414, label %if.end416, label %if.then415, !dbg !2130

if.then415:                                       ; preds = %if.then411, %lor.lhs.false413
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !294), !dbg !2130
  br label %if.end416, !dbg !2130

if.end416:                                        ; preds = %lor.lhs.false413, %if.then415
  %nonzeroAC.1 = phi i32 [ 1, %if.then415 ], [ %nonzeroAC.0849, %lor.lhs.false413 ]
  %call422 = call i32 @sign(i32 %level.1, i32 %76) #4, !dbg !2131
  %idxprom423 = sext i32 %scan_pos.0847 to i64, !dbg !2131
  %arrayidx424 = getelementptr inbounds i32* %8, i64 %idxprom423, !dbg !2131
  store i32 %call422, i32* %arrayidx424, align 4, !dbg !2131, !tbaa !984
  %arrayidx426 = getelementptr inbounds i32* %9, i64 %idxprom423, !dbg !2132
  store i32 %inc343, i32* %arrayidx426, align 4, !dbg !2132, !tbaa !984
  %inc427 = add nsw i32 %scan_pos.0847, 1, !dbg !2133
  call void @llvm.dbg.value(metadata !{i32 %inc427}, i64 0, metadata !292), !dbg !2133
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !293), !dbg !2134
  %86 = load %struct.ImageParameters** @img, align 8, !dbg !2135, !tbaa !978
  %arrayidx432 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346, !dbg !2135
  %87 = load i32* %arrayidx432, align 4, !dbg !2135, !tbaa !984
  %call433 = call i32 @sign(i32 %level.1, i32 %87) #4, !dbg !2135
  call void @llvm.dbg.value(metadata !{i32 %call433}, i64 0, metadata !291), !dbg !2135
  br i1 %13, label %for.inc512, label %if.else436, !dbg !2136

if.else436:                                       ; preds = %if.end416
  br i1 %cmp437, label %if.then439, label %if.else473, !dbg !2116

if.then439:                                       ; preds = %if.else436
  br i1 %4, label %if.then442, label %if.end503.thread836, !dbg !2137

if.then442:                                       ; preds = %if.then439
  %arrayidx450 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2100
  %88 = load i32* %arrayidx450, align 4, !dbg !2100, !tbaa !984
  %mul451 = mul nsw i32 %88, %call433, !dbg !2100
  %add454 = add nsw i32 %mul451, %shl453, !dbg !2100
  %shr456 = ashr i32 %add454, %sub455, !dbg !2100
  call void @llvm.dbg.value(metadata !{i32 %shr456}, i64 0, metadata !287), !dbg !2100
  br label %if.end503, !dbg !2100

if.end503.thread836:                              ; preds = %if.then439
  %arrayidx465 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2138
  %89 = load i32* %arrayidx465, align 4, !dbg !2138, !tbaa !984
  %mul466 = mul nsw i32 %89, %call433, !dbg !2138
  %add469 = add nsw i32 %mul466, %shl453, !dbg !2138
  %shr471 = ashr i32 %add469, %sub455, !dbg !2138
  call void @llvm.dbg.value(metadata !{i32 %shr471}, i64 0, metadata !287), !dbg !2138
  br label %if.then505, !dbg !2139

if.else473:                                       ; preds = %if.else436
  br i1 %4, label %if.then476, label %if.else488, !dbg !2140

if.then476:                                       ; preds = %if.else473
  %arrayidx484 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2117
  %90 = load i32* %arrayidx484, align 4, !dbg !2117, !tbaa !984
  %mul485 = mul nsw i32 %90, %call433, !dbg !2117
  %shl487 = shl i32 %mul485, %sub486, !dbg !2117
  call void @llvm.dbg.value(metadata !{i32 %shl487}, i64 0, metadata !287), !dbg !2117
  br label %if.end503, !dbg !2117

if.else488:                                       ; preds = %if.else473
  %arrayidx496 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346, !dbg !2141
  %91 = load i32* %arrayidx496, align 4, !dbg !2141, !tbaa !984
  %mul497 = mul nsw i32 %91, %call433, !dbg !2141
  %shl499 = shl i32 %mul497, %sub486, !dbg !2141
  call void @llvm.dbg.value(metadata !{i32 %shl499}, i64 0, metadata !287), !dbg !2141
  br label %if.end503

if.end503:                                        ; preds = %if.end408, %if.then476, %if.else488, %if.then442
  %scan_pos.1 = phi i32 [ %inc427, %if.then442 ], [ %inc427, %if.then476 ], [ %inc427, %if.else488 ], [ %scan_pos.0847, %if.end408 ]
  %run.1 = phi i32 [ -1, %if.then442 ], [ -1, %if.then476 ], [ -1, %if.else488 ], [ %inc343, %if.end408 ]
  %nonzeroAC.2 = phi i32 [ %nonzeroAC.1, %if.then442 ], [ %nonzeroAC.1, %if.then476 ], [ %nonzeroAC.1, %if.else488 ], [ %nonzeroAC.0849, %if.end408 ]
  %ilev.0 = phi i32 [ %shr456, %if.then442 ], [ %shl487, %if.then476 ], [ %shl499, %if.else488 ], [ 0, %if.end408 ]
  br i1 %13, label %for.inc512, label %if.then505, !dbg !2139

if.then505:                                       ; preds = %if.end503, %if.end503.thread836
  %ilev.0840 = phi i32 [ %shr471, %if.end503.thread836 ], [ %ilev.0, %if.end503 ]
  %nonzeroAC.2839 = phi i32 [ %nonzeroAC.1, %if.end503.thread836 ], [ %nonzeroAC.2, %if.end503 ]
  %run.1838 = phi i32 [ -1, %if.end503.thread836 ], [ %run.1, %if.end503 ]
  %scan_pos.1837 = phi i32 [ %inc427, %if.end503.thread836 ], [ %scan_pos.1, %if.end503 ]
  %92 = load %struct.ImageParameters** @img, align 8, !dbg !2142, !tbaa !978
  %arrayidx510 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346, !dbg !2142
  store i32 %ilev.0840, i32* %arrayidx510, align 4, !dbg !2142, !tbaa !984
  br label %for.inc512, !dbg !2142

for.inc512:                                       ; preds = %if.end416, %if.end503, %if.then505
  %nonzeroAC.2835 = phi i32 [ %nonzeroAC.2, %if.end503 ], [ %nonzeroAC.2839, %if.then505 ], [ %nonzeroAC.1, %if.end416 ]
  %run.1834 = phi i32 [ %run.1, %if.end503 ], [ %run.1838, %if.then505 ], [ -1, %if.end416 ]
  %scan_pos.1833 = phi i32 [ %scan_pos.1, %if.end503 ], [ %scan_pos.1837, %if.then505 ], [ %inc427, %if.end416 ]
  %indvars.iv.next879 = add i64 %indvars.iv878, 1, !dbg !2120
  %lftr.wideiv880 = trunc i64 %indvars.iv.next879 to i32, !dbg !2120
  %exitcond881 = icmp eq i32 %lftr.wideiv880, 16, !dbg !2120
  br i1 %exitcond881, label %for.end514, label %for.inc512.for.body334_crit_edge, !dbg !2120

for.inc512.for.body334_crit_edge:                 ; preds = %for.inc512
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !2125, !tbaa !978
  br label %for.body334, !dbg !2120

for.end514:                                       ; preds = %for.inc512
  %idxprom515 = sext i32 %scan_pos.1833 to i64, !dbg !2143
  %arrayidx516 = getelementptr inbounds i32* %8, i64 %idxprom515, !dbg !2143
  store i32 0, i32* %arrayidx516, align 4, !dbg !2143, !tbaa !984
  br i1 %13, label %if.end660, label %for.cond519.preheader, !dbg !2144

for.cond519.preheader:                            ; preds = %for.end514
  %93 = load %struct.ImageParameters** @img, align 8, !dbg !2145, !tbaa !978
  %arrayidx538 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !2150
  %arrayidx540 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !2150
  %arrayidx544 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !2151
  %arrayidx549 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !2152
  %arrayidx554 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !2153
  br label %for.cond523.preheader, !dbg !2154

for.cond523.preheader:                            ; preds = %for.inc583, %for.cond519.preheader
  %indvars.iv874 = phi i64 [ 0, %for.cond519.preheader ], [ %indvars.iv.next875, %for.inc583 ]
  br label %for.body526, !dbg !2155

for.body526:                                      ; preds = %for.body526, %for.cond523.preheader
  %indvars.iv865 = phi i64 [ 0, %for.cond523.preheader ], [ %indvars.iv.next866, %for.body526 ]
  %arrayidx531 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv865, i64 %indvars.iv874, !dbg !2145
  %94 = load i32* %arrayidx531, align 4, !dbg !2145, !tbaa !984
  %arrayidx533 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv865, !dbg !2145
  store i32 %94, i32* %arrayidx533, align 4, !dbg !2145, !tbaa !984
  %indvars.iv.next866 = add i64 %indvars.iv865, 1, !dbg !2155
  %lftr.wideiv867 = trunc i64 %indvars.iv.next866 to i32, !dbg !2155
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 4, !dbg !2155
  br i1 %exitcond868, label %for.end536, label %for.body526, !dbg !2155

for.end536:                                       ; preds = %for.body526
  %95 = bitcast [4 x i32]* %m5 to i64*, !dbg !2150
  %96 = load i64* %95, align 16, !dbg !2150
  %97 = trunc i64 %96 to i32, !dbg !2150
  %98 = bitcast i32* %arrayidx538 to i64*, !dbg !2150
  %99 = load i64* %98, align 8, !dbg !2150
  %100 = trunc i64 %99 to i32, !dbg !2150
  %add539 = add nsw i32 %100, %97, !dbg !2150
  store i32 %add539, i32* %arrayidx540, align 16, !dbg !2150, !tbaa !984
  %sub543 = sub nsw i32 %97, %100, !dbg !2151
  store i32 %sub543, i32* %arrayidx544, align 4, !dbg !2151, !tbaa !984
  %101 = lshr i64 %96, 32
  %102 = trunc i64 %101 to i32
  %shr546 = ashr i32 %102, 1, !dbg !2152
  %103 = lshr i64 %99, 32
  %104 = trunc i64 %103 to i32
  %sub548 = sub nsw i32 %shr546, %104, !dbg !2152
  store i32 %sub548, i32* %arrayidx549, align 8, !dbg !2152, !tbaa !984
  %shr552 = ashr i32 %104, 1, !dbg !2153
  %add553 = add nsw i32 %shr552, %102, !dbg !2153
  store i32 %add553, i32* %arrayidx554, align 4, !dbg !2153, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !283), !dbg !2156
  br label %for.body558, !dbg !2156

for.body558:                                      ; preds = %for.body558.for.body558_crit_edge, %for.end536
  %105 = phi i32 [ %add539, %for.end536 ], [ %.pre903, %for.body558.for.body558_crit_edge ]
  %indvars.iv869 = phi i64 [ 0, %for.end536 ], [ %indvars.iv.next870, %for.body558.for.body558_crit_edge ]
  %106 = sub nsw i64 3, %indvars.iv869, !dbg !2158
  %arrayidx563 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %106, !dbg !2160
  %107 = load i32* %arrayidx563, align 4, !dbg !2160, !tbaa !984
  %add564 = add nsw i32 %107, %105, !dbg !2160
  %arrayidx569 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv869, i64 %indvars.iv874, !dbg !2160
  store i32 %add564, i32* %arrayidx569, align 4, !dbg !2160, !tbaa !984
  %sub574 = sub nsw i32 %105, %107, !dbg !2161
  %arrayidx579 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %106, i64 %indvars.iv874, !dbg !2161
  store i32 %sub574, i32* %arrayidx579, align 4, !dbg !2161, !tbaa !984
  %indvars.iv.next870 = add i64 %indvars.iv869, 1, !dbg !2156
  %lftr.wideiv872 = trunc i64 %indvars.iv.next870 to i32, !dbg !2156
  %exitcond873 = icmp eq i32 %lftr.wideiv872, 2, !dbg !2156
  br i1 %exitcond873, label %for.inc583, label %for.body558.for.body558_crit_edge, !dbg !2156

for.body558.for.body558_crit_edge:                ; preds = %for.body558
  %arrayidx561.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next870
  %.pre903 = load i32* %arrayidx561.phi.trans.insert, align 4, !dbg !2160, !tbaa !984
  br label %for.body558, !dbg !2156

for.inc583:                                       ; preds = %for.body558
  %indvars.iv.next875 = add i64 %indvars.iv874, 1, !dbg !2154
  %lftr.wideiv876 = trunc i64 %indvars.iv.next875 to i32, !dbg !2154
  %exitcond877 = icmp eq i32 %lftr.wideiv876, 4, !dbg !2154
  br i1 %exitcond877, label %for.cond593.preheader, label %for.cond523.preheader, !dbg !2154

for.cond593.preheader:                            ; preds = %for.inc583, %for.inc657
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %for.inc657 ], [ 0, %for.inc583 ]
  br label %for.body596, !dbg !2162

for.body596:                                      ; preds = %for.body596, %for.cond593.preheader
  %indvars.iv = phi i64 [ 0, %for.cond593.preheader ], [ %indvars.iv.next, %for.body596 ]
  %arrayidx601 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %indvars.iv, !dbg !2166
  %108 = load i32* %arrayidx601, align 4, !dbg !2166, !tbaa !984
  %arrayidx603 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv, !dbg !2166
  store i32 %108, i32* %arrayidx603, align 4, !dbg !2166, !tbaa !984
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2162
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2162
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2162
  br i1 %exitcond, label %for.end606, label %for.body596, !dbg !2162

for.end606:                                       ; preds = %for.body596
  %109 = load i64* %95, align 16, !dbg !2168
  %110 = trunc i64 %109 to i32, !dbg !2168
  %111 = load i64* %98, align 8, !dbg !2168
  %112 = trunc i64 %111 to i32, !dbg !2168
  %add609 = add nsw i32 %112, %110, !dbg !2168
  store i32 %add609, i32* %arrayidx540, align 16, !dbg !2168, !tbaa !984
  %sub613 = sub nsw i32 %110, %112, !dbg !2169
  store i32 %sub613, i32* %arrayidx544, align 4, !dbg !2169, !tbaa !984
  %113 = lshr i64 %109, 32
  %114 = trunc i64 %113 to i32
  %shr616 = ashr i32 %114, 1, !dbg !2170
  %115 = lshr i64 %111, 32
  %116 = trunc i64 %115 to i32
  %sub618 = sub nsw i32 %shr616, %116, !dbg !2170
  store i32 %sub618, i32* %arrayidx549, align 8, !dbg !2170, !tbaa !984
  %shr622 = ashr i32 %116, 1, !dbg !2171
  %add623 = add nsw i32 %shr622, %114, !dbg !2171
  store i32 %add623, i32* %arrayidx554, align 4, !dbg !2171, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !284), !dbg !2172
  br label %for.body628, !dbg !2172

for.body628:                                      ; preds = %for.body628.for.body628_crit_edge, %for.end606
  %117 = phi i32 [ %add609, %for.end606 ], [ %.pre904, %for.body628.for.body628_crit_edge ]
  %indvars.iv856 = phi i64 [ 0, %for.end606 ], [ %indvars.iv.next857, %for.body628.for.body628_crit_edge ]
  %118 = sub nsw i64 3, %indvars.iv856, !dbg !2174
  %arrayidx633 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %118, !dbg !2176
  %119 = load i32* %arrayidx633, align 4, !dbg !2176, !tbaa !984
  %add634 = add i32 %117, 32, !dbg !2176
  %add635 = add i32 %add634, %119, !dbg !2176
  %shr636 = ashr i32 %add635, 6, !dbg !2176
  %arrayidx641 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %indvars.iv856, !dbg !2176
  store i32 %shr636, i32* %arrayidx641, align 4, !dbg !2176, !tbaa !984
  %add647 = sub i32 %add634, %119, !dbg !2177
  %shr648 = ashr i32 %add647, 6, !dbg !2177
  %arrayidx653 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %118, !dbg !2177
  store i32 %shr648, i32* %arrayidx653, align 4, !dbg !2177, !tbaa !984
  %indvars.iv.next857 = add i64 %indvars.iv856, 1, !dbg !2172
  %lftr.wideiv859 = trunc i64 %indvars.iv.next857 to i32, !dbg !2172
  %exitcond860 = icmp eq i32 %lftr.wideiv859, 2, !dbg !2172
  br i1 %exitcond860, label %for.inc657, label %for.body628.for.body628_crit_edge, !dbg !2172

for.body628.for.body628_crit_edge:                ; preds = %for.body628
  %arrayidx631.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next857
  %.pre904 = load i32* %arrayidx631.phi.trans.insert, align 4, !dbg !2176, !tbaa !984
  br label %for.body628, !dbg !2172

for.inc657:                                       ; preds = %for.body628
  %indvars.iv.next862 = add i64 %indvars.iv861, 1, !dbg !2178
  %lftr.wideiv863 = trunc i64 %indvars.iv.next862 to i32, !dbg !2178
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 4, !dbg !2178
  br i1 %exitcond864, label %if.end660, label %for.cond593.preheader, !dbg !2178

if.end660:                                        ; preds = %for.inc657, %for.end514
  ret i32 %nonzeroAC.2835, !dbg !2179
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma_DC(i32 %uv, i32 %cr_cbp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %uv}, i64 0, metadata !306), !dbg !2180
  tail call void @llvm.dbg.value(metadata !{i32 %cr_cbp}, i64 0, metadata !307), !dbg !2180
  %add = add nsw i32 %uv, 1, !dbg !2181
  %idxprom = sext i32 %add to i64, !dbg !2181
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2181, !tbaa !978
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48, !dbg !2181
  %1 = load i32**** %cofDC, align 8, !dbg !2181, !tbaa !978
  %arrayidx = getelementptr inbounds i32*** %1, i64 %idxprom, !dbg !2181
  %2 = load i32*** %arrayidx, align 8, !dbg !2181, !tbaa !978
  %3 = load i32** %2, align 8, !dbg !2181, !tbaa !978
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !314), !dbg !2181
  %arrayidx6 = getelementptr inbounds i32** %2, i64 1, !dbg !2182
  %4 = load i32** %arrayidx6, align 8, !dbg !2182, !tbaa !978
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !315), !dbg !2182
  tail call void @llvm.dbg.value(metadata !1322, i64 0, metadata !308), !dbg !2183
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !309), !dbg !2184
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !310), !dbg !2185
  %idxprom16 = sext i32 %uv to i64, !dbg !2187
  br label %for.body, !dbg !2185

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %cr_cbp.addr.058 = phi i32 [ %cr_cbp, %entry ], [ %cr_cbp.addr.1, %for.inc ]
  %run.057 = phi i32 [ -1, %entry ], [ %run.1, %for.inc ]
  %scan_pos.056 = phi i32 [ 0, %entry ], [ %scan_pos.1, %for.inc ]
  %arrayidx9 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv, i64 0, !dbg !2189
  %5 = load i8* %arrayidx9, align 2, !dbg !2189, !tbaa !979
  %arrayidx12 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv, i64 1, !dbg !2190
  %6 = load i8* %arrayidx12, align 1, !dbg !2190, !tbaa !979
  %inc = add nsw i32 %run.057, 1, !dbg !2191
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !308), !dbg !2191
  %idxprom14 = zext i8 %6 to i64, !dbg !2187
  %idxprom15 = zext i8 %5 to i64, !dbg !2187
  %arrayidx19 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 %idxprom16, i64 %idxprom15, i64 %idxprom14, !dbg !2187
  %7 = load i32* %arrayidx19, align 4, !dbg !2187, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !311), !dbg !2187
  %cmp20 = icmp eq i32 %7, 0, !dbg !2192
  br i1 %cmp20, label %for.inc, label %if.then, !dbg !2192

if.then:                                          ; preds = %for.body
  %neg = sub i32 0, %7, !dbg !2187
  %ispos = icmp sgt i32 %7, -1, !dbg !2187
  %8 = select i1 %ispos, i32 %7, i32 %neg, !dbg !2187
  %cmp22 = icmp slt i32 %cr_cbp.addr.058, 1, !dbg !2193
  %cond = select i1 %cmp22, i32 1, i32 %cr_cbp.addr.058, !dbg !2193
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !307), !dbg !2193
  %call30 = tail call i32 @sign(i32 %8, i32 %7) #4, !dbg !2195
  %idxprom31 = sext i32 %scan_pos.056 to i64, !dbg !2195
  %arrayidx32 = getelementptr inbounds i32* %3, i64 %idxprom31, !dbg !2195
  store i32 %call30, i32* %arrayidx32, align 4, !dbg !2195, !tbaa !984
  %arrayidx34 = getelementptr inbounds i32* %4, i64 %idxprom31, !dbg !2196
  store i32 %inc, i32* %arrayidx34, align 4, !dbg !2196, !tbaa !984
  %inc35 = add nsw i32 %scan_pos.056, 1, !dbg !2197
  tail call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !309), !dbg !2197
  tail call void @llvm.dbg.value(metadata !1322, i64 0, metadata !308), !dbg !2198
  br label %for.inc, !dbg !2199

for.inc:                                          ; preds = %for.body, %if.then
  %scan_pos.1 = phi i32 [ %inc35, %if.then ], [ %scan_pos.056, %for.body ]
  %run.1 = phi i32 [ -1, %if.then ], [ %inc, %for.body ]
  %cr_cbp.addr.1 = phi i32 [ %cond, %if.then ], [ %cr_cbp.addr.058, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2185
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2185
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !2185
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2185

for.end:                                          ; preds = %for.inc
  %idxprom37 = sext i32 %scan_pos.1 to i64, !dbg !2200
  %arrayidx38 = getelementptr inbounds i32* %3, i64 %idxprom37, !dbg !2200
  store i32 0, i32* %arrayidx38, align 4, !dbg !2200, !tbaa !984
  ret i32 %cr_cbp.addr.1, !dbg !2201
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma_sp(i32 %block_x, i32 %block_y, i32* nocapture %coeff_cost) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  %len = alloca i32, align 4
  %info = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !320), !dbg !2202
  call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !321), !dbg !2202
  call void @llvm.dbg.value(metadata !{i32* %coeff_cost}, i64 0, metadata !322), !dbg !2202
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !328), !dbg !2203
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !329), !dbg !2203
  %0 = bitcast [4 x [4 x i32]]* %predicted_block to i8*, !dbg !2204
  call void @llvm.lifetime.start(i64 64, i8* %0) #2, !dbg !2204
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i32]]* %predicted_block}, metadata !336), !dbg !2204
  %div = sdiv i32 %block_x, 4, !dbg !2205
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !345), !dbg !2205
  %div1 = sdiv i32 %block_y, 4, !dbg !2206
  call void @llvm.dbg.value(metadata !{i32 %div1}, i64 0, metadata !346), !dbg !2206
  %div2 = sdiv i32 %block_y, 8, !dbg !2207
  %mul = shl i32 %div2, 1, !dbg !2207
  %div3 = sdiv i32 %block_x, 8, !dbg !2207
  %add = add nsw i32 %mul, %div3, !dbg !2207
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !347), !dbg !2207
  %rem = srem i32 %div1, 2, !dbg !2208
  %mul4 = shl i32 %rem, 1, !dbg !2208
  %rem5 = srem i32 %div, 2, !dbg !2208
  %add6 = add nsw i32 %mul4, %rem5, !dbg !2208
  call void @llvm.dbg.value(metadata !{i32 %add6}, i64 0, metadata !348), !dbg !2208
  %idxprom = sext i32 %add6 to i64, !dbg !2209
  %idxprom7 = sext i32 %add to i64, !dbg !2209
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2209, !tbaa !978
  %cofAC = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 47, !dbg !2209
  %2 = load i32***** %cofAC, align 8, !dbg !2209, !tbaa !978
  %arrayidx = getelementptr inbounds i32**** %2, i64 %idxprom7, !dbg !2209
  %3 = load i32**** %arrayidx, align 8, !dbg !2209, !tbaa !978
  %arrayidx8 = getelementptr inbounds i32*** %3, i64 %idxprom, !dbg !2209
  %4 = load i32*** %arrayidx8, align 8, !dbg !2209, !tbaa !978
  %5 = load i32** %4, align 8, !dbg !2209, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !349), !dbg !2209
  %arrayidx15 = getelementptr inbounds i32** %4, i64 1, !dbg !2210
  %6 = load i32** %arrayidx15, align 8, !dbg !2210, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !350), !dbg !2210
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2211
  %7 = load i32* %current_mb_nr, align 4, !dbg !2211, !tbaa !984
  %idxprom16 = sext i32 %7 to i64, !dbg !2211
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !2211
  %8 = load %struct.macroblock** %mb_data, align 8, !dbg !2211, !tbaa !978
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !358), !dbg !2212
  call void @llvm.dbg.declare(metadata !{i32* %info}, metadata !359), !dbg !2212
  %qp = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom16, i32 3, !dbg !2213
  %9 = load i32* %qp, align 4, !dbg !2213, !tbaa !984
  %sub = add nsw i32 %9, -12, !dbg !2213
  %conv = sitofp i32 %sub to double, !dbg !2213
  %div18 = fdiv double %conv, 3.000000e+00, !dbg !2213
  %exp2 = call double @exp2(double %div18) #5, !dbg !2213
  %mul19 = fmul double %exp2, 8.500000e-01, !dbg !2213
  call void @llvm.dbg.value(metadata !{double %mul20}, i64 0, metadata !360), !dbg !2213
  %10 = load i32* %qp, align 4, !dbg !2214, !tbaa !984
  %div23 = sdiv i32 %10, 6, !dbg !2214
  call void @llvm.dbg.value(metadata !{i32 %div23}, i64 0, metadata !339), !dbg !2214
  call void @llvm.dbg.value(metadata !{i32 %rem26}, i64 0, metadata !340), !dbg !2215
  %add27 = add nsw i32 %div23, 15, !dbg !2216
  call void @llvm.dbg.value(metadata !{i32 %add27}, i64 0, metadata !341), !dbg !2216
  %qpsp = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom16, i32 4, !dbg !2217
  %11 = load i32* %qpsp, align 4, !dbg !2217, !tbaa !984
  %div29 = sdiv i32 %11, 6, !dbg !2217
  call void @llvm.dbg.value(metadata !{i32 %div29}, i64 0, metadata !342), !dbg !2217
  call void @llvm.dbg.value(metadata !{i32 %rem32}, i64 0, metadata !343), !dbg !2218
  %add33 = add nsw i32 %div29, 15, !dbg !2219
  call void @llvm.dbg.value(metadata !{i32 %add33}, i64 0, metadata !344), !dbg !2219
  %shl = shl i32 1, %add27, !dbg !2220
  call void @llvm.dbg.value(metadata !{i32 %div34}, i64 0, metadata !331), !dbg !2220
  %shl35 = shl i32 1, %add33, !dbg !2221
  call void @llvm.dbg.value(metadata !{i32 %div36}, i64 0, metadata !338), !dbg !2221
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2222
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !2224, !tbaa !978
  %13 = sext i32 %block_x to i64, !dbg !2222
  %14 = sext i32 %block_y to i64, !dbg !2222
  br label %for.cond38.preheader, !dbg !2222

for.cond38.preheader:                             ; preds = %for.inc66, %entry
  %indvars.iv1234 = phi i64 [ 0, %entry ], [ %indvars.iv.next1235, %for.inc66 ]
  %15 = add nsw i64 %indvars.iv1234, %14, !dbg !2224
  br label %for.body41, !dbg !2227

for.cond69.preheader:                             ; preds = %for.inc66
  %mul20 = fmul double %mul19, 4.000000e+00, !dbg !2213
  %rem26 = srem i32 %10, 6, !dbg !2215
  %rem32 = srem i32 %11, 6, !dbg !2218
  %div34 = sdiv i32 %shl, 6, !dbg !2220
  %div36 = sdiv i32 %shl35, 2, !dbg !2221
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2228
  %arrayidx121 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !2232
  %arrayidx123 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !2232
  br label %for.cond73.preheader, !dbg !2233

for.body41:                                       ; preds = %for.body41, %for.cond38.preheader
  %indvars.iv1229 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next1230, %for.body41 ]
  %16 = add nsw i64 %indvars.iv1229, %13, !dbg !2224
  %arrayidx47 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 45, i64 %16, i64 %15, !dbg !2224
  %17 = load i16* %arrayidx47, align 2, !dbg !2224, !tbaa !1014
  %conv48 = zext i16 %17 to i32, !dbg !2224
  %arrayidx52 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1229, i64 %indvars.iv1234, !dbg !2224
  %18 = load i32* %arrayidx52, align 4, !dbg !2224, !tbaa !984
  %add53 = add nsw i32 %18, %conv48, !dbg !2224
  store i32 %add53, i32* %arrayidx52, align 4, !dbg !2224, !tbaa !984
  %19 = load i16* %arrayidx47, align 2, !dbg !2234, !tbaa !1014
  %conv61 = zext i16 %19 to i32, !dbg !2234
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1229, i64 %indvars.iv1234, !dbg !2234
  store i32 %conv61, i32* %arrayidx65, align 4, !dbg !2234, !tbaa !984
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1, !dbg !2227
  %lftr.wideiv1232 = trunc i64 %indvars.iv.next1230 to i32, !dbg !2227
  %exitcond1233 = icmp eq i32 %lftr.wideiv1232, 4, !dbg !2227
  br i1 %exitcond1233, label %for.inc66, label %for.body41, !dbg !2227

for.inc66:                                        ; preds = %for.body41
  %indvars.iv.next1235 = add i64 %indvars.iv1234, 1, !dbg !2222
  %lftr.wideiv1237 = trunc i64 %indvars.iv.next1235 to i32, !dbg !2222
  %exitcond1238 = icmp eq i32 %lftr.wideiv1237, 4, !dbg !2222
  br i1 %exitcond1238, label %for.cond69.preheader, label %for.cond38.preheader, !dbg !2222

for.cond73.preheader:                             ; preds = %for.end106, %for.cond69.preheader
  %indvars.iv1225 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next1226, %for.end106 ]
  br label %for.body76, !dbg !2228

for.body76:                                       ; preds = %for.body76, %for.cond73.preheader
  %indvars.iv1220 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next1221, %for.body76 ]
  %20 = sub nsw i64 3, %indvars.iv1220, !dbg !2235
  %arrayidx82 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1220, i64 %indvars.iv1225, !dbg !2237
  %21 = load i32* %arrayidx82, align 4, !dbg !2237, !tbaa !984
  %arrayidx87 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %20, i64 %indvars.iv1225, !dbg !2237
  %22 = load i32* %arrayidx87, align 4, !dbg !2237, !tbaa !984
  %add88 = add nsw i32 %22, %21, !dbg !2237
  %arrayidx90 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1220, !dbg !2237
  store i32 %add88, i32* %arrayidx90, align 4, !dbg !2237, !tbaa !984
  %23 = load i32* %arrayidx82, align 4, !dbg !2238, !tbaa !984
  %24 = load i32* %arrayidx87, align 4, !dbg !2238, !tbaa !984
  %sub101 = sub nsw i32 %23, %24, !dbg !2238
  %arrayidx103 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %20, !dbg !2238
  store i32 %sub101, i32* %arrayidx103, align 4, !dbg !2238, !tbaa !984
  %indvars.iv.next1221 = add i64 %indvars.iv1220, 1, !dbg !2228
  %lftr.wideiv1223 = trunc i64 %indvars.iv.next1221 to i32, !dbg !2228
  %exitcond1224 = icmp eq i32 %lftr.wideiv1223, 2, !dbg !2228
  br i1 %exitcond1224, label %for.end106, label %for.body76, !dbg !2228

for.end106:                                       ; preds = %for.body76
  %25 = bitcast [4 x i32]* %m5 to i64*, !dbg !2239
  %26 = load i64* %25, align 16, !dbg !2239
  %27 = trunc i64 %26 to i32, !dbg !2239
  %28 = lshr i64 %26, 32
  %29 = trunc i64 %28 to i32
  %add109 = add nsw i32 %29, %27, !dbg !2239
  %arrayidx113 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 0, i64 %indvars.iv1225, !dbg !2239
  store i32 %add109, i32* %arrayidx113, align 4, !dbg !2239, !tbaa !984
  %sub116 = sub nsw i32 %27, %29, !dbg !2240
  %arrayidx120 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 2, i64 %indvars.iv1225, !dbg !2240
  store i32 %sub116, i32* %arrayidx120, align 4, !dbg !2240, !tbaa !984
  %30 = load i32* %arrayidx121, align 4, !dbg !2232, !tbaa !984
  %mul122 = shl i32 %30, 1, !dbg !2232
  %31 = load i32* %arrayidx123, align 8, !dbg !2232, !tbaa !984
  %add124 = add nsw i32 %mul122, %31, !dbg !2232
  %arrayidx128 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 1, i64 %indvars.iv1225, !dbg !2232
  store i32 %add124, i32* %arrayidx128, align 4, !dbg !2232, !tbaa !984
  %32 = load i32* %arrayidx121, align 4, !dbg !2241, !tbaa !984
  %33 = load i32* %arrayidx123, align 8, !dbg !2241, !tbaa !984
  %mul131 = shl nsw i32 %33, 1, !dbg !2241
  %sub132 = sub nsw i32 %32, %mul131, !dbg !2241
  %arrayidx136 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 3, i64 %indvars.iv1225, !dbg !2241
  store i32 %sub132, i32* %arrayidx136, align 4, !dbg !2241, !tbaa !984
  %indvars.iv.next1226 = add i64 %indvars.iv1225, 1, !dbg !2233
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2228
  %lftr.wideiv1227 = trunc i64 %indvars.iv.next1226 to i32, !dbg !2233
  %exitcond1228 = icmp eq i32 %lftr.wideiv1227, 4, !dbg !2233
  br i1 %exitcond1228, label %for.cond144.preheader, label %for.cond73.preheader, !dbg !2233

for.cond144.preheader:                            ; preds = %for.end106, %for.end177
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.end177 ], [ 0, %for.end106 ]
  br label %for.body147, !dbg !2242

for.body147:                                      ; preds = %for.body147, %for.cond144.preheader
  %indvars.iv1211 = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next1212, %for.body147 ]
  %34 = sub nsw i64 3, %indvars.iv1211, !dbg !2246
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 %indvars.iv1211, !dbg !2248
  %35 = load i32* %arrayidx153, align 4, !dbg !2248, !tbaa !984
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 %34, !dbg !2248
  %36 = load i32* %arrayidx158, align 4, !dbg !2248, !tbaa !984
  %add159 = add nsw i32 %36, %35, !dbg !2248
  %arrayidx161 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1211, !dbg !2248
  store i32 %add159, i32* %arrayidx161, align 4, !dbg !2248, !tbaa !984
  %37 = load i32* %arrayidx153, align 4, !dbg !2249, !tbaa !984
  %38 = load i32* %arrayidx158, align 4, !dbg !2249, !tbaa !984
  %sub172 = sub nsw i32 %37, %38, !dbg !2249
  %arrayidx174 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %34, !dbg !2249
  store i32 %sub172, i32* %arrayidx174, align 4, !dbg !2249, !tbaa !984
  %indvars.iv.next1212 = add i64 %indvars.iv1211, 1, !dbg !2242
  %lftr.wideiv1214 = trunc i64 %indvars.iv.next1212 to i32, !dbg !2242
  %exitcond1215 = icmp eq i32 %lftr.wideiv1214, 2, !dbg !2242
  br i1 %exitcond1215, label %for.end177, label %for.body147, !dbg !2242

for.end177:                                       ; preds = %for.body147
  %39 = load i64* %25, align 16, !dbg !2250
  %40 = trunc i64 %39 to i32, !dbg !2250
  %41 = lshr i64 %39, 32
  %42 = trunc i64 %41 to i32
  %add180 = add nsw i32 %42, %40, !dbg !2250
  %arrayidx184 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 0, !dbg !2250
  store i32 %add180, i32* %arrayidx184, align 4, !dbg !2250, !tbaa !984
  %sub187 = sub nsw i32 %40, %42, !dbg !2251
  %arrayidx191 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 2, !dbg !2251
  store i32 %sub187, i32* %arrayidx191, align 4, !dbg !2251, !tbaa !984
  %43 = load i32* %arrayidx121, align 4, !dbg !2252, !tbaa !984
  %mul193 = shl i32 %43, 1, !dbg !2252
  %44 = load i32* %arrayidx123, align 8, !dbg !2252, !tbaa !984
  %add195 = add nsw i32 %mul193, %44, !dbg !2252
  %arrayidx199 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 1, !dbg !2252
  store i32 %add195, i32* %arrayidx199, align 4, !dbg !2252, !tbaa !984
  %45 = load i32* %arrayidx121, align 4, !dbg !2253, !tbaa !984
  %46 = load i32* %arrayidx123, align 8, !dbg !2253, !tbaa !984
  %mul202 = shl nsw i32 %46, 1, !dbg !2253
  %sub203 = sub nsw i32 %45, %mul202, !dbg !2253
  %arrayidx207 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 3, !dbg !2253
  store i32 %sub203, i32* %arrayidx207, align 4, !dbg !2253, !tbaa !984
  %indvars.iv.next1217 = add i64 %indvars.iv1216, 1, !dbg !2254
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2242
  %lftr.wideiv1218 = trunc i64 %indvars.iv.next1217 to i32, !dbg !2254
  %exitcond1219 = icmp eq i32 %lftr.wideiv1218, 4, !dbg !2254
  br i1 %exitcond1219, label %for.cond215.preheader, label %for.cond144.preheader, !dbg !2254

for.cond215.preheader:                            ; preds = %for.end177, %for.end244
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %for.end244 ], [ 0, %for.end177 ]
  br label %for.body218, !dbg !2255

for.body218:                                      ; preds = %for.body218, %for.cond215.preheader
  %indvars.iv1202 = phi i64 [ 0, %for.cond215.preheader ], [ %indvars.iv.next1203, %for.body218 ]
  %47 = sub nsw i64 3, %indvars.iv1202, !dbg !2259
  %arrayidx223 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1202, i64 %indvars.iv1207, !dbg !2261
  %48 = load i32* %arrayidx223, align 4, !dbg !2261, !tbaa !984
  %arrayidx227 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %47, i64 %indvars.iv1207, !dbg !2261
  %49 = load i32* %arrayidx227, align 4, !dbg !2261, !tbaa !984
  %add228 = add nsw i32 %49, %48, !dbg !2261
  %arrayidx230 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1202, !dbg !2261
  store i32 %add228, i32* %arrayidx230, align 4, !dbg !2261, !tbaa !984
  %sub239 = sub nsw i32 %48, %49, !dbg !2262
  %arrayidx241 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %47, !dbg !2262
  store i32 %sub239, i32* %arrayidx241, align 4, !dbg !2262, !tbaa !984
  %indvars.iv.next1203 = add i64 %indvars.iv1202, 1, !dbg !2255
  %lftr.wideiv1205 = trunc i64 %indvars.iv.next1203 to i32, !dbg !2255
  %exitcond1206 = icmp eq i32 %lftr.wideiv1205, 2, !dbg !2255
  br i1 %exitcond1206, label %for.end244, label %for.body218, !dbg !2255

for.end244:                                       ; preds = %for.body218
  %50 = load i64* %25, align 16, !dbg !2263
  %51 = trunc i64 %50 to i32, !dbg !2263
  %52 = lshr i64 %50, 32
  %53 = trunc i64 %52 to i32
  %add247 = add nsw i32 %53, %51, !dbg !2263
  %arrayidx250 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 0, i64 %indvars.iv1207, !dbg !2263
  store i32 %add247, i32* %arrayidx250, align 4, !dbg !2263, !tbaa !984
  %sub253 = sub nsw i32 %51, %53, !dbg !2264
  %arrayidx256 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 2, i64 %indvars.iv1207, !dbg !2264
  store i32 %sub253, i32* %arrayidx256, align 4, !dbg !2264, !tbaa !984
  %54 = load i32* %arrayidx121, align 4, !dbg !2265, !tbaa !984
  %mul258 = shl i32 %54, 1, !dbg !2265
  %55 = bitcast i32* %arrayidx123 to i64*, !dbg !2265
  %56 = load i64* %55, align 8, !dbg !2265
  %57 = trunc i64 %56 to i32, !dbg !2265
  %add260 = add nsw i32 %mul258, %57, !dbg !2265
  %arrayidx263 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 1, i64 %indvars.iv1207, !dbg !2265
  store i32 %add260, i32* %arrayidx263, align 4, !dbg !2265, !tbaa !984
  %58 = lshr i64 %56, 32
  %59 = trunc i64 %58 to i32
  %mul266 = shl nsw i32 %57, 1, !dbg !2266
  %sub267 = sub nsw i32 %59, %mul266, !dbg !2266
  %arrayidx270 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 3, i64 %indvars.iv1207, !dbg !2266
  store i32 %sub267, i32* %arrayidx270, align 4, !dbg !2266, !tbaa !984
  %indvars.iv.next1208 = add i64 %indvars.iv1207, 1, !dbg !2267
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2255
  %lftr.wideiv1209 = trunc i64 %indvars.iv.next1208 to i32, !dbg !2267
  %exitcond1210 = icmp eq i32 %lftr.wideiv1209, 4, !dbg !2267
  br i1 %exitcond1210, label %for.cond278.preheader, label %for.cond215.preheader, !dbg !2267

for.cond278.preheader:                            ; preds = %for.end244, %for.end307
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %for.end307 ], [ 0, %for.end244 ]
  br label %for.body281, !dbg !2268

for.cond337.preheader:                            ; preds = %for.end307
  %idxprom367 = sext i32 %rem32 to i64, !dbg !2272
  %idxprom395 = sext i32 %rem26 to i64, !dbg !2275
  br label %for.body340, !dbg !2276

for.body281:                                      ; preds = %for.body281, %for.cond278.preheader
  %indvars.iv1193 = phi i64 [ 0, %for.cond278.preheader ], [ %indvars.iv.next1194, %for.body281 ]
  %60 = sub nsw i64 3, %indvars.iv1193, !dbg !2277
  %arrayidx286 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 %indvars.iv1193, !dbg !2279
  %61 = load i32* %arrayidx286, align 4, !dbg !2279, !tbaa !984
  %arrayidx290 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 %60, !dbg !2279
  %62 = load i32* %arrayidx290, align 4, !dbg !2279, !tbaa !984
  %add291 = add nsw i32 %62, %61, !dbg !2279
  %arrayidx293 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1193, !dbg !2279
  store i32 %add291, i32* %arrayidx293, align 4, !dbg !2279, !tbaa !984
  %sub302 = sub nsw i32 %61, %62, !dbg !2280
  %arrayidx304 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %60, !dbg !2280
  store i32 %sub302, i32* %arrayidx304, align 4, !dbg !2280, !tbaa !984
  %indvars.iv.next1194 = add i64 %indvars.iv1193, 1, !dbg !2268
  %lftr.wideiv1196 = trunc i64 %indvars.iv.next1194 to i32, !dbg !2268
  %exitcond1197 = icmp eq i32 %lftr.wideiv1196, 2, !dbg !2268
  br i1 %exitcond1197, label %for.end307, label %for.body281, !dbg !2268

for.end307:                                       ; preds = %for.body281
  %63 = load i64* %25, align 16, !dbg !2281
  %64 = trunc i64 %63 to i32, !dbg !2281
  %65 = lshr i64 %63, 32
  %66 = trunc i64 %65 to i32
  %add310 = add nsw i32 %66, %64, !dbg !2281
  %arrayidx313 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 0, !dbg !2281
  store i32 %add310, i32* %arrayidx313, align 16, !dbg !2281, !tbaa !984
  %sub316 = sub nsw i32 %64, %66, !dbg !2282
  %arrayidx319 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 2, !dbg !2282
  store i32 %sub316, i32* %arrayidx319, align 8, !dbg !2282, !tbaa !984
  %67 = load i32* %arrayidx121, align 4, !dbg !2283, !tbaa !984
  %mul321 = shl i32 %67, 1, !dbg !2283
  %68 = load i64* %55, align 8, !dbg !2283
  %69 = trunc i64 %68 to i32, !dbg !2283
  %add323 = add nsw i32 %mul321, %69, !dbg !2283
  %arrayidx326 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 1, !dbg !2283
  store i32 %add323, i32* %arrayidx326, align 4, !dbg !2283, !tbaa !984
  %70 = lshr i64 %68, 32
  %71 = trunc i64 %70 to i32
  %mul329 = shl nsw i32 %69, 1, !dbg !2284
  %sub330 = sub nsw i32 %71, %mul329, !dbg !2284
  %arrayidx333 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 3, !dbg !2284
  store i32 %sub330, i32* %arrayidx333, align 4, !dbg !2284, !tbaa !984
  %indvars.iv.next1199 = add i64 %indvars.iv1198, 1, !dbg !2285
  %lftr.wideiv1200 = trunc i64 %indvars.iv.next1199 to i32, !dbg !2285
  %exitcond1201 = icmp eq i32 %lftr.wideiv1200, 4, !dbg !2285
  br i1 %exitcond1201, label %for.cond337.preheader, label %for.cond278.preheader, !dbg !2285

for.body340:                                      ; preds = %if.end568, %for.cond337.preheader
  %72 = phi %struct.ImageParameters* [ %12, %for.cond337.preheader ], [ %102, %if.end568 ]
  %indvars.iv1189 = phi i64 [ 0, %for.cond337.preheader ], [ %indvars.iv.next1190, %if.end568 ]
  %scan_pos.01145 = phi i32 [ 0, %for.cond337.preheader ], [ %scan_pos.1, %if.end568 ]
  %run.01144 = phi i32 [ -1, %for.cond337.preheader ], [ %run.1, %if.end568 ]
  %nonzero.01143 = phi i32 [ 0, %for.cond337.preheader ], [ %nonzero.1, %if.end568 ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 100, !dbg !2286
  %73 = load i32* %field_picture, align 4, !dbg !2286, !tbaa !984
  %tobool = icmp eq i32 %73, 0, !dbg !2286
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !2286

lor.lhs.false:                                    ; preds = %for.body340
  %74 = load i32* @mb_adaptive, align 4, !dbg !2286, !tbaa !984
  %tobool341 = icmp eq i32 %74, 0, !dbg !2286
  br i1 %tobool341, label %if.else, label %land.lhs.true, !dbg !2286

land.lhs.true:                                    ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 81, !dbg !2286
  %75 = load i32* %field_mode, align 4, !dbg !2286, !tbaa !984
  %tobool342 = icmp eq i32 %75, 0, !dbg !2286
  br i1 %tobool342, label %if.else, label %if.end, !dbg !2286

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end

if.end:                                           ; preds = %for.body340, %land.lhs.true, %if.else
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body340 ]
  %i.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1189, i64 0, !dbg !2287
  %j.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1189, i64 1, !dbg !2289
  %i.5.in = load i8* %i.5.in.in, align 2, !dbg !2287
  %j.5.in = load i8* %j.5.in.in, align 1, !dbg !2289
  %inc359 = add nsw i32 %run.01144, 1, !dbg !2290
  call void @llvm.dbg.value(metadata !{i32 %inc359}, i64 0, metadata !334), !dbg !2290
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !327), !dbg !2291
  %idxprom360 = zext i8 %j.5.in to i64, !dbg !2272
  %idxprom361 = zext i8 %i.5.in to i64, !dbg !2272
  %arrayidx363 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %idxprom361, i64 %idxprom360, !dbg !2272
  %76 = load i32* %arrayidx363, align 4, !dbg !2272, !tbaa !984
  %ispos = icmp sgt i32 %76, -1, !dbg !2272
  %neg = sub i32 0, %76, !dbg !2272
  %77 = select i1 %ispos, i32 %76, i32 %neg, !dbg !2272
  %arrayidx370 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom367, i64 %idxprom361, i64 %idxprom360, !dbg !2272
  %78 = load i32* %arrayidx370, align 4, !dbg !2272, !tbaa !984
  %mul371 = mul nsw i32 %77, %78, !dbg !2272
  %add372 = add nsw i32 %mul371, %div36, !dbg !2272
  %shr = ashr i32 %add372, %add33, !dbg !2272
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !354), !dbg !2272
  %shl373 = shl i32 %shr, %add33, !dbg !2292
  %div380 = sdiv i32 %shl373, %78, !dbg !2292
  call void @llvm.dbg.value(metadata !{i32 %div380}, i64 0, metadata !354), !dbg !2292
  %arrayidx385 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360, !dbg !2293
  %79 = load i32* %arrayidx385, align 4, !dbg !2293, !tbaa !984
  %call390 = call i32 @sign(i32 %div380, i32 %76) #4, !dbg !2293
  %sub391 = sub nsw i32 %79, %call390, !dbg !2293
  call void @llvm.dbg.value(metadata !{i32 %sub391}, i64 0, metadata !352), !dbg !2293
  %ispos1123 = icmp sgt i32 %sub391, -1, !dbg !2275
  %neg1124 = sub i32 0, %sub391, !dbg !2275
  %80 = select i1 %ispos1123, i32 %sub391, i32 %neg1124, !dbg !2275
  %arrayidx398 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360, !dbg !2275
  %81 = load i32* %arrayidx398, align 4, !dbg !2275, !tbaa !984
  %mul399 = mul nsw i32 %80, %81, !dbg !2275
  %add400 = add nsw i32 %mul399, %div34, !dbg !2275
  %shr401 = ashr i32 %add400, %add27, !dbg !2275
  call void @llvm.dbg.value(metadata !{i32 %shr401}, i64 0, metadata !354), !dbg !2275
  %82 = load %struct.ImageParameters** @img, align 8, !dbg !2294, !tbaa !978
  %arrayidx406 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360, !dbg !2294
  %83 = load i32* %arrayidx406, align 4, !dbg !2294, !tbaa !984
  %sub411 = sub i32 %83, %76, !dbg !2294
  call void @llvm.dbg.value(metadata !{i32 %sub411}, i64 0, metadata !353), !dbg !2294
  %ispos1125 = icmp sgt i32 %sub411, -1, !dbg !2295
  %neg1126 = sub i32 0, %sub411, !dbg !2295
  %84 = select i1 %ispos1125, i32 %sub411, i32 %neg1126, !dbg !2295
  %mul419 = mul nsw i32 %84, %81, !dbg !2295
  %add420 = add nsw i32 %mul419, %div34, !dbg !2295
  %shr421 = ashr i32 %add420, %add27, !dbg !2295
  call void @llvm.dbg.value(metadata !{i32 %shr421}, i64 0, metadata !355), !dbg !2295
  %cmp422 = icmp ne i32 %shr401, %shr421, !dbg !2296
  %cmp425 = icmp ne i32 %shr401, 0, !dbg !2296
  %or.cond = and i1 %cmp422, %cmp425, !dbg !2296
  %cmp428 = icmp ne i32 %shr421, 0, !dbg !2296
  %or.cond850 = and i1 %or.cond, %cmp428, !dbg !2296
  br i1 %or.cond850, label %if.then430, label %if.else513, !dbg !2296

if.then430:                                       ; preds = %if.end
  %call436 = call i32 @sign(i32 %shr401, i32 %sub391) #4, !dbg !2297
  %arrayidx442 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360, !dbg !2297
  %85 = load i32* %arrayidx442, align 4, !dbg !2297, !tbaa !984
  %mul443 = mul nsw i32 %85, %call436, !dbg !2297
  %arrayidx447 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom361, i64 %idxprom360, !dbg !2297
  %86 = load i32* %arrayidx447, align 4, !dbg !2297, !tbaa !984
  %mul448 = mul nsw i32 %mul443, %86, !dbg !2297
  %shl449 = shl i32 %mul448, %div23, !dbg !2297
  %shr450 = ashr i32 %shl449, 6, !dbg !2297
  %sub456 = sub i32 %sub411, %shr450, !dbg !2297
  %conv457 = sitofp i32 %sub456 to double, !dbg !2297
  call void @llvm.dbg.value(metadata !{double %conv457}, i64 0, metadata !356), !dbg !2297
  call void @levrun_linfo_inter(i32 %shr401, i32 %inc359, i32* %len, i32* %info) #4, !dbg !2299
  %mul458 = fmul double %conv457, %conv457, !dbg !2300
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !358), !dbg !2300
  %87 = load i32* %len, align 4, !dbg !2300, !tbaa !984
  %conv459 = sitofp i32 %87 to double, !dbg !2300
  %mul460 = fmul double %mul20, %conv459, !dbg !2300
  %add461 = fadd double %mul460, %mul458, !dbg !2300
  call void @llvm.dbg.value(metadata !{double %add461}, i64 0, metadata !356), !dbg !2300
  %88 = load %struct.ImageParameters** @img, align 8, !dbg !2301, !tbaa !978
  %arrayidx466 = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360, !dbg !2301
  %89 = load i32* %arrayidx466, align 4, !dbg !2301, !tbaa !984
  %call467 = call i32 @sign(i32 %shr421, i32 %sub411) #4, !dbg !2301
  %mul474 = mul nsw i32 %85, %call467, !dbg !2301
  %mul479 = mul nsw i32 %mul474, %86, !dbg !2301
  %shl480 = shl i32 %mul479, %div23, !dbg !2301
  %shr481 = ashr i32 %shl480, 6, !dbg !2301
  %sub482 = sub i32 %89, %76, !dbg !2301
  %sub487 = sub i32 %sub482, %shr481, !dbg !2301
  %conv488 = sitofp i32 %sub487 to double, !dbg !2301
  call void @llvm.dbg.value(metadata !{double %conv488}, i64 0, metadata !357), !dbg !2301
  call void @levrun_linfo_inter(i32 %shr421, i32 %inc359, i32* %len, i32* %info) #4, !dbg !2302
  %mul489 = fmul double %conv488, %conv488, !dbg !2303
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !358), !dbg !2303
  %90 = load i32* %len, align 4, !dbg !2303, !tbaa !984
  %conv490 = sitofp i32 %90 to double, !dbg !2303
  %mul491 = fmul double %mul20, %conv490, !dbg !2303
  %add492 = fadd double %mul491, %mul489, !dbg !2303
  call void @llvm.dbg.value(metadata !{double %add492}, i64 0, metadata !357), !dbg !2303
  %cmp493 = fcmp oeq double %add461, %add492, !dbg !2304
  br i1 %cmp493, label %if.then495, label %if.else500, !dbg !2304

if.then495:                                       ; preds = %if.then430
  %ispos1129 = icmp sgt i32 %shr401, -1, !dbg !2305
  %neg1130 = sub i32 0, %shr401, !dbg !2305
  %91 = select i1 %ispos1129, i32 %shr401, i32 %neg1130, !dbg !2305
  %ispos1131 = icmp sgt i32 %shr421, -1, !dbg !2305
  %neg1132 = sub i32 0, %shr421, !dbg !2305
  %92 = select i1 %ispos1131, i32 %shr421, i32 %neg1132, !dbg !2305
  %cmp498 = icmp slt i32 %91, %92, !dbg !2305
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !332), !dbg !2305
  br label %if.end506, !dbg !2305

if.else500:                                       ; preds = %if.then430
  %cmp501 = fcmp olt double %add461, %add492, !dbg !2306
  br label %if.end506, !dbg !2308

if.end506:                                        ; preds = %if.else500, %if.then495
  %cmp498.sink = phi i1 [ %cmp498, %if.then495 ], [ %cmp501, %if.else500 ]
  %cond = select i1 %cmp498.sink, i32 %shr401, i32 %shr421, !dbg !2305
  %cmp507 = icmp eq i32 %cond, %shr401, !dbg !2309
  %cond512 = select i1 %cmp507, i32 %sub391, i32 %sub411, !dbg !2309
  call void @llvm.dbg.value(metadata !{i32 %cond512}, i64 0, metadata !337), !dbg !2309
  br label %if.end531, !dbg !2310

if.else513:                                       ; preds = %if.end
  %cmp514 = icmp eq i32 %shr401, %shr421, !dbg !2311
  br i1 %cmp514, label %if.end531, label %if.else517, !dbg !2311

if.else517:                                       ; preds = %if.else513
  %cmp518 = icmp eq i32 %shr401, 0, !dbg !2312
  %cond523 = select i1 %cmp518, i32 0, i32 %shr421, !dbg !2312
  call void @llvm.dbg.value(metadata !{i32 %cond523}, i64 0, metadata !332), !dbg !2312
  %cond529 = select i1 %cmp518, i32 %sub391, i32 %sub411, !dbg !2314
  call void @llvm.dbg.value(metadata !{i32 %cond529}, i64 0, metadata !337), !dbg !2314
  br label %if.end531

if.end531:                                        ; preds = %if.else513, %if.else517, %if.end506
  %c_err.0 = phi i32 [ %cond512, %if.end506 ], [ %cond529, %if.else517 ], [ %sub391, %if.else513 ]
  %level.1 = phi i32 [ %cond, %if.end506 ], [ %cond523, %if.else517 ], [ %shr401, %if.else513 ]
  %cmp532 = icmp eq i32 %level.1, 0, !dbg !2315
  br i1 %cmp532, label %if.end568, label %if.then534, !dbg !2315

if.then534:                                       ; preds = %if.end531
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !335), !dbg !2316
  %cmp535 = icmp sgt i32 %level.1, 1, !dbg !2318
  br i1 %cmp535, label %if.then537, label %if.else539, !dbg !2318

if.then537:                                       ; preds = %if.then534
  %93 = load i32* %coeff_cost, align 4, !dbg !2319, !tbaa !984
  %add538 = add nsw i32 %93, 999999, !dbg !2319
  br label %if.end546, !dbg !2319

if.else539:                                       ; preds = %if.then534
  %idxprom540 = sext i32 %inc359 to i64, !dbg !2320
  %94 = load %struct.InputParameters** @input, align 8, !dbg !2320, !tbaa !978
  %disthres = getelementptr inbounds %struct.InputParameters* %94, i64 0, i32 86, !dbg !2320
  %95 = load i32* %disthres, align 4, !dbg !2320, !tbaa !984
  %idxprom541 = sext i32 %95 to i64, !dbg !2320
  %arrayidx543 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom541, i64 %idxprom540, !dbg !2320
  %96 = load i8* %arrayidx543, align 1, !dbg !2320, !tbaa !979
  %conv544 = zext i8 %96 to i32, !dbg !2320
  %97 = load i32* %coeff_cost, align 4, !dbg !2320, !tbaa !984
  %add545 = add nsw i32 %97, %conv544, !dbg !2320
  br label %if.end546

if.end546:                                        ; preds = %if.else539, %if.then537
  %storemerge = phi i32 [ %add545, %if.else539 ], [ %add538, %if.then537 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !dbg !2319, !tbaa !984
  %call547 = call i32 @sign(i32 %level.1, i32 %c_err.0) #4, !dbg !2321
  %idxprom548 = sext i32 %scan_pos.01145 to i64, !dbg !2321
  %arrayidx549 = getelementptr inbounds i32* %5, i64 %idxprom548, !dbg !2321
  store i32 %call547, i32* %arrayidx549, align 4, !dbg !2321, !tbaa !984
  %arrayidx551 = getelementptr inbounds i32* %6, i64 %idxprom548, !dbg !2322
  store i32 %inc359, i32* %arrayidx551, align 4, !dbg !2322, !tbaa !984
  %inc552 = add nsw i32 %scan_pos.01145, 1, !dbg !2323
  call void @llvm.dbg.value(metadata !{i32 %inc552}, i64 0, metadata !333), !dbg !2323
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !334), !dbg !2324
  %call553 = call i32 @sign(i32 %level.1, i32 %c_err.0) #4, !dbg !2325
  %arrayidx559 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360, !dbg !2325
  %98 = load i32* %arrayidx559, align 4, !dbg !2325, !tbaa !984
  %mul560 = mul nsw i32 %98, %call553, !dbg !2325
  %arrayidx564 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom361, i64 %idxprom360, !dbg !2325
  %99 = load i32* %arrayidx564, align 4, !dbg !2325, !tbaa !984
  %mul565 = mul nsw i32 %mul560, %99, !dbg !2325
  %shl566 = shl i32 %mul565, %div23, !dbg !2325
  %shr567 = ashr i32 %shl566, 6, !dbg !2325
  call void @llvm.dbg.value(metadata !{i32 %shr567}, i64 0, metadata !327), !dbg !2325
  br label %if.end568, !dbg !2326

if.end568:                                        ; preds = %if.end531, %if.end546
  %nonzero.1 = phi i32 [ 1, %if.end546 ], [ %nonzero.01143, %if.end531 ]
  %run.1 = phi i32 [ -1, %if.end546 ], [ %inc359, %if.end531 ]
  %scan_pos.1 = phi i32 [ %inc552, %if.end546 ], [ %scan_pos.01145, %if.end531 ]
  %ilev.0 = phi i32 [ %shr567, %if.end546 ], [ 0, %if.end531 ]
  %add573 = add nsw i32 %76, %ilev.0, !dbg !2327
  call void @llvm.dbg.value(metadata !{i32 %add573}, i64 0, metadata !327), !dbg !2327
  %ispos1127 = icmp sgt i32 %add573, -1, !dbg !2328
  %neg1128 = sub i32 0, %add573, !dbg !2328
  %100 = select i1 %ispos1127, i32 %add573, i32 %neg1128, !dbg !2328
  %mul581 = mul nsw i32 %100, %78, !dbg !2328
  %add582 = add nsw i32 %mul581, %div36, !dbg !2328
  %shr583 = ashr i32 %add582, %add33, !dbg !2328
  %call584 = call i32 @sign(i32 %shr583, i32 %add573) #4, !dbg !2328
  %arrayidx590 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom367, i64 %idxprom361, i64 %idxprom360, !dbg !2328
  %101 = load i32* %arrayidx590, align 4, !dbg !2328, !tbaa !984
  %mul591 = mul nsw i32 %101, %call584, !dbg !2328
  %shl592 = shl i32 %mul591, %div29, !dbg !2328
  %102 = load %struct.ImageParameters** @img, align 8, !dbg !2328, !tbaa !978
  %arrayidx597 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360, !dbg !2328
  store i32 %shl592, i32* %arrayidx597, align 4, !dbg !2328, !tbaa !984
  %indvars.iv.next1190 = add i64 %indvars.iv1189, 1, !dbg !2276
  %lftr.wideiv1191 = trunc i64 %indvars.iv.next1190 to i32, !dbg !2276
  %exitcond1192 = icmp eq i32 %lftr.wideiv1191, 16, !dbg !2276
  br i1 %exitcond1192, label %for.end600, label %for.body340, !dbg !2276

for.end600:                                       ; preds = %if.end568
  %idxprom601 = sext i32 %scan_pos.1 to i64, !dbg !2329
  %arrayidx602 = getelementptr inbounds i32* %5, i64 %idxprom601, !dbg !2329
  store i32 0, i32* %arrayidx602, align 4, !dbg !2329, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2330
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2332
  %arrayidx624 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !2335
  %arrayidx628 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !2336
  %arrayidx633 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !2337
  %arrayidx638 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !2338
  br label %for.cond607.preheader, !dbg !2330

for.cond607.preheader:                            ; preds = %for.inc667, %for.end600
  %indvars.iv1185 = phi i64 [ 0, %for.end600 ], [ %indvars.iv.next1186, %for.inc667 ]
  br label %for.body610, !dbg !2332

for.cond670.preheader:                            ; preds = %for.inc667
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2339
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 155, !dbg !2343
  br label %for.cond674.preheader, !dbg !2346

for.body610:                                      ; preds = %for.body610, %for.cond607.preheader
  %indvars.iv1176 = phi i64 [ 0, %for.cond607.preheader ], [ %indvars.iv.next1177, %for.body610 ]
  %arrayidx615 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1176, i64 %indvars.iv1185, !dbg !2347
  %103 = load i32* %arrayidx615, align 4, !dbg !2347, !tbaa !984
  %arrayidx617 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1176, !dbg !2347
  store i32 %103, i32* %arrayidx617, align 4, !dbg !2347, !tbaa !984
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 1, !dbg !2332
  %lftr.wideiv1178 = trunc i64 %indvars.iv.next1177 to i32, !dbg !2332
  %exitcond1179 = icmp eq i32 %lftr.wideiv1178, 4, !dbg !2332
  br i1 %exitcond1179, label %for.end620, label %for.body610, !dbg !2332

for.end620:                                       ; preds = %for.body610
  %104 = load i64* %25, align 16, !dbg !2335
  %105 = trunc i64 %104 to i32, !dbg !2335
  %106 = load i64* %55, align 8, !dbg !2335
  %107 = trunc i64 %106 to i32, !dbg !2335
  %add623 = add nsw i32 %107, %105, !dbg !2335
  store i32 %add623, i32* %arrayidx624, align 16, !dbg !2335, !tbaa !984
  %sub627 = sub nsw i32 %105, %107, !dbg !2336
  store i32 %sub627, i32* %arrayidx628, align 4, !dbg !2336, !tbaa !984
  %108 = lshr i64 %104, 32
  %109 = trunc i64 %108 to i32
  %shr630 = ashr i32 %109, 1, !dbg !2337
  %110 = lshr i64 %106, 32
  %111 = trunc i64 %110 to i32
  %sub632 = sub nsw i32 %shr630, %111, !dbg !2337
  store i32 %sub632, i32* %arrayidx633, align 8, !dbg !2337, !tbaa !984
  %shr636 = ashr i32 %111, 1, !dbg !2338
  %add637 = add nsw i32 %shr636, %109, !dbg !2338
  store i32 %add637, i32* %arrayidx638, align 4, !dbg !2338, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2349
  br label %for.body642, !dbg !2349

for.body642:                                      ; preds = %for.body642.for.body642_crit_edge, %for.end620
  %112 = phi i32 [ %add623, %for.end620 ], [ %.pre, %for.body642.for.body642_crit_edge ]
  %indvars.iv1180 = phi i64 [ 0, %for.end620 ], [ %indvars.iv.next1181, %for.body642.for.body642_crit_edge ]
  %113 = sub nsw i64 3, %indvars.iv1180, !dbg !2351
  %arrayidx647 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %113, !dbg !2353
  %114 = load i32* %arrayidx647, align 4, !dbg !2353, !tbaa !984
  %add648 = add nsw i32 %114, %112, !dbg !2353
  %arrayidx653 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1180, i64 %indvars.iv1185, !dbg !2353
  store i32 %add648, i32* %arrayidx653, align 4, !dbg !2353, !tbaa !984
  %sub658 = sub nsw i32 %112, %114, !dbg !2354
  %arrayidx663 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %113, i64 %indvars.iv1185, !dbg !2354
  store i32 %sub658, i32* %arrayidx663, align 4, !dbg !2354, !tbaa !984
  %indvars.iv.next1181 = add i64 %indvars.iv1180, 1, !dbg !2349
  %lftr.wideiv1183 = trunc i64 %indvars.iv.next1181 to i32, !dbg !2349
  %exitcond1184 = icmp eq i32 %lftr.wideiv1183, 2, !dbg !2349
  br i1 %exitcond1184, label %for.inc667, label %for.body642.for.body642_crit_edge, !dbg !2349

for.body642.for.body642_crit_edge:                ; preds = %for.body642
  %arrayidx645.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1181
  %.pre = load i32* %arrayidx645.phi.trans.insert, align 4, !dbg !2353, !tbaa !984
  br label %for.body642, !dbg !2349

for.inc667:                                       ; preds = %for.body642
  %indvars.iv.next1186 = add i64 %indvars.iv1185, 1, !dbg !2330
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !2332
  %lftr.wideiv1187 = trunc i64 %indvars.iv.next1186 to i32, !dbg !2330
  %exitcond1188 = icmp eq i32 %lftr.wideiv1187, 4, !dbg !2330
  br i1 %exitcond1188, label %for.cond670.preheader, label %for.cond607.preheader, !dbg !2330

for.cond674.preheader:                            ; preds = %for.inc819, %for.cond670.preheader
  %indvars.iv1172 = phi i64 [ 0, %for.cond670.preheader ], [ %indvars.iv.next1173, %for.inc819 ]
  br label %for.body677, !dbg !2339

for.cond822.preheader:                            ; preds = %for.inc819
  %pix_x = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 33, !dbg !2355
  %115 = load i32* %pix_x, align 4, !dbg !2355, !tbaa !984
  %pix_y = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 34, !dbg !2355
  %116 = load i32* %pix_y, align 4, !dbg !2355, !tbaa !984
  %117 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2355, !tbaa !978
  %imgY = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 25, !dbg !2355
  %118 = load i16*** %imgY, align 8, !dbg !2355, !tbaa !978
  br label %for.cond826.preheader, !dbg !2358

for.body677:                                      ; preds = %for.body677, %for.cond674.preheader
  %indvars.iv1162 = phi i64 [ 0, %for.cond674.preheader ], [ %indvars.iv.next1163, %for.body677 ]
  %arrayidx682 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %indvars.iv1162, !dbg !2359
  %119 = load i32* %arrayidx682, align 4, !dbg !2359, !tbaa !984
  %arrayidx684 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1162, !dbg !2359
  store i32 %119, i32* %arrayidx684, align 4, !dbg !2359, !tbaa !984
  %indvars.iv.next1163 = add i64 %indvars.iv1162, 1, !dbg !2339
  %lftr.wideiv1164 = trunc i64 %indvars.iv.next1163 to i32, !dbg !2339
  %exitcond1165 = icmp eq i32 %lftr.wideiv1164, 4, !dbg !2339
  br i1 %exitcond1165, label %for.end687, label %for.body677, !dbg !2339

for.end687:                                       ; preds = %for.body677
  %120 = load i64* %25, align 16, !dbg !2361
  %121 = trunc i64 %120 to i32, !dbg !2361
  %122 = load i64* %55, align 8, !dbg !2361
  %123 = trunc i64 %122 to i32, !dbg !2361
  %add690 = add nsw i32 %123, %121, !dbg !2361
  store i32 %add690, i32* %arrayidx624, align 16, !dbg !2361, !tbaa !984
  %sub694 = sub nsw i32 %121, %123, !dbg !2362
  store i32 %sub694, i32* %arrayidx628, align 4, !dbg !2362, !tbaa !984
  %124 = lshr i64 %120, 32
  %125 = trunc i64 %124 to i32
  %shr697 = ashr i32 %125, 1, !dbg !2363
  %126 = lshr i64 %122, 32
  %127 = trunc i64 %126 to i32
  %sub699 = sub nsw i32 %shr697, %127, !dbg !2363
  store i32 %sub699, i32* %arrayidx633, align 8, !dbg !2363, !tbaa !984
  %shr703 = ashr i32 %127, 1, !dbg !2364
  %add704 = add nsw i32 %shr703, %125, !dbg !2364
  store i32 %add704, i32* %arrayidx638, align 4, !dbg !2364, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2365
  br label %for.body709, !dbg !2365

for.body709:                                      ; preds = %for.body709.for.body709_crit_edge, %for.end687
  %128 = phi i32 [ %add690, %for.end687 ], [ %.pre1242, %for.body709.for.body709_crit_edge ]
  %indvars.iv1167 = phi i64 [ 0, %for.end687 ], [ %indvars.iv.next1168, %for.body709.for.body709_crit_edge ]
  %129 = sub nsw i64 3, %indvars.iv1167, !dbg !2366
  %130 = load i32* %max_imgpel_value, align 4, !dbg !2343, !tbaa !984
  %arrayidx714 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %129, !dbg !2343
  %131 = load i32* %arrayidx714, align 4, !dbg !2343, !tbaa !984
  %add715 = add i32 %128, 32, !dbg !2343
  %add716 = add i32 %add715, %131, !dbg !2343
  %shr717 = ashr i32 %add716, 6, !dbg !2343
  %cmp718 = icmp slt i32 %shr717, 0, !dbg !2343
  %.shr717 = select i1 %cmp718, i32 0, i32 %shr717, !dbg !2343
  %cmp731 = icmp slt i32 %130, %.shr717, !dbg !2343
  %..shr717 = select i1 %cmp731, i32 %130, i32 %.shr717, !dbg !2343
  %arrayidx762 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %indvars.iv1167, !dbg !2343
  store i32 %..shr717, i32* %arrayidx762, align 4, !dbg !2343, !tbaa !984
  %132 = load i32* %max_imgpel_value, align 4, !dbg !2367, !tbaa !984
  %add769 = sub i32 %add715, %131, !dbg !2367
  %shr770 = ashr i32 %add769, 6, !dbg !2367
  %cmp771 = icmp slt i32 %shr770, 0, !dbg !2367
  %.shr770 = select i1 %cmp771, i32 0, i32 %shr770, !dbg !2367
  %cmp784 = icmp slt i32 %132, %.shr770, !dbg !2367
  %cond810 = select i1 %cmp784, i32 %132, i32 %.shr770, !dbg !2367
  %arrayidx815 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %129, !dbg !2367
  store i32 %cond810, i32* %arrayidx815, align 4, !dbg !2367, !tbaa !984
  %indvars.iv.next1168 = add i64 %indvars.iv1167, 1, !dbg !2365
  %lftr.wideiv1170 = trunc i64 %indvars.iv.next1168 to i32, !dbg !2365
  %exitcond1171 = icmp eq i32 %lftr.wideiv1170, 2, !dbg !2365
  br i1 %exitcond1171, label %for.inc819, label %for.body709.for.body709_crit_edge, !dbg !2365

for.body709.for.body709_crit_edge:                ; preds = %for.body709
  %arrayidx712.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1168
  %.pre1242 = load i32* %arrayidx712.phi.trans.insert, align 4, !dbg !2343, !tbaa !984
  br label %for.body709, !dbg !2365

for.inc819:                                       ; preds = %for.body709
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1, !dbg !2346
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !324), !dbg !2339
  %lftr.wideiv1174 = trunc i64 %indvars.iv.next1173 to i32, !dbg !2346
  %exitcond1175 = icmp eq i32 %lftr.wideiv1174, 4, !dbg !2346
  br i1 %exitcond1175, label %for.cond822.preheader, label %for.cond674.preheader, !dbg !2346

for.cond826.preheader:                            ; preds = %for.inc847, %for.cond822.preheader
  %indvars.iv1158 = phi i64 [ 0, %for.cond822.preheader ], [ %indvars.iv.next1159, %for.inc847 ]
  %133 = trunc i64 %indvars.iv1158 to i32, !dbg !2355
  %add839 = add i32 %133, %block_y, !dbg !2355
  %add840 = add i32 %add839, %116, !dbg !2355
  %idxprom841 = sext i32 %add840 to i64, !dbg !2355
  %arrayidx842 = getelementptr inbounds i16** %118, i64 %idxprom841, !dbg !2355
  %134 = load i16** %arrayidx842, align 8, !dbg !2355, !tbaa !978
  br label %for.body829, !dbg !2368

for.body829:                                      ; preds = %for.body829, %for.cond826.preheader
  %indvars.iv = phi i64 [ 0, %for.cond826.preheader ], [ %indvars.iv.next, %for.body829 ]
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1158, !dbg !2355
  %135 = load i32* %arrayidx834, align 4, !dbg !2355, !tbaa !984
  %conv835 = trunc i32 %135 to i16, !dbg !2355
  %136 = trunc i64 %indvars.iv to i32, !dbg !2355
  %add836 = add i32 %136, %block_x, !dbg !2355
  %add837 = add i32 %add836, %115, !dbg !2355
  %idxprom838 = sext i32 %add837 to i64, !dbg !2355
  %arrayidx843 = getelementptr inbounds i16* %134, i64 %idxprom838, !dbg !2355
  store i16 %conv835, i16* %arrayidx843, align 2, !dbg !2355, !tbaa !1014
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2368
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2368
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2368
  br i1 %exitcond, label %for.inc847, label %for.body829, !dbg !2368

for.inc847:                                       ; preds = %for.body829
  %indvars.iv.next1159 = add i64 %indvars.iv1158, 1, !dbg !2358
  %lftr.wideiv1160 = trunc i64 %indvars.iv.next1159 to i32, !dbg !2358
  %exitcond1161 = icmp eq i32 %lftr.wideiv1160, 4, !dbg !2358
  br i1 %exitcond1161, label %for.end849, label %for.cond826.preheader, !dbg !2358

for.end849:                                       ; preds = %for.inc847
  call void @llvm.lifetime.end(i64 64, i8* %0) #2, !dbg !2369
  ret i32 %nonzero.1, !dbg !2369
}

; Function Attrs: optsize
declare void @levrun_linfo_inter(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma_sp(i32 %uv, i32 %cr_cbp) #0 {
entry:
  %m1 = alloca [4 x i32], align 16
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_chroma_block = alloca [8 x [8 x i32]], align 16
  %mp1 = alloca [4 x i32], align 16
  %len = alloca i32, align 4
  %info = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %uv}, i64 0, metadata !363), !dbg !2370
  call void @llvm.dbg.value(metadata !{i32 %cr_cbp}, i64 0, metadata !364), !dbg !2370
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m1}, metadata !380), !dbg !2371
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !381), !dbg !2371
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !382), !dbg !2371
  %0 = bitcast [8 x [8 x i32]]* %predicted_chroma_block to i8*, !dbg !2372
  call void @llvm.lifetime.start(i64 256, i8* %0) #2, !dbg !2372
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i32]]* %predicted_chroma_block}, metadata !385), !dbg !2372
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %mp1}, metadata !389), !dbg !2372
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2373, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2373
  %2 = load i32* %current_mb_nr, align 4, !dbg !2373, !tbaa !984
  %idxprom = sext i32 %2 to i64, !dbg !2373
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !2373
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !2373, !tbaa !978
  %add = add nsw i32 %uv, 1, !dbg !2374
  %idxprom1 = sext i32 %add to i64, !dbg !2374
  %cofDC = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 48, !dbg !2374
  %4 = load i32**** %cofDC, align 8, !dbg !2374, !tbaa !978
  %arrayidx2 = getelementptr inbounds i32*** %4, i64 %idxprom1, !dbg !2374
  %5 = load i32*** %arrayidx2, align 8, !dbg !2374, !tbaa !978
  %6 = load i32** %5, align 8, !dbg !2374, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !398), !dbg !2374
  %arrayidx8 = getelementptr inbounds i32** %5, i64 1, !dbg !2375
  %7 = load i32** %arrayidx8, align 8, !dbg !2375, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !399), !dbg !2375
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !406), !dbg !2376
  call void @llvm.dbg.declare(metadata !{i32* %info}, metadata !407), !dbg !2376
  %qp = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 3, !dbg !2377
  %8 = load i32* %qp, align 4, !dbg !2377, !tbaa !984
  %sub = add nsw i32 %8, -12, !dbg !2377
  %conv = sitofp i32 %sub to double, !dbg !2377
  %div = fdiv double %conv, 3.000000e+00, !dbg !2377
  %exp2 = call double @exp2(double %div) #5, !dbg !2377
  %mul = fmul double %exp2, 8.500000e-01, !dbg !2377
  %mul9 = fmul double %mul, 4.000000e+00, !dbg !2377
  call void @llvm.dbg.value(metadata !{double %mul9}, i64 0, metadata !410), !dbg !2377
  %9 = load i32* %qp, align 4, !dbg !2378, !tbaa !984
  %10 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !2378, !tbaa !978
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %10, i64 0, i32 23, !dbg !2378
  %11 = load i32* %chroma_qp_index_offset, align 4, !dbg !2378, !tbaa !984
  %add11 = add nsw i32 %11, %9, !dbg !2378
  %cmp = icmp slt i32 %add11, 0, !dbg !2378
  br i1 %cmp, label %cond.end23, label %cond.false, !dbg !2378

cond.false:                                       ; preds = %entry
  %cmp16 = icmp sgt i32 %add11, 51, !dbg !2378
  %.add11 = select i1 %cmp16, i32 51, i32 %add11, !dbg !2378
  br label %cond.end23, !dbg !2378

cond.end23:                                       ; preds = %cond.false, %entry
  %cond24 = phi i32 [ 0, %entry ], [ %.add11, %cond.false ], !dbg !2378
  call void @llvm.dbg.value(metadata !{i32 %cond24}, i64 0, metadata !411), !dbg !2378
  %qpsp = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 4, !dbg !2379
  %12 = load i32* %qpsp, align 4, !dbg !2379, !tbaa !984
  %add26 = add nsw i32 %11, %12, !dbg !2379
  %cmp27 = icmp slt i32 %add26, 0, !dbg !2379
  br i1 %cmp27, label %cond.end43, label %cond.false30, !dbg !2379

cond.false30:                                     ; preds = %cond.end23
  %cmp34 = icmp sgt i32 %add26, 51, !dbg !2379
  %.add26 = select i1 %cmp34, i32 51, i32 %add26, !dbg !2379
  br label %cond.end43, !dbg !2379

cond.end43:                                       ; preds = %cond.false30, %cond.end23
  %cond44 = phi i32 [ 0, %cond.end23 ], [ %.add26, %cond.false30 ], !dbg !2379
  call void @llvm.dbg.value(metadata !{i32 %cond44}, i64 0, metadata !412), !dbg !2379
  %cmp45 = icmp slt i32 %cond24, 0, !dbg !2380
  br i1 %cmp45, label %cond.end52.thread, label %cond.false59, !dbg !2380

cond.end52.thread:                                ; preds = %cond.end43
  %div551954 = sdiv i32 %cond24, 6, !dbg !2380
  call void @llvm.dbg.value(metadata !{i32 %div551955}, i64 0, metadata !391), !dbg !2380
  br label %cond.end63, !dbg !2381

cond.false59:                                     ; preds = %cond.end43
  %idxprom49 = sext i32 %cond24 to i64, !dbg !2380
  %arrayidx50 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom49, !dbg !2380
  %13 = load i8* %arrayidx50, align 1, !dbg !2380, !tbaa !979
  %div1959 = udiv i8 %13, 6, !dbg !2380
  %div55 = zext i8 %div1959 to i32, !dbg !2380
  call void @llvm.dbg.value(metadata !{i32 %div551955}, i64 0, metadata !391), !dbg !2380
  %conv62 = zext i8 %13 to i32, !dbg !2381
  br label %cond.end63, !dbg !2381

cond.end63:                                       ; preds = %cond.end52.thread, %cond.false59
  %div551955 = phi i32 [ %div55, %cond.false59 ], [ %div551954, %cond.end52.thread ]
  %cond64 = phi i32 [ %conv62, %cond.false59 ], [ %cond24, %cond.end52.thread ], !dbg !2381
  %rem = srem i32 %cond64, 6, !dbg !2381
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !392), !dbg !2381
  %add66 = add nsw i32 %div551955, 15, !dbg !2382
  call void @llvm.dbg.value(metadata !{i32 %add66}, i64 0, metadata !393), !dbg !2382
  %shl = shl i32 1, %add66, !dbg !2383
  %div67 = sdiv i32 %shl, 6, !dbg !2383
  call void @llvm.dbg.value(metadata !{i32 %div67}, i64 0, metadata !375), !dbg !2383
  %cmp68 = icmp slt i32 %cond44, 0, !dbg !2384
  br i1 %cmp68, label %cond.true82, label %cond.false84, !dbg !2384

cond.true82:                                      ; preds = %cond.end63
  %div791956 = sdiv i32 %12, 6, !dbg !2384
  call void @llvm.dbg.value(metadata !{i32 %div791957}, i64 0, metadata !394), !dbg !2384
  br label %cond.end88, !dbg !2385

cond.false84:                                     ; preds = %cond.end63
  %idxprom73 = sext i32 %cond44 to i64, !dbg !2384
  %arrayidx74 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom73, !dbg !2384
  %14 = load i8* %arrayidx74, align 1, !dbg !2384, !tbaa !979
  %div1960 = udiv i8 %14, 6, !dbg !2384
  %div79 = zext i8 %div1960 to i32, !dbg !2384
  call void @llvm.dbg.value(metadata !{i32 %div791957}, i64 0, metadata !394), !dbg !2384
  %conv87 = zext i8 %14 to i32, !dbg !2385
  br label %cond.end88, !dbg !2385

cond.end88:                                       ; preds = %cond.false84, %cond.true82
  %div791957 = phi i32 [ %div791956, %cond.true82 ], [ %div79, %cond.false84 ]
  %cond89 = phi i32 [ %12, %cond.true82 ], [ %conv87, %cond.false84 ], !dbg !2385
  call void @llvm.dbg.value(metadata !{i32 %rem91}, i64 0, metadata !395), !dbg !2385
  %add92 = add nsw i32 %div791957, 15, !dbg !2386
  call void @llvm.dbg.value(metadata !{i32 %add92}, i64 0, metadata !396), !dbg !2386
  %shl93 = shl i32 1, %add92, !dbg !2387
  call void @llvm.dbg.value(metadata !{i32 %div94}, i64 0, metadata !388), !dbg !2387
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !366), !dbg !2388
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !2390, !tbaa !978
  br label %for.cond97.preheader, !dbg !2388

for.cond97.preheader:                             ; preds = %for.inc121, %cond.end88
  %indvars.iv2150 = phi i64 [ 0, %cond.end88 ], [ %indvars.iv.next2151, %for.inc121 ]
  br label %for.body100, !dbg !2393

for.cond124.preheader:                            ; preds = %for.inc121
  %rem91 = srem i32 %cond89, 6, !dbg !2385
  %div94 = sdiv i32 %shl93, 2, !dbg !2387
  %arrayidx192 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !2394
  %arrayidx194 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !2394
  br label %for.cond128.preheader, !dbg !2401

for.body100:                                      ; preds = %for.body100, %for.cond97.preheader
  %indvars.iv2146 = phi i64 [ 0, %for.cond97.preheader ], [ %indvars.iv.next2147, %for.body100 ]
  %arrayidx104 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 45, i64 %indvars.iv2146, i64 %indvars.iv2150, !dbg !2390
  %16 = load i16* %arrayidx104, align 2, !dbg !2390, !tbaa !1014
  %conv105 = zext i16 %16 to i32, !dbg !2390
  %arrayidx109 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %indvars.iv2146, i64 %indvars.iv2150, !dbg !2390
  %17 = load i32* %arrayidx109, align 4, !dbg !2390, !tbaa !984
  %add110 = add nsw i32 %17, %conv105, !dbg !2390
  store i32 %add110, i32* %arrayidx109, align 4, !dbg !2390, !tbaa !984
  %18 = load i16* %arrayidx104, align 2, !dbg !2402, !tbaa !1014
  %conv116 = zext i16 %18 to i32, !dbg !2402
  %arrayidx120 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %indvars.iv2146, i64 %indvars.iv2150, !dbg !2402
  store i32 %conv116, i32* %arrayidx120, align 4, !dbg !2402, !tbaa !984
  %indvars.iv.next2147 = add i64 %indvars.iv2146, 1, !dbg !2393
  %lftr.wideiv2148 = trunc i64 %indvars.iv.next2147 to i32, !dbg !2393
  %exitcond2149 = icmp eq i32 %lftr.wideiv2148, 8, !dbg !2393
  br i1 %exitcond2149, label %for.inc121, label %for.body100, !dbg !2393

for.inc121:                                       ; preds = %for.body100
  %indvars.iv.next2151 = add i64 %indvars.iv2150, 1, !dbg !2388
  %lftr.wideiv2152 = trunc i64 %indvars.iv.next2151 to i32, !dbg !2388
  %exitcond2153 = icmp eq i32 %lftr.wideiv2152, 8, !dbg !2388
  br i1 %exitcond2153, label %for.cond124.preheader, label %for.cond97.preheader, !dbg !2388

for.cond128.preheader:                            ; preds = %for.cond124.preheader, %for.inc302
  %indvars.iv2141 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next2142, %for.inc302 ]
  %19 = or i64 %indvars.iv2141, 2, !dbg !2403
  %20 = or i64 %indvars.iv2141, 1, !dbg !2406
  %21 = or i64 %indvars.iv2141, 3, !dbg !2407
  br label %for.cond132.preheader, !dbg !2408

for.cond132.preheader:                            ; preds = %for.cond128.preheader, %for.inc299
  %indvars.iv2136 = phi i64 [ 0, %for.cond128.preheader ], [ %indvars.iv.next2137, %for.inc299 ]
  %22 = or i64 %indvars.iv2136, 2, !dbg !2409
  %23 = or i64 %indvars.iv2136, 1, !dbg !2394
  %24 = or i64 %indvars.iv2136, 3, !dbg !2410
  br label %for.body135, !dbg !2411

for.body135:                                      ; preds = %for.end174, %for.cond132.preheader
  %indvars.iv2119 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next2120, %for.end174 ]
  %25 = add nsw i64 %indvars.iv2119, %indvars.iv2141, !dbg !2412
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !365), !dbg !2413
  br label %for.body140, !dbg !2413

for.body140:                                      ; preds = %for.body140, %for.body135
  %indvars.iv2112 = phi i64 [ 0, %for.body135 ], [ %indvars.iv.next2113, %for.body140 ]
  %26 = sub nsw i64 3, %indvars.iv2112, !dbg !2415
  %27 = add nsw i64 %indvars.iv2112, %indvars.iv2136, !dbg !2417
  %arrayidx147 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %27, i64 %25, !dbg !2417
  %28 = load i32* %arrayidx147, align 4, !dbg !2417, !tbaa !984
  %29 = add nsw i64 %26, %indvars.iv2136, !dbg !2417
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %29, i64 %25, !dbg !2417
  %30 = load i32* %arrayidx153, align 4, !dbg !2417, !tbaa !984
  %add154 = add nsw i32 %30, %28, !dbg !2417
  %arrayidx156 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2112, !dbg !2417
  store i32 %add154, i32* %arrayidx156, align 4, !dbg !2417, !tbaa !984
  %31 = load i32* %arrayidx147, align 4, !dbg !2418, !tbaa !984
  %32 = load i32* %arrayidx153, align 4, !dbg !2418, !tbaa !984
  %sub169 = sub nsw i32 %31, %32, !dbg !2418
  %arrayidx171 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %26, !dbg !2418
  store i32 %sub169, i32* %arrayidx171, align 4, !dbg !2418, !tbaa !984
  %indvars.iv.next2113 = add i64 %indvars.iv2112, 1, !dbg !2413
  %lftr.wideiv2117 = trunc i64 %indvars.iv.next2113 to i32, !dbg !2413
  %exitcond2118 = icmp eq i32 %lftr.wideiv2117, 2, !dbg !2413
  br i1 %exitcond2118, label %for.end174, label %for.body140, !dbg !2413

for.end174:                                       ; preds = %for.body140
  %33 = bitcast [4 x i32]* %m5 to i64*, !dbg !2419
  %34 = load i64* %33, align 16, !dbg !2419
  %35 = trunc i64 %34 to i32, !dbg !2419
  %36 = lshr i64 %34, 32
  %37 = trunc i64 %36 to i32
  %add177 = add nsw i32 %37, %35, !dbg !2419
  %arrayidx182 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %indvars.iv2136, i64 %25, !dbg !2419
  store i32 %add177, i32* %arrayidx182, align 4, !dbg !2419, !tbaa !984
  %sub185 = sub nsw i32 %35, %37, !dbg !2409
  %arrayidx191 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %22, i64 %25, !dbg !2409
  store i32 %sub185, i32* %arrayidx191, align 4, !dbg !2409, !tbaa !984
  %38 = load i32* %arrayidx192, align 4, !dbg !2394, !tbaa !984
  %mul193 = shl i32 %38, 1, !dbg !2394
  %39 = load i32* %arrayidx194, align 8, !dbg !2394, !tbaa !984
  %add195 = add nsw i32 %mul193, %39, !dbg !2394
  %arrayidx201 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %23, i64 %25, !dbg !2394
  store i32 %add195, i32* %arrayidx201, align 4, !dbg !2394, !tbaa !984
  %40 = load i32* %arrayidx192, align 4, !dbg !2410, !tbaa !984
  %41 = load i32* %arrayidx194, align 8, !dbg !2410, !tbaa !984
  %mul204 = shl nsw i32 %41, 1, !dbg !2410
  %sub205 = sub nsw i32 %40, %mul204, !dbg !2410
  %arrayidx211 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %24, i64 %25, !dbg !2410
  store i32 %sub205, i32* %arrayidx211, align 4, !dbg !2410, !tbaa !984
  %indvars.iv.next2120 = add i64 %indvars.iv2119, 1, !dbg !2411
  %lftr.wideiv2122 = trunc i64 %indvars.iv.next2120 to i32, !dbg !2411
  %exitcond2123 = icmp eq i32 %lftr.wideiv2122, 4, !dbg !2411
  br i1 %exitcond2123, label %for.body218, label %for.body135, !dbg !2411

for.body218:                                      ; preds = %for.end174, %for.end257
  %indvars.iv2131 = phi i64 [ %indvars.iv.next2132, %for.end257 ], [ 0, %for.end174 ]
  %42 = add nsw i64 %indvars.iv2131, %indvars.iv2136, !dbg !2420
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !366), !dbg !2421
  br label %for.body223, !dbg !2421

for.body223:                                      ; preds = %for.body223, %for.body218
  %indvars.iv2124 = phi i64 [ 0, %for.body218 ], [ %indvars.iv.next2125, %for.body223 ]
  %43 = sub nsw i64 3, %indvars.iv2124, !dbg !2423
  %44 = add nsw i64 %indvars.iv2124, %indvars.iv2141, !dbg !2425
  %arrayidx230 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %44, !dbg !2425
  %45 = load i32* %arrayidx230, align 4, !dbg !2425, !tbaa !984
  %46 = add nsw i64 %43, %indvars.iv2141, !dbg !2425
  %arrayidx236 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %46, !dbg !2425
  %47 = load i32* %arrayidx236, align 4, !dbg !2425, !tbaa !984
  %add237 = add nsw i32 %47, %45, !dbg !2425
  %arrayidx239 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2124, !dbg !2425
  store i32 %add237, i32* %arrayidx239, align 4, !dbg !2425, !tbaa !984
  %48 = load i32* %arrayidx230, align 4, !dbg !2426, !tbaa !984
  %49 = load i32* %arrayidx236, align 4, !dbg !2426, !tbaa !984
  %sub252 = sub nsw i32 %48, %49, !dbg !2426
  %arrayidx254 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %43, !dbg !2426
  store i32 %sub252, i32* %arrayidx254, align 4, !dbg !2426, !tbaa !984
  %indvars.iv.next2125 = add i64 %indvars.iv2124, 1, !dbg !2421
  %lftr.wideiv2129 = trunc i64 %indvars.iv.next2125 to i32, !dbg !2421
  %exitcond2130 = icmp eq i32 %lftr.wideiv2129, 2, !dbg !2421
  br i1 %exitcond2130, label %for.end257, label %for.body223, !dbg !2421

for.end257:                                       ; preds = %for.body223
  %50 = load i64* %33, align 16, !dbg !2427
  %51 = trunc i64 %50 to i32, !dbg !2427
  %52 = lshr i64 %50, 32
  %53 = trunc i64 %52 to i32
  %add260 = add nsw i32 %53, %51, !dbg !2427
  %arrayidx266 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %indvars.iv2141, !dbg !2427
  store i32 %add260, i32* %arrayidx266, align 4, !dbg !2427, !tbaa !984
  %sub269 = sub nsw i32 %51, %53, !dbg !2403
  %arrayidx275 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %19, !dbg !2403
  store i32 %sub269, i32* %arrayidx275, align 4, !dbg !2403, !tbaa !984
  %54 = load i32* %arrayidx192, align 4, !dbg !2406, !tbaa !984
  %mul277 = shl i32 %54, 1, !dbg !2406
  %55 = load i32* %arrayidx194, align 8, !dbg !2406, !tbaa !984
  %add279 = add nsw i32 %mul277, %55, !dbg !2406
  %arrayidx285 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %20, !dbg !2406
  store i32 %add279, i32* %arrayidx285, align 4, !dbg !2406, !tbaa !984
  %56 = load i32* %arrayidx192, align 4, !dbg !2407, !tbaa !984
  %57 = load i32* %arrayidx194, align 8, !dbg !2407, !tbaa !984
  %mul288 = shl nsw i32 %57, 1, !dbg !2407
  %sub289 = sub nsw i32 %56, %mul288, !dbg !2407
  %arrayidx295 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %21, !dbg !2407
  store i32 %sub289, i32* %arrayidx295, align 4, !dbg !2407, !tbaa !984
  %indvars.iv.next2132 = add i64 %indvars.iv2131, 1, !dbg !2428
  %lftr.wideiv2134 = trunc i64 %indvars.iv.next2132 to i32, !dbg !2428
  %exitcond2135 = icmp eq i32 %lftr.wideiv2134, 4, !dbg !2428
  br i1 %exitcond2135, label %for.inc299, label %for.body218, !dbg !2428

for.inc299:                                       ; preds = %for.end257
  %indvars.iv.next2137 = add i64 %indvars.iv2136, 4, !dbg !2408
  %58 = trunc i64 %indvars.iv.next2137 to i32, !dbg !2408
  %cmp129 = icmp slt i32 %58, 5, !dbg !2408
  br i1 %cmp129, label %for.cond132.preheader, label %for.inc302, !dbg !2408

for.inc302:                                       ; preds = %for.inc299
  %indvars.iv.next2142 = add i64 %indvars.iv2141, 4, !dbg !2401
  %59 = trunc i64 %indvars.iv.next2142 to i32, !dbg !2401
  %cmp125 = icmp slt i32 %59, 5, !dbg !2401
  br i1 %cmp125, label %for.cond128.preheader, label %for.cond309.preheader, !dbg !2401

for.cond309.preheader:                            ; preds = %for.inc302, %for.inc467
  %indvars.iv2107 = phi i64 [ %indvars.iv.next2108, %for.inc467 ], [ 0, %for.inc302 ]
  %60 = or i64 %indvars.iv2107, 2, !dbg !2429
  %61 = or i64 %indvars.iv2107, 1, !dbg !2436
  %62 = or i64 %indvars.iv2107, 3, !dbg !2437
  br label %for.cond313.preheader, !dbg !2438

for.cond313.preheader:                            ; preds = %for.cond309.preheader, %for.inc464
  %indvars.iv2102 = phi i64 [ 0, %for.cond309.preheader ], [ %indvars.iv.next2103, %for.inc464 ]
  %63 = or i64 %indvars.iv2102, 2, !dbg !2439
  %64 = or i64 %indvars.iv2102, 1, !dbg !2442
  %65 = or i64 %indvars.iv2102, 3, !dbg !2443
  br label %for.body316, !dbg !2444

for.body316:                                      ; preds = %for.end351, %for.cond313.preheader
  %indvars.iv2085 = phi i64 [ 0, %for.cond313.preheader ], [ %indvars.iv.next2086, %for.end351 ]
  %66 = add nsw i64 %indvars.iv2085, %indvars.iv2107, !dbg !2445
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !365), !dbg !2446
  br label %for.body321, !dbg !2446

for.body321:                                      ; preds = %for.body321, %for.body316
  %indvars.iv2078 = phi i64 [ 0, %for.body316 ], [ %indvars.iv.next2079, %for.body321 ]
  %67 = sub nsw i64 3, %indvars.iv2078, !dbg !2448
  %68 = add nsw i64 %indvars.iv2078, %indvars.iv2102, !dbg !2450
  %arrayidx327 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %68, i64 %66, !dbg !2450
  %69 = load i32* %arrayidx327, align 4, !dbg !2450, !tbaa !984
  %70 = add nsw i64 %67, %indvars.iv2102, !dbg !2450
  %arrayidx332 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %70, i64 %66, !dbg !2450
  %71 = load i32* %arrayidx332, align 4, !dbg !2450, !tbaa !984
  %add333 = add nsw i32 %71, %69, !dbg !2450
  %arrayidx335 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2078, !dbg !2450
  store i32 %add333, i32* %arrayidx335, align 4, !dbg !2450, !tbaa !984
  %sub346 = sub nsw i32 %69, %71, !dbg !2451
  %arrayidx348 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %67, !dbg !2451
  store i32 %sub346, i32* %arrayidx348, align 4, !dbg !2451, !tbaa !984
  %indvars.iv.next2079 = add i64 %indvars.iv2078, 1, !dbg !2446
  %lftr.wideiv2083 = trunc i64 %indvars.iv.next2079 to i32, !dbg !2446
  %exitcond2084 = icmp eq i32 %lftr.wideiv2083, 2, !dbg !2446
  br i1 %exitcond2084, label %for.end351, label %for.body321, !dbg !2446

for.end351:                                       ; preds = %for.body321
  %72 = load i64* %33, align 16, !dbg !2452
  %73 = trunc i64 %72 to i32, !dbg !2452
  %74 = lshr i64 %72, 32
  %75 = trunc i64 %74 to i32
  %add354 = add nsw i32 %75, %73, !dbg !2452
  %arrayidx358 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %indvars.iv2102, i64 %66, !dbg !2452
  store i32 %add354, i32* %arrayidx358, align 4, !dbg !2452, !tbaa !984
  %sub361 = sub nsw i32 %73, %75, !dbg !2439
  %arrayidx366 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %63, i64 %66, !dbg !2439
  store i32 %sub361, i32* %arrayidx366, align 4, !dbg !2439, !tbaa !984
  %76 = load i32* %arrayidx192, align 4, !dbg !2442, !tbaa !984
  %mul368 = shl i32 %76, 1, !dbg !2442
  %77 = bitcast i32* %arrayidx194 to i64*, !dbg !2442
  %78 = load i64* %77, align 8, !dbg !2442
  %79 = trunc i64 %78 to i32, !dbg !2442
  %add370 = add nsw i32 %mul368, %79, !dbg !2442
  %arrayidx375 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %64, i64 %66, !dbg !2442
  store i32 %add370, i32* %arrayidx375, align 4, !dbg !2442, !tbaa !984
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  %mul378 = shl nsw i32 %79, 1, !dbg !2443
  %sub379 = sub nsw i32 %81, %mul378, !dbg !2443
  %arrayidx384 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %65, i64 %66, !dbg !2443
  store i32 %sub379, i32* %arrayidx384, align 4, !dbg !2443, !tbaa !984
  %indvars.iv.next2086 = add i64 %indvars.iv2085, 1, !dbg !2444
  %lftr.wideiv2088 = trunc i64 %indvars.iv.next2086 to i32, !dbg !2444
  %exitcond2089 = icmp eq i32 %lftr.wideiv2088, 4, !dbg !2444
  br i1 %exitcond2089, label %for.body391, label %for.body316, !dbg !2444

for.body391:                                      ; preds = %for.end351, %for.end426
  %indvars.iv2097 = phi i64 [ %indvars.iv.next2098, %for.end426 ], [ 0, %for.end351 ]
  %82 = add nsw i64 %indvars.iv2097, %indvars.iv2102, !dbg !2453
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !366), !dbg !2454
  br label %for.body396, !dbg !2454

for.body396:                                      ; preds = %for.body396, %for.body391
  %indvars.iv2090 = phi i64 [ 0, %for.body391 ], [ %indvars.iv.next2091, %for.body396 ]
  %83 = sub nsw i64 3, %indvars.iv2090, !dbg !2456
  %84 = add nsw i64 %indvars.iv2090, %indvars.iv2107, !dbg !2458
  %arrayidx402 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %84, !dbg !2458
  %85 = load i32* %arrayidx402, align 4, !dbg !2458, !tbaa !984
  %86 = add nsw i64 %83, %indvars.iv2107, !dbg !2458
  %arrayidx407 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %86, !dbg !2458
  %87 = load i32* %arrayidx407, align 4, !dbg !2458, !tbaa !984
  %add408 = add nsw i32 %87, %85, !dbg !2458
  %arrayidx410 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2090, !dbg !2458
  store i32 %add408, i32* %arrayidx410, align 4, !dbg !2458, !tbaa !984
  %sub421 = sub nsw i32 %85, %87, !dbg !2459
  %arrayidx423 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %83, !dbg !2459
  store i32 %sub421, i32* %arrayidx423, align 4, !dbg !2459, !tbaa !984
  %indvars.iv.next2091 = add i64 %indvars.iv2090, 1, !dbg !2454
  %lftr.wideiv2095 = trunc i64 %indvars.iv.next2091 to i32, !dbg !2454
  %exitcond2096 = icmp eq i32 %lftr.wideiv2095, 2, !dbg !2454
  br i1 %exitcond2096, label %for.end426, label %for.body396, !dbg !2454

for.end426:                                       ; preds = %for.body396
  %88 = load i64* %33, align 16, !dbg !2460
  %89 = trunc i64 %88 to i32, !dbg !2460
  %90 = lshr i64 %88, 32
  %91 = trunc i64 %90 to i32
  %add429 = add nsw i32 %91, %89, !dbg !2460
  %arrayidx434 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %indvars.iv2107, !dbg !2460
  store i32 %add429, i32* %arrayidx434, align 16, !dbg !2460, !tbaa !984
  %sub437 = sub nsw i32 %89, %91, !dbg !2429
  %arrayidx442 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %60, !dbg !2429
  store i32 %sub437, i32* %arrayidx442, align 8, !dbg !2429, !tbaa !984
  %92 = load i32* %arrayidx192, align 4, !dbg !2436, !tbaa !984
  %mul444 = shl i32 %92, 1, !dbg !2436
  %93 = load i64* %77, align 8, !dbg !2436
  %94 = trunc i64 %93 to i32, !dbg !2436
  %add446 = add nsw i32 %mul444, %94, !dbg !2436
  %arrayidx451 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %61, !dbg !2436
  store i32 %add446, i32* %arrayidx451, align 4, !dbg !2436, !tbaa !984
  %95 = lshr i64 %93, 32
  %96 = trunc i64 %95 to i32
  %mul454 = shl nsw i32 %94, 1, !dbg !2437
  %sub455 = sub nsw i32 %96, %mul454, !dbg !2437
  %arrayidx460 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %62, !dbg !2437
  store i32 %sub455, i32* %arrayidx460, align 4, !dbg !2437, !tbaa !984
  %indvars.iv.next2098 = add i64 %indvars.iv2097, 1, !dbg !2461
  %lftr.wideiv2100 = trunc i64 %indvars.iv.next2098 to i32, !dbg !2461
  %exitcond2101 = icmp eq i32 %lftr.wideiv2100, 4, !dbg !2461
  br i1 %exitcond2101, label %for.inc464, label %for.body391, !dbg !2461

for.inc464:                                       ; preds = %for.end426
  %indvars.iv.next2103 = add i64 %indvars.iv2102, 4, !dbg !2438
  %97 = trunc i64 %indvars.iv.next2103 to i32, !dbg !2438
  %cmp310 = icmp slt i32 %97, 5, !dbg !2438
  br i1 %cmp310, label %for.cond313.preheader, label %for.inc467, !dbg !2438

for.inc467:                                       ; preds = %for.inc464
  %indvars.iv.next2108 = add i64 %indvars.iv2107, 4, !dbg !2462
  %98 = trunc i64 %indvars.iv.next2108 to i32, !dbg !2462
  %cmp306 = icmp slt i32 %98, 5, !dbg !2462
  br i1 %cmp306, label %for.cond309.preheader, label %for.end469, !dbg !2462

for.end469:                                       ; preds = %for.inc467
  %arrayidx472 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 0, i64 0, !dbg !2463
  %99 = load i32* %arrayidx472, align 4, !dbg !2463, !tbaa !984
  %arrayidx475 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 4, i64 0, !dbg !2463
  %100 = load i32* %arrayidx475, align 4, !dbg !2463, !tbaa !984
  %add476 = add nsw i32 %100, %99, !dbg !2463
  %arrayidx479 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 0, i64 4, !dbg !2463
  %101 = load i32* %arrayidx479, align 4, !dbg !2463, !tbaa !984
  %add480 = add nsw i32 %add476, %101, !dbg !2463
  %arrayidx483 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 4, i64 4, !dbg !2463
  %102 = load i32* %arrayidx483, align 4, !dbg !2463, !tbaa !984
  %add484 = add nsw i32 %add480, %102, !dbg !2463
  %arrayidx485 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 0, !dbg !2463
  store i32 %add484, i32* %arrayidx485, align 16, !dbg !2463, !tbaa !984
  %sub492 = sub i32 %99, %100, !dbg !2464
  %add496 = add nsw i32 %sub492, %101, !dbg !2464
  %sub500 = sub i32 %add496, %102, !dbg !2464
  %arrayidx501 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 1, !dbg !2464
  store i32 %sub500, i32* %arrayidx501, align 4, !dbg !2464, !tbaa !984
  %sub512 = sub i32 %add476, %101, !dbg !2465
  %sub516 = sub i32 %sub512, %102, !dbg !2465
  %arrayidx517 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 2, !dbg !2465
  store i32 %sub516, i32* %arrayidx517, align 8, !dbg !2465, !tbaa !984
  %sub528 = sub i32 %sub492, %101, !dbg !2466
  %add532 = add nsw i32 %sub528, %102, !dbg !2466
  %arrayidx533 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 3, !dbg !2466
  store i32 %add532, i32* %arrayidx533, align 4, !dbg !2466, !tbaa !984
  %arrayidx535 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 0, i64 0, !dbg !2467
  %103 = load i32* %arrayidx535, align 16, !dbg !2467, !tbaa !984
  %arrayidx537 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 4, i64 0, !dbg !2467
  %104 = load i32* %arrayidx537, align 16, !dbg !2467, !tbaa !984
  %add538 = add nsw i32 %104, %103, !dbg !2467
  %arrayidx540 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 0, i64 4, !dbg !2467
  %105 = load i32* %arrayidx540, align 16, !dbg !2467, !tbaa !984
  %add541 = add nsw i32 %add538, %105, !dbg !2467
  %arrayidx543 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 4, i64 4, !dbg !2467
  %106 = load i32* %arrayidx543, align 16, !dbg !2467, !tbaa !984
  %add544 = add nsw i32 %add541, %106, !dbg !2467
  %arrayidx545 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 0, !dbg !2467
  store i32 %add544, i32* %arrayidx545, align 16, !dbg !2467, !tbaa !984
  %sub550 = sub i32 %103, %104, !dbg !2468
  %add553 = add nsw i32 %sub550, %105, !dbg !2468
  %sub556 = sub i32 %add553, %106, !dbg !2468
  %arrayidx557 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 1, !dbg !2468
  store i32 %sub556, i32* %arrayidx557, align 4, !dbg !2468, !tbaa !984
  %sub565 = sub i32 %add538, %105, !dbg !2469
  %sub568 = sub i32 %sub565, %106, !dbg !2469
  %arrayidx569 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 2, !dbg !2469
  store i32 %sub568, i32* %arrayidx569, align 8, !dbg !2469, !tbaa !984
  %sub577 = sub i32 %sub550, %105, !dbg !2470
  %add580 = add nsw i32 %sub577, %106, !dbg !2470
  %arrayidx581 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 3, !dbg !2470
  store i32 %add580, i32* %arrayidx581, align 4, !dbg !2470, !tbaa !984
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !379), !dbg !2471
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !378), !dbg !2472
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !374), !dbg !2473
  %idxprom590 = sext i32 %rem91 to i64, !dbg !2475
  %arrayidx593 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom590, i64 0, i64 0, !dbg !2475
  %107 = load i32* %arrayidx593, align 16, !dbg !2475, !tbaa !984
  %mul595 = shl nsw i32 %div94, 1, !dbg !2475
  %add597 = add nsw i32 %div791957, 16, !dbg !2475
  %idxprom612 = sext i32 %rem to i64, !dbg !2477
  %arrayidx615 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom612, i64 0, i64 0, !dbg !2477
  %108 = load i32* %arrayidx615, align 16, !dbg !2477, !tbaa !984
  %mul617 = shl nsw i32 %div67, 1, !dbg !2477
  %add619 = add nsw i32 %div551955, 16, !dbg !2477
  %arrayidx649 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 0, i64 0, !dbg !2478
  %arrayidx781 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom590, i64 0, i64 0, !dbg !2480
  %109 = load i32* %arrayidx781, align 16, !dbg !2480, !tbaa !984
  %shl739 = shl i32 %uv, 2, !dbg !2481
  %shl740 = shl i32 983040, %shl739, !dbg !2481
  %conv741 = sext i32 %shl740 to i64, !dbg !2481
  %cbp_blk = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 13, !dbg !2481
  br label %for.body585, !dbg !2473

for.body585:                                      ; preds = %if.end763.for.body585_crit_edge, %for.end469
  %110 = phi i32 [ %add484, %for.end469 ], [ %.pre2163, %if.end763.for.body585_crit_edge ]
  %111 = phi i32 [ %add544, %for.end469 ], [ %.pre, %if.end763.for.body585_crit_edge ]
  %indvars.iv2074 = phi i64 [ 0, %for.end469 ], [ %indvars.iv.next2075, %if.end763.for.body585_crit_edge ]
  %cr_cbp.addr.02008 = phi i32 [ %cr_cbp, %for.end469 ], [ %cr_cbp.addr.1, %if.end763.for.body585_crit_edge ]
  %scan_pos.02006 = phi i32 [ 0, %for.end469 ], [ %scan_pos.1, %if.end763.for.body585_crit_edge ]
  %run.02005 = phi i32 [ -1, %for.end469 ], [ %run.1, %if.end763.for.body585_crit_edge ]
  %inc586 = add nsw i32 %run.02005, 1, !dbg !2483
  call void @llvm.dbg.value(metadata !{i32 %inc586}, i64 0, metadata !379), !dbg !2483
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !369), !dbg !2484
  %ispos1929 = icmp sgt i32 %111, -1, !dbg !2475
  %neg1930 = sub i32 0, %111, !dbg !2475
  %112 = select i1 %ispos1929, i32 %111, i32 %neg1930, !dbg !2475
  %mul594 = mul nsw i32 %112, %107, !dbg !2475
  %add596 = add nsw i32 %mul594, %mul595, !dbg !2475
  %shr = ashr i32 %add596, %add597, !dbg !2475
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !402), !dbg !2475
  %shl599 = shl i32 %shr, %add597, !dbg !2485
  %div604 = sdiv i32 %shl599, %107, !dbg !2485
  call void @llvm.dbg.value(metadata !{i32 %div604}, i64 0, metadata !402), !dbg !2485
  %arrayidx606 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv2074, !dbg !2486
  %call609 = call i32 @sign(i32 %div604, i32 %111) #4, !dbg !2486
  %sub610 = sub nsw i32 %110, %call609, !dbg !2486
  call void @llvm.dbg.value(metadata !{i32 %sub610}, i64 0, metadata !402), !dbg !2486
  %ispos1931 = icmp sgt i32 %sub610, -1, !dbg !2477
  %neg1932 = sub i32 0, %sub610, !dbg !2477
  %113 = select i1 %ispos1931, i32 %sub610, i32 %neg1932, !dbg !2477
  %mul616 = mul nsw i32 %113, %108, !dbg !2477
  %add618 = add nsw i32 %mul616, %mul617, !dbg !2477
  %shr620 = ashr i32 %add618, %add619, !dbg !2477
  call void @llvm.dbg.value(metadata !{i32 %shr620}, i64 0, metadata !404), !dbg !2477
  %sub625 = sub i32 %110, %111, !dbg !2487
  call void @llvm.dbg.value(metadata !{i32 %sub625}, i64 0, metadata !403), !dbg !2487
  %ispos1933 = icmp sgt i32 %sub625, -1, !dbg !2488
  %neg1934 = sub i32 0, %sub625, !dbg !2488
  %114 = select i1 %ispos1933, i32 %sub625, i32 %neg1934, !dbg !2488
  %mul631 = mul nsw i32 %114, %108, !dbg !2488
  %add633 = add nsw i32 %mul631, %mul617, !dbg !2488
  %shr635 = ashr i32 %add633, %add619, !dbg !2488
  call void @llvm.dbg.value(metadata !{i32 %shr635}, i64 0, metadata !405), !dbg !2488
  %cmp636 = icmp ne i32 %shr620, %shr635, !dbg !2489
  %cmp638 = icmp ne i32 %shr620, 0, !dbg !2489
  %or.cond = and i1 %cmp636, %cmp638, !dbg !2489
  %cmp641 = icmp ne i32 %shr635, 0, !dbg !2489
  %or.cond1450 = and i1 %or.cond, %cmp641, !dbg !2489
  br i1 %or.cond1450, label %if.then, label %if.else705, !dbg !2489

if.then:                                          ; preds = %for.body585
  %call645 = call i32 @sign(i32 %shr620, i32 %sub610) #4, !dbg !2478
  %115 = load i32* %arrayidx649, align 16, !dbg !2478, !tbaa !984
  %mul650 = shl i32 %call645, 4, !dbg !2478
  %mul651 = mul i32 %mul650, %115, !dbg !2478
  %shl652 = shl i32 %mul651, %div551955, !dbg !2478
  %shr653 = ashr i32 %shl652, 5, !dbg !2478
  %sub657 = sub i32 %sub625, %shr653, !dbg !2478
  %conv658 = sitofp i32 %sub657 to double, !dbg !2478
  call void @llvm.dbg.value(metadata !{double %conv658}, i64 0, metadata !408), !dbg !2478
  call void @levrun_linfo_c2x2(i32 %shr620, i32 %inc586, i32* %len, i32* %info) #4, !dbg !2490
  %mul659 = fmul double %conv658, %conv658, !dbg !2491
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !406), !dbg !2491
  %116 = load i32* %len, align 4, !dbg !2491, !tbaa !984
  %conv660 = sitofp i32 %116 to double, !dbg !2491
  %mul661 = fmul double %mul9, %conv660, !dbg !2491
  %add662 = fadd double %mul661, %mul659, !dbg !2491
  call void @llvm.dbg.value(metadata !{double %add662}, i64 0, metadata !408), !dbg !2491
  %call665 = call i32 @sign(i32 %shr635, i32 %sub625) #4, !dbg !2492
  %mul670 = shl i32 %call665, 4, !dbg !2492
  %mul671 = mul i32 %mul670, %115, !dbg !2492
  %shl672 = shl i32 %mul671, %div551955, !dbg !2492
  %shr673 = ashr i32 %shl672, 5, !dbg !2492
  %sub677 = sub i32 %sub625, %shr673, !dbg !2492
  %conv678 = sitofp i32 %sub677 to double, !dbg !2492
  call void @llvm.dbg.value(metadata !{double %conv678}, i64 0, metadata !409), !dbg !2492
  call void @levrun_linfo_c2x2(i32 %shr635, i32 %inc586, i32* %len, i32* %info) #4, !dbg !2493
  %mul679 = fmul double %conv678, %conv678, !dbg !2494
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !406), !dbg !2494
  %117 = load i32* %len, align 4, !dbg !2494, !tbaa !984
  %conv680 = sitofp i32 %117 to double, !dbg !2494
  %mul681 = fmul double %mul9, %conv680, !dbg !2494
  %add682 = fadd double %mul681, %mul679, !dbg !2494
  call void @llvm.dbg.value(metadata !{double %add682}, i64 0, metadata !409), !dbg !2494
  %cmp683 = fcmp oeq double %add662, %add682, !dbg !2495
  br i1 %cmp683, label %if.then685, label %if.else, !dbg !2495

if.then685:                                       ; preds = %if.then
  %ispos1937 = icmp sgt i32 %shr620, -1, !dbg !2496
  %neg1938 = sub i32 0, %shr620, !dbg !2496
  %118 = select i1 %ispos1937, i32 %shr620, i32 %neg1938, !dbg !2496
  %ispos1939 = icmp sgt i32 %shr635, -1, !dbg !2496
  %neg1940 = sub i32 0, %shr635, !dbg !2496
  %119 = select i1 %ispos1939, i32 %shr635, i32 %neg1940, !dbg !2496
  %cmp688 = icmp slt i32 %118, %119, !dbg !2496
  call void @llvm.dbg.value(metadata !{i32 %cond693}, i64 0, metadata !377), !dbg !2496
  br label %if.end698, !dbg !2496

if.else:                                          ; preds = %if.then
  %cmp694 = fcmp olt double %add662, %add682, !dbg !2497
  br label %if.end698, !dbg !2499

if.end698:                                        ; preds = %if.else, %if.then685
  %cmp688.sink = phi i1 [ %cmp688, %if.then685 ], [ %cmp694, %if.else ]
  %cond693 = select i1 %cmp688.sink, i32 %shr620, i32 %shr635, !dbg !2496
  %cmp699 = icmp eq i32 %cond693, %shr620, !dbg !2500
  %cond704 = select i1 %cmp699, i32 %sub610, i32 %sub625, !dbg !2500
  call void @llvm.dbg.value(metadata !{i32 %cond704}, i64 0, metadata !376), !dbg !2500
  br label %if.end723, !dbg !2501

if.else705:                                       ; preds = %for.body585
  %cmp706 = icmp eq i32 %shr620, %shr635, !dbg !2502
  br i1 %cmp706, label %if.end723, label %if.else709, !dbg !2502

if.else709:                                       ; preds = %if.else705
  %cmp710 = icmp eq i32 %shr620, 0, !dbg !2503
  %cond715 = select i1 %cmp710, i32 0, i32 %shr635, !dbg !2503
  call void @llvm.dbg.value(metadata !{i32 %cond715}, i64 0, metadata !377), !dbg !2503
  %cond721 = select i1 %cmp710, i32 %sub610, i32 %sub625, !dbg !2505
  call void @llvm.dbg.value(metadata !{i32 %cond721}, i64 0, metadata !376), !dbg !2505
  br label %if.end723

if.end723:                                        ; preds = %if.else705, %if.else709, %if.end698
  %level.1 = phi i32 [ %cond693, %if.end698 ], [ %cond715, %if.else709 ], [ %shr620, %if.else705 ]
  %c_err.0 = phi i32 [ %cond704, %if.end698 ], [ %cond721, %if.else709 ], [ %sub610, %if.else705 ]
  %120 = load %struct.InputParameters** @input, align 8, !dbg !2506, !tbaa !978
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %120, i64 0, i32 59, !dbg !2506
  %121 = load i32* %symbol_mode, align 4, !dbg !2506, !tbaa !984
  %cmp724 = icmp eq i32 %121, 0, !dbg !2506
  br i1 %cmp724, label %land.lhs.true726, label %if.end735, !dbg !2506

land.lhs.true726:                                 ; preds = %if.end723
  %122 = load %struct.ImageParameters** @img, align 8, !dbg !2506, !tbaa !978
  %qp727 = getelementptr inbounds %struct.ImageParameters* %122, i64 0, i32 10, !dbg !2506
  %123 = load i32* %qp727, align 4, !dbg !2506, !tbaa !984
  %cmp728 = icmp slt i32 %123, 4, !dbg !2506
  %cmp731 = icmp sgt i32 %level.1, 2063, !dbg !2507
  %or.cond1953 = and i1 %cmp728, %cmp731, !dbg !2506
  call void @llvm.dbg.value(metadata !1314, i64 0, metadata !377), !dbg !2509
  %.level.1 = select i1 %or.cond1953, i32 2063, i32 %level.1, !dbg !2506
  br label %if.end735, !dbg !2506

if.end735:                                        ; preds = %land.lhs.true726, %if.end723
  %level.2 = phi i32 [ %level.1, %if.end723 ], [ %.level.1, %land.lhs.true726 ]
  %cmp736 = icmp eq i32 %level.2, 0, !dbg !2511
  br i1 %cmp736, label %if.end763, label %if.then738, !dbg !2511

if.then738:                                       ; preds = %if.end735
  %124 = load i64* %cbp_blk, align 8, !dbg !2481, !tbaa !1698
  %or = or i64 %124, %conv741, !dbg !2481
  store i64 %or, i64* %cbp_blk, align 8, !dbg !2481, !tbaa !1698
  %cmp742 = icmp slt i32 %cr_cbp.addr.02008, 1, !dbg !2512
  %cond747 = select i1 %cmp742, i32 1, i32 %cr_cbp.addr.02008, !dbg !2512
  call void @llvm.dbg.value(metadata !{i32 %cond747}, i64 0, metadata !364), !dbg !2512
  %call748 = call i32 @sign(i32 %level.2, i32 %c_err.0) #4, !dbg !2513
  %idxprom749 = sext i32 %scan_pos.02006 to i64, !dbg !2513
  %arrayidx750 = getelementptr inbounds i32* %6, i64 %idxprom749, !dbg !2513
  store i32 %call748, i32* %arrayidx750, align 4, !dbg !2513, !tbaa !984
  %arrayidx752 = getelementptr inbounds i32* %7, i64 %idxprom749, !dbg !2514
  store i32 %inc586, i32* %arrayidx752, align 4, !dbg !2514, !tbaa !984
  %inc753 = add nsw i32 %scan_pos.02006, 1, !dbg !2515
  call void @llvm.dbg.value(metadata !{i32 %inc753}, i64 0, metadata !378), !dbg !2515
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !379), !dbg !2516
  %call754 = call i32 @sign(i32 %level.2, i32 %c_err.0) #4, !dbg !2517
  %125 = load i32* %arrayidx649, align 16, !dbg !2517, !tbaa !984
  %mul759 = shl i32 %call754, 4, !dbg !2517
  %mul760 = mul i32 %mul759, %125, !dbg !2517
  %shl761 = shl i32 %mul760, %div551955, !dbg !2517
  %shr762 = ashr i32 %shl761, 5, !dbg !2517
  call void @llvm.dbg.value(metadata !{i32 %shr762}, i64 0, metadata !369), !dbg !2517
  br label %if.end763, !dbg !2518

if.end763:                                        ; preds = %if.end735, %if.then738
  %run.1 = phi i32 [ -1, %if.then738 ], [ %inc586, %if.end735 ]
  %scan_pos.1 = phi i32 [ %inc753, %if.then738 ], [ %scan_pos.02006, %if.end735 ]
  %ilev.0 = phi i32 [ %shr762, %if.then738 ], [ 0, %if.end735 ]
  %cr_cbp.addr.1 = phi i32 [ %cond747, %if.then738 ], [ %cr_cbp.addr.02008, %if.end735 ]
  %add766 = add nsw i32 %111, %ilev.0, !dbg !2519
  call void @llvm.dbg.value(metadata !{i32 %add766}, i64 0, metadata !369), !dbg !2519
  %ispos1935 = icmp sgt i32 %add766, -1, !dbg !2480
  %neg1936 = sub i32 0, %add766, !dbg !2480
  %126 = select i1 %ispos1935, i32 %add766, i32 %neg1936, !dbg !2480
  %mul772 = mul nsw i32 %126, %107, !dbg !2480
  %add774 = add nsw i32 %mul772, %mul595, !dbg !2480
  %shr776 = ashr i32 %add774, %add597, !dbg !2480
  %call777 = call i32 @sign(i32 %shr776, i32 %add766) #4, !dbg !2480
  %mul782 = mul nsw i32 %109, %call777, !dbg !2480
  %shl783 = shl i32 %mul782, %div791957, !dbg !2480
  store i32 %shl783, i32* %arrayidx606, align 4, !dbg !2480, !tbaa !984
  %indvars.iv.next2075 = add i64 %indvars.iv2074, 1, !dbg !2473
  %lftr.wideiv2076 = trunc i64 %indvars.iv.next2075 to i32, !dbg !2473
  %exitcond2077 = icmp eq i32 %lftr.wideiv2076, 4, !dbg !2473
  br i1 %exitcond2077, label %for.end788, label %if.end763.for.body585_crit_edge, !dbg !2473

if.end763.for.body585_crit_edge:                  ; preds = %if.end763
  %arrayidx588.phi.trans.insert = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 %indvars.iv.next2075
  %.pre = load i32* %arrayidx588.phi.trans.insert, align 4, !dbg !2475, !tbaa !984
  %arrayidx606.phi.trans.insert = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv.next2075
  %.pre2163 = load i32* %arrayidx606.phi.trans.insert, align 4, !dbg !2486, !tbaa !984
  br label %for.body585, !dbg !2473

for.end788:                                       ; preds = %if.end763
  %idxprom789 = sext i32 %scan_pos.1 to i64, !dbg !2520
  %arrayidx790 = getelementptr inbounds i32* %6, i64 %idxprom789, !dbg !2520
  store i32 0, i32* %arrayidx790, align 4, !dbg !2520, !tbaa !984
  %127 = bitcast [4 x i32]* %m1 to i64*, !dbg !2521
  %128 = load i64* %127, align 16, !dbg !2521
  %129 = trunc i64 %128 to i32, !dbg !2521
  %130 = lshr i64 %128, 32
  %131 = trunc i64 %130 to i32
  %add793 = add nsw i32 %131, %129, !dbg !2521
  %132 = bitcast i32* %arrayidx517 to i64*, !dbg !2521
  %133 = load i64* %132, align 8, !dbg !2521
  %134 = trunc i64 %133 to i32, !dbg !2521
  %add795 = add nsw i32 %add793, %134, !dbg !2521
  %135 = lshr i64 %133, 32
  %136 = trunc i64 %135 to i32
  %add797 = add nsw i32 %add795, %136, !dbg !2521
  %div798 = sdiv i32 %add797, 2, !dbg !2521
  %137 = load %struct.ImageParameters** @img, align 8, !dbg !2521, !tbaa !978
  %arrayidx801 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 0, i64 0, !dbg !2521
  store i32 %div798, i32* %arrayidx801, align 4, !dbg !2521, !tbaa !984
  %sub804 = sub i32 %129, %131, !dbg !2522
  %add806 = add nsw i32 %sub804, %134, !dbg !2522
  %sub808 = sub i32 %add806, %136, !dbg !2522
  %div809 = sdiv i32 %sub808, 2, !dbg !2522
  %arrayidx812 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 4, i64 0, !dbg !2522
  store i32 %div809, i32* %arrayidx812, align 4, !dbg !2522, !tbaa !984
  %sub817 = sub i32 %add793, %134, !dbg !2523
  %sub819 = sub i32 %sub817, %136, !dbg !2523
  %div820 = sdiv i32 %sub819, 2, !dbg !2523
  %arrayidx823 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 0, i64 4, !dbg !2523
  store i32 %div820, i32* %arrayidx823, align 4, !dbg !2523, !tbaa !984
  %sub828 = sub i32 %sub804, %134, !dbg !2524
  %add830 = add nsw i32 %sub828, %136, !dbg !2524
  %div831 = sdiv i32 %add830, 2, !dbg !2524
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 4, i64 4, !dbg !2524
  store i32 %div831, i32* %arrayidx834, align 4, !dbg !2524, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !383), !dbg !2525
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !384), !dbg !2526
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !370), !dbg !2527
  %add848 = add nsw i32 %uv, 4, !dbg !2529
  %idxprom849 = sext i32 %add848 to i64, !dbg !2529
  %add1089 = add i32 %shl739, 16, !dbg !2533
  br label %for.cond839.preheader, !dbg !2527

for.cond839.preheader:                            ; preds = %for.end788, %for.inc1170
  %138 = phi %struct.ImageParameters* [ %137, %for.end788 ], [ %171, %for.inc1170 ]
  %n2.22004 = phi i32 [ 0, %for.end788 ], [ %add1171, %for.inc1170 ]
  %cr_cbp_tmp.02002 = phi i32 [ 0, %for.end788 ], [ %cr_cbp_tmp.3, %for.inc1170 ]
  %div843 = sdiv i32 %n2.22004, 4, !dbg !2537
  %mul844 = shl i32 %div843, 1, !dbg !2537
  %shr1087 = ashr exact i32 %n2.22004, 1, !dbg !2533
  %add1086 = add i32 %add1089, %shr1087, !dbg !2533
  br label %for.body842, !dbg !2538

for.body842:                                      ; preds = %for.cond839.preheader, %for.end1164
  %139 = phi %struct.ImageParameters* [ %138, %for.cond839.preheader ], [ %171, %for.end1164 ]
  %n1.22001 = phi i32 [ 0, %for.cond839.preheader ], [ %add1168, %for.end1164 ]
  %cr_cbp_tmp.11999 = phi i32 [ %cr_cbp_tmp.02002, %for.cond839.preheader ], [ %cr_cbp_tmp.3, %for.end1164 ]
  %div845 = sdiv i32 %n1.22001, 4, !dbg !2537
  %add846 = add nsw i32 %mul844, %div845, !dbg !2537
  call void @llvm.dbg.value(metadata !{i32 %add846}, i64 0, metadata !397), !dbg !2537
  %idxprom847 = sext i32 %add846 to i64, !dbg !2529
  %cofAC = getelementptr inbounds %struct.ImageParameters* %139, i64 0, i32 47, !dbg !2529
  %140 = load i32***** %cofAC, align 8, !dbg !2529, !tbaa !978
  %arrayidx850 = getelementptr inbounds i32**** %140, i64 %idxprom849, !dbg !2529
  %141 = load i32**** %arrayidx850, align 8, !dbg !2529, !tbaa !978
  %arrayidx851 = getelementptr inbounds i32*** %141, i64 %idxprom847, !dbg !2529
  %142 = load i32*** %arrayidx851, align 8, !dbg !2529, !tbaa !978
  %143 = load i32** %142, align 8, !dbg !2529, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %143}, i64 0, metadata !400), !dbg !2529
  %arrayidx859 = getelementptr inbounds i32** %142, i64 1, !dbg !2539
  %144 = load i32** %arrayidx859, align 8, !dbg !2539, !tbaa !978
  call void @llvm.dbg.value(metadata !{i32* %144}, i64 0, metadata !401), !dbg !2539
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !379), !dbg !2540
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !378), !dbg !2541
  call void @llvm.dbg.value(metadata !1159, i64 0, metadata !374), !dbg !2542
  %shr1088 = ashr exact i32 %n1.22001, 2, !dbg !2533
  %add1090 = add i32 %add1086, %shr1088, !dbg !2533
  %shl1091 = shl i32 1, %add1090, !dbg !2533
  %conv1092 = sext i32 %shl1091 to i64, !dbg !2533
  br label %for.body863, !dbg !2542

for.body863:                                      ; preds = %if.end1128, %for.body842
  %145 = phi %struct.ImageParameters* [ %139, %for.body842 ], [ %171, %if.end1128 ]
  %indvars.iv2070 = phi i64 [ 1, %for.body842 ], [ %indvars.iv.next2071, %if.end1128 ]
  %scan_pos.21996 = phi i32 [ 0, %for.body842 ], [ %scan_pos.3, %if.end1128 ]
  %run.21995 = phi i32 [ -1, %for.body842 ], [ %run.3, %if.end1128 ]
  %cr_cbp_tmp.21993 = phi i32 [ %cr_cbp_tmp.11999, %for.body842 ], [ %cr_cbp_tmp.3, %if.end1128 ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 100, !dbg !2543
  %146 = load i32* %field_picture, align 4, !dbg !2543, !tbaa !984
  %tobool = icmp eq i32 %146, 0, !dbg !2543
  br i1 %tobool, label %lor.lhs.false, label %if.end885, !dbg !2543

lor.lhs.false:                                    ; preds = %for.body863
  %147 = load i32* @mb_adaptive, align 4, !dbg !2543, !tbaa !984
  %tobool864 = icmp eq i32 %147, 0, !dbg !2543
  br i1 %tobool864, label %if.else876, label %land.lhs.true865, !dbg !2543

land.lhs.true865:                                 ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 81, !dbg !2543
  %148 = load i32* %field_mode, align 4, !dbg !2543, !tbaa !984
  %tobool866 = icmp eq i32 %148, 0, !dbg !2543
  br i1 %tobool866, label %if.else876, label %if.end885, !dbg !2543

if.else876:                                       ; preds = %land.lhs.true865, %lor.lhs.false
  br label %if.end885

if.end885:                                        ; preds = %for.body863, %land.lhs.true865, %if.else876
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else876 ], [ @FIELD_SCAN, %land.lhs.true865 ], [ @FIELD_SCAN, %for.body863 ]
  %i.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv2070, i64 0, !dbg !2544
  %j.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv2070, i64 1, !dbg !2546
  %i.5.in = load i8* %i.5.in.in, align 2, !dbg !2544
  %j.5.in = load i8* %j.5.in.in, align 1, !dbg !2546
  %i.5 = zext i8 %i.5.in to i32, !dbg !2544
  %j.5 = zext i8 %j.5.in to i32, !dbg !2546
  %inc886 = add nsw i32 %run.21995, 1, !dbg !2547
  call void @llvm.dbg.value(metadata !{i32 %inc886}, i64 0, metadata !379), !dbg !2547
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !369), !dbg !2548
  %add887 = add nsw i32 %j.5, %n2.22004, !dbg !2549
  %idxprom888 = sext i32 %add887 to i64, !dbg !2549
  %add889 = add nsw i32 %i.5, %n1.22001, !dbg !2549
  %idxprom890 = sext i32 %add889 to i64, !dbg !2549
  %arrayidx892 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %idxprom890, i64 %idxprom888, !dbg !2549
  %149 = load i32* %arrayidx892, align 4, !dbg !2549, !tbaa !984
  %ispos = icmp sgt i32 %149, -1, !dbg !2549
  %neg = sub i32 0, %149, !dbg !2549
  %150 = select i1 %ispos, i32 %149, i32 %neg, !dbg !2549
  %idxprom894 = zext i8 %j.5.in to i64, !dbg !2549
  %idxprom895 = zext i8 %i.5.in to i64, !dbg !2549
  %arrayidx899 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom590, i64 %idxprom895, i64 %idxprom894, !dbg !2549
  %151 = load i32* %arrayidx899, align 4, !dbg !2549, !tbaa !984
  %mul900 = mul nsw i32 %150, %151, !dbg !2549
  %add901 = add nsw i32 %mul900, %div94, !dbg !2549
  %shr902 = ashr i32 %add901, %add92, !dbg !2549
  call void @llvm.dbg.value(metadata !{i32 %shr902}, i64 0, metadata !402), !dbg !2549
  %shl903 = shl i32 %shr902, %add92, !dbg !2550
  %div910 = sdiv i32 %shl903, %151, !dbg !2550
  call void @llvm.dbg.value(metadata !{i32 %div910}, i64 0, metadata !402), !dbg !2550
  %arrayidx917 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888, !dbg !2551
  %152 = load i32* %arrayidx917, align 4, !dbg !2551, !tbaa !984
  %call924 = call i32 @sign(i32 %div910, i32 %149) #4, !dbg !2551
  %sub925 = sub nsw i32 %152, %call924, !dbg !2551
  call void @llvm.dbg.value(metadata !{i32 %sub925}, i64 0, metadata !402), !dbg !2551
  %ispos1919 = icmp sgt i32 %sub925, -1, !dbg !2552
  %neg1920 = sub i32 0, %sub925, !dbg !2552
  %153 = select i1 %ispos1919, i32 %sub925, i32 %neg1920, !dbg !2552
  %arrayidx932 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894, !dbg !2552
  %154 = load i32* %arrayidx932, align 4, !dbg !2552, !tbaa !984
  %mul933 = mul nsw i32 %153, %154, !dbg !2552
  %add934 = add nsw i32 %mul933, %div67, !dbg !2552
  %shr935 = ashr i32 %add934, %add66, !dbg !2552
  call void @llvm.dbg.value(metadata !{i32 %shr935}, i64 0, metadata !404), !dbg !2552
  %155 = load %struct.ImageParameters** @img, align 8, !dbg !2553, !tbaa !978
  %arrayidx942 = getelementptr inbounds %struct.ImageParameters* %155, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888, !dbg !2553
  %156 = load i32* %arrayidx942, align 4, !dbg !2553, !tbaa !984
  %sub949 = sub i32 %156, %149, !dbg !2553
  call void @llvm.dbg.value(metadata !{i32 %sub949}, i64 0, metadata !403), !dbg !2553
  %ispos1921 = icmp sgt i32 %sub949, -1, !dbg !2554
  %neg1922 = sub i32 0, %sub949, !dbg !2554
  %157 = select i1 %ispos1921, i32 %sub949, i32 %neg1922, !dbg !2554
  %mul957 = mul nsw i32 %157, %154, !dbg !2554
  %add958 = add nsw i32 %mul957, %div67, !dbg !2554
  %shr959 = ashr i32 %add958, %add66, !dbg !2554
  call void @llvm.dbg.value(metadata !{i32 %shr959}, i64 0, metadata !405), !dbg !2554
  %cmp960 = icmp ne i32 %shr935, %shr959, !dbg !2555
  %cmp963 = icmp ne i32 %shr935, 0, !dbg !2555
  %or.cond1451 = and i1 %cmp960, %cmp963, !dbg !2555
  %cmp966 = icmp ne i32 %shr959, 0, !dbg !2555
  %or.cond1452 = and i1 %or.cond1451, %cmp966, !dbg !2555
  br i1 %or.cond1452, label %if.then968, label %if.else1063, !dbg !2555

if.then968:                                       ; preds = %if.end885
  %call976 = call i32 @sign(i32 %shr935, i32 %sub925) #4, !dbg !2556
  %arrayidx982 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894, !dbg !2556
  %158 = load i32* %arrayidx982, align 4, !dbg !2556, !tbaa !984
  %mul983 = mul nsw i32 %158, %call976, !dbg !2556
  %arrayidx987 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom895, i64 %idxprom894, !dbg !2556
  %159 = load i32* %arrayidx987, align 4, !dbg !2556, !tbaa !984
  %mul988 = mul nsw i32 %mul983, %159, !dbg !2556
  %shl989 = shl i32 %mul988, %div551955, !dbg !2556
  %shr990 = ashr i32 %shl989, 6, !dbg !2556
  %sub998 = sub i32 %sub949, %shr990, !dbg !2556
  %conv999 = sitofp i32 %sub998 to double, !dbg !2556
  call void @llvm.dbg.value(metadata !{double %conv999}, i64 0, metadata !408), !dbg !2556
  call void @levrun_linfo_inter(i32 %shr935, i32 %inc886, i32* %len, i32* %info) #4, !dbg !2558
  %mul1000 = fmul double %conv999, %conv999, !dbg !2559
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !406), !dbg !2559
  %160 = load i32* %len, align 4, !dbg !2559, !tbaa !984
  %conv1001 = sitofp i32 %160 to double, !dbg !2559
  %mul1002 = fmul double %mul9, %conv1001, !dbg !2559
  %add1003 = fadd double %mul1002, %mul1000, !dbg !2559
  call void @llvm.dbg.value(metadata !{double %add1003}, i64 0, metadata !408), !dbg !2559
  %161 = load %struct.ImageParameters** @img, align 8, !dbg !2560, !tbaa !978
  %arrayidx1010 = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888, !dbg !2560
  %162 = load i32* %arrayidx1010, align 4, !dbg !2560, !tbaa !984
  %call1011 = call i32 @sign(i32 %shr959, i32 %sub949) #4, !dbg !2560
  %mul1018 = mul nsw i32 %158, %call1011, !dbg !2560
  %mul1023 = mul nsw i32 %mul1018, %159, !dbg !2560
  %shl1024 = shl i32 %mul1023, %div551955, !dbg !2560
  %shr1025 = ashr i32 %shl1024, 6, !dbg !2560
  %sub1026 = sub i32 %162, %149, !dbg !2560
  %sub1033 = sub i32 %sub1026, %shr1025, !dbg !2560
  %conv1034 = sitofp i32 %sub1033 to double, !dbg !2560
  call void @llvm.dbg.value(metadata !{double %conv1034}, i64 0, metadata !409), !dbg !2560
  call void @levrun_linfo_inter(i32 %shr959, i32 %inc886, i32* %len, i32* %info) #4, !dbg !2561
  %mul1035 = fmul double %conv1034, %conv1034, !dbg !2562
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !406), !dbg !2562
  %163 = load i32* %len, align 4, !dbg !2562, !tbaa !984
  %conv1036 = sitofp i32 %163 to double, !dbg !2562
  %mul1037 = fmul double %mul9, %conv1036, !dbg !2562
  %add1038 = fadd double %mul1037, %mul1035, !dbg !2562
  call void @llvm.dbg.value(metadata !{double %add1038}, i64 0, metadata !409), !dbg !2562
  %cmp1039 = fcmp oeq double %add1003, %add1038, !dbg !2563
  br i1 %cmp1039, label %if.then1041, label %if.else1050, !dbg !2563

if.then1041:                                      ; preds = %if.then968
  %ispos1925 = icmp sgt i32 %shr935, -1, !dbg !2564
  %neg1926 = sub i32 0, %shr935, !dbg !2564
  %164 = select i1 %ispos1925, i32 %shr935, i32 %neg1926, !dbg !2564
  %ispos1927 = icmp sgt i32 %shr959, -1, !dbg !2564
  %neg1928 = sub i32 0, %shr959, !dbg !2564
  %165 = select i1 %ispos1927, i32 %shr959, i32 %neg1928, !dbg !2564
  %cmp1044 = icmp slt i32 %164, %165, !dbg !2564
  call void @llvm.dbg.value(metadata !{i32 %cond1049}, i64 0, metadata !377), !dbg !2564
  br label %if.end1056, !dbg !2564

if.else1050:                                      ; preds = %if.then968
  %cmp1051 = fcmp olt double %add1003, %add1038, !dbg !2565
  br label %if.end1056, !dbg !2567

if.end1056:                                       ; preds = %if.else1050, %if.then1041
  %cmp1044.sink = phi i1 [ %cmp1044, %if.then1041 ], [ %cmp1051, %if.else1050 ]
  %cond1049 = select i1 %cmp1044.sink, i32 %shr935, i32 %shr959, !dbg !2564
  %cmp1057 = icmp eq i32 %cond1049, %shr935, !dbg !2568
  %cond1062 = select i1 %cmp1057, i32 %sub925, i32 %sub949, !dbg !2568
  call void @llvm.dbg.value(metadata !{i32 %cond1062}, i64 0, metadata !376), !dbg !2568
  br label %if.end1081, !dbg !2569

if.else1063:                                      ; preds = %if.end885
  %cmp1064 = icmp eq i32 %shr935, %shr959, !dbg !2570
  br i1 %cmp1064, label %if.end1081, label %if.else1067, !dbg !2570

if.else1067:                                      ; preds = %if.else1063
  %cmp1068 = icmp eq i32 %shr935, 0, !dbg !2571
  %cond1073 = select i1 %cmp1068, i32 0, i32 %shr959, !dbg !2571
  call void @llvm.dbg.value(metadata !{i32 %cond1073}, i64 0, metadata !377), !dbg !2571
  %cond1079 = select i1 %cmp1068, i32 %sub925, i32 %sub949, !dbg !2573
  call void @llvm.dbg.value(metadata !{i32 %cond1079}, i64 0, metadata !376), !dbg !2573
  br label %if.end1081

if.end1081:                                       ; preds = %if.else1063, %if.else1067, %if.end1056
  %level.4 = phi i32 [ %cond1049, %if.end1056 ], [ %cond1073, %if.else1067 ], [ %shr935, %if.else1063 ]
  %c_err.1 = phi i32 [ %cond1062, %if.end1056 ], [ %cond1079, %if.else1067 ], [ %sub925, %if.else1063 ]
  %cmp1082 = icmp eq i32 %level.4, 0, !dbg !2574
  br i1 %cmp1082, label %if.end1128, label %if.then1084, !dbg !2574

if.then1084:                                      ; preds = %if.end1081
  %166 = load i64* %cbp_blk, align 8, !dbg !2533, !tbaa !1698
  %or1094 = or i64 %166, %conv1092, !dbg !2533
  store i64 %or1094, i64* %cbp_blk, align 8, !dbg !2533, !tbaa !1698
  call void @llvm.dbg.value(metadata !1949, i64 0, metadata !384), !dbg !2575
  %call1107 = call i32 @sign(i32 %level.4, i32 %c_err.1) #4, !dbg !2576
  %idxprom1108 = sext i32 %scan_pos.21996 to i64, !dbg !2576
  %arrayidx1109 = getelementptr inbounds i32* %143, i64 %idxprom1108, !dbg !2576
  store i32 %call1107, i32* %arrayidx1109, align 4, !dbg !2576, !tbaa !984
  %arrayidx1111 = getelementptr inbounds i32* %144, i64 %idxprom1108, !dbg !2577
  store i32 %inc886, i32* %arrayidx1111, align 4, !dbg !2577, !tbaa !984
  %inc1112 = add nsw i32 %scan_pos.21996, 1, !dbg !2578
  call void @llvm.dbg.value(metadata !{i32 %inc1112}, i64 0, metadata !378), !dbg !2578
  call void @llvm.dbg.value(metadata !1322, i64 0, metadata !379), !dbg !2579
  %call1113 = call i32 @sign(i32 %level.4, i32 %c_err.1) #4, !dbg !2580
  %arrayidx1119 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894, !dbg !2580
  %167 = load i32* %arrayidx1119, align 4, !dbg !2580, !tbaa !984
  %mul1120 = mul nsw i32 %167, %call1113, !dbg !2580
  %arrayidx1124 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom895, i64 %idxprom894, !dbg !2580
  %168 = load i32* %arrayidx1124, align 4, !dbg !2580, !tbaa !984
  %mul1125 = mul nsw i32 %mul1120, %168, !dbg !2580
  %shl1126 = shl i32 %mul1125, %div551955, !dbg !2580
  %shr1127 = ashr i32 %shl1126, 6, !dbg !2580
  call void @llvm.dbg.value(metadata !{i32 %shr1127}, i64 0, metadata !369), !dbg !2580
  br label %if.end1128, !dbg !2581

if.end1128:                                       ; preds = %if.end1081, %if.then1084
  %cr_cbp_tmp.3 = phi i32 [ 2, %if.then1084 ], [ %cr_cbp_tmp.21993, %if.end1081 ]
  %run.3 = phi i32 [ -1, %if.then1084 ], [ %inc886, %if.end1081 ]
  %scan_pos.3 = phi i32 [ %inc1112, %if.then1084 ], [ %scan_pos.21996, %if.end1081 ]
  %ilev.1 = phi i32 [ %shr1127, %if.then1084 ], [ 0, %if.end1081 ]
  %add1135 = add nsw i32 %149, %ilev.1, !dbg !2582
  call void @llvm.dbg.value(metadata !{i32 %add1135}, i64 0, metadata !369), !dbg !2582
  %ispos1923 = icmp sgt i32 %add1135, -1, !dbg !2583
  %neg1924 = sub i32 0, %add1135, !dbg !2583
  %169 = select i1 %ispos1923, i32 %add1135, i32 %neg1924, !dbg !2583
  %mul1143 = mul nsw i32 %169, %151, !dbg !2583
  %add1144 = add nsw i32 %mul1143, %div94, !dbg !2583
  %shr1145 = ashr i32 %add1144, %add92, !dbg !2583
  %call1146 = call i32 @sign(i32 %shr1145, i32 %add1135) #4, !dbg !2583
  %arrayidx1152 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom590, i64 %idxprom895, i64 %idxprom894, !dbg !2583
  %170 = load i32* %arrayidx1152, align 4, !dbg !2583, !tbaa !984
  %mul1153 = mul nsw i32 %170, %call1146, !dbg !2583
  %shl1154 = shl i32 %mul1153, %div791957, !dbg !2583
  %171 = load %struct.ImageParameters** @img, align 8, !dbg !2583, !tbaa !978
  %arrayidx1161 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888, !dbg !2583
  store i32 %shl1154, i32* %arrayidx1161, align 4, !dbg !2583, !tbaa !984
  %indvars.iv.next2071 = add i64 %indvars.iv2070, 1, !dbg !2542
  %lftr.wideiv2072 = trunc i64 %indvars.iv.next2071 to i32, !dbg !2542
  %exitcond2073 = icmp eq i32 %lftr.wideiv2072, 16, !dbg !2542
  br i1 %exitcond2073, label %for.end1164, label %for.body863, !dbg !2542

for.end1164:                                      ; preds = %if.end1128
  %idxprom1165 = sext i32 %scan_pos.3 to i64, !dbg !2584
  %arrayidx1166 = getelementptr inbounds i32* %143, i64 %idxprom1165, !dbg !2584
  store i32 0, i32* %arrayidx1166, align 4, !dbg !2584, !tbaa !984
  %add1168 = add nsw i32 %n1.22001, 4, !dbg !2538
  call void @llvm.dbg.value(metadata !{i32 %add1168}, i64 0, metadata !371), !dbg !2538
  %cmp840 = icmp slt i32 %add1168, 5, !dbg !2538
  br i1 %cmp840, label %for.body842, label %for.inc1170, !dbg !2538

for.inc1170:                                      ; preds = %for.end1164
  %add1171 = add nsw i32 %n2.22004, 4, !dbg !2527
  call void @llvm.dbg.value(metadata !{i32 %add1171}, i64 0, metadata !370), !dbg !2527
  %cmp836 = icmp slt i32 %add1171, 5, !dbg !2527
  br i1 %cmp836, label %for.cond839.preheader, label %for.end1172, !dbg !2527

for.end1172:                                      ; preds = %for.inc1170
  %cmp1173 = icmp eq i32 %cr_cbp_tmp.3, 2, !dbg !2585
  call void @llvm.dbg.value(metadata !1949, i64 0, metadata !364), !dbg !2586
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !370), !dbg !2587
  %arrayidx1208 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !2589
  %arrayidx1212 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !2595
  %arrayidx1217 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !2596
  %arrayidx1222 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !2597
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 156, !dbg !2598
  br label %for.cond1181.preheader, !dbg !2587

for.cond1181.preheader:                           ; preds = %for.end1172, %for.inc1419
  %indvars.iv2068 = phi i64 [ 0, %for.end1172 ], [ %indvars.iv.next2069, %for.inc1419 ]
  br label %for.cond1185.preheader, !dbg !2603

for.cond1422.preheader:                           ; preds = %for.inc1419
  %.cr_cbp.addr.0 = select i1 %cmp1173, i32 2, i32 %cr_cbp.addr.1, !dbg !2585
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 35, !dbg !2604
  %172 = load i32* %pix_c_x, align 4, !dbg !2604, !tbaa !984
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 36, !dbg !2604
  %173 = load i32* %pix_c_y, align 4, !dbg !2604, !tbaa !984
  %idxprom1440 = sext i32 %uv to i64, !dbg !2604
  %174 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2604, !tbaa !978
  %imgUV = getelementptr inbounds %struct.storable_picture* %174, i64 0, i32 30, !dbg !2604
  %175 = load i16**** %imgUV, align 8, !dbg !2604, !tbaa !978
  %arrayidx1441 = getelementptr inbounds i16*** %175, i64 %idxprom1440, !dbg !2604
  %176 = load i16*** %arrayidx1441, align 8, !dbg !2604, !tbaa !978
  %177 = sext i32 %172 to i64, !dbg !2608
  %178 = sext i32 %173 to i64, !dbg !2608
  br label %for.cond1426.preheader, !dbg !2608

for.cond1185.preheader:                           ; preds = %for.cond1181.preheader, %for.inc1416
  %indvars.iv2066 = phi i64 [ 0, %for.cond1181.preheader ], [ %indvars.iv.next2067, %for.inc1416 ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !365), !dbg !2609
  br label %for.cond1189.preheader, !dbg !2611

for.cond1189.preheader:                           ; preds = %for.inc1255, %for.cond1185.preheader
  %indvars.iv2041 = phi i64 [ 0, %for.cond1185.preheader ], [ %indvars.iv.next2042, %for.inc1255 ]
  %179 = add nsw i64 %indvars.iv2041, %indvars.iv2068, !dbg !2612
  br label %for.body1192, !dbg !2609

for.body1192:                                     ; preds = %for.body1192, %for.cond1189.preheader
  %indvars.iv2029 = phi i64 [ 0, %for.cond1189.preheader ], [ %indvars.iv.next2030, %for.body1192 ]
  %180 = add nsw i64 %indvars.iv2029, %indvars.iv2066, !dbg !2612
  %arrayidx1199 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %180, i64 %179, !dbg !2612
  %181 = load i32* %arrayidx1199, align 4, !dbg !2612, !tbaa !984
  %arrayidx1201 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2029, !dbg !2612
  store i32 %181, i32* %arrayidx1201, align 4, !dbg !2612, !tbaa !984
  %indvars.iv.next2030 = add i64 %indvars.iv2029, 1, !dbg !2609
  %lftr.wideiv2032 = trunc i64 %indvars.iv.next2030 to i32, !dbg !2609
  %exitcond2033 = icmp eq i32 %lftr.wideiv2032, 4, !dbg !2609
  br i1 %exitcond2033, label %for.end1204, label %for.body1192, !dbg !2609

for.end1204:                                      ; preds = %for.body1192
  %182 = load i64* %33, align 16, !dbg !2589
  %183 = trunc i64 %182 to i32, !dbg !2589
  %184 = load i64* %77, align 8, !dbg !2589
  %185 = trunc i64 %184 to i32, !dbg !2589
  %add1207 = add nsw i32 %185, %183, !dbg !2589
  store i32 %add1207, i32* %arrayidx1208, align 16, !dbg !2589, !tbaa !984
  %sub1211 = sub nsw i32 %183, %185, !dbg !2595
  store i32 %sub1211, i32* %arrayidx1212, align 4, !dbg !2595, !tbaa !984
  %186 = lshr i64 %182, 32
  %187 = trunc i64 %186 to i32
  %shr1214 = ashr i32 %187, 1, !dbg !2596
  %188 = lshr i64 %184, 32
  %189 = trunc i64 %188 to i32
  %sub1216 = sub nsw i32 %shr1214, %189, !dbg !2596
  store i32 %sub1216, i32* %arrayidx1217, align 8, !dbg !2596, !tbaa !984
  %shr1220 = ashr i32 %189, 1, !dbg !2597
  %add1221 = add nsw i32 %shr1220, %187, !dbg !2597
  store i32 %add1221, i32* %arrayidx1222, align 4, !dbg !2597, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !365), !dbg !2614
  br label %for.body1226, !dbg !2614

for.body1226:                                     ; preds = %for.body1226.for.body1226_crit_edge, %for.end1204
  %190 = phi i32 [ %add1207, %for.end1204 ], [ %.pre2164, %for.body1226.for.body1226_crit_edge ]
  %indvars.iv2034 = phi i64 [ 0, %for.end1204 ], [ %indvars.iv.next2035, %for.body1226.for.body1226_crit_edge ]
  %191 = sub nsw i64 3, %indvars.iv2034, !dbg !2616
  %arrayidx1231 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %191, !dbg !2618
  %192 = load i32* %arrayidx1231, align 4, !dbg !2618, !tbaa !984
  %add1232 = add nsw i32 %192, %190, !dbg !2618
  %193 = add nsw i64 %indvars.iv2034, %indvars.iv2066, !dbg !2618
  %arrayidx1239 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %193, i64 %179, !dbg !2618
  store i32 %add1232, i32* %arrayidx1239, align 4, !dbg !2618, !tbaa !984
  %sub1244 = sub nsw i32 %190, %192, !dbg !2619
  %194 = add nsw i64 %191, %indvars.iv2066, !dbg !2619
  %arrayidx1251 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %194, i64 %179, !dbg !2619
  store i32 %sub1244, i32* %arrayidx1251, align 4, !dbg !2619, !tbaa !984
  %indvars.iv.next2035 = add i64 %indvars.iv2034, 1, !dbg !2614
  %lftr.wideiv2039 = trunc i64 %indvars.iv.next2035 to i32, !dbg !2614
  %exitcond2040 = icmp eq i32 %lftr.wideiv2039, 2, !dbg !2614
  br i1 %exitcond2040, label %for.inc1255, label %for.body1226.for.body1226_crit_edge, !dbg !2614

for.body1226.for.body1226_crit_edge:              ; preds = %for.body1226
  %arrayidx1229.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next2035
  %.pre2164 = load i32* %arrayidx1229.phi.trans.insert, align 4, !dbg !2618, !tbaa !984
  br label %for.body1226, !dbg !2614

for.inc1255:                                      ; preds = %for.body1226
  %indvars.iv.next2042 = add i64 %indvars.iv2041, 1, !dbg !2611
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !365), !dbg !2609
  %lftr.wideiv2045 = trunc i64 %indvars.iv.next2042 to i32, !dbg !2611
  %exitcond2046 = icmp eq i32 %lftr.wideiv2045, 4, !dbg !2611
  br i1 %exitcond2046, label %for.cond1262.preheader, label %for.cond1189.preheader, !dbg !2611

for.cond1262.preheader:                           ; preds = %for.inc1255, %for.inc1413
  %indvars.iv2060 = phi i64 [ %indvars.iv.next2061, %for.inc1413 ], [ 0, %for.inc1255 ]
  %195 = add nsw i64 %indvars.iv2060, %indvars.iv2066, !dbg !2620
  br label %for.body1265, !dbg !2623

for.body1265:                                     ; preds = %for.body1265, %for.cond1262.preheader
  %indvars.iv2047 = phi i64 [ 0, %for.cond1262.preheader ], [ %indvars.iv.next2048, %for.body1265 ]
  %196 = add nsw i64 %indvars.iv2047, %indvars.iv2068, !dbg !2620
  %arrayidx1272 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %196, !dbg !2620
  %197 = load i32* %arrayidx1272, align 4, !dbg !2620, !tbaa !984
  %arrayidx1274 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2047, !dbg !2620
  store i32 %197, i32* %arrayidx1274, align 4, !dbg !2620, !tbaa !984
  %indvars.iv.next2048 = add i64 %indvars.iv2047, 1, !dbg !2623
  %lftr.wideiv2050 = trunc i64 %indvars.iv.next2048 to i32, !dbg !2623
  %exitcond2051 = icmp eq i32 %lftr.wideiv2050, 4, !dbg !2623
  br i1 %exitcond2051, label %for.end1277, label %for.body1265, !dbg !2623

for.end1277:                                      ; preds = %for.body1265
  %198 = load i64* %33, align 16, !dbg !2624
  %199 = trunc i64 %198 to i32, !dbg !2624
  %200 = load i64* %77, align 8, !dbg !2624
  %201 = trunc i64 %200 to i32, !dbg !2624
  %add1280 = add nsw i32 %201, %199, !dbg !2624
  store i32 %add1280, i32* %arrayidx1208, align 16, !dbg !2624, !tbaa !984
  %sub1284 = sub nsw i32 %199, %201, !dbg !2625
  store i32 %sub1284, i32* %arrayidx1212, align 4, !dbg !2625, !tbaa !984
  %202 = lshr i64 %198, 32
  %203 = trunc i64 %202 to i32
  %shr1287 = ashr i32 %203, 1, !dbg !2626
  %204 = lshr i64 %200, 32
  %205 = trunc i64 %204 to i32
  %sub1289 = sub nsw i32 %shr1287, %205, !dbg !2626
  store i32 %sub1289, i32* %arrayidx1217, align 8, !dbg !2626, !tbaa !984
  %shr1293 = ashr i32 %205, 1, !dbg !2627
  %add1294 = add nsw i32 %shr1293, %203, !dbg !2627
  store i32 %add1294, i32* %arrayidx1222, align 4, !dbg !2627, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !366), !dbg !2628
  br label %for.body1299, !dbg !2628

for.body1299:                                     ; preds = %for.body1299.for.body1299_crit_edge, %for.end1277
  %206 = phi i32 [ %add1280, %for.end1277 ], [ %.pre2165, %for.body1299.for.body1299_crit_edge ]
  %indvars.iv2053 = phi i64 [ 0, %for.end1277 ], [ %indvars.iv.next2054, %for.body1299.for.body1299_crit_edge ]
  %207 = sub nsw i64 3, %indvars.iv2053, !dbg !2629
  %208 = load i32* %max_imgpel_value_uv, align 4, !dbg !2598, !tbaa !984
  %arrayidx1304 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %207, !dbg !2598
  %209 = load i32* %arrayidx1304, align 4, !dbg !2598, !tbaa !984
  %add1305 = add i32 %206, 32, !dbg !2598
  %add1306 = add i32 %add1305, %209, !dbg !2598
  %shr1307 = ashr i32 %add1306, 6, !dbg !2598
  %cmp1308 = icmp slt i32 %shr1307, 0, !dbg !2598
  %.shr1307 = select i1 %cmp1308, i32 0, i32 %shr1307, !dbg !2598
  %cmp1321 = icmp slt i32 %208, %.shr1307, !dbg !2598
  %..shr1307 = select i1 %cmp1321, i32 %208, i32 %.shr1307, !dbg !2598
  %210 = add nsw i64 %indvars.iv2053, %indvars.iv2068, !dbg !2598
  %arrayidx1354 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %210, !dbg !2598
  store i32 %..shr1307, i32* %arrayidx1354, align 4, !dbg !2598, !tbaa !984
  %211 = load i32* %max_imgpel_value_uv, align 4, !dbg !2630, !tbaa !984
  %add1361 = sub i32 %add1305, %209, !dbg !2630
  %shr1362 = ashr i32 %add1361, 6, !dbg !2630
  %cmp1363 = icmp slt i32 %shr1362, 0, !dbg !2630
  %.shr1362 = select i1 %cmp1363, i32 0, i32 %shr1362, !dbg !2630
  %cmp1376 = icmp slt i32 %211, %.shr1362, !dbg !2630
  %cond1402 = select i1 %cmp1376, i32 %211, i32 %.shr1362, !dbg !2630
  %212 = add nsw i64 %207, %indvars.iv2068, !dbg !2630
  %arrayidx1409 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %212, !dbg !2630
  store i32 %cond1402, i32* %arrayidx1409, align 4, !dbg !2630, !tbaa !984
  %indvars.iv.next2054 = add i64 %indvars.iv2053, 1, !dbg !2628
  %lftr.wideiv2058 = trunc i64 %indvars.iv.next2054 to i32, !dbg !2628
  %exitcond2059 = icmp eq i32 %lftr.wideiv2058, 2, !dbg !2628
  br i1 %exitcond2059, label %for.inc1413, label %for.body1299.for.body1299_crit_edge, !dbg !2628

for.body1299.for.body1299_crit_edge:              ; preds = %for.body1299
  %arrayidx1302.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next2054
  %.pre2165 = load i32* %arrayidx1302.phi.trans.insert, align 4, !dbg !2598, !tbaa !984
  br label %for.body1299, !dbg !2628

for.inc1413:                                      ; preds = %for.body1299
  %indvars.iv.next2061 = add i64 %indvars.iv2060, 1, !dbg !2631
  %lftr.wideiv2064 = trunc i64 %indvars.iv.next2061 to i32, !dbg !2631
  %exitcond2065 = icmp eq i32 %lftr.wideiv2064, 4, !dbg !2631
  br i1 %exitcond2065, label %for.inc1416, label %for.cond1262.preheader, !dbg !2631

for.inc1416:                                      ; preds = %for.inc1413
  %indvars.iv.next2067 = add i64 %indvars.iv2066, 4, !dbg !2603
  %213 = trunc i64 %indvars.iv.next2067 to i32, !dbg !2603
  %cmp1182 = icmp slt i32 %213, 5, !dbg !2603
  br i1 %cmp1182, label %for.cond1185.preheader, label %for.inc1419, !dbg !2603

for.inc1419:                                      ; preds = %for.inc1416
  %indvars.iv.next2069 = add i64 %indvars.iv2068, 4, !dbg !2587
  %214 = trunc i64 %indvars.iv.next2069 to i32, !dbg !2587
  %cmp1178 = icmp slt i32 %214, 5, !dbg !2587
  br i1 %cmp1178, label %for.cond1181.preheader, label %for.cond1422.preheader, !dbg !2587

for.cond1426.preheader:                           ; preds = %for.inc1447, %for.cond1422.preheader
  %indvars.iv2024 = phi i64 [ 0, %for.cond1422.preheader ], [ %indvars.iv.next2025, %for.inc1447 ]
  %215 = add nsw i64 %178, %indvars.iv2024, !dbg !2604
  %arrayidx1442 = getelementptr inbounds i16** %176, i64 %215, !dbg !2604
  %216 = load i16** %arrayidx1442, align 8, !dbg !2604, !tbaa !978
  br label %for.body1429, !dbg !2632

for.body1429:                                     ; preds = %for.body1429, %for.cond1426.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1426.preheader ], [ %indvars.iv.next, %for.body1429 ]
  %arrayidx1434 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv2024, !dbg !2604
  %217 = load i32* %arrayidx1434, align 4, !dbg !2604, !tbaa !984
  %conv1435 = trunc i32 %217 to i16, !dbg !2604
  %218 = add nsw i64 %177, %indvars.iv, !dbg !2604
  %arrayidx1443 = getelementptr inbounds i16* %216, i64 %218, !dbg !2604
  store i16 %conv1435, i16* %arrayidx1443, align 2, !dbg !2604, !tbaa !1014
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2632
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2632
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !2632
  br i1 %exitcond, label %for.inc1447, label %for.body1429, !dbg !2632

for.inc1447:                                      ; preds = %for.body1429
  %indvars.iv.next2025 = add i64 %indvars.iv2024, 1, !dbg !2608
  %lftr.wideiv2027 = trunc i64 %indvars.iv.next2025 to i32, !dbg !2608
  %exitcond2028 = icmp eq i32 %lftr.wideiv2027, 8, !dbg !2608
  br i1 %exitcond2028, label %for.end1449, label %for.cond1426.preheader, !dbg !2608

for.end1449:                                      ; preds = %for.inc1447
  call void @llvm.lifetime.end(i64 256, i8* %0) #2, !dbg !2633
  ret i32 %.cr_cbp.addr.0, !dbg !2633
}

; Function Attrs: optsize
declare void @levrun_linfo_c2x2(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @copyblock_sp(i32 %block_x, i32 %block_y) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !417), !dbg !2634
  call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !418), !dbg !2634
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m5}, metadata !423), !dbg !2635
  call void @llvm.dbg.declare(metadata !{[4 x i32]* %m6}, metadata !424), !dbg !2635
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2636, !tbaa !978
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !2636
  %1 = load i32* %current_mb_nr, align 4, !dbg !2636, !tbaa !984
  %idxprom = sext i32 %1 to i64, !dbg !2636
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !2636
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !2636, !tbaa !978
  %3 = bitcast [4 x [4 x i32]]* %predicted_block to i8*, !dbg !2637
  call void @llvm.lifetime.start(i64 64, i8* %3) #2, !dbg !2637
  call void @llvm.dbg.declare(metadata !{[4 x [4 x i32]]* %predicted_block}, metadata !426), !dbg !2637
  %qpsp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 4, !dbg !2638
  %4 = load i32* %qpsp, align 4, !dbg !2638, !tbaa !984
  %div = sdiv i32 %4, 6, !dbg !2638
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !427), !dbg !2638
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !428), !dbg !2639
  %add = add nsw i32 %div, 15, !dbg !2640
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !429), !dbg !2640
  %shl = shl i32 1, %add, !dbg !2641
  call void @llvm.dbg.value(metadata !{i32 %div3}, i64 0, metadata !430), !dbg !2641
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !2642
  %5 = sext i32 %block_x to i64, !dbg !2642
  %6 = sext i32 %block_y to i64, !dbg !2642
  br label %for.cond4.preheader, !dbg !2642

for.cond4.preheader:                              ; preds = %for.inc17, %entry
  %indvars.iv624 = phi i64 [ 0, %entry ], [ %indvars.iv.next625, %for.inc17 ]
  %7 = add nsw i64 %indvars.iv624, %6, !dbg !2644
  br label %for.body6, !dbg !2647

for.cond20.preheader:                             ; preds = %for.inc17
  %rem = srem i32 %4, 6, !dbg !2639
  %div3 = sdiv i32 %shl, 2, !dbg !2641
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !419), !dbg !2648
  %arrayidx66 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3, !dbg !2652
  %arrayidx67 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2, !dbg !2652
  br label %for.cond24.preheader, !dbg !2653

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv619 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next620, %for.body6 ]
  %8 = add nsw i64 %indvars.iv619, %5, !dbg !2644
  %arrayidx12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 45, i64 %8, i64 %7, !dbg !2644
  %9 = load i16* %arrayidx12, align 2, !dbg !2644, !tbaa !1014
  %conv = zext i16 %9 to i32, !dbg !2644
  %arrayidx16 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv619, i64 %indvars.iv624, !dbg !2644
  store i32 %conv, i32* %arrayidx16, align 4, !dbg !2644, !tbaa !984
  %indvars.iv.next620 = add i64 %indvars.iv619, 1, !dbg !2647
  %lftr.wideiv622 = trunc i64 %indvars.iv.next620 to i32, !dbg !2647
  %exitcond623 = icmp eq i32 %lftr.wideiv622, 4, !dbg !2647
  br i1 %exitcond623, label %for.inc17, label %for.body6, !dbg !2647

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next625 = add i64 %indvars.iv624, 1, !dbg !2642
  %lftr.wideiv627 = trunc i64 %indvars.iv.next625 to i32, !dbg !2642
  %exitcond628 = icmp eq i32 %lftr.wideiv627, 4, !dbg !2642
  br i1 %exitcond628, label %for.cond20.preheader, label %for.cond4.preheader, !dbg !2642

for.cond24.preheader:                             ; preds = %for.end53, %for.cond20.preheader
  %indvars.iv615 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next616, %for.end53 ]
  br label %for.body27, !dbg !2648

for.body27:                                       ; preds = %for.body27, %for.cond24.preheader
  %indvars.iv610 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next611, %for.body27 ]
  %10 = sub nsw i64 3, %indvars.iv610, !dbg !2654
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv610, i64 %indvars.iv615, !dbg !2656
  %11 = load i32* %arrayidx32, align 4, !dbg !2656, !tbaa !984
  %arrayidx36 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %10, i64 %indvars.iv615, !dbg !2656
  %12 = load i32* %arrayidx36, align 4, !dbg !2656, !tbaa !984
  %add37 = add nsw i32 %12, %11, !dbg !2656
  %arrayidx39 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv610, !dbg !2656
  store i32 %add37, i32* %arrayidx39, align 4, !dbg !2656, !tbaa !984
  %sub48 = sub nsw i32 %11, %12, !dbg !2657
  %arrayidx50 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %10, !dbg !2657
  store i32 %sub48, i32* %arrayidx50, align 4, !dbg !2657, !tbaa !984
  %indvars.iv.next611 = add i64 %indvars.iv610, 1, !dbg !2648
  %lftr.wideiv613 = trunc i64 %indvars.iv.next611 to i32, !dbg !2648
  %exitcond614 = icmp eq i32 %lftr.wideiv613, 2, !dbg !2648
  br i1 %exitcond614, label %for.end53, label %for.body27, !dbg !2648

for.end53:                                        ; preds = %for.body27
  %13 = bitcast [4 x i32]* %m5 to i64*, !dbg !2658
  %14 = load i64* %13, align 16, !dbg !2658
  %15 = trunc i64 %14 to i32, !dbg !2658
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %add56 = add nsw i32 %17, %15, !dbg !2658
  %arrayidx59 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 0, i64 %indvars.iv615, !dbg !2658
  store i32 %add56, i32* %arrayidx59, align 4, !dbg !2658, !tbaa !984
  %sub62 = sub nsw i32 %15, %17, !dbg !2659
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 2, i64 %indvars.iv615, !dbg !2659
  store i32 %sub62, i32* %arrayidx65, align 4, !dbg !2659, !tbaa !984
  %18 = load i32* %arrayidx66, align 4, !dbg !2652, !tbaa !984
  %mul = shl i32 %18, 1, !dbg !2652
  %19 = bitcast i32* %arrayidx67 to i64*, !dbg !2652
  %20 = load i64* %19, align 8, !dbg !2652
  %21 = trunc i64 %20 to i32, !dbg !2652
  %add68 = add nsw i32 %mul, %21, !dbg !2652
  %arrayidx71 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 1, i64 %indvars.iv615, !dbg !2652
  store i32 %add68, i32* %arrayidx71, align 4, !dbg !2652, !tbaa !984
  %22 = lshr i64 %20, 32
  %23 = trunc i64 %22 to i32
  %mul74 = shl nsw i32 %21, 1, !dbg !2660
  %sub75 = sub nsw i32 %23, %mul74, !dbg !2660
  %arrayidx78 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 3, i64 %indvars.iv615, !dbg !2660
  store i32 %sub75, i32* %arrayidx78, align 4, !dbg !2660, !tbaa !984
  %indvars.iv.next616 = add i64 %indvars.iv615, 1, !dbg !2653
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !419), !dbg !2648
  %lftr.wideiv617 = trunc i64 %indvars.iv.next616 to i32, !dbg !2653
  %exitcond618 = icmp eq i32 %lftr.wideiv617, 4, !dbg !2653
  br i1 %exitcond618, label %for.cond86.preheader, label %for.cond24.preheader, !dbg !2653

for.cond86.preheader:                             ; preds = %for.end53, %for.end115
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %for.end115 ], [ 0, %for.end53 ]
  br label %for.body89, !dbg !2661

for.cond145.preheader:                            ; preds = %for.end115
  %idxprom159 = sext i32 %rem to i64, !dbg !2665
  br label %for.cond149.preheader, !dbg !2668

for.body89:                                       ; preds = %for.body89, %for.cond86.preheader
  %indvars.iv601 = phi i64 [ 0, %for.cond86.preheader ], [ %indvars.iv.next602, %for.body89 ]
  %24 = sub nsw i64 3, %indvars.iv601, !dbg !2669
  %arrayidx94 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 %indvars.iv601, !dbg !2671
  %25 = load i32* %arrayidx94, align 4, !dbg !2671, !tbaa !984
  %arrayidx98 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 %24, !dbg !2671
  %26 = load i32* %arrayidx98, align 4, !dbg !2671, !tbaa !984
  %add99 = add nsw i32 %26, %25, !dbg !2671
  %arrayidx101 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv601, !dbg !2671
  store i32 %add99, i32* %arrayidx101, align 4, !dbg !2671, !tbaa !984
  %sub110 = sub nsw i32 %25, %26, !dbg !2672
  %arrayidx112 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %24, !dbg !2672
  store i32 %sub110, i32* %arrayidx112, align 4, !dbg !2672, !tbaa !984
  %indvars.iv.next602 = add i64 %indvars.iv601, 1, !dbg !2661
  %lftr.wideiv604 = trunc i64 %indvars.iv.next602 to i32, !dbg !2661
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 2, !dbg !2661
  br i1 %exitcond605, label %for.end115, label %for.body89, !dbg !2661

for.end115:                                       ; preds = %for.body89
  %27 = load i64* %13, align 16, !dbg !2673
  %28 = trunc i64 %27 to i32, !dbg !2673
  %29 = lshr i64 %27, 32
  %30 = trunc i64 %29 to i32
  %add118 = add nsw i32 %30, %28, !dbg !2673
  %arrayidx121 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 0, !dbg !2673
  store i32 %add118, i32* %arrayidx121, align 16, !dbg !2673, !tbaa !984
  %sub124 = sub nsw i32 %28, %30, !dbg !2674
  %arrayidx127 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 2, !dbg !2674
  store i32 %sub124, i32* %arrayidx127, align 8, !dbg !2674, !tbaa !984
  %31 = load i32* %arrayidx66, align 4, !dbg !2675, !tbaa !984
  %mul129 = shl i32 %31, 1, !dbg !2675
  %32 = load i64* %19, align 8, !dbg !2675
  %33 = trunc i64 %32 to i32, !dbg !2675
  %add131 = add nsw i32 %mul129, %33, !dbg !2675
  %arrayidx134 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 1, !dbg !2675
  store i32 %add131, i32* %arrayidx134, align 4, !dbg !2675, !tbaa !984
  %34 = lshr i64 %32, 32
  %35 = trunc i64 %34 to i32
  %mul137 = shl nsw i32 %33, 1, !dbg !2676
  %sub138 = sub nsw i32 %35, %mul137, !dbg !2676
  %arrayidx141 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 3, !dbg !2676
  store i32 %sub138, i32* %arrayidx141, align 4, !dbg !2676, !tbaa !984
  %indvars.iv.next607 = add i64 %indvars.iv606, 1, !dbg !2677
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !2661
  %lftr.wideiv608 = trunc i64 %indvars.iv.next607 to i32, !dbg !2677
  %exitcond609 = icmp eq i32 %lftr.wideiv608, 4, !dbg !2677
  br i1 %exitcond609, label %for.cond145.preheader, label %for.cond86.preheader, !dbg !2677

for.cond149.preheader:                            ; preds = %for.inc185, %for.cond145.preheader
  %indvars.iv597 = phi i64 [ 0, %for.cond145.preheader ], [ %indvars.iv.next598, %for.inc185 ]
  br label %for.body152, !dbg !2678

for.cond188.preheader:                            ; preds = %for.inc185
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !419), !dbg !2679
  %arrayidx209 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0, !dbg !2683
  %arrayidx213 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1, !dbg !2684
  %arrayidx218 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2, !dbg !2685
  %arrayidx223 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3, !dbg !2686
  br label %for.cond192.preheader, !dbg !2687

for.body152:                                      ; preds = %for.body152, %for.cond149.preheader
  %indvars.iv593 = phi i64 [ 0, %for.cond149.preheader ], [ %indvars.iv.next594, %for.body152 ]
  %arrayidx156 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv593, i64 %indvars.iv597, !dbg !2665
  %36 = load i32* %arrayidx156, align 4, !dbg !2665, !tbaa !984
  %ispos = icmp sgt i32 %36, -1, !dbg !2665
  %neg = sub i32 0, %36, !dbg !2665
  %37 = select i1 %ispos, i32 %36, i32 %neg, !dbg !2665
  %arrayidx162 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom159, i64 %indvars.iv593, i64 %indvars.iv597, !dbg !2665
  %38 = load i32* %arrayidx162, align 4, !dbg !2665, !tbaa !984
  %mul163 = mul nsw i32 %37, %38, !dbg !2665
  %add164 = add nsw i32 %mul163, %div3, !dbg !2665
  %shr = ashr i32 %add164, %add, !dbg !2665
  %call169 = call i32 @sign(i32 %shr, i32 %36) #4, !dbg !2665
  %arrayidx175 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom159, i64 %indvars.iv593, i64 %indvars.iv597, !dbg !2665
  %39 = load i32* %arrayidx175, align 4, !dbg !2665, !tbaa !984
  %mul176 = mul nsw i32 %39, %call169, !dbg !2665
  %shl177 = shl i32 %mul176, %div, !dbg !2665
  %40 = load %struct.ImageParameters** @img, align 8, !dbg !2665, !tbaa !978
  %arrayidx181 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv593, i64 %indvars.iv597, !dbg !2665
  store i32 %shl177, i32* %arrayidx181, align 4, !dbg !2665, !tbaa !984
  %indvars.iv.next594 = add i64 %indvars.iv593, 1, !dbg !2678
  %lftr.wideiv595 = trunc i64 %indvars.iv.next594 to i32, !dbg !2678
  %exitcond596 = icmp eq i32 %lftr.wideiv595, 4, !dbg !2678
  br i1 %exitcond596, label %for.inc185, label %for.body152, !dbg !2678

for.inc185:                                       ; preds = %for.body152
  %indvars.iv.next598 = add i64 %indvars.iv597, 1, !dbg !2668
  %lftr.wideiv599 = trunc i64 %indvars.iv.next598 to i32, !dbg !2668
  %exitcond600 = icmp eq i32 %lftr.wideiv599, 4, !dbg !2668
  br i1 %exitcond600, label %for.cond188.preheader, label %for.cond149.preheader, !dbg !2668

for.cond192.preheader:                            ; preds = %for.inc252, %for.cond188.preheader
  %indvars.iv589 = phi i64 [ 0, %for.cond188.preheader ], [ %indvars.iv.next590, %for.inc252 ]
  br label %for.body195, !dbg !2679

for.cond255.preheader:                            ; preds = %for.inc252
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !2688
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 155, !dbg !2692
  br label %for.cond259.preheader, !dbg !2695

for.body195:                                      ; preds = %for.body195, %for.cond192.preheader
  %indvars.iv580 = phi i64 [ 0, %for.cond192.preheader ], [ %indvars.iv.next581, %for.body195 ]
  %arrayidx200 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv580, i64 %indvars.iv589, !dbg !2696
  %41 = load i32* %arrayidx200, align 4, !dbg !2696, !tbaa !984
  %arrayidx202 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv580, !dbg !2696
  store i32 %41, i32* %arrayidx202, align 4, !dbg !2696, !tbaa !984
  %indvars.iv.next581 = add i64 %indvars.iv580, 1, !dbg !2679
  %lftr.wideiv582 = trunc i64 %indvars.iv.next581 to i32, !dbg !2679
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 4, !dbg !2679
  br i1 %exitcond583, label %for.end205, label %for.body195, !dbg !2679

for.end205:                                       ; preds = %for.body195
  %42 = load i64* %13, align 16, !dbg !2683
  %43 = trunc i64 %42 to i32, !dbg !2683
  %44 = load i64* %19, align 8, !dbg !2683
  %45 = trunc i64 %44 to i32, !dbg !2683
  %add208 = add nsw i32 %45, %43, !dbg !2683
  store i32 %add208, i32* %arrayidx209, align 16, !dbg !2683, !tbaa !984
  %sub212 = sub nsw i32 %43, %45, !dbg !2684
  store i32 %sub212, i32* %arrayidx213, align 4, !dbg !2684, !tbaa !984
  %46 = lshr i64 %42, 32
  %47 = trunc i64 %46 to i32
  %shr215 = ashr i32 %47, 1, !dbg !2685
  %48 = lshr i64 %44, 32
  %49 = trunc i64 %48 to i32
  %sub217 = sub nsw i32 %shr215, %49, !dbg !2685
  store i32 %sub217, i32* %arrayidx218, align 8, !dbg !2685, !tbaa !984
  %shr221 = ashr i32 %49, 1, !dbg !2686
  %add222 = add nsw i32 %shr221, %47, !dbg !2686
  store i32 %add222, i32* %arrayidx223, align 4, !dbg !2686, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !419), !dbg !2698
  br label %for.body227, !dbg !2698

for.body227:                                      ; preds = %for.body227.for.body227_crit_edge, %for.end205
  %50 = phi i32 [ %add208, %for.end205 ], [ %.pre, %for.body227.for.body227_crit_edge ]
  %indvars.iv584 = phi i64 [ 0, %for.end205 ], [ %indvars.iv.next585, %for.body227.for.body227_crit_edge ]
  %51 = sub nsw i64 3, %indvars.iv584, !dbg !2700
  %arrayidx232 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %51, !dbg !2702
  %52 = load i32* %arrayidx232, align 4, !dbg !2702, !tbaa !984
  %add233 = add nsw i32 %52, %50, !dbg !2702
  %arrayidx238 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv584, i64 %indvars.iv589, !dbg !2702
  store i32 %add233, i32* %arrayidx238, align 4, !dbg !2702, !tbaa !984
  %sub243 = sub nsw i32 %50, %52, !dbg !2703
  %arrayidx248 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %51, i64 %indvars.iv589, !dbg !2703
  store i32 %sub243, i32* %arrayidx248, align 4, !dbg !2703, !tbaa !984
  %indvars.iv.next585 = add i64 %indvars.iv584, 1, !dbg !2698
  %lftr.wideiv587 = trunc i64 %indvars.iv.next585 to i32, !dbg !2698
  %exitcond588 = icmp eq i32 %lftr.wideiv587, 2, !dbg !2698
  br i1 %exitcond588, label %for.inc252, label %for.body227.for.body227_crit_edge, !dbg !2698

for.body227.for.body227_crit_edge:                ; preds = %for.body227
  %arrayidx230.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next585
  %.pre = load i32* %arrayidx230.phi.trans.insert, align 4, !dbg !2702, !tbaa !984
  br label %for.body227, !dbg !2698

for.inc252:                                       ; preds = %for.body227
  %indvars.iv.next590 = add i64 %indvars.iv589, 1, !dbg !2687
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !419), !dbg !2679
  %lftr.wideiv591 = trunc i64 %indvars.iv.next590 to i32, !dbg !2687
  %exitcond592 = icmp eq i32 %lftr.wideiv591, 4, !dbg !2687
  br i1 %exitcond592, label %for.cond255.preheader, label %for.cond192.preheader, !dbg !2687

for.cond259.preheader:                            ; preds = %for.inc400, %for.cond255.preheader
  %indvars.iv576 = phi i64 [ 0, %for.cond255.preheader ], [ %indvars.iv.next577, %for.inc400 ]
  br label %for.body262, !dbg !2688

for.cond403.preheader:                            ; preds = %for.inc400
  %pix_x = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 33, !dbg !2704
  %53 = load i32* %pix_x, align 4, !dbg !2704, !tbaa !984
  %pix_y = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 34, !dbg !2704
  %54 = load i32* %pix_y, align 4, !dbg !2704, !tbaa !984
  %55 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2704, !tbaa !978
  %imgY = getelementptr inbounds %struct.storable_picture* %55, i64 0, i32 25, !dbg !2704
  %56 = load i16*** %imgY, align 8, !dbg !2704, !tbaa !978
  br label %for.cond407.preheader, !dbg !2707

for.body262:                                      ; preds = %for.body262, %for.cond259.preheader
  %indvars.iv566 = phi i64 [ 0, %for.cond259.preheader ], [ %indvars.iv.next567, %for.body262 ]
  %arrayidx267 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %indvars.iv566, !dbg !2708
  %57 = load i32* %arrayidx267, align 4, !dbg !2708, !tbaa !984
  %arrayidx269 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv566, !dbg !2708
  store i32 %57, i32* %arrayidx269, align 4, !dbg !2708, !tbaa !984
  %indvars.iv.next567 = add i64 %indvars.iv566, 1, !dbg !2688
  %lftr.wideiv568 = trunc i64 %indvars.iv.next567 to i32, !dbg !2688
  %exitcond569 = icmp eq i32 %lftr.wideiv568, 4, !dbg !2688
  br i1 %exitcond569, label %for.end272, label %for.body262, !dbg !2688

for.end272:                                       ; preds = %for.body262
  %58 = load i64* %13, align 16, !dbg !2709
  %59 = trunc i64 %58 to i32, !dbg !2709
  %60 = load i64* %19, align 8, !dbg !2709
  %61 = trunc i64 %60 to i32, !dbg !2709
  %add275 = add nsw i32 %61, %59, !dbg !2709
  store i32 %add275, i32* %arrayidx209, align 16, !dbg !2709, !tbaa !984
  %sub279 = sub nsw i32 %59, %61, !dbg !2710
  store i32 %sub279, i32* %arrayidx213, align 4, !dbg !2710, !tbaa !984
  %62 = lshr i64 %58, 32
  %63 = trunc i64 %62 to i32
  %shr282 = ashr i32 %63, 1, !dbg !2711
  %64 = lshr i64 %60, 32
  %65 = trunc i64 %64 to i32
  %sub284 = sub nsw i32 %shr282, %65, !dbg !2711
  store i32 %sub284, i32* %arrayidx218, align 8, !dbg !2711, !tbaa !984
  %shr288 = ashr i32 %65, 1, !dbg !2712
  %add289 = add nsw i32 %shr288, %63, !dbg !2712
  store i32 %add289, i32* %arrayidx223, align 4, !dbg !2712, !tbaa !984
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !2713
  br label %for.body294, !dbg !2713

for.body294:                                      ; preds = %for.body294.for.body294_crit_edge, %for.end272
  %66 = phi i32 [ %add275, %for.end272 ], [ %.pre632, %for.body294.for.body294_crit_edge ]
  %indvars.iv571 = phi i64 [ 0, %for.end272 ], [ %indvars.iv.next572, %for.body294.for.body294_crit_edge ]
  %67 = sub nsw i64 3, %indvars.iv571, !dbg !2714
  %68 = load i32* %max_imgpel_value, align 4, !dbg !2692, !tbaa !984
  %arrayidx299 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %67, !dbg !2692
  %69 = load i32* %arrayidx299, align 4, !dbg !2692, !tbaa !984
  %add300 = add i32 %66, 32, !dbg !2692
  %add301 = add i32 %add300, %69, !dbg !2692
  %shr302 = ashr i32 %add301, 6, !dbg !2692
  %cmp303 = icmp slt i32 %shr302, 0, !dbg !2692
  %.shr302 = select i1 %cmp303, i32 0, i32 %shr302, !dbg !2692
  %cmp312 = icmp slt i32 %68, %.shr302, !dbg !2692
  %..shr302 = select i1 %cmp312, i32 %68, i32 %.shr302, !dbg !2692
  %arrayidx343 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %indvars.iv571, !dbg !2692
  store i32 %..shr302, i32* %arrayidx343, align 4, !dbg !2692, !tbaa !984
  %70 = load i32* %max_imgpel_value, align 4, !dbg !2715, !tbaa !984
  %add350 = sub i32 %add300, %69, !dbg !2715
  %shr351 = ashr i32 %add350, 6, !dbg !2715
  %cmp352 = icmp slt i32 %shr351, 0, !dbg !2715
  %.shr351 = select i1 %cmp352, i32 0, i32 %shr351, !dbg !2715
  %cmp365 = icmp slt i32 %70, %.shr351, !dbg !2715
  %cond391 = select i1 %cmp365, i32 %70, i32 %.shr351, !dbg !2715
  %arrayidx396 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %67, !dbg !2715
  store i32 %cond391, i32* %arrayidx396, align 4, !dbg !2715, !tbaa !984
  %indvars.iv.next572 = add i64 %indvars.iv571, 1, !dbg !2713
  %lftr.wideiv574 = trunc i64 %indvars.iv.next572 to i32, !dbg !2713
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 2, !dbg !2713
  br i1 %exitcond575, label %for.inc400, label %for.body294.for.body294_crit_edge, !dbg !2713

for.body294.for.body294_crit_edge:                ; preds = %for.body294
  %arrayidx297.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next572
  %.pre632 = load i32* %arrayidx297.phi.trans.insert, align 4, !dbg !2692, !tbaa !984
  br label %for.body294, !dbg !2713

for.inc400:                                       ; preds = %for.body294
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !2695
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !2688
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32, !dbg !2695
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 4, !dbg !2695
  br i1 %exitcond579, label %for.cond403.preheader, label %for.cond259.preheader, !dbg !2695

for.cond407.preheader:                            ; preds = %for.inc428, %for.cond403.preheader
  %indvars.iv562 = phi i64 [ 0, %for.cond403.preheader ], [ %indvars.iv.next563, %for.inc428 ]
  %71 = trunc i64 %indvars.iv562 to i32, !dbg !2704
  %add420 = add i32 %71, %block_y, !dbg !2704
  %add421 = add i32 %add420, %54, !dbg !2704
  %idxprom422 = sext i32 %add421 to i64, !dbg !2704
  %arrayidx423 = getelementptr inbounds i16** %56, i64 %idxprom422, !dbg !2704
  %72 = load i16** %arrayidx423, align 8, !dbg !2704, !tbaa !978
  br label %for.body410, !dbg !2716

for.body410:                                      ; preds = %for.body410, %for.cond407.preheader
  %indvars.iv = phi i64 [ 0, %for.cond407.preheader ], [ %indvars.iv.next, %for.body410 ]
  %arrayidx415 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv562, !dbg !2704
  %73 = load i32* %arrayidx415, align 4, !dbg !2704, !tbaa !984
  %conv416 = trunc i32 %73 to i16, !dbg !2704
  %74 = trunc i64 %indvars.iv to i32, !dbg !2704
  %add417 = add i32 %74, %block_x, !dbg !2704
  %add418 = add i32 %add417, %53, !dbg !2704
  %idxprom419 = sext i32 %add418 to i64, !dbg !2704
  %arrayidx424 = getelementptr inbounds i16* %72, i64 %idxprom419, !dbg !2704
  store i16 %conv416, i16* %arrayidx424, align 2, !dbg !2704, !tbaa !1014
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2716
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2716
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2716
  br i1 %exitcond, label %for.inc428, label %for.body410, !dbg !2716

for.inc428:                                       ; preds = %for.body410
  %indvars.iv.next563 = add i64 %indvars.iv562, 1, !dbg !2707
  %lftr.wideiv564 = trunc i64 %indvars.iv.next563 to i32, !dbg !2707
  %exitcond565 = icmp eq i32 %lftr.wideiv564, 4, !dbg !2707
  br i1 %exitcond565, label %for.end430, label %for.cond407.preheader, !dbg !2707

for.end430:                                       ; preds = %for.inc428
  call void @llvm.lifetime.end(i64 64, i8* %3) #2, !dbg !2717
  ret void, !dbg !2717
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare double @exp2(double)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !431, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9, metadata !14}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!7 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!8 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!9 = metadata !{i32 786436, metadata !10, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!13 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!14 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!17 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !66, metadata !95, metadata !198, metadata !229, metadata !276, metadata !304, metadata !316, metadata !361, metadata !413}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"intrapred_luma", metadata !"intrapred_luma", metadata !"", i32 106, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*, i32*)* @intrapred_luma, null, null, metadata !26, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [intrapred_luma]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !24, metadata !25, metadata !25, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !39, metadata !43, metadata !44, metadata !45, metadata !46, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65}
!27 = metadata !{i32 786689, metadata !20, metadata !"img_x", metadata !21, i32 16777322, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_x] [line 106]
!28 = metadata !{i32 786689, metadata !20, metadata !"img_y", metadata !21, i32 33554538, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_y] [line 106]
!29 = metadata !{i32 786689, metadata !20, metadata !"left_available", metadata !21, i32 50331754, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [left_available] [line 106]
!30 = metadata !{i32 786689, metadata !20, metadata !"up_available", metadata !21, i32 67108970, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up_available] [line 106]
!31 = metadata !{i32 786689, metadata !20, metadata !"all_available", metadata !21, i32 83886186, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [all_available] [line 106]
!32 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !21, i32 108, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!33 = metadata !{i32 786688, metadata !20, metadata !"j", metadata !21, i32 108, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 108]
!34 = metadata !{i32 786688, metadata !20, metadata !"s0", metadata !21, i32 109, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 109]
!35 = metadata !{i32 786688, metadata !20, metadata !"PredPel", metadata !21, i32 110, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PredPel] [line 110]
!36 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 416, i64 32, i32 0, i32 0, metadata !24, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 416, align 32, offset 0] [from int]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!39 = metadata !{i32 786688, metadata !20, metadata !"imgY", metadata !21, i32 111, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY] [line 111]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!42 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!43 = metadata !{i32 786688, metadata !20, metadata !"ioff", metadata !21, i32 113, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioff] [line 113]
!44 = metadata !{i32 786688, metadata !20, metadata !"joff", metadata !21, i32 114, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [joff] [line 114]
!45 = metadata !{i32 786688, metadata !20, metadata !"mb_nr", metadata !21, i32 115, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_nr] [line 115]
!46 = metadata !{i32 786688, metadata !20, metadata !"pix_a", metadata !21, i32 117, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_a] [line 117]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !48, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from PixelPos]
!48 = metadata !{i32 786454, metadata !1, null, metadata !"PixelPos", i32 305, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [PixelPos] [line 305, size 0, align 0, offset 0] [from pix_pos]
!49 = metadata !{i32 786451, metadata !4, null, metadata !"pix_pos", i32 297, i64 192, i64 32, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [pix_pos] [line 297, size 192, align 32, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!51 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"available", i32 299, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [available] [line 299, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"mb_addr", i32 300, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [mb_addr] [line 300, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"x", i32 301, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [x] [line 301, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"y", i32 302, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [y] [line 302, size 32, align 32, offset 96] [from int]
!55 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"pos_x", i32 303, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [pos_x] [line 303, size 32, align 32, offset 128] [from int]
!56 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"pos_y", i32 304, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [pos_y] [line 304, size 32, align 32, offset 160] [from int]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!59 = metadata !{i32 786688, metadata !20, metadata !"pix_b", metadata !21, i32 118, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_b] [line 118]
!60 = metadata !{i32 786688, metadata !20, metadata !"pix_c", metadata !21, i32 118, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_c] [line 118]
!61 = metadata !{i32 786688, metadata !20, metadata !"pix_d", metadata !21, i32 118, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pix_d] [line 118]
!62 = metadata !{i32 786688, metadata !20, metadata !"block_available_up", metadata !21, i32 120, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up] [line 120]
!63 = metadata !{i32 786688, metadata !20, metadata !"block_available_left", metadata !21, i32 121, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_left] [line 121]
!64 = metadata !{i32 786688, metadata !20, metadata !"block_available_up_left", metadata !21, i32 122, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up_left] [line 122]
!65 = metadata !{i32 786688, metadata !20, metadata !"block_available_up_right", metadata !21, i32 123, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_available_up_right] [line 123]
!66 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"intrapred_luma_16x16", metadata !"intrapred_luma_16x16", metadata !"", i32 396, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @intrapred_luma_16x16, null, null, metadata !69, i32 397} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 397] [intrapred_luma_16x16]
!67 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{null}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !92, metadata !93, metadata !94}
!70 = metadata !{i32 786688, metadata !66, metadata !"s0", metadata !21, i32 398, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 398]
!71 = metadata !{i32 786688, metadata !66, metadata !"s1", metadata !21, i32 398, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 398]
!72 = metadata !{i32 786688, metadata !66, metadata !"s2", metadata !21, i32 398, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 398]
!73 = metadata !{i32 786688, metadata !66, metadata !"s", metadata !21, i32 399, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 399]
!74 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !24, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!75 = metadata !{metadata !76, metadata !77}
!76 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!77 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!78 = metadata !{i32 786688, metadata !66, metadata !"i", metadata !21, i32 400, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 400]
!79 = metadata !{i32 786688, metadata !66, metadata !"j", metadata !21, i32 400, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 400]
!80 = metadata !{i32 786688, metadata !66, metadata !"ih", metadata !21, i32 402, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ih] [line 402]
!81 = metadata !{i32 786688, metadata !66, metadata !"iv", metadata !21, i32 402, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 402]
!82 = metadata !{i32 786688, metadata !66, metadata !"ib", metadata !21, i32 403, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 403]
!83 = metadata !{i32 786688, metadata !66, metadata !"ic", metadata !21, i32 403, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 403]
!84 = metadata !{i32 786688, metadata !66, metadata !"iaa", metadata !21, i32 403, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iaa] [line 403]
!85 = metadata !{i32 786688, metadata !66, metadata !"imgY_pred", metadata !21, i32 405, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY_pred] [line 405]
!86 = metadata !{i32 786688, metadata !66, metadata !"mb_nr", metadata !21, i32 406, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_nr] [line 406]
!87 = metadata !{i32 786688, metadata !66, metadata !"up", metadata !21, i32 408, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up] [line 408]
!88 = metadata !{i32 786688, metadata !66, metadata !"left", metadata !21, i32 409, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 409]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3264, i64 32, i32 0, i32 0, metadata !48, metadata !90, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3264, align 32, offset 0] [from PixelPos]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786465, i64 0, i64 17}       ; [ DW_TAG_subrange_type ] [0, 16]
!92 = metadata !{i32 786688, metadata !66, metadata !"up_avail", metadata !21, i32 411, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up_avail] [line 411]
!93 = metadata !{i32 786688, metadata !66, metadata !"left_avail", metadata !21, i32 411, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left_avail] [line 411]
!94 = metadata !{i32 786688, metadata !66, metadata !"left_up_avail", metadata !21, i32 411, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left_up_avail] [line 411]
!95 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_luma_16x16", metadata !"dct_luma_16x16", metadata !"", i32 514, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dct_luma_16x16, null, null, metadata !98, i32 515} ; [ DW_TAG_subprogram ] [line 514] [def] [scope 515] [dct_luma_16x16]
!96 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !24, metadata !24}
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !109, metadata !112, metadata !114, metadata !115, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!99 = metadata !{i32 786689, metadata !95, metadata !"new_intra_mode", metadata !21, i32 16777730, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [new_intra_mode] [line 514]
!100 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !21, i32 517, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 517]
!101 = metadata !{i32 786688, metadata !95, metadata !"j", metadata !21, i32 517, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 517]
!102 = metadata !{i32 786688, metadata !95, metadata !"ii", metadata !21, i32 518, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 518]
!103 = metadata !{i32 786688, metadata !95, metadata !"jj", metadata !21, i32 518, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 518]
!104 = metadata !{i32 786688, metadata !95, metadata !"i1", metadata !21, i32 519, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 519]
!105 = metadata !{i32 786688, metadata !95, metadata !"j1", metadata !21, i32 519, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 519]
!106 = metadata !{i32 786688, metadata !95, metadata !"M1", metadata !21, i32 520, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M1] [line 520]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !24, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!108 = metadata !{metadata !76, metadata !76}
!109 = metadata !{i32 786688, metadata !95, metadata !"M4", metadata !21, i32 521, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M4] [line 521]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !24, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!111 = metadata !{metadata !58, metadata !58}
!112 = metadata !{i32 786688, metadata !95, metadata !"M5", metadata !21, i32 522, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M5] [line 522]
!113 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !24, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!114 = metadata !{i32 786688, metadata !95, metadata !"M6", metadata !21, i32 522, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M6] [line 522]
!115 = metadata !{i32 786688, metadata !95, metadata !"M0", metadata !21, i32 523, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M0] [line 523]
!116 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !24, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!117 = metadata !{metadata !58, metadata !58, metadata !58, metadata !58}
!118 = metadata !{i32 786688, metadata !95, metadata !"run", metadata !21, i32 524, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 524]
!119 = metadata !{i32 786688, metadata !95, metadata !"scan_pos", metadata !21, i32 524, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 524]
!120 = metadata !{i32 786688, metadata !95, metadata !"coeff_ctr", metadata !21, i32 524, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 524]
!121 = metadata !{i32 786688, metadata !95, metadata !"level", metadata !21, i32 524, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 524]
!122 = metadata !{i32 786688, metadata !95, metadata !"qp_per", metadata !21, i32 525, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 525]
!123 = metadata !{i32 786688, metadata !95, metadata !"qp_rem", metadata !21, i32 525, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 525]
!124 = metadata !{i32 786688, metadata !95, metadata !"q_bits", metadata !21, i32 525, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 525]
!125 = metadata !{i32 786688, metadata !95, metadata !"ac_coef", metadata !21, i32 526, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ac_coef] [line 526]
!126 = metadata !{i32 786688, metadata !95, metadata !"currMB", metadata !21, i32 528, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 528]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!128 = metadata !{i32 786454, metadata !4, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!129 = metadata !{i32 786451, metadata !4, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !140, metadata !142, metadata !143, metadata !144, metadata !147, metadata !150, metadata !151, metadata !152, metadata !157, metadata !158, metadata !159, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!134 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!135 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!136 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !137} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !24, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!138 = metadata !{metadata !139}
!139 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!140 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!142 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !141} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!143 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!144 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !145} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!145 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !24, metadata !146, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!146 = metadata !{metadata !77, metadata !58, metadata !58, metadata !77}
!147 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !148} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !24, metadata !149, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!149 = metadata !{metadata !76}
!150 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !148} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!151 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !24} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!152 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !153} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!153 = metadata !{i32 786454, metadata !154, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!154 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!155 = metadata !{i32 786454, metadata !154, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!156 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!157 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !113} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!158 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !113} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!159 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !160} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!160 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!161 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !24} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!162 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !24} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!163 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !24} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!164 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !24} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !24} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!166 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !24} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!167 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!168 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!169 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!170 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!171 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!172 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!173 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!174 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !24} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!175 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !24} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!176 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !24} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!177 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !24} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!178 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !24} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!179 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !180} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!180 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!181 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !24} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!182 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !24} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!183 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !24} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!184 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !24} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!185 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !24} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!186 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !24} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!187 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !24} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!188 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !24} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!189 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !24} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!190 = metadata !{i32 786688, metadata !95, metadata !"b8", metadata !21, i32 530, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 530]
!191 = metadata !{i32 786688, metadata !95, metadata !"b4", metadata !21, i32 530, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 530]
!192 = metadata !{i32 786688, metadata !95, metadata !"DCLevel", metadata !21, i32 531, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCLevel] [line 531]
!193 = metadata !{i32 786688, metadata !95, metadata !"DCRun", metadata !21, i32 532, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCRun] [line 532]
!194 = metadata !{i32 786688, metadata !95, metadata !"ACLevel", metadata !21, i32 533, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 533]
!195 = metadata !{i32 786688, metadata !95, metadata !"ACRun", metadata !21, i32 534, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 534]
!196 = metadata !{i32 786688, metadata !95, metadata !"lossless_qpprime", metadata !21, i32 536, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lossless_qpprime] [line 536]
!197 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!198 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_luma", metadata !"dct_luma", metadata !"", i32 875, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, i32)* @dct_luma, null, null, metadata !201, i32 876} ; [ DW_TAG_subprogram ] [line 875] [def] [scope 876] [dct_luma]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{metadata !24, metadata !24, metadata !24, metadata !25, metadata !24}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228}
!202 = metadata !{i32 786689, metadata !198, metadata !"block_x", metadata !21, i32 16778091, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 875]
!203 = metadata !{i32 786689, metadata !198, metadata !"block_y", metadata !21, i32 33555307, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 875]
!204 = metadata !{i32 786689, metadata !198, metadata !"coeff_cost", metadata !21, i32 50332523, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff_cost] [line 875]
!205 = metadata !{i32 786689, metadata !198, metadata !"intra", metadata !21, i32 67109739, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intra] [line 875]
!206 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 879]
!207 = metadata !{i32 786688, metadata !198, metadata !"j", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 879]
!208 = metadata !{i32 786688, metadata !198, metadata !"i1", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 879]
!209 = metadata !{i32 786688, metadata !198, metadata !"j1", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 879]
!210 = metadata !{i32 786688, metadata !198, metadata !"ilev", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 879]
!211 = metadata !{i32 786688, metadata !198, metadata !"m5", metadata !21, i32 879, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 879]
!212 = metadata !{i32 786688, metadata !198, metadata !"m6", metadata !21, i32 879, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 879]
!213 = metadata !{i32 786688, metadata !198, metadata !"coeff_ctr", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 879]
!214 = metadata !{i32 786688, metadata !198, metadata !"level", metadata !21, i32 881, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 881]
!215 = metadata !{i32 786688, metadata !198, metadata !"scan_pos", metadata !21, i32 881, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 881]
!216 = metadata !{i32 786688, metadata !198, metadata !"run", metadata !21, i32 881, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 881]
!217 = metadata !{i32 786688, metadata !198, metadata !"nonzero", metadata !21, i32 882, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzero] [line 882]
!218 = metadata !{i32 786688, metadata !198, metadata !"qp_per", metadata !21, i32 883, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 883]
!219 = metadata !{i32 786688, metadata !198, metadata !"qp_rem", metadata !21, i32 883, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 883]
!220 = metadata !{i32 786688, metadata !198, metadata !"q_bits", metadata !21, i32 883, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 883]
!221 = metadata !{i32 786688, metadata !198, metadata !"pos_x", metadata !21, i32 885, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_x] [line 885]
!222 = metadata !{i32 786688, metadata !198, metadata !"pos_y", metadata !21, i32 886, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_y] [line 886]
!223 = metadata !{i32 786688, metadata !198, metadata !"b8", metadata !21, i32 887, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 887]
!224 = metadata !{i32 786688, metadata !198, metadata !"b4", metadata !21, i32 888, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 888]
!225 = metadata !{i32 786688, metadata !198, metadata !"ACLevel", metadata !21, i32 889, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 889]
!226 = metadata !{i32 786688, metadata !198, metadata !"ACRun", metadata !21, i32 890, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 890]
!227 = metadata !{i32 786688, metadata !198, metadata !"currMB", metadata !21, i32 892, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 892]
!228 = metadata !{i32 786688, metadata !198, metadata !"lossless_qpprime", metadata !21, i32 893, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lossless_qpprime] [line 893]
!229 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_chroma", metadata !"dct_chroma", metadata !"", i32 1098, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dct_chroma, null, null, metadata !232, i32 1099} ; [ DW_TAG_subprogram ] [line 1098] [def] [scope 1099] [dct_chroma]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !24, metadata !24, metadata !24}
!232 = metadata !{metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275}
!233 = metadata !{i32 786689, metadata !229, metadata !"uv", metadata !21, i32 16778314, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 1098]
!234 = metadata !{i32 786689, metadata !229, metadata !"cr_cbp", metadata !21, i32 33555530, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr_cbp] [line 1098]
!235 = metadata !{i32 786688, metadata !229, metadata !"i", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1100]
!236 = metadata !{i32 786688, metadata !229, metadata !"j", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1100]
!237 = metadata !{i32 786688, metadata !229, metadata !"i1", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 1100]
!238 = metadata !{i32 786688, metadata !229, metadata !"j2", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j2] [line 1100]
!239 = metadata !{i32 786688, metadata !229, metadata !"ilev", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 1100]
!240 = metadata !{i32 786688, metadata !229, metadata !"n2", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 1100]
!241 = metadata !{i32 786688, metadata !229, metadata !"n1", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 1100]
!242 = metadata !{i32 786688, metadata !229, metadata !"j1", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 1100]
!243 = metadata !{i32 786688, metadata !229, metadata !"mb_y", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_y] [line 1100]
!244 = metadata !{i32 786688, metadata !229, metadata !"coeff_ctr", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 1100]
!245 = metadata !{i32 786688, metadata !229, metadata !"level", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1100]
!246 = metadata !{i32 786688, metadata !229, metadata !"scan_pos", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 1100]
!247 = metadata !{i32 786688, metadata !229, metadata !"run", metadata !21, i32 1100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 1100]
!248 = metadata !{i32 786688, metadata !229, metadata !"m1", metadata !21, i32 1101, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m1] [line 1101]
!249 = metadata !{i32 786688, metadata !229, metadata !"m5", metadata !21, i32 1101, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 1101]
!250 = metadata !{i32 786688, metadata !229, metadata !"m6", metadata !21, i32 1101, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 1101]
!251 = metadata !{i32 786688, metadata !229, metadata !"coeff_cost", metadata !21, i32 1102, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_cost] [line 1102]
!252 = metadata !{i32 786688, metadata !229, metadata !"cr_cbp_tmp", metadata !21, i32 1103, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr_cbp_tmp] [line 1103]
!253 = metadata !{i32 786688, metadata !229, metadata !"DCcoded", metadata !21, i32 1104, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCcoded] [line 1104]
!254 = metadata !{i32 786688, metadata !229, metadata !"currMB", metadata !21, i32 1105, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1105]
!255 = metadata !{i32 786688, metadata !229, metadata !"qp_per", metadata !21, i32 1107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 1107]
!256 = metadata !{i32 786688, metadata !229, metadata !"qp_rem", metadata !21, i32 1107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 1107]
!257 = metadata !{i32 786688, metadata !229, metadata !"q_bits", metadata !21, i32 1107, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 1107]
!258 = metadata !{i32 786688, metadata !229, metadata !"qp_c", metadata !21, i32 1108, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_c] [line 1108]
!259 = metadata !{i32 786688, metadata !229, metadata !"b4", metadata !21, i32 1110, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 1110]
!260 = metadata !{i32 786688, metadata !229, metadata !"DCLevel", metadata !21, i32 1111, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCLevel] [line 1111]
!261 = metadata !{i32 786688, metadata !229, metadata !"DCRun", metadata !21, i32 1112, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCRun] [line 1112]
!262 = metadata !{i32 786688, metadata !229, metadata !"ACLevel", metadata !21, i32 1113, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 1113]
!263 = metadata !{i32 786688, metadata !229, metadata !"ACRun", metadata !21, i32 1114, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 1114]
!264 = metadata !{i32 786688, metadata !229, metadata !"intra", metadata !21, i32 1115, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intra] [line 1115]
!265 = metadata !{i32 786688, metadata !229, metadata !"uv_scale", metadata !21, i32 1116, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv_scale] [line 1116]
!266 = metadata !{i32 786688, metadata !229, metadata !"cbpblk_pattern", metadata !21, i32 1119, metadata !267, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbpblk_pattern] [line 1119]
!267 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !153, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from int64]
!268 = metadata !{i32 786688, metadata !229, metadata !"yuv", metadata !21, i32 1120, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yuv] [line 1120]
!269 = metadata !{i32 786688, metadata !229, metadata !"b8", metadata !21, i32 1121, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 1121]
!270 = metadata !{i32 786688, metadata !229, metadata !"m3", metadata !21, i32 1122, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m3] [line 1122]
!271 = metadata !{i32 786688, metadata !229, metadata !"m4", metadata !21, i32 1123, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m4] [line 1123]
!272 = metadata !{i32 786688, metadata !229, metadata !"qp_per_dc", metadata !21, i32 1124, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per_dc] [line 1124]
!273 = metadata !{i32 786688, metadata !229, metadata !"qp_rem_dc", metadata !21, i32 1125, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem_dc] [line 1125]
!274 = metadata !{i32 786688, metadata !229, metadata !"q_bits_422", metadata !21, i32 1126, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits_422] [line 1126]
!275 = metadata !{i32 786688, metadata !229, metadata !"lossless_qpprime", metadata !21, i32 1127, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lossless_qpprime] [line 1127]
!276 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_chroma4x4", metadata !"dct_chroma4x4", metadata !"", i32 1728, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @dct_chroma4x4, null, null, metadata !279, i32 1729} ; [ DW_TAG_subprogram ] [line 1728] [def] [scope 1729] [dct_chroma4x4]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{metadata !24, metadata !24, metadata !24, metadata !24}
!279 = metadata !{metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!280 = metadata !{i32 786689, metadata !276, metadata !"uv", metadata !21, i32 16778944, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 1728]
!281 = metadata !{i32 786689, metadata !276, metadata !"b8", metadata !21, i32 33556160, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8] [line 1728]
!282 = metadata !{i32 786689, metadata !276, metadata !"b4", metadata !21, i32 50333376, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b4] [line 1728]
!283 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1732]
!284 = metadata !{i32 786688, metadata !276, metadata !"j", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1732]
!285 = metadata !{i32 786688, metadata !276, metadata !"i1", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 1732]
!286 = metadata !{i32 786688, metadata !276, metadata !"j1", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 1732]
!287 = metadata !{i32 786688, metadata !276, metadata !"ilev", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 1732]
!288 = metadata !{i32 786688, metadata !276, metadata !"m5", metadata !21, i32 1732, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 1732]
!289 = metadata !{i32 786688, metadata !276, metadata !"m6", metadata !21, i32 1732, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 1732]
!290 = metadata !{i32 786688, metadata !276, metadata !"coeff_ctr", metadata !21, i32 1732, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 1732]
!291 = metadata !{i32 786688, metadata !276, metadata !"level", metadata !21, i32 1733, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1733]
!292 = metadata !{i32 786688, metadata !276, metadata !"scan_pos", metadata !21, i32 1733, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 1733]
!293 = metadata !{i32 786688, metadata !276, metadata !"run", metadata !21, i32 1733, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 1733]
!294 = metadata !{i32 786688, metadata !276, metadata !"nonzeroAC", metadata !21, i32 1734, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzeroAC] [line 1734]
!295 = metadata !{i32 786688, metadata !276, metadata !"currMB", metadata !21, i32 1735, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1735]
!296 = metadata !{i32 786688, metadata !276, metadata !"intra", metadata !21, i32 1736, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intra] [line 1736]
!297 = metadata !{i32 786688, metadata !276, metadata !"qp_per", metadata !21, i32 1738, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 1738]
!298 = metadata !{i32 786688, metadata !276, metadata !"qp_rem", metadata !21, i32 1738, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 1738]
!299 = metadata !{i32 786688, metadata !276, metadata !"q_bits", metadata !21, i32 1738, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 1738]
!300 = metadata !{i32 786688, metadata !276, metadata !"qp_c", metadata !21, i32 1739, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_c] [line 1739]
!301 = metadata !{i32 786688, metadata !276, metadata !"ACLevel", metadata !21, i32 1741, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 1741]
!302 = metadata !{i32 786688, metadata !276, metadata !"ACRun", metadata !21, i32 1742, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 1742]
!303 = metadata !{i32 786688, metadata !276, metadata !"lossless_qpprime", metadata !21, i32 1744, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lossless_qpprime] [line 1744]
!304 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_chroma_DC", metadata !"dct_chroma_DC", metadata !"", i32 1922, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dct_chroma_DC, null, null, metadata !305, i32 1923} ; [ DW_TAG_subprogram ] [line 1922] [def] [scope 1923] [dct_chroma_DC]
!305 = metadata !{metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315}
!306 = metadata !{i32 786689, metadata !304, metadata !"uv", metadata !21, i32 16779138, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 1922]
!307 = metadata !{i32 786689, metadata !304, metadata !"cr_cbp", metadata !21, i32 33556354, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr_cbp] [line 1922]
!308 = metadata !{i32 786688, metadata !304, metadata !"run", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 1924]
!309 = metadata !{i32 786688, metadata !304, metadata !"scan_pos", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 1924]
!310 = metadata !{i32 786688, metadata !304, metadata !"coeff_ctr", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 1924]
!311 = metadata !{i32 786688, metadata !304, metadata !"level", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1924]
!312 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1924]
!313 = metadata !{i32 786688, metadata !304, metadata !"j", metadata !21, i32 1924, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1924]
!314 = metadata !{i32 786688, metadata !304, metadata !"DCLevel", metadata !21, i32 1925, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCLevel] [line 1925]
!315 = metadata !{i32 786688, metadata !304, metadata !"DCRun", metadata !21, i32 1926, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCRun] [line 1926]
!316 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_luma_sp", metadata !"dct_luma_sp", metadata !"", i32 1972, metadata !317, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*)* @dct_luma_sp, null, null, metadata !319, i32 1973} ; [ DW_TAG_subprogram ] [line 1972] [def] [scope 1973] [dct_luma_sp]
!317 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{metadata !24, metadata !24, metadata !24, metadata !25}
!319 = metadata !{metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360}
!320 = metadata !{i32 786689, metadata !316, metadata !"block_x", metadata !21, i32 16779188, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 1972]
!321 = metadata !{i32 786689, metadata !316, metadata !"block_y", metadata !21, i32 33556404, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 1972]
!322 = metadata !{i32 786689, metadata !316, metadata !"coeff_cost", metadata !21, i32 50333620, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff_cost] [line 1972]
!323 = metadata !{i32 786688, metadata !316, metadata !"i", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1976]
!324 = metadata !{i32 786688, metadata !316, metadata !"j", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1976]
!325 = metadata !{i32 786688, metadata !316, metadata !"i1", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 1976]
!326 = metadata !{i32 786688, metadata !316, metadata !"j1", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 1976]
!327 = metadata !{i32 786688, metadata !316, metadata !"ilev", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 1976]
!328 = metadata !{i32 786688, metadata !316, metadata !"m5", metadata !21, i32 1976, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 1976]
!329 = metadata !{i32 786688, metadata !316, metadata !"m6", metadata !21, i32 1976, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 1976]
!330 = metadata !{i32 786688, metadata !316, metadata !"coeff_ctr", metadata !21, i32 1976, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 1976]
!331 = metadata !{i32 786688, metadata !316, metadata !"qp_const", metadata !21, i32 1977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const] [line 1977]
!332 = metadata !{i32 786688, metadata !316, metadata !"level", metadata !21, i32 1977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1977]
!333 = metadata !{i32 786688, metadata !316, metadata !"scan_pos", metadata !21, i32 1977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 1977]
!334 = metadata !{i32 786688, metadata !316, metadata !"run", metadata !21, i32 1977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 1977]
!335 = metadata !{i32 786688, metadata !316, metadata !"nonzero", metadata !21, i32 1978, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzero] [line 1978]
!336 = metadata !{i32 786688, metadata !316, metadata !"predicted_block", metadata !21, i32 1980, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [predicted_block] [line 1980]
!337 = metadata !{i32 786688, metadata !316, metadata !"c_err", metadata !21, i32 1980, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err] [line 1980]
!338 = metadata !{i32 786688, metadata !316, metadata !"qp_const2", metadata !21, i32 1980, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const2] [line 1980]
!339 = metadata !{i32 786688, metadata !316, metadata !"qp_per", metadata !21, i32 1981, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 1981]
!340 = metadata !{i32 786688, metadata !316, metadata !"qp_rem", metadata !21, i32 1981, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 1981]
!341 = metadata !{i32 786688, metadata !316, metadata !"q_bits", metadata !21, i32 1981, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 1981]
!342 = metadata !{i32 786688, metadata !316, metadata !"qp_per_sp", metadata !21, i32 1982, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per_sp] [line 1982]
!343 = metadata !{i32 786688, metadata !316, metadata !"qp_rem_sp", metadata !21, i32 1982, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem_sp] [line 1982]
!344 = metadata !{i32 786688, metadata !316, metadata !"q_bits_sp", metadata !21, i32 1982, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits_sp] [line 1982]
!345 = metadata !{i32 786688, metadata !316, metadata !"pos_x", metadata !21, i32 1984, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_x] [line 1984]
!346 = metadata !{i32 786688, metadata !316, metadata !"pos_y", metadata !21, i32 1985, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_y] [line 1985]
!347 = metadata !{i32 786688, metadata !316, metadata !"b8", metadata !21, i32 1986, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 1986]
!348 = metadata !{i32 786688, metadata !316, metadata !"b4", metadata !21, i32 1987, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 1987]
!349 = metadata !{i32 786688, metadata !316, metadata !"ACLevel", metadata !21, i32 1988, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 1988]
!350 = metadata !{i32 786688, metadata !316, metadata !"ACRun", metadata !21, i32 1989, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 1989]
!351 = metadata !{i32 786688, metadata !316, metadata !"currMB", metadata !21, i32 1990, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1990]
!352 = metadata !{i32 786688, metadata !316, metadata !"c_err1", metadata !21, i32 1993, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err1] [line 1993]
!353 = metadata !{i32 786688, metadata !316, metadata !"c_err2", metadata !21, i32 1993, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err2] [line 1993]
!354 = metadata !{i32 786688, metadata !316, metadata !"level1", metadata !21, i32 1993, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level1] [line 1993]
!355 = metadata !{i32 786688, metadata !316, metadata !"level2", metadata !21, i32 1993, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level2] [line 1993]
!356 = metadata !{i32 786688, metadata !316, metadata !"D_dis1", metadata !21, i32 1994, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D_dis1] [line 1994]
!357 = metadata !{i32 786688, metadata !316, metadata !"D_dis2", metadata !21, i32 1994, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D_dis2] [line 1994]
!358 = metadata !{i32 786688, metadata !316, metadata !"len", metadata !21, i32 1995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1995]
!359 = metadata !{i32 786688, metadata !316, metadata !"info", metadata !21, i32 1995, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 1995]
!360 = metadata !{i32 786688, metadata !316, metadata !"lambda_mode", metadata !21, i32 1996, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda_mode] [line 1996]
!361 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"dct_chroma_sp", metadata !"dct_chroma_sp", metadata !"", i32 2231, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dct_chroma_sp, null, null, metadata !362, i32 2232} ; [ DW_TAG_subprogram ] [line 2231] [def] [scope 2232] [dct_chroma_sp]
!362 = metadata !{metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412}
!363 = metadata !{i32 786689, metadata !361, metadata !"uv", metadata !21, i32 16779447, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 2231]
!364 = metadata !{i32 786689, metadata !361, metadata !"cr_cbp", metadata !21, i32 33556663, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr_cbp] [line 2231]
!365 = metadata !{i32 786688, metadata !361, metadata !"i", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2233]
!366 = metadata !{i32 786688, metadata !361, metadata !"j", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2233]
!367 = metadata !{i32 786688, metadata !361, metadata !"i1", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 2233]
!368 = metadata !{i32 786688, metadata !361, metadata !"j2", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j2] [line 2233]
!369 = metadata !{i32 786688, metadata !361, metadata !"ilev", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilev] [line 2233]
!370 = metadata !{i32 786688, metadata !361, metadata !"n2", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 2233]
!371 = metadata !{i32 786688, metadata !361, metadata !"n1", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 2233]
!372 = metadata !{i32 786688, metadata !361, metadata !"j1", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 2233]
!373 = metadata !{i32 786688, metadata !361, metadata !"mb_y", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_y] [line 2233]
!374 = metadata !{i32 786688, metadata !361, metadata !"coeff_ctr", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_ctr] [line 2233]
!375 = metadata !{i32 786688, metadata !361, metadata !"qp_const", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const] [line 2233]
!376 = metadata !{i32 786688, metadata !361, metadata !"c_err", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err] [line 2233]
!377 = metadata !{i32 786688, metadata !361, metadata !"level", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 2233]
!378 = metadata !{i32 786688, metadata !361, metadata !"scan_pos", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan_pos] [line 2233]
!379 = metadata !{i32 786688, metadata !361, metadata !"run", metadata !21, i32 2233, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 2233]
!380 = metadata !{i32 786688, metadata !361, metadata !"m1", metadata !21, i32 2234, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m1] [line 2234]
!381 = metadata !{i32 786688, metadata !361, metadata !"m5", metadata !21, i32 2234, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 2234]
!382 = metadata !{i32 786688, metadata !361, metadata !"m6", metadata !21, i32 2234, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 2234]
!383 = metadata !{i32 786688, metadata !361, metadata !"coeff_cost", metadata !21, i32 2235, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coeff_cost] [line 2235]
!384 = metadata !{i32 786688, metadata !361, metadata !"cr_cbp_tmp", metadata !21, i32 2236, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cr_cbp_tmp] [line 2236]
!385 = metadata !{i32 786688, metadata !361, metadata !"predicted_chroma_block", metadata !21, i32 2237, metadata !386, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [predicted_chroma_block] [line 2237]
!386 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !24, metadata !387, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!387 = metadata !{metadata !139, metadata !139}
!388 = metadata !{i32 786688, metadata !361, metadata !"qp_const2", metadata !21, i32 2237, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const2] [line 2237]
!389 = metadata !{i32 786688, metadata !361, metadata !"mp1", metadata !21, i32 2237, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mp1] [line 2237]
!390 = metadata !{i32 786688, metadata !361, metadata !"currMB", metadata !21, i32 2238, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 2238]
!391 = metadata !{i32 786688, metadata !361, metadata !"qp_per", metadata !21, i32 2240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 2240]
!392 = metadata !{i32 786688, metadata !361, metadata !"qp_rem", metadata !21, i32 2240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 2240]
!393 = metadata !{i32 786688, metadata !361, metadata !"q_bits", metadata !21, i32 2240, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 2240]
!394 = metadata !{i32 786688, metadata !361, metadata !"qp_per_sp", metadata !21, i32 2241, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per_sp] [line 2241]
!395 = metadata !{i32 786688, metadata !361, metadata !"qp_rem_sp", metadata !21, i32 2241, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem_sp] [line 2241]
!396 = metadata !{i32 786688, metadata !361, metadata !"q_bits_sp", metadata !21, i32 2241, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits_sp] [line 2241]
!397 = metadata !{i32 786688, metadata !361, metadata !"b4", metadata !21, i32 2243, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b4] [line 2243]
!398 = metadata !{i32 786688, metadata !361, metadata !"DCLevel", metadata !21, i32 2244, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCLevel] [line 2244]
!399 = metadata !{i32 786688, metadata !361, metadata !"DCRun", metadata !21, i32 2245, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DCRun] [line 2245]
!400 = metadata !{i32 786688, metadata !361, metadata !"ACLevel", metadata !21, i32 2246, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACLevel] [line 2246]
!401 = metadata !{i32 786688, metadata !361, metadata !"ACRun", metadata !21, i32 2247, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ACRun] [line 2247]
!402 = metadata !{i32 786688, metadata !361, metadata !"c_err1", metadata !21, i32 2249, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err1] [line 2249]
!403 = metadata !{i32 786688, metadata !361, metadata !"c_err2", metadata !21, i32 2249, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_err2] [line 2249]
!404 = metadata !{i32 786688, metadata !361, metadata !"level1", metadata !21, i32 2249, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level1] [line 2249]
!405 = metadata !{i32 786688, metadata !361, metadata !"level2", metadata !21, i32 2249, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level2] [line 2249]
!406 = metadata !{i32 786688, metadata !361, metadata !"len", metadata !21, i32 2250, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 2250]
!407 = metadata !{i32 786688, metadata !361, metadata !"info", metadata !21, i32 2250, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 2250]
!408 = metadata !{i32 786688, metadata !361, metadata !"D_dis1", metadata !21, i32 2251, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D_dis1] [line 2251]
!409 = metadata !{i32 786688, metadata !361, metadata !"D_dis2", metadata !21, i32 2251, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D_dis2] [line 2251]
!410 = metadata !{i32 786688, metadata !361, metadata !"lambda_mode", metadata !21, i32 2252, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda_mode] [line 2252]
!411 = metadata !{i32 786688, metadata !361, metadata !"qpChroma", metadata !21, i32 2255, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qpChroma] [line 2255]
!412 = metadata !{i32 786688, metadata !361, metadata !"qpChromaSP", metadata !21, i32 2256, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qpChromaSP] [line 2256]
!413 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"copyblock_sp", metadata !"copyblock_sp", metadata !"", i32 2619, metadata !414, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @copyblock_sp, null, null, metadata !416, i32 2620} ; [ DW_TAG_subprogram ] [line 2619] [def] [scope 2620] [copyblock_sp]
!414 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!415 = metadata !{null, metadata !24, metadata !24}
!416 = metadata !{metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430}
!417 = metadata !{i32 786689, metadata !413, metadata !"block_x", metadata !21, i32 16779835, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 2619]
!418 = metadata !{i32 786689, metadata !413, metadata !"block_y", metadata !21, i32 33557051, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 2619]
!419 = metadata !{i32 786688, metadata !413, metadata !"i", metadata !21, i32 2623, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2623]
!420 = metadata !{i32 786688, metadata !413, metadata !"j", metadata !21, i32 2623, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2623]
!421 = metadata !{i32 786688, metadata !413, metadata !"i1", metadata !21, i32 2623, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 2623]
!422 = metadata !{i32 786688, metadata !413, metadata !"j1", metadata !21, i32 2623, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j1] [line 2623]
!423 = metadata !{i32 786688, metadata !413, metadata !"m5", metadata !21, i32 2623, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m5] [line 2623]
!424 = metadata !{i32 786688, metadata !413, metadata !"m6", metadata !21, i32 2623, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m6] [line 2623]
!425 = metadata !{i32 786688, metadata !413, metadata !"currMB", metadata !21, i32 2625, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 2625]
!426 = metadata !{i32 786688, metadata !413, metadata !"predicted_block", metadata !21, i32 2627, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [predicted_block] [line 2627]
!427 = metadata !{i32 786688, metadata !413, metadata !"qp_per", metadata !21, i32 2628, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_per] [line 2628]
!428 = metadata !{i32 786688, metadata !413, metadata !"qp_rem", metadata !21, i32 2629, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_rem] [line 2629]
!429 = metadata !{i32 786688, metadata !413, metadata !"q_bits", metadata !21, i32 2630, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_bits] [line 2630]
!430 = metadata !{i32 786688, metadata !413, metadata !"qp_const2", metadata !21, i32 2631, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_const2] [line 2631]
!431 = metadata !{metadata !432, metadata !441, metadata !443, metadata !444, metadata !447, metadata !451, metadata !454, metadata !458, metadata !459, metadata !464, metadata !465, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !657, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !699, metadata !794, metadata !795, metadata !796, metadata !798, metadata !799, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !818, metadata !819, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !843, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !862, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !972}
!432 = metadata !{i32 786484, i32 0, null, metadata !"QP_SCALE_CR", metadata !"QP_SCALE_CR", metadata !"", metadata !433, i32 22, metadata !435, i32 0, i32 1, [52 x i8]* @QP_SCALE_CR, null} ; [ DW_TAG_variable ] [QP_SCALE_CR] [line 22] [def]
!433 = metadata !{i32 786473, metadata !434}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.h]
!434 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!435 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 416, i64 8, i32 0, i32 0, metadata !436, metadata !439, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 416, align 8, offset 0] [from ]
!436 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from byte]
!437 = metadata !{i32 786454, metadata !434, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !438} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!438 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!439 = metadata !{metadata !440}
!440 = metadata !{i32 786465, i64 0, i64 52}      ; [ DW_TAG_subrange_type ] [0, 51]
!441 = metadata !{i32 786484, i32 0, null, metadata !"SNGL_SCAN", metadata !"SNGL_SCAN", metadata !"", metadata !433, i32 32, metadata !442, i32 0, i32 1, [16 x [2 x i8]]* @SNGL_SCAN, null} ; [ DW_TAG_variable ] [SNGL_SCAN] [line 32] [def]
!442 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !436, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from ]
!443 = metadata !{i32 786484, i32 0, null, metadata !"FIELD_SCAN", metadata !"FIELD_SCAN", metadata !"", metadata !433, i32 41, metadata !442, i32 0, i32 1, [16 x [2 x i8]]* @FIELD_SCAN, null} ; [ DW_TAG_variable ] [FIELD_SCAN] [line 41] [def]
!444 = metadata !{i32 786484, i32 0, null, metadata !"COEFF_COST", metadata !"COEFF_COST", metadata !"", metadata !433, i32 51, metadata !445, i32 0, i32 1, [2 x [16 x i8]]* @COEFF_COST, null} ; [ DW_TAG_variable ] [COEFF_COST] [line 51] [def]
!445 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !436, metadata !446, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from ]
!446 = metadata !{metadata !77, metadata !76}
!447 = metadata !{i32 786484, i32 0, null, metadata !"COEFF_BIT_COST", metadata !"COEFF_BIT_COST", metadata !"", metadata !433, i32 60, metadata !448, i32 0, i32 1, [3 x [16 x [16 x i8]]]* @COEFF_BIT_COST, null} ; [ DW_TAG_variable ] [COEFF_BIT_COST] [line 60] [def]
!448 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6144, i64 8, i32 0, i32 0, metadata !436, metadata !449, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6144, align 8, offset 0] [from ]
!449 = metadata !{metadata !450, metadata !76, metadata !76}
!450 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!451 = metadata !{i32 786484, i32 0, null, metadata !"SCAN_YUV422", metadata !"SCAN_YUV422", metadata !"", metadata !433, i32 117, metadata !452, i32 0, i32 1, [8 x [2 x i8]]* @SCAN_YUV422, null} ; [ DW_TAG_variable ] [SCAN_YUV422] [line 117] [def]
!452 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !436, metadata !453, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from ]
!453 = metadata !{metadata !139, metadata !77}
!454 = metadata !{i32 786484, i32 0, null, metadata !"hor_offset", metadata !"hor_offset", metadata !"", metadata !433, i32 126, metadata !455, i32 0, i32 1, [4 x [4 x [4 x i8]]]* @hor_offset, null} ; [ DW_TAG_variable ] [hor_offset] [line 126] [def]
!455 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !456, metadata !457, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from ]
!456 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !438} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!457 = metadata !{metadata !58, metadata !58, metadata !58}
!458 = metadata !{i32 786484, i32 0, null, metadata !"ver_offset", metadata !"ver_offset", metadata !"", metadata !433, i32 147, metadata !455, i32 0, i32 1, [4 x [4 x [4 x i8]]]* @ver_offset, null} ; [ DW_TAG_variable ] [ver_offset] [line 147] [def]
!459 = metadata !{i32 786484, i32 0, null, metadata !"quant_coef", metadata !"quant_coef", metadata !"", metadata !21, i32 39, metadata !460, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @quant_coef, null} ; [ DW_TAG_variable ] [quant_coef] [line 39] [def]
!460 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3072, i64 32, i32 0, i32 0, metadata !461, metadata !462, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3072, align 32, offset 0] [from ]
!461 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!462 = metadata !{metadata !463, metadata !58, metadata !58}
!463 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!464 = metadata !{i32 786484, i32 0, null, metadata !"dequant_coef", metadata !"dequant_coef", metadata !"", metadata !21, i32 48, metadata !460, i32 0, i32 1, [6 x [4 x [4 x i32]]]* @dequant_coef, null} ; [ DW_TAG_variable ] [dequant_coef] [line 48] [def]
!465 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !466, i32 558, metadata !467, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!466 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!467 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !468} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!468 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !469} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!469 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !470, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!470 = metadata !{metadata !471, metadata !472, metadata !473, metadata !645, metadata !646, metadata !648, metadata !649}
!471 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!472 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!473 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !474} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!474 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !475, metadata !643, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!476 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !477} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!477 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !478, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !560, metadata !592, metadata !619, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !640}
!479 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!480 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!481 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!482 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!483 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!484 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!485 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !486} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !487} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!487 = metadata !{i32 786454, metadata !4, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!488 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !489, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!489 = metadata !{metadata !490, metadata !507, metadata !532}
!490 = metadata !{i32 786445, metadata !4, metadata !488, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!492 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!493 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !494, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!494 = metadata !{metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !506}
!495 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!496 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!497 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !437} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!498 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!499 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!500 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !437} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!501 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !437} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!502 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!503 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!504 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !505} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!506 = metadata !{i32 786445, metadata !4, metadata !493, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!507 = metadata !{i32 786445, metadata !4, metadata !488, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !508} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!508 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!509 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !510, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!510 = metadata !{metadata !511, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531}
!511 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!512 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!513 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !512} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!514 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !512} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!515 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !512} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!516 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !512} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!517 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !505} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!518 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!519 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !512} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!520 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !512} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!521 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !512} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!522 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !512} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!523 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !512} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!524 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !505} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!525 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!526 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!527 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!528 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!529 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !24} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!530 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!531 = metadata !{i32 786445, metadata !4, metadata !509, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !24} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!532 = metadata !{i32 786445, metadata !4, metadata !488, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !533} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!533 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!534 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !535, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!535 = metadata !{metadata !24, metadata !536, metadata !559}
!536 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!537 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !538} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!538 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !539, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!539 = metadata !{metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !552}
!540 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!541 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!542 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!543 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!544 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!545 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !512} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!546 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!547 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!548 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !549} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!549 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!550 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!551 = metadata !{null, metadata !24, metadata !24, metadata !25, metadata !25}
!552 = metadata !{i32 786445, metadata !4, metadata !538, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !553} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!553 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !554} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!554 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!555 = metadata !{null, metadata !556, metadata !557}
!556 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !538} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!557 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!558 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!559 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!560 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !561} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!561 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!562 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !563} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!563 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !564, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!564 = metadata !{metadata !565, metadata !575, metadata !579, metadata !583, metadata !586, metadata !588, metadata !589}
!565 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !566} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!566 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !567, metadata !573, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!567 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!568 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !569, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!569 = metadata !{metadata !570, metadata !571, metadata !572}
!570 = metadata !{i32 786445, metadata !4, metadata !568, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !42} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!571 = metadata !{i32 786445, metadata !4, metadata !568, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !438} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!572 = metadata !{i32 786445, metadata !4, metadata !568, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!573 = metadata !{metadata !450, metadata !574}
!574 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!575 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !576} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!576 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !567, metadata !577, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!577 = metadata !{metadata !77, metadata !578}
!578 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!579 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !580} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!580 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !567, metadata !581, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!581 = metadata !{metadata !77, metadata !582}
!582 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!583 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !584} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!584 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !567, metadata !585, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!585 = metadata !{metadata !77, metadata !463}
!586 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !587} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!587 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !567, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!588 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !587} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!589 = metadata !{i32 786445, metadata !4, metadata !563, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !590} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!590 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !567, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!591 = metadata !{metadata !450}
!592 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !593} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!593 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!594 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!595 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !596, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!596 = metadata !{metadata !597, metadata !600, metadata !601, metadata !604, metadata !607, metadata !611, metadata !612, metadata !616, metadata !617, metadata !618}
!597 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !598} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!598 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !567, metadata !599, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!599 = metadata !{metadata !77}
!600 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !587} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!601 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !602} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!602 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !567, metadata !603, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!603 = metadata !{metadata !450, metadata !58}
!604 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !605} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!605 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !567, metadata !606, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!606 = metadata !{metadata !582, metadata !58}
!607 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !608} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!608 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !567, metadata !609, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!609 = metadata !{metadata !582, metadata !610}
!610 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!611 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !608} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!612 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !613} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!613 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !567, metadata !614, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!614 = metadata !{metadata !582, metadata !615}
!615 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!616 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !613} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!617 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !608} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!618 = metadata !{i32 786445, metadata !4, metadata !595, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !608} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!619 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !620} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!620 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !621} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!621 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !622} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!622 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !623, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!623 = metadata !{metadata !624, metadata !625, metadata !626}
!624 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!625 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!626 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !627} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!627 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !622} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!628 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!629 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!630 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!631 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !25} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!632 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!633 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!634 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!635 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !25} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!636 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !637} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!637 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !638} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!638 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!639 = metadata !{metadata !197, metadata !24}
!640 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !641} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!641 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !24, metadata !642, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!642 = metadata !{metadata !450, metadata !77}
!643 = metadata !{metadata !644}
!644 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!645 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !24} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!646 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !647} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!647 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!648 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !647} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!649 = metadata !{i32 786445, metadata !4, metadata !469, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !647} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!650 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !466, i32 559, metadata !467, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!651 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !466, i32 560, metadata !467, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!652 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !466, i32 561, metadata !467, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!653 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !466, i32 562, metadata !467, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !466, i32 565, metadata !40, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !466, i32 566, metadata !656, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!656 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!657 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !466, i32 567, metadata !658, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!658 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!659 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !466, i32 569, metadata !512, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!660 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !466, i32 570, metadata !512, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!661 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !466, i32 572, metadata !24, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!662 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !466, i32 572, metadata !24, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!663 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !466, i32 573, metadata !664, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!664 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !665} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!665 = metadata !{i32 786454, metadata !10, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !666} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!666 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !667, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!667 = metadata !{metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698}
!668 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!669 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !512} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!670 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !512} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!671 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !197} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!672 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !197} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!673 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !197} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!674 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!675 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !197} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!676 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !512} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!677 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !512} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!678 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !679} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!679 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !512, metadata !138, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!680 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !679} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!681 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !679} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!682 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !197} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!683 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !512} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!684 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !512} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!685 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !505} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!686 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !24} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!687 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !24} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!688 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !197} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!689 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !512} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!690 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !24} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!691 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !24} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!692 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !24} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!693 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !24} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!694 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !24} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!695 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !197} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!696 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !197} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!697 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !197} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!698 = metadata !{i32 786445, metadata !10, metadata !666, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !197} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!699 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !466, i32 574, metadata !700, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!700 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!701 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!702 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !703, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!703 = metadata !{metadata !704, metadata !705, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741}
!704 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!705 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !512} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!706 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !197} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!707 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !197} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!708 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !197} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!709 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !197} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!710 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !512} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!711 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !512} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!712 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !512} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!713 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !197} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!714 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!715 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !512} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!716 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !512} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!717 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !512} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!718 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !512} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!719 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !512} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!720 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !197} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!721 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!722 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !24} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!723 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !512} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!724 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !725} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!725 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !24, metadata !726, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!726 = metadata !{metadata !727}
!727 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!728 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !512} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!729 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !197} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!730 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !512} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!731 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !512} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!732 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !197} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!733 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !197} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!734 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !197} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!735 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !197} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!736 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !512} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!737 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !512} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!738 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !512} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!739 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !512} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!740 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !197} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!741 = metadata !{i32 786445, metadata !10, metadata !702, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !742} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!742 = metadata !{i32 786454, metadata !10, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !743} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!743 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !744, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!744 = metadata !{metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793}
!745 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!746 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !512} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!747 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !512} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!748 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !512} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!749 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !197} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!750 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !197} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!751 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !197} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!752 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !512} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!753 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !197} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!754 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !197} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!755 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !512} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!756 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !512} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!757 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !512} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!758 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !197} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!759 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !512} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!760 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !512} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!761 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !197} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!762 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !512} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!763 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !512} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!764 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !197} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!765 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !197} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!766 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !767} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!767 = metadata !{i32 786454, metadata !10, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !768} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!768 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !769, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!769 = metadata !{metadata !770, metadata !771, metadata !772, metadata !773, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782}
!770 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!771 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !512} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!772 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !512} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!773 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !774} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!774 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !512, metadata !775, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!775 = metadata !{metadata !776}
!776 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!777 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !774} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!778 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !774} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!779 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !512} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!780 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !512} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!781 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !512} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!782 = metadata !{i32 786445, metadata !10, metadata !768, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !512} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!783 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !197} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!784 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !767} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!785 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !197} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!786 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !197} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!787 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !197} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!788 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !512} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!789 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !512} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!790 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !512} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!791 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !512} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!792 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !512} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!793 = metadata !{i32 786445, metadata !10, metadata !743, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !512} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!794 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !466, i32 578, metadata !24, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!795 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !466, i32 579, metadata !24, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!796 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !466, i32 583, metadata !797, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!797 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !658} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!798 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !466, i32 584, metadata !797, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!799 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !466, i32 585, metadata !800, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!800 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !797} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!801 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !466, i32 586, metadata !24, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!802 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !466, i32 587, metadata !24, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!803 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !466, i32 588, metadata !24, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!804 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !466, i32 589, metadata !24, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!805 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !466, i32 592, metadata !40, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!806 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !466, i32 593, metadata !40, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!807 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !466, i32 595, metadata !656, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!808 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !466, i32 596, metadata !656, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!809 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !466, i32 598, metadata !40, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!810 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !466, i32 599, metadata !656, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!811 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !466, i32 601, metadata !40, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!812 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !466, i32 602, metadata !656, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!813 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !466, i32 604, metadata !814, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!814 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !815} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!815 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !816} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!816 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !817} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!817 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!818 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !466, i32 605, metadata !815, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!819 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !466, i32 608, metadata !820, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!820 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!821 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !466, i32 609, metadata !820, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!822 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !466, i32 610, metadata !24, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!823 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !466, i32 612, metadata !24, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!824 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !466, i32 612, metadata !24, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!825 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !466, i32 612, metadata !24, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!826 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !466, i32 613, metadata !24, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!827 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !466, i32 613, metadata !24, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!828 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !466, i32 613, metadata !24, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!829 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !466, i32 614, metadata !24, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!830 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !466, i32 617, metadata !831, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!831 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !832, metadata !833, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!832 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!833 = metadata !{metadata !834}
!834 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!835 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !466, i32 620, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!836 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !466, i32 620, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!837 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !466, i32 620, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!838 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !466, i32 621, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!839 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !466, i32 621, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!840 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !466, i32 621, metadata !107, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!841 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !466, i32 622, metadata !842, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!842 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !24, metadata !449, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!843 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !466, i32 623, metadata !844, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!844 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !24, metadata !845, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!845 = metadata !{metadata !77, metadata !58, metadata !58}
!846 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !466, i32 623, metadata !844, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!847 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !466, i32 624, metadata !844, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!848 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !466, i32 624, metadata !844, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!849 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !466, i32 625, metadata !110, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!850 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !466, i32 625, metadata !148, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!851 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !466, i32 1201, metadata !852, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!852 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !853} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!853 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !854} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!854 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !855, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!855 = metadata !{metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861}
!856 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!857 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!858 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!859 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!860 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!861 = metadata !{i32 786445, metadata !4, metadata !854, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !24} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!862 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !466, i32 1202, metadata !863, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!863 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !864} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!864 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !865} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!865 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !866, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!866 = metadata !{metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !886, metadata !887, metadata !888, metadata !889, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897}
!867 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!868 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !107} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!869 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !107} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!870 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !107} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!871 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !800} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!872 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !797} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!873 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !24} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!874 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !24} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!875 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !113} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!876 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !113} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!877 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !658} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!878 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !148} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!879 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !24} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!880 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !153} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!881 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !24} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!882 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !883} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!883 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !884} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!884 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !885} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!885 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !814} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!886 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !883} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!887 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !883} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!888 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !883} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!889 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !890} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!890 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !817, metadata !845, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!891 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !24} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!892 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !24} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!893 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !24} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!894 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !24} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!895 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !24} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!896 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !24} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!897 = metadata !{i32 786445, metadata !4, metadata !865, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !24} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!898 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !466, i32 1203, metadata !864, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!899 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !466, i32 1203, metadata !864, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!900 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !466, i32 1204, metadata !864, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!901 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !466, i32 1204, metadata !864, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!902 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !466, i32 1230, metadata !903, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!903 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !904} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!904 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !905} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!905 = metadata !{i32 786451, metadata !906, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !907, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!906 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!907 = metadata !{metadata !908, metadata !909, metadata !911, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !929, metadata !930, metadata !931, metadata !932, metadata !934, metadata !935, metadata !937, metadata !941, metadata !943, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !951, metadata !952}
!908 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!909 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!910 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !832} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!911 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!912 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!913 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!914 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!915 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!916 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!917 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!918 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!919 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!920 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !910} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!921 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !922} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!922 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !923} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!923 = metadata !{i32 786451, metadata !906, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !924, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!924 = metadata !{metadata !925, metadata !926, metadata !928}
!925 = metadata !{i32 786445, metadata !906, metadata !923, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !922} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!926 = metadata !{i32 786445, metadata !906, metadata !923, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !927} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!927 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !905} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!928 = metadata !{i32 786445, metadata !906, metadata !923, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!929 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !927} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!930 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!931 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!932 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !933} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!933 = metadata !{i32 786454, metadata !906, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!934 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!935 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !936} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!936 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!937 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !938} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!938 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !832, metadata !939, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!939 = metadata !{metadata !940}
!940 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!941 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !942} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!942 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!943 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !944} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!944 = metadata !{i32 786454, metadata !906, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!945 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !942} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!946 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !942} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!947 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !942} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!948 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !942} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!949 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !950} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!950 = metadata !{i32 786454, metadata !906, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!951 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!952 = metadata !{i32 786445, metadata !906, metadata !905, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !953} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!953 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !832, metadata !954, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!954 = metadata !{metadata !955}
!955 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!956 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !466, i32 1231, metadata !903, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!957 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !466, i32 1232, metadata !903, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!958 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !466, i32 1233, metadata !24, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!959 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !466, i32 1234, metadata !24, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!960 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !466, i32 1237, metadata !961, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!961 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !24, metadata !954, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!962 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !466, i32 1238, metadata !961, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!963 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !466, i32 1239, metadata !961, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!964 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !466, i32 1240, metadata !961, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!965 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !466, i32 1241, metadata !961, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!966 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !466, i32 1242, metadata !961, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!967 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !466, i32 1456, metadata !24, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!968 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !466, i32 1465, metadata !24, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!969 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !466, i32 1466, metadata !24, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!970 = metadata !{i32 786484, i32 0, null, metadata !"A", metadata !"A", metadata !"", metadata !21, i32 56, metadata !971, i32 1, i32 1, [4 x [4 x i32]]* @A, null} ; [ DW_TAG_variable ] [A] [line 56] [local] [def]
!971 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !461, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!972 = metadata !{i32 786484, i32 0, null, metadata !"cbp_blk_chroma", metadata !"cbp_blk_chroma", metadata !"", metadata !433, i32 168, metadata !973, i32 1, i32 1, [8 x [4 x i8]]* @cbp_blk_chroma, null} ; [ DW_TAG_variable ] [cbp_blk_chroma] [line 168] [local] [def]
!973 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !438, metadata !974, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from unsigned char]
!974 = metadata !{metadata !139, metadata !58}
!975 = metadata !{i32 106, i32 0, metadata !20, null}
!976 = metadata !{i32 110, i32 0, metadata !20, null}
!977 = metadata !{i32 111, i32 0, metadata !20, null}
!978 = metadata !{metadata !"any pointer", metadata !979}
!979 = metadata !{metadata !"omnipotent char", metadata !980}
!980 = metadata !{metadata !"Simple C/C++ TBAA"}
!981 = metadata !{i32 113, i32 0, metadata !20, null}
!982 = metadata !{i32 114, i32 0, metadata !20, null}
!983 = metadata !{i32 115, i32 0, metadata !20, null}
!984 = metadata !{metadata !"int", metadata !979}
!985 = metadata !{i32 117, i32 0, metadata !20, null}
!986 = metadata !{i32 118, i32 0, metadata !20, null}
!987 = metadata !{i32 125, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !20, i32 125, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!989 = metadata !{i32 127, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !988, i32 126, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!991 = metadata !{i32 131, i32 0, metadata !20, null}
!992 = metadata !{i32 132, i32 0, metadata !20, null}
!993 = metadata !{i32 133, i32 0, metadata !20, null}
!994 = metadata !{i32 135, i32 0, metadata !20, null}
!995 = metadata !{i32 137, i32 0, metadata !20, null}
!996 = metadata !{i32 140, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !998, i32 139, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!998 = metadata !{i32 786443, metadata !1, metadata !20, i32 138, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!999 = metadata !{i32 139, i32 0, metadata !997, null}
!1000 = metadata !{i32 141, i32 0, metadata !998, null}
!1001 = metadata !{i32 142, i32 0, metadata !998, null}
!1002 = metadata !{i32 143, i32 0, metadata !998, null}
!1003 = metadata !{i32 147, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !20, i32 146, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1005 = metadata !{i32 148, i32 0, metadata !1004, null}
!1006 = metadata !{i32 149, i32 0, metadata !1004, null}
!1007 = metadata !{i32 150, i32 0, metadata !1004, null}
!1008 = metadata !{i32 153, i32 0, metadata !20, null}
!1009 = metadata !{i32 154, i32 0, metadata !20, null}
!1010 = metadata !{i32 155, i32 0, metadata !20, null}
!1011 = metadata !{i32 161, i32 0, metadata !20, null}
!1012 = metadata !{i32 163, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !20, i32 162, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1014 = metadata !{metadata !"short", metadata !979}
!1015 = metadata !{i32 164, i32 0, metadata !1013, null}
!1016 = metadata !{i32 165, i32 0, metadata !1013, null}
!1017 = metadata !{i32 166, i32 0, metadata !1013, null}
!1018 = metadata !{i32 168, i32 0, metadata !1013, null}
!1019 = metadata !{i32 171, i32 0, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !20, i32 170, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1021 = metadata !{i32 174, i32 0, metadata !20, null}
!1022 = metadata !{i32 176, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !20, i32 175, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1024 = metadata !{i32 177, i32 0, metadata !1023, null}
!1025 = metadata !{i32 178, i32 0, metadata !1023, null}
!1026 = metadata !{i32 179, i32 0, metadata !1023, null}
!1027 = metadata !{i32 180, i32 0, metadata !1023, null}
!1028 = metadata !{i32 183, i32 0, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !1, metadata !20, i32 182, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1030 = metadata !{i32 186, i32 0, metadata !20, null}
!1031 = metadata !{i32 188, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !20, i32 187, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1033 = metadata !{i32 189, i32 0, metadata !1032, null}
!1034 = metadata !{i32 190, i32 0, metadata !1032, null}
!1035 = metadata !{i32 191, i32 0, metadata !1032, null}
!1036 = metadata !{i32 192, i32 0, metadata !1032, null}
!1037 = metadata !{i32 195, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !20, i32 194, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1039 = metadata !{i32 198, i32 0, metadata !20, null}
!1040 = metadata !{i32 200, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !20, i32 199, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1042 = metadata !{i32 208, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !20, i32 207, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1044 = metadata !{i32 201, i32 0, metadata !1041, null}
!1045 = metadata !{i32 204, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !20, i32 203, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1047 = metadata !{i32 207, i32 0, metadata !1043, null}
!1048 = metadata !{i32 213, i32 0, metadata !20, null}
!1049 = metadata !{i32 214, i32 0, metadata !20, null}
!1050 = metadata !{i32 217, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !20, i32 215, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1052 = metadata !{i32 218, i32 0, metadata !1051, null}
!1053 = metadata !{i32 219, i32 0, metadata !20, null}
!1054 = metadata !{i32 222, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !20, i32 220, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1056 = metadata !{i32 223, i32 0, metadata !1055, null}
!1057 = metadata !{i32 224, i32 0, metadata !20, null}
!1058 = metadata !{i32 227, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !20, i32 225, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1060 = metadata !{i32 228, i32 0, metadata !1059, null}
!1061 = metadata !{i32 232, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1, metadata !20, i32 230, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1063 = metadata !{i32 235, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !20, i32 235, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1065 = metadata !{i32 237, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1067, i32 237, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1067 = metadata !{i32 786443, metadata !1, metadata !1064, i32 236, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1068 = metadata !{i32 240, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1066, i32 238, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1070 = metadata !{i32 250, i32 0, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !1, metadata !1072, i32 249, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1072 = metadata !{i32 786443, metadata !1, metadata !20, i32 248, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1073 = metadata !{i32 254, i32 0, metadata !1071, null}
!1074 = metadata !{i32 248, i32 0, metadata !1072, null}
!1075 = metadata !{i32 260, i32 0, metadata !20, null}
!1076 = metadata !{i32 261, i32 0, metadata !20, null}
!1077 = metadata !{i32 263, i32 0, metadata !20, null}
!1078 = metadata !{i32 266, i32 0, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1, metadata !20, i32 264, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1080 = metadata !{i32 267, i32 0, metadata !1079, null}
!1081 = metadata !{i32 269, i32 0, metadata !1079, null}
!1082 = metadata !{i32 272, i32 0, metadata !1079, null}
!1083 = metadata !{i32 276, i32 0, metadata !1079, null}
!1084 = metadata !{i32 279, i32 0, metadata !1079, null}
!1085 = metadata !{i32 281, i32 0, metadata !1079, null}
!1086 = metadata !{i32 284, i32 0, metadata !1079, null}
!1087 = metadata !{i32 285, i32 0, metadata !1079, null}
!1088 = metadata !{i32 287, i32 0, metadata !1079, null}
!1089 = metadata !{i32 289, i32 0, metadata !1079, null}
!1090 = metadata !{i32 291, i32 0, metadata !1079, null}
!1091 = metadata !{i32 292, i32 0, metadata !1079, null}
!1092 = metadata !{i32 293, i32 0, metadata !1079, null}
!1093 = metadata !{i32 295, i32 0, metadata !1079, null}
!1094 = metadata !{i32 297, i32 0, metadata !1079, null}
!1095 = metadata !{i32 299, i32 0, metadata !1079, null}
!1096 = metadata !{i32 301, i32 0, metadata !1079, null}
!1097 = metadata !{i32 304, i32 0, metadata !20, null}
!1098 = metadata !{i32 307, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !20, i32 305, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1100 = metadata !{i32 308, i32 0, metadata !1099, null}
!1101 = metadata !{i32 309, i32 0, metadata !1099, null}
!1102 = metadata !{i32 311, i32 0, metadata !1099, null}
!1103 = metadata !{i32 313, i32 0, metadata !1099, null}
!1104 = metadata !{i32 315, i32 0, metadata !1099, null}
!1105 = metadata !{i32 317, i32 0, metadata !1099, null}
!1106 = metadata !{i32 323, i32 0, metadata !1099, null}
!1107 = metadata !{i32 326, i32 0, metadata !20, null}
!1108 = metadata !{i32 329, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !20, i32 327, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1110 = metadata !{i32 330, i32 0, metadata !1109, null}
!1111 = metadata !{i32 332, i32 0, metadata !1109, null}
!1112 = metadata !{i32 335, i32 0, metadata !1109, null}
!1113 = metadata !{i32 339, i32 0, metadata !1109, null}
!1114 = metadata !{i32 342, i32 0, metadata !1109, null}
!1115 = metadata !{i32 344, i32 0, metadata !1109, null}
!1116 = metadata !{i32 347, i32 0, metadata !1109, null}
!1117 = metadata !{i32 349, i32 0, metadata !1109, null}
!1118 = metadata !{i32 351, i32 0, metadata !1109, null}
!1119 = metadata !{i32 353, i32 0, metadata !1109, null}
!1120 = metadata !{i32 354, i32 0, metadata !1109, null}
!1121 = metadata !{i32 356, i32 0, metadata !1109, null}
!1122 = metadata !{i32 358, i32 0, metadata !1109, null}
!1123 = metadata !{i32 360, i32 0, metadata !1109, null}
!1124 = metadata !{i32 361, i32 0, metadata !1109, null}
!1125 = metadata !{i32 362, i32 0, metadata !1109, null}
!1126 = metadata !{i32 365, i32 0, metadata !1109, null}
!1127 = metadata !{i32 367, i32 0, metadata !1109, null}
!1128 = metadata !{i32 369, i32 0, metadata !1109, null}
!1129 = metadata !{i32 370, i32 0, metadata !1109, null}
!1130 = metadata !{i32 371, i32 0, metadata !1109, null}
!1131 = metadata !{i32 373, i32 0, metadata !1109, null}
!1132 = metadata !{i32 375, i32 0, metadata !1109, null}
!1133 = metadata !{i32 377, i32 0, metadata !1109, null}
!1134 = metadata !{i32 379, i32 0, metadata !1109, null}
!1135 = metadata !{i32 380, i32 0, metadata !1109, null}
!1136 = metadata !{i32 381, i32 0, metadata !1109, null}
!1137 = metadata !{i32 382, i32 0, metadata !20, null}
!1138 = metadata !{i32 398, i32 0, metadata !66, null}
!1139 = metadata !{i32 399, i32 0, metadata !66, null}
!1140 = metadata !{i32 405, i32 0, metadata !66, null}
!1141 = metadata !{i32 406, i32 0, metadata !66, null}
!1142 = metadata !{i32 408, i32 0, metadata !66, null}
!1143 = metadata !{i32 409, i32 0, metadata !66, null}
!1144 = metadata !{i32 413, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !66, i32 413, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1146 = metadata !{i32 415, i32 0, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !1145, i32 414, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1148 = metadata !{i32 418, i32 0, metadata !66, null}
!1149 = metadata !{i32 420, i32 0, metadata !66, null}
!1150 = metadata !{i32 428, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !66, i32 427, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1152 = metadata !{i32 422, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !66, i32 421, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1154 = metadata !{i32 423, i32 0, metadata !1153, null}
!1155 = metadata !{i32 424, i32 0, metadata !1153, null}
!1156 = metadata !{i32 425, i32 0, metadata !1153, null}
!1157 = metadata !{i32 430, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1151, i32 429, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1159 = metadata !{i32 1}
!1160 = metadata !{i32 429, i32 0, metadata !1158, null}
!1161 = metadata !{i32 431, i32 0, metadata !1151, null}
!1162 = metadata !{i32 434, i32 0, metadata !66, null}
!1163 = metadata !{i32 436, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !66, i32 436, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1165 = metadata !{i32 438, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !1164, i32 437, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1167 = metadata !{i32 439, i32 0, metadata !1166, null}
!1168 = metadata !{i32 440, i32 0, metadata !1166, null}
!1169 = metadata !{i32 441, i32 0, metadata !1166, null}
!1170 = metadata !{i32 443, i32 0, metadata !66, null}
!1171 = metadata !{i32 444, i32 0, metadata !66, null}
!1172 = metadata !{i32 445, i32 0, metadata !66, null}
!1173 = metadata !{i32 446, i32 0, metadata !66, null}
!1174 = metadata !{i32 447, i32 0, metadata !66, null}
!1175 = metadata !{i32 448, i32 0, metadata !66, null}
!1176 = metadata !{i32 449, i32 0, metadata !66, null}
!1177 = metadata !{i32 450, i32 0, metadata !66, null}
!1178 = metadata !{i32 452, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !66, i32 452, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1180 = metadata !{i32 466, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !1182, i32 465, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1182 = metadata !{i32 786443, metadata !1, metadata !1183, i32 464, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1183 = metadata !{i32 786443, metadata !1, metadata !1184, i32 463, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1184 = metadata !{i32 786443, metadata !1, metadata !66, i32 462, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1185 = metadata !{i32 468, i32 0, metadata !1181, null}
!1186 = metadata !{i32 462, i32 0, metadata !1184, null}
!1187 = metadata !{i32 455, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1179, i32 453, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1189 = metadata !{i32 456, i32 0, metadata !1188, null}
!1190 = metadata !{i32 458, i32 0, metadata !1188, null}
!1191 = metadata !{i32 459, i32 0, metadata !1188, null}
!1192 = metadata !{i32 467, i32 0, metadata !1181, null}
!1193 = metadata !{i32 464, i32 0, metadata !1182, null}
!1194 = metadata !{i32 471, i32 0, metadata !66, null}
!1195 = metadata !{i32 481, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1197, i32 479, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1197 = metadata !{i32 786443, metadata !1, metadata !66, i32 478, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1198 = metadata !{i32 483, i32 0, metadata !1196, null}
!1199 = metadata !{i32 478, i32 0, metadata !1197, null}
!1200 = metadata !{i32 480, i32 0, metadata !1196, null}
!1201 = metadata !{i32 485, i32 0, metadata !1196, null}
!1202 = metadata !{i32 487, i32 0, metadata !66, null}
!1203 = metadata !{i32 488, i32 0, metadata !66, null}
!1204 = metadata !{i32 490, i32 0, metadata !66, null}
!1205 = metadata !{i32 492, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !66, i32 492, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1207 = metadata !{i32 496, i32 0, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !1, metadata !1209, i32 495, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1209 = metadata !{i32 786443, metadata !1, metadata !1210, i32 494, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1210 = metadata !{i32 786443, metadata !1, metadata !1206, i32 493, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1211 = metadata !{i32 494, i32 0, metadata !1209, null}
!1212 = metadata !{i32 492, i32 0, metadata !66, null}
!1213 = metadata !{i32 499, i32 0, metadata !66, null}
!1214 = metadata !{i32 514, i32 0, metadata !95, null}
!1215 = metadata !{i32 520, i32 0, metadata !95, null}
!1216 = metadata !{i32 521, i32 0, metadata !95, null}
!1217 = metadata !{i32 522, i32 0, metadata !95, null}
!1218 = metadata !{i32 523, i32 0, metadata !95, null}
!1219 = metadata !{i32 526, i32 0, metadata !95, null}
!1220 = metadata !{i32 528, i32 0, metadata !95, null}
!1221 = metadata !{i32 531, i32 0, metadata !95, null}
!1222 = metadata !{i32 532, i32 0, metadata !95, null}
!1223 = metadata !{i32 536, i32 0, metadata !95, null}
!1224 = metadata !{i32 538, i32 0, metadata !95, null}
!1225 = metadata !{i32 539, i32 0, metadata !95, null}
!1226 = metadata !{i32 540, i32 0, metadata !95, null}
!1227 = metadata !{i32 543, i32 0, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !1, metadata !95, i32 543, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1229 = metadata !{i32 548, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1, metadata !1231, i32 546, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1231 = metadata !{i32 786443, metadata !1, metadata !1232, i32 545, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1232 = metadata !{i32 786443, metadata !1, metadata !1228, i32 544, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1233 = metadata !{i32 549, i32 0, metadata !1230, null}
!1234 = metadata !{i32 553, i32 0, metadata !1230, null}
!1235 = metadata !{i32 545, i32 0, metadata !1231, null}
!1236 = metadata !{i32 557, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !95, i32 557, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1238 = metadata !{i32 571, i32 0, metadata !1239, null}
!1239 = metadata !{i32 786443, metadata !1, metadata !1240, i32 562, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1240 = metadata !{i32 786443, metadata !1, metadata !1241, i32 561, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1241 = metadata !{i32 786443, metadata !1, metadata !1242, i32 560, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1242 = metadata !{i32 786443, metadata !1, metadata !1243, i32 559, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1243 = metadata !{i32 786443, metadata !1, metadata !1237, i32 558, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1244 = metadata !{i32 551, i32 0, metadata !1230, null}
!1245 = metadata !{i32 559, i32 0, metadata !1242, null}
!1246 = metadata !{i32 563, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1, metadata !1239, i32 563, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1248 = metadata !{i32 561, i32 0, metadata !1240, null}
!1249 = metadata !{i32 565, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !1247, i32 564, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1251 = metadata !{i32 566, i32 0, metadata !1250, null}
!1252 = metadata !{i32 567, i32 0, metadata !1250, null}
!1253 = metadata !{i32 569, i32 0, metadata !1239, null}
!1254 = metadata !{i32 570, i32 0, metadata !1239, null}
!1255 = metadata !{i32 572, i32 0, metadata !1239, null}
!1256 = metadata !{i32 577, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1258, i32 577, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1258 = metadata !{i32 786443, metadata !1, metadata !1259, i32 576, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1259 = metadata !{i32 786443, metadata !1, metadata !1241, i32 575, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1260 = metadata !{i32 579, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !1257, i32 578, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1262 = metadata !{i32 580, i32 0, metadata !1261, null}
!1263 = metadata !{i32 581, i32 0, metadata !1261, null}
!1264 = metadata !{i32 583, i32 0, metadata !1258, null}
!1265 = metadata !{i32 584, i32 0, metadata !1258, null}
!1266 = metadata !{i32 585, i32 0, metadata !1258, null}
!1267 = metadata !{i32 586, i32 0, metadata !1258, null}
!1268 = metadata !{i32 575, i32 0, metadata !1259, null}
!1269 = metadata !{i32 594, i32 0, metadata !1270, null}
!1270 = metadata !{i32 786443, metadata !1, metadata !1271, i32 594, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1271 = metadata !{i32 786443, metadata !1, metadata !95, i32 593, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1272 = metadata !{i32 599, i32 0, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !1, metadata !1274, i32 599, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1274 = metadata !{i32 786443, metadata !1, metadata !1275, i32 598, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1275 = metadata !{i32 786443, metadata !1, metadata !95, i32 597, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1276 = metadata !{i32 597, i32 0, metadata !1275, null}
!1277 = metadata !{i32 607, i32 0, metadata !1274, null}
!1278 = metadata !{i32 595, i32 0, metadata !1270, null}
!1279 = metadata !{i32 593, i32 0, metadata !1271, null}
!1280 = metadata !{i32 613, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !1, metadata !95, i32 613, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1282 = metadata !{i32 623, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1281, i32 614, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1284 = metadata !{i32 601, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !1273, i32 600, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1286 = metadata !{i32 602, i32 0, metadata !1285, null}
!1287 = metadata !{i32 603, i32 0, metadata !1285, null}
!1288 = metadata !{i32 605, i32 0, metadata !1274, null}
!1289 = metadata !{i32 606, i32 0, metadata !1274, null}
!1290 = metadata !{i32 608, i32 0, metadata !1274, null}
!1291 = metadata !{i32 615, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1283, i32 615, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1293 = metadata !{i32 650, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !1295, i32 633, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1295 = metadata !{i32 786443, metadata !1, metadata !95, i32 632, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1296 = metadata !{i32 632, i32 0, metadata !1295, null}
!1297 = metadata !{i32 617, i32 0, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !1292, i32 616, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1299 = metadata !{i32 618, i32 0, metadata !1298, null}
!1300 = metadata !{i32 619, i32 0, metadata !1298, null}
!1301 = metadata !{i32 621, i32 0, metadata !1283, null}
!1302 = metadata !{i32 622, i32 0, metadata !1283, null}
!1303 = metadata !{i32 624, i32 0, metadata !1283, null}
!1304 = metadata !{i32 634, i32 0, metadata !1294, null}
!1305 = metadata !{i32 636, i32 0, metadata !1306, null}
!1306 = metadata !{i32 786443, metadata !1, metadata !1294, i32 635, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1307 = metadata !{i32 637, i32 0, metadata !1306, null}
!1308 = metadata !{i32 645, i32 0, metadata !1294, null}
!1309 = metadata !{i32 648, i32 0, metadata !1294, null}
!1310 = metadata !{i32 647, i32 0, metadata !1294, null}
!1311 = metadata !{i32 653, i32 0, metadata !1294, null}
!1312 = metadata !{i32 655, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !1294, i32 654, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1314 = metadata !{i32 2063}
!1315 = metadata !{i32 657, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1, metadata !1313, i32 656, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1317 = metadata !{i32 661, i32 0, metadata !1294, null}
!1318 = metadata !{i32 663, i32 0, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !1, metadata !1294, i32 662, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1320 = metadata !{i32 664, i32 0, metadata !1319, null}
!1321 = metadata !{i32 665, i32 0, metadata !1319, null}
!1322 = metadata !{i32 -1}
!1323 = metadata !{i32 666, i32 0, metadata !1319, null}
!1324 = metadata !{i32 667, i32 0, metadata !1319, null}
!1325 = metadata !{i32 668, i32 0, metadata !1294, null}
!1326 = metadata !{i32 669, i32 0, metadata !1294, null}
!1327 = metadata !{i32 671, i32 0, metadata !95, null}
!1328 = metadata !{i32 674, i32 0, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !1, metadata !95, i32 674, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1330 = metadata !{i32 676, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1332, i32 676, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1332 = metadata !{i32 786443, metadata !1, metadata !1329, i32 675, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1333 = metadata !{i32 679, i32 0, metadata !1332, null}
!1334 = metadata !{i32 680, i32 0, metadata !1332, null}
!1335 = metadata !{i32 681, i32 0, metadata !1332, null}
!1336 = metadata !{i32 682, i32 0, metadata !1332, null}
!1337 = metadata !{i32 692, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !95, i32 692, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1339 = metadata !{i32 801, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !1341, i32 797, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1341 = metadata !{i32 786443, metadata !1, metadata !1342, i32 796, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1342 = metadata !{i32 786443, metadata !1, metadata !1343, i32 723, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1343 = metadata !{i32 786443, metadata !1, metadata !1344, i32 722, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1344 = metadata !{i32 786443, metadata !1, metadata !1345, i32 721, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1345 = metadata !{i32 786443, metadata !1, metadata !95, i32 720, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1346 = metadata !{i32 802, i32 0, metadata !1340, null}
!1347 = metadata !{i32 803, i32 0, metadata !1340, null}
!1348 = metadata !{i32 804, i32 0, metadata !1340, null}
!1349 = metadata !{i32 697, i32 0, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !1, metadata !1338, i32 693, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1351 = metadata !{i32 698, i32 0, metadata !1350, null}
!1352 = metadata !{i32 699, i32 0, metadata !1350, null}
!1353 = metadata !{i32 700, i32 0, metadata !1350, null}
!1354 = metadata !{i32 706, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !1, metadata !1356, i32 703, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1356 = metadata !{i32 786443, metadata !1, metadata !1350, i32 702, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1357 = metadata !{i32 708, i32 0, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !1, metadata !1355, i32 707, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1359 = metadata !{i32 713, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !1, metadata !1355, i32 712, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1361 = metadata !{i32 677, i32 0, metadata !1331, null}
!1362 = metadata !{i32 684, i32 0, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !1, metadata !1332, i32 684, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1364 = metadata !{i32 686, i32 0, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !1, metadata !1363, i32 685, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1366 = metadata !{i32 687, i32 0, metadata !1365, null}
!1367 = metadata !{i32 688, i32 0, metadata !1365, null}
!1368 = metadata !{i32 695, i32 0, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !1, metadata !1350, i32 694, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1370 = metadata !{i32 702, i32 0, metadata !1356, null}
!1371 = metadata !{i32 764, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !1373, i32 762, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1373 = metadata !{i32 786443, metadata !1, metadata !1374, i32 732, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1374 = metadata !{i32 786443, metadata !1, metadata !1342, i32 731, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1375 = metadata !{i32 765, i32 0, metadata !1372, null}
!1376 = metadata !{i32 767, i32 0, metadata !1372, null}
!1377 = metadata !{i32 720, i32 0, metadata !1345, null}
!1378 = metadata !{i32 704, i32 0, metadata !1355, null}
!1379 = metadata !{i32 709, i32 0, metadata !1358, null}
!1380 = metadata !{i32 710, i32 0, metadata !1358, null}
!1381 = metadata !{i32 714, i32 0, metadata !1360, null}
!1382 = metadata !{i32 726, i32 0, metadata !1342, null}
!1383 = metadata !{i32 727, i32 0, metadata !1342, null}
!1384 = metadata !{i32 722, i32 0, metadata !1343, null}
!1385 = metadata !{i32 724, i32 0, metadata !1342, null}
!1386 = metadata !{i32 725, i32 0, metadata !1342, null}
!1387 = metadata !{i32 728, i32 0, metadata !1342, null}
!1388 = metadata !{i32 729, i32 0, metadata !1342, null}
!1389 = metadata !{i32 731, i32 0, metadata !1374, null}
!1390 = metadata !{i32 734, i32 0, metadata !1373, null}
!1391 = metadata !{i32 736, i32 0, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !1, metadata !1373, i32 735, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1393 = metadata !{i32 737, i32 0, metadata !1392, null}
!1394 = metadata !{i32 744, i32 0, metadata !1373, null}
!1395 = metadata !{i32 747, i32 0, metadata !1373, null}
!1396 = metadata !{i32 746, i32 0, metadata !1373, null}
!1397 = metadata !{i32 749, i32 0, metadata !1373, null}
!1398 = metadata !{i32 752, i32 0, metadata !1373, null}
!1399 = metadata !{i32 15}
!1400 = metadata !{i32 754, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !1, metadata !1373, i32 753, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1402 = metadata !{i32 755, i32 0, metadata !1401, null}
!1403 = metadata !{i32 756, i32 0, metadata !1401, null}
!1404 = metadata !{i32 757, i32 0, metadata !1401, null}
!1405 = metadata !{i32 758, i32 0, metadata !1401, null}
!1406 = metadata !{i32 759, i32 0, metadata !1401, null}
!1407 = metadata !{i32 761, i32 0, metadata !1373, null}
!1408 = metadata !{i32 763, i32 0, metadata !1372, null}
!1409 = metadata !{i32 770, i32 0, metadata !1342, null}
!1410 = metadata !{i32 775, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1, metadata !1342, i32 775, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1412 = metadata !{i32 777, i32 0, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1, metadata !1414, i32 777, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1414 = metadata !{i32 786443, metadata !1, metadata !1411, i32 776, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1415 = metadata !{i32 779, i32 0, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !1, metadata !1413, i32 778, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1417 = metadata !{i32 782, i32 0, metadata !1414, null}
!1418 = metadata !{i32 783, i32 0, metadata !1414, null}
!1419 = metadata !{i32 784, i32 0, metadata !1414, null}
!1420 = metadata !{i32 785, i32 0, metadata !1414, null}
!1421 = metadata !{i32 787, i32 0, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !1, metadata !1414, i32 787, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1423 = metadata !{i32 789, i32 0, metadata !1424, null}
!1424 = metadata !{i32 786443, metadata !1, metadata !1422, i32 788, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1425 = metadata !{i32 790, i32 0, metadata !1424, null}
!1426 = metadata !{i32 791, i32 0, metadata !1424, null}
!1427 = metadata !{i32 796, i32 0, metadata !1341, null}
!1428 = metadata !{i32 798, i32 0, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !1, metadata !1340, i32 798, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1430 = metadata !{i32 799, i32 0, metadata !1429, null}
!1431 = metadata !{i32 806, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !1, metadata !1340, i32 806, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1433 = metadata !{i32 808, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !1, metadata !1432, i32 807, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1435 = metadata !{i32 809, i32 0, metadata !1434, null}
!1436 = metadata !{i32 810, i32 0, metadata !1434, null}
!1437 = metadata !{i32 819, i32 0, metadata !95, null}
!1438 = metadata !{i32 831, i32 0, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !1, metadata !1440, i32 831, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1440 = metadata !{i32 786443, metadata !1, metadata !95, i32 830, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1441 = metadata !{i32 825, i32 0, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1, metadata !1443, i32 824, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1443 = metadata !{i32 786443, metadata !1, metadata !1444, i32 823, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1444 = metadata !{i32 786443, metadata !1, metadata !1445, i32 822, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1445 = metadata !{i32 786443, metadata !1, metadata !1446, i32 821, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1446 = metadata !{i32 786443, metadata !1, metadata !95, i32 820, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1447 = metadata !{i32 823, i32 0, metadata !1443, null}
!1448 = metadata !{i32 821, i32 0, metadata !1445, null}
!1449 = metadata !{i32 836, i32 0, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !1, metadata !1451, i32 834, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1451 = metadata !{i32 786443, metadata !1, metadata !1452, i32 833, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1452 = metadata !{i32 786443, metadata !1, metadata !1439, i32 832, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1453 = metadata !{i32 833, i32 0, metadata !1451, null}
!1454 = metadata !{i32 835, i32 0, metadata !1450, null}
!1455 = metadata !{i32 838, i32 0, metadata !1450, null}
!1456 = metadata !{i32 843, i32 0, metadata !95, null}
!1457 = metadata !{i32 850, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !1459, i32 848, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1459 = metadata !{i32 786443, metadata !1, metadata !1460, i32 847, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1460 = metadata !{i32 786443, metadata !1, metadata !1461, i32 846, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1461 = metadata !{i32 786443, metadata !1, metadata !1462, i32 845, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1462 = metadata !{i32 786443, metadata !1, metadata !95, i32 844, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1463 = metadata !{i32 852, i32 0, metadata !1458, null}
!1464 = metadata !{i32 845, i32 0, metadata !1461, null}
!1465 = metadata !{i32 847, i32 0, metadata !1459, null}
!1466 = metadata !{i32 849, i32 0, metadata !1458, null}
!1467 = metadata !{i32 857, i32 0, metadata !95, null}
!1468 = metadata !{i32 875, i32 0, metadata !198, null}
!1469 = metadata !{i32 879, i32 0, metadata !198, null}
!1470 = metadata !{i32 885, i32 0, metadata !198, null}
!1471 = metadata !{i32 886, i32 0, metadata !198, null}
!1472 = metadata !{i32 887, i32 0, metadata !198, null}
!1473 = metadata !{i32 888, i32 0, metadata !198, null}
!1474 = metadata !{i32 889, i32 0, metadata !198, null}
!1475 = metadata !{i32 890, i32 0, metadata !198, null}
!1476 = metadata !{i32 892, i32 0, metadata !198, null}
!1477 = metadata !{i32 893, i32 0, metadata !198, null}
!1478 = metadata !{i32 895, i32 0, metadata !198, null}
!1479 = metadata !{i32 896, i32 0, metadata !198, null}
!1480 = metadata !{i32 897, i32 0, metadata !198, null}
!1481 = metadata !{i32 906, i32 0, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !1, metadata !198, i32 906, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1483 = metadata !{i32 908, i32 0, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !1, metadata !1485, i32 908, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1485 = metadata !{i32 786443, metadata !1, metadata !1482, i32 907, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1486 = metadata !{i32 916, i32 0, metadata !1485, null}
!1487 = metadata !{i32 931, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !1, metadata !1489, i32 922, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1489 = metadata !{i32 786443, metadata !1, metadata !198, i32 921, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1490 = metadata !{i32 921, i32 0, metadata !1489, null}
!1491 = metadata !{i32 910, i32 0, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !1, metadata !1484, i32 909, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1493 = metadata !{i32 911, i32 0, metadata !1492, null}
!1494 = metadata !{i32 912, i32 0, metadata !1492, null}
!1495 = metadata !{i32 914, i32 0, metadata !1485, null}
!1496 = metadata !{i32 915, i32 0, metadata !1485, null}
!1497 = metadata !{i32 917, i32 0, metadata !1485, null}
!1498 = metadata !{i32 923, i32 0, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !1, metadata !1488, i32 923, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1500 = metadata !{i32 945, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !1, metadata !1502, i32 943, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1502 = metadata !{i32 786443, metadata !1, metadata !198, i32 942, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1503 = metadata !{i32 985, i32 0, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !1, metadata !1501, i32 969, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1505 = metadata !{i32 987, i32 0, metadata !1506, null}
!1506 = metadata !{i32 786443, metadata !1, metadata !1504, i32 986, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1507 = metadata !{i32 988, i32 0, metadata !1506, null}
!1508 = metadata !{i32 995, i32 0, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !1, metadata !1504, i32 993, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1510 = metadata !{i32 962, i32 0, metadata !1501, null}
!1511 = metadata !{i32 942, i32 0, metadata !1502, null}
!1512 = metadata !{i32 925, i32 0, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !1, metadata !1499, i32 924, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1514 = metadata !{i32 926, i32 0, metadata !1513, null}
!1515 = metadata !{i32 927, i32 0, metadata !1513, null}
!1516 = metadata !{i32 929, i32 0, metadata !1488, null}
!1517 = metadata !{i32 930, i32 0, metadata !1488, null}
!1518 = metadata !{i32 932, i32 0, metadata !1488, null}
!1519 = metadata !{i32 947, i32 0, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !1, metadata !1501, i32 946, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1521 = metadata !{i32 948, i32 0, metadata !1520, null}
!1522 = metadata !{i32 956, i32 0, metadata !1501, null}
!1523 = metadata !{i32 957, i32 0, metadata !1501, null}
!1524 = metadata !{i32 960, i32 0, metadata !1501, null}
!1525 = metadata !{i32 959, i32 0, metadata !1501, null}
!1526 = metadata !{i32 961, i32 0, metadata !1501, null}
!1527 = metadata !{i32 965, i32 0, metadata !1501, null}
!1528 = metadata !{i32 968, i32 0, metadata !1501, null}
!1529 = metadata !{i32 970, i32 0, metadata !1504, null}
!1530 = metadata !{i32 971, i32 0, metadata !1504, null}
!1531 = metadata !{i32 972, i32 0, metadata !1504, null}
!1532 = metadata !{i32 974, i32 0, metadata !1504, null}
!1533 = metadata !{i32 975, i32 0, metadata !1504, null}
!1534 = metadata !{i32 976, i32 0, metadata !1504, null}
!1535 = metadata !{i32 977, i32 0, metadata !1504, null}
!1536 = metadata !{i32 978, i32 0, metadata !1504, null}
!1537 = metadata !{i32 980, i32 0, metadata !1504, null}
!1538 = metadata !{i32 981, i32 0, metadata !1504, null}
!1539 = metadata !{i32 990, i32 0, metadata !1506, null}
!1540 = metadata !{i32 1000, i32 0, metadata !1501, null}
!1541 = metadata !{i32 994, i32 0, metadata !1509, null}
!1542 = metadata !{i32 997, i32 0, metadata !1509, null}
!1543 = metadata !{i32 1001, i32 0, metadata !1501, null}
!1544 = metadata !{i32 1003, i32 0, metadata !198, null}
!1545 = metadata !{i32 1008, i32 0, metadata !1546, null}
!1546 = metadata !{i32 786443, metadata !1, metadata !198, i32 1008, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1547 = metadata !{i32 1010, i32 0, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !1, metadata !1549, i32 1010, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1549 = metadata !{i32 786443, metadata !1, metadata !1546, i32 1009, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1550 = metadata !{i32 1012, i32 0, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !1, metadata !1548, i32 1011, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1552 = metadata !{i32 1014, i32 0, metadata !1549, null}
!1553 = metadata !{i32 1015, i32 0, metadata !1549, null}
!1554 = metadata !{i32 1016, i32 0, metadata !1549, null}
!1555 = metadata !{i32 1017, i32 0, metadata !1549, null}
!1556 = metadata !{i32 1028, i32 0, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !1, metadata !198, i32 1028, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1558 = metadata !{i32 1065, i32 0, metadata !198, null}
!1559 = metadata !{i32 1032, i32 0, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !1, metadata !1561, i32 1031, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1561 = metadata !{i32 786443, metadata !1, metadata !1562, i32 1030, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1562 = metadata !{i32 786443, metadata !1, metadata !1557, i32 1029, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1563 = metadata !{i32 1034, i32 0, metadata !1562, null}
!1564 = metadata !{i32 1035, i32 0, metadata !1562, null}
!1565 = metadata !{i32 1036, i32 0, metadata !1562, null}
!1566 = metadata !{i32 1037, i32 0, metadata !1562, null}
!1567 = metadata !{i32 1043, i32 0, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !1, metadata !1569, i32 1040, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1569 = metadata !{i32 786443, metadata !1, metadata !1562, i32 1039, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1570 = metadata !{i32 1045, i32 0, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !1, metadata !1568, i32 1044, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1572 = metadata !{i32 1019, i32 0, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !1, metadata !1549, i32 1019, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1574 = metadata !{i32 1021, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !1, metadata !1573, i32 1020, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1576 = metadata !{i32 1022, i32 0, metadata !1575, null}
!1577 = metadata !{i32 1023, i32 0, metadata !1575, null}
!1578 = metadata !{i32 1030, i32 0, metadata !1561, null}
!1579 = metadata !{i32 1039, i32 0, metadata !1569, null}
!1580 = metadata !{i32 1041, i32 0, metadata !1568, null}
!1581 = metadata !{i32 1046, i32 0, metadata !1571, null}
!1582 = metadata !{i32 1047, i32 0, metadata !1571, null}
!1583 = metadata !{i32 1052, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !1, metadata !1585, i32 1051, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1585 = metadata !{i32 786443, metadata !1, metadata !1568, i32 1049, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1586 = metadata !{i32 1057, i32 0, metadata !1587, null}
!1587 = metadata !{i32 786443, metadata !1, metadata !1585, i32 1056, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1588 = metadata !{i32 1058, i32 0, metadata !1587, null}
!1589 = metadata !{i32 1072, i32 0, metadata !1590, null}
!1590 = metadata !{i32 786443, metadata !1, metadata !1591, i32 1070, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1591 = metadata !{i32 786443, metadata !1, metadata !1592, i32 1069, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1592 = metadata !{i32 786443, metadata !1, metadata !1593, i32 1068, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1593 = metadata !{i32 786443, metadata !1, metadata !1594, i32 1067, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1594 = metadata !{i32 786443, metadata !1, metadata !198, i32 1066, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1595 = metadata !{i32 1067, i32 0, metadata !1593, null}
!1596 = metadata !{i32 1069, i32 0, metadata !1591, null}
!1597 = metadata !{i32 1071, i32 0, metadata !1590, null}
!1598 = metadata !{i32 1074, i32 0, metadata !1590, null}
!1599 = metadata !{i32 1078, i32 0, metadata !198, null}
!1600 = metadata !{i32 1098, i32 0, metadata !229, null}
!1601 = metadata !{i32 1101, i32 0, metadata !229, null}
!1602 = metadata !{i32 1104, i32 0, metadata !229, null}
!1603 = metadata !{i32 1105, i32 0, metadata !229, null}
!1604 = metadata !{i32 1111, i32 0, metadata !229, null}
!1605 = metadata !{i32 1112, i32 0, metadata !229, null}
!1606 = metadata !{i32 1115, i32 0, metadata !229, null}
!1607 = metadata !{i32 1116, i32 0, metadata !229, null}
!1608 = metadata !{[4 x i64]* @dct_chroma.cbpblk_pattern}
!1609 = metadata !{i32 1119, i32 0, metadata !229, null}
!1610 = metadata !{i32 1120, i32 0, metadata !229, null}
!1611 = metadata !{i32 1122, i32 0, metadata !229, null}
!1612 = metadata !{i32 1123, i32 0, metadata !229, null}
!1613 = metadata !{i32 1124, i32 0, metadata !229, null}
!1614 = metadata !{i32 1125, i32 0, metadata !229, null}
!1615 = metadata !{i32 1126, i32 0, metadata !229, null}
!1616 = metadata !{i32 1127, i32 0, metadata !229, null}
!1617 = metadata !{i32 1129, i32 0, metadata !229, null}
!1618 = metadata !{i32 1130, i32 0, metadata !229, null}
!1619 = metadata !{i32 1131, i32 0, metadata !229, null}
!1620 = metadata !{i32 1133, i32 0, metadata !229, null}
!1621 = metadata !{i32 1134, i32 0, metadata !229, null}
!1622 = metadata !{i32 1135, i32 0, metadata !229, null}
!1623 = metadata !{i32 1137, i32 0, metadata !229, null}
!1624 = metadata !{i32 1140, i32 0, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !1, metadata !229, i32 1138, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1626 = metadata !{i32 1141, i32 0, metadata !1625, null}
!1627 = metadata !{i32 1145, i32 0, metadata !1625, null}
!1628 = metadata !{i32 1149, i32 0, metadata !1629, null}
!1629 = metadata !{i32 786443, metadata !1, metadata !229, i32 1149, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1630 = metadata !{i32 1151, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !1, metadata !1632, i32 1151, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1632 = metadata !{i32 786443, metadata !1, metadata !1629, i32 1150, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1633 = metadata !{i32 1183, i32 0, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !1, metadata !1635, i32 1173, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1635 = metadata !{i32 786443, metadata !1, metadata !1636, i32 1172, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1636 = metadata !{i32 786443, metadata !1, metadata !1631, i32 1152, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1637 = metadata !{i32 1182, i32 0, metadata !1634, null}
!1638 = metadata !{i32 1184, i32 0, metadata !1634, null}
!1639 = metadata !{i32 1155, i32 0, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !1, metadata !1636, i32 1155, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1641 = metadata !{i32 1165, i32 0, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !1, metadata !1640, i32 1156, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1643 = metadata !{i32 1166, i32 0, metadata !1642, null}
!1644 = metadata !{i32 1167, i32 0, metadata !1642, null}
!1645 = metadata !{i32 1157, i32 0, metadata !1642, null}
!1646 = metadata !{i32 1158, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !1, metadata !1642, i32 1158, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1648 = metadata !{i32 1160, i32 0, metadata !1649, null}
!1649 = metadata !{i32 786443, metadata !1, metadata !1647, i32 1159, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1650 = metadata !{i32 1161, i32 0, metadata !1649, null}
!1651 = metadata !{i32 1162, i32 0, metadata !1649, null}
!1652 = metadata !{i32 1164, i32 0, metadata !1642, null}
!1653 = metadata !{i32 1172, i32 0, metadata !1635, null}
!1654 = metadata !{i32 1174, i32 0, metadata !1634, null}
!1655 = metadata !{i32 1175, i32 0, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !1, metadata !1634, i32 1175, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1657 = metadata !{i32 1177, i32 0, metadata !1658, null}
!1658 = metadata !{i32 786443, metadata !1, metadata !1656, i32 1176, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1659 = metadata !{i32 1178, i32 0, metadata !1658, null}
!1660 = metadata !{i32 1179, i32 0, metadata !1658, null}
!1661 = metadata !{i32 1181, i32 0, metadata !1634, null}
!1662 = metadata !{i32 1189, i32 0, metadata !229, null}
!1663 = metadata !{i32 1394, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1394, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1665 = metadata !{i32 786443, metadata !1, metadata !229, i32 1390, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1666 = metadata !{i32 1395, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !1, metadata !1664, i32 1395, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1668 = metadata !{i32 1270, i32 0, metadata !1669, null}
!1669 = metadata !{i32 786443, metadata !1, metadata !1670, i32 1270, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1670 = metadata !{i32 786443, metadata !1, metadata !229, i32 1264, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1671 = metadata !{i32 1275, i32 0, metadata !1670, null}
!1672 = metadata !{i32 1277, i32 0, metadata !1670, null}
!1673 = metadata !{i32 1271, i32 0, metadata !1674, null}
!1674 = metadata !{i32 786443, metadata !1, metadata !1669, i32 1271, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1675 = metadata !{i32 1193, i32 0, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !1, metadata !229, i32 1190, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1677 = metadata !{i32 1194, i32 0, metadata !1676, null}
!1678 = metadata !{i32 1195, i32 0, metadata !1676, null}
!1679 = metadata !{i32 1196, i32 0, metadata !1676, null}
!1680 = metadata !{i32 1199, i32 0, metadata !1676, null}
!1681 = metadata !{i32 1200, i32 0, metadata !1676, null}
!1682 = metadata !{i32 1202, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !1676, i32 1202, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1684 = metadata !{i32 1208, i32 0, metadata !1685, null}
!1685 = metadata !{i32 786443, metadata !1, metadata !1683, i32 1203, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1686 = metadata !{i32 1222, i32 0, metadata !1687, null}
!1687 = metadata !{i32 786443, metadata !1, metadata !1685, i32 1221, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1688 = metadata !{i32 1210, i32 0, metadata !1685, null}
!1689 = metadata !{i32 1204, i32 0, metadata !1685, null}
!1690 = metadata !{i32 1205, i32 0, metadata !1685, null}
!1691 = metadata !{i32 1207, i32 0, metadata !1685, null}
!1692 = metadata !{i32 1212, i32 0, metadata !1685, null}
!1693 = metadata !{i32 1214, i32 0, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !1, metadata !1685, i32 1213, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1695 = metadata !{i32 1216, i32 0, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !1, metadata !1694, i32 1215, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1697 = metadata !{i32 1220, i32 0, metadata !1685, null}
!1698 = metadata !{metadata !"long", metadata !979}
!1699 = metadata !{i32 1223, i32 0, metadata !1687, null}
!1700 = metadata !{i32 1224, i32 0, metadata !1687, null}
!1701 = metadata !{i32 1225, i32 0, metadata !1687, null}
!1702 = metadata !{i32 1226, i32 0, metadata !1687, null}
!1703 = metadata !{i32 1227, i32 0, metadata !1687, null}
!1704 = metadata !{i32 1228, i32 0, metadata !1687, null}
!1705 = metadata !{i32 1230, i32 0, metadata !1687, null}
!1706 = metadata !{i32 1231, i32 0, metadata !1687, null}
!1707 = metadata !{i32 1232, i32 0, metadata !1685, null}
!1708 = metadata !{i32 1234, i32 0, metadata !1676, null}
!1709 = metadata !{i32 1237, i32 0, metadata !1676, null}
!1710 = metadata !{i32 1238, i32 0, metadata !1676, null}
!1711 = metadata !{i32 1239, i32 0, metadata !1676, null}
!1712 = metadata !{i32 1240, i32 0, metadata !1676, null}
!1713 = metadata !{i32 1241, i32 0, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !1, metadata !1676, i32 1241, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1715 = metadata !{i32 1243, i32 0, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !1, metadata !1714, i32 1242, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1717 = metadata !{i32 1246, i32 0, metadata !1718, null}
!1718 = metadata !{i32 786443, metadata !1, metadata !1716, i32 1244, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1719 = metadata !{i32 1248, i32 0, metadata !1718, null}
!1720 = metadata !{i32 1253, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !1, metadata !1716, i32 1251, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1722 = metadata !{i32 1245, i32 0, metadata !1718, null}
!1723 = metadata !{i32 1252, i32 0, metadata !1721, null}
!1724 = metadata !{i32 1255, i32 0, metadata !1721, null}
!1725 = metadata !{i32 1258, i32 0, metadata !1676, null}
!1726 = metadata !{i32 1259, i32 0, metadata !1676, null}
!1727 = metadata !{i32 1260, i32 0, metadata !1676, null}
!1728 = metadata !{i32 1261, i32 0, metadata !1676, null}
!1729 = metadata !{i32 1262, i32 0, metadata !1676, null}
!1730 = metadata !{i32 1272, i32 0, metadata !1674, null}
!1731 = metadata !{i32 1276, i32 0, metadata !1670, null}
!1732 = metadata !{i32 1278, i32 0, metadata !1670, null}
!1733 = metadata !{i32 1280, i32 0, metadata !1670, null}
!1734 = metadata !{i32 1281, i32 0, metadata !1670, null}
!1735 = metadata !{i32 1282, i32 0, metadata !1670, null}
!1736 = metadata !{i32 1283, i32 0, metadata !1670, null}
!1737 = metadata !{i32 1286, i32 0, metadata !1738, null}
!1738 = metadata !{i32 786443, metadata !1, metadata !1670, i32 1286, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1739 = metadata !{i32 1296, i32 0, metadata !1740, null}
!1740 = metadata !{i32 786443, metadata !1, metadata !1738, i32 1287, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1741 = metadata !{i32 1288, i32 0, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !1, metadata !1740, i32 1288, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1743 = metadata !{i32 1312, i32 0, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !1, metadata !1745, i32 1305, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1745 = metadata !{i32 786443, metadata !1, metadata !1670, i32 1304, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1746 = metadata !{i32 1319, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !1, metadata !1744, i32 1317, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1748 = metadata !{i32 1314, i32 0, metadata !1744, null}
!1749 = metadata !{i32 1304, i32 0, metadata !1745, null}
!1750 = metadata !{i32 1290, i32 0, metadata !1751, null}
!1751 = metadata !{i32 786443, metadata !1, metadata !1742, i32 1289, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1752 = metadata !{i32 1291, i32 0, metadata !1751, null}
!1753 = metadata !{i32 1292, i32 0, metadata !1751, null}
!1754 = metadata !{i32 1294, i32 0, metadata !1740, null}
!1755 = metadata !{i32 1295, i32 0, metadata !1740, null}
!1756 = metadata !{i32 1297, i32 0, metadata !1740, null}
!1757 = metadata !{i32 1306, i32 0, metadata !1744, null}
!1758 = metadata !{i32 1307, i32 0, metadata !1744, null}
!1759 = metadata !{i32 1309, i32 0, metadata !1744, null}
!1760 = metadata !{i32 1311, i32 0, metadata !1744, null}
!1761 = metadata !{i32 1316, i32 0, metadata !1744, null}
!1762 = metadata !{i32 1320, i32 0, metadata !1747, null}
!1763 = metadata !{i32 1321, i32 0, metadata !1747, null}
!1764 = metadata !{i32 1323, i32 0, metadata !1747, null}
!1765 = metadata !{i32 1324, i32 0, metadata !1747, null}
!1766 = metadata !{i32 1325, i32 0, metadata !1747, null}
!1767 = metadata !{i32 1326, i32 0, metadata !1747, null}
!1768 = metadata !{i32 1328, i32 0, metadata !1744, null}
!1769 = metadata !{i32 1327, i32 0, metadata !1747, null}
!1770 = metadata !{i32 1330, i32 0, metadata !1670, null}
!1771 = metadata !{i32 1334, i32 0, metadata !1670, null}
!1772 = metadata !{i32 1335, i32 0, metadata !1670, null}
!1773 = metadata !{i32 1336, i32 0, metadata !1670, null}
!1774 = metadata !{i32 1337, i32 0, metadata !1670, null}
!1775 = metadata !{i32 1339, i32 0, metadata !1670, null}
!1776 = metadata !{i32 1340, i32 0, metadata !1670, null}
!1777 = metadata !{i32 1341, i32 0, metadata !1670, null}
!1778 = metadata !{i32 1342, i32 0, metadata !1670, null}
!1779 = metadata !{i32 1346, i32 0, metadata !1780, null}
!1780 = metadata !{i32 786443, metadata !1, metadata !1670, i32 1346, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1781 = metadata !{i32 1351, i32 0, metadata !1782, null}
!1782 = metadata !{i32 786443, metadata !1, metadata !1780, i32 1347, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1783 = metadata !{i32 1352, i32 0, metadata !1782, null}
!1784 = metadata !{i32 1353, i32 0, metadata !1782, null}
!1785 = metadata !{i32 1354, i32 0, metadata !1782, null}
!1786 = metadata !{i32 1360, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !1, metadata !1788, i32 1357, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1788 = metadata !{i32 786443, metadata !1, metadata !1782, i32 1356, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1789 = metadata !{i32 1364, i32 0, metadata !1790, null}
!1790 = metadata !{i32 786443, metadata !1, metadata !1791, i32 1363, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1791 = metadata !{i32 786443, metadata !1, metadata !1787, i32 1361, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1792 = metadata !{i32 1369, i32 0, metadata !1793, null}
!1793 = metadata !{i32 786443, metadata !1, metadata !1791, i32 1368, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1794 = metadata !{i32 1377, i32 0, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !1, metadata !1796, i32 1376, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1796 = metadata !{i32 786443, metadata !1, metadata !1787, i32 1374, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1797 = metadata !{i32 1349, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !1, metadata !1782, i32 1348, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1799 = metadata !{i32 1356, i32 0, metadata !1788, null}
!1800 = metadata !{i32 1358, i32 0, metadata !1787, null}
!1801 = metadata !{i32 1362, i32 0, metadata !1791, null}
!1802 = metadata !{i32 1365, i32 0, metadata !1790, null}
!1803 = metadata !{i32 1366, i32 0, metadata !1790, null}
!1804 = metadata !{i32 1370, i32 0, metadata !1793, null}
!1805 = metadata !{i32 1375, i32 0, metadata !1796, null}
!1806 = metadata !{i32 1378, i32 0, metadata !1795, null}
!1807 = metadata !{i32 1379, i32 0, metadata !1795, null}
!1808 = metadata !{i32 1382, i32 0, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !1, metadata !1796, i32 1381, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1810 = metadata !{i32 1383, i32 0, metadata !1809, null}
!1811 = metadata !{i32 1396, i32 0, metadata !1667, null}
!1812 = metadata !{i32 1401, i32 0, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !1, metadata !1814, i32 1401, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1814 = metadata !{i32 786443, metadata !1, metadata !1815, i32 1400, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1815 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1399, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1816 = metadata !{i32 1399, i32 0, metadata !1815, null}
!1817 = metadata !{i32 1409, i32 0, metadata !1814, null}
!1818 = metadata !{i32 1413, i32 0, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1413, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1820 = metadata !{i32 1423, i32 0, metadata !1821, null}
!1821 = metadata !{i32 786443, metadata !1, metadata !1819, i32 1414, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1822 = metadata !{i32 1403, i32 0, metadata !1823, null}
!1823 = metadata !{i32 786443, metadata !1, metadata !1813, i32 1402, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1824 = metadata !{i32 1404, i32 0, metadata !1823, null}
!1825 = metadata !{i32 1405, i32 0, metadata !1823, null}
!1826 = metadata !{i32 1407, i32 0, metadata !1814, null}
!1827 = metadata !{i32 1408, i32 0, metadata !1814, null}
!1828 = metadata !{i32 1410, i32 0, metadata !1814, null}
!1829 = metadata !{i32 1415, i32 0, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !1, metadata !1821, i32 1415, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1831 = metadata !{i32 1448, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !1, metadata !1833, i32 1446, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1833 = metadata !{i32 786443, metadata !1, metadata !1834, i32 1432, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1834 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1431, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1835 = metadata !{i32 1441, i32 0, metadata !1833, null}
!1836 = metadata !{i32 1443, i32 0, metadata !1833, null}
!1837 = metadata !{i32 1431, i32 0, metadata !1834, null}
!1838 = metadata !{i32 1417, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1, metadata !1830, i32 1416, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1840 = metadata !{i32 1418, i32 0, metadata !1839, null}
!1841 = metadata !{i32 1419, i32 0, metadata !1839, null}
!1842 = metadata !{i32 1421, i32 0, metadata !1821, null}
!1843 = metadata !{i32 1422, i32 0, metadata !1821, null}
!1844 = metadata !{i32 1424, i32 0, metadata !1821, null}
!1845 = metadata !{i32 1433, i32 0, metadata !1833, null}
!1846 = metadata !{i32 1434, i32 0, metadata !1833, null}
!1847 = metadata !{i32 1436, i32 0, metadata !1833, null}
!1848 = metadata !{i32 1439, i32 0, metadata !1833, null}
!1849 = metadata !{i32 1438, i32 0, metadata !1833, null}
!1850 = metadata !{i32 1440, i32 0, metadata !1833, null}
!1851 = metadata !{i32 1445, i32 0, metadata !1833, null}
!1852 = metadata !{i32 1449, i32 0, metadata !1832, null}
!1853 = metadata !{i32 1450, i32 0, metadata !1832, null}
!1854 = metadata !{i32 1452, i32 0, metadata !1832, null}
!1855 = metadata !{i32 1453, i32 0, metadata !1832, null}
!1856 = metadata !{i32 1454, i32 0, metadata !1832, null}
!1857 = metadata !{i32 1455, i32 0, metadata !1832, null}
!1858 = metadata !{i32 1456, i32 0, metadata !1832, null}
!1859 = metadata !{i32 1457, i32 0, metadata !1833, null}
!1860 = metadata !{i32 1458, i32 0, metadata !1833, null}
!1861 = metadata !{i32 1460, i32 0, metadata !1665, null}
!1862 = metadata !{i32 1464, i32 0, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1464, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1864 = metadata !{i32 1466, i32 0, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !1, metadata !1866, i32 1466, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1866 = metadata !{i32 786443, metadata !1, metadata !1863, i32 1465, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1867 = metadata !{i32 1469, i32 0, metadata !1866, null}
!1868 = metadata !{i32 1470, i32 0, metadata !1866, null}
!1869 = metadata !{i32 1471, i32 0, metadata !1866, null}
!1870 = metadata !{i32 1472, i32 0, metadata !1866, null}
!1871 = metadata !{i32 1483, i32 0, metadata !1872, null}
!1872 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1483, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1873 = metadata !{i32 1488, i32 0, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !1, metadata !1872, i32 1484, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1875 = metadata !{i32 1489, i32 0, metadata !1874, null}
!1876 = metadata !{i32 1490, i32 0, metadata !1874, null}
!1877 = metadata !{i32 1491, i32 0, metadata !1874, null}
!1878 = metadata !{i32 1496, i32 0, metadata !1879, null}
!1879 = metadata !{i32 786443, metadata !1, metadata !1880, i32 1494, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1880 = metadata !{i32 786443, metadata !1, metadata !1874, i32 1493, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1881 = metadata !{i32 1500, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !1, metadata !1883, i32 1499, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1883 = metadata !{i32 786443, metadata !1, metadata !1879, i32 1497, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1884 = metadata !{i32 1505, i32 0, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !1, metadata !1883, i32 1504, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1886 = metadata !{i32 1513, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !1, metadata !1888, i32 1512, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1888 = metadata !{i32 786443, metadata !1, metadata !1879, i32 1510, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1889 = metadata !{i32 1467, i32 0, metadata !1865, null}
!1890 = metadata !{i32 1474, i32 0, metadata !1891, null}
!1891 = metadata !{i32 786443, metadata !1, metadata !1866, i32 1474, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1892 = metadata !{i32 1476, i32 0, metadata !1893, null}
!1893 = metadata !{i32 786443, metadata !1, metadata !1891, i32 1475, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1894 = metadata !{i32 1477, i32 0, metadata !1893, null}
!1895 = metadata !{i32 1478, i32 0, metadata !1893, null}
!1896 = metadata !{i32 1486, i32 0, metadata !1897, null}
!1897 = metadata !{i32 786443, metadata !1, metadata !1874, i32 1485, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1898 = metadata !{i32 1493, i32 0, metadata !1880, null}
!1899 = metadata !{i32 1495, i32 0, metadata !1879, null}
!1900 = metadata !{i32 1498, i32 0, metadata !1883, null}
!1901 = metadata !{i32 1501, i32 0, metadata !1882, null}
!1902 = metadata !{i32 1502, i32 0, metadata !1882, null}
!1903 = metadata !{i32 1506, i32 0, metadata !1885, null}
!1904 = metadata !{i32 1511, i32 0, metadata !1888, null}
!1905 = metadata !{i32 1514, i32 0, metadata !1887, null}
!1906 = metadata !{i32 1515, i32 0, metadata !1887, null}
!1907 = metadata !{i32 1518, i32 0, metadata !1908, null}
!1908 = metadata !{i32 786443, metadata !1, metadata !1888, i32 1517, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1909 = metadata !{i32 1519, i32 0, metadata !1908, null}
!1910 = metadata !{i32 1530, i32 0, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !1, metadata !229, i32 1530, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1912 = metadata !{i32 1527, i32 0, metadata !229, null}
!1913 = metadata !{i32 1528, i32 0, metadata !229, null}
!1914 = metadata !{i32 1534, i32 0, metadata !1915, null}
!1915 = metadata !{i32 786443, metadata !1, metadata !1916, i32 1533, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1916 = metadata !{i32 786443, metadata !1, metadata !1917, i32 1532, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1917 = metadata !{i32 786443, metadata !1, metadata !1911, i32 1531, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1918 = metadata !{i32 1536, i32 0, metadata !1915, null}
!1919 = metadata !{i32 1544, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !1, metadata !1921, i32 1542, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1921 = metadata !{i32 786443, metadata !1, metadata !1915, i32 1541, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1922 = metadata !{i32 1566, i32 0, metadata !1923, null}
!1923 = metadata !{i32 786443, metadata !1, metadata !1920, i32 1565, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1924 = metadata !{i32 1583, i32 0, metadata !1923, null}
!1925 = metadata !{i32 1586, i32 0, metadata !1926, null}
!1926 = metadata !{i32 786443, metadata !1, metadata !1923, i32 1584, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1927 = metadata !{i32 1593, i32 0, metadata !1928, null}
!1928 = metadata !{i32 786443, metadata !1, metadata !1923, i32 1591, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1929 = metadata !{i32 1560, i32 0, metadata !1920, null}
!1930 = metadata !{i32 1532, i32 0, metadata !1916, null}
!1931 = metadata !{i32 1535, i32 0, metadata !1915, null}
!1932 = metadata !{i32 1537, i32 0, metadata !1915, null}
!1933 = metadata !{i32 1538, i32 0, metadata !1915, null}
!1934 = metadata !{i32 1539, i32 0, metadata !1915, null}
!1935 = metadata !{i32 1541, i32 0, metadata !1921, null}
!1936 = metadata !{i32 1546, i32 0, metadata !1937, null}
!1937 = metadata !{i32 786443, metadata !1, metadata !1920, i32 1545, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1938 = metadata !{i32 1547, i32 0, metadata !1937, null}
!1939 = metadata !{i32 1554, i32 0, metadata !1920, null}
!1940 = metadata !{i32 1555, i32 0, metadata !1920, null}
!1941 = metadata !{i32 1558, i32 0, metadata !1920, null}
!1942 = metadata !{i32 1557, i32 0, metadata !1920, null}
!1943 = metadata !{i32 1559, i32 0, metadata !1920, null}
!1944 = metadata !{i32 1562, i32 0, metadata !1920, null}
!1945 = metadata !{i32 1564, i32 0, metadata !1920, null}
!1946 = metadata !{i32 1567, i32 0, metadata !1923, null}
!1947 = metadata !{i32 1568, i32 0, metadata !1923, null}
!1948 = metadata !{i32 1570, i32 0, metadata !1923, null}
!1949 = metadata !{i32 2}
!1950 = metadata !{i32 1572, i32 0, metadata !1923, null}
!1951 = metadata !{i32 1573, i32 0, metadata !1923, null}
!1952 = metadata !{i32 1574, i32 0, metadata !1923, null}
!1953 = metadata !{i32 1575, i32 0, metadata !1923, null}
!1954 = metadata !{i32 1576, i32 0, metadata !1923, null}
!1955 = metadata !{i32 1578, i32 0, metadata !1923, null}
!1956 = metadata !{i32 1579, i32 0, metadata !1923, null}
!1957 = metadata !{i32 1585, i32 0, metadata !1926, null}
!1958 = metadata !{i32 1588, i32 0, metadata !1926, null}
!1959 = metadata !{i32 1598, i32 0, metadata !1920, null}
!1960 = metadata !{i32 1592, i32 0, metadata !1928, null}
!1961 = metadata !{i32 1595, i32 0, metadata !1928, null}
!1962 = metadata !{i32 1599, i32 0, metadata !1920, null}
!1963 = metadata !{i32 1601, i32 0, metadata !1915, null}
!1964 = metadata !{i32 1606, i32 0, metadata !229, null}
!1965 = metadata !{i32 1610, i32 0, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !1, metadata !1967, i32 1610, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1967 = metadata !{i32 786443, metadata !1, metadata !229, i32 1607, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1968 = metadata !{i32 1614, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !1, metadata !1970, i32 1613, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1970 = metadata !{i32 786443, metadata !1, metadata !1971, i32 1612, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1971 = metadata !{i32 786443, metadata !1, metadata !1966, i32 1611, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1972 = metadata !{i32 1616, i32 0, metadata !1969, null}
!1973 = metadata !{i32 1618, i32 0, metadata !1969, null}
!1974 = metadata !{i32 1624, i32 0, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !1, metadata !1976, i32 1622, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1976 = metadata !{i32 786443, metadata !1, metadata !1969, i32 1621, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1977 = metadata !{i32 1612, i32 0, metadata !1970, null}
!1978 = metadata !{i32 1615, i32 0, metadata !1969, null}
!1979 = metadata !{i32 1620, i32 0, metadata !1969, null}
!1980 = metadata !{i32 1621, i32 0, metadata !1976, null}
!1981 = metadata !{i32 1626, i32 0, metadata !1982, null}
!1982 = metadata !{i32 786443, metadata !1, metadata !1975, i32 1625, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1983 = metadata !{i32 1627, i32 0, metadata !1982, null}
!1984 = metadata !{i32 1634, i32 0, metadata !1975, null}
!1985 = metadata !{i32 1635, i32 0, metadata !1975, null}
!1986 = metadata !{i32 1642, i32 0, metadata !229, null}
!1987 = metadata !{i32 1643, i32 0, metadata !229, null}
!1988 = metadata !{i32 1648, i32 0, metadata !1989, null}
!1989 = metadata !{i32 786443, metadata !1, metadata !229, i32 1648, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1990 = metadata !{i32 1711, i32 0, metadata !229, null}
!1991 = metadata !{i32 1650, i32 0, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !1, metadata !1993, i32 1650, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1993 = metadata !{i32 786443, metadata !1, metadata !1989, i32 1649, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1994 = metadata !{i32 1658, i32 0, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !1, metadata !1996, i32 1653, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1996 = metadata !{i32 786443, metadata !1, metadata !1997, i32 1652, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1997 = metadata !{i32 786443, metadata !1, metadata !1992, i32 1651, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!1998 = metadata !{i32 1659, i32 0, metadata !1995, null}
!1999 = metadata !{i32 1660, i32 0, metadata !1995, null}
!2000 = metadata !{i32 1661, i32 0, metadata !1995, null}
!2001 = metadata !{i32 1687, i32 0, metadata !2002, null}
!2002 = metadata !{i32 786443, metadata !1, metadata !2003, i32 1684, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2003 = metadata !{i32 786443, metadata !1, metadata !2004, i32 1683, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2004 = metadata !{i32 786443, metadata !1, metadata !2005, i32 1673, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2005 = metadata !{i32 786443, metadata !1, metadata !1997, i32 1672, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2006 = metadata !{i32 1689, i32 0, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !1, metadata !2002, i32 1688, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2008 = metadata !{i32 1654, i32 0, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !1, metadata !1995, i32 1654, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2010 = metadata !{i32 1652, i32 0, metadata !1996, null}
!2011 = metadata !{i32 1656, i32 0, metadata !2012, null}
!2012 = metadata !{i32 786443, metadata !1, metadata !2009, i32 1655, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2013 = metadata !{i32 1663, i32 0, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !1, metadata !1995, i32 1663, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2015 = metadata !{i32 1665, i32 0, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !1, metadata !2014, i32 1664, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2017 = metadata !{i32 1666, i32 0, metadata !2016, null}
!2018 = metadata !{i32 1667, i32 0, metadata !2016, null}
!2019 = metadata !{i32 1676, i32 0, metadata !2020, null}
!2020 = metadata !{i32 786443, metadata !1, metadata !2021, i32 1675, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2021 = metadata !{i32 786443, metadata !1, metadata !2004, i32 1674, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2022 = metadata !{i32 1674, i32 0, metadata !2021, null}
!2023 = metadata !{i32 1678, i32 0, metadata !2004, null}
!2024 = metadata !{i32 1679, i32 0, metadata !2004, null}
!2025 = metadata !{i32 1680, i32 0, metadata !2004, null}
!2026 = metadata !{i32 1681, i32 0, metadata !2004, null}
!2027 = metadata !{i32 1683, i32 0, metadata !2003, null}
!2028 = metadata !{i32 1685, i32 0, metadata !2002, null}
!2029 = metadata !{i32 1690, i32 0, metadata !2007, null}
!2030 = metadata !{i32 1691, i32 0, metadata !2007, null}
!2031 = metadata !{i32 1696, i32 0, metadata !2032, null}
!2032 = metadata !{i32 786443, metadata !1, metadata !2033, i32 1695, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2033 = metadata !{i32 786443, metadata !1, metadata !2002, i32 1693, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2034 = metadata !{i32 1701, i32 0, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !1, metadata !2033, i32 1700, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2036 = metadata !{i32 1702, i32 0, metadata !2035, null}
!2037 = metadata !{i32 1672, i32 0, metadata !2005, null}
!2038 = metadata !{i32 1712, i32 0, metadata !2039, null}
!2039 = metadata !{i32 786443, metadata !1, metadata !229, i32 1712, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2040 = metadata !{i32 1714, i32 0, metadata !2041, null}
!2041 = metadata !{i32 786443, metadata !1, metadata !2042, i32 1714, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2042 = metadata !{i32 786443, metadata !1, metadata !2039, i32 1713, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2043 = metadata !{i32 1717, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !1, metadata !2041, i32 1715, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2045 = metadata !{i32 1716, i32 0, metadata !2044, null}
!2046 = metadata !{i32 1719, i32 0, metadata !2044, null}
!2047 = metadata !{i32 1724, i32 0, metadata !229, null}
!2048 = metadata !{i32 1728, i32 0, metadata !276, null}
!2049 = metadata !{i32 1732, i32 0, metadata !276, null}
!2050 = metadata !{i32 1735, i32 0, metadata !276, null}
!2051 = metadata !{i32 1736, i32 0, metadata !276, null}
!2052 = metadata !{i32 1741, i32 0, metadata !276, null}
!2053 = metadata !{i32 1742, i32 0, metadata !276, null}
!2054 = metadata !{i32 1744, i32 0, metadata !276, null}
!2055 = metadata !{i32 1746, i32 0, metadata !276, null}
!2056 = metadata !{i32 1747, i32 0, metadata !276, null}
!2057 = metadata !{i32 1749, i32 0, metadata !276, null}
!2058 = metadata !{i32 1750, i32 0, metadata !276, null}
!2059 = metadata !{i32 1751, i32 0, metadata !276, null}
!2060 = metadata !{i32 1754, i32 0, metadata !276, null}
!2061 = metadata !{i32 1765, i32 0, metadata !2062, null}
!2062 = metadata !{i32 786443, metadata !1, metadata !2063, i32 1756, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2063 = metadata !{i32 786443, metadata !1, metadata !276, i32 1755, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2064 = metadata !{i32 1755, i32 0, metadata !2063, null}
!2065 = metadata !{i32 1757, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !1, metadata !2062, i32 1757, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2067 = metadata !{i32 1759, i32 0, metadata !2068, null}
!2068 = metadata !{i32 786443, metadata !1, metadata !2066, i32 1758, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2069 = metadata !{i32 1760, i32 0, metadata !2068, null}
!2070 = metadata !{i32 1761, i32 0, metadata !2068, null}
!2071 = metadata !{i32 1763, i32 0, metadata !2062, null}
!2072 = metadata !{i32 1764, i32 0, metadata !2062, null}
!2073 = metadata !{i32 1766, i32 0, metadata !2062, null}
!2074 = metadata !{i32 1773, i32 0, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !1, metadata !2076, i32 1773, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2076 = metadata !{i32 786443, metadata !1, metadata !2077, i32 1772, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2077 = metadata !{i32 786443, metadata !1, metadata !276, i32 1771, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2078 = metadata !{i32 1775, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !1, metadata !2075, i32 1774, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2080 = metadata !{i32 1776, i32 0, metadata !2079, null}
!2081 = metadata !{i32 1777, i32 0, metadata !2079, null}
!2082 = metadata !{i32 1779, i32 0, metadata !2076, null}
!2083 = metadata !{i32 1780, i32 0, metadata !2076, null}
!2084 = metadata !{i32 1781, i32 0, metadata !2076, null}
!2085 = metadata !{i32 1782, i32 0, metadata !2076, null}
!2086 = metadata !{i32 1771, i32 0, metadata !2077, null}
!2087 = metadata !{i32 1787, i32 0, metadata !276, null}
!2088 = metadata !{i32 1789, i32 0, metadata !276, null}
!2089 = metadata !{i32 1790, i32 0, metadata !276, null}
!2090 = metadata !{i32 1793, i32 0, metadata !276, null}
!2091 = metadata !{i32 1792, i32 0, metadata !276, null}
!2092 = metadata !{i32 1795, i32 0, metadata !276, null}
!2093 = metadata !{i32 1794, i32 0, metadata !276, null}
!2094 = metadata !{i32 1797, i32 0, metadata !276, null}
!2095 = metadata !{i32 1799, i32 0, metadata !276, null}
!2096 = metadata !{i32 1800, i32 0, metadata !276, null}
!2097 = metadata !{i32 1803, i32 0, metadata !276, null}
!2098 = metadata !{i32 1805, i32 0, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !1, metadata !276, i32 1804, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2100 = metadata !{i32 1857, i32 0, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !1, metadata !2102, i32 1855, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2102 = metadata !{i32 786443, metadata !1, metadata !2103, i32 1841, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2103 = metadata !{i32 786443, metadata !1, metadata !2104, i32 1826, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2104 = metadata !{i32 786443, metadata !1, metadata !276, i32 1825, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2105 = metadata !{i32 1806, i32 0, metadata !2099, null}
!2106 = metadata !{i32 1809, i32 0, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !1, metadata !276, i32 1808, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2108 = metadata !{i32 1812, i32 0, metadata !2109, null}
!2109 = metadata !{i32 786443, metadata !1, metadata !2107, i32 1810, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2110 = metadata !{i32 1811, i32 0, metadata !2109, null}
!2111 = metadata !{i32 1814, i32 0, metadata !2109, null}
!2112 = metadata !{i32 1818, i32 0, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !1, metadata !2107, i32 1817, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2114 = metadata !{i32 1819, i32 0, metadata !2113, null}
!2115 = metadata !{i32 1821, i32 0, metadata !2113, null}
!2116 = metadata !{i32 1854, i32 0, metadata !2102, null}
!2117 = metadata !{i32 1864, i32 0, metadata !2118, null}
!2118 = metadata !{i32 786443, metadata !1, metadata !2102, i32 1862, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2119 = metadata !{i32 1836, i32 0, metadata !2103, null}
!2120 = metadata !{i32 1825, i32 0, metadata !2104, null}
!2121 = metadata !{i32 1827, i32 0, metadata !2103, null}
!2122 = metadata !{i32 1828, i32 0, metadata !2103, null}
!2123 = metadata !{i32 1830, i32 0, metadata !2103, null}
!2124 = metadata !{i32 1831, i32 0, metadata !2103, null}
!2125 = metadata !{i32 1834, i32 0, metadata !2103, null}
!2126 = metadata !{i32 1833, i32 0, metadata !2103, null}
!2127 = metadata !{i32 1835, i32 0, metadata !2103, null}
!2128 = metadata !{i32 1838, i32 0, metadata !2103, null}
!2129 = metadata !{i32 1840, i32 0, metadata !2103, null}
!2130 = metadata !{i32 1842, i32 0, metadata !2102, null}
!2131 = metadata !{i32 1844, i32 0, metadata !2102, null}
!2132 = metadata !{i32 1845, i32 0, metadata !2102, null}
!2133 = metadata !{i32 1846, i32 0, metadata !2102, null}
!2134 = metadata !{i32 1847, i32 0, metadata !2102, null}
!2135 = metadata !{i32 1849, i32 0, metadata !2102, null}
!2136 = metadata !{i32 1850, i32 0, metadata !2102, null}
!2137 = metadata !{i32 1856, i32 0, metadata !2101, null}
!2138 = metadata !{i32 1859, i32 0, metadata !2101, null}
!2139 = metadata !{i32 1869, i32 0, metadata !2103, null}
!2140 = metadata !{i32 1863, i32 0, metadata !2118, null}
!2141 = metadata !{i32 1866, i32 0, metadata !2118, null}
!2142 = metadata !{i32 1870, i32 0, metadata !2103, null}
!2143 = metadata !{i32 1872, i32 0, metadata !276, null}
!2144 = metadata !{i32 1877, i32 0, metadata !276, null}
!2145 = metadata !{i32 1882, i32 0, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !1, metadata !2147, i32 1881, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2147 = metadata !{i32 786443, metadata !1, metadata !2148, i32 1880, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2148 = metadata !{i32 786443, metadata !1, metadata !2149, i32 1879, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2149 = metadata !{i32 786443, metadata !1, metadata !276, i32 1878, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2150 = metadata !{i32 1884, i32 0, metadata !2148, null}
!2151 = metadata !{i32 1885, i32 0, metadata !2148, null}
!2152 = metadata !{i32 1886, i32 0, metadata !2148, null}
!2153 = metadata !{i32 1887, i32 0, metadata !2148, null}
!2154 = metadata !{i32 1878, i32 0, metadata !2149, null}
!2155 = metadata !{i32 1880, i32 0, metadata !2147, null}
!2156 = metadata !{i32 1889, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !1, metadata !2148, i32 1889, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2158 = metadata !{i32 1891, i32 0, metadata !2159, null}
!2159 = metadata !{i32 786443, metadata !1, metadata !2157, i32 1890, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2160 = metadata !{i32 1892, i32 0, metadata !2159, null}
!2161 = metadata !{i32 1893, i32 0, metadata !2159, null}
!2162 = metadata !{i32 1901, i32 0, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !1, metadata !2164, i32 1901, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2164 = metadata !{i32 786443, metadata !1, metadata !2165, i32 1900, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2165 = metadata !{i32 786443, metadata !1, metadata !276, i32 1899, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2166 = metadata !{i32 1903, i32 0, metadata !2167, null}
!2167 = metadata !{i32 786443, metadata !1, metadata !2163, i32 1902, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2168 = metadata !{i32 1905, i32 0, metadata !2164, null}
!2169 = metadata !{i32 1906, i32 0, metadata !2164, null}
!2170 = metadata !{i32 1907, i32 0, metadata !2164, null}
!2171 = metadata !{i32 1908, i32 0, metadata !2164, null}
!2172 = metadata !{i32 1910, i32 0, metadata !2173, null}
!2173 = metadata !{i32 786443, metadata !1, metadata !2164, i32 1910, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2174 = metadata !{i32 1912, i32 0, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !1, metadata !2173, i32 1911, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2176 = metadata !{i32 1913, i32 0, metadata !2175, null}
!2177 = metadata !{i32 1914, i32 0, metadata !2175, null}
!2178 = metadata !{i32 1899, i32 0, metadata !2165, null}
!2179 = metadata !{i32 1918, i32 0, metadata !276, null}
!2180 = metadata !{i32 1922, i32 0, metadata !304, null}
!2181 = metadata !{i32 1925, i32 0, metadata !304, null}
!2182 = metadata !{i32 1926, i32 0, metadata !304, null}
!2183 = metadata !{i32 1928, i32 0, metadata !304, null}
!2184 = metadata !{i32 1929, i32 0, metadata !304, null}
!2185 = metadata !{i32 1931, i32 0, metadata !2186, null}
!2186 = metadata !{i32 786443, metadata !1, metadata !304, i32 1931, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2187 = metadata !{i32 1938, i32 0, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !1, metadata !2186, i32 1932, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2189 = metadata !{i32 1933, i32 0, metadata !2188, null}
!2190 = metadata !{i32 1934, i32 0, metadata !2188, null}
!2191 = metadata !{i32 1936, i32 0, metadata !2188, null}
!2192 = metadata !{i32 1940, i32 0, metadata !2188, null}
!2193 = metadata !{i32 1942, i32 0, metadata !2194, null}
!2194 = metadata !{i32 786443, metadata !1, metadata !2188, i32 1941, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2195 = metadata !{i32 1943, i32 0, metadata !2194, null}
!2196 = metadata !{i32 1944, i32 0, metadata !2194, null}
!2197 = metadata !{i32 1945, i32 0, metadata !2194, null}
!2198 = metadata !{i32 1946, i32 0, metadata !2194, null}
!2199 = metadata !{i32 1947, i32 0, metadata !2194, null}
!2200 = metadata !{i32 1949, i32 0, metadata !304, null}
!2201 = metadata !{i32 1951, i32 0, metadata !304, null}
!2202 = metadata !{i32 1972, i32 0, metadata !316, null}
!2203 = metadata !{i32 1976, i32 0, metadata !316, null}
!2204 = metadata !{i32 1980, i32 0, metadata !316, null}
!2205 = metadata !{i32 1984, i32 0, metadata !316, null}
!2206 = metadata !{i32 1985, i32 0, metadata !316, null}
!2207 = metadata !{i32 1986, i32 0, metadata !316, null}
!2208 = metadata !{i32 1987, i32 0, metadata !316, null}
!2209 = metadata !{i32 1988, i32 0, metadata !316, null}
!2210 = metadata !{i32 1989, i32 0, metadata !316, null}
!2211 = metadata !{i32 1990, i32 0, metadata !316, null}
!2212 = metadata !{i32 1995, i32 0, metadata !316, null}
!2213 = metadata !{i32 1996, i32 0, metadata !316, null}
!2214 = metadata !{i32 1998, i32 0, metadata !316, null}
!2215 = metadata !{i32 1999, i32 0, metadata !316, null}
!2216 = metadata !{i32 2000, i32 0, metadata !316, null}
!2217 = metadata !{i32 2001, i32 0, metadata !316, null}
!2218 = metadata !{i32 2002, i32 0, metadata !316, null}
!2219 = metadata !{i32 2003, i32 0, metadata !316, null}
!2220 = metadata !{i32 2005, i32 0, metadata !316, null}
!2221 = metadata !{i32 2006, i32 0, metadata !316, null}
!2222 = metadata !{i32 2009, i32 0, metadata !2223, null}
!2223 = metadata !{i32 786443, metadata !1, metadata !316, i32 2009, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2224 = metadata !{i32 2012, i32 0, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !1, metadata !2226, i32 2011, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2226 = metadata !{i32 786443, metadata !1, metadata !2223, i32 2010, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2227 = metadata !{i32 2010, i32 0, metadata !2226, null}
!2228 = metadata !{i32 2018, i32 0, metadata !2229, null}
!2229 = metadata !{i32 786443, metadata !1, metadata !2230, i32 2018, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2230 = metadata !{i32 786443, metadata !1, metadata !2231, i32 2017, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2231 = metadata !{i32 786443, metadata !1, metadata !316, i32 2016, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2232 = metadata !{i32 2026, i32 0, metadata !2230, null}
!2233 = metadata !{i32 2016, i32 0, metadata !2231, null}
!2234 = metadata !{i32 2013, i32 0, metadata !2225, null}
!2235 = metadata !{i32 2020, i32 0, metadata !2236, null}
!2236 = metadata !{i32 786443, metadata !1, metadata !2229, i32 2019, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2237 = metadata !{i32 2021, i32 0, metadata !2236, null}
!2238 = metadata !{i32 2022, i32 0, metadata !2236, null}
!2239 = metadata !{i32 2024, i32 0, metadata !2230, null}
!2240 = metadata !{i32 2025, i32 0, metadata !2230, null}
!2241 = metadata !{i32 2027, i32 0, metadata !2230, null}
!2242 = metadata !{i32 2034, i32 0, metadata !2243, null}
!2243 = metadata !{i32 786443, metadata !1, metadata !2244, i32 2034, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2244 = metadata !{i32 786443, metadata !1, metadata !2245, i32 2033, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2245 = metadata !{i32 786443, metadata !1, metadata !316, i32 2032, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2246 = metadata !{i32 2036, i32 0, metadata !2247, null}
!2247 = metadata !{i32 786443, metadata !1, metadata !2243, i32 2035, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2248 = metadata !{i32 2037, i32 0, metadata !2247, null}
!2249 = metadata !{i32 2038, i32 0, metadata !2247, null}
!2250 = metadata !{i32 2040, i32 0, metadata !2244, null}
!2251 = metadata !{i32 2041, i32 0, metadata !2244, null}
!2252 = metadata !{i32 2042, i32 0, metadata !2244, null}
!2253 = metadata !{i32 2043, i32 0, metadata !2244, null}
!2254 = metadata !{i32 2032, i32 0, metadata !2245, null}
!2255 = metadata !{i32 2048, i32 0, metadata !2256, null}
!2256 = metadata !{i32 786443, metadata !1, metadata !2257, i32 2048, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2257 = metadata !{i32 786443, metadata !1, metadata !2258, i32 2047, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2258 = metadata !{i32 786443, metadata !1, metadata !316, i32 2046, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2259 = metadata !{i32 2050, i32 0, metadata !2260, null}
!2260 = metadata !{i32 786443, metadata !1, metadata !2256, i32 2049, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2261 = metadata !{i32 2051, i32 0, metadata !2260, null}
!2262 = metadata !{i32 2052, i32 0, metadata !2260, null}
!2263 = metadata !{i32 2054, i32 0, metadata !2257, null}
!2264 = metadata !{i32 2055, i32 0, metadata !2257, null}
!2265 = metadata !{i32 2056, i32 0, metadata !2257, null}
!2266 = metadata !{i32 2057, i32 0, metadata !2257, null}
!2267 = metadata !{i32 2046, i32 0, metadata !2258, null}
!2268 = metadata !{i32 2064, i32 0, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !1, metadata !2270, i32 2064, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2270 = metadata !{i32 786443, metadata !1, metadata !2271, i32 2063, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2271 = metadata !{i32 786443, metadata !1, metadata !316, i32 2062, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2272 = metadata !{i32 2102, i32 0, metadata !2273, null}
!2273 = metadata !{i32 786443, metadata !1, metadata !2274, i32 2083, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2274 = metadata !{i32 786443, metadata !1, metadata !316, i32 2082, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2275 = metadata !{i32 2105, i32 0, metadata !2273, null}
!2276 = metadata !{i32 2082, i32 0, metadata !2274, null}
!2277 = metadata !{i32 2066, i32 0, metadata !2278, null}
!2278 = metadata !{i32 786443, metadata !1, metadata !2269, i32 2065, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2279 = metadata !{i32 2067, i32 0, metadata !2278, null}
!2280 = metadata !{i32 2068, i32 0, metadata !2278, null}
!2281 = metadata !{i32 2070, i32 0, metadata !2270, null}
!2282 = metadata !{i32 2071, i32 0, metadata !2270, null}
!2283 = metadata !{i32 2072, i32 0, metadata !2270, null}
!2284 = metadata !{i32 2073, i32 0, metadata !2270, null}
!2285 = metadata !{i32 2062, i32 0, metadata !2271, null}
!2286 = metadata !{i32 2085, i32 0, metadata !2273, null}
!2287 = metadata !{i32 2087, i32 0, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2086, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2289 = metadata !{i32 2088, i32 0, metadata !2288, null}
!2290 = metadata !{i32 2096, i32 0, metadata !2273, null}
!2291 = metadata !{i32 2097, i32 0, metadata !2273, null}
!2292 = metadata !{i32 2103, i32 0, metadata !2273, null}
!2293 = metadata !{i32 2104, i32 0, metadata !2273, null}
!2294 = metadata !{i32 2108, i32 0, metadata !2273, null}
!2295 = metadata !{i32 2109, i32 0, metadata !2273, null}
!2296 = metadata !{i32 2112, i32 0, metadata !2273, null}
!2297 = metadata !{i32 2114, i32 0, metadata !2298, null}
!2298 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2113, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2299 = metadata !{i32 2115, i32 0, metadata !2298, null}
!2300 = metadata !{i32 2116, i32 0, metadata !2298, null}
!2301 = metadata !{i32 2118, i32 0, metadata !2298, null}
!2302 = metadata !{i32 2119, i32 0, metadata !2298, null}
!2303 = metadata !{i32 2120, i32 0, metadata !2298, null}
!2304 = metadata !{i32 2122, i32 0, metadata !2298, null}
!2305 = metadata !{i32 2123, i32 0, metadata !2298, null}
!2306 = metadata !{i32 2126, i32 0, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !1, metadata !2298, i32 2125, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2308 = metadata !{i32 2127, i32 0, metadata !2307, null}
!2309 = metadata !{i32 2131, i32 0, metadata !2298, null}
!2310 = metadata !{i32 2132, i32 0, metadata !2298, null}
!2311 = metadata !{i32 2133, i32 0, metadata !2273, null}
!2312 = metadata !{i32 2140, i32 0, metadata !2313, null}
!2313 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2139, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2314 = metadata !{i32 2141, i32 0, metadata !2313, null}
!2315 = metadata !{i32 2144, i32 0, metadata !2273, null}
!2316 = metadata !{i32 2146, i32 0, metadata !2317, null}
!2317 = metadata !{i32 786443, metadata !1, metadata !2273, i32 2145, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2318 = metadata !{i32 2147, i32 0, metadata !2317, null}
!2319 = metadata !{i32 2148, i32 0, metadata !2317, null}
!2320 = metadata !{i32 2150, i32 0, metadata !2317, null}
!2321 = metadata !{i32 2151, i32 0, metadata !2317, null}
!2322 = metadata !{i32 2152, i32 0, metadata !2317, null}
!2323 = metadata !{i32 2153, i32 0, metadata !2317, null}
!2324 = metadata !{i32 2154, i32 0, metadata !2317, null}
!2325 = metadata !{i32 2155, i32 0, metadata !2317, null}
!2326 = metadata !{i32 2156, i32 0, metadata !2317, null}
!2327 = metadata !{i32 2157, i32 0, metadata !2273, null}
!2328 = metadata !{i32 2158, i32 0, metadata !2273, null}
!2329 = metadata !{i32 2160, i32 0, metadata !316, null}
!2330 = metadata !{i32 2166, i32 0, metadata !2331, null}
!2331 = metadata !{i32 786443, metadata !1, metadata !316, i32 2166, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2332 = metadata !{i32 2168, i32 0, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !1, metadata !2334, i32 2168, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2334 = metadata !{i32 786443, metadata !1, metadata !2331, i32 2167, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2335 = metadata !{i32 2172, i32 0, metadata !2334, null}
!2336 = metadata !{i32 2173, i32 0, metadata !2334, null}
!2337 = metadata !{i32 2174, i32 0, metadata !2334, null}
!2338 = metadata !{i32 2175, i32 0, metadata !2334, null}
!2339 = metadata !{i32 2189, i32 0, metadata !2340, null}
!2340 = metadata !{i32 786443, metadata !1, metadata !2341, i32 2189, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2341 = metadata !{i32 786443, metadata !1, metadata !2342, i32 2188, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2342 = metadata !{i32 786443, metadata !1, metadata !316, i32 2187, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2343 = metadata !{i32 2201, i32 0, metadata !2344, null}
!2344 = metadata !{i32 786443, metadata !1, metadata !2345, i32 2199, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2345 = metadata !{i32 786443, metadata !1, metadata !2341, i32 2198, i32 0, i32 354} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2346 = metadata !{i32 2187, i32 0, metadata !2342, null}
!2347 = metadata !{i32 2170, i32 0, metadata !2348, null}
!2348 = metadata !{i32 786443, metadata !1, metadata !2333, i32 2169, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2349 = metadata !{i32 2177, i32 0, metadata !2350, null}
!2350 = metadata !{i32 786443, metadata !1, metadata !2334, i32 2177, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2351 = metadata !{i32 2179, i32 0, metadata !2352, null}
!2352 = metadata !{i32 786443, metadata !1, metadata !2350, i32 2178, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2353 = metadata !{i32 2180, i32 0, metadata !2352, null}
!2354 = metadata !{i32 2181, i32 0, metadata !2352, null}
!2355 = metadata !{i32 2210, i32 0, metadata !2356, null}
!2356 = metadata !{i32 786443, metadata !1, metadata !2357, i32 2209, i32 0, i32 357} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2357 = metadata !{i32 786443, metadata !1, metadata !316, i32 2208, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2358 = metadata !{i32 2208, i32 0, metadata !2357, null}
!2359 = metadata !{i32 2191, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !1, metadata !2340, i32 2190, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2361 = metadata !{i32 2193, i32 0, metadata !2341, null}
!2362 = metadata !{i32 2194, i32 0, metadata !2341, null}
!2363 = metadata !{i32 2195, i32 0, metadata !2341, null}
!2364 = metadata !{i32 2196, i32 0, metadata !2341, null}
!2365 = metadata !{i32 2198, i32 0, metadata !2345, null}
!2366 = metadata !{i32 2200, i32 0, metadata !2344, null}
!2367 = metadata !{i32 2202, i32 0, metadata !2344, null}
!2368 = metadata !{i32 2209, i32 0, metadata !2356, null}
!2369 = metadata !{i32 2213, i32 0, metadata !316, null}
!2370 = metadata !{i32 2231, i32 0, metadata !361, null}
!2371 = metadata !{i32 2234, i32 0, metadata !361, null}
!2372 = metadata !{i32 2237, i32 0, metadata !361, null}
!2373 = metadata !{i32 2238, i32 0, metadata !361, null}
!2374 = metadata !{i32 2244, i32 0, metadata !361, null}
!2375 = metadata !{i32 2245, i32 0, metadata !361, null}
!2376 = metadata !{i32 2250, i32 0, metadata !361, null}
!2377 = metadata !{i32 2252, i32 0, metadata !361, null}
!2378 = metadata !{i32 2255, i32 0, metadata !361, null}
!2379 = metadata !{i32 2256, i32 0, metadata !361, null}
!2380 = metadata !{i32 2258, i32 0, metadata !361, null}
!2381 = metadata !{i32 2259, i32 0, metadata !361, null}
!2382 = metadata !{i32 2260, i32 0, metadata !361, null}
!2383 = metadata !{i32 2261, i32 0, metadata !361, null}
!2384 = metadata !{i32 2262, i32 0, metadata !361, null}
!2385 = metadata !{i32 2263, i32 0, metadata !361, null}
!2386 = metadata !{i32 2264, i32 0, metadata !361, null}
!2387 = metadata !{i32 2265, i32 0, metadata !361, null}
!2388 = metadata !{i32 2268, i32 0, metadata !2389, null}
!2389 = metadata !{i32 786443, metadata !1, metadata !361, i32 2268, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2390 = metadata !{i32 2271, i32 0, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !1, metadata !2392, i32 2270, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2392 = metadata !{i32 786443, metadata !1, metadata !2389, i32 2269, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2393 = metadata !{i32 2269, i32 0, metadata !2392, null}
!2394 = metadata !{i32 2292, i32 0, metadata !2395, null}
!2395 = metadata !{i32 786443, metadata !1, metadata !2396, i32 2282, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2396 = metadata !{i32 786443, metadata !1, metadata !2397, i32 2281, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2397 = metadata !{i32 786443, metadata !1, metadata !2398, i32 2278, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2398 = metadata !{i32 786443, metadata !1, metadata !2399, i32 2277, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2399 = metadata !{i32 786443, metadata !1, metadata !2400, i32 2276, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2400 = metadata !{i32 786443, metadata !1, metadata !361, i32 2275, i32 0, i32 361} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2401 = metadata !{i32 2275, i32 0, metadata !2400, null}
!2402 = metadata !{i32 2272, i32 0, metadata !2391, null}
!2403 = metadata !{i32 2308, i32 0, metadata !2404, null}
!2404 = metadata !{i32 786443, metadata !1, metadata !2405, i32 2299, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2405 = metadata !{i32 786443, metadata !1, metadata !2397, i32 2298, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2406 = metadata !{i32 2309, i32 0, metadata !2404, null}
!2407 = metadata !{i32 2310, i32 0, metadata !2404, null}
!2408 = metadata !{i32 2277, i32 0, metadata !2398, null}
!2409 = metadata !{i32 2291, i32 0, metadata !2395, null}
!2410 = metadata !{i32 2293, i32 0, metadata !2395, null}
!2411 = metadata !{i32 2281, i32 0, metadata !2396, null}
!2412 = metadata !{i32 2283, i32 0, metadata !2395, null}
!2413 = metadata !{i32 2284, i32 0, metadata !2414, null}
!2414 = metadata !{i32 786443, metadata !1, metadata !2395, i32 2284, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2415 = metadata !{i32 2286, i32 0, metadata !2416, null}
!2416 = metadata !{i32 786443, metadata !1, metadata !2414, i32 2285, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2417 = metadata !{i32 2287, i32 0, metadata !2416, null}
!2418 = metadata !{i32 2288, i32 0, metadata !2416, null}
!2419 = metadata !{i32 2290, i32 0, metadata !2395, null}
!2420 = metadata !{i32 2300, i32 0, metadata !2404, null}
!2421 = metadata !{i32 2301, i32 0, metadata !2422, null}
!2422 = metadata !{i32 786443, metadata !1, metadata !2404, i32 2301, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2423 = metadata !{i32 2303, i32 0, metadata !2424, null}
!2424 = metadata !{i32 786443, metadata !1, metadata !2422, i32 2302, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2425 = metadata !{i32 2304, i32 0, metadata !2424, null}
!2426 = metadata !{i32 2305, i32 0, metadata !2424, null}
!2427 = metadata !{i32 2307, i32 0, metadata !2404, null}
!2428 = metadata !{i32 2298, i32 0, metadata !2405, null}
!2429 = metadata !{i32 2347, i32 0, metadata !2430, null}
!2430 = metadata !{i32 786443, metadata !1, metadata !2431, i32 2338, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2431 = metadata !{i32 786443, metadata !1, metadata !2432, i32 2337, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2432 = metadata !{i32 786443, metadata !1, metadata !2433, i32 2317, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2433 = metadata !{i32 786443, metadata !1, metadata !2434, i32 2316, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2434 = metadata !{i32 786443, metadata !1, metadata !2435, i32 2315, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2435 = metadata !{i32 786443, metadata !1, metadata !361, i32 2314, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2436 = metadata !{i32 2348, i32 0, metadata !2430, null}
!2437 = metadata !{i32 2349, i32 0, metadata !2430, null}
!2438 = metadata !{i32 2316, i32 0, metadata !2433, null}
!2439 = metadata !{i32 2330, i32 0, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !1, metadata !2441, i32 2321, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2441 = metadata !{i32 786443, metadata !1, metadata !2432, i32 2320, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2442 = metadata !{i32 2331, i32 0, metadata !2440, null}
!2443 = metadata !{i32 2332, i32 0, metadata !2440, null}
!2444 = metadata !{i32 2320, i32 0, metadata !2441, null}
!2445 = metadata !{i32 2322, i32 0, metadata !2440, null}
!2446 = metadata !{i32 2323, i32 0, metadata !2447, null}
!2447 = metadata !{i32 786443, metadata !1, metadata !2440, i32 2323, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2448 = metadata !{i32 2325, i32 0, metadata !2449, null}
!2449 = metadata !{i32 786443, metadata !1, metadata !2447, i32 2324, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2450 = metadata !{i32 2326, i32 0, metadata !2449, null}
!2451 = metadata !{i32 2327, i32 0, metadata !2449, null}
!2452 = metadata !{i32 2329, i32 0, metadata !2440, null}
!2453 = metadata !{i32 2339, i32 0, metadata !2430, null}
!2454 = metadata !{i32 2340, i32 0, metadata !2455, null}
!2455 = metadata !{i32 786443, metadata !1, metadata !2430, i32 2340, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2456 = metadata !{i32 2342, i32 0, metadata !2457, null}
!2457 = metadata !{i32 786443, metadata !1, metadata !2455, i32 2341, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2458 = metadata !{i32 2343, i32 0, metadata !2457, null}
!2459 = metadata !{i32 2344, i32 0, metadata !2457, null}
!2460 = metadata !{i32 2346, i32 0, metadata !2430, null}
!2461 = metadata !{i32 2337, i32 0, metadata !2431, null}
!2462 = metadata !{i32 2314, i32 0, metadata !2435, null}
!2463 = metadata !{i32 2355, i32 0, metadata !361, null}
!2464 = metadata !{i32 2356, i32 0, metadata !361, null}
!2465 = metadata !{i32 2357, i32 0, metadata !361, null}
!2466 = metadata !{i32 2358, i32 0, metadata !361, null}
!2467 = metadata !{i32 2361, i32 0, metadata !361, null}
!2468 = metadata !{i32 2362, i32 0, metadata !361, null}
!2469 = metadata !{i32 2363, i32 0, metadata !361, null}
!2470 = metadata !{i32 2364, i32 0, metadata !361, null}
!2471 = metadata !{i32 2366, i32 0, metadata !361, null}
!2472 = metadata !{i32 2367, i32 0, metadata !361, null}
!2473 = metadata !{i32 2369, i32 0, metadata !2474, null}
!2474 = metadata !{i32 786443, metadata !1, metadata !361, i32 2369, i32 0, i32 385} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2475 = metadata !{i32 2375, i32 0, metadata !2476, null}
!2476 = metadata !{i32 786443, metadata !1, metadata !2474, i32 2370, i32 0, i32 386} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2477 = metadata !{i32 2378, i32 0, metadata !2476, null}
!2478 = metadata !{i32 2386, i32 0, metadata !2479, null}
!2479 = metadata !{i32 786443, metadata !1, metadata !2476, i32 2385, i32 0, i32 387} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2480 = metadata !{i32 2435, i32 0, metadata !2476, null}
!2481 = metadata !{i32 2426, i32 0, metadata !2482, null}
!2482 = metadata !{i32 786443, metadata !1, metadata !2476, i32 2425, i32 0, i32 393} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2483 = metadata !{i32 2371, i32 0, metadata !2476, null}
!2484 = metadata !{i32 2372, i32 0, metadata !2476, null}
!2485 = metadata !{i32 2376, i32 0, metadata !2476, null}
!2486 = metadata !{i32 2377, i32 0, metadata !2476, null}
!2487 = metadata !{i32 2381, i32 0, metadata !2476, null}
!2488 = metadata !{i32 2382, i32 0, metadata !2476, null}
!2489 = metadata !{i32 2384, i32 0, metadata !2476, null}
!2490 = metadata !{i32 2387, i32 0, metadata !2479, null}
!2491 = metadata !{i32 2388, i32 0, metadata !2479, null}
!2492 = metadata !{i32 2390, i32 0, metadata !2479, null}
!2493 = metadata !{i32 2391, i32 0, metadata !2479, null}
!2494 = metadata !{i32 2392, i32 0, metadata !2479, null}
!2495 = metadata !{i32 2394, i32 0, metadata !2479, null}
!2496 = metadata !{i32 2395, i32 0, metadata !2479, null}
!2497 = metadata !{i32 2398, i32 0, metadata !2498, null}
!2498 = metadata !{i32 786443, metadata !1, metadata !2479, i32 2397, i32 0, i32 388} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2499 = metadata !{i32 2399, i32 0, metadata !2498, null}
!2500 = metadata !{i32 2403, i32 0, metadata !2479, null}
!2501 = metadata !{i32 2404, i32 0, metadata !2479, null}
!2502 = metadata !{i32 2405, i32 0, metadata !2476, null}
!2503 = metadata !{i32 2412, i32 0, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !1, metadata !2476, i32 2411, i32 0, i32 390} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2505 = metadata !{i32 2413, i32 0, metadata !2504, null}
!2506 = metadata !{i32 2416, i32 0, metadata !2476, null}
!2507 = metadata !{i32 2418, i32 0, metadata !2508, null}
!2508 = metadata !{i32 786443, metadata !1, metadata !2476, i32 2417, i32 0, i32 391} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2509 = metadata !{i32 2420, i32 0, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !1, metadata !2508, i32 2419, i32 0, i32 392} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2511 = metadata !{i32 2424, i32 0, metadata !2476, null}
!2512 = metadata !{i32 2427, i32 0, metadata !2482, null}
!2513 = metadata !{i32 2428, i32 0, metadata !2482, null}
!2514 = metadata !{i32 2429, i32 0, metadata !2482, null}
!2515 = metadata !{i32 2430, i32 0, metadata !2482, null}
!2516 = metadata !{i32 2431, i32 0, metadata !2482, null}
!2517 = metadata !{i32 2432, i32 0, metadata !2482, null}
!2518 = metadata !{i32 2433, i32 0, metadata !2482, null}
!2519 = metadata !{i32 2434, i32 0, metadata !2476, null}
!2520 = metadata !{i32 2437, i32 0, metadata !361, null}
!2521 = metadata !{i32 2441, i32 0, metadata !361, null}
!2522 = metadata !{i32 2442, i32 0, metadata !361, null}
!2523 = metadata !{i32 2443, i32 0, metadata !361, null}
!2524 = metadata !{i32 2444, i32 0, metadata !361, null}
!2525 = metadata !{i32 2447, i32 0, metadata !361, null}
!2526 = metadata !{i32 2448, i32 0, metadata !361, null}
!2527 = metadata !{i32 2450, i32 0, metadata !2528, null}
!2528 = metadata !{i32 786443, metadata !1, metadata !361, i32 2450, i32 0, i32 394} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2529 = metadata !{i32 2455, i32 0, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !1, metadata !2531, i32 2453, i32 0, i32 397} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2531 = metadata !{i32 786443, metadata !1, metadata !2532, i32 2452, i32 0, i32 396} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2532 = metadata !{i32 786443, metadata !1, metadata !2528, i32 2451, i32 0, i32 395} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2533 = metadata !{i32 2522, i32 0, metadata !2534, null}
!2534 = metadata !{i32 786443, metadata !1, metadata !2535, i32 2521, i32 0, i32 406} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2535 = metadata !{i32 786443, metadata !1, metadata !2536, i32 2462, i32 0, i32 399} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2536 = metadata !{i32 786443, metadata !1, metadata !2530, i32 2461, i32 0, i32 398} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2537 = metadata !{i32 2454, i32 0, metadata !2530, null}
!2538 = metadata !{i32 2452, i32 0, metadata !2531, null}
!2539 = metadata !{i32 2456, i32 0, metadata !2530, null}
!2540 = metadata !{i32 2458, i32 0, metadata !2530, null}
!2541 = metadata !{i32 2459, i32 0, metadata !2530, null}
!2542 = metadata !{i32 2461, i32 0, metadata !2536, null}
!2543 = metadata !{i32 2464, i32 0, metadata !2535, null}
!2544 = metadata !{i32 2466, i32 0, metadata !2545, null}
!2545 = metadata !{i32 786443, metadata !1, metadata !2535, i32 2465, i32 0, i32 400} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2546 = metadata !{i32 2467, i32 0, metadata !2545, null}
!2547 = metadata !{i32 2474, i32 0, metadata !2535, null}
!2548 = metadata !{i32 2475, i32 0, metadata !2535, null}
!2549 = metadata !{i32 2478, i32 0, metadata !2535, null}
!2550 = metadata !{i32 2479, i32 0, metadata !2535, null}
!2551 = metadata !{i32 2480, i32 0, metadata !2535, null}
!2552 = metadata !{i32 2481, i32 0, metadata !2535, null}
!2553 = metadata !{i32 2484, i32 0, metadata !2535, null}
!2554 = metadata !{i32 2485, i32 0, metadata !2535, null}
!2555 = metadata !{i32 2487, i32 0, metadata !2535, null}
!2556 = metadata !{i32 2489, i32 0, metadata !2557, null}
!2557 = metadata !{i32 786443, metadata !1, metadata !2535, i32 2488, i32 0, i32 402} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2558 = metadata !{i32 2491, i32 0, metadata !2557, null}
!2559 = metadata !{i32 2492, i32 0, metadata !2557, null}
!2560 = metadata !{i32 2494, i32 0, metadata !2557, null}
!2561 = metadata !{i32 2495, i32 0, metadata !2557, null}
!2562 = metadata !{i32 2496, i32 0, metadata !2557, null}
!2563 = metadata !{i32 2498, i32 0, metadata !2557, null}
!2564 = metadata !{i32 2499, i32 0, metadata !2557, null}
!2565 = metadata !{i32 2502, i32 0, metadata !2566, null}
!2566 = metadata !{i32 786443, metadata !1, metadata !2557, i32 2501, i32 0, i32 403} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2567 = metadata !{i32 2503, i32 0, metadata !2566, null}
!2568 = metadata !{i32 2507, i32 0, metadata !2557, null}
!2569 = metadata !{i32 2508, i32 0, metadata !2557, null}
!2570 = metadata !{i32 2509, i32 0, metadata !2535, null}
!2571 = metadata !{i32 2516, i32 0, metadata !2572, null}
!2572 = metadata !{i32 786443, metadata !1, metadata !2535, i32 2515, i32 0, i32 405} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2573 = metadata !{i32 2517, i32 0, metadata !2572, null}
!2574 = metadata !{i32 2520, i32 0, metadata !2535, null}
!2575 = metadata !{i32 2528, i32 0, metadata !2534, null}
!2576 = metadata !{i32 2529, i32 0, metadata !2534, null}
!2577 = metadata !{i32 2530, i32 0, metadata !2534, null}
!2578 = metadata !{i32 2531, i32 0, metadata !2534, null}
!2579 = metadata !{i32 2532, i32 0, metadata !2534, null}
!2580 = metadata !{i32 2533, i32 0, metadata !2534, null}
!2581 = metadata !{i32 2534, i32 0, metadata !2534, null}
!2582 = metadata !{i32 2535, i32 0, metadata !2535, null}
!2583 = metadata !{i32 2536, i32 0, metadata !2535, null}
!2584 = metadata !{i32 2538, i32 0, metadata !2530, null}
!2585 = metadata !{i32 2544, i32 0, metadata !361, null}
!2586 = metadata !{i32 2545, i32 0, metadata !361, null}
!2587 = metadata !{i32 2549, i32 0, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !1, metadata !361, i32 2549, i32 0, i32 407} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2589 = metadata !{i32 2559, i32 0, metadata !2590, null}
!2590 = metadata !{i32 786443, metadata !1, metadata !2591, i32 2554, i32 0, i32 412} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2591 = metadata !{i32 786443, metadata !1, metadata !2592, i32 2553, i32 0, i32 411} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2592 = metadata !{i32 786443, metadata !1, metadata !2593, i32 2552, i32 0, i32 410} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2593 = metadata !{i32 786443, metadata !1, metadata !2594, i32 2551, i32 0, i32 409} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2594 = metadata !{i32 786443, metadata !1, metadata !2588, i32 2550, i32 0, i32 408} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2595 = metadata !{i32 2560, i32 0, metadata !2590, null}
!2596 = metadata !{i32 2561, i32 0, metadata !2590, null}
!2597 = metadata !{i32 2562, i32 0, metadata !2590, null}
!2598 = metadata !{i32 2587, i32 0, metadata !2599, null}
!2599 = metadata !{i32 786443, metadata !1, metadata !2600, i32 2585, i32 0, i32 422} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2600 = metadata !{i32 786443, metadata !1, metadata !2601, i32 2584, i32 0, i32 421} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2601 = metadata !{i32 786443, metadata !1, metadata !2602, i32 2574, i32 0, i32 418} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2602 = metadata !{i32 786443, metadata !1, metadata !2592, i32 2573, i32 0, i32 417} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2603 = metadata !{i32 2551, i32 0, metadata !2593, null}
!2604 = metadata !{i32 2598, i32 0, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !1, metadata !2606, i32 2597, i32 0, i32 425} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2606 = metadata !{i32 786443, metadata !1, metadata !2607, i32 2596, i32 0, i32 424} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2607 = metadata !{i32 786443, metadata !1, metadata !361, i32 2595, i32 0, i32 423} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2608 = metadata !{i32 2595, i32 0, metadata !2607, null}
!2609 = metadata !{i32 2555, i32 0, metadata !2610, null}
!2610 = metadata !{i32 786443, metadata !1, metadata !2590, i32 2555, i32 0, i32 413} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2611 = metadata !{i32 2553, i32 0, metadata !2591, null}
!2612 = metadata !{i32 2557, i32 0, metadata !2613, null}
!2613 = metadata !{i32 786443, metadata !1, metadata !2610, i32 2556, i32 0, i32 414} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2614 = metadata !{i32 2564, i32 0, metadata !2615, null}
!2615 = metadata !{i32 786443, metadata !1, metadata !2590, i32 2564, i32 0, i32 415} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2616 = metadata !{i32 2566, i32 0, metadata !2617, null}
!2617 = metadata !{i32 786443, metadata !1, metadata !2615, i32 2565, i32 0, i32 416} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2618 = metadata !{i32 2567, i32 0, metadata !2617, null}
!2619 = metadata !{i32 2568, i32 0, metadata !2617, null}
!2620 = metadata !{i32 2577, i32 0, metadata !2621, null}
!2621 = metadata !{i32 786443, metadata !1, metadata !2622, i32 2576, i32 0, i32 420} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2622 = metadata !{i32 786443, metadata !1, metadata !2601, i32 2575, i32 0, i32 419} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2623 = metadata !{i32 2575, i32 0, metadata !2622, null}
!2624 = metadata !{i32 2579, i32 0, metadata !2601, null}
!2625 = metadata !{i32 2580, i32 0, metadata !2601, null}
!2626 = metadata !{i32 2581, i32 0, metadata !2601, null}
!2627 = metadata !{i32 2582, i32 0, metadata !2601, null}
!2628 = metadata !{i32 2584, i32 0, metadata !2600, null}
!2629 = metadata !{i32 2586, i32 0, metadata !2599, null}
!2630 = metadata !{i32 2588, i32 0, metadata !2599, null}
!2631 = metadata !{i32 2573, i32 0, metadata !2602, null}
!2632 = metadata !{i32 2596, i32 0, metadata !2606, null}
!2633 = metadata !{i32 2602, i32 0, metadata !361, null}
!2634 = metadata !{i32 2619, i32 0, metadata !413, null}
!2635 = metadata !{i32 2623, i32 0, metadata !413, null}
!2636 = metadata !{i32 2625, i32 0, metadata !413, null}
!2637 = metadata !{i32 2627, i32 0, metadata !413, null}
!2638 = metadata !{i32 2628, i32 0, metadata !413, null}
!2639 = metadata !{i32 2629, i32 0, metadata !413, null}
!2640 = metadata !{i32 2630, i32 0, metadata !413, null}
!2641 = metadata !{i32 2631, i32 0, metadata !413, null}
!2642 = metadata !{i32 2634, i32 0, metadata !2643, null}
!2643 = metadata !{i32 786443, metadata !1, metadata !413, i32 2634, i32 0, i32 426} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2644 = metadata !{i32 2637, i32 0, metadata !2645, null}
!2645 = metadata !{i32 786443, metadata !1, metadata !2646, i32 2636, i32 0, i32 428} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2646 = metadata !{i32 786443, metadata !1, metadata !2643, i32 2635, i32 0, i32 427} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2647 = metadata !{i32 2635, i32 0, metadata !2646, null}
!2648 = metadata !{i32 2642, i32 0, metadata !2649, null}
!2649 = metadata !{i32 786443, metadata !1, metadata !2650, i32 2642, i32 0, i32 431} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2650 = metadata !{i32 786443, metadata !1, metadata !2651, i32 2641, i32 0, i32 430} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2651 = metadata !{i32 786443, metadata !1, metadata !413, i32 2640, i32 0, i32 429} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2652 = metadata !{i32 2650, i32 0, metadata !2650, null}
!2653 = metadata !{i32 2640, i32 0, metadata !2651, null}
!2654 = metadata !{i32 2644, i32 0, metadata !2655, null}
!2655 = metadata !{i32 786443, metadata !1, metadata !2649, i32 2643, i32 0, i32 432} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2656 = metadata !{i32 2645, i32 0, metadata !2655, null}
!2657 = metadata !{i32 2646, i32 0, metadata !2655, null}
!2658 = metadata !{i32 2648, i32 0, metadata !2650, null}
!2659 = metadata !{i32 2649, i32 0, metadata !2650, null}
!2660 = metadata !{i32 2651, i32 0, metadata !2650, null}
!2661 = metadata !{i32 2658, i32 0, metadata !2662, null}
!2662 = metadata !{i32 786443, metadata !1, metadata !2663, i32 2658, i32 0, i32 435} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2663 = metadata !{i32 786443, metadata !1, metadata !2664, i32 2657, i32 0, i32 434} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2664 = metadata !{i32 786443, metadata !1, metadata !413, i32 2656, i32 0, i32 433} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2665 = metadata !{i32 2673, i32 0, metadata !2666, null}
!2666 = metadata !{i32 786443, metadata !1, metadata !2667, i32 2672, i32 0, i32 438} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2667 = metadata !{i32 786443, metadata !1, metadata !413, i32 2671, i32 0, i32 437} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2668 = metadata !{i32 2671, i32 0, metadata !2667, null}
!2669 = metadata !{i32 2660, i32 0, metadata !2670, null}
!2670 = metadata !{i32 786443, metadata !1, metadata !2662, i32 2659, i32 0, i32 436} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2671 = metadata !{i32 2661, i32 0, metadata !2670, null}
!2672 = metadata !{i32 2662, i32 0, metadata !2670, null}
!2673 = metadata !{i32 2664, i32 0, metadata !2663, null}
!2674 = metadata !{i32 2665, i32 0, metadata !2663, null}
!2675 = metadata !{i32 2666, i32 0, metadata !2663, null}
!2676 = metadata !{i32 2667, i32 0, metadata !2663, null}
!2677 = metadata !{i32 2656, i32 0, metadata !2664, null}
!2678 = metadata !{i32 2672, i32 0, metadata !2666, null}
!2679 = metadata !{i32 2680, i32 0, metadata !2680, null}
!2680 = metadata !{i32 786443, metadata !1, metadata !2681, i32 2680, i32 0, i32 441} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2681 = metadata !{i32 786443, metadata !1, metadata !2682, i32 2679, i32 0, i32 440} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2682 = metadata !{i32 786443, metadata !1, metadata !413, i32 2678, i32 0, i32 439} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2683 = metadata !{i32 2684, i32 0, metadata !2681, null}
!2684 = metadata !{i32 2685, i32 0, metadata !2681, null}
!2685 = metadata !{i32 2686, i32 0, metadata !2681, null}
!2686 = metadata !{i32 2687, i32 0, metadata !2681, null}
!2687 = metadata !{i32 2678, i32 0, metadata !2682, null}
!2688 = metadata !{i32 2699, i32 0, metadata !2689, null}
!2689 = metadata !{i32 786443, metadata !1, metadata !2690, i32 2699, i32 0, i32 447} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2690 = metadata !{i32 786443, metadata !1, metadata !2691, i32 2698, i32 0, i32 446} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2691 = metadata !{i32 786443, metadata !1, metadata !413, i32 2697, i32 0, i32 445} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2692 = metadata !{i32 2710, i32 0, metadata !2693, null}
!2693 = metadata !{i32 786443, metadata !1, metadata !2694, i32 2708, i32 0, i32 449} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2694 = metadata !{i32 786443, metadata !1, metadata !2690, i32 2707, i32 0, i32 448} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2695 = metadata !{i32 2697, i32 0, metadata !2691, null}
!2696 = metadata !{i32 2682, i32 0, metadata !2697, null}
!2697 = metadata !{i32 786443, metadata !1, metadata !2680, i32 2681, i32 0, i32 442} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2698 = metadata !{i32 2689, i32 0, metadata !2699, null}
!2699 = metadata !{i32 786443, metadata !1, metadata !2681, i32 2689, i32 0, i32 443} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2700 = metadata !{i32 2691, i32 0, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !1, metadata !2699, i32 2690, i32 0, i32 444} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2702 = metadata !{i32 2692, i32 0, metadata !2701, null}
!2703 = metadata !{i32 2693, i32 0, metadata !2701, null}
!2704 = metadata !{i32 2719, i32 0, metadata !2705, null}
!2705 = metadata !{i32 786443, metadata !1, metadata !2706, i32 2718, i32 0, i32 451} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2706 = metadata !{i32 786443, metadata !1, metadata !413, i32 2717, i32 0, i32 450} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/block.c]
!2707 = metadata !{i32 2717, i32 0, metadata !2706, null}
!2708 = metadata !{i32 2700, i32 0, metadata !2689, null}
!2709 = metadata !{i32 2702, i32 0, metadata !2690, null}
!2710 = metadata !{i32 2703, i32 0, metadata !2690, null}
!2711 = metadata !{i32 2704, i32 0, metadata !2690, null}
!2712 = metadata !{i32 2705, i32 0, metadata !2690, null}
!2713 = metadata !{i32 2707, i32 0, metadata !2694, null}
!2714 = metadata !{i32 2709, i32 0, metadata !2693, null}
!2715 = metadata !{i32 2711, i32 0, metadata !2693, null}
!2716 = metadata !{i32 2718, i32 0, metadata !2705, null}
!2717 = metadata !{i32 2720, i32 0, metadata !413, null}
