; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/macroblock.c'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@MODTAB = constant [3 x [2 x i32]] [[2 x i32] [i32 0, i32 4], [2 x i32] [i32 16, i32 12], [2 x i32] [i32 8, i32 20]], align 16
@NCBP = constant [2 x [48 x [2 x i8]]] [[48 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\0A\01", [2 x i8] c"\0B\02", [2 x i8] c"\06\05", [2 x i8] c"\0C\03", [2 x i8] c"\07\06", [2 x i8] c"\0E\0E", [2 x i8] c"\02\0A", [2 x i8] c"\0D\04", [2 x i8] c"\0F\0F", [2 x i8] c"\08\07", [2 x i8] c"\03\0B", [2 x i8] c"\09\08", [2 x i8] c"\04\0C", [2 x i8] c"\05\0D", [2 x i8] c"\00\09", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [48 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\1D\02", [2 x i8] c"\1E\03", [2 x i8] c"\11\07", [2 x i8] c"\1F\04", [2 x i8] c"\12\08", [2 x i8] c"%\11", [2 x i8] c"\08\0D", [2 x i8] c" \05", [2 x i8] c"&\12", [2 x i8] c"\13\09", [2 x i8] c"\09\0E", [2 x i8] c"\14\0A", [2 x i8] c"\0A\0F", [2 x i8] c"\0B\10", [2 x i8] c"\02\0B", [2 x i8] c"\10\01", [2 x i8] c"! ", [2 x i8] c"\22!", [2 x i8] c"\15$", [2 x i8] c"#\22", [2 x i8] c"\16%", [2 x i8] c"',", [2 x i8] c"\04(", [2 x i8] c"$#", [2 x i8] c"(-", [2 x i8] c"\17&", [2 x i8] c"\05)", [2 x i8] c"\18'", [2 x i8] c"\06*", [2 x i8] c"\07+", [2 x i8] c"\01\13", [2 x i8] c")\06", [2 x i8] c"*\18", [2 x i8] c"+\19", [2 x i8] c"\19\14", [2 x i8] c",\1A", [2 x i8] c"\1A\15", [2 x i8] c"..", [2 x i8] c"\0C\1C", [2 x i8] c"-\1B", [2 x i8] c"//", [2 x i8] c"\1B\16", [2 x i8] c"\0D\1D", [2 x i8] c"\1C\17", [2 x i8] c"\0E\1E", [2 x i8] c"\0F\1F", [2 x i8] c"\00\0C"]], align 16
@subblk_offset_x = constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@subblk_offset_y = constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@img = external global %struct.ImageParameters*
@imgY_org_bot = external global i16**
@imgY_org_top = external global i16**
@imgY_org = external global i16**
@imgUV_org_bot = external global i16***
@imgUV_org_top = external global i16***
@imgUV_org = external global i16***
@imgY_org_frm = external global i16**
@imgUV_org_frm = external global i16***
@stats = external global %struct.StatParameters*
@input = external global %struct.InputParameters*
@enc_picture = external global %struct.storable_picture*
@DELTA_QP2 = external global i32
@DELTA_QP = external global i32
@QP2 = external global i32
@QP = external global i32
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@dq = common global i32 0, align 4
@predict_error = common global i32 0, align 4
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@assignSE2partition = external global [2 x i32*]
@terminate_macroblock.skip = internal unnamed_addr global i1 false
@errortext = external global [300 x i8]
@.str = private unnamed_addr constant [28 x i8] c"Slice Mode %d not supported\00", align 1
@LumaPrediction4x4.fw_pred = internal global [16 x i32] zeroinitializer, align 16
@LumaPrediction4x4.bw_pred = internal global [16 x i32] zeroinitializer, align 16
@listX = external global [6 x %struct.storable_picture**]
@wbp_weight = external global i32****
@wp_luma_round = external global i32
@luma_log_weight_denom = external global i32
@wp_offset = external global i32***
@wp_weight = external global i32***
@LumaPrediction4x4Bi.fw_pred = internal global [16 x i32] zeroinitializer, align 16
@LumaPrediction4x4Bi.bw_pred = internal global [16 x i32] zeroinitializer, align 16
@mprRGB = external global [3 x [16 x [16 x i32]]]
@resTrans_R = external global [16 x [16 x i32]]
@resTrans_B = external global [16 x [16 x i32]]
@resTrans_G = external global [16 x [16 x i32]]
@rec_resG = external global [16 x [16 x i32]]
@ChromaPrediction4x4.fw_pred = internal global [16 x i32] zeroinitializer, align 16
@ChromaPrediction4x4.bw_pred = internal global [16 x i32] zeroinitializer, align 16
@wp_chroma_round = external global i32
@chroma_log_weight_denom = external global i32
@ChromaResidualCoding.block8x8_idx = private unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0], [4 x i32] [i32 2, i32 3, i32 0, i32 0]], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 2, i32 2, i32 3, i32 3], [4 x i32] [i32 2, i32 2, i32 3, i32 3]]], align 16
@rec_resR = external global [16 x [16 x i32]]
@rec_resB = external global [16 x [16 x i32]]
@IntraChromaPrediction.block_pos = private unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 16
@MBType2Value.dir1offset = internal unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@MBType2Value.dir2offset = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 0, i32 4, i32 8], [3 x i32] [i32 6, i32 2, i32 10], [3 x i32] [i32 12, i32 14, i32 16]], align 16
@B8Mode2Value.b8start = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 5, i32 10], align 16
@B8Mode2Value.b8inc = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1], align 16
@last_dquant = external global i32
@intras = external global i32
@cabac_encoding = external global i32
@listXsize = external global [6 x i32]
@writeChromaCoeff.chroma_dc_context = private unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 9], align 4
@writeChromaCoeff.chroma_ac_param = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"\06\16\07\17", [4 x i8] c"$4%5", [4 x i8] c"&6'7", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\04\14\05\15", [4 x i8] c"$4%5", [4 x i8] c"\06\16\07\17", [4 x i8] c"&6'7", [4 x i8] c"\08\18\09\19", [4 x i8] c"(8)9", [4 x i8] c"\0A\1A\0B\1B", [4 x i8] c"*:+;"]], align 16
@predict_nnz_chroma.j_off_tab = private unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8], align 16
@writeCoeff4x4_CAVLC.incVlc = private unnamed_addr constant [7 x i32] [i32 0, i32 3, i32 6, i32 12, i32 24, i32 48, i32 32768], align 16
@.str7 = private unnamed_addr constant [40 x i8] c"writeCoeff4x4_CAVLC: Invalid block type\00", align 1
@str = private unnamed_addr constant [17 x i8] c"ERROR: level > 1\00"

; Function Attrs: nounwind optsize uwtable
define void @set_MB_parameters(i32 %mb_addr) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  store i32 %mb_addr, i32* %current_mb_nr, align 4, !tbaa !3
  %mb_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 29
  %mb_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 30
  tail call void @get_mb_block_pos(i32 %mb_addr, i32* %mb_x, i32* %mb_y) #7
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x1 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 29
  %2 = load i32* %mb_x1, align 4, !tbaa !3
  %shl = shl i32 %2, 2
  %block_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 31
  store i32 %shl, i32* %block_x, align 4, !tbaa !3
  %mb_y2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 30
  %3 = load i32* %mb_y2, align 4, !tbaa !3
  %shl3 = shl i32 %3, 2
  %block_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 32
  store i32 %shl3, i32* %block_y, align 4, !tbaa !3
  %shl5 = shl i32 %2, 4
  %pix_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 33
  store i32 %shl5, i32* %pix_x, align 4, !tbaa !3
  %shl7 = shl i32 %3, 4
  %pix_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 34
  store i32 %shl7, i32* %pix_y, align 4, !tbaa !3
  %opix_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 37
  store i32 %shl5, i32* %opix_x, align 4, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 90
  %4 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else23, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %mb_addr to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 22
  %6 = load i32* %mb_field, align 4, !tbaa !3
  %tobool9 = icmp eq i32 %6, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  %rem47 = and i32 %mb_addr, 1
  %tobool11 = icmp ne i32 %rem47, 0
  %7 = load i16*** @imgY_org_bot, align 8, !tbaa !0
  %8 = load i16*** @imgY_org_top, align 8, !tbaa !0
  %cond = select i1 %tobool11, i16** %7, i16** %8
  store i16** %cond, i16*** @imgY_org, align 8, !tbaa !0
  %9 = load i16**** @imgUV_org_bot, align 8, !tbaa !0
  %10 = load i16**** @imgUV_org_top, align 8, !tbaa !0
  %cond17 = select i1 %tobool11, i16*** %9, i16*** %10
  store i16*** %cond17, i16**** @imgUV_org, align 8, !tbaa !0
  %shr48 = lshr i32 %3, 1
  %shl19 = shl i32 %shr48, 4
  %opix_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 38
  store i32 %shl19, i32* %opix_y, align 4, !tbaa !3
  br label %if.end27

if.else:                                          ; preds = %if.then
  %11 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %11, i16*** @imgY_org, align 8, !tbaa !0
  %12 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %12, i16**** @imgUV_org, align 8, !tbaa !0
  %opix_y22 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 38
  store i32 %shl7, i32* %opix_y22, align 4, !tbaa !3
  br label %if.end27

if.else23:                                        ; preds = %entry
  %opix_y26 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 38
  store i32 %shl7, i32* %opix_y26, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then10, %if.else, %if.else23
  %13 = phi i32 [ %shl19, %if.then10 ], [ %shl7, %if.else ], [ %shl7, %if.else23 ]
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 159
  %14 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.end42, label %if.then28

if.then28:                                        ; preds = %if.end27
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 161
  %15 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %div = sdiv i32 16, %15
  %div30 = sdiv i32 %shl5, %div
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 35
  store i32 %div30, i32* %pix_c_x, align 4, !tbaa !3
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 162
  %16 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %div32 = sdiv i32 16, %16
  %div33 = sdiv i32 %shl7, %div32
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 36
  store i32 %div33, i32* %pix_c_y, align 4, !tbaa !3
  %opix_c_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 39
  store i32 %div30, i32* %opix_c_x, align 4, !tbaa !3
  %div41 = sdiv i32 %13, %div32
  %opix_c_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 40
  store i32 %div41, i32* %opix_c_y, align 4, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %if.end27, %if.then28
  ret void
}

; Function Attrs: optsize
declare void @get_mb_block_pos(i32, i32*, i32*) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @clip1a(i32 %a) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %1 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %cmp = icmp slt i32 %1, %a
  br i1 %cmp, label %cond.end5, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp2 = icmp slt i32 %a, 0
  %cond = select i1 %cmp2, i32 0, i32 %a
  br label %cond.end5

cond.end5:                                        ; preds = %entry, %cond.false
  %cond6 = phi i32 [ %cond, %cond.false ], [ %1, %entry ]
  ret i32 %cond6
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @clip1a_chr(i32 %a) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 156
  %1 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %cmp = icmp slt i32 %1, %a
  br i1 %cmp, label %cond.end5, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp2 = icmp slt i32 %a, 0
  %cond = select i1 %cmp2, i32 0, i32 %a
  br label %cond.end5

cond.end5:                                        ; preds = %entry, %cond.false
  %cond6 = phi i32 [ %cond, %cond.false ], [ %1, %entry ]
  ret i32 %cond6
}

; Function Attrs: nounwind optsize uwtable
define void @proceed2nextMacroblock() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 23, i64 %idxprom2
  %6 = load i32* %arrayidx3, align 4, !tbaa !3
  %add = add nsw i32 %6, %3
  store i32 %add, i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  %7 = load i32* %arrayidx4, align 4, !tbaa !3
  %8 = load i32* %type, align 4, !tbaa !3
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 26, i64 %idxprom6
  %9 = load i32* %arrayidx7, align 4, !tbaa !3
  %add8 = add nsw i32 %9, %7
  store i32 %add8, i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 4
  %10 = load i32* %arrayidx9, align 4, !tbaa !3
  %11 = load i32* %type, align 4, !tbaa !3
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 25, i64 %idxprom11
  %12 = load i32* %arrayidx12, align 4, !tbaa !3
  %add13 = add nsw i32 %12, %10
  store i32 %add13, i32* %arrayidx12, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 6
  %13 = load i32* %arrayidx14, align 4, !tbaa !3
  %14 = load i32* %type, align 4, !tbaa !3
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 27, i64 %idxprom16
  %15 = load i32* %arrayidx17, align 4, !tbaa !3
  %add18 = add nsw i32 %15, %13
  store i32 %add18, i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 7
  %16 = load i32* %arrayidx19, align 4, !tbaa !3
  %17 = load i32* %type, align 4, !tbaa !3
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 28, i64 %idxprom21
  %18 = load i32* %arrayidx22, align 4, !tbaa !3
  %add23 = add nsw i32 %18, %16
  store i32 %add23, i32* %arrayidx22, align 4, !tbaa !3
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %19 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %19, label %if.end49 [
    i32 9, label %if.then
    i32 10, label %if.then
    i32 13, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry, %entry
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  %20 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 11, i64 %idxprom29
  %21 = load i32* %arrayidx30, align 4, !tbaa !3
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %arrayidx30, align 4, !tbaa !3
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %22 = load i32* %cbp, align 4, !tbaa !3
  %and = and i32 %22, 15
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %if.end49, label %if.then32

if.then32:                                        ; preds = %if.then
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %23 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %23, 0
  %24 = load i32* %mb_type, align 4, !tbaa !3
  %idxprom35 = sext i32 %24 to i64
  %25 = load i32* %type, align 4, !tbaa !3
  %idxprom37 = sext i32 %25 to i64
  br i1 %tobool, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then32
  %arrayidx39 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 9, i64 %idxprom37, i64 %idxprom35
  %26 = load i32* %arrayidx39, align 4, !tbaa !3
  %inc40 = add nsw i32 %26, 1
  store i32 %inc40, i32* %arrayidx39, align 4, !tbaa !3
  br label %if.end49

if.else:                                          ; preds = %if.then32
  %arrayidx46 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 10, i64 %idxprom37, i64 %idxprom35
  %27 = load i32* %arrayidx46, align 4, !tbaa !3
  %inc47 = add nsw i32 %27, 1
  store i32 %inc47, i32* %arrayidx46, align 4, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %if.then, %entry, %if.else, %if.then33
  %28 = load i32* %mb_type, align 4, !tbaa !3
  %idxprom51 = sext i32 %28 to i64
  %29 = load i32* %type, align 4, !tbaa !3
  %idxprom53 = sext i32 %29 to i64
  %arrayidx55 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 20, i64 %idxprom53, i64 %idxprom51
  %30 = load i32* %arrayidx55, align 4, !tbaa !3
  %inc56 = add nsw i32 %30, 1
  store i32 %inc56, i32* %arrayidx55, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 3
  %31 = load i32* %arrayidx57, align 4, !tbaa !3
  %32 = load i32* %mb_type, align 4, !tbaa !3
  %idxprom59 = sext i32 %32 to i64
  %33 = load i32* %type, align 4, !tbaa !3
  %idxprom61 = sext i32 %33 to i64
  %arrayidx63 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 21, i64 %idxprom61, i64 %idxprom59
  %34 = load i32* %arrayidx63, align 4, !tbaa !3
  %add64 = add nsw i32 %34, %31
  store i32 %add64, i32* %arrayidx63, align 4, !tbaa !3
  %35 = load i32* %type, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %35, 2
  br i1 %cmp66, label %if.end167, label %if.then67

if.then67:                                        ; preds = %if.end49
  %36 = load i32* %mb_type, align 4, !tbaa !3
  %cmp69 = icmp eq i32 %36, 8
  br i1 %cmp69, label %for.cond.preheader, label %if.else124

for.cond.preheader:                               ; preds = %if.then67
  %luma_transform_size_8x8_flag100 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %37 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %37, i64 0, i32 123
  %cbp102 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx73 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv
  %38 = load i32* %arrayidx73, align 4, !tbaa !3
  %cmp74 = icmp sgt i32 %38, 0
  br i1 %cmp74, label %if.then75, label %if.else86

if.then75:                                        ; preds = %for.body
  %idxprom79 = sext i32 %38 to i64
  %39 = load i32* %type, align 4, !tbaa !3
  %idxprom81 = sext i32 %39 to i64
  %arrayidx84 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 20, i64 %idxprom81, i64 %idxprom79
  %40 = load i32* %arrayidx84, align 4, !tbaa !3
  %inc85 = add nsw i32 %40, 1
  store i32 %inc85, i32* %arrayidx84, align 4, !tbaa !3
  br label %if.end94

if.else86:                                        ; preds = %for.body
  %41 = load i32* %luma_transform_size_8x8_flag100, align 4, !tbaa !3
  %idxprom88 = sext i32 %41 to i64
  %42 = load i32* %type, align 4, !tbaa !3
  %idxprom90 = sext i32 %42 to i64
  %arrayidx92 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 8, i64 %idxprom90, i64 %idxprom88
  %43 = load i32* %arrayidx92, align 4, !tbaa !3
  %inc93 = add nsw i32 %43, 1
  store i32 %inc93, i32* %arrayidx92, align 4, !tbaa !3
  br label %if.end94

if.end94:                                         ; preds = %if.else86, %if.then75
  %44 = load i32* %arrayidx73, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %44, 4
  br i1 %cmp98, label %if.then99, label %for.inc

if.then99:                                        ; preds = %if.end94
  %45 = load i32* %luma_transform_size_8x8_flag100, align 4, !tbaa !3
  %tobool101 = icmp eq i32 %45, 0
  br i1 %tobool101, label %lor.lhs.false105, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then99
  %46 = load i32* %cbp102, align 4, !tbaa !3
  %and103 = and i32 %46, 15
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %lor.lhs.false105, label %if.then107

lor.lhs.false105:                                 ; preds = %land.lhs.true, %if.then99
  %47 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %47, 2
  br i1 %cmp106, label %if.then107, label %if.else114

if.then107:                                       ; preds = %land.lhs.true, %lor.lhs.false105
  %48 = load i32* %type, align 4, !tbaa !3
  %idxprom109 = sext i32 %48 to i64
  %arrayidx112 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 9, i64 %idxprom109, i64 4
  %49 = load i32* %arrayidx112, align 4, !tbaa !3
  %inc113 = add nsw i32 %49, 1
  store i32 %inc113, i32* %arrayidx112, align 4, !tbaa !3
  br label %for.inc

if.else114:                                       ; preds = %lor.lhs.false105
  %50 = load i32* %type, align 4, !tbaa !3
  %idxprom116 = sext i32 %50 to i64
  %arrayidx119 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 10, i64 %idxprom116, i64 4
  %51 = load i32* %arrayidx119, align 4, !tbaa !3
  %inc120 = add nsw i32 %51, 1
  store i32 %inc120, i32* %arrayidx119, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end94, %if.else114, %if.then107
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %if.end158, label %for.body

if.else124:                                       ; preds = %if.then67
  %52 = icmp ult i32 %36, 4
  br i1 %52, label %land.lhs.true130, label %if.end158

land.lhs.true130:                                 ; preds = %if.else124
  %cbp131 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %53 = load i32* %cbp131, align 4, !tbaa !3
  %and132 = and i32 %53, 15
  %cmp133 = icmp eq i32 %and132, 0
  br i1 %cmp133, label %if.end158, label %if.then134

if.then134:                                       ; preds = %land.lhs.true130
  %luma_transform_size_8x8_flag135 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %54 = load i32* %luma_transform_size_8x8_flag135, align 4, !tbaa !3
  %tobool136 = icmp eq i32 %54, 0
  %idxprom139 = sext i32 %36 to i64
  %idxprom141 = sext i32 %35 to i64
  br i1 %tobool136, label %if.else146, label %if.then137

if.then137:                                       ; preds = %if.then134
  %arrayidx144 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 9, i64 %idxprom141, i64 %idxprom139
  %55 = load i32* %arrayidx144, align 4, !tbaa !3
  %inc145 = add nsw i32 %55, 1
  store i32 %inc145, i32* %arrayidx144, align 4, !tbaa !3
  br label %if.end158

if.else146:                                       ; preds = %if.then134
  %arrayidx153 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 10, i64 %idxprom141, i64 %idxprom139
  %56 = load i32* %arrayidx153, align 4, !tbaa !3
  %inc154 = add nsw i32 %56, 1
  store i32 %inc154, i32* %arrayidx153, align 4, !tbaa !3
  br label %if.end158

if.end158:                                        ; preds = %for.inc, %land.lhs.true130, %if.then137, %if.else146, %if.else124
  %.pr = load i32* %type, align 4, !tbaa !3
  switch i32 %.pr, label %if.end167 [
    i32 0, label %if.then164
    i32 3, label %if.then164
  ]

if.then164:                                       ; preds = %if.end158, %if.end158
  %quant0 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 0
  %57 = load i32* %quant0, align 4, !tbaa !3
  %inc165 = add nsw i32 %57, 1
  store i32 %inc165, i32* %quant0, align 4, !tbaa !3
  %qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3
  %58 = load i32* %qp, align 4, !tbaa !3
  %quant1 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 1
  %59 = load i32* %quant1, align 4, !tbaa !3
  %add166 = add nsw i32 %59, %58
  store i32 %add166, i32* %quant1, align 4, !tbaa !3
  br label %if.end167

if.end167:                                        ; preds = %if.end49, %if.end158, %if.then164
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @start_macroblock(i32 %mb_addr, i32 %mb_field) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 22
  %1 = load i32* %slice_mode, align 4, !tbaa !3
  %2 = and i32 %1, -2
  %3 = icmp eq i32 %2, 2
  %idxprom = sext i32 %mb_addr to i64
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 50
  %6 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 151
  %7 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %div = sdiv i32 %7, 2
  %add = add nsw i32 %div, 25
  %mb_field6 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 22
  store i32 %mb_field, i32* %mb_field6, align 4, !tbaa !3
  %conv = trunc i32 %mb_field to i8
  %8 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mb_field8 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 31
  %9 = load i8** %mb_field8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8* %9, i64 %idxprom
  store i8 %conv, i8* %arrayidx9, align 1, !tbaa !1
  tail call void @set_MB_parameters(i32 %mb_addr) #8
  br i1 %3, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 27
  %11 = load i32* %cod_counter, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %11, 0
  br i1 %tobool10, label %for.cond.preheader, label %if.end20

for.cond.preheader:                               ; preds = %if.then
  %max_part_nr = getelementptr inbounds %struct.Slice* %6, i64 0, i32 4
  %12 = load i32* %max_part_nr, align 4, !tbaa !3
  %cmp12732 = icmp sgt i32 %12, 0
  br i1 %cmp12732, label %for.body.lr.ph, label %if.end20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %partArr = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv792 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next793, %for.inc ]
  %13 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 0
  %14 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 1
  %15 = load i32* %bits_to_go, align 4, !tbaa !3
  %stored_bits_to_go = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 4
  store i32 %15, i32* %stored_bits_to_go, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 0
  %16 = load i32* %byte_pos, align 4, !tbaa !3
  %stored_byte_pos = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 3
  store i32 %16, i32* %stored_byte_pos, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 2
  %17 = load i8* %byte_buf, align 1, !tbaa !1
  %stored_byte_buf = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 5
  store i8 %17, i8* %stored_byte_buf, align 1, !tbaa !1
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 59
  %19 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then18, label %for.inc

if.then18:                                        ; preds = %for.body
  %Elow = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 0
  %20 = load i32* %Elow, align 4, !tbaa !3
  %ElowS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 7
  store i32 %20, i32* %ElowS, align 4, !tbaa !3
  %Erange = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 1
  %21 = load i32* %Erange, align 4, !tbaa !3
  %ErangeS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 8
  store i32 %21, i32* %ErangeS, align 4, !tbaa !3
  %Ebuffer = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 2
  %22 = load i32* %Ebuffer, align 4, !tbaa !3
  %EbufferS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 9
  store i32 %22, i32* %EbufferS, align 4, !tbaa !3
  %Ebits_to_go = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 3
  %23 = load i32* %Ebits_to_go, align 4, !tbaa !3
  %Ebits_to_goS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 10
  store i32 %23, i32* %Ebits_to_goS, align 4, !tbaa !3
  %Ebits_to_follow = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 4
  %24 = load i32* %Ebits_to_follow, align 4, !tbaa !3
  %Ebits_to_followS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 11
  store i32 %24, i32* %Ebits_to_followS, align 4, !tbaa !3
  %Ecodestrm = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 5
  %25 = load i8** %Ecodestrm, align 8, !tbaa !0
  %EcodestrmS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 12
  store i8* %25, i8** %EcodestrmS, align 8, !tbaa !0
  %Ecodestrm_len = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 6
  %26 = load i32** %Ecodestrm_len, align 8, !tbaa !0
  %Ecodestrm_lenS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 13
  store i32* %26, i32** %Ecodestrm_lenS, align 8, !tbaa !0
  %C = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 14
  %27 = load i32* %C, align 4, !tbaa !3
  %CS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 15
  store i32 %27, i32* %CS, align 4, !tbaa !3
  %B = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 18
  %28 = load i32* %B, align 4, !tbaa !3
  %BS = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 19
  store i32 %28, i32* %BS, align 4, !tbaa !3
  %E = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 16
  %29 = load i32* %E, align 4, !tbaa !3
  %ES = getelementptr inbounds %struct.datapartition* %13, i64 %indvars.iv792, i32 1, i32 17
  store i32 %29, i32* %ES, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then18
  %indvars.iv.next793 = add i64 %indvars.iv792, 1
  %30 = load i32* %max_part_nr, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv.next793 to i32
  %cmp12 = icmp slt i32 %31, %30
  br i1 %cmp12, label %for.body, label %if.end20

if.end20:                                         ; preds = %for.cond.preheader, %for.inc, %if.then, %entry
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 5
  %33 = load i32* %current_slice_nr, align 4, !tbaa !3
  %slice_nr = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 1
  store i32 %33, i32* %slice_nr, align 4, !tbaa !3
  %qpsp = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 11
  %34 = load i32* %qpsp, align 4, !tbaa !3
  %qpsp21 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 4
  store i32 %34, i32* %qpsp21, align 4, !tbaa !3
  %35 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 127
  %36 = load i32* %RCEnable, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %36, 0
  br i1 %tobool22, label %if.else313, label %if.then23

if.then23:                                        ; preds = %if.end20
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 3
  %37 = load i32* %current_mb_nr, align 4, !tbaa !3
  %call = tail call i32 @FmoGetPreviousMBNr(i32 %37) #7
  %cmp24 = icmp sgt i32 %call, -1
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %idxprom27 = sext i32 %call to i64
  %38 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data28 = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 51
  %39 = load %struct.macroblock** %mb_data28, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.macroblock* %39, i64 %idxprom27, i32 3
  %40 = load i32* %qp, align 4, !tbaa !3
  %prev_qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 36
  store i32 %40, i32* %prev_qp, align 4, !tbaa !3
  %delta_qp = getelementptr inbounds %struct.macroblock* %39, i64 %idxprom27, i32 2
  %41 = load i32* %delta_qp, align 4, !tbaa !3
  %prev_delta_qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37
  store i32 %41, i32* %prev_delta_qp, align 4, !tbaa !3
  br label %if.end36

if.else:                                          ; preds = %if.then23
  %qp33 = getelementptr inbounds %struct.Slice* %6, i64 0, i32 1
  %42 = load i32* %qp33, align 4, !tbaa !3
  %prev_qp34 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 36
  store i32 %42, i32* %prev_qp34, align 4, !tbaa !3
  %prev_delta_qp35 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37
  store i32 0, i32* %prev_delta_qp35, align 4, !tbaa !3
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then26
  %43 = phi %struct.ImageParameters* [ %.pre, %if.else ], [ %38, %if.then26 ]
  %44 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %basicunit = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 130
  %45 = load i32* %basicunit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 136
  %46 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %45, %46
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.end36
  %delta_qp40 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp40, align 4, !tbaa !3
  %qp41 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %47 = load i32* %qp41, align 4, !tbaa !3
  %qp42 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %47, i32* %qp42, align 4, !tbaa !3
  br label %if.end344

if.else43:                                        ; preds = %if.end36
  %type = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 6
  %48 = load i32* %type, align 4, !tbaa !3
  switch i32 %48, label %if.end344 [
    i32 2, label %if.then49
    i32 1, label %if.then49
    i32 0, label %if.then57
  ]

if.then49:                                        ; preds = %if.else43, %if.else43
  %delta_qp50 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp50, align 4, !tbaa !3
  %qp51 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %49 = load i32* %qp51, align 4, !tbaa !3
  %qp52 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %49, i32* %qp52, align 4, !tbaa !3
  br label %if.end344

if.then57:                                        ; preds = %if.else43
  %write_macroblock = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 140
  %50 = load i32* %write_macroblock, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %50, 0
  br i1 %tobool58, label %if.then59, label %if.else127

if.then59:                                        ; preds = %if.then57
  %51 = load i32* %mb_field6, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %51, 0
  br i1 %tobool61, label %if.then62, label %if.else114

if.then62:                                        ; preds = %if.then59
  %current_mb_nr63 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 3
  %52 = load i32* %current_mb_nr63, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %52, 0
  br i1 %cmp64, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.then62
  %delta_qp67 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp67, align 4, !tbaa !3
  %qp68 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %53 = load i32* %qp68, align 4, !tbaa !3
  %qp69 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %53, i32* %qp69, align 4, !tbaa !3
  store i32 0, i32* @DELTA_QP2, align 4, !tbaa !3
  store i32 0, i32* @DELTA_QP, align 4, !tbaa !3
  %54 = load i32* %qp69, align 4, !tbaa !3
  store i32 %54, i32* @QP2, align 4, !tbaa !3
  store i32 %54, i32* @QP, align 4, !tbaa !3
  br label %if.end146

if.else72:                                        ; preds = %if.then62
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 92
  %55 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool73 = icmp eq i32 %55, 0
  br i1 %tobool73, label %if.then75, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else72
  %bot_MB = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 141
  %56 = load i32* %bot_MB, align 4, !tbaa !3
  %tobool74 = icmp eq i32 %56, 0
  br i1 %tobool74, label %if.then75, label %if.else108

if.then75:                                        ; preds = %land.lhs.true, %if.else72
  %sub = add nsw i32 %52, -1
  %idxprom77 = sext i32 %sub to i64
  %mb_data78 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 51
  %57 = load %struct.macroblock** %mb_data78, align 8, !tbaa !0
  %prev_cbp = getelementptr inbounds %struct.macroblock* %57, i64 %idxprom77, i32 38
  %58 = load i32* %prev_cbp, align 4, !tbaa !3
  %cmp80 = icmp eq i32 %58, 1
  br i1 %cmp80, label %if.then82, label %if.else86

if.then82:                                        ; preds = %if.then75
  %delta_qp83 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp83, align 4, !tbaa !3
  %qp84 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %59 = load i32* %qp84, align 4, !tbaa !3
  %qp85 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %59, i32* %qp85, align 4, !tbaa !3
  br label %if.end105

if.else86:                                        ; preds = %if.then75
  %prev_qp92 = getelementptr inbounds %struct.macroblock* %57, i64 %idxprom77, i32 36
  %60 = load i32* %prev_qp92, align 4, !tbaa !3
  %qp93 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %60, i32* %qp93, align 4, !tbaa !3
  %61 = load i32* %current_mb_nr63, align 4, !tbaa !3
  %sub96 = add nsw i32 %61, -1
  %idxprom97 = sext i32 %sub96 to i64
  %qp100 = getelementptr inbounds %struct.macroblock* %57, i64 %idxprom97, i32 3
  %62 = load i32* %qp100, align 4, !tbaa !3
  %sub101 = sub nsw i32 %60, %62
  %delta_qp102 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 %sub101, i32* %delta_qp102, align 4, !tbaa !3
  %qp104 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  store i32 %60, i32* %qp104, align 4, !tbaa !3
  %.pre794 = load i32* %delta_qp102, align 4, !tbaa !3
  br label %if.end105

if.end105:                                        ; preds = %if.else86, %if.then82
  %63 = phi i32 [ %.pre794, %if.else86 ], [ 0, %if.then82 ]
  store i32 %63, i32* @DELTA_QP2, align 4, !tbaa !3
  store i32 %63, i32* @DELTA_QP, align 4, !tbaa !3
  %qp107 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  %64 = load i32* %qp107, align 4, !tbaa !3
  store i32 %64, i32* @QP2, align 4, !tbaa !3
  store i32 %64, i32* @QP, align 4, !tbaa !3
  br label %if.end146

if.else108:                                       ; preds = %land.lhs.true
  %delta_qp109 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp109, align 4, !tbaa !3
  %qp110 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %65 = load i32* %qp110, align 4, !tbaa !3
  %qp111 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %65, i32* %qp111, align 4, !tbaa !3
  br label %if.end146

if.else114:                                       ; preds = %if.then59
  %bot_MB115 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 141
  %66 = load i32* %bot_MB115, align 4, !tbaa !3
  %tobool116 = icmp eq i32 %66, 0
  br i1 %tobool116, label %if.then117, label %if.else121

if.then117:                                       ; preds = %if.else114
  %67 = load i32* @DELTA_QP2, align 4, !tbaa !3
  %delta_qp118 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 %67, i32* %delta_qp118, align 4, !tbaa !3
  %68 = load i32* @QP2, align 4, !tbaa !3
  %qp119 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  store i32 %68, i32* %qp119, align 4, !tbaa !3
  %qp120 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %68, i32* %qp120, align 4, !tbaa !3
  br label %if.end146

if.else121:                                       ; preds = %if.else114
  %qp122 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %69 = load i32* %qp122, align 4, !tbaa !3
  %qp123 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %69, i32* %qp123, align 4, !tbaa !3
  %delta_qp124 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp124, align 4, !tbaa !3
  br label %if.end146

if.else127:                                       ; preds = %if.then57
  %bot_MB128 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 141
  %70 = load i32* %bot_MB128, align 4, !tbaa !3
  %tobool129 = icmp eq i32 %70, 0
  br i1 %tobool129, label %if.then130, label %if.else141

if.then130:                                       ; preds = %if.else127
  %write_macroblock_frame = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 142
  %71 = load i32* %write_macroblock_frame, align 4, !tbaa !3
  %tobool131 = icmp eq i32 %71, 0
  br i1 %tobool131, label %if.else136, label %if.then132

if.then132:                                       ; preds = %if.then130
  %72 = load i32* @DELTA_QP, align 4, !tbaa !3
  %delta_qp133 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 %72, i32* %delta_qp133, align 4, !tbaa !3
  %73 = load i32* @QP, align 4, !tbaa !3
  %qp134 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %73, i32* %qp134, align 4, !tbaa !3
  %qp135 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  store i32 %73, i32* %qp135, align 4, !tbaa !3
  br label %if.end146

if.else136:                                       ; preds = %if.then130
  %74 = load i32* @DELTA_QP2, align 4, !tbaa !3
  %delta_qp137 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 %74, i32* %delta_qp137, align 4, !tbaa !3
  %75 = load i32* @QP2, align 4, !tbaa !3
  %qp138 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %75, i32* %qp138, align 4, !tbaa !3
  %qp139 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  store i32 %75, i32* %qp139, align 4, !tbaa !3
  br label %if.end146

if.else141:                                       ; preds = %if.else127
  %delta_qp142 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp142, align 4, !tbaa !3
  %qp143 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %76 = load i32* %qp143, align 4, !tbaa !3
  %qp144 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %76, i32* %qp144, align 4, !tbaa !3
  br label %if.end146

if.end146:                                        ; preds = %if.else141, %if.else136, %if.then132, %if.end105, %if.else108, %if.then66, %if.else121, %if.then117
  %MbInterlace147 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 92
  %77 = load i32* %MbInterlace147, align 4, !tbaa !3
  %tobool148 = icmp eq i32 %77, 0
  br i1 %tobool148, label %if.then152, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.end146
  %bot_MB150 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 141
  %78 = load i32* %bot_MB150, align 4, !tbaa !3
  %tobool151 = icmp eq i32 %78, 0
  br i1 %tobool151, label %if.then152, label %if.else306

if.then152:                                       ; preds = %land.lhs.true149, %if.end146
  %79 = load i32* %mb_field6, align 4, !tbaa !3
  %tobool154 = icmp eq i32 %79, 0
  br i1 %tobool154, label %if.then155, label %if.else303

if.then155:                                       ; preds = %if.then152
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 138
  %80 = load i32* %NumberofCodedMacroBlocks, align 4, !tbaa !3
  %cmp156 = icmp sgt i32 %80, 0
  br i1 %cmp156, label %land.lhs.true158, label %if.end228

land.lhs.true158:                                 ; preds = %if.then155
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 139
  %81 = load i32* %BasicUnit, align 4, !tbaa !3
  %rem = srem i32 %80, %81
  %cmp160 = icmp eq i32 %rem, 0
  br i1 %cmp160, label %if.then162, label %if.end228

if.then162:                                       ; preds = %land.lhs.true158
  %82 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %82, i64 0, i32 25
  %83 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool163 = icmp eq i32 %83, 0
  br i1 %tobool163, label %if.else166, label %if.then164

if.then164:                                       ; preds = %if.then162
  tail call void (...)* @updateRCModel() #7
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 133
  %85 = load i32* %TopFieldFlag, align 4, !tbaa !3
  %call165 = tail call i32 @updateQuantizationParameter(i32 %85) #7
  %86 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnitQP = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 132
  store i32 %call165, i32* %BasicUnitQP, align 4, !tbaa !3
  br label %if.end228

if.else166:                                       ; preds = %if.then162
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 91
  %87 = load i32* %PicInterlace, align 4, !tbaa !3
  switch i32 %87, label %if.else194 [
    i32 2, label %land.lhs.true169
    i32 1, label %land.lhs.true183
  ]

land.lhs.true169:                                 ; preds = %if.else166
  br i1 %tobool148, label %land.lhs.true172, label %land.lhs.true197

land.lhs.true172:                                 ; preds = %land.lhs.true169
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 137
  %88 = load i32* %IFLAG, align 4, !tbaa !3
  %cmp173 = icmp eq i32 %88, 0
  br i1 %cmp173, label %if.then175, label %if.end228

if.then175:                                       ; preds = %land.lhs.true172
  tail call void (...)* @updateRCModel() #7
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %TopFieldFlag176 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 133
  %90 = load i32* %TopFieldFlag176, align 4, !tbaa !3
  %call177 = tail call i32 @updateQuantizationParameter(i32 %90) #7
  %91 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnitQP178 = getelementptr inbounds %struct.ImageParameters* %91, i64 0, i32 132
  store i32 %call177, i32* %BasicUnitQP178, align 4, !tbaa !3
  br label %if.end228

land.lhs.true183:                                 ; preds = %if.else166
  br i1 %tobool148, label %land.lhs.true186, label %land.lhs.true197

land.lhs.true186:                                 ; preds = %land.lhs.true183
  %IFLAG187 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 137
  %92 = load i32* %IFLAG187, align 4, !tbaa !3
  %cmp188 = icmp eq i32 %92, 0
  br i1 %cmp188, label %if.then190, label %if.end228

if.then190:                                       ; preds = %land.lhs.true186
  tail call void (...)* @updateRCModel() #7
  %93 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %TopFieldFlag191 = getelementptr inbounds %struct.ImageParameters* %93, i64 0, i32 133
  %94 = load i32* %TopFieldFlag191, align 4, !tbaa !3
  %call192 = tail call i32 @updateQuantizationParameter(i32 %94) #7
  %95 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnitQP193 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 132
  store i32 %call192, i32* %BasicUnitQP193, align 4, !tbaa !3
  br label %if.end228

if.else194:                                       ; preds = %if.else166
  br i1 %tobool148, label %if.end228, label %land.lhs.true197

land.lhs.true197:                                 ; preds = %land.lhs.true169, %land.lhs.true183, %if.else194
  %IFLAG198 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 137
  %96 = load i32* %IFLAG198, align 4, !tbaa !3
  %cmp199 = icmp eq i32 %96, 0
  br i1 %cmp199, label %land.lhs.true201, label %if.else208

land.lhs.true201:                                 ; preds = %land.lhs.true197
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 134
  %97 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp202 = icmp eq i32 %97, 1
  br i1 %cmp202, label %if.then204, label %if.else208

if.then204:                                       ; preds = %land.lhs.true201
  tail call void (...)* @updateRCModel() #7
  %98 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %TopFieldFlag205 = getelementptr inbounds %struct.ImageParameters* %98, i64 0, i32 133
  %99 = load i32* %TopFieldFlag205, align 4, !tbaa !3
  %call206 = tail call i32 @updateQuantizationParameter(i32 %99) #7
  %100 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnitQP207 = getelementptr inbounds %struct.ImageParameters* %100, i64 0, i32 132
  store i32 %call206, i32* %BasicUnitQP207, align 4, !tbaa !3
  br label %if.end228

if.else208:                                       ; preds = %land.lhs.true201, %land.lhs.true197
  br i1 %tobool148, label %if.end228, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %if.else208
  %IFLAG212 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 137
  %101 = load i32* %IFLAG212, align 4, !tbaa !3
  %cmp213 = icmp eq i32 %101, 0
  br i1 %cmp213, label %land.lhs.true215, label %if.end228

land.lhs.true215:                                 ; preds = %land.lhs.true211
  %FieldControl216 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 134
  %102 = load i32* %FieldControl216, align 4, !tbaa !3
  %cmp217 = icmp eq i32 %102, 0
  br i1 %cmp217, label %if.then219, label %if.end228

if.then219:                                       ; preds = %land.lhs.true215
  tail call void (...)* @updateRCModel() #7
  %103 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %TopFieldFlag220 = getelementptr inbounds %struct.ImageParameters* %103, i64 0, i32 133
  %104 = load i32* %TopFieldFlag220, align 4, !tbaa !3
  %call221 = tail call i32 @updateQuantizationParameter(i32 %104) #7
  %105 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnitQP222 = getelementptr inbounds %struct.ImageParameters* %105, i64 0, i32 132
  store i32 %call221, i32* %BasicUnitQP222, align 4, !tbaa !3
  br label %if.end228

if.end228:                                        ; preds = %land.lhs.true172, %land.lhs.true186, %if.else194, %if.else208, %if.then164, %if.then190, %land.lhs.true211, %land.lhs.true215, %if.then219, %if.then204, %if.then175, %land.lhs.true158, %if.then155
  %106 = phi %struct.ImageParameters* [ %43, %if.else208 ], [ %86, %if.then164 ], [ %95, %if.then190 ], [ %43, %land.lhs.true211 ], [ %43, %land.lhs.true215 ], [ %105, %if.then219 ], [ %100, %if.then204 ], [ %91, %if.then175 ], [ %43, %land.lhs.true158 ], [ %43, %if.then155 ], [ %43, %if.else194 ], [ %43, %land.lhs.true186 ], [ %43, %land.lhs.true172 ]
  %current_mb_nr229 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 3
  %107 = load i32* %current_mb_nr229, align 4, !tbaa !3
  %cmp230 = icmp eq i32 %107, 0
  br i1 %cmp230, label %if.then232, label %if.end228.if.end235_crit_edge

if.end228.if.end235_crit_edge:                    ; preds = %if.end228
  %BasicUnitQP236.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 132
  %.pre796 = load i32* %BasicUnitQP236.phi.trans.insert, align 4, !tbaa !3
  br label %if.end235

if.then232:                                       ; preds = %if.end228
  %qp233 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 10
  %108 = load i32* %qp233, align 4, !tbaa !3
  %BasicUnitQP234 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 132
  store i32 %108, i32* %BasicUnitQP234, align 4, !tbaa !3
  br label %if.end235

if.end235:                                        ; preds = %if.end228.if.end235_crit_edge, %if.then232
  %109 = phi i32 [ %.pre796, %if.end228.if.end235_crit_edge ], [ %108, %if.then232 ]
  %predict_qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 39
  store i32 %109, i32* %predict_qp, align 4, !tbaa !3
  %qp238 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  %110 = load i32* %qp238, align 4, !tbaa !3
  %add239 = add nsw i32 %110, %add
  %cmp240 = icmp sgt i32 %109, %add239
  br i1 %cmp240, label %if.then242, label %if.else246

if.then242:                                       ; preds = %if.end235
  store i32 %add239, i32* %predict_qp, align 4, !tbaa !3
  %sub263.pre = sub i32 -26, %div
  br label %if.end257

if.else246:                                       ; preds = %if.end235
  %add5.neg = sub i32 -26, %div
  %sub249 = add i32 %add5.neg, %110
  %cmp250 = icmp slt i32 %109, %sub249
  br i1 %cmp250, label %if.then252, label %if.end257

if.then252:                                       ; preds = %if.else246
  store i32 %sub249, i32* %predict_qp, align 4, !tbaa !3
  br label %if.end257

if.end257:                                        ; preds = %if.else246, %if.then252, %if.then242
  %sub263.pre-phi = phi i32 [ %add5.neg, %if.then252 ], [ %sub263.pre, %if.then242 ], [ %add5.neg, %if.else246 ]
  %111 = phi i32 [ %sub249, %if.then252 ], [ %add239, %if.then242 ], [ %109, %if.else246 ]
  %delta_qp258 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  %112 = load i32* %delta_qp258, align 4, !tbaa !3
  %add260 = add nsw i32 %111, %112
  %sub262 = sub i32 %add260, %110
  store i32 %sub262, i32* @dq, align 4, !tbaa !3
  %cmp264 = icmp slt i32 %sub262, %sub263.pre-phi
  br i1 %cmp264, label %if.then266, label %if.else275

if.then266:                                       ; preds = %if.end257
  store i32 %sub263.pre-phi, i32* @dq, align 4, !tbaa !3
  %113 = load i32* %delta_qp258, align 4, !tbaa !3
  %sub269 = sub nsw i32 %sub263.pre-phi, %113
  store i32 %sub269, i32* @predict_error, align 4, !tbaa !3
  %qp270 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 10
  %114 = load i32* %qp270, align 4, !tbaa !3
  %add271 = add nsw i32 %114, %sub269
  store i32 %add271, i32* %qp270, align 4, !tbaa !3
  store i32 %sub263.pre-phi, i32* %delta_qp258, align 4, !tbaa !3
  br label %if.end293

if.else275:                                       ; preds = %if.end257
  %cmp276 = icmp sgt i32 %sub262, %add
  br i1 %cmp276, label %if.then278, label %if.else285

if.then278:                                       ; preds = %if.else275
  store i32 %add, i32* @dq, align 4, !tbaa !3
  %115 = load i32* %delta_qp258, align 4, !tbaa !3
  %sub280 = sub nsw i32 %add, %115
  store i32 %sub280, i32* @predict_error, align 4, !tbaa !3
  %qp281 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 10
  %116 = load i32* %qp281, align 4, !tbaa !3
  %add282 = add nsw i32 %116, %sub280
  store i32 %add282, i32* %qp281, align 4, !tbaa !3
  store i32 %add, i32* %delta_qp258, align 4, !tbaa !3
  br label %if.end293

if.else285:                                       ; preds = %if.else275
  store i32 %sub262, i32* %delta_qp258, align 4, !tbaa !3
  %117 = load i32* %predict_qp, align 4, !tbaa !3
  %118 = load i32* %qp238, align 4, !tbaa !3
  %sub289 = sub nsw i32 %117, %118
  store i32 %sub289, i32* @predict_error, align 4, !tbaa !3
  %119 = load i32* %predict_qp, align 4, !tbaa !3
  %qp291 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 10
  store i32 %119, i32* %qp291, align 4, !tbaa !3
  br label %if.end293

if.end293:                                        ; preds = %if.then278, %if.else285, %if.then266
  %qp294 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 10
  %120 = load i32* %qp294, align 4, !tbaa !3
  store i32 %120, i32* %qp238, align 4, !tbaa !3
  %121 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace296 = getelementptr inbounds %struct.InputParameters* %121, i64 0, i32 92
  %122 = load i32* %MbInterlace296, align 4, !tbaa !3
  %tobool297 = icmp eq i32 %122, 0
  br i1 %tobool297, label %if.end302, label %if.then298

if.then298:                                       ; preds = %if.end293
  %123 = load i32* %delta_qp258, align 4, !tbaa !3
  store i32 %123, i32* @DELTA_QP2, align 4, !tbaa !3
  store i32 %123, i32* @DELTA_QP, align 4, !tbaa !3
  %124 = load i32* %qp238, align 4, !tbaa !3
  store i32 %124, i32* @QP2, align 4, !tbaa !3
  store i32 %124, i32* @QP, align 4, !tbaa !3
  %125 = load i32* %delta_qp258, align 4, !tbaa !3
  store i32 %125, i32* @DELTA_QP2, align 4, !tbaa !3
  br label %if.end302

if.end302:                                        ; preds = %if.end293, %if.then298
  %126 = load i32* @predict_error, align 4, !tbaa !3
  %predict_error = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 40
  store i32 %126, i32* %predict_error, align 4, !tbaa !3
  br label %if.end344

if.else303:                                       ; preds = %if.then152
  %predict_error304 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 40
  %127 = load i32* %predict_error304, align 4, !tbaa !3
  store i32 %127, i32* @predict_error, align 4, !tbaa !3
  br label %if.end344

if.else306:                                       ; preds = %land.lhs.true149
  %qp307 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 10
  %128 = load i32* %qp307, align 4, !tbaa !3
  %prev_qp308 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 36
  store i32 %128, i32* %prev_qp308, align 4, !tbaa !3
  br label %if.end344

if.else313:                                       ; preds = %if.end20
  %currentSlice314 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 50
  %129 = load %struct.Slice** %currentSlice314, align 8, !tbaa !0
  %current_mb_nr316 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 3
  %130 = load i32* %current_mb_nr316, align 4, !tbaa !3
  %call317 = tail call i32 @FmoGetPreviousMBNr(i32 %130) #7
  %cmp318 = icmp sgt i32 %call317, -1
  br i1 %cmp318, label %if.then320, label %if.else331

if.then320:                                       ; preds = %if.else313
  %idxprom321 = sext i32 %call317 to i64
  %131 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data322 = getelementptr inbounds %struct.ImageParameters* %131, i64 0, i32 51
  %132 = load %struct.macroblock** %mb_data322, align 8, !tbaa !0
  %qp324 = getelementptr inbounds %struct.macroblock* %132, i64 %idxprom321, i32 3
  %133 = load i32* %qp324, align 4, !tbaa !3
  %prev_qp325 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 36
  store i32 %133, i32* %prev_qp325, align 4, !tbaa !3
  %delta_qp329 = getelementptr inbounds %struct.macroblock* %132, i64 %idxprom321, i32 2
  %134 = load i32* %delta_qp329, align 4, !tbaa !3
  %prev_delta_qp330 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37
  store i32 %134, i32* %prev_delta_qp330, align 4, !tbaa !3
  %qp336.pre = getelementptr inbounds %struct.Slice* %129, i64 0, i32 1
  br label %if.end335

if.else331:                                       ; preds = %if.else313
  %qp332 = getelementptr inbounds %struct.Slice* %129, i64 0, i32 1
  %135 = load i32* %qp332, align 4, !tbaa !3
  %prev_qp333 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 36
  store i32 %135, i32* %prev_qp333, align 4, !tbaa !3
  %prev_delta_qp334 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37
  store i32 0, i32* %prev_delta_qp334, align 4, !tbaa !3
  br label %if.end335

if.end335:                                        ; preds = %if.else331, %if.then320
  %qp336.pre-phi = phi i32* [ %qp332, %if.else331 ], [ %qp336.pre, %if.then320 ]
  %136 = phi i32 [ %135, %if.else331 ], [ %133, %if.then320 ]
  %137 = load i32* %qp336.pre-phi, align 4, !tbaa !3
  %qp337 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 3
  store i32 %137, i32* %qp337, align 4, !tbaa !3
  %sub340 = sub nsw i32 %137, %136
  %delta_qp341 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 2
  store i32 %sub340, i32* %delta_qp341, align 4, !tbaa !3
  store i32 %sub340, i32* @DELTA_QP2, align 4, !tbaa !3
  store i32 %sub340, i32* @DELTA_QP, align 4, !tbaa !3
  %138 = load i32* %qp337, align 4, !tbaa !3
  store i32 %138, i32* @QP2, align 4, !tbaa !3
  store i32 %138, i32* @QP, align 4, !tbaa !3
  br label %if.end344

if.end344:                                        ; preds = %if.else43, %if.then39, %if.end302, %if.else303, %if.else306, %if.then49, %if.end335
  %currSEnr = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 0
  store i32 0, i32* %currSEnr, align 4, !tbaa !3
  %139 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %139, i64 0, i32 26
  %140 = load i32* %deblocking_filter_control_present_flag, align 4, !tbaa !1
  %tobool345 = icmp eq i32 %140, 0
  br i1 %tobool345, label %if.else350, label %if.then346

if.then346:                                       ; preds = %if.end344
  %141 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters* %141, i64 0, i32 75
  %142 = load i32* %LFDisableIdc, align 4, !tbaa !3
  %LFDisableIdc347 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 41
  store i32 %142, i32* %LFDisableIdc347, align 4, !tbaa !3
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters* %141, i64 0, i32 76
  %143 = load i32* %LFAlphaC0Offset, align 4, !tbaa !3
  %LFAlphaC0Offset348 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 42
  store i32 %143, i32* %LFAlphaC0Offset348, align 4, !tbaa !3
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters* %141, i64 0, i32 77
  %144 = load i32* %LFBetaOffset, align 4, !tbaa !3
  %LFBetaOffset349 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 43
  store i32 %144, i32* %LFBetaOffset349, align 4, !tbaa !3
  br label %if.end354

if.else350:                                       ; preds = %if.end344
  %LFDisableIdc351 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 41
  store i32 0, i32* %LFDisableIdc351, align 4, !tbaa !3
  %LFAlphaC0Offset352 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 42
  store i32 0, i32* %LFAlphaC0Offset352, align 4, !tbaa !3
  %LFBetaOffset353 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 43
  store i32 0, i32* %LFBetaOffset353, align 4, !tbaa !3
  br label %if.end354

if.end354:                                        ; preds = %if.else350, %if.then346
  tail call void (...)* @CheckAvailabilityOfNeighbors() #7
  %145 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode355 = getelementptr inbounds %struct.InputParameters* %145, i64 0, i32 59
  %146 = load i32* %symbol_mode355, align 4, !tbaa !3
  %cmp356 = icmp eq i32 %146, 1
  br i1 %cmp356, label %if.then358, label %for.cond360.preheader

if.then358:                                       ; preds = %if.end354
  tail call void (...)* @CheckAvailabilityOfNeighborsCABAC() #7
  br label %for.cond360.preheader

for.cond360.preheader:                            ; preds = %if.then358, %if.end354
  %147 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 32
  %148 = load i32* %block_y, align 4, !tbaa !3
  %block_x = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 31
  %149 = load i32* %block_x, align 4, !tbaa !3
  %150 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %150, i64 0, i32 35
  %151 = load i16***** %mv, align 8, !tbaa !0
  %152 = sext i32 %149 to i64
  %153 = sext i32 %148 to i64
  br label %for.cond364.preheader

for.cond364.preheader:                            ; preds = %for.inc395, %for.cond360.preheader
  %indvars.iv788 = phi i64 [ 0, %for.cond360.preheader ], [ %indvars.iv.next789, %for.inc395 ]
  %arrayidx382 = getelementptr inbounds i16**** %151, i64 %indvars.iv788
  %154 = load i16**** %arrayidx382, align 8, !tbaa !0
  br label %for.cond368.preheader

for.cond398.preheader:                            ; preds = %for.inc395
  %155 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y410 = getelementptr inbounds %struct.ImageParameters* %155, i64 0, i32 32
  %156 = load i32* %block_y410, align 4, !tbaa !3
  %block_x413 = getelementptr inbounds %struct.ImageParameters* %155, i64 0, i32 31
  %157 = load i32* %block_x413, align 4, !tbaa !3
  %158 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %158, i64 0, i32 32
  %159 = load i16**** %ref_idx, align 8, !tbaa !0
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %158, i64 0, i32 33
  %160 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %161 = sext i32 %157 to i64
  %162 = sext i32 %156 to i64
  br label %for.cond402.preheader

for.cond368.preheader:                            ; preds = %for.inc392, %for.cond364.preheader
  %indvars.iv783 = phi i64 [ 0, %for.cond364.preheader ], [ %indvars.iv.next784, %for.inc392 ]
  %163 = add nsw i64 %153, %indvars.iv783
  br label %for.cond372.preheader

for.cond372.preheader:                            ; preds = %for.cond372.preheader, %for.cond368.preheader
  %indvars.iv778 = phi i64 [ 0, %for.cond368.preheader ], [ %indvars.iv.next779, %for.cond372.preheader ]
  %164 = add nsw i64 %152, %indvars.iv778
  %arrayidx383 = getelementptr inbounds i16*** %154, i64 %164
  %165 = load i16*** %arrayidx383, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i16** %165, i64 %163
  %166 = load i16** %arrayidx384, align 8, !tbaa !0
  %167 = bitcast i16* %166 to i32*
  store i32 0, i32* %167, align 2
  %indvars.iv.next779 = add i64 %indvars.iv778, 1
  %lftr.wideiv781 = trunc i64 %indvars.iv.next779 to i32
  %exitcond782 = icmp eq i32 %lftr.wideiv781, 4
  br i1 %exitcond782, label %for.inc392, label %for.cond372.preheader

for.inc392:                                       ; preds = %for.cond372.preheader
  %indvars.iv.next784 = add i64 %indvars.iv783, 1
  %lftr.wideiv786 = trunc i64 %indvars.iv.next784 to i32
  %exitcond787 = icmp eq i32 %lftr.wideiv786, 4
  br i1 %exitcond787, label %for.inc395, label %for.cond368.preheader

for.inc395:                                       ; preds = %for.inc392
  %indvars.iv.next789 = add i64 %indvars.iv788, 1
  %lftr.wideiv790 = trunc i64 %indvars.iv.next789 to i32
  %exitcond791 = icmp eq i32 %lftr.wideiv790, 2
  br i1 %exitcond791, label %for.cond398.preheader, label %for.cond364.preheader

for.cond402.preheader:                            ; preds = %for.inc436, %for.cond398.preheader
  %indvars.iv768 = phi i64 [ 0, %for.cond398.preheader ], [ %indvars.iv.next769, %for.inc436 ]
  %168 = add nsw i64 %162, %indvars.iv768
  br label %for.cond406.preheader

for.cond406.preheader:                            ; preds = %for.inc433, %for.cond402.preheader
  %indvars.iv762 = phi i64 [ 0, %for.cond402.preheader ], [ %indvars.iv.next763, %for.inc433 ]
  %169 = add nsw i64 %161, %indvars.iv762
  br label %for.body409

for.body409:                                      ; preds = %for.body409, %for.cond406.preheader
  %indvars.iv758 = phi i64 [ 0, %for.cond406.preheader ], [ %indvars.iv.next759, %for.body409 ]
  %arrayidx417 = getelementptr inbounds i16*** %159, i64 %indvars.iv758
  %170 = load i16*** %arrayidx417, align 8, !tbaa !0
  %arrayidx418 = getelementptr inbounds i16** %170, i64 %169
  %171 = load i16** %arrayidx418, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i16* %171, i64 %168
  store i16 -1, i16* %arrayidx419, align 2, !tbaa !4
  %arrayidx427 = getelementptr inbounds i64*** %160, i64 %indvars.iv758
  %172 = load i64*** %arrayidx427, align 8, !tbaa !0
  %arrayidx428 = getelementptr inbounds i64** %172, i64 %169
  %173 = load i64** %arrayidx428, align 8, !tbaa !0
  %arrayidx429 = getelementptr inbounds i64* %173, i64 %168
  store i64 -1, i64* %arrayidx429, align 8, !tbaa !5
  %indvars.iv.next759 = add i64 %indvars.iv758, 1
  %lftr.wideiv760 = trunc i64 %indvars.iv.next759 to i32
  %exitcond761 = icmp eq i32 %lftr.wideiv760, 2
  br i1 %exitcond761, label %for.inc433, label %for.body409

for.inc433:                                       ; preds = %for.body409
  %indvars.iv.next763 = add i64 %indvars.iv762, 1
  %lftr.wideiv766 = trunc i64 %indvars.iv.next763 to i32
  %exitcond767 = icmp eq i32 %lftr.wideiv766, 4
  br i1 %exitcond767, label %for.inc436, label %for.cond406.preheader

for.inc436:                                       ; preds = %for.inc433
  %indvars.iv.next769 = add i64 %indvars.iv768, 1
  %lftr.wideiv772 = trunc i64 %indvars.iv.next769 to i32
  %exitcond773 = icmp eq i32 %lftr.wideiv772, 4
  br i1 %exitcond773, label %for.end438, label %for.cond402.preheader

for.end438:                                       ; preds = %for.inc436
  %mb_type = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 8
  %cbp_blk = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 13
  store i64 0, i64* %cbp_blk, align 8, !tbaa !5
  %cbp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 12
  store i32 0, i32* %cbp, align 4, !tbaa !3
  %cbp_bits = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 16
  store i64 0, i64* %cbp_bits, align 8, !tbaa !5
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 20
  store i32 0, i32* %c_ipred_mode, align 4, !tbaa !3
  %174 = bitcast i32* %mb_type to i8*
  call void @llvm.memset.p0i8.i64(i8* %174, i8 0, i64 260, i32 4, i1 false)
  br label %for.body478

for.body478:                                      ; preds = %for.body478, %for.end438
  %indvars.iv734 = phi i64 [ 0, %for.end438 ], [ %indvars.iv.next735, %for.body478 ]
  %arrayidx480 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 10, i64 %indvars.iv734
  store i32 2, i32* %arrayidx480, align 4, !tbaa !3
  %indvars.iv.next735 = add i64 %indvars.iv734, 1
  %lftr.wideiv736 = trunc i64 %indvars.iv.next735 to i32
  %exitcond737 = icmp eq i32 %lftr.wideiv736, 16
  br i1 %exitcond737, label %for.body487, label %for.body478

for.body487:                                      ; preds = %for.body478, %for.body487
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body487 ], [ 0, %for.body478 ]
  %arrayidx489 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 11, i64 %indvars.iv
  store i32 2, i32* %arrayidx489, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.end492, label %for.body487

for.end492:                                       ; preds = %for.body487
  %175 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %175, i64 0, i32 24
  %176 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool493 = icmp eq i32 %176, 0
  %.pre795 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %tobool493, label %if.end498, label %if.then494

if.then494:                                       ; preds = %for.end492
  %current_mb_nr495 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 3
  %177 = load i32* %current_mb_nr495, align 4, !tbaa !3
  %idxprom496 = sext i32 %177 to i64
  %intra_block = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 54
  %178 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx497 = getelementptr inbounds i32* %178, i64 %idxprom496
  store i32 1, i32* %arrayidx497, align 4, !tbaa !3
  br label %if.end498

if.end498:                                        ; preds = %for.end492, %if.then494
  %LFDisableIdc499 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 75
  %179 = load i32* %LFDisableIdc499, align 4, !tbaa !3
  %lf_disable = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 17
  store i32 %179, i32* %lf_disable, align 4, !tbaa !3
  %LFAlphaC0Offset500 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 76
  %180 = load i32* %LFAlphaC0Offset500, align 4, !tbaa !3
  %lf_alpha_c0_offset = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 18
  store i32 %180, i32* %lf_alpha_c0_offset, align 4, !tbaa !3
  %LFBetaOffset501 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 77
  %181 = load i32* %LFBetaOffset501, align 4, !tbaa !3
  %lf_beta_offset = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 19
  store i32 %181, i32* %lf_beta_offset, align 4, !tbaa !3
  %current_mb_nr502 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 3
  %182 = load i32* %current_mb_nr502, align 4, !tbaa !3
  %cmp503 = icmp eq i32 %182, 0
  br i1 %cmp503, label %if.then505, label %if.else507

if.then505:                                       ; preds = %if.end498
  %arrayidx506 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 5, i64 0
  store i32 0, i32* %arrayidx506, align 4, !tbaa !3
  br label %if.end521

if.else507:                                       ; preds = %if.end498
  %183 = load i32* %slice_nr, align 4, !tbaa !3
  %sub510 = add nsw i32 %182, -1
  %idxprom511 = sext i32 %sub510 to i64
  %mb_data512 = getelementptr inbounds %struct.ImageParameters* %.pre795, i64 0, i32 51
  %184 = load %struct.macroblock** %mb_data512, align 8, !tbaa !0
  %slice_nr514 = getelementptr inbounds %struct.macroblock* %184, i64 %idxprom511, i32 1
  %185 = load i32* %slice_nr514, align 4, !tbaa !3
  %cmp515 = icmp eq i32 %183, %185
  br i1 %cmp515, label %if.then517, label %if.end521

if.then517:                                       ; preds = %if.else507
  %arrayidx519 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 5, i64 0
  store i32 0, i32* %arrayidx519, align 4, !tbaa !3
  br label %if.end521

if.end521:                                        ; preds = %if.else507, %if.then517, %if.then505
  %arrayidx523 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 5, i64 2
  %FMEnable = getelementptr inbounds %struct.InputParameters* %175, i64 0, i32 134
  %186 = bitcast i32* %arrayidx523 to i8*
  call void @llvm.memset.p0i8.i64(i8* %186, i8 0, i64 24, i32 4, i1 false)
  %187 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool534 = icmp eq i32 %187, 0
  br i1 %tobool534, label %if.then535, label %if.end536

if.then535:                                       ; preds = %if.end521
  tail call void (...)* @ResetFastFullIntegerSearch() #7
  br label %if.end536

if.end536:                                        ; preds = %if.end521, %if.then535
  ret void
}

; Function Attrs: optsize
declare i32 @FmoGetPreviousMBNr(i32) #1

; Function Attrs: optsize
declare void @updateRCModel(...) #1

; Function Attrs: optsize
declare i32 @updateQuantizationParameter(i32) #1

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighbors(...) #1

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighborsCABAC(...) #1

; Function Attrs: optsize
declare void @ResetFastFullIntegerSearch(...) #1

; Function Attrs: nounwind optsize uwtable
define void @terminate_macroblock(i32* nocapture %end_of_slice, i32* nocapture %recode_macroblock) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 0
  %4 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %slice_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 22
  %8 = load i32* %slice_mode, align 4, !tbaa !3
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  %cmp8 = icmp eq i32 %2, 0
  br i1 %cmp8, label %if.end18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @FmoGetPreviousMBNr(i32 %2) #7
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.end18, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr11 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 3
  %12 = load i32* %current_mb_nr11, align 4, !tbaa !3
  %call12 = tail call i32 @FmoGetPreviousMBNr(i32 %12) #7
  %idxprom13 = sext i32 %call12 to i64
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data14 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 51
  %14 = load %struct.macroblock** %mb_data14, align 8, !tbaa !0
  %slice_nr = getelementptr inbounds %struct.macroblock* %14, i64 %idxprom13, i32 1
  %15 = load i32* %slice_nr, align 4, !tbaa !3
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 5
  %16 = load i32* %current_slice_nr, align 4, !tbaa !3
  %not.cmp16 = icmp ne i32 %15, %16
  %. = zext i1 %not.cmp16 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.else, %entry, %lor.lhs.false
  %new_slice.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ]
  store i32 0, i32* %recode_macroblock, align 4, !tbaa !1
  %17 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_mode19 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 22
  %18 = load i32* %slice_mode19, align 4, !tbaa !3
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb42
    i32 3, label %sw.bb96
  ]

sw.bb:                                            ; preds = %if.end18
  %num_mb = getelementptr inbounds %struct.Slice* %1, i64 0, i32 5
  %19 = load i32* %num_mb, align 4, !tbaa !3
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %num_mb, align 4, !tbaa !3
  store i32 0, i32* %recode_macroblock, align 4, !tbaa !1
  %20 = load i32* %num_mb, align 4, !tbaa !3
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 4
  %22 = load i32* %total_number_mb, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %20, %22
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %sw.bb
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %sw.bb
  %23 = phi %struct.ImageParameters* [ %.pre, %if.then22 ], [ %21, %sw.bb ]
  %current_mb_nr24 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 3
  %24 = load i32* %current_mb_nr24, align 4, !tbaa !3
  %call26 = tail call i32 @FmoMB2SliceGroup(i32 %24) #7
  %call27 = tail call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call26) #7
  %cmp28 = icmp eq i32 %24, %call27
  %conv = zext i1 %cmp28 to i32
  %25 = load i32* %end_of_slice, align 4, !tbaa !1
  %or = or i32 %conv, %25
  store i32 %or, i32* %end_of_slice, align 4, !tbaa !1
  br label %sw.epilogthread-pre-split

sw.bb29:                                          ; preds = %if.end18
  %num_mb30 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 5
  %26 = load i32* %num_mb30, align 4, !tbaa !3
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %num_mb30, align 4, !tbaa !3
  store i32 0, i32* %recode_macroblock, align 4, !tbaa !1
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr32 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 3
  %28 = load i32* %current_mb_nr32, align 4, !tbaa !3
  %call34 = tail call i32 @FmoMB2SliceGroup(i32 %28) #7
  %call35 = tail call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call34) #7
  %cmp36 = icmp eq i32 %28, %call35
  %conv37 = zext i1 %cmp36 to i32
  store i32 %conv37, i32* %end_of_slice, align 4, !tbaa !1
  %29 = load i32* %num_mb30, align 4, !tbaa !3
  %30 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_argument = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 23
  %31 = load i32* %slice_argument, align 4, !tbaa !3
  %cmp39 = icmp sge i32 %29, %31
  %conv40 = zext i1 %cmp39 to i32
  %or41 = or i32 %conv40, %conv37
  store i32 %or41, i32* %end_of_slice, align 4, !tbaa !1
  br label %sw.epilogthread-pre-split

sw.bb42:                                          ; preds = %if.end18
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 27
  %33 = load i32* %cod_counter, align 4, !tbaa !3
  %tobool = icmp eq i32 %33, 0
  br i1 %tobool, label %if.end54, label %if.then43

if.then43:                                        ; preds = %sw.bb42
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %33, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %mapping = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 2, i32* %type, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i32* %7, i64 2
  %34 = load i32* %arrayidx47, align 4, !tbaa !3
  %idxprom48 = sext i32 %34 to i64
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %35 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds %struct.datapartition* %35, i64 %idxprom48
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %35, i64 %idxprom48, i32 2
  %36 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call50 = tail call i32 %36(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx49) #7
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %37 = load i32* %len, align 4, !tbaa !3
  %bitstream = getelementptr inbounds %struct.datapartition* %arrayidx49, i64 0, i32 0
  %38 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 1
  %39 = load i32* %bits_to_go, align 4, !tbaa !3
  %bits_to_go_skip = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 8
  store i32 %39, i32* %bits_to_go_skip, align 4, !tbaa !3
  %byte_pos = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 0
  %40 = load i32* %byte_pos, align 4, !tbaa !3
  %byte_pos_skip = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 7
  store i32 %40, i32* %byte_pos_skip, align 4, !tbaa !3
  %byte_buf = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 2
  %41 = load i8* %byte_buf, align 1, !tbaa !1
  %byte_buf_skip = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 6
  store i8 %41, i8* %byte_buf_skip, align 1, !tbaa !1
  %stored_bits_to_go = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 4
  %42 = load i32* %stored_bits_to_go, align 4, !tbaa !3
  store i32 %42, i32* %bits_to_go, align 4, !tbaa !3
  %stored_byte_pos = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 3
  %43 = load i32* %stored_byte_pos, align 4, !tbaa !3
  store i32 %43, i32* %byte_pos, align 4, !tbaa !3
  %stored_byte_buf = getelementptr inbounds %struct.Bitstream* %38, i64 0, i32 5
  %44 = load i8* %stored_byte_buf, align 1, !tbaa !1
  store i8 %44, i8* %byte_buf, align 1, !tbaa !1
  store i1 true, i1* @terminate_macroblock.skip, align 1
  br label %if.end54

if.end54:                                         ; preds = %sw.bb42, %if.then43
  %rlc_bits.0 = phi i32 [ %37, %if.then43 ], [ 0, %sw.bb42 ]
  %tobool55 = icmp ne i32 %new_slice.0, 0
  br i1 %tobool55, label %if.end66, label %if.then56

if.then56:                                        ; preds = %if.end54
  %call57 = tail call i32 @slice_too_big(i32 %rlc_bits.0) #8
  %tobool58 = icmp eq i32 %call57, 0
  br i1 %tobool58, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.then56
  store i32 1, i32* %recode_macroblock, align 4, !tbaa !1
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  br label %if.end66

if.else60:                                        ; preds = %if.then56
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter61 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 27
  %46 = load i32* %cod_counter61, align 4, !tbaa !3
  %tobool62 = icmp eq i32 %46, 0
  br i1 %tobool62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.else60
  store i1 false, i1* @terminate_macroblock.skip, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else60, %if.end54, %if.then59, %if.then63
  %47 = load i32* %recode_macroblock, align 4, !tbaa !1
  %cmp67 = icmp eq i32 %47, 0
  br i1 %cmp67, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %if.end66
  %48 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr69 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 3
  %49 = load i32* %current_mb_nr69, align 4, !tbaa !3
  %call71 = tail call i32 @FmoMB2SliceGroup(i32 %49) #7
  %call72 = tail call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call71) #7
  %cmp73 = icmp eq i32 %49, %call72
  br i1 %cmp73, label %if.then75, label %if.end80

if.then75:                                        ; preds = %land.lhs.true
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter76 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 27
  %51 = load i32* %cod_counter76, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %51, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then75
  store i1 false, i1* @terminate_macroblock.skip, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.then78, %land.lhs.true, %if.end66
  br i1 %tobool55, label %land.lhs.true82, label %if.end90

land.lhs.true82:                                  ; preds = %if.end80
  %call83 = tail call i32 @slice_too_big(i32 %rlc_bits.0) #8
  %tobool84 = icmp eq i32 %call83, 0
  br i1 %tobool84, label %if.end90, label %if.then85

if.then85:                                        ; preds = %land.lhs.true82
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  %52 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter86 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 27
  %53 = load i32* %cod_counter86, align 4, !tbaa !3
  %tobool87 = icmp eq i32 %53, 0
  br i1 %tobool87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.then85
  store i1 false, i1* @terminate_macroblock.skip, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %land.lhs.true82, %if.end80, %if.then88
  %54 = load i32* %recode_macroblock, align 4, !tbaa !1
  %tobool91 = icmp eq i32 %54, 0
  br i1 %tobool91, label %if.then92, label %sw.epilog

if.then92:                                        ; preds = %if.end90
  %num_mb93 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 5
  %55 = load i32* %num_mb93, align 4, !tbaa !3
  %inc94 = add nsw i32 %55, 1
  store i32 %inc94, i32* %num_mb93, align 4, !tbaa !3
  br label %sw.epilogthread-pre-split

sw.bb96:                                          ; preds = %if.end18
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr97 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 3
  %57 = load i32* %current_mb_nr97, align 4, !tbaa !3
  %cmp98 = icmp sgt i32 %57, 0
  %tobool101 = icmp eq i32 %new_slice.0, 0
  %or.cond334 = and i1 %cmp98, %tobool101
  br i1 %or.cond334, label %if.then102, label %if.end107

if.then102:                                       ; preds = %sw.bb96
  %slice_too_big = getelementptr inbounds %struct.Slice* %1, i64 0, i32 18
  %58 = load i32 (i32)** %slice_too_big, align 8, !tbaa !0
  %call103 = tail call i32 %58(i32 0) #7
  %tobool104 = icmp eq i32 %call103, 0
  br i1 %tobool104, label %if.end107, label %if.then105

if.then105:                                       ; preds = %if.then102
  store i32 1, i32* %recode_macroblock, align 4, !tbaa !1
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.then105, %sw.bb96
  %59 = load i32* %recode_macroblock, align 4, !tbaa !1
  %cmp108 = icmp eq i32 %59, 0
  br i1 %cmp108, label %land.lhs.true110, label %sw.epilog

land.lhs.true110:                                 ; preds = %if.end107
  %60 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr111 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 3
  %61 = load i32* %current_mb_nr111, align 4, !tbaa !3
  %call113 = tail call i32 @FmoMB2SliceGroup(i32 %61) #7
  %call114 = tail call i32 @FmoGetLastCodedMBOfSliceGroup(i32 %call113) #7
  %cmp115 = icmp eq i32 %61, %call114
  br i1 %cmp115, label %if.then117, label %sw.epilogthread-pre-split

if.then117:                                       ; preds = %land.lhs.true110
  store i32 1, i32* %end_of_slice, align 4, !tbaa !1
  br label %sw.epilogthread-pre-split

sw.default:                                       ; preds = %if.end18
  %call120 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i32 %18) #7
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 600) #7
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %if.end23, %sw.bb29, %sw.default, %if.then92, %if.then117, %land.lhs.true110
  %.pr = load i32* %recode_macroblock, align 4, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end90, %if.end107
  %62 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %54, %if.end90 ], [ %59, %if.end107 ]
  %cmp121 = icmp eq i32 %62, 1
  br i1 %cmp121, label %for.cond.preheader, label %if.end141

for.cond.preheader:                               ; preds = %sw.epilog
  %max_part_nr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4
  %63 = load i32* %max_part_nr, align 4, !tbaa !3
  %cmp124336 = icmp sgt i32 %63, 0
  br i1 %cmp124336, label %for.body.lr.ph, label %if.end141

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %partArr127 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %64 = load %struct.datapartition** %partArr127, align 8, !tbaa !0
  %bitstream129 = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 0
  %65 = load %struct.Bitstream** %bitstream129, align 8, !tbaa !0
  %stored_bits_to_go130 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 4
  %66 = load i32* %stored_bits_to_go130, align 4, !tbaa !3
  %bits_to_go131 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 1
  store i32 %66, i32* %bits_to_go131, align 4, !tbaa !3
  %stored_byte_pos132 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 3
  %67 = load i32* %stored_byte_pos132, align 4, !tbaa !3
  %byte_pos133 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 0
  store i32 %67, i32* %byte_pos133, align 4, !tbaa !3
  %stored_byte_buf134 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 5
  %68 = load i8* %stored_byte_buf134, align 1, !tbaa !1
  %byte_buf135 = getelementptr inbounds %struct.Bitstream* %65, i64 0, i32 2
  store i8 %68, i8* %byte_buf135, align 1, !tbaa !1
  %69 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %69, i64 0, i32 59
  %70 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp136 = icmp eq i32 %70, 1
  br i1 %cmp136, label %if.then138, label %for.inc

if.then138:                                       ; preds = %for.body
  %ElowS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 7
  %71 = load i32* %ElowS, align 4, !tbaa !3
  %Elow = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 0
  store i32 %71, i32* %Elow, align 4, !tbaa !3
  %ErangeS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 8
  %72 = load i32* %ErangeS, align 4, !tbaa !3
  %Erange = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 1
  store i32 %72, i32* %Erange, align 4, !tbaa !3
  %EbufferS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 9
  %73 = load i32* %EbufferS, align 4, !tbaa !3
  %Ebuffer = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 2
  store i32 %73, i32* %Ebuffer, align 4, !tbaa !3
  %Ebits_to_goS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 10
  %74 = load i32* %Ebits_to_goS, align 4, !tbaa !3
  %Ebits_to_go = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 3
  store i32 %74, i32* %Ebits_to_go, align 4, !tbaa !3
  %Ebits_to_followS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 11
  %75 = load i32* %Ebits_to_followS, align 4, !tbaa !3
  %Ebits_to_follow = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 4
  store i32 %75, i32* %Ebits_to_follow, align 4, !tbaa !3
  %EcodestrmS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 12
  %76 = load i8** %EcodestrmS, align 8, !tbaa !0
  %Ecodestrm = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 5
  store i8* %76, i8** %Ecodestrm, align 8, !tbaa !0
  %Ecodestrm_lenS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 13
  %77 = load i32** %Ecodestrm_lenS, align 8, !tbaa !0
  %Ecodestrm_len = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 6
  store i32* %77, i32** %Ecodestrm_len, align 8, !tbaa !0
  %CS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 15
  %78 = load i32* %CS, align 4, !tbaa !3
  %C = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 14
  store i32 %78, i32* %C, align 4, !tbaa !3
  %BS = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 19
  %79 = load i32* %BS, align 4, !tbaa !3
  %B = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 18
  store i32 %79, i32* %B, align 4, !tbaa !3
  %ES = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 17
  %80 = load i32* %ES, align 4, !tbaa !3
  %E = getelementptr inbounds %struct.datapartition* %64, i64 %indvars.iv, i32 1, i32 16
  store i32 %80, i32* %E, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then138
  %indvars.iv.next = add i64 %indvars.iv, 1
  %81 = load i32* %max_part_nr, align 4, !tbaa !3
  %82 = trunc i64 %indvars.iv.next to i32
  %cmp124 = icmp slt i32 %82, %81
  br i1 %cmp124, label %for.body, label %if.end141

if.end141:                                        ; preds = %for.cond.preheader, %for.inc, %sw.epilog
  %83 = load i32* %end_of_slice, align 4, !tbaa !1
  %cmp142 = icmp eq i32 %83, 1
  %.b = load i1* @terminate_macroblock.skip, align 1
  %or.cond = and i1 %cmp142, %.b
  br i1 %or.cond, label %if.then147, label %if.end189

if.then147:                                       ; preds = %if.end141
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter148 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 27
  %85 = load i32* %cod_counter148, align 4, !tbaa !3
  %tobool149 = icmp eq i32 %85, 0
  br i1 %tobool149, label %if.else175, label %land.lhs.true150

land.lhs.true150:                                 ; preds = %if.then147
  %86 = load i32* %recode_macroblock, align 4, !tbaa !1
  %cmp151 = icmp eq i32 %86, 1
  br i1 %cmp151, label %if.then153, label %if.else175

if.then153:                                       ; preds = %land.lhs.true150
  %dec = add nsw i32 %85, -1
  store i32 %dec, i32* %cod_counter148, align 4, !tbaa !3
  %tobool156 = icmp eq i32 %dec, 0
  br i1 %tobool156, label %if.end189thread-pre-split, label %if.then157

if.then157:                                       ; preds = %if.then153
  %value1159 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %dec, i32* %value1159, align 4, !tbaa !3
  %value2160 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 0, i32* %value2160, align 4, !tbaa !3
  %mapping161 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping161, align 8, !tbaa !0
  %type162 = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 2, i32* %type162, align 4, !tbaa !3
  %arrayidx165 = getelementptr inbounds i32* %7, i64 2
  %87 = load i32* %arrayidx165, align 4, !tbaa !3
  %idxprom166 = sext i32 %87 to i64
  %partArr167 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %88 = load %struct.datapartition** %partArr167, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds %struct.datapartition* %88, i64 %idxprom166
  %writeSyntaxElement169 = getelementptr inbounds %struct.datapartition* %88, i64 %idxprom166, i32 2
  %89 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement169, align 8, !tbaa !0
  %call170 = tail call i32 %89(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx168) #7
  %len171 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %90 = load i32* %len171, align 4, !tbaa !3
  %arrayidx172 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 5, i64 2
  %91 = load i32* %arrayidx172, align 4, !tbaa !3
  %add = add nsw i32 %91, %90
  store i32 %add, i32* %arrayidx172, align 4, !tbaa !3
  %92 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter173 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 27
  store i32 0, i32* %cod_counter173, align 4, !tbaa !3
  br label %if.end189thread-pre-split

if.else175:                                       ; preds = %if.then147, %land.lhs.true150
  %arrayidx176 = getelementptr inbounds i32* %7, i64 2
  %93 = load i32* %arrayidx176, align 4, !tbaa !3
  %idxprom177 = sext i32 %93 to i64
  %partArr178 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %94 = load %struct.datapartition** %partArr178, align 8, !tbaa !0
  %bitstream180 = getelementptr inbounds %struct.datapartition* %94, i64 %idxprom177, i32 0
  %95 = load %struct.Bitstream** %bitstream180, align 8, !tbaa !0
  %bits_to_go_skip181 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 8
  %96 = load i32* %bits_to_go_skip181, align 4, !tbaa !3
  %bits_to_go182 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 1
  store i32 %96, i32* %bits_to_go182, align 4, !tbaa !3
  %byte_pos_skip183 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 7
  %97 = load i32* %byte_pos_skip183, align 4, !tbaa !3
  %byte_pos184 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 0
  store i32 %97, i32* %byte_pos184, align 4, !tbaa !3
  %byte_buf_skip185 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 6
  %98 = load i8* %byte_buf_skip185, align 1, !tbaa !1
  %byte_buf186 = getelementptr inbounds %struct.Bitstream* %95, i64 0, i32 2
  store i8 %98, i8* %byte_buf186, align 1, !tbaa !1
  %99 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter187 = getelementptr inbounds %struct.ImageParameters* %99, i64 0, i32 27
  store i32 0, i32* %cod_counter187, align 4, !tbaa !3
  store i1 false, i1* @terminate_macroblock.skip, align 1
  br label %if.end189thread-pre-split

if.end189thread-pre-split:                        ; preds = %if.then157, %if.else175, %if.then153
  %.pr335 = load i32* %end_of_slice, align 4, !tbaa !1
  br label %if.end189

if.end189:                                        ; preds = %if.end189thread-pre-split, %if.end141
  %100 = phi i32 [ %.pr335, %if.end189thread-pre-split ], [ %83, %if.end141 ]
  %cmp190 = icmp eq i32 %100, 1
  br i1 %cmp190, label %land.lhs.true192, label %if.end218

land.lhs.true192:                                 ; preds = %if.end189
  %101 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter193 = getelementptr inbounds %struct.ImageParameters* %101, i64 0, i32 27
  %102 = load i32* %cod_counter193, align 4, !tbaa !3
  %tobool194 = icmp eq i32 %102, 0
  %brmerge = or i1 %tobool194, %10
  br i1 %brmerge, label %if.end218, label %if.then197

if.then197:                                       ; preds = %land.lhs.true192
  %value1199 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %102, i32* %value1199, align 4, !tbaa !3
  %value2200 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 0, i32* %value2200, align 4, !tbaa !3
  %mapping201 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping201, align 8, !tbaa !0
  %type202 = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 2, i32* %type202, align 4, !tbaa !3
  %arrayidx205 = getelementptr inbounds i32* %7, i64 2
  %103 = load i32* %arrayidx205, align 4, !tbaa !3
  %idxprom206 = sext i32 %103 to i64
  %partArr207 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %104 = load %struct.datapartition** %partArr207, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds %struct.datapartition* %104, i64 %idxprom206
  %writeSyntaxElement209 = getelementptr inbounds %struct.datapartition* %104, i64 %idxprom206, i32 2
  %105 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement209, align 8, !tbaa !0
  %call210 = tail call i32 %105(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx208) #7
  %106 = load i32* %currSEnr, align 4, !tbaa !3
  %inc212 = add nsw i32 %106, 1
  store i32 %inc212, i32* %currSEnr, align 4, !tbaa !3
  %len213 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %107 = load i32* %len213, align 4, !tbaa !3
  %arrayidx215 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 5, i64 2
  %108 = load i32* %arrayidx215, align 4, !tbaa !3
  %add216 = add nsw i32 %108, %107
  store i32 %add216, i32* %arrayidx215, align 4, !tbaa !3
  %109 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter217 = getelementptr inbounds %struct.ImageParameters* %109, i64 0, i32 27
  store i32 0, i32* %cod_counter217, align 4, !tbaa !3
  br label %if.end218

if.end218:                                        ; preds = %land.lhs.true192, %if.then197, %if.end189
  ret void
}

; Function Attrs: optsize
declare i32 @FmoGetLastCodedMBOfSliceGroup(i32) #1

; Function Attrs: optsize
declare i32 @FmoMB2SliceGroup(i32) #1

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @slice_too_big(i32 %rlc_bits) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %1 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 59
  %3 = load i32* %symbol_mode, align 4, !tbaa !3
  switch i32 %3, label %return [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond17.preheader
  ]

for.cond.preheader:                               ; preds = %entry
  %max_part_nr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4
  %4 = load i32* %max_part_nr, align 4, !tbaa !3
  %cmp148 = icmp sgt i32 %4, 0
  br i1 %cmp148, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %5 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %slice_argument = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 23
  %6 = load i32* %slice_argument, align 4, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %7 = trunc i64 %indvars.iv.next51 to i32
  %cmp1 = icmp slt i32 %7, %4
  br i1 %cmp1, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv50 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next51, %for.cond ]
  %bitstream = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv50, i32 0
  %8 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 0
  %9 = load i32* %byte_pos, align 4, !tbaa !3
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 1
  %10 = load i32* %bits_to_go, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %10, 8
  %inc = zext i1 %cmp2 to i32
  %inc. = add nsw i32 %inc, %9
  %cmp5 = icmp slt i32 %10, %rlc_bits
  %inc7 = zext i1 %cmp5 to i32
  %size_in_bytes.1 = add nsw i32 %inc., %inc7
  %cmp9 = icmp sgt i32 %size_in_bytes.1, %6
  %indvars.iv.next51 = add i64 %indvars.iv50, 1
  br i1 %cmp9, label %return, label %for.cond

for.cond17.preheader:                             ; preds = %entry
  %max_part_nr18 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4
  %11 = load i32* %max_part_nr18, align 4, !tbaa !3
  %cmp1945 = icmp sgt i32 %11, 0
  br i1 %cmp1945, label %for.body20.lr.ph, label %return

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %partArr22 = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  br label %for.body20

for.cond17:                                       ; preds = %for.body20
  %12 = load i32* %max_part_nr18, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %13, %12
  br i1 %cmp19, label %for.body20, label %return

for.body20:                                       ; preds = %for.cond17, %for.body20.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next, %for.cond17 ]
  %14 = load %struct.datapartition** %partArr22, align 8, !tbaa !0
  %ee_cabac = getelementptr inbounds %struct.datapartition* %14, i64 %indvars.iv, i32 1
  %call = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #7
  %15 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_argument24 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 23
  %16 = load i32* %slice_argument24, align 4, !tbaa !3
  %mul = shl nsw i32 %16, 3
  %cmp25 = icmp sgt i32 %call, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp25, label %return, label %for.cond17

return:                                           ; preds = %entry, %for.cond.preheader, %for.cond, %for.body, %for.cond17.preheader, %for.body20, %for.cond17
  %retval.0 = phi i32 [ 0, %for.cond17.preheader ], [ 1, %for.body20 ], [ 0, %for.cond17 ], [ 1, %for.body ], [ 0, %for.cond ], [ 0, %for.cond.preheader ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: optsize
declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define void @OneComponentLumaPrediction4x4(i32* nocapture %mpred, i32 %pic_pix_x, i32 %pic_pix_y, i16* nocapture %mv, i16 signext %ref, %struct.storable_picture** nocapture %list) #0 {
entry:
  %shl = shl i32 %pic_pix_y, 2
  %arrayidx = getelementptr inbounds i16* %mv, i64 1
  %0 = load i16* %arrayidx, align 2, !tbaa !4
  %conv = sext i16 %0 to i32
  %add = add nsw i32 %conv, %shl
  %add1 = add nsw i32 %add, 4
  %add2 = add nsw i32 %add, 8
  %add3 = add nsw i32 %add, 12
  %shl4 = shl i32 %pic_pix_x, 2
  %1 = load i16* %mv, align 2, !tbaa !4
  %conv6 = sext i16 %1 to i32
  %add7 = add nsw i32 %conv6, %shl4
  %add8 = add nsw i32 %add7, 4
  %add9 = add nsw i32 %add7, 8
  %add10 = add nsw i32 %add7, 12
  %idxprom = sext i16 %ref to i64
  %arrayidx11 = getelementptr inbounds %struct.storable_picture** %list, i64 %idxprom
  %2 = load %struct.storable_picture** %arrayidx11, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 18
  %3 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 19
  %4 = load i32* %size_y, align 4, !tbaa !3
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 28
  %5 = load i16*** %imgY_ups, align 8, !tbaa !0
  %call = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add, i32 %add7, i32 %4, i32 %3) #7
  %conv16 = zext i16 %call to i32
  %incdec.ptr = getelementptr inbounds i32* %mpred, i64 1
  store i32 %conv16, i32* %mpred, align 4, !tbaa !3
  %call17 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add, i32 %add8, i32 %4, i32 %3) #7
  %conv18 = zext i16 %call17 to i32
  %incdec.ptr19 = getelementptr inbounds i32* %mpred, i64 2
  store i32 %conv18, i32* %incdec.ptr, align 4, !tbaa !3
  %call20 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add, i32 %add9, i32 %4, i32 %3) #7
  %conv21 = zext i16 %call20 to i32
  %incdec.ptr22 = getelementptr inbounds i32* %mpred, i64 3
  store i32 %conv21, i32* %incdec.ptr19, align 4, !tbaa !3
  %call23 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add, i32 %add10, i32 %4, i32 %3) #7
  %conv24 = zext i16 %call23 to i32
  %incdec.ptr25 = getelementptr inbounds i32* %mpred, i64 4
  store i32 %conv24, i32* %incdec.ptr22, align 4, !tbaa !3
  %call26 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add1, i32 %add7, i32 %4, i32 %3) #7
  %conv27 = zext i16 %call26 to i32
  %incdec.ptr28 = getelementptr inbounds i32* %mpred, i64 5
  store i32 %conv27, i32* %incdec.ptr25, align 4, !tbaa !3
  %call29 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add1, i32 %add8, i32 %4, i32 %3) #7
  %conv30 = zext i16 %call29 to i32
  %incdec.ptr31 = getelementptr inbounds i32* %mpred, i64 6
  store i32 %conv30, i32* %incdec.ptr28, align 4, !tbaa !3
  %call32 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add1, i32 %add9, i32 %4, i32 %3) #7
  %conv33 = zext i16 %call32 to i32
  %incdec.ptr34 = getelementptr inbounds i32* %mpred, i64 7
  store i32 %conv33, i32* %incdec.ptr31, align 4, !tbaa !3
  %call35 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add1, i32 %add10, i32 %4, i32 %3) #7
  %conv36 = zext i16 %call35 to i32
  %incdec.ptr37 = getelementptr inbounds i32* %mpred, i64 8
  store i32 %conv36, i32* %incdec.ptr34, align 4, !tbaa !3
  %call38 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add2, i32 %add7, i32 %4, i32 %3) #7
  %conv39 = zext i16 %call38 to i32
  %incdec.ptr40 = getelementptr inbounds i32* %mpred, i64 9
  store i32 %conv39, i32* %incdec.ptr37, align 4, !tbaa !3
  %call41 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add2, i32 %add8, i32 %4, i32 %3) #7
  %conv42 = zext i16 %call41 to i32
  %incdec.ptr43 = getelementptr inbounds i32* %mpred, i64 10
  store i32 %conv42, i32* %incdec.ptr40, align 4, !tbaa !3
  %call44 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add2, i32 %add9, i32 %4, i32 %3) #7
  %conv45 = zext i16 %call44 to i32
  %incdec.ptr46 = getelementptr inbounds i32* %mpred, i64 11
  store i32 %conv45, i32* %incdec.ptr43, align 4, !tbaa !3
  %call47 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add2, i32 %add10, i32 %4, i32 %3) #7
  %conv48 = zext i16 %call47 to i32
  %incdec.ptr49 = getelementptr inbounds i32* %mpred, i64 12
  store i32 %conv48, i32* %incdec.ptr46, align 4, !tbaa !3
  %call50 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add3, i32 %add7, i32 %4, i32 %3) #7
  %conv51 = zext i16 %call50 to i32
  %incdec.ptr52 = getelementptr inbounds i32* %mpred, i64 13
  store i32 %conv51, i32* %incdec.ptr49, align 4, !tbaa !3
  %call53 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add3, i32 %add8, i32 %4, i32 %3) #7
  %conv54 = zext i16 %call53 to i32
  %incdec.ptr55 = getelementptr inbounds i32* %mpred, i64 14
  store i32 %conv54, i32* %incdec.ptr52, align 4, !tbaa !3
  %call56 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add3, i32 %add9, i32 %4, i32 %3) #7
  %conv57 = zext i16 %call56 to i32
  %incdec.ptr58 = getelementptr inbounds i32* %mpred, i64 15
  store i32 %conv57, i32* %incdec.ptr55, align 4, !tbaa !3
  %call59 = tail call zeroext i16 @UMVPelY_14(i16** %5, i32 %add3, i32 %add10, i32 %4, i32 %3) #7
  %conv60 = zext i16 %call59 to i32
  store i32 %conv60, i32* %incdec.ptr58, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare zeroext i16 @UMVPelY_14(i16**, i32, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @copyblock4x4(i32* nocapture %mpred, [4 x i32]* nocapture %block) #0 {
entry:
  %arrayidx1 = getelementptr inbounds [4 x i32]* %block, i64 0, i64 0
  %0 = load i32* %arrayidx1, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %mpred, i64 1
  store i32 %0, i32* %mpred, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [4 x i32]* %block, i64 1, i64 0
  %1 = load i32* %arrayidx3, align 4, !tbaa !3
  %incdec.ptr4 = getelementptr inbounds i32* %mpred, i64 2
  store i32 %1, i32* %incdec.ptr, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [4 x i32]* %block, i64 2, i64 0
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  %incdec.ptr7 = getelementptr inbounds i32* %mpred, i64 3
  store i32 %2, i32* %incdec.ptr4, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [4 x i32]* %block, i64 3, i64 0
  %3 = load i32* %arrayidx9, align 4, !tbaa !3
  %incdec.ptr10 = getelementptr inbounds i32* %mpred, i64 4
  store i32 %3, i32* %incdec.ptr7, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds [4 x i32]* %block, i64 0, i64 1
  %4 = load i32* %arrayidx12, align 4, !tbaa !3
  %incdec.ptr13 = getelementptr inbounds i32* %mpred, i64 5
  store i32 %4, i32* %incdec.ptr10, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [4 x i32]* %block, i64 1, i64 1
  %5 = load i32* %arrayidx15, align 4, !tbaa !3
  %incdec.ptr16 = getelementptr inbounds i32* %mpred, i64 6
  store i32 %5, i32* %incdec.ptr13, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds [4 x i32]* %block, i64 2, i64 1
  %6 = load i32* %arrayidx18, align 4, !tbaa !3
  %incdec.ptr19 = getelementptr inbounds i32* %mpred, i64 7
  store i32 %6, i32* %incdec.ptr16, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [4 x i32]* %block, i64 3, i64 1
  %7 = load i32* %arrayidx21, align 4, !tbaa !3
  %incdec.ptr22 = getelementptr inbounds i32* %mpred, i64 8
  store i32 %7, i32* %incdec.ptr19, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [4 x i32]* %block, i64 0, i64 2
  %8 = load i32* %arrayidx24, align 4, !tbaa !3
  %incdec.ptr25 = getelementptr inbounds i32* %mpred, i64 9
  store i32 %8, i32* %incdec.ptr22, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds [4 x i32]* %block, i64 1, i64 2
  %9 = load i32* %arrayidx27, align 4, !tbaa !3
  %incdec.ptr28 = getelementptr inbounds i32* %mpred, i64 10
  store i32 %9, i32* %incdec.ptr25, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds [4 x i32]* %block, i64 2, i64 2
  %10 = load i32* %arrayidx30, align 4, !tbaa !3
  %incdec.ptr31 = getelementptr inbounds i32* %mpred, i64 11
  store i32 %10, i32* %incdec.ptr28, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds [4 x i32]* %block, i64 3, i64 2
  %11 = load i32* %arrayidx33, align 4, !tbaa !3
  %incdec.ptr34 = getelementptr inbounds i32* %mpred, i64 12
  store i32 %11, i32* %incdec.ptr31, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds [4 x i32]* %block, i64 0, i64 3
  %12 = load i32* %arrayidx36, align 4, !tbaa !3
  %incdec.ptr37 = getelementptr inbounds i32* %mpred, i64 13
  store i32 %12, i32* %incdec.ptr34, align 4, !tbaa !3
  %arrayidx39 = getelementptr inbounds [4 x i32]* %block, i64 1, i64 3
  %13 = load i32* %arrayidx39, align 4, !tbaa !3
  %incdec.ptr40 = getelementptr inbounds i32* %mpred, i64 14
  store i32 %13, i32* %incdec.ptr37, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds [4 x i32]* %block, i64 2, i64 3
  %14 = load i32* %arrayidx42, align 4, !tbaa !3
  %incdec.ptr43 = getelementptr inbounds i32* %mpred, i64 15
  store i32 %14, i32* %incdec.ptr40, align 4, !tbaa !3
  %arrayidx45 = getelementptr inbounds [4 x i32]* %block, i64 3, i64 3
  %15 = load i32* %arrayidx45, align 4, !tbaa !3
  store i32 %15, i32* %incdec.ptr43, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LumaPrediction4x4(i32 %block_x, i32 %block_y, i32 %p_dir, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_ref_idx, i16 signext %bw_ref_idx) #0 {
entry:
  %add = add i32 %block_x, 4
  %add1 = add nsw i32 %block_y, 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 37
  %1 = load i32* %opix_x, align 4, !tbaa !3
  %add2 = add nsw i32 %1, %block_x
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %2 = load i32* %opix_y, align 4, !tbaa !3
  %add3 = add nsw i32 %2, %block_y
  %shr = ashr i32 %block_x, 2
  %shr4 = ashr i32 %block_y, 2
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 19
  %6 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %lor.rhs [
    i32 0, label %lor.end
    i32 3, label %lor.end
  ]

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 20
  %8 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %8, 0
  br i1 %tobool7, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %type8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %9 = load i32* %type8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %9, 1
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %land.lhs.true, %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp9, %land.rhs ], [ true, %land.lhs.true ]
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %11 = load i16******* %all_mv, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %12 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %12, 0
  br i1 %tobool10, label %cond.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.end
  %mb_field = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22
  %13 = load i32* %mb_field, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %13, 0
  br i1 %tobool12, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true11
  %rem379 = shl i32 %3, 1
  %14 = and i32 %rem379, 2
  %15 = add i32 %14, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true11, %lor.end, %cond.true
  %cond15 = phi i32 [ %15, %cond.true ], [ 0, %land.lhs.true11 ], [ 0, %lor.end ]
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 34
  %16 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool16 = icmp ne i32 %16, 0
  %cmp18 = icmp eq i16 %fw_ref_idx, 0
  %or.cond = and i1 %tobool16, %cmp18
  %cmp22 = icmp eq i16 %bw_ref_idx, 0
  %or.cond380 = and i1 %or.cond, %cmp22
  %cmp25 = icmp eq i32 %p_dir, 2
  %or.cond381 = and i1 %or.cond380, %cmp25
  %cmp28 = icmp eq i32 %fw_mode, 1
  %or.cond382 = and i1 %or.cond381, %cmp28
  %cmp31 = icmp eq i32 %bw_mode, 1
  %or.cond383 = and i1 %or.cond382, %cmp31
  br i1 %or.cond383, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %cmp34 = icmp eq i32 %16, 1
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %cond39.in = select i1 %cmp34, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond39 = load i16******* %cond39.in, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %mv_array.0 = phi i16****** [ %cond39, %if.then ], [ %11, %cond.end ]
  %cmp40 = icmp eq i32 %p_dir, 0
  %17 = and i32 %p_dir, -3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.end
  %idxprom46 = sext i32 %fw_mode to i64
  %idxprom47 = sext i16 %fw_ref_idx to i64
  %idxprom48 = sext i32 %shr4 to i64
  %idxprom49 = sext i32 %shr to i64
  %arrayidx50 = getelementptr inbounds i16****** %mv_array.0, i64 %idxprom49
  %19 = load i16****** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i16***** %19, i64 %idxprom48
  %20 = load i16***** %arrayidx51, align 8, !tbaa !0
  %21 = load i16**** %20, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i16*** %21, i64 %idxprom47
  %22 = load i16*** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16** %22, i64 %idxprom46
  %23 = load i16** %arrayidx54, align 8, !tbaa !0
  %idxprom56378 = zext i32 %cond15 to i64
  %arrayidx57 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom56378
  %24 = load %struct.storable_picture*** %arrayidx57, align 8, !tbaa !0
  tail call void @OneComponentLumaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.fw_pred, i64 0, i64 0), i32 %add2, i32 %add3, i16* %23, i16 signext %fw_ref_idx, %struct.storable_picture** %24) #8
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then45
  %p_dir.off = add i32 %p_dir, -1
  %25 = icmp ult i32 %p_dir.off, 2
  br i1 %25, label %if.then64, label %if.end77

if.then64:                                        ; preds = %if.end58
  %idxprom65 = sext i32 %bw_mode to i64
  %idxprom66 = sext i16 %bw_ref_idx to i64
  %idxprom67 = sext i32 %shr4 to i64
  %idxprom68 = sext i32 %shr to i64
  %arrayidx69 = getelementptr inbounds i16****** %mv_array.0, i64 %idxprom68
  %26 = load i16****** %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i16***** %26, i64 %idxprom67
  %27 = load i16***** %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i16**** %27, i64 1
  %28 = load i16**** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i16*** %28, i64 %idxprom66
  %29 = load i16*** %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i16** %29, i64 %idxprom65
  %30 = load i16** %arrayidx73, align 8, !tbaa !0
  %add74376 = or i32 %cond15, 1
  %idxprom75377 = zext i32 %add74376 to i64
  %arrayidx76 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom75377
  %31 = load %struct.storable_picture*** %arrayidx76, align 8, !tbaa !0
  tail call void @OneComponentLumaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.bw_pred, i64 0, i64 0), i32 %add2, i32 %add3, i16* %30, i16 signext %bw_ref_idx, %struct.storable_picture** %31) #8
  br label %if.end77

if.end77:                                         ; preds = %if.end58, %if.then64
  br i1 %10, label %if.then79, label %if.else202

if.then79:                                        ; preds = %if.end77
  br i1 %cmp25, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then79
  %idxprom89 = sext i16 %bw_ref_idx to i64
  %idxprom90 = sext i16 %fw_ref_idx to i64
  %32 = load i32***** @wbp_weight, align 8, !tbaa !0
  %33 = load i32**** %32, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds i32*** %33, i64 %idxprom90
  %34 = load i32*** %arrayidx92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32** %34, i64 %idxprom89
  %35 = load i32** %arrayidx93, align 8, !tbaa !0
  %36 = load i32* %35, align 4, !tbaa !3
  %arrayidx97 = getelementptr inbounds i32**** %32, i64 1
  %37 = load i32**** %arrayidx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i32*** %37, i64 %idxprom90
  %38 = load i32*** %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i32** %38, i64 %idxprom89
  %39 = load i32** %arrayidx99, align 8, !tbaa !0
  %40 = load i32* %39, align 4, !tbaa !3
  %41 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul104 = shl i32 %41, 1
  %42 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add106 = add nsw i32 %42, 1
  %43 = load i32**** @wp_offset, align 8, !tbaa !0
  %44 = load i32*** %43, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32** %44, i64 %idxprom90
  %45 = load i32** %arrayidx110, align 8, !tbaa !0
  %46 = load i32* %45, align 4, !tbaa !3
  %arrayidx113 = getelementptr inbounds i32*** %43, i64 1
  %47 = load i32*** %arrayidx113, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32** %47, i64 %idxprom89
  %48 = load i32** %arrayidx114, align 8, !tbaa !0
  %49 = load i32* %48, align 4, !tbaa !3
  %add116 = add i32 %46, 1
  %add117 = add i32 %add116, %49
  %shr118 = ashr i32 %add117, 1
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 155
  %51 = load i32* %max_imgpel_value.i, align 4, !tbaa !3
  %52 = sext i32 %block_x to i64
  %53 = add i32 %block_x, 1
  %54 = icmp sgt i32 %add, %53
  %smax = select i1 %54, i32 %add, i32 %53
  %55 = add i32 %smax, -1
  %56 = sub i32 %55, %block_x
  %57 = zext i32 %56 to i64
  %58 = add i64 %57, 1
  %59 = sext i32 %block_y to i64
  br label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.cond.preheader, %for.inc125
  %indvars.iv432 = phi i64 [ %59, %for.cond.preheader ], [ %indvars.iv.next433, %for.inc125 ]
  %fpred.0402 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.fw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep431, %for.inc125 ]
  %bpred.0401 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.bw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep, %for.inc125 ]
  %scevgep = getelementptr i32* %bpred.0401, i64 %58
  br label %for.body88

for.body88:                                       ; preds = %for.cond85.preheader, %clip1a.exit
  %indvars.iv = phi i64 [ %52, %for.cond85.preheader ], [ %indvars.iv.next, %clip1a.exit ]
  %fpred.1399 = phi i32* [ %fpred.0402, %for.cond85.preheader ], [ %incdec.ptr, %clip1a.exit ]
  %bpred.1398 = phi i32* [ %bpred.0401, %for.cond85.preheader ], [ %incdec.ptr101, %clip1a.exit ]
  %incdec.ptr = getelementptr inbounds i32* %fpred.1399, i64 1
  %60 = load i32* %fpred.1399, align 4, !tbaa !3
  %mul = mul nsw i32 %60, %36
  %incdec.ptr101 = getelementptr inbounds i32* %bpred.1398, i64 1
  %61 = load i32* %bpred.1398, align 4, !tbaa !3
  %mul102 = mul nsw i32 %61, %40
  %add103 = add nsw i32 %mul102, %mul
  %add105 = add nsw i32 %add103, %mul104
  %shr107 = ashr i32 %add105, %add106
  %add119 = add nsw i32 %shr118, %shr107
  %cmp.i = icmp slt i32 %51, %add119
  br i1 %cmp.i, label %clip1a.exit, label %cond.false.i

cond.false.i:                                     ; preds = %for.body88
  %cmp2.i = icmp slt i32 %add119, 0
  %cond.i = select i1 %cmp2.i, i32 0, i32 %add119
  br label %clip1a.exit

clip1a.exit:                                      ; preds = %for.body88, %cond.false.i
  %cond6.i = phi i32 [ %cond.i, %cond.false.i ], [ %51, %for.body88 ]
  %conv120 = trunc i32 %cond6.i to i16
  %arrayidx124 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv432
  store i16 %conv120, i16* %arrayidx124, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %62 = trunc i64 %indvars.iv.next to i32
  %cmp86 = icmp slt i32 %62, %add
  br i1 %cmp86, label %for.body88, label %for.inc125

for.inc125:                                       ; preds = %clip1a.exit
  %scevgep431 = getelementptr i32* %fpred.0402, i64 %58
  %indvars.iv.next433 = add i64 %indvars.iv432, 1
  %63 = trunc i64 %indvars.iv.next433 to i32
  %cmp83 = icmp slt i32 %63, %add1
  br i1 %cmp83, label %for.cond85.preheader, label %if.end279

if.else:                                          ; preds = %if.then79
  br i1 %cmp40, label %for.cond131.preheader, label %for.cond166.preheader

for.cond166.preheader:                            ; preds = %if.else
  %idxprom174 = sext i16 %bw_ref_idx to i64
  %64 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32*** %64, i64 1
  %65 = load i32*** %arrayidx175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32** %65, i64 %idxprom174
  %66 = load i32** %arrayidx176, align 8, !tbaa !0
  %67 = load i32* %66, align 4, !tbaa !3
  %68 = load i32* @wp_luma_round, align 4, !tbaa !3
  %69 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %70 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i32*** %70, i64 1
  %71 = load i32*** %arrayidx183, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i32** %71, i64 %idxprom174
  %72 = load i32** %arrayidx184, align 8, !tbaa !0
  %73 = load i32* %72, align 4, !tbaa !3
  %74 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i384 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 155
  %75 = load i32* %max_imgpel_value.i384, align 4, !tbaa !3
  %76 = sext i32 %block_x to i64
  %77 = add i32 %block_x, 1
  %78 = icmp sgt i32 %add, %77
  %smax442 = select i1 %78, i32 %add, i32 %77
  %79 = add i32 %smax442, -1
  %80 = sub i32 %79, %block_x
  %81 = zext i32 %80 to i64
  %82 = add i64 %81, 1
  %83 = sext i32 %block_y to i64
  br label %for.cond170.preheader

for.cond131.preheader:                            ; preds = %if.else
  %idxprom139 = sext i16 %fw_ref_idx to i64
  %84 = load i32**** @wp_weight, align 8, !tbaa !0
  %85 = load i32*** %84, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32** %85, i64 %idxprom139
  %86 = load i32** %arrayidx141, align 8, !tbaa !0
  %87 = load i32* %86, align 4, !tbaa !3
  %88 = load i32* @wp_luma_round, align 4, !tbaa !3
  %89 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %90 = load i32**** @wp_offset, align 8, !tbaa !0
  %91 = load i32*** %90, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32** %91, i64 %idxprom139
  %92 = load i32** %arrayidx149, align 8, !tbaa !0
  %93 = load i32* %92, align 4, !tbaa !3
  %94 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i391 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 155
  %95 = load i32* %max_imgpel_value.i391, align 4, !tbaa !3
  %96 = sext i32 %block_x to i64
  %97 = add i32 %block_x, 1
  %98 = icmp sgt i32 %add, %97
  %smax436 = select i1 %98, i32 %add, i32 %97
  %99 = add i32 %smax436, -1
  %100 = sub i32 %99, %block_x
  %101 = zext i32 %100 to i64
  %102 = add i64 %101, 1
  %103 = sext i32 %block_y to i64
  br label %for.cond135.preheader

for.cond135.preheader:                            ; preds = %for.cond131.preheader, %for.inc162
  %indvars.iv438 = phi i64 [ %103, %for.cond131.preheader ], [ %indvars.iv.next439, %for.inc162 ]
  %fpred.2407 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.fw_pred, i64 0, i64 0), %for.cond131.preheader ], [ %scevgep437, %for.inc162 ]
  br label %for.body138

for.body138:                                      ; preds = %for.cond135.preheader, %clip1a.exit397
  %indvars.iv434 = phi i64 [ %96, %for.cond135.preheader ], [ %indvars.iv.next435, %clip1a.exit397 ]
  %fpred.3404 = phi i32* [ %fpred.2407, %for.cond135.preheader ], [ %incdec.ptr143, %clip1a.exit397 ]
  %incdec.ptr143 = getelementptr inbounds i32* %fpred.3404, i64 1
  %104 = load i32* %fpred.3404, align 4, !tbaa !3
  %mul144 = mul nsw i32 %104, %87
  %add145 = add nsw i32 %mul144, %88
  %shr146 = ashr i32 %add145, %89
  %add151 = add nsw i32 %93, %shr146
  %cmp.i392 = icmp slt i32 %95, %add151
  br i1 %cmp.i392, label %clip1a.exit397, label %cond.false.i395

cond.false.i395:                                  ; preds = %for.body138
  %cmp2.i393 = icmp slt i32 %add151, 0
  %cond.i394 = select i1 %cmp2.i393, i32 0, i32 %add151
  br label %clip1a.exit397

clip1a.exit397:                                   ; preds = %for.body138, %cond.false.i395
  %cond6.i396 = phi i32 [ %cond.i394, %cond.false.i395 ], [ %95, %for.body138 ]
  %conv153 = trunc i32 %cond6.i396 to i16
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 45, i64 %indvars.iv434, i64 %indvars.iv438
  store i16 %conv153, i16* %arrayidx158, align 2, !tbaa !4
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %105 = trunc i64 %indvars.iv.next435 to i32
  %cmp136 = icmp slt i32 %105, %add
  br i1 %cmp136, label %for.body138, label %for.inc162

for.inc162:                                       ; preds = %clip1a.exit397
  %scevgep437 = getelementptr i32* %fpred.2407, i64 %102
  %indvars.iv.next439 = add i64 %indvars.iv438, 1
  %106 = trunc i64 %indvars.iv.next439 to i32
  %cmp132 = icmp slt i32 %106, %add1
  br i1 %cmp132, label %for.cond135.preheader, label %if.end279

for.cond170.preheader:                            ; preds = %for.cond166.preheader, %for.inc197
  %indvars.iv444 = phi i64 [ %83, %for.cond166.preheader ], [ %indvars.iv.next445, %for.inc197 ]
  %bpred.2412 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.bw_pred, i64 0, i64 0), %for.cond166.preheader ], [ %scevgep443, %for.inc197 ]
  br label %for.body173

for.body173:                                      ; preds = %for.cond170.preheader, %clip1a.exit390
  %indvars.iv440 = phi i64 [ %76, %for.cond170.preheader ], [ %indvars.iv.next441, %clip1a.exit390 ]
  %bpred.3409 = phi i32* [ %bpred.2412, %for.cond170.preheader ], [ %incdec.ptr178, %clip1a.exit390 ]
  %incdec.ptr178 = getelementptr inbounds i32* %bpred.3409, i64 1
  %107 = load i32* %bpred.3409, align 4, !tbaa !3
  %mul179 = mul nsw i32 %107, %67
  %add180 = add nsw i32 %mul179, %68
  %shr181 = ashr i32 %add180, %69
  %add186 = add nsw i32 %73, %shr181
  %cmp.i385 = icmp slt i32 %75, %add186
  br i1 %cmp.i385, label %clip1a.exit390, label %cond.false.i388

cond.false.i388:                                  ; preds = %for.body173
  %cmp2.i386 = icmp slt i32 %add186, 0
  %cond.i387 = select i1 %cmp2.i386, i32 0, i32 %add186
  br label %clip1a.exit390

clip1a.exit390:                                   ; preds = %for.body173, %cond.false.i388
  %cond6.i389 = phi i32 [ %cond.i387, %cond.false.i388 ], [ %75, %for.body173 ]
  %conv188 = trunc i32 %cond6.i389 to i16
  %arrayidx193 = getelementptr inbounds %struct.ImageParameters* %74, i64 0, i32 45, i64 %indvars.iv440, i64 %indvars.iv444
  store i16 %conv188, i16* %arrayidx193, align 2, !tbaa !4
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %108 = trunc i64 %indvars.iv.next441 to i32
  %cmp171 = icmp slt i32 %108, %add
  br i1 %cmp171, label %for.body173, label %for.inc197

for.inc197:                                       ; preds = %clip1a.exit390
  %scevgep443 = getelementptr i32* %bpred.2412, i64 %82
  %indvars.iv.next445 = add i64 %indvars.iv444, 1
  %109 = trunc i64 %indvars.iv.next445 to i32
  %cmp167 = icmp slt i32 %109, %add1
  br i1 %cmp167, label %for.cond170.preheader, label %if.end279

if.else202:                                       ; preds = %if.end77
  %110 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %111 = sext i32 %block_x to i64
  %112 = add i32 %block_x, 1
  %113 = icmp sgt i32 %add, %112
  %smax448 = select i1 %113, i32 %add, i32 %112
  %114 = add i32 %smax448, -1
  %115 = sub i32 %114, %block_x
  %116 = zext i32 %115 to i64
  %117 = add i64 %116, 1
  %118 = sext i32 %block_y to i64
  br i1 %cmp25, label %for.cond210.preheader, label %if.else230

for.cond210.preheader:                            ; preds = %if.else202, %for.inc227
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %for.inc227 ], [ %118, %if.else202 ]
  %fpred.4419 = phi i32* [ %scevgep450, %for.inc227 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.fw_pred, i64 0, i64 0), %if.else202 ]
  %bpred.4418 = phi i32* [ %scevgep449, %for.inc227 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.bw_pred, i64 0, i64 0), %if.else202 ]
  %scevgep449 = getelementptr i32* %bpred.4418, i64 %117
  br label %for.body213

for.body213:                                      ; preds = %for.cond210.preheader, %for.body213
  %indvars.iv446 = phi i64 [ %111, %for.cond210.preheader ], [ %indvars.iv.next447, %for.body213 ]
  %fpred.5415 = phi i32* [ %fpred.4419, %for.cond210.preheader ], [ %incdec.ptr214, %for.body213 ]
  %bpred.5414 = phi i32* [ %bpred.4418, %for.cond210.preheader ], [ %incdec.ptr215, %for.body213 ]
  %incdec.ptr214 = getelementptr inbounds i32* %fpred.5415, i64 1
  %119 = load i32* %fpred.5415, align 4, !tbaa !3
  %incdec.ptr215 = getelementptr inbounds i32* %bpred.5414, i64 1
  %120 = load i32* %bpred.5414, align 4, !tbaa !3
  %add216 = add i32 %119, 1
  %add217 = add i32 %add216, %120
  %div = sdiv i32 %add217, 2
  %conv218 = trunc i32 %div to i16
  %arrayidx223 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 45, i64 %indvars.iv446, i64 %indvars.iv451
  store i16 %conv218, i16* %arrayidx223, align 2, !tbaa !4
  %indvars.iv.next447 = add i64 %indvars.iv446, 1
  %121 = trunc i64 %indvars.iv.next447 to i32
  %cmp211 = icmp slt i32 %121, %add
  br i1 %cmp211, label %for.body213, label %for.inc227

for.inc227:                                       ; preds = %for.body213
  %scevgep450 = getelementptr i32* %fpred.4419, i64 %117
  %indvars.iv.next452 = add i64 %indvars.iv451, 1
  %122 = trunc i64 %indvars.iv.next452 to i32
  %cmp207 = icmp slt i32 %122, %add1
  br i1 %cmp207, label %for.cond210.preheader, label %if.end279

if.else230:                                       ; preds = %if.else202
  br i1 %cmp40, label %for.cond238.preheader, label %for.cond260.preheader

for.cond238.preheader:                            ; preds = %if.else230, %for.inc252
  %indvars.iv457 = phi i64 [ %indvars.iv.next458, %for.inc252 ], [ %118, %if.else230 ]
  %fpred.6424 = phi i32* [ %scevgep456, %for.inc252 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.fw_pred, i64 0, i64 0), %if.else230 ]
  br label %for.body241

for.body241:                                      ; preds = %for.cond238.preheader, %for.body241
  %indvars.iv453 = phi i64 [ %111, %for.cond238.preheader ], [ %indvars.iv.next454, %for.body241 ]
  %fpred.7421 = phi i32* [ %fpred.6424, %for.cond238.preheader ], [ %incdec.ptr242, %for.body241 ]
  %incdec.ptr242 = getelementptr inbounds i32* %fpred.7421, i64 1
  %123 = load i32* %fpred.7421, align 4, !tbaa !3
  %conv243 = trunc i32 %123 to i16
  %arrayidx248 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 45, i64 %indvars.iv453, i64 %indvars.iv457
  store i16 %conv243, i16* %arrayidx248, align 2, !tbaa !4
  %indvars.iv.next454 = add i64 %indvars.iv453, 1
  %124 = trunc i64 %indvars.iv.next454 to i32
  %cmp239 = icmp slt i32 %124, %add
  br i1 %cmp239, label %for.body241, label %for.inc252

for.inc252:                                       ; preds = %for.body241
  %scevgep456 = getelementptr i32* %fpred.6424, i64 %117
  %indvars.iv.next458 = add i64 %indvars.iv457, 1
  %125 = trunc i64 %indvars.iv.next458 to i32
  %cmp235 = icmp slt i32 %125, %add1
  br i1 %cmp235, label %for.cond238.preheader, label %if.end279

for.cond260.preheader:                            ; preds = %if.else230, %for.inc274
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %for.inc274 ], [ %118, %if.else230 ]
  %bpred.6429 = phi i32* [ %scevgep462, %for.inc274 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4.bw_pred, i64 0, i64 0), %if.else230 ]
  br label %for.body263

for.body263:                                      ; preds = %for.cond260.preheader, %for.body263
  %indvars.iv459 = phi i64 [ %111, %for.cond260.preheader ], [ %indvars.iv.next460, %for.body263 ]
  %bpred.7426 = phi i32* [ %bpred.6429, %for.cond260.preheader ], [ %incdec.ptr264, %for.body263 ]
  %incdec.ptr264 = getelementptr inbounds i32* %bpred.7426, i64 1
  %126 = load i32* %bpred.7426, align 4, !tbaa !3
  %conv265 = trunc i32 %126 to i16
  %arrayidx270 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 45, i64 %indvars.iv459, i64 %indvars.iv463
  store i16 %conv265, i16* %arrayidx270, align 2, !tbaa !4
  %indvars.iv.next460 = add i64 %indvars.iv459, 1
  %127 = trunc i64 %indvars.iv.next460 to i32
  %cmp261 = icmp slt i32 %127, %add
  br i1 %cmp261, label %for.body263, label %for.inc274

for.inc274:                                       ; preds = %for.body263
  %scevgep462 = getelementptr i32* %bpred.6429, i64 %117
  %indvars.iv.next464 = add i64 %indvars.iv463, 1
  %128 = trunc i64 %indvars.iv.next464 to i32
  %cmp257 = icmp slt i32 %128, %add1
  br i1 %cmp257, label %for.cond260.preheader, label %if.end279

if.end279:                                        ; preds = %for.inc274, %for.inc252, %for.inc227, %for.inc197, %for.inc162, %for.inc125
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LumaPrediction4x4Bi(i32 %block_x, i32 %block_y, i32 %p_dir, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_ref_idx, i16 signext %bw_ref_idx, i32 %list) #0 {
entry:
  %add = add i32 %block_x, 4
  %add1 = add nsw i32 %block_y, 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 37
  %1 = load i32* %opix_x, align 4, !tbaa !3
  %add2 = add nsw i32 %1, %block_x
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %2 = load i32* %opix_y, align 4, !tbaa !3
  %add3 = add nsw i32 %2, %block_y
  %shr = ashr i32 %block_x, 2
  %shr4 = ashr i32 %block_y, 2
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 19
  %6 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %lor.rhs [
    i32 0, label %lor.end
    i32 3, label %lor.end
  ]

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 20
  %8 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %8, 0
  br i1 %tobool7, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %type8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %9 = load i32* %type8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %9, 1
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %land.lhs.true, %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp9, %land.rhs ], [ true, %land.lhs.true ]
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %11 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %11, 0
  br i1 %tobool10, label %cond.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.end
  %mb_field = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22
  %12 = load i32* %mb_field, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %12, 0
  br i1 %tobool12, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true11
  %rem343 = shl i32 %3, 1
  %13 = and i32 %rem343, 2
  %14 = add i32 %13, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true11, %lor.end, %cond.true
  %cond15 = phi i32 [ %14, %cond.true ], [ 0, %land.lhs.true11 ], [ 0, %lor.end ]
  %tobool16 = icmp eq i32 %list, 0
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %cond20.in = select i1 %tobool16, i16******* %bipred_mv2, i16******* %bipred_mv1
  %cond20 = load i16******* %cond20.in, align 8
  %cmp21 = icmp eq i32 %p_dir, 0
  %cmp23 = icmp eq i32 %p_dir, 2
  %15 = and i32 %p_dir, -3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %idxprom24 = sext i32 %fw_mode to i64
  %idxprom25 = sext i16 %fw_ref_idx to i64
  %idxprom26 = sext i32 %shr4 to i64
  %idxprom27 = sext i32 %shr to i64
  %arrayidx28 = getelementptr inbounds i16****** %cond20, i64 %idxprom27
  %17 = load i16****** %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i16***** %17, i64 %idxprom26
  %18 = load i16***** %arrayidx29, align 8, !tbaa !0
  %19 = load i16**** %18, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i16*** %19, i64 %idxprom25
  %20 = load i16*** %arrayidx31, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i16** %20, i64 %idxprom24
  %21 = load i16** %arrayidx32, align 8, !tbaa !0
  %idxprom34342 = zext i32 %cond15 to i64
  %arrayidx35 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom34342
  %22 = load %struct.storable_picture*** %arrayidx35, align 8, !tbaa !0
  tail call void @OneComponentLumaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.fw_pred, i64 0, i64 0), i32 %add2, i32 %add3, i16* %21, i16 signext %fw_ref_idx, %struct.storable_picture** %22) #8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %p_dir.off = add i32 %p_dir, -1
  %23 = icmp ult i32 %p_dir.off, 2
  br i1 %23, label %if.then39, label %if.end52

if.then39:                                        ; preds = %if.end
  %idxprom40 = sext i32 %bw_mode to i64
  %idxprom41 = sext i16 %bw_ref_idx to i64
  %idxprom42 = sext i32 %shr4 to i64
  %idxprom43 = sext i32 %shr to i64
  %arrayidx44 = getelementptr inbounds i16****** %cond20, i64 %idxprom43
  %24 = load i16****** %arrayidx44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i16***** %24, i64 %idxprom42
  %25 = load i16***** %arrayidx45, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i16**** %25, i64 1
  %26 = load i16**** %arrayidx46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i16*** %26, i64 %idxprom41
  %27 = load i16*** %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16** %27, i64 %idxprom40
  %28 = load i16** %arrayidx48, align 8, !tbaa !0
  %add49340 = or i32 %cond15, 1
  %idxprom50341 = zext i32 %add49340 to i64
  %arrayidx51 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom50341
  %29 = load %struct.storable_picture*** %arrayidx51, align 8, !tbaa !0
  tail call void @OneComponentLumaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.bw_pred, i64 0, i64 0), i32 %add2, i32 %add3, i16* %28, i16 signext %bw_ref_idx, %struct.storable_picture** %29) #8
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then39
  br i1 %10, label %if.then54, label %if.else173

if.then54:                                        ; preds = %if.end52
  br i1 %cmp23, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then54
  %idxprom61 = sext i16 %bw_ref_idx to i64
  %idxprom62 = sext i16 %fw_ref_idx to i64
  %30 = load i32***** @wbp_weight, align 8, !tbaa !0
  %31 = load i32**** %30, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i32*** %31, i64 %idxprom62
  %32 = load i32*** %arrayidx64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i32** %32, i64 %idxprom61
  %33 = load i32** %arrayidx65, align 8, !tbaa !0
  %34 = load i32* %33, align 4, !tbaa !3
  %arrayidx69 = getelementptr inbounds i32**** %30, i64 1
  %35 = load i32**** %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i32*** %35, i64 %idxprom62
  %36 = load i32*** %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32** %36, i64 %idxprom61
  %37 = load i32** %arrayidx71, align 8, !tbaa !0
  %38 = load i32* %37, align 4, !tbaa !3
  %39 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul76 = shl i32 %39, 1
  %40 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add78 = add nsw i32 %40, 1
  %41 = load i32**** @wp_offset, align 8, !tbaa !0
  %42 = load i32*** %41, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32** %42, i64 %idxprom62
  %43 = load i32** %arrayidx82, align 8, !tbaa !0
  %44 = load i32* %43, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds i32*** %41, i64 1
  %45 = load i32*** %arrayidx85, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32** %45, i64 %idxprom61
  %46 = load i32** %arrayidx86, align 8, !tbaa !0
  %47 = load i32* %46, align 4, !tbaa !3
  %add88 = add i32 %44, 1
  %add89 = add i32 %add88, %47
  %shr90 = ashr i32 %add89, 1
  %48 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 155
  %49 = load i32* %max_imgpel_value.i, align 4, !tbaa !3
  %50 = sext i32 %block_x to i64
  %51 = add i32 %block_x, 1
  %52 = icmp sgt i32 %add, %51
  %smax = select i1 %52, i32 %add, i32 %51
  %53 = add i32 %smax, -1
  %54 = sub i32 %53, %block_x
  %55 = zext i32 %54 to i64
  %56 = add i64 %55, 1
  %57 = sext i32 %block_y to i64
  br label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %for.cond.preheader, %for.inc96
  %indvars.iv392 = phi i64 [ %57, %for.cond.preheader ], [ %indvars.iv.next393, %for.inc96 ]
  %fpred.0362 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.fw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep391, %for.inc96 ]
  %bpred.0361 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.bw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep, %for.inc96 ]
  %scevgep = getelementptr i32* %bpred.0361, i64 %56
  br label %for.body60

for.body60:                                       ; preds = %for.cond58.preheader, %clip1a.exit
  %indvars.iv = phi i64 [ %50, %for.cond58.preheader ], [ %indvars.iv.next, %clip1a.exit ]
  %fpred.1359 = phi i32* [ %fpred.0362, %for.cond58.preheader ], [ %incdec.ptr, %clip1a.exit ]
  %bpred.1358 = phi i32* [ %bpred.0361, %for.cond58.preheader ], [ %incdec.ptr73, %clip1a.exit ]
  %incdec.ptr = getelementptr inbounds i32* %fpred.1359, i64 1
  %58 = load i32* %fpred.1359, align 4, !tbaa !3
  %mul = mul nsw i32 %58, %34
  %incdec.ptr73 = getelementptr inbounds i32* %bpred.1358, i64 1
  %59 = load i32* %bpred.1358, align 4, !tbaa !3
  %mul74 = mul nsw i32 %59, %38
  %add75 = add nsw i32 %mul74, %mul
  %add77 = add nsw i32 %add75, %mul76
  %shr79 = ashr i32 %add77, %add78
  %add91 = add nsw i32 %shr90, %shr79
  %cmp.i = icmp slt i32 %49, %add91
  br i1 %cmp.i, label %clip1a.exit, label %cond.false.i

cond.false.i:                                     ; preds = %for.body60
  %cmp2.i = icmp slt i32 %add91, 0
  %cond.i = select i1 %cmp2.i, i32 0, i32 %add91
  br label %clip1a.exit

clip1a.exit:                                      ; preds = %for.body60, %cond.false.i
  %cond6.i = phi i32 [ %cond.i, %cond.false.i ], [ %49, %for.body60 ]
  %conv = trunc i32 %cond6.i to i16
  %arrayidx95 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv392
  store i16 %conv, i16* %arrayidx95, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %60 = trunc i64 %indvars.iv.next to i32
  %cmp59 = icmp slt i32 %60, %add
  br i1 %cmp59, label %for.body60, label %for.inc96

for.inc96:                                        ; preds = %clip1a.exit
  %scevgep391 = getelementptr i32* %fpred.0362, i64 %56
  %indvars.iv.next393 = add i64 %indvars.iv392, 1
  %61 = trunc i64 %indvars.iv.next393 to i32
  %cmp57 = icmp slt i32 %61, %add1
  br i1 %cmp57, label %for.cond58.preheader, label %if.end250

if.else:                                          ; preds = %if.then54
  br i1 %cmp21, label %for.cond102.preheader, label %for.cond137.preheader

for.cond137.preheader:                            ; preds = %if.else
  %idxprom145 = sext i16 %bw_ref_idx to i64
  %62 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32*** %62, i64 1
  %63 = load i32*** %arrayidx146, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32** %63, i64 %idxprom145
  %64 = load i32** %arrayidx147, align 8, !tbaa !0
  %65 = load i32* %64, align 4, !tbaa !3
  %66 = load i32* @wp_luma_round, align 4, !tbaa !3
  %67 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %68 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32*** %68, i64 1
  %69 = load i32*** %arrayidx154, align 8, !tbaa !0
  %arrayidx155 = getelementptr inbounds i32** %69, i64 %idxprom145
  %70 = load i32** %arrayidx155, align 8, !tbaa !0
  %71 = load i32* %70, align 4, !tbaa !3
  %72 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i344 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 155
  %73 = load i32* %max_imgpel_value.i344, align 4, !tbaa !3
  %74 = sext i32 %block_x to i64
  %75 = add i32 %block_x, 1
  %76 = icmp sgt i32 %add, %75
  %smax402 = select i1 %76, i32 %add, i32 %75
  %77 = add i32 %smax402, -1
  %78 = sub i32 %77, %block_x
  %79 = zext i32 %78 to i64
  %80 = add i64 %79, 1
  %81 = sext i32 %block_y to i64
  br label %for.cond141.preheader

for.cond102.preheader:                            ; preds = %if.else
  %idxprom110 = sext i16 %fw_ref_idx to i64
  %82 = load i32**** @wp_weight, align 8, !tbaa !0
  %83 = load i32*** %82, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32** %83, i64 %idxprom110
  %84 = load i32** %arrayidx112, align 8, !tbaa !0
  %85 = load i32* %84, align 4, !tbaa !3
  %86 = load i32* @wp_luma_round, align 4, !tbaa !3
  %87 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %88 = load i32**** @wp_offset, align 8, !tbaa !0
  %89 = load i32*** %88, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32** %89, i64 %idxprom110
  %90 = load i32** %arrayidx120, align 8, !tbaa !0
  %91 = load i32* %90, align 4, !tbaa !3
  %92 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i351 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 155
  %93 = load i32* %max_imgpel_value.i351, align 4, !tbaa !3
  %94 = sext i32 %block_x to i64
  %95 = add i32 %block_x, 1
  %96 = icmp sgt i32 %add, %95
  %smax396 = select i1 %96, i32 %add, i32 %95
  %97 = add i32 %smax396, -1
  %98 = sub i32 %97, %block_x
  %99 = zext i32 %98 to i64
  %100 = add i64 %99, 1
  %101 = sext i32 %block_y to i64
  br label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %for.cond102.preheader, %for.inc133
  %indvars.iv398 = phi i64 [ %101, %for.cond102.preheader ], [ %indvars.iv.next399, %for.inc133 ]
  %fpred.2367 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.fw_pred, i64 0, i64 0), %for.cond102.preheader ], [ %scevgep397, %for.inc133 ]
  br label %for.body109

for.body109:                                      ; preds = %for.cond106.preheader, %clip1a.exit357
  %indvars.iv394 = phi i64 [ %94, %for.cond106.preheader ], [ %indvars.iv.next395, %clip1a.exit357 ]
  %fpred.3364 = phi i32* [ %fpred.2367, %for.cond106.preheader ], [ %incdec.ptr114, %clip1a.exit357 ]
  %incdec.ptr114 = getelementptr inbounds i32* %fpred.3364, i64 1
  %102 = load i32* %fpred.3364, align 4, !tbaa !3
  %mul115 = mul nsw i32 %102, %85
  %add116 = add nsw i32 %mul115, %86
  %shr117 = ashr i32 %add116, %87
  %add122 = add nsw i32 %91, %shr117
  %cmp.i352 = icmp slt i32 %93, %add122
  br i1 %cmp.i352, label %clip1a.exit357, label %cond.false.i355

cond.false.i355:                                  ; preds = %for.body109
  %cmp2.i353 = icmp slt i32 %add122, 0
  %cond.i354 = select i1 %cmp2.i353, i32 0, i32 %add122
  br label %clip1a.exit357

clip1a.exit357:                                   ; preds = %for.body109, %cond.false.i355
  %cond6.i356 = phi i32 [ %cond.i354, %cond.false.i355 ], [ %93, %for.body109 ]
  %conv124 = trunc i32 %cond6.i356 to i16
  %arrayidx129 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 45, i64 %indvars.iv394, i64 %indvars.iv398
  store i16 %conv124, i16* %arrayidx129, align 2, !tbaa !4
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %103 = trunc i64 %indvars.iv.next395 to i32
  %cmp107 = icmp slt i32 %103, %add
  br i1 %cmp107, label %for.body109, label %for.inc133

for.inc133:                                       ; preds = %clip1a.exit357
  %scevgep397 = getelementptr i32* %fpred.2367, i64 %100
  %indvars.iv.next399 = add i64 %indvars.iv398, 1
  %104 = trunc i64 %indvars.iv.next399 to i32
  %cmp103 = icmp slt i32 %104, %add1
  br i1 %cmp103, label %for.cond106.preheader, label %if.end250

for.cond141.preheader:                            ; preds = %for.cond137.preheader, %for.inc168
  %indvars.iv404 = phi i64 [ %81, %for.cond137.preheader ], [ %indvars.iv.next405, %for.inc168 ]
  %bpred.2372 = phi i32* [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.bw_pred, i64 0, i64 0), %for.cond137.preheader ], [ %scevgep403, %for.inc168 ]
  br label %for.body144

for.body144:                                      ; preds = %for.cond141.preheader, %clip1a.exit350
  %indvars.iv400 = phi i64 [ %74, %for.cond141.preheader ], [ %indvars.iv.next401, %clip1a.exit350 ]
  %bpred.3369 = phi i32* [ %bpred.2372, %for.cond141.preheader ], [ %incdec.ptr149, %clip1a.exit350 ]
  %incdec.ptr149 = getelementptr inbounds i32* %bpred.3369, i64 1
  %105 = load i32* %bpred.3369, align 4, !tbaa !3
  %mul150 = mul nsw i32 %105, %65
  %add151 = add nsw i32 %mul150, %66
  %shr152 = ashr i32 %add151, %67
  %add157 = add nsw i32 %71, %shr152
  %cmp.i345 = icmp slt i32 %73, %add157
  br i1 %cmp.i345, label %clip1a.exit350, label %cond.false.i348

cond.false.i348:                                  ; preds = %for.body144
  %cmp2.i346 = icmp slt i32 %add157, 0
  %cond.i347 = select i1 %cmp2.i346, i32 0, i32 %add157
  br label %clip1a.exit350

clip1a.exit350:                                   ; preds = %for.body144, %cond.false.i348
  %cond6.i349 = phi i32 [ %cond.i347, %cond.false.i348 ], [ %73, %for.body144 ]
  %conv159 = trunc i32 %cond6.i349 to i16
  %arrayidx164 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 45, i64 %indvars.iv400, i64 %indvars.iv404
  store i16 %conv159, i16* %arrayidx164, align 2, !tbaa !4
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %106 = trunc i64 %indvars.iv.next401 to i32
  %cmp142 = icmp slt i32 %106, %add
  br i1 %cmp142, label %for.body144, label %for.inc168

for.inc168:                                       ; preds = %clip1a.exit350
  %scevgep403 = getelementptr i32* %bpred.2372, i64 %80
  %indvars.iv.next405 = add i64 %indvars.iv404, 1
  %107 = trunc i64 %indvars.iv.next405 to i32
  %cmp138 = icmp slt i32 %107, %add1
  br i1 %cmp138, label %for.cond141.preheader, label %if.end250

if.else173:                                       ; preds = %if.end52
  %108 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %109 = sext i32 %block_x to i64
  %110 = add i32 %block_x, 1
  %111 = icmp sgt i32 %add, %110
  %smax408 = select i1 %111, i32 %add, i32 %110
  %112 = add i32 %smax408, -1
  %113 = sub i32 %112, %block_x
  %114 = zext i32 %113 to i64
  %115 = add i64 %114, 1
  %116 = sext i32 %block_y to i64
  br i1 %cmp23, label %for.cond181.preheader, label %if.else201

for.cond181.preheader:                            ; preds = %if.else173, %for.inc198
  %indvars.iv411 = phi i64 [ %indvars.iv.next412, %for.inc198 ], [ %116, %if.else173 ]
  %fpred.4379 = phi i32* [ %scevgep410, %for.inc198 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.fw_pred, i64 0, i64 0), %if.else173 ]
  %bpred.4378 = phi i32* [ %scevgep409, %for.inc198 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.bw_pred, i64 0, i64 0), %if.else173 ]
  %scevgep409 = getelementptr i32* %bpred.4378, i64 %115
  br label %for.body184

for.body184:                                      ; preds = %for.cond181.preheader, %for.body184
  %indvars.iv406 = phi i64 [ %109, %for.cond181.preheader ], [ %indvars.iv.next407, %for.body184 ]
  %fpred.5375 = phi i32* [ %fpred.4379, %for.cond181.preheader ], [ %incdec.ptr185, %for.body184 ]
  %bpred.5374 = phi i32* [ %bpred.4378, %for.cond181.preheader ], [ %incdec.ptr186, %for.body184 ]
  %incdec.ptr185 = getelementptr inbounds i32* %fpred.5375, i64 1
  %117 = load i32* %fpred.5375, align 4, !tbaa !3
  %incdec.ptr186 = getelementptr inbounds i32* %bpred.5374, i64 1
  %118 = load i32* %bpred.5374, align 4, !tbaa !3
  %add187 = add i32 %117, 1
  %add188 = add i32 %add187, %118
  %div = sdiv i32 %add188, 2
  %conv189 = trunc i32 %div to i16
  %arrayidx194 = getelementptr inbounds %struct.ImageParameters* %108, i64 0, i32 45, i64 %indvars.iv406, i64 %indvars.iv411
  store i16 %conv189, i16* %arrayidx194, align 2, !tbaa !4
  %indvars.iv.next407 = add i64 %indvars.iv406, 1
  %119 = trunc i64 %indvars.iv.next407 to i32
  %cmp182 = icmp slt i32 %119, %add
  br i1 %cmp182, label %for.body184, label %for.inc198

for.inc198:                                       ; preds = %for.body184
  %scevgep410 = getelementptr i32* %fpred.4379, i64 %115
  %indvars.iv.next412 = add i64 %indvars.iv411, 1
  %120 = trunc i64 %indvars.iv.next412 to i32
  %cmp178 = icmp slt i32 %120, %add1
  br i1 %cmp178, label %for.cond181.preheader, label %if.end250

if.else201:                                       ; preds = %if.else173
  br i1 %cmp21, label %for.cond209.preheader, label %for.cond231.preheader

for.cond209.preheader:                            ; preds = %if.else201, %for.inc223
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %for.inc223 ], [ %116, %if.else201 ]
  %fpred.6384 = phi i32* [ %scevgep416, %for.inc223 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.fw_pred, i64 0, i64 0), %if.else201 ]
  br label %for.body212

for.body212:                                      ; preds = %for.cond209.preheader, %for.body212
  %indvars.iv413 = phi i64 [ %109, %for.cond209.preheader ], [ %indvars.iv.next414, %for.body212 ]
  %fpred.7381 = phi i32* [ %fpred.6384, %for.cond209.preheader ], [ %incdec.ptr213, %for.body212 ]
  %incdec.ptr213 = getelementptr inbounds i32* %fpred.7381, i64 1
  %121 = load i32* %fpred.7381, align 4, !tbaa !3
  %conv214 = trunc i32 %121 to i16
  %arrayidx219 = getelementptr inbounds %struct.ImageParameters* %108, i64 0, i32 45, i64 %indvars.iv413, i64 %indvars.iv417
  store i16 %conv214, i16* %arrayidx219, align 2, !tbaa !4
  %indvars.iv.next414 = add i64 %indvars.iv413, 1
  %122 = trunc i64 %indvars.iv.next414 to i32
  %cmp210 = icmp slt i32 %122, %add
  br i1 %cmp210, label %for.body212, label %for.inc223

for.inc223:                                       ; preds = %for.body212
  %scevgep416 = getelementptr i32* %fpred.6384, i64 %115
  %indvars.iv.next418 = add i64 %indvars.iv417, 1
  %123 = trunc i64 %indvars.iv.next418 to i32
  %cmp206 = icmp slt i32 %123, %add1
  br i1 %cmp206, label %for.cond209.preheader, label %if.end250

for.cond231.preheader:                            ; preds = %if.else201, %for.inc245
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %for.inc245 ], [ %116, %if.else201 ]
  %bpred.6389 = phi i32* [ %scevgep422, %for.inc245 ], [ getelementptr inbounds ([16 x i32]* @LumaPrediction4x4Bi.bw_pred, i64 0, i64 0), %if.else201 ]
  br label %for.body234

for.body234:                                      ; preds = %for.cond231.preheader, %for.body234
  %indvars.iv419 = phi i64 [ %109, %for.cond231.preheader ], [ %indvars.iv.next420, %for.body234 ]
  %bpred.7386 = phi i32* [ %bpred.6389, %for.cond231.preheader ], [ %incdec.ptr235, %for.body234 ]
  %incdec.ptr235 = getelementptr inbounds i32* %bpred.7386, i64 1
  %124 = load i32* %bpred.7386, align 4, !tbaa !3
  %conv236 = trunc i32 %124 to i16
  %arrayidx241 = getelementptr inbounds %struct.ImageParameters* %108, i64 0, i32 45, i64 %indvars.iv419, i64 %indvars.iv423
  store i16 %conv236, i16* %arrayidx241, align 2, !tbaa !4
  %indvars.iv.next420 = add i64 %indvars.iv419, 1
  %125 = trunc i64 %indvars.iv.next420 to i32
  %cmp232 = icmp slt i32 %125, %add
  br i1 %cmp232, label %for.body234, label %for.inc245

for.inc245:                                       ; preds = %for.body234
  %scevgep422 = getelementptr i32* %bpred.6389, i64 %115
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %126 = trunc i64 %indvars.iv.next424 to i32
  %cmp228 = icmp slt i32 %126, %add1
  br i1 %cmp228, label %for.cond231.preheader, label %if.end250

if.end250:                                        ; preds = %for.inc245, %for.inc223, %for.inc198, %for.inc168, %for.inc133, %for.inc96
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @LumaResidualCoding8x8(i32* nocapture %cbp, i64* nocapture %cbp_blk, i32 %block8x8, i16 signext %p_dir, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_refframe, i16 signext %bw_refframe) #0 {
entry:
  %coeff_cost = alloca i32, align 4
  store i32 0, i32* %coeff_cost, align 4, !tbaa !3
  %div = sdiv i32 %block8x8, 2
  %shl = shl i32 %div, 3
  %rem = srem i32 %block8x8, 2
  %shl1 = shl i32 %rem, 3
  %shl2 = shl i32 1, %block8x8
  %0 = or i32 %bw_mode, %fw_mode
  %1 = icmp eq i32 %0, 0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %4 = phi i1 [ %cmp4, %land.rhs ], [ false, %entry ]
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %5 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %5 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51
  %6 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %6, i64 %idxprom, i32 32
  %7 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %add = add nsw i32 %shl, 8
  %conv70 = sext i16 %p_dir to i32
  %tobool106 = icmp eq i32 %7, 0
  %8 = shl i32 %rem, 3
  %9 = sext i32 %8 to i64
  %10 = shl i32 %div, 3
  %11 = sext i32 %10 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc375.for.body_crit_edge, %land.end
  %12 = phi %struct.ImageParameters* [ %2, %land.end ], [ %.pre859, %for.inc375.for.body_crit_edge ]
  %indvars.iv855 = phi i64 [ 0, %land.end ], [ %indvars.iv.next856, %for.inc375.for.body_crit_edge ]
  %indvars.iv853 = phi i64 [ %11, %land.end ], [ %indvars.iv.next854, %for.inc375.for.body_crit_edge ]
  %nonzero.0757 = phi i32 [ 0, %land.end ], [ %nonzero.4, %for.inc375.for.body_crit_edge ]
  %opix_y = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 38
  %13 = load i32* %opix_y, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv853 to i32
  %add8 = add nsw i32 %13, %14
  %15 = sext i32 %add8 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.inc371.for.body12_crit_edge, %for.body
  %16 = phi %struct.ImageParameters* [ %12, %for.body ], [ %.pre860, %for.inc371.for.body12_crit_edge ]
  %indvars.iv851 = phi i64 [ 0, %for.body ], [ %indvars.iv.next852, %for.inc371.for.body12_crit_edge ]
  %indvars.iv849 = phi i64 [ %9, %for.body ], [ %indvars.iv.next850, %for.inc371.for.body12_crit_edge ]
  %nonzero.1753 = phi i32 [ %nonzero.0757, %for.body ], [ %nonzero.4, %for.inc371.for.body12_crit_edge ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 37
  %17 = load i32* %opix_x, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv849 to i32
  %add13 = add nsw i32 %17, %18
  %shr = ashr exact i32 %18, 2
  %add14 = add nsw i32 %shr, %14
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 164
  %19 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %19, 0
  br i1 %tobool, label %if.end69, label %if.then15

if.then15:                                        ; preds = %for.body12
  call void @ChromaPrediction4x4(i32 0, i32 %18, i32 %14, i32 %conv70, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_refframe, i16 signext %bw_refframe) #8
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc37, %if.then15
  %indvars.iv774 = phi i64 [ 0, %if.then15 ], [ %indvars.iv.next775, %for.inc37 ]
  %21 = add nsw i64 %indvars.iv774, %indvars.iv853
  br label %for.body23

for.body23:                                       ; preds = %for.body23, %for.cond20.preheader
  %indvars.iv769 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next770, %for.body23 ]
  %22 = add nsw i64 %indvars.iv769, %indvars.iv849
  %arrayidx29 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 45, i64 %22, i64 %21
  %23 = load i16* %arrayidx29, align 2, !tbaa !4
  %conv30 = zext i16 %23 to i32
  %arrayidx36 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %22, i64 %21
  store i32 %conv30, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next770 = add i64 %indvars.iv769, 1
  %lftr.wideiv772 = trunc i64 %indvars.iv.next770 to i32
  %exitcond773 = icmp eq i32 %lftr.wideiv772, 4
  br i1 %exitcond773, label %for.inc37, label %for.body23

for.inc37:                                        ; preds = %for.body23
  %indvars.iv.next775 = add i64 %indvars.iv774, 1
  %lftr.wideiv777 = trunc i64 %indvars.iv.next775 to i32
  %exitcond778 = icmp eq i32 %lftr.wideiv777, 4
  br i1 %exitcond778, label %for.end39, label %for.cond20.preheader

for.end39:                                        ; preds = %for.inc37
  call void @ChromaPrediction4x4(i32 1, i32 %18, i32 %14, i32 %conv70, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_refframe, i16 signext %bw_refframe) #8
  %24 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.inc66, %for.end39
  %indvars.iv784 = phi i64 [ 0, %for.end39 ], [ %indvars.iv.next785, %for.inc66 ]
  %25 = add nsw i64 %indvars.iv784, %indvars.iv853
  br label %for.body48

for.body48:                                       ; preds = %for.body48, %for.cond45.preheader
  %indvars.iv779 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next780, %for.body48 ]
  %26 = add nsw i64 %indvars.iv779, %indvars.iv849
  %arrayidx55 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 45, i64 %26, i64 %25
  %27 = load i16* %arrayidx55, align 2, !tbaa !4
  %conv56 = zext i16 %27 to i32
  %arrayidx62 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %26, i64 %25
  store i32 %conv56, i32* %arrayidx62, align 4, !tbaa !3
  %indvars.iv.next780 = add i64 %indvars.iv779, 1
  %lftr.wideiv782 = trunc i64 %indvars.iv.next780 to i32
  %exitcond783 = icmp eq i32 %lftr.wideiv782, 4
  br i1 %exitcond783, label %for.inc66, label %for.body48

for.inc66:                                        ; preds = %for.body48
  %indvars.iv.next785 = add i64 %indvars.iv784, 1
  %lftr.wideiv787 = trunc i64 %indvars.iv.next785 to i32
  %exitcond788 = icmp eq i32 %lftr.wideiv787, 4
  br i1 %exitcond788, label %if.end69, label %for.cond45.preheader

if.end69:                                         ; preds = %for.inc66, %for.body12
  call void @LumaPrediction4x4(i32 %18, i32 %14, i32 %conv70, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_refframe, i16 signext %bw_refframe) #8
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag71 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 164
  %29 = load i32* %residue_transform_flag71, align 4, !tbaa !3
  %tobool72 = icmp eq i32 %29, 0
  br i1 %tobool72, label %if.then105, label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %if.end69, %for.inc99
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %for.inc99 ], [ 0, %if.end69 ]
  %30 = add nsw i64 %indvars.iv794, %indvars.iv853
  br label %for.body81

for.body81:                                       ; preds = %for.body81, %for.cond78.preheader
  %indvars.iv789 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next790, %for.body81 ]
  %31 = add nsw i64 %indvars.iv789, %indvars.iv849
  %arrayidx88 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 45, i64 %31, i64 %30
  %32 = load i16* %arrayidx88, align 2, !tbaa !4
  %conv89 = zext i16 %32 to i32
  %arrayidx95 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %31, i64 %30
  store i32 %conv89, i32* %arrayidx95, align 4, !tbaa !3
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  %lftr.wideiv792 = trunc i64 %indvars.iv.next790 to i32
  %exitcond793 = icmp eq i32 %lftr.wideiv792, 4
  br i1 %exitcond793, label %for.inc99, label %for.body81

for.inc99:                                        ; preds = %for.body81
  %indvars.iv.next795 = add i64 %indvars.iv794, 1
  %lftr.wideiv797 = trunc i64 %indvars.iv.next795 to i32
  %exitcond798 = icmp eq i32 %lftr.wideiv797, 4
  br i1 %exitcond798, label %if.end102, label %for.cond78.preheader

if.end102:                                        ; preds = %for.inc99
  %.pre = load i32* %residue_transform_flag71, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pre, 0
  br i1 %phitmp, label %if.then105, label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %if.end102
  %33 = load i16**** @imgUV_org, align 8, !tbaa !0
  %34 = load i16*** %33, align 8, !tbaa !0
  %35 = load i16*** @imgY_org, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i16*** %33, i64 1
  %36 = load i16*** %arrayidx240, align 8, !tbaa !0
  %37 = sext i32 %add13 to i64
  br label %for.cond203.preheader

if.then105:                                       ; preds = %if.end69, %if.end102
  %38 = load i16*** @imgY_org, align 8, !tbaa !0
  %39 = sext i32 %add13 to i64
  br i1 %tobool106, label %for.cond112.preheader, label %for.cond164.preheader

for.cond112.preheader:                            ; preds = %if.then105, %for.inc138
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %for.inc138 ], [ 0, %if.then105 ]
  %40 = add nsw i64 %indvars.iv843, %15
  %arrayidx120 = getelementptr inbounds i16** %38, i64 %40
  %41 = load i16** %arrayidx120, align 8, !tbaa !0
  %42 = add nsw i64 %indvars.iv843, %indvars.iv853
  br label %for.body115

for.body115:                                      ; preds = %for.body115, %for.cond112.preheader
  %indvars.iv837 = phi i64 [ 0, %for.cond112.preheader ], [ %indvars.iv.next838, %for.body115 ]
  %43 = add nsw i64 %indvars.iv837, %39
  %arrayidx121 = getelementptr inbounds i16* %41, i64 %43
  %44 = load i16* %arrayidx121, align 2, !tbaa !4
  %conv122 = zext i16 %44 to i32
  %45 = add nsw i64 %indvars.iv837, %indvars.iv849
  %arrayidx129 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 45, i64 %45, i64 %42
  %46 = load i16* %arrayidx129, align 2, !tbaa !4
  %conv130 = zext i16 %46 to i32
  %sub = sub nsw i32 %conv122, %conv130
  %arrayidx134 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 46, i64 %indvars.iv837, i64 %indvars.iv843
  store i32 %sub, i32* %arrayidx134, align 4, !tbaa !3
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  %lftr.wideiv841 = trunc i64 %indvars.iv.next838 to i32
  %exitcond842 = icmp eq i32 %lftr.wideiv841, 4
  br i1 %exitcond842, label %for.inc138, label %for.body115

for.inc138:                                       ; preds = %for.body115
  %indvars.iv.next844 = add i64 %indvars.iv843, 1
  %lftr.wideiv847 = trunc i64 %indvars.iv.next844 to i32
  %exitcond848 = icmp eq i32 %lftr.wideiv847, 4
  br i1 %exitcond848, label %for.end140, label %for.cond112.preheader

for.end140:                                       ; preds = %for.inc138
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 88
  %47 = load i32* %NoResidueDirect, align 4, !tbaa !3
  %cmp141 = icmp eq i32 %47, 1
  %brmerge = or i1 %cmp141, %4
  br i1 %brmerge, label %for.inc371, label %if.then145

if.then145:                                       ; preds = %for.end140
  %type146 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 6
  %48 = load i32* %type146, align 4, !tbaa !3
  %cmp147 = icmp eq i32 %48, 3
  br i1 %cmp147, label %if.else, label %if.then149

if.then149:                                       ; preds = %if.then145
  %call = call i32 @dct_luma(i32 %18, i32 %14, i32* %coeff_cost, i32 0) #7
  br label %if.end151

if.else:                                          ; preds = %if.then145
  %call150 = call i32 @dct_luma_sp(i32 %18, i32 %14, i32* %coeff_cost) #7
  br label %if.end151

if.end151:                                        ; preds = %if.else, %if.then149
  %nonzero.2 = phi i32 [ %call, %if.then149 ], [ %call150, %if.else ]
  %tobool152 = icmp eq i32 %nonzero.2, 0
  br i1 %tobool152, label %for.inc371, label %if.then153

if.then153:                                       ; preds = %if.end151
  %shl154 = shl i32 1, %add14
  %conv155 = sext i32 %shl154 to i64
  %49 = load i64* %cbp_blk, align 8, !tbaa !5
  %or = or i64 %49, %conv155
  store i64 %or, i64* %cbp_blk, align 8, !tbaa !5
  %50 = load i32* %cbp, align 4, !tbaa !3
  %or156 = or i32 %50, %shl2
  store i32 %or156, i32* %cbp, align 4, !tbaa !3
  br label %for.inc371

for.cond164.preheader:                            ; preds = %if.then105, %for.inc194
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %for.inc194 ], [ 0, %if.then105 ]
  %51 = add nsw i64 %indvars.iv830, %15
  %arrayidx172 = getelementptr inbounds i16** %38, i64 %51
  %52 = load i16** %arrayidx172, align 8, !tbaa !0
  %53 = add nsw i64 %indvars.iv830, %indvars.iv853
  %54 = add nsw i64 %indvars.iv830, %indvars.iv855
  br label %for.body167

for.body167:                                      ; preds = %for.body167, %for.cond164.preheader
  %indvars.iv823 = phi i64 [ 0, %for.cond164.preheader ], [ %indvars.iv.next824, %for.body167 ]
  %55 = add nsw i64 %indvars.iv823, %39
  %arrayidx173 = getelementptr inbounds i16* %52, i64 %55
  %56 = load i16* %arrayidx173, align 2, !tbaa !4
  %conv174 = zext i16 %56 to i32
  %57 = add nsw i64 %indvars.iv823, %indvars.iv849
  %arrayidx181 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 45, i64 %57, i64 %53
  %58 = load i16* %arrayidx181, align 2, !tbaa !4
  %conv182 = zext i16 %58 to i32
  %sub183 = sub nsw i32 %conv174, %conv182
  %59 = add nsw i64 %indvars.iv823, %indvars.iv851
  %arrayidx190 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 46, i64 %59, i64 %54
  store i32 %sub183, i32* %arrayidx190, align 4, !tbaa !3
  %indvars.iv.next824 = add i64 %indvars.iv823, 1
  %lftr.wideiv828 = trunc i64 %indvars.iv.next824 to i32
  %exitcond829 = icmp eq i32 %lftr.wideiv828, 4
  br i1 %exitcond829, label %for.inc194, label %for.body167

for.inc194:                                       ; preds = %for.body167
  %indvars.iv.next831 = add i64 %indvars.iv830, 1
  %lftr.wideiv835 = trunc i64 %indvars.iv.next831 to i32
  %exitcond836 = icmp eq i32 %lftr.wideiv835, 4
  br i1 %exitcond836, label %for.inc371, label %for.cond164.preheader

for.cond203.preheader:                            ; preds = %for.inc318, %for.cond199.preheader
  %indvars.iv806 = phi i64 [ 0, %for.cond199.preheader ], [ %indvars.iv.next807, %for.inc318 ]
  %60 = add nsw i64 %indvars.iv806, %15
  %arrayidx212 = getelementptr inbounds i16** %34, i64 %60
  %61 = load i16** %arrayidx212, align 8, !tbaa !0
  %62 = add nsw i64 %indvars.iv806, %indvars.iv853
  %arrayidx226 = getelementptr inbounds i16** %35, i64 %60
  %63 = load i16** %arrayidx226, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i16** %36, i64 %60
  %64 = load i16** %arrayidx241, align 8, !tbaa !0
  %65 = add nsw i64 %indvars.iv806, %indvars.iv855
  br label %for.body206

for.body206:                                      ; preds = %for.inc315, %for.cond203.preheader
  %indvars.iv799 = phi i64 [ 0, %for.cond203.preheader ], [ %indvars.iv.next800, %for.inc315 ]
  %66 = add nsw i64 %indvars.iv799, %37
  %arrayidx213 = getelementptr inbounds i16* %61, i64 %66
  %67 = load i16* %arrayidx213, align 2, !tbaa !4
  %conv214 = zext i16 %67 to i32
  %68 = add nsw i64 %indvars.iv799, %indvars.iv849
  %arrayidx220 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %68, i64 %62
  %69 = load i32* %arrayidx220, align 4, !tbaa !3
  %sub221 = sub nsw i32 %conv214, %69
  %arrayidx227 = getelementptr inbounds i16* %63, i64 %66
  %70 = load i16* %arrayidx227, align 2, !tbaa !4
  %conv228 = zext i16 %70 to i32
  %arrayidx234 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %68, i64 %62
  %71 = load i32* %arrayidx234, align 4, !tbaa !3
  %sub235 = sub nsw i32 %conv228, %71
  %arrayidx242 = getelementptr inbounds i16* %64, i64 %66
  %72 = load i16* %arrayidx242, align 2, !tbaa !4
  %conv243 = zext i16 %72 to i32
  %arrayidx249 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %68, i64 %62
  %73 = load i32* %arrayidx249, align 4, !tbaa !3
  %sub250 = sub nsw i32 %conv243, %73
  %sub251 = sub i32 %sub250, %sub221
  %arrayidx257 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %68, i64 %62
  store i32 %sub251, i32* %arrayidx257, align 4, !tbaa !3
  %shr264 = ashr i32 %sub251, 1
  %add265 = add nsw i32 %shr264, %sub221
  %sub266 = sub i32 %sub235, %add265
  %arrayidx272 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %68, i64 %62
  store i32 %sub266, i32* %arrayidx272, align 4, !tbaa !3
  %shr279 = ashr i32 %sub266, 1
  %add280 = add nsw i32 %shr279, %add265
  %arrayidx286 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %68, i64 %62
  store i32 %add280, i32* %arrayidx286, align 4, !tbaa !3
  br i1 %tobool106, label %if.then288, label %if.else300

if.then288:                                       ; preds = %for.body206
  %arrayidx299 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 46, i64 %indvars.iv799, i64 %indvars.iv806
  store i32 %add280, i32* %arrayidx299, align 4, !tbaa !3
  br label %for.inc315

if.else300:                                       ; preds = %for.body206
  %74 = add nsw i64 %indvars.iv799, %indvars.iv851
  %arrayidx313 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 46, i64 %74, i64 %65
  store i32 %add280, i32* %arrayidx313, align 4, !tbaa !3
  br label %for.inc315

for.inc315:                                       ; preds = %if.then288, %if.else300
  %indvars.iv.next800 = add i64 %indvars.iv799, 1
  %lftr.wideiv804 = trunc i64 %indvars.iv.next800 to i32
  %exitcond805 = icmp eq i32 %lftr.wideiv804, 4
  br i1 %exitcond805, label %for.inc318, label %for.body206

for.inc318:                                       ; preds = %for.inc315
  %indvars.iv.next807 = add i64 %indvars.iv806, 1
  %lftr.wideiv811 = trunc i64 %indvars.iv.next807 to i32
  %exitcond812 = icmp eq i32 %lftr.wideiv811, 4
  br i1 %exitcond812, label %for.end320, label %for.cond203.preheader

for.end320:                                       ; preds = %for.inc318
  %NoResidueDirect321 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 88
  %75 = load i32* %NoResidueDirect321, align 4, !tbaa !3
  %cmp322 = icmp eq i32 %75, 1
  %brmerge727 = or i1 %cmp322, %4
  %brmerge727.not = xor i1 %brmerge727, true
  %or.cond728 = and i1 %tobool106, %brmerge727.not
  br i1 %or.cond728, label %if.then328, label %for.inc371

if.then328:                                       ; preds = %for.end320
  %type329 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 6
  %76 = load i32* %type329, align 4, !tbaa !3
  %cmp330 = icmp eq i32 %76, 3
  br i1 %cmp330, label %if.else334, label %if.then332

if.then332:                                       ; preds = %if.then328
  %call333 = call i32 @dct_luma(i32 %18, i32 %14, i32* %coeff_cost, i32 0) #7
  br label %if.end336

if.else334:                                       ; preds = %if.then328
  %call335 = call i32 @dct_luma_sp(i32 %18, i32 %14, i32* %coeff_cost) #7
  br label %if.end336

if.end336:                                        ; preds = %if.else334, %if.then332
  %nonzero.3 = phi i32 [ %call333, %if.then332 ], [ %call335, %if.else334 ]
  %77 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond341.preheader

for.cond341.preheader:                            ; preds = %for.inc359, %if.end336
  %indvars.iv818 = phi i64 [ 0, %if.end336 ], [ %indvars.iv.next819, %for.inc359 ]
  %78 = add nsw i64 %indvars.iv818, %indvars.iv853
  br label %for.body344

for.body344:                                      ; preds = %for.body344, %for.cond341.preheader
  %indvars.iv813 = phi i64 [ 0, %for.cond341.preheader ], [ %indvars.iv.next814, %for.body344 ]
  %arrayidx349 = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 46, i64 %indvars.iv813, i64 %indvars.iv818
  %79 = load i32* %arrayidx349, align 4, !tbaa !3
  %80 = add nsw i64 %indvars.iv813, %indvars.iv849
  %arrayidx355 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %80, i64 %78
  store i32 %79, i32* %arrayidx355, align 4, !tbaa !3
  %indvars.iv.next814 = add i64 %indvars.iv813, 1
  %lftr.wideiv816 = trunc i64 %indvars.iv.next814 to i32
  %exitcond817 = icmp eq i32 %lftr.wideiv816, 4
  br i1 %exitcond817, label %for.inc359, label %for.body344

for.inc359:                                       ; preds = %for.body344
  %indvars.iv.next819 = add i64 %indvars.iv818, 1
  %lftr.wideiv821 = trunc i64 %indvars.iv.next819 to i32
  %exitcond822 = icmp eq i32 %lftr.wideiv821, 4
  br i1 %exitcond822, label %for.end361, label %for.cond341.preheader

for.end361:                                       ; preds = %for.inc359
  %tobool362 = icmp eq i32 %nonzero.3, 0
  br i1 %tobool362, label %for.inc371, label %if.then363

if.then363:                                       ; preds = %for.end361
  %shl364 = shl i32 1, %add14
  %conv365 = sext i32 %shl364 to i64
  %81 = load i64* %cbp_blk, align 8, !tbaa !5
  %or366 = or i64 %81, %conv365
  store i64 %or366, i64* %cbp_blk, align 8, !tbaa !5
  %82 = load i32* %cbp, align 4, !tbaa !3
  %or367 = or i32 %82, %shl2
  store i32 %or367, i32* %cbp, align 4, !tbaa !3
  br label %for.inc371

for.inc371:                                       ; preds = %for.inc194, %for.end320, %for.end140, %for.end361, %if.end151, %if.then153, %if.then363
  %nonzero.4 = phi i32 [ %nonzero.3, %if.then363 ], [ 0, %for.end361 ], [ %nonzero.1753, %for.end320 ], [ %nonzero.2, %if.then153 ], [ 0, %if.end151 ], [ %nonzero.1753, %for.end140 ], [ %nonzero.1753, %for.inc194 ]
  %83 = or i32 %shl1, 4
  %cmp11 = icmp slt i32 %18, %83
  br i1 %cmp11, label %for.inc371.for.body12_crit_edge, label %for.inc375

for.inc371.for.body12_crit_edge:                  ; preds = %for.inc371
  %indvars.iv.next850 = add i64 %indvars.iv849, 4
  %indvars.iv.next852 = add i64 %indvars.iv851, 4
  %.pre860 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body12

for.inc375:                                       ; preds = %for.inc371
  %indvars.iv.next854 = add i64 %indvars.iv853, 4
  %84 = trunc i64 %indvars.iv.next854 to i32
  %cmp7 = icmp slt i32 %84, %add
  br i1 %cmp7, label %for.inc375.for.body_crit_edge, label %for.end378

for.inc375.for.body_crit_edge:                    ; preds = %for.inc375
  %indvars.iv.next856 = add i64 %indvars.iv855, 4
  %.pre859 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body

for.end378:                                       ; preds = %for.inc375
  %.pre861 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %tobool106, label %if.end433, label %if.then380

if.then380:                                       ; preds = %for.end378
  %NoResidueDirect381 = getelementptr inbounds %struct.ImageParameters* %.pre861, i64 0, i32 88
  %85 = load i32* %NoResidueDirect381, align 4, !tbaa !3
  %cmp382 = icmp eq i32 %85, 1
  %brmerge729 = or i1 %cmp382, %4
  br i1 %brmerge729, label %if.end433, label %if.then386

if.then386:                                       ; preds = %if.then380
  %type387 = getelementptr inbounds %struct.ImageParameters* %.pre861, i64 0, i32 6
  %86 = load i32* %type387, align 4, !tbaa !3
  %cmp388 = icmp eq i32 %86, 3
  br i1 %cmp388, label %if.end392, label %if.then390

if.then390:                                       ; preds = %if.then386
  %call391 = call i32 @dct_luma8x8(i32 %block8x8, i32* %coeff_cost, i32 0) #7
  %.pre857 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end392

if.end392:                                        ; preds = %if.then386, %if.then390
  %87 = phi %struct.ImageParameters* [ %.pre857, %if.then390 ], [ %.pre861, %if.then386 ]
  %nonzero.5 = phi i32 [ %call391, %if.then390 ], [ %nonzero.4, %if.then386 ]
  %residue_transform_flag393 = getelementptr inbounds %struct.ImageParameters* %87, i64 0, i32 164
  %88 = load i32* %residue_transform_flag393, align 4, !tbaa !3
  %tobool394 = icmp eq i32 %88, 0
  br i1 %tobool394, label %if.end421, label %for.cond396.preheader

for.cond396.preheader:                            ; preds = %if.end392
  %89 = sext i32 %shl1 to i64
  %90 = sext i32 %shl to i64
  br label %for.cond400.preheader

for.cond400.preheader:                            ; preds = %for.inc418, %for.cond396.preheader
  %indvars.iv764 = phi i64 [ 0, %for.cond396.preheader ], [ %indvars.iv.next765, %for.inc418 ]
  %91 = add nsw i64 %indvars.iv764, %90
  br label %for.body403

for.body403:                                      ; preds = %for.body403, %for.cond400.preheader
  %indvars.iv761 = phi i64 [ 0, %for.cond400.preheader ], [ %indvars.iv.next762, %for.body403 ]
  %arrayidx408 = getelementptr inbounds %struct.ImageParameters* %87, i64 0, i32 46, i64 %indvars.iv761, i64 %indvars.iv764
  %92 = load i32* %arrayidx408, align 4, !tbaa !3
  %93 = add nsw i64 %indvars.iv761, %89
  %arrayidx414 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %93, i64 %91
  store i32 %92, i32* %arrayidx414, align 4, !tbaa !3
  %indvars.iv.next762 = add i64 %indvars.iv761, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next762 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.inc418, label %for.body403

for.inc418:                                       ; preds = %for.body403
  %indvars.iv.next765 = add i64 %indvars.iv764, 1
  %lftr.wideiv767 = trunc i64 %indvars.iv.next765 to i32
  %exitcond768 = icmp eq i32 %lftr.wideiv767, 8
  br i1 %exitcond768, label %if.end421, label %for.cond400.preheader

if.end421:                                        ; preds = %for.inc418, %if.end392
  %tobool422 = icmp eq i32 %nonzero.5, 0
  br i1 %tobool422, label %if.end433, label %if.then423

if.then423:                                       ; preds = %if.end421
  %mul = shl nsw i32 %block8x8, 2
  %mul425 = shl nsw i32 %rem, 1
  %sub426 = sub nsw i32 %mul, %mul425
  %shl427 = shl i32 51, %sub426
  %conv428 = sext i32 %shl427 to i64
  %94 = load i64* %cbp_blk, align 8, !tbaa !5
  %or429 = or i64 %94, %conv428
  store i64 %or429, i64* %cbp_blk, align 8, !tbaa !5
  %95 = load i32* %cbp, align 4, !tbaa !3
  %or430 = or i32 %95, %shl2
  store i32 %or430, i32* %cbp, align 4, !tbaa !3
  br label %if.end433

if.end433:                                        ; preds = %for.end378, %if.end421, %if.then380, %if.then423
  %96 = phi %struct.ImageParameters* [ %.pre861, %if.then380 ], [ %87, %if.then423 ], [ %87, %if.end421 ], [ %.pre861, %for.end378 ]
  %NoResidueDirect434 = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 88
  %97 = load i32* %NoResidueDirect434, align 4, !tbaa !3
  %cmp435 = icmp eq i32 %97, 1
  %brmerge730 = or i1 %cmp435, %4
  br i1 %brmerge730, label %if.end514, label %land.lhs.true439

land.lhs.true439:                                 ; preds = %if.end433
  %98 = load i32* %coeff_cost, align 4, !tbaa !3
  %cmp440 = icmp slt i32 %98, 5
  br i1 %cmp440, label %land.lhs.true442, label %if.end514

land.lhs.true442:                                 ; preds = %land.lhs.true439
  %qp = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 10
  %99 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 151
  %100 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add443 = sub i32 0, %100
  %cmp444 = icmp eq i32 %99, %add443
  br i1 %cmp444, label %lor.lhs.false, label %if.then448

lor.lhs.false:                                    ; preds = %land.lhs.true442
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 160
  %101 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp446 = icmp eq i32 %101, 0
  br i1 %cmp446, label %if.then448, label %if.end514

if.then448:                                       ; preds = %lor.lhs.false, %land.lhs.true442
  store i32 0, i32* %coeff_cost, align 4, !tbaa !3
  %sub449 = sub nsw i32 63, %shl2
  %102 = load i32* %cbp, align 4, !tbaa !3
  %and = and i32 %102, %sub449
  store i32 %and, i32* %cbp, align 4, !tbaa !3
  %mul450 = shl nsw i32 %block8x8, 2
  %mul452 = shl nsw i32 %rem, 1
  %sub453 = sub nsw i32 %mul450, %mul452
  %shl454 = shl i32 51, %sub453
  %neg = xor i32 %shl454, -1
  %conv455 = sext i32 %neg to i64
  %103 = load i64* %cbp_blk, align 8, !tbaa !5
  %and456 = and i64 %103, %conv455
  store i64 %and456, i64* %cbp_blk, align 8, !tbaa !5
  %add458 = add nsw i32 %shl1, 8
  %residue_transform_flag467 = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 164
  %pix_x = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 34
  %104 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %104, i64 0, i32 25
  br label %for.cond462.preheader

for.cond462.preheader:                            ; preds = %if.then448, %for.inc490
  %indvars.iv759 = phi i64 [ %9, %if.then448 ], [ %indvars.iv.next760, %for.inc490 ]
  br label %for.body466

for.body466:                                      ; preds = %for.inc487, %for.cond462.preheader
  %indvars.iv = phi i64 [ %11, %for.cond462.preheader ], [ %indvars.iv.next, %for.inc487 ]
  %105 = load i32* %residue_transform_flag467, align 4, !tbaa !3
  %tobool468 = icmp eq i32 %105, 0
  br i1 %tobool468, label %if.then469, label %if.else481

if.then469:                                       ; preds = %for.body466
  %arrayidx474 = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 45, i64 %indvars.iv759, i64 %indvars.iv
  %106 = load i16* %arrayidx474, align 2, !tbaa !4
  %107 = load i32* %pix_x, align 4, !tbaa !3
  %108 = trunc i64 %indvars.iv759 to i32
  %add475 = add nsw i32 %107, %108
  %idxprom476 = sext i32 %add475 to i64
  %109 = load i32* %pix_y, align 4, !tbaa !3
  %110 = trunc i64 %indvars.iv to i32
  %add477 = add nsw i32 %109, %110
  %idxprom478 = sext i32 %add477 to i64
  %111 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx479 = getelementptr inbounds i16** %111, i64 %idxprom478
  %112 = load i16** %arrayidx479, align 8, !tbaa !0
  %arrayidx480 = getelementptr inbounds i16* %112, i64 %idxprom476
  store i16 %106, i16* %arrayidx480, align 2, !tbaa !4
  br label %for.inc487

if.else481:                                       ; preds = %for.body466
  %arrayidx485 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv759, i64 %indvars.iv
  store i32 0, i32* %arrayidx485, align 4, !tbaa !3
  br label %for.inc487

for.inc487:                                       ; preds = %if.then469, %if.else481
  %indvars.iv.next = add i64 %indvars.iv, 1
  %113 = trunc i64 %indvars.iv.next to i32
  %cmp464 = icmp slt i32 %113, %add
  br i1 %cmp464, label %for.body466, label %for.inc490

for.inc490:                                       ; preds = %for.inc487
  %indvars.iv.next760 = add i64 %indvars.iv759, 1
  %114 = trunc i64 %indvars.iv.next760 to i32
  %cmp459 = icmp slt i32 %114, %add458
  br i1 %cmp459, label %for.cond462.preheader, label %for.end492

for.end492:                                       ; preds = %for.inc490
  %type493 = getelementptr inbounds %struct.ImageParameters* %96, i64 0, i32 6
  %115 = load i32* %type493, align 4, !tbaa !3
  %cmp494 = icmp eq i32 %115, 3
  br i1 %cmp494, label %for.cond502.preheader, label %if.end514

for.cond502.preheader:                            ; preds = %for.end492, %for.inc510
  %i.9732 = phi i32 [ %add511, %for.inc510 ], [ %shl1, %for.end492 ]
  br label %for.body506

for.body506:                                      ; preds = %for.cond502.preheader, %for.body506
  %j.9731 = phi i32 [ %shl, %for.cond502.preheader ], [ %add508, %for.body506 ]
  call void @copyblock_sp(i32 %i.9732, i32 %j.9731) #7
  %add508 = add nsw i32 %j.9731, 4
  %cmp504 = icmp slt i32 %add508, %add
  br i1 %cmp504, label %for.body506, label %for.inc510

for.inc510:                                       ; preds = %for.body506
  %add511 = add nsw i32 %i.9732, 4
  %cmp499 = icmp slt i32 %add511, %add458
  br i1 %cmp499, label %for.cond502.preheader, label %if.end514

if.end514:                                        ; preds = %for.inc510, %if.end433, %for.end492, %lor.lhs.false, %land.lhs.true439
  %116 = load i32* %coeff_cost, align 4, !tbaa !3
  ret i32 %116
}

; Function Attrs: nounwind optsize uwtable
define void @ChromaPrediction4x4(i32 %uv, i32 %block_x, i32 %block_y, i32 %p_dir, i32 %fw_mode, i32 %bw_mode, i16 signext %fw_ref_idx, i16 signext %bw_ref_idx) #0 {
entry:
  %add = add i32 %block_x, 4
  %add1 = add nsw i32 %block_y, 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %4 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %4, i64 0, i32 19
  %5 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %lor.rhs [
    i32 0, label %lor.end
    i32 3, label %lor.end
  ]

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %4, i64 0, i32 20
  %7 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %7, 0
  br i1 %tobool4, label %lor.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %type5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %8 = load i32* %type5, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %8, 1
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %land.lhs.true, %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp6, %land.rhs ], [ true, %land.lhs.true ]
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 34
  %10 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool7 = icmp ne i32 %10, 0
  %cmp9 = icmp eq i16 %fw_ref_idx, 0
  %or.cond = and i1 %tobool7, %cmp9
  %cmp13 = icmp eq i16 %bw_ref_idx, 0
  %or.cond363 = and i1 %or.cond, %cmp13
  %cmp16 = icmp eq i32 %p_dir, 2
  %or.cond364 = and i1 %or.cond363, %cmp16
  %cmp19 = icmp eq i32 %fw_mode, 1
  %or.cond365 = and i1 %or.cond364, %cmp19
  %cmp22 = icmp eq i32 %bw_mode, 1
  %or.cond366 = and i1 %or.cond365, %cmp22
  br i1 %or.cond366, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %cmp25 = icmp eq i32 %10, 1
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %cond.in = select i1 %cmp25, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond = load i16******* %cond.in, align 8
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %mv_array.0 = phi i16****** [ %cond, %if.then ], [ %1, %lor.end ]
  %cmp27 = icmp eq i32 %p_dir, -1
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end
  tail call void @IntraChromaPrediction4x4(i32 %uv, i32 %block_x, i32 %block_y) #8
  br label %if.end261

if.end30:                                         ; preds = %if.end
  %cmp31 = icmp eq i32 %p_dir, 0
  %11 = and i32 %p_dir, -3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  tail call void @OneComponentChromaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.fw_pred, i64 0, i64 0), i32 %block_x, i32 %block_y, i16****** %mv_array.0, i32 0, i16 signext %fw_ref_idx, i32 %fw_mode, i32 %uv) #8
  br label %if.end37

if.end37:                                         ; preds = %if.end30, %if.then36
  %p_dir.off = add i32 %p_dir, -1
  %13 = icmp ult i32 %p_dir.off, 2
  br i1 %13, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  tail call void @OneComponentChromaPrediction4x4(i32* getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.bw_pred, i64 0, i64 0), i32 %block_x, i32 %block_y, i16****** %mv_array.0, i32 1, i16 signext %bw_ref_idx, i32 %bw_mode, i32 %uv) #8
  br label %if.end44

if.end44:                                         ; preds = %if.end37, %if.then43
  br i1 %9, label %if.then46, label %if.else184

if.then46:                                        ; preds = %if.end44
  %add56 = add nsw i32 %uv, 1
  %idxprom57 = sext i32 %add56 to i64
  br i1 %cmp16, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then46
  %idxprom58 = sext i16 %bw_ref_idx to i64
  %idxprom59 = sext i16 %fw_ref_idx to i64
  %14 = load i32***** @wbp_weight, align 8, !tbaa !0
  %15 = load i32**** %14, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32*** %15, i64 %idxprom59
  %16 = load i32*** %arrayidx61, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds i32** %16, i64 %idxprom58
  %17 = load i32** %arrayidx62, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i32* %17, i64 %idxprom57
  %18 = load i32* %arrayidx63, align 4, !tbaa !3
  %arrayidx68 = getelementptr inbounds i32**** %14, i64 1
  %19 = load i32**** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32*** %19, i64 %idxprom59
  %20 = load i32*** %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i32** %20, i64 %idxprom58
  %21 = load i32** %arrayidx70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32* %21, i64 %idxprom57
  %22 = load i32* %arrayidx71, align 4, !tbaa !3
  %23 = load i32* @wp_chroma_round, align 4, !tbaa !3
  %mul75 = shl i32 %23, 1
  %24 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %add77 = add nsw i32 %24, 1
  %25 = load i32**** @wp_offset, align 8, !tbaa !0
  %26 = load i32*** %25, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32** %26, i64 %idxprom59
  %27 = load i32** %arrayidx82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %27, i64 %idxprom57
  %28 = load i32* %arrayidx83, align 4, !tbaa !3
  %arrayidx87 = getelementptr inbounds i32*** %25, i64 1
  %29 = load i32*** %arrayidx87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32** %29, i64 %idxprom58
  %30 = load i32** %arrayidx88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %30, i64 %idxprom57
  %31 = load i32* %arrayidx89, align 4, !tbaa !3
  %add90 = add i32 %28, 1
  %add91 = add i32 %add90, %31
  %shr92 = ashr i32 %add91, 1
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value_uv.i = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 156
  %33 = load i32* %max_imgpel_value_uv.i, align 4, !tbaa !3
  %34 = sext i32 %block_x to i64
  %35 = add i32 %block_x, 1
  %36 = icmp sgt i32 %add, %35
  %smax = select i1 %36, i32 %add, i32 %35
  %37 = add i32 %smax, -1
  %38 = sub i32 %37, %block_x
  %39 = zext i32 %38 to i64
  %40 = add i64 %39, 1
  %41 = sext i32 %block_y to i64
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond.preheader, %for.inc99
  %indvars.iv415 = phi i64 [ %41, %for.cond.preheader ], [ %indvars.iv.next416, %for.inc99 ]
  %bpred.0385 = phi i32* [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.bw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep, %for.inc99 ]
  %fpred.0384 = phi i32* [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.fw_pred, i64 0, i64 0), %for.cond.preheader ], [ %scevgep414, %for.inc99 ]
  %scevgep = getelementptr i32* %bpred.0385, i64 %40
  br label %for.body55

for.body55:                                       ; preds = %for.cond52.preheader, %clip1a_chr.exit
  %indvars.iv = phi i64 [ %34, %for.cond52.preheader ], [ %indvars.iv.next, %clip1a_chr.exit ]
  %bpred.1382 = phi i32* [ %bpred.0385, %for.cond52.preheader ], [ %incdec.ptr72, %clip1a_chr.exit ]
  %fpred.1381 = phi i32* [ %fpred.0384, %for.cond52.preheader ], [ %incdec.ptr, %clip1a_chr.exit ]
  %incdec.ptr = getelementptr inbounds i32* %fpred.1381, i64 1
  %42 = load i32* %fpred.1381, align 4, !tbaa !3
  %mul = mul nsw i32 %42, %18
  %incdec.ptr72 = getelementptr inbounds i32* %bpred.1382, i64 1
  %43 = load i32* %bpred.1382, align 4, !tbaa !3
  %mul73 = mul nsw i32 %43, %22
  %add74 = add nsw i32 %mul73, %mul
  %add76 = add nsw i32 %add74, %mul75
  %shr = ashr i32 %add76, %add77
  %add93 = add nsw i32 %shr92, %shr
  %cmp.i = icmp slt i32 %33, %add93
  br i1 %cmp.i, label %clip1a_chr.exit, label %cond.false.i

cond.false.i:                                     ; preds = %for.body55
  %cmp2.i = icmp slt i32 %add93, 0
  %cond.i = select i1 %cmp2.i, i32 0, i32 %add93
  br label %clip1a_chr.exit

clip1a_chr.exit:                                  ; preds = %for.body55, %cond.false.i
  %cond6.i = phi i32 [ %cond.i, %cond.false.i ], [ %33, %for.body55 ]
  %conv94 = trunc i32 %cond6.i to i16
  %arrayidx98 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv415
  store i16 %conv94, i16* %arrayidx98, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %44 = trunc i64 %indvars.iv.next to i32
  %cmp53 = icmp slt i32 %44, %add
  br i1 %cmp53, label %for.body55, label %for.inc99

for.inc99:                                        ; preds = %clip1a_chr.exit
  %scevgep414 = getelementptr i32* %fpred.0384, i64 %40
  %indvars.iv.next416 = add i64 %indvars.iv415, 1
  %45 = trunc i64 %indvars.iv.next416 to i32
  %cmp50 = icmp slt i32 %45, %add1
  br i1 %cmp50, label %for.cond52.preheader, label %if.end261

if.else:                                          ; preds = %if.then46
  br i1 %cmp31, label %for.cond105.preheader, label %for.cond144.preheader

for.cond144.preheader:                            ; preds = %if.else
  %idxprom154 = sext i16 %bw_ref_idx to i64
  %46 = load i32**** @wp_weight, align 8, !tbaa !0
  %arrayidx155 = getelementptr inbounds i32*** %46, i64 1
  %47 = load i32*** %arrayidx155, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i32** %47, i64 %idxprom154
  %48 = load i32** %arrayidx156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i32* %48, i64 %idxprom57
  %49 = load i32* %arrayidx157, align 4, !tbaa !3
  %50 = load i32* @wp_chroma_round, align 4, !tbaa !3
  %51 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %52 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i32*** %52, i64 1
  %53 = load i32*** %arrayidx165, align 8, !tbaa !0
  %arrayidx166 = getelementptr inbounds i32** %53, i64 %idxprom154
  %54 = load i32** %arrayidx166, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i32* %54, i64 %idxprom57
  %55 = load i32* %arrayidx167, align 4, !tbaa !3
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value_uv.i367 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 156
  %57 = load i32* %max_imgpel_value_uv.i367, align 4, !tbaa !3
  %58 = sext i32 %block_x to i64
  %59 = add i32 %block_x, 1
  %60 = icmp sgt i32 %add, %59
  %smax425 = select i1 %60, i32 %add, i32 %59
  %61 = add i32 %smax425, -1
  %62 = sub i32 %61, %block_x
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, 1
  %65 = sext i32 %block_y to i64
  br label %for.cond148.preheader

for.cond105.preheader:                            ; preds = %if.else
  %idxprom115 = sext i16 %fw_ref_idx to i64
  %66 = load i32**** @wp_weight, align 8, !tbaa !0
  %67 = load i32*** %66, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32** %67, i64 %idxprom115
  %68 = load i32** %arrayidx117, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i32* %68, i64 %idxprom57
  %69 = load i32* %arrayidx118, align 4, !tbaa !3
  %70 = load i32* @wp_chroma_round, align 4, !tbaa !3
  %71 = load i32* @chroma_log_weight_denom, align 4, !tbaa !3
  %72 = load i32**** @wp_offset, align 8, !tbaa !0
  %73 = load i32*** %72, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32** %73, i64 %idxprom115
  %74 = load i32** %arrayidx127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i32* %74, i64 %idxprom57
  %75 = load i32* %arrayidx128, align 4, !tbaa !3
  %76 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value_uv.i374 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 156
  %77 = load i32* %max_imgpel_value_uv.i374, align 4, !tbaa !3
  %78 = sext i32 %block_x to i64
  %79 = add i32 %block_x, 1
  %80 = icmp sgt i32 %add, %79
  %smax419 = select i1 %80, i32 %add, i32 %79
  %81 = add i32 %smax419, -1
  %82 = sub i32 %81, %block_x
  %83 = zext i32 %82 to i64
  %84 = add i64 %83, 1
  %85 = sext i32 %block_y to i64
  br label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.cond105.preheader, %for.inc140
  %indvars.iv421 = phi i64 [ %85, %for.cond105.preheader ], [ %indvars.iv.next422, %for.inc140 ]
  %fpred.2390 = phi i32* [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.fw_pred, i64 0, i64 0), %for.cond105.preheader ], [ %scevgep420, %for.inc140 ]
  br label %for.body112

for.body112:                                      ; preds = %for.cond109.preheader, %clip1a_chr.exit380
  %indvars.iv417 = phi i64 [ %78, %for.cond109.preheader ], [ %indvars.iv.next418, %clip1a_chr.exit380 ]
  %fpred.3387 = phi i32* [ %fpred.2390, %for.cond109.preheader ], [ %incdec.ptr119, %clip1a_chr.exit380 ]
  %incdec.ptr119 = getelementptr inbounds i32* %fpred.3387, i64 1
  %86 = load i32* %fpred.3387, align 4, !tbaa !3
  %mul120 = mul nsw i32 %86, %69
  %add121 = add nsw i32 %mul120, %70
  %shr122 = ashr i32 %add121, %71
  %add129 = add nsw i32 %75, %shr122
  %cmp.i375 = icmp slt i32 %77, %add129
  br i1 %cmp.i375, label %clip1a_chr.exit380, label %cond.false.i378

cond.false.i378:                                  ; preds = %for.body112
  %cmp2.i376 = icmp slt i32 %add129, 0
  %cond.i377 = select i1 %cmp2.i376, i32 0, i32 %add129
  br label %clip1a_chr.exit380

clip1a_chr.exit380:                               ; preds = %for.body112, %cond.false.i378
  %cond6.i379 = phi i32 [ %cond.i377, %cond.false.i378 ], [ %77, %for.body112 ]
  %conv131 = trunc i32 %cond6.i379 to i16
  %arrayidx136 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 45, i64 %indvars.iv417, i64 %indvars.iv421
  store i16 %conv131, i16* %arrayidx136, align 2, !tbaa !4
  %indvars.iv.next418 = add i64 %indvars.iv417, 1
  %87 = trunc i64 %indvars.iv.next418 to i32
  %cmp110 = icmp slt i32 %87, %add
  br i1 %cmp110, label %for.body112, label %for.inc140

for.inc140:                                       ; preds = %clip1a_chr.exit380
  %scevgep420 = getelementptr i32* %fpred.2390, i64 %84
  %indvars.iv.next422 = add i64 %indvars.iv421, 1
  %88 = trunc i64 %indvars.iv.next422 to i32
  %cmp106 = icmp slt i32 %88, %add1
  br i1 %cmp106, label %for.cond109.preheader, label %if.end261

for.cond148.preheader:                            ; preds = %for.cond144.preheader, %for.inc179
  %indvars.iv427 = phi i64 [ %65, %for.cond144.preheader ], [ %indvars.iv.next428, %for.inc179 ]
  %bpred.2395 = phi i32* [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.bw_pred, i64 0, i64 0), %for.cond144.preheader ], [ %scevgep426, %for.inc179 ]
  br label %for.body151

for.body151:                                      ; preds = %for.cond148.preheader, %clip1a_chr.exit373
  %indvars.iv423 = phi i64 [ %58, %for.cond148.preheader ], [ %indvars.iv.next424, %clip1a_chr.exit373 ]
  %bpred.3392 = phi i32* [ %bpred.2395, %for.cond148.preheader ], [ %incdec.ptr158, %clip1a_chr.exit373 ]
  %incdec.ptr158 = getelementptr inbounds i32* %bpred.3392, i64 1
  %89 = load i32* %bpred.3392, align 4, !tbaa !3
  %mul159 = mul nsw i32 %89, %49
  %add160 = add nsw i32 %mul159, %50
  %shr161 = ashr i32 %add160, %51
  %add168 = add nsw i32 %55, %shr161
  %cmp.i368 = icmp slt i32 %57, %add168
  br i1 %cmp.i368, label %clip1a_chr.exit373, label %cond.false.i371

cond.false.i371:                                  ; preds = %for.body151
  %cmp2.i369 = icmp slt i32 %add168, 0
  %cond.i370 = select i1 %cmp2.i369, i32 0, i32 %add168
  br label %clip1a_chr.exit373

clip1a_chr.exit373:                               ; preds = %for.body151, %cond.false.i371
  %cond6.i372 = phi i32 [ %cond.i370, %cond.false.i371 ], [ %57, %for.body151 ]
  %conv170 = trunc i32 %cond6.i372 to i16
  %arrayidx175 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 45, i64 %indvars.iv423, i64 %indvars.iv427
  store i16 %conv170, i16* %arrayidx175, align 2, !tbaa !4
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %90 = trunc i64 %indvars.iv.next424 to i32
  %cmp149 = icmp slt i32 %90, %add
  br i1 %cmp149, label %for.body151, label %for.inc179

for.inc179:                                       ; preds = %clip1a_chr.exit373
  %scevgep426 = getelementptr i32* %bpred.2395, i64 %64
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %91 = trunc i64 %indvars.iv.next428 to i32
  %cmp145 = icmp slt i32 %91, %add1
  br i1 %cmp145, label %for.cond148.preheader, label %if.end261

if.else184:                                       ; preds = %if.end44
  %92 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %93 = sext i32 %block_x to i64
  %94 = add i32 %block_x, 1
  %95 = icmp sgt i32 %add, %94
  %smax431 = select i1 %95, i32 %add, i32 %94
  %96 = add i32 %smax431, -1
  %97 = sub i32 %96, %block_x
  %98 = zext i32 %97 to i64
  %99 = add i64 %98, 1
  %100 = sext i32 %block_y to i64
  br i1 %cmp16, label %for.cond192.preheader, label %if.else212

for.cond192.preheader:                            ; preds = %if.else184, %for.inc209
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %for.inc209 ], [ %100, %if.else184 ]
  %bpred.4402 = phi i32* [ %scevgep432, %for.inc209 ], [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.bw_pred, i64 0, i64 0), %if.else184 ]
  %fpred.4401 = phi i32* [ %scevgep433, %for.inc209 ], [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.fw_pred, i64 0, i64 0), %if.else184 ]
  %scevgep432 = getelementptr i32* %bpred.4402, i64 %99
  br label %for.body195

for.body195:                                      ; preds = %for.cond192.preheader, %for.body195
  %indvars.iv429 = phi i64 [ %93, %for.cond192.preheader ], [ %indvars.iv.next430, %for.body195 ]
  %bpred.5398 = phi i32* [ %bpred.4402, %for.cond192.preheader ], [ %incdec.ptr197, %for.body195 ]
  %fpred.5397 = phi i32* [ %fpred.4401, %for.cond192.preheader ], [ %incdec.ptr196, %for.body195 ]
  %incdec.ptr196 = getelementptr inbounds i32* %fpred.5397, i64 1
  %101 = load i32* %fpred.5397, align 4, !tbaa !3
  %incdec.ptr197 = getelementptr inbounds i32* %bpred.5398, i64 1
  %102 = load i32* %bpred.5398, align 4, !tbaa !3
  %add198 = add i32 %101, 1
  %add199 = add i32 %add198, %102
  %div = sdiv i32 %add199, 2
  %conv200 = trunc i32 %div to i16
  %arrayidx205 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 45, i64 %indvars.iv429, i64 %indvars.iv434
  store i16 %conv200, i16* %arrayidx205, align 2, !tbaa !4
  %indvars.iv.next430 = add i64 %indvars.iv429, 1
  %103 = trunc i64 %indvars.iv.next430 to i32
  %cmp193 = icmp slt i32 %103, %add
  br i1 %cmp193, label %for.body195, label %for.inc209

for.inc209:                                       ; preds = %for.body195
  %scevgep433 = getelementptr i32* %fpred.4401, i64 %99
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %104 = trunc i64 %indvars.iv.next435 to i32
  %cmp189 = icmp slt i32 %104, %add1
  br i1 %cmp189, label %for.cond192.preheader, label %if.end261

if.else212:                                       ; preds = %if.else184
  br i1 %cmp31, label %for.cond220.preheader, label %for.cond242.preheader

for.cond220.preheader:                            ; preds = %if.else212, %for.inc234
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %for.inc234 ], [ %100, %if.else212 ]
  %fpred.6407 = phi i32* [ %scevgep439, %for.inc234 ], [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.fw_pred, i64 0, i64 0), %if.else212 ]
  br label %for.body223

for.body223:                                      ; preds = %for.cond220.preheader, %for.body223
  %indvars.iv436 = phi i64 [ %93, %for.cond220.preheader ], [ %indvars.iv.next437, %for.body223 ]
  %fpred.7404 = phi i32* [ %fpred.6407, %for.cond220.preheader ], [ %incdec.ptr224, %for.body223 ]
  %incdec.ptr224 = getelementptr inbounds i32* %fpred.7404, i64 1
  %105 = load i32* %fpred.7404, align 4, !tbaa !3
  %conv225 = trunc i32 %105 to i16
  %arrayidx230 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 45, i64 %indvars.iv436, i64 %indvars.iv440
  store i16 %conv225, i16* %arrayidx230, align 2, !tbaa !4
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  %106 = trunc i64 %indvars.iv.next437 to i32
  %cmp221 = icmp slt i32 %106, %add
  br i1 %cmp221, label %for.body223, label %for.inc234

for.inc234:                                       ; preds = %for.body223
  %scevgep439 = getelementptr i32* %fpred.6407, i64 %99
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %107 = trunc i64 %indvars.iv.next441 to i32
  %cmp217 = icmp slt i32 %107, %add1
  br i1 %cmp217, label %for.cond220.preheader, label %if.end261

for.cond242.preheader:                            ; preds = %if.else212, %for.inc256
  %indvars.iv446 = phi i64 [ %indvars.iv.next447, %for.inc256 ], [ %100, %if.else212 ]
  %bpred.6412 = phi i32* [ %scevgep445, %for.inc256 ], [ getelementptr inbounds ([16 x i32]* @ChromaPrediction4x4.bw_pred, i64 0, i64 0), %if.else212 ]
  br label %for.body245

for.body245:                                      ; preds = %for.cond242.preheader, %for.body245
  %indvars.iv442 = phi i64 [ %93, %for.cond242.preheader ], [ %indvars.iv.next443, %for.body245 ]
  %bpred.7409 = phi i32* [ %bpred.6412, %for.cond242.preheader ], [ %incdec.ptr246, %for.body245 ]
  %incdec.ptr246 = getelementptr inbounds i32* %bpred.7409, i64 1
  %108 = load i32* %bpred.7409, align 4, !tbaa !3
  %conv247 = trunc i32 %108 to i16
  %arrayidx252 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 45, i64 %indvars.iv442, i64 %indvars.iv446
  store i16 %conv247, i16* %arrayidx252, align 2, !tbaa !4
  %indvars.iv.next443 = add i64 %indvars.iv442, 1
  %109 = trunc i64 %indvars.iv.next443 to i32
  %cmp243 = icmp slt i32 %109, %add
  br i1 %cmp243, label %for.body245, label %for.inc256

for.inc256:                                       ; preds = %for.body245
  %scevgep445 = getelementptr i32* %bpred.6412, i64 %99
  %indvars.iv.next447 = add i64 %indvars.iv446, 1
  %110 = trunc i64 %indvars.iv.next447 to i32
  %cmp239 = icmp slt i32 %110, %add1
  br i1 %cmp239, label %for.cond242.preheader, label %if.end261

if.end261:                                        ; preds = %for.inc256, %for.inc234, %for.inc209, %for.inc179, %for.inc140, %for.inc99, %if.then29
  ret void
}

; Function Attrs: optsize
declare i32 @dct_luma(i32, i32, i32*, i32) #1

; Function Attrs: optsize
declare i32 @dct_luma_sp(i32, i32, i32*) #1

; Function Attrs: optsize
declare i32 @dct_luma8x8(i32, i32*, i32) #1

; Function Attrs: optsize
declare void @copyblock_sp(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @SetModesAndRefframe(i32 %b8, i16* nocapture %p_dir, i32* nocapture %fw_mode, i32* nocapture %bw_mode, i16* nocapture %fw_ref, i16* nocapture %bw_ref) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %div = sdiv i32 %b8, 2
  %mul = shl nsw i32 %div, 1
  %rem = srem i32 %b8, 2
  %mul1 = shl nsw i32 %rem, 1
  store i16 -1, i16* %bw_ref, align 2, !tbaa !4
  store i16 -1, i16* %fw_ref, align 2, !tbaa !4
  store i32 -1, i32* %bw_mode, align 4, !tbaa !3
  store i32 -1, i32* %fw_mode, align 4, !tbaa !3
  %idxprom2 = sext i32 %b8 to i64
  %arrayidx3 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom2
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %conv = trunc i32 %3 to i16
  store i16 %conv, i16* %p_dir, align 2, !tbaa !4
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %5 = load i32* %block_y, align 4, !tbaa !3
  %add = add nsw i32 %5, %mul
  %idxprom5 = sext i32 %add to i64
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %6 = load i32* %block_x, align 4, !tbaa !3
  %add6 = add nsw i32 %6, %mul1
  %idxprom7 = sext i32 %add6 to i64
  %7 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 32
  %8 = load i16**** %ref_idx, align 8, !tbaa !0
  %9 = load i16*** %8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i16** %9, i64 %idxprom7
  %10 = load i16** %arrayidx9, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16* %10, i64 %idxprom5
  %11 = load i16* %arrayidx10, align 2, !tbaa !4
  store i16 %11, i16* %fw_ref, align 2, !tbaa !4
  store i16 0, i16* %bw_ref, align 2, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom2
  %12 = load i32* %arrayidx12, align 4, !tbaa !3
  store i32 %12, i32* %fw_mode, align 4, !tbaa !3
  store i32 0, i32* %bw_mode, align 4, !tbaa !3
  br label %if.end88

if.else:                                          ; preds = %entry
  switch i32 %3, label %if.else59 [
    i32 -1, label %if.then18
    i32 0, label %if.then25
    i32 1, label %if.then45
  ]

if.then18:                                        ; preds = %if.else
  store i16 -1, i16* %fw_ref, align 2, !tbaa !4
  store i16 -1, i16* %bw_ref, align 2, !tbaa !4
  store i32 0, i32* %fw_mode, align 4, !tbaa !3
  store i32 0, i32* %bw_mode, align 4, !tbaa !3
  br label %if.end88

if.then25:                                        ; preds = %if.else
  %block_y26 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %13 = load i32* %block_y26, align 4, !tbaa !3
  %add27 = add nsw i32 %13, %mul
  %idxprom28 = sext i32 %add27 to i64
  %block_x29 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %14 = load i32* %block_x29, align 4, !tbaa !3
  %add30 = add nsw i32 %14, %mul1
  %idxprom31 = sext i32 %add30 to i64
  %15 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx32 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 32
  %16 = load i16**** %ref_idx32, align 8, !tbaa !0
  %17 = load i16*** %16, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i16** %17, i64 %idxprom31
  %18 = load i16** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i16* %18, i64 %idxprom28
  %19 = load i16* %arrayidx35, align 2, !tbaa !4
  store i16 %19, i16* %fw_ref, align 2, !tbaa !4
  store i16 0, i16* %bw_ref, align 2, !tbaa !4
  %arrayidx38 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom2
  %20 = load i32* %arrayidx38, align 4, !tbaa !3
  store i32 %20, i32* %fw_mode, align 4, !tbaa !3
  store i32 0, i32* %bw_mode, align 4, !tbaa !3
  br label %if.end88

if.then45:                                        ; preds = %if.else
  store i16 0, i16* %fw_ref, align 2, !tbaa !4
  %block_y46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %21 = load i32* %block_y46, align 4, !tbaa !3
  %add47 = add nsw i32 %21, %mul
  %idxprom48 = sext i32 %add47 to i64
  %block_x49 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %22 = load i32* %block_x49, align 4, !tbaa !3
  %add50 = add nsw i32 %22, %mul1
  %idxprom51 = sext i32 %add50 to i64
  %23 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx52 = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 32
  %24 = load i16**** %ref_idx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i16*** %24, i64 1
  %25 = load i16*** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16** %25, i64 %idxprom51
  %26 = load i16** %arrayidx54, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i16* %26, i64 %idxprom48
  %27 = load i16* %arrayidx55, align 2, !tbaa !4
  store i16 %27, i16* %bw_ref, align 2, !tbaa !4
  store i32 0, i32* %fw_mode, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom2
  %28 = load i32* %arrayidx58, align 4, !tbaa !3
  store i32 %28, i32* %bw_mode, align 4, !tbaa !3
  br label %if.end88

if.else59:                                        ; preds = %if.else
  %block_y60 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %29 = load i32* %block_y60, align 4, !tbaa !3
  %add61 = add nsw i32 %29, %mul
  %idxprom62 = sext i32 %add61 to i64
  %block_x63 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %30 = load i32* %block_x63, align 4, !tbaa !3
  %add64 = add nsw i32 %30, %mul1
  %idxprom65 = sext i32 %add64 to i64
  %31 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx66 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 32
  %32 = load i16**** %ref_idx66, align 8, !tbaa !0
  %33 = load i16*** %32, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i16** %33, i64 %idxprom65
  %34 = load i16** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i16* %34, i64 %idxprom62
  %35 = load i16* %arrayidx69, align 2, !tbaa !4
  store i16 %35, i16* %fw_ref, align 2, !tbaa !4
  %arrayidx77 = getelementptr inbounds i16*** %32, i64 1
  %36 = load i16*** %arrayidx77, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i16** %36, i64 %idxprom65
  %37 = load i16** %arrayidx78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16* %37, i64 %idxprom62
  %38 = load i16* %arrayidx79, align 2, !tbaa !4
  store i16 %38, i16* %bw_ref, align 2, !tbaa !4
  %arrayidx82 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom2
  %39 = load i32* %arrayidx82, align 4, !tbaa !3
  store i32 %39, i32* %fw_mode, align 4, !tbaa !3
  %40 = load i32* %arrayidx82, align 4, !tbaa !3
  store i32 %40, i32* %bw_mode, align 4, !tbaa !3
  br label %if.end88

if.end88:                                         ; preds = %if.then18, %if.then45, %if.else59, %if.then25, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LumaResidualCoding() #0 {
entry:
  %fw_mode = alloca i32, align 4
  %bw_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %refframe = alloca i16, align 2
  %bw_ref = alloca i16, align 2
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  store i32 0, i32* %cbp, align 4, !tbaa !3
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  store i64 0, i64* %cbp_blk, align 8, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %sum_cnt_nonz.095 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %block8x8.094 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @SetModesAndRefframe(i32 %block8x8.094, i16* %p_dir, i32* %fw_mode, i32* %bw_mode, i16* %refframe, i16* %bw_ref) #8
  %3 = load i16* %p_dir, align 2, !tbaa !4
  %4 = load i32* %fw_mode, align 4, !tbaa !3
  %5 = load i32* %bw_mode, align 4, !tbaa !3
  %6 = load i16* %refframe, align 2, !tbaa !4
  %7 = load i16* %bw_ref, align 2, !tbaa !4
  %call = call i32 @LumaResidualCoding8x8(i32* %cbp, i64* %cbp_blk, i32 %block8x8.094, i16 signext %3, i32 %4, i32 %5, i16 signext %6, i16 signext %7) #8
  %add = add nsw i32 %call, %sum_cnt_nonz.095
  %inc = add nsw i32 %block8x8.094, 1
  %exitcond101 = icmp eq i32 %inc, 4
  br i1 %exitcond101, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp3 = icmp slt i32 %add, 6
  br i1 %cmp3, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %for.end
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 10
  %9 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 151
  %10 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add4 = sub i32 0, %10
  %cmp5 = icmp eq i32 %9, %add4
  br i1 %cmp5, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 160
  %11 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end63

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load i32* %cbp, align 4, !tbaa !3
  %and = and i32 %12, 16777200
  store i32 %and, i32* %cbp, align 4, !tbaa !3
  %13 = load i64* %cbp_blk, align 8, !tbaa !5
  %and9 = and i64 %13, 16711680
  store i64 %and9, i64* %cbp_blk, align 8, !tbaa !5
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 164
  %pix_x = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 34
  %14 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %14, i64 0, i32 25
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc34, %if.then
  %indvars.iv97 = phi i64 [ 0, %if.then ], [ %indvars.iv.next98, %for.inc34 ]
  br label %for.body15

for.body15:                                       ; preds = %for.inc31, %for.cond13.preheader
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next, %for.inc31 ]
  %15 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %15, 0
  br i1 %tobool, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body15
  %arrayidx20 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 45, i64 %indvars.iv97, i64 %indvars.iv
  %16 = load i16* %arrayidx20, align 2, !tbaa !4
  %17 = load i32* %pix_x, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv97 to i32
  %add21 = add nsw i32 %17, %18
  %idxprom22 = sext i32 %add21 to i64
  %19 = load i32* %pix_y, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv to i32
  %add23 = add nsw i32 %19, %20
  %idxprom24 = sext i32 %add23 to i64
  %21 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16** %21, i64 %idxprom24
  %22 = load i16** %arrayidx25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i16* %22, i64 %idxprom22
  store i16 %16, i16* %arrayidx26, align 2, !tbaa !4
  br label %for.inc31

if.else:                                          ; preds = %for.body15
  %arrayidx30 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv97, i64 %indvars.iv
  store i32 0, i32* %arrayidx30, align 4, !tbaa !3
  br label %for.inc31

for.inc31:                                        ; preds = %if.then16, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond96 = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond96, label %for.inc34, label %for.body15

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next98 = add i64 %indvars.iv97, 1
  %lftr.wideiv99 = trunc i64 %indvars.iv.next98 to i32
  %exitcond100 = icmp eq i32 %lftr.wideiv99, 16
  br i1 %exitcond100, label %for.end36, label %for.cond13.preheader

for.end36:                                        ; preds = %for.inc34
  %type = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 6
  %23 = load i32* %type, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %23, 3
  br i1 %cmp37, label %for.body41, label %if.end63

for.body41:                                       ; preds = %for.end36, %for.inc59
  %block8x8.191 = phi i32 [ %inc60, %for.inc59 ], [ 0, %for.end36 ]
  %and42 = shl i32 %block8x8.191, 3
  %shl = and i32 %and42, 8
  %and43 = shl i32 %block8x8.191, 2
  %shl44 = and i32 %and43, 8
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.body41, %for.inc56
  %i.190 = phi i32 [ 0, %for.body41 ], [ %add57, %for.inc56 ]
  %add51 = add nsw i32 %i.190, %shl
  br label %for.body50

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %j.189 = phi i32 [ 0, %for.cond48.preheader ], [ %add54, %for.body50 ]
  %add52 = add nsw i32 %j.189, %shl44
  call void @copyblock_sp(i32 %add51, i32 %add52) #7
  %add54 = add nsw i32 %j.189, 4
  %cmp49 = icmp slt i32 %add54, 8
  br i1 %cmp49, label %for.body50, label %for.inc56

for.inc56:                                        ; preds = %for.body50
  %add57 = add nsw i32 %i.190, 4
  %cmp46 = icmp slt i32 %add57, 8
  br i1 %cmp46, label %for.cond48.preheader, label %for.inc59

for.inc59:                                        ; preds = %for.inc56
  %inc60 = add nsw i32 %block8x8.191, 1
  %exitcond = icmp eq i32 %inc60, 4
  br i1 %exitcond, label %if.end63, label %for.body41

if.end63:                                         ; preds = %for.inc59, %for.end36, %lor.lhs.false, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @TransformDecision(i32 %block_check, i32* nocapture %cost) #0 {
entry:
  %fw_mode = alloca i32, align 4
  %bw_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %fw_ref = alloca i16, align 2
  %bw_ref = alloca i16, align 2
  %diff = alloca [64 x i32], align 16
  %0 = bitcast [64 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %cmp = icmp eq i32 %block_check, -1
  %add = add nsw i32 %block_check, 1
  %.block_check = select i1 %cmp, i32 0, i32 %block_check
  %.add = select i1 %cmp, i32 4, i32 %add
  %cmp1103 = icmp slt i32 %.block_check, %.add
  br i1 %cmp1103, label %for.body.lr.ph, label %for.end53

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.end47, %for.body.lr.ph
  %cost4x4.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %add41, %for.end47 ]
  %cost8x8.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %add50, %for.end47 ]
  %block8x8.0104 = phi i32 [ %.block_check, %for.body.lr.ph ], [ %inc52, %for.end47 ]
  call void @SetModesAndRefframe(i32 %block8x8.0104, i16* %p_dir, i32* %fw_mode, i32* %bw_mode, i16* %fw_ref, i16* %bw_ref) #8
  %div = sdiv i32 %block8x8.0104, 2
  %shl = shl i32 %div, 3
  %rem = srem i32 %block8x8.0104, 2
  %shl2 = shl i32 %rem, 3
  %1 = load i16* %p_dir, align 2, !tbaa !4
  %conv = sext i16 %1 to i32
  %2 = load i32* %fw_mode, align 4, !tbaa !3
  %3 = load i32* %bw_mode, align 4, !tbaa !3
  %4 = load i16* %fw_ref, align 2, !tbaa !4
  %5 = load i16* %bw_ref, align 2, !tbaa !4
  %6 = shl i32 %rem, 3
  %7 = sext i32 %6 to i64
  %8 = or i32 %6, 4
  %9 = icmp sgt i32 %6, %8
  %smax = select i1 %9, i32 %6, i32 %8
  %10 = or i32 %smax, 3
  %11 = sub i32 %10, %6
  %12 = lshr i32 %11, 2
  %13 = shl i32 %12, 4
  %14 = add i32 %13, 16
  %15 = shl i32 %div, 3
  %16 = sext i32 %15 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body, %for.inc45
  %indvars.iv120 = phi i64 [ %16, %for.body ], [ %indvars.iv.next121, %for.inc45 ]
  %cost4x4.1102 = phi i32 [ %cost4x4.0106, %for.body ], [ %add41, %for.inc45 ]
  %k.0100 = phi i32 [ 0, %for.body ], [ %40, %for.inc45 ]
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_y = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 38
  %18 = load i32* %opix_y, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv120 to i32
  %add7 = add nsw i32 %18, %19
  %20 = sext i32 %add7 to i64
  br label %for.body11

for.body11:                                       ; preds = %for.end40.for.body11_crit_edge, %for.body6
  %21 = phi %struct.ImageParameters* [ %17, %for.body6 ], [ %.pre, %for.end40.for.body11_crit_edge ]
  %indvars.iv118 = phi i64 [ %7, %for.body6 ], [ %indvars.iv.next119, %for.end40.for.body11_crit_edge ]
  %cost4x4.299 = phi i32 [ %cost4x4.1102, %for.body6 ], [ %add41, %for.end40.for.body11_crit_edge ]
  %k.197 = phi i32 [ %k.0100, %for.body6 ], [ %39, %for.end40.for.body11_crit_edge ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 37
  %22 = load i32* %opix_x, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv118 to i32
  %add12 = add nsw i32 %22, %23
  call void @LumaPrediction4x4(i32 %23, i32 %19, i32 %conv, i32 %2, i32 %3, i16 signext %4, i16 signext %5) #8
  %idxprom = sext i32 %k.197 to i64
  %24 = load i16*** @imgY_org, align 8, !tbaa !0
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %26 = sext i32 %add12 to i64
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.inc38, %for.body11
  %indvars.iv112 = phi i64 [ 0, %for.body11 ], [ %indvars.iv.next113, %for.inc38 ]
  %k.296 = phi i32 [ %k.197, %for.body11 ], [ %35, %for.inc38 ]
  %27 = add nsw i64 %20, %indvars.iv112
  %arrayidx25 = getelementptr inbounds i16** %24, i64 %27
  %28 = load i16** %arrayidx25, align 8, !tbaa !0
  %29 = add nsw i64 %indvars.iv112, %indvars.iv120
  %30 = sext i32 %k.296 to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20, %for.cond17.preheader
  %indvars.iv108 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next109, %for.body20 ]
  %indvars.iv = phi i64 [ %30, %for.cond17.preheader ], [ %indvars.iv.next, %for.body20 ]
  %31 = add nsw i64 %26, %indvars.iv108
  %arrayidx26 = getelementptr inbounds i16* %28, i64 %31
  %32 = load i16* %arrayidx26, align 2, !tbaa !4
  %conv27 = zext i16 %32 to i32
  %33 = add nsw i64 %indvars.iv108, %indvars.iv118
  %arrayidx33 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 45, i64 %33, i64 %29
  %34 = load i16* %arrayidx33, align 2, !tbaa !4
  %conv34 = zext i16 %34 to i32
  %sub = sub nsw i32 %conv27, %conv34
  %arrayidx36 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx36, align 4, !tbaa !3
  %indvars.iv.next109 = add i64 %indvars.iv108, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next109 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc38, label %for.body20

for.inc38:                                        ; preds = %for.body20
  %35 = add i32 %k.296, 4
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %lftr.wideiv116 = trunc i64 %indvars.iv.next113 to i32
  %exitcond117 = icmp eq i32 %lftr.wideiv116, 4
  br i1 %exitcond117, label %for.end40, label %for.cond17.preheader

for.end40:                                        ; preds = %for.inc38
  %arrayidx = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %idxprom
  %36 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %36, i64 0, i32 6
  %37 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arrayidx, i32 %37) #7
  %add41 = add nsw i32 %call, %cost4x4.299
  %38 = or i32 %shl2, 4
  %cmp10 = icmp slt i32 %23, %38
  br i1 %cmp10, label %for.end40.for.body11_crit_edge, label %for.inc45

for.end40.for.body11_crit_edge:                   ; preds = %for.end40
  %indvars.iv.next119 = add i64 %indvars.iv118, 4
  %39 = add i32 %k.197, 16
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body11

for.inc45:                                        ; preds = %for.end40
  %40 = add i32 %14, %k.0100
  %indvars.iv.next121 = add i64 %indvars.iv120, 4
  %41 = or i32 %shl, 4
  %cmp5 = icmp slt i32 %19, %41
  br i1 %cmp5, label %for.body6, label %for.end47

for.end47:                                        ; preds = %for.inc45
  %42 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard48 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 6
  %43 = load i32* %hadamard48, align 4, !tbaa !3
  %call49 = call i32 @SATD8X8(i32* %arraydecay, i32 %43) #7
  %add50 = add nsw i32 %call49, %cost8x8.0105
  %inc52 = add nsw i32 %block8x8.0104, 1
  %exitcond122 = icmp eq i32 %inc52, %.add
  br i1 %exitcond122, label %for.end53, label %for.body

for.end53:                                        ; preds = %for.end47, %entry
  %cost4x4.0.lcssa = phi i32 [ 0, %entry ], [ %add41, %for.end47 ]
  %cost8x8.0.lcssa = phi i32 [ 0, %entry ], [ %add50, %for.end47 ]
  %44 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 123
  %45 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %45, 2
  %cmp58 = icmp slt i32 %cost8x8.0.lcssa, %cost4x4.0.lcssa
  %or.cond = or i1 %cmp54, %cmp58
  br i1 %or.cond, label %cleanup, label %if.else61

if.else61:                                        ; preds = %for.end53
  %46 = load i32* %cost, align 4, !tbaa !3
  %sub62 = sub i32 %cost4x4.0.lcssa, %cost8x8.0.lcssa
  %add63 = add i32 %sub62, %46
  store i32 %add63, i32* %cost, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end53, %if.else61
  %retval.0 = phi i32 [ 0, %if.else61 ], [ 1, %for.end53 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @SATD(i32*, i32) #1

; Function Attrs: optsize
declare i32 @SATD8X8(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @OneComponentChromaPrediction4x4(i32* nocapture %mpred, i32 %block_c_x, i32 %block_c_y, i16****** nocapture %mv, i32 %list_idx, i16 signext %ref, i32 %blocktype, i32 %uv) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %1 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %div = sdiv i32 64, %1
  %sub = add nsw i32 %div, -1
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %2 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %div1 = sdiv i32 64, %2
  %sub2 = add nsw i32 %div1, -1
  %mul = mul nsw i32 %div1, %div
  %shr = ashr i32 %mul, 1
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %3 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.else10, label %land.end

land.end:                                         ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 22
  %6 = load i32* %mb_field, align 4, !tbaa !3
  %tobool3 = icmp eq i32 %6, 0
  br i1 %tobool3, label %if.else10, label %if.then

if.then:                                          ; preds = %land.end
  %rem282 = shl i32 %4, 1
  %7 = and i32 %rem282, 2
  %8 = add i32 %7, 2
  %height_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16
  %9 = load i32* %height_cr, align 4, !tbaa !3
  %div8 = sdiv i32 %9, 2
  br label %if.end13

if.else10:                                        ; preds = %entry, %land.end
  %height_cr11 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16
  %10 = load i32* %height_cr11, align 4, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then
  %list_offset.1 = phi i32 [ %8, %if.then ], [ 0, %if.else10 ]
  %max_y_cr.0.in = phi i32 [ %div8, %if.then ], [ %10, %if.else10 ]
  %max_y_cr.0 = add nsw i32 %max_y_cr.0.in, -1
  %add = add nsw i32 %list_offset.1, %list_idx
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom14
  %11 = load %struct.storable_picture*** %arrayidx15, align 8, !tbaa !0
  %idxprom16 = sext i32 %uv to i64
  %idxprom17 = sext i16 %ref to i64
  %arrayidx18 = getelementptr inbounds %struct.storable_picture** %11, i64 %idxprom17
  %12 = load %struct.storable_picture** %arrayidx18, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 30
  %13 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i16*** %13, i64 %idxprom16
  %14 = load i16*** %arrayidx19, align 8, !tbaa !0
  %idxprom23 = sext i32 %blocktype to i64
  %idxprom25 = sext i32 %list_idx to i64
  %opix_c_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 39
  %opix_c_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 40
  %chroma_vector_adjustment = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 22
  %width_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 14
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc198, %if.end13
  %mpred.addr.0291 = phi i32* [ %mpred, %if.end13 ], [ %scevgep, %for.inc198 ]
  %j.0290 = phi i32 [ 0, %if.end13 ], [ %inc199, %for.inc198 ]
  %add26 = add nsw i32 %j.0290, %block_c_y
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond20.preheader
  %mpred.addr.1289 = phi i32* [ %mpred.addr.0291, %for.cond20.preheader ], [ %incdec.ptr, %for.body22.for.body22_crit_edge ]
  %i.0288 = phi i32 [ 0, %for.cond20.preheader ], [ %inc, %for.body22.for.body22_crit_edge ]
  %15 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %div28 = sdiv i32 %15, 4
  %div29 = sdiv i32 %add26, %div28
  %idxprom30 = sext i32 %div29 to i64
  %add31 = add nsw i32 %i.0288, %block_c_x
  %16 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %div33 = sdiv i32 %16, 4
  %div34 = sdiv i32 %add31, %div33
  %idxprom35 = sext i32 %div34 to i64
  %arrayidx36 = getelementptr inbounds i16****** %mv, i64 %idxprom35
  %17 = load i16****** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16***** %17, i64 %idxprom30
  %18 = load i16***** %arrayidx37, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i16**** %18, i64 %idxprom25
  %19 = load i16**** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i16*** %19, i64 %idxprom17
  %20 = load i16*** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i16** %20, i64 %idxprom23
  %21 = load i16** %arrayidx40, align 8, !tbaa !0
  %22 = load i32* %opix_c_x, align 4, !tbaa !3
  %add42 = add nsw i32 %22, %add31
  %mul43 = mul nsw i32 %add42, %div
  %23 = load i16* %21, align 2, !tbaa !4
  %conv = sext i16 %23 to i32
  %add45 = add nsw i32 %mul43, %conv
  %24 = load i32* %opix_c_y, align 4, !tbaa !3
  %add47 = add nsw i32 %24, %add26
  %mul48 = mul nsw i32 %add47, %div1
  %arrayidx49 = getelementptr inbounds i16* %21, i64 1
  %25 = load i16* %arrayidx49, align 2, !tbaa !4
  %conv50 = sext i16 %25 to i32
  %add51 = add nsw i32 %mul48, %conv50
  %26 = load i32* %chroma_vector_adjustment, align 4, !tbaa !3
  %add54 = add nsw i32 %add51, %26
  %27 = load i32* %width_cr, align 4, !tbaa !3
  %div56 = sdiv i32 %add45, %div
  %cmp57 = icmp sgt i32 %27, %div56
  %sub55 = add nsw i32 %27, -1
  %cond = select i1 %cmp57, i32 %div56, i32 %sub55
  %cmp62 = icmp slt i32 %cond, 0
  %div80 = sdiv i32 %add54, %div1
  %cmp81 = icmp sle i32 %max_y_cr.0.in, %div80
  %max_y_cr.0.div80 = select i1 %cmp81, i32 %max_y_cr.0, i32 %div80
  %cmp88 = icmp slt i32 %max_y_cr.0.div80, 0
  %add104 = add nsw i32 %add45, %sub
  %div105 = sdiv i32 %add104, %div
  %cmp106 = icmp sgt i32 %27, %div105
  %cond115 = select i1 %cmp106, i32 %div105, i32 %sub55
  %cmp116 = icmp slt i32 %cond115, 0
  %add136 = add nsw i32 %add54, %sub2
  %div137 = sdiv i32 %add136, %div1
  %cmp138 = icmp sle i32 %max_y_cr.0.in, %div137
  %max_y_cr.0.div137 = select i1 %cmp138, i32 %max_y_cr.0, i32 %div137
  %cmp146 = icmp slt i32 %max_y_cr.0.div137, 0
  %and = and i32 %add45, %sub
  %sub162 = sub nsw i32 %div, %and
  %and163 = and i32 %add54, %sub2
  %sub164 = sub nsw i32 %div1, %and163
  %28 = sext i32 %cond to i64
  %idxprom166 = select i1 %cmp62, i64 0, i64 %28
  %29 = sext i32 %max_y_cr.0.div80 to i64
  %idxprom167 = select i1 %cmp88, i64 0, i64 %29
  %arrayidx168 = getelementptr inbounds i16** %14, i64 %idxprom167
  %30 = load i16** %arrayidx168, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i16* %30, i64 %idxprom166
  %31 = load i16* %arrayidx169, align 2, !tbaa !4
  %conv170 = zext i16 %31 to i32
  %mul171 = mul i32 %conv170, %sub162
  %32 = sext i32 %cond115 to i64
  %idxprom173 = select i1 %cmp116, i64 0, i64 %32
  %arrayidx176 = getelementptr inbounds i16* %30, i64 %idxprom173
  %33 = load i16* %arrayidx176, align 2, !tbaa !4
  %conv177 = zext i16 %33 to i32
  %mul178 = mul i32 %conv177, %and
  %34 = sext i32 %max_y_cr.0.div137 to i64
  %idxprom182 = select i1 %cmp146, i64 0, i64 %34
  %arrayidx183 = getelementptr inbounds i16** %14, i64 %idxprom182
  %35 = load i16** %arrayidx183, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i16* %35, i64 %idxprom166
  %36 = load i16* %arrayidx184, align 2, !tbaa !4
  %conv185 = zext i16 %36 to i32
  %mul186 = mul i32 %conv185, %sub162
  %arrayidx192 = getelementptr inbounds i16* %35, i64 %idxprom173
  %37 = load i16* %arrayidx192, align 2, !tbaa !4
  %conv193 = zext i16 %37 to i32
  %mul194 = mul i32 %conv193, %and
  %tmp = add i32 %mul194, %mul186
  %tmp285 = mul i32 %tmp, %and163
  %tmp286 = add i32 %mul178, %mul171
  %tmp287 = mul i32 %tmp286, %sub164
  %add195 = add i32 %tmp285, %shr
  %add196 = add i32 %add195, %tmp287
  %div197 = sdiv i32 %add196, %mul
  store i32 %div197, i32* %mpred.addr.1289, align 4, !tbaa !3
  %inc = add nsw i32 %i.0288, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.inc198, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  %incdec.ptr = getelementptr inbounds i32* %mpred.addr.1289, i64 1
  br label %for.body22

for.inc198:                                       ; preds = %for.body22
  %scevgep = getelementptr i32* %mpred.addr.0291, i64 4
  %inc199 = add nsw i32 %j.0290, 1
  %exitcond292 = icmp eq i32 %inc199, 4
  br i1 %exitcond292, label %for.end200, label %for.cond20.preheader

for.end200:                                       ; preds = %for.inc198
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IntraChromaPrediction4x4(i32 %uv, i32 %block_x, i32 %block_y) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  %3 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %idxprom7 = sext i32 %3 to i64
  %idxprom8 = sext i32 %uv to i64
  %4 = sext i32 %block_x to i64
  %5 = sext i32 %block_y to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc17
  %indvars.iv29 = phi i64 [ %5, %entry ], [ %indvars.iv.next30, %for.inc17 ]
  br label %for.body4

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %4, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  %arrayidx12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 44, i64 %idxprom8, i64 %idxprom7, i64 %indvars.iv, i64 %indvars.iv29
  %6 = load i16* %arrayidx12, align 2, !tbaa !4
  %arrayidx16 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 45, i64 %indvars.iv, i64 %indvars.iv29
  store i16 %6, i16* %arrayidx16, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = add nsw i32 %block_x, 3
  %8 = trunc i64 %indvars.iv to i32
  %cmp3 = icmp slt i32 %8, %7
  br i1 %cmp3, label %for.body4, label %for.inc17

for.inc17:                                        ; preds = %for.body4
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %9 = add nsw i32 %block_y, 3
  %10 = trunc i64 %indvars.iv29 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end19

for.end19:                                        ; preds = %for.inc17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ChromaResidualCoding(i32* nocapture %cr_cbp) #0 {
entry:
  %fw_mode = alloca i32, align 4
  %bw_mode = alloca i32, align 4
  %p_dir = alloca i16, align 2
  %refframe = alloca i16, align 2
  %bw_ref = alloca i16, align 2
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %3 = load i32* %mb_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %4, 0
  %cmp3 = icmp eq i32 %4, 3
  %.cmp3 = or i1 %cmp1, %cmp3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %.cmp3, %land.rhs ]
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %6 = load i32* %yuv_format, align 4, !tbaa !3
  %sub = add nsw i32 %6, -1
  store i32 0, i32* %cr_cbp, align 4, !tbaa !3
  %idxprom14 = sext i32 %sub to i64
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc297.for.cond5.preheader_crit_edge, %land.end
  %7 = phi %struct.ImageParameters* [ %0, %land.end ], [ %.pre708, %for.inc297.for.cond5.preheader_crit_edge ]
  %indvars.iv699 = phi i64 [ 0, %land.end ], [ %indvars.iv.next700, %for.inc297.for.cond5.preheader_crit_edge ]
  %mb_cr_size_y630 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 162
  %8 = load i32* %mb_cr_size_y630, align 4, !tbaa !3
  %cmp6631 = icmp sgt i32 %8, 0
  br i1 %cmp6631, label %for.cond8.preheader, label %for.end20

for.cond8.preheader:                              ; preds = %for.cond5.preheader, %for.inc18
  %9 = phi %struct.ImageParameters* [ %20, %for.inc18 ], [ %7, %for.cond5.preheader ]
  %block_y.0632 = phi i32 [ %add19, %for.inc18 ], [ 0, %for.cond5.preheader ]
  %mb_cr_size_x627 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 161
  %10 = load i32* %mb_cr_size_x627, align 4, !tbaa !3
  %cmp9628 = icmp sgt i32 %10, 0
  br i1 %cmp9628, label %for.body10.lr.ph, label %for.inc18

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %shr12 = ashr exact i32 %block_y.0632, 2
  %idxprom13 = sext i32 %shr12 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.body10
  %block_x.0629 = phi i32 [ 0, %for.body10.lr.ph ], [ %add, %for.body10 ]
  %shr = ashr exact i32 %block_x.0629, 2
  %idxprom11 = sext i32 %shr to i64
  %arrayidx17 = getelementptr inbounds [3 x [4 x [4 x i32]]]* @ChromaResidualCoding.block8x8_idx, i64 0, i64 %idxprom14, i64 %idxprom13, i64 %idxprom11
  %11 = load i32* %arrayidx17, align 4, !tbaa !3
  call void @SetModesAndRefframe(i32 %11, i16* %p_dir, i32* %fw_mode, i32* %bw_mode, i16* %refframe, i16* %bw_ref) #8
  %12 = load i16* %p_dir, align 2, !tbaa !4
  %conv = sext i16 %12 to i32
  %13 = load i32* %fw_mode, align 4, !tbaa !3
  %14 = load i32* %bw_mode, align 4, !tbaa !3
  %15 = load i16* %refframe, align 2, !tbaa !4
  %16 = load i16* %bw_ref, align 2, !tbaa !4
  %17 = trunc i64 %indvars.iv699 to i32
  call void @ChromaPrediction4x4(i32 %17, i32 %block_x.0629, i32 %block_y.0632, i32 %conv, i32 %13, i32 %14, i16 signext %15, i16 signext %16) #8
  %add = add nsw i32 %block_x.0629, 4
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 161
  %19 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %add, %19
  br i1 %cmp9, label %for.body10, label %for.inc18

for.inc18:                                        ; preds = %for.body10, %for.cond8.preheader
  %20 = phi %struct.ImageParameters* [ %9, %for.cond8.preheader ], [ %18, %for.body10 ]
  %add19 = add nsw i32 %block_y.0632, 4
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 162
  %21 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %add19, %21
  br i1 %cmp6, label %for.cond8.preheader, label %for.end20

for.end20:                                        ; preds = %for.inc18, %for.cond5.preheader
  %22 = phi i32 [ %8, %for.cond5.preheader ], [ %21, %for.inc18 ]
  %23 = phi %struct.ImageParameters* [ %7, %for.cond5.preheader ], [ %20, %for.inc18 ]
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 88
  %24 = load i32* %NoResidueDirect, align 4, !tbaa !3
  %tobool = icmp eq i32 %24, 0
  br i1 %tobool, label %if.else63, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.end20
  %mb_cr_size_y22636 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 162
  %cmp23637 = icmp sgt i32 %22, 0
  br i1 %cmp23637, label %for.cond26.preheader.lr.ph, label %if.end208

for.cond26.preheader.lr.ph:                       ; preds = %for.cond21.preheader
  %mb_cr_size_x27633 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 161
  %25 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 30
  %26 = trunc i64 %indvars.iv699 to i32
  %cmp45 = icmp eq i32 %26, 0
  %.pre707 = load i32* %mb_cr_size_x27633, align 4, !tbaa !3
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond26.preheader.lr.ph, %for.inc60
  %27 = phi i32 [ %22, %for.cond26.preheader.lr.ph ], [ %40, %for.inc60 ]
  %28 = phi i32 [ %.pre707, %for.cond26.preheader.lr.ph ], [ %41, %for.inc60 ]
  %indvars.iv677 = phi i64 [ 0, %for.cond26.preheader.lr.ph ], [ %indvars.iv.next678, %for.inc60 ]
  %cmp28634 = icmp sgt i32 %28, 0
  br i1 %cmp28634, label %for.body30, label %for.inc60

for.body30:                                       ; preds = %for.inc58, %for.cond26.preheader
  %indvars.iv675 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next676, %for.inc58 ]
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 164
  %29 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool31 = icmp eq i32 %29, 0
  br i1 %tobool31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body30
  %arrayidx36 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 45, i64 %indvars.iv675, i64 %indvars.iv677
  %30 = load i16* %arrayidx36, align 2, !tbaa !4
  %pix_c_x = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 35
  %31 = load i32* %pix_c_x, align 4, !tbaa !3
  %32 = trunc i64 %indvars.iv675 to i32
  %add37 = add nsw i32 %31, %32
  %idxprom38 = sext i32 %add37 to i64
  %pix_c_y = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 36
  %33 = load i32* %pix_c_y, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv677 to i32
  %add39 = add nsw i32 %33, %34
  %idxprom40 = sext i32 %add39 to i64
  %35 = load i16**** %imgUV, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i16*** %35, i64 %indvars.iv699
  %36 = load i16*** %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i16** %36, i64 %idxprom40
  %37 = load i16** %arrayidx43, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i16* %37, i64 %idxprom38
  store i16 %30, i16* %arrayidx44, align 2, !tbaa !4
  br label %for.inc58

if.else:                                          ; preds = %for.body30
  br i1 %cmp45, label %if.then47, label %if.else52

if.then47:                                        ; preds = %if.else
  %arrayidx51 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv675, i64 %indvars.iv677
  store i32 0, i32* %arrayidx51, align 4, !tbaa !3
  br label %for.inc58

if.else52:                                        ; preds = %if.else
  %arrayidx56 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv675, i64 %indvars.iv677
  store i32 0, i32* %arrayidx56, align 4, !tbaa !3
  br label %for.inc58

for.inc58:                                        ; preds = %if.then32, %if.else52, %if.then47
  %indvars.iv.next676 = add i64 %indvars.iv675, 1
  %38 = load i32* %mb_cr_size_x27633, align 4, !tbaa !3
  %39 = trunc i64 %indvars.iv.next676 to i32
  %cmp28 = icmp slt i32 %39, %38
  br i1 %cmp28, label %for.body30, label %for.cond26.for.inc60_crit_edge

for.cond26.for.inc60_crit_edge:                   ; preds = %for.inc58
  %.pre710 = load i32* %mb_cr_size_y22636, align 4, !tbaa !3
  br label %for.inc60

for.inc60:                                        ; preds = %for.cond26.preheader, %for.cond26.for.inc60_crit_edge
  %40 = phi i32 [ %.pre710, %for.cond26.for.inc60_crit_edge ], [ %27, %for.cond26.preheader ]
  %41 = phi i32 [ %38, %for.cond26.for.inc60_crit_edge ], [ %28, %for.cond26.preheader ]
  %indvars.iv.next678 = add i64 %indvars.iv677, 1
  %42 = trunc i64 %indvars.iv.next678 to i32
  %cmp23 = icmp slt i32 %42, %40
  br i1 %cmp23, label %for.cond26.preheader, label %if.end208

if.else63:                                        ; preds = %for.end20
  br i1 %5, label %land.lhs.true, label %for.cond141.preheader

for.cond141.preheader:                            ; preds = %if.else63
  %mb_cr_size_y142643 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 162
  %cmp143644 = icmp sgt i32 %22, 0
  br i1 %cmp143644, label %for.cond146.preheader.lr.ph, label %if.else215

for.cond146.preheader.lr.ph:                      ; preds = %for.cond141.preheader
  %mb_cr_size_x147639 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 161
  %43 = load i16**** @imgUV_org, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i16*** %43, i64 %indvars.iv699
  %44 = trunc i64 %indvars.iv699 to i32
  %cmp176 = icmp eq i32 %44, 0
  %.pre703 = load i32* %mb_cr_size_x147639, align 4, !tbaa !3
  br label %for.cond146.preheader

land.lhs.true:                                    ; preds = %if.else63
  %type65 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 6
  %45 = load i32* %type65, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %45, 3
  br i1 %cmp66, label %for.cond73.preheader, label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %land.lhs.true
  %mb_cr_size_y91650 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 162
  %cmp92651 = icmp sgt i32 %22, 0
  br i1 %cmp92651, label %for.cond95.preheader.lr.ph, label %if.end208

for.cond95.preheader.lr.ph:                       ; preds = %for.cond90.preheader
  %mb_cr_size_x96646 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 161
  %46 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV115 = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 30
  %47 = trunc i64 %indvars.iv699 to i32
  %cmp120 = icmp eq i32 %47, 0
  %.pre = load i32* %mb_cr_size_x96646, align 4, !tbaa !3
  br label %for.cond95.preheader

for.cond73.preheader:                             ; preds = %land.lhs.true, %for.inc84
  %indvars.iv691 = phi i64 [ %indvars.iv.next692, %for.inc84 ], [ 0, %land.lhs.true ]
  br label %for.body76

for.body76:                                       ; preds = %for.body76, %for.cond73.preheader
  %indvars.iv687 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next688, %for.body76 ]
  %arrayidx80 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 46, i64 %indvars.iv687, i64 %indvars.iv691
  store i32 0, i32* %arrayidx80, align 4, !tbaa !3
  %indvars.iv.next688 = add i64 %indvars.iv687, 1
  %lftr.wideiv689 = trunc i64 %indvars.iv.next688 to i32
  %exitcond690 = icmp eq i32 %lftr.wideiv689, 8
  br i1 %exitcond690, label %for.inc84, label %for.body76

for.inc84:                                        ; preds = %for.body76
  %indvars.iv.next692 = add i64 %indvars.iv691, 1
  %lftr.wideiv693 = trunc i64 %indvars.iv.next692 to i32
  %exitcond694 = icmp eq i32 %lftr.wideiv693, 8
  br i1 %exitcond694, label %if.end208, label %for.cond73.preheader

for.cond95.preheader:                             ; preds = %for.cond95.preheader.lr.ph, %for.inc137
  %48 = phi i32 [ %22, %for.cond95.preheader.lr.ph ], [ %61, %for.inc137 ]
  %49 = phi i32 [ %.pre, %for.cond95.preheader.lr.ph ], [ %62, %for.inc137 ]
  %indvars.iv685 = phi i64 [ 0, %for.cond95.preheader.lr.ph ], [ %indvars.iv.next686, %for.inc137 ]
  %cmp97647 = icmp sgt i32 %49, 0
  br i1 %cmp97647, label %for.body99, label %for.inc137

for.body99:                                       ; preds = %for.inc134, %for.cond95.preheader
  %indvars.iv683 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next684, %for.inc134 ]
  %residue_transform_flag100 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 164
  %50 = load i32* %residue_transform_flag100, align 4, !tbaa !3
  %tobool101 = icmp eq i32 %50, 0
  br i1 %tobool101, label %if.then102, label %if.else119

if.then102:                                       ; preds = %for.body99
  %arrayidx107 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 45, i64 %indvars.iv683, i64 %indvars.iv685
  %51 = load i16* %arrayidx107, align 2, !tbaa !4
  %pix_c_x108 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 35
  %52 = load i32* %pix_c_x108, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv683 to i32
  %add109 = add nsw i32 %52, %53
  %idxprom110 = sext i32 %add109 to i64
  %pix_c_y111 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 36
  %54 = load i32* %pix_c_y111, align 4, !tbaa !3
  %55 = trunc i64 %indvars.iv685 to i32
  %add112 = add nsw i32 %54, %55
  %idxprom113 = sext i32 %add112 to i64
  %56 = load i16**** %imgUV115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i16*** %56, i64 %indvars.iv699
  %57 = load i16*** %arrayidx116, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i16** %57, i64 %idxprom113
  %58 = load i16** %arrayidx117, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i16* %58, i64 %idxprom110
  store i16 %51, i16* %arrayidx118, align 2, !tbaa !4
  br label %for.inc134

if.else119:                                       ; preds = %for.body99
  br i1 %cmp120, label %if.then122, label %if.else127

if.then122:                                       ; preds = %if.else119
  %arrayidx126 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv683, i64 %indvars.iv685
  store i32 0, i32* %arrayidx126, align 4, !tbaa !3
  br label %for.inc134

if.else127:                                       ; preds = %if.else119
  %arrayidx131 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv683, i64 %indvars.iv685
  store i32 0, i32* %arrayidx131, align 4, !tbaa !3
  br label %for.inc134

for.inc134:                                       ; preds = %if.then102, %if.else127, %if.then122
  %indvars.iv.next684 = add i64 %indvars.iv683, 1
  %59 = load i32* %mb_cr_size_x96646, align 4, !tbaa !3
  %60 = trunc i64 %indvars.iv.next684 to i32
  %cmp97 = icmp slt i32 %60, %59
  br i1 %cmp97, label %for.body99, label %for.cond95.for.inc137_crit_edge

for.cond95.for.inc137_crit_edge:                  ; preds = %for.inc134
  %.pre709 = load i32* %mb_cr_size_y91650, align 4, !tbaa !3
  br label %for.inc137

for.inc137:                                       ; preds = %for.cond95.preheader, %for.cond95.for.inc137_crit_edge
  %61 = phi i32 [ %.pre709, %for.cond95.for.inc137_crit_edge ], [ %48, %for.cond95.preheader ]
  %62 = phi i32 [ %59, %for.cond95.for.inc137_crit_edge ], [ %49, %for.cond95.preheader ]
  %indvars.iv.next686 = add i64 %indvars.iv685, 1
  %63 = trunc i64 %indvars.iv.next686 to i32
  %cmp92 = icmp slt i32 %63, %61
  br i1 %cmp92, label %for.cond95.preheader, label %if.end208

for.cond146.preheader:                            ; preds = %for.cond146.preheader.lr.ph, %for.inc203
  %64 = phi i32 [ %22, %for.cond146.preheader.lr.ph ], [ %79, %for.inc203 ]
  %65 = phi i32 [ %.pre703, %for.cond146.preheader.lr.ph ], [ %80, %for.inc203 ]
  %indvars.iv681 = phi i64 [ 0, %for.cond146.preheader.lr.ph ], [ %indvars.iv.next682, %for.inc203 ]
  %cmp148640 = icmp sgt i32 %65, 0
  br i1 %cmp148640, label %for.body150, label %for.inc203

for.body150:                                      ; preds = %for.cond146.preheader, %for.inc200
  %indvars.iv679 = phi i64 [ %indvars.iv.next680, %for.inc200 ], [ 0, %for.cond146.preheader ]
  %residue_transform_flag151 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 164
  %66 = load i32* %residue_transform_flag151, align 4, !tbaa !3
  %tobool152 = icmp eq i32 %66, 0
  br i1 %tobool152, label %if.then153, label %if.else175

if.then153:                                       ; preds = %for.body150
  %opix_c_x = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 39
  %67 = load i32* %opix_c_x, align 4, !tbaa !3
  %68 = trunc i64 %indvars.iv679 to i32
  %add154 = add nsw i32 %67, %68
  %idxprom155 = sext i32 %add154 to i64
  %opix_c_y = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 40
  %69 = load i32* %opix_c_y, align 4, !tbaa !3
  %70 = trunc i64 %indvars.iv681 to i32
  %add156 = add nsw i32 %69, %70
  %idxprom157 = sext i32 %add156 to i64
  %71 = load i16*** %arrayidx159, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i16** %71, i64 %idxprom157
  %72 = load i16** %arrayidx160, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds i16* %72, i64 %idxprom155
  %73 = load i16* %arrayidx161, align 2, !tbaa !4
  %conv162 = zext i16 %73 to i32
  %arrayidx167 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 45, i64 %indvars.iv679, i64 %indvars.iv681
  %74 = load i16* %arrayidx167, align 2, !tbaa !4
  %conv168 = zext i16 %74 to i32
  %sub169 = sub nsw i32 %conv162, %conv168
  %arrayidx174 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 46, i64 %indvars.iv679, i64 %indvars.iv681
  store i32 %sub169, i32* %arrayidx174, align 4, !tbaa !3
  br label %for.inc200

if.else175:                                       ; preds = %for.body150
  br i1 %cmp176, label %if.then178, label %if.else188

if.then178:                                       ; preds = %if.else175
  %arrayidx182 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv679, i64 %indvars.iv681
  %75 = load i32* %arrayidx182, align 4, !tbaa !3
  %arrayidx187 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 46, i64 %indvars.iv679, i64 %indvars.iv681
  store i32 %75, i32* %arrayidx187, align 4, !tbaa !3
  br label %for.inc200

if.else188:                                       ; preds = %if.else175
  %arrayidx192 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv679, i64 %indvars.iv681
  %76 = load i32* %arrayidx192, align 4, !tbaa !3
  %arrayidx197 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 46, i64 %indvars.iv679, i64 %indvars.iv681
  store i32 %76, i32* %arrayidx197, align 4, !tbaa !3
  br label %for.inc200

for.inc200:                                       ; preds = %if.then153, %if.else188, %if.then178
  %indvars.iv.next680 = add i64 %indvars.iv679, 1
  %77 = load i32* %mb_cr_size_x147639, align 4, !tbaa !3
  %78 = trunc i64 %indvars.iv.next680 to i32
  %cmp148 = icmp slt i32 %78, %77
  br i1 %cmp148, label %for.body150, label %for.cond146.for.inc203_crit_edge

for.cond146.for.inc203_crit_edge:                 ; preds = %for.inc200
  %.pre704 = load i32* %mb_cr_size_y142643, align 4, !tbaa !3
  br label %for.inc203

for.inc203:                                       ; preds = %for.cond146.for.inc203_crit_edge, %for.cond146.preheader
  %79 = phi i32 [ %.pre704, %for.cond146.for.inc203_crit_edge ], [ %64, %for.cond146.preheader ]
  %80 = phi i32 [ %77, %for.cond146.for.inc203_crit_edge ], [ %65, %for.cond146.preheader ]
  %indvars.iv.next682 = add i64 %indvars.iv681, 1
  %81 = trunc i64 %indvars.iv.next682 to i32
  %cmp143 = icmp slt i32 %81, %79
  br i1 %cmp143, label %for.cond146.preheader, label %if.end208

if.end208:                                        ; preds = %for.inc84, %for.cond90.preheader, %for.inc137, %for.inc203, %for.cond21.preheader, %for.inc60
  br i1 %5, label %land.lhs.true210, label %if.else215

land.lhs.true210:                                 ; preds = %if.end208
  %type211 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 6
  %82 = load i32* %type211, align 4, !tbaa !3
  %cmp212 = icmp eq i32 %82, 3
  br i1 %cmp212, label %if.then214, label %for.inc297

if.then214:                                       ; preds = %land.lhs.true210
  %83 = load i32* %cr_cbp, align 4, !tbaa !3
  %84 = trunc i64 %indvars.iv699 to i32
  %call = call i32 @dct_chroma_sp(i32 %84, i32 %83) #7
  store i32 %call, i32* %cr_cbp, align 4, !tbaa !3
  br label %for.inc297

if.else215:                                       ; preds = %for.cond141.preheader, %if.end208
  %NoResidueDirect216 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 88
  %85 = load i32* %NoResidueDirect216, align 4, !tbaa !3
  %tobool217.not = icmp eq i32 %85, 0
  br i1 %tobool217.not, label %if.then220, label %for.inc297

if.then220:                                       ; preds = %if.else215
  %type221 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 6
  %86 = load i32* %type221, align 4, !tbaa !3
  %cmp222 = icmp eq i32 %86, 3
  br i1 %cmp222, label %lor.lhs.false, label %if.then247

lor.lhs.false:                                    ; preds = %if.then220
  %current_mb_nr224 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 3
  %87 = load i32* %current_mb_nr224, align 4, !tbaa !3
  %idxprom225 = sext i32 %87 to i64
  %mb_data226 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 51
  %88 = load %struct.macroblock** %mb_data226, align 8, !tbaa !0
  %mb_type228 = getelementptr inbounds %struct.macroblock* %88, i64 %idxprom225, i32 8
  %89 = load i32* %mb_type228, align 4, !tbaa !3
  switch i32 %89, label %if.else249 [
    i32 9, label %if.then247
    i32 10, label %if.then247
    i32 13, label %if.then247
  ]

if.then247:                                       ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %if.then220
  %90 = load i32* %cr_cbp, align 4, !tbaa !3
  %91 = trunc i64 %indvars.iv699 to i32
  %call248 = call i32 @dct_chroma(i32 %91, i32 %90) #7
  br label %if.end251

if.else249:                                       ; preds = %lor.lhs.false
  %92 = load i32* %cr_cbp, align 4, !tbaa !3
  %93 = trunc i64 %indvars.iv699 to i32
  %call250 = call i32 @dct_chroma_sp(i32 %93, i32 %92) #7
  br label %if.end251

if.end251:                                        ; preds = %if.else249, %if.then247
  %storemerge = phi i32 [ %call250, %if.else249 ], [ %call248, %if.then247 ]
  store i32 %storemerge, i32* %cr_cbp, align 4, !tbaa !3
  %94 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag252 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 164
  %95 = load i32* %residue_transform_flag252, align 4, !tbaa !3
  %tobool253 = icmp eq i32 %95, 0
  br i1 %tobool253, label %for.inc297, label %for.cond255.preheader

for.cond255.preheader:                            ; preds = %if.end251
  %mb_cr_size_y256659 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 162
  %96 = load i32* %mb_cr_size_y256659, align 4, !tbaa !3
  %cmp257660 = icmp sgt i32 %96, 0
  br i1 %cmp257660, label %for.cond260.preheader.lr.ph, label %for.inc297

for.cond260.preheader.lr.ph:                      ; preds = %for.cond255.preheader
  %mb_cr_size_x261656 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 161
  %97 = trunc i64 %indvars.iv699 to i32
  %cmp265 = icmp eq i32 %97, 0
  %.pre705 = load i32* %mb_cr_size_x261656, align 4, !tbaa !3
  br label %for.cond260.preheader

for.cond260.preheader:                            ; preds = %for.cond260.preheader.lr.ph, %for.inc291
  %98 = phi i32 [ %96, %for.cond260.preheader.lr.ph ], [ %103, %for.inc291 ]
  %99 = phi i32 [ %.pre705, %for.cond260.preheader.lr.ph ], [ %104, %for.inc291 ]
  %indvars.iv697 = phi i64 [ 0, %for.cond260.preheader.lr.ph ], [ %indvars.iv.next698, %for.inc291 ]
  %cmp262657 = icmp sgt i32 %99, 0
  br i1 %cmp262657, label %for.body264, label %for.inc291

for.body264:                                      ; preds = %for.cond260.preheader, %for.inc288
  %indvars.iv695 = phi i64 [ %indvars.iv.next696, %for.inc288 ], [ 0, %for.cond260.preheader ]
  %arrayidx272 = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 46, i64 %indvars.iv695, i64 %indvars.iv697
  %100 = load i32* %arrayidx272, align 4, !tbaa !3
  br i1 %cmp265, label %if.then267, label %if.else277

if.then267:                                       ; preds = %for.body264
  %arrayidx276 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv695, i64 %indvars.iv697
  store i32 %100, i32* %arrayidx276, align 4, !tbaa !3
  br label %for.inc288

if.else277:                                       ; preds = %for.body264
  %arrayidx286 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv695, i64 %indvars.iv697
  store i32 %100, i32* %arrayidx286, align 4, !tbaa !3
  br label %for.inc288

for.inc288:                                       ; preds = %if.then267, %if.else277
  %indvars.iv.next696 = add i64 %indvars.iv695, 1
  %101 = load i32* %mb_cr_size_x261656, align 4, !tbaa !3
  %102 = trunc i64 %indvars.iv.next696 to i32
  %cmp262 = icmp slt i32 %102, %101
  br i1 %cmp262, label %for.body264, label %for.cond260.for.inc291_crit_edge

for.cond260.for.inc291_crit_edge:                 ; preds = %for.inc288
  %.pre706 = load i32* %mb_cr_size_y256659, align 4, !tbaa !3
  br label %for.inc291

for.inc291:                                       ; preds = %for.cond260.for.inc291_crit_edge, %for.cond260.preheader
  %103 = phi i32 [ %.pre706, %for.cond260.for.inc291_crit_edge ], [ %98, %for.cond260.preheader ]
  %104 = phi i32 [ %101, %for.cond260.for.inc291_crit_edge ], [ %99, %for.cond260.preheader ]
  %indvars.iv.next698 = add i64 %indvars.iv697, 1
  %105 = trunc i64 %indvars.iv.next698 to i32
  %cmp257 = icmp slt i32 %105, %103
  br i1 %cmp257, label %for.cond260.preheader, label %for.inc297

for.inc297:                                       ; preds = %for.cond255.preheader, %for.inc291, %if.else215, %land.lhs.true210, %if.end251, %if.then214
  %indvars.iv.next700 = add i64 %indvars.iv699, 1
  %lftr.wideiv701 = trunc i64 %indvars.iv.next700 to i32
  %exitcond702 = icmp eq i32 %lftr.wideiv701, 2
  br i1 %exitcond702, label %for.end299, label %for.inc297.for.cond5.preheader_crit_edge

for.inc297.for.cond5.preheader_crit_edge:         ; preds = %for.inc297
  %.pre708 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond5.preheader

for.end299:                                       ; preds = %for.inc297
  %106 = load i32* %cr_cbp, align 4, !tbaa !3
  %shl = shl i32 %106, 4
  %107 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr300 = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 3
  %108 = load i32* %current_mb_nr300, align 4, !tbaa !3
  %idxprom301 = sext i32 %108 to i64
  %mb_data302 = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 51
  %109 = load %struct.macroblock** %mb_data302, align 8, !tbaa !0
  %cbp = getelementptr inbounds %struct.macroblock* %109, i64 %idxprom301, i32 12
  %110 = load i32* %cbp, align 4, !tbaa !3
  %add304 = add nsw i32 %110, %shl
  store i32 %add304, i32* %cbp, align 4, !tbaa !3
  %residue_transform_flag305 = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 164
  %111 = load i32* %residue_transform_flag305, align 4, !tbaa !3
  %tobool306 = icmp eq i32 %111, 0
  br i1 %tobool306, label %if.end491, label %for.cond308.preheader

for.cond308.preheader:                            ; preds = %for.end299
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 156
  %112 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %pix_x = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 33
  %113 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 34
  %114 = load i32* %pix_y, align 4, !tbaa !3
  %115 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV382 = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 30
  %116 = load i16**** %imgUV382, align 8, !tbaa !0
  %117 = load i16*** %116, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 155
  %118 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %115, i64 0, i32 25
  %119 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx482 = getelementptr inbounds i16*** %116, i64 1
  %120 = load i16*** %arrayidx482, align 8, !tbaa !0
  %121 = sext i32 %113 to i64
  %122 = sext i32 %114 to i64
  br label %for.cond312.preheader

for.cond312.preheader:                            ; preds = %for.inc488, %for.cond308.preheader
  %indvars.iv667 = phi i64 [ 0, %for.cond308.preheader ], [ %indvars.iv.next668, %for.inc488 ]
  %123 = add nsw i64 %122, %indvars.iv667
  %arrayidx384 = getelementptr inbounds i16** %117, i64 %123
  %124 = load i16** %arrayidx384, align 8, !tbaa !0
  %arrayidx432 = getelementptr inbounds i16** %119, i64 %123
  %125 = load i16** %arrayidx432, align 8, !tbaa !0
  %arrayidx483 = getelementptr inbounds i16** %120, i64 %123
  %126 = load i16** %arrayidx483, align 8, !tbaa !0
  br label %for.body315

for.body315:                                      ; preds = %for.body315, %for.cond312.preheader
  %indvars.iv = phi i64 [ 0, %for.cond312.preheader ], [ %indvars.iv.next, %for.body315 ]
  %arrayidx319 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv, i64 %indvars.iv667
  %127 = load i32* %arrayidx319, align 4, !tbaa !3
  %arrayidx323 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv, i64 %indvars.iv667
  %128 = load i32* %arrayidx323, align 4, !tbaa !3
  %shr324 = ashr i32 %128, 1
  %sub325 = sub nsw i32 %127, %shr324
  %add330 = add nsw i32 %sub325, %128
  %arrayidx334 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv, i64 %indvars.iv667
  %129 = load i32* %arrayidx334, align 4, !tbaa !3
  %shr335 = ashr i32 %129, 1
  %sub336 = sub nsw i32 %sub325, %shr335
  %add341 = add nsw i32 %sub336, %129
  %arrayidx345 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv, i64 %indvars.iv667
  %130 = load i32* %arrayidx345, align 4, !tbaa !3
  %add346 = add nsw i32 %130, %sub336
  %cmp347 = icmp slt i32 %add346, 0
  %.add346 = select i1 %cmp347, i32 0, i32 %add346
  %cmp354 = icmp slt i32 %112, %.add346
  %..add346 = select i1 %cmp354, i32 %112, i32 %.add346
  %conv377 = trunc i32 %..add346 to i16
  %131 = add nsw i64 %121, %indvars.iv
  %arrayidx385 = getelementptr inbounds i16* %124, i64 %131
  store i16 %conv377, i16* %arrayidx385, align 2, !tbaa !4
  %arrayidx389 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv, i64 %indvars.iv667
  %132 = load i32* %arrayidx389, align 4, !tbaa !3
  %add390 = add nsw i32 %add330, %132
  %cmp391 = icmp slt i32 %add390, 0
  %.add390 = select i1 %cmp391, i32 0, i32 %add390
  %cmp402 = icmp slt i32 %118, %.add390
  %cond424 = select i1 %cmp402, i32 %118, i32 %.add390
  %conv425 = trunc i32 %cond424 to i16
  %arrayidx433 = getelementptr inbounds i16* %125, i64 %131
  store i16 %conv425, i16* %arrayidx433, align 2, !tbaa !4
  %arrayidx438 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv, i64 %indvars.iv667
  %133 = load i32* %arrayidx438, align 4, !tbaa !3
  %add439 = add nsw i32 %add341, %133
  %cmp440 = icmp slt i32 %add439, 0
  %.add439 = select i1 %cmp440, i32 0, i32 %add439
  %cmp451 = icmp slt i32 %112, %.add439
  %..add439 = select i1 %cmp451, i32 %112, i32 %.add439
  %conv474 = trunc i32 %..add439 to i16
  %arrayidx484 = getelementptr inbounds i16* %126, i64 %131
  store i16 %conv474, i16* %arrayidx484, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc488, label %for.body315

for.inc488:                                       ; preds = %for.body315
  %indvars.iv.next668 = add i64 %indvars.iv667, 1
  %lftr.wideiv672 = trunc i64 %indvars.iv.next668 to i32
  %exitcond673 = icmp eq i32 %lftr.wideiv672, 16
  br i1 %exitcond673, label %if.end491, label %for.cond312.preheader

if.end491:                                        ; preds = %for.inc488, %for.end299
  ret void
}

; Function Attrs: optsize
declare i32 @dct_chroma_sp(i32, i32) #1

; Function Attrs: optsize
declare i32 @dct_chroma(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @IntraChromaPrediction(i32* %mb_up, i32* %mb_left, i32* %mb_up_left) #0 {
entry:
  %hline = alloca [16 x i32], align 16
  %vline = alloca [16 x i32], align 16
  %diff = alloca [16 x i32], align 16
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %3 = bitcast [16 x i32]* %hline to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #4
  %4 = bitcast [16 x i32]* %vline to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #4
  %5 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #4
  %6 = bitcast [17 x %struct.pix_pos]* %left to i8*
  call void @llvm.lifetime.start(i64 408, i8* %6) #4
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %7 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %8 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %9 = load i32* %yuv_format, align 4, !tbaa !3
  %sub = add nsw i32 %9, -1
  %cmp1208 = icmp sgt i32 %8, -1
  br i1 %cmp1208, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %10 = add i32 %8, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1335 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1336, %for.body ]
  %11 = add nsw i64 %indvars.iv1335, 4294967295
  %arrayidx4 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1335
  %12 = trunc i64 %11 to i32
  call void @getNeighbour(i32 %1, i32 -1, i32 %12, i32 0, %struct.pix_pos* %arrayidx4) #7
  %indvars.iv.next1336 = add i64 %indvars.iv1335, 1
  %lftr.wideiv1338 = trunc i64 %indvars.iv.next1336 to i32
  %exitcond1339 = icmp eq i32 %lftr.wideiv1338, %10
  br i1 %exitcond1339, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @getNeighbour(i32 %1, i32 0, i32 -1, i32 0, %struct.pix_pos* %up) #7
  %available = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0
  %13 = load i32* %available, align 4, !tbaa !3
  %14 = bitcast [17 x %struct.pix_pos]* %left to i64*
  %15 = load i64* %14, align 16
  %16 = trunc i64 %15 to i32
  %available8 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 1, i32 0
  %17 = load i32* %available8, align 8, !tbaa !3
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 24
  %19 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool = icmp eq i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %tobool12 = icmp eq i32 %13, 0
  br i1 %tobool12, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1
  %20 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 54
  %22 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %22, i64 %idxprom13
  %23 = load i32* %arrayidx14, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ 0, %if.then ]
  %div = sdiv i32 %8, 2
  %cmp171203 = icmp sgt i32 %8, 1
  br i1 %cmp171203, label %for.body18.lr.ph, label %for.cond41.preheader

for.body18.lr.ph:                                 ; preds = %cond.end
  %24 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block30 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 54
  br label %for.body18

for.cond41.preheader:                             ; preds = %cond.end33, %cond.end
  %mb_available_left.sroa.0.0.lcssa = phi i32 [ 1, %cond.end ], [ %and, %cond.end33 ]
  %cmp421199 = icmp slt i32 %div, %8
  br i1 %cmp421199, label %for.body43.lr.ph, label %for.end64

for.body43.lr.ph:                                 ; preds = %for.cond41.preheader
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block55 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 54
  %26 = sext i32 %div to i64
  br label %for.body43

for.body18:                                       ; preds = %cond.end33.for.body18_crit_edge, %for.body18.lr.ph
  %indvars.iv1333 = phi i64 [ 1, %for.body18.lr.ph ], [ %phitmp1343, %cond.end33.for.body18_crit_edge ]
  %mb_available_left.sroa.0.01204 = phi i32 [ 1, %for.body18.lr.ph ], [ %and, %cond.end33.for.body18_crit_edge ]
  %available22 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1333, i32 0
  %27 = load i32* %available22, align 8, !tbaa !3
  %tobool23 = icmp eq i32 %27, 0
  br i1 %tobool23, label %cond.end33, label %cond.true24

cond.true24:                                      ; preds = %for.body18
  %mb_addr28 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1333, i32 1
  %28 = load i32* %mb_addr28, align 4, !tbaa !3
  %idxprom29 = sext i32 %28 to i64
  %29 = load i32** %intra_block30, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i32* %29, i64 %idxprom29
  %30 = load i32* %arrayidx31, align 4, !tbaa !3
  br label %cond.end33

cond.end33:                                       ; preds = %for.body18, %cond.true24
  %cond34 = phi i32 [ %30, %cond.true24 ], [ 0, %for.body18 ]
  %and = and i32 %cond34, %mb_available_left.sroa.0.01204
  %31 = trunc i64 %indvars.iv1333 to i32
  %cmp17 = icmp slt i32 %31, %div
  br i1 %cmp17, label %cond.end33.for.body18_crit_edge, label %for.cond41.preheader

cond.end33.for.body18_crit_edge:                  ; preds = %cond.end33
  %phitmp1343 = add i64 %indvars.iv1333, 1
  br label %for.body18

for.body43:                                       ; preds = %for.body43.lr.ph, %cond.end58
  %indvars.iv1331 = phi i64 [ %26, %for.body43.lr.ph ], [ %indvars.iv.next1332, %cond.end58 ]
  %mb_available_left.sroa.1.01200 = phi i32 [ 1, %for.body43.lr.ph ], [ %and61, %cond.end58 ]
  %indvars.iv.next1332 = add i64 %indvars.iv1331, 1
  %available47 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next1332, i32 0
  %32 = load i32* %available47, align 8, !tbaa !3
  %tobool48 = icmp eq i32 %32, 0
  br i1 %tobool48, label %cond.end58, label %cond.true49

cond.true49:                                      ; preds = %for.body43
  %mb_addr53 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next1332, i32 1
  %33 = load i32* %mb_addr53, align 4, !tbaa !3
  %idxprom54 = sext i32 %33 to i64
  %34 = load i32** %intra_block55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i32* %34, i64 %idxprom54
  %35 = load i32* %arrayidx56, align 4, !tbaa !3
  br label %cond.end58

cond.end58:                                       ; preds = %for.body43, %cond.true49
  %cond59 = phi i32 [ %35, %cond.true49 ], [ 0, %for.body43 ]
  %and61 = and i32 %cond59, %mb_available_left.sroa.1.01200
  %36 = trunc i64 %indvars.iv.next1332 to i32
  %cmp42 = icmp slt i32 %36, %8
  br i1 %cmp42, label %for.body43, label %for.end64

for.end64:                                        ; preds = %cond.end58, %for.cond41.preheader
  %mb_available_left.sroa.1.0.lcssa = phi i32 [ 1, %for.cond41.preheader ], [ %and61, %cond.end58 ]
  %tobool67 = icmp eq i32 %16, 0
  br i1 %tobool67, label %if.end, label %cond.true68

cond.true68:                                      ; preds = %for.end64
  %idxprom71 = ashr i64 %15, 32
  %37 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block72 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 54
  %38 = load i32** %intra_block72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32* %38, i64 %idxprom71
  %39 = load i32* %arrayidx73, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.true68, %for.end64, %for.end
  %mb_available_up.0 = phi i32 [ %13, %for.end ], [ %cond, %for.end64 ], [ %cond, %cond.true68 ]
  %mb_available_left.sroa.1.1 = phi i32 [ %17, %for.end ], [ %mb_available_left.sroa.1.0.lcssa, %for.end64 ], [ %mb_available_left.sroa.1.0.lcssa, %cond.true68 ]
  %mb_available_left.sroa.0.1 = phi i32 [ %17, %for.end ], [ %mb_available_left.sroa.0.0.lcssa, %for.end64 ], [ %mb_available_left.sroa.0.0.lcssa, %cond.true68 ]
  %mb_available_up_left.0 = phi i32 [ %16, %for.end ], [ 0, %for.end64 ], [ %39, %cond.true68 ]
  %tobool77 = icmp eq i32* %mb_up, null
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end
  store i32 %mb_available_up.0, i32* %mb_up, align 4, !tbaa !3
  br label %if.end79

if.end79:                                         ; preds = %if.end, %if.then78
  %tobool80 = icmp eq i32* %mb_left, null
  br i1 %tobool80, label %if.end86, label %if.then81

if.then81:                                        ; preds = %if.end79
  %tobool85 = icmp ne i32 %mb_available_left.sroa.1.1, 0
  %not.tobool83 = icmp ne i32 %mb_available_left.sroa.0.1, 0
  %.tobool85 = and i1 %tobool85, %not.tobool83
  %land.ext = zext i1 %.tobool85 to i32
  store i32 %land.ext, i32* %mb_left, align 4, !tbaa !3
  br label %if.end86

if.end86:                                         ; preds = %if.end79, %if.then81
  %tobool87 = icmp eq i32* %mb_up_left, null
  br i1 %tobool87, label %for.cond90.preheader, label %if.then88

if.then88:                                        ; preds = %if.end86
  store i32 %mb_available_up_left.0, i32* %mb_up_left, align 4, !tbaa !3
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %if.end86, %if.then88
  %tobool396 = icmp ne i32 %mb_available_up.0, 0
  %tobool442.not = icmp eq i32 %mb_available_left.sroa.0.1, 0
  %tobool445 = icmp eq i32 %mb_available_left.sroa.1.1, 0
  %or.cond = or i1 %tobool442.not, %tobool445
  %cmp4481180 = icmp sgt i32 %8, 0
  %cmp4701184 = icmp sgt i32 %7, 0
  %tobool396.not = xor i1 %tobool396, true
  %brmerge1104 = or i1 %or.cond, %tobool396.not
  %tobool503 = icmp eq i32 %mb_available_up_left.0, 0
  %or.cond1105 = or i1 %brmerge1104, %tobool503
  %div505 = sdiv i32 %7, 2
  %sub506 = add nsw i32 %7, -1
  %idxprom507 = sext i32 %sub506 to i64
  %arrayidx508 = getelementptr inbounds [16 x i32]* %hline, i64 0, i64 %idxprom507
  %pos_x510 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 4
  %sub521 = add i32 %div505, -1
  %cmp5221186 = icmp sgt i32 %sub521, 0
  %div541 = sdiv i32 %8, 2
  %sub542 = add nsw i32 %8, -1
  %idxprom543 = sext i32 %sub542 to i64
  %arrayidx544 = getelementptr inbounds [16 x i32]* %vline, i64 0, i64 %idxprom543
  %sub558 = add i32 %div541, -1
  %cmp5591190 = icmp sgt i32 %sub558, 0
  %cmp578 = icmp eq i32 %7, 8
  %cond580 = select i1 %cmp578, i32 17, i32 5
  %mul582 = shl i32 %7, 1
  %cond586 = select i1 %cmp578, i32 5, i32 6
  %cmp588 = icmp eq i32 %8, 8
  %cond590 = select i1 %cmp588, i32 17, i32 5
  %mul592 = shl i32 %8, 1
  %cond596 = select i1 %cmp588, i32 5, i32 6
  %sub615 = sub i32 1, %div505
  %sub620 = sub i32 1, %div541
  %sub568 = add nsw i32 %div541, -2
  %sub531 = add nsw i32 %div505, -2
  %pos_x402 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 4
  %pos_y405 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 5
  %idxprom104 = sext i32 %sub to i64
  %tobool141 = icmp ne i32 %mb_available_left.sroa.0.1, 0
  %brmerge.demorgan = and i1 %tobool396, %tobool141
  %tobool243 = icmp ne i32 %mb_available_left.sroa.1.1, 0
  %tobool293 = icmp eq i32 %mb_available_up.0, 0
  %brmerge1101.demorgan = and i1 %tobool396, %tobool243
  %40 = sext i32 %div505 to i64
  %41 = sext i32 %div541 to i64
  %.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre, i64 0, i32 30
  %.pre1340 = load i16**** %imgUV.phi.trans.insert, align 8, !tbaa !0
  %.pre1341 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body92

for.body92:                                       ; preds = %for.inc699, %for.cond90.preheader
  %indvars.iv1327 = phi i64 [ 0, %for.cond90.preheader ], [ %indvars.iv.next1328, %for.inc699 ]
  %arrayidx94 = getelementptr inbounds i16*** %.pre1340, i64 %indvars.iv1327
  %42 = load i16*** %arrayidx94, align 8, !tbaa !0
  %num_blk8x8_uv1170 = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 157
  %43 = load i32* %num_blk8x8_uv1170, align 4, !tbaa !3
  %cmp971172 = icmp sgt i32 %43, 1
  br i1 %cmp971172, label %for.cond99.preheader, label %for.end395

for.cond99.preheader:                             ; preds = %for.body92, %for.inc393
  %indvars.iv1282 = phi i64 [ %indvars.iv.next1283, %for.inc393 ], [ 0, %for.body92 ]
  br label %for.body101

for.body101:                                      ; preds = %for.inc390, %for.cond99.preheader
  %indvars.iv1278 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next1279, %for.inc390 ]
  %arrayidx107 = getelementptr inbounds [3 x [8 x [4 x i8]]]* @subblk_offset_y, i64 0, i64 %idxprom104, i64 %indvars.iv1282, i64 %indvars.iv1278
  %44 = load i8* %arrayidx107, align 1, !tbaa !1
  %conv = zext i8 %44 to i32
  %arrayidx113 = getelementptr inbounds [3 x [8 x [4 x i8]]]* @subblk_offset_x, i64 0, i64 %idxprom104, i64 %indvars.iv1282, i64 %indvars.iv1278
  %45 = load i8* %arrayidx113, align 1, !tbaa !1
  %conv114 = zext i8 %45 to i32
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 154
  %46 = load i32* %dc_pred_value, align 4, !tbaa !3
  %arrayidx121 = getelementptr inbounds [3 x [4 x [4 x i32]]]* @IntraChromaPrediction.block_pos, i64 0, i64 %idxprom104, i64 %indvars.iv1282, i64 %indvars.iv1278
  %47 = load i32* %arrayidx121, align 4, !tbaa !3
  switch i32 %47, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb183
    i32 2, label %sw.bb241
    i32 3, label %sw.bb299
  ]

sw.bb:                                            ; preds = %for.body101
  br i1 %tobool396, label %for.cond124.preheader, label %if.end139

for.cond124.preheader:                            ; preds = %sw.bb
  %48 = load i32* %pos_x402, align 4, !tbaa !3
  %49 = load i32* %pos_y405, align 4, !tbaa !3
  %idxprom131 = sext i32 %49 to i64
  %arrayidx132 = getelementptr inbounds i16** %42, i64 %idxprom131
  %50 = load i16** %arrayidx132, align 8, !tbaa !0
  %51 = zext i8 %45 to i64
  %52 = sext i32 %48 to i64
  br label %for.body128

for.body128:                                      ; preds = %for.cond124.preheader, %for.body128
  %indvars.iv1265 = phi i64 [ %51, %for.cond124.preheader ], [ %indvars.iv.next1266, %for.body128 ]
  %s0.01164 = phi i32 [ 0, %for.cond124.preheader ], [ %add135, %for.body128 ]
  %53 = add nsw i64 %52, %indvars.iv1265
  %arrayidx133 = getelementptr inbounds i16* %50, i64 %53
  %54 = load i16* %arrayidx133, align 2, !tbaa !4
  %conv134 = zext i16 %54 to i32
  %add135 = add nsw i32 %conv134, %s0.01164
  %55 = add nsw i32 %conv114, 3
  %56 = trunc i64 %indvars.iv1265 to i32
  %cmp126 = icmp slt i32 %56, %55
  %indvars.iv.next1266 = add i64 %indvars.iv1265, 1
  br i1 %cmp126, label %for.body128, label %if.end139

if.end139:                                        ; preds = %for.body128, %sw.bb
  %s0.1 = phi i32 [ 0, %sw.bb ], [ %add135, %for.body128 ]
  br i1 %tobool141, label %for.cond143.preheader, label %if.else

for.cond143.preheader:                            ; preds = %if.end139
  %57 = add i32 %conv, 1
  %58 = zext i32 %57 to i64
  br label %for.body147

for.body147:                                      ; preds = %for.cond143.preheader, %for.body147
  %indvars.iv1269 = phi i64 [ %58, %for.cond143.preheader ], [ %indvars.iv.next1270, %for.body147 ]
  %s2.01166 = phi i32 [ 0, %for.cond143.preheader ], [ %add159, %for.body147 ]
  %pos_x150 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1269, i32 4
  %59 = load i32* %pos_x150, align 8, !tbaa !3
  %idxprom151 = sext i32 %59 to i64
  %pos_y154 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1269, i32 5
  %60 = load i32* %pos_y154, align 4, !tbaa !3
  %idxprom155 = sext i32 %60 to i64
  %arrayidx156 = getelementptr inbounds i16** %42, i64 %idxprom155
  %61 = load i16** %arrayidx156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i16* %61, i64 %idxprom151
  %62 = load i16* %arrayidx157, align 2, !tbaa !4
  %conv158 = zext i16 %62 to i32
  %add159 = add nsw i32 %conv158, %s2.01166
  %63 = add nsw i32 %conv, 4
  %64 = trunc i64 %indvars.iv1269 to i32
  %cmp145 = icmp slt i32 %64, %63
  %indvars.iv.next1270 = add i64 %indvars.iv1269, 1
  br i1 %cmp145, label %for.body147, label %if.end163

if.end163:                                        ; preds = %for.body147
  br i1 %brmerge.demorgan, label %if.then167, label %if.else

if.then167:                                       ; preds = %if.end163
  %add168 = add i32 %s0.1, 4
  %add169 = add i32 %add168, %add159
  %shr = ashr i32 %add169, 3
  br label %sw.epilog

if.else:                                          ; preds = %if.end163, %if.end139
  %s2.11116 = phi i32 [ %add159, %if.end163 ], [ 0, %if.end139 ]
  br i1 %tobool396, label %if.then171, label %if.else174

if.then171:                                       ; preds = %if.else
  %add172 = add nsw i32 %s0.1, 2
  %shr173 = ashr i32 %add172, 2
  br label %sw.epilog

if.else174:                                       ; preds = %if.else
  br i1 %tobool141, label %if.then177, label %sw.epilog

if.then177:                                       ; preds = %if.else174
  %add178 = add nsw i32 %s2.11116, 2
  %shr179 = ashr i32 %add178, 2
  br label %sw.epilog

sw.bb183:                                         ; preds = %for.body101
  br i1 %tobool396, label %for.cond186.preheader, label %if.else203

for.cond186.preheader:                            ; preds = %sw.bb183
  %65 = load i32* %pos_x402, align 4, !tbaa !3
  %66 = load i32* %pos_y405, align 4, !tbaa !3
  %idxprom195 = sext i32 %66 to i64
  %arrayidx196 = getelementptr inbounds i16** %42, i64 %idxprom195
  %67 = load i16** %arrayidx196, align 8, !tbaa !0
  %68 = zext i8 %45 to i64
  %69 = sext i32 %65 to i64
  br label %for.body190

for.body190:                                      ; preds = %for.cond186.preheader, %for.body190
  %indvars.iv1261 = phi i64 [ %68, %for.cond186.preheader ], [ %indvars.iv.next1262, %for.body190 ]
  %s1.01162 = phi i32 [ 0, %for.cond186.preheader ], [ %add199, %for.body190 ]
  %70 = add nsw i64 %69, %indvars.iv1261
  %arrayidx197 = getelementptr inbounds i16* %67, i64 %70
  %71 = load i16* %arrayidx197, align 2, !tbaa !4
  %conv198 = zext i16 %71 to i32
  %add199 = add nsw i32 %conv198, %s1.01162
  %72 = add nsw i32 %conv114, 3
  %73 = trunc i64 %indvars.iv1261 to i32
  %cmp188 = icmp slt i32 %73, %72
  %indvars.iv.next1262 = add i64 %indvars.iv1261, 1
  br i1 %cmp188, label %for.body190, label %if.end228.loopexit1160

if.else203:                                       ; preds = %sw.bb183
  br i1 %tobool442.not, label %sw.epilog, label %for.cond207.preheader

for.cond207.preheader:                            ; preds = %if.else203
  %74 = add i32 %conv, 1
  %75 = zext i32 %74 to i64
  br label %for.body211

for.body211:                                      ; preds = %for.cond207.preheader, %for.body211
  %indvars.iv1258 = phi i64 [ %75, %for.cond207.preheader ], [ %indvars.iv.next1259, %for.body211 ]
  %s2.21159 = phi i32 [ 0, %for.cond207.preheader ], [ %add223, %for.body211 ]
  %pos_x214 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1258, i32 4
  %76 = load i32* %pos_x214, align 8, !tbaa !3
  %idxprom215 = sext i32 %76 to i64
  %pos_y218 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1258, i32 5
  %77 = load i32* %pos_y218, align 4, !tbaa !3
  %idxprom219 = sext i32 %77 to i64
  %arrayidx220 = getelementptr inbounds i16** %42, i64 %idxprom219
  %78 = load i16** %arrayidx220, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i16* %78, i64 %idxprom215
  %79 = load i16* %arrayidx221, align 2, !tbaa !4
  %conv222 = zext i16 %79 to i32
  %add223 = add nsw i32 %conv222, %s2.21159
  %80 = add nsw i32 %conv, 4
  %81 = trunc i64 %indvars.iv1258 to i32
  %cmp209 = icmp slt i32 %81, %80
  %indvars.iv.next1259 = add i64 %indvars.iv1258, 1
  br i1 %cmp209, label %for.body211, label %if.end228.loopexit

if.end228.loopexit:                               ; preds = %for.body211
  %phitmp1211 = add i32 %add223, 2
  %phitmp1212 = ashr i32 %phitmp1211, 2
  br label %if.end228

if.end228.loopexit1160:                           ; preds = %for.body190
  %phitmp1215 = add i32 %add199, 2
  %phitmp1216 = ashr i32 %phitmp1215, 2
  br label %if.end228

if.end228:                                        ; preds = %if.end228.loopexit1160, %if.end228.loopexit
  %s2.3 = phi i32 [ %phitmp1212, %if.end228.loopexit ], [ 0, %if.end228.loopexit1160 ]
  %s1.1 = phi i32 [ 0, %if.end228.loopexit ], [ %phitmp1216, %if.end228.loopexit1160 ]
  br i1 %tobool396, label %sw.epilog, label %if.else233

if.else233:                                       ; preds = %if.end228
  %.s2.3 = select i1 %tobool442.not, i32 %46, i32 %s2.3
  br label %sw.epilog

sw.bb241:                                         ; preds = %for.body101
  br i1 %tobool243, label %for.cond245.preheader, label %if.else265

for.cond245.preheader:                            ; preds = %sw.bb241
  %82 = add i32 %conv, 1
  %83 = zext i32 %82 to i64
  br label %for.body249

for.body249:                                      ; preds = %for.cond245.preheader, %for.body249
  %indvars.iv1255 = phi i64 [ %83, %for.cond245.preheader ], [ %indvars.iv.next1256, %for.body249 ]
  %s3.01157 = phi i32 [ 0, %for.cond245.preheader ], [ %add261, %for.body249 ]
  %pos_x252 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1255, i32 4
  %84 = load i32* %pos_x252, align 8, !tbaa !3
  %idxprom253 = sext i32 %84 to i64
  %pos_y256 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1255, i32 5
  %85 = load i32* %pos_y256, align 4, !tbaa !3
  %idxprom257 = sext i32 %85 to i64
  %arrayidx258 = getelementptr inbounds i16** %42, i64 %idxprom257
  %86 = load i16** %arrayidx258, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i16* %86, i64 %idxprom253
  %87 = load i16* %arrayidx259, align 2, !tbaa !4
  %conv260 = zext i16 %87 to i32
  %add261 = add nsw i32 %conv260, %s3.01157
  %88 = add nsw i32 %conv, 4
  %89 = trunc i64 %indvars.iv1255 to i32
  %cmp247 = icmp slt i32 %89, %88
  %indvars.iv.next1256 = add i64 %indvars.iv1255, 1
  br i1 %cmp247, label %for.body249, label %if.end286.loopexit1155

if.else265:                                       ; preds = %sw.bb241
  br i1 %tobool293, label %sw.epilog, label %for.cond268.preheader

for.cond268.preheader:                            ; preds = %if.else265
  %90 = load i32* %pos_x402, align 4, !tbaa !3
  %91 = load i32* %pos_y405, align 4, !tbaa !3
  %idxprom277 = sext i32 %91 to i64
  %arrayidx278 = getelementptr inbounds i16** %42, i64 %idxprom277
  %92 = load i16** %arrayidx278, align 8, !tbaa !0
  %93 = zext i8 %45 to i64
  %94 = sext i32 %90 to i64
  br label %for.body272

for.body272:                                      ; preds = %for.cond268.preheader, %for.body272
  %indvars.iv1251 = phi i64 [ %93, %for.cond268.preheader ], [ %indvars.iv.next1252, %for.body272 ]
  %s0.21154 = phi i32 [ 0, %for.cond268.preheader ], [ %add281, %for.body272 ]
  %95 = add nsw i64 %94, %indvars.iv1251
  %arrayidx279 = getelementptr inbounds i16* %92, i64 %95
  %96 = load i16* %arrayidx279, align 2, !tbaa !4
  %conv280 = zext i16 %96 to i32
  %add281 = add nsw i32 %conv280, %s0.21154
  %97 = add nsw i32 %conv114, 3
  %98 = trunc i64 %indvars.iv1251 to i32
  %cmp270 = icmp slt i32 %98, %97
  %indvars.iv.next1252 = add i64 %indvars.iv1251, 1
  br i1 %cmp270, label %for.body272, label %if.end286.loopexit

if.end286.loopexit:                               ; preds = %for.body272
  %phitmp = add i32 %add281, 2
  %phitmp1210 = ashr i32 %phitmp, 2
  br label %if.end286

if.end286.loopexit1155:                           ; preds = %for.body249
  %phitmp1213 = add i32 %add261, 2
  %phitmp1214 = ashr i32 %phitmp1213, 2
  br label %if.end286

if.end286:                                        ; preds = %if.end286.loopexit1155, %if.end286.loopexit
  %s3.1 = phi i32 [ 0, %if.end286.loopexit ], [ %phitmp1214, %if.end286.loopexit1155 ]
  %s0.3 = phi i32 [ %phitmp1210, %if.end286.loopexit ], [ 0, %if.end286.loopexit1155 ]
  br i1 %tobool243, label %sw.epilog, label %if.else292

if.else292:                                       ; preds = %if.end286
  %.s0.3 = select i1 %tobool293, i32 %46, i32 %s0.3
  br label %sw.epilog

sw.bb299:                                         ; preds = %for.body101
  br i1 %tobool396, label %for.cond302.preheader, label %if.end319

for.cond302.preheader:                            ; preds = %sw.bb299
  %99 = load i32* %pos_x402, align 4, !tbaa !3
  %100 = load i32* %pos_y405, align 4, !tbaa !3
  %idxprom311 = sext i32 %100 to i64
  %arrayidx312 = getelementptr inbounds i16** %42, i64 %idxprom311
  %101 = load i16** %arrayidx312, align 8, !tbaa !0
  %102 = zext i8 %45 to i64
  %103 = sext i32 %99 to i64
  br label %for.body306

for.body306:                                      ; preds = %for.cond302.preheader, %for.body306
  %indvars.iv1244 = phi i64 [ %102, %for.cond302.preheader ], [ %indvars.iv.next1245, %for.body306 ]
  %s1.21150 = phi i32 [ 0, %for.cond302.preheader ], [ %add315, %for.body306 ]
  %104 = add nsw i64 %103, %indvars.iv1244
  %arrayidx313 = getelementptr inbounds i16* %101, i64 %104
  %105 = load i16* %arrayidx313, align 2, !tbaa !4
  %conv314 = zext i16 %105 to i32
  %add315 = add nsw i32 %conv314, %s1.21150
  %106 = add nsw i32 %conv114, 3
  %107 = trunc i64 %indvars.iv1244 to i32
  %cmp304 = icmp slt i32 %107, %106
  %indvars.iv.next1245 = add i64 %indvars.iv1244, 1
  br i1 %cmp304, label %for.body306, label %if.end319

if.end319:                                        ; preds = %for.body306, %sw.bb299
  %s1.3 = phi i32 [ 0, %sw.bb299 ], [ %add315, %for.body306 ]
  br i1 %tobool243, label %for.cond323.preheader, label %if.else352

for.cond323.preheader:                            ; preds = %if.end319
  %108 = add i32 %conv, 1
  %109 = zext i32 %108 to i64
  br label %for.body327

for.body327:                                      ; preds = %for.cond323.preheader, %for.body327
  %indvars.iv1248 = phi i64 [ %109, %for.cond323.preheader ], [ %indvars.iv.next1249, %for.body327 ]
  %s3.21152 = phi i32 [ 0, %for.cond323.preheader ], [ %add339, %for.body327 ]
  %pos_x330 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1248, i32 4
  %110 = load i32* %pos_x330, align 8, !tbaa !3
  %idxprom331 = sext i32 %110 to i64
  %pos_y334 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1248, i32 5
  %111 = load i32* %pos_y334, align 4, !tbaa !3
  %idxprom335 = sext i32 %111 to i64
  %arrayidx336 = getelementptr inbounds i16** %42, i64 %idxprom335
  %112 = load i16** %arrayidx336, align 8, !tbaa !0
  %arrayidx337 = getelementptr inbounds i16* %112, i64 %idxprom331
  %113 = load i16* %arrayidx337, align 2, !tbaa !4
  %conv338 = zext i16 %113 to i32
  %add339 = add nsw i32 %conv338, %s3.21152
  %114 = add nsw i32 %conv, 4
  %115 = trunc i64 %indvars.iv1248 to i32
  %cmp325 = icmp slt i32 %115, %114
  %indvars.iv.next1249 = add i64 %indvars.iv1248, 1
  br i1 %cmp325, label %for.body327, label %if.end343

if.end343:                                        ; preds = %for.body327
  br i1 %brmerge1101.demorgan, label %if.then348, label %if.else352

if.then348:                                       ; preds = %if.end343
  %add349 = add i32 %s1.3, 4
  %add350 = add i32 %add349, %add339
  %shr351 = ashr i32 %add350, 3
  br label %sw.epilog

if.else352:                                       ; preds = %if.end343, %if.end319
  %s3.31124 = phi i32 [ %add339, %if.end343 ], [ 0, %if.end319 ]
  br i1 %tobool396, label %if.then354, label %if.else357

if.then354:                                       ; preds = %if.else352
  %add355 = add nsw i32 %s1.3, 2
  %shr356 = ashr i32 %add355, 2
  br label %sw.epilog

if.else357:                                       ; preds = %if.else352
  br i1 %tobool243, label %if.then360, label %sw.epilog

if.then360:                                       ; preds = %if.else357
  %add361 = add nsw i32 %s3.31124, 2
  %shr362 = ashr i32 %add361, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else292, %if.else233, %if.end286, %if.end228, %if.else265, %if.else203, %if.then348, %if.else357, %if.then360, %if.then354, %if.then167, %if.else174, %if.then177, %if.then171, %for.body101
  %s.0 = phi i32 [ %46, %for.body101 ], [ %shr351, %if.then348 ], [ %shr356, %if.then354 ], [ %shr362, %if.then360 ], [ %46, %if.else357 ], [ %shr, %if.then167 ], [ %shr173, %if.then171 ], [ %shr179, %if.then177 ], [ %46, %if.else174 ], [ %46, %if.else203 ], [ %46, %if.else265 ], [ %s1.1, %if.end228 ], [ %s3.1, %if.end286 ], [ %.s2.3, %if.else233 ], [ %.s0.3, %if.else292 ]
  %conv376 = trunc i32 %s.0 to i16
  %116 = zext i8 %45 to i64
  %117 = zext i8 %44 to i64
  br label %for.cond371.preheader

for.cond371.preheader:                            ; preds = %sw.epilog, %for.inc387
  %indvars.iv1275 = phi i64 [ %117, %sw.epilog ], [ %indvars.iv.next1276, %for.inc387 ]
  br label %for.body375

for.body375:                                      ; preds = %for.cond371.preheader, %for.body375
  %indvars.iv1272 = phi i64 [ %116, %for.cond371.preheader ], [ %indvars.iv.next1273, %for.body375 ]
  %arrayidx383 = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 44, i64 %indvars.iv1327, i64 0, i64 %indvars.iv1272, i64 %indvars.iv1275
  store i16 %conv376, i16* %arrayidx383, align 2, !tbaa !4
  %118 = add nsw i32 %conv114, 3
  %119 = trunc i64 %indvars.iv1272 to i32
  %cmp373 = icmp slt i32 %119, %118
  %indvars.iv.next1273 = add i64 %indvars.iv1272, 1
  br i1 %cmp373, label %for.body375, label %for.inc387

for.inc387:                                       ; preds = %for.body375
  %120 = add nsw i32 %conv, 3
  %121 = trunc i64 %indvars.iv1275 to i32
  %cmp368 = icmp slt i32 %121, %120
  %indvars.iv.next1276 = add i64 %indvars.iv1275, 1
  br i1 %cmp368, label %for.cond371.preheader, label %for.inc390

for.inc390:                                       ; preds = %for.inc387
  %indvars.iv.next1279 = add i64 %indvars.iv1278, 1
  %lftr.wideiv1280 = trunc i64 %indvars.iv.next1279 to i32
  %exitcond1281 = icmp eq i32 %lftr.wideiv1280, 4
  br i1 %exitcond1281, label %for.inc393, label %for.body101

for.inc393:                                       ; preds = %for.inc390
  %indvars.iv.next1283 = add i64 %indvars.iv1282, 1
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 157
  %122 = load i32* %num_blk8x8_uv, align 4, !tbaa !3
  %div96 = sdiv i32 %122, 2
  %123 = trunc i64 %indvars.iv.next1283 to i32
  %cmp97 = icmp slt i32 %123, %div96
  br i1 %cmp97, label %for.cond99.preheader, label %for.end395

for.end395:                                       ; preds = %for.inc393, %for.body92
  %brmerge.demorgan1346 = and i1 %tobool396, %cmp4701184
  br i1 %brmerge.demorgan1346, label %for.body401.lr.ph, label %if.end440

for.body401.lr.ph:                                ; preds = %for.end395
  %124 = load i32* %pos_x402, align 4, !tbaa !3
  %125 = load i32* %pos_y405, align 4, !tbaa !3
  %idxprom406 = sext i32 %125 to i64
  %arrayidx407 = getelementptr inbounds i16** %42, i64 %idxprom406
  %126 = load i16** %arrayidx407, align 8, !tbaa !0
  %127 = sext i32 %124 to i64
  br label %for.body401

for.body401:                                      ; preds = %for.body401, %for.body401.lr.ph
  %indvars.iv1284 = phi i64 [ 0, %for.body401.lr.ph ], [ %indvars.iv.next1285, %for.body401 ]
  %128 = add nsw i64 %127, %indvars.iv1284
  %arrayidx408 = getelementptr inbounds i16* %126, i64 %128
  %129 = load i16* %arrayidx408, align 2, !tbaa !4
  %conv409 = zext i16 %129 to i32
  %arrayidx411 = getelementptr inbounds [16 x i32]* %hline, i64 0, i64 %indvars.iv1284
  store i32 %conv409, i32* %arrayidx411, align 4, !tbaa !3
  %indvars.iv.next1285 = add i64 %indvars.iv1284, 1
  %lftr.wideiv1287 = trunc i64 %indvars.iv.next1285 to i32
  %exitcond1288 = icmp eq i32 %lftr.wideiv1287, %7
  br i1 %exitcond1288, label %for.cond415.loopexit, label %for.body401

for.cond415.loopexit:                             ; preds = %for.body401
  br i1 %cmp4701184, label %for.cond419.preheader, label %if.end440

for.cond419.preheader:                            ; preds = %for.cond415.loopexit, %for.inc437
  %indvars.iv1293 = phi i64 [ %indvars.iv.next1294, %for.inc437 ], [ 0, %for.cond415.loopexit ]
  br i1 %cmp4481180, label %for.body422.lr.ph, label %for.inc437

for.body422.lr.ph:                                ; preds = %for.cond419.preheader
  %arrayidx424 = getelementptr inbounds [16 x i32]* %hline, i64 0, i64 %indvars.iv1293
  %130 = load i32* %arrayidx424, align 4, !tbaa !3
  %conv425 = trunc i32 %130 to i16
  br label %for.body422

for.body422:                                      ; preds = %for.body422, %for.body422.lr.ph
  %indvars.iv1289 = phi i64 [ 0, %for.body422.lr.ph ], [ %indvars.iv.next1290, %for.body422 ]
  %arrayidx433 = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 44, i64 %indvars.iv1327, i64 2, i64 %indvars.iv1293, i64 %indvars.iv1289
  store i16 %conv425, i16* %arrayidx433, align 2, !tbaa !4
  %indvars.iv.next1290 = add i64 %indvars.iv1289, 1
  %lftr.wideiv1291 = trunc i64 %indvars.iv.next1290 to i32
  %exitcond1292 = icmp eq i32 %lftr.wideiv1291, %8
  br i1 %exitcond1292, label %for.inc437, label %for.body422

for.inc437:                                       ; preds = %for.body422, %for.cond419.preheader
  %indvars.iv.next1294 = add i64 %indvars.iv1293, 1
  %lftr.wideiv1295 = trunc i64 %indvars.iv.next1294 to i32
  %exitcond1296 = icmp eq i32 %lftr.wideiv1295, %7
  br i1 %exitcond1296, label %if.end440, label %for.cond419.preheader

if.end440:                                        ; preds = %for.end395, %for.cond415.loopexit, %for.inc437
  br i1 %or.cond, label %for.inc699, label %for.cond447.preheader

for.cond447.preheader:                            ; preds = %if.end440
  br i1 %cmp4481180, label %for.body450, label %for.cond469.loopexit

for.body450:                                      ; preds = %for.cond447.preheader, %for.body450
  %indvars.iv1297 = phi i64 [ %indvars.iv.next1298, %for.body450 ], [ 0, %for.cond447.preheader ]
  %indvars.iv.next1298 = add i64 %indvars.iv1297, 1
  %pos_x454 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next1298, i32 4
  %131 = load i32* %pos_x454, align 8, !tbaa !3
  %idxprom455 = sext i32 %131 to i64
  %pos_y459 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv.next1298, i32 5
  %132 = load i32* %pos_y459, align 4, !tbaa !3
  %idxprom460 = sext i32 %132 to i64
  %arrayidx461 = getelementptr inbounds i16** %42, i64 %idxprom460
  %133 = load i16** %arrayidx461, align 8, !tbaa !0
  %arrayidx462 = getelementptr inbounds i16* %133, i64 %idxprom455
  %134 = load i16* %arrayidx462, align 2, !tbaa !4
  %conv463 = zext i16 %134 to i32
  %arrayidx465 = getelementptr inbounds [16 x i32]* %vline, i64 0, i64 %indvars.iv1297
  store i32 %conv463, i32* %arrayidx465, align 4, !tbaa !3
  %lftr.wideiv1299 = trunc i64 %indvars.iv.next1298 to i32
  %exitcond1300 = icmp eq i32 %lftr.wideiv1299, %8
  br i1 %exitcond1300, label %for.cond469.loopexit, label %for.body450

for.cond469.loopexit:                             ; preds = %for.body450, %for.cond447.preheader
  br i1 %cmp4701184, label %for.cond473.preheader, label %if.end494

for.cond473.preheader:                            ; preds = %for.cond469.loopexit, %for.inc491
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306, %for.inc491 ], [ 0, %for.cond469.loopexit ]
  br i1 %cmp4481180, label %for.body476, label %for.inc491

for.body476:                                      ; preds = %for.cond473.preheader, %for.body476
  %indvars.iv1301 = phi i64 [ %indvars.iv.next1302, %for.body476 ], [ 0, %for.cond473.preheader ]
  %arrayidx478 = getelementptr inbounds [16 x i32]* %vline, i64 0, i64 %indvars.iv1301
  %135 = load i32* %arrayidx478, align 4, !tbaa !3
  %conv479 = trunc i32 %135 to i16
  %arrayidx487 = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 44, i64 %indvars.iv1327, i64 1, i64 %indvars.iv1305, i64 %indvars.iv1301
  store i16 %conv479, i16* %arrayidx487, align 2, !tbaa !4
  %indvars.iv.next1302 = add i64 %indvars.iv1301, 1
  %lftr.wideiv1303 = trunc i64 %indvars.iv.next1302 to i32
  %exitcond1304 = icmp eq i32 %lftr.wideiv1303, %8
  br i1 %exitcond1304, label %for.inc491, label %for.body476

for.inc491:                                       ; preds = %for.body476, %for.cond473.preheader
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 1
  %lftr.wideiv1307 = trunc i64 %indvars.iv.next1306 to i32
  %exitcond1308 = icmp eq i32 %lftr.wideiv1307, %7
  br i1 %exitcond1308, label %if.end494, label %for.cond473.preheader

if.end494:                                        ; preds = %for.inc491, %for.cond469.loopexit
  br i1 %or.cond1105, label %for.inc699, label %if.then504

if.then504:                                       ; preds = %if.end494
  %136 = load i32* %arrayidx508, align 4, !tbaa !3
  %137 = bitcast i32* %pos_x510 to i64*
  %138 = load i64* %137, align 16
  %sext = shl i64 %138, 32
  %idxprom511 = ashr exact i64 %sext, 32
  %idxprom514 = ashr i64 %138, 32
  %arrayidx515 = getelementptr inbounds i16** %42, i64 %idxprom514
  %139 = load i16** %arrayidx515, align 8, !tbaa !0
  %arrayidx516 = getelementptr inbounds i16* %139, i64 %idxprom511
  %140 = load i16* %arrayidx516, align 2, !tbaa !4
  %conv517 = zext i16 %140 to i32
  %sub518 = sub nsw i32 %136, %conv517
  %mul = mul nsw i32 %sub518, %div505
  br i1 %cmp5221186, label %for.body524, label %for.end540

for.body524:                                      ; preds = %if.then504, %for.body524
  %indvars.iv1309 = phi i64 [ %indvars.iv.next1310, %for.body524 ], [ 0, %if.then504 ]
  %ih.01187 = phi i32 [ %add537, %for.body524 ], [ %mul, %if.then504 ]
  %indvars.iv.next1310 = add i64 %indvars.iv1309, 1
  %141 = add nsw i64 %indvars.iv1309, %40
  %arrayidx529 = getelementptr inbounds [16 x i32]* %hline, i64 0, i64 %141
  %142 = load i32* %arrayidx529, align 4, !tbaa !3
  %143 = trunc i64 %indvars.iv1309 to i32
  %sub532 = sub i32 %sub531, %143
  %idxprom533 = sext i32 %sub532 to i64
  %arrayidx534 = getelementptr inbounds [16 x i32]* %hline, i64 0, i64 %idxprom533
  %144 = load i32* %arrayidx534, align 4, !tbaa !3
  %sub535 = sub nsw i32 %142, %144
  %145 = trunc i64 %indvars.iv.next1310 to i32
  %mul536 = mul nsw i32 %sub535, %145
  %add537 = add nsw i32 %mul536, %ih.01187
  %exitcond1313 = icmp eq i32 %145, %sub521
  br i1 %exitcond1313, label %for.end540, label %for.body524

for.end540:                                       ; preds = %for.body524, %if.then504
  %ih.0.lcssa = phi i32 [ %mul, %if.then504 ], [ %add537, %for.body524 ]
  %146 = load i32* %arrayidx544, align 4, !tbaa !3
  %sub554 = sub nsw i32 %146, %conv517
  %mul555 = mul nsw i32 %sub554, %div541
  br i1 %cmp5591190, label %for.body561, label %for.end577

for.body561:                                      ; preds = %for.end540, %for.body561
  %indvars.iv1314 = phi i64 [ %indvars.iv.next1315, %for.body561 ], [ 0, %for.end540 ]
  %iv.01191 = phi i32 [ %add574, %for.body561 ], [ %mul555, %for.end540 ]
  %indvars.iv.next1315 = add i64 %indvars.iv1314, 1
  %147 = add nsw i64 %indvars.iv1314, %41
  %arrayidx566 = getelementptr inbounds [16 x i32]* %vline, i64 0, i64 %147
  %148 = load i32* %arrayidx566, align 4, !tbaa !3
  %149 = trunc i64 %indvars.iv1314 to i32
  %sub569 = sub i32 %sub568, %149
  %idxprom570 = sext i32 %sub569 to i64
  %arrayidx571 = getelementptr inbounds [16 x i32]* %vline, i64 0, i64 %idxprom570
  %150 = load i32* %arrayidx571, align 4, !tbaa !3
  %sub572 = sub nsw i32 %148, %150
  %151 = trunc i64 %indvars.iv.next1315 to i32
  %mul573 = mul nsw i32 %sub572, %151
  %add574 = add nsw i32 %mul573, %iv.01191
  %exitcond1318 = icmp eq i32 %151, %sub558
  br i1 %exitcond1318, label %for.end577, label %for.body561

for.end577:                                       ; preds = %for.body561, %for.end540
  %iv.0.lcssa = phi i32 [ %mul555, %for.end540 ], [ %add574, %for.body561 ]
  %mul581 = mul nsw i32 %ih.0.lcssa, %cond580
  %add583 = add nsw i32 %mul581, %mul582
  %shr587 = ashr i32 %add583, %cond586
  %mul591 = mul nsw i32 %iv.0.lcssa, %cond590
  %add593 = add nsw i32 %mul591, %mul592
  %shr597 = ashr i32 %add593, %cond596
  br i1 %cmp4481180, label %for.cond610.preheader.lr.ph, label %for.inc699

for.cond610.preheader.lr.ph:                      ; preds = %for.end577
  %add604 = add nsw i32 %146, %136
  %mul605 = shl i32 %add604, 4
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 156
  %add618 = add i32 %mul605, 16
  br label %for.cond610.preheader

for.cond610.preheader:                            ; preds = %for.inc695, %for.cond610.preheader.lr.ph
  %indvars.iv1323 = phi i64 [ 0, %for.cond610.preheader.lr.ph ], [ %indvars.iv.next1324, %for.inc695 ]
  br i1 %cmp4701184, label %for.body613.lr.ph, label %for.inc695

for.body613.lr.ph:                                ; preds = %for.cond610.preheader
  %152 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %153 = trunc i64 %indvars.iv1323 to i32
  %add621 = add i32 %sub620, %153
  %mul622 = mul nsw i32 %add621, %shr597
  %add623 = add i32 %add618, %mul622
  br label %for.body613

for.body613:                                      ; preds = %for.body613, %for.body613.lr.ph
  %indvars.iv1319 = phi i64 [ 0, %for.body613.lr.ph ], [ %indvars.iv.next1320, %for.body613 ]
  %154 = trunc i64 %indvars.iv1319 to i32
  %add616 = add i32 %sub615, %154
  %mul617 = mul nsw i32 %add616, %shr587
  %add624 = add i32 %add623, %mul617
  %shr625 = ashr i32 %add624, 5
  %cmp626 = icmp slt i32 %152, %shr625
  %.shr625 = select i1 %cmp626, i32 %152, i32 %shr625
  %cmp645 = icmp slt i32 %.shr625, 0
  %155 = trunc i32 %.shr625 to i16
  %conv683 = select i1 %cmp645, i16 0, i16 %155
  %arrayidx691 = getelementptr inbounds %struct.ImageParameters* %.pre1341, i64 0, i32 44, i64 %indvars.iv1327, i64 3, i64 %indvars.iv1319, i64 %indvars.iv1323
  store i16 %conv683, i16* %arrayidx691, align 2, !tbaa !4
  %indvars.iv.next1320 = add i64 %indvars.iv1319, 1
  %lftr.wideiv1321 = trunc i64 %indvars.iv.next1320 to i32
  %exitcond1322 = icmp eq i32 %lftr.wideiv1321, %7
  br i1 %exitcond1322, label %for.inc695, label %for.body613

for.inc695:                                       ; preds = %for.body613, %for.cond610.preheader
  %indvars.iv.next1324 = add i64 %indvars.iv1323, 1
  %lftr.wideiv1325 = trunc i64 %indvars.iv.next1324 to i32
  %exitcond1326 = icmp eq i32 %lftr.wideiv1325, %8
  br i1 %exitcond1326, label %for.inc699, label %for.cond610.preheader

for.inc699:                                       ; preds = %for.end577, %for.inc695, %if.end440, %if.end494
  %indvars.iv.next1328 = add i64 %indvars.iv1327, 1
  %lftr.wideiv1329 = trunc i64 %indvars.iv.next1328 to i32
  %exitcond1330 = icmp eq i32 %lftr.wideiv1329, 2
  br i1 %exitcond1330, label %for.end701, label %for.body92

for.end701:                                       ; preds = %for.inc699
  %rdopt = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 85
  %156 = load i32* %rdopt, align 4, !tbaa !3
  %tobool702 = icmp eq i32 %156, 0
  br i1 %tobool702, label %for.cond704.preheader, label %if.end824

for.cond704.preheader:                            ; preds = %for.end701
  br i1 %cmp4481180, label %for.body707, label %for.cond713.preheader

for.cond713.preheader:                            ; preds = %for.body707, %for.cond704.preheader
  %or.cond1111 = or i1 %or.cond, %tobool293
  %or.cond1112 = or i1 %or.cond1111, %tobool503
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  br label %for.body716

for.body707:                                      ; preds = %for.cond704.preheader, %for.body707
  %indvars.iv1240 = phi i64 [ %indvars.iv.next1241, %for.body707 ], [ 0, %for.cond704.preheader ]
  %arrayidx709 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1240
  %157 = trunc i64 %indvars.iv1240 to i32
  call void @getNeighbour(i32 %1, i32 0, i32 %157, i32 0, %struct.pix_pos* %arrayidx709) #7
  %indvars.iv.next1241 = add i64 %indvars.iv1240, 1
  %lftr.wideiv1242 = trunc i64 %indvars.iv.next1241 to i32
  %exitcond1243 = icmp eq i32 %lftr.wideiv1242, %8
  br i1 %exitcond1243, label %for.cond713.preheader, label %for.body707

for.body716:                                      ; preds = %for.inc821, %for.cond713.preheader
  %indvars.iv1236 = phi i64 [ 0, %for.cond713.preheader ], [ %indvars.iv.next1237, %for.inc821 ]
  %min_cost.01146 = phi i32 [ 2147483647, %for.cond713.preheader ], [ %min_cost.1, %for.inc821 ]
  %best_mode.01145 = phi i32 [ 0, %for.cond713.preheader ], [ %best_mode.1, %for.inc821 ]
  %158 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters* %158, i64 0, i32 75
  %159 = load i32* %ChromaIntraDisable, align 4, !tbaa !3
  %160 = trunc i64 %indvars.iv1236 to i32
  %notlhs = icmp eq i32 %159, 1
  %notrhs = icmp ne i32 %160, 0
  %or.cond1107.not = and i1 %notrhs, %notlhs
  %cmp724 = icmp eq i32 %160, 2
  %or.cond1108 = and i1 %cmp724, %tobool293
  %or.cond1345 = or i1 %or.cond1107.not, %or.cond1108
  br i1 %or.cond1345, label %for.inc821, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body716
  switch i32 %160, label %for.body754 [
    i32 1, label %land.lhs.true730
    i32 3, label %land.lhs.true739
  ]

land.lhs.true730:                                 ; preds = %lor.lhs.false
  br i1 %or.cond, label %for.inc821, label %for.body754

land.lhs.true739:                                 ; preds = %lor.lhs.false
  br i1 %or.cond1112, label %for.inc821, label %for.body754

for.body754:                                      ; preds = %for.inc814, %land.lhs.true730, %lor.lhs.false, %land.lhs.true739
  %indvars.iv1234 = phi i64 [ 0, %land.lhs.true739 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true730 ], [ %indvars.iv.next1235, %for.inc814 ]
  %cost.01142 = phi i32 [ 0, %land.lhs.true739 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true730 ], [ %cost.1.lcssa, %for.inc814 ]
  %161 = load i16**** @imgUV_org, align 8, !tbaa !0
  %arrayidx756 = getelementptr inbounds i16*** %161, i64 %indvars.iv1234
  %162 = load i16*** %arrayidx756, align 8, !tbaa !0
  br i1 %cmp4481180, label %for.cond761.preheader, label %for.inc814

for.cond761.preheader:                            ; preds = %for.body754, %for.inc811
  %indvars.iv1229 = phi i64 [ %indvars.iv.next1230, %for.inc811 ], [ 0, %for.body754 ]
  %cost.11139 = phi i32 [ %cost.2.lcssa, %for.inc811 ], [ %cost.01142, %for.body754 ]
  %block_y.01137 = phi i32 [ %add812, %for.inc811 ], [ 0, %for.body754 ]
  br i1 %cmp4701184, label %for.cond765.preheader, label %for.inc811

for.cond765.preheader:                            ; preds = %for.cond761.preheader, %for.end806.for.cond765.preheader_crit_edge
  %indvars.iv1227 = phi i32 [ %indvars.iv.next1228, %for.end806.for.cond765.preheader_crit_edge ], [ 1, %for.cond761.preheader ]
  %indvars.iv1225 = phi i32 [ %indvars.iv.next1226, %for.end806.for.cond765.preheader_crit_edge ], [ 0, %for.cond761.preheader ]
  %indvars.iv1223 = phi i32 [ %indvars.iv.next1224, %for.end806.for.cond765.preheader_crit_edge ], [ 3, %for.cond761.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end806.for.cond765.preheader_crit_edge ], [ 0, %for.cond761.preheader ]
  %cost.21135 = phi i32 [ %add807, %for.end806.for.cond765.preheader_crit_edge ], [ %cost.11139, %for.cond761.preheader ]
  %163 = icmp sgt i32 %indvars.iv1223, %indvars.iv1225
  %smax = select i1 %163, i32 %indvars.iv1223, i32 %indvars.iv1225
  %164 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %165 = add i32 %smax, %indvars.iv1227
  br label %for.cond770.preheader

for.cond770.preheader:                            ; preds = %for.cond765.preheader, %for.inc804
  %indvars.iv1231 = phi i64 [ %indvars.iv1229, %for.cond765.preheader ], [ %indvars.iv.next1232, %for.inc804 ]
  %k.01131 = phi i32 [ 0, %for.cond765.preheader ], [ %176, %for.inc804 ]
  %pos_x777 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1231, i32 4
  %166 = load i32* %pos_x777, align 8, !tbaa !3
  %pos_y782 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv1231, i32 5
  %167 = load i32* %pos_y782, align 4, !tbaa !3
  %idxprom783 = sext i32 %167 to i64
  %arrayidx784 = getelementptr inbounds i16** %162, i64 %idxprom783
  %168 = load i16** %arrayidx784, align 8, !tbaa !0
  %169 = sext i32 %166 to i64
  %170 = sext i32 %k.01131 to i64
  br label %for.body774

for.body774:                                      ; preds = %for.cond770.preheader, %for.body774
  %indvars.iv1221 = phi i64 [ %170, %for.cond770.preheader ], [ %indvars.iv.next1222, %for.body774 ]
  %indvars.iv1217 = phi i64 [ %indvars.iv, %for.cond770.preheader ], [ %indvars.iv.next1218, %for.body774 ]
  %171 = add nsw i64 %169, %indvars.iv1217
  %arrayidx785 = getelementptr inbounds i16* %168, i64 %171
  %172 = load i16* %arrayidx785, align 2, !tbaa !4
  %conv786 = zext i16 %172 to i32
  %arrayidx795 = getelementptr inbounds %struct.ImageParameters* %164, i64 0, i32 44, i64 %indvars.iv1234, i64 %indvars.iv1236, i64 %indvars.iv1217, i64 %indvars.iv1231
  %173 = load i16* %arrayidx795, align 2, !tbaa !4
  %conv796 = zext i16 %173 to i32
  %sub797 = sub nsw i32 %conv786, %conv796
  %arrayidx799 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 %indvars.iv1221
  store i32 %sub797, i32* %arrayidx799, align 4, !tbaa !3
  %indvars.iv.next1222 = add i64 %indvars.iv1221, 1
  %174 = or i32 %indvars.iv1225, 3
  %175 = trunc i64 %indvars.iv1217 to i32
  %cmp772 = icmp slt i32 %175, %174
  %indvars.iv.next1218 = add i64 %indvars.iv1217, 1
  br i1 %cmp772, label %for.body774, label %for.inc804

for.inc804:                                       ; preds = %for.body774
  %176 = add i32 %165, %k.01131
  %177 = or i32 %block_y.01137, 3
  %178 = trunc i64 %indvars.iv1231 to i32
  %cmp767 = icmp slt i32 %178, %177
  %indvars.iv.next1232 = add i64 %indvars.iv1231, 1
  br i1 %cmp767, label %for.cond770.preheader, label %for.end806

for.end806:                                       ; preds = %for.inc804
  %179 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %179, i64 0, i32 6
  %180 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arraydecay, i32 %180) #7
  %add807 = add nsw i32 %call, %cost.21135
  %indvars.iv.next1226 = add i32 %indvars.iv1225, 4
  %cmp762 = icmp slt i32 %indvars.iv.next1226, %7
  br i1 %cmp762, label %for.end806.for.cond765.preheader_crit_edge, label %for.inc811

for.end806.for.cond765.preheader_crit_edge:       ; preds = %for.end806
  %indvars.iv.next1228 = add i32 %indvars.iv1227, -4
  %indvars.iv.next1224 = add i32 %indvars.iv1223, 4
  %indvars.iv.next = add i64 %indvars.iv, 4
  br label %for.cond765.preheader

for.inc811:                                       ; preds = %for.end806, %for.cond761.preheader
  %cost.2.lcssa = phi i32 [ %cost.11139, %for.cond761.preheader ], [ %add807, %for.end806 ]
  %add812 = add nsw i32 %block_y.01137, 4
  %cmp758 = icmp slt i32 %add812, %8
  %indvars.iv.next1230 = add i64 %indvars.iv1229, 4
  br i1 %cmp758, label %for.cond761.preheader, label %for.inc814

for.inc814:                                       ; preds = %for.inc811, %for.body754
  %cost.1.lcssa = phi i32 [ %cost.01142, %for.body754 ], [ %cost.2.lcssa, %for.inc811 ]
  %indvars.iv.next1235 = add i64 %indvars.iv1234, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1235 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end816, label %for.body754

for.end816:                                       ; preds = %for.inc814
  %cmp817 = icmp slt i32 %cost.1.lcssa, %min_cost.01146
  %mode.0.best_mode.0 = select i1 %cmp817, i32 %160, i32 %best_mode.01145
  %cost.0.min_cost.0 = select i1 %cmp817, i32 %cost.1.lcssa, i32 %min_cost.01146
  br label %for.inc821

for.inc821:                                       ; preds = %for.body716, %for.end816, %land.lhs.true730, %land.lhs.true739
  %best_mode.1 = phi i32 [ %best_mode.01145, %land.lhs.true739 ], [ %best_mode.01145, %land.lhs.true730 ], [ %best_mode.01145, %for.body716 ], [ %mode.0.best_mode.0, %for.end816 ]
  %min_cost.1 = phi i32 [ %min_cost.01146, %land.lhs.true739 ], [ %min_cost.01146, %land.lhs.true730 ], [ %min_cost.01146, %for.body716 ], [ %cost.0.min_cost.0, %for.end816 ]
  %indvars.iv.next1237 = add i64 %indvars.iv1236, 1
  %lftr.wideiv1238 = trunc i64 %indvars.iv.next1237 to i32
  %exitcond1239 = icmp eq i32 %lftr.wideiv1238, 4
  br i1 %exitcond1239, label %for.end823, label %for.body716

for.end823:                                       ; preds = %for.inc821
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  store i32 %best_mode.1, i32* %c_ipred_mode, align 4, !tbaa !3
  br label %if.end824

if.end824:                                        ; preds = %for.end701, %for.end823
  call void @llvm.lifetime.end(i64 408, i8* %6) #4
  call void @llvm.lifetime.end(i64 64, i8* %5) #4
  call void @llvm.lifetime.end(i64 64, i8* %4) #4
  call void @llvm.lifetime.end(i64 64, i8* %3) #4
  ret void
}

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @ZeroRef(%struct.macroblock* nocapture %currMB) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %1 = load i32* %block_y, align 4, !tbaa !3
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %2 = load i32* %block_x, align 4, !tbaa !3
  %3 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %3, i64 0, i32 32
  %4 = load i16**** %ref_idx, align 8, !tbaa !0
  %5 = load i16*** %4, align 8, !tbaa !0
  %6 = sext i32 %2 to i64
  %7 = sext i32 %1 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv21 = phi i64 [ 0, %entry ], [ %indvars.iv.next22, %for.inc10 ]
  %8 = add nsw i64 %7, %indvars.iv21
  br label %for.body3

for.cond1:                                        ; preds = %for.body3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %9, 4
  br i1 %cmp2, label %for.body3, label %for.inc10

for.body3:                                        ; preds = %for.cond1.preheader, %for.cond1
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.cond1 ]
  %10 = add nsw i64 %6, %indvars.iv
  %arrayidx6 = getelementptr inbounds i16** %5, i64 %10
  %11 = load i16** %arrayidx6, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i16* %11, i64 %8
  %12 = load i16* %arrayidx7, align 2, !tbaa !4
  %cmp8 = icmp eq i16 %12, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp8, label %for.cond1, label %return

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next22 = add i64 %indvars.iv21, 1
  %13 = trunc i64 %indvars.iv.next22 to i32
  %cmp = icmp slt i32 %13, 4
  br i1 %cmp, label %for.cond1.preheader, label %return

return:                                           ; preds = %for.inc10, %for.body3
  %retval.0 = phi i32 [ 0, %for.body3 ], [ 1, %for.inc10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @MBType2Value(%struct.macroblock* nocapture %currMB) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %mb_type = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 8
  %2 = load i32* %mb_type, align 4, !tbaa !3
  br i1 %cmp, label %if.else22, label %if.then

if.then:                                          ; preds = %entry
  switch i32 %2, label %return [
    i32 13, label %if.then4
    i32 9, label %if.then4
    i32 10, label %if.then9
    i32 8, label %if.then16
  ]

if.then4:                                         ; preds = %if.then, %if.then
  %cmp6 = icmp eq i32 %1, 2
  %cond = select i1 %cmp6, i32 0, i32 6
  br label %return

if.then9:                                         ; preds = %if.then
  %cmp11 = icmp eq i32 %1, 2
  %cond12 = select i1 %cmp11, i32 0, i32 6
  %i16offset = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85
  %3 = load i32* %i16offset, align 4, !tbaa !3
  %add = add nsw i32 %3, %cond12
  br label %return

if.then16:                                        ; preds = %if.then
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 59
  %5 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %5, 0
  br i1 %cmp17, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.then16
  %call = tail call i32 @ZeroRef(%struct.macroblock* undef) #8
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.else19, label %return

if.else19:                                        ; preds = %land.lhs.true, %if.then16
  br label %return

if.else22:                                        ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 15, i64 0
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 15, i64 3
  %7 = load i32* %arrayidx25, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %2, 0
  br i1 %cmp26, label %return, label %if.else28

if.else28:                                        ; preds = %if.else22
  %8 = and i32 %2, -5
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %return, label %if.else33

if.else33:                                        ; preds = %if.else28
  switch i32 %2, label %if.else45 [
    i32 10, label %if.then35
    i32 8, label %return
    i32 1, label %if.then43
  ]

if.then35:                                        ; preds = %if.else33
  %i16offset36 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85
  %10 = load i32* %i16offset36, align 4, !tbaa !3
  %add37 = add nsw i32 %10, 23
  br label %return

if.then43:                                        ; preds = %if.else33
  %idxprom = sext i32 %6 to i64
  %arrayidx44 = getelementptr inbounds [3 x i32]* @MBType2Value.dir1offset, i64 0, i64 %idxprom
  %11 = load i32* %arrayidx44, align 4, !tbaa !3
  br label %return

if.else45:                                        ; preds = %if.else33
  %cmp46 = icmp eq i32 %2, 2
  %idxprom48 = sext i32 %7 to i64
  %idxprom49 = sext i32 %6 to i64
  %arrayidx51 = getelementptr inbounds [3 x [3 x i32]]* @MBType2Value.dir2offset, i64 0, i64 %idxprom49, i64 %idxprom48
  %12 = load i32* %arrayidx51, align 4, !tbaa !3
  br i1 %cmp46, label %if.then47, label %if.else53

if.then47:                                        ; preds = %if.else45
  %add52 = add nsw i32 %12, 4
  br label %return

if.else53:                                        ; preds = %if.else45
  %add58 = add nsw i32 %12, 5
  br label %return

return:                                           ; preds = %if.else33, %if.else28, %if.else22, %if.then, %land.lhs.true, %if.else53, %if.then47, %if.then43, %if.then35, %if.else19, %if.then9, %if.then4
  %retval.0 = phi i32 [ %cond, %if.then4 ], [ %add, %if.then9 ], [ 4, %if.else19 ], [ %add37, %if.then35 ], [ %11, %if.then43 ], [ %add52, %if.then47 ], [ %add58, %if.else53 ], [ 5, %land.lhs.true ], [ %2, %if.then ], [ 0, %if.else22 ], [ 23, %if.else28 ], [ 22, %if.else33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeIntra4x4Modes(i32 %only_this_block) #0 {
entry:
  %ipred_array = alloca [16 x i32], align 16
  %cont_array = alloca [16 x i32], align 16
  %0 = bitcast [16 x i32]* %ipred_array to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #4
  %1 = bitcast [16 x i32]* %cont_array to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #4
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 0
  %5 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %5 to i64
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 50
  %6 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 61
  %8 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %9 = load i32** %arrayidx4, align 8, !tbaa !0
  %cmp8 = icmp slt i32 %only_this_block, 0
  br label %for.body

for.cond48.preheader:                             ; preds = %for.inc45
  %cmp49120 = icmp sgt i32 %ipred_number.3, 0
  br i1 %cmp49120, label %for.body50.lr.ph, label %for.end74

for.body50.lr.ph:                                 ; preds = %for.cond48.preheader
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 52, i64 %idxprom1
  %IntraChromaPredModeFlag = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 21
  %arrayidx58 = getelementptr inbounds i32* %9, i64 4
  %partArr = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  %arrayidx66 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 5, i64 5
  br label %for.body50

for.body:                                         ; preds = %for.inc45, %entry
  %indvars.iv134 = phi i64 [ 0, %entry ], [ %indvars.iv.next135, %for.inc45 ]
  %ipred_number.0128 = phi i32 [ 0, %entry ], [ %ipred_number.3, %for.inc45 ]
  %arrayidx6 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 14, i64 %indvars.iv134
  %10 = load i32* %arrayidx6, align 4, !tbaa !3
  switch i32 %10, label %for.inc45 [
    i32 11, label %land.lhs.true
    i32 13, label %land.lhs.true15
  ]

land.lhs.true:                                    ; preds = %for.body
  %11 = trunc i64 %indvars.iv134 to i32
  %cmp9 = icmp eq i32 %11, %only_this_block
  %or.cond = or i1 %cmp8, %cmp9
  br i1 %or.cond, label %if.then, label %for.inc45

land.lhs.true15:                                  ; preds = %for.body
  %12 = trunc i64 %indvars.iv134 to i32
  %cmp18 = icmp eq i32 %12, %only_this_block
  %or.cond119 = or i1 %cmp8, %cmp18
  br i1 %or.cond119, label %if.then, label %for.inc45

if.then:                                          ; preds = %land.lhs.true15, %land.lhs.true
  %cmp22 = icmp eq i32 %10, 13
  %cond = select i1 %cmp22, i32 2, i32 1
  %13 = shl i64 %indvars.iv134, 2
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %if.then, %for.inc42
  %j.0127 = phi i32 [ 0, %if.then ], [ %add43, %for.inc42 ]
  %ipred_number.1126 = phi i32 [ %ipred_number.0128, %if.then ], [ %inc, %for.inc42 ]
  %shl30 = shl i32 %j.0127, 1
  %14 = trunc i64 %13 to i32
  %or = or i32 %shl30, %14
  %add = add nsw i32 %shl30, %14
  %15 = sext i32 %ipred_number.1126 to i64
  br label %for.body29

for.body29:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv132 = phi i64 [ %15, %for.cond27.preheader ], [ %indvars.iv.next133, %for.body29 ]
  %i.0125 = phi i32 [ 0, %for.cond27.preheader ], [ %add41, %for.body29 ]
  %ipred_number.2124 = phi i32 [ %ipred_number.1126, %for.cond27.preheader ], [ %inc, %for.body29 ]
  %or31 = or i32 %or, %i.0125
  %idxprom32 = sext i32 %or31 to i64
  %arrayidx33 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 10, i64 %idxprom32
  %16 = load i32* %arrayidx33, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds [16 x i32]* %ipred_array, i64 0, i64 %indvars.iv132
  store i32 %16, i32* %arrayidx35, align 4, !tbaa !3
  %add38 = add nsw i32 %add, %i.0125
  %arrayidx40 = getelementptr inbounds [16 x i32]* %cont_array, i64 0, i64 %indvars.iv132
  store i32 %add38, i32* %arrayidx40, align 4, !tbaa !3
  %indvars.iv.next133 = add i64 %indvars.iv132, 1
  %inc = add nsw i32 %ipred_number.2124, 1
  %add41 = add nsw i32 %i.0125, %cond
  %cmp28 = icmp slt i32 %add41, 2
  br i1 %cmp28, label %for.body29, label %for.inc42

for.inc42:                                        ; preds = %for.body29
  %add43 = add nsw i32 %j.0127, %cond
  %cmp25 = icmp slt i32 %add43, 2
  br i1 %cmp25, label %for.cond27.preheader, label %for.inc45

for.inc45:                                        ; preds = %for.body, %land.lhs.true, %for.inc42, %land.lhs.true15
  %ipred_number.3 = phi i32 [ %ipred_number.0128, %land.lhs.true15 ], [ %inc, %for.inc42 ], [ %ipred_number.0128, %land.lhs.true ], [ %ipred_number.0128, %for.body ]
  %indvars.iv.next135 = add i64 %indvars.iv134, 1
  %lftr.wideiv137 = trunc i64 %indvars.iv.next135 to i32
  %exitcond138 = icmp eq i32 %lftr.wideiv137, 4
  br i1 %exitcond138, label %for.cond48.preheader, label %for.body

for.body50:                                       ; preds = %if.end65.for.body50_crit_edge, %for.body50.lr.ph
  %17 = phi %struct.InputParameters* [ %7, %for.body50.lr.ph ], [ %.pre139, %if.end65.for.body50_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next, %if.end65.for.body50_crit_edge ]
  %rate.0122 = phi i32 [ 0, %for.body50.lr.ph ], [ %add69, %if.end65.for.body50_crit_edge ]
  %currSE.0121 = phi %struct.syntaxelement* [ %arrayidx2, %for.body50.lr.ph ], [ %incdec.ptr, %if.end65.for.body50_crit_edge ]
  store i32 1, i32* %IntraChromaPredModeFlag, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds [16 x i32]* %cont_array, i64 0, i64 %indvars.iv
  %18 = load i32* %arrayidx52, align 4, !tbaa !3
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 6
  store i32 %18, i32* %context, align 4, !tbaa !3
  %arrayidx54 = getelementptr inbounds [16 x i32]* %ipred_array, i64 0, i64 %indvars.iv
  %19 = load i32* %arrayidx54, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 1
  store i32 %19, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 59
  %20 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp55 = icmp eq i32 %20, 0
  br i1 %cmp55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %for.body50
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end57

if.end57:                                         ; preds = %for.body50, %if.then56
  %21 = phi %struct.InputParameters* [ %17, %for.body50 ], [ %.pre, %if.then56 ]
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 0
  store i32 4, i32* %type, align 4, !tbaa !3
  %22 = load i32* %arrayidx58, align 4, !tbaa !3
  %idxprom59 = sext i32 %22 to i64
  %23 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds %struct.datapartition* %23, i64 %idxprom59
  %symbol_mode61 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 59
  %24 = load i32* %symbol_mode61, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %24, 0
  br i1 %cmp62, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.end57
  %call = call i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %currSE.0121, %struct.datapartition* %arrayidx60) #7
  br label %if.end65

if.else:                                          ; preds = %if.end57
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %23, i64 %idxprom59, i32 2
  %25 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call64 = call i32 %25(%struct.syntaxelement* %currSE.0121, %struct.datapartition* %arrayidx60) #7
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then63
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 0, i32 3
  %26 = load i32* %len, align 4, !tbaa !3
  %27 = load i32* %arrayidx66, align 4, !tbaa !3
  %add67 = add nsw i32 %27, %26
  store i32 %add67, i32* %arrayidx66, align 4, !tbaa !3
  %28 = load i32* %len, align 4, !tbaa !3
  %add69 = add nsw i32 %28, %rate.0122
  %29 = load i32* %currSEnr, align 4, !tbaa !3
  %inc71 = add nsw i32 %29, 1
  store i32 %inc71, i32* %currSEnr, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ipred_number.3
  br i1 %exitcond, label %for.end74, label %if.end65.for.body50_crit_edge

if.end65.for.body50_crit_edge:                    ; preds = %if.end65
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.0121, i64 1
  %.pre139 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body50

for.end74:                                        ; preds = %if.end65, %for.cond48.preheader
  %rate.0.lcssa = phi i32 [ 0, %for.cond48.preheader ], [ %add69, %if.end65 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #4
  call void @llvm.lifetime.end(i64 64, i8* %0) #4
  ret i32 %rate.0.lcssa
}

; Function Attrs: optsize
declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @B8Mode2Value(i32 %b8mode, i32 %b8pdir) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %b8mode, -4
  br label %return

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %b8mode to i64
  %arrayidx = getelementptr inbounds [8 x i32]* @B8Mode2Value.b8start, i64 0, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [8 x i32]* @B8Mode2Value.b8inc, i64 0, i64 %idxprom
  %3 = load i32* %arrayidx2, align 4, !tbaa !3
  %mul = mul nsw i32 %3, %b8pdir
  %add = add nsw i32 %mul, %2
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeMBLayer(i32 %rdopt) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sub = add nsw i32 %1, -1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.macroblock* [ %arrayidx3, %cond.true ], [ null, %entry ]
  %currSEnr = getelementptr inbounds %struct.macroblock* %arrayidx, i64 0, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom6
  %7 = load i32** %arrayidx7, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %8 = load i32* %mb_type, align 4, !tbaa !3
  %tobool8 = icmp eq i32 %8, 0
  br i1 %tobool8, label %cond.false10, label %cond.end16

cond.false10:                                     ; preds = %cond.end
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %9 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %cond.true11, label %cond.end16

cond.true11:                                      ; preds = %cond.false10
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %10 = load i32* %cbp, align 4, !tbaa !3
  %lnot = icmp eq i32 %10, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end16

cond.end16:                                       ; preds = %cond.end, %cond.true11, %cond.false10
  %cond17 = phi i32 [ 0, %cond.end ], [ %lnot.ext, %cond.true11 ], [ 1, %cond.false10 ]
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %11 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool19 = icmp eq i32 %11, 0
  br i1 %tobool19, label %if.end52, label %if.then

if.then:                                          ; preds = %cond.end16
  %rem744 = and i32 %1, 1
  %cmp20 = icmp eq i32 %rem744, 0
  br i1 %cmp20, label %if.end52, label %if.else

if.else:                                          ; preds = %if.then
  %mb_type22 = getelementptr inbounds %struct.macroblock* %cond, i64 0, i32 8
  %12 = load i32* %mb_type22, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %12, 0
  %type26 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %13 = load i32* %type26, align 4, !tbaa !3
  br i1 %tobool23, label %cond.false25, label %if.end

cond.false25:                                     ; preds = %if.else
  %cmp27 = icmp eq i32 %13, 1
  br i1 %cmp27, label %cond.true28, label %if.end.thread793

if.end.thread793:                                 ; preds = %cond.false25
  %sub34794 = add nsw i32 %1, -1
  %idxprom35795 = sext i32 %sub34794 to i64
  %mb_type44797 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom35795, i32 8
  %14 = load i32* %mb_type44797, align 4, !tbaa !3
  %cmp45798 = icmp eq i32 %14, 0
  br label %if.then40

cond.true28:                                      ; preds = %cond.false25
  %cbp29 = getelementptr inbounds %struct.macroblock* %cond, i64 0, i32 12
  %15 = load i32* %cbp29, align 4, !tbaa !3
  %tobool30 = icmp eq i32 %15, 0
  %sub34788 = add nsw i32 %1, -1
  %idxprom35789 = sext i32 %sub34788 to i64
  %mb_type44791 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom35789, i32 8
  %16 = load i32* %mb_type44791, align 4, !tbaa !3
  %cmp45792 = icmp eq i32 %16, 0
  %. = zext i1 %tobool30 to i32
  br i1 %cmp45792, label %land.rhs, label %land.end

if.end:                                           ; preds = %if.else
  %sub34 = add nsw i32 %1, -1
  %idxprom35 = sext i32 %sub34 to i64
  %cmp39 = icmp eq i32 %13, 1
  %mb_type44 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom35, i32 8
  %17 = load i32* %mb_type44, align 4, !tbaa !3
  %cmp45 = icmp eq i32 %17, 0
  br i1 %cmp39, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.end.thread793, %if.end
  %cmp45800 = phi i1 [ %cmp45798, %if.end.thread793 ], [ %cmp45, %if.end ]
  %WriteFrameFieldMBInHeader.0799 = phi i32 [ 1, %if.end.thread793 ], [ 0, %if.end ]
  %conv = zext i1 %cmp45800 to i32
  br label %if.end52

if.else43:                                        ; preds = %if.end
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true28, %if.else43
  %WriteFrameFieldMBInHeader.0778783 = phi i32 [ 0, %if.else43 ], [ %., %cond.true28 ]
  %idxprom35779781 = phi i64 [ %idxprom35, %if.else43 ], [ %idxprom35789, %cond.true28 ]
  %cbp47 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom35779781, i32 12
  %18 = load i32* %cbp47, align 4, !tbaa !3
  %cmp48 = icmp eq i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %cond.true28, %land.rhs, %if.else43
  %WriteFrameFieldMBInHeader.0778782 = phi i32 [ 0, %if.else43 ], [ %WriteFrameFieldMBInHeader.0778783, %land.rhs ], [ %., %cond.true28 ]
  %19 = phi i1 [ false, %if.else43 ], [ %cmp48, %land.rhs ], [ false, %cond.true28 ]
  %land.ext = zext i1 %19 to i32
  br label %if.end52

if.end52:                                         ; preds = %if.then, %cond.end16, %land.end, %if.then40
  %prevMbSkipped.0 = phi i32 [ %land.ext, %land.end ], [ %conv, %if.then40 ], [ 0, %cond.end16 ], [ 0, %if.then ]
  %WriteFrameFieldMBInHeader.1 = phi i32 [ %WriteFrameFieldMBInHeader.0778782, %land.end ], [ %WriteFrameFieldMBInHeader.0799, %if.then40 ], [ 0, %cond.end16 ], [ 1, %if.then ]
  switch i32 %8, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ]

lor.rhs:                                          ; preds = %if.end52
  br label %lor.end

lor.end:                                          ; preds = %if.end52, %if.end52, %if.end52, %lor.rhs
  %20 = phi i32 [ 1, %if.end52 ], [ 0, %lor.rhs ], [ 1, %if.end52 ], [ 1, %if.end52 ]
  %IntraChromaPredModeFlag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 21
  store i32 %20, i32* %IntraChromaPredModeFlag, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds i32* %7, i64 2
  %21 = load i32* %arrayidx62, align 4, !tbaa !3
  %idxprom63 = sext i32 %21 to i64
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %22 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63
  %type65 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %23 = load i32* %type65, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %23, 2
  br i1 %cmp66, label %if.then68, label %if.else120

if.then68:                                        ; preds = %lor.end
  %24 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %notlhs754 = icmp eq i32 %24, 0
  %notrhs755 = icmp ne i32 %cond17, 0
  %or.cond.not = or i1 %notrhs755, %notlhs754
  %tobool73 = icmp eq i32 %WriteFrameFieldMBInHeader.1, 0
  %or.cond745 = or i1 %or.cond.not, %tobool73
  br i1 %or.cond745, label %if.end97, label %if.then74

if.then74:                                        ; preds = %if.then68
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %25 = load i32* %mb_field, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 1
  store i32 %25, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %type75 = getelementptr inbounds %struct.syntaxelement* %arrayidx5, i64 0, i32 0
  store i32 2, i32* %type75, align 4, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %26 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp76 = icmp eq i32 %26, 0
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then74
  %mapping = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end80

if.else79:                                        ; preds = %if.then74
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeFieldModeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then78
  %27 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode81 = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 59
  %28 = load i32* %symbol_mode81, align 4, !tbaa !3
  %cmp82 = icmp eq i32 %28, 0
  br i1 %cmp82, label %if.then84, label %if.else88

if.then84:                                        ; preds = %if.end80
  %29 = load i32* %mb_field, align 4, !tbaa !3
  %tobool86 = icmp ne i32 %29, 0
  %cond87 = zext i1 %tobool86 to i32
  %bitpattern = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 5
  store i32 %cond87, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 3
  store i32 1, i32* %len, align 4, !tbaa !3
  %bitstream = getelementptr inbounds %struct.datapartition* %arrayidx64, i64 0, i32 0
  %30 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %call = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %arrayidx5, %struct.Bitstream* %30) #7
  br label %if.end90

if.else88:                                        ; preds = %if.end80
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63, i32 2
  %31 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call89 = tail call i32 %31(%struct.syntaxelement* %arrayidx5, %struct.datapartition* %arrayidx64) #7
  %len91.pre = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 3
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then84
  %len91.pre-phi = phi i32* [ %len91.pre, %if.else88 ], [ %len, %if.then84 ]
  %32 = load i32* %len91.pre-phi, align 4, !tbaa !3
  %arrayidx92 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %33 = load i32* %arrayidx92, align 4, !tbaa !3
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %arrayidx92, align 4, !tbaa !3
  %34 = load i32* %len91.pre-phi, align 4, !tbaa !3
  %arrayidx5.sum743 = add i64 %idxprom4, 1
  %incdec.ptr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum743
  %35 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end97

if.end97:                                         ; preds = %if.then68, %if.end90
  %36 = phi %struct.InputParameters* [ %.pre, %if.end90 ], [ %5, %if.then68 ]
  %no_bits.0 = phi i32 [ %34, %if.end90 ], [ 0, %if.then68 ]
  %currSE.0 = phi %struct.syntaxelement* [ %incdec.ptr, %if.end90 ], [ %arrayidx5, %if.then68 ]
  %call98 = tail call i32 @MBType2Value(%struct.macroblock* %arrayidx) #8
  %value199 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 1
  store i32 %call98, i32* %value199, align 4, !tbaa !3
  %value2100 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 2
  store i32 0, i32* %value2100, align 4, !tbaa !3
  %type101 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 0
  store i32 2, i32* %type101, align 4, !tbaa !3
  %symbol_mode102 = getelementptr inbounds %struct.InputParameters* %36, i64 0, i32 59
  %37 = load i32* %symbol_mode102, align 4, !tbaa !3
  %cmp103 = icmp eq i32 %37, 0
  br i1 %cmp103, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.end97
  %mapping106 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping106, align 8, !tbaa !0
  br label %if.end109

if.else107:                                       ; preds = %if.end97
  %writing108 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing108, align 8, !tbaa !0
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then105
  %writeSyntaxElement110 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63, i32 2
  %38 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement110, align 8, !tbaa !0
  %call111 = tail call i32 %38(%struct.syntaxelement* %currSE.0, %struct.datapartition* %arrayidx64) #7
  %len112 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 3
  %39 = load i32* %len112, align 4, !tbaa !3
  %arrayidx113 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %40 = load i32* %arrayidx113, align 4, !tbaa !3
  %add114 = add nsw i32 %40, %39
  store i32 %add114, i32* %arrayidx113, align 4, !tbaa !3
  %41 = load i32* %len112, align 4, !tbaa !3
  %add116 = add nsw i32 %41, %no_bits.0
  %incdec.ptr117 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 1
  %42 = load i32* %currSEnr, align 4, !tbaa !3
  %inc119 = add nsw i32 %42, 1
  store i32 %inc119, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end348

if.else120:                                       ; preds = %lor.end
  %symbol_mode121 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %43 = load i32* %symbol_mode121, align 4, !tbaa !3
  %cmp122 = icmp eq i32 %43, 1
  br i1 %cmp122, label %if.then124, label %if.else227

if.then124:                                       ; preds = %if.else120
  %44 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool126 = icmp eq i32 %44, 0
  br i1 %tobool126, label %if.end139, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %if.then124
  %45 = load i32* %current_mb_nr, align 4, !tbaa !3
  %rem129742 = and i32 %45, 1
  %cmp130 = icmp ne i32 %rem129742, 0
  %tobool133 = icmp eq i32 %prevMbSkipped.0, 0
  %or.cond746 = and i1 %cmp130, %tobool133
  br i1 %or.cond746, label %if.end139, label %if.then134

if.then134:                                       ; preds = %land.lhs.true127
  %mb_field135 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %46 = load i32* %mb_field135, align 4, !tbaa !3
  %call136 = tail call i32 (...)* @field_flag_inference() #7
  store i32 %call136, i32* %mb_field135, align 4, !tbaa !3
  tail call void (...)* @CheckAvailabilityOfNeighborsCABAC() #7
  store i32 %46, i32* %mb_field135, align 4, !tbaa !3
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true127, %if.then124, %if.then134
  %call140 = tail call i32 @MBType2Value(%struct.macroblock* %arrayidx) #8
  %value1141 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 1
  store i32 %call140, i32* %value1141, align 4, !tbaa !3
  %cbp142 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %47 = load i32* %cbp142, align 4, !tbaa !3
  %value2143 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 2
  store i32 %47, i32* %value2143, align 4, !tbaa !3
  %type144 = getelementptr inbounds %struct.syntaxelement* %arrayidx5, i64 0, i32 0
  store i32 2, i32* %type144, align 4, !tbaa !3
  %writing145 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_skip_flagInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing145, align 8, !tbaa !0
  %writeSyntaxElement146 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63, i32 2
  %48 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement146, align 8, !tbaa !0
  %call147 = tail call i32 %48(%struct.syntaxelement* %arrayidx5, %struct.datapartition* %arrayidx64) #7
  %len148 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 3
  %49 = load i32* %len148, align 4, !tbaa !3
  %arrayidx149 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %50 = load i32* %arrayidx149, align 4, !tbaa !3
  %add150 = add nsw i32 %50, %49
  store i32 %add150, i32* %arrayidx149, align 4, !tbaa !3
  %51 = load i32* %len148, align 4, !tbaa !3
  %arrayidx5.sum741 = add i64 %idxprom4, 1
  %incdec.ptr153 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741
  %52 = load i32* %currSEnr, align 4, !tbaa !3
  %inc155 = add nsw i32 %52, 1
  store i32 %inc155, i32* %currSEnr, align 4, !tbaa !3
  tail call void (...)* @CheckAvailabilityOfNeighborsCABAC() #7
  %53 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag156 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 90
  %54 = load i32* %MbaffFrameFlag156, align 4, !tbaa !3
  %notlhs752 = icmp eq i32 %54, 0
  %notrhs753 = icmp ne i32 %cond17, 0
  %or.cond747.not = or i1 %notrhs753, %notlhs752
  %tobool161 = icmp eq i32 %WriteFrameFieldMBInHeader.1, 0
  %or.cond748 = or i1 %or.cond747.not, %tobool161
  br i1 %or.cond748, label %if.end199, label %if.then162

if.then162:                                       ; preds = %if.end139
  %mb_field163 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %55 = load i32* %mb_field163, align 4, !tbaa !3
  %value1164 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 1
  store i32 %55, i32* %value1164, align 4, !tbaa !3
  %value2165 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 2
  store i32 0, i32* %value2165, align 4, !tbaa !3
  %type166 = getelementptr inbounds %struct.syntaxelement* %incdec.ptr153, i64 0, i32 0
  store i32 2, i32* %type166, align 4, !tbaa !3
  %56 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode167 = getelementptr inbounds %struct.InputParameters* %56, i64 0, i32 59
  %57 = load i32* %symbol_mode167, align 4, !tbaa !3
  %cmp168 = icmp eq i32 %57, 0
  br i1 %cmp168, label %if.then170, label %if.else172

if.then170:                                       ; preds = %if.then162
  %mapping171 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping171, align 8, !tbaa !0
  br label %if.end174

if.else172:                                       ; preds = %if.then162
  %writing173 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeFieldModeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing173, align 8, !tbaa !0
  br label %if.end174

if.end174:                                        ; preds = %if.else172, %if.then170
  %58 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode175 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 59
  %59 = load i32* %symbol_mode175, align 4, !tbaa !3
  %cmp176 = icmp eq i32 %59, 0
  br i1 %cmp176, label %if.then178, label %if.else186

if.then178:                                       ; preds = %if.end174
  %60 = load i32* %mb_field163, align 4, !tbaa !3
  %tobool180 = icmp ne i32 %60, 0
  %cond181 = zext i1 %tobool180 to i32
  %bitpattern182 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 5
  store i32 %cond181, i32* %bitpattern182, align 4, !tbaa !3
  %len183 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 3
  store i32 1, i32* %len183, align 4, !tbaa !3
  %bitstream184 = getelementptr inbounds %struct.datapartition* %arrayidx64, i64 0, i32 0
  %61 = load %struct.Bitstream** %bitstream184, align 8, !tbaa !0
  %call185 = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %incdec.ptr153, %struct.Bitstream* %61) #7
  br label %if.end189

if.else186:                                       ; preds = %if.end174
  %62 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement146, align 8, !tbaa !0
  %call188 = tail call i32 %62(%struct.syntaxelement* %incdec.ptr153, %struct.datapartition* %arrayidx64) #7
  %len190.pre = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum741, i32 3
  br label %if.end189

if.end189:                                        ; preds = %if.else186, %if.then178
  %len190.pre-phi = phi i32* [ %len190.pre, %if.else186 ], [ %len183, %if.then178 ]
  %63 = load i32* %len190.pre-phi, align 4, !tbaa !3
  %64 = load i32* %arrayidx149, align 4, !tbaa !3
  %add192 = add nsw i32 %64, %63
  store i32 %add192, i32* %arrayidx149, align 4, !tbaa !3
  %65 = load i32* %len190.pre-phi, align 4, !tbaa !3
  %add194 = add nsw i32 %65, %51
  %incdec.ptr153.sum = add i64 %idxprom4, 2
  %incdec.ptr195 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %incdec.ptr153.sum
  %66 = load i32* %currSEnr, align 4, !tbaa !3
  %inc197 = add nsw i32 %66, 1
  store i32 %inc197, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end199

if.end199:                                        ; preds = %if.end139, %if.end189
  %no_bits.1 = phi i32 [ %add194, %if.end189 ], [ %51, %if.end139 ]
  %currSE.1 = phi %struct.syntaxelement* [ %incdec.ptr195, %if.end189 ], [ %incdec.ptr153, %if.end139 ]
  %67 = load i32* %mb_type, align 4, !tbaa !3
  %cmp201 = icmp eq i32 %67, 0
  br i1 %cmp201, label %lor.lhs.false203, label %if.then211

lor.lhs.false203:                                 ; preds = %if.end199
  %68 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type204 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 6
  %69 = load i32* %type204, align 4, !tbaa !3
  %cmp205 = icmp eq i32 %69, 1
  br i1 %cmp205, label %land.lhs.true207, label %if.end348

land.lhs.true207:                                 ; preds = %lor.lhs.false203
  %70 = load i32* %cbp142, align 4, !tbaa !3
  %cmp209 = icmp eq i32 %70, 0
  br i1 %cmp209, label %if.end348, label %if.then211

if.then211:                                       ; preds = %land.lhs.true207, %if.end199
  %value1212 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 0, i32 1
  store i32 %call140, i32* %value1212, align 4, !tbaa !3
  %value2213 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 0, i32 2
  store i32 0, i32* %value2213, align 4, !tbaa !3
  %type214 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 0, i32 0
  store i32 2, i32* %type214, align 4, !tbaa !3
  %writing215 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing215, align 8, !tbaa !0
  %71 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement146, align 8, !tbaa !0
  %call217 = tail call i32 %71(%struct.syntaxelement* %currSE.1, %struct.datapartition* %arrayidx64) #7
  %len218 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 0, i32 3
  %72 = load i32* %len218, align 4, !tbaa !3
  %73 = load i32* %arrayidx149, align 4, !tbaa !3
  %add220 = add nsw i32 %73, %72
  store i32 %add220, i32* %arrayidx149, align 4, !tbaa !3
  %74 = load i32* %len218, align 4, !tbaa !3
  %add222 = add nsw i32 %74, %no_bits.1
  %incdec.ptr223 = getelementptr inbounds %struct.syntaxelement* %currSE.1, i64 1
  %75 = load i32* %currSEnr, align 4, !tbaa !3
  %inc225 = add nsw i32 %75, 1
  store i32 %inc225, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end348

if.else227:                                       ; preds = %if.else120
  br i1 %tobool8, label %lor.lhs.false231, label %if.then239

lor.lhs.false231:                                 ; preds = %if.else227
  %cmp233 = icmp eq i32 %23, 1
  br i1 %cmp233, label %land.lhs.true235, label %if.else304

land.lhs.true235:                                 ; preds = %lor.lhs.false231
  %cbp236 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %76 = load i32* %cbp236, align 4, !tbaa !3
  %cmp237 = icmp eq i32 %76, 0
  br i1 %cmp237, label %if.else304, label %if.then239

if.then239:                                       ; preds = %land.lhs.true235, %if.else227
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 27
  %77 = load i32* %cod_counter, align 4, !tbaa !3
  %value1240 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 1
  store i32 %77, i32* %value1240, align 4, !tbaa !3
  %value2241 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 2
  store i32 0, i32* %value2241, align 4, !tbaa !3
  %mapping242 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping242, align 8, !tbaa !0
  %type243 = getelementptr inbounds %struct.syntaxelement* %arrayidx5, i64 0, i32 0
  store i32 2, i32* %type243, align 4, !tbaa !3
  %writeSyntaxElement244 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63, i32 2
  %78 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement244, align 8, !tbaa !0
  %call245 = tail call i32 %78(%struct.syntaxelement* %arrayidx5, %struct.datapartition* %arrayidx64) #7
  %len246 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 3
  %79 = load i32* %len246, align 4, !tbaa !3
  %arrayidx247 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %80 = load i32* %arrayidx247, align 4, !tbaa !3
  %add248 = add nsw i32 %80, %79
  store i32 %add248, i32* %arrayidx247, align 4, !tbaa !3
  %81 = load i32* %len246, align 4, !tbaa !3
  %arrayidx5.sum740 = add i64 %idxprom4, 1
  %incdec.ptr251 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum740
  %82 = load i32* %currSEnr, align 4, !tbaa !3
  %inc253 = add nsw i32 %82, 1
  store i32 %inc253, i32* %currSEnr, align 4, !tbaa !3
  %83 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter254 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 27
  store i32 0, i32* %cod_counter254, align 4, !tbaa !3
  %MbaffFrameFlag255 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 90
  %84 = load i32* %MbaffFrameFlag255, align 4, !tbaa !3
  %notlhs = icmp eq i32 %84, 0
  %notrhs = icmp ne i32 %cond17, 0
  %or.cond749.not = or i1 %notrhs, %notlhs
  %tobool260 = icmp eq i32 %WriteFrameFieldMBInHeader.1, 0
  %or.cond750 = or i1 %or.cond749.not, %tobool260
  br i1 %or.cond750, label %if.end282, label %if.then261

if.then261:                                       ; preds = %if.then239
  %mb_field262 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %85 = load i32* %mb_field262, align 4, !tbaa !3
  %value1263 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum740, i32 1
  store i32 %85, i32* %value1263, align 4, !tbaa !3
  %type264 = getelementptr inbounds %struct.syntaxelement* %incdec.ptr251, i64 0, i32 0
  store i32 2, i32* %type264, align 4, !tbaa !3
  %mapping265 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum740, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping265, align 8, !tbaa !0
  %86 = load i32* %mb_field262, align 4, !tbaa !3
  %tobool267 = icmp ne i32 %86, 0
  %cond268 = zext i1 %tobool267 to i32
  %bitpattern269 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum740, i32 5
  store i32 %cond268, i32* %bitpattern269, align 4, !tbaa !3
  %len270 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum740, i32 3
  store i32 1, i32* %len270, align 4, !tbaa !3
  %bitstream271 = getelementptr inbounds %struct.datapartition* %arrayidx64, i64 0, i32 0
  %87 = load %struct.Bitstream** %bitstream271, align 8, !tbaa !0
  %call272 = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %incdec.ptr251, %struct.Bitstream* %87) #7
  %88 = load i32* %len270, align 4, !tbaa !3
  %89 = load i32* %arrayidx247, align 4, !tbaa !3
  %add275 = add nsw i32 %89, %88
  store i32 %add275, i32* %arrayidx247, align 4, !tbaa !3
  %90 = load i32* %len270, align 4, !tbaa !3
  %add277 = add nsw i32 %90, %81
  %incdec.ptr251.sum = add i64 %idxprom4, 2
  %incdec.ptr278 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %incdec.ptr251.sum
  %91 = load i32* %currSEnr, align 4, !tbaa !3
  %inc280 = add nsw i32 %91, 1
  store i32 %inc280, i32* %currSEnr, align 4, !tbaa !3
  %.pre770 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end282

if.end282:                                        ; preds = %if.then239, %if.then261
  %92 = phi %struct.ImageParameters* [ %.pre770, %if.then261 ], [ %83, %if.then239 ]
  %no_bits.2 = phi i32 [ %add277, %if.then261 ], [ %81, %if.then239 ]
  %currSE.2 = phi %struct.syntaxelement* [ %incdec.ptr278, %if.then261 ], [ %incdec.ptr251, %if.then239 ]
  %call283 = tail call i32 @MBType2Value(%struct.macroblock* %arrayidx) #8
  %value1284 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 0, i32 1
  store i32 %call283, i32* %value1284, align 4, !tbaa !3
  %type285 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 6
  %93 = load i32* %type285, align 4, !tbaa !3
  %cmp286 = icmp eq i32 %93, 1
  br i1 %cmp286, label %if.end290, label %if.then288

if.then288:                                       ; preds = %if.end282
  %dec = add nsw i32 %call283, -1
  store i32 %dec, i32* %value1284, align 4, !tbaa !3
  br label %if.end290

if.end290:                                        ; preds = %if.end282, %if.then288
  %mapping291 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping291, align 8, !tbaa !0
  %type292 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 0, i32 0
  store i32 2, i32* %type292, align 4, !tbaa !3
  %value2293 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 0, i32 2
  store i32 0, i32* %value2293, align 4, !tbaa !3
  %94 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement244, align 8, !tbaa !0
  %call295 = tail call i32 %94(%struct.syntaxelement* %currSE.2, %struct.datapartition* %arrayidx64) #7
  %len296 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 0, i32 3
  %95 = load i32* %len296, align 4, !tbaa !3
  %96 = load i32* %arrayidx247, align 4, !tbaa !3
  %add298 = add nsw i32 %96, %95
  store i32 %add298, i32* %arrayidx247, align 4, !tbaa !3
  %97 = load i32* %len296, align 4, !tbaa !3
  %add300 = add nsw i32 %97, %no_bits.2
  %incdec.ptr301 = getelementptr inbounds %struct.syntaxelement* %currSE.2, i64 1
  %98 = load i32* %currSEnr, align 4, !tbaa !3
  %inc303 = add nsw i32 %98, 1
  store i32 %inc303, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end348

if.else304:                                       ; preds = %land.lhs.true235, %lor.lhs.false231
  %cod_counter305 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 27
  %99 = load i32* %cod_counter305, align 4, !tbaa !3
  %inc306 = add nsw i32 %99, 1
  store i32 %inc306, i32* %cod_counter305, align 4, !tbaa !3
  %num_blk8x8_uv760 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %100 = load i32* %num_blk8x8_uv760, align 4, !tbaa !3
  %add307761 = add nsw i32 %100, 4
  %cmp308762 = icmp sgt i32 %add307761, 0
  br i1 %cmp308762, label %for.cond310.preheader.lr.ph, label %for.end324

for.cond310.preheader.lr.ph:                      ; preds = %if.else304
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 28
  %101 = load i32**** %nz_coeff, align 8, !tbaa !0
  br label %for.cond310.preheader

for.cond310.preheader:                            ; preds = %for.cond310.preheader.lr.ph, %for.inc322
  %indvars.iv768 = phi i64 [ 0, %for.cond310.preheader.lr.ph ], [ %indvars.iv.next769, %for.inc322 ]
  br label %for.body313

for.body313:                                      ; preds = %for.body313, %for.cond310.preheader
  %indvars.iv764 = phi i64 [ 0, %for.cond310.preheader ], [ %indvars.iv.next765, %for.body313 ]
  %102 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom317 = sext i32 %102 to i64
  %arrayidx318 = getelementptr inbounds i32*** %101, i64 %idxprom317
  %103 = load i32*** %arrayidx318, align 8, !tbaa !0
  %arrayidx319 = getelementptr inbounds i32** %103, i64 %indvars.iv764
  %104 = load i32** %arrayidx319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %104, i64 %indvars.iv768
  store i32 0, i32* %arrayidx320, align 4, !tbaa !3
  %indvars.iv.next765 = add i64 %indvars.iv764, 1
  %lftr.wideiv766 = trunc i64 %indvars.iv.next765 to i32
  %exitcond767 = icmp eq i32 %lftr.wideiv766, 4
  br i1 %exitcond767, label %for.inc322, label %for.body313

for.inc322:                                       ; preds = %for.body313
  %indvars.iv.next769 = add i64 %indvars.iv768, 1
  %105 = load i32* %num_blk8x8_uv760, align 4, !tbaa !3
  %106 = add nsw i32 %105, 3
  %107 = trunc i64 %indvars.iv768 to i32
  %cmp308 = icmp slt i32 %107, %106
  br i1 %cmp308, label %for.cond310.preheader, label %for.end324

for.end324:                                       ; preds = %for.inc322, %if.else304
  %108 = load i32* %current_mb_nr, align 4, !tbaa !3
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 4
  %109 = load i32* %total_number_mb, align 4, !tbaa !3
  %cmp326 = icmp eq i32 %108, %109
  br i1 %cmp326, label %if.then328, label %if.end348

if.then328:                                       ; preds = %for.end324
  %110 = load i32* %cod_counter305, align 4, !tbaa !3
  %value1330 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 1
  store i32 %110, i32* %value1330, align 4, !tbaa !3
  %value2331 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 2
  store i32 0, i32* %value2331, align 4, !tbaa !3
  %mapping332 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping332, align 8, !tbaa !0
  %type333 = getelementptr inbounds %struct.syntaxelement* %arrayidx5, i64 0, i32 0
  store i32 2, i32* %type333, align 4, !tbaa !3
  %writeSyntaxElement334 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom63, i32 2
  %111 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement334, align 8, !tbaa !0
  %call335 = tail call i32 %111(%struct.syntaxelement* %arrayidx5, %struct.datapartition* %arrayidx64) #7
  %len336 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom4, i32 3
  %112 = load i32* %len336, align 4, !tbaa !3
  %arrayidx337 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %113 = load i32* %arrayidx337, align 4, !tbaa !3
  %add338 = add nsw i32 %113, %112
  store i32 %add338, i32* %arrayidx337, align 4, !tbaa !3
  %114 = load i32* %len336, align 4, !tbaa !3
  %arrayidx5.sum = add i64 %idxprom4, 1
  %incdec.ptr341 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx5.sum
  %115 = load i32* %currSEnr, align 4, !tbaa !3
  %inc343 = add nsw i32 %115, 1
  store i32 %inc343, i32* %currSEnr, align 4, !tbaa !3
  %116 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter344 = getelementptr inbounds %struct.ImageParameters* %116, i64 0, i32 27
  store i32 0, i32* %cod_counter344, align 4, !tbaa !3
  br label %if.end348

if.end348:                                        ; preds = %for.end324, %land.lhs.true207, %if.then211, %lor.lhs.false203, %if.then328, %if.end290, %if.end109
  %no_bits.3 = phi i32 [ %add116, %if.end109 ], [ %add222, %if.then211 ], [ %no_bits.1, %land.lhs.true207 ], [ %no_bits.1, %lor.lhs.false203 ], [ %add300, %if.end290 ], [ %114, %if.then328 ], [ 0, %for.end324 ]
  %currSE.3 = phi %struct.syntaxelement* [ %incdec.ptr117, %if.end109 ], [ %incdec.ptr223, %if.then211 ], [ %currSE.1, %land.lhs.true207 ], [ %currSE.1, %lor.lhs.false203 ], [ %incdec.ptr301, %if.end290 ], [ %incdec.ptr341, %if.then328 ], [ %arrayidx5, %for.end324 ]
  %117 = load i32* %mb_type, align 4, !tbaa !3
  %cmp350 = icmp eq i32 %117, 0
  br i1 %cmp350, label %land.lhs.true352, label %land.end360

land.lhs.true352:                                 ; preds = %if.end348
  %118 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type353 = getelementptr inbounds %struct.ImageParameters* %118, i64 0, i32 6
  %119 = load i32* %type353, align 4, !tbaa !3
  %cmp354 = icmp eq i32 %119, 1
  br i1 %cmp354, label %land.rhs356, label %if.end427.thread

if.end427.thread:                                 ; preds = %land.lhs.true352
  %NoMbPartLessThan8x8Flag785 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 33
  store i32 1, i32* %NoMbPartLessThan8x8Flag785, align 4, !tbaa !3
  br label %if.end469

land.rhs356:                                      ; preds = %land.lhs.true352
  %120 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %120, i64 0, i32 27
  %121 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %lnot358 = icmp eq i32 %121, 0
  br label %land.end360

land.end360:                                      ; preds = %land.rhs356, %if.end348
  %122 = phi i1 [ false, %if.end348 ], [ %lnot358, %land.rhs356 ]
  %123 = zext i1 %122 to i32
  %cond362 = xor i32 %123, 1
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 33
  store i32 %cond362, i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  %cmp364 = icmp eq i32 %117, 8
  br i1 %cmp364, label %if.then366, label %if.end427

if.then366:                                       ; preds = %land.end360
  %124 = load i32* %arrayidx62, align 4, !tbaa !3
  %idxprom368 = sext i32 %124 to i64
  %125 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx370 = getelementptr inbounds %struct.datapartition* %125, i64 %idxprom368
  %writeSyntaxElement391 = getelementptr inbounds %struct.datapartition* %125, i64 %idxprom368, i32 2
  %arrayidx394 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  br label %for.body374

for.body374:                                      ; preds = %lor.end415, %if.then366
  %indvars.iv = phi i64 [ 0, %if.then366 ], [ %indvars.iv.next, %lor.end415 ]
  %currSE.4757 = phi %struct.syntaxelement* [ %currSE.3, %if.then366 ], [ %incdec.ptr398, %lor.end415 ]
  %no_bits.4756 = phi i32 [ %no_bits.3, %if.then366 ], [ %add397, %lor.end415 ]
  %126 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode375 = getelementptr inbounds %struct.InputParameters* %126, i64 0, i32 59
  %127 = load i32* %symbol_mode375, align 4, !tbaa !3
  %cmp376 = icmp eq i32 %127, 0
  br i1 %cmp376, label %if.then378, label %if.else380

if.then378:                                       ; preds = %for.body374
  %mapping379 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping379, align 8, !tbaa !0
  br label %if.end382

if.else380:                                       ; preds = %for.body374
  %writing381 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeB8_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing381, align 8, !tbaa !0
  br label %if.end382

if.end382:                                        ; preds = %if.else380, %if.then378
  %arrayidx384 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv
  %128 = load i32* %arrayidx384, align 4, !tbaa !3
  %129 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type.i = getelementptr inbounds %struct.ImageParameters* %129, i64 0, i32 6
  %130 = load i32* %type.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %130, 1
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end382
  %sub.i = add nsw i32 %128, -4
  br label %B8Mode2Value.exit

if.else.i:                                        ; preds = %if.end382
  %arrayidx386 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv
  %131 = load i32* %arrayidx386, align 4, !tbaa !3
  %idxprom.i = sext i32 %128 to i64
  %arrayidx.i = getelementptr inbounds [8 x i32]* @B8Mode2Value.b8start, i64 0, i64 %idxprom.i
  %132 = load i32* %arrayidx.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [8 x i32]* @B8Mode2Value.b8inc, i64 0, i64 %idxprom.i
  %133 = load i32* %arrayidx2.i, align 4, !tbaa !3
  %mul.i = mul nsw i32 %133, %131
  %add.i = add nsw i32 %mul.i, %132
  br label %B8Mode2Value.exit

B8Mode2Value.exit:                                ; preds = %if.then.i, %if.else.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %if.else.i ]
  %value1388 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 1
  store i32 %retval.0.i, i32* %value1388, align 4, !tbaa !3
  %value2389 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 2
  store i32 0, i32* %value2389, align 4, !tbaa !3
  %type390 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 0
  store i32 2, i32* %type390, align 4, !tbaa !3
  %134 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement391, align 8, !tbaa !0
  %call392 = tail call i32 %134(%struct.syntaxelement* %currSE.4757, %struct.datapartition* %arrayidx370) #7
  %len393 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 0, i32 3
  %135 = load i32* %len393, align 4, !tbaa !3
  %136 = load i32* %arrayidx394, align 4, !tbaa !3
  %add395 = add nsw i32 %136, %135
  store i32 %add395, i32* %arrayidx394, align 4, !tbaa !3
  %137 = load i32* %len393, align 4, !tbaa !3
  %add397 = add nsw i32 %137, %no_bits.4756
  %incdec.ptr398 = getelementptr inbounds %struct.syntaxelement* %currSE.4757, i64 1
  %138 = load i32* %currSEnr, align 4, !tbaa !3
  %inc400 = add nsw i32 %138, 1
  store i32 %inc400, i32* %currSEnr, align 4, !tbaa !3
  %139 = load i32* %arrayidx384, align 4, !tbaa !3
  %cmp404 = icmp eq i32 %139, 0
  br i1 %cmp404, label %land.lhs.true406, label %lor.rhs409

land.lhs.true406:                                 ; preds = %B8Mode2Value.exit
  %140 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag407 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %140, i64 0, i32 27
  %141 = load i32* %direct_8x8_inference_flag407, align 4, !tbaa !1
  %tobool408 = icmp eq i32 %141, 0
  br i1 %tobool408, label %lor.rhs409, label %lor.end415

lor.rhs409:                                       ; preds = %land.lhs.true406, %B8Mode2Value.exit
  %cmp413 = icmp eq i32 %139, 4
  br label %lor.end415

lor.end415:                                       ; preds = %land.lhs.true406, %lor.rhs409
  %142 = phi i1 [ true, %land.lhs.true406 ], [ %cmp413, %lor.rhs409 ]
  %lor.ext416 = zext i1 %142 to i32
  %143 = load i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  %and = and i32 %143, %lor.ext416
  store i32 %and, i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end420, label %for.body374

for.end420:                                       ; preds = %lor.end415
  %call421 = tail call i32 @writeMotionInfo2NAL() #8
  %add422 = add nsw i32 %call421, %add397
  %144 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom424 = sext i32 %144 to i64
  %145 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx426 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 52, i64 %idxprom424
  %.pr = load i32* %mb_type, align 4, !tbaa !3
  br label %if.end427

if.end427:                                        ; preds = %for.end420, %land.end360
  %146 = phi i32 [ %.pr, %for.end420 ], [ %117, %land.end360 ]
  %dataPart.0 = phi %struct.datapartition* [ %arrayidx370, %for.end420 ], [ %arrayidx64, %land.end360 ]
  %no_bits.5 = phi i32 [ %add422, %for.end420 ], [ %no_bits.3, %land.end360 ]
  %currSE.5 = phi %struct.syntaxelement* [ %arrayidx426, %for.end420 ], [ %currSE.3, %land.end360 ]
  switch i32 %146, label %if.end469 [
    i32 13, label %land.lhs.true435
    i32 9, label %land.lhs.true435
  ]

land.lhs.true435:                                 ; preds = %if.end427, %if.end427
  %147 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %147, i64 0, i32 123
  %148 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool436 = icmp eq i32 %148, 0
  br i1 %tobool436, label %if.end469, label %if.then437

if.then437:                                       ; preds = %land.lhs.true435
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %149 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %value1438 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 1
  store i32 %149, i32* %value1438, align 4, !tbaa !3
  %type439 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 0
  store i32 20, i32* %type439, align 4, !tbaa !3
  %symbol_mode440 = getelementptr inbounds %struct.InputParameters* %147, i64 0, i32 59
  %150 = load i32* %symbol_mode440, align 4, !tbaa !3
  %cmp441 = icmp eq i32 %150, 0
  br i1 %cmp441, label %if.then443, label %if.else445

if.then443:                                       ; preds = %if.then437
  %mapping444 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping444, align 8, !tbaa !0
  br label %if.end447

if.else445:                                       ; preds = %if.then437
  %writing446 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_transform_size_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing446, align 8, !tbaa !0
  br label %if.end447

if.end447:                                        ; preds = %if.else445, %if.then443
  %151 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode448 = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 59
  %152 = load i32* %symbol_mode448, align 4, !tbaa !3
  %cmp449 = icmp eq i32 %152, 0
  br i1 %cmp449, label %if.then451, label %if.else457

if.then451:                                       ; preds = %if.end447
  %153 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %bitpattern453 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 5
  store i32 %153, i32* %bitpattern453, align 4, !tbaa !3
  %len454 = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 3
  store i32 1, i32* %len454, align 4, !tbaa !3
  %bitstream455 = getelementptr inbounds %struct.datapartition* %dataPart.0, i64 0, i32 0
  %154 = load %struct.Bitstream** %bitstream455, align 8, !tbaa !0
  %call456 = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %currSE.5, %struct.Bitstream* %154) #7
  br label %if.end460

if.else457:                                       ; preds = %if.end447
  %writeSyntaxElement458 = getelementptr inbounds %struct.datapartition* %dataPart.0, i64 0, i32 2
  %155 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement458, align 8, !tbaa !0
  %call459 = tail call i32 %155(%struct.syntaxelement* %currSE.5, %struct.datapartition* %dataPart.0) #7
  %len461.pre = getelementptr inbounds %struct.syntaxelement* %currSE.5, i64 0, i32 3
  br label %if.end460

if.end460:                                        ; preds = %if.else457, %if.then451
  %len461.pre-phi = phi i32* [ %len461.pre, %if.else457 ], [ %len454, %if.then451 ]
  %156 = load i32* %len461.pre-phi, align 4, !tbaa !3
  %arrayidx462 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %157 = load i32* %arrayidx462, align 4, !tbaa !3
  %add463 = add nsw i32 %157, %156
  store i32 %add463, i32* %arrayidx462, align 4, !tbaa !3
  %158 = load i32* %len461.pre-phi, align 4, !tbaa !3
  %add465 = add nsw i32 %158, %no_bits.5
  %159 = load i32* %currSEnr, align 4, !tbaa !3
  %inc468 = add nsw i32 %159, 1
  store i32 %inc468, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end469

if.end469:                                        ; preds = %if.end427.thread, %if.end427, %land.lhs.true435, %if.end460
  %no_bits.6 = phi i32 [ %add465, %if.end460 ], [ %no_bits.5, %land.lhs.true435 ], [ %no_bits.5, %if.end427 ], [ %no_bits.3, %if.end427.thread ]
  %call470 = tail call i32 @writeIntra4x4Modes(i32 -1) #8
  %add471 = add nsw i32 %call470, %no_bits.6
  %160 = load i32* %IntraChromaPredModeFlag, align 4, !tbaa !3
  %tobool473 = icmp eq i32 %160, 0
  br i1 %tobool473, label %if.else480, label %land.lhs.true474

land.lhs.true474:                                 ; preds = %if.end469
  %161 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 159
  %162 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp475 = icmp eq i32 %162, 0
  br i1 %cmp475, label %if.else480, label %if.then477

if.then477:                                       ; preds = %land.lhs.true474
  %call478 = tail call i32 @writeChromaIntraPredMode() #8
  %add479 = add nsw i32 %call478, %add471
  br label %if.end484

if.else480:                                       ; preds = %land.lhs.true474, %if.end469
  %tobool481 = icmp eq i32 %rdopt, 0
  br i1 %tobool481, label %if.then482, label %if.end484

if.then482:                                       ; preds = %if.else480
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  store i32 0, i32* %c_ipred_mode, align 4, !tbaa !3
  br label %if.end484

if.end484:                                        ; preds = %if.else480, %if.then482, %if.then477
  %no_bits.7 = phi i32 [ %add479, %if.then477 ], [ %add471, %if.else480 ], [ %add471, %if.then482 ]
  %163 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %163, label %if.then492 [
    i32 0, label %if.end495
    i32 8, label %if.end495
  ]

if.then492:                                       ; preds = %if.end484
  %call493 = tail call i32 @writeMotionInfo2NAL() #8
  %add494 = add nsw i32 %call493, %no_bits.7
  %.pr751 = load i32* %mb_type, align 4, !tbaa !3
  br label %if.end495

if.end495:                                        ; preds = %if.end484, %if.end484, %if.then492
  %164 = phi i32 [ %163, %if.end484 ], [ %163, %if.end484 ], [ %.pr751, %if.then492 ]
  %no_bits.8 = phi i32 [ %no_bits.7, %if.end484 ], [ %no_bits.7, %if.end484 ], [ %add494, %if.then492 ]
  %cmp497 = icmp eq i32 %164, 0
  br i1 %cmp497, label %lor.lhs.false499, label %if.then507

lor.lhs.false499:                                 ; preds = %if.end495
  %165 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type500 = getelementptr inbounds %struct.ImageParameters* %165, i64 0, i32 6
  %166 = load i32* %type500, align 4, !tbaa !3
  %cmp501 = icmp eq i32 %166, 1
  br i1 %cmp501, label %land.lhs.true503, label %if.end517

land.lhs.true503:                                 ; preds = %lor.lhs.false499
  %cbp504 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %167 = load i32* %cbp504, align 4, !tbaa !3
  %cmp505 = icmp eq i32 %167, 0
  br i1 %cmp505, label %if.end517, label %if.then507

if.then507:                                       ; preds = %land.lhs.true503, %if.end495
  %call508 = tail call i32 @writeCBPandLumaCoeff() #8
  %add509 = add nsw i32 %call508, %no_bits.8
  %168 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format510 = getelementptr inbounds %struct.ImageParameters* %168, i64 0, i32 159
  %169 = load i32* %yuv_format510, align 4, !tbaa !3
  %cmp511 = icmp eq i32 %169, 0
  br i1 %cmp511, label %if.end517, label %if.then513

if.then513:                                       ; preds = %if.then507
  %call514 = tail call i32 @writeChromaCoeff() #8
  %add515 = add nsw i32 %call514, %add509
  br label %if.end517

if.end517:                                        ; preds = %if.then507, %land.lhs.true503, %if.then513, %lor.lhs.false499
  %no_bits.9 = phi i32 [ %add515, %if.then513 ], [ %add509, %if.then507 ], [ %no_bits.8, %land.lhs.true503 ], [ %no_bits.8, %lor.lhs.false499 ]
  ret i32 %no_bits.9
}

; Function Attrs: optsize
declare void @writeFieldModeInfo_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement*, %struct.Bitstream*) #1

; Function Attrs: optsize
declare void @writeMB_typeInfo_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @field_flag_inference(...) #1

; Function Attrs: optsize
declare void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @writeB8_typeInfo_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @writeMB_transform_size_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define void @write_terminating_bit(i16 signext %bit) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 61
  %1 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom
  %2 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds i32* %2, i64 2
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 50
  %5 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %5, i64 0, i32 6
  %6 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %6, i64 %idxprom2, i32 0
  %7 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %write_flag = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 10
  store i32 1, i32* %write_flag, align 4, !tbaa !3
  %ee_cabac = getelementptr inbounds %struct.datapartition* %6, i64 %idxprom2, i32 1
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %ee_cabac, i16 signext %bit) #7
  ret void
}

; Function Attrs: optsize
declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: nounwind optsize uwtable
define i32 @writeChromaIntraPredMode() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %8 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mapping = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCIPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  %9 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %9, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 4, i32* %type, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds i32* %7, i64 4
  %10 = load i32* %arrayidx5, align 4, !tbaa !3
  %idxprom6 = sext i32 %10 to i64
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %11 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds %struct.datapartition* %11, i64 %idxprom6
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %11, i64 %idxprom6, i32 2
  %12 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call = tail call i32 %12(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx7) #7
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %13 = load i32* %len, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 6
  %14 = load i32* %arrayidx8, align 4, !tbaa !3
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %arrayidx8, align 4, !tbaa !3
  %15 = load i32* %len, align 4, !tbaa !3
  %16 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  ret i32 %15
}

; Function Attrs: optsize
declare void @writeCIPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define void @set_last_dquant() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %3 = load i32* %mb_type, align 4, !tbaa !3
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %lor.lhs.false17, label %if.then

lor.lhs.false17:                                  ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %4, 1
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %lor.lhs.false17
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %5 = load i32* %cbp, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %if.end, label %if.then

if.then:                                          ; preds = %entry, %land.lhs.true19
  %delta_qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 2
  %6 = load i32* %delta_qp, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false17, %land.lhs.true19, %if.then
  %storemerge = phi i32 [ %6, %if.then ], [ 0, %land.lhs.true19 ], [ 0, %lor.lhs.false17 ]
  store i32 %storemerge, i32* @last_dquant, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_one_macroblock(i32 %eos_bit) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @intras, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %3 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %3, label %if.end9 [
    i32 9, label %if.then8
    i32 10, label %if.then8
    i32 13, label %if.then8
  ]

if.then8:                                         ; preds = %if.end, %if.end, %if.end
  %4 = load i32* @intras, align 4, !tbaa !3
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @intras, align 4, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then8
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %6 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %6, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %7 = load i32* %current_mb_nr, align 4, !tbaa !3
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %8 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %start_mb_nr = getelementptr inbounds %struct.Slice* %8, i64 0, i32 3
  %9 = load i32* %start_mb_nr, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %7, %9
  %tobool = icmp eq i32 %eos_bit, 0
  %or.cond = or i1 %cmp12, %tobool
  br i1 %or.cond, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %partition_mode.i = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %10 = load i32* %partition_mode.i, align 4, !tbaa !3
  %idxprom.i = sext i32 %10 to i64
  %arrayidx.i = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i
  %11 = load i32** %arrayidx.i, align 8, !tbaa !0
  %arrayidx1.i = getelementptr inbounds i32* %11, i64 2
  %12 = load i32* %arrayidx1.i, align 4, !tbaa !3
  %idxprom2.i = sext i32 %12 to i64
  %partArr.i = getelementptr inbounds %struct.Slice* %8, i64 0, i32 6
  %13 = load %struct.datapartition** %partArr.i, align 8, !tbaa !0
  %bitstream.i = getelementptr inbounds %struct.datapartition* %13, i64 %idxprom2.i, i32 0
  %14 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !0
  %write_flag.i = getelementptr inbounds %struct.Bitstream* %14, i64 0, i32 10
  store i32 1, i32* %write_flag.i, align 4, !tbaa !3
  %ee_cabac.i = getelementptr inbounds %struct.datapartition* %13, i64 %idxprom2.i, i32 1
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %ee_cabac.i, i16 signext 0) #7
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.then14, %if.end9
  store i32 1, i32* @cabac_encoding, align 4, !tbaa !3
  %call = tail call i32 @writeMBLayer(i32 0) #8
  %15 = load i32* %mb_type, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %lor.lhs.false18, label %if.end38

lor.lhs.false18:                                  ; preds = %if.end15
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 6
  %17 = load i32* %type, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %17, 1
  br i1 %cmp19, label %land.lhs.true20, label %for.cond.preheader

land.lhs.true20:                                  ; preds = %lor.lhs.false18
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %18 = load i32* %cbp, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %for.cond.preheader, label %if.end38

for.cond.preheader:                               ; preds = %land.lhs.true20, %lor.lhs.false18
  %num_blk8x8_uv122 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 157
  %19 = load i32* %num_blk8x8_uv122, align 4, !tbaa !3
  %add123 = add nsw i32 %19, 4
  %cmp23124 = icmp sgt i32 %add123, 0
  br i1 %cmp23124, label %for.cond24.preheader.lr.ph, label %if.end38

for.cond24.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %current_mb_nr29 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 3
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 28
  %20 = load i32**** %nz_coeff, align 8, !tbaa !0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.cond24.preheader.lr.ph, %for.inc35
  %indvars.iv126 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %indvars.iv.next127, %for.inc35 ]
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.cond24.preheader
  %indvars.iv = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next, %for.body26 ]
  %21 = load i32* %current_mb_nr29, align 4, !tbaa !3
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds i32*** %20, i64 %idxprom30
  %22 = load i32*** %arrayidx31, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32** %22, i64 %indvars.iv
  %23 = load i32** %arrayidx32, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %23, i64 %indvars.iv126
  store i32 0, i32* %arrayidx33, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc35, label %for.body26

for.inc35:                                        ; preds = %for.body26
  %indvars.iv.next127 = add i64 %indvars.iv126, 1
  %24 = load i32* %num_blk8x8_uv122, align 4, !tbaa !3
  %25 = add nsw i32 %24, 3
  %26 = trunc i64 %indvars.iv126 to i32
  %cmp23 = icmp slt i32 %26, %25
  br i1 %cmp23, label %for.cond24.preheader, label %if.end38

if.end38:                                         ; preds = %for.cond.preheader, %for.inc35, %land.lhs.true20, %if.end15
  tail call void @set_last_dquant() #8
  %27 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 24
  %28 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool39 = icmp eq i32 %28, 0
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %tobool39, label %if.end60, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.end38
  %type41 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 6
  %29 = load i32* %type41, align 4, !tbaa !3
  %switch = icmp ult i32 %29, 2
  br i1 %switch, label %if.then46, label %if.end60

if.then46:                                        ; preds = %land.lhs.true40
  %30 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %30, label %if.then55 [
    i32 9, label %if.end60
    i32 10, label %if.end60
    i32 13, label %if.end60
  ]

if.then55:                                        ; preds = %if.then46
  %current_mb_nr56 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 3
  %31 = load i32* %current_mb_nr56, align 4, !tbaa !3
  %idxprom57 = sext i32 %31 to i64
  %intra_block = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 54
  %32 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i32* %32, i64 %idxprom57
  store i32 0, i32* %arrayidx58, align 4, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end38, %land.lhs.true40, %if.then46, %if.then46, %if.then46, %if.then55
  %arrayidx61 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %33 = load i32* %arrayidx61, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  %34 = load i32* %arrayidx62, align 4, !tbaa !3
  %add63 = add nsw i32 %34, %33
  %arrayidx64 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 3
  %35 = load i32* %arrayidx64, align 4, !tbaa !3
  %add65 = add nsw i32 %add63, %35
  %arrayidx66 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 4
  %36 = load i32* %arrayidx66, align 4, !tbaa !3
  %add67 = add nsw i32 %add65, %36
  %arrayidx68 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 7
  %37 = load i32* %arrayidx68, align 4, !tbaa !3
  %add69 = add nsw i32 %add67, %37
  %arrayidx70 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 6
  %38 = load i32* %arrayidx70, align 4, !tbaa !3
  %add71 = add nsw i32 %add69, %38
  %arrayidx72 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 1
  store i32 %add71, i32* %arrayidx72, align 4, !tbaa !3
  %add75 = add nsw i32 %35, %33
  %add77 = add nsw i32 %add75, %36
  %add79 = add nsw i32 %add77, %37
  %NumberofMBHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 125
  store i32 %add79, i32* %NumberofMBHeaderBits, align 4, !tbaa !3
  %39 = load i32* %arrayidx62, align 4, !tbaa !3
  %40 = load i32* %arrayidx70, align 4, !tbaa !3
  %add82 = add nsw i32 %40, %39
  %NumberofMBTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 124
  store i32 %add82, i32* %NumberofMBTextureBits, align 4, !tbaa !3
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 120
  %41 = load i32* %NumberofTextureBits, align 4, !tbaa !3
  %add84 = add nsw i32 %41, %add82
  store i32 %add84, i32* %NumberofTextureBits, align 4, !tbaa !3
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 119
  %42 = load i32* %NumberofHeaderBits, align 4, !tbaa !3
  %add86 = add nsw i32 %42, %add79
  store i32 %add86, i32* %NumberofHeaderBits, align 4, !tbaa !3
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %43 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %44 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp87 = icmp slt i32 %43, %44
  br i1 %cmp87, label %if.then88, label %if.end93

if.then88:                                        ; preds = %if.end60
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 121
  %45 = load i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %add90 = add nsw i32 %45, %add79
  store i32 %add90, i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 122
  %46 = load i32* %NumberofBasicUnitTextureBits, align 4, !tbaa !3
  %add92 = add nsw i32 %46, %add82
  store i32 %add92, i32* %NumberofBasicUnitTextureBits, align 4, !tbaa !3
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %if.end60
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 138
  %47 = load i32* %NumberofCodedMacroBlocks, align 4, !tbaa !3
  %inc94 = add nsw i32 %47, 1
  store i32 %inc94, i32* %NumberofCodedMacroBlocks, align 4, !tbaa !3
  %48 = load i32* %arrayidx72, align 4, !tbaa !3
  %49 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_slice = getelementptr inbounds %struct.StatParameters* %49, i64 0, i32 6
  %50 = load i32* %bit_slice, align 4, !tbaa !3
  %add96 = add nsw i32 %50, %48
  store i32 %add96, i32* %bit_slice, align 4, !tbaa !3
  store i32 0, i32* @cabac_encoding, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @BType2CtxRef(i32 %btype) #5 {
entry:
  %not.cmp = icmp sgt i32 %btype, 3
  %. = zext i1 %not.cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeReferenceFrame(i32 %mode, i32 %i, i32 %j, i32 %fwd_flag, i32 %ref) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %8 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %9 = load i32* %mb_field, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %9, 0
  br i1 %tobool5, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem76 = shl i32 %1, 1
  %10 = and i32 %rem76, 2
  %11 = add i32 %10, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond8 = phi i32 [ %11, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %tobool9 = icmp eq i32 %fwd_flag, 0
  %add1473 = zext i1 %tobool9 to i32
  %idxprom1175.pn.in = or i32 %cond8, %add1473
  %idxprom1175.pn = zext i32 %idxprom1175.pn.in to i64
  %cond18.in = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %idxprom1175.pn
  %cond18 = load i32* %cond18.in, align 4
  switch i32 %cond18, label %if.end21 [
    i32 1, label %return
    i32 2, label %if.then20
  ]

if.then20:                                        ; preds = %cond.end
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.then20
  %flag_mode.0 = phi i32 [ 1, %if.then20 ], [ 0, %cond.end ]
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %ref, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 3, i32* %type, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %7, i64 3
  %12 = load i32* %arrayidx24, align 4, !tbaa !3
  %idxprom25 = sext i32 %12 to i64
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %13 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds %struct.datapartition* %13, i64 %idxprom25
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %14 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %14, 0
  br i1 %cmp27, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.end21
  %tobool29 = icmp eq i32 %flag_mode.0, 0
  br i1 %tobool29, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then28
  %sub = sub nsw i32 1, %ref
  %bitpattern = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 5
  store i32 %sub, i32* %bitpattern, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  store i32 1, i32* %len, align 4, !tbaa !3
  %bitstream = getelementptr inbounds %struct.datapartition* %arrayidx26, i64 0, i32 0
  %15 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %call = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %arrayidx2, %struct.Bitstream* %15) #7
  br label %if.end41

if.else:                                          ; preds = %if.then28
  %mapping = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %13, i64 %idxprom25, i32 2
  %16 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call32 = tail call i32 %16(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx26) #7
  br label %if.end41

if.else34:                                        ; preds = %if.end21
  %not.cmp.i = icmp sgt i32 %mode, 3
  %..i = zext i1 %not.cmp.i to i32
  %context = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 6
  store i32 %..i, i32* %context, align 4, !tbaa !3
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18
  store i32 %i, i32* %subblock_x, align 4, !tbaa !3
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19
  store i32 %j, i32* %subblock_y, align 4, !tbaa !3
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRefFrame_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  store i32 %add1473, i32* %value2, align 4, !tbaa !3
  %writeSyntaxElement39 = getelementptr inbounds %struct.datapartition* %13, i64 %idxprom25, i32 2
  %17 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement39, align 8, !tbaa !0
  %call40 = tail call i32 %17(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx26) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %if.else, %if.else34
  %len42 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %18 = load i32* %len42, align 4, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 3
  %19 = load i32* %arrayidx43, align 4, !tbaa !3
  %add44 = add nsw i32 %19, %18
  store i32 %add44, i32* %arrayidx43, align 4, !tbaa !3
  %20 = load i32* %len42, align 4, !tbaa !3
  %21 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %cond.end, %if.end41
  %retval.0 = phi i32 [ %20, %if.end41 ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @writeRefFrame_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @writeMotionVector8x8(i32 %i0, i32 %j0, i32 %i1, i32 %j1, i32 %refframe, i32 %list_idx, i32 %mv_mode) #0 {
entry:
  %idxprom = sext i32 %mv_mode to i64
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 21, i64 %idxprom, i64 0
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 21, i64 %idxprom, i64 1
  %2 = load i32* %arrayidx5, align 4, !tbaa !3
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom6 = sext i32 %4 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 51
  %5 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom6, i32 0
  %6 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 52, i64 %idxprom8
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 50
  %7 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 61
  %8 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom10
  %9 = load i32** %arrayidx11, align 8, !tbaa !0
  %all_mv12 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 71
  %10 = load i16******* %all_mv12, align 8, !tbaa !0
  %pred_mv13 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 70
  %11 = load i16******* %pred_mv13, align 8, !tbaa !0
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom6, i32 34
  %12 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool = icmp eq i32 %12, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx14 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom6, i32 15, i64 0
  %13 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp = icmp eq i32 %13, 2
  %cmp16 = icmp eq i32 %mv_mode, 1
  %or.cond = and i1 %cmp, %cmp16
  %cmp18 = icmp eq i32 %refframe, 0
  %or.cond145 = and i1 %or.cond, %cmp18
  br i1 %or.cond145, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmp20 = icmp eq i32 %12, 1
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 73
  %cond.in = select i1 %cmp20, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond = load i16******* %cond.in, align 8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %all_mv.0 = phi i16****** [ %cond, %if.then ], [ %10, %land.lhs.true ], [ %10, %entry ]
  %cmp21158 = icmp slt i32 %j0, %j1
  br i1 %cmp21158, label %for.cond22.preheader.lr.ph, label %for.end96

for.cond22.preheader.lr.ph:                       ; preds = %if.end
  %cmp23153 = icmp slt i32 %i0, %i1
  %idxprom30 = sext i32 %refframe to i64
  %idxprom31 = sext i32 %list_idx to i64
  %cmp54148 = icmp sgt i32 %2, 0
  %arrayidx79 = getelementptr inbounds i32* %9, i64 5
  %partArr = getelementptr inbounds %struct.Slice* %7, i64 0, i32 6
  %arrayidx82 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom6, i32 5, i64 3
  %cmp58146 = icmp sgt i32 %1, 0
  %14 = sext i32 %i0 to i64
  %15 = sext i32 %1 to i64
  %16 = sext i32 %j0 to i64
  %17 = sext i32 %2 to i64
  br label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond22.preheader.lr.ph, %for.inc94
  %indvars.iv178 = phi i64 [ %16, %for.cond22.preheader.lr.ph ], [ %indvars.iv.next179, %for.inc94 ]
  %currSE.0160 = phi %struct.syntaxelement* [ %arrayidx9, %for.cond22.preheader.lr.ph ], [ %currSE.1.lcssa, %for.inc94 ]
  %rate.0159 = phi i32 [ 0, %for.cond22.preheader.lr.ph ], [ %rate.1.lcssa, %for.inc94 ]
  br i1 %cmp23153, label %for.cond25.preheader, label %for.inc94

for.cond25.preheader:                             ; preds = %for.cond22.preheader, %for.inc91
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.inc91 ], [ %14, %for.cond22.preheader ]
  %currSE.1155 = phi %struct.syntaxelement* [ %scevgep, %for.inc91 ], [ %currSE.0160, %for.cond22.preheader ]
  %rate.1154 = phi i32 [ %add85, %for.inc91 ], [ %rate.0159, %for.cond22.preheader ]
  %arrayidx34 = getelementptr inbounds i16****** %all_mv.0, i64 %indvars.iv176
  %arrayidx46 = getelementptr inbounds i16****** %11, i64 %indvars.iv176
  br label %for.body27

for.body27:                                       ; preds = %if.end78, %for.cond25.preheader
  %indvars.iv170 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next171, %if.end78 ]
  %currSE.2151 = phi %struct.syntaxelement* [ %currSE.1155, %for.cond25.preheader ], [ %incdec.ptr, %if.end78 ]
  %rate.2150 = phi i32 [ %rate.1154, %for.cond25.preheader ], [ %add85, %if.end78 ]
  %18 = load i16****** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i16***** %18, i64 %indvars.iv178
  %19 = load i16***** %arrayidx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i16**** %19, i64 %idxprom31
  %20 = load i16**** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16*** %20, i64 %idxprom30
  %21 = load i16*** %arrayidx37, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i16** %21, i64 %idxprom
  %22 = load i16** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i16* %22, i64 %indvars.iv170
  %23 = load i16* %arrayidx39, align 2, !tbaa !4
  %conv = sext i16 %23 to i32
  %24 = load i16****** %arrayidx46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i16***** %24, i64 %indvars.iv178
  %25 = load i16***** %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16**** %25, i64 %idxprom31
  %26 = load i16**** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16*** %26, i64 %idxprom30
  %27 = load i16*** %arrayidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i16** %27, i64 %idxprom
  %28 = load i16** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i16* %28, i64 %indvars.iv170
  %29 = load i16* %arrayidx51, align 2, !tbaa !4
  %conv52 = sext i16 %29 to i32
  %sub = sub nsw i32 %conv, %conv52
  br i1 %cmp54148, label %for.cond57.preheader, label %for.end72

for.cond57.preheader:                             ; preds = %for.body27, %for.inc70
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.inc70 ], [ 0, %for.body27 ]
  br i1 %cmp58146, label %for.body60.lr.ph, label %for.inc70

for.body60.lr.ph:                                 ; preds = %for.cond57.preheader
  %30 = add nsw i64 %indvars.iv165, %indvars.iv178
  br label %for.body60

for.body60:                                       ; preds = %for.body60, %for.body60.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body60.lr.ph ], [ %indvars.iv.next, %for.body60 ]
  %31 = add nsw i64 %indvars.iv, %indvars.iv176
  %arrayidx69 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom6, i32 9, i64 %idxprom31, i64 %30, i64 %31, i64 %indvars.iv170
  store i32 %sub, i32* %arrayidx69, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.inc70, label %for.body60

for.inc70:                                        ; preds = %for.body60, %for.cond57.preheader
  %indvars.iv.next166 = add i64 %indvars.iv165, 1
  %lftr.wideiv168 = trunc i64 %indvars.iv.next166 to i32
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %2
  br i1 %exitcond169, label %for.end72, label %for.cond57.preheader

for.end72:                                        ; preds = %for.inc70, %for.body27
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 1
  store i32 %sub, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 2
  store i32 0, i32* %value2, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 0
  store i32 5, i32* %type, align 4, !tbaa !3
  %32 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %32, i64 0, i32 59
  %33 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %33, 0
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %for.end72
  %mapping = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @se_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end78

if.else:                                          ; preds = %for.end72
  %34 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 18
  %35 = trunc i64 %indvars.iv176 to i32
  store i32 %35, i32* %subblock_x, align 4, !tbaa !3
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 19
  %36 = trunc i64 %indvars.iv178 to i32
  store i32 %36, i32* %subblock_y, align 4, !tbaa !3
  %37 = shl i64 %indvars.iv170, 1
  %38 = add nsw i64 %37, %idxprom31
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %value2, align 4, !tbaa !3
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMVD_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then75
  %40 = load i32* %arrayidx79, align 4, !tbaa !3
  %idxprom80 = sext i32 %40 to i64
  %41 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.datapartition* %41, i64 %idxprom80
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %41, i64 %idxprom80, i32 2
  %42 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call = tail call i32 %42(%struct.syntaxelement* %currSE.2151, %struct.datapartition* %arrayidx81) #7
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 0, i32 3
  %43 = load i32* %len, align 4, !tbaa !3
  %44 = load i32* %arrayidx82, align 4, !tbaa !3
  %add83 = add nsw i32 %44, %43
  store i32 %add83, i32* %arrayidx82, align 4, !tbaa !3
  %45 = load i32* %len, align 4, !tbaa !3
  %add85 = add nsw i32 %45, %rate.2150
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.2151, i64 1
  %46 = load i32* %currSEnr, align 4, !tbaa !3
  %inc87 = add nsw i32 %46, 1
  store i32 %inc87, i32* %currSEnr, align 4, !tbaa !3
  %indvars.iv.next171 = add i64 %indvars.iv170, 1
  %lftr.wideiv174 = trunc i64 %indvars.iv.next171 to i32
  %exitcond175 = icmp eq i32 %lftr.wideiv174, 2
  br i1 %exitcond175, label %for.inc91, label %for.body27

for.inc91:                                        ; preds = %if.end78
  %scevgep = getelementptr %struct.syntaxelement* %currSE.1155, i64 2
  %indvars.iv.next177 = add i64 %indvars.iv176, %15
  %47 = trunc i64 %indvars.iv.next177 to i32
  %cmp23 = icmp slt i32 %47, %i1
  br i1 %cmp23, label %for.cond25.preheader, label %for.inc94

for.inc94:                                        ; preds = %for.inc91, %for.cond22.preheader
  %currSE.1.lcssa = phi %struct.syntaxelement* [ %currSE.0160, %for.cond22.preheader ], [ %scevgep, %for.inc91 ]
  %rate.1.lcssa = phi i32 [ %rate.0159, %for.cond22.preheader ], [ %add85, %for.inc91 ]
  %indvars.iv.next179 = add i64 %indvars.iv178, %17
  %48 = trunc i64 %indvars.iv.next179 to i32
  %cmp21 = icmp slt i32 %48, %j1
  br i1 %cmp21, label %for.cond22.preheader, label %for.end96

for.end96:                                        ; preds = %for.inc94, %if.end
  %rate.0.lcssa = phi i32 [ 0, %if.end ], [ %rate.1.lcssa, %for.inc94 ]
  ret i32 %rate.0.lcssa
}

; Function Attrs: optsize
declare void @se_linfo(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @writeMVD_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @writeMotionInfo2NAL() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 1
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %4 = load i32* %mb_type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %4, 8
  %phitmp = sext i32 %4 to i64
  %.phitmp = select i1 %cmp1, i64 4, i64 %phitmp
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 20, i64 %.phitmp, i64 0
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %shr = ashr i32 %6, 2
  %arrayidx18 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 20, i64 %.phitmp, i64 1
  %7 = load i32* %arrayidx18, align 4, !tbaa !3
  %shr19 = ashr i32 %7, 2
  switch i32 %4, label %for.cond45.preheader [
    i32 9, label %if.end134
    i32 10, label %if.end134
    i32 13, label %if.end134
    i32 0, label %if.end134
    i32 8, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @ZeroRef(%struct.macroblock* undef) #8
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %for.cond45.preheader, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %8 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %8, 1
  %brmerge = or i1 %cmp38, %cmp
  br i1 %brmerge, label %for.cond45.preheader, label %for.cond155.preheader

for.cond45.preheader:                             ; preds = %lor.lhs.false, %entry, %lor.lhs.false37, %for.inc79
  %j0.0401 = phi i32 [ %add80, %for.inc79 ], [ 0, %lor.lhs.false37 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  %no_bits.0400 = phi i32 [ %no_bits.2, %for.inc79 ], [ 0, %lor.lhs.false37 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  br label %for.body48

for.body48:                                       ; preds = %for.cond45.preheader, %for.inc
  %i0.0399 = phi i32 [ 0, %for.cond45.preheader ], [ %add78, %for.inc ]
  %no_bits.1398 = phi i32 [ %no_bits.0400, %for.cond45.preheader ], [ %no_bits.2, %for.inc ]
  %div = sdiv i32 %i0.0399, 2
  %add = add nsw i32 %div, %j0.0401
  %idxprom49 = sext i32 %add to i64
  %arrayidx50 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom49
  %9 = load i32* %arrayidx50, align 4, !tbaa !3
  switch i32 %9, label %for.inc [
    i32 0, label %land.lhs.true59
    i32 2, label %land.lhs.true59
  ]

land.lhs.true59:                                  ; preds = %for.body48, %for.body48
  %arrayidx61 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom49
  %10 = load i32* %arrayidx61, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %10, 0
  br i1 %cmp62, label %for.inc, label %if.then64

if.then64:                                        ; preds = %land.lhs.true59
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 32
  %12 = load i32* %block_y, align 4, !tbaa !3
  %add68 = add nsw i32 %12, %j0.0401
  %idxprom69 = sext i32 %add68 to i64
  %block_x = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 31
  %13 = load i32* %block_x, align 4, !tbaa !3
  %add70 = add nsw i32 %13, %i0.0399
  %idxprom71 = sext i32 %add70 to i64
  %14 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %14, i64 0, i32 32
  %15 = load i16**** %ref_idx, align 8, !tbaa !0
  %16 = load i16*** %15, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i16** %16, i64 %idxprom71
  %17 = load i16** %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i16* %17, i64 %idxprom69
  %18 = load i16* %arrayidx74, align 2, !tbaa !4
  %conv75 = sext i16 %18 to i32
  %call76 = tail call i32 @writeReferenceFrame(i32 %10, i32 %i0.0399, i32 %j0.0401, i32 1, i32 %conv75) #8
  %add77 = add nsw i32 %call76, %no_bits.1398
  br label %for.inc

for.inc:                                          ; preds = %for.body48, %land.lhs.true59, %if.then64
  %no_bits.2 = phi i32 [ %add77, %if.then64 ], [ %no_bits.1398, %land.lhs.true59 ], [ %no_bits.1398, %for.body48 ]
  %add78 = add nsw i32 %i0.0399, %shr
  %cmp46 = icmp slt i32 %add78, 4
  br i1 %cmp46, label %for.body48, label %for.inc79

for.inc79:                                        ; preds = %for.inc
  %add80 = add nsw i32 %j0.0401, %shr19
  %cmp43 = icmp slt i32 %add80, 4
  br i1 %cmp43, label %for.cond45.preheader, label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %for.inc79, %for.inc130
  %j0.1397 = phi i32 [ %add131, %for.inc130 ], [ 0, %for.inc79 ]
  %no_bits.3396 = phi i32 [ %no_bits.5, %for.inc130 ], [ %no_bits.2, %for.inc79 ]
  br label %for.body89

for.body89:                                       ; preds = %for.cond86.preheader, %for.inc127
  %i0.1395 = phi i32 [ 0, %for.cond86.preheader ], [ %add128, %for.inc127 ]
  %no_bits.4394 = phi i32 [ %no_bits.3396, %for.cond86.preheader ], [ %no_bits.5, %for.inc127 ]
  %div90 = sdiv i32 %i0.1395, 2
  %add91 = add nsw i32 %div90, %j0.1397
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx94 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom92
  %19 = load i32* %arrayidx94, align 4, !tbaa !3
  %.off = add i32 %19, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true103, label %for.inc127

land.lhs.true103:                                 ; preds = %for.body89
  %arrayidx106 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom92
  %20 = load i32* %arrayidx106, align 4, !tbaa !3
  %cmp107 = icmp eq i32 %20, 0
  br i1 %cmp107, label %for.inc127, label %if.then109

if.then109:                                       ; preds = %land.lhs.true103
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y113 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 32
  %22 = load i32* %block_y113, align 4, !tbaa !3
  %add114 = add nsw i32 %22, %j0.1397
  %idxprom115 = sext i32 %add114 to i64
  %block_x116 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 31
  %23 = load i32* %block_x116, align 4, !tbaa !3
  %add117 = add nsw i32 %23, %i0.1395
  %idxprom118 = sext i32 %add117 to i64
  %24 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx119 = getelementptr inbounds %struct.storable_picture* %24, i64 0, i32 32
  %25 = load i16**** %ref_idx119, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i16*** %25, i64 1
  %26 = load i16*** %arrayidx120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i16** %26, i64 %idxprom118
  %27 = load i16** %arrayidx121, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i16* %27, i64 %idxprom115
  %28 = load i16* %arrayidx122, align 2, !tbaa !4
  %conv123 = sext i16 %28 to i32
  %call124 = tail call i32 @writeReferenceFrame(i32 %20, i32 %i0.1395, i32 %j0.1397, i32 0, i32 %conv123) #8
  %add125 = add nsw i32 %call124, %no_bits.4394
  br label %for.inc127

for.inc127:                                       ; preds = %for.body89, %land.lhs.true103, %if.then109
  %no_bits.5 = phi i32 [ %add125, %if.then109 ], [ %no_bits.4394, %land.lhs.true103 ], [ %no_bits.4394, %for.body89 ]
  %add128 = add nsw i32 %i0.1395, %shr
  %cmp87 = icmp slt i32 %add128, 4
  br i1 %cmp87, label %for.body89, label %for.inc130

for.inc130:                                       ; preds = %for.inc127
  %add131 = add nsw i32 %j0.1397, %shr19
  %cmp83 = icmp slt i32 %add131, 4
  br i1 %cmp83, label %for.cond86.preheader, label %if.end134.loopexit

if.end134.loopexit:                               ; preds = %for.inc130
  %.pre = load i32* %mb_type, align 4, !tbaa !3
  br label %if.end134

if.end134:                                        ; preds = %if.end134.loopexit, %entry, %entry, %entry, %entry
  %29 = phi i32 [ %4, %entry ], [ %4, %entry ], [ %4, %entry ], [ %4, %entry ], [ %.pre, %if.end134.loopexit ]
  %no_bits.6 = phi i32 [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], [ %no_bits.5, %if.end134.loopexit ]
  switch i32 %29, label %for.cond155.preheader [
    i32 9, label %if.end204
    i32 10, label %if.end204
    i32 13, label %if.end204
    i32 0, label %if.end204
  ]

for.cond155.preheader:                            ; preds = %lor.lhs.false37, %if.end134, %for.inc201
  %j0.2393 = phi i32 [ %add191, %for.inc201 ], [ 0, %if.end134 ], [ 0, %lor.lhs.false37 ]
  %no_bits.7392 = phi i32 [ %no_bits.9, %for.inc201 ], [ %no_bits.6, %if.end134 ], [ 0, %lor.lhs.false37 ]
  %add191 = add nsw i32 %j0.2393, %shr19
  br label %for.body158

for.body158:                                      ; preds = %for.cond155.preheader, %for.inc198
  %i0.2391 = phi i32 [ 0, %for.cond155.preheader ], [ %add199, %for.inc198 ]
  %no_bits.8390 = phi i32 [ %no_bits.7392, %for.cond155.preheader ], [ %no_bits.9, %for.inc198 ]
  %div159 = sdiv i32 %i0.2391, 2
  %add160 = add nsw i32 %div159, %j0.2393
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx163 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom161
  %30 = load i32* %arrayidx163, align 4, !tbaa !3
  switch i32 %30, label %for.inc198 [
    i32 0, label %land.lhs.true172
    i32 2, label %land.lhs.true172
  ]

land.lhs.true172:                                 ; preds = %for.body158, %for.body158
  %arrayidx175 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom161
  %31 = load i32* %arrayidx175, align 4, !tbaa !3
  %cmp176 = icmp eq i32 %31, 0
  br i1 %cmp176, label %for.inc198, label %if.then178

if.then178:                                       ; preds = %land.lhs.true172
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y179 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 32
  %33 = load i32* %block_y179, align 4, !tbaa !3
  %add180 = add nsw i32 %33, %j0.2393
  %idxprom181 = sext i32 %add180 to i64
  %block_x182 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 31
  %34 = load i32* %block_x182, align 4, !tbaa !3
  %add183 = add nsw i32 %34, %i0.2391
  %idxprom184 = sext i32 %add183 to i64
  %35 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx185 = getelementptr inbounds %struct.storable_picture* %35, i64 0, i32 32
  %36 = load i16**** %ref_idx185, align 8, !tbaa !0
  %37 = load i16*** %36, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i16** %37, i64 %idxprom184
  %38 = load i16** %arrayidx187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i16* %38, i64 %idxprom181
  %39 = load i16* %arrayidx188, align 2, !tbaa !4
  %conv189 = sext i16 %39 to i32
  %add190 = add nsw i32 %i0.2391, %shr
  %call195 = tail call i32 @writeMotionVector8x8(i32 %i0.2391, i32 %j0.2393, i32 %add190, i32 %add191, i32 %conv189, i32 0, i32 %31) #8
  %add196 = add nsw i32 %call195, %no_bits.8390
  br label %for.inc198

for.inc198:                                       ; preds = %for.body158, %land.lhs.true172, %if.then178
  %no_bits.9 = phi i32 [ %add196, %if.then178 ], [ %no_bits.8390, %land.lhs.true172 ], [ %no_bits.8390, %for.body158 ]
  %add199 = add nsw i32 %i0.2391, %shr
  %cmp156 = icmp slt i32 %add199, 4
  br i1 %cmp156, label %for.body158, label %for.inc201

for.inc201:                                       ; preds = %for.inc198
  %cmp152 = icmp slt i32 %add191, 4
  br i1 %cmp152, label %for.cond155.preheader, label %if.end204thread-pre-split

if.end204thread-pre-split:                        ; preds = %for.inc201
  %.pr = load i32* %mb_type, align 4, !tbaa !3
  br label %if.end204

if.end204:                                        ; preds = %if.end204thread-pre-split, %if.end134, %if.end134, %if.end134, %if.end134
  %40 = phi i32 [ %.pr, %if.end204thread-pre-split ], [ %29, %if.end134 ], [ %29, %if.end134 ], [ %29, %if.end134 ], [ %29, %if.end134 ]
  %no_bits.10 = phi i32 [ %no_bits.9, %if.end204thread-pre-split ], [ %no_bits.6, %if.end134 ], [ %no_bits.6, %if.end134 ], [ %no_bits.6, %if.end134 ], [ %no_bits.6, %if.end134 ]
  switch i32 %40, label %land.lhs.true220 [
    i32 9, label %if.end276
    i32 10, label %if.end276
    i32 13, label %if.end276
    i32 0, label %if.end276
  ]

land.lhs.true220:                                 ; preds = %if.end204
  br i1 %cmp, label %for.cond227.preheader, label %if.end276

for.cond227.preheader:                            ; preds = %land.lhs.true220, %for.inc273
  %j0.3389 = phi i32 [ %add263, %for.inc273 ], [ 0, %land.lhs.true220 ]
  %no_bits.11388 = phi i32 [ %no_bits.13, %for.inc273 ], [ %no_bits.10, %land.lhs.true220 ]
  %add263 = add nsw i32 %j0.3389, %shr19
  br label %for.body230

for.body230:                                      ; preds = %for.cond227.preheader, %for.inc270
  %i0.3387 = phi i32 [ 0, %for.cond227.preheader ], [ %add271, %for.inc270 ]
  %no_bits.12386 = phi i32 [ %no_bits.11388, %for.cond227.preheader ], [ %no_bits.13, %for.inc270 ]
  %div231 = sdiv i32 %i0.3387, 2
  %add232 = add nsw i32 %div231, %j0.3389
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx235 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom233
  %41 = load i32* %arrayidx235, align 4, !tbaa !3
  %.off384 = add i32 %41, -1
  %switch385 = icmp ult i32 %.off384, 2
  br i1 %switch385, label %land.lhs.true244, label %for.inc270

land.lhs.true244:                                 ; preds = %for.body230
  %arrayidx247 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom233
  %42 = load i32* %arrayidx247, align 4, !tbaa !3
  %cmp248 = icmp eq i32 %42, 0
  br i1 %cmp248, label %for.inc270, label %if.then250

if.then250:                                       ; preds = %land.lhs.true244
  %43 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y251 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 32
  %44 = load i32* %block_y251, align 4, !tbaa !3
  %add252 = add nsw i32 %44, %j0.3389
  %idxprom253 = sext i32 %add252 to i64
  %block_x254 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 31
  %45 = load i32* %block_x254, align 4, !tbaa !3
  %add255 = add nsw i32 %45, %i0.3387
  %idxprom256 = sext i32 %add255 to i64
  %46 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx257 = getelementptr inbounds %struct.storable_picture* %46, i64 0, i32 32
  %47 = load i16**** %ref_idx257, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i16*** %47, i64 1
  %48 = load i16*** %arrayidx258, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i16** %48, i64 %idxprom256
  %49 = load i16** %arrayidx259, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds i16* %49, i64 %idxprom253
  %50 = load i16* %arrayidx260, align 2, !tbaa !4
  %conv261 = sext i16 %50 to i32
  %add262 = add nsw i32 %i0.3387, %shr
  %call267 = tail call i32 @writeMotionVector8x8(i32 %i0.3387, i32 %j0.3389, i32 %add262, i32 %add263, i32 %conv261, i32 1, i32 %42) #8
  %add268 = add nsw i32 %call267, %no_bits.12386
  br label %for.inc270

for.inc270:                                       ; preds = %for.body230, %land.lhs.true244, %if.then250
  %no_bits.13 = phi i32 [ %add268, %if.then250 ], [ %no_bits.12386, %land.lhs.true244 ], [ %no_bits.12386, %for.body230 ]
  %add271 = add nsw i32 %i0.3387, %shr
  %cmp228 = icmp slt i32 %add271, 4
  br i1 %cmp228, label %for.body230, label %for.inc273

for.inc273:                                       ; preds = %for.inc270
  %cmp224 = icmp slt i32 %add263, 4
  br i1 %cmp224, label %for.cond227.preheader, label %if.end276

if.end276:                                        ; preds = %for.inc273, %if.end204, %if.end204, %if.end204, %if.end204, %land.lhs.true220
  %no_bits.14 = phi i32 [ %no_bits.10, %land.lhs.true220 ], [ %no_bits.10, %if.end204 ], [ %no_bits.10, %if.end204 ], [ %no_bits.10, %if.end204 ], [ %no_bits.10, %if.end204 ], [ %no_bits.13, %for.inc273 ]
  ret i32 %no_bits.14
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeChromaCoeff() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %cbp5 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %8 = load i32* %cbp5, align 4, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %9 = load i32* %yuv_format, align 4, !tbaa !3
  %sub = add nsw i32 %9, -1
  %cmp = icmp sgt i32 %8, 15
  br i1 %cmp, label %for.cond.preheader, label %if.end62

for.cond.preheader:                               ; preds = %entry
  %idxprom30 = sext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds [3 x i32]* @writeChromaCoeff.chroma_dc_context, i64 0, i64 %idxprom30
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx52 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 6
  br label %for.body

for.body:                                         ; preds = %for.inc59.for.body_crit_edge, %for.cond.preheader
  %10 = phi %struct.InputParameters* [ %5, %for.cond.preheader ], [ %.pre323, %for.inc59.for.body_crit_edge ]
  %indvars.iv318 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next319.pre-phi, %for.inc59.for.body_crit_edge ]
  %rate.0309 = phi i32 [ 0, %for.cond.preheader ], [ %rate.2, %for.inc59.for.body_crit_edge ]
  %currSE.0308 = phi %struct.syntaxelement* [ %arrayidx2, %for.cond.preheader ], [ %currSE.2, %for.inc59.for.body_crit_edge ]
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 59
  %11 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %12 = trunc i64 %indvars.iv318 to i32
  %call = tail call i32 @writeCoeff4x4_CAVLC(i32 6, i32 0, i32 0, i32 %12) #8
  %add = add nsw i32 %call, %rate.0309
  %indvars.iv.next319.pre = add i64 %indvars.iv318, 1
  br label %for.inc59

if.else:                                          ; preds = %for.body
  %13 = add nsw i64 %indvars.iv318, 1
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofDC = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 48
  %15 = load i32**** %cofDC, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32*** %15, i64 %13
  %16 = load i32*** %arrayidx11, align 8, !tbaa !0
  %17 = load i32** %16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32** %16, i64 1
  %18 = load i32** %arrayidx17, align 8, !tbaa !0
  %num_cdc_coeff297 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 158
  %19 = load i32* %num_cdc_coeff297, align 4, !tbaa !3
  %cmp19298 = icmp slt i32 %19, 0
  br i1 %cmp19298, label %for.inc59, label %for.body21.lr.ph

for.body21.lr.ph:                                 ; preds = %if.else
  %20 = load i32* %arrayidx31, align 4, !tbaa !3
  br label %for.body21

for.body21:                                       ; preds = %lor.end45.for.body21_crit_edge, %for.body21.lr.ph
  %21 = phi %struct.InputParameters* [ %10, %for.body21.lr.ph ], [ %.pre324, %lor.end45.for.body21_crit_edge ]
  %indvars.iv316 = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next317, %lor.end45.for.body21_crit_edge ]
  %rate.1302 = phi i32 [ %rate.0309, %for.body21.lr.ph ], [ %add55, %lor.end45.for.body21_crit_edge ]
  %currSE.1301 = phi %struct.syntaxelement* [ %currSE.0308, %for.body21.lr.ph ], [ %incdec.ptr, %lor.end45.for.body21_crit_edge ]
  %arrayidx23 = getelementptr inbounds i32* %17, i64 %indvars.iv316
  %22 = load i32* %arrayidx23, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 1
  store i32 %22, i32* %value1, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32* %18, i64 %indvars.iv316
  %23 = load i32* %arrayidx25, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 2
  store i32 %23, i32* %value2, align 4, !tbaa !3
  %symbol_mode26 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 59
  %24 = load i32* %symbol_mode26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %24, 0
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %for.body21
  %mapping = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @levrun_linfo_c2x2, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end

if.else29:                                        ; preds = %for.body21
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else29, %if.then28
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 6
  store i32 %20, i32* %context, align 4, !tbaa !3
  %25 = load i32* %mb_type, align 4, !tbaa !3
  %.off = add i32 %25, -9
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %cmp36 = icmp eq i32 %25, 13
  %phitmp276 = select i1 %cmp36, i32 8, i32 13
  br label %lor.end

lor.end:                                          ; preds = %if.end, %lor.rhs
  %26 = phi i32 [ %phitmp276, %lor.rhs ], [ 8, %if.end ]
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 0
  store i32 %26, i32* %type, align 4, !tbaa !3
  %27 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %27, label %lor.rhs42 [
    i32 9, label %lor.end45
    i32 10, label %lor.end45
    i32 13, label %lor.end45
  ]

lor.rhs42:                                        ; preds = %lor.end
  br label %lor.end45

lor.end45:                                        ; preds = %lor.end, %lor.end, %lor.end, %lor.rhs42
  %28 = phi i32 [ 1, %lor.end ], [ 0, %lor.rhs42 ], [ 1, %lor.end ], [ 1, %lor.end ]
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 20
  store i32 %28, i32* %is_intra_block, align 4, !tbaa !3
  %is_v_block = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 21
  %30 = trunc i64 %indvars.iv318 to i32
  store i32 %30, i32* %is_v_block, align 4, !tbaa !3
  %31 = load i32* %type, align 4, !tbaa !3
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds i32* %7, i64 %idxprom47
  %32 = load i32* %arrayidx48, align 4, !tbaa !3
  %idxprom49 = sext i32 %32 to i64
  %33 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds %struct.datapartition* %33, i64 %idxprom49
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %33, i64 %idxprom49, i32 2
  %34 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call51 = tail call i32 %34(%struct.syntaxelement* %currSE.1301, %struct.datapartition* %arrayidx50) #7
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 0, i32 3
  %35 = load i32* %len, align 4, !tbaa !3
  %36 = load i32* %arrayidx52, align 4, !tbaa !3
  %add53 = add nsw i32 %36, %35
  store i32 %add53, i32* %arrayidx52, align 4, !tbaa !3
  %37 = load i32* %len, align 4, !tbaa !3
  %add55 = add nsw i32 %37, %rate.1302
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.1301, i64 1
  %38 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %phitmp282 = icmp eq i32 %22, 0
  %39 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 158
  %40 = load i32* %num_cdc_coeff, align 4, !tbaa !3
  %41 = trunc i64 %indvars.iv316 to i32
  %cmp19 = icmp sge i32 %41, %40
  %or.cond = or i1 %cmp19, %phitmp282
  br i1 %or.cond, label %for.inc59, label %lor.end45.for.body21_crit_edge

lor.end45.for.body21_crit_edge:                   ; preds = %lor.end45
  %indvars.iv.next317 = add i64 %indvars.iv316, 1
  %.pre324 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body21

for.inc59:                                        ; preds = %if.else, %lor.end45, %if.then8
  %indvars.iv.next319.pre-phi = phi i64 [ %indvars.iv.next319.pre, %if.then8 ], [ %13, %lor.end45 ], [ %13, %if.else ]
  %currSE.2 = phi %struct.syntaxelement* [ %currSE.0308, %if.then8 ], [ %incdec.ptr, %lor.end45 ], [ %currSE.0308, %if.else ]
  %rate.2 = phi i32 [ %add, %if.then8 ], [ %add55, %lor.end45 ], [ %rate.0309, %if.else ]
  %lftr.wideiv321 = trunc i64 %indvars.iv.next319.pre-phi to i32
  %exitcond322 = icmp eq i32 %lftr.wideiv321, 2
  br i1 %exitcond322, label %if.end62, label %for.inc59.for.body_crit_edge

for.inc59.for.body_crit_edge:                     ; preds = %for.inc59
  %.pre323 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body

if.end62:                                         ; preds = %for.inc59, %entry
  %currSE.3 = phi %struct.syntaxelement* [ %arrayidx2, %entry ], [ %currSE.2, %for.inc59 ]
  %rate.3 = phi i32 [ 0, %entry ], [ %rate.2, %for.inc59 ]
  %shr.mask = and i32 %8, -16
  %cmp63 = icmp eq i32 %shr.mask, 32
  br i1 %cmp63, label %for.cond65.preheader, label %if.end197

for.cond65.preheader:                             ; preds = %if.end62
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_blk8x8_uv290 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 157
  %43 = load i32* %num_blk8x8_uv290, align 4, !tbaa !3
  %cmp67292 = icmp sgt i32 %43, 0
  br i1 %cmp67292, label %for.cond69.preheader.lr.ph, label %if.end197

for.cond69.preheader.lr.ph:                       ; preds = %for.cond65.preheader
  %idxprom78 = sext i32 %sub to i64
  %mb_type138 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %partArr175 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx180 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 6
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.lr.ph, %for.inc194
  %indvars.iv312 = phi i64 [ 4, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next313, %for.inc194 ]
  %rate.4296 = phi i32 [ %rate.3, %for.cond69.preheader.lr.ph ], [ %rate.7, %for.inc194 ]
  %currSE.4295 = phi %struct.syntaxelement* [ %currSE.3, %for.cond69.preheader.lr.ph ], [ %currSE.7, %for.inc194 ]
  %uv.1293 = phi i32 [ -1, %for.cond69.preheader.lr.ph ], [ %uv.3, %for.inc194 ]
  %44 = add nsw i64 %indvars.iv312, -4
  br label %for.body71

for.body71:                                       ; preds = %for.inc191, %for.cond69.preheader
  %indvars.iv310 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next311, %for.inc191 ]
  %rate.5289 = phi i32 [ %rate.4296, %for.cond69.preheader ], [ %rate.7, %for.inc191 ]
  %currSE.5288 = phi %struct.syntaxelement* [ %currSE.4295, %for.cond69.preheader ], [ %currSE.7, %for.inc191 ]
  %uv.2286 = phi i32 [ %uv.1293, %for.cond69.preheader ], [ %uv.3, %for.inc191 ]
  %45 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode72 = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 59
  %46 = load i32* %symbol_mode72, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %46, 0
  br i1 %cmp73, label %if.then74, label %if.else84

if.then74:                                        ; preds = %for.body71
  %arrayidx81 = getelementptr inbounds [3 x [8 x [4 x i8]]]* @writeChromaCoeff.chroma_ac_param, i64 0, i64 %idxprom78, i64 %44, i64 %indvars.iv310
  %47 = load i8* %arrayidx81, align 1, !tbaa !1
  %conv = zext i8 %47 to i32
  %48 = trunc i64 %indvars.iv310 to i32
  %49 = trunc i64 %indvars.iv312 to i32
  %call82 = tail call i32 @writeCoeff4x4_CAVLC(i32 7, i32 %49, i32 %48, i32 %conv) #8
  %add83 = add nsw i32 %call82, %rate.5289
  br label %for.inc191

if.else84:                                        ; preds = %for.body71
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 47
  %51 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i32**** %51, i64 %indvars.iv312
  %52 = load i32**** %arrayidx87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32*** %52, i64 %indvars.iv310
  %53 = load i32*** %arrayidx88, align 8, !tbaa !0
  %54 = load i32** %53, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i32** %53, i64 1
  %55 = load i32** %arrayidx95, align 8, !tbaa !0
  %inc96 = add nsw i32 %uv.2286, 1
  %arrayidx103 = getelementptr inbounds [3 x [8 x [4 x i8]]]* @subblk_offset_y, i64 0, i64 %idxprom78, i64 %44, i64 %indvars.iv310
  %56 = load i8* %arrayidx103, align 1, !tbaa !1
  %conv104 = zext i8 %56 to i32
  %shr105274 = lshr i32 %conv104, 2
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 19
  store i32 %shr105274, i32* %subblock_y, align 4, !tbaa !3
  %arrayidx112 = getelementptr inbounds [3 x [8 x [4 x i8]]]* @subblk_offset_x, i64 0, i64 %idxprom78, i64 %44, i64 %indvars.iv310
  %57 = load i8* %arrayidx112, align 1, !tbaa !1
  %conv113 = zext i8 %57 to i32
  %shr114275 = lshr i32 %conv113, 2
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 18
  store i32 %shr114275, i32* %subblock_x, align 4, !tbaa !3
  br label %for.body122

for.body122:                                      ; preds = %lor.end164.for.body122_crit_edge, %if.else84
  %58 = phi %struct.InputParameters* [ %45, %if.else84 ], [ %.pre, %lor.end164.for.body122_crit_edge ]
  %indvars.iv = phi i64 [ 0, %if.else84 ], [ %indvars.iv.next, %lor.end164.for.body122_crit_edge ]
  %rate.6285 = phi i32 [ %rate.5289, %if.else84 ], [ %add183, %lor.end164.for.body122_crit_edge ]
  %currSE.6284 = phi %struct.syntaxelement* [ %currSE.5288, %if.else84 ], [ %incdec.ptr184, %lor.end164.for.body122_crit_edge ]
  %arrayidx124 = getelementptr inbounds i32* %54, i64 %indvars.iv
  %59 = load i32* %arrayidx124, align 4, !tbaa !3
  %value1125 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 1
  store i32 %59, i32* %value1125, align 4, !tbaa !3
  %arrayidx127 = getelementptr inbounds i32* %55, i64 %indvars.iv
  %60 = load i32* %arrayidx127, align 4, !tbaa !3
  %value2128 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 2
  store i32 %60, i32* %value2128, align 4, !tbaa !3
  %symbol_mode129 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 59
  %61 = load i32* %symbol_mode129, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %61, 0
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %for.body122
  %mapping133 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @levrun_linfo_inter, void (i32, i32, i32*, i32*)** %mapping133, align 8, !tbaa !0
  br label %if.end136

if.else134:                                       ; preds = %for.body122
  %writing135 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing135, align 8, !tbaa !0
  br label %if.end136

if.end136:                                        ; preds = %if.else134, %if.then132
  %context137 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 6
  store i32 7, i32* %context137, align 4, !tbaa !3
  %62 = load i32* %mb_type138, align 4, !tbaa !3
  %.off279 = add i32 %62, -9
  %switch280 = icmp ult i32 %.off279, 2
  br i1 %switch280, label %lor.end149, label %lor.rhs145

lor.rhs145:                                       ; preds = %if.end136
  %cmp147 = icmp eq i32 %62, 13
  %phitmp = select i1 %cmp147, i32 10, i32 15
  br label %lor.end149

lor.end149:                                       ; preds = %if.end136, %lor.rhs145
  %63 = phi i32 [ %phitmp, %lor.rhs145 ], [ 10, %if.end136 ]
  %type152 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 0
  store i32 %63, i32* %type152, align 4, !tbaa !3
  %64 = load i32* %mb_type138, align 4, !tbaa !3
  switch i32 %64, label %lor.rhs160 [
    i32 9, label %lor.end164
    i32 10, label %lor.end164
    i32 13, label %lor.end164
  ]

lor.rhs160:                                       ; preds = %lor.end149
  br label %lor.end164

lor.end164:                                       ; preds = %lor.end149, %lor.end149, %lor.end149, %lor.rhs160
  %65 = phi i32 [ 1, %lor.end149 ], [ 0, %lor.rhs160 ], [ 1, %lor.end149 ], [ 1, %lor.end149 ]
  %66 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block166 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 20
  store i32 %65, i32* %is_intra_block166, align 4, !tbaa !3
  %num_blk8x8_uv167 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 157
  %67 = load i32* %num_blk8x8_uv167, align 4, !tbaa !3
  %shl = shl i32 %67, 1
  %cmp168 = icmp sge i32 %inc96, %shl
  %conv169 = zext i1 %cmp168 to i32
  %is_v_block170 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 21
  store i32 %conv169, i32* %is_v_block170, align 4, !tbaa !3
  %68 = load i32* %type152, align 4, !tbaa !3
  %idxprom172 = sext i32 %68 to i64
  %arrayidx173 = getelementptr inbounds i32* %7, i64 %idxprom172
  %69 = load i32* %arrayidx173, align 4, !tbaa !3
  %idxprom174 = sext i32 %69 to i64
  %70 = load %struct.datapartition** %partArr175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds %struct.datapartition* %70, i64 %idxprom174
  %writeSyntaxElement177 = getelementptr inbounds %struct.datapartition* %70, i64 %idxprom174, i32 2
  %71 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement177, align 8, !tbaa !0
  %call178 = tail call i32 %71(%struct.syntaxelement* %currSE.6284, %struct.datapartition* %arrayidx176) #7
  %len179 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 0, i32 3
  %72 = load i32* %len179, align 4, !tbaa !3
  %73 = load i32* %arrayidx180, align 4, !tbaa !3
  %add181 = add nsw i32 %73, %72
  store i32 %add181, i32* %arrayidx180, align 4, !tbaa !3
  %74 = load i32* %len179, align 4, !tbaa !3
  %add183 = add nsw i32 %74, %rate.6285
  %incdec.ptr184 = getelementptr inbounds %struct.syntaxelement* %currSE.6284, i64 1
  %75 = load i32* %currSEnr, align 4, !tbaa !3
  %inc186 = add nsw i32 %75, 1
  store i32 %inc186, i32* %currSEnr, align 4, !tbaa !3
  %phitmp281 = icmp eq i32 %59, 0
  %76 = trunc i64 %indvars.iv to i32
  %cmp116 = icmp sgt i32 %76, 14
  %or.cond277 = or i1 %cmp116, %phitmp281
  br i1 %or.cond277, label %for.inc191, label %lor.end164.for.body122_crit_edge

lor.end164.for.body122_crit_edge:                 ; preds = %lor.end164
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body122

for.inc191:                                       ; preds = %lor.end164, %if.then74
  %uv.3 = phi i32 [ %uv.2286, %if.then74 ], [ %inc96, %lor.end164 ]
  %currSE.7 = phi %struct.syntaxelement* [ %currSE.5288, %if.then74 ], [ %incdec.ptr184, %lor.end164 ]
  %rate.7 = phi i32 [ %add83, %if.then74 ], [ %add183, %lor.end164 ]
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next311 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc194, label %for.body71

for.inc194:                                       ; preds = %for.inc191
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %77 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 157
  %78 = load i32* %num_blk8x8_uv, align 4, !tbaa !3
  %79 = add nsw i32 %78, 3
  %80 = trunc i64 %indvars.iv312 to i32
  %cmp67 = icmp slt i32 %80, %79
  br i1 %cmp67, label %for.cond69.preheader, label %if.end197

if.end197:                                        ; preds = %for.cond65.preheader, %for.inc194, %if.end62
  %rate.8 = phi i32 [ %rate.3, %if.end62 ], [ %rate.3, %for.cond65.preheader ], [ %rate.7, %for.inc194 ]
  ret i32 %rate.8
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeCoeff4x4_CAVLC(i32 %block_type, i32 %b8, i32 %b4, i32 %param) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  switch i32 %block_type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb30
    i32 6, label %sw.bb45
    i32 7, label %sw.bb68
  ]

sw.bb:                                            ; preds = %entry
  %idxprom5 = sext i32 %b4 to i64
  %idxprom6 = sext i32 %b8 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %8 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32**** %8, i64 %idxprom6
  %9 = load i32**** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %9, i64 %idxprom5
  %10 = load i32*** %arrayidx8, align 8, !tbaa !0
  %11 = load i32** %10, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %10, i64 1
  %12 = load i32** %arrayidx15, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %13 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %13, label %if.else [
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 13, label %sw.epilog
  ]

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %14 = load i32**** %cofDC, align 8, !tbaa !0
  %15 = load i32*** %14, align 8, !tbaa !0
  %16 = load i32** %15, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32** %15, i64 1
  %17 = load i32** %arrayidx27, align 8, !tbaa !0
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %idxprom31 = sext i32 %b4 to i64
  %idxprom32 = sext i32 %b8 to i64
  %cofAC33 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %18 = load i32***** %cofAC33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32**** %18, i64 %idxprom32
  %19 = load i32**** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32*** %19, i64 %idxprom31
  %20 = load i32*** %arrayidx35, align 8, !tbaa !0
  %21 = load i32** %20, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32** %20, i64 1
  %22 = load i32** %arrayidx42, align 8, !tbaa !0
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 158
  %23 = load i32* %num_cdc_coeff, align 4, !tbaa !3
  %add = add nsw i32 %param, 1
  %idxprom46 = sext i32 %add to i64
  %cofDC47 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %24 = load i32**** %cofDC47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i32*** %24, i64 %idxprom46
  %25 = load i32*** %arrayidx48, align 8, !tbaa !0
  %26 = load i32** %25, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32** %25, i64 1
  %27 = load i32** %arrayidx54, align 8, !tbaa !0
  %mb_type57 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %28 = load i32* %mb_type57, align 4, !tbaa !3
  switch i32 %28, label %if.else66 [
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 13, label %sw.epilog
  ]

if.else66:                                        ; preds = %sw.bb45
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  %idxprom69 = sext i32 %b4 to i64
  %idxprom70 = sext i32 %b8 to i64
  %cofAC71 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %29 = load i32***** %cofAC71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i32**** %29, i64 %idxprom70
  %30 = load i32**** %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32*** %30, i64 %idxprom69
  %31 = load i32*** %arrayidx73, align 8, !tbaa !0
  %32 = load i32** %31, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i32** %31, i64 1
  %33 = load i32** %arrayidx80, align 8, !tbaa !0
  %mb_type83 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %34 = load i32* %mb_type83, align 4, !tbaa !3
  switch i32 %34, label %if.else92 [
    i32 9, label %sw.epilog
    i32 10, label %sw.epilog
    i32 13, label %sw.epilog
  ]

if.else92:                                        ; preds = %sw.bb68
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i32 600) #7
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %sw.bb68, %sw.bb68, %sw.bb45, %sw.bb45, %sw.bb45, %sw.bb, %sw.bb, %sw.bb, %if.else92, %if.else66, %if.else, %sw.default, %sw.bb30, %sw.bb22
  %35 = phi %struct.ImageParameters* [ %.pre, %sw.default ], [ %0, %if.else92 ], [ %0, %if.else66 ], [ %0, %sw.bb30 ], [ %0, %sw.bb22 ], [ %0, %if.else ], [ %0, %sw.bb ], [ %0, %sw.bb ], [ %0, %sw.bb ], [ %0, %sw.bb45 ], [ %0, %sw.bb45 ], [ %0, %sw.bb45 ], [ %0, %sw.bb68 ], [ %0, %sw.bb68 ], [ %0, %sw.bb68 ]
  %dptype.0 = phi i32 [ 0, %sw.default ], [ 15, %if.else92 ], [ 13, %if.else66 ], [ 9, %sw.bb30 ], [ 7, %sw.bb22 ], [ 14, %if.else ], [ 9, %sw.bb ], [ 9, %sw.bb ], [ 9, %sw.bb ], [ 8, %sw.bb45 ], [ 8, %sw.bb45 ], [ 8, %sw.bb45 ], [ 10, %sw.bb68 ], [ 10, %sw.bb68 ], [ 10, %sw.bb68 ]
  %bitcounttype.0 = phi i64 [ 0, %sw.default ], [ 6, %if.else92 ], [ 6, %if.else66 ], [ 5, %sw.bb30 ], [ 5, %sw.bb22 ], [ 5, %if.else ], [ 5, %sw.bb ], [ 5, %sw.bb ], [ 5, %sw.bb ], [ 6, %sw.bb45 ], [ 6, %sw.bb45 ], [ 6, %sw.bb45 ], [ 6, %sw.bb68 ], [ 6, %sw.bb68 ], [ 6, %sw.bb68 ]
  %max_coeff_num.0 = phi i32 [ 0, %sw.default ], [ 15, %if.else92 ], [ %23, %if.else66 ], [ 15, %sw.bb30 ], [ 16, %sw.bb22 ], [ 16, %if.else ], [ 16, %sw.bb ], [ 16, %sw.bb ], [ 16, %sw.bb ], [ %23, %sw.bb45 ], [ %23, %sw.bb45 ], [ %23, %sw.bb45 ], [ 15, %sw.bb68 ], [ 15, %sw.bb68 ], [ 15, %sw.bb68 ]
  %cdc.0 = phi i1 [ false, %sw.default ], [ false, %if.else92 ], [ true, %if.else66 ], [ false, %sw.bb30 ], [ false, %sw.bb22 ], [ false, %if.else ], [ false, %sw.bb ], [ false, %sw.bb ], [ false, %sw.bb ], [ true, %sw.bb45 ], [ true, %sw.bb45 ], [ true, %sw.bb45 ], [ false, %sw.bb68 ], [ false, %sw.bb68 ], [ false, %sw.bb68 ]
  %cac.0 = phi i32 [ 0, %sw.default ], [ 1, %if.else92 ], [ 0, %if.else66 ], [ 0, %sw.bb30 ], [ 0, %sw.bb22 ], [ 0, %if.else ], [ 0, %sw.bb ], [ 0, %sw.bb ], [ 0, %sw.bb ], [ 0, %sw.bb45 ], [ 0, %sw.bb45 ], [ 0, %sw.bb45 ], [ 1, %sw.bb68 ], [ 1, %sw.bb68 ], [ 1, %sw.bb68 ]
  %pLevel.0 = phi i32* [ null, %sw.default ], [ %32, %if.else92 ], [ %26, %if.else66 ], [ %21, %sw.bb30 ], [ %16, %sw.bb22 ], [ %11, %if.else ], [ %11, %sw.bb ], [ %11, %sw.bb ], [ %11, %sw.bb ], [ %26, %sw.bb45 ], [ %26, %sw.bb45 ], [ %26, %sw.bb45 ], [ %32, %sw.bb68 ], [ %32, %sw.bb68 ], [ %32, %sw.bb68 ]
  %pRun.0 = phi i32* [ null, %sw.default ], [ %33, %if.else92 ], [ %27, %if.else66 ], [ %22, %sw.bb30 ], [ %17, %sw.bb22 ], [ %12, %if.else ], [ %12, %sw.bb ], [ %12, %sw.bb ], [ %12, %sw.bb ], [ %27, %sw.bb45 ], [ %27, %sw.bb45 ], [ %27, %sw.bb45 ], [ %33, %sw.bb68 ], [ %33, %sw.bb68 ], [ %33, %sw.bb68 ]
  %idxprom94513 = zext i32 %dptype.0 to i64
  %arrayidx95 = getelementptr inbounds i32* %7, i64 %idxprom94513
  %36 = load i32* %arrayidx95, align 4, !tbaa !3
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %37 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %num_cdc_coeff98 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 158
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %for.inc ], [ 0, %sw.epilog ]
  %level.0 = phi i32 [ %40, %for.inc ], [ 1, %sw.epilog ]
  %numcoeff.0 = phi i32 [ %numcoeff.1, %for.inc ], [ 0, %sw.epilog ]
  %lastcoeff.0 = phi i32 [ %lastcoeff.1, %for.inc ], [ 0, %sw.epilog ]
  %numtrailingones.0 = phi i32 [ %numtrailingones.2, %for.inc ], [ 0, %sw.epilog ]
  %totzeros.0 = phi i32 [ %totzeros.2, %for.inc ], [ 0, %sw.epilog ]
  br i1 %cdc.0, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.cond
  %38 = load i32* %num_cdc_coeff98, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ 16, %for.cond ]
  %39 = trunc i64 %indvars.iv557 to i32
  %cmp99 = icmp sgt i32 %39, %cond
  %cmp100 = icmp eq i32 %level.0, 0
  %or.cond = or i1 %cmp99, %cmp100
  br i1 %or.cond, label %for.end, label %for.body

for.body:                                         ; preds = %cond.end
  %arrayidx102 = getelementptr inbounds i32* %pLevel.0, i64 %indvars.iv557
  %40 = load i32* %arrayidx102, align 4, !tbaa !3
  %tobool105 = icmp eq i32 %40, 0
  br i1 %tobool105, label %for.inc, label %if.then106

if.then106:                                       ; preds = %for.body
  %arrayidx104 = getelementptr inbounds i32* %pRun.0, i64 %indvars.iv557
  %41 = load i32* %arrayidx104, align 4, !tbaa !3
  %add109 = add nsw i32 %41, %totzeros.0
  %ispos516 = icmp sgt i32 %40, -1
  %neg517 = sub i32 0, %40
  %42 = select i1 %ispos516, i32 %40, i32 %neg517
  %cmp112 = icmp eq i32 %42, 1
  br i1 %cmp112, label %if.then113, label %if.end119

if.then113:                                       ; preds = %if.then106
  %inc = add nsw i32 %numtrailingones.0, 1
  %cmp115 = icmp sgt i32 %numtrailingones.0, 2
  %.inc = select i1 %cmp115, i32 3, i32 %inc
  br label %if.end119

if.end119:                                        ; preds = %if.then113, %if.then106
  %numtrailingones.1 = phi i32 [ %.inc, %if.then113 ], [ 0, %if.then106 ]
  %inc120 = add nsw i32 %numcoeff.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end119
  %numcoeff.1 = phi i32 [ %inc120, %if.end119 ], [ %numcoeff.0, %for.body ]
  %lastcoeff.1 = phi i32 [ %39, %if.end119 ], [ %lastcoeff.0, %for.body ]
  %numtrailingones.2 = phi i32 [ %numtrailingones.1, %if.end119 ], [ %numtrailingones.0, %for.body ]
  %totzeros.2 = phi i32 [ %add109, %if.end119 ], [ %totzeros.0, %for.body ]
  %indvars.iv.next558 = add i64 %indvars.iv557, 1
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %idxprom96 = sext i32 %36 to i64
  %arrayidx97 = getelementptr inbounds %struct.datapartition* %37, i64 %idxprom96
  br i1 %cdc.0, label %if.end172, label %if.then124

if.then124:                                       ; preds = %for.end
  %tobool125 = icmp eq i32 %cac.0, 0
  br i1 %tobool125, label %if.then126, label %if.else148

if.then126:                                       ; preds = %if.then124
  %and129 = and i32 %b4, 1
  %and = shl i32 %b8, 1
  %43 = and i32 %and, 2
  %44 = or i32 %43, %and129
  %cmp138 = icmp slt i32 %b8, 2
  %cmp140 = icmp slt i32 %b4, 2
  br i1 %cmp138, label %cond.true139, label %cond.false142

cond.true139:                                     ; preds = %if.then126
  %45 = zext i1 %cmp140 to i32
  %cond141 = xor i32 %45, 1
  br label %cond.end145

cond.false142:                                    ; preds = %if.then126
  %cond144 = select i1 %cmp140, i32 2, i32 3
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false142, %cond.true139
  %cond146 = phi i32 [ %cond141, %cond.true139 ], [ %cond144, %cond.false142 ]
  %call147 = tail call i32 @predict_nnz(i32 %44, i32 %cond146) #8
  br label %if.end151

if.else148:                                       ; preds = %if.then124
  %shr = ashr i32 %param, 4
  %and149 = and i32 %param, 15
  %call150 = tail call i32 @predict_nnz_chroma(i32 %shr, i32 %and149) #8
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %cond.end145
  %nnz.0 = phi i32 [ %call150, %if.else148 ], [ %call147, %cond.end145 ]
  %subblock_x.0 = phi i32 [ %shr, %if.else148 ], [ %44, %cond.end145 ]
  %subblock_y.0 = phi i32 [ %and149, %if.else148 ], [ %cond146, %cond.end145 ]
  %idxprom152 = sext i32 %subblock_y.0 to i64
  %idxprom153 = sext i32 %subblock_x.0 to i64
  %46 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr154 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 3
  %47 = load i32* %current_mb_nr154, align 4, !tbaa !3
  %idxprom155 = sext i32 %47 to i64
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 28
  %48 = load i32**** %nz_coeff, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i32*** %48, i64 %idxprom155
  %49 = load i32*** %arrayidx156, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i32** %49, i64 %idxprom153
  %50 = load i32** %arrayidx157, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %50, i64 %idxprom152
  store i32 %numcoeff.0, i32* %arrayidx158, align 4, !tbaa !3
  %cmp159 = icmp slt i32 %nnz.0, 2
  br i1 %cmp159, label %if.end172, label %if.else161

if.else161:                                       ; preds = %if.end151
  %cmp162 = icmp slt i32 %nnz.0, 4
  br i1 %cmp162, label %if.end172, label %if.else164

if.else164:                                       ; preds = %if.else161
  %cmp165 = icmp slt i32 %nnz.0, 8
  %. = select i1 %cmp165, i32 2, i32 3
  br label %if.end172

if.end172:                                        ; preds = %for.end, %if.else164, %if.else161, %if.end151
  %numcoeff_vlc.0 = phi i32 [ 0, %if.end151 ], [ 1, %if.else161 ], [ %., %if.else164 ], [ 0, %for.end ]
  %type173 = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 %dptype.0, i32* %type173, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %numcoeff.0, i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 2
  store i32 %numtrailingones.0, i32* %value2, align 4, !tbaa !3
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  store i32 %numcoeff_vlc.0, i32* %len, align 4, !tbaa !3
  br i1 %cdc.0, label %if.else177, label %if.then175

if.then175:                                       ; preds = %if.end172
  %call176 = tail call i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx97) #7
  br label %if.end179

if.else177:                                       ; preds = %if.end172
  %call178 = tail call i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx97) #7
  br label %if.end179

if.end179:                                        ; preds = %if.else177, %if.then175
  %51 = load i32* %len, align 4, !tbaa !3
  %arrayidx182 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 %bitcounttype.0
  %52 = load i32* %arrayidx182, align 4, !tbaa !3
  %add183 = add nsw i32 %52, %51
  store i32 %add183, i32* %arrayidx182, align 4, !tbaa !3
  %53 = load i32* %len, align 4, !tbaa !3
  %arrayidx2.sum = add i64 %idxprom1, 1
  %incdec.ptr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum
  %54 = load i32* %currSEnr, align 4, !tbaa !3
  %inc187 = add nsw i32 %54, 1
  store i32 %inc187, i32* %currSEnr, align 4, !tbaa !3
  %tobool188 = icmp eq i32 %numcoeff.0, 0
  br i1 %tobool188, label %return, label %for.cond193.preheader

for.cond193.preheader:                            ; preds = %if.end179
  %sub = sub i32 %lastcoeff.0, %numtrailingones.0
  %cmp194546 = icmp sgt i32 %numtrailingones.0, 0
  br i1 %cmp194546, label %for.body195.lr.ph, label %for.end207

for.body195.lr.ph:                                ; preds = %for.cond193.preheader
  %55 = sext i32 %lastcoeff.0 to i64
  br label %for.body195

for.body195:                                      ; preds = %for.body195.lr.ph, %if.end202
  %indvars.iv555 = phi i64 [ %55, %for.body195.lr.ph ], [ %indvars.iv.next556, %if.end202 ]
  %code.0548 = phi i32 [ 0, %for.body195.lr.ph ], [ %or.shl, %if.end202 ]
  %arrayidx197 = getelementptr inbounds i32* %pLevel.0, i64 %indvars.iv555
  %56 = load i32* %arrayidx197, align 4, !tbaa !3
  %ispos514 = icmp sgt i32 %56, -1
  %neg515 = sub i32 0, %56
  %57 = select i1 %ispos514, i32 %56, i32 %neg515
  %cmp199 = icmp sgt i32 %57, 1
  br i1 %cmp199, label %if.then200, label %if.end202

if.then200:                                       ; preds = %for.body195
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 -1) #9
  unreachable

if.end202:                                        ; preds = %for.body195
  %shl = shl i32 %code.0548, 1
  %.lobit = lshr i32 %56, 31
  %or.shl = or i32 %.lobit, %shl
  %indvars.iv.next556 = add i64 %indvars.iv555, -1
  %58 = trunc i64 %indvars.iv.next556 to i32
  %cmp194 = icmp sgt i32 %58, %sub
  br i1 %cmp194, label %for.body195, label %for.end207

for.end207:                                       ; preds = %if.end202, %for.cond193.preheader
  %code.0.lcssa = phi i32 [ 0, %for.cond193.preheader ], [ %or.shl, %if.end202 ]
  %tobool208 = icmp eq i32 %numtrailingones.0, 0
  br i1 %tobool208, label %if.end223, label %if.then209

if.then209:                                       ; preds = %for.end207
  %type210 = getelementptr inbounds %struct.syntaxelement* %incdec.ptr, i64 0, i32 0
  store i32 %dptype.0, i32* %type210, align 4, !tbaa !3
  %value2211 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 2
  store i32 %numtrailingones.0, i32* %value2211, align 4, !tbaa !3
  %value1212 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 1
  store i32 %code.0.lcssa, i32* %value1212, align 4, !tbaa !3
  %call213 = tail call i32 @writeSyntaxElement_VLC(%struct.syntaxelement* %incdec.ptr, %struct.datapartition* %arrayidx97) #7
  %len214 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 3
  %59 = load i32* %len214, align 4, !tbaa !3
  %60 = load i32* %arrayidx182, align 4, !tbaa !3
  %add217 = add nsw i32 %60, %59
  store i32 %add217, i32* %arrayidx182, align 4, !tbaa !3
  %61 = load i32* %len214, align 4, !tbaa !3
  %add219 = add nsw i32 %61, %53
  %incdec.ptr.sum = add i64 %idxprom1, 2
  %incdec.ptr220 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %incdec.ptr.sum
  %62 = load i32* %currSEnr, align 4, !tbaa !3
  %inc222 = add nsw i32 %62, 1
  store i32 %inc222, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end223

if.end223:                                        ; preds = %for.end207, %if.then209
  %currSE.0 = phi %struct.syntaxelement* [ %incdec.ptr220, %if.then209 ], [ %incdec.ptr, %for.end207 ]
  %no_bits.0 = phi i32 [ %add219, %if.then209 ], [ %53, %for.end207 ]
  %cmp236536 = icmp sgt i32 %sub, -1
  br i1 %cmp236536, label %for.body237.lr.ph, label %for.end285

for.body237.lr.ph:                                ; preds = %if.end223
  %cmp230 = icmp slt i32 %numtrailingones.0, 3
  %cmp228 = icmp sgt i32 %numcoeff.0, 10
  %or.cond527 = and i1 %cmp228, %cmp230
  %cmp225 = icmp eq i32 %numtrailingones.0, 3
  %cmp224 = icmp sgt i32 %numcoeff.0, 3
  %or.cond526 = and i1 %cmp224, %cmp225
  %vlcnum.0 = zext i1 %or.cond527 to i32
  %63 = sext i32 %sub to i64
  %64 = add i32 %lastcoeff.0, 1
  %65 = add i32 %numtrailingones.0, -1
  %66 = sub i32 %65, %lastcoeff.0
  %67 = icmp sgt i32 %66, -1
  %smax = select i1 %67, i32 %66, i32 -1
  %68 = add i32 %64, %smax
  %69 = sub i32 %68, %numtrailingones.0
  %70 = zext i32 %69 to i64
  br label %for.body237

for.body237:                                      ; preds = %for.body237.lr.ph, %if.end259
  %indvars.iv552 = phi i64 [ %63, %for.body237.lr.ph ], [ %indvars.iv.next553, %if.end259 ]
  %level_two_or_higher.1541 = phi i1 [ %or.cond526, %for.body237.lr.ph ], [ true, %if.end259 ]
  %vlcnum.1540 = phi i32 [ %vlcnum.0, %for.body237.lr.ph ], [ %vlcnum.3, %if.end259 ]
  %no_bits.1538 = phi i32 [ %no_bits.0, %for.body237.lr.ph ], [ %add279, %if.end259 ]
  %currSE.1537 = phi %struct.syntaxelement* [ %currSE.0, %for.body237.lr.ph ], [ %incdec.ptr280, %if.end259 ]
  %arrayidx239 = getelementptr inbounds i32* %pLevel.0, i64 %indvars.iv552
  %71 = load i32* %arrayidx239, align 4, !tbaa !3
  %value1240 = getelementptr inbounds %struct.syntaxelement* %currSE.1537, i64 0, i32 1
  store i32 %71, i32* %value1240, align 4, !tbaa !3
  %type241 = getelementptr inbounds %struct.syntaxelement* %currSE.1537, i64 0, i32 0
  store i32 %dptype.0, i32* %type241, align 4, !tbaa !3
  br i1 %level_two_or_higher.1541, label %if.end253, label %if.then243

if.then243:                                       ; preds = %for.body237
  %cmp245 = icmp sgt i32 %71, 0
  %storemerge.v = select i1 %cmp245, i32 -1, i32 1
  %storemerge = add i32 %storemerge.v, %71
  store i32 %storemerge, i32* %value1240, align 4, !tbaa !3
  br label %if.end253

if.end253:                                        ; preds = %for.body237, %if.then243
  %cmp254 = icmp eq i32 %vlcnum.1540, 0
  br i1 %cmp254, label %if.then255, label %if.else257

if.then255:                                       ; preds = %if.end253
  %call256 = tail call i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement* %currSE.1537, %struct.datapartition* %arrayidx97) #7
  br label %if.end259

if.else257:                                       ; preds = %if.end253
  %call258 = tail call i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement* %currSE.1537, i32 %vlcnum.1540, %struct.datapartition* %arrayidx97) #7
  br label %if.end259

if.end259:                                        ; preds = %if.else257, %if.then255
  %ispos = icmp sgt i32 %71, -1
  %neg = sub i32 0, %71
  %72 = select i1 %ispos, i32 %71, i32 %neg
  %idxprom261 = sext i32 %vlcnum.1540 to i64
  %arrayidx262 = getelementptr inbounds [7 x i32]* @writeCoeff4x4_CAVLC.incVlc, i64 0, i64 %idxprom261
  %73 = load i32* %arrayidx262, align 4, !tbaa !3
  %cmp263 = icmp sgt i32 %72, %73
  %inc265 = zext i1 %cmp263 to i32
  %inc265.vlcnum.1 = add nsw i32 %inc265, %vlcnum.1540
  %74 = trunc i64 %indvars.iv552 to i32
  %cmp268 = icmp eq i32 %74, %sub
  %cmp271 = icmp sgt i32 %72, 3
  %or.cond528 = and i1 %cmp268, %cmp271
  %vlcnum.3 = select i1 %or.cond528, i32 2, i32 %inc265.vlcnum.1
  %len274 = getelementptr inbounds %struct.syntaxelement* %currSE.1537, i64 0, i32 3
  %75 = load i32* %len274, align 4, !tbaa !3
  %76 = load i32* %arrayidx182, align 4, !tbaa !3
  %add277 = add nsw i32 %76, %75
  store i32 %add277, i32* %arrayidx182, align 4, !tbaa !3
  %77 = load i32* %len274, align 4, !tbaa !3
  %add279 = add nsw i32 %77, %no_bits.1538
  %incdec.ptr280 = getelementptr inbounds %struct.syntaxelement* %currSE.1537, i64 1
  %78 = load i32* %currSEnr, align 4, !tbaa !3
  %inc282 = add nsw i32 %78, 1
  store i32 %inc282, i32* %currSEnr, align 4, !tbaa !3
  %indvars.iv.next553 = add i64 %indvars.iv552, -1
  %cmp236 = icmp sgt i32 %74, 0
  br i1 %cmp236, label %for.body237, label %for.cond235.for.end285_crit_edge

for.cond235.for.end285_crit_edge:                 ; preds = %if.end259
  %scevgep.sum = add i64 %70, 1
  %scevgep554 = getelementptr %struct.syntaxelement* %currSE.0, i64 %scevgep.sum
  br label %for.end285

for.end285:                                       ; preds = %for.cond235.for.end285_crit_edge, %if.end223
  %no_bits.1.lcssa = phi i32 [ %add279, %for.cond235.for.end285_crit_edge ], [ %no_bits.0, %if.end223 ]
  %currSE.1.lcssa = phi %struct.syntaxelement* [ %scevgep554, %for.cond235.for.end285_crit_edge ], [ %currSE.0, %if.end223 ]
  %cmp286 = icmp slt i32 %numcoeff.0, %max_coeff_num.0
  br i1 %cmp286, label %if.then287, label %for.cond308.preheader

if.then287:                                       ; preds = %for.end285
  %type288 = getelementptr inbounds %struct.syntaxelement* %currSE.1.lcssa, i64 0, i32 0
  store i32 %dptype.0, i32* %type288, align 4, !tbaa !3
  %value1289 = getelementptr inbounds %struct.syntaxelement* %currSE.1.lcssa, i64 0, i32 1
  store i32 %totzeros.0, i32* %value1289, align 4, !tbaa !3
  %sub290 = add nsw i32 %numcoeff.0, -1
  %len291 = getelementptr inbounds %struct.syntaxelement* %currSE.1.lcssa, i64 0, i32 3
  store i32 %sub290, i32* %len291, align 4, !tbaa !3
  br i1 %cdc.0, label %if.else295, label %if.then293

if.then293:                                       ; preds = %if.then287
  %call294 = tail call i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement* %currSE.1.lcssa, %struct.datapartition* %arrayidx97) #7
  br label %if.end297

if.else295:                                       ; preds = %if.then287
  %call296 = tail call i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* %currSE.1.lcssa, %struct.datapartition* %arrayidx97) #7
  br label %if.end297

if.end297:                                        ; preds = %if.else295, %if.then293
  %79 = load i32* %len291, align 4, !tbaa !3
  %80 = load i32* %arrayidx182, align 4, !tbaa !3
  %add301 = add nsw i32 %80, %79
  store i32 %add301, i32* %arrayidx182, align 4, !tbaa !3
  %81 = load i32* %len291, align 4, !tbaa !3
  %add303 = add nsw i32 %81, %no_bits.1.lcssa
  %incdec.ptr304 = getelementptr inbounds %struct.syntaxelement* %currSE.1.lcssa, i64 1
  %82 = load i32* %currSEnr, align 4, !tbaa !3
  %inc306 = add nsw i32 %82, 1
  store i32 %inc306, i32* %currSEnr, align 4, !tbaa !3
  br label %for.cond308.preheader

for.cond308.preheader:                            ; preds = %if.end297, %for.end285
  %currSE.3.ph = phi %struct.syntaxelement* [ %currSE.1.lcssa, %for.end285 ], [ %incdec.ptr304, %if.end297 ]
  %no_bits.3.ph = phi i32 [ %no_bits.1.lcssa, %for.end285 ], [ %add303, %if.end297 ]
  %cmp309530 = icmp sgt i32 %lastcoeff.0, -1
  br i1 %cmp309530, label %for.body310.lr.ph, label %return

for.body310.lr.ph:                                ; preds = %for.cond308.preheader
  %cmp315 = icmp sgt i32 %numcoeff.0, 1
  %83 = sext i32 %lastcoeff.0 to i64
  br label %for.body310

for.body310:                                      ; preds = %for.body310.lr.ph, %for.inc342
  %indvars.iv = phi i64 [ %83, %for.body310.lr.ph ], [ %indvars.iv.next, %for.inc342 ]
  %numcoef.0535 = phi i32 [ %numcoeff.0, %for.body310.lr.ph ], [ %numcoef.1, %for.inc342 ]
  %zerosleft.0534 = phi i32 [ %totzeros.0, %for.body310.lr.ph ], [ %zerosleft.1, %for.inc342 ]
  %no_bits.3532 = phi i32 [ %no_bits.3.ph, %for.body310.lr.ph ], [ %no_bits.4, %for.inc342 ]
  %currSE.3531 = phi %struct.syntaxelement* [ %currSE.3.ph, %for.body310.lr.ph ], [ %currSE.4, %for.inc342 ]
  %arrayidx312 = getelementptr inbounds i32* %pRun.0, i64 %indvars.iv
  %84 = load i32* %arrayidx312, align 4, !tbaa !3
  %value1313 = getelementptr inbounds %struct.syntaxelement* %currSE.3531, i64 0, i32 1
  store i32 %84, i32* %value1313, align 4, !tbaa !3
  %type314 = getelementptr inbounds %struct.syntaxelement* %currSE.3531, i64 0, i32 0
  store i32 %dptype.0, i32* %type314, align 4, !tbaa !3
  %tobool317 = icmp ne i32 %zerosleft.0534, 0
  %or.cond529 = and i1 %cmp315, %tobool317
  br i1 %or.cond529, label %if.end319, label %return

if.end319:                                        ; preds = %for.body310
  %cmp320 = icmp sgt i32 %numcoef.0535, 1
  br i1 %cmp320, label %if.then323, label %for.inc342

if.then323:                                       ; preds = %if.end319
  %sub324 = add nsw i32 %zerosleft.0534, -1
  %cmp325 = icmp sgt i32 %sub324, 6
  %.sub324 = select i1 %cmp325, i32 6, i32 %sub324
  %len328 = getelementptr inbounds %struct.syntaxelement* %currSE.3531, i64 0, i32 3
  store i32 %.sub324, i32* %len328, align 4, !tbaa !3
  %call329 = tail call i32 @writeSyntaxElement_Run(%struct.syntaxelement* %currSE.3531, %struct.datapartition* %arrayidx97) #7
  %85 = load i32* %len328, align 4, !tbaa !3
  %86 = load i32* %arrayidx182, align 4, !tbaa !3
  %add333 = add nsw i32 %86, %85
  store i32 %add333, i32* %arrayidx182, align 4, !tbaa !3
  %87 = load i32* %len328, align 4, !tbaa !3
  %add335 = add nsw i32 %87, %no_bits.3532
  %sub336 = sub nsw i32 %zerosleft.0534, %84
  %dec337 = add nsw i32 %numcoef.0535, -1
  %incdec.ptr338 = getelementptr inbounds %struct.syntaxelement* %currSE.3531, i64 1
  %88 = load i32* %currSEnr, align 4, !tbaa !3
  %inc340 = add nsw i32 %88, 1
  store i32 %inc340, i32* %currSEnr, align 4, !tbaa !3
  br label %for.inc342

for.inc342:                                       ; preds = %if.end319, %if.then323
  %currSE.4 = phi %struct.syntaxelement* [ %incdec.ptr338, %if.then323 ], [ %currSE.3531, %if.end319 ]
  %no_bits.4 = phi i32 [ %add335, %if.then323 ], [ %no_bits.3532, %if.end319 ]
  %zerosleft.1 = phi i32 [ %sub336, %if.then323 ], [ %zerosleft.0534, %if.end319 ]
  %numcoef.1 = phi i32 [ %dec337, %if.then323 ], [ %numcoef.0535, %if.end319 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %89 = trunc i64 %indvars.iv to i32
  %cmp309 = icmp sgt i32 %89, 0
  br i1 %cmp309, label %for.body310, label %return

return:                                           ; preds = %for.cond308.preheader, %for.body310, %for.inc342, %if.end179
  %retval.0 = phi i32 [ %53, %if.end179 ], [ %no_bits.3.ph, %for.cond308.preheader ], [ %no_bits.3532, %for.body310 ], [ %no_bits.4, %for.inc342 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @levrun_linfo_c2x2(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @writeRunLevel_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @levrun_linfo_inter(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @writeLumaCoeff4x4_CABAC(i32 %b8, i32 %b4, i32 %intra4x4mode) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %idxprom5 = sext i32 %b4 to i64
  %idxprom6 = sext i32 %b8 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %8 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32**** %8, i64 %idxprom6
  %9 = load i32**** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %9, i64 %idxprom5
  %10 = load i32*** %arrayidx8, align 8, !tbaa !0
  %11 = load i32** %10, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %10, i64 1
  %12 = load i32** %arrayidx15, align 8, !tbaa !0
  %and16 = and i32 %b4, 1
  %and = shl i32 %b8, 1
  %13 = and i32 %and, 2
  %14 = or i32 %13, %and16
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18
  store i32 %14, i32* %subblock_x, align 4, !tbaa !3
  %cmp22 = icmp slt i32 %b8, 2
  %cmp24 = icmp slt i32 %b4, 2
  br i1 %cmp22, label %cond.true23, label %cond.false26

cond.true23:                                      ; preds = %entry
  %15 = zext i1 %cmp24 to i32
  %cond25 = xor i32 %15, 1
  br label %cond.end29

cond.false26:                                     ; preds = %entry
  %cond28 = select i1 %cmp24, i32 2, i32 3
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false26, %cond.true23
  %cond30 = phi i32 [ %cond25, %cond.true23 ], [ %cond28, %cond.false26 ]
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19
  store i32 %cond30, i32* %subblock_y, align 4, !tbaa !3
  %tobool = icmp ne i32 %intra4x4mode, 0
  %cond39 = select i1 %tobool, i32 7, i32 12
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx50 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  %cond42 = select i1 %tobool, i32 9, i32 14
  br label %for.body

for.body:                                         ; preds = %cond.end29, %for.body
  %indvars.iv = phi i64 [ 0, %cond.end29 ], [ %indvars.iv.next, %for.body ]
  %rate.081 = phi i32 [ 0, %cond.end29 ], [ %add52, %for.body ]
  %currSE.080 = phi %struct.syntaxelement* [ %arrayidx2, %cond.end29 ], [ %incdec.ptr, %for.body ]
  %arrayidx34 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %16 = load i32* %arrayidx34, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 1
  store i32 %16, i32* %value1, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %17 = load i32* %arrayidx36, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 2
  store i32 %17, i32* %value2, align 4, !tbaa !3
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 6
  store i32 5, i32* %context, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv to i32
  %cmp37 = icmp eq i32 %18, 0
  %cond39.cond42 = select i1 %cmp37, i32 %cond39, i32 %cond42
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 0
  store i32 %cond39.cond42, i32* %type, align 4, !tbaa !3
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 20
  store i32 %intra4x4mode, i32* %is_intra_block, align 4, !tbaa !3
  %20 = load i32* %type, align 4, !tbaa !3
  %idxprom46 = sext i32 %20 to i64
  %arrayidx47 = getelementptr inbounds i32* %7, i64 %idxprom46
  %21 = load i32* %arrayidx47, align 4, !tbaa !3
  %idxprom48 = sext i32 %21 to i64
  %22 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom48
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %22, i64 %idxprom48, i32 2
  %23 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call = tail call i32 %23(%struct.syntaxelement* %currSE.080, %struct.datapartition* %arrayidx49) #7
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 0, i32 3
  %24 = load i32* %len, align 4, !tbaa !3
  %25 = load i32* %arrayidx50, align 4, !tbaa !3
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %arrayidx50, align 4, !tbaa !3
  %26 = load i32* %len, align 4, !tbaa !3
  %add52 = add nsw i32 %26, %rate.081
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.080, i64 1
  %27 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %phitmp = icmp eq i32 %16, 0
  %cmp31 = icmp sgt i32 %18, 15
  %or.cond = or i1 %cmp31, %phitmp
  br i1 %or.cond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %add52
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeLumaCoeff8x8_CABAC(i32 %b8, i32 %intra_mode) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %idxprom5 = sext i32 %b8 to i64
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %8 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32**** %8, i64 %idxprom5
  %9 = load i32**** %arrayidx6, align 8, !tbaa !0
  %10 = load i32*** %9, align 8, !tbaa !0
  %11 = load i32** %10, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32** %10, i64 1
  %12 = load i32** %arrayidx13, align 8, !tbaa !0
  %and = shl i32 %b8, 1
  %13 = and i32 %and, 2
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18
  store i32 %13, i32* %subblock_x, align 4, !tbaa !3
  %cmp14 = icmp slt i32 %b8, 2
  %cond15 = select i1 %cmp14, i32 0, i32 2
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19
  store i32 %cond15, i32* %subblock_y, align 4, !tbaa !3
  %tobool = icmp ne i32 %intra_mode, 0
  %cond23 = select i1 %tobool, i32 7, i32 12
  %arrayidx34 = getelementptr inbounds i32* %7, i64 18
  %partArr36 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx38 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  %cond25 = select i1 %tobool, i32 9, i32 14
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %rate.068 = phi i32 [ 0, %entry ], [ %add40, %if.end ]
  %currSE.067 = phi %struct.syntaxelement* [ %arrayidx2, %entry ], [ %incdec.ptr, %if.end ]
  %arrayidx19 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %14 = load i32* %arrayidx19, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 1
  store i32 %14, i32* %value1, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %15 = load i32* %arrayidx21, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 2
  store i32 %15, i32* %value2, align 4, !tbaa !3
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 6
  store i32 2, i32* %context, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv to i32
  %cmp22 = icmp eq i32 %16, 0
  %cond23.cond25 = select i1 %cmp22, i32 %cond23, i32 %cond25
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 0
  store i32 %cond23.cond25, i32* %type, align 4, !tbaa !3
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 20
  store i32 %intra_mode, i32* %is_intra_block, align 4, !tbaa !3
  %type27 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 6
  %18 = load i32* %type27, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %18, 1
  br i1 %cmp28, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %19 = load i32* %type, align 4, !tbaa !3
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds i32* %7, i64 %idxprom30
  %20 = load i32* %arrayidx31, align 4, !tbaa !3
  %idxprom32 = sext i32 %20 to i64
  %21 = load %struct.datapartition** %partArr36, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds %struct.datapartition* %21, i64 %idxprom32
  br label %if.end

if.else:                                          ; preds = %for.body
  %22 = load i32* %arrayidx34, align 4, !tbaa !3
  %idxprom35 = sext i32 %22 to i64
  %23 = load %struct.datapartition** %partArr36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.datapartition* %23, i64 %idxprom35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dataPart.0 = phi %struct.datapartition* [ %arrayidx33, %if.then ], [ %arrayidx37, %if.else ]
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %dataPart.0, i64 0, i32 2
  %24 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call = tail call i32 %24(%struct.syntaxelement* %currSE.067, %struct.datapartition* %dataPart.0) #7
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 0, i32 3
  %25 = load i32* %len, align 4, !tbaa !3
  %26 = load i32* %arrayidx38, align 4, !tbaa !3
  %add = add nsw i32 %26, %25
  store i32 %add, i32* %arrayidx38, align 4, !tbaa !3
  %27 = load i32* %len, align 4, !tbaa !3
  %add40 = add nsw i32 %27, %rate.068
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.067, i64 1
  %28 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %phitmp = icmp eq i32 %14, 0
  %cmp16 = icmp sgt i32 %16, 63
  %or.cond = or i1 %cmp16, %phitmp
  br i1 %or.cond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret i32 %add40
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeLumaCoeff8x8(i32 %block8x8, i32 %block_mode, i32 %transform_size_flag) #0 {
entry:
  %cmp = icmp eq i32 %block_mode, 11
  %conv = zext i1 %cmp to i32
  %tobool = icmp ne i32 %transform_size_flag, 0
  br i1 %tobool, label %lor.lhs.false, label %for.cond.preheader

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 59
  %1 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %for.cond.preheader, label %if.else18

for.cond.preheader:                               ; preds = %lor.lhs.false, %entry
  %cmp13 = icmp eq i32 %block_mode, 13
  %conv14 = zext i1 %cmp13 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %block4x4.042 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %rate.041 = phi i32 [ 0, %for.cond.preheader ], [ %rate.1, %for.inc ]
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode8 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 59
  %3 = load i32* %symbol_mode8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %conv14.conv = select i1 %tobool, i32 %conv14, i32 %conv
  %call = tail call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %block8x8, i32 %block4x4.042, i32 %conv14.conv) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call15 = tail call i32 @writeLumaCoeff4x4_CABAC(i32 %block8x8, i32 %block4x4.042, i32 %conv) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else
  %call.pn = phi i32 [ %call, %if.then11 ], [ %call15, %if.else ]
  %rate.1 = add nsw i32 %call.pn, %rate.041
  %inc = add nsw i32 %block4x4.042, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %if.end28, label %for.body

if.else18:                                        ; preds = %lor.lhs.false
  %cmp19 = icmp eq i32 %block_mode, 13
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else18
  %call22 = tail call i32 @writeLumaCoeff8x8_CABAC(i32 %block8x8, i32 1) #8
  br label %if.end28

if.else24:                                        ; preds = %if.else18
  %call25 = tail call i32 @writeLumaCoeff8x8_CABAC(i32 %block8x8, i32 0) #8
  br label %if.end28

if.end28:                                         ; preds = %for.inc, %if.then21, %if.else24
  %rate.2 = phi i32 [ %call22, %if.then21 ], [ %call25, %if.else24 ], [ %rate.1, %for.inc ]
  ret i32 %rate.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeCBPandLumaCoeff() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 0
  %3 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %4 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %cbp5 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %8 = load i32* %cbp5, align 4, !tbaa !3
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %9 = load i32**** %cofDC, align 8, !tbaa !0
  %10 = load i32*** %9, align 8, !tbaa !0
  %11 = load i32** %10, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32** %10, i64 1
  %12 = load i32** %arrayidx10, align 8, !tbaa !0
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %13 = load i32* %mb_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %13, 10
  br i1 %cmp, label %if.end94, label %if.then

if.then:                                          ; preds = %entry
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 1
  store i32 %8, i32* %value1, align 4, !tbaa !3
  %14 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %14, label %if.else [
    i32 9, label %if.then18
    i32 12, label %if.then18
    i32 13, label %if.then18
  ]

if.then18:                                        ; preds = %if.then, %if.then, %if.then
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %15 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then18
  %mapping = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @cbp_linfo_intra, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then18
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 6, i32* %type, align 4, !tbaa !3
  br label %if.end27

if.else:                                          ; preds = %if.then
  %symbol_mode21 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 59
  %16 = load i32* %symbol_mode21, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else
  %mapping24 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 8
  store void (i32, i32, i32*, i32*)* @cbp_linfo_inter, void (i32, i32, i32*, i32*)** %mapping24, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else
  %type26 = getelementptr inbounds %struct.syntaxelement* %arrayidx2, i64 0, i32 0
  store i32 11, i32* %type26, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end
  %17 = phi i64 [ 11, %if.end25 ], [ 6, %if.end ]
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode28 = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 59
  %19 = load i32* %symbol_mode28, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %19, 1
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCBP_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27
  %arrayidx34 = getelementptr inbounds i32* %7, i64 %17
  %20 = load i32* %arrayidx34, align 4, !tbaa !3
  %idxprom35 = sext i32 %20 to i64
  %partArr = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %21 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds %struct.datapartition* %21, i64 %idxprom35
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %21, i64 %idxprom35, i32 2
  %22 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call = tail call i32 %22(%struct.syntaxelement* %arrayidx2, %struct.datapartition* %arrayidx36) #7
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1, i32 3
  %23 = load i32* %len, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 4
  %24 = load i32* %arrayidx37, align 4, !tbaa !3
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %arrayidx37, align 4, !tbaa !3
  %25 = load i32* %len, align 4, !tbaa !3
  %arrayidx2.sum = add i64 %idxprom1, 1
  %incdec.ptr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum
  %26 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %27 = load i32* %mb_type, align 4, !tbaa !3
  %.off = add i32 %27, -1
  %28 = icmp ult i32 %.off, 3
  br i1 %28, label %land.lhs.true54, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end31
  %cmp47 = icmp eq i32 %27, 0
  br i1 %cmp47, label %land.lhs.true48, label %lor.lhs.false52

land.lhs.true48:                                  ; preds = %lor.lhs.false45
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type49 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 6
  %30 = load i32* %type49, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %30, 1
  br i1 %cmp50, label %land.lhs.true51, label %lor.lhs.false52

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %31 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %31, i64 0, i32 27
  %32 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %32, 0
  br i1 %tobool, label %lor.lhs.false52, label %land.lhs.true54

lor.lhs.false52:                                  ; preds = %land.lhs.true51, %land.lhs.true48, %lor.lhs.false45
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 33
  %33 = load i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  %tobool53 = icmp eq i32 %33, 0
  br i1 %tobool53, label %if.end94, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true51, %lor.lhs.false52, %if.end31
  switch i32 %27, label %land.lhs.true60 [
    i32 13, label %if.end94
    i32 9, label %if.end94
  ]

land.lhs.true60:                                  ; preds = %land.lhs.true54
  %34 = load i32* %cbp5, align 4, !tbaa !3
  %and = and i32 %34, 15
  %tobool62 = icmp eq i32 %and, 0
  br i1 %tobool62, label %if.end94, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true60
  %35 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 123
  %36 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool63 = icmp eq i32 %36, 0
  br i1 %tobool63, label %if.end94, label %if.then65

if.then65:                                        ; preds = %land.rhs
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %37 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %value166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 1
  store i32 %37, i32* %value166, align 4, !tbaa !3
  %type67 = getelementptr inbounds %struct.syntaxelement* %incdec.ptr, i64 0, i32 0
  store i32 20, i32* %type67, align 4, !tbaa !3
  %symbol_mode68 = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 59
  %38 = load i32* %symbol_mode68, align 4, !tbaa !3
  %cmp69 = icmp eq i32 %38, 0
  br i1 %cmp69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.then65
  %mapping71 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping71, align 8, !tbaa !0
  br label %if.end74

if.else72:                                        ; preds = %if.then65
  %writing73 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_transform_size_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing73, align 8, !tbaa !0
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.then70
  %39 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode75 = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 59
  %40 = load i32* %symbol_mode75, align 4, !tbaa !3
  %cmp76 = icmp eq i32 %40, 0
  br i1 %cmp76, label %if.then77, label %if.else81

if.then77:                                        ; preds = %if.end74
  %41 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %bitpattern = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 5
  store i32 %41, i32* %bitpattern, align 4, !tbaa !3
  %len79 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 3
  store i32 1, i32* %len79, align 4, !tbaa !3
  %bitstream = getelementptr inbounds %struct.datapartition* %arrayidx36, i64 0, i32 0
  %42 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %call80 = tail call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %incdec.ptr, %struct.Bitstream* %42) #7
  br label %if.end84

if.else81:                                        ; preds = %if.end74
  %43 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call83 = tail call i32 %43(%struct.syntaxelement* %incdec.ptr, %struct.datapartition* %arrayidx36) #7
  %len85.pre = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %arrayidx2.sum, i32 3
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then77
  %len85.pre-phi = phi i32* [ %len85.pre, %if.else81 ], [ %len79, %if.then77 ]
  %44 = load i32* %len85.pre-phi, align 4, !tbaa !3
  %arrayidx86 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 2
  %45 = load i32* %arrayidx86, align 4, !tbaa !3
  %add87 = add nsw i32 %45, %44
  store i32 %add87, i32* %arrayidx86, align 4, !tbaa !3
  %46 = load i32* %len85.pre-phi, align 4, !tbaa !3
  %add89 = add nsw i32 %46, %25
  %incdec.ptr.sum = add i64 %idxprom1, 2
  %incdec.ptr90 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %incdec.ptr.sum
  %47 = load i32* %currSEnr, align 4, !tbaa !3
  %inc92 = add nsw i32 %47, 1
  store i32 %inc92, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end94

if.end94:                                         ; preds = %land.rhs, %lor.lhs.false52, %land.lhs.true54, %land.lhs.true54, %land.lhs.true60, %if.end84, %entry
  %currSE.0 = phi %struct.syntaxelement* [ %arrayidx2, %entry ], [ %incdec.ptr90, %if.end84 ], [ %incdec.ptr, %land.rhs ], [ %incdec.ptr, %land.lhs.true60 ], [ %incdec.ptr, %land.lhs.true54 ], [ %incdec.ptr, %land.lhs.true54 ], [ %incdec.ptr, %lor.lhs.false52 ]
  %rate.0 = phi i32 [ 0, %entry ], [ %add89, %if.end84 ], [ %25, %land.rhs ], [ %25, %land.lhs.true60 ], [ %25, %land.lhs.true54 ], [ %25, %land.lhs.true54 ], [ %25, %lor.lhs.false52 ]
  %cmp95 = icmp eq i32 %8, 0
  br i1 %cmp95, label %lor.lhs.false96, label %if.then99

lor.lhs.false96:                                  ; preds = %if.end94
  %48 = load i32* %mb_type, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %48, 10
  br i1 %cmp98, label %if.then99, label %if.end138

if.then99:                                        ; preds = %lor.lhs.false96, %if.end94
  %delta_qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 2
  %49 = load i32* %delta_qp, align 4, !tbaa !3
  %value1100 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 1
  store i32 %49, i32* %value1100, align 4, !tbaa !3
  %50 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode101 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 59
  %51 = load i32* %symbol_mode101, align 4, !tbaa !3
  %cmp102 = icmp eq i32 %51, 0
  br i1 %cmp102, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.then99
  %mapping104 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @se_linfo, void (i32, i32, i32*, i32*)** %mapping104, align 8, !tbaa !0
  br label %if.end107

if.else105:                                       ; preds = %if.then99
  %writing106 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeDquant_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing106, align 8, !tbaa !0
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then103
  %52 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %52, label %if.then116 [
    i32 9, label %if.else118
    i32 10, label %if.else118
    i32 13, label %if.else118
  ]

if.then116:                                       ; preds = %if.end107
  %type117 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 0
  store i32 16, i32* %type117, align 4, !tbaa !3
  br label %if.end120

if.else118:                                       ; preds = %if.end107, %if.end107, %if.end107
  %type119 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 0
  store i32 17, i32* %type119, align 4, !tbaa !3
  br label %if.end120

if.end120:                                        ; preds = %if.else118, %if.then116
  %53 = phi i64 [ 17, %if.else118 ], [ 16, %if.then116 ]
  %arrayidx123 = getelementptr inbounds i32* %7, i64 %53
  %54 = load i32* %arrayidx123, align 4, !tbaa !3
  %idxprom124 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice125 = getelementptr inbounds %struct.ImageParameters* %55, i64 0, i32 50
  %56 = load %struct.Slice** %currentSlice125, align 8, !tbaa !0
  %partArr126 = getelementptr inbounds %struct.Slice* %56, i64 0, i32 6
  %57 = load %struct.datapartition** %partArr126, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds %struct.datapartition* %57, i64 %idxprom124
  %writeSyntaxElement128 = getelementptr inbounds %struct.datapartition* %57, i64 %idxprom124, i32 2
  %58 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement128, align 8, !tbaa !0
  %call129 = tail call i32 %58(%struct.syntaxelement* %currSE.0, %struct.datapartition* %arrayidx127) #7
  %len130 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 0, i32 3
  %59 = load i32* %len130, align 4, !tbaa !3
  %arrayidx131 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 7
  %60 = load i32* %arrayidx131, align 4, !tbaa !3
  %add132 = add nsw i32 %60, %59
  store i32 %add132, i32* %arrayidx131, align 4, !tbaa !3
  %61 = load i32* %len130, align 4, !tbaa !3
  %add134 = add nsw i32 %61, %rate.0
  %incdec.ptr135 = getelementptr inbounds %struct.syntaxelement* %currSE.0, i64 1
  %62 = load i32* %currSEnr, align 4, !tbaa !3
  %inc137 = add nsw i32 %62, 1
  store i32 %inc137, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end138

if.end138:                                        ; preds = %lor.lhs.false96, %if.end120
  %currSE.1 = phi %struct.syntaxelement* [ %incdec.ptr135, %if.end120 ], [ %currSE.0, %lor.lhs.false96 ]
  %rate.1 = phi i32 [ %add134, %if.end120 ], [ %rate.0, %lor.lhs.false96 ]
  %63 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_blk8x8_uv483 = getelementptr inbounds %struct.ImageParameters* %63, i64 0, i32 157
  %64 = load i32* %num_blk8x8_uv483, align 4, !tbaa !3
  %add139484 = add nsw i32 %64, 4
  %cmp140485 = icmp sgt i32 %add139484, 0
  br i1 %cmp140485, label %for.cond141.preheader.lr.ph, label %for.end154

for.cond141.preheader.lr.ph:                      ; preds = %if.end138
  %current_mb_nr146 = getelementptr inbounds %struct.ImageParameters* %63, i64 0, i32 3
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %63, i64 0, i32 28
  %65 = load i32**** %nz_coeff, align 8, !tbaa !0
  br label %for.cond141.preheader

for.cond141.preheader:                            ; preds = %for.cond141.preheader.lr.ph, %for.inc152
  %indvars.iv495 = phi i64 [ 0, %for.cond141.preheader.lr.ph ], [ %indvars.iv.next496, %for.inc152 ]
  br label %for.body143

for.body143:                                      ; preds = %for.body143, %for.cond141.preheader
  %indvars.iv491 = phi i64 [ 0, %for.cond141.preheader ], [ %indvars.iv.next492, %for.body143 ]
  %66 = load i32* %current_mb_nr146, align 4, !tbaa !3
  %idxprom147 = sext i32 %66 to i64
  %arrayidx148 = getelementptr inbounds i32*** %65, i64 %idxprom147
  %67 = load i32*** %arrayidx148, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32** %67, i64 %indvars.iv491
  %68 = load i32** %arrayidx149, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32* %68, i64 %indvars.iv495
  store i32 0, i32* %arrayidx150, align 4, !tbaa !3
  %indvars.iv.next492 = add i64 %indvars.iv491, 1
  %lftr.wideiv493 = trunc i64 %indvars.iv.next492 to i32
  %exitcond494 = icmp eq i32 %lftr.wideiv493, 4
  br i1 %exitcond494, label %for.inc152, label %for.body143

for.inc152:                                       ; preds = %for.body143
  %indvars.iv.next496 = add i64 %indvars.iv495, 1
  %69 = load i32* %num_blk8x8_uv483, align 4, !tbaa !3
  %70 = add nsw i32 %69, 3
  %71 = trunc i64 %indvars.iv495 to i32
  %cmp140 = icmp slt i32 %71, %70
  br i1 %cmp140, label %for.cond141.preheader, label %for.end154

for.end154:                                       ; preds = %for.inc152, %if.end138
  %72 = load i32* %mb_type, align 4, !tbaa !3
  %cmp156 = icmp eq i32 %72, 10
  br i1 %cmp156, label %if.else173, label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.end154
  %luma_transform_size_8x8_flag166 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  br label %for.body160

for.body160:                                      ; preds = %for.inc170, %for.cond158.preheader
  %indvars.iv489 = phi i64 [ 0, %for.cond158.preheader ], [ %indvars.iv.next490, %for.inc170 ]
  %rate.2480 = phi i32 [ %rate.1, %for.cond158.preheader ], [ %rate.3, %for.inc170 ]
  %73 = trunc i64 %indvars.iv489 to i32
  %shl = shl i32 1, %73
  %and161 = and i32 %shl, %8
  %tobool162 = icmp eq i32 %and161, 0
  br i1 %tobool162, label %for.inc170, label %if.then163

if.then163:                                       ; preds = %for.body160
  %arrayidx165 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv489
  %74 = load i32* %arrayidx165, align 4, !tbaa !3
  %75 = load i32* %luma_transform_size_8x8_flag166, align 4, !tbaa !3
  %call167 = tail call i32 @writeLumaCoeff8x8(i32 %73, i32 %74, i32 %75) #8
  %add168 = add nsw i32 %call167, %rate.2480
  br label %for.inc170

for.inc170:                                       ; preds = %for.body160, %if.then163
  %rate.3 = phi i32 [ %add168, %if.then163 ], [ %rate.2480, %for.body160 ]
  %indvars.iv.next490 = add i64 %indvars.iv489, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next490 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %if.end315, label %for.body160

if.else173:                                       ; preds = %for.end154
  %76 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode174 = getelementptr inbounds %struct.InputParameters* %76, i64 0, i32 59
  %77 = load i32* %symbol_mode174, align 4, !tbaa !3
  %cmp175 = icmp eq i32 %77, 0
  br i1 %cmp175, label %if.then176, label %for.cond180.preheader

for.cond180.preheader:                            ; preds = %if.else173
  %partArr204 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx209 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  br label %for.body186

if.then176:                                       ; preds = %if.else173
  %call177 = tail call i32 @writeCoeff4x4_CAVLC(i32 1, i32 0, i32 0, i32 0) #8
  %add178 = add nsw i32 %call177, %rate.1
  br label %if.end219

for.body186:                                      ; preds = %if.end198.for.body186_crit_edge, %for.cond180.preheader
  %78 = phi %struct.InputParameters* [ %76, %for.cond180.preheader ], [ %.pre497, %if.end198.for.body186_crit_edge ]
  %indvars.iv487 = phi i64 [ 0, %for.cond180.preheader ], [ %indvars.iv.next488, %if.end198.for.body186_crit_edge ]
  %rate.4477 = phi i32 [ %rate.1, %for.cond180.preheader ], [ %add212, %if.end198.for.body186_crit_edge ]
  %currSE.2476 = phi %struct.syntaxelement* [ %currSE.1, %for.cond180.preheader ], [ %incdec.ptr213, %if.end198.for.body186_crit_edge ]
  %arrayidx188 = getelementptr inbounds i32* %11, i64 %indvars.iv487
  %79 = load i32* %arrayidx188, align 4, !tbaa !3
  %value1189 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 1
  store i32 %79, i32* %value1189, align 4, !tbaa !3
  %arrayidx191 = getelementptr inbounds i32* %12, i64 %indvars.iv487
  %80 = load i32* %arrayidx191, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 2
  store i32 %80, i32* %value2, align 4, !tbaa !3
  %symbol_mode192 = getelementptr inbounds %struct.InputParameters* %78, i64 0, i32 59
  %81 = load i32* %symbol_mode192, align 4, !tbaa !3
  %cmp193 = icmp eq i32 %81, 0
  br i1 %cmp193, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.body186
  %mapping195 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @levrun_linfo_inter, void (i32, i32, i32*, i32*)** %mapping195, align 8, !tbaa !0
  br label %if.end198

if.else196:                                       ; preds = %for.body186
  %writing197 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing197, align 8, !tbaa !0
  br label %if.end198

if.end198:                                        ; preds = %if.else196, %if.then194
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 6
  store i32 0, i32* %context, align 4, !tbaa !3
  %type199 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 0
  store i32 7, i32* %type199, align 4, !tbaa !3
  %82 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 20
  store i32 1, i32* %is_intra_block, align 4, !tbaa !3
  %83 = load i32* %type199, align 4, !tbaa !3
  %idxprom201 = sext i32 %83 to i64
  %arrayidx202 = getelementptr inbounds i32* %7, i64 %idxprom201
  %84 = load i32* %arrayidx202, align 4, !tbaa !3
  %idxprom203 = sext i32 %84 to i64
  %85 = load %struct.datapartition** %partArr204, align 8, !tbaa !0
  %arrayidx205 = getelementptr inbounds %struct.datapartition* %85, i64 %idxprom203
  %writeSyntaxElement206 = getelementptr inbounds %struct.datapartition* %85, i64 %idxprom203, i32 2
  %86 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement206, align 8, !tbaa !0
  %call207 = tail call i32 %86(%struct.syntaxelement* %currSE.2476, %struct.datapartition* %arrayidx205) #7
  %len208 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 0, i32 3
  %87 = load i32* %len208, align 4, !tbaa !3
  %88 = load i32* %arrayidx209, align 4, !tbaa !3
  %add210 = add nsw i32 %88, %87
  store i32 %add210, i32* %arrayidx209, align 4, !tbaa !3
  %89 = load i32* %len208, align 4, !tbaa !3
  %add212 = add nsw i32 %89, %rate.4477
  %incdec.ptr213 = getelementptr inbounds %struct.syntaxelement* %currSE.2476, i64 1
  %90 = load i32* %currSEnr, align 4, !tbaa !3
  %inc215 = add nsw i32 %90, 1
  store i32 %inc215, i32* %currSEnr, align 4, !tbaa !3
  %phitmp = icmp eq i32 %79, 0
  %91 = trunc i64 %indvars.iv487 to i32
  %cmp181 = icmp sgt i32 %91, 15
  %or.cond458 = or i1 %cmp181, %phitmp
  br i1 %or.cond458, label %if.end219, label %if.end198.for.body186_crit_edge

if.end198.for.body186_crit_edge:                  ; preds = %if.end198
  %indvars.iv.next488 = add i64 %indvars.iv487, 1
  %.pre497 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body186

if.end219:                                        ; preds = %if.end198, %if.then176
  %currSE.3 = phi %struct.syntaxelement* [ %currSE.1, %if.then176 ], [ %incdec.ptr213, %if.end198 ]
  %rate.5 = phi i32 [ %add178, %if.then176 ], [ %add212, %if.end198 ]
  %and220 = and i32 %8, 15
  %tobool221 = icmp eq i32 %and220, 0
  br i1 %tobool221, label %if.end315, label %for.cond223.preheader

for.cond223.preheader:                            ; preds = %if.end219
  %partArr286 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6
  %arrayidx291 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 5, i64 5
  br label %for.cond226.preheader

for.cond226.preheader:                            ; preds = %for.cond223.preheader, %for.inc311
  %mb_y.0475 = phi i32 [ 0, %for.cond223.preheader ], [ %add312, %for.inc311 ]
  %rate.6474 = phi i32 [ %rate.5, %for.cond223.preheader ], [ %rate.11, %for.inc311 ]
  %currSE.4473 = phi %struct.syntaxelement* [ %currSE.3, %for.cond223.preheader ], [ %currSE.9, %for.inc311 ]
  br label %for.cond229.preheader

for.cond229.preheader:                            ; preds = %for.cond226.preheader, %for.inc308
  %mb_x.0472 = phi i32 [ 0, %for.cond226.preheader ], [ %add309, %for.inc308 ]
  %rate.7471 = phi i32 [ %rate.6474, %for.cond226.preheader ], [ %rate.11, %for.inc308 ]
  %currSE.5470 = phi %struct.syntaxelement* [ %currSE.4473, %for.cond226.preheader ], [ %currSE.9, %for.inc308 ]
  br label %for.cond233.preheader

for.cond233.preheader:                            ; preds = %for.cond229.preheader, %for.inc305
  %j.1469 = phi i32 [ %mb_y.0475, %for.cond229.preheader ], [ %inc306, %for.inc305 ]
  %rate.8468 = phi i32 [ %rate.7471, %for.cond229.preheader ], [ %rate.11, %for.inc305 ]
  %currSE.6467 = phi %struct.syntaxelement* [ %currSE.5470, %for.cond229.preheader ], [ %currSE.9, %for.inc305 ]
  %div = sdiv i32 %j.1469, 2
  %mul = shl nsw i32 %div, 1
  %rem = srem i32 %j.1469, 2
  %mul239 = shl nsw i32 %rem, 1
  br label %for.body236

for.body236:                                      ; preds = %for.cond233.preheader, %for.inc302
  %i.2466 = phi i32 [ %mb_x.0472, %for.cond233.preheader ], [ %inc303, %for.inc302 ]
  %rate.9465 = phi i32 [ %rate.8468, %for.cond233.preheader ], [ %rate.11, %for.inc302 ]
  %currSE.7464 = phi %struct.syntaxelement* [ %currSE.6467, %for.cond233.preheader ], [ %currSE.9, %for.inc302 ]
  %div237 = sdiv i32 %i.2466, 2
  %add238 = add nsw i32 %mul, %div237
  %rem240 = srem i32 %i.2466, 2
  %add241 = add nsw i32 %mul239, %rem240
  %92 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode242 = getelementptr inbounds %struct.InputParameters* %92, i64 0, i32 59
  %93 = load i32* %symbol_mode242, align 4, !tbaa !3
  %cmp243 = icmp eq i32 %93, 0
  br i1 %cmp243, label %if.then244, label %if.else247

if.then244:                                       ; preds = %for.body236
  %call245 = tail call i32 @writeCoeff4x4_CAVLC(i32 2, i32 %add238, i32 %add241, i32 0) #8
  %add246 = add nsw i32 %call245, %rate.9465
  br label %for.inc302

if.else247:                                       ; preds = %for.body236
  %idxprom248 = sext i32 %add241 to i64
  %idxprom249 = sext i32 %add238 to i64
  %94 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 47
  %95 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx250 = getelementptr inbounds i32**** %95, i64 %idxprom249
  %96 = load i32**** %arrayidx250, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds i32*** %96, i64 %idxprom248
  %97 = load i32*** %arrayidx251, align 8, !tbaa !0
  %98 = load i32** %97, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i32** %97, i64 1
  %99 = load i32** %arrayidx258, align 8, !tbaa !0
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 19
  store i32 %j.1469, i32* %subblock_y, align 4, !tbaa !3
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 18
  store i32 %i.2466, i32* %subblock_x, align 4, !tbaa !3
  br label %for.body265

for.body265:                                      ; preds = %if.end278.for.body265_crit_edge, %if.else247
  %100 = phi %struct.InputParameters* [ %92, %if.else247 ], [ %.pre, %if.end278.for.body265_crit_edge ]
  %indvars.iv = phi i64 [ 0, %if.else247 ], [ %indvars.iv.next, %if.end278.for.body265_crit_edge ]
  %rate.10462 = phi i32 [ %rate.9465, %if.else247 ], [ %add294, %if.end278.for.body265_crit_edge ]
  %currSE.8461 = phi %struct.syntaxelement* [ %currSE.7464, %if.else247 ], [ %incdec.ptr295, %if.end278.for.body265_crit_edge ]
  %arrayidx267 = getelementptr inbounds i32* %98, i64 %indvars.iv
  %101 = load i32* %arrayidx267, align 4, !tbaa !3
  %value1268 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 1
  store i32 %101, i32* %value1268, align 4, !tbaa !3
  %arrayidx270 = getelementptr inbounds i32* %99, i64 %indvars.iv
  %102 = load i32* %arrayidx270, align 4, !tbaa !3
  %value2271 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 2
  store i32 %102, i32* %value2271, align 4, !tbaa !3
  %symbol_mode272 = getelementptr inbounds %struct.InputParameters* %100, i64 0, i32 59
  %103 = load i32* %symbol_mode272, align 4, !tbaa !3
  %cmp273 = icmp eq i32 %103, 0
  br i1 %cmp273, label %if.then274, label %if.else276

if.then274:                                       ; preds = %for.body265
  %mapping275 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @levrun_linfo_inter, void (i32, i32, i32*, i32*)** %mapping275, align 8, !tbaa !0
  br label %if.end278

if.else276:                                       ; preds = %for.body265
  %writing277 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing277, align 8, !tbaa !0
  br label %if.end278

if.end278:                                        ; preds = %if.else276, %if.then274
  %context279 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 6
  store i32 1, i32* %context279, align 4, !tbaa !3
  %type280 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 0
  store i32 9, i32* %type280, align 4, !tbaa !3
  %104 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block281 = getelementptr inbounds %struct.ImageParameters* %104, i64 0, i32 20
  store i32 1, i32* %is_intra_block281, align 4, !tbaa !3
  %105 = load i32* %type280, align 4, !tbaa !3
  %idxprom283 = sext i32 %105 to i64
  %arrayidx284 = getelementptr inbounds i32* %7, i64 %idxprom283
  %106 = load i32* %arrayidx284, align 4, !tbaa !3
  %idxprom285 = sext i32 %106 to i64
  %107 = load %struct.datapartition** %partArr286, align 8, !tbaa !0
  %arrayidx287 = getelementptr inbounds %struct.datapartition* %107, i64 %idxprom285
  %writeSyntaxElement288 = getelementptr inbounds %struct.datapartition* %107, i64 %idxprom285, i32 2
  %108 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement288, align 8, !tbaa !0
  %call289 = tail call i32 %108(%struct.syntaxelement* %currSE.8461, %struct.datapartition* %arrayidx287) #7
  %len290 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 0, i32 3
  %109 = load i32* %len290, align 4, !tbaa !3
  %110 = load i32* %arrayidx291, align 4, !tbaa !3
  %add292 = add nsw i32 %110, %109
  store i32 %add292, i32* %arrayidx291, align 4, !tbaa !3
  %111 = load i32* %len290, align 4, !tbaa !3
  %add294 = add nsw i32 %111, %rate.10462
  %incdec.ptr295 = getelementptr inbounds %struct.syntaxelement* %currSE.8461, i64 1
  %112 = load i32* %currSEnr, align 4, !tbaa !3
  %inc297 = add nsw i32 %112, 1
  store i32 %inc297, i32* %currSEnr, align 4, !tbaa !3
  %phitmp460 = icmp eq i32 %101, 0
  %113 = trunc i64 %indvars.iv to i32
  %cmp260 = icmp sgt i32 %113, 14
  %or.cond459 = or i1 %cmp260, %phitmp460
  br i1 %or.cond459, label %for.inc302, label %if.end278.for.body265_crit_edge

if.end278.for.body265_crit_edge:                  ; preds = %if.end278
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body265

for.inc302:                                       ; preds = %if.end278, %if.then244
  %currSE.9 = phi %struct.syntaxelement* [ %currSE.7464, %if.then244 ], [ %incdec.ptr295, %if.end278 ]
  %rate.11 = phi i32 [ %add246, %if.then244 ], [ %add294, %if.end278 ]
  %inc303 = add nsw i32 %i.2466, 1
  %114 = or i32 %mb_x.0472, 1
  %cmp235 = icmp slt i32 %i.2466, %114
  br i1 %cmp235, label %for.body236, label %for.inc305

for.inc305:                                       ; preds = %for.inc302
  %inc306 = add nsw i32 %j.1469, 1
  %115 = or i32 %mb_y.0475, 1
  %cmp231 = icmp slt i32 %j.1469, %115
  br i1 %cmp231, label %for.cond233.preheader, label %for.inc308

for.inc308:                                       ; preds = %for.inc305
  %add309 = add nsw i32 %mb_x.0472, 2
  %cmp227 = icmp slt i32 %add309, 4
  br i1 %cmp227, label %for.cond229.preheader, label %for.inc311

for.inc311:                                       ; preds = %for.inc308
  %add312 = add nsw i32 %mb_y.0475, 2
  %cmp224 = icmp slt i32 %add312, 4
  br i1 %cmp224, label %for.cond226.preheader, label %if.end315

if.end315:                                        ; preds = %for.inc170, %for.inc311, %if.end219
  %rate.12 = phi i32 [ %rate.5, %if.end219 ], [ %rate.11, %for.inc311 ], [ %rate.3, %for.inc170 ]
  ret i32 %rate.12
}

; Function Attrs: optsize
declare void @cbp_linfo_intra(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @cbp_linfo_inter(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @writeCBP_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @writeDquant_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @predict_nnz(i32 %i, i32 %j) #0 {
entry:
  %pix = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %1, i32 %i, i32 %j, i32 -1, i32 0, %struct.pix_pos* %pix) #7
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  %2 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %3, i64 0, i32 27
  %4 = load i32* %constrained_intra_pred_flag, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %if.then6, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end

if.end:                                           ; preds = %land.lhs.true2
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %7 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 54
  %9 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %9, i64 %idxprom
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %and = and i32 %10, %2
  store i32 %and, i32* %available, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %if.end14, label %if.then6

if.then6:                                         ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %11 = load i32* %y, align 4, !tbaa !3
  %idxprom7 = sext i32 %11 to i64
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %12 = load i32* %x, align 4, !tbaa !3
  %idxprom8 = sext i32 %12 to i64
  %mb_addr9 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %13 = load i32* %mb_addr9, align 4, !tbaa !3
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 28
  %15 = load i32**** %nz_coeff, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32*** %15, i64 %idxprom10
  %16 = load i32*** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32** %16, i64 %idxprom8
  %17 = load i32** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %17, i64 %idxprom7
  %18 = load i32* %arrayidx13, align 4, !tbaa !3
  br label %if.end14

if.end14:                                         ; preds = %entry, %if.end, %if.then6
  %cnt.0 = phi i32 [ 2, %if.then6 ], [ 1, %if.end ], [ 1, %entry ]
  %pred_nnz.0 = phi i32 [ %18, %if.then6 ], [ 0, %if.end ], [ 0, %entry ]
  call void @getLuma4x4Neighbour(i32 %1, i32 %i, i32 %j, i32 0, i32 -1, %struct.pix_pos* %pix) #7
  %19 = load i32* %available, align 4, !tbaa !3
  %tobool16 = icmp eq i32 %19, 0
  br i1 %tobool16, label %if.end49, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end14
  %20 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %20, i64 0, i32 27
  %21 = load i32* %constrained_intra_pred_flag18, align 4, !tbaa !1
  %tobool19 = icmp eq i32 %21, 0
  br i1 %tobool19, label %if.end45, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %22 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode21 = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 61
  %23 = load i32* %partition_mode21, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.end45, label %if.end30

if.end30:                                         ; preds = %land.lhs.true20
  %mb_addr24 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %24 = load i32* %mb_addr24, align 4, !tbaa !3
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block26 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 54
  %26 = load i32** %intra_block26, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32* %26, i64 %idxprom25
  %27 = load i32* %arrayidx27, align 4, !tbaa !3
  %and29 = and i32 %27, %19
  store i32 %and29, i32* %available, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %and29, 0
  br i1 %tobool32, label %if.end49, label %if.end45

if.end45:                                         ; preds = %land.lhs.true20, %land.lhs.true17, %if.end30
  %y34 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %28 = load i32* %y34, align 4, !tbaa !3
  %idxprom35 = sext i32 %28 to i64
  %x36 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %29 = load i32* %x36, align 4, !tbaa !3
  %idxprom37 = sext i32 %29 to i64
  %mb_addr38 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %30 = load i32* %mb_addr38, align 4, !tbaa !3
  %idxprom39 = sext i32 %30 to i64
  %31 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff40 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 28
  %32 = load i32**** %nz_coeff40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i32*** %32, i64 %idxprom39
  %33 = load i32*** %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32** %33, i64 %idxprom37
  %34 = load i32** %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i32* %34, i64 %idxprom35
  %35 = load i32* %arrayidx43, align 4, !tbaa !3
  %add = add nsw i32 %35, %pred_nnz.0
  %cmp46 = icmp eq i32 %cnt.0, 2
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end45
  %inc48 = add nsw i32 %add, 1
  %div = sdiv i32 %inc48, 2
  br label %if.end49

if.end49:                                         ; preds = %if.end14, %if.end30, %if.then47, %if.end45
  %pred_nnz.2 = phi i32 [ %div, %if.then47 ], [ %add, %if.end45 ], [ %pred_nnz.0, %if.end30 ], [ %pred_nnz.0, %if.end14 ]
  ret i32 %pred_nnz.2
}

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @predict_nnz_chroma(i32 %i, i32 %j) #0 {
entry:
  %pix = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %j to i64
  %arrayidx = getelementptr inbounds [12 x i32]* @predict_nnz_chroma.j_off_tab, i64 0, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %3 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rem = srem i32 %i, 2
  %sub = add nsw i32 %j, -4
  call void @getChroma4x4Neighbour(i32 %1, i32 %rem, i32 %sub, i32 -1, i32 0, %struct.pix_pos* %pix) #7
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  %4 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %5, i64 0, i32 27
  %6 = load i32* %constrained_intra_pred_flag, align 4, !tbaa !1
  %tobool1 = icmp eq i32 %6, 0
  br i1 %tobool1, label %if.then10, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 61
  %8 = load i32* %partition_mode, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then10, label %if.end

if.end:                                           ; preds = %land.lhs.true2
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %9 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 54
  %11 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32* %11, i64 %idxprom5
  %12 = load i32* %arrayidx6, align 4, !tbaa !3
  %and = and i32 %12, %4
  store i32 %and, i32* %available, align 4, !tbaa !3
  %tobool9 = icmp eq i32 %and, 0
  br i1 %tobool9, label %if.end19, label %if.then10

if.then10:                                        ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %13 = load i32* %y, align 4, !tbaa !3
  %add = add nsw i32 %13, 4
  %idxprom11 = sext i32 %add to i64
  %div = sdiv i32 %i, 2
  %mul = shl i32 %div, 1
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %14 = load i32* %x, align 4, !tbaa !3
  %add12 = add nsw i32 %mul, %14
  %idxprom13 = sext i32 %add12 to i64
  %mb_addr14 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %15 = load i32* %mb_addr14, align 4, !tbaa !3
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 28
  %17 = load i32**** %nz_coeff, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32*** %17, i64 %idxprom15
  %18 = load i32*** %arrayidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32** %18, i64 %idxprom13
  %19 = load i32** %arrayidx17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %19, i64 %idxprom11
  %20 = load i32* %arrayidx18, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.end, %if.then10
  %cnt.0 = phi i32 [ 1, %if.then10 ], [ 0, %if.end ], [ 0, %if.then ]
  %pred_nnz.0 = phi i32 [ %20, %if.then10 ], [ 0, %if.end ], [ 0, %if.then ]
  call void @getChroma4x4Neighbour(i32 %1, i32 %rem, i32 %sub, i32 0, i32 -1, %struct.pix_pos* %pix) #7
  %21 = load i32* %available, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %21, 0
  br i1 %tobool23, label %if.end130, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end19
  %22 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %22, i64 0, i32 27
  %23 = load i32* %constrained_intra_pred_flag25, align 4, !tbaa !1
  %tobool26 = icmp eq i32 %23, 0
  br i1 %tobool26, label %if.then40, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode28 = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 61
  %25 = load i32* %partition_mode28, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %25, 0
  br i1 %cmp29, label %if.then40, label %if.end37

if.end37:                                         ; preds = %land.lhs.true27
  %mb_addr31 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %26 = load i32* %mb_addr31, align 4, !tbaa !3
  %idxprom32 = sext i32 %26 to i64
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block33 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 54
  %28 = load i32** %intra_block33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %28, i64 %idxprom32
  %29 = load i32* %arrayidx34, align 4, !tbaa !3
  %and36 = and i32 %29, %21
  store i32 %and36, i32* %available, align 4, !tbaa !3
  %tobool39 = icmp eq i32 %and36, 0
  br i1 %tobool39, label %if.end130, label %if.then40

if.then40:                                        ; preds = %land.lhs.true27, %land.lhs.true24, %if.end37
  %y41 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %30 = load i32* %y41, align 4, !tbaa !3
  %add42 = add nsw i32 %30, 4
  %idxprom43 = sext i32 %add42 to i64
  %div44 = sdiv i32 %i, 2
  %mul45 = shl i32 %div44, 1
  %x46 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %31 = load i32* %x46, align 4, !tbaa !3
  %add47 = add nsw i32 %mul45, %31
  %idxprom48 = sext i32 %add47 to i64
  %mb_addr49 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %32 = load i32* %mb_addr49, align 4, !tbaa !3
  %idxprom50 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff51 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 28
  %34 = load i32**** %nz_coeff51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i32*** %34, i64 %idxprom50
  %35 = load i32*** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32** %35, i64 %idxprom48
  %36 = load i32** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32* %36, i64 %idxprom43
  %37 = load i32* %arrayidx54, align 4, !tbaa !3
  %add55 = add nsw i32 %37, %pred_nnz.0
  br label %if.end125

if.else:                                          ; preds = %entry
  %sub58 = sub nsw i32 %j, %2
  call void @getChroma4x4Neighbour(i32 %1, i32 %i, i32 %sub58, i32 -1, i32 0, %struct.pix_pos* %pix) #7
  %available59 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0
  %38 = load i32* %available59, align 4, !tbaa !3
  %tobool60 = icmp eq i32 %38, 0
  br i1 %tobool60, label %if.end90, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.else
  %39 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %39, i64 0, i32 27
  %40 = load i32* %constrained_intra_pred_flag62, align 4, !tbaa !1
  %tobool63 = icmp eq i32 %40, 0
  br i1 %tobool63, label %if.then77, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %41 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode65 = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 61
  %42 = load i32* %partition_mode65, align 4, !tbaa !3
  %cmp66 = icmp eq i32 %42, 0
  br i1 %cmp66, label %if.then77, label %if.end74

if.end74:                                         ; preds = %land.lhs.true64
  %mb_addr68 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %43 = load i32* %mb_addr68, align 4, !tbaa !3
  %idxprom69 = sext i32 %43 to i64
  %44 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block70 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 54
  %45 = load i32** %intra_block70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32* %45, i64 %idxprom69
  %46 = load i32* %arrayidx71, align 4, !tbaa !3
  %and73 = and i32 %46, %38
  store i32 %and73, i32* %available59, align 4, !tbaa !3
  %tobool76 = icmp eq i32 %and73, 0
  br i1 %tobool76, label %if.end90, label %if.then77

if.then77:                                        ; preds = %land.lhs.true64, %land.lhs.true61, %if.end74
  %y78 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %47 = load i32* %y78, align 4, !tbaa !3
  %add79 = add nsw i32 %47, %2
  %idxprom80 = sext i32 %add79 to i64
  %x81 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %48 = load i32* %x81, align 4, !tbaa !3
  %idxprom82 = sext i32 %48 to i64
  %mb_addr83 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %49 = load i32* %mb_addr83, align 4, !tbaa !3
  %idxprom84 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff85 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 28
  %51 = load i32**** %nz_coeff85, align 8, !tbaa !0
  %arrayidx86 = getelementptr inbounds i32*** %51, i64 %idxprom84
  %52 = load i32*** %arrayidx86, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i32** %52, i64 %idxprom82
  %53 = load i32** %arrayidx87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32* %53, i64 %idxprom80
  %54 = load i32* %arrayidx88, align 4, !tbaa !3
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.end74, %if.then77
  %cnt.1 = phi i32 [ 1, %if.then77 ], [ 0, %if.end74 ], [ 0, %if.else ]
  %pred_nnz.1 = phi i32 [ %54, %if.then77 ], [ 0, %if.end74 ], [ 0, %if.else ]
  call void @getChroma4x4Neighbour(i32 %1, i32 %i, i32 %sub58, i32 0, i32 -1, %struct.pix_pos* %pix) #7
  %55 = load i32* %available59, align 4, !tbaa !3
  %tobool93 = icmp eq i32 %55, 0
  br i1 %tobool93, label %if.end130, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.end90
  %56 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %constrained_intra_pred_flag95 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %56, i64 0, i32 27
  %57 = load i32* %constrained_intra_pred_flag95, align 4, !tbaa !1
  %tobool96 = icmp eq i32 %57, 0
  br i1 %tobool96, label %if.then110, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true94
  %58 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode98 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 61
  %59 = load i32* %partition_mode98, align 4, !tbaa !3
  %cmp99 = icmp eq i32 %59, 0
  br i1 %cmp99, label %if.then110, label %if.end107

if.end107:                                        ; preds = %land.lhs.true97
  %mb_addr101 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %60 = load i32* %mb_addr101, align 4, !tbaa !3
  %idxprom102 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block103 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 54
  %62 = load i32** %intra_block103, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32* %62, i64 %idxprom102
  %63 = load i32* %arrayidx104, align 4, !tbaa !3
  %and106 = and i32 %63, %55
  store i32 %and106, i32* %available59, align 4, !tbaa !3
  %tobool109 = icmp eq i32 %and106, 0
  br i1 %tobool109, label %if.end130, label %if.then110

if.then110:                                       ; preds = %land.lhs.true97, %land.lhs.true94, %if.end107
  %y111 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3
  %64 = load i32* %y111, align 4, !tbaa !3
  %add112 = add nsw i32 %64, %2
  %idxprom113 = sext i32 %add112 to i64
  %x114 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2
  %65 = load i32* %x114, align 4, !tbaa !3
  %idxprom115 = sext i32 %65 to i64
  %mb_addr116 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1
  %66 = load i32* %mb_addr116, align 4, !tbaa !3
  %idxprom117 = sext i32 %66 to i64
  %67 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nz_coeff118 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 28
  %68 = load i32**** %nz_coeff118, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i32*** %68, i64 %idxprom117
  %69 = load i32*** %arrayidx119, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32** %69, i64 %idxprom115
  %70 = load i32** %arrayidx120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %70, i64 %idxprom113
  %71 = load i32* %arrayidx121, align 4, !tbaa !3
  %add122 = add nsw i32 %71, %pred_nnz.1
  br label %if.end125

if.end125:                                        ; preds = %if.then110, %if.then40
  %cnt.0.sink = phi i32 [ %cnt.0, %if.then40 ], [ %cnt.1, %if.then110 ]
  %pred_nnz.2 = phi i32 [ %add55, %if.then40 ], [ %add122, %if.then110 ]
  %cmp126 = icmp eq i32 %cnt.0.sink, 1
  br i1 %cmp126, label %if.then127, label %if.end130

if.then127:                                       ; preds = %if.end125
  %inc128 = add nsw i32 %pred_nnz.2, 1
  %div129 = sdiv i32 %inc128, 2
  br label %if.end130

if.end130:                                        ; preds = %if.end90, %if.end19, %if.end107, %if.end37, %if.then127, %if.end125
  %pred_nnz.3 = phi i32 [ %div129, %if.then127 ], [ %pred_nnz.2, %if.end125 ], [ %pred_nnz.0, %if.end37 ], [ %pred_nnz.1, %if.end107 ], [ %pred_nnz.0, %if.end19 ], [ %pred_nnz.1, %if.end90 ]
  ret i32 %pred_nnz.3
}

; Function Attrs: optsize
declare void @getChroma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: optsize
declare i32 @writeSyntaxElement_VLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Run(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @find_sad_16x16(i32* nocapture %intra_mode) #0 {
entry:
  %M0 = alloca [4 x [4 x [4 x [4 x i32]]]], align 16
  %M4 = alloca [4 x [4 x i32]], align 16
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %0 = bitcast [4 x [4 x [4 x [4 x i32]]]]* %M0 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #4
  %1 = bitcast [4 x [4 x i32]]* %M4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #4
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !3
  %4 = bitcast [17 x %struct.pix_pos]* %left to i8*
  call void @llvm.lifetime.start(i64 408, i8* %4) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv827 = phi i64 [ 0, %entry ], [ %indvars.iv.next828, %for.body ]
  %5 = add nsw i64 %indvars.iv827, 4294967295
  %arrayidx = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv827
  %6 = trunc i64 %5 to i32
  call void @getNeighbour(i32 %3, i32 -1, i32 %6, i32 1, %struct.pix_pos* %arrayidx) #7
  %indvars.iv.next828 = add i64 %indvars.iv827, 1
  %lftr.wideiv830 = trunc i64 %indvars.iv.next828 to i32
  %exitcond831 = icmp eq i32 %lftr.wideiv830, 17
  br i1 %exitcond831, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call void @getNeighbour(i32 %3, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #7
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 24
  %8 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool = icmp eq i32 %8, 0
  %available5 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0
  %9 = load i32* %available5, align 4, !tbaa !3
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %available2 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 1, i32 0
  %10 = load i32* %available2, align 8, !tbaa !3
  %available4 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 0, i32 0
  %11 = load i32* %available4, align 16, !tbaa !3
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.end
  %tobool6 = icmp eq i32 %9, 0
  br i1 %tobool6, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  %.pre833 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %cond.end

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1
  %12 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 54
  %14 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32* %14, i64 %idxprom7
  %15 = load i32* %arrayidx8, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.else.cond.end_crit_edge, %cond.true
  %16 = phi %struct.ImageParameters* [ %13, %cond.true ], [ %.pre833, %if.else.cond.end_crit_edge ]
  %cond = phi i32 [ %15, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  %intra_block21 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 54
  br label %for.body11

for.body11:                                       ; preds = %cond.end24, %cond.end
  %indvars.iv823 = phi i64 [ 1, %cond.end ], [ %indvars.iv.next824, %cond.end24 ]
  %left_avail.0770 = phi i32 [ 1, %cond.end ], [ %and, %cond.end24 ]
  %available14 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv823, i32 0
  %17 = load i32* %available14, align 8, !tbaa !3
  %tobool15 = icmp eq i32 %17, 0
  br i1 %tobool15, label %cond.end24, label %cond.true16

cond.true16:                                      ; preds = %for.body11
  %mb_addr19 = getelementptr inbounds [17 x %struct.pix_pos]* %left, i64 0, i64 %indvars.iv823, i32 1
  %18 = load i32* %mb_addr19, align 4, !tbaa !3
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32** %intra_block21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32* %19, i64 %idxprom20
  %20 = load i32* %arrayidx22, align 4, !tbaa !3
  br label %cond.end24

cond.end24:                                       ; preds = %for.body11, %cond.true16
  %cond25 = phi i32 [ %20, %cond.true16 ], [ 0, %for.body11 ]
  %and = and i32 %cond25, %left_avail.0770
  %indvars.iv.next824 = add i64 %indvars.iv823, 1
  %lftr.wideiv825 = trunc i64 %indvars.iv.next824 to i32
  %exitcond826 = icmp eq i32 %lftr.wideiv825, 17
  br i1 %exitcond826, label %for.end28, label %for.body11

for.end28:                                        ; preds = %cond.end24
  %21 = bitcast [17 x %struct.pix_pos]* %left to i64*
  %22 = load i64* %21, align 16
  %23 = trunc i64 %22 to i32
  %tobool31 = icmp eq i32 %23, 0
  br i1 %tobool31, label %if.end, label %cond.true32

cond.true32:                                      ; preds = %for.end28
  %idxprom35 = ashr i64 %22, 32
  %24 = load i32** %intra_block21, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32* %24, i64 %idxprom35
  %25 = load i32* %arrayidx37, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.true32, %for.end28, %if.then
  %26 = phi %struct.ImageParameters* [ %.pre, %if.then ], [ %16, %for.end28 ], [ %16, %cond.true32 ]
  %up_avail.0 = phi i32 [ %9, %if.then ], [ %cond, %for.end28 ], [ %cond, %cond.true32 ]
  %left_avail.1 = phi i32 [ %10, %if.then ], [ %and, %for.end28 ], [ %and, %cond.true32 ]
  %left_up_avail.0 = phi i32 [ %11, %if.then ], [ 0, %for.end28 ], [ %25, %cond.true32 ]
  store i32 2, i32* %intra_mode, align 4, !tbaa !3
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 69
  %Intra16x16ParDisable = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 73
  %Intra16x16PlaneDisable = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 74
  %tobool61 = icmp eq i32 %up_avail.0, 0
  %tobool65 = icmp eq i32 %left_avail.1, 0
  %or.cond746 = or i1 %tobool65, %tobool61
  %tobool73 = icmp eq i32 %left_up_avail.0, 0
  %or.cond747 = or i1 %or.cond746, %tobool73
  %opix_x = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 37
  %opix_y = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 38
  %27 = load i16*** @imgY_org, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 6
  br label %for.body43

for.body43:                                       ; preds = %for.inc545, %if.end
  %indvars.iv819 = phi i64 [ 0, %if.end ], [ %indvars.iv.next820, %for.inc545 ]
  %best_intra_sad2.0768 = phi i32 [ 999999, %if.end ], [ %best_intra_sad2.1, %for.inc545 ]
  %28 = load i32* %IntraDisableInterOnly, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %28, 0
  br i1 %cmp44, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body43
  %29 = load i32* %type, align 4, !tbaa !3
  %cmp45 = icmp eq i32 %29, 2
  br i1 %cmp45, label %lor.lhs.false.if.end58_crit_edge, label %if.then46

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  %.pre834 = trunc i64 %indvars.iv819 to i32
  br label %if.end58

if.then46:                                        ; preds = %lor.lhs.false, %for.body43
  %30 = load i32* %Intra16x16ParDisable, align 4, !tbaa !3
  %tobool47 = icmp ne i32 %30, 0
  %31 = trunc i64 %indvars.iv819 to i32
  %32 = icmp ult i32 %31, 2
  %or.cond = and i1 %tobool47, %32
  br i1 %or.cond, label %for.inc545, label %if.end52

if.end52:                                         ; preds = %if.then46
  %33 = load i32* %Intra16x16PlaneDisable, align 4, !tbaa !3
  %tobool53 = icmp ne i32 %33, 0
  %cmp55 = icmp eq i32 %31, 3
  %or.cond743 = and i1 %tobool53, %cmp55
  br i1 %or.cond743, label %for.inc545, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false.if.end58_crit_edge, %if.end52
  %.pre-phi = phi i32 [ %.pre834, %lor.lhs.false.if.end58_crit_edge ], [ %31, %if.end52 ]
  %34 = or i32 %.pre-phi, %up_avail.0
  %35 = icmp eq i32 %34, 0
  %cmp63 = icmp eq i32 %.pre-phi, 1
  %or.cond745 = and i1 %cmp63, %tobool65
  %or.cond835 = or i1 %35, %or.cond745
  br i1 %or.cond835, label %for.inc545, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end58
  %cmp67.not = icmp ne i32 %.pre-phi, 3
  %or.cond747.not = xor i1 %or.cond747, true
  %brmerge = or i1 %cmp67.not, %or.cond747.not
  br i1 %brmerge, label %for.cond76.preheader, label %for.inc545

for.cond76.preheader:                             ; preds = %lor.lhs.false66
  %36 = load i32* %opix_x, align 4, !tbaa !3
  %37 = load i32* %opix_y, align 4, !tbaa !3
  %38 = sext i32 %36 to i64
  %39 = sext i32 %37 to i64
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.inc116, %for.cond76.preheader
  %indvars.iv773 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next774, %for.inc116 ]
  %40 = add nsw i64 %39, %indvars.iv773
  %arrayidx85 = getelementptr inbounds i16** %27, i64 %40
  %41 = load i16** %arrayidx85, align 8, !tbaa !0
  %42 = trunc i64 %indvars.iv773 to i32
  %div = sdiv i32 %42, 4
  %idxprom103 = sext i32 %div to i64
  %rem = srem i32 %42, 4
  %idxprom104 = sext i32 %rem to i64
  br label %for.body81

for.body81:                                       ; preds = %for.body81, %for.cond79.preheader
  %indvars.iv = phi i64 [ 0, %for.cond79.preheader ], [ %indvars.iv.next, %for.body81 ]
  %43 = add nsw i64 %38, %indvars.iv
  %arrayidx86 = getelementptr inbounds i16* %41, i64 %43
  %44 = load i16* %arrayidx86, align 2, !tbaa !4
  %conv = zext i16 %44 to i32
  %arrayidx92 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 42, i64 %indvars.iv819, i64 %indvars.iv773, i64 %indvars.iv
  %45 = load i16* %arrayidx92, align 2, !tbaa !4
  %conv93 = zext i16 %45 to i32
  %sub94 = sub nsw i32 %conv, %conv93
  %46 = trunc i64 %indvars.iv to i32
  %div105 = sdiv i32 %46, 4
  %idxprom106 = sext i32 %div105 to i64
  %rem107 = srem i32 %46, 4
  %idxprom108 = sext i32 %rem107 to i64
  %arrayidx112 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %idxprom108, i64 %idxprom106, i64 %idxprom104, i64 %idxprom103
  store i32 %sub94, i32* %arrayidx112, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc116, label %for.body81

for.inc116:                                       ; preds = %for.body81
  %indvars.iv.next774 = add i64 %indvars.iv773, 1
  %lftr.wideiv776 = trunc i64 %indvars.iv.next774 to i32
  %exitcond777 = icmp eq i32 %lftr.wideiv776, 16
  br i1 %exitcond777, label %for.cond123.preheader, label %for.cond79.preheader

for.cond123.preheader:                            ; preds = %for.inc116, %for.inc373
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %for.inc373 ], [ 0, %for.inc116 ]
  %current_intra_sad_2.0758 = phi i32 [ %current_intra_sad_2.4, %for.inc373 ], [ 0, %for.inc116 ]
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.inc370, %for.cond123.preheader
  %indvars.iv791 = phi i64 [ 0, %for.cond123.preheader ], [ %indvars.iv.next792, %for.inc370 ]
  %current_intra_sad_2.1756 = phi i32 [ %current_intra_sad_2.0758, %for.cond123.preheader ], [ %current_intra_sad_2.4, %for.inc370 ]
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %for.cond127.preheader
  %indvars.iv778 = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next779, %for.body130 ]
  %arrayidx137 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv791, i64 %indvars.iv778, i64 %indvars.iv795
  %47 = load i32* %arrayidx137, align 4, !tbaa !3
  %arrayidx144 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 3, i64 %indvars.iv791, i64 %indvars.iv778, i64 %indvars.iv795
  %48 = load i32* %arrayidx144, align 4, !tbaa !3
  %add145 = add nsw i32 %48, %47
  %arrayidx153 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 1, i64 %indvars.iv791, i64 %indvars.iv778, i64 %indvars.iv795
  %49 = load i32* %arrayidx153, align 4, !tbaa !3
  %arrayidx160 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 2, i64 %indvars.iv791, i64 %indvars.iv778, i64 %indvars.iv795
  %50 = load i32* %arrayidx160, align 4, !tbaa !3
  %add161 = add nsw i32 %50, %49
  %sub177 = sub nsw i32 %49, %50
  %sub193 = sub nsw i32 %47, %48
  %add197 = add nsw i32 %add161, %add145
  store i32 %add197, i32* %arrayidx137, align 4, !tbaa !3
  %sub207 = sub nsw i32 %add145, %add161
  store i32 %sub207, i32* %arrayidx160, align 4, !tbaa !3
  %add217 = add nsw i32 %sub177, %sub193
  store i32 %add217, i32* %arrayidx153, align 4, !tbaa !3
  %sub227 = sub nsw i32 %sub193, %sub177
  store i32 %sub227, i32* %arrayidx144, align 4, !tbaa !3
  %indvars.iv.next779 = add i64 %indvars.iv778, 1
  %lftr.wideiv780 = trunc i64 %indvars.iv.next779 to i32
  %exitcond781 = icmp eq i32 %lftr.wideiv780, 4
  br i1 %exitcond781, label %for.body241, label %for.body130

for.body241:                                      ; preds = %for.body130, %for.inc367
  %indvars.iv787 = phi i64 [ %indvars.iv.next788, %for.inc367 ], [ 0, %for.body130 ]
  %current_intra_sad_2.2754 = phi i32 [ %current_intra_sad_2.4, %for.inc367 ], [ %current_intra_sad_2.1756, %for.body130 ]
  %arrayidx248 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv787, i64 %indvars.iv791, i64 0, i64 %indvars.iv795
  %51 = load i32* %arrayidx248, align 4, !tbaa !3
  %arrayidx255 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv787, i64 %indvars.iv791, i64 3, i64 %indvars.iv795
  %52 = load i32* %arrayidx255, align 4, !tbaa !3
  %add256 = add nsw i32 %52, %51
  %arrayidx264 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv787, i64 %indvars.iv791, i64 1, i64 %indvars.iv795
  %53 = load i32* %arrayidx264, align 4, !tbaa !3
  %arrayidx271 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv787, i64 %indvars.iv791, i64 2, i64 %indvars.iv795
  %54 = load i32* %arrayidx271, align 4, !tbaa !3
  %add272 = add nsw i32 %54, %53
  %sub288 = sub nsw i32 %53, %54
  %sub304 = sub nsw i32 %51, %52
  %add308 = add nsw i32 %add272, %add256
  store i32 %add308, i32* %arrayidx248, align 4, !tbaa !3
  %sub318 = sub nsw i32 %add256, %add272
  store i32 %sub318, i32* %arrayidx271, align 4, !tbaa !3
  %add328 = add nsw i32 %sub288, %sub304
  store i32 %add328, i32* %arrayidx264, align 4, !tbaa !3
  %sub338 = sub nsw i32 %sub304, %sub288
  store i32 %sub338, i32* %arrayidx255, align 4, !tbaa !3
  br label %for.body349

for.body349:                                      ; preds = %for.inc364, %for.body241
  %indvars.iv782 = phi i64 [ 0, %for.body241 ], [ %indvars.iv.next783, %for.inc364 ]
  %current_intra_sad_2.3752 = phi i32 [ %current_intra_sad_2.2754, %for.body241 ], [ %current_intra_sad_2.4, %for.inc364 ]
  %55 = sub i64 0, %indvars.iv782
  %56 = trunc i64 %55 to i32
  %57 = trunc i64 %indvars.iv787 to i32
  %cmp351 = icmp eq i32 %57, %56
  br i1 %cmp351, label %for.inc364, label %if.then353

if.then353:                                       ; preds = %for.body349
  %arrayidx361 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 %indvars.iv787, i64 %indvars.iv791, i64 %indvars.iv782, i64 %indvars.iv795
  %58 = load i32* %arrayidx361, align 4, !tbaa !3
  %ispos741 = icmp sgt i32 %58, -1
  %neg742 = sub i32 0, %58
  %59 = select i1 %ispos741, i32 %58, i32 %neg742
  %add362 = add nsw i32 %59, %current_intra_sad_2.3752
  br label %for.inc364

for.inc364:                                       ; preds = %for.body349, %if.then353
  %current_intra_sad_2.4 = phi i32 [ %add362, %if.then353 ], [ %current_intra_sad_2.3752, %for.body349 ]
  %indvars.iv.next783 = add i64 %indvars.iv782, 1
  %lftr.wideiv785 = trunc i64 %indvars.iv.next783 to i32
  %exitcond786 = icmp eq i32 %lftr.wideiv785, 4
  br i1 %exitcond786, label %for.inc367, label %for.body349

for.inc367:                                       ; preds = %for.inc364
  %indvars.iv.next788 = add i64 %indvars.iv787, 1
  %lftr.wideiv789 = trunc i64 %indvars.iv.next788 to i32
  %exitcond790 = icmp eq i32 %lftr.wideiv789, 4
  br i1 %exitcond790, label %for.inc370, label %for.body241

for.inc370:                                       ; preds = %for.inc367
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  %lftr.wideiv793 = trunc i64 %indvars.iv.next792 to i32
  %exitcond794 = icmp eq i32 %lftr.wideiv793, 4
  br i1 %exitcond794, label %for.inc373, label %for.cond127.preheader

for.inc373:                                       ; preds = %for.inc370
  %indvars.iv.next796 = add i64 %indvars.iv795, 1
  %lftr.wideiv797 = trunc i64 %indvars.iv.next796 to i32
  %exitcond798 = icmp eq i32 %lftr.wideiv797, 4
  br i1 %exitcond798, label %for.cond380.preheader, label %for.cond123.preheader

for.cond380.preheader:                            ; preds = %for.inc373, %for.inc398
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %for.inc398 ], [ 0, %for.inc373 ]
  br label %for.body383

for.body383:                                      ; preds = %for.body383, %for.cond380.preheader
  %indvars.iv799 = phi i64 [ 0, %for.cond380.preheader ], [ %indvars.iv.next800, %for.body383 ]
  %arrayidx389 = getelementptr inbounds [4 x [4 x [4 x [4 x i32]]]]* %M0, i64 0, i64 0, i64 %indvars.iv799, i64 0, i64 %indvars.iv803
  %60 = load i32* %arrayidx389, align 4, !tbaa !3
  %div390 = sdiv i32 %60, 4
  %arrayidx394 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv799, i64 %indvars.iv803
  store i32 %div390, i32* %arrayidx394, align 4, !tbaa !3
  %indvars.iv.next800 = add i64 %indvars.iv799, 1
  %lftr.wideiv801 = trunc i64 %indvars.iv.next800 to i32
  %exitcond802 = icmp eq i32 %lftr.wideiv801, 4
  br i1 %exitcond802, label %for.inc398, label %for.body383

for.inc398:                                       ; preds = %for.body383
  %indvars.iv.next804 = add i64 %indvars.iv803, 1
  %lftr.wideiv805 = trunc i64 %indvars.iv.next804 to i32
  %exitcond806 = icmp eq i32 %lftr.wideiv805, 4
  br i1 %exitcond806, label %for.body404, label %for.cond380.preheader

for.body404:                                      ; preds = %for.inc398, %for.body404
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %for.body404 ], [ 0, %for.inc398 ]
  %arrayidx407 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 0, i64 %indvars.iv807
  %61 = load i32* %arrayidx407, align 4, !tbaa !3
  %arrayidx410 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 3, i64 %indvars.iv807
  %62 = load i32* %arrayidx410, align 4, !tbaa !3
  %add411 = add nsw i32 %62, %61
  %arrayidx415 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 1, i64 %indvars.iv807
  %63 = load i32* %arrayidx415, align 4, !tbaa !3
  %arrayidx418 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 2, i64 %indvars.iv807
  %64 = load i32* %arrayidx418, align 4, !tbaa !3
  %add419 = add nsw i32 %64, %63
  %sub427 = sub nsw i32 %63, %64
  %sub435 = sub nsw i32 %61, %62
  %add439 = add nsw i32 %add419, %add411
  store i32 %add439, i32* %arrayidx407, align 4, !tbaa !3
  %sub445 = sub nsw i32 %add411, %add419
  store i32 %sub445, i32* %arrayidx418, align 4, !tbaa !3
  %add451 = add nsw i32 %sub427, %sub435
  store i32 %add451, i32* %arrayidx415, align 4, !tbaa !3
  %sub457 = sub nsw i32 %sub435, %sub427
  store i32 %sub457, i32* %arrayidx410, align 4, !tbaa !3
  %indvars.iv.next808 = add i64 %indvars.iv807, 1
  %lftr.wideiv809 = trunc i64 %indvars.iv.next808 to i32
  %exitcond810 = icmp eq i32 %lftr.wideiv809, 4
  br i1 %exitcond810, label %for.body467, label %for.body404

for.body467:                                      ; preds = %for.body404, %for.inc537
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %for.inc537 ], [ 0, %for.body404 ]
  %current_intra_sad_2.5765 = phi i32 [ %add533, %for.inc537 ], [ %current_intra_sad_2.4, %for.body404 ]
  %arrayidx470 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv815, i64 0
  %65 = load i32* %arrayidx470, align 16, !tbaa !3
  %arrayidx473 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv815, i64 3
  %66 = load i32* %arrayidx473, align 4, !tbaa !3
  %add474 = add nsw i32 %66, %65
  %arrayidx478 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv815, i64 1
  %67 = load i32* %arrayidx478, align 4, !tbaa !3
  %arrayidx481 = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv815, i64 2
  %68 = load i32* %arrayidx481, align 8, !tbaa !3
  %add482 = add nsw i32 %68, %67
  %sub490 = sub nsw i32 %67, %68
  %sub498 = sub nsw i32 %65, %66
  %add502 = add nsw i32 %add482, %add474
  store i32 %add502, i32* %arrayidx470, align 16, !tbaa !3
  %sub508 = sub nsw i32 %add474, %add482
  store i32 %sub508, i32* %arrayidx481, align 8, !tbaa !3
  %add514 = add nsw i32 %sub490, %sub498
  store i32 %add514, i32* %arrayidx478, align 4, !tbaa !3
  %sub520 = sub nsw i32 %sub498, %sub490
  store i32 %sub520, i32* %arrayidx473, align 4, !tbaa !3
  br label %for.body527

for.body527:                                      ; preds = %for.body527.for.body527_crit_edge, %for.body467
  %69 = phi i32 [ %add502, %for.body467 ], [ %.pre832, %for.body527.for.body527_crit_edge ]
  %indvars.iv811 = phi i64 [ 1, %for.body467 ], [ %phitmp, %for.body527.for.body527_crit_edge ]
  %current_intra_sad_2.6763 = phi i32 [ %current_intra_sad_2.5765, %for.body467 ], [ %add533, %for.body527.for.body527_crit_edge ]
  %ispos = icmp sgt i32 %69, -1
  %neg = sub i32 0, %69
  %70 = select i1 %ispos, i32 %69, i32 %neg
  %add533 = add nsw i32 %70, %current_intra_sad_2.6763
  %lftr.wideiv813 = trunc i64 %indvars.iv811 to i32
  %exitcond814 = icmp eq i32 %lftr.wideiv813, 4
  br i1 %exitcond814, label %for.inc537, label %for.body527.for.body527_crit_edge

for.body527.for.body527_crit_edge:                ; preds = %for.body527
  %arrayidx531.phi.trans.insert = getelementptr inbounds [4 x [4 x i32]]* %M4, i64 0, i64 %indvars.iv815, i64 %indvars.iv811
  %.pre832 = load i32* %arrayidx531.phi.trans.insert, align 4, !tbaa !3
  %phitmp = add i64 %indvars.iv811, 1
  br label %for.body527

for.inc537:                                       ; preds = %for.body527
  %indvars.iv.next816 = add i64 %indvars.iv815, 1
  %lftr.wideiv817 = trunc i64 %indvars.iv.next816 to i32
  %exitcond818 = icmp eq i32 %lftr.wideiv817, 4
  br i1 %exitcond818, label %for.end539, label %for.body467

for.end539:                                       ; preds = %for.inc537
  %cmp540 = icmp slt i32 %add533, %best_intra_sad2.0768
  br i1 %cmp540, label %if.then542, label %for.inc545

if.then542:                                       ; preds = %for.end539
  store i32 %.pre-phi, i32* %intra_mode, align 4, !tbaa !3
  br label %for.inc545

for.inc545:                                       ; preds = %lor.lhs.false66, %if.end58, %if.end52, %if.then46, %if.then542, %for.end539
  %best_intra_sad2.1 = phi i32 [ %add533, %if.then542 ], [ %best_intra_sad2.0768, %for.end539 ], [ %best_intra_sad2.0768, %if.then46 ], [ %best_intra_sad2.0768, %if.end52 ], [ %best_intra_sad2.0768, %if.end58 ], [ %best_intra_sad2.0768, %lor.lhs.false66 ]
  %indvars.iv.next820 = add i64 %indvars.iv819, 1
  %lftr.wideiv821 = trunc i64 %indvars.iv.next820 to i32
  %exitcond822 = icmp eq i32 %lftr.wideiv821, 4
  br i1 %exitcond822, label %for.end547, label %for.body43

for.end547:                                       ; preds = %for.inc545
  %div548 = sdiv i32 %best_intra_sad2.1, 2
  call void @llvm.lifetime.end(i64 408, i8* %4) #4
  call void @llvm.lifetime.end(i64 64, i8* %1) #4
  call void @llvm.lifetime.end(i64 1024, i8* %0) #4
  ret i32 %div548
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
