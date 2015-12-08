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
@imgY_org = external global i16**
@mb_adaptive = external global i32
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
@dc_level_temp = external global [2 x [4 x [4 x i32]]]
@dc_level = external global [2 x [4 x [4 x i32]]]
@A = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 16
@active_pps = external global %struct.pic_parameter_set_rbsp_t*

; Function Attrs: nounwind optsize uwtable
define void @intrapred_luma(i32 %img_x, i32 %img_y, i32* nocapture %left_available, i32* nocapture %up_available, i32* nocapture %all_available) #0 {
entry:
  %PredPel = alloca [13 x i32], align 16
  %pix_a = alloca [4 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  %0 = bitcast [13 x i32]* %PredPel to i8*
  call void @llvm.lifetime.start(i64 52, i8* %0) #1
  %1 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25
  %2 = load i16*** %imgY1, align 8, !tbaa !0
  %and = and i32 %img_x, 15
  %and2 = and i32 %img_y, 15
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %5 = bitcast [4 x %struct.pix_pos]* %pix_a to i8*
  call void @llvm.lifetime.start(i64 96, i8* %5) #1
  %sub = add nsw i32 %and, -1
  %6 = zext i32 %and2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv1278 = phi i64 [ 0, %entry ], [ %indvars.iv.next1279, %for.body ]
  %7 = add nsw i64 %indvars.iv1278, %6
  %arrayidx = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1278
  %8 = trunc i64 %7 to i32
  call void @getNeighbour(i32 %4, i32 %sub, i32 %8, i32 1, %struct.pix_pos* %arrayidx) #3
  %indvars.iv.next1279 = add i64 %indvars.iv1278, 1
  %lftr.wideiv1281 = trunc i64 %indvars.iv.next1279 to i32
  %exitcond1282 = icmp eq i32 %lftr.wideiv1281, 4
  br i1 %exitcond1282, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %sub3 = add nsw i32 %and2, -1
  call void @getNeighbour(i32 %4, i32 %and, i32 %sub3, i32 1, %struct.pix_pos* %pix_b) #3
  %add4 = add nsw i32 %and, 4
  call void @getNeighbour(i32 %4, i32 %add4, i32 %sub3, i32 1, %struct.pix_pos* %pix_c) #3
  call void @getNeighbour(i32 %4, i32 %sub, i32 %sub3, i32 1, %struct.pix_pos* %pix_d) #3
  %available = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 0
  %9 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %land.end13, label %land.rhs

land.rhs:                                         ; preds = %for.end
  %10 = and i32 %img_x, 7
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %land.rhs10, label %land.end13

land.rhs10:                                       ; preds = %land.rhs
  %phitmp = icmp ne i32 %and2, 12
  %not.cmp11 = icmp ne i32 %and2, 4
  %.phitmp = and i1 %phitmp, %not.cmp11
  br label %land.end13

land.end13:                                       ; preds = %land.rhs10, %land.rhs, %for.end
  %12 = phi i1 [ false, %for.end ], [ true, %land.rhs ], [ %.phitmp, %land.rhs10 ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %available, align 4, !tbaa !3
  %13 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 24
  %14 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool15 = icmp eq i32 %14, 0
  br i1 %tobool15, label %if.else, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %land.end13
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 54
  br label %for.body18

for.body18:                                       ; preds = %cond.end, %for.cond16.preheader
  %indvars.iv1274 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next1275, %cond.end ]
  %block_available_left.01260 = phi i32 [ 1, %for.cond16.preheader ], [ %and27, %cond.end ]
  %available21 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1274, i32 0
  %16 = load i32* %available21, align 8, !tbaa !3
  %tobool22 = icmp eq i32 %16, 0
  br i1 %tobool22, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body18
  %mb_addr = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 %indvars.iv1274, i32 1
  %17 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom25 = sext i32 %17 to i64
  %18 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32* %18, i64 %idxprom25
  %19 = load i32* %arrayidx26, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.body18, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %for.body18 ]
  %and27 = and i32 %cond, %block_available_left.01260
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 1
  %lftr.wideiv1276 = trunc i64 %indvars.iv.next1275 to i32
  %exitcond1277 = icmp eq i32 %lftr.wideiv1276, 4
  br i1 %exitcond1277, label %for.end30, label %for.body18

for.end30:                                        ; preds = %cond.end
  %available31 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0
  %20 = load i32* %available31, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %20, 0
  br i1 %tobool32, label %cond.end39, label %cond.true33

cond.true33:                                      ; preds = %for.end30
  %mb_addr34 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 1
  %21 = load i32* %mb_addr34, align 4, !tbaa !3
  %idxprom35 = sext i32 %21 to i64
  %22 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %22, i64 %idxprom35
  %23 = load i32* %arrayidx37, align 4, !tbaa !3
  br label %cond.end39

cond.end39:                                       ; preds = %for.end30, %cond.true33
  %cond40 = phi i32 [ %23, %cond.true33 ], [ 0, %for.end30 ]
  br i1 %12, label %cond.true43, label %cond.end49

cond.true43:                                      ; preds = %cond.end39
  %mb_addr44 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 1
  %24 = load i32* %mb_addr44, align 4, !tbaa !3
  %idxprom45 = sext i32 %24 to i64
  %25 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %25, i64 %idxprom45
  %26 = load i32* %arrayidx47, align 4, !tbaa !3
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end39, %cond.true43
  %cond50 = phi i32 [ %26, %cond.true43 ], [ 0, %cond.end39 ]
  %available51 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0
  %27 = load i32* %available51, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %27, 0
  br i1 %tobool52, label %if.end, label %cond.true53

cond.true53:                                      ; preds = %cond.end49
  %mb_addr54 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 1
  %28 = load i32* %mb_addr54, align 4, !tbaa !3
  %idxprom55 = sext i32 %28 to i64
  %29 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %29, i64 %idxprom55
  %30 = load i32* %arrayidx57, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %land.end13
  %available62 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 0
  %31 = load i32* %available62, align 16, !tbaa !3
  %available63 = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 0
  %32 = load i32* %available63, align 4, !tbaa !3
  %available65 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 0
  %33 = load i32* %available65, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.true53, %cond.end49, %if.else
  %block_available_up.0 = phi i32 [ %32, %if.else ], [ %cond40, %cond.end49 ], [ %cond40, %cond.true53 ]
  %block_available_left.1 = phi i32 [ %31, %if.else ], [ %and27, %cond.end49 ], [ %and27, %cond.true53 ]
  %block_available_up_left.0 = phi i32 [ %33, %if.else ], [ 0, %cond.end49 ], [ %30, %cond.true53 ]
  %block_available_up_right.0 = phi i32 [ %land.ext, %if.else ], [ %cond50, %cond.end49 ], [ %cond50, %cond.true53 ]
  store i32 %block_available_left.1, i32* %left_available, align 4, !tbaa !3
  store i32 %block_available_up.0, i32* %up_available, align 4, !tbaa !3
  %tobool66 = icmp ne i32 %block_available_up.0, 0
  %tobool66.not = xor i1 %tobool66, true
  %tobool69 = icmp ne i32 %block_available_up_left.0, 0
  %tobool67.not = icmp ne i32 %block_available_left.1, 0
  %not.or.cond = and i1 %tobool66, %tobool67.not
  %.tobool69 = and i1 %tobool69, %not.or.cond
  %land.ext71 = zext i1 %.tobool69 to i32
  store i32 %land.ext71, i32* %all_available, align 4, !tbaa !3
  br i1 %tobool66, label %if.then75, label %if.else109

if.then75:                                        ; preds = %if.end
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 4
  %34 = load i32* %pos_x, align 4, !tbaa !3
  %idxprom77 = sext i32 %34 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix_b, i64 0, i32 5
  %35 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom78 = sext i32 %35 to i64
  %arrayidx79 = getelementptr inbounds i16** %2, i64 %idxprom78
  %36 = load i16** %arrayidx79, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i16* %36, i64 %idxprom77
  %37 = load i16* %arrayidx80, align 2, !tbaa !4
  %conv = zext i16 %37 to i32
  %arrayidx81 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1
  store i32 %conv, i32* %arrayidx81, align 4, !tbaa !3
  %add83 = add nsw i32 %34, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx88 = getelementptr inbounds i16* %36, i64 %idxprom84
  %38 = load i16* %arrayidx88, align 2, !tbaa !4
  %conv89 = zext i16 %38 to i32
  %arrayidx90 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2
  store i32 %conv89, i32* %arrayidx90, align 8, !tbaa !3
  %add92 = add nsw i32 %34, 2
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx97 = getelementptr inbounds i16* %36, i64 %idxprom93
  %39 = load i16* %arrayidx97, align 2, !tbaa !4
  %conv98 = zext i16 %39 to i32
  %arrayidx99 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3
  store i32 %conv98, i32* %arrayidx99, align 4, !tbaa !3
  %add101 = add nsw i32 %34, 3
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx106 = getelementptr inbounds i16* %36, i64 %idxprom102
  %40 = load i16* %arrayidx106, align 2, !tbaa !4
  %conv107 = zext i16 %40 to i32
  %arrayidx108 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4
  store i32 %conv107, i32* %arrayidx108, align 16, !tbaa !3
  br label %if.end114

if.else109:                                       ; preds = %if.end
  %41 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 154
  %42 = load i32* %dc_pred_value, align 4, !tbaa !3
  %arrayidx110 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4
  store i32 %42, i32* %arrayidx110, align 16, !tbaa !3
  %arrayidx111 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3
  store i32 %42, i32* %arrayidx111, align 4, !tbaa !3
  %arrayidx112 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2
  store i32 %42, i32* %arrayidx112, align 8, !tbaa !3
  %arrayidx113 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1
  store i32 %42, i32* %arrayidx113, align 4, !tbaa !3
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.then75
  %43 = phi i32 [ %42, %if.else109 ], [ %conv98, %if.then75 ]
  %44 = phi i32 [ %42, %if.else109 ], [ %conv89, %if.then75 ]
  %45 = phi i32 [ %42, %if.else109 ], [ %conv, %if.then75 ]
  %46 = phi i32 [ %42, %if.else109 ], [ %conv107, %if.then75 ]
  %tobool115 = icmp eq i32 %block_available_up_right.0, 0
  br i1 %tobool115, label %if.else153, label %if.then116

if.then116:                                       ; preds = %if.end114
  %pos_x117 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 4
  %47 = load i32* %pos_x117, align 4, !tbaa !3
  %idxprom119 = sext i32 %47 to i64
  %pos_y120 = getelementptr inbounds %struct.pix_pos* %pix_c, i64 0, i32 5
  %48 = load i32* %pos_y120, align 4, !tbaa !3
  %idxprom121 = sext i32 %48 to i64
  %arrayidx122 = getelementptr inbounds i16** %2, i64 %idxprom121
  %49 = load i16** %arrayidx122, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i16* %49, i64 %idxprom119
  %50 = load i16* %arrayidx123, align 2, !tbaa !4
  %conv124 = zext i16 %50 to i32
  %arrayidx125 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 5
  store i32 %conv124, i32* %arrayidx125, align 4, !tbaa !3
  %add127 = add nsw i32 %47, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx132 = getelementptr inbounds i16* %49, i64 %idxprom128
  %51 = load i16* %arrayidx132, align 2, !tbaa !4
  %conv133 = zext i16 %51 to i32
  %arrayidx134 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6
  store i32 %conv133, i32* %arrayidx134, align 8, !tbaa !3
  %add136 = add nsw i32 %47, 2
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx141 = getelementptr inbounds i16* %49, i64 %idxprom137
  %52 = load i16* %arrayidx141, align 2, !tbaa !4
  %conv142 = zext i16 %52 to i32
  %arrayidx143 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 7
  store i32 %conv142, i32* %arrayidx143, align 4, !tbaa !3
  %add145 = add nsw i32 %47, 3
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx150 = getelementptr inbounds i16* %49, i64 %idxprom146
  %53 = load i16* %arrayidx150, align 2, !tbaa !4
  %conv151 = zext i16 %53 to i32
  %arrayidx152 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 8
  store i32 %conv151, i32* %arrayidx152, align 16, !tbaa !3
  br label %if.end159

if.else153:                                       ; preds = %if.end114
  %arrayidx155 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 8
  store i32 %46, i32* %arrayidx155, align 16, !tbaa !3
  %arrayidx156 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 7
  store i32 %46, i32* %arrayidx156, align 4, !tbaa !3
  %arrayidx157 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6
  store i32 %46, i32* %arrayidx157, align 8, !tbaa !3
  %arrayidx158 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 5
  store i32 %46, i32* %arrayidx158, align 4, !tbaa !3
  br label %if.end159

if.end159:                                        ; preds = %if.else153, %if.then116
  %54 = phi i32 [ %46, %if.else153 ], [ %conv151, %if.then116 ]
  %55 = phi i32 [ %46, %if.else153 ], [ %conv142, %if.then116 ]
  %56 = phi i32 [ %46, %if.else153 ], [ %conv133, %if.then116 ]
  %57 = phi i32 [ %46, %if.else153 ], [ %conv124, %if.then116 ]
  br i1 %tobool67.not, label %if.then161, label %if.else202

if.then161:                                       ; preds = %if.end159
  %pos_x163 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 0, i32 4
  %58 = bitcast i32* %pos_x163 to i64*
  %59 = load i64* %58, align 16
  %sext = shl i64 %59, 32
  %idxprom164 = ashr exact i64 %sext, 32
  %idxprom167 = ashr i64 %59, 32
  %arrayidx168 = getelementptr inbounds i16** %2, i64 %idxprom167
  %60 = load i16** %arrayidx168, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i16* %60, i64 %idxprom164
  %61 = load i16* %arrayidx169, align 2, !tbaa !4
  %conv170 = zext i16 %61 to i32
  %arrayidx171 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9
  store i32 %conv170, i32* %arrayidx171, align 4, !tbaa !3
  %pos_x173 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 1, i32 4
  %62 = bitcast i32* %pos_x173 to i64*
  %63 = load i64* %62, align 8
  %sext1317 = shl i64 %63, 32
  %idxprom174 = ashr exact i64 %sext1317, 32
  %idxprom177 = ashr i64 %63, 32
  %arrayidx178 = getelementptr inbounds i16** %2, i64 %idxprom177
  %64 = load i16** %arrayidx178, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i16* %64, i64 %idxprom174
  %65 = load i16* %arrayidx179, align 2, !tbaa !4
  %conv180 = zext i16 %65 to i32
  %arrayidx181 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10
  store i32 %conv180, i32* %arrayidx181, align 8, !tbaa !3
  %pos_x183 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 2, i32 4
  %66 = bitcast i32* %pos_x183 to i64*
  %67 = load i64* %66, align 16
  %sext1319 = shl i64 %67, 32
  %idxprom184 = ashr exact i64 %sext1319, 32
  %idxprom187 = ashr i64 %67, 32
  %arrayidx188 = getelementptr inbounds i16** %2, i64 %idxprom187
  %68 = load i16** %arrayidx188, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i16* %68, i64 %idxprom184
  %69 = load i16* %arrayidx189, align 2, !tbaa !4
  %conv190 = zext i16 %69 to i32
  %arrayidx191 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11
  store i32 %conv190, i32* %arrayidx191, align 4, !tbaa !3
  %pos_x193 = getelementptr inbounds [4 x %struct.pix_pos]* %pix_a, i64 0, i64 3, i32 4
  %70 = bitcast i32* %pos_x193 to i64*
  %71 = load i64* %70, align 8
  %sext1321 = shl i64 %71, 32
  %idxprom194 = ashr exact i64 %sext1321, 32
  %idxprom197 = ashr i64 %71, 32
  %arrayidx198 = getelementptr inbounds i16** %2, i64 %idxprom197
  %72 = load i16** %arrayidx198, align 8, !tbaa !0
  %arrayidx199 = getelementptr inbounds i16* %72, i64 %idxprom194
  %73 = load i16* %arrayidx199, align 2, !tbaa !4
  %conv200 = zext i16 %73 to i32
  %arrayidx201 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12
  store i32 %conv200, i32* %arrayidx201, align 16, !tbaa !3
  br label %if.end208

if.else202:                                       ; preds = %if.end159
  %74 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value203 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 154
  %75 = load i32* %dc_pred_value203, align 4, !tbaa !3
  %arrayidx204 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12
  store i32 %75, i32* %arrayidx204, align 16, !tbaa !3
  %arrayidx205 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11
  store i32 %75, i32* %arrayidx205, align 4, !tbaa !3
  %arrayidx206 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10
  store i32 %75, i32* %arrayidx206, align 8, !tbaa !3
  %arrayidx207 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9
  store i32 %75, i32* %arrayidx207, align 4, !tbaa !3
  br label %if.end208

if.end208:                                        ; preds = %if.else202, %if.then161
  %76 = phi i32 [ %75, %if.else202 ], [ %conv200, %if.then161 ]
  %77 = phi i32 [ %75, %if.else202 ], [ %conv190, %if.then161 ]
  %78 = phi i32 [ %75, %if.else202 ], [ %conv180, %if.then161 ]
  %79 = phi i32 [ %75, %if.else202 ], [ %conv170, %if.then161 ]
  br i1 %tobool69, label %if.then210, label %if.else219

if.then210:                                       ; preds = %if.end208
  %pos_x211 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 4
  %80 = load i32* %pos_x211, align 4, !tbaa !3
  %idxprom212 = sext i32 %80 to i64
  %pos_y213 = getelementptr inbounds %struct.pix_pos* %pix_d, i64 0, i32 5
  %81 = load i32* %pos_y213, align 4, !tbaa !3
  %idxprom214 = sext i32 %81 to i64
  %arrayidx215 = getelementptr inbounds i16** %2, i64 %idxprom214
  %82 = load i16** %arrayidx215, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i16* %82, i64 %idxprom212
  %83 = load i16* %arrayidx216, align 2, !tbaa !4
  %conv217 = zext i16 %83 to i32
  %arrayidx218 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 0
  store i32 %conv217, i32* %arrayidx218, align 16, !tbaa !3
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond223.preheader

if.else219:                                       ; preds = %if.end208
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value220 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 154
  %85 = load i32* %dc_pred_value220, align 4, !tbaa !3
  %arrayidx221 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 0
  store i32 %85, i32* %arrayidx221, align 16, !tbaa !3
  br label %for.cond223.preheader

for.cond223.preheader:                            ; preds = %if.else219, %if.then210
  %86 = phi %struct.ImageParameters* [ %84, %if.else219 ], [ %.pre, %if.then210 ]
  br label %for.body226

for.body226:                                      ; preds = %for.body226, %for.cond223.preheader
  %indvars.iv1270 = phi i64 [ 0, %for.cond223.preheader ], [ %indvars.iv.next1271, %for.body226 ]
  %arrayidx230 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 %indvars.iv1270, i64 0, i64 0
  store i16 -1, i16* %arrayidx230, align 2, !tbaa !4
  %indvars.iv.next1271 = add i64 %indvars.iv1270, 1
  %lftr.wideiv1272 = trunc i64 %indvars.iv.next1271 to i32
  %exitcond1273 = icmp eq i32 %lftr.wideiv1272, 9
  br i1 %exitcond1273, label %for.end233, label %for.body226

for.end233:                                       ; preds = %for.body226
  %tobool160.not = xor i1 %tobool67.not, true
  %brmerge = or i1 %tobool66.not, %tobool160.not
  br i1 %brmerge, label %if.else254, label %if.then237

if.then237:                                       ; preds = %for.end233
  %arrayidx243 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4
  %87 = bitcast i32* %arrayidx243 to i64*
  %88 = load i64* %87, align 16
  %89 = trunc i64 %88 to i32
  %add240 = add i32 %45, 4
  %add242 = add i32 %add240, %44
  %add244 = add i32 %add242, %43
  %add246 = add i32 %add244, %89
  %add248 = add i32 %add246, %79
  %add250 = add i32 %add248, %78
  %add252 = add i32 %add250, %77
  %add253 = add i32 %add252, %76
  %div = sdiv i32 %add253, 8
  %90 = lshr i64 %88, 32
  %91 = trunc i64 %90 to i32
  br label %if.end286

if.else254:                                       ; preds = %for.end233
  %brmerge1248 = or i1 %tobool66, %tobool160.not
  br i1 %brmerge1248, label %if.else268, label %if.then258

if.then258:                                       ; preds = %if.else254
  %add261 = add i32 %79, 2
  %add263 = add i32 %add261, %78
  %add265 = add i32 %add263, %77
  %add266 = add i32 %add265, %76
  %div267 = sdiv i32 %add266, 4
  br label %if.end286

if.else268:                                       ; preds = %if.else254
  %brmerge1250 = or i1 %tobool67.not, %tobool66.not
  br i1 %brmerge1250, label %if.else282, label %if.then272

if.then272:                                       ; preds = %if.else268
  %add275 = add i32 %45, 2
  %add277 = add i32 %add275, %44
  %add279 = add i32 %add277, %43
  %add280 = add i32 %add279, %46
  %div281 = sdiv i32 %add280, 4
  br label %if.end286

if.else282:                                       ; preds = %if.else268
  %dc_pred_value283 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 154
  %92 = load i32* %dc_pred_value283, align 4, !tbaa !3
  br label %if.end286

if.end286:                                        ; preds = %if.then258, %if.else282, %if.then272, %if.then237
  %93 = phi i32 [ %89, %if.then237 ], [ %46, %if.else282 ], [ %46, %if.then272 ], [ %46, %if.then258 ]
  %94 = phi i32 [ %91, %if.then237 ], [ %57, %if.else282 ], [ %57, %if.then272 ], [ %57, %if.then258 ]
  %s0.0 = phi i32 [ %div, %if.then237 ], [ %92, %if.else282 ], [ %div281, %if.then272 ], [ %div267, %if.then258 ]
  %conv295 = trunc i32 %s0.0 to i16
  br label %for.cond291.preheader

for.cond291.preheader:                            ; preds = %for.inc305, %if.end286
  %indvars.iv1266 = phi i64 [ 0, %if.end286 ], [ %indvars.iv.next1267, %for.inc305 ]
  br label %for.body294

for.body294:                                      ; preds = %for.body294, %for.cond291.preheader
  %indvars.iv1262 = phi i64 [ 0, %for.cond291.preheader ], [ %indvars.iv.next1263, %for.body294 ]
  %arrayidx301 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 2, i64 %indvars.iv1262, i64 %indvars.iv1266
  store i16 %conv295, i16* %arrayidx301, align 2, !tbaa !4
  %indvars.iv.next1263 = add i64 %indvars.iv1262, 1
  %lftr.wideiv1264 = trunc i64 %indvars.iv.next1263 to i32
  %exitcond1265 = icmp eq i32 %lftr.wideiv1264, 4
  br i1 %exitcond1265, label %for.inc305, label %for.body294

for.inc305:                                       ; preds = %for.body294
  %indvars.iv.next1267 = add i64 %indvars.iv1266, 1
  %lftr.wideiv1268 = trunc i64 %indvars.iv.next1267 to i32
  %exitcond1269 = icmp eq i32 %lftr.wideiv1268, 4
  br i1 %exitcond1269, label %for.body311, label %for.cond291.preheader

for.body311:                                      ; preds = %for.body311, %for.inc305
  %indvars.iv = phi i64 [ 0, %for.inc305 ], [ %arrayidx313.sum, %for.body311 ]
  %arrayidx313.sum = add i64 %indvars.iv, 1
  %arrayidx314 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 %arrayidx313.sum
  %95 = load i32* %arrayidx314, align 4, !tbaa !3
  %conv315 = trunc i32 %95 to i16
  %arrayidx320 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 3, i64 %indvars.iv
  store i16 %conv315, i16* %arrayidx320, align 2, !tbaa !4
  %arrayidx325 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 2, i64 %indvars.iv
  store i16 %conv315, i16* %arrayidx325, align 2, !tbaa !4
  %arrayidx330 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 1, i64 %indvars.iv
  store i16 %conv315, i16* %arrayidx330, align 2, !tbaa !4
  %arrayidx335 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 0, i64 %indvars.iv
  store i16 %conv315, i16* %arrayidx335, align 2, !tbaa !4
  %arrayidx337.sum = add i64 %indvars.iv, 9
  %arrayidx338 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 %arrayidx337.sum
  %96 = load i32* %arrayidx338, align 4, !tbaa !3
  %conv339 = trunc i32 %96 to i16
  %arrayidx344 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 3
  store i16 %conv339, i16* %arrayidx344, align 2, !tbaa !4
  %arrayidx349 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 2
  store i16 %conv339, i16* %arrayidx349, align 2, !tbaa !4
  %arrayidx354 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 1
  store i16 %conv339, i16* %arrayidx354, align 2, !tbaa !4
  %arrayidx359 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 %indvars.iv, i64 0
  store i16 %conv339, i16* %arrayidx359, align 2, !tbaa !4
  %lftr.wideiv = trunc i64 %arrayidx313.sum to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end362, label %for.body311

for.end362:                                       ; preds = %for.body311
  br i1 %tobool66, label %if.end369, label %if.then364

if.then364:                                       ; preds = %for.end362
  %arrayidx368 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 0, i64 0, i64 0
  store i16 -1, i16* %arrayidx368, align 2, !tbaa !4
  br label %if.end369

if.end369:                                        ; preds = %if.then364, %for.end362
  br i1 %tobool67.not, label %if.end376, label %if.then371

if.then371:                                       ; preds = %if.end369
  %arrayidx375 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 1, i64 0, i64 0
  store i16 -1, i16* %arrayidx375, align 2, !tbaa !4
  br label %if.end376

if.end376:                                        ; preds = %if.then371, %if.end369
  br i1 %tobool66, label %if.then378, label %if.end642

if.then378:                                       ; preds = %if.end376
  %arrayidx379 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 1
  %arrayidx382 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2
  %mul = shl i32 %44, 1
  %add381 = add i32 %45, 2
  %add383 = add i32 %add381, %43
  %add384 = add i32 %add383, %mul
  %div385 = sdiv i32 %add384, 4
  %conv386 = trunc i32 %div385 to i16
  %arrayidx390 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 0
  store i16 %conv386, i16* %arrayidx390, align 2, !tbaa !4
  %arrayidx392 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4
  %mul395 = shl i32 %43, 1
  %add393 = add i32 %44, 2
  %add396 = add i32 %add393, %93
  %add397 = add i32 %add396, %mul395
  %div398 = sdiv i32 %add397, 4
  %conv399 = trunc i32 %div398 to i16
  %arrayidx403 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 0
  store i16 %conv399, i16* %arrayidx403, align 2, !tbaa !4
  %arrayidx407 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 1
  store i16 %conv399, i16* %arrayidx407, align 2, !tbaa !4
  %mul412 = shl i32 %93, 1
  %add410 = add i32 %43, 2
  %add413 = add i32 %add410, %94
  %add414 = add i32 %add413, %mul412
  %div415 = sdiv i32 %add414, 4
  %conv416 = trunc i32 %div415 to i16
  %arrayidx420 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 0
  store i16 %conv416, i16* %arrayidx420, align 2, !tbaa !4
  %arrayidx424 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 1
  store i16 %conv416, i16* %arrayidx424, align 2, !tbaa !4
  %arrayidx428 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 2
  store i16 %conv416, i16* %arrayidx428, align 2, !tbaa !4
  %arrayidx430 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 6
  %mul433 = shl i32 %94, 1
  %add431 = add i32 %93, 2
  %add434 = add i32 %add431, %56
  %add435 = add i32 %add434, %mul433
  %div436 = sdiv i32 %add435, 4
  %conv437 = trunc i32 %div436 to i16
  %arrayidx441 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 0
  store i16 %conv437, i16* %arrayidx441, align 2, !tbaa !4
  %arrayidx445 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 1
  store i16 %conv437, i16* %arrayidx445, align 2, !tbaa !4
  %arrayidx449 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 2
  store i16 %conv437, i16* %arrayidx449, align 2, !tbaa !4
  %arrayidx453 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 0, i64 3
  store i16 %conv437, i16* %arrayidx453, align 2, !tbaa !4
  %mul458 = shl i32 %56, 1
  %add456 = add i32 %94, 2
  %add459 = add i32 %add456, %55
  %add460 = add i32 %add459, %mul458
  %div461 = sdiv i32 %add460, 4
  %conv462 = trunc i32 %div461 to i16
  %arrayidx466 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 1
  store i16 %conv462, i16* %arrayidx466, align 2, !tbaa !4
  %arrayidx470 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 2
  store i16 %conv462, i16* %arrayidx470, align 2, !tbaa !4
  %arrayidx474 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 1, i64 3
  store i16 %conv462, i16* %arrayidx474, align 2, !tbaa !4
  %mul479 = shl i32 %55, 1
  %add477 = add i32 %56, 2
  %add480 = add i32 %add477, %54
  %add481 = add i32 %add480, %mul479
  %div482 = sdiv i32 %add481, 4
  %conv483 = trunc i32 %div482 to i16
  %arrayidx487 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 2
  store i16 %conv483, i16* %arrayidx487, align 2, !tbaa !4
  %arrayidx491 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 2, i64 3
  store i16 %conv483, i16* %arrayidx491, align 2, !tbaa !4
  %mul494 = mul nsw i32 %54, 3
  %add495 = add i32 %55, 2
  %add496 = add i32 %add495, %mul494
  %div497 = sdiv i32 %add496, 4
  %conv498 = trunc i32 %div497 to i16
  %arrayidx502 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 3, i64 3, i64 3
  store i16 %conv498, i16* %arrayidx502, align 2, !tbaa !4
  %add505 = add i32 %45, 1
  %add506 = add i32 %add505, %44
  %div507 = sdiv i32 %add506, 2
  %conv508 = trunc i32 %div507 to i16
  %arrayidx512 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 0, i64 0
  store i16 %conv508, i16* %arrayidx512, align 2, !tbaa !4
  %add515 = add i32 %44, 1
  %add516 = add i32 %add515, %43
  %div517 = sdiv i32 %add516, 2
  %conv518 = trunc i32 %div517 to i16
  %arrayidx522 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 2, i64 0
  store i16 %conv518, i16* %arrayidx522, align 2, !tbaa !4
  %arrayidx526 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 0, i64 1
  store i16 %conv518, i16* %arrayidx526, align 2, !tbaa !4
  %add529 = add i32 %43, 1
  %add530 = add i32 %add529, %93
  %div531 = sdiv i32 %add530, 2
  %conv532 = trunc i32 %div531 to i16
  %arrayidx536 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 41, i64 7, i64 2, i64 1
  store i16 %conv532, i16* %arrayidx536, align 2, !tbaa !4
  %97 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx540 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 0, i64 2
  store i16 %conv532, i16* %arrayidx540, align 2, !tbaa !4
  %98 = bitcast i32* %arrayidx392 to i64*
  %99 = load i64* %98, align 16
  %100 = trunc i64 %99 to i32
  %101 = lshr i64 %99, 32
  %102 = trunc i64 %101 to i32
  %add543 = add i32 %100, 1
  %add544 = add i32 %add543, %102
  %div545 = sdiv i32 %add544, 2
  %conv546 = trunc i32 %div545 to i16
  %arrayidx550 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 2, i64 2
  store i16 %conv546, i16* %arrayidx550, align 2, !tbaa !4
  %arrayidx554 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 0, i64 3
  store i16 %conv546, i16* %arrayidx554, align 2, !tbaa !4
  %103 = bitcast i32* %arrayidx430 to i64*
  %104 = load i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %add557 = add i32 %102, 1
  %add558 = add i32 %add557, %105
  %div559 = sdiv i32 %add558, 2
  %conv560 = trunc i32 %div559 to i16
  %arrayidx564 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 2, i64 3
  store i16 %conv560, i16* %arrayidx564, align 2, !tbaa !4
  %106 = load i32* %arrayidx379, align 4, !tbaa !3
  %107 = bitcast i32* %arrayidx382 to i64*
  %108 = load i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %mul567 = shl i32 %109, 1
  %110 = lshr i64 %108, 32
  %111 = trunc i64 %110 to i32
  %add568 = add i32 %106, 2
  %add570 = add i32 %add568, %mul567
  %add571 = add i32 %add570, %111
  %div572 = sdiv i32 %add571, 4
  %conv573 = trunc i32 %div572 to i16
  %arrayidx577 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 0
  store i16 %conv573, i16* %arrayidx577, align 2, !tbaa !4
  %mul5801314 = shl nuw nsw i64 %110, 1
  %mul580 = trunc i64 %mul5801314 to i32
  %add581 = add i32 %109, 2
  %add583 = add i32 %add581, %mul580
  %add584 = add i32 %add583, %100
  %div585 = sdiv i32 %add584, 4
  %conv586 = trunc i32 %div585 to i16
  %arrayidx590 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 0
  store i16 %conv586, i16* %arrayidx590, align 2, !tbaa !4
  %arrayidx594 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 1
  store i16 %conv586, i16* %arrayidx594, align 2, !tbaa !4
  %mul597 = shl i32 %100, 1
  %add598 = add i32 %111, 2
  %add600 = add i32 %add598, %mul597
  %add601 = add i32 %add600, %102
  %div602 = sdiv i32 %add601, 4
  %conv603 = trunc i32 %div602 to i16
  %arrayidx607 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 1
  store i16 %conv603, i16* %arrayidx607, align 2, !tbaa !4
  %arrayidx611 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 2
  store i16 %conv603, i16* %arrayidx611, align 2, !tbaa !4
  %mul6141315 = shl nuw nsw i64 %101, 1
  %mul614 = trunc i64 %mul6141315 to i32
  %add615 = add i32 %100, 2
  %add617 = add i32 %add615, %mul614
  %add618 = add i32 %add617, %105
  %div619 = sdiv i32 %add618, 4
  %conv620 = trunc i32 %div619 to i16
  %arrayidx624 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 3, i64 2
  store i16 %conv620, i16* %arrayidx624, align 2, !tbaa !4
  %arrayidx628 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 41, i64 7, i64 1, i64 3
  store i16 %conv620, i16* %arrayidx628, align 2, !tbaa !4
  %mul631 = shl i32 %105, 1
  %112 = lshr i64 %104, 32
  %113 = trunc i64 %112 to i32
  %add632 = add i32 %102, 2
  %add634 = add i32 %add632, %mul631
  %add635 = add i32 %add634, %113
  %div636 = sdiv i32 %add635, 4
  %conv637 = trunc i32 %div636 to i16
  %114 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx641 = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 41, i64 7, i64 3, i64 3
  store i16 %conv637, i16* %arrayidx641, align 2, !tbaa !4
  br label %if.end642

if.end642:                                        ; preds = %if.then378, %if.end376
  %115 = phi i32 [ %111, %if.then378 ], [ %43, %if.end376 ]
  %116 = phi i32 [ %109, %if.then378 ], [ %44, %if.end376 ]
  %117 = phi %struct.ImageParameters* [ %114, %if.then378 ], [ %86, %if.end376 ]
  br i1 %tobool67.not, label %if.then644, label %if.end756

if.then644:                                       ; preds = %if.end642
  %arrayidx645 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9
  %118 = load i32* %arrayidx645, align 4, !tbaa !3
  %arrayidx646 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10
  %119 = bitcast i32* %arrayidx646 to i64*
  %120 = load i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %add647 = add i32 %118, 1
  %add648 = add i32 %add647, %121
  %div649 = sdiv i32 %add648, 2
  %conv650 = trunc i32 %div649 to i16
  %arrayidx654 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 0
  store i16 %conv650, i16* %arrayidx654, align 2, !tbaa !4
  %mul657 = shl i32 %121, 1
  %122 = lshr i64 %120, 32
  %123 = trunc i64 %122 to i32
  %add658 = add i32 %118, 2
  %add660 = add i32 %add658, %mul657
  %add661 = add i32 %add660, %123
  %div662 = sdiv i32 %add661, 4
  %conv663 = trunc i32 %div662 to i16
  %arrayidx667 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 1
  store i16 %conv663, i16* %arrayidx667, align 2, !tbaa !4
  %add670 = add i32 %121, 1
  %add671 = add i32 %add670, %123
  %div672 = sdiv i32 %add671, 2
  %conv673 = trunc i32 %div672 to i16
  %arrayidx677 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 0
  store i16 %conv673, i16* %arrayidx677, align 2, !tbaa !4
  %arrayidx681 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 2
  store i16 %conv673, i16* %arrayidx681, align 2, !tbaa !4
  %mul6841313 = shl nuw nsw i64 %122, 1
  %mul684 = trunc i64 %mul6841313 to i32
  %arrayidx686 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12
  %124 = load i32* %arrayidx686, align 16, !tbaa !3
  %add685 = add i32 %121, 2
  %add687 = add i32 %add685, %mul684
  %add688 = add i32 %add687, %124
  %div689 = sdiv i32 %add688, 4
  %conv690 = trunc i32 %div689 to i16
  %arrayidx694 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 1
  store i16 %conv690, i16* %arrayidx694, align 2, !tbaa !4
  %arrayidx698 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 0, i64 3
  store i16 %conv690, i16* %arrayidx698, align 2, !tbaa !4
  %add701 = add i32 %123, 1
  %add702 = add i32 %add701, %124
  %div703 = sdiv i32 %add702, 2
  %conv704 = trunc i32 %div703 to i16
  %arrayidx708 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 0
  store i16 %conv704, i16* %arrayidx708, align 2, !tbaa !4
  %arrayidx712 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 2
  store i16 %conv704, i16* %arrayidx712, align 2, !tbaa !4
  %mul715 = shl i32 %124, 1
  %add716 = add i32 %123, 2
  %add718 = add i32 %add716, %124
  %add719 = add i32 %add718, %mul715
  %div720 = sdiv i32 %add719, 4
  %conv721 = trunc i32 %div720 to i16
  %arrayidx725 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 1
  store i16 %conv721, i16* %arrayidx725, align 2, !tbaa !4
  %arrayidx729 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 1, i64 3
  store i16 %conv721, i16* %arrayidx729, align 2, !tbaa !4
  %conv731 = trunc i32 %124 to i16
  %arrayidx735 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 3
  store i16 %conv731, i16* %arrayidx735, align 2, !tbaa !4
  %arrayidx739 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 2
  store i16 %conv731, i16* %arrayidx739, align 2, !tbaa !4
  %arrayidx743 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 1
  store i16 %conv731, i16* %arrayidx743, align 2, !tbaa !4
  %arrayidx747 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 3
  store i16 %conv731, i16* %arrayidx747, align 2, !tbaa !4
  %arrayidx751 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 2, i64 2
  store i16 %conv731, i16* %arrayidx751, align 2, !tbaa !4
  %arrayidx755 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 8, i64 3, i64 0
  store i16 %conv731, i16* %arrayidx755, align 2, !tbaa !4
  br label %if.end756

if.end756:                                        ; preds = %if.then644, %if.end642
  %tobool209.not = xor i1 %tobool69, true
  %brmerge1254 = or i1 %brmerge, %tobool209.not
  br i1 %brmerge1254, label %if.end1174, label %if.then762

if.then762:                                       ; preds = %if.end756
  %arrayidx763 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 12
  %125 = load i32* %arrayidx763, align 16, !tbaa !3
  %arrayidx764 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 11
  %126 = load i32* %arrayidx764, align 4, !tbaa !3
  %mul765 = shl i32 %126, 1
  %arrayidx767 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 10
  %127 = bitcast i32* %arrayidx767 to i64*
  %128 = load i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %add766 = add i32 %125, 2
  %add768 = add i32 %add766, %mul765
  %add769 = add i32 %add768, %129
  %div770 = sdiv i32 %add769, 4
  %conv771 = trunc i32 %div770 to i16
  %arrayidx775 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 0
  store i16 %conv771, i16* %arrayidx775, align 2, !tbaa !4
  %130 = lshr i64 %128, 32
  %131 = trunc i64 %130 to i32
  %mul778 = shl i32 %129, 1
  %arrayidx780 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 9
  %132 = load i32* %arrayidx780, align 4, !tbaa !3
  %add779 = add i32 %131, 2
  %add781 = add i32 %add779, %mul778
  %add782 = add i32 %add781, %132
  %div783 = sdiv i32 %add782, 4
  %conv784 = trunc i32 %div783 to i16
  %arrayidx788 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 1
  store i16 %conv784, i16* %arrayidx788, align 2, !tbaa !4
  %arrayidx792 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 0
  store i16 %conv784, i16* %arrayidx792, align 2, !tbaa !4
  %mul795 = shl i32 %132, 1
  %133 = bitcast [13 x i32]* %PredPel to i64*
  %134 = load i64* %133, align 16
  %135 = trunc i64 %134 to i32
  %add796 = add i32 %129, 2
  %add798 = add i32 %add796, %mul795
  %add799 = add i32 %add798, %135
  %div800 = sdiv i32 %add799, 4
  %conv801 = trunc i32 %div800 to i16
  %arrayidx805 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 2
  store i16 %conv801, i16* %arrayidx805, align 2, !tbaa !4
  %arrayidx809 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 1
  store i16 %conv801, i16* %arrayidx809, align 2, !tbaa !4
  %arrayidx813 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 0
  store i16 %conv801, i16* %arrayidx813, align 2, !tbaa !4
  %mul816 = shl i32 %135, 1
  %136 = lshr i64 %134, 32
  %137 = trunc i64 %136 to i32
  %add817 = add i32 %132, 2
  %add819 = add i32 %add817, %mul816
  %add820 = add i32 %add819, %137
  %div821 = sdiv i32 %add820, 4
  %conv822 = trunc i32 %div821 to i16
  %arrayidx826 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 3, i64 3
  store i16 %conv822, i16* %arrayidx826, align 2, !tbaa !4
  %arrayidx830 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 2
  store i16 %conv822, i16* %arrayidx830, align 2, !tbaa !4
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 1
  store i16 %conv822, i16* %arrayidx834, align 2, !tbaa !4
  %arrayidx838 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 0, i64 0
  store i16 %conv822, i16* %arrayidx838, align 2, !tbaa !4
  %mul8411307 = shl nuw nsw i64 %136, 1
  %mul841 = trunc i64 %mul8411307 to i32
  %arrayidx843 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 2
  %add842 = add i32 %135, 2
  %add844 = add i32 %add842, %mul841
  %add845 = add i32 %add844, %116
  %div846 = sdiv i32 %add845, 4
  %conv847 = trunc i32 %div846 to i16
  %arrayidx851 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 2, i64 3
  store i16 %conv847, i16* %arrayidx851, align 2, !tbaa !4
  %arrayidx855 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 2
  store i16 %conv847, i16* %arrayidx855, align 2, !tbaa !4
  %arrayidx859 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 0, i64 1
  store i16 %conv847, i16* %arrayidx859, align 2, !tbaa !4
  %mul862 = shl i32 %116, 1
  %arrayidx864 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 3
  %add863 = add i32 %137, 2
  %add865 = add i32 %add863, %mul862
  %add866 = add i32 %add865, %115
  %div867 = sdiv i32 %add866, 4
  %conv868 = trunc i32 %div867 to i16
  %arrayidx872 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 41, i64 4, i64 1, i64 3
  store i16 %conv868, i16* %arrayidx872, align 2, !tbaa !4
  %138 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx876 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 4, i64 0, i64 2
  store i16 %conv868, i16* %arrayidx876, align 2, !tbaa !4
  %139 = bitcast i32* %arrayidx843 to i64*
  %140 = load i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = lshr i64 %140, 32
  %143 = trunc i64 %142 to i32
  %mul8791308 = shl nuw nsw i64 %142, 1
  %mul879 = trunc i64 %mul8791308 to i32
  %arrayidx881 = getelementptr inbounds [13 x i32]* %PredPel, i64 0, i64 4
  %144 = load i32* %arrayidx881, align 16, !tbaa !3
  %add880 = add i32 %141, 2
  %add882 = add i32 %add880, %mul879
  %add883 = add i32 %add882, %144
  %div884 = sdiv i32 %add883, 4
  %conv885 = trunc i32 %div884 to i16
  %arrayidx889 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 4, i64 0, i64 3
  store i16 %conv885, i16* %arrayidx889, align 2, !tbaa !4
  %add892 = add i32 %135, 1
  %add893 = add i32 %add892, %137
  %div894 = sdiv i32 %add893, 2
  %conv895 = trunc i32 %div894 to i16
  %arrayidx899 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 1
  store i16 %conv895, i16* %arrayidx899, align 2, !tbaa !4
  %arrayidx903 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 0
  store i16 %conv895, i16* %arrayidx903, align 2, !tbaa !4
  %add906 = add i32 %137, 1
  %add907 = add i32 %add906, %141
  %div908 = sdiv i32 %add907, 2
  %conv909 = trunc i32 %div908 to i16
  %arrayidx913 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 2
  store i16 %conv909, i16* %arrayidx913, align 2, !tbaa !4
  %arrayidx917 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 1
  store i16 %conv909, i16* %arrayidx917, align 2, !tbaa !4
  %add920 = add i32 %141, 1
  %add921 = add i32 %add920, %143
  %div922 = sdiv i32 %add921, 2
  %conv923 = trunc i32 %div922 to i16
  %arrayidx927 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 2, i64 3
  store i16 %conv923, i16* %arrayidx927, align 2, !tbaa !4
  %arrayidx931 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 2
  store i16 %conv923, i16* %arrayidx931, align 2, !tbaa !4
  %add934 = add i32 %143, 1
  %add935 = add i32 %add934, %144
  %div936 = sdiv i32 %add935, 2
  %conv937 = trunc i32 %div936 to i16
  %arrayidx941 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 0, i64 3
  store i16 %conv937, i16* %arrayidx941, align 2, !tbaa !4
  %145 = load i32* %arrayidx780, align 4, !tbaa !3
  %146 = load i64* %133, align 16
  %147 = trunc i64 %146 to i32
  %mul944 = shl i32 %147, 1
  %148 = lshr i64 %146, 32
  %149 = trunc i64 %148 to i32
  %add945 = add i32 %145, 2
  %add947 = add i32 %add945, %mul944
  %add948 = add i32 %add947, %149
  %div949 = sdiv i32 %add948, 4
  %conv950 = trunc i32 %div949 to i16
  %arrayidx954 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 3, i64 1
  store i16 %conv950, i16* %arrayidx954, align 2, !tbaa !4
  %arrayidx958 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 1, i64 0
  store i16 %conv950, i16* %arrayidx958, align 2, !tbaa !4
  %mul9611309 = shl nuw nsw i64 %148, 1
  %mul961 = trunc i64 %mul9611309 to i32
  %add962 = add i32 %147, 2
  %add964 = add i32 %add962, %mul961
  %add965 = add i32 %add964, %141
  %div966 = sdiv i32 %add965, 4
  %conv967 = trunc i32 %div966 to i16
  %arrayidx971 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 3, i64 2
  store i16 %conv967, i16* %arrayidx971, align 2, !tbaa !4
  %arrayidx975 = getelementptr inbounds %struct.ImageParameters* %138, i64 0, i32 41, i64 5, i64 1, i64 1
  store i16 %conv967, i16* %arrayidx975, align 2, !tbaa !4
  %mul978 = shl i32 %141, 1
  %150 = load i32* %arrayidx864, align 4, !tbaa !3
  %add979 = add i32 %149, 2
  %add981 = add i32 %add979, %mul978
  %add982 = add i32 %add981, %150
  %div983 = sdiv i32 %add982, 4
  %conv984 = trunc i32 %div983 to i16
  %151 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx988 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 3, i64 3
  store i16 %conv984, i16* %arrayidx988, align 2, !tbaa !4
  %arrayidx992 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 1, i64 2
  store i16 %conv984, i16* %arrayidx992, align 2, !tbaa !4
  %152 = load i64* %139, align 8
  %153 = trunc i64 %152 to i32
  %154 = lshr i64 %152, 32
  %155 = trunc i64 %154 to i32
  %mul9951310 = shl nuw nsw i64 %154, 1
  %mul995 = trunc i64 %mul9951310 to i32
  %156 = load i32* %arrayidx881, align 16, !tbaa !3
  %add996 = add i32 %153, 2
  %add998 = add i32 %add996, %mul995
  %add999 = add i32 %add998, %156
  %div1000 = sdiv i32 %add999, 4
  %conv1001 = trunc i32 %div1000 to i16
  %arrayidx1005 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 1, i64 3
  store i16 %conv1001, i16* %arrayidx1005, align 2, !tbaa !4
  %mul1008 = shl i32 %145, 1
  %157 = load i64* %127, align 8
  %158 = trunc i64 %157 to i32
  %add1011 = add i32 %add962, %mul1008
  %add1012 = add i32 %add1011, %158
  %div1013 = sdiv i32 %add1012, 4
  %conv1014 = trunc i32 %div1013 to i16
  %arrayidx1018 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 2, i64 0
  store i16 %conv1014, i16* %arrayidx1018, align 2, !tbaa !4
  %mul1021 = shl i32 %158, 1
  %159 = lshr i64 %157, 32
  %160 = trunc i64 %159 to i32
  %add1024 = add i32 %add945, %mul1021
  %add1025 = add i32 %add1024, %160
  %div1026 = sdiv i32 %add1025, 4
  %conv1027 = trunc i32 %div1026 to i16
  %arrayidx1031 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 5, i64 3, i64 0
  store i16 %conv1027, i16* %arrayidx1031, align 2, !tbaa !4
  %add1034 = add i32 %147, 1
  %add1035 = add i32 %add1034, %145
  %div1036 = sdiv i32 %add1035, 2
  %conv1037 = trunc i32 %div1036 to i16
  %arrayidx1041 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 1, i64 2
  store i16 %conv1037, i16* %arrayidx1041, align 2, !tbaa !4
  %arrayidx1045 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 0
  store i16 %conv1037, i16* %arrayidx1045, align 2, !tbaa !4
  %arrayidx1058 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 1, i64 3
  store i16 %conv950, i16* %arrayidx1058, align 2, !tbaa !4
  %arrayidx1062 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 1
  store i16 %conv950, i16* %arrayidx1062, align 2, !tbaa !4
  %161 = load i64* %133, align 16
  %162 = trunc i64 %161 to i32
  %163 = lshr i64 %161, 32
  %164 = trunc i64 %163 to i32
  %mul10651311 = shl nuw nsw i64 %163, 1
  %mul1065 = trunc i64 %mul10651311 to i32
  %add1066 = add i32 %162, 2
  %add1068 = add i32 %add1066, %mul1065
  %add1069 = add i32 %add1068, %153
  %div1070 = sdiv i32 %add1069, 4
  %conv1071 = trunc i32 %div1070 to i16
  %arrayidx1075 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 2
  store i16 %conv1071, i16* %arrayidx1075, align 2, !tbaa !4
  %mul1078 = shl i32 %153, 1
  %add1079 = add i32 %164, 2
  %add1081 = add i32 %add1079, %mul1078
  %add1082 = add i32 %add1081, %155
  %div1083 = sdiv i32 %add1082, 4
  %conv1084 = trunc i32 %div1083 to i16
  %arrayidx1088 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 41, i64 6, i64 0, i64 3
  store i16 %conv1084, i16* %arrayidx1088, align 2, !tbaa !4
  %165 = load i32* %arrayidx780, align 4, !tbaa !3
  %add1091 = add i32 %165, 1
  %add1092 = add i32 %add1091, %158
  %div1093 = sdiv i32 %add1092, 2
  %conv1094 = trunc i32 %div1093 to i16
  %166 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1098 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 2
  store i16 %conv1094, i16* %arrayidx1098, align 2, !tbaa !4
  %arrayidx1102 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 1, i64 0
  store i16 %conv1094, i16* %arrayidx1102, align 2, !tbaa !4
  %mul1105 = shl i32 %165, 1
  %add1108 = add i32 %add1066, %mul1105
  %add1109 = add i32 %add1108, %158
  %div1110 = sdiv i32 %add1109, 4
  %conv1111 = trunc i32 %div1110 to i16
  %arrayidx1115 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 3
  store i16 %conv1111, i16* %arrayidx1115, align 2, !tbaa !4
  %arrayidx1119 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 1, i64 1
  store i16 %conv1111, i16* %arrayidx1119, align 2, !tbaa !4
  %add1122 = add i32 %158, 1
  %add1123 = add i32 %add1122, %160
  %div1124 = sdiv i32 %add1123, 2
  %conv1125 = trunc i32 %div1124 to i16
  %arrayidx1129 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 2
  store i16 %conv1125, i16* %arrayidx1129, align 2, !tbaa !4
  %arrayidx1133 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 0
  store i16 %conv1125, i16* %arrayidx1133, align 2, !tbaa !4
  %167 = load i64* %127, align 8
  %168 = trunc i64 %167 to i32
  %mul1136 = shl i32 %168, 1
  %169 = lshr i64 %167, 32
  %170 = trunc i64 %169 to i32
  %add1137 = add i32 %165, 2
  %add1139 = add i32 %add1137, %mul1136
  %add1140 = add i32 %add1139, %170
  %div1141 = sdiv i32 %add1140, 4
  %conv1142 = trunc i32 %div1141 to i16
  %arrayidx1146 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 3
  store i16 %conv1142, i16* %arrayidx1146, align 2, !tbaa !4
  %arrayidx1150 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 2, i64 1
  store i16 %conv1142, i16* %arrayidx1150, align 2, !tbaa !4
  %171 = load i32* %arrayidx763, align 16, !tbaa !3
  %add1153 = add i32 %170, 1
  %add1154 = add i32 %add1153, %171
  %div1155 = sdiv i32 %add1154, 2
  %conv1156 = trunc i32 %div1155 to i16
  %arrayidx1160 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 0
  store i16 %conv1156, i16* %arrayidx1160, align 2, !tbaa !4
  %mul11631312 = shl nuw nsw i64 %169, 1
  %mul1163 = trunc i64 %mul11631312 to i32
  %add1164 = add i32 %168, 2
  %add1166 = add i32 %add1164, %mul1163
  %add1167 = add i32 %add1166, %171
  %div1168 = sdiv i32 %add1167, 4
  %conv1169 = trunc i32 %div1168 to i16
  %arrayidx1173 = getelementptr inbounds %struct.ImageParameters* %166, i64 0, i32 41, i64 6, i64 3, i64 1
  store i16 %conv1169, i16* %arrayidx1173, align 2, !tbaa !4
  br label %if.end1174

if.end1174:                                       ; preds = %if.end756, %if.then762
  call void @llvm.lifetime.end(i64 96, i8* %5) #1
  call void @llvm.lifetime.end(i64 52, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @intrapred_luma_16x16() #0 {
entry:
  %s = alloca [16 x [2 x i32]], align 16
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %0 = bitcast [16 x [2 x i32]]* %s to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25
  %2 = load i16*** %imgY, align 8, !tbaa !0
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %5 = bitcast [17 x %struct.pix_pos]* %left to i8*
  call void @llvm.lifetime.start(i64 408, i8* %5) #1
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv516 = phi i64 [ 0, %entry ], [ %indvars.iv.next517, %for.body ]
  %6 = add nsw i64 %indvars.iv516, 4294967295
  %arrayidx = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv516
  %7 = trunc i64 %6 to i32
  call void @getNeighbour(i32 %4, i32 -1, i32 %7, i32 1, %struct.pix_pos* %arrayidx) #3
  %indvars.iv.next517 = add i64 %indvars.iv516, 1
  %lftr.wideiv519 = trunc i64 %indvars.iv.next517 to i32
  %exitcond520 = icmp eq i32 %lftr.wideiv519, 17
  br i1 %exitcond520, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @getNeighbour(i32 %4, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #3
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 24
  %9 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  %available5 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0
  %10 = load i32* %available5, align 4, !tbaa !3
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %available2 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 1, i32 0
  %11 = load i32* %available2, align 8, !tbaa !3
  %available4 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 0
  %12 = load i32* %available4, align 16, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %for.end
  %tobool6 = icmp eq i32 %10, 0
  br i1 %tobool6, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %cond.end

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1
  %13 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 54
  %15 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %15, i64 %idxprom7
  %16 = load i32* %arrayidx8, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.else.cond.end_crit_edge, %cond.true
  %17 = phi %struct.ImageParameters* [ %14, %cond.true ], [ %.pre, %if.else.cond.end_crit_edge ]
  %cond = phi i32 [ %16, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  %intra_block21 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 54
  br label %for.body11

for.body11:                                       ; preds = %cond.end24, %cond.end
  %indvars.iv512 = phi i64 [ 1, %cond.end ], [ %indvars.iv.next513, %cond.end24 ]
  %left_avail.0477 = phi i32 [ 1, %cond.end ], [ %and, %cond.end24 ]
  %available14 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv512, i32 0
  %18 = load i32* %available14, align 8, !tbaa !3
  %tobool15 = icmp eq i32 %18, 0
  br i1 %tobool15, label %cond.end24, label %cond.true16

cond.true16:                                      ; preds = %for.body11
  %mb_addr19 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv512, i32 1
  %19 = load i32* %mb_addr19, align 4, !tbaa !3
  %idxprom20 = sext i32 %19 to i64
  %20 = load i32** %intra_block21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32* %20, i64 %idxprom20
  %21 = load i32* %arrayidx22, align 4, !tbaa !3
  br label %cond.end24

cond.end24:                                       ; preds = %for.body11, %cond.true16
  %cond25 = phi i32 [ %21, %cond.true16 ], [ 0, %for.body11 ]
  %and = and i32 %cond25, %left_avail.0477
  %indvars.iv.next513 = add i64 %indvars.iv512, 1
  %lftr.wideiv514 = trunc i64 %indvars.iv.next513 to i32
  %exitcond515 = icmp eq i32 %lftr.wideiv514, 17
  br i1 %exitcond515, label %for.end28, label %for.body11

for.end28:                                        ; preds = %cond.end24
  %22 = bitcast [17 x %struct.pix_pos]* %left to i64*
  %23 = load i64* %22, align 16
  %24 = trunc i64 %23 to i32
  %tobool31 = icmp eq i32 %24, 0
  br i1 %tobool31, label %if.end, label %cond.true32

cond.true32:                                      ; preds = %for.end28
  %idxprom35 = ashr i64 %23, 32
  %25 = load i32** %intra_block21, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %25, i64 %idxprom35
  %26 = load i32* %arrayidx37, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.true32, %for.end28, %if.then
  %up_avail.0 = phi i32 [ %10, %if.then ], [ %cond, %for.end28 ], [ %cond, %cond.true32 ]
  %left_avail.1 = phi i32 [ %11, %if.then ], [ %and, %for.end28 ], [ %and, %cond.true32 ]
  %left_up_avail.0 = phi i32 [ %12, %if.then ], [ 0, %for.end28 ], [ %26, %cond.true32 ]
  %tobool44 = icmp ne i32 %up_avail.0, 0
  %pos_x = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 4
  %27 = load i32* %pos_x, align 4, !tbaa !3
  %pos_y = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 5
  %28 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds i16** %2, i64 %idxprom47
  %tobool52 = icmp eq i32 %left_avail.1, 0
  %29 = sext i32 %27 to i64
  br label %for.body43

for.body43:                                       ; preds = %for.inc69, %if.end
  %indvars.iv506 = phi i64 [ 0, %if.end ], [ %indvars.iv.next507.pre, %for.inc69 ]
  %s1.0475 = phi i32 [ 0, %if.end ], [ %s1.1, %for.inc69 ]
  %s2.0474 = phi i32 [ 0, %if.end ], [ %s2.1, %for.inc69 ]
  br i1 %tobool44, label %if.then45, label %if.end51

if.then45:                                        ; preds = %for.body43
  %30 = add nsw i64 %29, %indvars.iv506
  %31 = load i16** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16* %31, i64 %30
  %32 = load i16* %arrayidx49, align 2, !tbaa !4
  %conv = zext i16 %32 to i32
  %add50 = add nsw i32 %conv, %s1.0475
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %for.body43
  %s1.1 = phi i32 [ %add50, %if.then45 ], [ %s1.0475, %for.body43 ]
  %indvars.iv.next507.pre = add i64 %indvars.iv506, 1
  br i1 %tobool52, label %for.inc69, label %if.then53

if.then53:                                        ; preds = %if.end51
  %pos_x57 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next507.pre, i32 4
  %33 = load i32* %pos_x57, align 8, !tbaa !3
  %idxprom58 = sext i32 %33 to i64
  %pos_y62 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next507.pre, i32 5
  %34 = load i32* %pos_y62, align 4, !tbaa !3
  %idxprom63 = sext i32 %34 to i64
  %arrayidx64 = getelementptr inbounds i16** %2, i64 %idxprom63
  %35 = load i16** %arrayidx64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i16* %35, i64 %idxprom58
  %36 = load i16* %arrayidx65, align 2, !tbaa !4
  %conv66 = zext i16 %36 to i32
  %add67 = add nsw i32 %conv66, %s2.0474
  br label %for.inc69

for.inc69:                                        ; preds = %if.end51, %if.then53
  %s2.1 = phi i32 [ %add67, %if.then53 ], [ %s2.0474, %if.end51 ]
  %lftr.wideiv510 = trunc i64 %indvars.iv.next507.pre to i32
  %exitcond511 = icmp eq i32 %lftr.wideiv510, 16
  br i1 %exitcond511, label %for.end71, label %for.body43

for.end71:                                        ; preds = %for.inc69
  %tobool44.not = xor i1 %tobool44, true
  %or.cond = or i1 %tobool52, %tobool44.not
  br i1 %or.cond, label %if.end77, label %if.then74

if.then74:                                        ; preds = %for.end71
  %add75 = add i32 %s2.1, 16
  %add76 = add i32 %add75, %s1.1
  %div = sdiv i32 %add76, 32
  br label %if.end77

if.end77:                                         ; preds = %for.end71, %if.then74
  %s0.0 = phi i32 [ %div, %if.then74 ], [ 0, %for.end71 ]
  %or.cond457 = or i1 %tobool44, %tobool52
  br i1 %or.cond457, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end77
  %add82 = add nsw i32 %s2.1, 8
  %div83 = sdiv i32 %add82, 16
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end77
  %s0.1 = phi i32 [ %s0.0, %if.end77 ], [ %div83, %if.then81 ]
  %or.cond458 = and i1 %tobool44, %tobool52
  br i1 %or.cond458, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end84
  %add89 = add nsw i32 %s1.1, 8
  %div90 = sdiv i32 %add89, 16
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end84
  %s0.2 = phi i32 [ %div90, %if.then88 ], [ %s0.1, %if.end84 ]
  %or.cond460 = and i1 %tobool52, %tobool44.not
  br i1 %or.cond460, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end91
  %37 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 154
  %38 = load i32* %dc_pred_value, align 4, !tbaa !3
  br label %if.end96

if.end96:                                         ; preds = %if.end91, %if.then95
  %s0.3 = phi i32 [ %s0.2, %if.end91 ], [ %38, %if.then95 ]
  br label %for.body100

for.cond137.preheader:                            ; preds = %for.inc134
  %39 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %conv164 = trunc i32 %s0.3 to i16
  br label %for.cond141.preheader

for.body100:                                      ; preds = %for.inc134, %if.end96
  %indvars.iv500 = phi i64 [ 0, %if.end96 ], [ %indvars.iv.next501.pre, %for.inc134 ]
  br i1 %tobool44, label %if.then102, label %if.end114

if.then102:                                       ; preds = %for.body100
  %40 = add nsw i64 %29, %indvars.iv500
  %41 = load i16** %arrayidx48, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i16* %41, i64 %40
  %42 = load i16* %arrayidx109, align 2, !tbaa !4
  %conv110 = zext i16 %42 to i32
  %arrayidx113 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv500, i64 0
  store i32 %conv110, i32* %arrayidx113, align 8, !tbaa !3
  br label %if.end114

if.end114:                                        ; preds = %if.then102, %for.body100
  %indvars.iv.next501.pre = add i64 %indvars.iv500, 1
  br i1 %tobool52, label %for.inc134, label %if.then116

if.then116:                                       ; preds = %if.end114
  %pos_x120 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next501.pre, i32 4
  %43 = load i32* %pos_x120, align 8, !tbaa !3
  %idxprom121 = sext i32 %43 to i64
  %pos_y125 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next501.pre, i32 5
  %44 = load i32* %pos_y125, align 4, !tbaa !3
  %idxprom126 = sext i32 %44 to i64
  %arrayidx127 = getelementptr inbounds i16** %2, i64 %idxprom126
  %45 = load i16** %arrayidx127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i16* %45, i64 %idxprom121
  %46 = load i16* %arrayidx128, align 2, !tbaa !4
  %conv129 = zext i16 %46 to i32
  %arrayidx132 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv500, i64 1
  store i32 %conv129, i32* %arrayidx132, align 4, !tbaa !3
  br label %for.inc134

for.inc134:                                       ; preds = %if.end114, %if.then116
  %lftr.wideiv504 = trunc i64 %indvars.iv.next501.pre to i32
  %exitcond505 = icmp eq i32 %lftr.wideiv504, 16
  br i1 %exitcond505, label %for.cond137.preheader, label %for.body100

for.cond141.preheader:                            ; preds = %for.inc174, %for.cond137.preheader
  %indvars.iv496 = phi i64 [ 0, %for.cond137.preheader ], [ %indvars.iv.next497, %for.inc174 ]
  %arrayidx156 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv496, i64 1
  %47 = load i32* %arrayidx156, align 4, !tbaa !3
  %conv157 = trunc i32 %47 to i16
  br label %for.body144

for.body144:                                      ; preds = %for.body144, %for.cond141.preheader
  %indvars.iv492 = phi i64 [ 0, %for.cond141.preheader ], [ %indvars.iv.next493, %for.body144 ]
  %arrayidx147 = getelementptr inbounds [16 x [2 x i32]]* %s, i64 0, i64 %indvars.iv492, i64 0
  %48 = load i32* %arrayidx147, align 8, !tbaa !3
  %conv148 = trunc i32 %48 to i16
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 0, i64 %indvars.iv496, i64 %indvars.iv492
  store i16 %conv148, i16* %arrayidx153, align 2, !tbaa !4
  %arrayidx163 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 1, i64 %indvars.iv496, i64 %indvars.iv492
  store i16 %conv157, i16* %arrayidx163, align 2, !tbaa !4
  %arrayidx170 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 2, i64 %indvars.iv496, i64 %indvars.iv492
  store i16 %conv164, i16* %arrayidx170, align 2, !tbaa !4
  %indvars.iv.next493 = add i64 %indvars.iv492, 1
  %lftr.wideiv494 = trunc i64 %indvars.iv.next493 to i32
  %exitcond495 = icmp eq i32 %lftr.wideiv494, 16
  br i1 %exitcond495, label %for.inc174, label %for.body144

for.inc174:                                       ; preds = %for.body144
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %lftr.wideiv498 = trunc i64 %indvars.iv.next497 to i32
  %exitcond499 = icmp eq i32 %lftr.wideiv498, 16
  br i1 %exitcond499, label %for.end176, label %for.cond141.preheader

for.end176:                                       ; preds = %for.inc174
  %tobool180 = icmp eq i32 %left_up_avail.0, 0
  %or.cond463 = or i1 %or.cond, %tobool180
  br i1 %or.cond463, label %cleanup, label %for.cond183.preheader

for.cond183.preheader:                            ; preds = %for.end176
  %add191 = add nsw i32 %27, 7
  %49 = load i16** %arrayidx48, align 8, !tbaa !0
  %pos_x221 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 4
  %50 = bitcast i32* %pos_x221 to i64*
  %51 = load i64* %50, align 16
  %sext = shl i64 %51, 32
  %idxprom222 = ashr exact i64 %sext, 32
  %idxprom225 = ashr i64 %51, 32
  %arrayidx226 = getelementptr inbounds i16** %2, i64 %idxprom225
  %52 = sext i32 %add191 to i64
  br label %for.body186

for.body186:                                      ; preds = %if.end232, %for.cond183.preheader
  %indvars.iv485 = phi i64 [ 1, %for.cond183.preheader ], [ %indvars.iv.next486, %if.end232 ]
  %iv.0468 = phi i32 [ 0, %for.cond183.preheader ], [ %add261, %if.end232 ]
  %ih.0467 = phi i32 [ 0, %for.cond183.preheader ], [ %ih.1, %if.end232 ]
  %53 = trunc i64 %indvars.iv485 to i32
  %cmp187 = icmp slt i32 %53, 8
  %54 = add nsw i64 %52, %indvars.iv485
  %arrayidx197 = getelementptr inbounds i16* %49, i64 %54
  %55 = load i16* %arrayidx197, align 2, !tbaa !4
  %conv198 = zext i16 %55 to i32
  br i1 %cmp187, label %if.then189, label %if.else210

if.then189:                                       ; preds = %for.body186
  %sub201 = sub nsw i32 %add191, %53
  %idxprom202 = sext i32 %sub201 to i64
  %arrayidx206 = getelementptr inbounds i16* %49, i64 %idxprom202
  br label %if.end232

if.else210:                                       ; preds = %for.body186
  %56 = load i16** %arrayidx226, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds i16* %56, i64 %idxprom222
  br label %if.end232

if.end232:                                        ; preds = %if.else210, %if.then189
  %conv207.pn.in.in = phi i16* [ %arrayidx206, %if.then189 ], [ %arrayidx227, %if.else210 ]
  %conv207.pn.in = load i16* %conv207.pn.in.in, align 2
  %conv207.pn = zext i16 %conv207.pn.in to i32
  %sub208.pn = sub nsw i32 %conv198, %conv207.pn
  %mul.pn = mul nsw i32 %sub208.pn, %53
  %ih.1 = add nsw i32 %mul.pn, %ih.0467
  %57 = add nsw i64 %indvars.iv485, 8
  %pos_x236 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %57, i32 4
  %58 = load i32* %pos_x236, align 8, !tbaa !3
  %idxprom237 = sext i32 %58 to i64
  %pos_y241 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %57, i32 5
  %59 = load i32* %pos_y241, align 4, !tbaa !3
  %idxprom242 = sext i32 %59 to i64
  %arrayidx243 = getelementptr inbounds i16** %2, i64 %idxprom242
  %60 = load i16** %arrayidx243, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds i16* %60, i64 %idxprom237
  %61 = load i16* %arrayidx244, align 2, !tbaa !4
  %conv245 = zext i16 %61 to i32
  %62 = sub nsw i64 8, %indvars.iv485
  %pos_x249 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %62, i32 4
  %63 = load i32* %pos_x249, align 8, !tbaa !3
  %idxprom250 = sext i32 %63 to i64
  %pos_y254 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %62, i32 5
  %64 = load i32* %pos_y254, align 4, !tbaa !3
  %idxprom255 = sext i32 %64 to i64
  %arrayidx256 = getelementptr inbounds i16** %2, i64 %idxprom255
  %65 = load i16** %arrayidx256, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i16* %65, i64 %idxprom250
  %66 = load i16* %arrayidx257, align 2, !tbaa !4
  %conv258 = zext i16 %66 to i32
  %sub259 = sub nsw i32 %conv245, %conv258
  %mul260 = mul nsw i32 %sub259, %53
  %add261 = add nsw i32 %mul260, %iv.0468
  %indvars.iv.next486 = add i64 %indvars.iv485, 1
  %lftr.wideiv490 = trunc i64 %indvars.iv.next486 to i32
  %exitcond491 = icmp eq i32 %lftr.wideiv490, 9
  br i1 %exitcond491, label %for.end264, label %for.body186

for.end264:                                       ; preds = %if.end232
  %mul265 = mul nsw i32 %ih.1, 5
  %add266 = add nsw i32 %mul265, 32
  %shr = ashr i32 %add266, 6
  %mul267 = mul nsw i32 %add261, 5
  %add268 = add nsw i32 %mul267, 32
  %shr269 = ashr i32 %add268, 6
  %add271 = add nsw i32 %27, 15
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx276 = getelementptr inbounds i16* %49, i64 %idxprom272
  %67 = load i16* %arrayidx276, align 2, !tbaa !4
  %conv277 = zext i16 %67 to i32
  %pos_x279 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 16, i32 4
  %68 = bitcast i32* %pos_x279 to i64*
  %69 = load i64* %68, align 16
  %sext522 = shl i64 %69, 32
  %idxprom280 = ashr exact i64 %sext522, 32
  %idxprom283 = ashr i64 %69, 32
  %arrayidx284 = getelementptr inbounds i16** %2, i64 %idxprom283
  %70 = load i16** %arrayidx284, align 8, !tbaa !0
  %arrayidx285 = getelementptr inbounds i16* %70, i64 %idxprom280
  %71 = load i16* %arrayidx285, align 2, !tbaa !4
  %conv286 = zext i16 %71 to i32
  %add287 = add nsw i32 %conv286, %conv277
  %mul288 = shl nsw i32 %add287, 4
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 155
  %72 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %add299 = add i32 %mul288, 16
  br label %for.cond293.preheader

for.cond293.preheader:                            ; preds = %for.inc360, %for.end264
  %indvars.iv480 = phi i64 [ 0, %for.end264 ], [ %indvars.iv.next481, %for.inc360 ]
  %73 = add nsw i64 %indvars.iv480, 4294967289
  %74 = trunc i64 %73 to i32
  %mul301 = mul nsw i32 %74, %shr269
  %add302 = add i32 %add299, %mul301
  br label %for.body296

for.body296:                                      ; preds = %for.body296, %for.cond293.preheader
  %indvars.iv = phi i64 [ 0, %for.cond293.preheader ], [ %indvars.iv.next, %for.body296 ]
  %75 = add nsw i64 %indvars.iv, 4294967289
  %76 = trunc i64 %75 to i32
  %mul298 = mul nsw i32 %76, %shr
  %add303 = add i32 %add302, %mul298
  %div304 = sdiv i32 %add303, 32
  %cmp305 = icmp slt i32 %72, %div304
  %.div304 = select i1 %cmp305, i32 %72, i32 %div304
  %cmp320 = icmp slt i32 %.div304, 0
  %77 = trunc i32 %.div304 to i16
  %conv350 = select i1 %cmp320, i16 0, i16 %77
  %arrayidx356 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 42, i64 3, i64 %indvars.iv480, i64 %indvars.iv
  store i16 %conv350, i16* %arrayidx356, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc360, label %for.body296

for.inc360:                                       ; preds = %for.body296
  %indvars.iv.next481 = add i64 %indvars.iv480, 1
  %lftr.wideiv483 = trunc i64 %indvars.iv.next481 to i32
  %exitcond484 = icmp eq i32 %lftr.wideiv483, 16
  br i1 %exitcond484, label %cleanup, label %for.cond293.preheader

cleanup:                                          ; preds = %for.inc360, %for.end176
  call void @llvm.lifetime.end(i64 408, i8* %5) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
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
  %0 = bitcast [16 x [16 x i32]]* %M1 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = bitcast [4 x [4 x i32]]* %M4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x [4 x [4 x [4 x i32]]]]* %M0 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #1
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %cofDC = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 48
  %6 = load i32**** %cofDC, align 8, !tbaa !0
  %7 = load i32*** %6, align 8, !tbaa !0
  %8 = load i32** %7, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32** %7, i64 1
  %9 = load i32** %arrayidx5, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  %10 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 151
  %11 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add = sub i32 0, %11
  %cmp = icmp eq i32 %10, %add
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 160
  %12 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %12, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %add9 = add nsw i32 %11, %10
  %rem = srem i32 %add9, 6
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 164
  %opix_x = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 37
  %opix_y = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 38
  %14 = load i16*** @imgY_org, align 8, !tbaa !0
  %idxprom27 = sext i32 %new_intra_mode to i64
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.inc61, %land.end
  %indvars.iv1858 = phi i64 [ 0, %land.end ], [ %indvars.iv.next1859, %for.inc61 ]
  %15 = trunc i64 %indvars.iv1858 to i32
  %div49 = sdiv i32 %15, 4
  %idxprom50 = sext i32 %div49 to i64
  %rem51 = srem i32 %15, 4
  %idxprom52 = sext i32 %rem51 to i64
  br label %for.body18

for.cond64.preheader:                             ; preds = %for.inc61
  %div = sdiv i32 %add9, 6
  %add14 = add nsw i32 %div, 15
  br i1 %13, label %for.cond275.preheader, label %for.cond72.preheader.lr.ph

for.cond72.preheader.lr.ph:                       ; preds = %for.cond64.preheader
  %arrayidx146 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3
  %arrayidx147 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  br label %for.cond72.preheader

for.body18:                                       ; preds = %if.end, %for.cond16.preheader
  %indvars.iv1854 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next1855, %if.end ]
  %16 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body18
  %17 = load i32* %opix_x, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv1854 to i32
  %add19 = add nsw i32 %17, %18
  %idxprom20 = sext i32 %add19 to i64
  %19 = load i32* %opix_y, align 4, !tbaa !3
  %add21 = add nsw i32 %19, %15
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i16** %14, i64 %idxprom22
  %20 = load i16** %arrayidx23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i16* %20, i64 %idxprom20
  %21 = load i16* %arrayidx24, align 2, !tbaa !4
  %conv = zext i16 %21 to i32
  %arrayidx30 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1858, i64 %indvars.iv1854
  %22 = load i16* %arrayidx30, align 2, !tbaa !4
  %conv31 = zext i16 %22 to i32
  %sub32 = sub nsw i32 %conv, %conv31
  %arrayidx36 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1854, i64 %indvars.iv1858
  store i32 %sub32, i32* %arrayidx36, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %for.body18
  %arrayidx40 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 46, i64 %indvars.iv1854, i64 %indvars.iv1858
  %23 = load i32* %arrayidx40, align 4, !tbaa !3
  %arrayidx44 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1854, i64 %indvars.iv1858
  store i32 %23, i32* %arrayidx44, align 4, !tbaa !3
  %.pre1875 = trunc i64 %indvars.iv1854 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi = phi i32 [ %.pre1875, %if.else ], [ %18, %if.then ]
  %24 = phi i32 [ %23, %if.else ], [ %sub32, %if.then ]
  %div53 = sdiv i32 %.pre-phi, 4
  %idxprom54 = sext i32 %div53 to i64
  %rem55 = srem i32 %.pre-phi, 4
  %idxprom56 = sext i32 %rem55 to i64
  %arrayidx60 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom56, i64 %idxprom54, i64 %idxprom52, i64 %idxprom50
  store i32 %24, i32* %arrayidx60, align 4, !tbaa !3
  %indvars.iv.next1855 = add i64 %indvars.iv1854, 1
  %lftr.wideiv1856 = trunc i64 %indvars.iv.next1855 to i32
  %exitcond1857 = icmp eq i32 %lftr.wideiv1856, 16
  br i1 %exitcond1857, label %for.inc61, label %for.body18

for.inc61:                                        ; preds = %if.end
  %indvars.iv.next1859 = add i64 %indvars.iv1858, 1
  %lftr.wideiv1860 = trunc i64 %indvars.iv.next1859 to i32
  %exitcond1861 = icmp eq i32 %lftr.wideiv1860, 16
  br i1 %exitcond1861, label %for.cond64.preheader, label %for.cond16.preheader

for.cond72.preheader:                             ; preds = %for.cond72.preheader.lr.ph, %for.inc268
  %indvars.iv1852 = phi i64 [ 0, %for.cond72.preheader.lr.ph ], [ %indvars.iv.next1853, %for.inc268 ]
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.inc265, %for.cond72.preheader
  %indvars.iv1848 = phi i64 [ 0, %for.cond72.preheader ], [ %indvars.iv.next1849, %for.inc265 ]
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.end125, %for.cond76.preheader
  %indvars.iv1835 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next1836, %for.end125 ]
  br label %for.body83

for.body83:                                       ; preds = %for.body83, %for.cond80.preheader
  %indvars.iv1830 = phi i64 [ 0, %for.cond80.preheader ], [ %indvars.iv.next1831, %for.body83 ]
  %25 = sub nsw i64 3, %indvars.iv1830
  %arrayidx92 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1830, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  %26 = load i32* %arrayidx92, align 4, !tbaa !3
  %arrayidx100 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %25, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  %27 = load i32* %arrayidx100, align 4, !tbaa !3
  %add101 = add nsw i32 %27, %26
  %arrayidx103 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1830
  store i32 %add101, i32* %arrayidx103, align 4, !tbaa !3
  %sub120 = sub nsw i32 %26, %27
  %arrayidx122 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %25
  store i32 %sub120, i32* %arrayidx122, align 4, !tbaa !3
  %indvars.iv.next1831 = add i64 %indvars.iv1830, 1
  %lftr.wideiv1833 = trunc i64 %indvars.iv.next1831 to i32
  %exitcond1834 = icmp eq i32 %lftr.wideiv1833, 2
  br i1 %exitcond1834, label %for.end125, label %for.body83

for.end125:                                       ; preds = %for.body83
  %28 = bitcast [4 x i32]* %M5 to i64*
  %29 = load i64* %28, align 16
  %30 = trunc i64 %29 to i32
  %31 = lshr i64 %29, 32
  %32 = trunc i64 %31 to i32
  %add128 = add nsw i32 %32, %30
  %arrayidx135 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  store i32 %add128, i32* %arrayidx135, align 4, !tbaa !3
  %sub138 = sub nsw i32 %30, %32
  %arrayidx145 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 2, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  store i32 %sub138, i32* %arrayidx145, align 4, !tbaa !3
  %33 = load i32* %arrayidx146, align 4, !tbaa !3
  %mul = shl i32 %33, 1
  %34 = bitcast i32* %arrayidx147 to i64*
  %35 = load i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %add148 = add nsw i32 %mul, %36
  %arrayidx155 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 1, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  store i32 %add148, i32* %arrayidx155, align 4, !tbaa !3
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  %mul158 = shl nsw i32 %36, 1
  %sub159 = sub nsw i32 %38, %mul158
  %arrayidx166 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 3, i64 %indvars.iv1848, i64 %indvars.iv1835, i64 %indvars.iv1852
  store i32 %sub159, i32* %arrayidx166, align 4, !tbaa !3
  %indvars.iv.next1836 = add i64 %indvars.iv1835, 1
  %lftr.wideiv1837 = trunc i64 %indvars.iv.next1836 to i32
  %exitcond1838 = icmp eq i32 %lftr.wideiv1837, 4
  br i1 %exitcond1838, label %for.cond174.preheader, label %for.cond80.preheader

for.cond174.preheader:                            ; preds = %for.end125, %for.end219
  %indvars.iv1844 = phi i64 [ %indvars.iv.next1845, %for.end219 ], [ 0, %for.end125 ]
  br label %for.body177

for.body177:                                      ; preds = %for.body177, %for.cond174.preheader
  %indvars.iv1839 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next1840, %for.body177 ]
  %39 = sub nsw i64 3, %indvars.iv1839
  %arrayidx186 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 %indvars.iv1839, i64 %indvars.iv1852
  %40 = load i32* %arrayidx186, align 4, !tbaa !3
  %arrayidx194 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 %39, i64 %indvars.iv1852
  %41 = load i32* %arrayidx194, align 4, !tbaa !3
  %add195 = add nsw i32 %41, %40
  %arrayidx197 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1839
  store i32 %add195, i32* %arrayidx197, align 4, !tbaa !3
  %sub214 = sub nsw i32 %40, %41
  %arrayidx216 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %39
  store i32 %sub214, i32* %arrayidx216, align 4, !tbaa !3
  %indvars.iv.next1840 = add i64 %indvars.iv1839, 1
  %lftr.wideiv1842 = trunc i64 %indvars.iv.next1840 to i32
  %exitcond1843 = icmp eq i32 %lftr.wideiv1842, 2
  br i1 %exitcond1843, label %for.end219, label %for.body177

for.end219:                                       ; preds = %for.body177
  %42 = load i64* %28, align 16
  %43 = trunc i64 %42 to i32
  %44 = lshr i64 %42, 32
  %45 = trunc i64 %44 to i32
  %add222 = add nsw i32 %45, %43
  %arrayidx229 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 0, i64 %indvars.iv1852
  store i32 %add222, i32* %arrayidx229, align 4, !tbaa !3
  %sub232 = sub nsw i32 %43, %45
  %arrayidx239 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 2, i64 %indvars.iv1852
  store i32 %sub232, i32* %arrayidx239, align 4, !tbaa !3
  %46 = load i32* %arrayidx146, align 4, !tbaa !3
  %mul241 = shl i32 %46, 1
  %47 = load i64* %34, align 8
  %48 = trunc i64 %47 to i32
  %add243 = add nsw i32 %mul241, %48
  %arrayidx250 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 1, i64 %indvars.iv1852
  store i32 %add243, i32* %arrayidx250, align 4, !tbaa !3
  %49 = lshr i64 %47, 32
  %50 = trunc i64 %49 to i32
  %mul253 = shl nsw i32 %48, 1
  %sub254 = sub nsw i32 %50, %mul253
  %arrayidx261 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1844, i64 %indvars.iv1848, i64 3, i64 %indvars.iv1852
  store i32 %sub254, i32* %arrayidx261, align 4, !tbaa !3
  %indvars.iv.next1845 = add i64 %indvars.iv1844, 1
  %lftr.wideiv1846 = trunc i64 %indvars.iv.next1845 to i32
  %exitcond1847 = icmp eq i32 %lftr.wideiv1846, 4
  br i1 %exitcond1847, label %for.inc265, label %for.cond174.preheader

for.inc265:                                       ; preds = %for.end219
  %indvars.iv.next1849 = add i64 %indvars.iv1848, 1
  %lftr.wideiv1850 = trunc i64 %indvars.iv.next1849 to i32
  %exitcond1851 = icmp eq i32 %lftr.wideiv1850, 4
  br i1 %exitcond1851, label %for.inc268, label %for.cond76.preheader

for.inc268:                                       ; preds = %for.inc265
  %indvars.iv.next1853 = add i64 %indvars.iv1852, 1
  %51 = trunc i64 %indvars.iv1852 to i32
  %cmp65.not = icmp sgt i32 %51, 2
  br i1 %cmp65.not, label %for.cond275.preheader, label %for.cond72.preheader

for.cond275.preheader:                            ; preds = %for.cond64.preheader, %for.inc268, %for.inc292
  %indvars.iv1826 = phi i64 [ %indvars.iv.next1827, %for.inc292 ], [ 0, %for.inc268 ], [ 0, %for.cond64.preheader ]
  br label %for.body278

for.cond295.preheader:                            ; preds = %for.inc292
  br i1 %13, label %for.cond430.preheader, label %for.cond304.preheader.lr.ph

for.cond304.preheader.lr.ph:                      ; preds = %for.cond295.preheader
  %arrayidx346 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3
  %arrayidx347 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  br label %for.cond304.preheader

for.body278:                                      ; preds = %for.body278, %for.cond275.preheader
  %indvars.iv1822 = phi i64 [ 0, %for.cond275.preheader ], [ %indvars.iv.next1823, %for.body278 ]
  %arrayidx284 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1822, i64 0, i64 %indvars.iv1826
  %52 = load i32* %arrayidx284, align 4, !tbaa !3
  %arrayidx288 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1822, i64 %indvars.iv1826
  store i32 %52, i32* %arrayidx288, align 4, !tbaa !3
  %indvars.iv.next1823 = add i64 %indvars.iv1822, 1
  %lftr.wideiv1824 = trunc i64 %indvars.iv.next1823 to i32
  %exitcond1825 = icmp eq i32 %lftr.wideiv1824, 4
  br i1 %exitcond1825, label %for.inc292, label %for.body278

for.inc292:                                       ; preds = %for.body278
  %indvars.iv.next1827 = add i64 %indvars.iv1826, 1
  %lftr.wideiv1828 = trunc i64 %indvars.iv.next1827 to i32
  %exitcond1829 = icmp eq i32 %lftr.wideiv1828, 4
  br i1 %exitcond1829, label %for.cond295.preheader, label %for.cond275.preheader

for.cond304.preheader:                            ; preds = %for.cond304.preheader.lr.ph, %for.end333
  %indvars.iv1820 = phi i64 [ 0, %for.cond304.preheader.lr.ph ], [ %indvars.iv.next1821, %for.end333 ]
  br label %for.body307

for.cond361.preheader:                            ; preds = %for.end333
  br i1 %13, label %for.cond430.preheader, label %for.cond370.preheader.lr.ph

for.cond370.preheader.lr.ph:                      ; preds = %for.cond361.preheader
  %arrayidx413 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 3
  %arrayidx414 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  br label %for.cond370.preheader

for.body307:                                      ; preds = %for.body307, %for.cond304.preheader
  %indvars.iv1815 = phi i64 [ 0, %for.cond304.preheader ], [ %indvars.iv.next1816, %for.body307 ]
  %53 = sub nsw i64 3, %indvars.iv1815
  %arrayidx312 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1815, i64 %indvars.iv1820
  %54 = load i32* %arrayidx312, align 4, !tbaa !3
  %arrayidx316 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %53, i64 %indvars.iv1820
  %55 = load i32* %arrayidx316, align 4, !tbaa !3
  %add317 = add nsw i32 %55, %54
  %arrayidx319 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1815
  store i32 %add317, i32* %arrayidx319, align 4, !tbaa !3
  %sub328 = sub nsw i32 %54, %55
  %arrayidx330 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %53
  store i32 %sub328, i32* %arrayidx330, align 4, !tbaa !3
  %indvars.iv.next1816 = add i64 %indvars.iv1815, 1
  %lftr.wideiv1818 = trunc i64 %indvars.iv.next1816 to i32
  %exitcond1819 = icmp eq i32 %lftr.wideiv1818, 2
  br i1 %exitcond1819, label %for.end333, label %for.body307

for.end333:                                       ; preds = %for.body307
  %56 = bitcast [4 x i32]* %M5 to i64*
  %57 = load i64* %56, align 16
  %58 = trunc i64 %57 to i32
  %59 = lshr i64 %57, 32
  %60 = trunc i64 %59 to i32
  %add336 = add nsw i32 %60, %58
  %arrayidx339 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 0, i64 %indvars.iv1820
  store i32 %add336, i32* %arrayidx339, align 4, !tbaa !3
  %sub342 = sub nsw i32 %58, %60
  %arrayidx345 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 2, i64 %indvars.iv1820
  store i32 %sub342, i32* %arrayidx345, align 4, !tbaa !3
  %61 = load i32* %arrayidx346, align 4, !tbaa !3
  %62 = bitcast i32* %arrayidx347 to i64*
  %63 = load i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %add348 = add nsw i32 %64, %61
  %arrayidx351 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 1, i64 %indvars.iv1820
  store i32 %add348, i32* %arrayidx351, align 4, !tbaa !3
  %65 = lshr i64 %63, 32
  %66 = trunc i64 %65 to i32
  %sub354 = sub nsw i32 %66, %64
  %arrayidx357 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 3, i64 %indvars.iv1820
  store i32 %sub354, i32* %arrayidx357, align 4, !tbaa !3
  %indvars.iv.next1821 = add i64 %indvars.iv1820, 1
  %67 = trunc i64 %indvars.iv1820 to i32
  %cmp296.not = icmp sgt i32 %67, 2
  br i1 %cmp296.not, label %for.cond361.preheader, label %for.cond304.preheader

for.cond370.preheader:                            ; preds = %for.cond370.preheader.lr.ph, %for.end399
  %indvars.iv1813 = phi i64 [ 0, %for.cond370.preheader.lr.ph ], [ %indvars.iv.next1814, %for.end399 ]
  br label %for.body373

for.cond430.preheader:                            ; preds = %for.cond295.preheader, %for.end399, %for.cond361.preheader
  %idxprom469 = sext i32 %rem to i64
  %arrayidx472 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 0, i64 0
  %idxprom474 = sext i32 %div to i64
  %arrayidx477 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom474, i64 0, i64 0
  %add479 = add nsw i32 %div, 16
  br label %for.body433

for.body373:                                      ; preds = %for.body373, %for.cond370.preheader
  %indvars.iv1808 = phi i64 [ 0, %for.cond370.preheader ], [ %indvars.iv.next1809, %for.body373 ]
  %68 = sub nsw i64 3, %indvars.iv1808
  %arrayidx378 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 %indvars.iv1808
  %69 = load i32* %arrayidx378, align 4, !tbaa !3
  %arrayidx382 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 %68
  %70 = load i32* %arrayidx382, align 4, !tbaa !3
  %add383 = add nsw i32 %70, %69
  %arrayidx385 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1808
  store i32 %add383, i32* %arrayidx385, align 4, !tbaa !3
  %sub394 = sub nsw i32 %69, %70
  %arrayidx396 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %68
  store i32 %sub394, i32* %arrayidx396, align 4, !tbaa !3
  %indvars.iv.next1809 = add i64 %indvars.iv1808, 1
  %lftr.wideiv1811 = trunc i64 %indvars.iv.next1809 to i32
  %exitcond1812 = icmp eq i32 %lftr.wideiv1811, 2
  br i1 %exitcond1812, label %for.end399, label %for.body373

for.end399:                                       ; preds = %for.body373
  %71 = bitcast [4 x i32]* %M5 to i64*
  %72 = load i64* %71, align 16
  %73 = trunc i64 %72 to i32
  %74 = lshr i64 %72, 32
  %75 = trunc i64 %74 to i32
  %add402 = add nsw i32 %75, %73
  %shr = ashr i32 %add402, 1
  %arrayidx405 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 0
  store i32 %shr, i32* %arrayidx405, align 16, !tbaa !3
  %sub408 = sub nsw i32 %73, %75
  %shr409 = ashr i32 %sub408, 1
  %arrayidx412 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 2
  store i32 %shr409, i32* %arrayidx412, align 8, !tbaa !3
  %76 = load i32* %arrayidx413, align 4, !tbaa !3
  %77 = bitcast i32* %arrayidx414 to i64*
  %78 = load i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %add415 = add nsw i32 %79, %76
  %shr416 = ashr i32 %add415, 1
  %arrayidx419 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 1
  store i32 %shr416, i32* %arrayidx419, align 4, !tbaa !3
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  %sub422 = sub nsw i32 %81, %79
  %shr423 = ashr i32 %sub422, 1
  %arrayidx426 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1813, i64 3
  store i32 %shr423, i32* %arrayidx426, align 4, !tbaa !3
  %indvars.iv.next1814 = add i64 %indvars.iv1813, 1
  %82 = trunc i64 %indvars.iv1813 to i32
  %cmp362.not = icmp sgt i32 %82, 2
  br i1 %cmp362.not, label %for.cond430.preheader, label %for.cond370.preheader

for.body433:                                      ; preds = %for.inc520.for.body433_crit_edge, %for.cond430.preheader
  %83 = phi %struct.ImageParameters* [ %3, %for.cond430.preheader ], [ %.pre1869, %for.inc520.for.body433_crit_edge ]
  %indvars.iv1804 = phi i64 [ 0, %for.cond430.preheader ], [ %indvars.iv.next1805, %for.inc520.for.body433_crit_edge ]
  %run.01711 = phi i32 [ -1, %for.cond430.preheader ], [ %run.1, %for.inc520.for.body433_crit_edge ]
  %scan_pos.01710 = phi i32 [ 0, %for.cond430.preheader ], [ %scan_pos.1, %for.inc520.for.body433_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 100
  %84 = load i32* %field_picture, align 4, !tbaa !3
  %tobool434 = icmp eq i32 %84, 0
  br i1 %tobool434, label %lor.lhs.false, label %if.end455

lor.lhs.false:                                    ; preds = %for.body433
  %85 = load i32* @mb_adaptive, align 4, !tbaa !3
  %tobool435 = icmp eq i32 %85, 0
  br i1 %tobool435, label %if.else446, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 81
  %86 = load i32* %field_mode, align 4, !tbaa !3
  %tobool436 = icmp eq i32 %86, 0
  br i1 %tobool436, label %if.else446, label %if.end455

if.else446:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end455

if.end455:                                        ; preds = %for.body433, %land.lhs.true, %if.else446
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else446 ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body433 ]
  %i.6.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1804, i64 0
  %j.6.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1804, i64 1
  %i.6.in = load i8* %i.6.in.in, align 2
  %j.6.in = load i8* %j.6.in.in, align 1
  %inc456 = add nsw i32 %run.01711, 1
  %idxprom459 = zext i8 %j.6.in to i64
  %idxprom460 = zext i8 %i.6.in to i64
  %arrayidx462 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %idxprom460, i64 %idxprom459
  %87 = load i32* %arrayidx462, align 4, !tbaa !3
  %ispos1672 = icmp sgt i32 %87, -1
  %neg1673 = sub i32 0, %87
  %88 = select i1 %ispos1672, i32 %87, i32 %neg1673
  br i1 %13, label %if.end481, label %if.else463

if.else463:                                       ; preds = %if.end455
  %89 = load i32* %arrayidx472, align 4, !tbaa !3
  %mul473 = mul nsw i32 %89, %88
  %90 = load i32* %arrayidx477, align 4, !tbaa !3
  %shl = shl i32 %90, 1
  %add478 = add nsw i32 %shl, %mul473
  %shr480 = ashr i32 %add478, %add479
  br label %if.end481

if.end481:                                        ; preds = %if.end455, %if.else463
  %level.0 = phi i32 [ %shr480, %if.else463 ], [ %88, %if.end455 ]
  %91 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 59
  %92 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp482 = icmp eq i32 %92, 0
  br i1 %cmp482, label %land.lhs.true484, label %if.end493

land.lhs.true484:                                 ; preds = %if.end481
  %qp485 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 10
  %93 = load i32* %qp485, align 4, !tbaa !3
  %cmp486 = icmp slt i32 %93, 10
  %cmp489 = icmp sgt i32 %level.0, 2063
  %or.cond = and i1 %cmp486, %cmp489
  %.level.0 = select i1 %or.cond, i32 2063, i32 %level.0
  br label %if.end493

if.end493:                                        ; preds = %land.lhs.true484, %if.end481
  %level.1 = phi i32 [ %level.0, %if.end481 ], [ %.level.0, %land.lhs.true484 ]
  %cmp494 = icmp eq i32 %level.1, 0
  br i1 %cmp494, label %if.end507, label %if.then496

if.then496:                                       ; preds = %if.end493
  %call501 = call i32 @sign(i32 %level.1, i32 %87) #3
  %idxprom502 = sext i32 %scan_pos.01710 to i64
  %arrayidx503 = getelementptr inbounds i32* %8, i64 %idxprom502
  store i32 %call501, i32* %arrayidx503, align 4, !tbaa !3
  %arrayidx505 = getelementptr inbounds i32* %9, i64 %idxprom502
  store i32 %inc456, i32* %arrayidx505, align 4, !tbaa !3
  %inc506 = add nsw i32 %scan_pos.01710, 1
  br label %if.end507

if.end507:                                        ; preds = %if.end493, %if.then496
  %scan_pos.1 = phi i32 [ %inc506, %if.then496 ], [ %scan_pos.01710, %if.end493 ]
  %run.1 = phi i32 [ -1, %if.then496 ], [ %inc456, %if.end493 ]
  br i1 %13, label %for.inc520, label %if.then509

if.then509:                                       ; preds = %if.end507
  %call514 = call i32 @sign(i32 %level.1, i32 %87) #3
  store i32 %call514, i32* %arrayidx462, align 4, !tbaa !3
  br label %for.inc520

for.inc520:                                       ; preds = %if.end507, %if.then509
  %indvars.iv.next1805 = add i64 %indvars.iv1804, 1
  %lftr.wideiv1806 = trunc i64 %indvars.iv.next1805 to i32
  %exitcond1807 = icmp eq i32 %lftr.wideiv1806, 16
  br i1 %exitcond1807, label %for.end522, label %for.inc520.for.body433_crit_edge

for.inc520.for.body433_crit_edge:                 ; preds = %for.inc520
  %.pre1869 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body433

for.end522:                                       ; preds = %for.inc520
  %idxprom523 = sext i32 %scan_pos.1 to i64
  %arrayidx524 = getelementptr inbounds i32* %8, i64 %idxprom523
  store i32 0, i32* %arrayidx524, align 4, !tbaa !3
  br i1 %13, label %for.cond592.preheader.for.cond724.preheader_crit_edge, label %for.cond534.preheader.lr.ph

for.cond534.preheader.lr.ph:                      ; preds = %for.end522
  %arrayidx548 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  %arrayidx550 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0
  %arrayidx554 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1
  %arrayidx558 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2
  %arrayidx562 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3
  br label %for.cond534.preheader

for.cond534.preheader:                            ; preds = %for.cond534.preheader.lr.ph, %for.inc589
  %indvars.iv1802 = phi i64 [ 0, %for.cond534.preheader.lr.ph ], [ %indvars.iv.next1803, %for.inc589 ]
  br label %for.body537

for.cond592.preheader:                            ; preds = %for.inc589
  br i1 %13, label %for.cond592.preheader.for.cond724.preheader_crit_edge, label %for.cond601.preheader.lr.ph

for.cond592.preheader.for.cond724.preheader_crit_edge: ; preds = %for.end522, %for.cond592.preheader
  %arrayidx1003.pre = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 0
  %arrayidx1004.pre = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  %arrayidx1006.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0
  %arrayidx1010.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1
  %arrayidx1015.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2
  %arrayidx1020.pre = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3
  br label %for.cond724.preheader

for.cond601.preheader.lr.ph:                      ; preds = %for.cond592.preheader
  %arrayidx614 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 0
  %arrayidx615 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 2
  %arrayidx617 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 0
  %arrayidx621 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 1
  %arrayidx625 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 2
  %arrayidx629 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 3
  %cmp635 = icmp slt i32 %add9, 36
  %arrayidx646 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 0, i64 0
  %94 = load i32* %arrayidx646, align 4, !tbaa !3
  %sub648 = sub nsw i32 5, %div
  %shl649 = shl i32 1, %sub648
  %sub651 = sub nsw i32 6, %div
  %sub691 = add nsw i32 %div, -6
  br label %for.cond601.preheader

for.body537:                                      ; preds = %for.body537, %for.cond534.preheader
  %indvars.iv1793 = phi i64 [ 0, %for.cond534.preheader ], [ %indvars.iv.next1794, %for.body537 ]
  %arrayidx541 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1793, i64 %indvars.iv1802
  %95 = load i32* %arrayidx541, align 4, !tbaa !3
  %arrayidx543 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1793
  store i32 %95, i32* %arrayidx543, align 4, !tbaa !3
  %indvars.iv.next1794 = add i64 %indvars.iv1793, 1
  %lftr.wideiv1795 = trunc i64 %indvars.iv.next1794 to i32
  %exitcond1796 = icmp eq i32 %lftr.wideiv1795, 4
  br i1 %exitcond1796, label %for.end546, label %for.body537

for.end546:                                       ; preds = %for.body537
  %96 = bitcast [4 x i32]* %M5 to i64*
  %97 = load i64* %96, align 16
  %98 = trunc i64 %97 to i32
  %99 = bitcast i32* %arrayidx548 to i64*
  %100 = load i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %add549 = add nsw i32 %101, %98
  store i32 %add549, i32* %arrayidx550, align 16, !tbaa !3
  %sub553 = sub nsw i32 %98, %101
  store i32 %sub553, i32* %arrayidx554, align 4, !tbaa !3
  %102 = lshr i64 %97, 32
  %103 = trunc i64 %102 to i32
  %104 = lshr i64 %100, 32
  %105 = trunc i64 %104 to i32
  %sub557 = sub nsw i32 %103, %105
  store i32 %sub557, i32* %arrayidx558, align 8, !tbaa !3
  %add561 = add nsw i32 %105, %103
  store i32 %add561, i32* %arrayidx562, align 4, !tbaa !3
  br label %for.body566

for.body566:                                      ; preds = %for.body566.for.body566_crit_edge, %for.end546
  %106 = phi i32 [ %add549, %for.end546 ], [ %.pre1874, %for.body566.for.body566_crit_edge ]
  %indvars.iv1797 = phi i64 [ 0, %for.end546 ], [ %indvars.iv.next1798, %for.body566.for.body566_crit_edge ]
  %107 = sub nsw i64 3, %indvars.iv1797
  %arrayidx571 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %107
  %108 = load i32* %arrayidx571, align 4, !tbaa !3
  %add572 = add nsw i32 %108, %106
  %arrayidx576 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1797, i64 %indvars.iv1802
  store i32 %add572, i32* %arrayidx576, align 4, !tbaa !3
  %sub581 = sub nsw i32 %106, %108
  %arrayidx585 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %107, i64 %indvars.iv1802
  store i32 %sub581, i32* %arrayidx585, align 4, !tbaa !3
  %indvars.iv.next1798 = add i64 %indvars.iv1797, 1
  %lftr.wideiv1800 = trunc i64 %indvars.iv.next1798 to i32
  %exitcond1801 = icmp eq i32 %lftr.wideiv1800, 2
  br i1 %exitcond1801, label %for.inc589, label %for.body566.for.body566_crit_edge

for.body566.for.body566_crit_edge:                ; preds = %for.body566
  %arrayidx569.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1798
  %.pre1874 = load i32* %arrayidx569.phi.trans.insert, align 4, !tbaa !3
  br label %for.body566

for.inc589:                                       ; preds = %for.body566
  %indvars.iv.next1803 = add i64 %indvars.iv1802, 1
  %109 = trunc i64 %indvars.iv1802 to i32
  %cmp526.not = icmp sgt i32 %109, 2
  br i1 %cmp526.not, label %for.cond592.preheader, label %for.cond534.preheader

for.cond601.preheader:                            ; preds = %for.cond601.preheader.lr.ph, %for.inc721
  %indvars.iv1791 = phi i64 [ 0, %for.cond601.preheader.lr.ph ], [ %indvars.iv.next1792, %for.inc721 ]
  %scevgep = getelementptr [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv1791, i64 0
  %scevgep1785 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %M51784, i8* %scevgep1785, i64 16, i32 16, i1 false)
  %110 = bitcast [4 x i32]* %M5 to i64*
  %111 = load i64* %110, align 16
  %112 = trunc i64 %111 to i32
  %113 = bitcast i32* %arrayidx615 to i64*
  %114 = load i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %add616 = add nsw i32 %115, %112
  store i32 %add616, i32* %arrayidx617, align 16, !tbaa !3
  %sub620 = sub nsw i32 %112, %115
  store i32 %sub620, i32* %arrayidx621, align 4, !tbaa !3
  %116 = lshr i64 %111, 32
  %117 = trunc i64 %116 to i32
  %118 = lshr i64 %114, 32
  %119 = trunc i64 %118 to i32
  %sub624 = sub nsw i32 %117, %119
  store i32 %sub624, i32* %arrayidx625, align 8, !tbaa !3
  %add628 = add nsw i32 %119, %117
  store i32 %add628, i32* %arrayidx629, align 4, !tbaa !3
  br label %for.body633

for.cond724.preheader:                            ; preds = %for.inc721, %for.cond592.preheader.for.cond724.preheader_crit_edge
  %arrayidx1020.pre-phi = phi i32* [ %arrayidx1020.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx629, %for.inc721 ]
  %arrayidx1015.pre-phi = phi i32* [ %arrayidx1015.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx625, %for.inc721 ]
  %arrayidx1010.pre-phi = phi i32* [ %arrayidx1010.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx621, %for.inc721 ]
  %arrayidx1006.pre-phi = phi i32* [ %arrayidx1006.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx617, %for.inc721 ]
  %arrayidx1004.pre-phi = phi i32* [ %arrayidx1004.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx615, %for.inc721 ]
  %arrayidx1003.pre-phi = phi i32* [ %arrayidx1003.pre, %for.cond592.preheader.for.cond724.preheader_crit_edge ], [ %arrayidx614, %for.inc721 ]
  %cmp848 = icmp slt i32 %add9, 24
  %sub858 = sub nsw i32 3, %div
  %shl859 = shl i32 1, %sub858
  %sub861 = sub nsw i32 4, %div
  %sub879 = add nsw i32 %div, -4
  br label %for.cond728.preheader

for.body633:                                      ; preds = %for.inc718.for.body633_crit_edge, %for.cond601.preheader
  %120 = phi i32 [ %add616, %for.cond601.preheader ], [ %.pre1873, %for.inc718.for.body633_crit_edge ]
  %indvars.iv1786 = phi i64 [ 0, %for.cond601.preheader ], [ %indvars.iv.next1787, %for.inc718.for.body633_crit_edge ]
  %121 = sub nsw i64 3, %indvars.iv1786
  %arrayidx641 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %121
  %122 = load i32* %arrayidx641, align 4, !tbaa !3
  %add642 = add nsw i32 %122, %120
  %mul647 = mul nsw i32 %add642, %94
  br i1 %cmp635, label %if.then637, label %if.else680

if.then637:                                       ; preds = %for.body633
  %add650 = add nsw i32 %mul647, %shl649
  %shr652 = ashr i32 %add650, %sub651
  %arrayidx658 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %indvars.iv1786
  store i32 %shr652, i32* %arrayidx658, align 4, !tbaa !3
  %sub663 = sub nsw i32 %120, %122
  %mul668 = mul nsw i32 %sub663, %94
  %add671 = add nsw i32 %mul668, %shl649
  %shr673 = ashr i32 %add671, %sub651
  %arrayidx679 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %121
  store i32 %shr673, i32* %arrayidx679, align 4, !tbaa !3
  br label %for.inc718

if.else680:                                       ; preds = %for.body633
  %shl692 = shl i32 %mul647, %sub691
  %arrayidx698 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %indvars.iv1786
  store i32 %shl692, i32* %arrayidx698, align 4, !tbaa !3
  %sub703 = sub nsw i32 %120, %122
  %mul708 = mul nsw i32 %sub703, %94
  %shl710 = shl i32 %mul708, %sub691
  %arrayidx716 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv1791, i64 0, i64 %121
  store i32 %shl710, i32* %arrayidx716, align 4, !tbaa !3
  br label %for.inc718

for.inc718:                                       ; preds = %if.then637, %if.else680
  %indvars.iv.next1787 = add i64 %indvars.iv1786, 1
  %lftr.wideiv1789 = trunc i64 %indvars.iv.next1787 to i32
  %exitcond1790 = icmp eq i32 %lftr.wideiv1789, 2
  br i1 %exitcond1790, label %for.inc721, label %for.inc718.for.body633_crit_edge

for.inc718.for.body633_crit_edge:                 ; preds = %for.inc718
  %arrayidx639.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1787
  %.pre1873 = load i32* %arrayidx639.phi.trans.insert, align 4, !tbaa !3
  br label %for.body633

for.inc721:                                       ; preds = %for.inc718
  %indvars.iv.next1792 = add i64 %indvars.iv1791, 1
  %123 = trunc i64 %indvars.iv1791 to i32
  %cmp593.not = icmp sgt i32 %123, 2
  br i1 %cmp593.not, label %for.cond724.preheader, label %for.cond601.preheader

for.cond728.preheader:                            ; preds = %for.inc1061, %for.cond724.preheader
  %indvars.iv1776 = phi i64 [ 0, %for.cond724.preheader ], [ %indvars.iv.next1777, %for.inc1061 ]
  %ac_coef.01700 = phi i32 [ 0, %for.cond724.preheader ], [ %ac_coef.3, %for.inc1061 ]
  %124 = trunc i64 %indvars.iv1776 to i32
  %div732 = sdiv i32 %124, 2
  %mul733 = shl i32 %div732, 1
  %rem736 = srem i32 %124, 2
  %mul737 = shl i32 %rem736, 1
  br label %for.body731

for.body731:                                      ; preds = %for.inc1058, %for.cond728.preheader
  %indvars.iv1772 = phi i64 [ 0, %for.cond728.preheader ], [ %indvars.iv.next1773, %for.inc1058 ]
  %ac_coef.11698 = phi i32 [ %ac_coef.01700, %for.cond728.preheader ], [ %ac_coef.3, %for.inc1058 ]
  %125 = trunc i64 %indvars.iv1772 to i32
  %div734 = sdiv i32 %125, 2
  %add735 = add nsw i32 %mul733, %div734
  %rem738 = srem i32 %125, 2
  %add739 = add nsw i32 %mul737, %rem738
  %idxprom740 = sext i32 %add739 to i64
  %idxprom741 = sext i32 %add735 to i64
  %126 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 47
  %127 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx742 = getelementptr inbounds i32**** %127, i64 %idxprom741
  %128 = load i32**** %arrayidx742, align 8, !tbaa !0
  %arrayidx743 = getelementptr inbounds i32*** %128, i64 %idxprom740
  %129 = load i32*** %arrayidx743, align 8, !tbaa !0
  %130 = load i32** %129, align 8, !tbaa !0
  %arrayidx750 = getelementptr inbounds i32** %129, i64 1
  %131 = load i32** %arrayidx750, align 8, !tbaa !0
  br label %for.body754

for.body754:                                      ; preds = %for.inc891.for.body754_crit_edge, %for.body731
  %132 = phi %struct.ImageParameters* [ %126, %for.body731 ], [ %.pre1870, %for.inc891.for.body754_crit_edge ]
  %indvars.iv1746 = phi i64 [ 1, %for.body731 ], [ %indvars.iv.next1747, %for.inc891.for.body754_crit_edge ]
  %run.21691 = phi i32 [ -1, %for.body731 ], [ %run.3, %for.inc891.for.body754_crit_edge ]
  %scan_pos.21690 = phi i32 [ 0, %for.body731 ], [ %scan_pos.3, %for.inc891.for.body754_crit_edge ]
  %ac_coef.21687 = phi i32 [ %ac_coef.11698, %for.body731 ], [ %ac_coef.3, %for.inc891.for.body754_crit_edge ]
  %field_picture755 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 100
  %133 = load i32* %field_picture755, align 4, !tbaa !3
  %tobool756 = icmp eq i32 %133, 0
  br i1 %tobool756, label %lor.lhs.false757, label %if.end780

lor.lhs.false757:                                 ; preds = %for.body754
  %134 = load i32* @mb_adaptive, align 4, !tbaa !3
  %tobool758 = icmp eq i32 %134, 0
  br i1 %tobool758, label %if.else771, label %land.lhs.true759

land.lhs.true759:                                 ; preds = %lor.lhs.false757
  %field_mode760 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 81
  %135 = load i32* %field_mode760, align 4, !tbaa !3
  %tobool761 = icmp eq i32 %135, 0
  br i1 %tobool761, label %if.else771, label %if.end780

if.else771:                                       ; preds = %land.lhs.true759, %lor.lhs.false757
  br label %if.end780

if.end780:                                        ; preds = %for.body754, %land.lhs.true759, %if.else771
  %FIELD_SCAN.pn1877 = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else771 ], [ @FIELD_SCAN, %land.lhs.true759 ], [ @FIELD_SCAN, %for.body754 ]
  %i.10.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn1877, i64 0, i64 %indvars.iv1746, i64 0
  %j.10.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn1877, i64 0, i64 %indvars.iv1746, i64 1
  %i.10.in = load i8* %i.10.in.in, align 2
  %j.10.in = load i8* %j.10.in.in, align 1
  %inc781 = add nsw i32 %run.21691, 1
  %idxprom785 = zext i8 %j.10.in to i64
  %idxprom787 = zext i8 %i.10.in to i64
  %arrayidx791 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom787, i64 %indvars.iv1772, i64 %idxprom785, i64 %indvars.iv1776
  %136 = load i32* %arrayidx791, align 4, !tbaa !3
  %ispos = icmp sgt i32 %136, -1
  %neg = sub i32 0, %136
  %137 = select i1 %ispos, i32 %136, i32 %neg
  br i1 %13, label %if.end818, label %if.else793

if.else793:                                       ; preds = %if.end780
  %arrayidx808 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 %idxprom787, i64 %idxprom785
  %138 = load i32* %arrayidx808, align 4, !tbaa !3
  %mul809 = mul nsw i32 %138, %137
  %arrayidx815 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom474, i64 %idxprom787, i64 %idxprom785
  %139 = load i32* %arrayidx815, align 4, !tbaa !3
  %add816 = add nsw i32 %mul809, %139
  %shr817 = ashr i32 %add816, %add14
  br label %if.end818

if.end818:                                        ; preds = %if.end780, %if.else793
  %level.2 = phi i32 [ %shr817, %if.else793 ], [ %137, %if.end780 ]
  %cmp819 = icmp eq i32 %level.2, 0
  br i1 %cmp819, label %if.end836, label %if.then821

if.then821:                                       ; preds = %if.end818
  %call830 = call i32 @sign(i32 %level.2, i32 %136) #3
  %idxprom831 = sext i32 %scan_pos.21690 to i64
  %arrayidx832 = getelementptr inbounds i32* %130, i64 %idxprom831
  store i32 %call830, i32* %arrayidx832, align 4, !tbaa !3
  %arrayidx834 = getelementptr inbounds i32* %131, i64 %idxprom831
  store i32 %inc781, i32* %arrayidx834, align 4, !tbaa !3
  %inc835 = add nsw i32 %scan_pos.21690, 1
  br label %if.end836

if.end836:                                        ; preds = %if.end818, %if.then821
  %ac_coef.3 = phi i32 [ 15, %if.then821 ], [ %ac_coef.21687, %if.end818 ]
  %scan_pos.3 = phi i32 [ %inc835, %if.then821 ], [ %scan_pos.21690, %if.end818 ]
  %run.3 = phi i32 [ -1, %if.then821 ], [ %inc781, %if.end818 ]
  br i1 %13, label %for.inc891, label %if.then838

if.then838:                                       ; preds = %if.end836
  %140 = load i32* %arrayidx791, align 4, !tbaa !3
  %call847 = call i32 @sign(i32 %level.2, i32 %140) #3
  %arrayidx856 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom469, i64 %idxprom787, i64 %idxprom785
  %141 = load i32* %arrayidx856, align 4, !tbaa !3
  %mul857 = mul nsw i32 %141, %call847
  br i1 %cmp848, label %if.then850, label %if.else871

if.then850:                                       ; preds = %if.then838
  %add860 = add nsw i32 %mul857, %shl859
  %shr862 = ashr i32 %add860, %sub861
  store i32 %shr862, i32* %arrayidx791, align 4, !tbaa !3
  br label %for.inc891

if.else871:                                       ; preds = %if.then838
  %shl880 = shl i32 %mul857, %sub879
  store i32 %shl880, i32* %arrayidx791, align 4, !tbaa !3
  br label %for.inc891

for.inc891:                                       ; preds = %if.end836, %if.else871, %if.then850
  %indvars.iv.next1747 = add i64 %indvars.iv1746, 1
  %lftr.wideiv1748 = trunc i64 %indvars.iv.next1747 to i32
  %exitcond1749 = icmp eq i32 %lftr.wideiv1748, 16
  br i1 %exitcond1749, label %for.end893, label %for.inc891.for.body754_crit_edge

for.inc891.for.body754_crit_edge:                 ; preds = %for.inc891
  %.pre1870 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body754

for.end893:                                       ; preds = %for.inc891
  %idxprom894 = sext i32 %scan_pos.3 to i64
  %arrayidx895 = getelementptr inbounds i32* %130, i64 %idxprom894
  store i32 0, i32* %arrayidx895, align 4, !tbaa !3
  br i1 %13, label %for.inc1058, label %for.cond905.preheader

for.cond905.preheader:                            ; preds = %for.end893, %for.inc974
  %indvars.iv1759 = phi i64 [ %indvars.iv.next1760, %for.inc974 ], [ 0, %for.end893 ]
  br label %for.body908

for.body908:                                      ; preds = %for.body908, %for.cond905.preheader
  %indvars.iv1750 = phi i64 [ 0, %for.cond905.preheader ], [ %indvars.iv.next1751, %for.body908 ]
  %arrayidx916 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1750, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776
  %142 = load i32* %arrayidx916, align 4, !tbaa !3
  %arrayidx918 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1750
  store i32 %142, i32* %arrayidx918, align 4, !tbaa !3
  %indvars.iv.next1751 = add i64 %indvars.iv1750, 1
  %lftr.wideiv1752 = trunc i64 %indvars.iv.next1751 to i32
  %exitcond1753 = icmp eq i32 %lftr.wideiv1752, 4
  br i1 %exitcond1753, label %for.end921, label %for.body908

for.end921:                                       ; preds = %for.body908
  %143 = bitcast i32* %arrayidx1003.pre-phi to i64*
  %144 = load i64* %143, align 16
  %145 = trunc i64 %144 to i32
  %146 = bitcast i32* %arrayidx1004.pre-phi to i64*
  %147 = load i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %add924 = add nsw i32 %148, %145
  store i32 %add924, i32* %arrayidx1006.pre-phi, align 16, !tbaa !3
  %sub928 = sub nsw i32 %145, %148
  store i32 %sub928, i32* %arrayidx1010.pre-phi, align 4, !tbaa !3
  %149 = lshr i64 %144, 32
  %150 = trunc i64 %149 to i32
  %shr931 = ashr i32 %150, 1
  %151 = lshr i64 %147, 32
  %152 = trunc i64 %151 to i32
  %sub933 = sub nsw i32 %shr931, %152
  store i32 %sub933, i32* %arrayidx1015.pre-phi, align 8, !tbaa !3
  %shr937 = ashr i32 %152, 1
  %add938 = add nsw i32 %shr937, %150
  store i32 %add938, i32* %arrayidx1020.pre-phi, align 4, !tbaa !3
  br label %for.body943

for.body943:                                      ; preds = %for.body943.for.body943_crit_edge, %for.end921
  %153 = phi i32 [ %add924, %for.end921 ], [ %.pre1872, %for.body943.for.body943_crit_edge ]
  %indvars.iv1754 = phi i64 [ 0, %for.end921 ], [ %indvars.iv.next1755, %for.body943.for.body943_crit_edge ]
  %154 = sub nsw i64 3, %indvars.iv1754
  %arrayidx948 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %154
  %155 = load i32* %arrayidx948, align 4, !tbaa !3
  %add949 = add nsw i32 %155, %153
  %arrayidx957 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1754, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776
  store i32 %add949, i32* %arrayidx957, align 4, !tbaa !3
  %sub962 = sub nsw i32 %153, %155
  %arrayidx970 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %154, i64 %indvars.iv1772, i64 %indvars.iv1759, i64 %indvars.iv1776
  store i32 %sub962, i32* %arrayidx970, align 4, !tbaa !3
  %indvars.iv.next1755 = add i64 %indvars.iv1754, 1
  %lftr.wideiv1757 = trunc i64 %indvars.iv.next1755 to i32
  %exitcond1758 = icmp eq i32 %lftr.wideiv1757, 2
  br i1 %exitcond1758, label %for.inc974, label %for.body943.for.body943_crit_edge

for.body943.for.body943_crit_edge:                ; preds = %for.body943
  %arrayidx946.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1755
  %.pre1872 = load i32* %arrayidx946.phi.trans.insert, align 4, !tbaa !3
  br label %for.body943

for.inc974:                                       ; preds = %for.body943
  %indvars.iv.next1760 = add i64 %indvars.iv1759, 1
  %156 = trunc i64 %indvars.iv1759 to i32
  %cmp897.not = icmp sgt i32 %156, 2
  br i1 %cmp897.not, label %for.cond977.loopexit, label %for.cond905.preheader

for.cond977.loopexit:                             ; preds = %for.inc974
  br i1 %13, label %for.inc1058, label %for.cond986.preheader

for.cond986.preheader:                            ; preds = %for.cond977.loopexit, %for.inc1055
  %indvars.iv1770 = phi i64 [ %indvars.iv.next1771, %for.inc1055 ], [ 0, %for.cond977.loopexit ]
  br label %for.body989

for.body989:                                      ; preds = %for.body989, %for.cond986.preheader
  %indvars.iv1761 = phi i64 [ 0, %for.cond986.preheader ], [ %indvars.iv.next1762, %for.body989 ]
  %arrayidx997 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %indvars.iv1761, i64 %indvars.iv1776
  %157 = load i32* %arrayidx997, align 4, !tbaa !3
  %arrayidx999 = getelementptr inbounds [4 x i32]* %M5, i64 0, i64 %indvars.iv1761
  store i32 %157, i32* %arrayidx999, align 4, !tbaa !3
  %indvars.iv.next1762 = add i64 %indvars.iv1761, 1
  %lftr.wideiv1763 = trunc i64 %indvars.iv.next1762 to i32
  %exitcond1764 = icmp eq i32 %lftr.wideiv1763, 4
  br i1 %exitcond1764, label %for.end1002, label %for.body989

for.end1002:                                      ; preds = %for.body989
  %158 = bitcast i32* %arrayidx1003.pre-phi to i64*
  %159 = load i64* %158, align 16
  %160 = trunc i64 %159 to i32
  %161 = bitcast i32* %arrayidx1004.pre-phi to i64*
  %162 = load i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %add1005 = add nsw i32 %163, %160
  store i32 %add1005, i32* %arrayidx1006.pre-phi, align 16, !tbaa !3
  %sub1009 = sub nsw i32 %160, %163
  store i32 %sub1009, i32* %arrayidx1010.pre-phi, align 4, !tbaa !3
  %164 = lshr i64 %159, 32
  %165 = trunc i64 %164 to i32
  %shr1012 = ashr i32 %165, 1
  %166 = lshr i64 %162, 32
  %167 = trunc i64 %166 to i32
  %sub1014 = sub nsw i32 %shr1012, %167
  store i32 %sub1014, i32* %arrayidx1015.pre-phi, align 8, !tbaa !3
  %shr1018 = ashr i32 %167, 1
  %add1019 = add nsw i32 %shr1018, %165
  store i32 %add1019, i32* %arrayidx1020.pre-phi, align 4, !tbaa !3
  br label %for.body1024

for.body1024:                                     ; preds = %for.body1024.for.body1024_crit_edge, %for.end1002
  %168 = phi i32 [ %add1005, %for.end1002 ], [ %.pre1871, %for.body1024.for.body1024_crit_edge ]
  %indvars.iv1765 = phi i64 [ 0, %for.end1002 ], [ %indvars.iv.next1766, %for.body1024.for.body1024_crit_edge ]
  %169 = sub nsw i64 3, %indvars.iv1765
  %arrayidx1029 = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %169
  %170 = load i32* %arrayidx1029, align 4, !tbaa !3
  %add1030 = add nsw i32 %170, %168
  %arrayidx1038 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %indvars.iv1765, i64 %indvars.iv1776
  store i32 %add1030, i32* %arrayidx1038, align 4, !tbaa !3
  %sub1043 = sub nsw i32 %168, %170
  %arrayidx1051 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv1770, i64 %indvars.iv1772, i64 %169, i64 %indvars.iv1776
  store i32 %sub1043, i32* %arrayidx1051, align 4, !tbaa !3
  %indvars.iv.next1766 = add i64 %indvars.iv1765, 1
  %lftr.wideiv1768 = trunc i64 %indvars.iv.next1766 to i32
  %exitcond1769 = icmp eq i32 %lftr.wideiv1768, 2
  br i1 %exitcond1769, label %for.inc1055, label %for.body1024.for.body1024_crit_edge

for.body1024.for.body1024_crit_edge:              ; preds = %for.body1024
  %arrayidx1027.phi.trans.insert = getelementptr inbounds [4 x i32]* %M6, i64 0, i64 %indvars.iv.next1766
  %.pre1871 = load i32* %arrayidx1027.phi.trans.insert, align 4, !tbaa !3
  br label %for.body1024

for.inc1055:                                      ; preds = %for.body1024
  %indvars.iv.next1771 = add i64 %indvars.iv1770, 1
  %171 = trunc i64 %indvars.iv1770 to i32
  %cmp978.not = icmp sgt i32 %171, 2
  br i1 %cmp978.not, label %for.inc1058, label %for.cond986.preheader

for.inc1058:                                      ; preds = %for.end893, %for.inc1055, %for.cond977.loopexit
  %indvars.iv.next1773 = add i64 %indvars.iv1772, 1
  %lftr.wideiv1774 = trunc i64 %indvars.iv.next1773 to i32
  %exitcond1775 = icmp eq i32 %lftr.wideiv1774, 4
  br i1 %exitcond1775, label %for.inc1061, label %for.body731

for.inc1061:                                      ; preds = %for.inc1058
  %indvars.iv.next1777 = add i64 %indvars.iv1776, 1
  %lftr.wideiv1778 = trunc i64 %indvars.iv.next1777 to i32
  %exitcond1779 = icmp eq i32 %lftr.wideiv1778, 4
  br i1 %exitcond1779, label %for.end1063, label %for.cond728.preheader

for.end1063:                                      ; preds = %for.inc1061
  %172 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag1064 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 164
  %173 = load i32* %residue_transform_flag1064, align 4, !tbaa !3
  %tobool1065 = icmp eq i32 %173, 0
  br i1 %tobool1065, label %for.cond1071.preheader, label %for.cond1102.preheader

for.cond1071.preheader:                           ; preds = %for.end1063, %for.inc1094
  %indvars.iv1734 = phi i64 [ %indvars.iv.next1735, %for.inc1094 ], [ 0, %for.end1063 ]
  %174 = trunc i64 %indvars.iv1734 to i32
  %div1075 = sdiv i32 %174, 4
  %idxprom1076 = sext i32 %div1075 to i64
  %rem1077 = srem i32 %174, 4
  %idxprom1078 = sext i32 %rem1077 to i64
  br label %for.body1074

for.body1074:                                     ; preds = %for.body1074, %for.cond1071.preheader
  %indvars.iv1730 = phi i64 [ 0, %for.cond1071.preheader ], [ %indvars.iv.next1731, %for.body1074 ]
  %175 = trunc i64 %indvars.iv1730 to i32
  %div1079 = sdiv i32 %175, 4
  %idxprom1080 = sext i32 %div1079 to i64
  %rem1081 = srem i32 %175, 4
  %idxprom1082 = sext i32 %rem1081 to i64
  %arrayidx1086 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom1082, i64 %idxprom1080, i64 %idxprom1078, i64 %idxprom1076
  %176 = load i32* %arrayidx1086, align 4, !tbaa !3
  %arrayidx1090 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv1730, i64 %indvars.iv1734
  store i32 %176, i32* %arrayidx1090, align 4, !tbaa !3
  %indvars.iv.next1731 = add i64 %indvars.iv1730, 1
  %lftr.wideiv1732 = trunc i64 %indvars.iv.next1731 to i32
  %exitcond1733 = icmp eq i32 %lftr.wideiv1732, 16
  br i1 %exitcond1733, label %for.inc1094, label %for.body1074

for.inc1094:                                      ; preds = %for.body1074
  %indvars.iv.next1735 = add i64 %indvars.iv1734, 1
  %lftr.wideiv1736 = trunc i64 %indvars.iv.next1735 to i32
  %exitcond1737 = icmp eq i32 %lftr.wideiv1736, 16
  br i1 %exitcond1737, label %for.cond1156.preheader, label %for.cond1071.preheader

for.cond1102.preheader:                           ; preds = %for.end1063, %for.inc1149
  %indvars.iv1742 = phi i64 [ %indvars.iv.next1743, %for.inc1149 ], [ 0, %for.end1063 ]
  %177 = trunc i64 %indvars.iv1742 to i32
  %div1108 = sdiv i32 %177, 4
  %idxprom1109 = sext i32 %div1108 to i64
  %rem1110 = srem i32 %177, 4
  %idxprom1111 = sext i32 %rem1110 to i64
  br label %for.body1105

for.body1105:                                     ; preds = %for.inc1146, %for.cond1102.preheader
  %indvars.iv1738 = phi i64 [ 0, %for.cond1102.preheader ], [ %indvars.iv.next1739, %for.inc1146 ]
  %178 = trunc i64 %indvars.iv1738 to i32
  %div1112 = sdiv i32 %178, 4
  %idxprom1113 = sext i32 %div1112 to i64
  %rem1114 = srem i32 %178, 4
  %idxprom1115 = sext i32 %rem1114 to i64
  %arrayidx1119 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom1115, i64 %idxprom1113, i64 %idxprom1111, i64 %idxprom1109
  %179 = load i32* %arrayidx1119, align 4, !tbaa !3
  br i1 %13, label %if.then1107, label %if.else1125

if.then1107:                                      ; preds = %for.body1105
  %arrayidx1124 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 46, i64 %indvars.iv1738, i64 %indvars.iv1742
  store i32 %179, i32* %arrayidx1124, align 4, !tbaa !3
  br label %for.inc1146

if.else1125:                                      ; preds = %for.body1105
  %add1138 = add nsw i32 %179, 32
  %shr1139 = ashr i32 %add1138, 6
  %arrayidx1144 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 46, i64 %indvars.iv1738, i64 %indvars.iv1742
  store i32 %shr1139, i32* %arrayidx1144, align 4, !tbaa !3
  br label %for.inc1146

for.inc1146:                                      ; preds = %if.then1107, %if.else1125
  %indvars.iv.next1739 = add i64 %indvars.iv1738, 1
  %lftr.wideiv1740 = trunc i64 %indvars.iv.next1739 to i32
  %exitcond1741 = icmp eq i32 %lftr.wideiv1740, 16
  br i1 %exitcond1741, label %for.inc1149, label %for.body1105

for.inc1149:                                      ; preds = %for.inc1146
  %indvars.iv.next1743 = add i64 %indvars.iv1742, 1
  %lftr.wideiv1744 = trunc i64 %indvars.iv.next1743 to i32
  %exitcond1745 = icmp eq i32 %lftr.wideiv1744, 16
  br i1 %exitcond1745, label %if.end1152, label %for.cond1102.preheader

if.end1152:                                       ; preds = %for.inc1149
  %.pre = load i32* %residue_transform_flag1064, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pre, 0
  br i1 %phitmp, label %for.cond1156.preheader, label %if.end1289

for.cond1156.preheader:                           ; preds = %for.inc1094, %if.end1152
  %pix_x = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 34
  %180 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %180, i64 0, i32 25
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 155
  br label %for.cond1160.preheader

for.cond1160.preheader:                           ; preds = %for.inc1286, %for.cond1156.preheader
  %indvars.iv1726 = phi i64 [ 0, %for.cond1156.preheader ], [ %indvars.iv.next1727, %for.inc1286 ]
  br label %for.body1163

for.body1163:                                     ; preds = %for.inc1283, %for.cond1160.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1160.preheader ], [ %indvars.iv.next, %for.inc1283 ]
  br i1 %13, label %if.then1165, label %if.else1186

if.then1165:                                      ; preds = %for.body1163
  %arrayidx1169 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv, i64 %indvars.iv1726
  %181 = load i32* %arrayidx1169, align 4, !tbaa !3
  %arrayidx1176 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1726, i64 %indvars.iv
  %182 = load i16* %arrayidx1176, align 2, !tbaa !4
  %conv1177 = zext i16 %182 to i32
  %add1178 = add nsw i32 %conv1177, %181
  %conv1179 = trunc i32 %add1178 to i16
  %183 = load i32* %pix_x, align 4, !tbaa !3
  %184 = trunc i64 %indvars.iv to i32
  %add1180 = add nsw i32 %183, %184
  %idxprom1181 = sext i32 %add1180 to i64
  %185 = load i32* %pix_y, align 4, !tbaa !3
  %186 = trunc i64 %indvars.iv1726 to i32
  %add1182 = add nsw i32 %185, %186
  %idxprom1183 = sext i32 %add1182 to i64
  %187 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx1184 = getelementptr inbounds i16** %187, i64 %idxprom1183
  %188 = load i16** %arrayidx1184, align 8, !tbaa !0
  %arrayidx1185 = getelementptr inbounds i16* %188, i64 %idxprom1181
  store i16 %conv1179, i16* %arrayidx1185, align 2, !tbaa !4
  br label %for.inc1283

if.else1186:                                      ; preds = %for.body1163
  %189 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %conv1187 = sext i32 %189 to i64
  %arrayidx1191 = getelementptr inbounds [16 x [16 x i32]]* %M1, i64 0, i64 %indvars.iv, i64 %indvars.iv1726
  %190 = load i32* %arrayidx1191, align 4, !tbaa !3
  %conv1192 = sext i32 %190 to i64
  %arrayidx1199 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 42, i64 %idxprom27, i64 %indvars.iv1726, i64 %indvars.iv
  %191 = load i16* %arrayidx1199, align 2, !tbaa !4
  %conv1200 = zext i16 %191 to i64
  %shl1201 = shl nuw nsw i64 %conv1200, 6
  %add1202 = add i64 %conv1192, 32
  %add1203 = add i64 %add1202, %shl1201
  %shr1204 = ashr i64 %add1203, 6
  %cmp1205 = icmp slt i64 %shr1204, 0
  %.shr1204 = select i1 %cmp1205, i64 0, i64 %shr1204
  %cmp1224 = icmp slt i64 %conv1187, %.shr1204
  %conv1187..shr1204 = select i1 %cmp1224, i64 %conv1187, i64 %.shr1204
  %conv1272 = trunc i64 %conv1187..shr1204 to i16
  %192 = load i32* %pix_x, align 4, !tbaa !3
  %193 = trunc i64 %indvars.iv to i32
  %add1274 = add nsw i32 %192, %193
  %idxprom1275 = sext i32 %add1274 to i64
  %194 = load i32* %pix_y, align 4, !tbaa !3
  %195 = trunc i64 %indvars.iv1726 to i32
  %add1277 = add nsw i32 %194, %195
  %idxprom1278 = sext i32 %add1277 to i64
  %196 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx1280 = getelementptr inbounds i16** %196, i64 %idxprom1278
  %197 = load i16** %arrayidx1280, align 8, !tbaa !0
  %arrayidx1281 = getelementptr inbounds i16* %197, i64 %idxprom1275
  store i16 %conv1272, i16* %arrayidx1281, align 2, !tbaa !4
  br label %for.inc1283

for.inc1283:                                      ; preds = %if.then1165, %if.else1186
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc1286, label %for.body1163

for.inc1286:                                      ; preds = %for.inc1283
  %indvars.iv.next1727 = add i64 %indvars.iv1726, 1
  %lftr.wideiv1728 = trunc i64 %indvars.iv.next1727 to i32
  %exitcond1729 = icmp eq i32 %lftr.wideiv1728, 16
  br i1 %exitcond1729, label %if.end1289, label %for.cond1160.preheader

if.end1289:                                       ; preds = %for.inc1286, %if.end1152
  call void @llvm.lifetime.end(i64 1024, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret i32 %ac_coef.3
}

; Function Attrs: optsize
declare i32 @sign(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma(i32 %block_x, i32 %block_y, i32* nocapture %coeff_cost, i32 %intra) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %div = sdiv i32 %block_x, 4
  %div1 = sdiv i32 %block_y, 4
  %div2 = sdiv i32 %block_y, 8
  %mul = shl i32 %div2, 1
  %div3 = sdiv i32 %block_x, 8
  %add = add nsw i32 %mul, %div3
  %rem = srem i32 %div1, 2
  %mul4 = shl i32 %rem, 1
  %rem5 = srem i32 %div, 2
  %add6 = add nsw i32 %mul4, %rem5
  %idxprom = sext i32 %add6 to i64
  %idxprom7 = sext i32 %add to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %1 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32**** %1, i64 %idxprom7
  %2 = load i32**** %arrayidx, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %2, i64 %idxprom
  %3 = load i32*** %arrayidx8, align 8, !tbaa !0
  %4 = load i32** %3, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %3, i64 1
  %5 = load i32** %arrayidx15, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %6 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom16 = sext i32 %6 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %7 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom16, i32 3
  %8 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151
  %9 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add18 = sub i32 0, %9
  %cmp = icmp eq i32 %8, %add18
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %entry
  %add221080 = add nsw i32 %9, %8
  %div231081 = sdiv i32 %add221080, 6
  %rem281082 = srem i32 %add221080, 6
  %add291083 = add nsw i32 %div231081, 15
  br label %for.cond34.preheader.lr.ph

land.end:                                         ; preds = %entry
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160
  %10 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %10, 1
  %add22 = add nsw i32 %9, %8
  %div23 = sdiv i32 %add22, 6
  %rem28 = srem i32 %add22, 6
  %add29 = add nsw i32 %div23, 15
  br i1 %cmp19, label %for.cond170.preheader, label %for.cond34.preheader.lr.ph

for.cond34.preheader.lr.ph:                       ; preds = %land.end.thread, %land.end
  %add291090 = phi i32 [ %add291083, %land.end.thread ], [ %add29, %land.end ]
  %rem281088 = phi i32 [ %rem281082, %land.end.thread ], [ %rem28, %land.end ]
  %div231086 = phi i32 [ %div231081, %land.end.thread ], [ %div23, %land.end ]
  %add221084 = phi i32 [ %add221080, %land.end.thread ], [ %add22, %land.end ]
  %arrayidx77 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx79 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.end
  %indvars.iv1075 = phi i64 [ 0, %for.cond34.preheader.lr.ph ], [ %indvars.iv.next1076, %for.end ]
  br label %for.body36

for.cond104.preheader.lr.ph:                      ; preds = %for.end
  %arrayidx151 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx153 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond104.preheader

for.body36:                                       ; preds = %for.body36, %for.cond34.preheader
  %indvars.iv1070 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next1071, %for.body36 ]
  %11 = sub nsw i64 3, %indvars.iv1070
  %arrayidx41 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1070, i64 %indvars.iv1075
  %12 = load i32* %arrayidx41, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %11, i64 %indvars.iv1075
  %13 = load i32* %arrayidx46, align 4, !tbaa !3
  %add47 = add nsw i32 %13, %12
  %arrayidx49 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1070
  store i32 %add47, i32* %arrayidx49, align 4, !tbaa !3
  %14 = load i32* %arrayidx41, align 4, !tbaa !3
  %15 = load i32* %arrayidx46, align 4, !tbaa !3
  %sub60 = sub nsw i32 %14, %15
  %arrayidx62 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %11
  store i32 %sub60, i32* %arrayidx62, align 4, !tbaa !3
  %indvars.iv.next1071 = add i64 %indvars.iv1070, 1
  %lftr.wideiv1073 = trunc i64 %indvars.iv.next1071 to i32
  %exitcond1074 = icmp eq i32 %lftr.wideiv1073, 2
  br i1 %exitcond1074, label %for.end, label %for.body36

for.end:                                          ; preds = %for.body36
  %16 = bitcast [4 x i32]* %m5 to i64*
  %17 = load i64* %16, align 16
  %18 = trunc i64 %17 to i32
  %19 = lshr i64 %17, 32
  %20 = trunc i64 %19 to i32
  %add65 = add nsw i32 %20, %18
  %arrayidx69 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv1075
  store i32 %add65, i32* %arrayidx69, align 4, !tbaa !3
  %21 = load i64* %16, align 16
  %22 = trunc i64 %21 to i32
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %sub72 = sub nsw i32 %22, %24
  %arrayidx76 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv1075
  store i32 %sub72, i32* %arrayidx76, align 4, !tbaa !3
  %25 = load i32* %arrayidx77, align 4, !tbaa !3
  %mul78 = shl i32 %25, 1
  %26 = load i32* %arrayidx79, align 8, !tbaa !3
  %add80 = add nsw i32 %mul78, %26
  %arrayidx84 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv1075
  store i32 %add80, i32* %arrayidx84, align 4, !tbaa !3
  %27 = load i32* %arrayidx77, align 4, !tbaa !3
  %28 = load i32* %arrayidx79, align 8, !tbaa !3
  %mul87 = shl nsw i32 %28, 1
  %sub88 = sub nsw i32 %27, %mul87
  %arrayidx92 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv1075
  store i32 %sub88, i32* %arrayidx92, align 4, !tbaa !3
  %indvars.iv.next1076 = add i64 %indvars.iv1075, 1
  %29 = trunc i64 %indvars.iv1075 to i32
  %cmp30.not = icmp sgt i32 %29, 2
  br i1 %cmp30.not, label %for.cond104.preheader.lr.ph, label %for.cond34.preheader

for.cond104.preheader:                            ; preds = %for.cond104.preheader.lr.ph, %for.end136
  %indvars.iv1068 = phi i64 [ 0, %for.cond104.preheader.lr.ph ], [ %indvars.iv.next1069, %for.end136 ]
  br label %for.body106

for.cond170.preheader:                            ; preds = %land.end, %for.end136
  %30 = phi i1 [ false, %for.end136 ], [ true, %land.end ]
  %add2210851095 = phi i32 [ %add221084, %for.end136 ], [ %add22, %land.end ]
  %div2310871094 = phi i32 [ %div231086, %for.end136 ], [ %div23, %land.end ]
  %rem2810891093 = phi i32 [ %rem281088, %for.end136 ], [ %rem28, %land.end ]
  %add2910911092 = phi i32 [ %add291090, %for.end136 ], [ %add29, %land.end ]
  %mb_field = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom16, i32 22
  %cmp284 = icmp slt i32 %add2210851095, 24
  %cmp287 = icmp eq i32 %intra, 1
  %idxprom292 = sext i32 %rem2810891093 to i64
  %sub297 = sub nsw i32 3, %div2310871094
  %shl = shl i32 1, %sub297
  %sub299 = sub nsw i32 4, %div2310871094
  %sub326 = add nsw i32 %div2310871094, -4
  %idxprom218 = sext i32 %div2310871094 to i64
  br label %for.body172

for.body106:                                      ; preds = %for.body106, %for.cond104.preheader
  %indvars.iv1063 = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next1064, %for.body106 ]
  %31 = sub nsw i64 3, %indvars.iv1063
  %arrayidx112 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 %indvars.iv1063
  %32 = load i32* %arrayidx112, align 4, !tbaa !3
  %arrayidx117 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 %31
  %33 = load i32* %arrayidx117, align 4, !tbaa !3
  %add118 = add nsw i32 %33, %32
  %arrayidx120 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1063
  store i32 %add118, i32* %arrayidx120, align 4, !tbaa !3
  %34 = load i32* %arrayidx112, align 4, !tbaa !3
  %35 = load i32* %arrayidx117, align 4, !tbaa !3
  %sub131 = sub nsw i32 %34, %35
  %arrayidx133 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %31
  store i32 %sub131, i32* %arrayidx133, align 4, !tbaa !3
  %indvars.iv.next1064 = add i64 %indvars.iv1063, 1
  %lftr.wideiv1066 = trunc i64 %indvars.iv.next1064 to i32
  %exitcond1067 = icmp eq i32 %lftr.wideiv1066, 2
  br i1 %exitcond1067, label %for.end136, label %for.body106

for.end136:                                       ; preds = %for.body106
  %36 = bitcast [4 x i32]* %m5 to i64*
  %37 = load i64* %36, align 16
  %38 = trunc i64 %37 to i32
  %39 = lshr i64 %37, 32
  %40 = trunc i64 %39 to i32
  %add139 = add nsw i32 %40, %38
  %arrayidx143 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 0
  store i32 %add139, i32* %arrayidx143, align 4, !tbaa !3
  %41 = load i64* %36, align 16
  %42 = trunc i64 %41 to i32
  %43 = lshr i64 %41, 32
  %44 = trunc i64 %43 to i32
  %sub146 = sub nsw i32 %42, %44
  %arrayidx150 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 2
  store i32 %sub146, i32* %arrayidx150, align 4, !tbaa !3
  %45 = load i32* %arrayidx151, align 4, !tbaa !3
  %mul152 = shl i32 %45, 1
  %46 = load i32* %arrayidx153, align 8, !tbaa !3
  %add154 = add nsw i32 %mul152, %46
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 1
  store i32 %add154, i32* %arrayidx158, align 4, !tbaa !3
  %47 = load i32* %arrayidx151, align 4, !tbaa !3
  %48 = load i32* %arrayidx153, align 8, !tbaa !3
  %mul161 = shl nsw i32 %48, 1
  %sub162 = sub nsw i32 %47, %mul161
  %arrayidx166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv1068, i64 3
  store i32 %sub162, i32* %arrayidx166, align 4, !tbaa !3
  %indvars.iv.next1069 = add i64 %indvars.iv1068, 1
  %49 = trunc i64 %indvars.iv1068 to i32
  %cmp97.not = icmp sgt i32 %49, 2
  br i1 %cmp97.not, label %for.cond170.preheader, label %for.cond104.preheader

for.body172:                                      ; preds = %for.inc350.for.body172_crit_edge, %for.cond170.preheader
  %50 = phi %struct.ImageParameters* [ %0, %for.cond170.preheader ], [ %.pre, %for.inc350.for.body172_crit_edge ]
  %indvars.iv1059 = phi i64 [ 0, %for.cond170.preheader ], [ %indvars.iv.next1060, %for.inc350.for.body172_crit_edge ]
  %scan_pos.01020 = phi i32 [ 0, %for.cond170.preheader ], [ %scan_pos.11004, %for.inc350.for.body172_crit_edge ]
  %run.01019 = phi i32 [ -1, %for.cond170.preheader ], [ %run.11003, %for.inc350.for.body172_crit_edge ]
  %nonzero.01018 = phi i32 [ 0, %for.cond170.preheader ], [ %nonzero.11002, %for.inc350.for.body172_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 100
  %51 = load i32* %field_picture, align 4, !tbaa !3
  %tobool173 = icmp eq i32 %51, 0
  br i1 %tobool173, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %for.body172
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 90
  %52 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool174 = icmp eq i32 %52, 0
  br i1 %tobool174, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %53 = load i32* %mb_field, align 4, !tbaa !3
  %tobool175 = icmp eq i32 %53, 0
  br i1 %tobool175, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end

if.end:                                           ; preds = %for.body172, %land.lhs.true, %if.else
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body172 ]
  %i.2.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1059, i64 0
  %j.2.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1059, i64 1
  %i.2.in = load i8* %i.2.in.in, align 2
  %j.2.in = load i8* %j.2.in.in, align 1
  %inc191 = add nsw i32 %run.01019, 1
  %idxprom194 = zext i8 %j.2.in to i64
  %idxprom195 = zext i8 %i.2.in to i64
  %arrayidx198 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 46, i64 %idxprom195, i64 %idxprom194
  %54 = load i32* %arrayidx198, align 4, !tbaa !3
  %ispos996 = icmp sgt i32 %54, -1
  %neg997 = sub i32 0, %54
  %55 = select i1 %ispos996, i32 %54, i32 %neg997
  br i1 %30, label %if.end246, label %if.else199

if.else199:                                       ; preds = %if.end
  br i1 %cmp287, label %if.then202, label %if.else223

if.then202:                                       ; preds = %if.else199
  %arrayidx214 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom195, i64 %idxprom194
  %56 = load i32* %arrayidx214, align 4, !tbaa !3
  %mul215 = mul nsw i32 %56, %55
  %arrayidx221 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Intra, i64 0, i64 %idxprom218, i64 %idxprom195, i64 %idxprom194
  %57 = load i32* %arrayidx221, align 4, !tbaa !3
  %add222 = add nsw i32 %mul215, %57
  %shr = ashr i32 %add222, %add2910911092
  br label %if.end246

if.else223:                                       ; preds = %if.else199
  %arrayidx235 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom195, i64 %idxprom194
  %58 = load i32* %arrayidx235, align 4, !tbaa !3
  %mul236 = mul nsw i32 %58, %55
  %arrayidx242 = getelementptr inbounds [13 x [4 x [4 x i32]]]* @LevelOffset4x4Luma_Inter, i64 0, i64 %idxprom218, i64 %idxprom195, i64 %idxprom194
  %59 = load i32* %arrayidx242, align 4, !tbaa !3
  %add243 = add nsw i32 %mul236, %59
  %shr244 = ashr i32 %add243, %add2910911092
  br label %if.end246

if.end246:                                        ; preds = %if.end, %if.then202, %if.else223
  %level.0 = phi i32 [ %shr, %if.then202 ], [ %shr244, %if.else223 ], [ %55, %if.end ]
  %cmp247 = icmp eq i32 %level.0, 0
  br i1 %cmp247, label %if.end341, label %if.then249

if.then249:                                       ; preds = %if.end246
  %cmp250 = icmp sgt i32 %level.0, 1
  %brmerge998 = or i1 %cmp250, %30
  br i1 %brmerge998, label %if.then254, label %if.else256

if.then254:                                       ; preds = %if.then249
  %60 = load i32* %coeff_cost, align 4, !tbaa !3
  %add255 = add nsw i32 %60, 999999
  br label %if.end263

if.else256:                                       ; preds = %if.then249
  %idxprom257 = sext i32 %inc191 to i64
  %61 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %disthres = getelementptr inbounds %struct.InputParameters* %61, i64 0, i32 86
  %62 = load i32* %disthres, align 4, !tbaa !3
  %idxprom258 = sext i32 %62 to i64
  %arrayidx260 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom258, i64 %idxprom257
  %63 = load i8* %arrayidx260, align 1, !tbaa !1
  %conv261 = zext i8 %63 to i32
  %64 = load i32* %coeff_cost, align 4, !tbaa !3
  %add262 = add nsw i32 %64, %conv261
  br label %if.end263

if.end263:                                        ; preds = %if.else256, %if.then254
  %storemerge = phi i32 [ %add262, %if.else256 ], [ %add255, %if.then254 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !tbaa !3
  %idxprom264 = zext i8 %j.2.in to i64
  %idxprom265 = zext i8 %i.2.in to i64
  %arrayidx268 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 46, i64 %idxprom265, i64 %idxprom264
  %65 = load i32* %arrayidx268, align 4, !tbaa !3
  %call269 = call i32 @sign(i32 %level.0, i32 %65) #3
  %idxprom270 = sext i32 %scan_pos.01020 to i64
  %arrayidx271 = getelementptr inbounds i32* %4, i64 %idxprom270
  store i32 %call269, i32* %arrayidx271, align 4, !tbaa !3
  %arrayidx273 = getelementptr inbounds i32* %5, i64 %idxprom270
  store i32 %inc191, i32* %arrayidx273, align 4, !tbaa !3
  %inc274 = add nsw i32 %scan_pos.01020, 1
  %66 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx279 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 46, i64 %idxprom265, i64 %idxprom264
  %67 = load i32* %arrayidx279, align 4, !tbaa !3
  %call280 = call i32 @sign(i32 %level.0, i32 %67) #3
  br i1 %30, label %for.inc350, label %if.else283

if.else283:                                       ; preds = %if.end263
  br i1 %cmp284, label %if.then286, label %if.else315

if.then286:                                       ; preds = %if.else283
  br i1 %cmp287, label %if.then289, label %if.end341.thread1005

if.then289:                                       ; preds = %if.then286
  %arrayidx295 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264
  %68 = load i32* %arrayidx295, align 4, !tbaa !3
  %mul296 = mul nsw i32 %68, %call280
  %add298 = add nsw i32 %mul296, %shl
  %shr300 = ashr i32 %add298, %sub299
  br label %if.end341

if.end341.thread1005:                             ; preds = %if.then286
  %arrayidx307 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264
  %69 = load i32* %arrayidx307, align 4, !tbaa !3
  %mul308 = mul nsw i32 %69, %call280
  %add311 = add nsw i32 %mul308, %shl
  %shr313 = ashr i32 %add311, %sub299
  br label %if.then343

if.else315:                                       ; preds = %if.else283
  br i1 %cmp287, label %if.then318, label %if.end341.thread

if.then318:                                       ; preds = %if.else315
  %arrayidx324 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264
  %70 = load i32* %arrayidx324, align 4, !tbaa !3
  %mul325 = mul nsw i32 %70, %call280
  %shl327 = shl i32 %mul325, %sub326
  br label %if.end341

if.end341.thread:                                 ; preds = %if.else315
  %arrayidx334 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %idxprom292, i64 %idxprom265, i64 %idxprom264
  %71 = load i32* %arrayidx334, align 4, !tbaa !3
  %mul335 = mul nsw i32 %71, %call280
  %shl337 = shl i32 %mul335, %sub326
  br label %if.end341.if.then343_crit_edge

if.end341:                                        ; preds = %if.end246, %if.then318, %if.then289
  %nonzero.1 = phi i32 [ 1, %if.then289 ], [ 1, %if.then318 ], [ %nonzero.01018, %if.end246 ]
  %run.1 = phi i32 [ -1, %if.then289 ], [ -1, %if.then318 ], [ %inc191, %if.end246 ]
  %scan_pos.1 = phi i32 [ %inc274, %if.then289 ], [ %inc274, %if.then318 ], [ %scan_pos.01020, %if.end246 ]
  %ilev.0 = phi i32 [ %shr300, %if.then289 ], [ %shl327, %if.then318 ], [ 0, %if.end246 ]
  br i1 %30, label %for.inc350, label %if.end341.if.then343_crit_edge

if.end341.if.then343_crit_edge:                   ; preds = %if.end341.thread, %if.end341
  %ilev.01099 = phi i32 [ %shl337, %if.end341.thread ], [ %ilev.0, %if.end341 ]
  %scan_pos.11098 = phi i32 [ %inc274, %if.end341.thread ], [ %scan_pos.1, %if.end341 ]
  %run.11097 = phi i32 [ -1, %if.end341.thread ], [ %run.1, %if.end341 ]
  %nonzero.11096 = phi i32 [ 1, %if.end341.thread ], [ %nonzero.1, %if.end341 ]
  %idxprom344.pre = zext i8 %j.2.in to i64
  %idxprom345.pre = zext i8 %i.2.in to i64
  br label %if.then343

if.then343:                                       ; preds = %if.end341.if.then343_crit_edge, %if.end341.thread1005
  %idxprom345.pre-phi = phi i64 [ %idxprom345.pre, %if.end341.if.then343_crit_edge ], [ %idxprom265, %if.end341.thread1005 ]
  %idxprom344.pre-phi = phi i64 [ %idxprom344.pre, %if.end341.if.then343_crit_edge ], [ %idxprom264, %if.end341.thread1005 ]
  %ilev.01009 = phi i32 [ %ilev.01099, %if.end341.if.then343_crit_edge ], [ %shr313, %if.end341.thread1005 ]
  %scan_pos.11008 = phi i32 [ %scan_pos.11098, %if.end341.if.then343_crit_edge ], [ %inc274, %if.end341.thread1005 ]
  %run.11007 = phi i32 [ %run.11097, %if.end341.if.then343_crit_edge ], [ -1, %if.end341.thread1005 ]
  %nonzero.11006 = phi i32 [ %nonzero.11096, %if.end341.if.then343_crit_edge ], [ 1, %if.end341.thread1005 ]
  %72 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 46, i64 %idxprom345.pre-phi, i64 %idxprom344.pre-phi
  store i32 %ilev.01009, i32* %arrayidx348, align 4, !tbaa !3
  br label %for.inc350

for.inc350:                                       ; preds = %if.end263, %if.end341, %if.then343
  %scan_pos.11004 = phi i32 [ %scan_pos.1, %if.end341 ], [ %scan_pos.11008, %if.then343 ], [ %inc274, %if.end263 ]
  %run.11003 = phi i32 [ %run.1, %if.end341 ], [ %run.11007, %if.then343 ], [ -1, %if.end263 ]
  %nonzero.11002 = phi i32 [ %nonzero.1, %if.end341 ], [ %nonzero.11006, %if.then343 ], [ 1, %if.end263 ]
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1
  %lftr.wideiv1061 = trunc i64 %indvars.iv.next1060 to i32
  %exitcond1062 = icmp eq i32 %lftr.wideiv1061, 16
  br i1 %exitcond1062, label %for.end352, label %for.inc350.for.body172_crit_edge

for.inc350.for.body172_crit_edge:                 ; preds = %for.inc350
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body172

for.end352:                                       ; preds = %for.inc350
  %idxprom353 = sext i32 %scan_pos.11004 to i64
  %arrayidx354 = getelementptr inbounds i32* %4, i64 %idxprom353
  store i32 0, i32* %arrayidx354, align 4, !tbaa !3
  br i1 %30, label %for.cond427.preheader.for.end724_crit_edge, label %for.cond364.preheader.lr.ph

for.cond364.preheader.lr.ph:                      ; preds = %for.end352
  %73 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx379 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx381 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx385 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx390 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx395 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  br label %for.cond364.preheader

for.cond364.preheader:                            ; preds = %for.cond364.preheader.lr.ph, %for.inc424
  %indvars.iv1057 = phi i64 [ 0, %for.cond364.preheader.lr.ph ], [ %indvars.iv.next1058, %for.inc424 ]
  br label %for.body367

for.cond427.preheader:                            ; preds = %for.inc424
  br i1 %30, label %for.cond427.preheader.for.end724_crit_edge, label %for.cond436.preheader.lr.ph

for.cond427.preheader.for.end724_crit_edge:       ; preds = %for.end352, %for.cond427.preheader
  %.pre1077 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.end724

for.cond436.preheader.lr.ph:                      ; preds = %for.cond427.preheader
  %74 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx451 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx453 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx457 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx462 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx467 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 164
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 155
  %75 = sext i32 %block_y to i64
  %76 = sext i32 %block_x to i64
  br label %for.cond436.preheader

for.body367:                                      ; preds = %for.body367, %for.cond364.preheader
  %indvars.iv1048 = phi i64 [ 0, %for.cond364.preheader ], [ %indvars.iv.next1049, %for.body367 ]
  %arrayidx372 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %indvars.iv1048, i64 %indvars.iv1057
  %77 = load i32* %arrayidx372, align 4, !tbaa !3
  %arrayidx374 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1048
  store i32 %77, i32* %arrayidx374, align 4, !tbaa !3
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %lftr.wideiv1050 = trunc i64 %indvars.iv.next1049 to i32
  %exitcond1051 = icmp eq i32 %lftr.wideiv1050, 4
  br i1 %exitcond1051, label %for.end377, label %for.body367

for.end377:                                       ; preds = %for.body367
  %78 = bitcast [4 x i32]* %m5 to i64*
  %79 = load i64* %78, align 16
  %80 = trunc i64 %79 to i32
  %81 = bitcast i32* %arrayidx379 to i64*
  %82 = load i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %add380 = add nsw i32 %83, %80
  store i32 %add380, i32* %arrayidx381, align 16, !tbaa !3
  %sub384 = sub nsw i32 %80, %83
  store i32 %sub384, i32* %arrayidx385, align 4, !tbaa !3
  %84 = lshr i64 %79, 32
  %85 = trunc i64 %84 to i32
  %shr387 = ashr i32 %85, 1
  %86 = lshr i64 %82, 32
  %87 = trunc i64 %86 to i32
  %sub389 = sub nsw i32 %shr387, %87
  store i32 %sub389, i32* %arrayidx390, align 8, !tbaa !3
  %shr393 = ashr i32 %87, 1
  %add394 = add nsw i32 %shr393, %85
  store i32 %add394, i32* %arrayidx395, align 4, !tbaa !3
  br label %for.body399

for.body399:                                      ; preds = %for.body399.for.body399_crit_edge, %for.end377
  %88 = phi i32 [ %add380, %for.end377 ], [ %.pre1078, %for.body399.for.body399_crit_edge ]
  %indvars.iv1052 = phi i64 [ 0, %for.end377 ], [ %indvars.iv.next1053, %for.body399.for.body399_crit_edge ]
  %89 = sub nsw i64 3, %indvars.iv1052
  %arrayidx404 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %89
  %90 = load i32* %arrayidx404, align 4, !tbaa !3
  %add405 = add nsw i32 %90, %88
  %arrayidx410 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %indvars.iv1052, i64 %indvars.iv1057
  store i32 %add405, i32* %arrayidx410, align 4, !tbaa !3
  %sub415 = sub nsw i32 %88, %90
  %arrayidx420 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %89, i64 %indvars.iv1057
  store i32 %sub415, i32* %arrayidx420, align 4, !tbaa !3
  %indvars.iv.next1053 = add i64 %indvars.iv1052, 1
  %lftr.wideiv1055 = trunc i64 %indvars.iv.next1053 to i32
  %exitcond1056 = icmp eq i32 %lftr.wideiv1055, 2
  br i1 %exitcond1056, label %for.inc424, label %for.body399.for.body399_crit_edge

for.body399.for.body399_crit_edge:                ; preds = %for.body399
  %arrayidx402.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1053
  %.pre1078 = load i32* %arrayidx402.phi.trans.insert, align 4, !tbaa !3
  br label %for.body399

for.inc424:                                       ; preds = %for.body399
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1
  %91 = trunc i64 %indvars.iv1057 to i32
  %cmp356.not = icmp sgt i32 %91, 2
  br i1 %cmp356.not, label %for.cond427.preheader, label %for.cond364.preheader

for.cond436.preheader:                            ; preds = %for.cond436.preheader.lr.ph, %for.inc722
  %indvars.iv1045 = phi i64 [ 0, %for.cond436.preheader.lr.ph ], [ %indvars.iv.next1046, %for.inc722 ]
  br label %for.body439

for.body439:                                      ; preds = %for.body439, %for.cond436.preheader
  %indvars.iv1033 = phi i64 [ 0, %for.cond436.preheader ], [ %indvars.iv.next1034, %for.body439 ]
  %arrayidx444 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1033
  %92 = load i32* %arrayidx444, align 4, !tbaa !3
  %arrayidx446 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1033
  store i32 %92, i32* %arrayidx446, align 4, !tbaa !3
  %indvars.iv.next1034 = add i64 %indvars.iv1033, 1
  %lftr.wideiv1035 = trunc i64 %indvars.iv.next1034 to i32
  %exitcond1036 = icmp eq i32 %lftr.wideiv1035, 4
  br i1 %exitcond1036, label %for.end449, label %for.body439

for.end449:                                       ; preds = %for.body439
  %93 = bitcast [4 x i32]* %m5 to i64*
  %94 = load i64* %93, align 16
  %95 = trunc i64 %94 to i32
  %96 = bitcast i32* %arrayidx451 to i64*
  %97 = load i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %add452 = add nsw i32 %98, %95
  store i32 %add452, i32* %arrayidx453, align 16, !tbaa !3
  %sub456 = sub nsw i32 %95, %98
  store i32 %sub456, i32* %arrayidx457, align 4, !tbaa !3
  %99 = lshr i64 %94, 32
  %100 = trunc i64 %99 to i32
  %shr459 = ashr i32 %100, 1
  %101 = lshr i64 %97, 32
  %102 = trunc i64 %101 to i32
  %sub461 = sub nsw i32 %shr459, %102
  store i32 %sub461, i32* %arrayidx462, align 8, !tbaa !3
  %shr465 = ashr i32 %102, 1
  %add466 = add nsw i32 %shr465, %100
  store i32 %add466, i32* %arrayidx467, align 4, !tbaa !3
  %103 = add nsw i64 %indvars.iv1045, %76
  br label %for.body471

for.body471:                                      ; preds = %for.inc719, %for.end449
  %indvars.iv1038 = phi i64 [ 0, %for.end449 ], [ %indvars.iv.next1039, %for.inc719 ]
  %104 = sub nsw i64 3, %indvars.iv1038
  %105 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool473 = icmp eq i32 %105, 0
  br i1 %tobool473, label %if.then474, label %if.else692

if.then474:                                       ; preds = %for.body471
  %106 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %conv475 = sext i32 %106 to i64
  %arrayidx477 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv1038
  %107 = load i32* %arrayidx477, align 4, !tbaa !3
  %arrayidx479 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %104
  %108 = load i32* %arrayidx479, align 4, !tbaa !3
  %add480 = add nsw i32 %108, %107
  %conv481 = sext i32 %add480 to i64
  %109 = add nsw i64 %indvars.iv1038, %75
  %arrayidx487 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 45, i64 %103, i64 %109
  %110 = load i16* %arrayidx487, align 2, !tbaa !4
  %conv488 = zext i16 %110 to i64
  %shl489 = shl nuw nsw i64 %conv488, 6
  %add490 = add i64 %conv481, 32
  %add491 = add i64 %add490, %shl489
  %shr492 = ashr i64 %add491, 6
  %cmp493 = icmp slt i64 %shr492, 0
  %.shr492 = select i1 %cmp493, i64 0, i64 %shr492
  %cmp513 = icmp slt i64 %conv475, %.shr492
  %conv475..shr492 = select i1 %cmp513, i64 %conv475, i64 %.shr492
  %conv563 = trunc i64 %conv475..shr492 to i32
  %arrayidx568 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1038
  store i32 %conv563, i32* %arrayidx568, align 4, !tbaa !3
  %111 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %conv570 = sext i32 %111 to i64
  %sub575 = sub nsw i32 %107, %108
  %conv576 = sext i32 %sub575 to i64
  %112 = add nsw i64 %104, %75
  %arrayidx583 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 45, i64 %103, i64 %112
  %113 = load i16* %arrayidx583, align 2, !tbaa !4
  %conv584 = zext i16 %113 to i64
  %shl585 = shl nuw nsw i64 %conv584, 6
  %add586 = add i64 %conv576, 32
  %add587 = add i64 %add586, %shl585
  %shr588 = ashr i64 %add587, 6
  %cmp589 = icmp slt i64 %shr588, 0
  %.shr588 = select i1 %cmp589, i64 0, i64 %shr588
  %cmp613 = icmp slt i64 %conv570, %.shr588
  %cond662 = select i1 %cmp613, i64 %conv570, i64 %.shr588
  %conv663 = trunc i64 %cond662 to i32
  %arrayidx668 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %104
  store i32 %conv663, i32* %arrayidx668, align 4, !tbaa !3
  br label %for.inc719

if.else692:                                       ; preds = %for.body471
  %arrayidx673 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv1038
  %114 = load i32* %arrayidx673, align 4, !tbaa !3
  %arrayidx675 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %104
  %115 = load i32* %arrayidx675, align 4, !tbaa !3
  %add676 = add nsw i32 %115, %114
  %add698 = add nsw i32 %add676, 32
  %shr699 = ashr i32 %add698, 6
  %arrayidx704 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %indvars.iv1038
  store i32 %shr699, i32* %arrayidx704, align 4, !tbaa !3
  %sub709 = add i32 %114, 32
  %add710 = sub i32 %sub709, %115
  %shr711 = ashr i32 %add710, 6
  %arrayidx716 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 46, i64 %indvars.iv1045, i64 %104
  store i32 %shr711, i32* %arrayidx716, align 4, !tbaa !3
  br label %for.inc719

for.inc719:                                       ; preds = %if.then474, %if.else692
  %indvars.iv.next1039 = add i64 %indvars.iv1038, 1
  %lftr.wideiv1043 = trunc i64 %indvars.iv.next1039 to i32
  %exitcond1044 = icmp eq i32 %lftr.wideiv1043, 2
  br i1 %exitcond1044, label %for.inc722, label %for.body471

for.inc722:                                       ; preds = %for.inc719
  %indvars.iv.next1046 = add i64 %indvars.iv1045, 1
  %116 = trunc i64 %indvars.iv1045 to i32
  %cmp428.not = icmp sgt i32 %116, 2
  br i1 %cmp428.not, label %for.end724, label %for.cond436.preheader

for.end724:                                       ; preds = %for.inc722, %for.cond427.preheader.for.end724_crit_edge
  %117 = phi %struct.ImageParameters* [ %.pre1077, %for.cond427.preheader.for.end724_crit_edge ], [ %74, %for.inc722 ]
  %residue_transform_flag725 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 164
  %118 = load i32* %residue_transform_flag725, align 4, !tbaa !3
  %tobool726 = icmp eq i32 %118, 0
  br i1 %tobool726, label %for.cond728.preheader, label %if.end786

for.cond728.preheader:                            ; preds = %for.end724
  %pix_x = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 34
  %119 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %119, i64 0, i32 25
  %120 = sext i32 %block_x to i64
  %121 = sext i32 %block_y to i64
  br label %for.cond732.preheader

for.cond732.preheader:                            ; preds = %for.inc783, %for.cond728.preheader
  %indvars.iv1028 = phi i64 [ 0, %for.cond728.preheader ], [ %indvars.iv.next1029, %for.inc783 ]
  %122 = add nsw i64 %indvars.iv1028, %121
  %123 = trunc i64 %indvars.iv1028 to i32
  %add756 = add i32 %123, %block_y
  br label %for.body735

for.body735:                                      ; preds = %for.inc780, %for.cond732.preheader
  %indvars.iv = phi i64 [ 0, %for.cond732.preheader ], [ %indvars.iv.next, %for.inc780 ]
  %arrayidx742 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1028
  %124 = load i32* %arrayidx742, align 4, !tbaa !3
  br i1 %30, label %if.then737, label %if.else761

if.then737:                                       ; preds = %for.body735
  %125 = add nsw i64 %indvars.iv, %120
  %arrayidx749 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 45, i64 %125, i64 %122
  %126 = load i16* %arrayidx749, align 2, !tbaa !4
  %conv750 = zext i16 %126 to i32
  %add751 = add nsw i32 %conv750, %124
  %conv752 = trunc i32 %add751 to i16
  %127 = load i32* %pix_x, align 4, !tbaa !3
  %128 = trunc i64 %indvars.iv to i32
  %add753 = add i32 %128, %block_x
  %add754 = add i32 %add753, %127
  %idxprom755 = sext i32 %add754 to i64
  %129 = load i32* %pix_y, align 4, !tbaa !3
  %add757 = add i32 %add756, %129
  %idxprom758 = sext i32 %add757 to i64
  %130 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx759 = getelementptr inbounds i16** %130, i64 %idxprom758
  %131 = load i16** %arrayidx759, align 8, !tbaa !0
  %arrayidx760 = getelementptr inbounds i16* %131, i64 %idxprom755
  store i16 %conv752, i16* %arrayidx760, align 2, !tbaa !4
  br label %for.inc780

if.else761:                                       ; preds = %for.body735
  %conv767 = trunc i32 %124 to i16
  %132 = load i32* %pix_x, align 4, !tbaa !3
  %133 = trunc i64 %indvars.iv to i32
  %add769 = add i32 %133, %block_x
  %add770 = add i32 %add769, %132
  %idxprom771 = sext i32 %add770 to i64
  %134 = load i32* %pix_y, align 4, !tbaa !3
  %add774 = add i32 %add756, %134
  %idxprom775 = sext i32 %add774 to i64
  %135 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx777 = getelementptr inbounds i16** %135, i64 %idxprom775
  %136 = load i16** %arrayidx777, align 8, !tbaa !0
  %arrayidx778 = getelementptr inbounds i16* %136, i64 %idxprom771
  store i16 %conv767, i16* %arrayidx778, align 2, !tbaa !4
  br label %for.inc780

for.inc780:                                       ; preds = %if.then737, %if.else761
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc783, label %for.body735

for.inc783:                                       ; preds = %for.inc780
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1
  %lftr.wideiv1031 = trunc i64 %indvars.iv.next1029 to i32
  %exitcond1032 = icmp eq i32 %lftr.wideiv1031, 4
  br i1 %exitcond1032, label %if.end786, label %for.cond732.preheader

if.end786:                                        ; preds = %for.inc783, %for.end724
  ret i32 %nonzero.11002
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
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %add = add nsw i32 %uv, 1
  %idxprom1 = sext i32 %add to i64
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %3 = load i32**** %cofDC, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32*** %3, i64 %idxprom1
  %4 = load i32*** %arrayidx2, align 8, !tbaa !0
  %5 = load i32** %4, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32** %4, i64 1
  %6 = load i32** %arrayidx8, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %7 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %7, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ]

lor.rhs:                                          ; preds = %entry
  br label %lor.end

lor.end:                                          ; preds = %entry, %entry, %entry, %lor.rhs
  %8 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ true, %entry ], [ true, %entry ]
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %9 = load i32* %num_blk8x8_uv, align 4, !tbaa !3
  %div = sdiv i32 %9, 2
  %mul = mul nsw i32 %div, %uv
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %10 = load i32* %yuv_format, align 4, !tbaa !3
  %11 = bitcast [4 x [4 x i32]]* %m3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #1
  %12 = bitcast [4 x [4 x i32]]* %m4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %12) #1
  %qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3
  %13 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151
  %14 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add13 = sub i32 0, %14
  %cmp14 = icmp eq i32 %13, %add13
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160
  %15 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %15, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %16 = phi i1 [ false, %lor.end ], [ %cmp15, %land.rhs ]
  %idxprom17 = sext i32 %uv to i64
  %arrayidx18 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 163, i64 %idxprom17
  %17 = load i32* %arrayidx18, align 4, !tbaa !3
  %add19 = add nsw i32 %17, %13
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 152
  %18 = load i32* %bitdepth_chroma_qp_scale, align 4, !tbaa !3
  %sub = sub nsw i32 0, %18
  %cmp20 = icmp slt i32 %add19, %sub
  br i1 %cmp20, label %cond.end26, label %cond.false

cond.false:                                       ; preds = %land.end
  %cmp23 = icmp sgt i32 %add19, 51
  %cond = select i1 %cmp23, i32 51, i32 %add19
  br label %cond.end26

cond.end26:                                       ; preds = %land.end, %cond.false
  %cond27 = phi i32 [ %cond, %cond.false ], [ %sub, %land.end ]
  %cmp28 = icmp slt i32 %cond27, 0
  br i1 %cmp28, label %cond.end34, label %cond.false30

cond.false30:                                     ; preds = %cond.end26
  %idxprom32 = sext i32 %cond27 to i64
  %arrayidx33 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom32
  %19 = load i8* %arrayidx33, align 1, !tbaa !1
  %conv = zext i8 %19 to i32
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end26, %cond.false30
  %cond35 = phi i32 [ %conv, %cond.false30 ], [ %cond27, %cond.end26 ]
  %add37 = add nsw i32 %18, %cond35
  %div38 = sdiv i32 %add37, 6
  %rem = srem i32 %add37, 6
  %add41 = add nsw i32 %div38, 15
  %cmp43 = icmp eq i32 %10, 2
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end34
  %add45 = add nsw i32 %cond35, 3
  %add47 = add nsw i32 %add45, %18
  %div48 = sdiv i32 %add47, 6
  %rem52 = srem i32 %add47, 6
  %phitmp = sext i32 %rem52 to i64
  %phitmp3215 = add i32 %div48, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end34
  %qp_per_dc.0 = phi i32 [ %div48, %if.then ], [ 0, %cond.end34 ]
  %qp_rem_dc.0 = phi i64 [ %phitmp, %if.then ], [ 0, %cond.end34 ]
  %q_bits_422.0 = phi i32 [ %phitmp3215, %if.then ], [ 1, %cond.end34 ]
  %mb_cr_size_y3353 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %20 = load i32* %mb_cr_size_y3353, align 4, !tbaa !3
  %cmp543354 = icmp sgt i32 %20, 0
  br i1 %cmp543354, label %for.cond56.preheader.lr.ph, label %for.end236

for.cond56.preheader.lr.ph:                       ; preds = %if.end
  %mb_cr_size_x3348 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %arrayidx208 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx210 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %.pre3596 = load i32* %mb_cr_size_x3348, align 4, !tbaa !3
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.cond56.preheader.lr.ph, %for.inc234
  %21 = phi i32 [ %20, %for.cond56.preheader.lr.ph ], [ %69, %for.inc234 ]
  %22 = phi i32 [ %.pre3596, %for.cond56.preheader.lr.ph ], [ %70, %for.inc234 ]
  %indvars.iv3557 = phi i64 [ 0, %for.cond56.preheader.lr.ph ], [ %indvars.iv.next3558, %for.inc234 ]
  %cmp573349 = icmp sgt i32 %22, 0
  br i1 %cmp573349, label %for.cond60.preheader.lr.ph, label %for.inc234

for.cond60.preheader.lr.ph:                       ; preds = %for.cond56.preheader
  %add2023218 = shl i64 %indvars.iv3557, 32
  %sext = ashr exact i64 %add2023218, 32
  %idxprom203 = or i64 %sext, 2
  %add2123219 = shl i64 %indvars.iv3557, 32
  %sext3609 = ashr exact i64 %add2123219, 32
  %idxprom213 = or i64 %sext3609, 1
  %add2223220 = shl i64 %indvars.iv3557, 32
  %sext3610 = ashr exact i64 %add2223220, 32
  %idxprom223 = or i64 %sext3610, 3
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.cond60.preheader.lr.ph, %for.inc231
  %indvars.iv3555 = phi i64 [ 0, %for.cond60.preheader.lr.ph ], [ %indvars.iv.next3556, %for.inc231 ]
  br i1 %16, label %for.inc231, label %for.body66.lr.ph

for.body66.lr.ph:                                 ; preds = %for.cond60.preheader
  %add1143221 = shl i64 %indvars.iv3555, 32
  %sext3611 = ashr exact i64 %add1143221, 32
  %idxprom115 = or i64 %sext3611, 2
  %add1243222 = shl i64 %indvars.iv3555, 32
  %sext3612 = ashr exact i64 %add1243222, 32
  %idxprom125 = or i64 %sext3612, 1
  %add1343223 = shl i64 %indvars.iv3555, 32
  %sext3613 = ashr exact i64 %add1343223, 32
  %idxprom135 = or i64 %sext3613, 3
  br label %for.body66

for.body66:                                       ; preds = %for.body66.lr.ph, %for.end
  %indvars.iv3542 = phi i64 [ 0, %for.body66.lr.ph ], [ %indvars.iv.next3543, %for.end ]
  %23 = add nsw i64 %indvars.iv3542, %indvars.iv3557
  br label %for.body71

for.body71:                                       ; preds = %for.body71, %for.body66
  %indvars.iv3535 = phi i64 [ 0, %for.body66 ], [ %indvars.iv.next3536, %for.body71 ]
  %24 = sub nsw i64 3, %indvars.iv3535
  %25 = add nsw i64 %indvars.iv3535, %indvars.iv3555
  %arrayidx77 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %25, i64 %23
  %26 = load i32* %arrayidx77, align 4, !tbaa !3
  %27 = add nsw i64 %24, %indvars.iv3555
  %arrayidx83 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %27, i64 %23
  %28 = load i32* %arrayidx83, align 4, !tbaa !3
  %add84 = add nsw i32 %28, %26
  %arrayidx86 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3535
  store i32 %add84, i32* %arrayidx86, align 4, !tbaa !3
  %29 = load i32* %arrayidx77, align 4, !tbaa !3
  %30 = load i32* %arrayidx83, align 4, !tbaa !3
  %sub99 = sub nsw i32 %29, %30
  %arrayidx101 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %24
  store i32 %sub99, i32* %arrayidx101, align 4, !tbaa !3
  %indvars.iv.next3536 = add i64 %indvars.iv3535, 1
  %lftr.wideiv3540 = trunc i64 %indvars.iv.next3536 to i32
  %exitcond3541 = icmp eq i32 %lftr.wideiv3540, 2
  br i1 %exitcond3541, label %for.end, label %for.body71

for.end:                                          ; preds = %for.body71
  %31 = bitcast [4 x i32]* %m5 to i64*
  %32 = load i64* %31, align 16
  %33 = trunc i64 %32 to i32
  %34 = lshr i64 %32, 32
  %35 = trunc i64 %34 to i32
  %add104 = add nsw i32 %35, %33
  %arrayidx109 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3555, i64 %23
  store i32 %add104, i32* %arrayidx109, align 4, !tbaa !3
  %36 = load i64* %31, align 16
  %37 = trunc i64 %36 to i32
  %38 = lshr i64 %36, 32
  %39 = trunc i64 %38 to i32
  %sub112 = sub nsw i32 %37, %39
  %arrayidx118 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom115, i64 %23
  store i32 %sub112, i32* %arrayidx118, align 4, !tbaa !3
  %40 = load i32* %arrayidx208, align 4, !tbaa !3
  %mul120 = shl i32 %40, 1
  %41 = load i32* %arrayidx210, align 8, !tbaa !3
  %add122 = add nsw i32 %mul120, %41
  %arrayidx128 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom125, i64 %23
  store i32 %add122, i32* %arrayidx128, align 4, !tbaa !3
  %42 = load i32* %arrayidx208, align 4, !tbaa !3
  %43 = load i32* %arrayidx210, align 8, !tbaa !3
  %mul131 = shl nsw i32 %43, 1
  %sub132 = sub nsw i32 %42, %mul131
  %arrayidx138 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %idxprom135, i64 %23
  store i32 %sub132, i32* %arrayidx138, align 4, !tbaa !3
  %indvars.iv.next3543 = add i64 %indvars.iv3542, 1
  %44 = trunc i64 %indvars.iv3542 to i32
  %cmp61.not = icmp sgt i32 %44, 2
  br i1 %cmp61.not, label %for.cond142.loopexit, label %for.body66

for.cond142.loopexit:                             ; preds = %for.end
  br i1 %16, label %for.inc231, label %for.body150

for.body150:                                      ; preds = %for.cond142.loopexit, %for.end189
  %indvars.iv3552 = phi i64 [ %indvars.iv.next3553, %for.end189 ], [ 0, %for.cond142.loopexit ]
  %45 = add nsw i64 %indvars.iv3552, %indvars.iv3555
  br label %for.body155

for.body155:                                      ; preds = %for.body155, %for.body150
  %indvars.iv3545 = phi i64 [ 0, %for.body150 ], [ %indvars.iv.next3546, %for.body155 ]
  %46 = sub nsw i64 3, %indvars.iv3545
  %47 = add nsw i64 %indvars.iv3545, %indvars.iv3557
  %arrayidx162 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %47
  %48 = load i32* %arrayidx162, align 4, !tbaa !3
  %49 = add nsw i64 %46, %indvars.iv3557
  %arrayidx168 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %49
  %50 = load i32* %arrayidx168, align 4, !tbaa !3
  %add169 = add nsw i32 %50, %48
  %arrayidx171 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3545
  store i32 %add169, i32* %arrayidx171, align 4, !tbaa !3
  %51 = load i32* %arrayidx162, align 4, !tbaa !3
  %52 = load i32* %arrayidx168, align 4, !tbaa !3
  %sub184 = sub nsw i32 %51, %52
  %arrayidx186 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %46
  store i32 %sub184, i32* %arrayidx186, align 4, !tbaa !3
  %indvars.iv.next3546 = add i64 %indvars.iv3545, 1
  %lftr.wideiv3550 = trunc i64 %indvars.iv.next3546 to i32
  %exitcond3551 = icmp eq i32 %lftr.wideiv3550, 2
  br i1 %exitcond3551, label %for.end189, label %for.body155

for.end189:                                       ; preds = %for.body155
  %53 = bitcast [4 x i32]* %m5 to i64*
  %54 = load i64* %53, align 16
  %55 = trunc i64 %54 to i32
  %56 = lshr i64 %54, 32
  %57 = trunc i64 %56 to i32
  %add192 = add nsw i32 %57, %55
  %arrayidx198 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %indvars.iv3557
  store i32 %add192, i32* %arrayidx198, align 4, !tbaa !3
  %58 = load i64* %53, align 16
  %59 = trunc i64 %58 to i32
  %60 = lshr i64 %58, 32
  %61 = trunc i64 %60 to i32
  %sub201 = sub nsw i32 %59, %61
  %arrayidx207 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom203
  store i32 %sub201, i32* %arrayidx207, align 4, !tbaa !3
  %62 = load i32* %arrayidx208, align 4, !tbaa !3
  %mul209 = shl i32 %62, 1
  %63 = load i32* %arrayidx210, align 8, !tbaa !3
  %add211 = add nsw i32 %mul209, %63
  %arrayidx217 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom213
  store i32 %add211, i32* %arrayidx217, align 4, !tbaa !3
  %64 = load i32* %arrayidx208, align 4, !tbaa !3
  %65 = load i32* %arrayidx210, align 8, !tbaa !3
  %mul220 = shl nsw i32 %65, 1
  %sub221 = sub nsw i32 %64, %mul220
  %arrayidx227 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %45, i64 %idxprom223
  store i32 %sub221, i32* %arrayidx227, align 4, !tbaa !3
  %indvars.iv.next3553 = add i64 %indvars.iv3552, 1
  %66 = trunc i64 %indvars.iv3552 to i32
  %cmp143.not = icmp sgt i32 %66, 2
  br i1 %cmp143.not, label %for.inc231, label %for.body150

for.inc231:                                       ; preds = %for.cond60.preheader, %for.end189, %for.cond142.loopexit
  %indvars.iv.next3556 = add i64 %indvars.iv3555, 4
  %67 = load i32* %mb_cr_size_x3348, align 4, !tbaa !3
  %68 = trunc i64 %indvars.iv.next3556 to i32
  %cmp57 = icmp slt i32 %68, %67
  br i1 %cmp57, label %for.cond60.preheader, label %for.cond56.for.inc234_crit_edge

for.cond56.for.inc234_crit_edge:                  ; preds = %for.inc231
  %.pre3597 = load i32* %mb_cr_size_y3353, align 4, !tbaa !3
  br label %for.inc234

for.inc234:                                       ; preds = %for.cond56.for.inc234_crit_edge, %for.cond56.preheader
  %69 = phi i32 [ %.pre3597, %for.cond56.for.inc234_crit_edge ], [ %21, %for.cond56.preheader ]
  %70 = phi i32 [ %67, %for.cond56.for.inc234_crit_edge ], [ %22, %for.cond56.preheader ]
  %indvars.iv.next3558 = add i64 %indvars.iv3557, 4
  %71 = trunc i64 %indvars.iv.next3558 to i32
  %cmp54 = icmp slt i32 %71, %69
  br i1 %cmp54, label %for.cond56.preheader, label %for.end236

for.end236:                                       ; preds = %for.inc234, %if.end
  %72 = phi i32 [ %20, %if.end ], [ %69, %for.inc234 ]
  switch i32 %10, label %if.end1682 [
    i32 1, label %if.then239
    i32 2, label %for.cond518.preheader
    i32 3, label %for.cond1078.preheader
  ]

for.cond1078.preheader:                           ; preds = %for.end236
  %cmp10803342 = icmp sgt i32 %72, 0
  br i1 %cmp10803342, label %for.cond1083.preheader.lr.ph, label %for.cond1105.preheader

for.cond1083.preheader.lr.ph:                     ; preds = %for.cond1078.preheader
  %mb_cr_size_x10843338 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %.pre3594 = load i32* %mb_cr_size_x10843338, align 4, !tbaa !3
  br label %for.cond1083.preheader

for.cond518.preheader:                            ; preds = %for.end236
  %cmp5203320 = icmp sgt i32 %72, 0
  br i1 %cmp5203320, label %for.cond523.preheader.lr.ph, label %for.cond518.preheader.for.end544_crit_edge

for.cond518.preheader.for.end544_crit_edge:       ; preds = %for.cond518.preheader
  %arrayidx546.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 0
  %arrayidx548.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 0
  %arrayidx560.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 2
  %arrayidx562.pre = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 2
  br label %for.end544

for.cond523.preheader.lr.ph:                      ; preds = %for.cond518.preheader
  %mb_cr_size_x5243316 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %73 = load i32* %mb_cr_size_x5243316, align 4, !tbaa !3
  %cmp5253317 = icmp sgt i32 %73, 0
  br label %for.cond523.preheader

if.then239:                                       ; preds = %for.end236
  %arrayidx242 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0
  %74 = load i32* %arrayidx242, align 4, !tbaa !3
  %arrayidx245 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 0
  %75 = load i32* %arrayidx245, align 4, !tbaa !3
  %add246 = add nsw i32 %75, %74
  %arrayidx249 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 4
  %76 = load i32* %arrayidx249, align 4, !tbaa !3
  %add250 = add nsw i32 %add246, %76
  %arrayidx253 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 4, i64 4
  %77 = load i32* %arrayidx253, align 4, !tbaa !3
  %add254 = add nsw i32 %add250, %77
  %arrayidx255 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 0
  store i32 %add254, i32* %arrayidx255, align 16, !tbaa !3
  %78 = load i32* %arrayidx242, align 4, !tbaa !3
  %79 = load i32* %arrayidx245, align 4, !tbaa !3
  %sub262 = sub i32 %78, %79
  %80 = load i32* %arrayidx249, align 4, !tbaa !3
  %add266 = add nsw i32 %sub262, %80
  %81 = load i32* %arrayidx253, align 4, !tbaa !3
  %sub270 = sub i32 %add266, %81
  %arrayidx271 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 1
  store i32 %sub270, i32* %arrayidx271, align 4, !tbaa !3
  %add278 = add nsw i32 %79, %78
  %sub282 = sub i32 %add278, %80
  %sub286 = sub i32 %sub282, %81
  %arrayidx287 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 2
  store i32 %sub286, i32* %arrayidx287, align 8, !tbaa !3
  %sub298 = sub i32 %sub262, %80
  %add302 = add nsw i32 %sub298, %81
  %arrayidx303 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 3
  store i32 %add302, i32* %arrayidx303, align 4, !tbaa !3
  %idxprom314 = sext i32 %rem to i64
  %arrayidx319 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0
  %idxprom321 = sext i32 %div38 to i64
  %arrayidx326 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom321, i64 0, i64 0
  %add328 = add nsw i32 %div38, 16
  %shl364 = shl i32 %uv, 2
  %shl365 = shl i32 983040, %shl364
  %conv366 = sext i32 %shl365 to i64
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %arrayidx337 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0
  %arrayidx344 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom321, i64 0, i64 0
  br label %for.body307

for.body307:                                      ; preds = %if.end384.for.body307_crit_edge, %if.then239
  %82 = phi i32 [ %add254, %if.then239 ], [ %.pre3601, %if.end384.for.body307_crit_edge ]
  %indvars.iv3429 = phi i64 [ 0, %if.then239 ], [ %indvars.iv.next3430, %if.end384.for.body307_crit_edge ]
  %cr_cbp.addr.03305 = phi i32 [ %cr_cbp, %if.then239 ], [ %cr_cbp.addr.1, %if.end384.for.body307_crit_edge ]
  %DCcoded.03303 = phi i32 [ 0, %if.then239 ], [ %DCcoded.1, %if.end384.for.body307_crit_edge ]
  %run.03302 = phi i32 [ -1, %if.then239 ], [ %run.1, %if.end384.for.body307_crit_edge ]
  %scan_pos.03301 = phi i32 [ 0, %if.then239 ], [ %scan_pos.1, %if.end384.for.body307_crit_edge ]
  %inc308 = add nsw i32 %run.03302, 1
  %arrayidx313 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3429
  %ispos3216 = icmp sgt i32 %82, -1
  %neg3217 = sub i32 0, %82
  %83 = select i1 %ispos3216, i32 %82, i32 %neg3217
  br i1 %8, label %if.then311, label %if.else

if.then311:                                       ; preds = %for.body307
  %84 = load i32* %arrayidx319, align 4, !tbaa !3
  %mul320 = mul nsw i32 %84, %83
  %85 = load i32* %arrayidx326, align 4, !tbaa !3
  %shl = shl i32 %85, 1
  %add327 = add nsw i32 %shl, %mul320
  br label %if.end349

if.else:                                          ; preds = %for.body307
  %86 = load i32* %arrayidx337, align 4, !tbaa !3
  %mul338 = mul nsw i32 %86, %83
  %87 = load i32* %arrayidx344, align 4, !tbaa !3
  %shl345 = shl i32 %87, 1
  %add346 = add nsw i32 %shl345, %mul338
  br label %if.end349

if.end349:                                        ; preds = %if.else, %if.then311
  %add327.pn = phi i32 [ %add327, %if.then311 ], [ %add346, %if.else ]
  %level.0 = ashr i32 %add327.pn, %add328
  %88 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 59
  %89 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp350 = icmp eq i32 %89, 0
  br i1 %cmp350, label %land.lhs.true, label %if.end360

land.lhs.true:                                    ; preds = %if.end349
  %90 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp352 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 10
  %91 = load i32* %qp352, align 4, !tbaa !3
  %cmp353 = icmp slt i32 %91, 4
  %cmp356 = icmp sgt i32 %level.0, 2063
  %or.cond = and i1 %cmp353, %cmp356
  %.level.0 = select i1 %or.cond, i32 2063, i32 %level.0
  br label %if.end360

if.end360:                                        ; preds = %land.lhs.true, %if.end349
  %level.1 = phi i32 [ %level.0, %if.end349 ], [ %.level.0, %land.lhs.true ]
  %cmp361 = icmp eq i32 %level.1, 0
  br i1 %cmp361, label %if.end384, label %if.then363

if.then363:                                       ; preds = %if.end360
  %92 = load i64* %cbp_blk, align 8, !tbaa !5
  %or = or i64 %92, %conv366
  store i64 %or, i64* %cbp_blk, align 8, !tbaa !5
  %cmp367 = icmp slt i32 %cr_cbp.addr.03305, 1
  %cond372 = select i1 %cmp367, i32 1, i32 %cr_cbp.addr.03305
  %call375 = call i32 @sign(i32 %level.1, i32 %82) #3
  %idxprom376 = sext i32 %scan_pos.03301 to i64
  %arrayidx377 = getelementptr inbounds i32* %5, i64 %idxprom376
  store i32 %call375, i32* %arrayidx377, align 4, !tbaa !3
  %arrayidx379 = getelementptr inbounds i32* %6, i64 %idxprom376
  store i32 %inc308, i32* %arrayidx379, align 4, !tbaa !3
  %inc380 = add nsw i32 %scan_pos.03301, 1
  %call383 = call i32 @sign(i32 %level.1, i32 %82) #3
  br label %if.end384

if.end384:                                        ; preds = %if.end360, %if.then363
  %scan_pos.1 = phi i32 [ %inc380, %if.then363 ], [ %scan_pos.03301, %if.end360 ]
  %run.1 = phi i32 [ -1, %if.then363 ], [ %inc308, %if.end360 ]
  %DCcoded.1 = phi i32 [ 1, %if.then363 ], [ %DCcoded.03303, %if.end360 ]
  %ilev.0 = phi i32 [ %call383, %if.then363 ], [ 0, %if.end360 ]
  %cr_cbp.addr.1 = phi i32 [ %cond372, %if.then363 ], [ %cr_cbp.addr.03305, %if.end360 ]
  store i32 %ilev.0, i32* %arrayidx313, align 4, !tbaa !3
  %indvars.iv.next3430 = add i64 %indvars.iv3429, 1
  %lftr.wideiv3431 = trunc i64 %indvars.iv.next3430 to i32
  %exitcond3432 = icmp eq i32 %lftr.wideiv3431, 4
  br i1 %exitcond3432, label %for.end389, label %if.end384.for.body307_crit_edge

if.end384.for.body307_crit_edge:                  ; preds = %if.end384
  %arrayidx313.phi.trans.insert = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv.next3430
  %.pre3601 = load i32* %arrayidx313.phi.trans.insert, align 4, !tbaa !3
  br label %for.body307

for.end389:                                       ; preds = %if.end384
  %idxprom390 = sext i32 %scan_pos.1 to i64
  %arrayidx391 = getelementptr inbounds i32* %5, i64 %idxprom390
  store i32 0, i32* %arrayidx391, align 4, !tbaa !3
  %93 = bitcast [4 x i32]* %m1 to i64*
  %94 = load i64* %93, align 16
  %95 = trunc i64 %94 to i32
  %96 = lshr i64 %94, 32
  %97 = trunc i64 %96 to i32
  %add394 = add nsw i32 %97, %95
  %98 = bitcast i32* %arrayidx287 to i64*
  %99 = load i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %add396 = add nsw i32 %add394, %100
  %101 = lshr i64 %99, 32
  %102 = trunc i64 %101 to i32
  %add398 = add nsw i32 %add396, %102
  %arrayidx399 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 0
  store i32 %add398, i32* %arrayidx399, align 16, !tbaa !3
  %sub402 = sub i32 %95, %97
  %add404 = add nsw i32 %sub402, %100
  %sub406 = sub i32 %add404, %102
  %arrayidx407 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 1
  store i32 %sub406, i32* %arrayidx407, align 4, !tbaa !3
  %sub412 = sub i32 %add394, %100
  %sub414 = sub i32 %sub412, %102
  %arrayidx415 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  store i32 %sub414, i32* %arrayidx415, align 8, !tbaa !3
  %sub420 = sub i32 %sub402, %100
  %add422 = add nsw i32 %sub420, %102
  %arrayidx423 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  store i32 %add422, i32* %arrayidx423, align 4, !tbaa !3
  %cmp428 = icmp slt i32 %add37, 30
  %arrayidx441 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0
  %sub443 = sub nsw i32 5, %div38
  %arrayidx455 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom314, i64 0, i64 0
  %sub475 = add nsw i32 %div38, -5
  br label %for.body427

for.body427:                                      ; preds = %for.inc495.for.body427_crit_edge, %for.end389
  %103 = phi i32 [ %add398, %for.end389 ], [ %.pre3602, %for.inc495.for.body427_crit_edge ]
  %indvars.iv3425 = phi i64 [ 0, %for.end389 ], [ %indvars.iv.next3426, %for.inc495.for.body427_crit_edge ]
  br i1 %cmp428, label %if.then430, label %if.else462

if.then430:                                       ; preds = %for.body427
  br i1 %8, label %if.then433, label %if.else447

if.then433:                                       ; preds = %if.then430
  %104 = load i32* %arrayidx441, align 4, !tbaa !3
  %mul442 = mul nsw i32 %104, %103
  %shr444 = ashr i32 %mul442, %sub443
  %arrayidx446 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425
  store i32 %shr444, i32* %arrayidx446, align 4, !tbaa !3
  br label %for.inc495

if.else447:                                       ; preds = %if.then430
  %105 = load i32* %arrayidx455, align 4, !tbaa !3
  %mul456 = mul nsw i32 %105, %103
  %shr458 = ashr i32 %mul456, %sub443
  %arrayidx460 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425
  store i32 %shr458, i32* %arrayidx460, align 4, !tbaa !3
  br label %for.inc495

if.else462:                                       ; preds = %for.body427
  br i1 %8, label %if.then465, label %if.else479

if.then465:                                       ; preds = %if.else462
  %106 = load i32* %arrayidx441, align 4, !tbaa !3
  %mul474 = mul nsw i32 %106, %103
  %shl476 = shl i32 %mul474, %sub475
  %arrayidx478 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425
  store i32 %shl476, i32* %arrayidx478, align 4, !tbaa !3
  br label %for.inc495

if.else479:                                       ; preds = %if.else462
  %107 = load i32* %arrayidx455, align 4, !tbaa !3
  %mul488 = mul nsw i32 %107, %103
  %shl490 = shl i32 %mul488, %sub475
  %arrayidx492 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv3425
  store i32 %shl490, i32* %arrayidx492, align 4, !tbaa !3
  br label %for.inc495

for.inc495:                                       ; preds = %if.else447, %if.then433, %if.else479, %if.then465
  %indvars.iv.next3426 = add i64 %indvars.iv3425, 1
  %lftr.wideiv3427 = trunc i64 %indvars.iv.next3426 to i32
  %exitcond3428 = icmp eq i32 %lftr.wideiv3427, 4
  br i1 %exitcond3428, label %for.end497, label %for.inc495.for.body427_crit_edge

for.inc495.for.body427_crit_edge:                 ; preds = %for.inc495
  %arrayidx435.phi.trans.insert = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv.next3426
  %.pre3602 = load i32* %arrayidx435.phi.trans.insert, align 4, !tbaa !3
  br label %for.body427

for.end497:                                       ; preds = %for.inc495
  %108 = load i64* %93, align 16
  %109 = trunc i64 %108 to i32
  %110 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx501 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 0, i64 0
  store i32 %109, i32* %arrayidx501, align 4, !tbaa !3
  %111 = lshr i64 %108, 32
  %112 = trunc i64 %111 to i32
  %arrayidx505 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 4, i64 0
  store i32 %112, i32* %arrayidx505, align 4, !tbaa !3
  %113 = load i64* %98, align 8
  %114 = trunc i64 %113 to i32
  %arrayidx509 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 0, i64 4
  store i32 %114, i32* %arrayidx509, align 4, !tbaa !3
  %115 = lshr i64 %113, 32
  %116 = trunc i64 %115 to i32
  %arrayidx513 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 46, i64 4, i64 4
  store i32 %116, i32* %arrayidx513, align 4, !tbaa !3
  br label %if.end1682

for.cond523.preheader:                            ; preds = %for.cond523.preheader.lr.ph, %for.inc542
  %indvars.iv3475 = phi i64 [ 0, %for.cond523.preheader.lr.ph ], [ %indvars.iv.next3476, %for.inc542 ]
  br i1 %cmp5253317, label %for.body527.lr.ph, label %for.inc542

for.body527.lr.ph:                                ; preds = %for.cond523.preheader
  %117 = trunc i64 %indvars.iv3475 to i32
  %shr533 = ashr exact i32 %117, 2
  %idxprom534 = sext i32 %shr533 to i64
  br label %for.body527

for.body527:                                      ; preds = %for.body527.lr.ph, %for.body527
  %indvars.iv3473 = phi i64 [ 0, %for.body527.lr.ph ], [ %indvars.iv.next3474, %for.body527 ]
  %arrayidx532 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3473, i64 %indvars.iv3475
  %118 = load i32* %arrayidx532, align 4, !tbaa !3
  %119 = trunc i64 %indvars.iv3473 to i32
  %shr535 = ashr exact i32 %119, 2
  %idxprom536 = sext i32 %shr535 to i64
  %arrayidx538 = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 %idxprom536, i64 %idxprom534
  store i32 %118, i32* %arrayidx538, align 4, !tbaa !3
  %indvars.iv.next3474 = add i64 %indvars.iv3473, 4
  %120 = trunc i64 %indvars.iv.next3474 to i32
  %cmp525 = icmp slt i32 %120, %73
  br i1 %cmp525, label %for.body527, label %for.inc542

for.inc542:                                       ; preds = %for.body527, %for.cond523.preheader
  %indvars.iv.next3476 = add i64 %indvars.iv3475, 4
  %121 = trunc i64 %indvars.iv.next3476 to i32
  %cmp520 = icmp slt i32 %121, %72
  br i1 %cmp520, label %for.cond523.preheader, label %for.cond518.for.end544_crit_edge

for.cond518.for.end544_crit_edge:                 ; preds = %for.inc542
  %arrayidx546.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 0
  %122 = bitcast [4 x [4 x i32]]* %m3 to i64*
  %123 = load i64* %122, align 16
  %124 = trunc i64 %123 to i32
  %arrayidx548.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 0
  %125 = bitcast i32* %arrayidx548.phi.trans.insert to i64*
  %126 = load i64* %125, align 16
  %127 = trunc i64 %126 to i32
  %128 = lshr i64 %123, 32
  %129 = trunc i64 %128 to i32
  %130 = lshr i64 %126, 32
  %131 = trunc i64 %130 to i32
  %arrayidx560.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 0, i64 2
  %132 = bitcast i32* %arrayidx560.phi.trans.insert to i64*
  %133 = load i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %arrayidx562.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 1, i64 2
  %135 = bitcast i32* %arrayidx562.phi.trans.insert to i64*
  %136 = load i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = lshr i64 %133, 32
  %139 = trunc i64 %138 to i32
  %140 = lshr i64 %136, 32
  %141 = trunc i64 %140 to i32
  br label %for.end544

for.end544:                                       ; preds = %for.cond518.preheader.for.end544_crit_edge, %for.cond518.for.end544_crit_edge
  %arrayidx562.pre-phi = phi i32* [ %arrayidx562.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx562.phi.trans.insert, %for.cond518.for.end544_crit_edge ]
  %arrayidx560.pre-phi = phi i32* [ %arrayidx560.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx560.phi.trans.insert, %for.cond518.for.end544_crit_edge ]
  %arrayidx548.pre-phi = phi i32* [ %arrayidx548.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx548.phi.trans.insert, %for.cond518.for.end544_crit_edge ]
  %arrayidx546.pre-phi = phi i32* [ %arrayidx546.pre, %for.cond518.preheader.for.end544_crit_edge ], [ %arrayidx546.phi.trans.insert, %for.cond518.for.end544_crit_edge ]
  %142 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %141, %for.cond518.for.end544_crit_edge ]
  %143 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %139, %for.cond518.for.end544_crit_edge ]
  %144 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %137, %for.cond518.for.end544_crit_edge ]
  %145 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %134, %for.cond518.for.end544_crit_edge ]
  %146 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %131, %for.cond518.for.end544_crit_edge ]
  %147 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %129, %for.cond518.for.end544_crit_edge ]
  %148 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %127, %for.cond518.for.end544_crit_edge ]
  %149 = phi i32 [ undef, %for.cond518.preheader.for.end544_crit_edge ], [ %124, %for.cond518.for.end544_crit_edge ]
  %add549 = add nsw i32 %148, %149
  %arrayidx551 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 0
  store i32 %add549, i32* %arrayidx551, align 16, !tbaa !3
  %add556 = add nsw i32 %146, %147
  %arrayidx558 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 1
  store i32 %add556, i32* %arrayidx558, align 4, !tbaa !3
  %add563 = add nsw i32 %144, %145
  %arrayidx565 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 2
  store i32 %add563, i32* %arrayidx565, align 8, !tbaa !3
  %add570 = add nsw i32 %142, %143
  %arrayidx572 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 3
  store i32 %add570, i32* %arrayidx572, align 4, !tbaa !3
  %sub577 = sub nsw i32 %149, %148
  %arrayidx579 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 0
  store i32 %sub577, i32* %arrayidx579, align 16, !tbaa !3
  %sub584 = sub nsw i32 %147, %146
  %arrayidx586 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 1
  store i32 %sub584, i32* %arrayidx586, align 4, !tbaa !3
  %sub591 = sub nsw i32 %145, %144
  %arrayidx593 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 2
  store i32 %sub591, i32* %arrayidx593, align 8, !tbaa !3
  %sub598 = sub nsw i32 %143, %142
  %arrayidx600 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 3
  store i32 %sub598, i32* %arrayidx600, align 4, !tbaa !3
  %arrayidx647 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx648 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond605.preheader

for.cond605.preheader:                            ; preds = %for.end634, %for.end544
  %indvars.iv3469 = phi i64 [ 0, %for.end544 ], [ %indvars.iv.next3470, %for.end634 ]
  br label %for.body608

for.cond662.preheader:                            ; preds = %for.end634
  %arrayidx688 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0
  %idxprom690 = sext i32 %qp_per_dc.0 to i64
  %arrayidx695 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom690, i64 0, i64 0
  %shl727 = shl i32 %uv, 3
  %shl728 = shl i32 16711680, %shl727
  %conv729 = sext i32 %shl728 to i64
  %cbp_blk730 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %arrayidx711 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0
  %arrayidx718 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom690, i64 0, i64 0
  br label %for.body665

for.body608:                                      ; preds = %for.body608, %for.cond605.preheader
  %indvars.iv3464 = phi i64 [ 0, %for.cond605.preheader ], [ %indvars.iv.next3465, %for.body608 ]
  %150 = sub nsw i64 3, %indvars.iv3464
  %arrayidx613 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 %indvars.iv3464
  %151 = load i32* %arrayidx613, align 4, !tbaa !3
  %arrayidx617 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 %150
  %152 = load i32* %arrayidx617, align 4, !tbaa !3
  %add618 = add nsw i32 %152, %151
  %arrayidx620 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3464
  store i32 %add618, i32* %arrayidx620, align 4, !tbaa !3
  %sub629 = sub nsw i32 %151, %152
  %arrayidx631 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %150
  store i32 %sub629, i32* %arrayidx631, align 4, !tbaa !3
  %indvars.iv.next3465 = add i64 %indvars.iv3464, 1
  %lftr.wideiv3467 = trunc i64 %indvars.iv.next3465 to i32
  %exitcond3468 = icmp eq i32 %lftr.wideiv3467, 2
  br i1 %exitcond3468, label %for.end634, label %for.body608

for.end634:                                       ; preds = %for.body608
  %153 = bitcast [4 x i32]* %m5 to i64*
  %154 = load i64* %153, align 16
  %155 = trunc i64 %154 to i32
  %156 = lshr i64 %154, 32
  %157 = trunc i64 %156 to i32
  %add637 = add nsw i32 %157, %155
  %arrayidx640 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 0
  store i32 %add637, i32* %arrayidx640, align 16, !tbaa !3
  %sub643 = sub nsw i32 %155, %157
  %arrayidx646 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 2
  store i32 %sub643, i32* %arrayidx646, align 8, !tbaa !3
  %158 = load i32* %arrayidx647, align 4, !tbaa !3
  %159 = bitcast i32* %arrayidx648 to i64*
  %160 = load i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %add649 = add nsw i32 %161, %158
  %arrayidx652 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 1
  store i32 %add649, i32* %arrayidx652, align 4, !tbaa !3
  %162 = lshr i64 %160, 32
  %163 = trunc i64 %162 to i32
  %sub655 = sub nsw i32 %163, %161
  %arrayidx658 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3469, i64 3
  store i32 %sub655, i32* %arrayidx658, align 4, !tbaa !3
  %indvars.iv.next3470 = add i64 %indvars.iv3469, 1
  %lftr.wideiv3471 = trunc i64 %indvars.iv.next3470 to i32
  %exitcond3472 = icmp eq i32 %lftr.wideiv3471, 2
  br i1 %exitcond3472, label %for.cond662.preheader, label %for.cond605.preheader

for.body665:                                      ; preds = %if.end748, %for.cond662.preheader
  %indvars.iv3460 = phi i64 [ 0, %for.cond662.preheader ], [ %indvars.iv.next3461, %if.end748 ]
  %cr_cbp.addr.23313 = phi i32 [ %cr_cbp, %for.cond662.preheader ], [ %cr_cbp.addr.3, %if.end748 ]
  %DCcoded.23311 = phi i32 [ 0, %for.cond662.preheader ], [ %DCcoded.3, %if.end748 ]
  %run.23310 = phi i32 [ -1, %for.cond662.preheader ], [ %run.3, %if.end748 ]
  %scan_pos.23309 = phi i32 [ 0, %for.cond662.preheader ], [ %scan_pos.3, %if.end748 ]
  %arrayidx668 = getelementptr inbounds [8 x [2 x i8]]* @SCAN_YUV422, i64 0, i64 %indvars.iv3460, i64 0
  %164 = load i8* %arrayidx668, align 2, !tbaa !1
  %arrayidx672 = getelementptr inbounds [8 x [2 x i8]]* @SCAN_YUV422, i64 0, i64 %indvars.iv3460, i64 1
  %165 = load i8* %arrayidx672, align 1, !tbaa !1
  %inc674 = add nsw i32 %run.23310, 1
  %idxprom678 = zext i8 %165 to i64
  %idxprom679 = zext i8 %164 to i64
  %arrayidx681 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom679, i64 %idxprom678
  %166 = load i32* %arrayidx681, align 4, !tbaa !3
  %ispos3213 = icmp sgt i32 %166, -1
  %neg3214 = sub i32 0, %166
  %167 = select i1 %ispos3213, i32 %166, i32 %neg3214
  br i1 %8, label %if.then677, label %if.else700

if.then677:                                       ; preds = %for.body665
  %168 = load i32* %arrayidx688, align 4, !tbaa !3
  %mul689 = mul nsw i32 %168, %167
  %169 = load i32* %arrayidx695, align 4, !tbaa !3
  %mul696 = shl i32 %169, 1
  %add697 = add nsw i32 %mul696, %mul689
  br label %if.end723

if.else700:                                       ; preds = %for.body665
  %170 = load i32* %arrayidx711, align 4, !tbaa !3
  %mul712 = mul nsw i32 %170, %167
  %171 = load i32* %arrayidx718, align 4, !tbaa !3
  %mul719 = shl i32 %171, 1
  %add720 = add nsw i32 %mul719, %mul712
  br label %if.end723

if.end723:                                        ; preds = %if.else700, %if.then677
  %add697.pn = phi i32 [ %add697, %if.then677 ], [ %add720, %if.else700 ]
  %level.2 = ashr i32 %add697.pn, %q_bits_422.0
  %cmp724 = icmp eq i32 %level.2, 0
  br i1 %cmp724, label %if.end748, label %if.then726

if.then726:                                       ; preds = %if.end723
  %172 = load i64* %cbp_blk730, align 8, !tbaa !5
  %or731 = or i64 %172, %conv729
  store i64 %or731, i64* %cbp_blk730, align 8, !tbaa !5
  %cmp732 = icmp slt i32 %cr_cbp.addr.23313, 1
  %cond737 = select i1 %cmp732, i32 1, i32 %cr_cbp.addr.23313
  %call742 = call i32 @sign(i32 %level.2, i32 %166) #3
  %idxprom743 = sext i32 %scan_pos.23309 to i64
  %arrayidx744 = getelementptr inbounds i32* %5, i64 %idxprom743
  store i32 %call742, i32* %arrayidx744, align 4, !tbaa !3
  %arrayidx746 = getelementptr inbounds i32* %6, i64 %idxprom743
  store i32 %inc674, i32* %arrayidx746, align 4, !tbaa !3
  %inc747 = add nsw i32 %scan_pos.23309, 1
  %.pre3581 = load i32* %arrayidx681, align 4, !tbaa !3
  br label %if.end748

if.end748:                                        ; preds = %if.end723, %if.then726
  %173 = phi i32 [ %.pre3581, %if.then726 ], [ %166, %if.end723 ]
  %scan_pos.3 = phi i32 [ %inc747, %if.then726 ], [ %scan_pos.23309, %if.end723 ]
  %run.3 = phi i32 [ -1, %if.then726 ], [ %inc674, %if.end723 ]
  %DCcoded.3 = phi i32 [ 1, %if.then726 ], [ %DCcoded.23311, %if.end723 ]
  %cr_cbp.addr.3 = phi i32 [ %cond737, %if.then726 ], [ %cr_cbp.addr.23313, %if.end723 ]
  %call753 = call i32 @sign(i32 %level.2, i32 %173) #3
  %arrayidx757 = getelementptr inbounds [4 x [4 x i32]]* %m3, i64 0, i64 %idxprom679, i64 %idxprom678
  store i32 %call753, i32* %arrayidx757, align 4, !tbaa !3
  %indvars.iv.next3461 = add i64 %indvars.iv3460, 1
  %lftr.wideiv3462 = trunc i64 %indvars.iv.next3461 to i32
  %exitcond3463 = icmp eq i32 %lftr.wideiv3462, 8
  br i1 %exitcond3463, label %for.end760, label %for.body665

for.end760:                                       ; preds = %if.end748
  %idxprom761 = sext i32 %scan_pos.3 to i64
  %arrayidx762 = getelementptr inbounds i32* %5, i64 %idxprom761
  store i32 0, i32* %arrayidx762, align 4, !tbaa !3
  %174 = bitcast i32* %arrayidx546.pre-phi to i64*
  %175 = load i64* %174, align 16
  %176 = trunc i64 %175 to i32
  %177 = bitcast i32* %arrayidx548.pre-phi to i64*
  %178 = load i64* %177, align 16
  %179 = trunc i64 %178 to i32
  %add767 = add nsw i32 %179, %176
  store i32 %add767, i32* %arrayidx551, align 16, !tbaa !3
  %180 = lshr i64 %175, 32
  %181 = trunc i64 %180 to i32
  %182 = lshr i64 %178, 32
  %183 = trunc i64 %182 to i32
  %add774 = add nsw i32 %183, %181
  store i32 %add774, i32* %arrayidx558, align 4, !tbaa !3
  %184 = bitcast i32* %arrayidx560.pre-phi to i64*
  %185 = load i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = bitcast i32* %arrayidx562.pre-phi to i64*
  %188 = load i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %add781 = add nsw i32 %189, %186
  store i32 %add781, i32* %arrayidx565, align 8, !tbaa !3
  %190 = lshr i64 %185, 32
  %191 = trunc i64 %190 to i32
  %192 = lshr i64 %188, 32
  %193 = trunc i64 %192 to i32
  %add788 = add nsw i32 %193, %191
  store i32 %add788, i32* %arrayidx572, align 4, !tbaa !3
  %sub795 = sub nsw i32 %176, %179
  store i32 %sub795, i32* %arrayidx579, align 16, !tbaa !3
  %sub802 = sub nsw i32 %181, %183
  store i32 %sub802, i32* %arrayidx586, align 4, !tbaa !3
  %sub809 = sub nsw i32 %186, %189
  store i32 %sub809, i32* %arrayidx593, align 8, !tbaa !3
  %sub816 = sub nsw i32 %191, %193
  store i32 %sub816, i32* %arrayidx600, align 4, !tbaa !3
  %arrayidx839 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx843 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx847 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx851 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  %cmp857 = icmp slt i32 %qp_per_dc.0, 4
  %arrayidx873 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0
  %sub875 = sub nsw i32 3, %qp_per_dc.0
  %shl876 = shl i32 1, %sub875
  %sub878 = sub nsw i32 4, %qp_per_dc.0
  %194 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx926 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %qp_rem_dc.0, i64 0, i64 0
  %sub985 = add nsw i32 %qp_per_dc.0, -4
  br label %for.cond823.preheader

for.cond823.preheader:                            ; preds = %for.inc1071, %for.end760
  %indvars.iv3452 = phi i64 [ 0, %for.end760 ], [ %indvars.iv.next3453, %for.inc1071 ]
  %scevgep = getelementptr [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3452, i64 0
  %scevgep3438 = bitcast i32* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %m53437, i8* %scevgep3438, i64 16, i32 16, i1 false)
  %195 = load i64* %153, align 16
  %196 = trunc i64 %195 to i32
  %197 = load i64* %159, align 8
  %198 = trunc i64 %197 to i32
  %add838 = add nsw i32 %198, %196
  store i32 %add838, i32* %arrayidx839, align 16, !tbaa !3
  %sub842 = sub nsw i32 %196, %198
  store i32 %sub842, i32* %arrayidx843, align 4, !tbaa !3
  %199 = lshr i64 %195, 32
  %200 = trunc i64 %199 to i32
  %201 = lshr i64 %197, 32
  %202 = trunc i64 %201 to i32
  %sub846 = sub nsw i32 %200, %202
  store i32 %sub846, i32* %arrayidx847, align 8, !tbaa !3
  %add850 = add nsw i32 %202, %200
  store i32 %add850, i32* %arrayidx851, align 4, !tbaa !3
  %203 = shl nsw i64 %indvars.iv3452, 2
  br label %for.body855

for.body855:                                      ; preds = %for.inc1068.for.body855_crit_edge, %for.cond823.preheader
  %204 = phi i32 [ %add838, %for.cond823.preheader ], [ %.pre3603, %for.inc1068.for.body855_crit_edge ]
  %indvars.iv3439 = phi i64 [ 0, %for.cond823.preheader ], [ %indvars.iv.next3440, %for.inc1068.for.body855_crit_edge ]
  %205 = sub nsw i64 3, %indvars.iv3439
  %arrayidx864 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3439
  %arrayidx866 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %205
  %206 = load i32* %arrayidx866, align 4, !tbaa !3
  %add867 = add nsw i32 %206, %204
  br i1 %cmp857, label %if.then859, label %if.else969

if.then859:                                       ; preds = %for.body855
  br i1 %8, label %if.then862, label %if.else915

if.then862:                                       ; preds = %if.then859
  %207 = load i32* %arrayidx873, align 4, !tbaa !3
  %mul874 = mul nsw i32 %207, %add867
  %add877 = add nsw i32 %mul874, %shl876
  %shr879 = ashr i32 %add877, %sub878
  %add880 = add nsw i32 %shr879, 2
  %shr881 = ashr i32 %add880, 2
  %208 = shl nsw i64 %indvars.iv3439, 2
  %arrayidx888 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %208
  store i32 %shr881, i32* %arrayidx888, align 4, !tbaa !3
  %209 = load i32* %arrayidx864, align 4, !tbaa !3
  %210 = load i32* %arrayidx866, align 4, !tbaa !3
  %sub893 = sub nsw i32 %209, %210
  %211 = load i32* %arrayidx873, align 4, !tbaa !3
  %mul900 = mul nsw i32 %sub893, %211
  %add903 = add nsw i32 %mul900, %shl876
  %shr905 = ashr i32 %add903, %sub878
  %add906 = add nsw i32 %shr905, 2
  %shr907 = ashr i32 %add906, 2
  %212 = shl nsw i64 %205, 2
  %arrayidx914 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %212
  store i32 %shr907, i32* %arrayidx914, align 4, !tbaa !3
  br label %for.inc1068

if.else915:                                       ; preds = %if.then859
  %213 = load i32* %arrayidx926, align 4, !tbaa !3
  %mul927 = mul nsw i32 %213, %add867
  %add930 = add nsw i32 %mul927, %shl876
  %shr932 = ashr i32 %add930, %sub878
  %add933 = add nsw i32 %shr932, 2
  %shr934 = ashr i32 %add933, 2
  %214 = shl nsw i64 %indvars.iv3439, 2
  %arrayidx941 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %214
  store i32 %shr934, i32* %arrayidx941, align 4, !tbaa !3
  %215 = load i32* %arrayidx864, align 4, !tbaa !3
  %216 = load i32* %arrayidx866, align 4, !tbaa !3
  %sub946 = sub nsw i32 %215, %216
  %217 = load i32* %arrayidx926, align 4, !tbaa !3
  %mul953 = mul nsw i32 %sub946, %217
  %add956 = add nsw i32 %mul953, %shl876
  %shr958 = ashr i32 %add956, %sub878
  %add959 = add nsw i32 %shr958, 2
  %shr960 = ashr i32 %add959, 2
  %218 = shl nsw i64 %205, 2
  %arrayidx967 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %218
  store i32 %shr960, i32* %arrayidx967, align 4, !tbaa !3
  br label %for.inc1068

if.else969:                                       ; preds = %for.body855
  br i1 %8, label %if.then972, label %if.else1019

if.then972:                                       ; preds = %if.else969
  %219 = load i32* %arrayidx873, align 4, !tbaa !3
  %mul984 = mul nsw i32 %219, %add867
  %shl986 = shl i32 %mul984, %sub985
  %add987 = add nsw i32 %shl986, 2
  %shr988 = ashr i32 %add987, 2
  %220 = shl nsw i64 %indvars.iv3439, 2
  %arrayidx995 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %220
  store i32 %shr988, i32* %arrayidx995, align 4, !tbaa !3
  %221 = load i32* %arrayidx864, align 4, !tbaa !3
  %222 = load i32* %arrayidx866, align 4, !tbaa !3
  %sub1000 = sub nsw i32 %221, %222
  %223 = load i32* %arrayidx873, align 4, !tbaa !3
  %mul1007 = mul nsw i32 %sub1000, %223
  %shl1009 = shl i32 %mul1007, %sub985
  %add1010 = add nsw i32 %shl1009, 2
  %shr1011 = ashr i32 %add1010, 2
  %224 = shl nsw i64 %205, 2
  %arrayidx1018 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %224
  store i32 %shr1011, i32* %arrayidx1018, align 4, !tbaa !3
  br label %for.inc1068

if.else1019:                                      ; preds = %if.else969
  %225 = load i32* %arrayidx926, align 4, !tbaa !3
  %mul1031 = mul nsw i32 %225, %add867
  %shl1033 = shl i32 %mul1031, %sub985
  %add1034 = add nsw i32 %shl1033, 2
  %shr1035 = ashr i32 %add1034, 2
  %226 = shl nsw i64 %indvars.iv3439, 2
  %arrayidx1042 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %226
  store i32 %shr1035, i32* %arrayidx1042, align 4, !tbaa !3
  %227 = load i32* %arrayidx864, align 4, !tbaa !3
  %228 = load i32* %arrayidx866, align 4, !tbaa !3
  %sub1047 = sub nsw i32 %227, %228
  %229 = load i32* %arrayidx926, align 4, !tbaa !3
  %mul1054 = mul nsw i32 %sub1047, %229
  %shl1056 = shl i32 %mul1054, %sub985
  %add1057 = add nsw i32 %shl1056, 2
  %shr1058 = ashr i32 %add1057, 2
  %230 = shl nsw i64 %205, 2
  %arrayidx1065 = getelementptr inbounds %struct.ImageParameters* %194, i64 0, i32 46, i64 %203, i64 %230
  store i32 %shr1058, i32* %arrayidx1065, align 4, !tbaa !3
  br label %for.inc1068

for.inc1068:                                      ; preds = %if.else915, %if.then862, %if.else1019, %if.then972
  %indvars.iv.next3440 = add i64 %indvars.iv3439, 1
  %lftr.wideiv3450 = trunc i64 %indvars.iv.next3440 to i32
  %exitcond3451 = icmp eq i32 %lftr.wideiv3450, 2
  br i1 %exitcond3451, label %for.inc1071, label %for.inc1068.for.body855_crit_edge

for.inc1068.for.body855_crit_edge:                ; preds = %for.inc1068
  %arrayidx864.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3440
  %.pre3603 = load i32* %arrayidx864.phi.trans.insert, align 4, !tbaa !3
  br label %for.body855

for.inc1071:                                      ; preds = %for.inc1068
  %indvars.iv.next3453 = add i64 %indvars.iv3452, 1
  %lftr.wideiv3458 = trunc i64 %indvars.iv.next3453 to i32
  %exitcond3459 = icmp eq i32 %lftr.wideiv3458, 2
  br i1 %exitcond3459, label %if.end1682, label %for.cond823.preheader

for.cond1083.preheader:                           ; preds = %for.cond1083.preheader.lr.ph, %for.inc1102
  %231 = phi i32 [ %72, %for.cond1083.preheader.lr.ph ], [ %238, %for.inc1102 ]
  %232 = phi i32 [ %.pre3594, %for.cond1083.preheader.lr.ph ], [ %239, %for.inc1102 ]
  %indvars.iv3533 = phi i64 [ 0, %for.cond1083.preheader.lr.ph ], [ %indvars.iv.next3534, %for.inc1102 ]
  %cmp10853339 = icmp sgt i32 %232, 0
  br i1 %cmp10853339, label %for.body1087.lr.ph, label %for.inc1102

for.body1087.lr.ph:                               ; preds = %for.cond1083.preheader
  %233 = trunc i64 %indvars.iv3533 to i32
  %shr1093 = ashr exact i32 %233, 2
  %idxprom1094 = sext i32 %shr1093 to i64
  br label %for.body1087

for.cond1105.preheader:                           ; preds = %for.inc1102, %for.cond1078.preheader
  br i1 %16, label %for.cond1241.preheader, label %for.cond1114.preheader.lr.ph

for.cond1114.preheader.lr.ph:                     ; preds = %for.cond1105.preheader
  %arrayidx1156 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx1157 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond1114.preheader

for.body1087:                                     ; preds = %for.body1087.lr.ph, %for.body1087
  %indvars.iv3531 = phi i64 [ 0, %for.body1087.lr.ph ], [ %indvars.iv.next3532, %for.body1087 ]
  %arrayidx1092 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv3531, i64 %indvars.iv3533
  %234 = load i32* %arrayidx1092, align 4, !tbaa !3
  %235 = trunc i64 %indvars.iv3531 to i32
  %shr1095 = ashr exact i32 %235, 2
  %idxprom1096 = sext i32 %shr1095 to i64
  %arrayidx1098 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom1096, i64 %idxprom1094
  store i32 %234, i32* %arrayidx1098, align 4, !tbaa !3
  %indvars.iv.next3532 = add i64 %indvars.iv3531, 4
  %236 = load i32* %mb_cr_size_x10843338, align 4, !tbaa !3
  %237 = trunc i64 %indvars.iv.next3532 to i32
  %cmp1085 = icmp slt i32 %237, %236
  br i1 %cmp1085, label %for.body1087, label %for.cond1083.for.inc1102_crit_edge

for.cond1083.for.inc1102_crit_edge:               ; preds = %for.body1087
  %.pre3595 = load i32* %mb_cr_size_y3353, align 4, !tbaa !3
  br label %for.inc1102

for.inc1102:                                      ; preds = %for.cond1083.for.inc1102_crit_edge, %for.cond1083.preheader
  %238 = phi i32 [ %.pre3595, %for.cond1083.for.inc1102_crit_edge ], [ %231, %for.cond1083.preheader ]
  %239 = phi i32 [ %236, %for.cond1083.for.inc1102_crit_edge ], [ %232, %for.cond1083.preheader ]
  %indvars.iv.next3534 = add i64 %indvars.iv3533, 4
  %240 = trunc i64 %indvars.iv.next3534 to i32
  %cmp1080 = icmp slt i32 %240, %238
  br i1 %cmp1080, label %for.cond1083.preheader, label %for.cond1105.preheader

for.cond1114.preheader:                           ; preds = %for.cond1114.preheader.lr.ph, %for.end1143
  %indvars.iv3529 = phi i64 [ 0, %for.cond1114.preheader.lr.ph ], [ %indvars.iv.next3530, %for.end1143 ]
  br label %for.body1117

for.cond1171.preheader:                           ; preds = %for.end1143
  br i1 %16, label %for.cond1241.preheader, label %for.cond1180.preheader.lr.ph

for.cond1180.preheader.lr.ph:                     ; preds = %for.cond1171.preheader
  %arrayidx1224 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx1225 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond1180.preheader

for.body1117:                                     ; preds = %for.body1117, %for.cond1114.preheader
  %indvars.iv3524 = phi i64 [ 0, %for.cond1114.preheader ], [ %indvars.iv.next3525, %for.body1117 ]
  %241 = sub nsw i64 3, %indvars.iv3524
  %arrayidx1122 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3524, i64 %indvars.iv3529
  %242 = load i32* %arrayidx1122, align 4, !tbaa !3
  %arrayidx1126 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %241, i64 %indvars.iv3529
  %243 = load i32* %arrayidx1126, align 4, !tbaa !3
  %add1127 = add nsw i32 %243, %242
  %arrayidx1129 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3524
  store i32 %add1127, i32* %arrayidx1129, align 4, !tbaa !3
  %sub1138 = sub nsw i32 %242, %243
  %arrayidx1140 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %241
  store i32 %sub1138, i32* %arrayidx1140, align 4, !tbaa !3
  %indvars.iv.next3525 = add i64 %indvars.iv3524, 1
  %lftr.wideiv3527 = trunc i64 %indvars.iv.next3525 to i32
  %exitcond3528 = icmp eq i32 %lftr.wideiv3527, 2
  br i1 %exitcond3528, label %for.end1143, label %for.body1117

for.end1143:                                      ; preds = %for.body1117
  %244 = bitcast [4 x i32]* %m5 to i64*
  %245 = load i64* %244, align 16
  %246 = trunc i64 %245 to i32
  %247 = lshr i64 %245, 32
  %248 = trunc i64 %247 to i32
  %add1146 = add nsw i32 %248, %246
  %arrayidx1149 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 0, i64 %indvars.iv3529
  store i32 %add1146, i32* %arrayidx1149, align 4, !tbaa !3
  %sub1152 = sub nsw i32 %246, %248
  %arrayidx1155 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 2, i64 %indvars.iv3529
  store i32 %sub1152, i32* %arrayidx1155, align 4, !tbaa !3
  %249 = load i32* %arrayidx1156, align 4, !tbaa !3
  %250 = bitcast i32* %arrayidx1157 to i64*
  %251 = load i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %add1158 = add nsw i32 %252, %249
  %arrayidx1161 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 1, i64 %indvars.iv3529
  store i32 %add1158, i32* %arrayidx1161, align 4, !tbaa !3
  %253 = lshr i64 %251, 32
  %254 = trunc i64 %253 to i32
  %sub1164 = sub nsw i32 %254, %252
  %arrayidx1167 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 3, i64 %indvars.iv3529
  store i32 %sub1164, i32* %arrayidx1167, align 4, !tbaa !3
  %indvars.iv.next3530 = add i64 %indvars.iv3529, 1
  %255 = trunc i64 %indvars.iv3529 to i32
  %cmp1106.not = icmp sgt i32 %255, 2
  br i1 %cmp1106.not, label %for.cond1171.preheader, label %for.cond1114.preheader

for.cond1180.preheader:                           ; preds = %for.cond1180.preheader.lr.ph, %for.end1209
  %indvars.iv3522 = phi i64 [ 0, %for.cond1180.preheader.lr.ph ], [ %indvars.iv.next3523, %for.end1209 ]
  br label %for.body1183

for.cond1241.preheader:                           ; preds = %for.cond1105.preheader, %for.end1209, %for.cond1171.preheader
  %shl1315 = shl i32 %uv, 4
  %sh_prom = zext i32 %shl1315 to i64
  %shl1316 = shl i64 4294901760, %sh_prom
  %cbp_blk1317 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %idxprom1270 = sext i32 %rem to i64
  %arrayidx1275 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0
  %idxprom1277 = sext i32 %div38 to i64
  %arrayidx1282 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1277, i64 0, i64 0
  %add1285 = add nsw i32 %div38, 16
  %arrayidx1298 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0
  %arrayidx1305 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1277, i64 0, i64 0
  br label %for.body1244

for.body1183:                                     ; preds = %for.body1183, %for.cond1180.preheader
  %indvars.iv3517 = phi i64 [ 0, %for.cond1180.preheader ], [ %indvars.iv.next3518, %for.body1183 ]
  %256 = sub nsw i64 3, %indvars.iv3517
  %arrayidx1188 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 %indvars.iv3517
  %257 = load i32* %arrayidx1188, align 4, !tbaa !3
  %arrayidx1192 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 %256
  %258 = load i32* %arrayidx1192, align 4, !tbaa !3
  %add1193 = add nsw i32 %258, %257
  %arrayidx1195 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3517
  store i32 %add1193, i32* %arrayidx1195, align 4, !tbaa !3
  %sub1204 = sub nsw i32 %257, %258
  %arrayidx1206 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %256
  store i32 %sub1204, i32* %arrayidx1206, align 4, !tbaa !3
  %indvars.iv.next3518 = add i64 %indvars.iv3517, 1
  %lftr.wideiv3520 = trunc i64 %indvars.iv.next3518 to i32
  %exitcond3521 = icmp eq i32 %lftr.wideiv3520, 2
  br i1 %exitcond3521, label %for.end1209, label %for.body1183

for.end1209:                                      ; preds = %for.body1183
  %259 = bitcast [4 x i32]* %m5 to i64*
  %260 = load i64* %259, align 16
  %261 = trunc i64 %260 to i32
  %262 = lshr i64 %260, 32
  %263 = trunc i64 %262 to i32
  %add1212 = add nsw i32 %263, %261
  %shr1213 = ashr i32 %add1212, 1
  %arrayidx1216 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 0
  store i32 %shr1213, i32* %arrayidx1216, align 16, !tbaa !3
  %sub1219 = sub nsw i32 %261, %263
  %shr1220 = ashr i32 %sub1219, 1
  %arrayidx1223 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 2
  store i32 %shr1220, i32* %arrayidx1223, align 8, !tbaa !3
  %264 = load i32* %arrayidx1224, align 4, !tbaa !3
  %265 = bitcast i32* %arrayidx1225 to i64*
  %266 = load i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %add1226 = add nsw i32 %267, %264
  %shr1227 = ashr i32 %add1226, 1
  %arrayidx1230 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 1
  store i32 %shr1227, i32* %arrayidx1230, align 4, !tbaa !3
  %268 = lshr i64 %266, 32
  %269 = trunc i64 %268 to i32
  %sub1233 = sub nsw i32 %269, %267
  %shr1234 = ashr i32 %sub1233, 1
  %arrayidx1237 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3522, i64 3
  store i32 %shr1234, i32* %arrayidx1237, align 4, !tbaa !3
  %indvars.iv.next3523 = add i64 %indvars.iv3522, 1
  %270 = trunc i64 %indvars.iv3522 to i32
  %cmp1172.not = icmp sgt i32 %270, 2
  br i1 %cmp1172.not, label %for.cond1241.preheader, label %for.cond1180.preheader

for.body1244:                                     ; preds = %for.inc1348, %for.cond1241.preheader
  %indvars.iv3513 = phi i64 [ 0, %for.cond1241.preheader ], [ %indvars.iv.next3514, %for.inc1348 ]
  %cr_cbp.addr.43333 = phi i32 [ %cr_cbp, %for.cond1241.preheader ], [ %cr_cbp.addr.5, %for.inc1348 ]
  %DCcoded.43331 = phi i32 [ 0, %for.cond1241.preheader ], [ %DCcoded.5, %for.inc1348 ]
  %run.43330 = phi i32 [ -1, %for.cond1241.preheader ], [ %run.5, %for.inc1348 ]
  %scan_pos.43329 = phi i32 [ 0, %for.cond1241.preheader ], [ %scan_pos.5, %for.inc1348 ]
  %arrayidx1247 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv3513, i64 0
  %271 = load i8* %arrayidx1247, align 2, !tbaa !1
  %arrayidx1251 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv3513, i64 1
  %272 = load i8* %arrayidx1251, align 1, !tbaa !1
  %inc1253 = add nsw i32 %run.43330, 1
  %idxprom1256 = zext i8 %272 to i64
  %idxprom1257 = zext i8 %271 to i64
  %arrayidx1259 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %idxprom1257, i64 %idxprom1256
  %273 = load i32* %arrayidx1259, align 4, !tbaa !3
  %ispos3211 = icmp sgt i32 %273, -1
  %neg3212 = sub i32 0, %273
  %274 = select i1 %ispos3211, i32 %273, i32 %neg3212
  br i1 %16, label %if.end1311, label %if.else1261

if.else1261:                                      ; preds = %for.body1244
  br i1 %8, label %if.then1264, label %if.else1287

if.then1264:                                      ; preds = %if.else1261
  %275 = load i32* %arrayidx1275, align 4, !tbaa !3
  %mul1276 = mul nsw i32 %275, %274
  %276 = load i32* %arrayidx1282, align 4, !tbaa !3
  %mul1283 = shl i32 %276, 1
  %add1284 = add nsw i32 %mul1283, %mul1276
  %shr1286 = ashr i32 %add1284, %add1285
  br label %if.end1311

if.else1287:                                      ; preds = %if.else1261
  %277 = load i32* %arrayidx1298, align 4, !tbaa !3
  %mul1299 = mul nsw i32 %277, %274
  %278 = load i32* %arrayidx1305, align 4, !tbaa !3
  %mul1306 = shl i32 %278, 1
  %add1307 = add nsw i32 %mul1306, %mul1299
  %shr1309 = ashr i32 %add1307, %add1285
  br label %if.end1311

if.end1311:                                       ; preds = %for.body1244, %if.then1264, %if.else1287
  %level.3 = phi i32 [ %shr1286, %if.then1264 ], [ %shr1309, %if.else1287 ], [ %274, %for.body1244 ]
  %cmp1312 = icmp eq i32 %level.3, 0
  br i1 %cmp1312, label %if.end1335, label %if.then1314

if.then1314:                                      ; preds = %if.end1311
  %279 = load i64* %cbp_blk1317, align 8, !tbaa !5
  %or1318 = or i64 %279, %shl1316
  store i64 %or1318, i64* %cbp_blk1317, align 8, !tbaa !5
  %cmp1319 = icmp slt i32 %cr_cbp.addr.43333, 1
  %cond1324 = select i1 %cmp1319, i32 1, i32 %cr_cbp.addr.43333
  %call1329 = call i32 @sign(i32 %level.3, i32 %273) #3
  %idxprom1330 = sext i32 %scan_pos.43329 to i64
  %arrayidx1331 = getelementptr inbounds i32* %5, i64 %idxprom1330
  store i32 %call1329, i32* %arrayidx1331, align 4, !tbaa !3
  %arrayidx1333 = getelementptr inbounds i32* %6, i64 %idxprom1330
  store i32 %inc1253, i32* %arrayidx1333, align 4, !tbaa !3
  %inc1334 = add nsw i32 %scan_pos.43329, 1
  br label %if.end1335

if.end1335:                                       ; preds = %if.end1311, %if.then1314
  %scan_pos.5 = phi i32 [ %inc1334, %if.then1314 ], [ %scan_pos.43329, %if.end1311 ]
  %run.5 = phi i32 [ -1, %if.then1314 ], [ %inc1253, %if.end1311 ]
  %DCcoded.5 = phi i32 [ 1, %if.then1314 ], [ %DCcoded.43331, %if.end1311 ]
  %cr_cbp.addr.5 = phi i32 [ %cond1324, %if.then1314 ], [ %cr_cbp.addr.43333, %if.end1311 ]
  br i1 %16, label %for.inc1348, label %if.then1337

if.then1337:                                      ; preds = %if.end1335
  %280 = load i32* %arrayidx1259, align 4, !tbaa !3
  %call1342 = call i32 @sign(i32 %level.3, i32 %280) #3
  store i32 %call1342, i32* %arrayidx1259, align 4, !tbaa !3
  br label %for.inc1348

for.inc1348:                                      ; preds = %if.end1335, %if.then1337
  %indvars.iv.next3514 = add i64 %indvars.iv3513, 1
  %lftr.wideiv3515 = trunc i64 %indvars.iv.next3514 to i32
  %exitcond3516 = icmp eq i32 %lftr.wideiv3515, 16
  br i1 %exitcond3516, label %for.end1350, label %for.body1244

for.end1350:                                      ; preds = %for.inc1348
  %idxprom1351 = sext i32 %scan_pos.5 to i64
  %arrayidx1352 = getelementptr inbounds i32* %5, i64 %idxprom1351
  store i32 0, i32* %arrayidx1352, align 4, !tbaa !3
  br i1 %16, label %if.end1682.loopexit3324, label %for.cond1362.preheader.lr.ph

for.cond1362.preheader.lr.ph:                     ; preds = %for.end1350
  %arrayidx1376 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx1378 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx1382 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx1386 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx1390 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  br label %for.cond1362.preheader

for.cond1362.preheader:                           ; preds = %for.cond1362.preheader.lr.ph, %for.inc1417
  %indvars.iv3511 = phi i64 [ 0, %for.cond1362.preheader.lr.ph ], [ %indvars.iv.next3512, %for.inc1417 ]
  br label %for.body1365

for.cond1420.preheader:                           ; preds = %for.inc1417
  br i1 %16, label %if.end1682.loopexit3324, label %for.cond1429.preheader.lr.ph

for.cond1429.preheader.lr.ph:                     ; preds = %for.cond1420.preheader
  %arrayidx1443 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx1445 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx1449 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx1453 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx1457 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  %cmp1463 = icmp slt i32 %add37, 24
  %arrayidx1479 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0
  %sub1481 = sub nsw i32 3, %div38
  %shl1482 = shl i32 1, %sub1481
  %sub1484 = sub nsw i32 4, %div38
  %281 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1532 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1270, i64 0, i64 0
  %sub1591 = add nsw i32 %div38, -4
  br label %for.cond1429.preheader

for.body1365:                                     ; preds = %for.body1365, %for.cond1362.preheader
  %indvars.iv3502 = phi i64 [ 0, %for.cond1362.preheader ], [ %indvars.iv.next3503, %for.body1365 ]
  %arrayidx1369 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3502, i64 %indvars.iv3511
  %282 = load i32* %arrayidx1369, align 4, !tbaa !3
  %arrayidx1371 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3502
  store i32 %282, i32* %arrayidx1371, align 4, !tbaa !3
  %indvars.iv.next3503 = add i64 %indvars.iv3502, 1
  %lftr.wideiv3504 = trunc i64 %indvars.iv.next3503 to i32
  %exitcond3505 = icmp eq i32 %lftr.wideiv3504, 4
  br i1 %exitcond3505, label %for.end1374, label %for.body1365

for.end1374:                                      ; preds = %for.body1365
  %283 = bitcast [4 x i32]* %m5 to i64*
  %284 = load i64* %283, align 16
  %285 = trunc i64 %284 to i32
  %286 = bitcast i32* %arrayidx1376 to i64*
  %287 = load i64* %286, align 8
  %288 = trunc i64 %287 to i32
  %add1377 = add nsw i32 %288, %285
  store i32 %add1377, i32* %arrayidx1378, align 16, !tbaa !3
  %sub1381 = sub nsw i32 %285, %288
  store i32 %sub1381, i32* %arrayidx1382, align 4, !tbaa !3
  %289 = lshr i64 %284, 32
  %290 = trunc i64 %289 to i32
  %291 = lshr i64 %287, 32
  %292 = trunc i64 %291 to i32
  %sub1385 = sub nsw i32 %290, %292
  store i32 %sub1385, i32* %arrayidx1386, align 8, !tbaa !3
  %add1389 = add nsw i32 %292, %290
  store i32 %add1389, i32* %arrayidx1390, align 4, !tbaa !3
  br label %for.body1394

for.body1394:                                     ; preds = %for.body1394.for.body1394_crit_edge, %for.end1374
  %293 = phi i32 [ %add1377, %for.end1374 ], [ %.pre3605, %for.body1394.for.body1394_crit_edge ]
  %indvars.iv3506 = phi i64 [ 0, %for.end1374 ], [ %indvars.iv.next3507, %for.body1394.for.body1394_crit_edge ]
  %294 = sub nsw i64 3, %indvars.iv3506
  %arrayidx1399 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %294
  %295 = load i32* %arrayidx1399, align 4, !tbaa !3
  %add1400 = add nsw i32 %295, %293
  %arrayidx1404 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3506, i64 %indvars.iv3511
  store i32 %add1400, i32* %arrayidx1404, align 4, !tbaa !3
  %sub1409 = sub nsw i32 %293, %295
  %arrayidx1413 = getelementptr inbounds [4 x [4 x i32]]* %m4, i64 0, i64 %294, i64 %indvars.iv3511
  store i32 %sub1409, i32* %arrayidx1413, align 4, !tbaa !3
  %indvars.iv.next3507 = add i64 %indvars.iv3506, 1
  %lftr.wideiv3509 = trunc i64 %indvars.iv.next3507 to i32
  %exitcond3510 = icmp eq i32 %lftr.wideiv3509, 2
  br i1 %exitcond3510, label %for.inc1417, label %for.body1394.for.body1394_crit_edge

for.body1394.for.body1394_crit_edge:              ; preds = %for.body1394
  %arrayidx1397.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3507
  %.pre3605 = load i32* %arrayidx1397.phi.trans.insert, align 4, !tbaa !3
  br label %for.body1394

for.inc1417:                                      ; preds = %for.body1394
  %indvars.iv.next3512 = add i64 %indvars.iv3511, 1
  %296 = trunc i64 %indvars.iv3511 to i32
  %cmp1354.not = icmp sgt i32 %296, 2
  br i1 %cmp1354.not, label %for.cond1420.preheader, label %for.cond1362.preheader

for.cond1429.preheader:                           ; preds = %for.cond1429.preheader.lr.ph, %for.inc1677
  %indvars.iv3496 = phi i64 [ 0, %for.cond1429.preheader.lr.ph ], [ %indvars.iv.next3497, %for.inc1677 ]
  %scevgep3481 = getelementptr [4 x [4 x i32]]* %m4, i64 0, i64 %indvars.iv3496, i64 0
  %scevgep34813482 = bitcast i32* %scevgep3481 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %m53437, i8* %scevgep34813482, i64 16, i32 16, i1 false)
  %297 = bitcast [4 x i32]* %m5 to i64*
  %298 = load i64* %297, align 16
  %299 = trunc i64 %298 to i32
  %300 = bitcast i32* %arrayidx1443 to i64*
  %301 = load i64* %300, align 8
  %302 = trunc i64 %301 to i32
  %add1444 = add nsw i32 %302, %299
  store i32 %add1444, i32* %arrayidx1445, align 16, !tbaa !3
  %sub1448 = sub nsw i32 %299, %302
  store i32 %sub1448, i32* %arrayidx1449, align 4, !tbaa !3
  %303 = lshr i64 %298, 32
  %304 = trunc i64 %303 to i32
  %305 = lshr i64 %301, 32
  %306 = trunc i64 %305 to i32
  %sub1452 = sub nsw i32 %304, %306
  store i32 %sub1452, i32* %arrayidx1453, align 8, !tbaa !3
  %add1456 = add nsw i32 %306, %304
  store i32 %add1456, i32* %arrayidx1457, align 4, !tbaa !3
  %307 = shl nsw i64 %indvars.iv3496, 2
  br label %for.body1461

for.body1461:                                     ; preds = %for.inc1674.for.body1461_crit_edge, %for.cond1429.preheader
  %308 = phi i32 [ %add1444, %for.cond1429.preheader ], [ %.pre3604, %for.inc1674.for.body1461_crit_edge ]
  %indvars.iv3483 = phi i64 [ 0, %for.cond1429.preheader ], [ %indvars.iv.next3484, %for.inc1674.for.body1461_crit_edge ]
  %309 = sub nsw i64 3, %indvars.iv3483
  %arrayidx1470 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3483
  %arrayidx1472 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %309
  %310 = load i32* %arrayidx1472, align 4, !tbaa !3
  %add1473 = add nsw i32 %310, %308
  br i1 %cmp1463, label %if.then1465, label %if.else1575

if.then1465:                                      ; preds = %for.body1461
  br i1 %8, label %if.then1468, label %if.else1521

if.then1468:                                      ; preds = %if.then1465
  %311 = load i32* %arrayidx1479, align 4, !tbaa !3
  %mul1480 = mul nsw i32 %311, %add1473
  %add1483 = add nsw i32 %mul1480, %shl1482
  %shr1485 = ashr i32 %add1483, %sub1484
  %add1486 = add nsw i32 %shr1485, 2
  %shr1487 = ashr i32 %add1486, 2
  %312 = shl nsw i64 %indvars.iv3483, 2
  %arrayidx1494 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %312
  store i32 %shr1487, i32* %arrayidx1494, align 4, !tbaa !3
  %313 = load i32* %arrayidx1470, align 4, !tbaa !3
  %314 = load i32* %arrayidx1472, align 4, !tbaa !3
  %sub1499 = sub nsw i32 %313, %314
  %315 = load i32* %arrayidx1479, align 4, !tbaa !3
  %mul1506 = mul nsw i32 %sub1499, %315
  %add1509 = add nsw i32 %mul1506, %shl1482
  %shr1511 = ashr i32 %add1509, %sub1484
  %add1512 = add nsw i32 %shr1511, 2
  %shr1513 = ashr i32 %add1512, 2
  %316 = shl nsw i64 %309, 2
  %arrayidx1520 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %316
  store i32 %shr1513, i32* %arrayidx1520, align 4, !tbaa !3
  br label %for.inc1674

if.else1521:                                      ; preds = %if.then1465
  %317 = load i32* %arrayidx1532, align 4, !tbaa !3
  %mul1533 = mul nsw i32 %317, %add1473
  %add1536 = add nsw i32 %mul1533, %shl1482
  %shr1538 = ashr i32 %add1536, %sub1484
  %add1539 = add nsw i32 %shr1538, 2
  %shr1540 = ashr i32 %add1539, 2
  %318 = shl nsw i64 %indvars.iv3483, 2
  %arrayidx1547 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %318
  store i32 %shr1540, i32* %arrayidx1547, align 4, !tbaa !3
  %319 = load i32* %arrayidx1470, align 4, !tbaa !3
  %320 = load i32* %arrayidx1472, align 4, !tbaa !3
  %sub1552 = sub nsw i32 %319, %320
  %321 = load i32* %arrayidx1532, align 4, !tbaa !3
  %mul1559 = mul nsw i32 %sub1552, %321
  %add1562 = add nsw i32 %mul1559, %shl1482
  %shr1564 = ashr i32 %add1562, %sub1484
  %add1565 = add nsw i32 %shr1564, 2
  %shr1566 = ashr i32 %add1565, 2
  %322 = shl nsw i64 %309, 2
  %arrayidx1573 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %322
  store i32 %shr1566, i32* %arrayidx1573, align 4, !tbaa !3
  br label %for.inc1674

if.else1575:                                      ; preds = %for.body1461
  br i1 %8, label %if.then1578, label %if.else1625

if.then1578:                                      ; preds = %if.else1575
  %323 = load i32* %arrayidx1479, align 4, !tbaa !3
  %mul1590 = mul nsw i32 %323, %add1473
  %shl1592 = shl i32 %mul1590, %sub1591
  %add1593 = add nsw i32 %shl1592, 2
  %shr1594 = ashr i32 %add1593, 2
  %324 = shl nsw i64 %indvars.iv3483, 2
  %arrayidx1601 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %324
  store i32 %shr1594, i32* %arrayidx1601, align 4, !tbaa !3
  %325 = load i32* %arrayidx1470, align 4, !tbaa !3
  %326 = load i32* %arrayidx1472, align 4, !tbaa !3
  %sub1606 = sub nsw i32 %325, %326
  %327 = load i32* %arrayidx1479, align 4, !tbaa !3
  %mul1613 = mul nsw i32 %sub1606, %327
  %shl1615 = shl i32 %mul1613, %sub1591
  %add1616 = add nsw i32 %shl1615, 2
  %shr1617 = ashr i32 %add1616, 2
  %328 = shl nsw i64 %309, 2
  %arrayidx1624 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %328
  store i32 %shr1617, i32* %arrayidx1624, align 4, !tbaa !3
  br label %for.inc1674

if.else1625:                                      ; preds = %if.else1575
  %329 = load i32* %arrayidx1532, align 4, !tbaa !3
  %mul1637 = mul nsw i32 %329, %add1473
  %shl1639 = shl i32 %mul1637, %sub1591
  %add1640 = add nsw i32 %shl1639, 2
  %shr1641 = ashr i32 %add1640, 2
  %330 = shl nsw i64 %indvars.iv3483, 2
  %arrayidx1648 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %330
  store i32 %shr1641, i32* %arrayidx1648, align 4, !tbaa !3
  %331 = load i32* %arrayidx1470, align 4, !tbaa !3
  %332 = load i32* %arrayidx1472, align 4, !tbaa !3
  %sub1653 = sub nsw i32 %331, %332
  %333 = load i32* %arrayidx1532, align 4, !tbaa !3
  %mul1660 = mul nsw i32 %sub1653, %333
  %shl1662 = shl i32 %mul1660, %sub1591
  %add1663 = add nsw i32 %shl1662, 2
  %shr1664 = ashr i32 %add1663, 2
  %334 = shl nsw i64 %309, 2
  %arrayidx1671 = getelementptr inbounds %struct.ImageParameters* %281, i64 0, i32 46, i64 %307, i64 %334
  store i32 %shr1664, i32* %arrayidx1671, align 4, !tbaa !3
  br label %for.inc1674

for.inc1674:                                      ; preds = %if.else1521, %if.then1468, %if.else1625, %if.then1578
  %indvars.iv.next3484 = add i64 %indvars.iv3483, 1
  %lftr.wideiv3494 = trunc i64 %indvars.iv.next3484 to i32
  %exitcond3495 = icmp eq i32 %lftr.wideiv3494, 2
  br i1 %exitcond3495, label %for.inc1677, label %for.inc1674.for.body1461_crit_edge

for.inc1674.for.body1461_crit_edge:               ; preds = %for.inc1674
  %arrayidx1470.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3484
  %.pre3604 = load i32* %arrayidx1470.phi.trans.insert, align 4, !tbaa !3
  br label %for.body1461

for.inc1677:                                      ; preds = %for.inc1674
  %indvars.iv.next3497 = add i64 %indvars.iv3496, 1
  %335 = trunc i64 %indvars.iv3496 to i32
  %cmp1421.not = icmp sgt i32 %335, 2
  br i1 %cmp1421.not, label %if.end1682.loopexit3324, label %for.cond1429.preheader

if.end1682.loopexit3324:                          ; preds = %for.end1350, %for.inc1677, %for.cond1420.preheader
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end1682

if.end1682:                                       ; preds = %for.inc1071, %for.end236, %if.end1682.loopexit3324, %for.end497
  %336 = phi %struct.ImageParameters* [ %110, %for.end497 ], [ %.pre, %if.end1682.loopexit3324 ], [ %0, %for.end236 ], [ %194, %for.inc1071 ]
  %DCcoded.6 = phi i32 [ %DCcoded.1, %for.end497 ], [ %DCcoded.5, %if.end1682.loopexit3324 ], [ 0, %for.end236 ], [ %DCcoded.3, %for.inc1071 ]
  %cr_cbp.addr.6 = phi i32 [ %cr_cbp.addr.1, %for.end497 ], [ %cr_cbp.addr.5, %if.end1682.loopexit3324 ], [ %cr_cbp, %for.end236 ], [ %cr_cbp.addr.3, %for.inc1071 ]
  %num_blk8x8_uv16843292 = getelementptr inbounds %struct.ImageParameters* %336, i64 0, i32 157
  %337 = load i32* %num_blk8x8_uv16843292, align 4, !tbaa !3
  %cmp16863294 = icmp sgt i32 %337, 1
  br i1 %cmp16863294, label %for.cond1689.preheader.lr.ph, label %for.end1960

for.cond1689.preheader.lr.ph:                     ; preds = %if.end1682
  %idxprom1695 = sext i32 %10 to i64
  %add1708 = add i32 %mul, 4
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %cbp_blk1833 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %cmp1873 = icmp slt i32 %add37, 24
  %idxprom1881 = sext i32 %rem to i64
  %sub1888 = sub nsw i32 3, %div38
  %shl1889 = shl i32 1, %sub1888
  %sub1891 = sub nsw i32 4, %div38
  %sub1922 = add nsw i32 %div38, -4
  %idxprom1784 = sext i32 %div38 to i64
  %338 = sext i32 %mul to i64
  br label %for.cond1689.preheader

for.cond1689.preheader:                           ; preds = %for.cond1689.preheader.lr.ph, %for.inc1958
  %339 = phi %struct.ImageParameters* [ %336, %for.cond1689.preheader.lr.ph ], [ %372, %for.inc1958 ]
  %indvars.iv3422 = phi i64 [ 0, %for.cond1689.preheader.lr.ph ], [ %indvars.iv.next3423, %for.inc1958 ]
  %cr_cbp_tmp.03296 = phi i32 [ 0, %for.cond1689.preheader.lr.ph ], [ %cr_cbp_tmp.33236, %for.inc1958 ]
  %coeff_cost.03295 = phi i32 [ 0, %for.cond1689.preheader.lr.ph ], [ %coeff_cost.43235, %for.inc1958 ]
  %340 = trunc i64 %indvars.iv3422 to i32
  %add1709 = add i32 %add1708, %340
  %idxprom1710 = sext i32 %add1709 to i64
  %341 = add nsw i64 %indvars.iv3422, %338
  br label %for.body1692

for.body1692:                                     ; preds = %for.end1952.for.body1692_crit_edge, %for.cond1689.preheader
  %342 = phi %struct.ImageParameters* [ %339, %for.cond1689.preheader ], [ %.pre3599, %for.end1952.for.body1692_crit_edge ]
  %indvars.iv3418 = phi i64 [ 0, %for.cond1689.preheader ], [ %indvars.iv.next3419, %for.end1952.for.body1692_crit_edge ]
  %cr_cbp_tmp.13290 = phi i32 [ %cr_cbp_tmp.03296, %for.cond1689.preheader ], [ %cr_cbp_tmp.33236, %for.end1952.for.body1692_crit_edge ]
  %coeff_cost.13289 = phi i32 [ %coeff_cost.03295, %for.cond1689.preheader ], [ %coeff_cost.43235, %for.end1952.for.body1692_crit_edge ]
  %arrayidx1698 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @hor_offset, i64 0, i64 %idxprom1695, i64 %indvars.iv3422, i64 %indvars.iv3418
  %343 = load i8* %arrayidx1698, align 1, !tbaa !1
  %conv1699 = zext i8 %343 to i64
  %arrayidx1705 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @ver_offset, i64 0, i64 %idxprom1695, i64 %indvars.iv3422, i64 %indvars.iv3418
  %344 = load i8* %arrayidx1705, align 1, !tbaa !1
  %conv1706 = zext i8 %344 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 47
  %345 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx1711 = getelementptr inbounds i32**** %345, i64 %idxprom1710
  %346 = load i32**** %arrayidx1711, align 8, !tbaa !0
  %arrayidx1712 = getelementptr inbounds i32*** %346, i64 %indvars.iv3418
  %347 = load i32*** %arrayidx1712, align 8, !tbaa !0
  %348 = load i32** %347, align 8, !tbaa !0
  %arrayidx1721 = getelementptr inbounds i32** %347, i64 1
  %349 = load i32** %arrayidx1721, align 8, !tbaa !0
  %arrayidx1829 = getelementptr inbounds [8 x [4 x i8]]* @cbp_blk_chroma, i64 0, i64 %341, i64 %indvars.iv3418
  br label %for.body1725

for.body1725:                                     ; preds = %for.inc1950.for.body1725_crit_edge, %for.body1692
  %350 = phi %struct.ImageParameters* [ %342, %for.body1692 ], [ %.pre3600, %for.inc1950.for.body1725_crit_edge ]
  %indvars.iv3414 = phi i64 [ 1, %for.body1692 ], [ %indvars.iv.next3415, %for.inc1950.for.body1725_crit_edge ]
  %cr_cbp_tmp.23286 = phi i32 [ %cr_cbp_tmp.13290, %for.body1692 ], [ %cr_cbp_tmp.33236, %for.inc1950.for.body1725_crit_edge ]
  %coeff_cost.23285 = phi i32 [ %coeff_cost.13289, %for.body1692 ], [ %coeff_cost.43235, %for.inc1950.for.body1725_crit_edge ]
  %run.63284 = phi i32 [ -1, %for.body1692 ], [ %run.73234, %for.inc1950.for.body1725_crit_edge ]
  %scan_pos.63283 = phi i32 [ 0, %for.body1692 ], [ %scan_pos.73233, %for.inc1950.for.body1725_crit_edge ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 100
  %351 = load i32* %field_picture, align 4, !tbaa !3
  %tobool1726 = icmp eq i32 %351, 0
  br i1 %tobool1726, label %lor.lhs.false1727, label %if.end1749

lor.lhs.false1727:                                ; preds = %for.body1725
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 90
  %352 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool1728 = icmp eq i32 %352, 0
  br i1 %tobool1728, label %if.else1740, label %land.lhs.true1729

land.lhs.true1729:                                ; preds = %lor.lhs.false1727
  %353 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1730 = icmp eq i32 %353, 0
  br i1 %tobool1730, label %if.else1740, label %if.end1749

if.else1740:                                      ; preds = %land.lhs.true1729, %lor.lhs.false1727
  br label %if.end1749

if.end1749:                                       ; preds = %for.body1725, %land.lhs.true1729, %if.else1740
  %FIELD_SCAN.pn3607 = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else1740 ], [ @FIELD_SCAN, %land.lhs.true1729 ], [ @FIELD_SCAN, %for.body1725 ]
  %i.12.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn3607, i64 0, i64 %indvars.iv3414, i64 0
  %j.12.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn3607, i64 0, i64 %indvars.iv3414, i64 1
  %i.12.in = load i8* %i.12.in.in, align 2
  %j.12.in = load i8* %j.12.in.in, align 1
  %i.12 = zext i8 %i.12.in to i64
  %j.12 = zext i8 %j.12.in to i64
  %inc1750 = add nsw i32 %run.63284, 1
  %add1753 = add i64 %j.12, %conv1706
  %add1755 = add i64 %i.12, %conv1699
  %arrayidx1759 = getelementptr inbounds %struct.ImageParameters* %350, i64 0, i32 46, i64 %add1755, i64 %add1753
  %354 = load i32* %arrayidx1759, align 4, !tbaa !3
  %ispos3207 = icmp sgt i32 %354, -1
  %neg3208 = sub i32 0, %354
  %355 = select i1 %ispos3207, i32 %354, i32 %neg3208
  br i1 %16, label %if.end1821, label %if.else1761

if.else1761:                                      ; preds = %if.end1749
  br i1 %8, label %if.then1764, label %if.else1792

if.then1764:                                      ; preds = %if.else1761
  %arrayidx1780 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %356 = load i32* %arrayidx1780, align 4, !tbaa !3
  %mul1781 = mul nsw i32 %356, %355
  %arrayidx1789 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1784, i64 %i.12, i64 %j.12
  %357 = load i32* %arrayidx1789, align 4, !tbaa !3
  %add1790 = add nsw i32 %mul1781, %357
  %shr1791 = ashr i32 %add1790, %add41
  br label %if.end1821

if.else1792:                                      ; preds = %if.else1761
  %arrayidx1808 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %358 = load i32* %arrayidx1808, align 4, !tbaa !3
  %mul1809 = mul nsw i32 %358, %355
  %arrayidx1817 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1784, i64 %i.12, i64 %j.12
  %359 = load i32* %arrayidx1817, align 4, !tbaa !3
  %add1818 = add nsw i32 %mul1809, %359
  %shr1819 = ashr i32 %add1818, %add41
  br label %if.end1821

if.end1821:                                       ; preds = %if.end1749, %if.then1764, %if.else1792
  %level.4 = phi i32 [ %shr1791, %if.then1764 ], [ %shr1819, %if.else1792 ], [ %355, %if.end1749 ]
  %cmp1822 = icmp eq i32 %level.4, 0
  br i1 %cmp1822, label %if.end1939, label %if.then1824

if.then1824:                                      ; preds = %if.end1821
  %360 = load i8* %arrayidx1829, align 1, !tbaa !1
  %sh_prom1831 = zext i8 %360 to i64
  %shl1832 = shl i64 1, %sh_prom1831
  %361 = load i64* %cbp_blk1833, align 8, !tbaa !5
  %or1834 = or i64 %shl1832, %361
  store i64 %or1834, i64* %cbp_blk1833, align 8, !tbaa !5
  %cmp1835 = icmp sgt i32 %level.4, 1
  %brmerge3227 = or i1 %cmp1835, %16
  br i1 %brmerge3227, label %if.then1839, label %if.else1841

if.then1839:                                      ; preds = %if.then1824
  %add1840 = add nsw i32 %coeff_cost.23285, 999999
  br label %if.end1848

if.else1841:                                      ; preds = %if.then1824
  %idxprom1842 = sext i32 %inc1750 to i64
  %362 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %disthres = getelementptr inbounds %struct.InputParameters* %362, i64 0, i32 86
  %363 = load i32* %disthres, align 4, !tbaa !3
  %idxprom1843 = sext i32 %363 to i64
  %arrayidx1845 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom1843, i64 %idxprom1842
  %364 = load i8* %arrayidx1845, align 1, !tbaa !1
  %conv1846 = zext i8 %364 to i32
  %add1847 = add nsw i32 %conv1846, %coeff_cost.23285
  br label %if.end1848

if.end1848:                                       ; preds = %if.else1841, %if.then1839
  %coeff_cost.3 = phi i32 [ %add1840, %if.then1839 ], [ %add1847, %if.else1841 ]
  %call1856 = call i32 @sign(i32 %level.4, i32 %354) #3
  %idxprom1857 = sext i32 %scan_pos.63283 to i64
  %arrayidx1858 = getelementptr inbounds i32* %348, i64 %idxprom1857
  store i32 %call1856, i32* %arrayidx1858, align 4, !tbaa !3
  %arrayidx1860 = getelementptr inbounds i32* %349, i64 %idxprom1857
  store i32 %inc1750, i32* %arrayidx1860, align 4, !tbaa !3
  %inc1861 = add nsw i32 %scan_pos.63283, 1
  %365 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1868 = getelementptr inbounds %struct.ImageParameters* %365, i64 0, i32 46, i64 %add1755, i64 %add1753
  %366 = load i32* %arrayidx1868, align 4, !tbaa !3
  %call1869 = call i32 @sign(i32 %level.4, i32 %366) #3
  br i1 %16, label %for.inc1950, label %if.else1872

if.else1872:                                      ; preds = %if.end1848
  br i1 %cmp1873, label %if.then1875, label %if.else1909

if.then1875:                                      ; preds = %if.else1872
  br i1 %8, label %if.then1878, label %if.end1939.thread3237

if.then1878:                                      ; preds = %if.then1875
  %arrayidx1886 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %367 = load i32* %arrayidx1886, align 4, !tbaa !3
  %mul1887 = mul nsw i32 %367, %call1869
  %add1890 = add nsw i32 %mul1887, %shl1889
  %shr1892 = ashr i32 %add1890, %sub1891
  br label %if.end1939

if.end1939.thread3237:                            ; preds = %if.then1875
  %arrayidx1901 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %368 = load i32* %arrayidx1901, align 4, !tbaa !3
  %mul1902 = mul nsw i32 %368, %call1869
  %add1905 = add nsw i32 %mul1902, %shl1889
  %shr1907 = ashr i32 %add1905, %sub1891
  br label %if.then1941

if.else1909:                                      ; preds = %if.else1872
  br i1 %8, label %if.then1912, label %if.end1939.thread

if.then1912:                                      ; preds = %if.else1909
  %arrayidx1920 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %369 = load i32* %arrayidx1920, align 4, !tbaa !3
  %mul1921 = mul nsw i32 %369, %call1869
  %shl1923 = shl i32 %mul1921, %sub1922
  br label %if.end1939

if.end1939.thread:                                ; preds = %if.else1909
  %arrayidx1932 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom17, i64 %idxprom1881, i64 %i.12, i64 %j.12
  %370 = load i32* %arrayidx1932, align 4, !tbaa !3
  %mul1933 = mul nsw i32 %370, %call1869
  %shl1935 = shl i32 %mul1933, %sub1922
  br label %if.then1941

if.end1939:                                       ; preds = %if.end1821, %if.then1912, %if.then1878
  %scan_pos.7 = phi i32 [ %inc1861, %if.then1878 ], [ %inc1861, %if.then1912 ], [ %scan_pos.63283, %if.end1821 ]
  %run.7 = phi i32 [ -1, %if.then1878 ], [ -1, %if.then1912 ], [ %inc1750, %if.end1821 ]
  %coeff_cost.4 = phi i32 [ %coeff_cost.3, %if.then1878 ], [ %coeff_cost.3, %if.then1912 ], [ %coeff_cost.23285, %if.end1821 ]
  %cr_cbp_tmp.3 = phi i32 [ 2, %if.then1878 ], [ 2, %if.then1912 ], [ %cr_cbp_tmp.23286, %if.end1821 ]
  %ilev.1 = phi i32 [ %shr1892, %if.then1878 ], [ %shl1923, %if.then1912 ], [ 0, %if.end1821 ]
  br i1 %16, label %for.inc1950, label %if.then1941

if.then1941:                                      ; preds = %if.end1939, %if.end1939.thread, %if.end1939.thread3237
  %ilev.13242 = phi i32 [ %shr1907, %if.end1939.thread3237 ], [ %shl1935, %if.end1939.thread ], [ %ilev.1, %if.end1939 ]
  %cr_cbp_tmp.33241 = phi i32 [ 2, %if.end1939.thread3237 ], [ 2, %if.end1939.thread ], [ %cr_cbp_tmp.3, %if.end1939 ]
  %coeff_cost.43240 = phi i32 [ %coeff_cost.3, %if.end1939.thread3237 ], [ %coeff_cost.3, %if.end1939.thread ], [ %coeff_cost.4, %if.end1939 ]
  %run.73239 = phi i32 [ -1, %if.end1939.thread3237 ], [ -1, %if.end1939.thread ], [ %run.7, %if.end1939 ]
  %scan_pos.73238 = phi i32 [ %inc1861, %if.end1939.thread3237 ], [ %inc1861, %if.end1939.thread ], [ %scan_pos.7, %if.end1939 ]
  %371 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1948 = getelementptr inbounds %struct.ImageParameters* %371, i64 0, i32 46, i64 %add1755, i64 %add1753
  store i32 %ilev.13242, i32* %arrayidx1948, align 4, !tbaa !3
  br label %for.inc1950

for.inc1950:                                      ; preds = %if.end1848, %if.end1939, %if.then1941
  %cr_cbp_tmp.33236 = phi i32 [ %cr_cbp_tmp.3, %if.end1939 ], [ %cr_cbp_tmp.33241, %if.then1941 ], [ 2, %if.end1848 ]
  %coeff_cost.43235 = phi i32 [ %coeff_cost.4, %if.end1939 ], [ %coeff_cost.43240, %if.then1941 ], [ %coeff_cost.3, %if.end1848 ]
  %run.73234 = phi i32 [ %run.7, %if.end1939 ], [ %run.73239, %if.then1941 ], [ -1, %if.end1848 ]
  %scan_pos.73233 = phi i32 [ %scan_pos.7, %if.end1939 ], [ %scan_pos.73238, %if.then1941 ], [ %inc1861, %if.end1848 ]
  %indvars.iv.next3415 = add i64 %indvars.iv3414, 1
  %lftr.wideiv3416 = trunc i64 %indvars.iv.next3415 to i32
  %exitcond3417 = icmp eq i32 %lftr.wideiv3416, 16
  br i1 %exitcond3417, label %for.end1952, label %for.inc1950.for.body1725_crit_edge

for.inc1950.for.body1725_crit_edge:               ; preds = %for.inc1950
  %.pre3600 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body1725

for.end1952:                                      ; preds = %for.inc1950
  %idxprom1953 = sext i32 %scan_pos.73233 to i64
  %arrayidx1954 = getelementptr inbounds i32* %348, i64 %idxprom1953
  store i32 0, i32* %arrayidx1954, align 4, !tbaa !3
  %indvars.iv.next3419 = add i64 %indvars.iv3418, 1
  %lftr.wideiv3420 = trunc i64 %indvars.iv.next3419 to i32
  %exitcond3421 = icmp eq i32 %lftr.wideiv3420, 4
  br i1 %exitcond3421, label %for.inc1958, label %for.end1952.for.body1692_crit_edge

for.end1952.for.body1692_crit_edge:               ; preds = %for.end1952
  %.pre3599 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body1692

for.inc1958:                                      ; preds = %for.end1952
  %indvars.iv.next3423 = add i64 %indvars.iv3422, 1
  %372 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_blk8x8_uv1684 = getelementptr inbounds %struct.ImageParameters* %372, i64 0, i32 157
  %373 = load i32* %num_blk8x8_uv1684, align 4, !tbaa !3
  %div1685 = sdiv i32 %373, 2
  %374 = trunc i64 %indvars.iv.next3423 to i32
  %cmp1686 = icmp slt i32 %374, %div1685
  br i1 %cmp1686, label %for.cond1689.preheader, label %for.end1960

for.end1960:                                      ; preds = %for.inc1958, %if.end1682
  %375 = phi i32 [ %337, %if.end1682 ], [ %373, %for.inc1958 ]
  %376 = phi %struct.ImageParameters* [ %336, %if.end1682 ], [ %372, %for.inc1958 ]
  %cr_cbp_tmp.0.lcssa = phi i32 [ 0, %if.end1682 ], [ %cr_cbp_tmp.33236, %for.inc1958 ]
  %coeff_cost.0.lcssa = phi i32 [ 0, %if.end1682 ], [ %coeff_cost.43235, %for.inc1958 ]
  %cmp1961.not = icmp sgt i32 %coeff_cost.0.lcssa, 3
  %brmerge3228 = or i1 %cmp1961.not, %16
  br i1 %brmerge3228, label %if.end2067, label %for.cond1966.preheader

for.cond1966.preheader:                           ; preds = %for.end1960
  %num_blk8x8_uv19673279 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 157
  %cmp19693281 = icmp sgt i32 %375, 1
  br i1 %cmp19693281, label %for.cond1972.preheader.lr.ph, label %if.end2067

for.cond1972.preheader.lr.ph:                     ; preds = %for.cond1966.preheader
  %idxprom1978 = sext i32 %10 to i64
  %add1991 = add i32 %mul, 4
  %cmp2006 = icmp eq i32 %DCcoded.6, 0
  %arrayidx2010 = getelementptr inbounds [4 x i64]* @dct_chroma.cbpblk_pattern, i64 0, i64 %idxprom1978
  %add2011 = add nsw i32 %10, 1
  %shl2012 = shl i32 %uv, %add2011
  %sh_prom2013 = zext i32 %shl2012 to i64
  %cbp_blk2015 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %mb_field2028 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  br label %for.cond1972.preheader

for.cond1972.preheader:                           ; preds = %for.cond1972.preheader.lr.ph, %for.inc2064
  %indvars.iv3412 = phi i64 [ 0, %for.cond1972.preheader.lr.ph ], [ %indvars.iv.next3413, %for.inc2064 ]
  %377 = trunc i64 %indvars.iv3412 to i32
  %add1992 = add i32 %add1991, %377
  %idxprom1993 = sext i32 %add1992 to i64
  br label %for.body1975

for.body1975:                                     ; preds = %for.inc2061, %for.cond1972.preheader
  %indvars.iv3408 = phi i64 [ 0, %for.cond1972.preheader ], [ %indvars.iv.next3409, %for.inc2061 ]
  %arrayidx1981 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @hor_offset, i64 0, i64 %idxprom1978, i64 %indvars.iv3412, i64 %indvars.iv3408
  %378 = load i8* %arrayidx1981, align 1, !tbaa !1
  %conv1982 = zext i8 %378 to i64
  %arrayidx1988 = getelementptr inbounds [4 x [4 x [4 x i8]]]* @ver_offset, i64 0, i64 %idxprom1978, i64 %indvars.iv3412, i64 %indvars.iv3408
  %379 = load i8* %arrayidx1988, align 1, !tbaa !1
  %conv1989 = zext i8 %379 to i64
  %cofAC1994 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 47
  %380 = load i32***** %cofAC1994, align 8, !tbaa !0
  %arrayidx1995 = getelementptr inbounds i32**** %380, i64 %idxprom1993
  %381 = load i32**** %arrayidx1995, align 8, !tbaa !0
  %arrayidx1996 = getelementptr inbounds i32*** %381, i64 %indvars.iv3408
  %382 = load i32*** %arrayidx1996, align 8, !tbaa !0
  %383 = load i32** %382, align 8, !tbaa !0
  br i1 %cmp2006, label %if.then2008, label %if.end2016

if.then2008:                                      ; preds = %for.body1975
  %384 = load i64* %arrayidx2010, align 8, !tbaa !5
  %shl2014 = shl i64 %384, %sh_prom2013
  %neg = xor i64 %shl2014, -1
  %385 = load i64* %cbp_blk2015, align 8, !tbaa !5
  %and = and i64 %385, %neg
  store i64 %and, i64* %cbp_blk2015, align 8, !tbaa !5
  br label %if.end2016

if.end2016:                                       ; preds = %if.then2008, %for.body1975
  store i32 0, i32* %383, align 4, !tbaa !3
  %field_picture2022 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 100
  %MbaffFrameFlag2025 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 90
  br label %for.body2021

for.body2021:                                     ; preds = %if.end2048, %if.end2016
  %indvars.iv3403 = phi i64 [ 1, %if.end2016 ], [ %indvars.iv.next3404, %if.end2048 ]
  %386 = load i32* %field_picture2022, align 4, !tbaa !3
  %tobool2023 = icmp eq i32 %386, 0
  br i1 %tobool2023, label %lor.lhs.false2024, label %if.end2048

lor.lhs.false2024:                                ; preds = %for.body2021
  %387 = load i32* %MbaffFrameFlag2025, align 4, !tbaa !3
  %tobool2026 = icmp eq i32 %387, 0
  br i1 %tobool2026, label %if.else2039, label %land.lhs.true2027

land.lhs.true2027:                                ; preds = %lor.lhs.false2024
  %388 = load i32* %mb_field2028, align 4, !tbaa !3
  %tobool2029 = icmp eq i32 %388, 0
  br i1 %tobool2029, label %if.else2039, label %if.end2048

if.else2039:                                      ; preds = %land.lhs.true2027, %lor.lhs.false2024
  br label %if.end2048

if.end2048:                                       ; preds = %for.body2021, %land.lhs.true2027, %if.else2039
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else2039 ], [ @FIELD_SCAN, %land.lhs.true2027 ], [ @FIELD_SCAN, %for.body2021 ]
  %i.13.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv3403, i64 0
  %j.13.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv3403, i64 1
  %i.13.in = load i8* %i.13.in.in, align 2
  %j.13.in = load i8* %j.13.in.in, align 1
  %i.13 = zext i8 %i.13.in to i64
  %j.13 = zext i8 %j.13.in to i64
  %add2049 = add i64 %j.13, %conv1989
  %add2051 = add i64 %i.13, %conv1982
  %arrayidx2055 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %add2051, i64 %add2049
  store i32 0, i32* %arrayidx2055, align 4, !tbaa !3
  %arrayidx2057 = getelementptr inbounds i32* %383, i64 %indvars.iv3403
  store i32 0, i32* %arrayidx2057, align 4, !tbaa !3
  %indvars.iv.next3404 = add i64 %indvars.iv3403, 1
  %lftr.wideiv3405 = trunc i64 %indvars.iv.next3404 to i32
  %exitcond3406 = icmp eq i32 %lftr.wideiv3405, 16
  br i1 %exitcond3406, label %for.inc2061, label %for.body2021

for.inc2061:                                      ; preds = %if.end2048
  %indvars.iv.next3409 = add i64 %indvars.iv3408, 1
  %lftr.wideiv3410 = trunc i64 %indvars.iv.next3409 to i32
  %exitcond3411 = icmp eq i32 %lftr.wideiv3410, 4
  br i1 %exitcond3411, label %for.inc2064, label %for.body1975

for.inc2064:                                      ; preds = %for.inc2061
  %indvars.iv.next3413 = add i64 %indvars.iv3412, 1
  %389 = load i32* %num_blk8x8_uv19673279, align 4, !tbaa !3
  %div1968 = sdiv i32 %389, 2
  %390 = trunc i64 %indvars.iv.next3413 to i32
  %cmp1969 = icmp slt i32 %390, %div1968
  br i1 %cmp1969, label %for.cond1972.preheader, label %if.end2067

if.end2067:                                       ; preds = %for.cond1966.preheader, %for.inc2064, %for.end1960
  %cr_cbp_tmp.4 = phi i32 [ %cr_cbp_tmp.0.lcssa, %for.end1960 ], [ 0, %for.inc2064 ], [ 0, %for.cond1966.preheader ]
  %cmp2068 = icmp eq i32 %cr_cbp_tmp.4, 2
  %.cr_cbp.addr.6 = select i1 %cmp2068, i32 2, i32 %cr_cbp.addr.6
  %mb_cr_size_y20733271 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 162
  %391 = load i32* %mb_cr_size_y20733271, align 4, !tbaa !3
  %cmp2074.not3272 = icmp slt i32 %391, 1
  %brmerge32293273 = or i1 %cmp2074.not3272, %16
  br i1 %brmerge32293273, label %if.end2067.for.end2481_crit_edge, label %for.cond2082.preheader.lr.ph

if.end2067.for.end2481_crit_edge:                 ; preds = %if.end2067
  %residue_transform_flag2482.pre = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 164
  br label %for.end2481

for.cond2082.preheader.lr.ph:                     ; preds = %if.end2067
  %mb_cr_size_x20833267 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 161
  %arrayidx2108 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx2110 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx2114 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx2119 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx2124 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 164
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 156
  %.pre3560 = load i32* %mb_cr_size_x20833267, align 4, !tbaa !3
  br label %for.cond2082.preheader

for.cond2082.preheader:                           ; preds = %for.inc2479, %for.cond2082.preheader.lr.ph
  %392 = phi i32 [ %391, %for.cond2082.preheader.lr.ph ], [ %446, %for.inc2479 ]
  %393 = phi i32 [ %.pre3560, %for.cond2082.preheader.lr.ph ], [ %447, %for.inc2479 ]
  %indvars.iv3401 = phi i64 [ 0, %for.cond2082.preheader.lr.ph ], [ %indvars.iv.next3402, %for.inc2479 ]
  %cmp20843268 = icmp sgt i32 %393, 0
  br i1 %cmp20843268, label %for.cond2087.preheader, label %for.inc2479

for.cond2087.preheader:                           ; preds = %for.cond2082.preheader, %for.inc2476
  %indvars.iv3399 = phi i64 [ %indvars.iv.next3400, %for.inc2476 ], [ 0, %for.cond2082.preheader ]
  br label %for.cond2091.preheader

for.cond2091.preheader:                           ; preds = %for.inc2157, %for.cond2087.preheader
  %indvars.iv3370 = phi i64 [ 0, %for.cond2087.preheader ], [ %indvars.iv.next3371, %for.inc2157 ]
  %394 = add nsw i64 %indvars.iv3370, %indvars.iv3401
  br label %for.body2094

for.body2094:                                     ; preds = %for.body2094, %for.cond2091.preheader
  %indvars.iv3360 = phi i64 [ 0, %for.cond2091.preheader ], [ %indvars.iv.next3361, %for.body2094 ]
  %395 = add nsw i64 %indvars.iv3360, %indvars.iv3399
  %arrayidx2101 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %395, i64 %394
  %396 = load i32* %arrayidx2101, align 4, !tbaa !3
  %arrayidx2103 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3360
  store i32 %396, i32* %arrayidx2103, align 4, !tbaa !3
  %indvars.iv.next3361 = add i64 %indvars.iv3360, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next3361 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end2106, label %for.body2094

for.end2106:                                      ; preds = %for.body2094
  %397 = bitcast [4 x i32]* %m5 to i64*
  %398 = load i64* %397, align 16
  %399 = trunc i64 %398 to i32
  %400 = bitcast i32* %arrayidx2108 to i64*
  %401 = load i64* %400, align 8
  %402 = trunc i64 %401 to i32
  %add2109 = add nsw i32 %402, %399
  store i32 %add2109, i32* %arrayidx2110, align 16, !tbaa !3
  %sub2113 = sub nsw i32 %399, %402
  store i32 %sub2113, i32* %arrayidx2114, align 4, !tbaa !3
  %403 = lshr i64 %398, 32
  %404 = trunc i64 %403 to i32
  %shr2116 = ashr i32 %404, 1
  %405 = lshr i64 %401, 32
  %406 = trunc i64 %405 to i32
  %sub2118 = sub nsw i32 %shr2116, %406
  store i32 %sub2118, i32* %arrayidx2119, align 8, !tbaa !3
  %shr2122 = ashr i32 %406, 1
  %add2123 = add nsw i32 %shr2122, %404
  store i32 %add2123, i32* %arrayidx2124, align 4, !tbaa !3
  br label %for.body2128

for.body2128:                                     ; preds = %for.body2128.for.body2128_crit_edge, %for.end2106
  %407 = phi i32 [ %add2109, %for.end2106 ], [ %.pre3598, %for.body2128.for.body2128_crit_edge ]
  %indvars.iv3363 = phi i64 [ 0, %for.end2106 ], [ %indvars.iv.next3364, %for.body2128.for.body2128_crit_edge ]
  %408 = sub nsw i64 3, %indvars.iv3363
  %arrayidx2131 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3363
  %arrayidx2133 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %408
  %409 = load i32* %arrayidx2133, align 4, !tbaa !3
  %add2134 = add nsw i32 %409, %407
  %410 = add nsw i64 %indvars.iv3363, %indvars.iv3399
  %arrayidx2141 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %410, i64 %394
  store i32 %add2134, i32* %arrayidx2141, align 4, !tbaa !3
  %411 = load i32* %arrayidx2131, align 4, !tbaa !3
  %412 = load i32* %arrayidx2133, align 4, !tbaa !3
  %sub2146 = sub nsw i32 %411, %412
  %413 = add nsw i64 %408, %indvars.iv3399
  %arrayidx2153 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %413, i64 %394
  store i32 %sub2146, i32* %arrayidx2153, align 4, !tbaa !3
  %indvars.iv.next3364 = add i64 %indvars.iv3363, 1
  %lftr.wideiv3368 = trunc i64 %indvars.iv.next3364 to i32
  %exitcond3369 = icmp eq i32 %lftr.wideiv3368, 2
  br i1 %exitcond3369, label %for.inc2157, label %for.body2128.for.body2128_crit_edge

for.body2128.for.body2128_crit_edge:              ; preds = %for.body2128
  %arrayidx2131.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next3364
  %.pre3598 = load i32* %arrayidx2131.phi.trans.insert, align 4, !tbaa !3
  br label %for.body2128

for.inc2157:                                      ; preds = %for.body2128
  %indvars.iv.next3371 = add i64 %indvars.iv3370, 1
  %lftr.wideiv3374 = trunc i64 %indvars.iv.next3371 to i32
  %exitcond3375 = icmp eq i32 %lftr.wideiv3374, 4
  br i1 %exitcond3375, label %for.cond2169.preheader, label %for.cond2091.preheader

for.cond2169.preheader:                           ; preds = %for.inc2157, %for.inc2473
  %indvars.iv3393 = phi i64 [ %indvars.iv.next3394, %for.inc2473 ], [ 0, %for.inc2157 ]
  %414 = add nsw i64 %indvars.iv3393, %indvars.iv3399
  br label %for.body2172

for.body2172:                                     ; preds = %for.body2172, %for.cond2169.preheader
  %indvars.iv3376 = phi i64 [ 0, %for.cond2169.preheader ], [ %indvars.iv.next3377, %for.body2172 ]
  %415 = add nsw i64 %indvars.iv3376, %indvars.iv3401
  %arrayidx2179 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %415
  %416 = load i32* %arrayidx2179, align 4, !tbaa !3
  %arrayidx2181 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv3376
  store i32 %416, i32* %arrayidx2181, align 4, !tbaa !3
  %indvars.iv.next3377 = add i64 %indvars.iv3376, 1
  %lftr.wideiv3379 = trunc i64 %indvars.iv.next3377 to i32
  %exitcond3380 = icmp eq i32 %lftr.wideiv3379, 4
  br i1 %exitcond3380, label %for.end2184, label %for.body2172

for.end2184:                                      ; preds = %for.body2172
  %417 = load i64* %397, align 16
  %418 = trunc i64 %417 to i32
  %419 = load i64* %400, align 8
  %420 = trunc i64 %419 to i32
  %add2187 = add nsw i32 %420, %418
  store i32 %add2187, i32* %arrayidx2110, align 16, !tbaa !3
  %sub2191 = sub nsw i32 %418, %420
  store i32 %sub2191, i32* %arrayidx2114, align 4, !tbaa !3
  %421 = lshr i64 %417, 32
  %422 = trunc i64 %421 to i32
  %shr2194 = ashr i32 %422, 1
  %423 = lshr i64 %419, 32
  %424 = trunc i64 %423 to i32
  %sub2196 = sub nsw i32 %shr2194, %424
  store i32 %sub2196, i32* %arrayidx2119, align 8, !tbaa !3
  %shr2200 = ashr i32 %424, 1
  %add2201 = add nsw i32 %shr2200, %422
  store i32 %add2201, i32* %arrayidx2124, align 4, !tbaa !3
  br label %for.body2206

for.body2206:                                     ; preds = %for.inc2470, %for.end2184
  %indvars.iv3382 = phi i64 [ 0, %for.end2184 ], [ %indvars.iv.next3383, %for.inc2470 ]
  %425 = sub nsw i64 3, %indvars.iv3382
  %426 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool2208 = icmp eq i32 %426, 0
  br i1 %tobool2208, label %if.then2209, label %if.else2439

if.then2209:                                      ; preds = %for.body2206
  %427 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %conv2210 = sext i32 %427 to i64
  %arrayidx2212 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3382
  %428 = load i32* %arrayidx2212, align 4, !tbaa !3
  %arrayidx2214 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %425
  %429 = load i32* %arrayidx2214, align 4, !tbaa !3
  %add2215 = add nsw i32 %429, %428
  %conv2216 = sext i32 %add2215 to i64
  %430 = add nsw i64 %indvars.iv3382, %indvars.iv3401
  %arrayidx2222 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %414, i64 %430
  %431 = load i16* %arrayidx2222, align 2, !tbaa !4
  %conv2223 = zext i16 %431 to i64
  %shl2224 = shl nuw nsw i64 %conv2223, 6
  %add2225 = add i64 %conv2216, 32
  %add2226 = add i64 %add2225, %shl2224
  %shr2227 = ashr i64 %add2226, 6
  %cmp2228 = icmp slt i64 %shr2227, 0
  %.shr2227 = select i1 %cmp2228, i64 0, i64 %shr2227
  %cmp2252 = icmp slt i64 %conv2210, %.shr2227
  %conv2210..shr2227 = select i1 %cmp2252, i64 %conv2210, i64 %.shr2227
  %conv2302 = trunc i64 %conv2210..shr2227 to i32
  %arrayidx2309 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %430
  store i32 %conv2302, i32* %arrayidx2309, align 4, !tbaa !3
  %432 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %conv2311 = sext i32 %432 to i64
  %433 = load i32* %arrayidx2212, align 4, !tbaa !3
  %434 = load i32* %arrayidx2214, align 4, !tbaa !3
  %sub2316 = sub nsw i32 %433, %434
  %conv2317 = sext i32 %sub2316 to i64
  %435 = add nsw i64 %425, %indvars.iv3401
  %arrayidx2324 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %414, i64 %435
  %436 = load i16* %arrayidx2324, align 2, !tbaa !4
  %conv2325 = zext i16 %436 to i64
  %shl2326 = shl nuw nsw i64 %conv2325, 6
  %add2327 = add i64 %conv2317, 32
  %add2328 = add i64 %add2327, %shl2326
  %shr2329 = ashr i64 %add2328, 6
  %cmp2330 = icmp slt i64 %shr2329, 0
  %.shr2329 = select i1 %cmp2330, i64 0, i64 %shr2329
  %cmp2354 = icmp slt i64 %conv2311, %.shr2329
  %cond2403 = select i1 %cmp2354, i64 %conv2311, i64 %.shr2329
  %conv2404 = trunc i64 %cond2403 to i32
  %arrayidx2411 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %435
  store i32 %conv2404, i32* %arrayidx2411, align 4, !tbaa !3
  br label %for.inc2470

if.else2439:                                      ; preds = %for.body2206
  %arrayidx2416 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv3382
  %arrayidx2418 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %425
  %437 = load i32* %arrayidx2418, align 4, !tbaa !3
  %438 = load i32* %arrayidx2416, align 4, !tbaa !3
  %add2419 = add nsw i32 %437, %438
  %add2445 = add nsw i32 %add2419, 32
  %shr2446 = ashr i32 %add2445, 6
  %439 = add nsw i64 %indvars.iv3382, %indvars.iv3401
  %arrayidx2453 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %439
  store i32 %shr2446, i32* %arrayidx2453, align 4, !tbaa !3
  %440 = load i32* %arrayidx2416, align 4, !tbaa !3
  %441 = load i32* %arrayidx2418, align 4, !tbaa !3
  %sub2458 = add i32 %440, 32
  %add2459 = sub i32 %sub2458, %441
  %shr2460 = ashr i32 %add2459, 6
  %442 = add nsw i64 %425, %indvars.iv3401
  %arrayidx2467 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %414, i64 %442
  store i32 %shr2460, i32* %arrayidx2467, align 4, !tbaa !3
  br label %for.inc2470

for.inc2470:                                      ; preds = %if.then2209, %if.else2439
  %indvars.iv.next3383 = add i64 %indvars.iv3382, 1
  %lftr.wideiv3391 = trunc i64 %indvars.iv.next3383 to i32
  %exitcond3392 = icmp eq i32 %lftr.wideiv3391, 2
  br i1 %exitcond3392, label %for.inc2473, label %for.body2206

for.inc2473:                                      ; preds = %for.inc2470
  %indvars.iv.next3394 = add i64 %indvars.iv3393, 1
  %443 = trunc i64 %indvars.iv3393 to i32
  %cmp2161.not = icmp sgt i32 %443, 2
  br i1 %cmp2161.not, label %for.inc2476, label %for.cond2169.preheader

for.inc2476:                                      ; preds = %for.inc2473
  %indvars.iv.next3400 = add i64 %indvars.iv3399, 4
  %444 = load i32* %mb_cr_size_x20833267, align 4, !tbaa !3
  %445 = trunc i64 %indvars.iv.next3400 to i32
  %cmp2084 = icmp slt i32 %445, %444
  br i1 %cmp2084, label %for.cond2087.preheader, label %for.cond2082.for.inc2479_crit_edge

for.cond2082.for.inc2479_crit_edge:               ; preds = %for.inc2476
  %.pre3561 = load i32* %mb_cr_size_y20733271, align 4, !tbaa !3
  br label %for.inc2479

for.inc2479:                                      ; preds = %for.cond2082.for.inc2479_crit_edge, %for.cond2082.preheader
  %446 = phi i32 [ %.pre3561, %for.cond2082.for.inc2479_crit_edge ], [ %392, %for.cond2082.preheader ]
  %447 = phi i32 [ %444, %for.cond2082.for.inc2479_crit_edge ], [ %393, %for.cond2082.preheader ]
  %indvars.iv.next3402 = add i64 %indvars.iv3401, 4
  %448 = trunc i64 %indvars.iv.next3402 to i32
  %cmp2074.not = icmp slt i32 %448, %446
  br i1 %cmp2074.not, label %for.cond2082.preheader, label %for.end2481

for.end2481:                                      ; preds = %for.inc2479, %if.end2067.for.end2481_crit_edge
  %residue_transform_flag2482.pre-phi = phi i32* [ %residue_transform_flag2482.pre, %if.end2067.for.end2481_crit_edge ], [ %residue_transform_flag, %for.inc2479 ]
  %449 = phi i32 [ %391, %if.end2067.for.end2481_crit_edge ], [ %446, %for.inc2479 ]
  %450 = load i32* %residue_transform_flag2482.pre-phi, align 4, !tbaa !3
  %tobool2483 = icmp eq i32 %450, 0
  %cmp24873259 = icmp sgt i32 %449, 0
  %or.cond3619 = and i1 %tobool2483, %cmp24873259
  br i1 %or.cond3619, label %for.cond2490.preheader.lr.ph, label %if.end2543

for.cond2490.preheader.lr.ph:                     ; preds = %for.end2481
  %mb_cr_size_x24913255 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 161
  %451 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %451, i64 0, i32 30
  %.pre3559 = load i32* %mb_cr_size_x24913255, align 4, !tbaa !3
  br label %for.cond2490.preheader

for.cond2490.preheader:                           ; preds = %for.cond2490.preheader.lr.ph, %for.inc2540
  %indvars.iv3358 = phi i64 [ 0, %for.cond2490.preheader.lr.ph ], [ %indvars.iv.next3359, %for.inc2540 ]
  %cmp24923256 = icmp sgt i32 %.pre3559, 0
  br i1 %cmp24923256, label %for.body2494, label %for.inc2540

for.body2494:                                     ; preds = %for.cond2490.preheader, %for.inc2537
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc2537 ], [ 0, %for.cond2490.preheader ]
  %arrayidx2501 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv3358
  %452 = load i32* %arrayidx2501, align 4, !tbaa !3
  br i1 %16, label %if.then2496, label %if.else2518

if.then2496:                                      ; preds = %for.body2494
  %arrayidx2506 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv3358
  %453 = load i16* %arrayidx2506, align 2, !tbaa !4
  %conv2507 = zext i16 %453 to i32
  %add2508 = add nsw i32 %conv2507, %452
  %conv2509 = trunc i32 %add2508 to i16
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 35
  %454 = load i32* %pix_c_x, align 4, !tbaa !3
  %455 = trunc i64 %indvars.iv to i32
  %add2510 = add nsw i32 %454, %455
  %idxprom2511 = sext i32 %add2510 to i64
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 36
  %456 = load i32* %pix_c_y, align 4, !tbaa !3
  %457 = trunc i64 %indvars.iv3358 to i32
  %add2512 = add nsw i32 %456, %457
  %idxprom2513 = sext i32 %add2512 to i64
  %458 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx2515 = getelementptr inbounds i16*** %458, i64 %idxprom17
  %459 = load i16*** %arrayidx2515, align 8, !tbaa !0
  %arrayidx2516 = getelementptr inbounds i16** %459, i64 %idxprom2513
  %460 = load i16** %arrayidx2516, align 8, !tbaa !0
  %arrayidx2517 = getelementptr inbounds i16* %460, i64 %idxprom2511
  store i16 %conv2509, i16* %arrayidx2517, align 2, !tbaa !4
  br label %for.inc2537

if.else2518:                                      ; preds = %for.body2494
  %conv2524 = trunc i32 %452 to i16
  %pix_c_x2525 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 35
  %461 = load i32* %pix_c_x2525, align 4, !tbaa !3
  %462 = trunc i64 %indvars.iv to i32
  %add2526 = add nsw i32 %461, %462
  %idxprom2527 = sext i32 %add2526 to i64
  %pix_c_y2528 = getelementptr inbounds %struct.ImageParameters* %376, i64 0, i32 36
  %463 = load i32* %pix_c_y2528, align 4, !tbaa !3
  %464 = trunc i64 %indvars.iv3358 to i32
  %add2529 = add nsw i32 %463, %464
  %idxprom2530 = sext i32 %add2529 to i64
  %465 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx2533 = getelementptr inbounds i16*** %465, i64 %idxprom17
  %466 = load i16*** %arrayidx2533, align 8, !tbaa !0
  %arrayidx2534 = getelementptr inbounds i16** %466, i64 %idxprom2530
  %467 = load i16** %arrayidx2534, align 8, !tbaa !0
  %arrayidx2535 = getelementptr inbounds i16* %467, i64 %idxprom2527
  store i16 %conv2524, i16* %arrayidx2535, align 2, !tbaa !4
  br label %for.inc2537

for.inc2537:                                      ; preds = %if.then2496, %if.else2518
  %indvars.iv.next = add i64 %indvars.iv, 1
  %468 = trunc i64 %indvars.iv.next to i32
  %cmp2492 = icmp slt i32 %468, %.pre3559
  br i1 %cmp2492, label %for.body2494, label %for.inc2540

for.inc2540:                                      ; preds = %for.inc2537, %for.cond2490.preheader
  %indvars.iv.next3359 = add i64 %indvars.iv3358, 1
  %469 = trunc i64 %indvars.iv.next3359 to i32
  %cmp2487 = icmp slt i32 %469, %449
  br i1 %cmp2487, label %for.cond2490.preheader, label %if.end2543

if.end2543:                                       ; preds = %for.inc2540, %for.end2481
  call void @llvm.lifetime.end(i64 64, i8* %12) #1
  call void @llvm.lifetime.end(i64 64, i8* %11) #1
  ret i32 %.cr_cbp.addr.6
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma4x4(i32 %uv, i32 %b8, i32 %b4) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %3 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %3, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ]

lor.rhs:                                          ; preds = %entry
  br label %lor.end

lor.end:                                          ; preds = %entry, %entry, %entry, %lor.rhs
  %4 = phi i1 [ true, %entry ], [ false, %lor.rhs ], [ true, %entry ], [ true, %entry ]
  %idxprom5 = sext i32 %b4 to i64
  %idxprom6 = sext i32 %b8 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %5 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32**** %5, i64 %idxprom6
  %6 = load i32**** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %6, i64 %idxprom5
  %7 = load i32*** %arrayidx8, align 8, !tbaa !0
  %8 = load i32** %7, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %7, i64 1
  %9 = load i32** %arrayidx15, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 10
  %10 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151
  %11 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add = sub i32 0, %11
  %cmp16 = icmp eq i32 %10, %add
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160
  %12 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %12, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %13 = phi i1 [ false, %lor.end ], [ %cmp17, %land.rhs ]
  %qp18 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3
  %14 = load i32* %qp18, align 4, !tbaa !3
  %idxprom19 = sext i32 %uv to i64
  %arrayidx20 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 163, i64 %idxprom19
  %15 = load i32* %arrayidx20, align 4, !tbaa !3
  %add21 = add nsw i32 %15, %14
  %cmp22 = icmp slt i32 %add21, 0
  br i1 %cmp22, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.end
  %idxprom23 = sext i32 %add21 to i64
  %arrayidx24 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom23
  %16 = load i8* %arrayidx24, align 1, !tbaa !1
  %conv = zext i8 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ %add21, %land.end ]
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 152
  %17 = load i32* %bitdepth_chroma_qp_scale, align 4, !tbaa !3
  %add25 = add nsw i32 %17, %cond
  %div = sdiv i32 %add25, 6
  %rem = srem i32 %add25, 6
  %add28 = add nsw i32 %div, 15
  br i1 %13, label %if.end166.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %cond.end
  %arrayidx75 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx76 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.end, %for.cond.preheader
  %indvars.iv896 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next897, %for.end ]
  br label %for.body34

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv891 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next892, %for.body34 ]
  %18 = sub nsw i64 3, %indvars.iv891
  %arrayidx39 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv891, i64 %indvars.iv896
  %19 = load i32* %arrayidx39, align 4, !tbaa !3
  %arrayidx44 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %18, i64 %indvars.iv896
  %20 = load i32* %arrayidx44, align 4, !tbaa !3
  %add45 = add nsw i32 %20, %19
  %arrayidx47 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv891
  store i32 %add45, i32* %arrayidx47, align 4, !tbaa !3
  %sub58 = sub nsw i32 %19, %20
  %arrayidx60 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %18
  store i32 %sub58, i32* %arrayidx60, align 4, !tbaa !3
  %indvars.iv.next892 = add i64 %indvars.iv891, 1
  %lftr.wideiv894 = trunc i64 %indvars.iv.next892 to i32
  %exitcond895 = icmp eq i32 %lftr.wideiv894, 2
  br i1 %exitcond895, label %for.end, label %for.body34

for.end:                                          ; preds = %for.body34
  %21 = bitcast [4 x i32]* %m5 to i64*
  %22 = load i64* %21, align 16
  %23 = trunc i64 %22 to i32
  %24 = lshr i64 %22, 32
  %25 = trunc i64 %24 to i32
  %add63 = add nsw i32 %25, %23
  %arrayidx67 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 %indvars.iv896
  store i32 %add63, i32* %arrayidx67, align 4, !tbaa !3
  %sub70 = sub nsw i32 %23, %25
  %arrayidx74 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 2, i64 %indvars.iv896
  store i32 %sub70, i32* %arrayidx74, align 4, !tbaa !3
  %26 = load i32* %arrayidx75, align 4, !tbaa !3
  %mul = shl i32 %26, 1
  %27 = bitcast i32* %arrayidx76 to i64*
  %28 = load i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %add77 = add nsw i32 %mul, %29
  %arrayidx81 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 1, i64 %indvars.iv896
  store i32 %add77, i32* %arrayidx81, align 4, !tbaa !3
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  %mul84 = shl nsw i32 %29, 1
  %sub85 = sub nsw i32 %31, %mul84
  %arrayidx89 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 3, i64 %indvars.iv896
  store i32 %sub85, i32* %arrayidx89, align 4, !tbaa !3
  %indvars.iv.next897 = add i64 %indvars.iv896, 1
  %lftr.wideiv898 = trunc i64 %indvars.iv.next897 to i32
  %exitcond899 = icmp eq i32 %lftr.wideiv898, 4
  br i1 %exitcond899, label %for.cond99.preheader, label %for.cond31.preheader

for.cond99.preheader:                             ; preds = %for.end, %for.end132
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %for.end132 ], [ 0, %for.end ]
  br label %for.body102

for.body102:                                      ; preds = %for.body102, %for.cond99.preheader
  %indvars.iv882 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next883, %for.body102 ]
  %32 = sub nsw i64 3, %indvars.iv882
  %arrayidx108 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 %indvars.iv882
  %33 = load i32* %arrayidx108, align 4, !tbaa !3
  %arrayidx113 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 %32
  %34 = load i32* %arrayidx113, align 4, !tbaa !3
  %add114 = add nsw i32 %34, %33
  %arrayidx116 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv882
  store i32 %add114, i32* %arrayidx116, align 4, !tbaa !3
  %sub127 = sub nsw i32 %33, %34
  %arrayidx129 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %32
  store i32 %sub127, i32* %arrayidx129, align 4, !tbaa !3
  %indvars.iv.next883 = add i64 %indvars.iv882, 1
  %lftr.wideiv885 = trunc i64 %indvars.iv.next883 to i32
  %exitcond886 = icmp eq i32 %lftr.wideiv885, 2
  br i1 %exitcond886, label %for.end132, label %for.body102

for.end132:                                       ; preds = %for.body102
  %35 = load i64* %21, align 16
  %36 = trunc i64 %35 to i32
  %37 = lshr i64 %35, 32
  %38 = trunc i64 %37 to i32
  %add135 = add nsw i32 %38, %36
  %arrayidx139 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 0
  store i32 %add135, i32* %arrayidx139, align 4, !tbaa !3
  %sub142 = sub nsw i32 %36, %38
  %arrayidx146 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 2
  store i32 %sub142, i32* %arrayidx146, align 4, !tbaa !3
  %39 = load i32* %arrayidx75, align 4, !tbaa !3
  %mul148 = shl i32 %39, 1
  %40 = load i64* %27, align 8
  %41 = trunc i64 %40 to i32
  %add150 = add nsw i32 %mul148, %41
  %arrayidx154 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 1
  store i32 %add150, i32* %arrayidx154, align 4, !tbaa !3
  %42 = lshr i64 %40, 32
  %43 = trunc i64 %42 to i32
  %mul157 = shl nsw i32 %41, 1
  %sub158 = sub nsw i32 %43, %mul157
  %arrayidx162 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 %indvars.iv887, i64 3
  store i32 %sub158, i32* %arrayidx162, align 4, !tbaa !3
  %indvars.iv.next888 = add i64 %indvars.iv887, 1
  %lftr.wideiv889 = trunc i64 %indvars.iv.next888 to i32
  %exitcond890 = icmp eq i32 %lftr.wideiv889, 4
  br i1 %exitcond890, label %if.else, label %for.cond99.preheader

if.end166.thread:                                 ; preds = %cond.end
  %arrayidx171830 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0
  %44 = load i32* %arrayidx171830, align 4, !tbaa !3
  %ispos828831 = icmp sgt i32 %44, -1
  %neg829832 = sub i32 0, %44
  %45 = select i1 %ispos828831, i32 %44, i32 %neg829832
  br label %if.end214

if.else:                                          ; preds = %for.end132
  %arrayidx171 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 46, i64 0, i64 0
  %46 = load i32* %arrayidx171, align 4, !tbaa !3
  %ispos828 = icmp sgt i32 %46, -1
  %neg829 = sub i32 0, %46
  %47 = select i1 %ispos828, i32 %46, i32 %neg829
  %idxprom179 = sext i32 %rem to i64
  br i1 %4, label %if.then174, label %if.else193

if.then174:                                       ; preds = %if.else
  %arrayidx184 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom179, i64 0, i64 0
  %48 = load i32* %arrayidx184, align 4, !tbaa !3
  %mul185 = mul nsw i32 %48, %47
  %idxprom186 = sext i32 %div to i64
  %arrayidx191 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom186, i64 0, i64 0
  %49 = load i32* %arrayidx191, align 4, !tbaa !3
  %add192 = add nsw i32 %mul185, %49
  %shr = ashr i32 %add192, %add28
  br label %if.end214

if.else193:                                       ; preds = %if.else
  %arrayidx203 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom179, i64 0, i64 0
  %50 = load i32* %arrayidx203, align 4, !tbaa !3
  %mul204 = mul nsw i32 %50, %47
  %idxprom205 = sext i32 %div to i64
  %arrayidx210 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom205, i64 0, i64 0
  %51 = load i32* %arrayidx210, align 4, !tbaa !3
  %add211 = add nsw i32 %mul204, %51
  %shr212 = ashr i32 %add211, %add28
  br label %if.end214

if.end214:                                        ; preds = %if.end166.thread, %if.then174, %if.else193
  %52 = phi i32 [ %46, %if.then174 ], [ %46, %if.else193 ], [ %44, %if.end166.thread ]
  %level.0 = phi i32 [ %shr, %if.then174 ], [ %shr212, %if.else193 ], [ %45, %if.end166.thread ]
  %add215 = shl i32 %uv, 2
  %mul216.neg = sub i32 -4, %add215
  %sub217 = add i32 %mul216.neg, %b8
  %call221 = call i32 @sign(i32 %level.0, i32 %52) #3
  %div222 = sdiv i32 %sub217, 2
  %mul223 = shl i32 %div222, 1
  %div224 = sdiv i32 %b4, 2
  %add225 = add nsw i32 %mul223, %div224
  %idxprom226 = sext i32 %add225 to i64
  %rem227 = srem i32 %sub217, 2
  %mul228 = shl i32 %rem227, 1
  %rem229 = srem i32 %b4, 2
  %add230 = add nsw i32 %mul228, %rem229
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx235 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 %idxprom19, i64 %idxprom231, i64 %idxprom226
  store i32 %call221, i32* %arrayidx235, align 4, !tbaa !3
  br i1 %13, label %if.then237, label %if.else245

if.then237:                                       ; preds = %if.end214
  %53 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 46, i64 0, i64 0
  %54 = load i32* %arrayidx240, align 4, !tbaa !3
  %call241 = call i32 @sign(i32 %level.0, i32 %54) #3
  %55 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds %struct.ImageParameters* %55, i64 0, i32 46, i64 0, i64 0
  store i32 %call241, i32* %arrayidx244, align 4, !tbaa !3
  %idxprom445.pre = sext i32 %rem to i64
  br label %for.cond331.preheader

if.else245:                                       ; preds = %if.end214
  %cmp246 = icmp slt i32 %add25, 24
  %idxprom252 = sext i32 %rem to i64
  br i1 %cmp246, label %if.then248, label %if.else291

if.then248:                                       ; preds = %if.else245
  br i1 %4, label %if.then251, label %if.else270

if.then251:                                       ; preds = %if.then248
  %arrayidx257 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0
  %56 = load i32* %arrayidx257, align 4, !tbaa !3
  %mul258 = mul nsw i32 %56, %level.0
  %sub259 = sub nsw i32 3, %div
  %shl = shl i32 1, %sub259
  %add260 = add nsw i32 %mul258, %shl
  %sub261 = sub nsw i32 4, %div
  %shr262 = ashr i32 %add260, %sub261
  %57 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx265 = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 46, i64 0, i64 0
  %58 = load i32* %arrayidx265, align 4, !tbaa !3
  %call266 = call i32 @sign(i32 %shr262, i32 %58) #3
  %59 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds %struct.ImageParameters* %59, i64 0, i32 46, i64 0, i64 0
  store i32 %call266, i32* %arrayidx269, align 4, !tbaa !3
  br label %for.cond331.preheader

if.else270:                                       ; preds = %if.then248
  %arrayidx276 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0
  %60 = load i32* %arrayidx276, align 4, !tbaa !3
  %mul277 = mul nsw i32 %60, %level.0
  %sub278 = sub nsw i32 3, %div
  %shl279 = shl i32 1, %sub278
  %add280 = add nsw i32 %mul277, %shl279
  %sub281 = sub nsw i32 4, %div
  %shr282 = ashr i32 %add280, %sub281
  %61 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx285 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 46, i64 0, i64 0
  %62 = load i32* %arrayidx285, align 4, !tbaa !3
  %call286 = call i32 @sign(i32 %shr282, i32 %62) #3
  %63 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx289 = getelementptr inbounds %struct.ImageParameters* %63, i64 0, i32 46, i64 0, i64 0
  store i32 %call286, i32* %arrayidx289, align 4, !tbaa !3
  br label %for.cond331.preheader

if.else291:                                       ; preds = %if.else245
  br i1 %4, label %if.then294, label %if.else311

if.then294:                                       ; preds = %if.else291
  %arrayidx300 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0
  %64 = load i32* %arrayidx300, align 4, !tbaa !3
  %mul301 = mul nsw i32 %64, %level.0
  %sub302 = add nsw i32 %div, -4
  %shl303 = shl i32 %mul301, %sub302
  %65 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx306 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 46, i64 0, i64 0
  %66 = load i32* %arrayidx306, align 4, !tbaa !3
  %call307 = call i32 @sign(i32 %shl303, i32 %66) #3
  %67 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 46, i64 0, i64 0
  store i32 %call307, i32* %arrayidx310, align 4, !tbaa !3
  br label %for.cond331.preheader

if.else311:                                       ; preds = %if.else291
  %arrayidx317 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom252, i64 0, i64 0
  %68 = load i32* %arrayidx317, align 4, !tbaa !3
  %mul318 = mul nsw i32 %68, %level.0
  %sub319 = add nsw i32 %div, -4
  %shl320 = shl i32 %mul318, %sub319
  %69 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 46, i64 0, i64 0
  %70 = load i32* %arrayidx323, align 4, !tbaa !3
  %call324 = call i32 @sign(i32 %shl320, i32 %70) #3
  %71 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx327 = getelementptr inbounds %struct.ImageParameters* %71, i64 0, i32 46, i64 0, i64 0
  store i32 %call324, i32* %arrayidx327, align 4, !tbaa !3
  br label %for.cond331.preheader

for.cond331.preheader:                            ; preds = %if.else270, %if.then251, %if.else311, %if.then294, %if.then237
  %idxprom445.pre-phi = phi i64 [ %idxprom252, %if.else270 ], [ %idxprom252, %if.then251 ], [ %idxprom252, %if.else311 ], [ %idxprom252, %if.then294 ], [ %idxprom445.pre, %if.then237 ]
  %72 = phi %struct.ImageParameters* [ %63, %if.else270 ], [ %59, %if.then251 ], [ %71, %if.else311 ], [ %67, %if.then294 ], [ %55, %if.then237 ]
  %cmp437 = icmp slt i32 %add25, 24
  %sub452 = sub nsw i32 3, %div
  %shl453 = shl i32 1, %sub452
  %sub455 = sub nsw i32 4, %div
  %sub486 = add nsw i32 %div, -4
  %idxprom373 = sext i32 %div to i64
  br label %for.body334

for.body334:                                      ; preds = %for.inc512.for.body334_crit_edge, %for.cond331.preheader
  %73 = phi %struct.ImageParameters* [ %72, %for.cond331.preheader ], [ %.pre, %for.inc512.for.body334_crit_edge ]
  %indvars.iv878 = phi i64 [ 1, %for.cond331.preheader ], [ %indvars.iv.next879, %for.inc512.for.body334_crit_edge ]
  %nonzeroAC.0849 = phi i32 [ 0, %for.cond331.preheader ], [ %nonzeroAC.2835, %for.inc512.for.body334_crit_edge ]
  %run.0848 = phi i32 [ -1, %for.cond331.preheader ], [ %run.1834, %for.inc512.for.body334_crit_edge ]
  %scan_pos.0847 = phi i32 [ 0, %for.cond331.preheader ], [ %scan_pos.1833, %for.inc512.for.body334_crit_edge ]
  %arrayidx337 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv878, i64 0
  %74 = load i8* %arrayidx337, align 2, !tbaa !1
  %arrayidx341 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv878, i64 1
  %75 = load i8* %arrayidx341, align 1, !tbaa !1
  %inc343 = add nsw i32 %run.0848, 1
  %idxprom346 = zext i8 %75 to i64
  %idxprom347 = zext i8 %74 to i64
  %arrayidx350 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346
  %76 = load i32* %arrayidx350, align 4, !tbaa !3
  %ispos826 = icmp sgt i32 %76, -1
  %neg827 = sub i32 0, %76
  %77 = select i1 %ispos826, i32 %76, i32 %neg827
  br i1 %13, label %if.end408, label %if.else352

if.else352:                                       ; preds = %for.body334
  br i1 %4, label %if.then355, label %if.else381

if.then355:                                       ; preds = %if.else352
  %arrayidx369 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %78 = load i32* %arrayidx369, align 4, !tbaa !3
  %mul370 = mul nsw i32 %78, %77
  %arrayidx378 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom373, i64 %idxprom347, i64 %idxprom346
  %79 = load i32* %arrayidx378, align 4, !tbaa !3
  %add379 = add nsw i32 %mul370, %79
  %shr380 = ashr i32 %add379, %add28
  br label %if.end408

if.else381:                                       ; preds = %if.else352
  %arrayidx395 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %80 = load i32* %arrayidx395, align 4, !tbaa !3
  %mul396 = mul nsw i32 %80, %77
  %arrayidx404 = getelementptr inbounds [2 x [13 x [4 x [4 x i32]]]]* @LevelOffset4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom373, i64 %idxprom347, i64 %idxprom346
  %81 = load i32* %arrayidx404, align 4, !tbaa !3
  %add405 = add nsw i32 %mul396, %81
  %shr406 = ashr i32 %add405, %add28
  br label %if.end408

if.end408:                                        ; preds = %for.body334, %if.then355, %if.else381
  %level.1 = phi i32 [ %shr380, %if.then355 ], [ %shr406, %if.else381 ], [ %77, %for.body334 ]
  %cmp409 = icmp eq i32 %level.1, 0
  br i1 %cmp409, label %if.end503, label %if.then411

if.then411:                                       ; preds = %if.end408
  %82 = lshr i64 525, %indvars.iv878
  %83 = and i64 %82, 1
  %tobool412 = icmp eq i64 %83, 0
  br i1 %tobool412, label %if.then415, label %lor.lhs.false413

lor.lhs.false413:                                 ; preds = %if.then411
  %84 = lshr i64 65436, %indvars.iv878
  %85 = and i64 %84, 1
  %tobool414 = icmp eq i64 %85, 0
  br i1 %tobool414, label %if.end416, label %if.then415

if.then415:                                       ; preds = %if.then411, %lor.lhs.false413
  br label %if.end416

if.end416:                                        ; preds = %lor.lhs.false413, %if.then415
  %nonzeroAC.1 = phi i32 [ 1, %if.then415 ], [ %nonzeroAC.0849, %lor.lhs.false413 ]
  %call422 = call i32 @sign(i32 %level.1, i32 %76) #3
  %idxprom423 = sext i32 %scan_pos.0847 to i64
  %arrayidx424 = getelementptr inbounds i32* %8, i64 %idxprom423
  store i32 %call422, i32* %arrayidx424, align 4, !tbaa !3
  %arrayidx426 = getelementptr inbounds i32* %9, i64 %idxprom423
  store i32 %inc343, i32* %arrayidx426, align 4, !tbaa !3
  %inc427 = add nsw i32 %scan_pos.0847, 1
  %86 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx432 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346
  %87 = load i32* %arrayidx432, align 4, !tbaa !3
  %call433 = call i32 @sign(i32 %level.1, i32 %87) #3
  br i1 %13, label %for.inc512, label %if.else436

if.else436:                                       ; preds = %if.end416
  br i1 %cmp437, label %if.then439, label %if.else473

if.then439:                                       ; preds = %if.else436
  br i1 %4, label %if.then442, label %if.end503.thread836

if.then442:                                       ; preds = %if.then439
  %arrayidx450 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %88 = load i32* %arrayidx450, align 4, !tbaa !3
  %mul451 = mul nsw i32 %88, %call433
  %add454 = add nsw i32 %mul451, %shl453
  %shr456 = ashr i32 %add454, %sub455
  br label %if.end503

if.end503.thread836:                              ; preds = %if.then439
  %arrayidx465 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %89 = load i32* %arrayidx465, align 4, !tbaa !3
  %mul466 = mul nsw i32 %89, %call433
  %add469 = add nsw i32 %mul466, %shl453
  %shr471 = ashr i32 %add469, %sub455
  br label %if.then505

if.else473:                                       ; preds = %if.else436
  br i1 %4, label %if.then476, label %if.else488

if.then476:                                       ; preds = %if.else473
  %arrayidx484 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %90 = load i32* %arrayidx484, align 4, !tbaa !3
  %mul485 = mul nsw i32 %90, %call433
  %shl487 = shl i32 %mul485, %sub486
  br label %if.end503

if.else488:                                       ; preds = %if.else473
  %arrayidx496 = getelementptr inbounds [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 %idxprom19, i64 %idxprom445.pre-phi, i64 %idxprom347, i64 %idxprom346
  %91 = load i32* %arrayidx496, align 4, !tbaa !3
  %mul497 = mul nsw i32 %91, %call433
  %shl499 = shl i32 %mul497, %sub486
  br label %if.end503

if.end503:                                        ; preds = %if.end408, %if.then476, %if.else488, %if.then442
  %scan_pos.1 = phi i32 [ %inc427, %if.then442 ], [ %inc427, %if.then476 ], [ %inc427, %if.else488 ], [ %scan_pos.0847, %if.end408 ]
  %run.1 = phi i32 [ -1, %if.then442 ], [ -1, %if.then476 ], [ -1, %if.else488 ], [ %inc343, %if.end408 ]
  %nonzeroAC.2 = phi i32 [ %nonzeroAC.1, %if.then442 ], [ %nonzeroAC.1, %if.then476 ], [ %nonzeroAC.1, %if.else488 ], [ %nonzeroAC.0849, %if.end408 ]
  %ilev.0 = phi i32 [ %shr456, %if.then442 ], [ %shl487, %if.then476 ], [ %shl499, %if.else488 ], [ 0, %if.end408 ]
  br i1 %13, label %for.inc512, label %if.then505

if.then505:                                       ; preds = %if.end503, %if.end503.thread836
  %ilev.0840 = phi i32 [ %shr471, %if.end503.thread836 ], [ %ilev.0, %if.end503 ]
  %nonzeroAC.2839 = phi i32 [ %nonzeroAC.1, %if.end503.thread836 ], [ %nonzeroAC.2, %if.end503 ]
  %run.1838 = phi i32 [ -1, %if.end503.thread836 ], [ %run.1, %if.end503 ]
  %scan_pos.1837 = phi i32 [ %inc427, %if.end503.thread836 ], [ %scan_pos.1, %if.end503 ]
  %92 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx510 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 46, i64 %idxprom347, i64 %idxprom346
  store i32 %ilev.0840, i32* %arrayidx510, align 4, !tbaa !3
  br label %for.inc512

for.inc512:                                       ; preds = %if.end416, %if.end503, %if.then505
  %nonzeroAC.2835 = phi i32 [ %nonzeroAC.2, %if.end503 ], [ %nonzeroAC.2839, %if.then505 ], [ %nonzeroAC.1, %if.end416 ]
  %run.1834 = phi i32 [ %run.1, %if.end503 ], [ %run.1838, %if.then505 ], [ -1, %if.end416 ]
  %scan_pos.1833 = phi i32 [ %scan_pos.1, %if.end503 ], [ %scan_pos.1837, %if.then505 ], [ %inc427, %if.end416 ]
  %indvars.iv.next879 = add i64 %indvars.iv878, 1
  %lftr.wideiv880 = trunc i64 %indvars.iv.next879 to i32
  %exitcond881 = icmp eq i32 %lftr.wideiv880, 16
  br i1 %exitcond881, label %for.end514, label %for.inc512.for.body334_crit_edge

for.inc512.for.body334_crit_edge:                 ; preds = %for.inc512
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body334

for.end514:                                       ; preds = %for.inc512
  %idxprom515 = sext i32 %scan_pos.1833 to i64
  %arrayidx516 = getelementptr inbounds i32* %8, i64 %idxprom515
  store i32 0, i32* %arrayidx516, align 4, !tbaa !3
  br i1 %13, label %if.end660, label %for.cond519.preheader

for.cond519.preheader:                            ; preds = %for.end514
  %93 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx538 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  %arrayidx540 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx544 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx549 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx554 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  br label %for.cond523.preheader

for.cond523.preheader:                            ; preds = %for.inc583, %for.cond519.preheader
  %indvars.iv874 = phi i64 [ 0, %for.cond519.preheader ], [ %indvars.iv.next875, %for.inc583 ]
  br label %for.body526

for.body526:                                      ; preds = %for.body526, %for.cond523.preheader
  %indvars.iv865 = phi i64 [ 0, %for.cond523.preheader ], [ %indvars.iv.next866, %for.body526 ]
  %arrayidx531 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv865, i64 %indvars.iv874
  %94 = load i32* %arrayidx531, align 4, !tbaa !3
  %arrayidx533 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv865
  store i32 %94, i32* %arrayidx533, align 4, !tbaa !3
  %indvars.iv.next866 = add i64 %indvars.iv865, 1
  %lftr.wideiv867 = trunc i64 %indvars.iv.next866 to i32
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 4
  br i1 %exitcond868, label %for.end536, label %for.body526

for.end536:                                       ; preds = %for.body526
  %95 = bitcast [4 x i32]* %m5 to i64*
  %96 = load i64* %95, align 16
  %97 = trunc i64 %96 to i32
  %98 = bitcast i32* %arrayidx538 to i64*
  %99 = load i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %add539 = add nsw i32 %100, %97
  store i32 %add539, i32* %arrayidx540, align 16, !tbaa !3
  %sub543 = sub nsw i32 %97, %100
  store i32 %sub543, i32* %arrayidx544, align 4, !tbaa !3
  %101 = lshr i64 %96, 32
  %102 = trunc i64 %101 to i32
  %shr546 = ashr i32 %102, 1
  %103 = lshr i64 %99, 32
  %104 = trunc i64 %103 to i32
  %sub548 = sub nsw i32 %shr546, %104
  store i32 %sub548, i32* %arrayidx549, align 8, !tbaa !3
  %shr552 = ashr i32 %104, 1
  %add553 = add nsw i32 %shr552, %102
  store i32 %add553, i32* %arrayidx554, align 4, !tbaa !3
  br label %for.body558

for.body558:                                      ; preds = %for.body558.for.body558_crit_edge, %for.end536
  %105 = phi i32 [ %add539, %for.end536 ], [ %.pre903, %for.body558.for.body558_crit_edge ]
  %indvars.iv869 = phi i64 [ 0, %for.end536 ], [ %indvars.iv.next870, %for.body558.for.body558_crit_edge ]
  %106 = sub nsw i64 3, %indvars.iv869
  %arrayidx563 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %106
  %107 = load i32* %arrayidx563, align 4, !tbaa !3
  %add564 = add nsw i32 %107, %105
  %arrayidx569 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv869, i64 %indvars.iv874
  store i32 %add564, i32* %arrayidx569, align 4, !tbaa !3
  %sub574 = sub nsw i32 %105, %107
  %arrayidx579 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %106, i64 %indvars.iv874
  store i32 %sub574, i32* %arrayidx579, align 4, !tbaa !3
  %indvars.iv.next870 = add i64 %indvars.iv869, 1
  %lftr.wideiv872 = trunc i64 %indvars.iv.next870 to i32
  %exitcond873 = icmp eq i32 %lftr.wideiv872, 2
  br i1 %exitcond873, label %for.inc583, label %for.body558.for.body558_crit_edge

for.body558.for.body558_crit_edge:                ; preds = %for.body558
  %arrayidx561.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next870
  %.pre903 = load i32* %arrayidx561.phi.trans.insert, align 4, !tbaa !3
  br label %for.body558

for.inc583:                                       ; preds = %for.body558
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  %lftr.wideiv876 = trunc i64 %indvars.iv.next875 to i32
  %exitcond877 = icmp eq i32 %lftr.wideiv876, 4
  br i1 %exitcond877, label %for.cond593.preheader, label %for.cond523.preheader

for.cond593.preheader:                            ; preds = %for.inc583, %for.inc657
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %for.inc657 ], [ 0, %for.inc583 ]
  br label %for.body596

for.body596:                                      ; preds = %for.body596, %for.cond593.preheader
  %indvars.iv = phi i64 [ 0, %for.cond593.preheader ], [ %indvars.iv.next, %for.body596 ]
  %arrayidx601 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %indvars.iv
  %108 = load i32* %arrayidx601, align 4, !tbaa !3
  %arrayidx603 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv
  store i32 %108, i32* %arrayidx603, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end606, label %for.body596

for.end606:                                       ; preds = %for.body596
  %109 = load i64* %95, align 16
  %110 = trunc i64 %109 to i32
  %111 = load i64* %98, align 8
  %112 = trunc i64 %111 to i32
  %add609 = add nsw i32 %112, %110
  store i32 %add609, i32* %arrayidx540, align 16, !tbaa !3
  %sub613 = sub nsw i32 %110, %112
  store i32 %sub613, i32* %arrayidx544, align 4, !tbaa !3
  %113 = lshr i64 %109, 32
  %114 = trunc i64 %113 to i32
  %shr616 = ashr i32 %114, 1
  %115 = lshr i64 %111, 32
  %116 = trunc i64 %115 to i32
  %sub618 = sub nsw i32 %shr616, %116
  store i32 %sub618, i32* %arrayidx549, align 8, !tbaa !3
  %shr622 = ashr i32 %116, 1
  %add623 = add nsw i32 %shr622, %114
  store i32 %add623, i32* %arrayidx554, align 4, !tbaa !3
  br label %for.body628

for.body628:                                      ; preds = %for.body628.for.body628_crit_edge, %for.end606
  %117 = phi i32 [ %add609, %for.end606 ], [ %.pre904, %for.body628.for.body628_crit_edge ]
  %indvars.iv856 = phi i64 [ 0, %for.end606 ], [ %indvars.iv.next857, %for.body628.for.body628_crit_edge ]
  %118 = sub nsw i64 3, %indvars.iv856
  %arrayidx633 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %118
  %119 = load i32* %arrayidx633, align 4, !tbaa !3
  %add634 = add i32 %117, 32
  %add635 = add i32 %add634, %119
  %shr636 = ashr i32 %add635, 6
  %arrayidx641 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %indvars.iv856
  store i32 %shr636, i32* %arrayidx641, align 4, !tbaa !3
  %add647 = sub i32 %add634, %119
  %shr648 = ashr i32 %add647, 6
  %arrayidx653 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 46, i64 %indvars.iv861, i64 %118
  store i32 %shr648, i32* %arrayidx653, align 4, !tbaa !3
  %indvars.iv.next857 = add i64 %indvars.iv856, 1
  %lftr.wideiv859 = trunc i64 %indvars.iv.next857 to i32
  %exitcond860 = icmp eq i32 %lftr.wideiv859, 2
  br i1 %exitcond860, label %for.inc657, label %for.body628.for.body628_crit_edge

for.body628.for.body628_crit_edge:                ; preds = %for.body628
  %arrayidx631.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next857
  %.pre904 = load i32* %arrayidx631.phi.trans.insert, align 4, !tbaa !3
  br label %for.body628

for.inc657:                                       ; preds = %for.body628
  %indvars.iv.next862 = add i64 %indvars.iv861, 1
  %lftr.wideiv863 = trunc i64 %indvars.iv.next862 to i32
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 4
  br i1 %exitcond864, label %if.end660, label %for.cond593.preheader

if.end660:                                        ; preds = %for.inc657, %for.end514
  ret i32 %nonzeroAC.2835
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_chroma_DC(i32 %uv, i32 %cr_cbp) #0 {
entry:
  %add = add nsw i32 %uv, 1
  %idxprom = sext i32 %add to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %1 = load i32**** %cofDC, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32*** %1, i64 %idxprom
  %2 = load i32*** %arrayidx, align 8, !tbaa !0
  %3 = load i32** %2, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32** %2, i64 1
  %4 = load i32** %arrayidx6, align 8, !tbaa !0
  %idxprom16 = sext i32 %uv to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %cr_cbp.addr.058 = phi i32 [ %cr_cbp, %entry ], [ %cr_cbp.addr.1, %for.inc ]
  %run.057 = phi i32 [ -1, %entry ], [ %run.1, %for.inc ]
  %scan_pos.056 = phi i32 [ 0, %entry ], [ %scan_pos.1, %for.inc ]
  %arrayidx9 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv, i64 0
  %5 = load i8* %arrayidx9, align 2, !tbaa !1
  %arrayidx12 = getelementptr inbounds [16 x [2 x i8]]* @SNGL_SCAN, i64 0, i64 %indvars.iv, i64 1
  %6 = load i8* %arrayidx12, align 1, !tbaa !1
  %inc = add nsw i32 %run.057, 1
  %idxprom14 = zext i8 %6 to i64
  %idxprom15 = zext i8 %5 to i64
  %arrayidx19 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 %idxprom16, i64 %idxprom15, i64 %idxprom14
  %7 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %neg = sub i32 0, %7
  %ispos = icmp sgt i32 %7, -1
  %8 = select i1 %ispos, i32 %7, i32 %neg
  %cmp22 = icmp slt i32 %cr_cbp.addr.058, 1
  %cond = select i1 %cmp22, i32 1, i32 %cr_cbp.addr.058
  %call30 = tail call i32 @sign(i32 %8, i32 %7) #3
  %idxprom31 = sext i32 %scan_pos.056 to i64
  %arrayidx32 = getelementptr inbounds i32* %3, i64 %idxprom31
  store i32 %call30, i32* %arrayidx32, align 4, !tbaa !3
  %arrayidx34 = getelementptr inbounds i32* %4, i64 %idxprom31
  store i32 %inc, i32* %arrayidx34, align 4, !tbaa !3
  %inc35 = add nsw i32 %scan_pos.056, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %scan_pos.1 = phi i32 [ %inc35, %if.then ], [ %scan_pos.056, %for.body ]
  %run.1 = phi i32 [ -1, %if.then ], [ %inc, %for.body ]
  %cr_cbp.addr.1 = phi i32 [ %cond, %if.then ], [ %cr_cbp.addr.058, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %idxprom37 = sext i32 %scan_pos.1 to i64
  %arrayidx38 = getelementptr inbounds i32* %3, i64 %idxprom37
  store i32 0, i32* %arrayidx38, align 4, !tbaa !3
  ret i32 %cr_cbp.addr.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @dct_luma_sp(i32 %block_x, i32 %block_y, i32* nocapture %coeff_cost) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  %len = alloca i32, align 4
  %info = alloca i32, align 4
  %0 = bitcast [4 x [4 x i32]]* %predicted_block to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %div = sdiv i32 %block_x, 4
  %div1 = sdiv i32 %block_y, 4
  %div2 = sdiv i32 %block_y, 8
  %mul = shl i32 %div2, 1
  %div3 = sdiv i32 %block_x, 8
  %add = add nsw i32 %mul, %div3
  %rem = srem i32 %div1, 2
  %mul4 = shl i32 %rem, 1
  %rem5 = srem i32 %div, 2
  %add6 = add nsw i32 %mul4, %rem5
  %idxprom = sext i32 %add6 to i64
  %idxprom7 = sext i32 %add to i64
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 47
  %2 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32**** %2, i64 %idxprom7
  %3 = load i32**** %arrayidx, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %3, i64 %idxprom
  %4 = load i32*** %arrayidx8, align 8, !tbaa !0
  %5 = load i32** %4, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %4, i64 1
  %6 = load i32** %arrayidx15, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3
  %7 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom16 = sext i32 %7 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom16, i32 3
  %9 = load i32* %qp, align 4, !tbaa !3
  %sub = add nsw i32 %9, -12
  %conv = sitofp i32 %sub to double
  %div18 = fdiv double %conv, 3.000000e+00
  %exp2 = call double @exp2(double %div18) #4
  %mul19 = fmul double %exp2, 8.500000e-01
  %10 = load i32* %qp, align 4, !tbaa !3
  %div23 = sdiv i32 %10, 6
  %add27 = add nsw i32 %div23, 15
  %qpsp = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom16, i32 4
  %11 = load i32* %qpsp, align 4, !tbaa !3
  %div29 = sdiv i32 %11, 6
  %add33 = add nsw i32 %div29, 15
  %shl = shl i32 1, %add27
  %shl35 = shl i32 1, %add33
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %13 = sext i32 %block_x to i64
  %14 = sext i32 %block_y to i64
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.inc66, %entry
  %indvars.iv1234 = phi i64 [ 0, %entry ], [ %indvars.iv.next1235, %for.inc66 ]
  %15 = add nsw i64 %indvars.iv1234, %14
  br label %for.body41

for.cond69.preheader:                             ; preds = %for.inc66
  %mul20 = fmul double %mul19, 4.000000e+00
  %rem26 = srem i32 %10, 6
  %rem32 = srem i32 %11, 6
  %div34 = sdiv i32 %shl, 6
  %div36 = sdiv i32 %shl35, 2
  %arrayidx121 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx123 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond73.preheader

for.body41:                                       ; preds = %for.body41, %for.cond38.preheader
  %indvars.iv1229 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next1230, %for.body41 ]
  %16 = add nsw i64 %indvars.iv1229, %13
  %arrayidx47 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 45, i64 %16, i64 %15
  %17 = load i16* %arrayidx47, align 2, !tbaa !4
  %conv48 = zext i16 %17 to i32
  %arrayidx52 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1229, i64 %indvars.iv1234
  %18 = load i32* %arrayidx52, align 4, !tbaa !3
  %add53 = add nsw i32 %18, %conv48
  store i32 %add53, i32* %arrayidx52, align 4, !tbaa !3
  %19 = load i16* %arrayidx47, align 2, !tbaa !4
  %conv61 = zext i16 %19 to i32
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1229, i64 %indvars.iv1234
  store i32 %conv61, i32* %arrayidx65, align 4, !tbaa !3
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 1
  %lftr.wideiv1232 = trunc i64 %indvars.iv.next1230 to i32
  %exitcond1233 = icmp eq i32 %lftr.wideiv1232, 4
  br i1 %exitcond1233, label %for.inc66, label %for.body41

for.inc66:                                        ; preds = %for.body41
  %indvars.iv.next1235 = add i64 %indvars.iv1234, 1
  %lftr.wideiv1237 = trunc i64 %indvars.iv.next1235 to i32
  %exitcond1238 = icmp eq i32 %lftr.wideiv1237, 4
  br i1 %exitcond1238, label %for.cond69.preheader, label %for.cond38.preheader

for.cond73.preheader:                             ; preds = %for.end106, %for.cond69.preheader
  %indvars.iv1225 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next1226, %for.end106 ]
  br label %for.body76

for.body76:                                       ; preds = %for.body76, %for.cond73.preheader
  %indvars.iv1220 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next1221, %for.body76 ]
  %20 = sub nsw i64 3, %indvars.iv1220
  %arrayidx82 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1220, i64 %indvars.iv1225
  %21 = load i32* %arrayidx82, align 4, !tbaa !3
  %arrayidx87 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %20, i64 %indvars.iv1225
  %22 = load i32* %arrayidx87, align 4, !tbaa !3
  %add88 = add nsw i32 %22, %21
  %arrayidx90 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1220
  store i32 %add88, i32* %arrayidx90, align 4, !tbaa !3
  %23 = load i32* %arrayidx82, align 4, !tbaa !3
  %24 = load i32* %arrayidx87, align 4, !tbaa !3
  %sub101 = sub nsw i32 %23, %24
  %arrayidx103 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %20
  store i32 %sub101, i32* %arrayidx103, align 4, !tbaa !3
  %indvars.iv.next1221 = add i64 %indvars.iv1220, 1
  %lftr.wideiv1223 = trunc i64 %indvars.iv.next1221 to i32
  %exitcond1224 = icmp eq i32 %lftr.wideiv1223, 2
  br i1 %exitcond1224, label %for.end106, label %for.body76

for.end106:                                       ; preds = %for.body76
  %25 = bitcast [4 x i32]* %m5 to i64*
  %26 = load i64* %25, align 16
  %27 = trunc i64 %26 to i32
  %28 = lshr i64 %26, 32
  %29 = trunc i64 %28 to i32
  %add109 = add nsw i32 %29, %27
  %arrayidx113 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 0, i64 %indvars.iv1225
  store i32 %add109, i32* %arrayidx113, align 4, !tbaa !3
  %sub116 = sub nsw i32 %27, %29
  %arrayidx120 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 2, i64 %indvars.iv1225
  store i32 %sub116, i32* %arrayidx120, align 4, !tbaa !3
  %30 = load i32* %arrayidx121, align 4, !tbaa !3
  %mul122 = shl i32 %30, 1
  %31 = load i32* %arrayidx123, align 8, !tbaa !3
  %add124 = add nsw i32 %mul122, %31
  %arrayidx128 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 1, i64 %indvars.iv1225
  store i32 %add124, i32* %arrayidx128, align 4, !tbaa !3
  %32 = load i32* %arrayidx121, align 4, !tbaa !3
  %33 = load i32* %arrayidx123, align 8, !tbaa !3
  %mul131 = shl nsw i32 %33, 1
  %sub132 = sub nsw i32 %32, %mul131
  %arrayidx136 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 3, i64 %indvars.iv1225
  store i32 %sub132, i32* %arrayidx136, align 4, !tbaa !3
  %indvars.iv.next1226 = add i64 %indvars.iv1225, 1
  %lftr.wideiv1227 = trunc i64 %indvars.iv.next1226 to i32
  %exitcond1228 = icmp eq i32 %lftr.wideiv1227, 4
  br i1 %exitcond1228, label %for.cond144.preheader, label %for.cond73.preheader

for.cond144.preheader:                            ; preds = %for.end106, %for.end177
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.end177 ], [ 0, %for.end106 ]
  br label %for.body147

for.body147:                                      ; preds = %for.body147, %for.cond144.preheader
  %indvars.iv1211 = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next1212, %for.body147 ]
  %34 = sub nsw i64 3, %indvars.iv1211
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 %indvars.iv1211
  %35 = load i32* %arrayidx153, align 4, !tbaa !3
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 %34
  %36 = load i32* %arrayidx158, align 4, !tbaa !3
  %add159 = add nsw i32 %36, %35
  %arrayidx161 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1211
  store i32 %add159, i32* %arrayidx161, align 4, !tbaa !3
  %37 = load i32* %arrayidx153, align 4, !tbaa !3
  %38 = load i32* %arrayidx158, align 4, !tbaa !3
  %sub172 = sub nsw i32 %37, %38
  %arrayidx174 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %34
  store i32 %sub172, i32* %arrayidx174, align 4, !tbaa !3
  %indvars.iv.next1212 = add i64 %indvars.iv1211, 1
  %lftr.wideiv1214 = trunc i64 %indvars.iv.next1212 to i32
  %exitcond1215 = icmp eq i32 %lftr.wideiv1214, 2
  br i1 %exitcond1215, label %for.end177, label %for.body147

for.end177:                                       ; preds = %for.body147
  %39 = load i64* %25, align 16
  %40 = trunc i64 %39 to i32
  %41 = lshr i64 %39, 32
  %42 = trunc i64 %41 to i32
  %add180 = add nsw i32 %42, %40
  %arrayidx184 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 0
  store i32 %add180, i32* %arrayidx184, align 4, !tbaa !3
  %sub187 = sub nsw i32 %40, %42
  %arrayidx191 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 2
  store i32 %sub187, i32* %arrayidx191, align 4, !tbaa !3
  %43 = load i32* %arrayidx121, align 4, !tbaa !3
  %mul193 = shl i32 %43, 1
  %44 = load i32* %arrayidx123, align 8, !tbaa !3
  %add195 = add nsw i32 %mul193, %44
  %arrayidx199 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 1
  store i32 %add195, i32* %arrayidx199, align 4, !tbaa !3
  %45 = load i32* %arrayidx121, align 4, !tbaa !3
  %46 = load i32* %arrayidx123, align 8, !tbaa !3
  %mul202 = shl nsw i32 %46, 1
  %sub203 = sub nsw i32 %45, %mul202
  %arrayidx207 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 46, i64 %indvars.iv1216, i64 3
  store i32 %sub203, i32* %arrayidx207, align 4, !tbaa !3
  %indvars.iv.next1217 = add i64 %indvars.iv1216, 1
  %lftr.wideiv1218 = trunc i64 %indvars.iv.next1217 to i32
  %exitcond1219 = icmp eq i32 %lftr.wideiv1218, 4
  br i1 %exitcond1219, label %for.cond215.preheader, label %for.cond144.preheader

for.cond215.preheader:                            ; preds = %for.end177, %for.end244
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %for.end244 ], [ 0, %for.end177 ]
  br label %for.body218

for.body218:                                      ; preds = %for.body218, %for.cond215.preheader
  %indvars.iv1202 = phi i64 [ 0, %for.cond215.preheader ], [ %indvars.iv.next1203, %for.body218 ]
  %47 = sub nsw i64 3, %indvars.iv1202
  %arrayidx223 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1202, i64 %indvars.iv1207
  %48 = load i32* %arrayidx223, align 4, !tbaa !3
  %arrayidx227 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %47, i64 %indvars.iv1207
  %49 = load i32* %arrayidx227, align 4, !tbaa !3
  %add228 = add nsw i32 %49, %48
  %arrayidx230 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1202
  store i32 %add228, i32* %arrayidx230, align 4, !tbaa !3
  %sub239 = sub nsw i32 %48, %49
  %arrayidx241 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %47
  store i32 %sub239, i32* %arrayidx241, align 4, !tbaa !3
  %indvars.iv.next1203 = add i64 %indvars.iv1202, 1
  %lftr.wideiv1205 = trunc i64 %indvars.iv.next1203 to i32
  %exitcond1206 = icmp eq i32 %lftr.wideiv1205, 2
  br i1 %exitcond1206, label %for.end244, label %for.body218

for.end244:                                       ; preds = %for.body218
  %50 = load i64* %25, align 16
  %51 = trunc i64 %50 to i32
  %52 = lshr i64 %50, 32
  %53 = trunc i64 %52 to i32
  %add247 = add nsw i32 %53, %51
  %arrayidx250 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 0, i64 %indvars.iv1207
  store i32 %add247, i32* %arrayidx250, align 4, !tbaa !3
  %sub253 = sub nsw i32 %51, %53
  %arrayidx256 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 2, i64 %indvars.iv1207
  store i32 %sub253, i32* %arrayidx256, align 4, !tbaa !3
  %54 = load i32* %arrayidx121, align 4, !tbaa !3
  %mul258 = shl i32 %54, 1
  %55 = bitcast i32* %arrayidx123 to i64*
  %56 = load i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %add260 = add nsw i32 %mul258, %57
  %arrayidx263 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 1, i64 %indvars.iv1207
  store i32 %add260, i32* %arrayidx263, align 4, !tbaa !3
  %58 = lshr i64 %56, 32
  %59 = trunc i64 %58 to i32
  %mul266 = shl nsw i32 %57, 1
  %sub267 = sub nsw i32 %59, %mul266
  %arrayidx270 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 3, i64 %indvars.iv1207
  store i32 %sub267, i32* %arrayidx270, align 4, !tbaa !3
  %indvars.iv.next1208 = add i64 %indvars.iv1207, 1
  %lftr.wideiv1209 = trunc i64 %indvars.iv.next1208 to i32
  %exitcond1210 = icmp eq i32 %lftr.wideiv1209, 4
  br i1 %exitcond1210, label %for.cond278.preheader, label %for.cond215.preheader

for.cond278.preheader:                            ; preds = %for.end244, %for.end307
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %for.end307 ], [ 0, %for.end244 ]
  br label %for.body281

for.cond337.preheader:                            ; preds = %for.end307
  %idxprom367 = sext i32 %rem32 to i64
  %idxprom395 = sext i32 %rem26 to i64
  br label %for.body340

for.body281:                                      ; preds = %for.body281, %for.cond278.preheader
  %indvars.iv1193 = phi i64 [ 0, %for.cond278.preheader ], [ %indvars.iv.next1194, %for.body281 ]
  %60 = sub nsw i64 3, %indvars.iv1193
  %arrayidx286 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 %indvars.iv1193
  %61 = load i32* %arrayidx286, align 4, !tbaa !3
  %arrayidx290 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 %60
  %62 = load i32* %arrayidx290, align 4, !tbaa !3
  %add291 = add nsw i32 %62, %61
  %arrayidx293 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1193
  store i32 %add291, i32* %arrayidx293, align 4, !tbaa !3
  %sub302 = sub nsw i32 %61, %62
  %arrayidx304 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %60
  store i32 %sub302, i32* %arrayidx304, align 4, !tbaa !3
  %indvars.iv.next1194 = add i64 %indvars.iv1193, 1
  %lftr.wideiv1196 = trunc i64 %indvars.iv.next1194 to i32
  %exitcond1197 = icmp eq i32 %lftr.wideiv1196, 2
  br i1 %exitcond1197, label %for.end307, label %for.body281

for.end307:                                       ; preds = %for.body281
  %63 = load i64* %25, align 16
  %64 = trunc i64 %63 to i32
  %65 = lshr i64 %63, 32
  %66 = trunc i64 %65 to i32
  %add310 = add nsw i32 %66, %64
  %arrayidx313 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 0
  store i32 %add310, i32* %arrayidx313, align 16, !tbaa !3
  %sub316 = sub nsw i32 %64, %66
  %arrayidx319 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 2
  store i32 %sub316, i32* %arrayidx319, align 8, !tbaa !3
  %67 = load i32* %arrayidx121, align 4, !tbaa !3
  %mul321 = shl i32 %67, 1
  %68 = load i64* %55, align 8
  %69 = trunc i64 %68 to i32
  %add323 = add nsw i32 %mul321, %69
  %arrayidx326 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 1
  store i32 %add323, i32* %arrayidx326, align 4, !tbaa !3
  %70 = lshr i64 %68, 32
  %71 = trunc i64 %70 to i32
  %mul329 = shl nsw i32 %69, 1
  %sub330 = sub nsw i32 %71, %mul329
  %arrayidx333 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv1198, i64 3
  store i32 %sub330, i32* %arrayidx333, align 4, !tbaa !3
  %indvars.iv.next1199 = add i64 %indvars.iv1198, 1
  %lftr.wideiv1200 = trunc i64 %indvars.iv.next1199 to i32
  %exitcond1201 = icmp eq i32 %lftr.wideiv1200, 4
  br i1 %exitcond1201, label %for.cond337.preheader, label %for.cond278.preheader

for.body340:                                      ; preds = %if.end568, %for.cond337.preheader
  %72 = phi %struct.ImageParameters* [ %12, %for.cond337.preheader ], [ %102, %if.end568 ]
  %indvars.iv1189 = phi i64 [ 0, %for.cond337.preheader ], [ %indvars.iv.next1190, %if.end568 ]
  %scan_pos.01145 = phi i32 [ 0, %for.cond337.preheader ], [ %scan_pos.1, %if.end568 ]
  %run.01144 = phi i32 [ -1, %for.cond337.preheader ], [ %run.1, %if.end568 ]
  %nonzero.01143 = phi i32 [ 0, %for.cond337.preheader ], [ %nonzero.1, %if.end568 ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 100
  %73 = load i32* %field_picture, align 4, !tbaa !3
  %tobool = icmp eq i32 %73, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %for.body340
  %74 = load i32* @mb_adaptive, align 4, !tbaa !3
  %tobool341 = icmp eq i32 %74, 0
  br i1 %tobool341, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 81
  %75 = load i32* %field_mode, align 4, !tbaa !3
  %tobool342 = icmp eq i32 %75, 0
  br i1 %tobool342, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end

if.end:                                           ; preds = %for.body340, %land.lhs.true, %if.else
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else ], [ @FIELD_SCAN, %land.lhs.true ], [ @FIELD_SCAN, %for.body340 ]
  %i.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1189, i64 0
  %j.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv1189, i64 1
  %i.5.in = load i8* %i.5.in.in, align 2
  %j.5.in = load i8* %j.5.in.in, align 1
  %inc359 = add nsw i32 %run.01144, 1
  %idxprom360 = zext i8 %j.5.in to i64
  %idxprom361 = zext i8 %i.5.in to i64
  %arrayidx363 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %idxprom361, i64 %idxprom360
  %76 = load i32* %arrayidx363, align 4, !tbaa !3
  %ispos = icmp sgt i32 %76, -1
  %neg = sub i32 0, %76
  %77 = select i1 %ispos, i32 %76, i32 %neg
  %arrayidx370 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom367, i64 %idxprom361, i64 %idxprom360
  %78 = load i32* %arrayidx370, align 4, !tbaa !3
  %mul371 = mul nsw i32 %77, %78
  %add372 = add nsw i32 %mul371, %div36
  %shr = ashr i32 %add372, %add33
  %shl373 = shl i32 %shr, %add33
  %div380 = sdiv i32 %shl373, %78
  %arrayidx385 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360
  %79 = load i32* %arrayidx385, align 4, !tbaa !3
  %call390 = call i32 @sign(i32 %div380, i32 %76) #3
  %sub391 = sub nsw i32 %79, %call390
  %ispos1123 = icmp sgt i32 %sub391, -1
  %neg1124 = sub i32 0, %sub391
  %80 = select i1 %ispos1123, i32 %sub391, i32 %neg1124
  %arrayidx398 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360
  %81 = load i32* %arrayidx398, align 4, !tbaa !3
  %mul399 = mul nsw i32 %80, %81
  %add400 = add nsw i32 %mul399, %div34
  %shr401 = ashr i32 %add400, %add27
  %82 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx406 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360
  %83 = load i32* %arrayidx406, align 4, !tbaa !3
  %sub411 = sub i32 %83, %76
  %ispos1125 = icmp sgt i32 %sub411, -1
  %neg1126 = sub i32 0, %sub411
  %84 = select i1 %ispos1125, i32 %sub411, i32 %neg1126
  %mul419 = mul nsw i32 %84, %81
  %add420 = add nsw i32 %mul419, %div34
  %shr421 = ashr i32 %add420, %add27
  %cmp422 = icmp ne i32 %shr401, %shr421
  %cmp425 = icmp ne i32 %shr401, 0
  %or.cond = and i1 %cmp422, %cmp425
  %cmp428 = icmp ne i32 %shr421, 0
  %or.cond850 = and i1 %or.cond, %cmp428
  br i1 %or.cond850, label %if.then430, label %if.else513

if.then430:                                       ; preds = %if.end
  %call436 = call i32 @sign(i32 %shr401, i32 %sub391) #3
  %arrayidx442 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360
  %85 = load i32* %arrayidx442, align 4, !tbaa !3
  %mul443 = mul nsw i32 %85, %call436
  %arrayidx447 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom361, i64 %idxprom360
  %86 = load i32* %arrayidx447, align 4, !tbaa !3
  %mul448 = mul nsw i32 %mul443, %86
  %shl449 = shl i32 %mul448, %div23
  %shr450 = ashr i32 %shl449, 6
  %sub456 = sub i32 %sub411, %shr450
  %conv457 = sitofp i32 %sub456 to double
  call void @levrun_linfo_inter(i32 %shr401, i32 %inc359, i32* %len, i32* %info) #3
  %mul458 = fmul double %conv457, %conv457
  %87 = load i32* %len, align 4, !tbaa !3
  %conv459 = sitofp i32 %87 to double
  %mul460 = fmul double %mul20, %conv459
  %add461 = fadd double %mul460, %mul458
  %88 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx466 = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360
  %89 = load i32* %arrayidx466, align 4, !tbaa !3
  %call467 = call i32 @sign(i32 %shr421, i32 %sub411) #3
  %mul474 = mul nsw i32 %85, %call467
  %mul479 = mul nsw i32 %mul474, %86
  %shl480 = shl i32 %mul479, %div23
  %shr481 = ashr i32 %shl480, 6
  %sub482 = sub i32 %89, %76
  %sub487 = sub i32 %sub482, %shr481
  %conv488 = sitofp i32 %sub487 to double
  call void @levrun_linfo_inter(i32 %shr421, i32 %inc359, i32* %len, i32* %info) #3
  %mul489 = fmul double %conv488, %conv488
  %90 = load i32* %len, align 4, !tbaa !3
  %conv490 = sitofp i32 %90 to double
  %mul491 = fmul double %mul20, %conv490
  %add492 = fadd double %mul491, %mul489
  %cmp493 = fcmp oeq double %add461, %add492
  br i1 %cmp493, label %if.then495, label %if.else500

if.then495:                                       ; preds = %if.then430
  %ispos1129 = icmp sgt i32 %shr401, -1
  %neg1130 = sub i32 0, %shr401
  %91 = select i1 %ispos1129, i32 %shr401, i32 %neg1130
  %ispos1131 = icmp sgt i32 %shr421, -1
  %neg1132 = sub i32 0, %shr421
  %92 = select i1 %ispos1131, i32 %shr421, i32 %neg1132
  %cmp498 = icmp slt i32 %91, %92
  br label %if.end506

if.else500:                                       ; preds = %if.then430
  %cmp501 = fcmp olt double %add461, %add492
  br label %if.end506

if.end506:                                        ; preds = %if.else500, %if.then495
  %cmp498.sink = phi i1 [ %cmp498, %if.then495 ], [ %cmp501, %if.else500 ]
  %cond = select i1 %cmp498.sink, i32 %shr401, i32 %shr421
  %cmp507 = icmp eq i32 %cond, %shr401
  %cond512 = select i1 %cmp507, i32 %sub391, i32 %sub411
  br label %if.end531

if.else513:                                       ; preds = %if.end
  %cmp514 = icmp eq i32 %shr401, %shr421
  br i1 %cmp514, label %if.end531, label %if.else517

if.else517:                                       ; preds = %if.else513
  %cmp518 = icmp eq i32 %shr401, 0
  %cond523 = select i1 %cmp518, i32 0, i32 %shr421
  %cond529 = select i1 %cmp518, i32 %sub391, i32 %sub411
  br label %if.end531

if.end531:                                        ; preds = %if.else513, %if.else517, %if.end506
  %c_err.0 = phi i32 [ %cond512, %if.end506 ], [ %cond529, %if.else517 ], [ %sub391, %if.else513 ]
  %level.1 = phi i32 [ %cond, %if.end506 ], [ %cond523, %if.else517 ], [ %shr401, %if.else513 ]
  %cmp532 = icmp eq i32 %level.1, 0
  br i1 %cmp532, label %if.end568, label %if.then534

if.then534:                                       ; preds = %if.end531
  %cmp535 = icmp sgt i32 %level.1, 1
  br i1 %cmp535, label %if.then537, label %if.else539

if.then537:                                       ; preds = %if.then534
  %93 = load i32* %coeff_cost, align 4, !tbaa !3
  %add538 = add nsw i32 %93, 999999
  br label %if.end546

if.else539:                                       ; preds = %if.then534
  %idxprom540 = sext i32 %inc359 to i64
  %94 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %disthres = getelementptr inbounds %struct.InputParameters* %94, i64 0, i32 86
  %95 = load i32* %disthres, align 4, !tbaa !3
  %idxprom541 = sext i32 %95 to i64
  %arrayidx543 = getelementptr inbounds [2 x [16 x i8]]* @COEFF_COST, i64 0, i64 %idxprom541, i64 %idxprom540
  %96 = load i8* %arrayidx543, align 1, !tbaa !1
  %conv544 = zext i8 %96 to i32
  %97 = load i32* %coeff_cost, align 4, !tbaa !3
  %add545 = add nsw i32 %97, %conv544
  br label %if.end546

if.end546:                                        ; preds = %if.else539, %if.then537
  %storemerge = phi i32 [ %add545, %if.else539 ], [ %add538, %if.then537 ]
  store i32 %storemerge, i32* %coeff_cost, align 4, !tbaa !3
  %call547 = call i32 @sign(i32 %level.1, i32 %c_err.0) #3
  %idxprom548 = sext i32 %scan_pos.01145 to i64
  %arrayidx549 = getelementptr inbounds i32* %5, i64 %idxprom548
  store i32 %call547, i32* %arrayidx549, align 4, !tbaa !3
  %arrayidx551 = getelementptr inbounds i32* %6, i64 %idxprom548
  store i32 %inc359, i32* %arrayidx551, align 4, !tbaa !3
  %inc552 = add nsw i32 %scan_pos.01145, 1
  %call553 = call i32 @sign(i32 %level.1, i32 %c_err.0) #3
  %arrayidx559 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom395, i64 %idxprom361, i64 %idxprom360
  %98 = load i32* %arrayidx559, align 4, !tbaa !3
  %mul560 = mul nsw i32 %98, %call553
  %arrayidx564 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom361, i64 %idxprom360
  %99 = load i32* %arrayidx564, align 4, !tbaa !3
  %mul565 = mul nsw i32 %mul560, %99
  %shl566 = shl i32 %mul565, %div23
  %shr567 = ashr i32 %shl566, 6
  br label %if.end568

if.end568:                                        ; preds = %if.end531, %if.end546
  %nonzero.1 = phi i32 [ 1, %if.end546 ], [ %nonzero.01143, %if.end531 ]
  %run.1 = phi i32 [ -1, %if.end546 ], [ %inc359, %if.end531 ]
  %scan_pos.1 = phi i32 [ %inc552, %if.end546 ], [ %scan_pos.01145, %if.end531 ]
  %ilev.0 = phi i32 [ %shr567, %if.end546 ], [ 0, %if.end531 ]
  %add573 = add nsw i32 %76, %ilev.0
  %ispos1127 = icmp sgt i32 %add573, -1
  %neg1128 = sub i32 0, %add573
  %100 = select i1 %ispos1127, i32 %add573, i32 %neg1128
  %mul581 = mul nsw i32 %100, %78
  %add582 = add nsw i32 %mul581, %div36
  %shr583 = ashr i32 %add582, %add33
  %call584 = call i32 @sign(i32 %shr583, i32 %add573) #3
  %arrayidx590 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom367, i64 %idxprom361, i64 %idxprom360
  %101 = load i32* %arrayidx590, align 4, !tbaa !3
  %mul591 = mul nsw i32 %101, %call584
  %shl592 = shl i32 %mul591, %div29
  %102 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx597 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %idxprom361, i64 %idxprom360
  store i32 %shl592, i32* %arrayidx597, align 4, !tbaa !3
  %indvars.iv.next1190 = add i64 %indvars.iv1189, 1
  %lftr.wideiv1191 = trunc i64 %indvars.iv.next1190 to i32
  %exitcond1192 = icmp eq i32 %lftr.wideiv1191, 16
  br i1 %exitcond1192, label %for.end600, label %for.body340

for.end600:                                       ; preds = %if.end568
  %idxprom601 = sext i32 %scan_pos.1 to i64
  %arrayidx602 = getelementptr inbounds i32* %5, i64 %idxprom601
  store i32 0, i32* %arrayidx602, align 4, !tbaa !3
  %arrayidx624 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx628 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx633 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx638 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  br label %for.cond607.preheader

for.cond607.preheader:                            ; preds = %for.inc667, %for.end600
  %indvars.iv1185 = phi i64 [ 0, %for.end600 ], [ %indvars.iv.next1186, %for.inc667 ]
  br label %for.body610

for.cond670.preheader:                            ; preds = %for.inc667
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 155
  br label %for.cond674.preheader

for.body610:                                      ; preds = %for.body610, %for.cond607.preheader
  %indvars.iv1176 = phi i64 [ 0, %for.cond607.preheader ], [ %indvars.iv.next1177, %for.body610 ]
  %arrayidx615 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1176, i64 %indvars.iv1185
  %103 = load i32* %arrayidx615, align 4, !tbaa !3
  %arrayidx617 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1176
  store i32 %103, i32* %arrayidx617, align 4, !tbaa !3
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 1
  %lftr.wideiv1178 = trunc i64 %indvars.iv.next1177 to i32
  %exitcond1179 = icmp eq i32 %lftr.wideiv1178, 4
  br i1 %exitcond1179, label %for.end620, label %for.body610

for.end620:                                       ; preds = %for.body610
  %104 = load i64* %25, align 16
  %105 = trunc i64 %104 to i32
  %106 = load i64* %55, align 8
  %107 = trunc i64 %106 to i32
  %add623 = add nsw i32 %107, %105
  store i32 %add623, i32* %arrayidx624, align 16, !tbaa !3
  %sub627 = sub nsw i32 %105, %107
  store i32 %sub627, i32* %arrayidx628, align 4, !tbaa !3
  %108 = lshr i64 %104, 32
  %109 = trunc i64 %108 to i32
  %shr630 = ashr i32 %109, 1
  %110 = lshr i64 %106, 32
  %111 = trunc i64 %110 to i32
  %sub632 = sub nsw i32 %shr630, %111
  store i32 %sub632, i32* %arrayidx633, align 8, !tbaa !3
  %shr636 = ashr i32 %111, 1
  %add637 = add nsw i32 %shr636, %109
  store i32 %add637, i32* %arrayidx638, align 4, !tbaa !3
  br label %for.body642

for.body642:                                      ; preds = %for.body642.for.body642_crit_edge, %for.end620
  %112 = phi i32 [ %add623, %for.end620 ], [ %.pre, %for.body642.for.body642_crit_edge ]
  %indvars.iv1180 = phi i64 [ 0, %for.end620 ], [ %indvars.iv.next1181, %for.body642.for.body642_crit_edge ]
  %113 = sub nsw i64 3, %indvars.iv1180
  %arrayidx647 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %113
  %114 = load i32* %arrayidx647, align 4, !tbaa !3
  %add648 = add nsw i32 %114, %112
  %arrayidx653 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1180, i64 %indvars.iv1185
  store i32 %add648, i32* %arrayidx653, align 4, !tbaa !3
  %sub658 = sub nsw i32 %112, %114
  %arrayidx663 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %113, i64 %indvars.iv1185
  store i32 %sub658, i32* %arrayidx663, align 4, !tbaa !3
  %indvars.iv.next1181 = add i64 %indvars.iv1180, 1
  %lftr.wideiv1183 = trunc i64 %indvars.iv.next1181 to i32
  %exitcond1184 = icmp eq i32 %lftr.wideiv1183, 2
  br i1 %exitcond1184, label %for.inc667, label %for.body642.for.body642_crit_edge

for.body642.for.body642_crit_edge:                ; preds = %for.body642
  %arrayidx645.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1181
  %.pre = load i32* %arrayidx645.phi.trans.insert, align 4, !tbaa !3
  br label %for.body642

for.inc667:                                       ; preds = %for.body642
  %indvars.iv.next1186 = add i64 %indvars.iv1185, 1
  %lftr.wideiv1187 = trunc i64 %indvars.iv.next1186 to i32
  %exitcond1188 = icmp eq i32 %lftr.wideiv1187, 4
  br i1 %exitcond1188, label %for.cond670.preheader, label %for.cond607.preheader

for.cond674.preheader:                            ; preds = %for.inc819, %for.cond670.preheader
  %indvars.iv1172 = phi i64 [ 0, %for.cond670.preheader ], [ %indvars.iv.next1173, %for.inc819 ]
  br label %for.body677

for.cond822.preheader:                            ; preds = %for.inc819
  %pix_x = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 33
  %115 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 34
  %116 = load i32* %pix_y, align 4, !tbaa !3
  %117 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %117, i64 0, i32 25
  %118 = load i16*** %imgY, align 8, !tbaa !0
  br label %for.cond826.preheader

for.body677:                                      ; preds = %for.body677, %for.cond674.preheader
  %indvars.iv1162 = phi i64 [ 0, %for.cond674.preheader ], [ %indvars.iv.next1163, %for.body677 ]
  %arrayidx682 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %indvars.iv1162
  %119 = load i32* %arrayidx682, align 4, !tbaa !3
  %arrayidx684 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv1162
  store i32 %119, i32* %arrayidx684, align 4, !tbaa !3
  %indvars.iv.next1163 = add i64 %indvars.iv1162, 1
  %lftr.wideiv1164 = trunc i64 %indvars.iv.next1163 to i32
  %exitcond1165 = icmp eq i32 %lftr.wideiv1164, 4
  br i1 %exitcond1165, label %for.end687, label %for.body677

for.end687:                                       ; preds = %for.body677
  %120 = load i64* %25, align 16
  %121 = trunc i64 %120 to i32
  %122 = load i64* %55, align 8
  %123 = trunc i64 %122 to i32
  %add690 = add nsw i32 %123, %121
  store i32 %add690, i32* %arrayidx624, align 16, !tbaa !3
  %sub694 = sub nsw i32 %121, %123
  store i32 %sub694, i32* %arrayidx628, align 4, !tbaa !3
  %124 = lshr i64 %120, 32
  %125 = trunc i64 %124 to i32
  %shr697 = ashr i32 %125, 1
  %126 = lshr i64 %122, 32
  %127 = trunc i64 %126 to i32
  %sub699 = sub nsw i32 %shr697, %127
  store i32 %sub699, i32* %arrayidx633, align 8, !tbaa !3
  %shr703 = ashr i32 %127, 1
  %add704 = add nsw i32 %shr703, %125
  store i32 %add704, i32* %arrayidx638, align 4, !tbaa !3
  br label %for.body709

for.body709:                                      ; preds = %for.body709.for.body709_crit_edge, %for.end687
  %128 = phi i32 [ %add690, %for.end687 ], [ %.pre1242, %for.body709.for.body709_crit_edge ]
  %indvars.iv1167 = phi i64 [ 0, %for.end687 ], [ %indvars.iv.next1168, %for.body709.for.body709_crit_edge ]
  %129 = sub nsw i64 3, %indvars.iv1167
  %130 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %arrayidx714 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %129
  %131 = load i32* %arrayidx714, align 4, !tbaa !3
  %add715 = add i32 %128, 32
  %add716 = add i32 %add715, %131
  %shr717 = ashr i32 %add716, 6
  %cmp718 = icmp slt i32 %shr717, 0
  %.shr717 = select i1 %cmp718, i32 0, i32 %shr717
  %cmp731 = icmp slt i32 %130, %.shr717
  %..shr717 = select i1 %cmp731, i32 %130, i32 %.shr717
  %arrayidx762 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %indvars.iv1167
  store i32 %..shr717, i32* %arrayidx762, align 4, !tbaa !3
  %132 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %add769 = sub i32 %add715, %131
  %shr770 = ashr i32 %add769, 6
  %cmp771 = icmp slt i32 %shr770, 0
  %.shr770 = select i1 %cmp771, i32 0, i32 %shr770
  %cmp784 = icmp slt i32 %132, %.shr770
  %cond810 = select i1 %cmp784, i32 %132, i32 %.shr770
  %arrayidx815 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv1172, i64 %129
  store i32 %cond810, i32* %arrayidx815, align 4, !tbaa !3
  %indvars.iv.next1168 = add i64 %indvars.iv1167, 1
  %lftr.wideiv1170 = trunc i64 %indvars.iv.next1168 to i32
  %exitcond1171 = icmp eq i32 %lftr.wideiv1170, 2
  br i1 %exitcond1171, label %for.inc819, label %for.body709.for.body709_crit_edge

for.body709.for.body709_crit_edge:                ; preds = %for.body709
  %arrayidx712.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next1168
  %.pre1242 = load i32* %arrayidx712.phi.trans.insert, align 4, !tbaa !3
  br label %for.body709

for.inc819:                                       ; preds = %for.body709
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1
  %lftr.wideiv1174 = trunc i64 %indvars.iv.next1173 to i32
  %exitcond1175 = icmp eq i32 %lftr.wideiv1174, 4
  br i1 %exitcond1175, label %for.cond822.preheader, label %for.cond674.preheader

for.cond826.preheader:                            ; preds = %for.inc847, %for.cond822.preheader
  %indvars.iv1158 = phi i64 [ 0, %for.cond822.preheader ], [ %indvars.iv.next1159, %for.inc847 ]
  %133 = trunc i64 %indvars.iv1158 to i32
  %add839 = add i32 %133, %block_y
  %add840 = add i32 %add839, %116
  %idxprom841 = sext i32 %add840 to i64
  %arrayidx842 = getelementptr inbounds i16** %118, i64 %idxprom841
  %134 = load i16** %arrayidx842, align 8, !tbaa !0
  br label %for.body829

for.body829:                                      ; preds = %for.body829, %for.cond826.preheader
  %indvars.iv = phi i64 [ 0, %for.cond826.preheader ], [ %indvars.iv.next, %for.body829 ]
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv1158
  %135 = load i32* %arrayidx834, align 4, !tbaa !3
  %conv835 = trunc i32 %135 to i16
  %136 = trunc i64 %indvars.iv to i32
  %add836 = add i32 %136, %block_x
  %add837 = add i32 %add836, %115
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx843 = getelementptr inbounds i16* %134, i64 %idxprom838
  store i16 %conv835, i16* %arrayidx843, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc847, label %for.body829

for.inc847:                                       ; preds = %for.body829
  %indvars.iv.next1159 = add i64 %indvars.iv1158, 1
  %lftr.wideiv1160 = trunc i64 %indvars.iv.next1159 to i32
  %exitcond1161 = icmp eq i32 %lftr.wideiv1160, 4
  br i1 %exitcond1161, label %for.end849, label %for.cond826.preheader

for.end849:                                       ; preds = %for.inc847
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret i32 %nonzero.1
}

; Function Attrs: optsize
declare void @levrun_linfo_inter(i32, i32, i32*, i32*) #2

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
  %0 = bitcast [8 x [8 x i32]]* %predicted_chroma_block to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %add = add nsw i32 %uv, 1
  %idxprom1 = sext i32 %add to i64
  %cofDC = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 48
  %4 = load i32**** %cofDC, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32*** %4, i64 %idxprom1
  %5 = load i32*** %arrayidx2, align 8, !tbaa !0
  %6 = load i32** %5, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32** %5, i64 1
  %7 = load i32** %arrayidx8, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 3
  %8 = load i32* %qp, align 4, !tbaa !3
  %sub = add nsw i32 %8, -12
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 3.000000e+00
  %exp2 = call double @exp2(double %div) #4
  %mul = fmul double %exp2, 8.500000e-01
  %mul9 = fmul double %mul, 4.000000e+00
  %9 = load i32* %qp, align 4, !tbaa !3
  %10 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %10, i64 0, i32 23
  %11 = load i32* %chroma_qp_index_offset, align 4, !tbaa !3
  %add11 = add nsw i32 %11, %9
  %cmp = icmp slt i32 %add11, 0
  br i1 %cmp, label %cond.end23, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp16 = icmp sgt i32 %add11, 51
  %.add11 = select i1 %cmp16, i32 51, i32 %add11
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false, %entry
  %cond24 = phi i32 [ 0, %entry ], [ %.add11, %cond.false ]
  %qpsp = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 4
  %12 = load i32* %qpsp, align 4, !tbaa !3
  %add26 = add nsw i32 %11, %12
  %cmp27 = icmp slt i32 %add26, 0
  br i1 %cmp27, label %cond.end43, label %cond.false30

cond.false30:                                     ; preds = %cond.end23
  %cmp34 = icmp sgt i32 %add26, 51
  %.add26 = select i1 %cmp34, i32 51, i32 %add26
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false30, %cond.end23
  %cond44 = phi i32 [ 0, %cond.end23 ], [ %.add26, %cond.false30 ]
  %cmp45 = icmp slt i32 %cond24, 0
  br i1 %cmp45, label %cond.end52.thread, label %cond.false59

cond.end52.thread:                                ; preds = %cond.end43
  %div551954 = sdiv i32 %cond24, 6
  br label %cond.end63

cond.false59:                                     ; preds = %cond.end43
  %idxprom49 = sext i32 %cond24 to i64
  %arrayidx50 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom49
  %13 = load i8* %arrayidx50, align 1, !tbaa !1
  %div1959 = udiv i8 %13, 6
  %div55 = zext i8 %div1959 to i32
  %conv62 = zext i8 %13 to i32
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end52.thread, %cond.false59
  %div551955 = phi i32 [ %div55, %cond.false59 ], [ %div551954, %cond.end52.thread ]
  %cond64 = phi i32 [ %conv62, %cond.false59 ], [ %cond24, %cond.end52.thread ]
  %rem = srem i32 %cond64, 6
  %add66 = add nsw i32 %div551955, 15
  %shl = shl i32 1, %add66
  %div67 = sdiv i32 %shl, 6
  %cmp68 = icmp slt i32 %cond44, 0
  br i1 %cmp68, label %cond.true82, label %cond.false84

cond.true82:                                      ; preds = %cond.end63
  %div791956 = sdiv i32 %12, 6
  br label %cond.end88

cond.false84:                                     ; preds = %cond.end63
  %idxprom73 = sext i32 %cond44 to i64
  %arrayidx74 = getelementptr inbounds [52 x i8]* @QP_SCALE_CR, i64 0, i64 %idxprom73
  %14 = load i8* %arrayidx74, align 1, !tbaa !1
  %div1960 = udiv i8 %14, 6
  %div79 = zext i8 %div1960 to i32
  %conv87 = zext i8 %14 to i32
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false84, %cond.true82
  %div791957 = phi i32 [ %div791956, %cond.true82 ], [ %div79, %cond.false84 ]
  %cond89 = phi i32 [ %12, %cond.true82 ], [ %conv87, %cond.false84 ]
  %add92 = add nsw i32 %div791957, 15
  %shl93 = shl i32 1, %add92
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.inc121, %cond.end88
  %indvars.iv2150 = phi i64 [ 0, %cond.end88 ], [ %indvars.iv.next2151, %for.inc121 ]
  br label %for.body100

for.cond124.preheader:                            ; preds = %for.inc121
  %rem91 = srem i32 %cond89, 6
  %div94 = sdiv i32 %shl93, 2
  %arrayidx192 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx194 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond128.preheader

for.body100:                                      ; preds = %for.body100, %for.cond97.preheader
  %indvars.iv2146 = phi i64 [ 0, %for.cond97.preheader ], [ %indvars.iv.next2147, %for.body100 ]
  %arrayidx104 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 45, i64 %indvars.iv2146, i64 %indvars.iv2150
  %16 = load i16* %arrayidx104, align 2, !tbaa !4
  %conv105 = zext i16 %16 to i32
  %arrayidx109 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %indvars.iv2146, i64 %indvars.iv2150
  %17 = load i32* %arrayidx109, align 4, !tbaa !3
  %add110 = add nsw i32 %17, %conv105
  store i32 %add110, i32* %arrayidx109, align 4, !tbaa !3
  %18 = load i16* %arrayidx104, align 2, !tbaa !4
  %conv116 = zext i16 %18 to i32
  %arrayidx120 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %indvars.iv2146, i64 %indvars.iv2150
  store i32 %conv116, i32* %arrayidx120, align 4, !tbaa !3
  %indvars.iv.next2147 = add i64 %indvars.iv2146, 1
  %lftr.wideiv2148 = trunc i64 %indvars.iv.next2147 to i32
  %exitcond2149 = icmp eq i32 %lftr.wideiv2148, 8
  br i1 %exitcond2149, label %for.inc121, label %for.body100

for.inc121:                                       ; preds = %for.body100
  %indvars.iv.next2151 = add i64 %indvars.iv2150, 1
  %lftr.wideiv2152 = trunc i64 %indvars.iv.next2151 to i32
  %exitcond2153 = icmp eq i32 %lftr.wideiv2152, 8
  br i1 %exitcond2153, label %for.cond124.preheader, label %for.cond97.preheader

for.cond128.preheader:                            ; preds = %for.cond124.preheader, %for.inc302
  %indvars.iv2141 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next2142, %for.inc302 ]
  %19 = or i64 %indvars.iv2141, 2
  %20 = or i64 %indvars.iv2141, 1
  %21 = or i64 %indvars.iv2141, 3
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond128.preheader, %for.inc299
  %indvars.iv2136 = phi i64 [ 0, %for.cond128.preheader ], [ %indvars.iv.next2137, %for.inc299 ]
  %22 = or i64 %indvars.iv2136, 2
  %23 = or i64 %indvars.iv2136, 1
  %24 = or i64 %indvars.iv2136, 3
  br label %for.body135

for.body135:                                      ; preds = %for.end174, %for.cond132.preheader
  %indvars.iv2119 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next2120, %for.end174 ]
  %25 = add nsw i64 %indvars.iv2119, %indvars.iv2141
  br label %for.body140

for.body140:                                      ; preds = %for.body140, %for.body135
  %indvars.iv2112 = phi i64 [ 0, %for.body135 ], [ %indvars.iv.next2113, %for.body140 ]
  %26 = sub nsw i64 3, %indvars.iv2112
  %27 = add nsw i64 %indvars.iv2112, %indvars.iv2136
  %arrayidx147 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %27, i64 %25
  %28 = load i32* %arrayidx147, align 4, !tbaa !3
  %29 = add nsw i64 %26, %indvars.iv2136
  %arrayidx153 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %29, i64 %25
  %30 = load i32* %arrayidx153, align 4, !tbaa !3
  %add154 = add nsw i32 %30, %28
  %arrayidx156 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2112
  store i32 %add154, i32* %arrayidx156, align 4, !tbaa !3
  %31 = load i32* %arrayidx147, align 4, !tbaa !3
  %32 = load i32* %arrayidx153, align 4, !tbaa !3
  %sub169 = sub nsw i32 %31, %32
  %arrayidx171 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %26
  store i32 %sub169, i32* %arrayidx171, align 4, !tbaa !3
  %indvars.iv.next2113 = add i64 %indvars.iv2112, 1
  %lftr.wideiv2117 = trunc i64 %indvars.iv.next2113 to i32
  %exitcond2118 = icmp eq i32 %lftr.wideiv2117, 2
  br i1 %exitcond2118, label %for.end174, label %for.body140

for.end174:                                       ; preds = %for.body140
  %33 = bitcast [4 x i32]* %m5 to i64*
  %34 = load i64* %33, align 16
  %35 = trunc i64 %34 to i32
  %36 = lshr i64 %34, 32
  %37 = trunc i64 %36 to i32
  %add177 = add nsw i32 %37, %35
  %arrayidx182 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %indvars.iv2136, i64 %25
  store i32 %add177, i32* %arrayidx182, align 4, !tbaa !3
  %sub185 = sub nsw i32 %35, %37
  %arrayidx191 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %22, i64 %25
  store i32 %sub185, i32* %arrayidx191, align 4, !tbaa !3
  %38 = load i32* %arrayidx192, align 4, !tbaa !3
  %mul193 = shl i32 %38, 1
  %39 = load i32* %arrayidx194, align 8, !tbaa !3
  %add195 = add nsw i32 %mul193, %39
  %arrayidx201 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %23, i64 %25
  store i32 %add195, i32* %arrayidx201, align 4, !tbaa !3
  %40 = load i32* %arrayidx192, align 4, !tbaa !3
  %41 = load i32* %arrayidx194, align 8, !tbaa !3
  %mul204 = shl nsw i32 %41, 1
  %sub205 = sub nsw i32 %40, %mul204
  %arrayidx211 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %24, i64 %25
  store i32 %sub205, i32* %arrayidx211, align 4, !tbaa !3
  %indvars.iv.next2120 = add i64 %indvars.iv2119, 1
  %lftr.wideiv2122 = trunc i64 %indvars.iv.next2120 to i32
  %exitcond2123 = icmp eq i32 %lftr.wideiv2122, 4
  br i1 %exitcond2123, label %for.body218, label %for.body135

for.body218:                                      ; preds = %for.end174, %for.end257
  %indvars.iv2131 = phi i64 [ %indvars.iv.next2132, %for.end257 ], [ 0, %for.end174 ]
  %42 = add nsw i64 %indvars.iv2131, %indvars.iv2136
  br label %for.body223

for.body223:                                      ; preds = %for.body223, %for.body218
  %indvars.iv2124 = phi i64 [ 0, %for.body218 ], [ %indvars.iv.next2125, %for.body223 ]
  %43 = sub nsw i64 3, %indvars.iv2124
  %44 = add nsw i64 %indvars.iv2124, %indvars.iv2141
  %arrayidx230 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %44
  %45 = load i32* %arrayidx230, align 4, !tbaa !3
  %46 = add nsw i64 %43, %indvars.iv2141
  %arrayidx236 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %46
  %47 = load i32* %arrayidx236, align 4, !tbaa !3
  %add237 = add nsw i32 %47, %45
  %arrayidx239 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2124
  store i32 %add237, i32* %arrayidx239, align 4, !tbaa !3
  %48 = load i32* %arrayidx230, align 4, !tbaa !3
  %49 = load i32* %arrayidx236, align 4, !tbaa !3
  %sub252 = sub nsw i32 %48, %49
  %arrayidx254 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %43
  store i32 %sub252, i32* %arrayidx254, align 4, !tbaa !3
  %indvars.iv.next2125 = add i64 %indvars.iv2124, 1
  %lftr.wideiv2129 = trunc i64 %indvars.iv.next2125 to i32
  %exitcond2130 = icmp eq i32 %lftr.wideiv2129, 2
  br i1 %exitcond2130, label %for.end257, label %for.body223

for.end257:                                       ; preds = %for.body223
  %50 = load i64* %33, align 16
  %51 = trunc i64 %50 to i32
  %52 = lshr i64 %50, 32
  %53 = trunc i64 %52 to i32
  %add260 = add nsw i32 %53, %51
  %arrayidx266 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %indvars.iv2141
  store i32 %add260, i32* %arrayidx266, align 4, !tbaa !3
  %sub269 = sub nsw i32 %51, %53
  %arrayidx275 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %19
  store i32 %sub269, i32* %arrayidx275, align 4, !tbaa !3
  %54 = load i32* %arrayidx192, align 4, !tbaa !3
  %mul277 = shl i32 %54, 1
  %55 = load i32* %arrayidx194, align 8, !tbaa !3
  %add279 = add nsw i32 %mul277, %55
  %arrayidx285 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %20
  store i32 %add279, i32* %arrayidx285, align 4, !tbaa !3
  %56 = load i32* %arrayidx192, align 4, !tbaa !3
  %57 = load i32* %arrayidx194, align 8, !tbaa !3
  %mul288 = shl nsw i32 %57, 1
  %sub289 = sub nsw i32 %56, %mul288
  %arrayidx295 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 %42, i64 %21
  store i32 %sub289, i32* %arrayidx295, align 4, !tbaa !3
  %indvars.iv.next2132 = add i64 %indvars.iv2131, 1
  %lftr.wideiv2134 = trunc i64 %indvars.iv.next2132 to i32
  %exitcond2135 = icmp eq i32 %lftr.wideiv2134, 4
  br i1 %exitcond2135, label %for.inc299, label %for.body218

for.inc299:                                       ; preds = %for.end257
  %indvars.iv.next2137 = add i64 %indvars.iv2136, 4
  %58 = trunc i64 %indvars.iv.next2137 to i32
  %cmp129 = icmp slt i32 %58, 5
  br i1 %cmp129, label %for.cond132.preheader, label %for.inc302

for.inc302:                                       ; preds = %for.inc299
  %indvars.iv.next2142 = add i64 %indvars.iv2141, 4
  %59 = trunc i64 %indvars.iv.next2142 to i32
  %cmp125 = icmp slt i32 %59, 5
  br i1 %cmp125, label %for.cond128.preheader, label %for.cond309.preheader

for.cond309.preheader:                            ; preds = %for.inc302, %for.inc467
  %indvars.iv2107 = phi i64 [ %indvars.iv.next2108, %for.inc467 ], [ 0, %for.inc302 ]
  %60 = or i64 %indvars.iv2107, 2
  %61 = or i64 %indvars.iv2107, 1
  %62 = or i64 %indvars.iv2107, 3
  br label %for.cond313.preheader

for.cond313.preheader:                            ; preds = %for.cond309.preheader, %for.inc464
  %indvars.iv2102 = phi i64 [ 0, %for.cond309.preheader ], [ %indvars.iv.next2103, %for.inc464 ]
  %63 = or i64 %indvars.iv2102, 2
  %64 = or i64 %indvars.iv2102, 1
  %65 = or i64 %indvars.iv2102, 3
  br label %for.body316

for.body316:                                      ; preds = %for.end351, %for.cond313.preheader
  %indvars.iv2085 = phi i64 [ 0, %for.cond313.preheader ], [ %indvars.iv.next2086, %for.end351 ]
  %66 = add nsw i64 %indvars.iv2085, %indvars.iv2107
  br label %for.body321

for.body321:                                      ; preds = %for.body321, %for.body316
  %indvars.iv2078 = phi i64 [ 0, %for.body316 ], [ %indvars.iv.next2079, %for.body321 ]
  %67 = sub nsw i64 3, %indvars.iv2078
  %68 = add nsw i64 %indvars.iv2078, %indvars.iv2102
  %arrayidx327 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %68, i64 %66
  %69 = load i32* %arrayidx327, align 4, !tbaa !3
  %70 = add nsw i64 %67, %indvars.iv2102
  %arrayidx332 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %70, i64 %66
  %71 = load i32* %arrayidx332, align 4, !tbaa !3
  %add333 = add nsw i32 %71, %69
  %arrayidx335 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2078
  store i32 %add333, i32* %arrayidx335, align 4, !tbaa !3
  %sub346 = sub nsw i32 %69, %71
  %arrayidx348 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %67
  store i32 %sub346, i32* %arrayidx348, align 4, !tbaa !3
  %indvars.iv.next2079 = add i64 %indvars.iv2078, 1
  %lftr.wideiv2083 = trunc i64 %indvars.iv.next2079 to i32
  %exitcond2084 = icmp eq i32 %lftr.wideiv2083, 2
  br i1 %exitcond2084, label %for.end351, label %for.body321

for.end351:                                       ; preds = %for.body321
  %72 = load i64* %33, align 16
  %73 = trunc i64 %72 to i32
  %74 = lshr i64 %72, 32
  %75 = trunc i64 %74 to i32
  %add354 = add nsw i32 %75, %73
  %arrayidx358 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %indvars.iv2102, i64 %66
  store i32 %add354, i32* %arrayidx358, align 4, !tbaa !3
  %sub361 = sub nsw i32 %73, %75
  %arrayidx366 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %63, i64 %66
  store i32 %sub361, i32* %arrayidx366, align 4, !tbaa !3
  %76 = load i32* %arrayidx192, align 4, !tbaa !3
  %mul368 = shl i32 %76, 1
  %77 = bitcast i32* %arrayidx194 to i64*
  %78 = load i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %add370 = add nsw i32 %mul368, %79
  %arrayidx375 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %64, i64 %66
  store i32 %add370, i32* %arrayidx375, align 4, !tbaa !3
  %80 = lshr i64 %78, 32
  %81 = trunc i64 %80 to i32
  %mul378 = shl nsw i32 %79, 1
  %sub379 = sub nsw i32 %81, %mul378
  %arrayidx384 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %65, i64 %66
  store i32 %sub379, i32* %arrayidx384, align 4, !tbaa !3
  %indvars.iv.next2086 = add i64 %indvars.iv2085, 1
  %lftr.wideiv2088 = trunc i64 %indvars.iv.next2086 to i32
  %exitcond2089 = icmp eq i32 %lftr.wideiv2088, 4
  br i1 %exitcond2089, label %for.body391, label %for.body316

for.body391:                                      ; preds = %for.end351, %for.end426
  %indvars.iv2097 = phi i64 [ %indvars.iv.next2098, %for.end426 ], [ 0, %for.end351 ]
  %82 = add nsw i64 %indvars.iv2097, %indvars.iv2102
  br label %for.body396

for.body396:                                      ; preds = %for.body396, %for.body391
  %indvars.iv2090 = phi i64 [ 0, %for.body391 ], [ %indvars.iv.next2091, %for.body396 ]
  %83 = sub nsw i64 3, %indvars.iv2090
  %84 = add nsw i64 %indvars.iv2090, %indvars.iv2107
  %arrayidx402 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %84
  %85 = load i32* %arrayidx402, align 4, !tbaa !3
  %86 = add nsw i64 %83, %indvars.iv2107
  %arrayidx407 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %86
  %87 = load i32* %arrayidx407, align 4, !tbaa !3
  %add408 = add nsw i32 %87, %85
  %arrayidx410 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2090
  store i32 %add408, i32* %arrayidx410, align 4, !tbaa !3
  %sub421 = sub nsw i32 %85, %87
  %arrayidx423 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %83
  store i32 %sub421, i32* %arrayidx423, align 4, !tbaa !3
  %indvars.iv.next2091 = add i64 %indvars.iv2090, 1
  %lftr.wideiv2095 = trunc i64 %indvars.iv.next2091 to i32
  %exitcond2096 = icmp eq i32 %lftr.wideiv2095, 2
  br i1 %exitcond2096, label %for.end426, label %for.body396

for.end426:                                       ; preds = %for.body396
  %88 = load i64* %33, align 16
  %89 = trunc i64 %88 to i32
  %90 = lshr i64 %88, 32
  %91 = trunc i64 %90 to i32
  %add429 = add nsw i32 %91, %89
  %arrayidx434 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %indvars.iv2107
  store i32 %add429, i32* %arrayidx434, align 16, !tbaa !3
  %sub437 = sub nsw i32 %89, %91
  %arrayidx442 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %60
  store i32 %sub437, i32* %arrayidx442, align 8, !tbaa !3
  %92 = load i32* %arrayidx192, align 4, !tbaa !3
  %mul444 = shl i32 %92, 1
  %93 = load i64* %77, align 8
  %94 = trunc i64 %93 to i32
  %add446 = add nsw i32 %mul444, %94
  %arrayidx451 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %61
  store i32 %add446, i32* %arrayidx451, align 4, !tbaa !3
  %95 = lshr i64 %93, 32
  %96 = trunc i64 %95 to i32
  %mul454 = shl nsw i32 %94, 1
  %sub455 = sub nsw i32 %96, %mul454
  %arrayidx460 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %82, i64 %62
  store i32 %sub455, i32* %arrayidx460, align 4, !tbaa !3
  %indvars.iv.next2098 = add i64 %indvars.iv2097, 1
  %lftr.wideiv2100 = trunc i64 %indvars.iv.next2098 to i32
  %exitcond2101 = icmp eq i32 %lftr.wideiv2100, 4
  br i1 %exitcond2101, label %for.inc464, label %for.body391

for.inc464:                                       ; preds = %for.end426
  %indvars.iv.next2103 = add i64 %indvars.iv2102, 4
  %97 = trunc i64 %indvars.iv.next2103 to i32
  %cmp310 = icmp slt i32 %97, 5
  br i1 %cmp310, label %for.cond313.preheader, label %for.inc467

for.inc467:                                       ; preds = %for.inc464
  %indvars.iv.next2108 = add i64 %indvars.iv2107, 4
  %98 = trunc i64 %indvars.iv.next2108 to i32
  %cmp306 = icmp slt i32 %98, 5
  br i1 %cmp306, label %for.cond309.preheader, label %for.end469

for.end469:                                       ; preds = %for.inc467
  %arrayidx472 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 0, i64 0
  %99 = load i32* %arrayidx472, align 4, !tbaa !3
  %arrayidx475 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 4, i64 0
  %100 = load i32* %arrayidx475, align 4, !tbaa !3
  %add476 = add nsw i32 %100, %99
  %arrayidx479 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 0, i64 4
  %101 = load i32* %arrayidx479, align 4, !tbaa !3
  %add480 = add nsw i32 %add476, %101
  %arrayidx483 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 46, i64 4, i64 4
  %102 = load i32* %arrayidx483, align 4, !tbaa !3
  %add484 = add nsw i32 %add480, %102
  %arrayidx485 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 0
  store i32 %add484, i32* %arrayidx485, align 16, !tbaa !3
  %sub492 = sub i32 %99, %100
  %add496 = add nsw i32 %sub492, %101
  %sub500 = sub i32 %add496, %102
  %arrayidx501 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 1
  store i32 %sub500, i32* %arrayidx501, align 4, !tbaa !3
  %sub512 = sub i32 %add476, %101
  %sub516 = sub i32 %sub512, %102
  %arrayidx517 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 2
  store i32 %sub516, i32* %arrayidx517, align 8, !tbaa !3
  %sub528 = sub i32 %sub492, %101
  %add532 = add nsw i32 %sub528, %102
  %arrayidx533 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 3
  store i32 %add532, i32* %arrayidx533, align 4, !tbaa !3
  %arrayidx535 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 0, i64 0
  %103 = load i32* %arrayidx535, align 16, !tbaa !3
  %arrayidx537 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 4, i64 0
  %104 = load i32* %arrayidx537, align 16, !tbaa !3
  %add538 = add nsw i32 %104, %103
  %arrayidx540 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 0, i64 4
  %105 = load i32* %arrayidx540, align 16, !tbaa !3
  %add541 = add nsw i32 %add538, %105
  %arrayidx543 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 4, i64 4
  %106 = load i32* %arrayidx543, align 16, !tbaa !3
  %add544 = add nsw i32 %add541, %106
  %arrayidx545 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 0
  store i32 %add544, i32* %arrayidx545, align 16, !tbaa !3
  %sub550 = sub i32 %103, %104
  %add553 = add nsw i32 %sub550, %105
  %sub556 = sub i32 %add553, %106
  %arrayidx557 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 1
  store i32 %sub556, i32* %arrayidx557, align 4, !tbaa !3
  %sub565 = sub i32 %add538, %105
  %sub568 = sub i32 %sub565, %106
  %arrayidx569 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 2
  store i32 %sub568, i32* %arrayidx569, align 8, !tbaa !3
  %sub577 = sub i32 %sub550, %105
  %add580 = add nsw i32 %sub577, %106
  %arrayidx581 = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 3
  store i32 %add580, i32* %arrayidx581, align 4, !tbaa !3
  %idxprom590 = sext i32 %rem91 to i64
  %arrayidx593 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom590, i64 0, i64 0
  %107 = load i32* %arrayidx593, align 16, !tbaa !3
  %mul595 = shl nsw i32 %div94, 1
  %add597 = add nsw i32 %div791957, 16
  %idxprom612 = sext i32 %rem to i64
  %arrayidx615 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom612, i64 0, i64 0
  %108 = load i32* %arrayidx615, align 16, !tbaa !3
  %mul617 = shl nsw i32 %div67, 1
  %add619 = add nsw i32 %div551955, 16
  %arrayidx649 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 0, i64 0
  %arrayidx781 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom590, i64 0, i64 0
  %109 = load i32* %arrayidx781, align 16, !tbaa !3
  %shl739 = shl i32 %uv, 2
  %shl740 = shl i32 983040, %shl739
  %conv741 = sext i32 %shl740 to i64
  %cbp_blk = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 13
  br label %for.body585

for.body585:                                      ; preds = %if.end763.for.body585_crit_edge, %for.end469
  %110 = phi i32 [ %add484, %for.end469 ], [ %.pre2163, %if.end763.for.body585_crit_edge ]
  %111 = phi i32 [ %add544, %for.end469 ], [ %.pre, %if.end763.for.body585_crit_edge ]
  %indvars.iv2074 = phi i64 [ 0, %for.end469 ], [ %indvars.iv.next2075, %if.end763.for.body585_crit_edge ]
  %cr_cbp.addr.02008 = phi i32 [ %cr_cbp, %for.end469 ], [ %cr_cbp.addr.1, %if.end763.for.body585_crit_edge ]
  %scan_pos.02006 = phi i32 [ 0, %for.end469 ], [ %scan_pos.1, %if.end763.for.body585_crit_edge ]
  %run.02005 = phi i32 [ -1, %for.end469 ], [ %run.1, %if.end763.for.body585_crit_edge ]
  %inc586 = add nsw i32 %run.02005, 1
  %ispos1929 = icmp sgt i32 %111, -1
  %neg1930 = sub i32 0, %111
  %112 = select i1 %ispos1929, i32 %111, i32 %neg1930
  %mul594 = mul nsw i32 %112, %107
  %add596 = add nsw i32 %mul594, %mul595
  %shr = ashr i32 %add596, %add597
  %shl599 = shl i32 %shr, %add597
  %div604 = sdiv i32 %shl599, %107
  %arrayidx606 = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv2074
  %call609 = call i32 @sign(i32 %div604, i32 %111) #3
  %sub610 = sub nsw i32 %110, %call609
  %ispos1931 = icmp sgt i32 %sub610, -1
  %neg1932 = sub i32 0, %sub610
  %113 = select i1 %ispos1931, i32 %sub610, i32 %neg1932
  %mul616 = mul nsw i32 %113, %108
  %add618 = add nsw i32 %mul616, %mul617
  %shr620 = ashr i32 %add618, %add619
  %sub625 = sub i32 %110, %111
  %ispos1933 = icmp sgt i32 %sub625, -1
  %neg1934 = sub i32 0, %sub625
  %114 = select i1 %ispos1933, i32 %sub625, i32 %neg1934
  %mul631 = mul nsw i32 %114, %108
  %add633 = add nsw i32 %mul631, %mul617
  %shr635 = ashr i32 %add633, %add619
  %cmp636 = icmp ne i32 %shr620, %shr635
  %cmp638 = icmp ne i32 %shr620, 0
  %or.cond = and i1 %cmp636, %cmp638
  %cmp641 = icmp ne i32 %shr635, 0
  %or.cond1450 = and i1 %or.cond, %cmp641
  br i1 %or.cond1450, label %if.then, label %if.else705

if.then:                                          ; preds = %for.body585
  %call645 = call i32 @sign(i32 %shr620, i32 %sub610) #3
  %115 = load i32* %arrayidx649, align 16, !tbaa !3
  %mul650 = shl i32 %call645, 4
  %mul651 = mul i32 %mul650, %115
  %shl652 = shl i32 %mul651, %div551955
  %shr653 = ashr i32 %shl652, 5
  %sub657 = sub i32 %sub625, %shr653
  %conv658 = sitofp i32 %sub657 to double
  call void @levrun_linfo_c2x2(i32 %shr620, i32 %inc586, i32* %len, i32* %info) #3
  %mul659 = fmul double %conv658, %conv658
  %116 = load i32* %len, align 4, !tbaa !3
  %conv660 = sitofp i32 %116 to double
  %mul661 = fmul double %mul9, %conv660
  %add662 = fadd double %mul661, %mul659
  %call665 = call i32 @sign(i32 %shr635, i32 %sub625) #3
  %mul670 = shl i32 %call665, 4
  %mul671 = mul i32 %mul670, %115
  %shl672 = shl i32 %mul671, %div551955
  %shr673 = ashr i32 %shl672, 5
  %sub677 = sub i32 %sub625, %shr673
  %conv678 = sitofp i32 %sub677 to double
  call void @levrun_linfo_c2x2(i32 %shr635, i32 %inc586, i32* %len, i32* %info) #3
  %mul679 = fmul double %conv678, %conv678
  %117 = load i32* %len, align 4, !tbaa !3
  %conv680 = sitofp i32 %117 to double
  %mul681 = fmul double %mul9, %conv680
  %add682 = fadd double %mul681, %mul679
  %cmp683 = fcmp oeq double %add662, %add682
  br i1 %cmp683, label %if.then685, label %if.else

if.then685:                                       ; preds = %if.then
  %ispos1937 = icmp sgt i32 %shr620, -1
  %neg1938 = sub i32 0, %shr620
  %118 = select i1 %ispos1937, i32 %shr620, i32 %neg1938
  %ispos1939 = icmp sgt i32 %shr635, -1
  %neg1940 = sub i32 0, %shr635
  %119 = select i1 %ispos1939, i32 %shr635, i32 %neg1940
  %cmp688 = icmp slt i32 %118, %119
  br label %if.end698

if.else:                                          ; preds = %if.then
  %cmp694 = fcmp olt double %add662, %add682
  br label %if.end698

if.end698:                                        ; preds = %if.else, %if.then685
  %cmp688.sink = phi i1 [ %cmp688, %if.then685 ], [ %cmp694, %if.else ]
  %cond693 = select i1 %cmp688.sink, i32 %shr620, i32 %shr635
  %cmp699 = icmp eq i32 %cond693, %shr620
  %cond704 = select i1 %cmp699, i32 %sub610, i32 %sub625
  br label %if.end723

if.else705:                                       ; preds = %for.body585
  %cmp706 = icmp eq i32 %shr620, %shr635
  br i1 %cmp706, label %if.end723, label %if.else709

if.else709:                                       ; preds = %if.else705
  %cmp710 = icmp eq i32 %shr620, 0
  %cond715 = select i1 %cmp710, i32 0, i32 %shr635
  %cond721 = select i1 %cmp710, i32 %sub610, i32 %sub625
  br label %if.end723

if.end723:                                        ; preds = %if.else705, %if.else709, %if.end698
  %level.1 = phi i32 [ %cond693, %if.end698 ], [ %cond715, %if.else709 ], [ %shr620, %if.else705 ]
  %c_err.0 = phi i32 [ %cond704, %if.end698 ], [ %cond721, %if.else709 ], [ %sub610, %if.else705 ]
  %120 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %120, i64 0, i32 59
  %121 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp724 = icmp eq i32 %121, 0
  br i1 %cmp724, label %land.lhs.true726, label %if.end735

land.lhs.true726:                                 ; preds = %if.end723
  %122 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp727 = getelementptr inbounds %struct.ImageParameters* %122, i64 0, i32 10
  %123 = load i32* %qp727, align 4, !tbaa !3
  %cmp728 = icmp slt i32 %123, 4
  %cmp731 = icmp sgt i32 %level.1, 2063
  %or.cond1953 = and i1 %cmp728, %cmp731
  %.level.1 = select i1 %or.cond1953, i32 2063, i32 %level.1
  br label %if.end735

if.end735:                                        ; preds = %land.lhs.true726, %if.end723
  %level.2 = phi i32 [ %level.1, %if.end723 ], [ %.level.1, %land.lhs.true726 ]
  %cmp736 = icmp eq i32 %level.2, 0
  br i1 %cmp736, label %if.end763, label %if.then738

if.then738:                                       ; preds = %if.end735
  %124 = load i64* %cbp_blk, align 8, !tbaa !5
  %or = or i64 %124, %conv741
  store i64 %or, i64* %cbp_blk, align 8, !tbaa !5
  %cmp742 = icmp slt i32 %cr_cbp.addr.02008, 1
  %cond747 = select i1 %cmp742, i32 1, i32 %cr_cbp.addr.02008
  %call748 = call i32 @sign(i32 %level.2, i32 %c_err.0) #3
  %idxprom749 = sext i32 %scan_pos.02006 to i64
  %arrayidx750 = getelementptr inbounds i32* %6, i64 %idxprom749
  store i32 %call748, i32* %arrayidx750, align 4, !tbaa !3
  %arrayidx752 = getelementptr inbounds i32* %7, i64 %idxprom749
  store i32 %inc586, i32* %arrayidx752, align 4, !tbaa !3
  %inc753 = add nsw i32 %scan_pos.02006, 1
  %call754 = call i32 @sign(i32 %level.2, i32 %c_err.0) #3
  %125 = load i32* %arrayidx649, align 16, !tbaa !3
  %mul759 = shl i32 %call754, 4
  %mul760 = mul i32 %mul759, %125
  %shl761 = shl i32 %mul760, %div551955
  %shr762 = ashr i32 %shl761, 5
  br label %if.end763

if.end763:                                        ; preds = %if.end735, %if.then738
  %run.1 = phi i32 [ -1, %if.then738 ], [ %inc586, %if.end735 ]
  %scan_pos.1 = phi i32 [ %inc753, %if.then738 ], [ %scan_pos.02006, %if.end735 ]
  %ilev.0 = phi i32 [ %shr762, %if.then738 ], [ 0, %if.end735 ]
  %cr_cbp.addr.1 = phi i32 [ %cond747, %if.then738 ], [ %cr_cbp.addr.02008, %if.end735 ]
  %add766 = add nsw i32 %111, %ilev.0
  %ispos1935 = icmp sgt i32 %add766, -1
  %neg1936 = sub i32 0, %add766
  %126 = select i1 %ispos1935, i32 %add766, i32 %neg1936
  %mul772 = mul nsw i32 %126, %107
  %add774 = add nsw i32 %mul772, %mul595
  %shr776 = ashr i32 %add774, %add597
  %call777 = call i32 @sign(i32 %shr776, i32 %add766) #3
  %mul782 = mul nsw i32 %109, %call777
  %shl783 = shl i32 %mul782, %div791957
  store i32 %shl783, i32* %arrayidx606, align 4, !tbaa !3
  %indvars.iv.next2075 = add i64 %indvars.iv2074, 1
  %lftr.wideiv2076 = trunc i64 %indvars.iv.next2075 to i32
  %exitcond2077 = icmp eq i32 %lftr.wideiv2076, 4
  br i1 %exitcond2077, label %for.end788, label %if.end763.for.body585_crit_edge

if.end763.for.body585_crit_edge:                  ; preds = %if.end763
  %arrayidx588.phi.trans.insert = getelementptr inbounds [4 x i32]* %mp1, i64 0, i64 %indvars.iv.next2075
  %.pre = load i32* %arrayidx588.phi.trans.insert, align 4, !tbaa !3
  %arrayidx606.phi.trans.insert = getelementptr inbounds [4 x i32]* %m1, i64 0, i64 %indvars.iv.next2075
  %.pre2163 = load i32* %arrayidx606.phi.trans.insert, align 4, !tbaa !3
  br label %for.body585

for.end788:                                       ; preds = %if.end763
  %idxprom789 = sext i32 %scan_pos.1 to i64
  %arrayidx790 = getelementptr inbounds i32* %6, i64 %idxprom789
  store i32 0, i32* %arrayidx790, align 4, !tbaa !3
  %127 = bitcast [4 x i32]* %m1 to i64*
  %128 = load i64* %127, align 16
  %129 = trunc i64 %128 to i32
  %130 = lshr i64 %128, 32
  %131 = trunc i64 %130 to i32
  %add793 = add nsw i32 %131, %129
  %132 = bitcast i32* %arrayidx517 to i64*
  %133 = load i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %add795 = add nsw i32 %add793, %134
  %135 = lshr i64 %133, 32
  %136 = trunc i64 %135 to i32
  %add797 = add nsw i32 %add795, %136
  %div798 = sdiv i32 %add797, 2
  %137 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx801 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 0, i64 0
  store i32 %div798, i32* %arrayidx801, align 4, !tbaa !3
  %sub804 = sub i32 %129, %131
  %add806 = add nsw i32 %sub804, %134
  %sub808 = sub i32 %add806, %136
  %div809 = sdiv i32 %sub808, 2
  %arrayidx812 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 4, i64 0
  store i32 %div809, i32* %arrayidx812, align 4, !tbaa !3
  %sub817 = sub i32 %add793, %134
  %sub819 = sub i32 %sub817, %136
  %div820 = sdiv i32 %sub819, 2
  %arrayidx823 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 0, i64 4
  store i32 %div820, i32* %arrayidx823, align 4, !tbaa !3
  %sub828 = sub i32 %sub804, %134
  %add830 = add nsw i32 %sub828, %136
  %div831 = sdiv i32 %add830, 2
  %arrayidx834 = getelementptr inbounds %struct.ImageParameters* %137, i64 0, i32 46, i64 4, i64 4
  store i32 %div831, i32* %arrayidx834, align 4, !tbaa !3
  %add848 = add nsw i32 %uv, 4
  %idxprom849 = sext i32 %add848 to i64
  %add1089 = add i32 %shl739, 16
  br label %for.cond839.preheader

for.cond839.preheader:                            ; preds = %for.end788, %for.inc1170
  %138 = phi %struct.ImageParameters* [ %137, %for.end788 ], [ %171, %for.inc1170 ]
  %n2.22004 = phi i32 [ 0, %for.end788 ], [ %add1171, %for.inc1170 ]
  %cr_cbp_tmp.02002 = phi i32 [ 0, %for.end788 ], [ %cr_cbp_tmp.3, %for.inc1170 ]
  %div843 = sdiv i32 %n2.22004, 4
  %mul844 = shl i32 %div843, 1
  %shr1087 = ashr exact i32 %n2.22004, 1
  %add1086 = add i32 %add1089, %shr1087
  br label %for.body842

for.body842:                                      ; preds = %for.cond839.preheader, %for.end1164
  %139 = phi %struct.ImageParameters* [ %138, %for.cond839.preheader ], [ %171, %for.end1164 ]
  %n1.22001 = phi i32 [ 0, %for.cond839.preheader ], [ %add1168, %for.end1164 ]
  %cr_cbp_tmp.11999 = phi i32 [ %cr_cbp_tmp.02002, %for.cond839.preheader ], [ %cr_cbp_tmp.3, %for.end1164 ]
  %div845 = sdiv i32 %n1.22001, 4
  %add846 = add nsw i32 %mul844, %div845
  %idxprom847 = sext i32 %add846 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %139, i64 0, i32 47
  %140 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx850 = getelementptr inbounds i32**** %140, i64 %idxprom849
  %141 = load i32**** %arrayidx850, align 8, !tbaa !0
  %arrayidx851 = getelementptr inbounds i32*** %141, i64 %idxprom847
  %142 = load i32*** %arrayidx851, align 8, !tbaa !0
  %143 = load i32** %142, align 8, !tbaa !0
  %arrayidx859 = getelementptr inbounds i32** %142, i64 1
  %144 = load i32** %arrayidx859, align 8, !tbaa !0
  %shr1088 = ashr exact i32 %n1.22001, 2
  %add1090 = add i32 %add1086, %shr1088
  %shl1091 = shl i32 1, %add1090
  %conv1092 = sext i32 %shl1091 to i64
  br label %for.body863

for.body863:                                      ; preds = %if.end1128, %for.body842
  %145 = phi %struct.ImageParameters* [ %139, %for.body842 ], [ %171, %if.end1128 ]
  %indvars.iv2070 = phi i64 [ 1, %for.body842 ], [ %indvars.iv.next2071, %if.end1128 ]
  %scan_pos.21996 = phi i32 [ 0, %for.body842 ], [ %scan_pos.3, %if.end1128 ]
  %run.21995 = phi i32 [ -1, %for.body842 ], [ %run.3, %if.end1128 ]
  %cr_cbp_tmp.21993 = phi i32 [ %cr_cbp_tmp.11999, %for.body842 ], [ %cr_cbp_tmp.3, %if.end1128 ]
  %field_picture = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 100
  %146 = load i32* %field_picture, align 4, !tbaa !3
  %tobool = icmp eq i32 %146, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end885

lor.lhs.false:                                    ; preds = %for.body863
  %147 = load i32* @mb_adaptive, align 4, !tbaa !3
  %tobool864 = icmp eq i32 %147, 0
  br i1 %tobool864, label %if.else876, label %land.lhs.true865

land.lhs.true865:                                 ; preds = %lor.lhs.false
  %field_mode = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 81
  %148 = load i32* %field_mode, align 4, !tbaa !3
  %tobool866 = icmp eq i32 %148, 0
  br i1 %tobool866, label %if.else876, label %if.end885

if.else876:                                       ; preds = %land.lhs.true865, %lor.lhs.false
  br label %if.end885

if.end885:                                        ; preds = %for.body863, %land.lhs.true865, %if.else876
  %FIELD_SCAN.pn = phi [16 x [2 x i8]]* [ @SNGL_SCAN, %if.else876 ], [ @FIELD_SCAN, %land.lhs.true865 ], [ @FIELD_SCAN, %for.body863 ]
  %i.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv2070, i64 0
  %j.5.in.in = getelementptr inbounds [16 x [2 x i8]]* %FIELD_SCAN.pn, i64 0, i64 %indvars.iv2070, i64 1
  %i.5.in = load i8* %i.5.in.in, align 2
  %j.5.in = load i8* %j.5.in.in, align 1
  %i.5 = zext i8 %i.5.in to i32
  %j.5 = zext i8 %j.5.in to i32
  %inc886 = add nsw i32 %run.21995, 1
  %add887 = add nsw i32 %j.5, %n2.22004
  %idxprom888 = sext i32 %add887 to i64
  %add889 = add nsw i32 %i.5, %n1.22001
  %idxprom890 = sext i32 %add889 to i64
  %arrayidx892 = getelementptr inbounds [8 x [8 x i32]]* %predicted_chroma_block, i64 0, i64 %idxprom890, i64 %idxprom888
  %149 = load i32* %arrayidx892, align 4, !tbaa !3
  %ispos = icmp sgt i32 %149, -1
  %neg = sub i32 0, %149
  %150 = select i1 %ispos, i32 %149, i32 %neg
  %idxprom894 = zext i8 %j.5.in to i64
  %idxprom895 = zext i8 %i.5.in to i64
  %arrayidx899 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom590, i64 %idxprom895, i64 %idxprom894
  %151 = load i32* %arrayidx899, align 4, !tbaa !3
  %mul900 = mul nsw i32 %150, %151
  %add901 = add nsw i32 %mul900, %div94
  %shr902 = ashr i32 %add901, %add92
  %shl903 = shl i32 %shr902, %add92
  %div910 = sdiv i32 %shl903, %151
  %arrayidx917 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888
  %152 = load i32* %arrayidx917, align 4, !tbaa !3
  %call924 = call i32 @sign(i32 %div910, i32 %149) #3
  %sub925 = sub nsw i32 %152, %call924
  %ispos1919 = icmp sgt i32 %sub925, -1
  %neg1920 = sub i32 0, %sub925
  %153 = select i1 %ispos1919, i32 %sub925, i32 %neg1920
  %arrayidx932 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894
  %154 = load i32* %arrayidx932, align 4, !tbaa !3
  %mul933 = mul nsw i32 %153, %154
  %add934 = add nsw i32 %mul933, %div67
  %shr935 = ashr i32 %add934, %add66
  %155 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx942 = getelementptr inbounds %struct.ImageParameters* %155, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888
  %156 = load i32* %arrayidx942, align 4, !tbaa !3
  %sub949 = sub i32 %156, %149
  %ispos1921 = icmp sgt i32 %sub949, -1
  %neg1922 = sub i32 0, %sub949
  %157 = select i1 %ispos1921, i32 %sub949, i32 %neg1922
  %mul957 = mul nsw i32 %157, %154
  %add958 = add nsw i32 %mul957, %div67
  %shr959 = ashr i32 %add958, %add66
  %cmp960 = icmp ne i32 %shr935, %shr959
  %cmp963 = icmp ne i32 %shr935, 0
  %or.cond1451 = and i1 %cmp960, %cmp963
  %cmp966 = icmp ne i32 %shr959, 0
  %or.cond1452 = and i1 %or.cond1451, %cmp966
  br i1 %or.cond1452, label %if.then968, label %if.else1063

if.then968:                                       ; preds = %if.end885
  %call976 = call i32 @sign(i32 %shr935, i32 %sub925) #3
  %arrayidx982 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894
  %158 = load i32* %arrayidx982, align 4, !tbaa !3
  %mul983 = mul nsw i32 %158, %call976
  %arrayidx987 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom895, i64 %idxprom894
  %159 = load i32* %arrayidx987, align 4, !tbaa !3
  %mul988 = mul nsw i32 %mul983, %159
  %shl989 = shl i32 %mul988, %div551955
  %shr990 = ashr i32 %shl989, 6
  %sub998 = sub i32 %sub949, %shr990
  %conv999 = sitofp i32 %sub998 to double
  call void @levrun_linfo_inter(i32 %shr935, i32 %inc886, i32* %len, i32* %info) #3
  %mul1000 = fmul double %conv999, %conv999
  %160 = load i32* %len, align 4, !tbaa !3
  %conv1001 = sitofp i32 %160 to double
  %mul1002 = fmul double %mul9, %conv1001
  %add1003 = fadd double %mul1002, %mul1000
  %161 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1010 = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888
  %162 = load i32* %arrayidx1010, align 4, !tbaa !3
  %call1011 = call i32 @sign(i32 %shr959, i32 %sub949) #3
  %mul1018 = mul nsw i32 %158, %call1011
  %mul1023 = mul nsw i32 %mul1018, %159
  %shl1024 = shl i32 %mul1023, %div551955
  %shr1025 = ashr i32 %shl1024, 6
  %sub1026 = sub i32 %162, %149
  %sub1033 = sub i32 %sub1026, %shr1025
  %conv1034 = sitofp i32 %sub1033 to double
  call void @levrun_linfo_inter(i32 %shr959, i32 %inc886, i32* %len, i32* %info) #3
  %mul1035 = fmul double %conv1034, %conv1034
  %163 = load i32* %len, align 4, !tbaa !3
  %conv1036 = sitofp i32 %163 to double
  %mul1037 = fmul double %mul9, %conv1036
  %add1038 = fadd double %mul1037, %mul1035
  %cmp1039 = fcmp oeq double %add1003, %add1038
  br i1 %cmp1039, label %if.then1041, label %if.else1050

if.then1041:                                      ; preds = %if.then968
  %ispos1925 = icmp sgt i32 %shr935, -1
  %neg1926 = sub i32 0, %shr935
  %164 = select i1 %ispos1925, i32 %shr935, i32 %neg1926
  %ispos1927 = icmp sgt i32 %shr959, -1
  %neg1928 = sub i32 0, %shr959
  %165 = select i1 %ispos1927, i32 %shr959, i32 %neg1928
  %cmp1044 = icmp slt i32 %164, %165
  br label %if.end1056

if.else1050:                                      ; preds = %if.then968
  %cmp1051 = fcmp olt double %add1003, %add1038
  br label %if.end1056

if.end1056:                                       ; preds = %if.else1050, %if.then1041
  %cmp1044.sink = phi i1 [ %cmp1044, %if.then1041 ], [ %cmp1051, %if.else1050 ]
  %cond1049 = select i1 %cmp1044.sink, i32 %shr935, i32 %shr959
  %cmp1057 = icmp eq i32 %cond1049, %shr935
  %cond1062 = select i1 %cmp1057, i32 %sub925, i32 %sub949
  br label %if.end1081

if.else1063:                                      ; preds = %if.end885
  %cmp1064 = icmp eq i32 %shr935, %shr959
  br i1 %cmp1064, label %if.end1081, label %if.else1067

if.else1067:                                      ; preds = %if.else1063
  %cmp1068 = icmp eq i32 %shr935, 0
  %cond1073 = select i1 %cmp1068, i32 0, i32 %shr959
  %cond1079 = select i1 %cmp1068, i32 %sub925, i32 %sub949
  br label %if.end1081

if.end1081:                                       ; preds = %if.else1063, %if.else1067, %if.end1056
  %level.4 = phi i32 [ %cond1049, %if.end1056 ], [ %cond1073, %if.else1067 ], [ %shr935, %if.else1063 ]
  %c_err.1 = phi i32 [ %cond1062, %if.end1056 ], [ %cond1079, %if.else1067 ], [ %sub925, %if.else1063 ]
  %cmp1082 = icmp eq i32 %level.4, 0
  br i1 %cmp1082, label %if.end1128, label %if.then1084

if.then1084:                                      ; preds = %if.end1081
  %166 = load i64* %cbp_blk, align 8, !tbaa !5
  %or1094 = or i64 %166, %conv1092
  store i64 %or1094, i64* %cbp_blk, align 8, !tbaa !5
  %call1107 = call i32 @sign(i32 %level.4, i32 %c_err.1) #3
  %idxprom1108 = sext i32 %scan_pos.21996 to i64
  %arrayidx1109 = getelementptr inbounds i32* %143, i64 %idxprom1108
  store i32 %call1107, i32* %arrayidx1109, align 4, !tbaa !3
  %arrayidx1111 = getelementptr inbounds i32* %144, i64 %idxprom1108
  store i32 %inc886, i32* %arrayidx1111, align 4, !tbaa !3
  %inc1112 = add nsw i32 %scan_pos.21996, 1
  %call1113 = call i32 @sign(i32 %level.4, i32 %c_err.1) #3
  %arrayidx1119 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom612, i64 %idxprom895, i64 %idxprom894
  %167 = load i32* %arrayidx1119, align 4, !tbaa !3
  %mul1120 = mul nsw i32 %167, %call1113
  %arrayidx1124 = getelementptr inbounds [4 x [4 x i32]]* @A, i64 0, i64 %idxprom895, i64 %idxprom894
  %168 = load i32* %arrayidx1124, align 4, !tbaa !3
  %mul1125 = mul nsw i32 %mul1120, %168
  %shl1126 = shl i32 %mul1125, %div551955
  %shr1127 = ashr i32 %shl1126, 6
  br label %if.end1128

if.end1128:                                       ; preds = %if.end1081, %if.then1084
  %cr_cbp_tmp.3 = phi i32 [ 2, %if.then1084 ], [ %cr_cbp_tmp.21993, %if.end1081 ]
  %run.3 = phi i32 [ -1, %if.then1084 ], [ %inc886, %if.end1081 ]
  %scan_pos.3 = phi i32 [ %inc1112, %if.then1084 ], [ %scan_pos.21996, %if.end1081 ]
  %ilev.1 = phi i32 [ %shr1127, %if.then1084 ], [ 0, %if.end1081 ]
  %add1135 = add nsw i32 %149, %ilev.1
  %ispos1923 = icmp sgt i32 %add1135, -1
  %neg1924 = sub i32 0, %add1135
  %169 = select i1 %ispos1923, i32 %add1135, i32 %neg1924
  %mul1143 = mul nsw i32 %169, %151
  %add1144 = add nsw i32 %mul1143, %div94
  %shr1145 = ashr i32 %add1144, %add92
  %call1146 = call i32 @sign(i32 %shr1145, i32 %add1135) #3
  %arrayidx1152 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom590, i64 %idxprom895, i64 %idxprom894
  %170 = load i32* %arrayidx1152, align 4, !tbaa !3
  %mul1153 = mul nsw i32 %170, %call1146
  %shl1154 = shl i32 %mul1153, %div791957
  %171 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx1161 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %idxprom890, i64 %idxprom888
  store i32 %shl1154, i32* %arrayidx1161, align 4, !tbaa !3
  %indvars.iv.next2071 = add i64 %indvars.iv2070, 1
  %lftr.wideiv2072 = trunc i64 %indvars.iv.next2071 to i32
  %exitcond2073 = icmp eq i32 %lftr.wideiv2072, 16
  br i1 %exitcond2073, label %for.end1164, label %for.body863

for.end1164:                                      ; preds = %if.end1128
  %idxprom1165 = sext i32 %scan_pos.3 to i64
  %arrayidx1166 = getelementptr inbounds i32* %143, i64 %idxprom1165
  store i32 0, i32* %arrayidx1166, align 4, !tbaa !3
  %add1168 = add nsw i32 %n1.22001, 4
  %cmp840 = icmp slt i32 %add1168, 5
  br i1 %cmp840, label %for.body842, label %for.inc1170

for.inc1170:                                      ; preds = %for.end1164
  %add1171 = add nsw i32 %n2.22004, 4
  %cmp836 = icmp slt i32 %add1171, 5
  br i1 %cmp836, label %for.cond839.preheader, label %for.end1172

for.end1172:                                      ; preds = %for.inc1170
  %cmp1173 = icmp eq i32 %cr_cbp_tmp.3, 2
  %arrayidx1208 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx1212 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx1217 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx1222 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 156
  br label %for.cond1181.preheader

for.cond1181.preheader:                           ; preds = %for.end1172, %for.inc1419
  %indvars.iv2068 = phi i64 [ 0, %for.end1172 ], [ %indvars.iv.next2069, %for.inc1419 ]
  br label %for.cond1185.preheader

for.cond1422.preheader:                           ; preds = %for.inc1419
  %.cr_cbp.addr.0 = select i1 %cmp1173, i32 2, i32 %cr_cbp.addr.1
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 35
  %172 = load i32* %pix_c_x, align 4, !tbaa !3
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 36
  %173 = load i32* %pix_c_y, align 4, !tbaa !3
  %idxprom1440 = sext i32 %uv to i64
  %174 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %174, i64 0, i32 30
  %175 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx1441 = getelementptr inbounds i16*** %175, i64 %idxprom1440
  %176 = load i16*** %arrayidx1441, align 8, !tbaa !0
  %177 = sext i32 %172 to i64
  %178 = sext i32 %173 to i64
  br label %for.cond1426.preheader

for.cond1185.preheader:                           ; preds = %for.cond1181.preheader, %for.inc1416
  %indvars.iv2066 = phi i64 [ 0, %for.cond1181.preheader ], [ %indvars.iv.next2067, %for.inc1416 ]
  br label %for.cond1189.preheader

for.cond1189.preheader:                           ; preds = %for.inc1255, %for.cond1185.preheader
  %indvars.iv2041 = phi i64 [ 0, %for.cond1185.preheader ], [ %indvars.iv.next2042, %for.inc1255 ]
  %179 = add nsw i64 %indvars.iv2041, %indvars.iv2068
  br label %for.body1192

for.body1192:                                     ; preds = %for.body1192, %for.cond1189.preheader
  %indvars.iv2029 = phi i64 [ 0, %for.cond1189.preheader ], [ %indvars.iv.next2030, %for.body1192 ]
  %180 = add nsw i64 %indvars.iv2029, %indvars.iv2066
  %arrayidx1199 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %180, i64 %179
  %181 = load i32* %arrayidx1199, align 4, !tbaa !3
  %arrayidx1201 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2029
  store i32 %181, i32* %arrayidx1201, align 4, !tbaa !3
  %indvars.iv.next2030 = add i64 %indvars.iv2029, 1
  %lftr.wideiv2032 = trunc i64 %indvars.iv.next2030 to i32
  %exitcond2033 = icmp eq i32 %lftr.wideiv2032, 4
  br i1 %exitcond2033, label %for.end1204, label %for.body1192

for.end1204:                                      ; preds = %for.body1192
  %182 = load i64* %33, align 16
  %183 = trunc i64 %182 to i32
  %184 = load i64* %77, align 8
  %185 = trunc i64 %184 to i32
  %add1207 = add nsw i32 %185, %183
  store i32 %add1207, i32* %arrayidx1208, align 16, !tbaa !3
  %sub1211 = sub nsw i32 %183, %185
  store i32 %sub1211, i32* %arrayidx1212, align 4, !tbaa !3
  %186 = lshr i64 %182, 32
  %187 = trunc i64 %186 to i32
  %shr1214 = ashr i32 %187, 1
  %188 = lshr i64 %184, 32
  %189 = trunc i64 %188 to i32
  %sub1216 = sub nsw i32 %shr1214, %189
  store i32 %sub1216, i32* %arrayidx1217, align 8, !tbaa !3
  %shr1220 = ashr i32 %189, 1
  %add1221 = add nsw i32 %shr1220, %187
  store i32 %add1221, i32* %arrayidx1222, align 4, !tbaa !3
  br label %for.body1226

for.body1226:                                     ; preds = %for.body1226.for.body1226_crit_edge, %for.end1204
  %190 = phi i32 [ %add1207, %for.end1204 ], [ %.pre2164, %for.body1226.for.body1226_crit_edge ]
  %indvars.iv2034 = phi i64 [ 0, %for.end1204 ], [ %indvars.iv.next2035, %for.body1226.for.body1226_crit_edge ]
  %191 = sub nsw i64 3, %indvars.iv2034
  %arrayidx1231 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %191
  %192 = load i32* %arrayidx1231, align 4, !tbaa !3
  %add1232 = add nsw i32 %192, %190
  %193 = add nsw i64 %indvars.iv2034, %indvars.iv2066
  %arrayidx1239 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %193, i64 %179
  store i32 %add1232, i32* %arrayidx1239, align 4, !tbaa !3
  %sub1244 = sub nsw i32 %190, %192
  %194 = add nsw i64 %191, %indvars.iv2066
  %arrayidx1251 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %194, i64 %179
  store i32 %sub1244, i32* %arrayidx1251, align 4, !tbaa !3
  %indvars.iv.next2035 = add i64 %indvars.iv2034, 1
  %lftr.wideiv2039 = trunc i64 %indvars.iv.next2035 to i32
  %exitcond2040 = icmp eq i32 %lftr.wideiv2039, 2
  br i1 %exitcond2040, label %for.inc1255, label %for.body1226.for.body1226_crit_edge

for.body1226.for.body1226_crit_edge:              ; preds = %for.body1226
  %arrayidx1229.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next2035
  %.pre2164 = load i32* %arrayidx1229.phi.trans.insert, align 4, !tbaa !3
  br label %for.body1226

for.inc1255:                                      ; preds = %for.body1226
  %indvars.iv.next2042 = add i64 %indvars.iv2041, 1
  %lftr.wideiv2045 = trunc i64 %indvars.iv.next2042 to i32
  %exitcond2046 = icmp eq i32 %lftr.wideiv2045, 4
  br i1 %exitcond2046, label %for.cond1262.preheader, label %for.cond1189.preheader

for.cond1262.preheader:                           ; preds = %for.inc1255, %for.inc1413
  %indvars.iv2060 = phi i64 [ %indvars.iv.next2061, %for.inc1413 ], [ 0, %for.inc1255 ]
  %195 = add nsw i64 %indvars.iv2060, %indvars.iv2066
  br label %for.body1265

for.body1265:                                     ; preds = %for.body1265, %for.cond1262.preheader
  %indvars.iv2047 = phi i64 [ 0, %for.cond1262.preheader ], [ %indvars.iv.next2048, %for.body1265 ]
  %196 = add nsw i64 %indvars.iv2047, %indvars.iv2068
  %arrayidx1272 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %196
  %197 = load i32* %arrayidx1272, align 4, !tbaa !3
  %arrayidx1274 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv2047
  store i32 %197, i32* %arrayidx1274, align 4, !tbaa !3
  %indvars.iv.next2048 = add i64 %indvars.iv2047, 1
  %lftr.wideiv2050 = trunc i64 %indvars.iv.next2048 to i32
  %exitcond2051 = icmp eq i32 %lftr.wideiv2050, 4
  br i1 %exitcond2051, label %for.end1277, label %for.body1265

for.end1277:                                      ; preds = %for.body1265
  %198 = load i64* %33, align 16
  %199 = trunc i64 %198 to i32
  %200 = load i64* %77, align 8
  %201 = trunc i64 %200 to i32
  %add1280 = add nsw i32 %201, %199
  store i32 %add1280, i32* %arrayidx1208, align 16, !tbaa !3
  %sub1284 = sub nsw i32 %199, %201
  store i32 %sub1284, i32* %arrayidx1212, align 4, !tbaa !3
  %202 = lshr i64 %198, 32
  %203 = trunc i64 %202 to i32
  %shr1287 = ashr i32 %203, 1
  %204 = lshr i64 %200, 32
  %205 = trunc i64 %204 to i32
  %sub1289 = sub nsw i32 %shr1287, %205
  store i32 %sub1289, i32* %arrayidx1217, align 8, !tbaa !3
  %shr1293 = ashr i32 %205, 1
  %add1294 = add nsw i32 %shr1293, %203
  store i32 %add1294, i32* %arrayidx1222, align 4, !tbaa !3
  br label %for.body1299

for.body1299:                                     ; preds = %for.body1299.for.body1299_crit_edge, %for.end1277
  %206 = phi i32 [ %add1280, %for.end1277 ], [ %.pre2165, %for.body1299.for.body1299_crit_edge ]
  %indvars.iv2053 = phi i64 [ 0, %for.end1277 ], [ %indvars.iv.next2054, %for.body1299.for.body1299_crit_edge ]
  %207 = sub nsw i64 3, %indvars.iv2053
  %208 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %arrayidx1304 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %207
  %209 = load i32* %arrayidx1304, align 4, !tbaa !3
  %add1305 = add i32 %206, 32
  %add1306 = add i32 %add1305, %209
  %shr1307 = ashr i32 %add1306, 6
  %cmp1308 = icmp slt i32 %shr1307, 0
  %.shr1307 = select i1 %cmp1308, i32 0, i32 %shr1307
  %cmp1321 = icmp slt i32 %208, %.shr1307
  %..shr1307 = select i1 %cmp1321, i32 %208, i32 %.shr1307
  %210 = add nsw i64 %indvars.iv2053, %indvars.iv2068
  %arrayidx1354 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %210
  store i32 %..shr1307, i32* %arrayidx1354, align 4, !tbaa !3
  %211 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %add1361 = sub i32 %add1305, %209
  %shr1362 = ashr i32 %add1361, 6
  %cmp1363 = icmp slt i32 %shr1362, 0
  %.shr1362 = select i1 %cmp1363, i32 0, i32 %shr1362
  %cmp1376 = icmp slt i32 %211, %.shr1362
  %cond1402 = select i1 %cmp1376, i32 %211, i32 %.shr1362
  %212 = add nsw i64 %207, %indvars.iv2068
  %arrayidx1409 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %195, i64 %212
  store i32 %cond1402, i32* %arrayidx1409, align 4, !tbaa !3
  %indvars.iv.next2054 = add i64 %indvars.iv2053, 1
  %lftr.wideiv2058 = trunc i64 %indvars.iv.next2054 to i32
  %exitcond2059 = icmp eq i32 %lftr.wideiv2058, 2
  br i1 %exitcond2059, label %for.inc1413, label %for.body1299.for.body1299_crit_edge

for.body1299.for.body1299_crit_edge:              ; preds = %for.body1299
  %arrayidx1302.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next2054
  %.pre2165 = load i32* %arrayidx1302.phi.trans.insert, align 4, !tbaa !3
  br label %for.body1299

for.inc1413:                                      ; preds = %for.body1299
  %indvars.iv.next2061 = add i64 %indvars.iv2060, 1
  %lftr.wideiv2064 = trunc i64 %indvars.iv.next2061 to i32
  %exitcond2065 = icmp eq i32 %lftr.wideiv2064, 4
  br i1 %exitcond2065, label %for.inc1416, label %for.cond1262.preheader

for.inc1416:                                      ; preds = %for.inc1413
  %indvars.iv.next2067 = add i64 %indvars.iv2066, 4
  %213 = trunc i64 %indvars.iv.next2067 to i32
  %cmp1182 = icmp slt i32 %213, 5
  br i1 %cmp1182, label %for.cond1185.preheader, label %for.inc1419

for.inc1419:                                      ; preds = %for.inc1416
  %indvars.iv.next2069 = add i64 %indvars.iv2068, 4
  %214 = trunc i64 %indvars.iv.next2069 to i32
  %cmp1178 = icmp slt i32 %214, 5
  br i1 %cmp1178, label %for.cond1181.preheader, label %for.cond1422.preheader

for.cond1426.preheader:                           ; preds = %for.inc1447, %for.cond1422.preheader
  %indvars.iv2024 = phi i64 [ 0, %for.cond1422.preheader ], [ %indvars.iv.next2025, %for.inc1447 ]
  %215 = add nsw i64 %178, %indvars.iv2024
  %arrayidx1442 = getelementptr inbounds i16** %176, i64 %215
  %216 = load i16** %arrayidx1442, align 8, !tbaa !0
  br label %for.body1429

for.body1429:                                     ; preds = %for.body1429, %for.cond1426.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1426.preheader ], [ %indvars.iv.next, %for.body1429 ]
  %arrayidx1434 = getelementptr inbounds %struct.ImageParameters* %171, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv2024
  %217 = load i32* %arrayidx1434, align 4, !tbaa !3
  %conv1435 = trunc i32 %217 to i16
  %218 = add nsw i64 %177, %indvars.iv
  %arrayidx1443 = getelementptr inbounds i16* %216, i64 %218
  store i16 %conv1435, i16* %arrayidx1443, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc1447, label %for.body1429

for.inc1447:                                      ; preds = %for.body1429
  %indvars.iv.next2025 = add i64 %indvars.iv2024, 1
  %lftr.wideiv2027 = trunc i64 %indvars.iv.next2025 to i32
  %exitcond2028 = icmp eq i32 %lftr.wideiv2027, 8
  br i1 %exitcond2028, label %for.end1449, label %for.cond1426.preheader

for.end1449:                                      ; preds = %for.inc1447
  call void @llvm.lifetime.end(i64 256, i8* %0) #1
  ret i32 %.cr_cbp.addr.0
}

; Function Attrs: optsize
declare void @levrun_linfo_c2x2(i32, i32, i32*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @copyblock_sp(i32 %block_x, i32 %block_y) #0 {
entry:
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %3 = bitcast [4 x [4 x i32]]* %predicted_block to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %qpsp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 4
  %4 = load i32* %qpsp, align 4, !tbaa !3
  %div = sdiv i32 %4, 6
  %add = add nsw i32 %div, 15
  %shl = shl i32 1, %add
  %5 = sext i32 %block_x to i64
  %6 = sext i32 %block_y to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc17, %entry
  %indvars.iv624 = phi i64 [ 0, %entry ], [ %indvars.iv.next625, %for.inc17 ]
  %7 = add nsw i64 %indvars.iv624, %6
  br label %for.body6

for.cond20.preheader:                             ; preds = %for.inc17
  %rem = srem i32 %4, 6
  %div3 = sdiv i32 %shl, 2
  %arrayidx66 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 3
  %arrayidx67 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 2
  br label %for.cond24.preheader

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv619 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next620, %for.body6 ]
  %8 = add nsw i64 %indvars.iv619, %5
  %arrayidx12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 45, i64 %8, i64 %7
  %9 = load i16* %arrayidx12, align 2, !tbaa !4
  %conv = zext i16 %9 to i32
  %arrayidx16 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv619, i64 %indvars.iv624
  store i32 %conv, i32* %arrayidx16, align 4, !tbaa !3
  %indvars.iv.next620 = add i64 %indvars.iv619, 1
  %lftr.wideiv622 = trunc i64 %indvars.iv.next620 to i32
  %exitcond623 = icmp eq i32 %lftr.wideiv622, 4
  br i1 %exitcond623, label %for.inc17, label %for.body6

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next625 = add i64 %indvars.iv624, 1
  %lftr.wideiv627 = trunc i64 %indvars.iv.next625 to i32
  %exitcond628 = icmp eq i32 %lftr.wideiv627, 4
  br i1 %exitcond628, label %for.cond20.preheader, label %for.cond4.preheader

for.cond24.preheader:                             ; preds = %for.end53, %for.cond20.preheader
  %indvars.iv615 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next616, %for.end53 ]
  br label %for.body27

for.body27:                                       ; preds = %for.body27, %for.cond24.preheader
  %indvars.iv610 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next611, %for.body27 ]
  %10 = sub nsw i64 3, %indvars.iv610
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv610, i64 %indvars.iv615
  %11 = load i32* %arrayidx32, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %10, i64 %indvars.iv615
  %12 = load i32* %arrayidx36, align 4, !tbaa !3
  %add37 = add nsw i32 %12, %11
  %arrayidx39 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv610
  store i32 %add37, i32* %arrayidx39, align 4, !tbaa !3
  %sub48 = sub nsw i32 %11, %12
  %arrayidx50 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %10
  store i32 %sub48, i32* %arrayidx50, align 4, !tbaa !3
  %indvars.iv.next611 = add i64 %indvars.iv610, 1
  %lftr.wideiv613 = trunc i64 %indvars.iv.next611 to i32
  %exitcond614 = icmp eq i32 %lftr.wideiv613, 2
  br i1 %exitcond614, label %for.end53, label %for.body27

for.end53:                                        ; preds = %for.body27
  %13 = bitcast [4 x i32]* %m5 to i64*
  %14 = load i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %add56 = add nsw i32 %17, %15
  %arrayidx59 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 0, i64 %indvars.iv615
  store i32 %add56, i32* %arrayidx59, align 4, !tbaa !3
  %sub62 = sub nsw i32 %15, %17
  %arrayidx65 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 2, i64 %indvars.iv615
  store i32 %sub62, i32* %arrayidx65, align 4, !tbaa !3
  %18 = load i32* %arrayidx66, align 4, !tbaa !3
  %mul = shl i32 %18, 1
  %19 = bitcast i32* %arrayidx67 to i64*
  %20 = load i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %add68 = add nsw i32 %mul, %21
  %arrayidx71 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 1, i64 %indvars.iv615
  store i32 %add68, i32* %arrayidx71, align 4, !tbaa !3
  %22 = lshr i64 %20, 32
  %23 = trunc i64 %22 to i32
  %mul74 = shl nsw i32 %21, 1
  %sub75 = sub nsw i32 %23, %mul74
  %arrayidx78 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 3, i64 %indvars.iv615
  store i32 %sub75, i32* %arrayidx78, align 4, !tbaa !3
  %indvars.iv.next616 = add i64 %indvars.iv615, 1
  %lftr.wideiv617 = trunc i64 %indvars.iv.next616 to i32
  %exitcond618 = icmp eq i32 %lftr.wideiv617, 4
  br i1 %exitcond618, label %for.cond86.preheader, label %for.cond24.preheader

for.cond86.preheader:                             ; preds = %for.end53, %for.end115
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %for.end115 ], [ 0, %for.end53 ]
  br label %for.body89

for.cond145.preheader:                            ; preds = %for.end115
  %idxprom159 = sext i32 %rem to i64
  br label %for.cond149.preheader

for.body89:                                       ; preds = %for.body89, %for.cond86.preheader
  %indvars.iv601 = phi i64 [ 0, %for.cond86.preheader ], [ %indvars.iv.next602, %for.body89 ]
  %24 = sub nsw i64 3, %indvars.iv601
  %arrayidx94 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 %indvars.iv601
  %25 = load i32* %arrayidx94, align 4, !tbaa !3
  %arrayidx98 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 %24
  %26 = load i32* %arrayidx98, align 4, !tbaa !3
  %add99 = add nsw i32 %26, %25
  %arrayidx101 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv601
  store i32 %add99, i32* %arrayidx101, align 4, !tbaa !3
  %sub110 = sub nsw i32 %25, %26
  %arrayidx112 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %24
  store i32 %sub110, i32* %arrayidx112, align 4, !tbaa !3
  %indvars.iv.next602 = add i64 %indvars.iv601, 1
  %lftr.wideiv604 = trunc i64 %indvars.iv.next602 to i32
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 2
  br i1 %exitcond605, label %for.end115, label %for.body89

for.end115:                                       ; preds = %for.body89
  %27 = load i64* %13, align 16
  %28 = trunc i64 %27 to i32
  %29 = lshr i64 %27, 32
  %30 = trunc i64 %29 to i32
  %add118 = add nsw i32 %30, %28
  %arrayidx121 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 0
  store i32 %add118, i32* %arrayidx121, align 16, !tbaa !3
  %sub124 = sub nsw i32 %28, %30
  %arrayidx127 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 2
  store i32 %sub124, i32* %arrayidx127, align 8, !tbaa !3
  %31 = load i32* %arrayidx66, align 4, !tbaa !3
  %mul129 = shl i32 %31, 1
  %32 = load i64* %19, align 8
  %33 = trunc i64 %32 to i32
  %add131 = add nsw i32 %mul129, %33
  %arrayidx134 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 1
  store i32 %add131, i32* %arrayidx134, align 4, !tbaa !3
  %34 = lshr i64 %32, 32
  %35 = trunc i64 %34 to i32
  %mul137 = shl nsw i32 %33, 1
  %sub138 = sub nsw i32 %35, %mul137
  %arrayidx141 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv606, i64 3
  store i32 %sub138, i32* %arrayidx141, align 4, !tbaa !3
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %lftr.wideiv608 = trunc i64 %indvars.iv.next607 to i32
  %exitcond609 = icmp eq i32 %lftr.wideiv608, 4
  br i1 %exitcond609, label %for.cond145.preheader, label %for.cond86.preheader

for.cond149.preheader:                            ; preds = %for.inc185, %for.cond145.preheader
  %indvars.iv597 = phi i64 [ 0, %for.cond145.preheader ], [ %indvars.iv.next598, %for.inc185 ]
  br label %for.body152

for.cond188.preheader:                            ; preds = %for.inc185
  %arrayidx209 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 0
  %arrayidx213 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 1
  %arrayidx218 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 2
  %arrayidx223 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 3
  br label %for.cond192.preheader

for.body152:                                      ; preds = %for.body152, %for.cond149.preheader
  %indvars.iv593 = phi i64 [ 0, %for.cond149.preheader ], [ %indvars.iv.next594, %for.body152 ]
  %arrayidx156 = getelementptr inbounds [4 x [4 x i32]]* %predicted_block, i64 0, i64 %indvars.iv593, i64 %indvars.iv597
  %36 = load i32* %arrayidx156, align 4, !tbaa !3
  %ispos = icmp sgt i32 %36, -1
  %neg = sub i32 0, %36
  %37 = select i1 %ispos, i32 %36, i32 %neg
  %arrayidx162 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom159, i64 %indvars.iv593, i64 %indvars.iv597
  %38 = load i32* %arrayidx162, align 4, !tbaa !3
  %mul163 = mul nsw i32 %37, %38
  %add164 = add nsw i32 %mul163, %div3
  %shr = ashr i32 %add164, %add
  %call169 = call i32 @sign(i32 %shr, i32 %36) #3
  %arrayidx175 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %idxprom159, i64 %indvars.iv593, i64 %indvars.iv597
  %39 = load i32* %arrayidx175, align 4, !tbaa !3
  %mul176 = mul nsw i32 %39, %call169
  %shl177 = shl i32 %mul176, %div
  %40 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv593, i64 %indvars.iv597
  store i32 %shl177, i32* %arrayidx181, align 4, !tbaa !3
  %indvars.iv.next594 = add i64 %indvars.iv593, 1
  %lftr.wideiv595 = trunc i64 %indvars.iv.next594 to i32
  %exitcond596 = icmp eq i32 %lftr.wideiv595, 4
  br i1 %exitcond596, label %for.inc185, label %for.body152

for.inc185:                                       ; preds = %for.body152
  %indvars.iv.next598 = add i64 %indvars.iv597, 1
  %lftr.wideiv599 = trunc i64 %indvars.iv.next598 to i32
  %exitcond600 = icmp eq i32 %lftr.wideiv599, 4
  br i1 %exitcond600, label %for.cond188.preheader, label %for.cond149.preheader

for.cond192.preheader:                            ; preds = %for.inc252, %for.cond188.preheader
  %indvars.iv589 = phi i64 [ 0, %for.cond188.preheader ], [ %indvars.iv.next590, %for.inc252 ]
  br label %for.body195

for.cond255.preheader:                            ; preds = %for.inc252
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 155
  br label %for.cond259.preheader

for.body195:                                      ; preds = %for.body195, %for.cond192.preheader
  %indvars.iv580 = phi i64 [ 0, %for.cond192.preheader ], [ %indvars.iv.next581, %for.body195 ]
  %arrayidx200 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv580, i64 %indvars.iv589
  %41 = load i32* %arrayidx200, align 4, !tbaa !3
  %arrayidx202 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv580
  store i32 %41, i32* %arrayidx202, align 4, !tbaa !3
  %indvars.iv.next581 = add i64 %indvars.iv580, 1
  %lftr.wideiv582 = trunc i64 %indvars.iv.next581 to i32
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 4
  br i1 %exitcond583, label %for.end205, label %for.body195

for.end205:                                       ; preds = %for.body195
  %42 = load i64* %13, align 16
  %43 = trunc i64 %42 to i32
  %44 = load i64* %19, align 8
  %45 = trunc i64 %44 to i32
  %add208 = add nsw i32 %45, %43
  store i32 %add208, i32* %arrayidx209, align 16, !tbaa !3
  %sub212 = sub nsw i32 %43, %45
  store i32 %sub212, i32* %arrayidx213, align 4, !tbaa !3
  %46 = lshr i64 %42, 32
  %47 = trunc i64 %46 to i32
  %shr215 = ashr i32 %47, 1
  %48 = lshr i64 %44, 32
  %49 = trunc i64 %48 to i32
  %sub217 = sub nsw i32 %shr215, %49
  store i32 %sub217, i32* %arrayidx218, align 8, !tbaa !3
  %shr221 = ashr i32 %49, 1
  %add222 = add nsw i32 %shr221, %47
  store i32 %add222, i32* %arrayidx223, align 4, !tbaa !3
  br label %for.body227

for.body227:                                      ; preds = %for.body227.for.body227_crit_edge, %for.end205
  %50 = phi i32 [ %add208, %for.end205 ], [ %.pre, %for.body227.for.body227_crit_edge ]
  %indvars.iv584 = phi i64 [ 0, %for.end205 ], [ %indvars.iv.next585, %for.body227.for.body227_crit_edge ]
  %51 = sub nsw i64 3, %indvars.iv584
  %arrayidx232 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %51
  %52 = load i32* %arrayidx232, align 4, !tbaa !3
  %add233 = add nsw i32 %52, %50
  %arrayidx238 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv584, i64 %indvars.iv589
  store i32 %add233, i32* %arrayidx238, align 4, !tbaa !3
  %sub243 = sub nsw i32 %50, %52
  %arrayidx248 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %51, i64 %indvars.iv589
  store i32 %sub243, i32* %arrayidx248, align 4, !tbaa !3
  %indvars.iv.next585 = add i64 %indvars.iv584, 1
  %lftr.wideiv587 = trunc i64 %indvars.iv.next585 to i32
  %exitcond588 = icmp eq i32 %lftr.wideiv587, 2
  br i1 %exitcond588, label %for.inc252, label %for.body227.for.body227_crit_edge

for.body227.for.body227_crit_edge:                ; preds = %for.body227
  %arrayidx230.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next585
  %.pre = load i32* %arrayidx230.phi.trans.insert, align 4, !tbaa !3
  br label %for.body227

for.inc252:                                       ; preds = %for.body227
  %indvars.iv.next590 = add i64 %indvars.iv589, 1
  %lftr.wideiv591 = trunc i64 %indvars.iv.next590 to i32
  %exitcond592 = icmp eq i32 %lftr.wideiv591, 4
  br i1 %exitcond592, label %for.cond255.preheader, label %for.cond192.preheader

for.cond259.preheader:                            ; preds = %for.inc400, %for.cond255.preheader
  %indvars.iv576 = phi i64 [ 0, %for.cond255.preheader ], [ %indvars.iv.next577, %for.inc400 ]
  br label %for.body262

for.cond403.preheader:                            ; preds = %for.inc400
  %pix_x = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 33
  %53 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 34
  %54 = load i32* %pix_y, align 4, !tbaa !3
  %55 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %55, i64 0, i32 25
  %56 = load i16*** %imgY, align 8, !tbaa !0
  br label %for.cond407.preheader

for.body262:                                      ; preds = %for.body262, %for.cond259.preheader
  %indvars.iv566 = phi i64 [ 0, %for.cond259.preheader ], [ %indvars.iv.next567, %for.body262 ]
  %arrayidx267 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %indvars.iv566
  %57 = load i32* %arrayidx267, align 4, !tbaa !3
  %arrayidx269 = getelementptr inbounds [4 x i32]* %m5, i64 0, i64 %indvars.iv566
  store i32 %57, i32* %arrayidx269, align 4, !tbaa !3
  %indvars.iv.next567 = add i64 %indvars.iv566, 1
  %lftr.wideiv568 = trunc i64 %indvars.iv.next567 to i32
  %exitcond569 = icmp eq i32 %lftr.wideiv568, 4
  br i1 %exitcond569, label %for.end272, label %for.body262

for.end272:                                       ; preds = %for.body262
  %58 = load i64* %13, align 16
  %59 = trunc i64 %58 to i32
  %60 = load i64* %19, align 8
  %61 = trunc i64 %60 to i32
  %add275 = add nsw i32 %61, %59
  store i32 %add275, i32* %arrayidx209, align 16, !tbaa !3
  %sub279 = sub nsw i32 %59, %61
  store i32 %sub279, i32* %arrayidx213, align 4, !tbaa !3
  %62 = lshr i64 %58, 32
  %63 = trunc i64 %62 to i32
  %shr282 = ashr i32 %63, 1
  %64 = lshr i64 %60, 32
  %65 = trunc i64 %64 to i32
  %sub284 = sub nsw i32 %shr282, %65
  store i32 %sub284, i32* %arrayidx218, align 8, !tbaa !3
  %shr288 = ashr i32 %65, 1
  %add289 = add nsw i32 %shr288, %63
  store i32 %add289, i32* %arrayidx223, align 4, !tbaa !3
  br label %for.body294

for.body294:                                      ; preds = %for.body294.for.body294_crit_edge, %for.end272
  %66 = phi i32 [ %add275, %for.end272 ], [ %.pre632, %for.body294.for.body294_crit_edge ]
  %indvars.iv571 = phi i64 [ 0, %for.end272 ], [ %indvars.iv.next572, %for.body294.for.body294_crit_edge ]
  %67 = sub nsw i64 3, %indvars.iv571
  %68 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %arrayidx299 = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %67
  %69 = load i32* %arrayidx299, align 4, !tbaa !3
  %add300 = add i32 %66, 32
  %add301 = add i32 %add300, %69
  %shr302 = ashr i32 %add301, 6
  %cmp303 = icmp slt i32 %shr302, 0
  %.shr302 = select i1 %cmp303, i32 0, i32 %shr302
  %cmp312 = icmp slt i32 %68, %.shr302
  %..shr302 = select i1 %cmp312, i32 %68, i32 %.shr302
  %arrayidx343 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %indvars.iv571
  store i32 %..shr302, i32* %arrayidx343, align 4, !tbaa !3
  %70 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %add350 = sub i32 %add300, %69
  %shr351 = ashr i32 %add350, 6
  %cmp352 = icmp slt i32 %shr351, 0
  %.shr351 = select i1 %cmp352, i32 0, i32 %shr351
  %cmp365 = icmp slt i32 %70, %.shr351
  %cond391 = select i1 %cmp365, i32 %70, i32 %.shr351
  %arrayidx396 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv576, i64 %67
  store i32 %cond391, i32* %arrayidx396, align 4, !tbaa !3
  %indvars.iv.next572 = add i64 %indvars.iv571, 1
  %lftr.wideiv574 = trunc i64 %indvars.iv.next572 to i32
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 2
  br i1 %exitcond575, label %for.inc400, label %for.body294.for.body294_crit_edge

for.body294.for.body294_crit_edge:                ; preds = %for.body294
  %arrayidx297.phi.trans.insert = getelementptr inbounds [4 x i32]* %m6, i64 0, i64 %indvars.iv.next572
  %.pre632 = load i32* %arrayidx297.phi.trans.insert, align 4, !tbaa !3
  br label %for.body294

for.inc400:                                       ; preds = %for.body294
  %indvars.iv.next577 = add i64 %indvars.iv576, 1
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 4
  br i1 %exitcond579, label %for.cond403.preheader, label %for.cond259.preheader

for.cond407.preheader:                            ; preds = %for.inc428, %for.cond403.preheader
  %indvars.iv562 = phi i64 [ 0, %for.cond403.preheader ], [ %indvars.iv.next563, %for.inc428 ]
  %71 = trunc i64 %indvars.iv562 to i32
  %add420 = add i32 %71, %block_y
  %add421 = add i32 %add420, %54
  %idxprom422 = sext i32 %add421 to i64
  %arrayidx423 = getelementptr inbounds i16** %56, i64 %idxprom422
  %72 = load i16** %arrayidx423, align 8, !tbaa !0
  br label %for.body410

for.body410:                                      ; preds = %for.body410, %for.cond407.preheader
  %indvars.iv = phi i64 [ 0, %for.cond407.preheader ], [ %indvars.iv.next, %for.body410 ]
  %arrayidx415 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv562
  %73 = load i32* %arrayidx415, align 4, !tbaa !3
  %conv416 = trunc i32 %73 to i16
  %74 = trunc i64 %indvars.iv to i32
  %add417 = add i32 %74, %block_x
  %add418 = add i32 %add417, %53
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx424 = getelementptr inbounds i16* %72, i64 %idxprom419
  store i16 %conv416, i16* %arrayidx424, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc428, label %for.body410

for.inc428:                                       ; preds = %for.body410
  %indvars.iv.next563 = add i64 %indvars.iv562, 1
  %lftr.wideiv564 = trunc i64 %indvars.iv.next563 to i32
  %exitcond565 = icmp eq i32 %lftr.wideiv564, 4
  br i1 %exitcond565, label %for.end430, label %for.cond407.preheader

for.end430:                                       ; preds = %for.inc428
  call void @llvm.lifetime.end(i64 64, i8* %3) #1
  ret void
}

declare double @exp2(double)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
