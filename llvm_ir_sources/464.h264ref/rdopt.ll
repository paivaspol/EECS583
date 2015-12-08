; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rdopt.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CSobj = type { i32, %struct.EncodingEnvironment*, %struct.Bitstream*, i32, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@cofAC = global i32**** null, align 8
@cofAC8x8 = global i32**** null, align 8
@cofDC = global i32*** null, align 8
@cofAC4x4 = global i32** null, align 8
@cofAC4x4intern = global i32**** null, align 8
@cs_mb = global %struct.CSobj* null, align 8
@cs_b8 = global %struct.CSobj* null, align 8
@cs_cm = global %struct.CSobj* null, align 8
@cs_imb = global %struct.CSobj* null, align 8
@cs_ib8 = global %struct.CSobj* null, align 8
@cs_ib4 = global %struct.CSobj* null, align 8
@cs_pc = global %struct.CSobj* null, align 8
@cofAC_8x8ts = global i32**** null, align 8
@input = external global %struct.InputParameters*
@rdopt = external global %struct.RD_DATA*
@img = external global %struct.ImageParameters*
@pixel_map = external global i8**
@refresh_map = external global i8**
@enc_picture = external global %struct.storable_picture*
@assignSE2partition = external global [2 x i32*]
@imgY_org = external global i16**
@cbp_chroma_block_temp = external global [2 x [4 x [4 x i32]]]
@imgUV_org = external global i16***
@resTrans_R = external global [16 x [16 x i32]]
@resTrans_B = external global [16 x [16 x i32]]
@resTrans_G = external global [16 x [16 x i32]]
@rec_resG = external global [16 x [16 x i32]]
@rec_resR = external global [16 x [16 x i32]]
@rec_resB = external global [16 x [16 x i32]]
@cofAC4x4_chroma = common global [2 x [2 x [18 x i32]]] zeroinitializer, align 16
@dc_level_temp = external global [2 x [4 x [4 x i32]]]
@dc_level = external global [2 x [4 x [4 x i32]]]
@cbp_chroma_block = external global [2 x [4 x [4 x i32]]]
@direct_pdir = external global i16**
@direct_ref_idx = external global i16***
@mprRGB = external global [3 x [16 x [16 x i32]]]
@decs = external global %struct.Decoders*
@cbp8x8 = common global i32 0, align 4
@best8x8pdir = common global [15 x [4 x i16]] zeroinitializer, align 16
@best8x8mode = common global [4 x i16] zeroinitializer, align 2
@best8x8fwref = common global [15 x [4 x i16]] zeroinitializer, align 16
@best8x8bwref = common global [15 x [4 x i16]] zeroinitializer, align 16
@part8x8mode = common global [4 x i32] zeroinitializer, align 16
@part8x8pdir = common global [4 x i16] zeroinitializer, align 2
@part8x8fwref = common global [4 x i16] zeroinitializer, align 2
@part8x8bwref = common global [4 x i16] zeroinitializer, align 2
@cnt_nonz8_8x8ts = common global i32 0, align 4
@mpr_8x8ts = common global [16 x [16 x i16]] zeroinitializer, align 16
@cbp8_8x8ts = common global i32 0, align 4
@cbp_blk8_8x8ts = common global i64 0, align 8
@rec_mbY_8x8ts = common global [16 x [16 x i16]] zeroinitializer, align 16
@rec_resG_8x8ts = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB_8x8ts = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@resTrans_R_8x8ts = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B_8x8ts = common global [16 x [16 x i32]] zeroinitializer, align 16
@cnt_nonz_8x8 = common global i32 0, align 4
@mpr8x8 = common global [16 x [16 x i16]] zeroinitializer, align 16
@cbp_blk8x8 = common global i32 0, align 4
@rec_mbY8x8 = common global [16 x [16 x i16]] zeroinitializer, align 16
@rec_resG_8x8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB_8x8 = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@resTrans_R_8x8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B_8x8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [23 x i8] c"invalid direction mode\00", align 1
@pred = internal unnamed_addr global [16 x [16 x i32]] zeroinitializer, align 16
@best_mode = common global i32 0, align 4
@best_c_imode = common global i32 0, align 4
@best_i16offset = common global i32 0, align 4
@bi_pred_me = common global i32 0, align 4
@b8mode = common global [4 x i16] zeroinitializer, align 2
@b8pdir = common global [4 x i16] zeroinitializer, align 2
@b4_ipredmode = common global [16 x i32] zeroinitializer, align 16
@b4_intra_pred_modes = common global [16 x i32] zeroinitializer, align 16
@b8_ipredmode8x8 = external global [4 x [4 x i32]]
@b8_intra_pred_modes8x8 = external global [16 x i32]
@rec_mbY = common global [16 x [16 x i16]] zeroinitializer, align 16
@rec_mbU = common global [16 x [16 x i16]] zeroinitializer, align 16
@rec_mbV = common global [16 x [16 x i16]] zeroinitializer, align 16
@cbp = common global i32 0, align 4
@cbp_blk = common global i64 0, align 8
@luma_transform_size_8x8_flag = common global i32 0, align 4
@frefframe = common global [4 x [4 x i16]] zeroinitializer, align 16
@brefframe = common global [4 x [4 x i16]] zeroinitializer, align 16
@all_mv8x8 = common global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 16
@pred_mv8x8 = common global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 16
@encode_one_macroblock.b8_mode_table = internal unnamed_addr constant [6 x i32] [i32 0, i32 4, i32 5, i32 6, i32 7, i32 0], align 16
@encode_one_macroblock.mb_mode_table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 10, i32 9, i32 13], align 16
@encode_one_macroblock.mb_mode_table_RCT = internal unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 10, i32 10, i32 10, i32 10, i32 9, i32 13], align 16
@listXsize = external global [6 x i32]
@listX = external global [6 x %struct.storable_picture**]
@gop_structure = external global %struct.GOP_DATA*
@QP2QUANT = external global [40 x i32]
@refbits = external global i32*
@motion_cost = external global i32****
@cost8_8x8ts = common global i32 0, align 4
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@diffy = external global [16 x [16 x i32]]
@temp_imgU = common global [16 x [16 x i16]] zeroinitializer, align 16
@temp_imgV = common global [16 x [16 x i16]] zeroinitializer, align 16
@temp_imgY = common global [16 x [16 x i16]] zeroinitializer, align 16
@DELTA_QP = common global i32 0, align 4
@QP = external global i32
@DELTA_QP2 = common global i32 0, align 4
@QP2 = external global i32
@best_transform_size = common global [4 x i32] zeroinitializer, align 16
@NoMbPartLessThan8x8Flag = common global i32 0, align 4
@mv8x8 = common global [2 x [4 x [4 x [2 x i16]]]] zeroinitializer, align 16
@ref8x8 = common global [2 x [4 x [4 x i16]]] zeroinitializer, align 16
@str = private unnamed_addr constant [50 x i8] c"Unsupported mode in SetModesAndRefframeForBlocks!\00"

; Function Attrs: nounwind optsize uwtable
define void @clear_rdopt() #0 {
entry:
  %0 = load i32**** @cofDC, align 8, !tbaa !0
  tail call void @free_mem_DCcoeff(i32*** %0) #8
  %1 = load i32***** @cofAC, align 8, !tbaa !0
  tail call void @free_mem_ACcoeff(i32**** %1) #8
  %2 = load i32***** @cofAC8x8, align 8, !tbaa !0
  tail call void @free_mem_ACcoeff(i32**** %2) #8
  %3 = load i32***** @cofAC4x4intern, align 8, !tbaa !0
  tail call void @free_mem_ACcoeff(i32**** %3) #8
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 123
  %5 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32***** @cofAC_8x8ts, align 8, !tbaa !0
  tail call void @free_mem_ACcoeff(i32**** %6) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %7 = load %struct.CSobj** @cs_mb, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %7) #8
  %8 = load %struct.CSobj** @cs_b8, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %8) #8
  %9 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %9) #8
  %10 = load %struct.CSobj** @cs_imb, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %10) #8
  %11 = load %struct.CSobj** @cs_ib8, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %11) #8
  %12 = load %struct.CSobj** @cs_ib4, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %12) #8
  %13 = load %struct.CSobj** @cs_pc, align 8, !tbaa !0
  tail call void @delete_coding_state(%struct.CSobj* %13) #8
  ret void
}

; Function Attrs: optsize
declare void @free_mem_DCcoeff(i32***) #1

; Function Attrs: optsize
declare void @free_mem_ACcoeff(i32****) #1

; Function Attrs: optsize
declare void @delete_coding_state(%struct.CSobj*) #1

; Function Attrs: nounwind optsize uwtable
define void @init_rdopt() #0 {
entry:
  store %struct.RD_DATA* null, %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %call = tail call i32 @get_mem_DCcoeff(i32**** @cofDC) #8
  %call1 = tail call i32 @get_mem_ACcoeff(i32***** @cofAC) #8
  %call2 = tail call i32 @get_mem_ACcoeff(i32***** @cofAC8x8) #8
  %call3 = tail call i32 @get_mem_ACcoeff(i32***** @cofAC4x4intern) #8
  %0 = load i32***** @cofAC4x4intern, align 8, !tbaa !0
  %1 = load i32**** %0, align 8, !tbaa !0
  %2 = load i32*** %1, align 8, !tbaa !0
  store i32** %2, i32*** @cofAC4x4, align 8, !tbaa !0
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 123
  %4 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @get_mem_ACcoeff(i32***** @cofAC_8x8ts) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call6 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call6, %struct.CSobj** @cs_mb, align 8, !tbaa !0
  %call7 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call7, %struct.CSobj** @cs_b8, align 8, !tbaa !0
  %call8 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call8, %struct.CSobj** @cs_cm, align 8, !tbaa !0
  %call9 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call9, %struct.CSobj** @cs_imb, align 8, !tbaa !0
  %call10 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call10, %struct.CSobj** @cs_ib8, align 8, !tbaa !0
  %call11 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call11, %struct.CSobj** @cs_ib4, align 8, !tbaa !0
  %call12 = tail call %struct.CSobj* (...)* @create_coding_state() #8
  store %struct.CSobj* %call12, %struct.CSobj** @cs_pc, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @get_mem_DCcoeff(i32****) #1

; Function Attrs: optsize
declare i32 @get_mem_ACcoeff(i32*****) #1

; Function Attrs: optsize
declare %struct.CSobj* @create_coding_state(...) #1

; Function Attrs: nounwind optsize uwtable
define void @UpdatePixelMap() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 2
  %height120 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %2 = load i32* %height120, align 4, !tbaa !3
  br i1 %cmp, label %for.cond.preheader, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %entry
  %cmp12135 = icmp sgt i32 %2, 7
  br i1 %cmp12135, label %for.cond14.preheader, label %if.end86

for.cond.preheader:                               ; preds = %entry
  %cmp1121 = icmp sgt i32 %2, 0
  br i1 %cmp1121, label %for.cond2.preheader, label %if.end86

for.cond2.preheader:                              ; preds = %for.cond.preheader, %for.inc7
  %3 = phi %struct.ImageParameters* [ %10, %for.inc7 ], [ %0, %for.cond.preheader ]
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %for.inc7 ], [ 0, %for.cond.preheader ]
  %width117 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 13
  %4 = load i32* %width117, align 4, !tbaa !3
  %cmp3118 = icmp sgt i32 %4, 0
  br i1 %cmp3118, label %for.body4, label %for.inc7

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %5 = load i8*** @pixel_map, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %5, i64 %indvars.iv137
  %6 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i8* %6, i64 %indvars.iv
  store i8 1, i8* %arrayidx6, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 13
  %8 = load i32* %width, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %9, %8
  br i1 %cmp3, label %for.body4, label %for.inc7

for.inc7:                                         ; preds = %for.body4, %for.cond2.preheader
  %10 = phi %struct.ImageParameters* [ %3, %for.cond2.preheader ], [ %7, %for.body4 ]
  %indvars.iv.next138 = add i64 %indvars.iv137, 1
  %height = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 15
  %11 = load i32* %height, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next138 to i32
  %cmp1 = icmp slt i32 %12, %11
  br i1 %cmp1, label %for.cond2.preheader, label %if.end86

for.cond14.preheader:                             ; preds = %for.cond10.preheader, %for.inc83
  %13 = phi %struct.ImageParameters* [ %32, %for.inc83 ], [ %0, %for.cond10.preheader ]
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %for.inc83 ], [ 0, %for.cond10.preheader ]
  %indvars.iv154 = phi i32 [ %indvars.iv.next155, %for.inc83 ], [ 0, %for.cond10.preheader ]
  %14 = sext i32 %indvars.iv154 to i64
  %width15128 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 13
  %15 = load i32* %width15128, align 4, !tbaa !3
  %cmp17130 = icmp sgt i32 %15, 7
  br i1 %cmp17130, label %for.body18.lr.ph, label %for.inc83

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %16 = trunc i64 %indvars.iv161 to i32
  %mul = shl nsw i32 %16, 3
  %add = add nsw i32 %mul, 8
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc80
  %indvars.iv159 = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next160, %for.inc80 ]
  %indvars.iv149 = phi i32 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next150, %for.inc80 ]
  %17 = sext i32 %indvars.iv149 to i64
  %18 = trunc i64 %indvars.iv159 to i32
  %mul19 = shl nsw i32 %18, 3
  %add20 = add nsw i32 %mul19, 8
  %19 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i8** %19, i64 %indvars.iv161
  %20 = load i8** %arrayidx23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i8* %20, i64 %indvars.iv159
  %21 = load i8* %arrayidx24, align 1, !tbaa !1
  %tobool = icmp eq i8 %21, 0
  br i1 %tobool, label %for.cond50.preheader, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.body18, %for.inc41
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc41 ], [ %14, %for.body18 ]
  %y.1124 = phi i32 [ %inc42, %for.inc41 ], [ %mul, %for.body18 ]
  br label %for.body33

for.body33:                                       ; preds = %for.cond31.preheader, %for.body33
  %indvars.iv141 = phi i64 [ %17, %for.cond31.preheader ], [ %indvars.iv.next142, %for.body33 ]
  %x.1123 = phi i32 [ %mul19, %for.cond31.preheader ], [ %inc39, %for.body33 ]
  %22 = load i8*** @pixel_map, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i8** %22, i64 %indvars.iv146
  %23 = load i8** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i8* %23, i64 %indvars.iv141
  store i8 1, i8* %arrayidx37, align 1, !tbaa !1
  %inc39 = add nsw i32 %x.1123, 1
  %cmp32 = icmp slt i32 %inc39, %add20
  %indvars.iv.next142 = add i64 %indvars.iv141, 1
  br i1 %cmp32, label %for.body33, label %for.inc41

for.inc41:                                        ; preds = %for.body33
  %inc42 = add nsw i32 %y.1124, 1
  %cmp28 = icmp slt i32 %inc42, %add
  %indvars.iv.next147 = add i64 %indvars.iv146, 1
  br i1 %cmp28, label %for.cond31.preheader, label %for.inc80

for.cond50.preheader:                             ; preds = %for.body18, %for.inc77
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.inc77 ], [ %14, %for.body18 ]
  %y.2127 = phi i32 [ %inc78, %for.inc77 ], [ %mul, %for.body18 ]
  br label %for.body52

for.body52:                                       ; preds = %for.cond50.preheader, %for.body52
  %indvars.iv151 = phi i64 [ %17, %for.cond50.preheader ], [ %indvars.iv.next152, %for.body52 ]
  %x.2125 = phi i32 [ %mul19, %for.cond50.preheader ], [ %inc75, %for.body52 ]
  %24 = load i8*** @pixel_map, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i8** %24, i64 %indvars.iv156
  %25 = load i8** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i8* %25, i64 %indvars.iv151
  %26 = load i8* %arrayidx56, align 1, !tbaa !1
  %conv = zext i8 %26 to i32
  %27 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 9
  %28 = load i32* %num_ref_frames, align 4, !tbaa !3
  %cmp59 = icmp slt i32 %conv, %28
  %conv. = select i1 %cmp59, i32 %conv, i32 %28
  %add66 = add nsw i32 %conv., 1
  %conv69 = trunc i32 %add66 to i8
  store i8 %conv69, i8* %arrayidx56, align 1, !tbaa !1
  %inc75 = add nsw i32 %x.2125, 1
  %cmp51 = icmp slt i32 %inc75, %add20
  %indvars.iv.next152 = add i64 %indvars.iv151, 1
  br i1 %cmp51, label %for.body52, label %for.inc77

for.inc77:                                        ; preds = %for.body52
  %inc78 = add nsw i32 %y.2127, 1
  %cmp47 = icmp slt i32 %inc78, %add
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  br i1 %cmp47, label %for.cond50.preheader, label %for.inc80

for.inc80:                                        ; preds = %for.inc77, %for.inc41
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %29 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width15 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 13
  %30 = load i32* %width15, align 4, !tbaa !3
  %div16 = sdiv i32 %30, 8
  %31 = trunc i64 %indvars.iv.next160 to i32
  %cmp17 = icmp slt i32 %31, %div16
  %indvars.iv.next150 = add i32 %indvars.iv149, 8
  br i1 %cmp17, label %for.body18, label %for.inc83

for.inc83:                                        ; preds = %for.inc80, %for.cond14.preheader
  %32 = phi %struct.ImageParameters* [ %13, %for.cond14.preheader ], [ %29, %for.inc80 ]
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %height11 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 15
  %33 = load i32* %height11, align 4, !tbaa !3
  %div = sdiv i32 %33, 8
  %34 = trunc i64 %indvars.iv.next162 to i32
  %cmp12 = icmp slt i32 %34, %div
  %indvars.iv.next155 = add i32 %indvars.iv154, 8
  br i1 %cmp12, label %for.cond14.preheader, label %if.end86

if.end86:                                         ; preds = %for.cond10.preheader, %for.inc83, %for.cond.preheader, %for.inc7
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CheckReliabilityOfRef(i32 %block, i32 %list_idx, i32 %ref, i32 %mode) #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %1 = load i32* %width, align 4, !tbaa !3
  %sub = add nsw i32 %1, -1
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %2 = load i32* %height, align 4, !tbaa !3
  %sub1 = add nsw i32 %2, -1
  %add = add nsw i32 %ref, 1
  %cmp = icmp sgt i32 %mode, 3
  br i1 %cmp, label %cond.end22.thread, label %lor.rhs25

cond.end22.thread:                                ; preds = %entry
  %div = sdiv i32 %block, 2
  %mul = shl nsw i32 %div, 1
  %add11950 = add nsw i32 %mul, 2
  %rem = srem i32 %block, 2
  %mul14 = shl nsw i32 %rem, 1
  br label %for.cond31.preheader.lr.ph

lor.rhs25:                                        ; preds = %entry
  %cmp2 = icmp eq i32 %mode, 2
  %mul4 = shl nsw i32 %block, 1
  %mul4. = select i1 %cmp2, i32 %mul4, i32 0
  %phitmp = select i1 %cmp2, i32 2, i32 4
  %add11 = add nsw i32 %mul4., %phitmp
  %cmp16 = icmp eq i32 %mode, 3
  %mul18. = select i1 %cmp16, i32 %mul4, i32 0
  %phitmp934 = select i1 %cmp16, i32 2, i32 4
  br label %for.cond31.preheader.lr.ph

for.cond31.preheader.lr.ph:                       ; preds = %lor.rhs25, %cond.end22.thread
  %cond23957.ph = phi i32 [ %mul18., %lor.rhs25 ], [ %mul14, %cond.end22.thread ]
  %cond7949951956.ph = phi i32 [ %mul4., %lor.rhs25 ], [ %mul, %cond.end22.thread ]
  %add11953955.ph = phi i32 [ %add11, %lor.rhs25 ], [ %add11950, %cond.end22.thread ]
  %.ph = phi i32 [ %phitmp934, %lor.rhs25 ], [ 2, %cond.end22.thread ]
  %add29997 = add nsw i32 %.ph, %cond23957.ph
  %idxprom = sext i32 %mode to i64
  %idxprom34 = sext i32 %ref to i64
  %idxprom35 = sext i32 %list_idx to i64
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %3 = load i16******* %all_mv, align 8, !tbaa !0
  %block_y43 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %4 = load i32* %block_y43, align 4, !tbaa !3
  %block_x61 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %5 = load i32* %block_x61, align 4, !tbaa !3
  %6 = load i8*** @pixel_map, align 8, !tbaa !0
  %7 = sext i32 %cond23957.ph to i64
  %8 = zext i32 %5 to i64
  %9 = sext i32 %cond7949951956.ph to i64
  %10 = zext i32 %4 to i64
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond31.preheader.lr.ph, %for.inc648
  %indvars.iv994 = phi i64 [ %9, %for.cond31.preheader.lr.ph ], [ %indvars.iv.next995, %for.inc648 ]
  %11 = add nsw i64 %10, %indvars.iv994
  %12 = trunc i64 %11 to i32
  %mul46 = shl i32 %12, 4
  br label %for.body33

for.body33:                                       ; preds = %for.cond31.preheader, %for.inc645
  %indvars.iv = phi i64 [ %7, %for.cond31.preheader ], [ %indvars.iv.next, %for.inc645 ]
  %arrayidx = getelementptr inbounds i16****** %3, i64 %indvars.iv
  %13 = load i16****** %arrayidx, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i16***** %13, i64 %indvars.iv994
  %14 = load i16***** %arrayidx38, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i16**** %14, i64 %idxprom35
  %15 = load i16**** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i16*** %15, i64 %idxprom34
  %16 = load i16*** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i16** %16, i64 %idxprom
  %17 = load i16** %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i16* %17, i64 1
  %18 = load i16* %arrayidx42, align 2, !tbaa !4
  %conv = sext i16 %18 to i32
  %add47 = add nsw i32 %mul46, %conv
  %19 = load i16* %17, align 2, !tbaa !4
  %conv60 = sext i16 %19 to i32
  %20 = add nsw i64 %8, %indvars.iv
  %21 = trunc i64 %20 to i32
  %mul64 = shl i32 %21, 4
  %add65 = add nsw i32 %mul64, %conv60
  %and = and i32 %add47, 3
  %and66 = and i32 %add65, 3
  %sub67 = sub nsw i32 %add47, %and
  %div68 = sdiv i32 %sub67, 4
  %sub69 = sub nsw i32 %add65, %and66
  %div70 = sdiv i32 %sub69, 4
  %22 = or i32 %add65, %add47
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %for.cond79.preheader, label %if.else

for.cond79.preheader:                             ; preds = %for.body33, %for.inc135
  %y.0988 = phi i32 [ %inc136, %for.inc135 ], [ 0, %for.body33 ]
  %add106 = add nsw i32 %y.0988, %div68
  %cmp107 = icmp sle i32 %2, %add106
  %sub1.add106 = select i1 %cmp107, i32 %sub1, i32 %add106
  %cmp114 = icmp slt i32 %sub1.add106, 0
  %25 = sext i32 %sub1.add106 to i64
  %idxprom128 = select i1 %cmp114, i64 0, i64 %25
  %arrayidx129 = getelementptr inbounds i8** %6, i64 %idxprom128
  %26 = load i8** %arrayidx129, align 8, !tbaa !0
  br label %for.body82

for.cond79:                                       ; preds = %for.body82
  %cmp80 = icmp slt i32 %inc, 4
  br i1 %cmp80, label %for.body82, label %for.inc135

for.body82:                                       ; preds = %for.cond79.preheader, %for.cond79
  %x.0986 = phi i32 [ 0, %for.cond79.preheader ], [ %inc, %for.cond79 ]
  %add83 = add nsw i32 %x.0986, %div70
  %cmp84 = icmp sle i32 %1, %add83
  %sub.add83 = select i1 %cmp84, i32 %sub, i32 %add83
  %cmp91 = icmp slt i32 %sub.add83, 0
  %27 = sext i32 %sub.add83 to i64
  %idxprom105 = select i1 %cmp91, i64 0, i64 %27
  %arrayidx130 = getelementptr inbounds i8* %26, i64 %idxprom105
  %28 = load i8* %arrayidx130, align 1, !tbaa !1
  %conv131 = zext i8 %28 to i32
  %cmp132 = icmp slt i32 %conv131, %add
  %inc = add nsw i32 %x.0986, 1
  br i1 %cmp132, label %return, label %for.cond79

for.inc135:                                       ; preds = %for.cond79
  %inc136 = add nsw i32 %y.0988, 1
  %cmp76 = icmp slt i32 %inc136, 4
  br i1 %cmp76, label %for.cond79.preheader, label %for.inc645

if.else:                                          ; preds = %for.body33
  %cmp71 = icmp eq i32 %and, 0
  br i1 %cmp71, label %for.cond145.preheader, label %if.else219

for.cond145.preheader:                            ; preds = %if.else, %for.inc216
  %y.1984 = phi i32 [ %inc217, %for.inc216 ], [ 0, %if.else ]
  %add149 = add nsw i32 %y.1984, %div68
  %cmp150 = icmp sle i32 %2, %add149
  %sub1.add149 = select i1 %cmp150, i32 %sub1, i32 %add149
  %cmp157 = icmp slt i32 %sub1.add149, 0
  %29 = sext i32 %sub1.add149 to i64
  %idxprom202 = select i1 %cmp157, i64 0, i64 %29
  %arrayidx203 = getelementptr inbounds i8** %6, i64 %idxprom202
  %30 = load i8** %arrayidx203, align 8, !tbaa !0
  br label %for.body148

for.body148:                                      ; preds = %for.cond145.preheader, %for.inc213
  %x.1982 = phi i32 [ 0, %for.cond145.preheader ], [ %inc214, %for.inc213 ]
  %add175 = add nsw i32 %x.1982, %div70
  br label %for.body174

for.cond171:                                      ; preds = %for.body174
  %cmp172 = icmp slt i32 %inc211, 4
  br i1 %cmp172, label %for.body174, label %for.inc213

for.body174:                                      ; preds = %for.body148, %for.cond171
  %xx.0981 = phi i32 [ -2, %for.body148 ], [ %inc211, %for.cond171 ]
  %add176 = add nsw i32 %add175, %xx.0981
  %cmp177 = icmp sle i32 %1, %add176
  %sub.add176 = select i1 %cmp177, i32 %sub, i32 %add176
  %cmp185 = icmp slt i32 %sub.add176, 0
  %31 = sext i32 %sub.add176 to i64
  %idxprom201 = select i1 %cmp185, i64 0, i64 %31
  %arrayidx204 = getelementptr inbounds i8* %30, i64 %idxprom201
  %32 = load i8* %arrayidx204, align 1, !tbaa !1
  %conv205 = zext i8 %32 to i32
  %cmp206 = icmp slt i32 %conv205, %add
  %inc211 = add nsw i32 %xx.0981, 1
  br i1 %cmp206, label %return, label %for.cond171

for.inc213:                                       ; preds = %for.cond171
  %inc214 = add nsw i32 %x.1982, 1
  %cmp146 = icmp slt i32 %inc214, 4
  br i1 %cmp146, label %for.body148, label %for.inc216

for.inc216:                                       ; preds = %for.inc213
  %inc217 = add nsw i32 %y.1984, 1
  %cmp142 = icmp slt i32 %inc217, 4
  br i1 %cmp142, label %for.cond145.preheader, label %for.inc645

if.else219:                                       ; preds = %if.else
  switch i32 %and66, label %if.else394 [
    i32 0, label %for.cond227.preheader
    i32 2, label %for.cond309.preheader
  ]

for.cond227.preheader:                            ; preds = %if.else219, %for.inc298
  %y.2966 = phi i32 [ %inc299, %for.inc298 ], [ 0, %if.else219 ]
  %add257 = add i32 %y.2966, %div68
  br label %for.body230

for.body230:                                      ; preds = %for.cond227.preheader, %for.inc295
  %x.2964 = phi i32 [ 0, %for.cond227.preheader ], [ %inc296, %for.inc295 ]
  %add231 = add nsw i32 %x.2964, %div70
  %cmp232 = icmp sle i32 %1, %add231
  %sub.add231 = select i1 %cmp232, i32 %sub, i32 %add231
  %cmp239 = icmp slt i32 %sub.add231, 0
  %33 = sext i32 %sub.add231 to i64
  %idxprom283 = select i1 %cmp239, i64 0, i64 %33
  br label %for.body256

for.cond253:                                      ; preds = %for.body256
  %cmp254 = icmp slt i32 %inc293, 4
  br i1 %cmp254, label %for.body256, label %for.inc295

for.body256:                                      ; preds = %for.body230, %for.cond253
  %yy.0963 = phi i32 [ -2, %for.body230 ], [ %inc293, %for.cond253 ]
  %add258 = add i32 %add257, %yy.0963
  %cmp259 = icmp sle i32 %2, %add258
  %sub1.add258 = select i1 %cmp259, i32 %sub1, i32 %add258
  %cmp267 = icmp slt i32 %sub1.add258, 0
  %34 = sext i32 %sub1.add258 to i64
  %idxprom284 = select i1 %cmp267, i64 0, i64 %34
  %arrayidx285 = getelementptr inbounds i8** %6, i64 %idxprom284
  %35 = load i8** %arrayidx285, align 8, !tbaa !0
  %arrayidx286 = getelementptr inbounds i8* %35, i64 %idxprom283
  %36 = load i8* %arrayidx286, align 1, !tbaa !1
  %conv287 = zext i8 %36 to i32
  %cmp288 = icmp slt i32 %conv287, %add
  %inc293 = add nsw i32 %yy.0963, 1
  br i1 %cmp288, label %return, label %for.cond253

for.inc295:                                       ; preds = %for.cond253
  %inc296 = add nsw i32 %x.2964, 1
  %cmp228 = icmp slt i32 %inc296, 4
  br i1 %cmp228, label %for.body230, label %for.inc298

for.inc298:                                       ; preds = %for.inc295
  %inc299 = add nsw i32 %y.2966, 1
  %cmp224 = icmp slt i32 %inc299, 4
  br i1 %cmp224, label %for.cond227.preheader, label %for.inc645

for.cond309.preheader:                            ; preds = %if.else219, %for.inc391
  %y.3961 = phi i32 [ %inc392, %for.inc391 ], [ 0, %if.else219 ]
  %add317 = add i32 %y.3961, %div68
  br label %for.cond313.preheader

for.cond313.preheader:                            ; preds = %for.cond309.preheader, %for.inc388
  %x.3960 = phi i32 [ 0, %for.cond309.preheader ], [ %inc389, %for.inc388 ]
  %add347 = add i32 %x.3960, %div70
  br label %for.body316

for.body316:                                      ; preds = %for.cond313.preheader, %for.inc385
  %yy.1959 = phi i32 [ -2, %for.cond313.preheader ], [ %inc386, %for.inc385 ]
  %add318 = add i32 %add317, %yy.1959
  %cmp319 = icmp sle i32 %2, %add318
  %sub1.add318 = select i1 %cmp319, i32 %sub1, i32 %add318
  %cmp327 = icmp slt i32 %sub1.add318, 0
  %37 = sext i32 %sub1.add318 to i64
  %idxprom374 = select i1 %cmp327, i64 0, i64 %37
  %arrayidx375 = getelementptr inbounds i8** %6, i64 %idxprom374
  %38 = load i8** %arrayidx375, align 8, !tbaa !0
  br label %for.body346

for.cond343:                                      ; preds = %for.body346
  %cmp344 = icmp slt i32 %inc383, 4
  br i1 %cmp344, label %for.body346, label %for.inc385

for.body346:                                      ; preds = %for.body316, %for.cond343
  %xx.1958 = phi i32 [ -2, %for.body316 ], [ %inc383, %for.cond343 ]
  %add348 = add i32 %add347, %xx.1958
  %cmp349 = icmp sle i32 %1, %add348
  %sub.add348 = select i1 %cmp349, i32 %sub, i32 %add348
  %cmp357 = icmp slt i32 %sub.add348, 0
  %39 = sext i32 %sub.add348 to i64
  %idxprom373 = select i1 %cmp357, i64 0, i64 %39
  %arrayidx376 = getelementptr inbounds i8* %38, i64 %idxprom373
  %40 = load i8* %arrayidx376, align 1, !tbaa !1
  %conv377 = zext i8 %40 to i32
  %cmp378 = icmp slt i32 %conv377, %add
  %inc383 = add nsw i32 %xx.1958, 1
  br i1 %cmp378, label %return, label %for.cond343

for.inc385:                                       ; preds = %for.cond343
  %inc386 = add nsw i32 %yy.1959, 1
  %cmp314 = icmp slt i32 %inc386, 4
  br i1 %cmp314, label %for.body316, label %for.inc388

for.inc388:                                       ; preds = %for.inc385
  %inc389 = add nsw i32 %x.3960, 1
  %cmp310 = icmp slt i32 %inc389, 4
  br i1 %cmp310, label %for.cond313.preheader, label %for.inc391

for.inc391:                                       ; preds = %for.inc388
  %inc392 = add nsw i32 %y.3961, 1
  %cmp306 = icmp slt i32 %inc392, 4
  br i1 %cmp306, label %for.cond309.preheader, label %for.inc645

if.else394:                                       ; preds = %if.else219
  %cmp395 = icmp eq i32 %and, 2
  br i1 %cmp395, label %for.cond402.preheader, label %for.cond488.preheader

for.cond488.preheader:                            ; preds = %if.else394
  %not.cmp496 = icmp ne i32 %and, 1
  %add502 = zext i1 %not.cmp496 to i32
  %add499 = add i32 %add502, %div68
  %not.cmp565 = icmp ne i32 %and66, 1
  %add571 = zext i1 %not.cmp565 to i32
  %add568 = add i32 %add571, %div70
  br label %for.cond492.preheader

for.cond402.preheader:                            ; preds = %if.else394, %for.inc484
  %y.4979 = phi i32 [ %inc485, %for.inc484 ], [ 0, %if.else394 ]
  %add440 = add i32 %y.4979, %div68
  br label %for.cond406.preheader

for.cond406.preheader:                            ; preds = %for.cond402.preheader, %for.inc481
  %x.4977 = phi i32 [ 0, %for.cond402.preheader ], [ %inc482, %for.inc481 ]
  %add410 = add i32 %x.4977, %div70
  br label %for.body409

for.body409:                                      ; preds = %for.cond406.preheader, %for.inc478
  %xx.2976 = phi i32 [ -2, %for.cond406.preheader ], [ %inc479, %for.inc478 ]
  %add411 = add i32 %add410, %xx.2976
  %cmp412 = icmp sle i32 %1, %add411
  %sub.add411 = select i1 %cmp412, i32 %sub, i32 %add411
  %cmp420 = icmp slt i32 %sub.add411, 0
  %41 = sext i32 %sub.add411 to i64
  %idxprom466 = select i1 %cmp420, i64 0, i64 %41
  br label %for.body439

for.cond436:                                      ; preds = %for.body439
  %cmp437 = icmp slt i32 %inc476, 4
  br i1 %cmp437, label %for.body439, label %for.inc478

for.body439:                                      ; preds = %for.body409, %for.cond436
  %yy.2975 = phi i32 [ -2, %for.body409 ], [ %inc476, %for.cond436 ]
  %add441 = add i32 %add440, %yy.2975
  %cmp442 = icmp sle i32 %2, %add441
  %sub1.add441 = select i1 %cmp442, i32 %sub1, i32 %add441
  %cmp450 = icmp slt i32 %sub1.add441, 0
  %42 = sext i32 %sub1.add441 to i64
  %idxprom467 = select i1 %cmp450, i64 0, i64 %42
  %arrayidx468 = getelementptr inbounds i8** %6, i64 %idxprom467
  %43 = load i8** %arrayidx468, align 8, !tbaa !0
  %arrayidx469 = getelementptr inbounds i8* %43, i64 %idxprom466
  %44 = load i8* %arrayidx469, align 1, !tbaa !1
  %conv470 = zext i8 %44 to i32
  %cmp471 = icmp slt i32 %conv470, %add
  %inc476 = add nsw i32 %yy.2975, 1
  br i1 %cmp471, label %return, label %for.cond436

for.inc478:                                       ; preds = %for.cond436
  %inc479 = add nsw i32 %xx.2976, 1
  %cmp407 = icmp slt i32 %inc479, 4
  br i1 %cmp407, label %for.body409, label %for.inc481

for.inc481:                                       ; preds = %for.inc478
  %inc482 = add nsw i32 %x.4977, 1
  %cmp403 = icmp slt i32 %inc482, 4
  br i1 %cmp403, label %for.cond406.preheader, label %for.inc484

for.inc484:                                       ; preds = %for.inc481
  %inc485 = add nsw i32 %y.4979, 1
  %cmp399 = icmp slt i32 %inc485, 4
  br i1 %cmp399, label %for.cond402.preheader, label %for.inc645

for.cond492.preheader:                            ; preds = %for.cond488.preheader, %for.inc637
  %y.5973 = phi i32 [ 0, %for.cond488.preheader ], [ %inc638, %for.inc637 ]
  %cond504 = add i32 %add499, %y.5973
  %cmp505 = icmp slt i32 %sub1, %cond504
  %cond510 = select i1 %cmp505, i32 %sub1, i32 %cond504
  %cmp511 = icmp slt i32 %cond510, 0
  %phitmp936 = sext i32 %cond510 to i64
  %.phitmp936 = select i1 %cmp511, i64 0, i64 %phitmp936
  %arrayidx555 = getelementptr inbounds i8** %6, i64 %.phitmp936
  %45 = load i8** %arrayidx555, align 8, !tbaa !0
  %add596 = add i32 %y.5973, %div68
  br label %for.body495

for.body495:                                      ; preds = %for.cond492.preheader, %for.inc634
  %x.5971 = phi i32 [ 0, %for.cond492.preheader ], [ %inc635, %for.inc634 ]
  %add527 = add i32 %x.5971, %div70
  br label %for.body526

for.cond523:                                      ; preds = %for.body526
  %cmp524 = icmp slt i32 %inc563, 4
  br i1 %cmp524, label %for.body526, label %for.end564

for.body526:                                      ; preds = %for.body495, %for.cond523
  %xx.3968 = phi i32 [ -2, %for.body495 ], [ %inc563, %for.cond523 ]
  %add528 = add i32 %add527, %xx.3968
  %cmp529 = icmp sle i32 %1, %add528
  %sub.add528 = select i1 %cmp529, i32 %sub, i32 %add528
  %cmp537 = icmp slt i32 %sub.add528, 0
  %46 = sext i32 %sub.add528 to i64
  %idxprom553 = select i1 %cmp537, i64 0, i64 %46
  %arrayidx556 = getelementptr inbounds i8* %45, i64 %idxprom553
  %47 = load i8* %arrayidx556, align 1, !tbaa !1
  %conv557 = zext i8 %47 to i32
  %cmp558 = icmp slt i32 %conv557, %add
  %inc563 = add nsw i32 %xx.3968, 1
  br i1 %cmp558, label %return, label %for.cond523

for.end564:                                       ; preds = %for.cond523
  %cond573 = add i32 %add568, %x.5971
  %cmp574 = icmp slt i32 %sub, %cond573
  %cond579 = select i1 %cmp574, i32 %sub, i32 %cond573
  %cmp580 = icmp slt i32 %cond579, 0
  %phitmp935 = sext i32 %cond579 to i64
  %.phitmp935 = select i1 %cmp580, i64 0, i64 %phitmp935
  br label %for.body595

for.cond592:                                      ; preds = %for.body595
  %cmp593 = icmp slt i32 %inc632, 4
  br i1 %cmp593, label %for.body595, label %for.inc634

for.body595:                                      ; preds = %for.end564, %for.cond592
  %yy.3970 = phi i32 [ -2, %for.end564 ], [ %inc632, %for.cond592 ]
  %add597 = add i32 %add596, %yy.3970
  %cmp598 = icmp sle i32 %2, %add597
  %sub1.add597 = select i1 %cmp598, i32 %sub1, i32 %add597
  %cmp606 = icmp slt i32 %sub1.add597, 0
  %48 = sext i32 %sub1.add597 to i64
  %idxprom623 = select i1 %cmp606, i64 0, i64 %48
  %arrayidx624 = getelementptr inbounds i8** %6, i64 %idxprom623
  %49 = load i8** %arrayidx624, align 8, !tbaa !0
  %arrayidx625 = getelementptr inbounds i8* %49, i64 %.phitmp935
  %50 = load i8* %arrayidx625, align 1, !tbaa !1
  %conv626 = zext i8 %50 to i32
  %cmp627 = icmp slt i32 %conv626, %add
  %inc632 = add nsw i32 %yy.3970, 1
  br i1 %cmp627, label %return, label %for.cond592

for.inc634:                                       ; preds = %for.cond592
  %inc635 = add nsw i32 %x.5971, 1
  %cmp493 = icmp slt i32 %inc635, 4
  br i1 %cmp493, label %for.body495, label %for.inc637

for.inc637:                                       ; preds = %for.inc634
  %inc638 = add nsw i32 %y.5973, 1
  %cmp489 = icmp slt i32 %inc638, 4
  br i1 %cmp489, label %for.cond492.preheader, label %for.inc645

for.inc645:                                       ; preds = %for.inc135, %for.inc216, %for.inc484, %for.inc637, %for.inc298, %for.inc391
  %indvars.iv.next = add i64 %indvars.iv, 1
  %51 = trunc i64 %indvars.iv.next to i32
  %cmp32 = icmp slt i32 %51, %add29997
  br i1 %cmp32, label %for.body33, label %for.inc648

for.inc648:                                       ; preds = %for.inc645
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  %52 = trunc i64 %indvars.iv.next995 to i32
  %cmp30 = icmp slt i32 %52, %add11953955.ph
  br i1 %cmp30, label %for.cond31.preheader, label %return

return:                                           ; preds = %for.inc648, %for.body82, %for.body174, %for.body439, %for.body595, %for.body526, %for.body256, %for.body346
  %retval.0 = phi i32 [ 0, %for.body346 ], [ 0, %for.body256 ], [ 0, %for.body526 ], [ 0, %for.body595 ], [ 0, %for.body439 ], [ 0, %for.body174 ], [ 0, %for.body82 ], [ 1, %for.inc648 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @RDCost_for_4x4IntraBlocks(i32* nocapture %nonzero, i32 %b8, i32 %b4, i32 %ipmode, double %lambda, double %min_rdcost, i32 %mostProbableMode) #0 {
entry:
  %dummy = alloca i32, align 4
  %rem = srem i32 %b8, 2
  %mul = shl nsw i32 %rem, 3
  %rem1 = srem i32 %b4, 2
  %mul2 = shl nsw i32 %rem1, 2
  %add = add nsw i32 %mul2, %mul
  %div = sdiv i32 %b8, 2
  %mul3 = shl nsw i32 %div, 3
  %div4 = sdiv i32 %b4, 2
  %mul5 = shl nsw i32 %div4, 2
  %add6 = add nsw i32 %mul5, %mul3
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %1 = load i32* %pix_x, align 4, !tbaa !3
  %add7 = add nsw i32 %1, %add
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %2 = load i32* %pix_y, align 4, !tbaa !3
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %3 = load i32* %opix_y, align 4, !tbaa !3
  %4 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY10 = getelementptr inbounds %struct.storable_picture* %4, i64 0, i32 25
  %5 = load i16*** %imgY10, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50
  %6 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %7 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %7 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %currSEnr = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 0
  %9 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom11
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 61
  %11 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom13
  %12 = load i32** %arrayidx14, align 8, !tbaa !0
  store i32 0, i32* %dummy, align 4, !tbaa !3
  %call = call i32 @dct_luma(i32 %add, i32 %add6, i32* %dummy, i32 1) #8
  store i32 %call, i32* %nonzero, align 4, !tbaa !3
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 164
  %14 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %14, 0
  br i1 %tobool, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %add9 = add nsw i32 %3, %add6
  %add8 = add nsw i32 %2, %add6
  %15 = load i16*** @imgY_org, align 8, !tbaa !0
  %quad = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 53
  %16 = load i32** %quad, align 8, !tbaa !0
  %17 = shl i32 %rem, 3
  %18 = add i32 %1, %17
  %19 = shl i32 %rem1, 2
  %20 = add i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = sext i32 %add8 to i64
  %23 = sext i32 %add9 to i64
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc33, %for.cond.preheader
  %indvars.iv119 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next120, %for.inc33 ]
  %distortion.0117 = phi i32 [ 0, %for.cond.preheader ], [ %add32, %for.inc33 ]
  %24 = add nsw i64 %23, %indvars.iv119
  %arrayidx22 = getelementptr inbounds i16** %15, i64 %24
  %25 = load i16** %arrayidx22, align 8, !tbaa !0
  %26 = add nsw i64 %22, %indvars.iv119
  %arrayidx27 = getelementptr inbounds i16** %5, i64 %26
  %27 = load i16** %arrayidx27, align 8, !tbaa !0
  br label %for.body18

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv = phi i64 [ %21, %for.cond15.preheader ], [ %indvars.iv.next, %for.body18 ]
  %distortion.1115 = phi i32 [ %distortion.0117, %for.cond15.preheader ], [ %add32, %for.body18 ]
  %arrayidx23 = getelementptr inbounds i16* %25, i64 %indvars.iv
  %28 = load i16* %arrayidx23, align 2, !tbaa !4
  %conv = zext i16 %28 to i64
  %arrayidx28 = getelementptr inbounds i16* %27, i64 %indvars.iv
  %29 = load i16* %arrayidx28, align 2, !tbaa !4
  %conv29 = zext i16 %29 to i64
  %sub = sub i64 %conv, %conv29
  %arrayidx31 = getelementptr inbounds i32* %16, i64 %sub
  %30 = load i32* %arrayidx31, align 4, !tbaa !3
  %add32 = add nsw i32 %30, %distortion.1115
  %indvars.iv.next = add i64 %indvars.iv, 1
  %31 = add nsw i32 %add7, 3
  %32 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp slt i32 %32, %31
  br i1 %cmp17, label %for.body18, label %for.inc33

for.inc33:                                        ; preds = %for.body18
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next120 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %if.end.loopexit, label %for.cond15.preheader

if.end.loopexit:                                  ; preds = %for.inc33
  %phitmp = sitofp i32 %add32 to double
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %distortion.2 = phi double [ 0.000000e+00, %entry ], [ %phitmp, %if.end.loopexit ]
  %33 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %33) #8
  %cmp36 = icmp eq i32 %mostProbableMode, %ipmode
  br i1 %cmp36, label %cond.end43, label %cond.false

cond.false:                                       ; preds = %if.end
  %not.cmp38 = icmp sge i32 %ipmode, %mostProbableMode
  %sub42 = sext i1 %not.cmp38 to i32
  %cond = add nsw i32 %sub42, %ipmode
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false, %if.end
  %cond44 = phi i32 [ -1, %if.end ], [ %cond, %cond.false ]
  %value1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom11, i32 1
  store i32 %cond44, i32* %value1, align 4, !tbaa !3
  %mul45 = shl i32 %b8, 2
  %add46 = add nsw i32 %mul45, %b4
  %context = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom11, i32 6
  store i32 %add46, i32* %context, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.syntaxelement* %arrayidx12, i64 0, i32 0
  store i32 4, i32* %type, align 4, !tbaa !3
  %34 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %34, i64 0, i32 59
  %35 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp47 = icmp eq i32 %35, 0
  br i1 %cmp47, label %if.end50.thread, label %if.end50

if.end50.thread:                                  ; preds = %cond.end43
  %arrayidx51125 = getelementptr inbounds i32* %12, i64 4
  %36 = load i32* %arrayidx51125, align 4, !tbaa !3
  %idxprom52126 = sext i32 %36 to i64
  %partArr127 = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  %37 = load %struct.datapartition** %partArr127, align 8, !tbaa !0
  %arrayidx53128 = getelementptr inbounds %struct.datapartition* %37, i64 %idxprom52126
  br label %if.then57

if.end50:                                         ; preds = %cond.end43
  %writing = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom11, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode54.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 59
  %.pre123 = load i32* %symbol_mode54.phi.trans.insert, align 4, !tbaa !3
  %phitmp124 = icmp eq i32 %.pre123, 0
  %arrayidx51 = getelementptr inbounds i32* %12, i64 4
  %38 = load i32* %arrayidx51, align 4, !tbaa !3
  %idxprom52 = sext i32 %38 to i64
  %partArr = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  %39 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds %struct.datapartition* %39, i64 %idxprom52
  br i1 %phitmp124, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end50.thread, %if.end50
  %arrayidx53129 = phi %struct.datapartition* [ %arrayidx53128, %if.end50.thread ], [ %arrayidx53, %if.end50 ]
  %call58 = call i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %arrayidx12, %struct.datapartition* %arrayidx53129) #8
  br label %if.end60

if.else:                                          ; preds = %if.end50
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %39, i64 %idxprom52, i32 2
  %40 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call59 = call i32 %40(%struct.syntaxelement* %arrayidx12, %struct.datapartition* %arrayidx53) #8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  %len = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom11, i32 3
  %41 = load i32* %len, align 4, !tbaa !3
  %42 = load i32* %currSEnr, align 4, !tbaa !3
  %inc62 = add nsw i32 %42, 1
  store i32 %inc62, i32* %currSEnr, align 4, !tbaa !3
  %43 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode63 = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 59
  %44 = load i32* %symbol_mode63, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %44, 0
  br i1 %cmp64, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.end60
  %call67 = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %b8, i32 %b4, i32 0) #8
  br label %if.end72

if.else69:                                        ; preds = %if.end60
  %call70 = call i32 @writeLumaCoeff4x4_CABAC(i32 %b8, i32 %b4, i32 1) #8
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %call67.pn = phi i32 [ %call67, %if.then66 ], [ %call70, %if.else69 ]
  %rate.0 = add nsw i32 %call67.pn, %41
  %45 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %45) #8
  %conv74 = sitofp i32 %rate.0 to double
  %46 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag77 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 164
  %47 = load i32* %residue_transform_flag77, align 4, !tbaa !3
  %tobool78 = icmp eq i32 %47, 0
  br i1 %tobool78, label %if.else81, label %return

if.else81:                                        ; preds = %if.end72
  %mul75 = fmul double %conv74, %lambda
  %add76 = fadd double %distortion.2, %mul75
  br label %return

return:                                           ; preds = %if.end72, %if.else81
  %retval.0 = phi double [ %add76, %if.else81 ], [ %conv74, %if.end72 ]
  ret double %retval.0
}

; Function Attrs: optsize
declare i32 @dct_luma(i32, i32, i32*, i32) #1

; Function Attrs: optsize
declare void @store_coding_state(%struct.CSobj*) #1

; Function Attrs: optsize
declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @writeCoeff4x4_CAVLC(i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @writeLumaCoeff4x4_CABAC(i32, i32, i32) #1

; Function Attrs: optsize
declare void @reset_coding_state(%struct.CSobj*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @RDCost_for_4x4Blocks_Chroma(i32 %b8, i32 %b4, i32 %chroma) #0 {
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
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 61
  %6 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom3
  %7 = load i32** %arrayidx4, align 8, !tbaa !0
  %cmp = icmp sgt i32 %b8, 7
  %. = zext i1 %cmp to i32
  %call = tail call i32 @dct_chroma4x4(i32 %chroma, i32 %b8, i32 %b4) #8
  %add = shl nuw nsw i32 %., 2
  %mul.neg = add i32 %b8, -4
  %sub = sub i32 %mul.neg, %add
  %div = sdiv i32 %sub, 2
  %mul5 = shl i32 %div, 1
  %div6 = sdiv i32 %b4, 2
  %add7 = add nsw i32 %mul5, %div6
  %idxprom8 = sext i32 %add7 to i64
  %rem = srem i32 %sub, 2
  %mul12 = shl i32 %rem, 1
  %rem13 = srem i32 %b4, 2
  %add14 = add nsw i32 %mul12, %rem13
  %idxprom15 = sext i32 %add14 to i64
  %idxprom16113 = zext i1 %cmp to i64
  %arrayidx19 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, i64 0, i64 %idxprom16113, i64 %idxprom15, i64 %idxprom8
  store i32 %call, i32* %arrayidx19, align 4, !tbaa !3
  %8 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  tail call void @store_coding_state(%struct.CSobj* %8) #8
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 59
  %10 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %10, 0
  br i1 %cmp20, label %if.then21, label %if.else31

if.then21:                                        ; preds = %entry
  %rem22 = srem i32 %b8, 2
  %mul23 = shl i32 %rem22, 1
  %add25 = add nsw i32 %mul23, %rem13
  %shl = shl i32 %add25, 4
  %div26 = sdiv i32 %b8, 2
  %mul27 = shl i32 %div26, 1
  %add29 = add nsw i32 %mul27, %div6
  %or = or i32 %shl, %add29
  %call30 = tail call i32 @writeCoeff4x4_CAVLC(i32 7, i32 %b8, i32 %b4, i32 %or) #8
  br label %if.end73

if.else31:                                        ; preds = %entry
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 52, i64 %idxprom1
  %idxprom32 = sext i32 %b4 to i64
  %idxprom33 = sext i32 %b8 to i64
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 47
  %12 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32**** %12, i64 %idxprom33
  %13 = load i32**** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32*** %13, i64 %idxprom32
  %14 = load i32*** %arrayidx35, align 8, !tbaa !0
  %15 = load i32** %14, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32** %14, i64 1
  %16 = load i32** %arrayidx42, align 8, !tbaa !0
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 19
  store i32 %div6, i32* %subblock_y, align 4, !tbaa !3
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 18
  store i32 %rem13, i32* %subblock_x, align 4, !tbaa !3
  %mb_type = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 8
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6
  %arrayidx67 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 5, i64 6
  br label %for.body

for.body:                                         ; preds = %lor.end.for.body_crit_edge, %if.else31
  %17 = phi %struct.InputParameters* [ %9, %if.else31 ], [ %.pre, %lor.end.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %if.else31 ], [ %indvars.iv.next, %lor.end.for.body_crit_edge ]
  %rate.0116 = phi i32 [ 0, %if.else31 ], [ %add70, %lor.end.for.body_crit_edge ]
  %currSE.0115 = phi %struct.syntaxelement* [ %arrayidx2, %if.else31 ], [ %incdec.ptr, %lor.end.for.body_crit_edge ]
  %arrayidx48 = getelementptr inbounds i32* %15, i64 %indvars.iv
  %18 = load i32* %arrayidx48, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 1
  store i32 %18, i32* %value1, align 4, !tbaa !3
  %arrayidx50 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %19 = load i32* %arrayidx50, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 2
  store i32 %19, i32* %value2, align 4, !tbaa !3
  %symbol_mode51 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 59
  %20 = load i32* %symbol_mode51, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %20, 0
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %for.body
  %mapping = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @levrun_linfo_inter, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !0
  br label %if.end55

if.else54:                                        ; preds = %for.body
  %writing = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  %context = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 6
  store i32 7, i32* %context, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 0
  store i32 10, i32* %type, align 4, !tbaa !3
  %21 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %21, label %lor.rhs [
    i32 9, label %lor.end
    i32 10, label %lor.end
    i32 13, label %lor.end
  ]

lor.rhs:                                          ; preds = %if.end55
  br label %lor.end

lor.end:                                          ; preds = %if.end55, %if.end55, %if.end55, %lor.rhs
  %22 = phi i32 [ 1, %if.end55 ], [ 0, %lor.rhs ], [ 1, %if.end55 ], [ 1, %if.end55 ]
  %23 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 20
  store i32 %22, i32* %is_intra_block, align 4, !tbaa !3
  %is_v_block = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 21
  store i32 %., i32* %is_v_block, align 4, !tbaa !3
  %24 = load i32* %type, align 4, !tbaa !3
  %idxprom62 = sext i32 %24 to i64
  %arrayidx63 = getelementptr inbounds i32* %7, i64 %idxprom62
  %25 = load i32* %arrayidx63, align 4, !tbaa !3
  %idxprom64 = sext i32 %25 to i64
  %26 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds %struct.datapartition* %26, i64 %idxprom64
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %26, i64 %idxprom64, i32 2
  %27 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call66 = tail call i32 %27(%struct.syntaxelement* %currSE.0115, %struct.datapartition* %arrayidx65) #8
  %len = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 0, i32 3
  %28 = load i32* %len, align 4, !tbaa !3
  %29 = load i32* %arrayidx67, align 4, !tbaa !3
  %add68 = add nsw i32 %29, %28
  store i32 %add68, i32* %arrayidx67, align 4, !tbaa !3
  %30 = load i32* %len, align 4, !tbaa !3
  %add70 = add nsw i32 %30, %rate.0116
  %31 = load i32* %currSEnr, align 4, !tbaa !3
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %currSEnr, align 4, !tbaa !3
  %phitmp = icmp eq i32 %18, 0
  %32 = trunc i64 %indvars.iv to i32
  %cmp45 = icmp sgt i32 %32, 15
  %or.cond = or i1 %cmp45, %phitmp
  br i1 %or.cond, label %if.end73, label %lor.end.for.body_crit_edge

lor.end.for.body_crit_edge:                       ; preds = %lor.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement* %currSE.0115, i64 1
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body

if.end73:                                         ; preds = %lor.end, %if.then21
  %rate.1 = phi i32 [ %call30, %if.then21 ], [ %add70, %lor.end ]
  %33 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  tail call void @reset_coding_state(%struct.CSobj* %33) #8
  ret i32 %rate.1
}

; Function Attrs: optsize
declare i32 @dct_chroma4x4(i32, i32, i32) #1

; Function Attrs: optsize
declare void @levrun_linfo_inter(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @writeRunLevel_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Mode_Decision_for_4x4IntraBlocks(i32 %b8, i32 %b4, double %lambda, i32* nocapture %min_cost) #0 {
entry:
  %dummy = alloca i32, align 4
  %c_nz = alloca i32, align 4
  %rec4x4 = alloca [4 x [4 x i32]], align 16
  %diff = alloca [16 x i32], align 16
  %left_available = alloca i32, align 4
  %up_available = alloca i32, align 4
  %all_available = alloca i32, align 4
  %left_block = alloca %struct.pix_pos, align 4
  %top_block = alloca %struct.pix_pos, align 4
  %rec4x4_c = alloca [2 x [4 x [4 x i32]]], align 16
  %0 = bitcast [4 x [4 x i32]]* %rec4x4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %1 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #3
  %rem = srem i32 %b8, 2
  %mul = shl nsw i32 %rem, 3
  %rem1 = srem i32 %b4, 2
  %mul2 = shl nsw i32 %rem1, 2
  %add = add nsw i32 %mul2, %mul
  %div = sdiv i32 %b8, 2
  %mul3 = shl nsw i32 %div, 3
  %div4 = sdiv i32 %b4, 2
  %mul5 = shl nsw i32 %div4, 2
  %add6 = add nsw i32 %mul5, %mul3
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 33
  %3 = load i32* %pix_x, align 4, !tbaa !3
  %add7 = add nsw i32 %3, %add
  %pix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 34
  %4 = load i32* %pix_y, align 4, !tbaa !3
  %add8 = add nsw i32 %4, %add6
  %opix_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 37
  %5 = load i32* %opix_x, align 4, !tbaa !3
  %add9 = add nsw i32 %5, %add
  %opix_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 38
  %6 = load i32* %opix_y, align 4, !tbaa !3
  %add10 = add nsw i32 %6, %add6
  %div11 = sdiv i32 %add7, 4
  %div12 = sdiv i32 %add8, 4
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %7 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %7 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 20
  %9 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %10 = bitcast [2 x [4 x [4 x i32]]]* %rec4x4_c to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #3
  %div14 = sdiv i32 %add, 4
  %div15 = sdiv i32 %add6, 4
  call void @getLuma4x4Neighbour(i32 %7, i32 %div14, i32 %div15, i32 -1, i32 0, %struct.pix_pos* %left_block) #8
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr16 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 3
  %12 = load i32* %current_mb_nr16, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %12, i32 %div14, i32 %div15, i32 0, i32 -1, %struct.pix_pos* %top_block) #8
  %13 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 24
  %14 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %tobool = icmp eq i32 %14, 0
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %available34.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 0
  %.pre2895 = load i32* %available34.phi.trans.insert, align 4, !tbaa !3
  br label %if.end

if.then:                                          ; preds = %entry
  %available = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0
  %15 = load i32* %available, align 4, !tbaa !3
  %tobool19 = icmp eq i32 %15, 0
  br i1 %tobool19, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 1
  %16 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 54
  %18 = load i32** %intra_block, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %18, i64 %idxprom20
  %19 = load i32* %arrayidx21, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ 0, %if.then ]
  store i32 %cond, i32* %available, align 4, !tbaa !3
  %available23 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 0
  %20 = load i32* %available23, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %20, 0
  br i1 %tobool24, label %cond.end31, label %cond.true25

cond.true25:                                      ; preds = %cond.end
  %mb_addr26 = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 1
  %21 = load i32* %mb_addr26, align 4, !tbaa !3
  %idxprom27 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %intra_block28 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 54
  %23 = load i32** %intra_block28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %23, i64 %idxprom27
  %24 = load i32* %arrayidx29, align 4, !tbaa !3
  br label %cond.end31

cond.end31:                                       ; preds = %cond.end, %cond.true25
  %cond32 = phi i32 [ %24, %cond.true25 ], [ 0, %cond.end ]
  store i32 %cond32, i32* %available23, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %cond.end31
  %25 = phi i32 [ %.pre2895, %entry.if.end_crit_edge ], [ %cond32, %cond.end31 ]
  %tobool35 = icmp eq i32 %25, 0
  br i1 %tobool35, label %cond.end42, label %cond.true36

cond.true36:                                      ; preds = %if.end
  %pos_y = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 5
  %26 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom37 = sext i32 %26 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %top_block, i64 0, i32 4
  %27 = load i32* %pos_x, align 4, !tbaa !3
  %idxprom38 = sext i32 %27 to i64
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 25
  %29 = load i32*** %ipredmode, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32** %29, i64 %idxprom38
  %30 = load i32** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i32* %30, i64 %idxprom37
  %31 = load i32* %arrayidx40, align 4, !tbaa !3
  br label %cond.end42

cond.end42:                                       ; preds = %if.end, %cond.true36
  %cond43 = phi i32 [ %31, %cond.true36 ], [ -1, %if.end ]
  %available44 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 0
  %32 = load i32* %available44, align 4, !tbaa !3
  %tobool45 = icmp eq i32 %32, 0
  br i1 %tobool45, label %cond.end65, label %cond.end55

cond.end55:                                       ; preds = %cond.end42
  %pos_y47 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 5
  %33 = load i32* %pos_y47, align 4, !tbaa !3
  %idxprom48 = sext i32 %33 to i64
  %pos_x49 = getelementptr inbounds %struct.pix_pos* %left_block, i64 0, i32 4
  %34 = load i32* %pos_x49, align 4, !tbaa !3
  %idxprom50 = sext i32 %34 to i64
  %35 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %ipredmode51 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 25
  %36 = load i32*** %ipredmode51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i32** %36, i64 %idxprom50
  %37 = load i32** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32* %37, i64 %idxprom48
  %38 = load i32* %arrayidx53, align 4, !tbaa !3
  %39 = or i32 %38, %cond43
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %cond.end65, label %cond.false59

cond.false59:                                     ; preds = %cond.end55
  %cmp60 = icmp slt i32 %cond43, %38
  %cond64 = select i1 %cmp60, i32 %cond43, i32 %38
  br label %cond.end65

cond.end65:                                       ; preds = %cond.end42, %cond.false59, %cond.end55
  %cond66 = phi i32 [ 2, %cond.end55 ], [ %cond64, %cond.false59 ], [ 2, %cond.end42 ]
  store i32 2147483647, i32* %min_cost, align 4, !tbaa !3
  call void @intrapred_luma(i32 %add7, i32 %add8, i32* %left_available, i32* %up_available, i32* %all_available) #8
  %idxprom281 = sext i32 %9 to i64
  %add412 = add nsw i32 %b8, 4
  %add447 = add nsw i32 %b8, 8
  %idxprom858 = sext i32 %b4 to i64
  %idxprom859 = sext i32 %b8 to i64
  %idxprom887 = sext i32 %add412 to i64
  %idxprom915 = sext i32 %add447 to i64
  %mul936 = shl i32 %div, 1
  %add938 = add nsw i32 %mul936, %div4
  %idxprom939 = sext i32 %add938 to i64
  %mul941 = shl i32 %rem, 1
  %add943 = add nsw i32 %mul941, %rem1
  %idxprom944 = sext i32 %add943 to i64
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %mul140 = fmul double %lambda, 4.000000e+00
  %41 = sext i32 %add to i64
  %42 = sext i32 %add9 to i64
  %43 = sext i32 %add6 to i64
  %44 = sext i32 %add10 to i64
  %45 = sext i32 %add7 to i64
  %46 = sext i32 %add8 to i64
  %47 = shl i32 %rem, 3
  %48 = add i32 %3, %47
  %49 = shl i32 %rem1, 2
  %50 = add i32 %48, %49
  %51 = sext i32 %50 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc1054, %cond.end65
  %indvars.iv2887 = phi i64 [ 0, %cond.end65 ], [ %indvars.iv.next2888, %for.inc1054 ]
  %best_ipmode.02612 = phi i32 [ 0, %cond.end65 ], [ %best_ipmode.2, %for.inc1054 ]
  %min_rdcost.02611 = phi double [ 1.000000e+30, %cond.end65 ], [ %min_rdcost.2, %for.inc1054 ]
  %nonzero.02610 = phi i32 [ 0, %cond.end65 ], [ %nonzero.2, %for.inc1054 ]
  %52 = trunc i64 %indvars.iv2887 to i32
  switch i32 %52, label %lor.rhs [
    i32 2, label %lor.end
    i32 7, label %land.lhs.true
    i32 3, label %land.lhs.true
    i32 0, label %land.lhs.true
    i32 8, label %land.lhs.true80
    i32 1, label %land.lhs.true80
  ]

land.lhs.true:                                    ; preds = %for.body, %for.body, %for.body
  %53 = load i32* %up_available, align 4, !tbaa !3
  %tobool75 = icmp eq i32 %53, 0
  br i1 %tobool75, label %lor.lhs.false76, label %lor.end

lor.lhs.false76:                                  ; preds = %land.lhs.true
  switch i32 %52, label %lor.rhs [
    i32 8, label %land.lhs.true80
    i32 1, label %land.lhs.true80
  ]

land.lhs.true80:                                  ; preds = %lor.lhs.false76, %lor.lhs.false76, %for.body, %for.body
  %54 = load i32* %left_available, align 4, !tbaa !3
  %tobool81 = icmp eq i32 %54, 0
  br i1 %tobool81, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true80, %lor.lhs.false76, %for.body
  %55 = load i32* %all_available, align 4, !tbaa !3
  %tobool82 = icmp ne i32 %55, 0
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true80, %land.lhs.true, %for.body, %lor.rhs
  %56 = phi i1 [ %tobool82, %lor.rhs ], [ true, %for.body ], [ true, %land.lhs.true ], [ true, %land.lhs.true80 ]
  %57 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %IntraDisableInterOnly = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 69
  %58 = load i32* %IntraDisableInterOnly, align 4, !tbaa !3
  %cmp83 = icmp eq i32 %58, 0
  br i1 %cmp83, label %if.then86, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.end
  %59 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %59, i64 0, i32 6
  %60 = load i32* %type, align 4, !tbaa !3
  %cmp85 = icmp eq i32 %60, 2
  br i1 %cmp85, label %if.end106, label %if.then86

if.then86:                                        ; preds = %lor.lhs.false84, %lor.end
  %Intra4x4ParDisable = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 70
  %61 = load i32* %Intra4x4ParDisable, align 4, !tbaa !3
  %tobool87 = icmp ne i32 %61, 0
  %62 = icmp ult i32 %52, 2
  %or.cond = and i1 %tobool87, %62
  br i1 %or.cond, label %for.inc1054, label %if.end93

if.end93:                                         ; preds = %if.then86
  %Intra4x4DiagDisable = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 71
  %63 = load i32* %Intra4x4DiagDisable, align 4, !tbaa !3
  %tobool94 = icmp eq i32 %63, 0
  br i1 %tobool94, label %if.end100, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.end93
  %64 = add i64 %indvars.iv2887, 4294967293
  %65 = trunc i64 %64 to i32
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %for.inc1054, label %if.end100

if.end100:                                        ; preds = %if.end93, %land.lhs.true95
  %Intra4x4DirDisable = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 72
  %67 = load i32* %Intra4x4DirDisable, align 4, !tbaa !3
  %tobool101 = icmp ne i32 %67, 0
  %cmp103 = icmp sgt i32 %52, 4
  %or.cond2542 = and i1 %tobool101, %cmp103
  %.not = xor i1 %56, true
  %brmerge = or i1 %or.cond2542, %.not
  br i1 %brmerge, label %for.inc1054, label %if.then108

if.end106:                                        ; preds = %lor.lhs.false84
  br i1 %56, label %if.then108, label %for.inc1054

if.then108:                                       ; preds = %if.end100, %if.end106
  %rdopt = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 85
  %68 = load i32* %rdopt, align 4, !tbaa !3
  %tobool109 = icmp eq i32 %68, 0
  br i1 %tobool109, label %for.cond111.preheader, label %if.else

for.cond111.preheader:                            ; preds = %if.then108
  %69 = load i16*** @imgY_org, align 8, !tbaa !0
  %70 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %for.inc133, %for.cond111.preheader
  %indvars.iv2883 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next2884, %for.inc133 ]
  %indvars.iv2880 = phi i64 [ 0, %for.cond111.preheader ], [ %indvars.iv.next2881, %for.inc133 ]
  %71 = add nsw i64 %indvars.iv2880, %44
  %arrayidx121 = getelementptr inbounds i16** %69, i64 %71
  %72 = load i16** %arrayidx121, align 8, !tbaa !0
  br label %for.body116

for.body116:                                      ; preds = %for.body116, %for.cond114.preheader
  %indvars.iv2876 = phi i64 [ %indvars.iv2883, %for.cond114.preheader ], [ %indvars.iv.next2877, %for.body116 ]
  %indvars.iv2873 = phi i64 [ 0, %for.cond114.preheader ], [ %indvars.iv.next2874, %for.body116 ]
  %73 = add nsw i64 %indvars.iv2873, %42
  %arrayidx122 = getelementptr inbounds i16* %72, i64 %73
  %74 = load i16* %arrayidx122, align 2, !tbaa !4
  %conv = zext i16 %74 to i32
  %arrayidx128 = getelementptr inbounds %struct.ImageParameters* %70, i64 0, i32 41, i64 %indvars.iv2887, i64 %indvars.iv2880, i64 %indvars.iv2873
  %75 = load i16* %arrayidx128, align 2, !tbaa !4
  %conv129 = zext i16 %75 to i32
  %sub = sub nsw i32 %conv, %conv129
  %arrayidx131 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 %indvars.iv2876
  store i32 %sub, i32* %arrayidx131, align 4, !tbaa !3
  %indvars.iv.next2874 = add i64 %indvars.iv2873, 1
  %indvars.iv.next2877 = add i64 %indvars.iv2876, 1
  %lftr.wideiv2878 = trunc i64 %indvars.iv.next2874 to i32
  %exitcond2879 = icmp eq i32 %lftr.wideiv2878, 4
  br i1 %exitcond2879, label %for.inc133, label %for.body116

for.inc133:                                       ; preds = %for.body116
  %indvars.iv.next2884 = add i64 %indvars.iv2883, 4
  %indvars.iv.next2881 = add i64 %indvars.iv2880, 1
  %lftr.wideiv2885 = trunc i64 %indvars.iv.next2881 to i32
  %exitcond2886 = icmp eq i32 %lftr.wideiv2885, 4
  br i1 %exitcond2886, label %for.end135, label %for.cond114.preheader

for.end135:                                       ; preds = %for.inc133
  %cmp136 = icmp eq i32 %52, %cond66
  br i1 %cmp136, label %cond.end142, label %cond.false139

cond.false139:                                    ; preds = %for.end135
  %call = call double @floor(double %mul140) #9
  %conv141 = fptosi double %call to i32
  br label %cond.end142

cond.end142:                                      ; preds = %for.end135, %cond.false139
  %cond143 = phi i32 [ %conv141, %cond.false139 ], [ 0, %for.end135 ]
  %hadamard = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 6
  %76 = load i32* %hadamard, align 4, !tbaa !3
  %call144 = call i32 @SATD(i32* %arraydecay, i32 %76) #8
  %add145 = add nsw i32 %call144, %cond143
  %77 = load i32* %min_cost, align 4, !tbaa !3
  %cmp146 = icmp slt i32 %add145, %77
  br i1 %cmp146, label %if.then148, label %for.inc1054

if.then148:                                       ; preds = %cond.end142
  store i32 %add145, i32* %min_cost, align 4, !tbaa !3
  br label %for.inc1054

if.else:                                          ; preds = %if.then108
  %78 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 164
  %79 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool150 = icmp eq i32 %79, 0
  br i1 %tobool150, label %for.cond152.preheader, label %for.cond261.preheader

for.cond152.preheader:                            ; preds = %if.else
  %80 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond156.preheader

for.cond261.preheader:                            ; preds = %if.else
  %81 = load i16**** @imgUV_org, align 8, !tbaa !0
  %82 = load i16*** %81, align 8, !tbaa !0
  %83 = load i16*** @imgY_org, align 8, !tbaa !0
  %arrayidx308 = getelementptr inbounds i16*** %81, i64 1
  %84 = load i16*** %arrayidx308, align 8, !tbaa !0
  br label %for.cond265.preheader

for.cond156.preheader:                            ; preds = %for.inc196, %for.cond152.preheader
  %indvars.iv2849 = phi i64 [ 0, %for.cond152.preheader ], [ %indvars.iv.next2850, %for.inc196 ]
  %85 = add nsw i64 %indvars.iv2849, %43
  %86 = add nsw i64 %indvars.iv2849, %44
  %arrayidx177 = getelementptr inbounds i16** %80, i64 %86
  %87 = load i16** %arrayidx177, align 8, !tbaa !0
  br label %for.body159

for.body159:                                      ; preds = %for.body159, %for.cond156.preheader
  %indvars.iv2843 = phi i64 [ 0, %for.cond156.preheader ], [ %indvars.iv.next2844, %for.body159 ]
  %arrayidx166 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 41, i64 %indvars.iv2887, i64 %indvars.iv2849, i64 %indvars.iv2843
  %88 = load i16* %arrayidx166, align 2, !tbaa !4
  %89 = add nsw i64 %indvars.iv2843, %41
  %arrayidx172 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 45, i64 %89, i64 %85
  store i16 %88, i16* %arrayidx172, align 2, !tbaa !4
  %90 = add nsw i64 %indvars.iv2843, %42
  %arrayidx178 = getelementptr inbounds i16* %87, i64 %90
  %91 = load i16* %arrayidx178, align 2, !tbaa !4
  %conv179 = zext i16 %91 to i32
  %92 = load i16* %arrayidx166, align 2, !tbaa !4
  %conv187 = zext i16 %92 to i32
  %sub188 = sub nsw i32 %conv179, %conv187
  %arrayidx192 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 46, i64 %indvars.iv2843, i64 %indvars.iv2849
  store i32 %sub188, i32* %arrayidx192, align 4, !tbaa !3
  %indvars.iv.next2844 = add i64 %indvars.iv2843, 1
  %lftr.wideiv2847 = trunc i64 %indvars.iv.next2844 to i32
  %exitcond2848 = icmp eq i32 %lftr.wideiv2847, 4
  br i1 %exitcond2848, label %for.inc196, label %for.body159

for.inc196:                                       ; preds = %for.body159
  %indvars.iv.next2850 = add i64 %indvars.iv2849, 1
  %lftr.wideiv2853 = trunc i64 %indvars.iv.next2850 to i32
  %exitcond2854 = icmp eq i32 %lftr.wideiv2853, 4
  br i1 %exitcond2854, label %for.end198, label %for.cond156.preheader

for.end198:                                       ; preds = %for.inc196
  %93 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %93) #8
  %call199 = call double @RDCost_for_4x4IntraBlocks(i32* %c_nz, i32 %b8, i32 %b4, i32 %52, double %lambda, double undef, i32 %cond66) #10
  %sub200 = fsub double %call199, %min_rdcost.02611
  %call201 = call double @fabs(double %sub200) #9
  %cmp202 = fcmp ogt double %call201, 0x3D50000000000000
  %cmp205 = fcmp olt double %call199, %min_rdcost.02611
  %or.cond2543 = and i1 %cmp202, %cmp205
  br i1 %or.cond2543, label %for.cond208.preheader, label %if.end259

for.cond208.preheader:                            ; preds = %for.end198
  %94 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 47
  %95 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx220 = getelementptr inbounds i32**** %95, i64 %idxprom859
  %96 = load i32**** %arrayidx220, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i32*** %96, i64 %idxprom858
  %97 = load i32*** %arrayidx221, align 8, !tbaa !0
  %98 = load i32*** @cofAC4x4, align 8, !tbaa !0
  br label %for.cond212.preheader

for.cond212.preheader:                            ; preds = %for.inc231, %for.cond208.preheader
  %indvars.iv2859 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next2860, %for.inc231 ]
  %arrayidx222 = getelementptr inbounds i32** %97, i64 %indvars.iv2859
  %99 = load i32** %arrayidx222, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i32** %98, i64 %indvars.iv2859
  %100 = load i32** %arrayidx226, align 8, !tbaa !0
  br label %for.body215

for.body215:                                      ; preds = %for.body215, %for.cond212.preheader
  %indvars.iv2855 = phi i64 [ 0, %for.cond212.preheader ], [ %indvars.iv.next2856, %for.body215 ]
  %arrayidx223 = getelementptr inbounds i32* %99, i64 %indvars.iv2855
  %101 = load i32* %arrayidx223, align 4, !tbaa !3
  %arrayidx227 = getelementptr inbounds i32* %100, i64 %indvars.iv2855
  store i32 %101, i32* %arrayidx227, align 4, !tbaa !3
  %indvars.iv.next2856 = add i64 %indvars.iv2855, 1
  %lftr.wideiv2857 = trunc i64 %indvars.iv.next2856 to i32
  %exitcond2858 = icmp eq i32 %lftr.wideiv2857, 18
  br i1 %exitcond2858, label %for.inc231, label %for.body215

for.inc231:                                       ; preds = %for.body215
  %indvars.iv.next2860 = add i64 %indvars.iv2859, 1
  %lftr.wideiv2861 = trunc i64 %indvars.iv.next2860 to i32
  %exitcond2862 = icmp eq i32 %lftr.wideiv2861, 2
  br i1 %exitcond2862, label %for.cond234.loopexit, label %for.cond212.preheader

for.cond234.loopexit:                             ; preds = %for.inc231
  %102 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %102, i64 0, i32 25
  %103 = load i16*** %imgY, align 8, !tbaa !0
  br label %for.cond238.preheader

for.cond238.preheader:                            ; preds = %for.inc256, %for.cond234.loopexit
  %indvars.iv2868 = phi i64 [ 0, %for.cond234.loopexit ], [ %indvars.iv.next2869, %for.inc256 ]
  %104 = add nsw i64 %indvars.iv2868, %46
  %arrayidx246 = getelementptr inbounds i16** %103, i64 %104
  %105 = load i16** %arrayidx246, align 8, !tbaa !0
  br label %for.body241

for.body241:                                      ; preds = %for.body241, %for.cond238.preheader
  %indvars.iv2863 = phi i64 [ 0, %for.cond238.preheader ], [ %indvars.iv.next2864, %for.body241 ]
  %106 = add nsw i64 %indvars.iv2863, %45
  %arrayidx247 = getelementptr inbounds i16* %105, i64 %106
  %107 = load i16* %arrayidx247, align 2, !tbaa !4
  %conv248 = zext i16 %107 to i32
  %arrayidx252 = getelementptr inbounds [4 x [4 x i32]]* %rec4x4, i64 0, i64 %indvars.iv2868, i64 %indvars.iv2863
  store i32 %conv248, i32* %arrayidx252, align 4, !tbaa !3
  %indvars.iv.next2864 = add i64 %indvars.iv2863, 1
  %lftr.wideiv2866 = trunc i64 %indvars.iv.next2864 to i32
  %exitcond2867 = icmp eq i32 %lftr.wideiv2866, 4
  br i1 %exitcond2867, label %for.inc256, label %for.body241

for.inc256:                                       ; preds = %for.body241
  %indvars.iv.next2869 = add i64 %indvars.iv2868, 1
  %lftr.wideiv2871 = trunc i64 %indvars.iv.next2869 to i32
  %exitcond2872 = icmp eq i32 %lftr.wideiv2871, 4
  br i1 %exitcond2872, label %for.end258, label %for.cond238.preheader

for.end258:                                       ; preds = %for.inc256
  %108 = load i32* %c_nz, align 4, !tbaa !3
  br label %if.end259

if.end259:                                        ; preds = %for.end258, %for.end198
  %nonzero.1 = phi i32 [ %108, %for.end258 ], [ %nonzero.02610, %for.end198 ]
  %min_rdcost.1 = phi double [ %call199, %for.end258 ], [ %min_rdcost.02611, %for.end198 ]
  %best_ipmode.1 = phi i32 [ %52, %for.end258 ], [ %best_ipmode.02612, %for.end198 ]
  %109 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %109) #8
  br label %for.inc1054

for.cond265.preheader:                            ; preds = %for.inc352, %for.cond261.preheader
  %indvars.iv2736 = phi i64 [ 0, %for.cond261.preheader ], [ %indvars.iv.next2737, %for.inc352 ]
  %110 = add nsw i64 %indvars.iv2736, %44
  %arrayidx274 = getelementptr inbounds i16** %82, i64 %110
  %111 = load i16** %arrayidx274, align 8, !tbaa !0
  %112 = add nsw i64 %indvars.iv2736, %43
  %arrayidx292 = getelementptr inbounds i16** %83, i64 %110
  %113 = load i16** %arrayidx292, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i16** %84, i64 %110
  %114 = load i16** %arrayidx309, align 8, !tbaa !0
  br label %for.body268

for.body268:                                      ; preds = %for.body268, %for.cond265.preheader
  %indvars.iv2730 = phi i64 [ 0, %for.cond265.preheader ], [ %indvars.iv.next2731, %for.body268 ]
  %115 = add nsw i64 %indvars.iv2730, %42
  %arrayidx275 = getelementptr inbounds i16* %111, i64 %115
  %116 = load i16* %arrayidx275, align 2, !tbaa !4
  %conv276 = zext i16 %116 to i32
  %117 = add nsw i64 %indvars.iv2730, %41
  %arrayidx285 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 44, i64 0, i64 %idxprom281, i64 %117, i64 %112
  %118 = load i16* %arrayidx285, align 2, !tbaa !4
  %conv286 = zext i16 %118 to i32
  %sub287 = sub nsw i32 %conv276, %conv286
  %arrayidx293 = getelementptr inbounds i16* %113, i64 %115
  %119 = load i16* %arrayidx293, align 2, !tbaa !4
  %conv294 = zext i16 %119 to i32
  %arrayidx301 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 41, i64 %indvars.iv2887, i64 %indvars.iv2736, i64 %indvars.iv2730
  %120 = load i16* %arrayidx301, align 2, !tbaa !4
  %conv302 = zext i16 %120 to i32
  %sub303 = sub nsw i32 %conv294, %conv302
  %arrayidx310 = getelementptr inbounds i16* %114, i64 %115
  %121 = load i16* %arrayidx310, align 2, !tbaa !4
  %conv311 = zext i16 %121 to i32
  %arrayidx321 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 44, i64 1, i64 %idxprom281, i64 %117, i64 %112
  %122 = load i16* %arrayidx321, align 2, !tbaa !4
  %conv322 = zext i16 %122 to i32
  %sub323 = sub nsw i32 %conv311, %conv322
  %sub324 = sub i32 %sub323, %sub287
  %arrayidx328 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2730, i64 %indvars.iv2736
  store i32 %sub324, i32* %arrayidx328, align 4, !tbaa !3
  %shr = ashr i32 %sub324, 1
  %add333 = add nsw i32 %shr, %sub287
  %sub334 = sub i32 %sub303, %add333
  %arrayidx338 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2730, i64 %indvars.iv2736
  store i32 %sub334, i32* %arrayidx338, align 4, !tbaa !3
  %shr343 = ashr i32 %sub334, 1
  %add344 = add nsw i32 %shr343, %add333
  %arrayidx348 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2730, i64 %indvars.iv2736
  store i32 %add344, i32* %arrayidx348, align 4, !tbaa !3
  %indvars.iv.next2731 = add i64 %indvars.iv2730, 1
  %lftr.wideiv2734 = trunc i64 %indvars.iv.next2731 to i32
  %exitcond2735 = icmp eq i32 %lftr.wideiv2734, 4
  br i1 %exitcond2735, label %for.inc352, label %for.body268

for.inc352:                                       ; preds = %for.body268
  %indvars.iv.next2737 = add i64 %indvars.iv2736, 1
  %lftr.wideiv2740 = trunc i64 %indvars.iv.next2737 to i32
  %exitcond2741 = icmp eq i32 %lftr.wideiv2740, 4
  br i1 %exitcond2741, label %for.cond359.preheader, label %for.cond265.preheader

for.cond359.preheader:                            ; preds = %for.inc352, %for.inc375
  %indvars.iv2746 = phi i64 [ %indvars.iv.next2747, %for.inc375 ], [ 0, %for.inc352 ]
  br label %for.body362

for.body362:                                      ; preds = %for.body362, %for.cond359.preheader
  %indvars.iv2742 = phi i64 [ 0, %for.cond359.preheader ], [ %indvars.iv.next2743, %for.body362 ]
  %arrayidx366 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2742, i64 %indvars.iv2746
  %123 = load i32* %arrayidx366, align 4, !tbaa !3
  %arrayidx371 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 46, i64 %indvars.iv2742, i64 %indvars.iv2746
  store i32 %123, i32* %arrayidx371, align 4, !tbaa !3
  %indvars.iv.next2743 = add i64 %indvars.iv2742, 1
  %lftr.wideiv2744 = trunc i64 %indvars.iv.next2743 to i32
  %exitcond2745 = icmp eq i32 %lftr.wideiv2744, 4
  br i1 %exitcond2745, label %for.inc375, label %for.body362

for.inc375:                                       ; preds = %for.body362
  %indvars.iv.next2747 = add i64 %indvars.iv2746, 1
  %lftr.wideiv2748 = trunc i64 %indvars.iv.next2747 to i32
  %exitcond2749 = icmp eq i32 %lftr.wideiv2748, 4
  br i1 %exitcond2749, label %for.end377, label %for.cond359.preheader

for.end377:                                       ; preds = %for.inc375
  %124 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %124) #8
  %call378 = call double @RDCost_for_4x4IntraBlocks(i32* %c_nz, i32 %b8, i32 %b4, i32 %52, double %lambda, double undef, i32 %cond66) #10
  %125 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %125) #8
  %126 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond384.preheader

for.cond384.preheader:                            ; preds = %for.inc409, %for.end377
  %indvars.iv2754 = phi i64 [ 0, %for.end377 ], [ %indvars.iv.next2755, %for.inc409 ]
  br label %for.body387

for.body387:                                      ; preds = %for.body387, %for.cond384.preheader
  %indvars.iv2750 = phi i64 [ 0, %for.cond384.preheader ], [ %indvars.iv.next2751, %for.body387 ]
  %arrayidx392 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 46, i64 %indvars.iv2750, i64 %indvars.iv2754
  %127 = load i32* %arrayidx392, align 4, !tbaa !3
  %arrayidx396 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2750, i64 %indvars.iv2754
  store i32 %127, i32* %arrayidx396, align 4, !tbaa !3
  %arrayidx400 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2750, i64 %indvars.iv2754
  %128 = load i32* %arrayidx400, align 4, !tbaa !3
  store i32 %128, i32* %arrayidx392, align 4, !tbaa !3
  %indvars.iv.next2751 = add i64 %indvars.iv2750, 1
  %lftr.wideiv2752 = trunc i64 %indvars.iv.next2751 to i32
  %exitcond2753 = icmp eq i32 %lftr.wideiv2752, 4
  br i1 %exitcond2753, label %for.inc409, label %for.body387

for.inc409:                                       ; preds = %for.body387
  %indvars.iv.next2755 = add i64 %indvars.iv2754, 1
  %lftr.wideiv2756 = trunc i64 %indvars.iv.next2755 to i32
  %exitcond2757 = icmp eq i32 %lftr.wideiv2756, 4
  br i1 %exitcond2757, label %for.end411, label %for.cond384.preheader

for.end411:                                       ; preds = %for.inc409
  %129 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %129) #8
  %call413 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add412, i32 %b4, i32 0) #10
  %130 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond419.preheader

for.cond419.preheader:                            ; preds = %for.inc444, %for.end411
  %indvars.iv2762 = phi i64 [ 0, %for.end411 ], [ %indvars.iv.next2763, %for.inc444 ]
  br label %for.body422

for.body422:                                      ; preds = %for.body422, %for.cond419.preheader
  %indvars.iv2758 = phi i64 [ 0, %for.cond419.preheader ], [ %indvars.iv.next2759, %for.body422 ]
  %arrayidx427 = getelementptr inbounds %struct.ImageParameters* %130, i64 0, i32 46, i64 %indvars.iv2758, i64 %indvars.iv2762
  %131 = load i32* %arrayidx427, align 4, !tbaa !3
  %arrayidx431 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2758, i64 %indvars.iv2762
  store i32 %131, i32* %arrayidx431, align 4, !tbaa !3
  %arrayidx435 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2758, i64 %indvars.iv2762
  %132 = load i32* %arrayidx435, align 4, !tbaa !3
  store i32 %132, i32* %arrayidx427, align 4, !tbaa !3
  %indvars.iv.next2759 = add i64 %indvars.iv2758, 1
  %lftr.wideiv2760 = trunc i64 %indvars.iv.next2759 to i32
  %exitcond2761 = icmp eq i32 %lftr.wideiv2760, 4
  br i1 %exitcond2761, label %for.inc444, label %for.body422

for.inc444:                                       ; preds = %for.body422
  %indvars.iv.next2763 = add i64 %indvars.iv2762, 1
  %lftr.wideiv2764 = trunc i64 %indvars.iv.next2763 to i32
  %exitcond2765 = icmp eq i32 %lftr.wideiv2764, 4
  br i1 %exitcond2765, label %for.end446, label %for.cond419.preheader

for.end446:                                       ; preds = %for.inc444
  %conv379 = fptosi double %call378 to i32
  %call448 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add447, i32 %b4, i32 1) #10
  %133 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %133) #8
  %134 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond454.preheader

for.cond454.preheader:                            ; preds = %for.inc470, %for.end446
  %indvars.iv2770 = phi i64 [ 0, %for.end446 ], [ %indvars.iv.next2771, %for.inc470 ]
  br label %for.body457

for.body457:                                      ; preds = %for.body457, %for.cond454.preheader
  %indvars.iv2766 = phi i64 [ 0, %for.cond454.preheader ], [ %indvars.iv.next2767, %for.body457 ]
  %arrayidx462 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 46, i64 %indvars.iv2766, i64 %indvars.iv2770
  %135 = load i32* %arrayidx462, align 4, !tbaa !3
  %arrayidx466 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2766, i64 %indvars.iv2770
  store i32 %135, i32* %arrayidx466, align 4, !tbaa !3
  %indvars.iv.next2767 = add i64 %indvars.iv2766, 1
  %lftr.wideiv2768 = trunc i64 %indvars.iv.next2767 to i32
  %exitcond2769 = icmp eq i32 %lftr.wideiv2768, 4
  br i1 %exitcond2769, label %for.inc470, label %for.body457

for.inc470:                                       ; preds = %for.body457
  %indvars.iv.next2771 = add i64 %indvars.iv2770, 1
  %lftr.wideiv2772 = trunc i64 %indvars.iv.next2771 to i32
  %exitcond2773 = icmp eq i32 %lftr.wideiv2772, 4
  br i1 %exitcond2773, label %for.cond473.loopexit, label %for.cond454.preheader

for.cond473.loopexit:                             ; preds = %for.inc470
  %add414 = add nsw i32 %call413, %conv379
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 156
  %136 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 30
  %137 = load i16**** %imgUV, align 8, !tbaa !0
  %138 = load i16*** %137, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 155
  %imgY642 = getelementptr inbounds %struct.storable_picture* %136, i64 0, i32 25
  %139 = load i16*** %imgY642, align 8, !tbaa !0
  %arrayidx719 = getelementptr inbounds i16*** %137, i64 1
  %140 = load i16*** %arrayidx719, align 8, !tbaa !0
  %.pre2893.pre = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %.pre2894.pre = load i32* %max_imgpel_value, align 4, !tbaa !3
  br label %for.cond477.preheader

for.cond477.preheader:                            ; preds = %for.inc725, %for.cond473.loopexit
  %indvars.iv2780 = phi i64 [ 0, %for.cond473.loopexit ], [ %indvars.iv.next2781, %for.inc725 ]
  %141 = add nsw i64 %indvars.iv2780, %43
  %142 = add nsw i64 %indvars.iv2780, %46
  %arrayidx580 = getelementptr inbounds i16** %138, i64 %142
  %143 = load i16** %arrayidx580, align 8, !tbaa !0
  %arrayidx643 = getelementptr inbounds i16** %139, i64 %142
  %144 = load i16** %arrayidx643, align 8, !tbaa !0
  %arrayidx720 = getelementptr inbounds i16** %140, i64 %142
  %145 = load i16** %arrayidx720, align 8, !tbaa !0
  br label %for.body480

for.body480:                                      ; preds = %for.body480, %for.cond477.preheader
  %indvars.iv2774 = phi i64 [ 0, %for.cond477.preheader ], [ %indvars.iv.next2775, %for.body480 ]
  %arrayidx484 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2774, i64 %indvars.iv2780
  %146 = load i32* %arrayidx484, align 4, !tbaa !3
  %arrayidx488 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2774, i64 %indvars.iv2780
  %147 = load i32* %arrayidx488, align 4, !tbaa !3
  %shr489 = ashr i32 %147, 1
  %sub490 = sub nsw i32 %146, %shr489
  %add495 = add nsw i32 %sub490, %147
  %arrayidx499 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2774, i64 %indvars.iv2780
  %148 = load i32* %arrayidx499, align 4, !tbaa !3
  %shr500 = ashr i32 %148, 1
  %sub501 = sub nsw i32 %sub490, %shr500
  %add506 = add nsw i32 %sub501, %148
  %149 = add nsw i64 %indvars.iv2774, %41
  %arrayidx516 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 0, i64 %idxprom281, i64 %149, i64 %141
  %150 = load i16* %arrayidx516, align 2, !tbaa !4
  %conv517 = zext i16 %150 to i32
  %add518 = add nsw i32 %conv517, %sub501
  %cmp519 = icmp slt i32 %add518, 0
  %.add518 = select i1 %cmp519, i32 0, i32 %add518
  %cmp537 = icmp slt i32 %.pre2893.pre, %.add518
  %..add518 = select i1 %cmp537, i32 %.pre2893.pre, i32 %.add518
  %conv574 = trunc i32 %..add518 to i16
  %151 = add nsw i64 %indvars.iv2774, %45
  %arrayidx581 = getelementptr inbounds i16* %143, i64 %151
  store i16 %conv574, i16* %arrayidx581, align 2, !tbaa !4
  %arrayidx588 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 41, i64 %indvars.iv2887, i64 %indvars.iv2780, i64 %indvars.iv2774
  %152 = load i16* %arrayidx588, align 2, !tbaa !4
  %conv589 = zext i16 %152 to i32
  %add590 = add nsw i32 %add495, %conv589
  %cmp591 = icmp slt i32 %add590, 0
  %.add590 = select i1 %cmp591, i32 0, i32 %add590
  %cmp606 = icmp slt i32 %.pre2894.pre, %.add590
  %cond636 = select i1 %cmp606, i32 %.pre2894.pre, i32 %.add590
  %conv637 = trunc i32 %cond636 to i16
  %arrayidx644 = getelementptr inbounds i16* %144, i64 %151
  store i16 %conv637, i16* %arrayidx644, align 2, !tbaa !4
  %arrayidx655 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 44, i64 1, i64 %idxprom281, i64 %149, i64 %141
  %153 = load i16* %arrayidx655, align 2, !tbaa !4
  %conv656 = zext i16 %153 to i32
  %add657 = add nsw i32 %add506, %conv656
  %cmp658 = icmp slt i32 %add657, 0
  %.add657 = select i1 %cmp658, i32 0, i32 %add657
  %cmp676 = icmp slt i32 %.pre2893.pre, %.add657
  %..add657 = select i1 %cmp676, i32 %.pre2893.pre, i32 %.add657
  %conv713 = trunc i32 %..add657 to i16
  %arrayidx721 = getelementptr inbounds i16* %145, i64 %151
  store i16 %conv713, i16* %arrayidx721, align 2, !tbaa !4
  %indvars.iv.next2775 = add i64 %indvars.iv2774, 1
  %lftr.wideiv2778 = trunc i64 %indvars.iv.next2775 to i32
  %exitcond2779 = icmp eq i32 %lftr.wideiv2778, 4
  br i1 %exitcond2779, label %for.inc725, label %for.body480

for.inc725:                                       ; preds = %for.body480
  %indvars.iv.next2781 = add i64 %indvars.iv2780, 1
  %lftr.wideiv2784 = trunc i64 %indvars.iv.next2781 to i32
  %exitcond2785 = icmp eq i32 %lftr.wideiv2784, 4
  br i1 %exitcond2785, label %for.cond728.loopexit, label %for.cond477.preheader

for.cond728.loopexit:                             ; preds = %for.inc725
  %154 = load i16*** @imgY_org, align 8, !tbaa !0
  %155 = load i16**** @imgUV_org, align 8, !tbaa !0
  %156 = load i16*** %155, align 8, !tbaa !0
  %arrayidx804 = getelementptr inbounds i16*** %155, i64 1
  %157 = load i16*** %arrayidx804, align 8, !tbaa !0
  br label %for.cond732.preheader

for.cond732.preheader:                            ; preds = %for.inc838, %for.cond728.loopexit
  %indvars.iv2788 = phi i64 [ 0, %for.cond728.loopexit ], [ %indvars.iv.next2789, %for.inc838 ]
  %distortion.02588 = phi i32 [ 0, %for.cond728.loopexit ], [ %add834, %for.inc838 ]
  %158 = add nsw i64 %indvars.iv2788, %46
  %arrayidx740 = getelementptr inbounds i16** %154, i64 %158
  %159 = load i16** %arrayidx740, align 8, !tbaa !0
  %arrayidx747 = getelementptr inbounds i16** %139, i64 %158
  %160 = load i16** %arrayidx747, align 8, !tbaa !0
  %arrayidx771 = getelementptr inbounds i16** %156, i64 %158
  %161 = load i16** %arrayidx771, align 8, !tbaa !0
  %arrayidx779 = getelementptr inbounds i16** %138, i64 %158
  %162 = load i16** %arrayidx779, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds i16** %157, i64 %158
  %163 = load i16** %arrayidx805, align 8, !tbaa !0
  %arrayidx813 = getelementptr inbounds i16** %140, i64 %158
  %164 = load i16** %arrayidx813, align 8, !tbaa !0
  br label %for.body736

for.body736:                                      ; preds = %for.cond732.preheader, %for.body736
  %indvars.iv2786 = phi i64 [ %51, %for.cond732.preheader ], [ %indvars.iv.next2787, %for.body736 ]
  %distortion.12586 = phi i32 [ %distortion.02588, %for.cond732.preheader ], [ %add834, %for.body736 ]
  %arrayidx741 = getelementptr inbounds i16* %159, i64 %indvars.iv2786
  %165 = load i16* %arrayidx741, align 2, !tbaa !4
  %conv742 = zext i16 %165 to i32
  %arrayidx748 = getelementptr inbounds i16* %160, i64 %indvars.iv2786
  %166 = load i16* %arrayidx748, align 2, !tbaa !4
  %conv749 = zext i16 %166 to i32
  %sub750 = sub nsw i32 %conv742, %conv749
  %mul765 = mul nsw i32 %sub750, %sub750
  %add766 = add nsw i32 %mul765, %distortion.12586
  %arrayidx772 = getelementptr inbounds i16* %161, i64 %indvars.iv2786
  %167 = load i16* %arrayidx772, align 2, !tbaa !4
  %conv773 = zext i16 %167 to i32
  %arrayidx780 = getelementptr inbounds i16* %162, i64 %indvars.iv2786
  %168 = load i16* %arrayidx780, align 2, !tbaa !4
  %conv781 = zext i16 %168 to i32
  %sub782 = sub nsw i32 %conv773, %conv781
  %mul799 = mul nsw i32 %sub782, %sub782
  %add800 = add nsw i32 %add766, %mul799
  %arrayidx806 = getelementptr inbounds i16* %163, i64 %indvars.iv2786
  %169 = load i16* %arrayidx806, align 2, !tbaa !4
  %conv807 = zext i16 %169 to i32
  %arrayidx814 = getelementptr inbounds i16* %164, i64 %indvars.iv2786
  %170 = load i16* %arrayidx814, align 2, !tbaa !4
  %conv815 = zext i16 %170 to i32
  %sub816 = sub nsw i32 %conv807, %conv815
  %mul833 = mul nsw i32 %sub816, %sub816
  %add834 = add nsw i32 %add800, %mul833
  %indvars.iv.next2787 = add i64 %indvars.iv2786, 1
  %171 = add nsw i32 %add7, 3
  %172 = trunc i64 %indvars.iv2786 to i32
  %cmp734 = icmp slt i32 %172, %171
  br i1 %cmp734, label %for.body736, label %for.inc838

for.inc838:                                       ; preds = %for.body736
  %indvars.iv.next2789 = add i64 %indvars.iv2788, 1
  %lftr.wideiv2791 = trunc i64 %indvars.iv.next2789 to i32
  %exitcond2792 = icmp eq i32 %lftr.wideiv2791, 4
  br i1 %exitcond2792, label %for.end840, label %for.cond732.preheader

for.end840:                                       ; preds = %for.inc838
  %add449 = add nsw i32 %add414, %call448
  %conv841 = sitofp i32 %add834 to double
  %conv842 = sitofp i32 %add449 to double
  %mul843 = fmul double %conv842, %lambda
  %add844 = fadd double %mul843, %conv841
  %cmp845 = fcmp olt double %add844, %min_rdcost.02611
  br i1 %cmp845, label %for.cond848.preheader, label %for.inc1054

for.cond848.preheader:                            ; preds = %for.end840
  %cofAC860 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 47
  %173 = load i32***** %cofAC860, align 8, !tbaa !0
  %arrayidx861 = getelementptr inbounds i32**** %173, i64 %idxprom859
  %174 = load i32**** %arrayidx861, align 8, !tbaa !0
  %arrayidx862 = getelementptr inbounds i32*** %174, i64 %idxprom858
  %175 = load i32*** %arrayidx862, align 8, !tbaa !0
  %176 = load i32*** @cofAC4x4, align 8, !tbaa !0
  br label %for.cond852.preheader

for.cond852.preheader:                            ; preds = %for.inc872, %for.cond848.preheader
  %indvars.iv2797 = phi i64 [ 0, %for.cond848.preheader ], [ %indvars.iv.next2798, %for.inc872 ]
  %arrayidx863 = getelementptr inbounds i32** %175, i64 %indvars.iv2797
  %177 = load i32** %arrayidx863, align 8, !tbaa !0
  %arrayidx867 = getelementptr inbounds i32** %176, i64 %indvars.iv2797
  %178 = load i32** %arrayidx867, align 8, !tbaa !0
  br label %for.body855

for.body855:                                      ; preds = %for.body855, %for.cond852.preheader
  %indvars.iv2793 = phi i64 [ 0, %for.cond852.preheader ], [ %indvars.iv.next2794, %for.body855 ]
  %arrayidx864 = getelementptr inbounds i32* %177, i64 %indvars.iv2793
  %179 = load i32* %arrayidx864, align 4, !tbaa !3
  %arrayidx868 = getelementptr inbounds i32* %178, i64 %indvars.iv2793
  store i32 %179, i32* %arrayidx868, align 4, !tbaa !3
  %indvars.iv.next2794 = add i64 %indvars.iv2793, 1
  %lftr.wideiv2795 = trunc i64 %indvars.iv.next2794 to i32
  %exitcond2796 = icmp eq i32 %lftr.wideiv2795, 18
  br i1 %exitcond2796, label %for.inc872, label %for.body855

for.inc872:                                       ; preds = %for.body855
  %indvars.iv.next2798 = add i64 %indvars.iv2797, 1
  %lftr.wideiv2799 = trunc i64 %indvars.iv.next2798 to i32
  %exitcond2800 = icmp eq i32 %lftr.wideiv2799, 2
  br i1 %exitcond2800, label %for.cond875.loopexit, label %for.cond852.preheader

for.cond875.loopexit:                             ; preds = %for.inc872
  %arrayidx889 = getelementptr inbounds i32**** %173, i64 %idxprom887
  %180 = load i32**** %arrayidx889, align 8, !tbaa !0
  %arrayidx890 = getelementptr inbounds i32*** %180, i64 %idxprom858
  %181 = load i32*** %arrayidx890, align 8, !tbaa !0
  br label %for.cond879.preheader

for.cond879.preheader:                            ; preds = %for.inc900, %for.cond875.loopexit
  %indvars.iv2806 = phi i64 [ 0, %for.cond875.loopexit ], [ %indvars.iv.next2807, %for.inc900 ]
  %arrayidx891 = getelementptr inbounds i32** %181, i64 %indvars.iv2806
  %182 = load i32** %arrayidx891, align 8, !tbaa !0
  br label %for.body882

for.body882:                                      ; preds = %for.body882, %for.cond879.preheader
  %indvars.iv2801 = phi i64 [ 0, %for.cond879.preheader ], [ %indvars.iv.next2802, %for.body882 ]
  %arrayidx892 = getelementptr inbounds i32* %182, i64 %indvars.iv2801
  %183 = load i32* %arrayidx892, align 4, !tbaa !3
  %arrayidx896 = getelementptr inbounds [2 x [2 x [18 x i32]]]* @cofAC4x4_chroma, i64 0, i64 0, i64 %indvars.iv2806, i64 %indvars.iv2801
  store i32 %183, i32* %arrayidx896, align 4, !tbaa !3
  %indvars.iv.next2802 = add i64 %indvars.iv2801, 1
  %lftr.wideiv2803 = trunc i64 %indvars.iv.next2802 to i32
  %exitcond2804 = icmp eq i32 %lftr.wideiv2803, 18
  br i1 %exitcond2804, label %for.inc900, label %for.body882

for.inc900:                                       ; preds = %for.body882
  %indvars.iv.next2807 = add i64 %indvars.iv2806, 1
  %lftr.wideiv2808 = trunc i64 %indvars.iv.next2807 to i32
  %exitcond2809 = icmp eq i32 %lftr.wideiv2808, 2
  br i1 %exitcond2809, label %for.cond903.loopexit, label %for.cond879.preheader

for.cond903.loopexit:                             ; preds = %for.inc900
  %arrayidx917 = getelementptr inbounds i32**** %173, i64 %idxprom915
  %184 = load i32**** %arrayidx917, align 8, !tbaa !0
  %arrayidx918 = getelementptr inbounds i32*** %184, i64 %idxprom858
  %185 = load i32*** %arrayidx918, align 8, !tbaa !0
  br label %for.cond907.preheader

for.cond907.preheader:                            ; preds = %for.inc928, %for.cond903.loopexit
  %indvars.iv2815 = phi i64 [ 0, %for.cond903.loopexit ], [ %indvars.iv.next2816, %for.inc928 ]
  %arrayidx919 = getelementptr inbounds i32** %185, i64 %indvars.iv2815
  %186 = load i32** %arrayidx919, align 8, !tbaa !0
  br label %for.body910

for.body910:                                      ; preds = %for.body910, %for.cond907.preheader
  %indvars.iv2810 = phi i64 [ 0, %for.cond907.preheader ], [ %indvars.iv.next2811, %for.body910 ]
  %arrayidx920 = getelementptr inbounds i32* %186, i64 %indvars.iv2810
  %187 = load i32* %arrayidx920, align 4, !tbaa !3
  %arrayidx924 = getelementptr inbounds [2 x [2 x [18 x i32]]]* @cofAC4x4_chroma, i64 0, i64 1, i64 %indvars.iv2815, i64 %indvars.iv2810
  store i32 %187, i32* %arrayidx924, align 4, !tbaa !3
  %indvars.iv.next2811 = add i64 %indvars.iv2810, 1
  %lftr.wideiv2812 = trunc i64 %indvars.iv.next2811 to i32
  %exitcond2813 = icmp eq i32 %lftr.wideiv2812, 18
  br i1 %exitcond2813, label %for.inc928, label %for.body910

for.inc928:                                       ; preds = %for.body910
  %indvars.iv.next2816 = add i64 %indvars.iv2815, 1
  %lftr.wideiv2817 = trunc i64 %indvars.iv.next2816 to i32
  %exitcond2818 = icmp eq i32 %lftr.wideiv2817, 2
  br i1 %exitcond2818, label %for.body934, label %for.cond907.preheader

for.body934:                                      ; preds = %for.inc928, %for.inc1021.for.body934_crit_edge
  %188 = phi i16** [ %.pre2900, %for.inc1021.for.body934_crit_edge ], [ %138, %for.inc928 ]
  %indvars.iv2829 = phi i64 [ %indvars.iv.next2830, %for.inc1021.for.body934_crit_edge ], [ 0, %for.inc928 ]
  %arrayidx948 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 %indvars.iv2829, i64 %idxprom944, i64 %idxprom939
  %189 = load i32* %arrayidx948, align 4, !tbaa !3
  %arrayidx962 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 %indvars.iv2829, i64 %idxprom944, i64 %idxprom939
  store i32 %189, i32* %arrayidx962, align 4, !tbaa !3
  %arrayidx976 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, i64 0, i64 %indvars.iv2829, i64 %idxprom944, i64 %idxprom939
  %190 = load i32* %arrayidx976, align 4, !tbaa !3
  %arrayidx990 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv2829, i64 %idxprom944, i64 %idxprom939
  store i32 %190, i32* %arrayidx990, align 4, !tbaa !3
  br label %for.cond995.preheader

for.cond995.preheader:                            ; preds = %for.inc1018, %for.body934
  %indvars.iv2824 = phi i64 [ 0, %for.body934 ], [ %indvars.iv.next2825, %for.inc1018 ]
  %191 = add nsw i64 %indvars.iv2824, %46
  %arrayidx1006 = getelementptr inbounds i16** %188, i64 %191
  %192 = load i16** %arrayidx1006, align 8, !tbaa !0
  br label %for.body998

for.body998:                                      ; preds = %for.body998, %for.cond995.preheader
  %indvars.iv2819 = phi i64 [ 0, %for.cond995.preheader ], [ %indvars.iv.next2820, %for.body998 ]
  %193 = add nsw i64 %indvars.iv2819, %45
  %arrayidx1007 = getelementptr inbounds i16* %192, i64 %193
  %194 = load i16* %arrayidx1007, align 2, !tbaa !4
  %conv1008 = zext i16 %194 to i32
  %arrayidx1014 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %rec4x4_c, i64 0, i64 %indvars.iv2829, i64 %indvars.iv2824, i64 %indvars.iv2819
  store i32 %conv1008, i32* %arrayidx1014, align 4, !tbaa !3
  %indvars.iv.next2820 = add i64 %indvars.iv2819, 1
  %lftr.wideiv2822 = trunc i64 %indvars.iv.next2820 to i32
  %exitcond2823 = icmp eq i32 %lftr.wideiv2822, 4
  br i1 %exitcond2823, label %for.inc1018, label %for.body998

for.inc1018:                                      ; preds = %for.body998
  %indvars.iv.next2825 = add i64 %indvars.iv2824, 1
  %lftr.wideiv2827 = trunc i64 %indvars.iv.next2825 to i32
  %exitcond2828 = icmp eq i32 %lftr.wideiv2827, 4
  br i1 %exitcond2828, label %for.inc1021, label %for.cond995.preheader

for.inc1021:                                      ; preds = %for.inc1018
  %indvars.iv.next2830 = add i64 %indvars.iv2829, 1
  %lftr.wideiv2831 = trunc i64 %indvars.iv.next2830 to i32
  %exitcond2832 = icmp eq i32 %lftr.wideiv2831, 2
  br i1 %exitcond2832, label %for.cond1028.preheader, label %for.inc1021.for.body934_crit_edge

for.inc1021.for.body934_crit_edge:                ; preds = %for.inc1021
  %arrayidx1005.phi.trans.insert = getelementptr inbounds i16*** %137, i64 %indvars.iv.next2830
  %.pre2900 = load i16*** %arrayidx1005.phi.trans.insert, align 8, !tbaa !0
  br label %for.body934

for.cond1028.preheader:                           ; preds = %for.inc1021, %for.inc1047
  %indvars.iv2838 = phi i64 [ %indvars.iv.next2839, %for.inc1047 ], [ 0, %for.inc1021 ]
  %195 = add nsw i64 %indvars.iv2838, %46
  %arrayidx1037 = getelementptr inbounds i16** %139, i64 %195
  %196 = load i16** %arrayidx1037, align 8, !tbaa !0
  br label %for.body1031

for.body1031:                                     ; preds = %for.body1031, %for.cond1028.preheader
  %indvars.iv2833 = phi i64 [ 0, %for.cond1028.preheader ], [ %indvars.iv.next2834, %for.body1031 ]
  %197 = add nsw i64 %indvars.iv2833, %45
  %arrayidx1038 = getelementptr inbounds i16* %196, i64 %197
  %198 = load i16* %arrayidx1038, align 2, !tbaa !4
  %conv1039 = zext i16 %198 to i32
  %arrayidx1043 = getelementptr inbounds [4 x [4 x i32]]* %rec4x4, i64 0, i64 %indvars.iv2838, i64 %indvars.iv2833
  store i32 %conv1039, i32* %arrayidx1043, align 4, !tbaa !3
  %indvars.iv.next2834 = add i64 %indvars.iv2833, 1
  %lftr.wideiv2836 = trunc i64 %indvars.iv.next2834 to i32
  %exitcond2837 = icmp eq i32 %lftr.wideiv2836, 4
  br i1 %exitcond2837, label %for.inc1047, label %for.body1031

for.inc1047:                                      ; preds = %for.body1031
  %indvars.iv.next2839 = add i64 %indvars.iv2838, 1
  %lftr.wideiv2841 = trunc i64 %indvars.iv.next2839 to i32
  %exitcond2842 = icmp eq i32 %lftr.wideiv2841, 4
  br i1 %exitcond2842, label %for.end1049, label %for.cond1028.preheader

for.end1049:                                      ; preds = %for.inc1047
  %199 = load i32* %c_nz, align 4, !tbaa !3
  br label %for.inc1054

for.inc1054:                                      ; preds = %if.end100, %if.then86, %if.end106, %if.end259, %for.end1049, %for.end840, %cond.end142, %if.then148, %land.lhs.true95
  %nonzero.2 = phi i32 [ %nonzero.02610, %land.lhs.true95 ], [ %199, %for.end1049 ], [ %nonzero.02610, %for.end840 ], [ %nonzero.1, %if.end259 ], [ %nonzero.02610, %if.then148 ], [ %nonzero.02610, %cond.end142 ], [ %nonzero.02610, %if.end106 ], [ %nonzero.02610, %if.then86 ], [ %nonzero.02610, %if.end100 ]
  %min_rdcost.2 = phi double [ %min_rdcost.02611, %land.lhs.true95 ], [ %add844, %for.end1049 ], [ %min_rdcost.02611, %for.end840 ], [ %min_rdcost.1, %if.end259 ], [ %min_rdcost.02611, %if.then148 ], [ %min_rdcost.02611, %cond.end142 ], [ %min_rdcost.02611, %if.end106 ], [ %min_rdcost.02611, %if.then86 ], [ %min_rdcost.02611, %if.end100 ]
  %best_ipmode.2 = phi i32 [ %best_ipmode.02612, %land.lhs.true95 ], [ %52, %for.end1049 ], [ %best_ipmode.02612, %for.end840 ], [ %best_ipmode.1, %if.end259 ], [ %52, %if.then148 ], [ %best_ipmode.02612, %cond.end142 ], [ %best_ipmode.02612, %if.end106 ], [ %best_ipmode.02612, %if.then86 ], [ %best_ipmode.02612, %if.end100 ]
  %indvars.iv.next2888 = add i64 %indvars.iv2887, 1
  %lftr.wideiv2890 = trunc i64 %indvars.iv.next2888 to i32
  %exitcond2891 = icmp eq i32 %lftr.wideiv2890, 9
  br i1 %exitcond2891, label %for.end1056, label %for.body

for.end1056:                                      ; preds = %for.inc1054
  %idxprom1057 = sext i32 %div12 to i64
  %idxprom1058 = sext i32 %div11 to i64
  %200 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %ipredmode1059 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 25
  %201 = load i32*** %ipredmode1059, align 8, !tbaa !0
  %arrayidx1060 = getelementptr inbounds i32** %201, i64 %idxprom1058
  %202 = load i32** %arrayidx1060, align 8, !tbaa !0
  %arrayidx1061 = getelementptr inbounds i32* %202, i64 %idxprom1057
  store i32 %best_ipmode.2, i32* %arrayidx1061, align 4, !tbaa !3
  %cmp1062 = icmp eq i32 %cond66, %best_ipmode.2
  br i1 %cmp1062, label %cond.end1073, label %cond.false1065

cond.false1065:                                   ; preds = %for.end1056
  %not.cmp1066 = icmp sge i32 %best_ipmode.2, %cond66
  %sub1070 = sext i1 %not.cmp1066 to i32
  %cond1072 = add nsw i32 %sub1070, %best_ipmode.2
  br label %cond.end1073

cond.end1073:                                     ; preds = %for.end1056, %cond.false1065
  %cond1074 = phi i32 [ %cond1072, %cond.false1065 ], [ -1, %for.end1056 ]
  %mul1075 = shl i32 %b8, 2
  %add1076 = add nsw i32 %mul1075, %b4
  %idxprom1077 = sext i32 %add1076 to i64
  %current_mb_nr1078 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 3
  %203 = load i32* %current_mb_nr1078, align 4, !tbaa !3
  %idxprom1079 = sext i32 %203 to i64
  %mb_data1080 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 51
  %204 = load %struct.macroblock** %mb_data1080, align 8, !tbaa !0
  %arrayidx1082 = getelementptr inbounds %struct.macroblock* %204, i64 %idxprom1079, i32 10, i64 %idxprom1077
  store i32 %cond1074, i32* %arrayidx1082, align 4, !tbaa !3
  %205 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt1083 = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 85
  %206 = load i32* %rdopt1083, align 4, !tbaa !3
  %tobool1084 = icmp eq i32 %206, 0
  br i1 %tobool1084, label %if.then1085, label %for.cond1683.preheader

for.cond1683.preheader:                           ; preds = %cond.end1073
  %207 = load i32*** @cofAC4x4, align 8, !tbaa !0
  %cofAC1699 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 47
  %208 = load i32***** %cofAC1699, align 8, !tbaa !0
  %arrayidx1700 = getelementptr inbounds i32**** %208, i64 %idxprom859
  %209 = load i32**** %arrayidx1700, align 8, !tbaa !0
  %arrayidx1701 = getelementptr inbounds i32*** %209, i64 %idxprom858
  %210 = load i32*** %arrayidx1701, align 8, !tbaa !0
  br label %for.cond1687.preheader

if.then1085:                                      ; preds = %cond.end1073
  %residue_transform_flag1086 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164
  %211 = load i32* %residue_transform_flag1086, align 4, !tbaa !3
  %tobool1087 = icmp eq i32 %211, 0
  br i1 %tobool1087, label %for.cond1089.preheader, label %for.cond1140.preheader

for.cond1140.preheader:                           ; preds = %if.then1085
  %212 = load i16**** @imgUV_org, align 8, !tbaa !0
  %213 = load i16*** %212, align 8, !tbaa !0
  %214 = load i16*** @imgY_org, align 8, !tbaa !0
  %idxprom1177 = sext i32 %best_ipmode.2 to i64
  %arrayidx1188 = getelementptr inbounds i16*** %212, i64 1
  %215 = load i16*** %arrayidx1188, align 8, !tbaa !0
  br label %for.cond1144.preheader

for.cond1089.preheader:                           ; preds = %if.then1085
  %idxprom1099 = sext i32 %best_ipmode.2 to i64
  %216 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond1093.preheader

for.cond1093.preheader:                           ; preds = %for.inc1135, %for.cond1089.preheader
  %indvars.iv2618 = phi i64 [ 0, %for.cond1089.preheader ], [ %indvars.iv.next2619, %for.inc1135 ]
  %217 = add nsw i64 %indvars.iv2618, %43
  %218 = add nsw i64 %indvars.iv2618, %44
  %arrayidx1115 = getelementptr inbounds i16** %216, i64 %218
  %219 = load i16** %arrayidx1115, align 8, !tbaa !0
  br label %for.body1096

for.body1096:                                     ; preds = %for.body1096, %for.cond1093.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1093.preheader ], [ %indvars.iv.next, %for.body1096 ]
  %arrayidx1103 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 41, i64 %idxprom1099, i64 %indvars.iv2618, i64 %indvars.iv
  %220 = load i16* %arrayidx1103, align 2, !tbaa !4
  %221 = add nsw i64 %indvars.iv, %41
  %arrayidx1110 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %221, i64 %217
  store i16 %220, i16* %arrayidx1110, align 2, !tbaa !4
  %222 = add nsw i64 %indvars.iv, %42
  %arrayidx1116 = getelementptr inbounds i16* %219, i64 %222
  %223 = load i16* %arrayidx1116, align 2, !tbaa !4
  %conv1117 = zext i16 %223 to i32
  %224 = load i16* %arrayidx1103, align 2, !tbaa !4
  %conv1125 = zext i16 %224 to i32
  %sub1126 = sub nsw i32 %conv1117, %conv1125
  %arrayidx1131 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv, i64 %indvars.iv2618
  store i32 %sub1126, i32* %arrayidx1131, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc1135, label %for.body1096

for.inc1135:                                      ; preds = %for.body1096
  %indvars.iv.next2619 = add i64 %indvars.iv2618, 1
  %lftr.wideiv2622 = trunc i64 %indvars.iv.next2619 to i32
  %exitcond2623 = icmp eq i32 %lftr.wideiv2622, 4
  br i1 %exitcond2623, label %for.end1137, label %for.cond1093.preheader

for.end1137:                                      ; preds = %for.inc1135
  %call1138 = call i32 @dct_luma(i32 %add, i32 %add6, i32* %dummy, i32 1) #8
  br label %if.end1851

for.cond1144.preheader:                           ; preds = %for.inc1233, %for.cond1140.preheader
  %indvars.iv2674 = phi i64 [ 0, %for.cond1140.preheader ], [ %indvars.iv.next2675, %for.inc1233 ]
  %225 = add nsw i64 %indvars.iv2674, %44
  %arrayidx1153 = getelementptr inbounds i16** %213, i64 %225
  %226 = load i16** %arrayidx1153, align 8, !tbaa !0
  %227 = add nsw i64 %indvars.iv2674, %43
  %arrayidx1172 = getelementptr inbounds i16** %214, i64 %225
  %228 = load i16** %arrayidx1172, align 8, !tbaa !0
  %arrayidx1189 = getelementptr inbounds i16** %215, i64 %225
  %229 = load i16** %arrayidx1189, align 8, !tbaa !0
  br label %for.body1147

for.body1147:                                     ; preds = %for.body1147, %for.cond1144.preheader
  %indvars.iv2668 = phi i64 [ 0, %for.cond1144.preheader ], [ %indvars.iv.next2669, %for.body1147 ]
  %230 = add nsw i64 %indvars.iv2668, %42
  %arrayidx1154 = getelementptr inbounds i16* %226, i64 %230
  %231 = load i16* %arrayidx1154, align 2, !tbaa !4
  %conv1155 = zext i16 %231 to i32
  %232 = add nsw i64 %indvars.iv2668, %41
  %arrayidx1165 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 0, i64 %idxprom281, i64 %232, i64 %227
  %233 = load i16* %arrayidx1165, align 2, !tbaa !4
  %conv1166 = zext i16 %233 to i32
  %sub1167 = sub nsw i32 %conv1155, %conv1166
  %arrayidx1173 = getelementptr inbounds i16* %228, i64 %230
  %234 = load i16* %arrayidx1173, align 2, !tbaa !4
  %conv1174 = zext i16 %234 to i32
  %arrayidx1181 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 41, i64 %idxprom1177, i64 %indvars.iv2674, i64 %indvars.iv2668
  %235 = load i16* %arrayidx1181, align 2, !tbaa !4
  %conv1182 = zext i16 %235 to i32
  %sub1183 = sub nsw i32 %conv1174, %conv1182
  %arrayidx1190 = getelementptr inbounds i16* %229, i64 %230
  %236 = load i16* %arrayidx1190, align 2, !tbaa !4
  %conv1191 = zext i16 %236 to i32
  %arrayidx1201 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 44, i64 1, i64 %idxprom281, i64 %232, i64 %227
  %237 = load i16* %arrayidx1201, align 2, !tbaa !4
  %conv1202 = zext i16 %237 to i32
  %sub1203 = sub nsw i32 %conv1191, %conv1202
  %sub1204 = sub i32 %sub1203, %sub1167
  %arrayidx1208 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2668, i64 %indvars.iv2674
  store i32 %sub1204, i32* %arrayidx1208, align 4, !tbaa !3
  %shr1213 = ashr i32 %sub1204, 1
  %add1214 = add nsw i32 %shr1213, %sub1167
  %sub1215 = sub i32 %sub1183, %add1214
  %arrayidx1219 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2668, i64 %indvars.iv2674
  store i32 %sub1215, i32* %arrayidx1219, align 4, !tbaa !3
  %shr1224 = ashr i32 %sub1215, 1
  %add1225 = add nsw i32 %shr1224, %add1214
  %arrayidx1229 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2668, i64 %indvars.iv2674
  store i32 %add1225, i32* %arrayidx1229, align 4, !tbaa !3
  %indvars.iv.next2669 = add i64 %indvars.iv2668, 1
  %lftr.wideiv2672 = trunc i64 %indvars.iv.next2669 to i32
  %exitcond2673 = icmp eq i32 %lftr.wideiv2672, 4
  br i1 %exitcond2673, label %for.inc1233, label %for.body1147

for.inc1233:                                      ; preds = %for.body1147
  %indvars.iv.next2675 = add i64 %indvars.iv2674, 1
  %lftr.wideiv2678 = trunc i64 %indvars.iv.next2675 to i32
  %exitcond2679 = icmp eq i32 %lftr.wideiv2678, 4
  br i1 %exitcond2679, label %for.cond1240.preheader, label %for.cond1144.preheader

for.cond1240.preheader:                           ; preds = %for.inc1233, %for.inc1256
  %indvars.iv2664 = phi i64 [ %indvars.iv.next2665, %for.inc1256 ], [ 0, %for.inc1233 ]
  br label %for.body1243

for.body1243:                                     ; preds = %for.body1243, %for.cond1240.preheader
  %indvars.iv2660 = phi i64 [ 0, %for.cond1240.preheader ], [ %indvars.iv.next2661, %for.body1243 ]
  %arrayidx1247 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv2660, i64 %indvars.iv2664
  %238 = load i32* %arrayidx1247, align 4, !tbaa !3
  %arrayidx1252 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 46, i64 %indvars.iv2660, i64 %indvars.iv2664
  store i32 %238, i32* %arrayidx1252, align 4, !tbaa !3
  %indvars.iv.next2661 = add i64 %indvars.iv2660, 1
  %lftr.wideiv2662 = trunc i64 %indvars.iv.next2661 to i32
  %exitcond2663 = icmp eq i32 %lftr.wideiv2662, 4
  br i1 %exitcond2663, label %for.inc1256, label %for.body1243

for.inc1256:                                      ; preds = %for.body1243
  %indvars.iv.next2665 = add i64 %indvars.iv2664, 1
  %lftr.wideiv2666 = trunc i64 %indvars.iv.next2665 to i32
  %exitcond2667 = icmp eq i32 %lftr.wideiv2666, 4
  br i1 %exitcond2667, label %for.end1258, label %for.cond1240.preheader

for.end1258:                                      ; preds = %for.inc1256
  %call1259 = call i32 @dct_luma(i32 %add, i32 %add6, i32* %dummy, i32 1) #8
  %239 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond1264.preheader

for.cond1264.preheader:                           ; preds = %for.inc1289, %for.end1258
  %indvars.iv2656 = phi i64 [ 0, %for.end1258 ], [ %indvars.iv.next2657, %for.inc1289 ]
  br label %for.body1267

for.body1267:                                     ; preds = %for.body1267, %for.cond1264.preheader
  %indvars.iv2652 = phi i64 [ 0, %for.cond1264.preheader ], [ %indvars.iv.next2653, %for.body1267 ]
  %arrayidx1272 = getelementptr inbounds %struct.ImageParameters* %239, i64 0, i32 46, i64 %indvars.iv2652, i64 %indvars.iv2656
  %240 = load i32* %arrayidx1272, align 4, !tbaa !3
  %arrayidx1276 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2652, i64 %indvars.iv2656
  store i32 %240, i32* %arrayidx1276, align 4, !tbaa !3
  %arrayidx1280 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv2652, i64 %indvars.iv2656
  %241 = load i32* %arrayidx1280, align 4, !tbaa !3
  store i32 %241, i32* %arrayidx1272, align 4, !tbaa !3
  %indvars.iv.next2653 = add i64 %indvars.iv2652, 1
  %lftr.wideiv2654 = trunc i64 %indvars.iv.next2653 to i32
  %exitcond2655 = icmp eq i32 %lftr.wideiv2654, 4
  br i1 %exitcond2655, label %for.inc1289, label %for.body1267

for.inc1289:                                      ; preds = %for.body1267
  %indvars.iv.next2657 = add i64 %indvars.iv2656, 1
  %lftr.wideiv2658 = trunc i64 %indvars.iv.next2657 to i32
  %exitcond2659 = icmp eq i32 %lftr.wideiv2658, 4
  br i1 %exitcond2659, label %for.end1291, label %for.cond1264.preheader

for.end1291:                                      ; preds = %for.inc1289
  %call1293 = call i32 @dct_chroma4x4(i32 0, i32 %add412, i32 %b4) #8
  %arrayidx1305 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 0, i64 %idxprom944, i64 %idxprom939
  store i32 %call1293, i32* %arrayidx1305, align 4, !tbaa !3
  %arrayidx1317 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 0, i64 %idxprom944, i64 %idxprom939
  %242 = load i32* %arrayidx1317, align 4, !tbaa !3
  %arrayidx1329 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 0, i64 %idxprom944, i64 %idxprom939
  store i32 %242, i32* %arrayidx1329, align 4, !tbaa !3
  %243 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond1334.preheader

for.cond1334.preheader:                           ; preds = %for.inc1359, %for.end1291
  %indvars.iv2648 = phi i64 [ 0, %for.end1291 ], [ %indvars.iv.next2649, %for.inc1359 ]
  br label %for.body1337

for.body1337:                                     ; preds = %for.body1337, %for.cond1334.preheader
  %indvars.iv2644 = phi i64 [ 0, %for.cond1334.preheader ], [ %indvars.iv.next2645, %for.body1337 ]
  %arrayidx1342 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 46, i64 %indvars.iv2644, i64 %indvars.iv2648
  %244 = load i32* %arrayidx1342, align 4, !tbaa !3
  %arrayidx1346 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2644, i64 %indvars.iv2648
  store i32 %244, i32* %arrayidx1346, align 4, !tbaa !3
  %arrayidx1350 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv2644, i64 %indvars.iv2648
  %245 = load i32* %arrayidx1350, align 4, !tbaa !3
  store i32 %245, i32* %arrayidx1342, align 4, !tbaa !3
  %indvars.iv.next2645 = add i64 %indvars.iv2644, 1
  %lftr.wideiv2646 = trunc i64 %indvars.iv.next2645 to i32
  %exitcond2647 = icmp eq i32 %lftr.wideiv2646, 4
  br i1 %exitcond2647, label %for.inc1359, label %for.body1337

for.inc1359:                                      ; preds = %for.body1337
  %indvars.iv.next2649 = add i64 %indvars.iv2648, 1
  %lftr.wideiv2650 = trunc i64 %indvars.iv.next2649 to i32
  %exitcond2651 = icmp eq i32 %lftr.wideiv2650, 4
  br i1 %exitcond2651, label %for.end1361, label %for.cond1334.preheader

for.end1361:                                      ; preds = %for.inc1359
  %call1363 = call i32 @dct_chroma4x4(i32 1, i32 %add447, i32 %b4) #8
  %arrayidx1375 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 1, i64 %idxprom944, i64 %idxprom939
  store i32 %call1363, i32* %arrayidx1375, align 4, !tbaa !3
  %arrayidx1387 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level_temp, i64 0, i64 1, i64 %idxprom944, i64 %idxprom939
  %246 = load i32* %arrayidx1387, align 4, !tbaa !3
  %arrayidx1399 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @dc_level, i64 0, i64 1, i64 %idxprom944, i64 %idxprom939
  store i32 %246, i32* %arrayidx1399, align 4, !tbaa !3
  %247 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond1404.preheader

for.cond1404.preheader:                           ; preds = %for.inc1420, %for.end1361
  %indvars.iv2640 = phi i64 [ 0, %for.end1361 ], [ %indvars.iv.next2641, %for.inc1420 ]
  br label %for.body1407

for.cond1423.preheader:                           ; preds = %for.inc1420
  %max_imgpel_value_uv1457 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 156
  %248 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV1530 = getelementptr inbounds %struct.storable_picture* %248, i64 0, i32 30
  %249 = load i16**** %imgUV1530, align 8, !tbaa !0
  %250 = load i16*** %249, align 8, !tbaa !0
  %max_imgpel_value1534 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 155
  %imgY1595 = getelementptr inbounds %struct.storable_picture* %248, i64 0, i32 25
  %251 = load i16*** %imgY1595, align 8, !tbaa !0
  %arrayidx1672 = getelementptr inbounds i16*** %249, i64 1
  %252 = load i16*** %arrayidx1672, align 8, !tbaa !0
  %.pre.pre = load i32* %max_imgpel_value_uv1457, align 4, !tbaa !3
  %.pre2892.pre = load i32* %max_imgpel_value1534, align 4, !tbaa !3
  br label %for.cond1427.preheader

for.body1407:                                     ; preds = %for.body1407, %for.cond1404.preheader
  %indvars.iv2636 = phi i64 [ 0, %for.cond1404.preheader ], [ %indvars.iv.next2637, %for.body1407 ]
  %arrayidx1412 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 46, i64 %indvars.iv2636, i64 %indvars.iv2640
  %253 = load i32* %arrayidx1412, align 4, !tbaa !3
  %arrayidx1416 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2636, i64 %indvars.iv2640
  store i32 %253, i32* %arrayidx1416, align 4, !tbaa !3
  %indvars.iv.next2637 = add i64 %indvars.iv2636, 1
  %lftr.wideiv2638 = trunc i64 %indvars.iv.next2637 to i32
  %exitcond2639 = icmp eq i32 %lftr.wideiv2638, 4
  br i1 %exitcond2639, label %for.inc1420, label %for.body1407

for.inc1420:                                      ; preds = %for.body1407
  %indvars.iv.next2641 = add i64 %indvars.iv2640, 1
  %lftr.wideiv2642 = trunc i64 %indvars.iv.next2641 to i32
  %exitcond2643 = icmp eq i32 %lftr.wideiv2642, 4
  br i1 %exitcond2643, label %for.cond1423.preheader, label %for.cond1404.preheader

for.cond1427.preheader:                           ; preds = %for.inc1678, %for.cond1423.preheader
  %indvars.iv2630 = phi i64 [ 0, %for.cond1423.preheader ], [ %indvars.iv.next2631, %for.inc1678 ]
  %254 = add nsw i64 %indvars.iv2630, %43
  %255 = add nsw i64 %indvars.iv2630, %46
  %arrayidx1532 = getelementptr inbounds i16** %250, i64 %255
  %256 = load i16** %arrayidx1532, align 8, !tbaa !0
  %arrayidx1596 = getelementptr inbounds i16** %251, i64 %255
  %257 = load i16** %arrayidx1596, align 8, !tbaa !0
  %arrayidx1673 = getelementptr inbounds i16** %252, i64 %255
  %258 = load i16** %arrayidx1673, align 8, !tbaa !0
  br label %for.body1430

for.body1430:                                     ; preds = %for.body1430, %for.cond1427.preheader
  %indvars.iv2624 = phi i64 [ 0, %for.cond1427.preheader ], [ %indvars.iv.next2625, %for.body1430 ]
  %arrayidx1434 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv2624, i64 %indvars.iv2630
  %259 = load i32* %arrayidx1434, align 4, !tbaa !3
  %arrayidx1438 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv2624, i64 %indvars.iv2630
  %260 = load i32* %arrayidx1438, align 4, !tbaa !3
  %shr1439 = ashr i32 %260, 1
  %sub1440 = sub nsw i32 %259, %shr1439
  %add1445 = add nsw i32 %sub1440, %260
  %arrayidx1449 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv2624, i64 %indvars.iv2630
  %261 = load i32* %arrayidx1449, align 4, !tbaa !3
  %shr1450 = ashr i32 %261, 1
  %sub1451 = sub nsw i32 %sub1440, %shr1450
  %add1456 = add nsw i32 %sub1451, %261
  %262 = add nsw i64 %indvars.iv2624, %41
  %arrayidx1467 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 44, i64 0, i64 %idxprom281, i64 %262, i64 %254
  %263 = load i16* %arrayidx1467, align 2, !tbaa !4
  %conv1468 = zext i16 %263 to i32
  %add1469 = add nsw i32 %conv1468, %sub1451
  %cmp1470 = icmp slt i32 %add1469, 0
  %.add1469 = select i1 %cmp1470, i32 0, i32 %add1469
  %cmp1488 = icmp slt i32 %.pre.pre, %.add1469
  %..add1469 = select i1 %cmp1488, i32 %.pre.pre, i32 %.add1469
  %conv1525 = trunc i32 %..add1469 to i16
  %264 = add nsw i64 %indvars.iv2624, %45
  %arrayidx1533 = getelementptr inbounds i16* %256, i64 %264
  store i16 %conv1525, i16* %arrayidx1533, align 2, !tbaa !4
  %arrayidx1541 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 41, i64 %idxprom1177, i64 %indvars.iv2630, i64 %indvars.iv2624
  %265 = load i16* %arrayidx1541, align 2, !tbaa !4
  %conv1542 = zext i16 %265 to i32
  %add1543 = add nsw i32 %add1445, %conv1542
  %cmp1544 = icmp slt i32 %add1543, 0
  %.add1543 = select i1 %cmp1544, i32 0, i32 %add1543
  %cmp1559 = icmp slt i32 %.pre2892.pre, %.add1543
  %cond1589 = select i1 %cmp1559, i32 %.pre2892.pre, i32 %.add1543
  %conv1590 = trunc i32 %cond1589 to i16
  %arrayidx1597 = getelementptr inbounds i16* %257, i64 %264
  store i16 %conv1590, i16* %arrayidx1597, align 2, !tbaa !4
  %arrayidx1608 = getelementptr inbounds %struct.ImageParameters* %247, i64 0, i32 44, i64 1, i64 %idxprom281, i64 %262, i64 %254
  %266 = load i16* %arrayidx1608, align 2, !tbaa !4
  %conv1609 = zext i16 %266 to i32
  %add1610 = add nsw i32 %add1456, %conv1609
  %cmp1611 = icmp slt i32 %add1610, 0
  %.add1610 = select i1 %cmp1611, i32 0, i32 %add1610
  %cmp1629 = icmp slt i32 %.pre.pre, %.add1610
  %..add1610 = select i1 %cmp1629, i32 %.pre.pre, i32 %.add1610
  %conv1666 = trunc i32 %..add1610 to i16
  %arrayidx1674 = getelementptr inbounds i16* %258, i64 %264
  store i16 %conv1666, i16* %arrayidx1674, align 2, !tbaa !4
  %indvars.iv.next2625 = add i64 %indvars.iv2624, 1
  %lftr.wideiv2628 = trunc i64 %indvars.iv.next2625 to i32
  %exitcond2629 = icmp eq i32 %lftr.wideiv2628, 4
  br i1 %exitcond2629, label %for.inc1678, label %for.body1430

for.inc1678:                                      ; preds = %for.body1430
  %indvars.iv.next2631 = add i64 %indvars.iv2630, 1
  %lftr.wideiv2634 = trunc i64 %indvars.iv.next2631 to i32
  %exitcond2635 = icmp eq i32 %lftr.wideiv2634, 4
  br i1 %exitcond2635, label %if.end1851, label %for.cond1427.preheader

for.cond1687.preheader:                           ; preds = %for.inc1707, %for.cond1683.preheader
  %indvars.iv2726 = phi i64 [ 0, %for.cond1683.preheader ], [ %indvars.iv.next2727, %for.inc1707 ]
  %arrayidx1693 = getelementptr inbounds i32** %207, i64 %indvars.iv2726
  %267 = load i32** %arrayidx1693, align 8, !tbaa !0
  %arrayidx1702 = getelementptr inbounds i32** %210, i64 %indvars.iv2726
  %268 = load i32** %arrayidx1702, align 8, !tbaa !0
  br label %for.body1690

for.body1690:                                     ; preds = %for.body1690, %for.cond1687.preheader
  %indvars.iv2722 = phi i64 [ 0, %for.cond1687.preheader ], [ %indvars.iv.next2723, %for.body1690 ]
  %arrayidx1694 = getelementptr inbounds i32* %267, i64 %indvars.iv2722
  %269 = load i32* %arrayidx1694, align 4, !tbaa !3
  %arrayidx1703 = getelementptr inbounds i32* %268, i64 %indvars.iv2722
  store i32 %269, i32* %arrayidx1703, align 4, !tbaa !3
  %indvars.iv.next2723 = add i64 %indvars.iv2722, 1
  %lftr.wideiv2724 = trunc i64 %indvars.iv.next2723 to i32
  %exitcond2725 = icmp eq i32 %lftr.wideiv2724, 18
  br i1 %exitcond2725, label %for.inc1707, label %for.body1690

for.inc1707:                                      ; preds = %for.body1690
  %indvars.iv.next2727 = add i64 %indvars.iv2726, 1
  %lftr.wideiv2728 = trunc i64 %indvars.iv.next2727 to i32
  %exitcond2729 = icmp eq i32 %lftr.wideiv2728, 2
  br i1 %exitcond2729, label %for.end1709, label %for.cond1687.preheader

for.end1709:                                      ; preds = %for.inc1707
  %residue_transform_flag1710 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 164
  %270 = load i32* %residue_transform_flag1710, align 4, !tbaa !3
  %tobool1711 = icmp eq i32 %270, 0
  br i1 %tobool1711, label %for.cond1770.preheader, label %for.cond1713.preheader

for.cond1713.preheader:                           ; preds = %for.end1709
  %arrayidx1731 = getelementptr inbounds i32**** %208, i64 %idxprom887
  %271 = load i32**** %arrayidx1731, align 8, !tbaa !0
  %arrayidx1732 = getelementptr inbounds i32*** %271, i64 %idxprom858
  %272 = load i32*** %arrayidx1732, align 8, !tbaa !0
  br label %for.cond1717.preheader

for.cond1717.preheader:                           ; preds = %for.inc1738, %for.cond1713.preheader
  %indvars.iv2718 = phi i64 [ 0, %for.cond1713.preheader ], [ %indvars.iv.next2719, %for.inc1738 ]
  %arrayidx1733 = getelementptr inbounds i32** %272, i64 %indvars.iv2718
  %273 = load i32** %arrayidx1733, align 8, !tbaa !0
  br label %for.body1720

for.cond1741.preheader:                           ; preds = %for.inc1738
  %arrayidx1759 = getelementptr inbounds i32**** %208, i64 %idxprom915
  %274 = load i32**** %arrayidx1759, align 8, !tbaa !0
  %arrayidx1760 = getelementptr inbounds i32*** %274, i64 %idxprom858
  %275 = load i32*** %arrayidx1760, align 8, !tbaa !0
  br label %for.cond1745.preheader

for.body1720:                                     ; preds = %for.body1720, %for.cond1717.preheader
  %indvars.iv2714 = phi i64 [ 0, %for.cond1717.preheader ], [ %indvars.iv.next2715, %for.body1720 ]
  %arrayidx1724 = getelementptr inbounds [2 x [2 x [18 x i32]]]* @cofAC4x4_chroma, i64 0, i64 0, i64 %indvars.iv2718, i64 %indvars.iv2714
  %276 = load i32* %arrayidx1724, align 4, !tbaa !3
  %arrayidx1734 = getelementptr inbounds i32* %273, i64 %indvars.iv2714
  store i32 %276, i32* %arrayidx1734, align 4, !tbaa !3
  %indvars.iv.next2715 = add i64 %indvars.iv2714, 1
  %lftr.wideiv2716 = trunc i64 %indvars.iv.next2715 to i32
  %exitcond2717 = icmp eq i32 %lftr.wideiv2716, 18
  br i1 %exitcond2717, label %for.inc1738, label %for.body1720

for.inc1738:                                      ; preds = %for.body1720
  %indvars.iv.next2719 = add i64 %indvars.iv2718, 1
  %lftr.wideiv2720 = trunc i64 %indvars.iv.next2719 to i32
  %exitcond2721 = icmp eq i32 %lftr.wideiv2720, 2
  br i1 %exitcond2721, label %for.cond1741.preheader, label %for.cond1717.preheader

for.cond1745.preheader:                           ; preds = %for.inc1766, %for.cond1741.preheader
  %indvars.iv2710 = phi i64 [ 0, %for.cond1741.preheader ], [ %indvars.iv.next2711, %for.inc1766 ]
  %arrayidx1761 = getelementptr inbounds i32** %275, i64 %indvars.iv2710
  %277 = load i32** %arrayidx1761, align 8, !tbaa !0
  br label %for.body1748

for.cond1770.preheader:                           ; preds = %for.inc1766, %for.end1709
  %278 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY1787 = getelementptr inbounds %struct.storable_picture* %278, i64 0, i32 25
  %279 = load i16*** %imgY1787, align 8, !tbaa !0
  %idxprom1792 = sext i32 %best_ipmode.2 to i64
  br label %for.cond1774.preheader

for.body1748:                                     ; preds = %for.body1748, %for.cond1745.preheader
  %indvars.iv2706 = phi i64 [ 0, %for.cond1745.preheader ], [ %indvars.iv.next2707, %for.body1748 ]
  %arrayidx1752 = getelementptr inbounds [2 x [2 x [18 x i32]]]* @cofAC4x4_chroma, i64 0, i64 1, i64 %indvars.iv2710, i64 %indvars.iv2706
  %280 = load i32* %arrayidx1752, align 4, !tbaa !3
  %arrayidx1762 = getelementptr inbounds i32* %277, i64 %indvars.iv2706
  store i32 %280, i32* %arrayidx1762, align 4, !tbaa !3
  %indvars.iv.next2707 = add i64 %indvars.iv2706, 1
  %lftr.wideiv2708 = trunc i64 %indvars.iv.next2707 to i32
  %exitcond2709 = icmp eq i32 %lftr.wideiv2708, 18
  br i1 %exitcond2709, label %for.inc1766, label %for.body1748

for.inc1766:                                      ; preds = %for.body1748
  %indvars.iv.next2711 = add i64 %indvars.iv2710, 1
  %lftr.wideiv2712 = trunc i64 %indvars.iv.next2711 to i32
  %exitcond2713 = icmp eq i32 %lftr.wideiv2712, 2
  br i1 %exitcond2713, label %for.cond1770.preheader, label %for.cond1745.preheader

for.cond1774.preheader:                           ; preds = %for.inc1807, %for.cond1770.preheader
  %indvars.iv2700 = phi i64 [ 0, %for.cond1770.preheader ], [ %indvars.iv.next2701, %for.inc1807 ]
  %281 = add nsw i64 %indvars.iv2700, %46
  %arrayidx1788 = getelementptr inbounds i16** %279, i64 %281
  %282 = load i16** %arrayidx1788, align 8, !tbaa !0
  %283 = add nsw i64 %indvars.iv2700, %43
  br label %for.body1777

for.body1777:                                     ; preds = %for.body1777, %for.cond1774.preheader
  %indvars.iv2694 = phi i64 [ 0, %for.cond1774.preheader ], [ %indvars.iv.next2695, %for.body1777 ]
  %arrayidx1781 = getelementptr inbounds [4 x [4 x i32]]* %rec4x4, i64 0, i64 %indvars.iv2700, i64 %indvars.iv2694
  %284 = load i32* %arrayidx1781, align 4, !tbaa !3
  %conv1782 = trunc i32 %284 to i16
  %285 = add nsw i64 %indvars.iv2694, %45
  %arrayidx1789 = getelementptr inbounds i16* %282, i64 %285
  store i16 %conv1782, i16* %arrayidx1789, align 2, !tbaa !4
  %arrayidx1796 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 41, i64 %idxprom1792, i64 %indvars.iv2700, i64 %indvars.iv2694
  %286 = load i16* %arrayidx1796, align 2, !tbaa !4
  %287 = add nsw i64 %indvars.iv2694, %41
  %arrayidx1803 = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 45, i64 %287, i64 %283
  store i16 %286, i16* %arrayidx1803, align 2, !tbaa !4
  %indvars.iv.next2695 = add i64 %indvars.iv2694, 1
  %lftr.wideiv2698 = trunc i64 %indvars.iv.next2695 to i32
  %exitcond2699 = icmp eq i32 %lftr.wideiv2698, 4
  br i1 %exitcond2699, label %for.inc1807, label %for.body1777

for.inc1807:                                      ; preds = %for.body1777
  %indvars.iv.next2701 = add i64 %indvars.iv2700, 1
  %lftr.wideiv2704 = trunc i64 %indvars.iv.next2701 to i32
  %exitcond2705 = icmp eq i32 %lftr.wideiv2704, 4
  br i1 %exitcond2705, label %for.end1809, label %for.cond1774.preheader

for.end1809:                                      ; preds = %for.inc1807
  %288 = load i32* %residue_transform_flag1710, align 4, !tbaa !3
  %tobool1811 = icmp eq i32 %288, 0
  br i1 %tobool1811, label %if.end1851, label %for.cond1813.preheader

for.cond1813.preheader:                           ; preds = %for.end1809
  %imgUV1837 = getelementptr inbounds %struct.storable_picture* %278, i64 0, i32 30
  %289 = load i16**** %imgUV1837, align 8, !tbaa !0
  br label %for.cond1817.preheader

for.cond1817.preheader:                           ; preds = %for.inc1847, %for.cond1813.preheader
  %indvars.iv2690 = phi i64 [ 0, %for.cond1813.preheader ], [ %indvars.iv.next2691, %for.inc1847 ]
  %arrayidx1838 = getelementptr inbounds i16*** %289, i64 %indvars.iv2690
  %290 = load i16*** %arrayidx1838, align 8, !tbaa !0
  br label %for.cond1821.preheader

for.cond1821.preheader:                           ; preds = %for.inc1844, %for.cond1817.preheader
  %indvars.iv2685 = phi i64 [ 0, %for.cond1817.preheader ], [ %indvars.iv.next2686, %for.inc1844 ]
  %291 = add nsw i64 %indvars.iv2685, %46
  %arrayidx1839 = getelementptr inbounds i16** %290, i64 %291
  %292 = load i16** %arrayidx1839, align 8, !tbaa !0
  br label %for.body1824

for.body1824:                                     ; preds = %for.body1824, %for.cond1821.preheader
  %indvars.iv2680 = phi i64 [ 0, %for.cond1821.preheader ], [ %indvars.iv.next2681, %for.body1824 ]
  %arrayidx1830 = getelementptr inbounds [2 x [4 x [4 x i32]]]* %rec4x4_c, i64 0, i64 %indvars.iv2690, i64 %indvars.iv2685, i64 %indvars.iv2680
  %293 = load i32* %arrayidx1830, align 4, !tbaa !3
  %conv1831 = trunc i32 %293 to i16
  %294 = add nsw i64 %indvars.iv2680, %45
  %arrayidx1840 = getelementptr inbounds i16* %292, i64 %294
  store i16 %conv1831, i16* %arrayidx1840, align 2, !tbaa !4
  %indvars.iv.next2681 = add i64 %indvars.iv2680, 1
  %lftr.wideiv2683 = trunc i64 %indvars.iv.next2681 to i32
  %exitcond2684 = icmp eq i32 %lftr.wideiv2683, 4
  br i1 %exitcond2684, label %for.inc1844, label %for.body1824

for.inc1844:                                      ; preds = %for.body1824
  %indvars.iv.next2686 = add i64 %indvars.iv2685, 1
  %lftr.wideiv2688 = trunc i64 %indvars.iv.next2686 to i32
  %exitcond2689 = icmp eq i32 %lftr.wideiv2688, 4
  br i1 %exitcond2689, label %for.inc1847, label %for.cond1821.preheader

for.inc1847:                                      ; preds = %for.inc1844
  %indvars.iv.next2691 = add i64 %indvars.iv2690, 1
  %lftr.wideiv2692 = trunc i64 %indvars.iv.next2691 to i32
  %exitcond2693 = icmp eq i32 %lftr.wideiv2692, 2
  br i1 %exitcond2693, label %if.end1851, label %for.cond1817.preheader

if.end1851:                                       ; preds = %for.inc1847, %for.inc1678, %for.end1809, %for.end1137
  %nonzero.3 = phi i32 [ %nonzero.2, %for.end1809 ], [ %call1138, %for.end1137 ], [ %call1259, %for.inc1678 ], [ %nonzero.2, %for.inc1847 ]
  call void @llvm.lifetime.end(i64 128, i8* %10) #3
  call void @llvm.lifetime.end(i64 64, i8* %1) #3
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret i32 %nonzero.3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: optsize
declare void @intrapred_luma(i32, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #4

; Function Attrs: optsize
declare i32 @SATD(i32*, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Mode_Decision_for_8x8IntraBlocks(i32 %b8, double %lambda, i32* nocapture %cost) #0 {
entry:
  %cost4x4 = alloca i32, align 4
  %mul = fmul double %lambda, 6.000000e+00
  %add = fadd double %mul, 4.999000e-01
  %call = call double @floor(double %add) #9
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %cost, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %b4.09 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %nonzero.08 = phi i32 [ 0, %entry ], [ %nonzero.0., %for.body ]
  %call2 = call i32 @Mode_Decision_for_4x4IntraBlocks(i32 %b8, i32 %b4.09, double %lambda, i32* %cost4x4) #10
  %tobool = icmp eq i32 %call2, 0
  %nonzero.0. = select i1 %tobool, i32 %nonzero.08, i32 1
  %0 = load i32* %cost4x4, align 4, !tbaa !3
  %1 = load i32* %cost, align 4, !tbaa !3
  %add3 = add nsw i32 %1, %0
  store i32 %add3, i32* %cost, align 4, !tbaa !3
  %inc = add nsw i32 %b4.09, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret i32 %nonzero.0.
}

; Function Attrs: nounwind optsize uwtable
define i32 @Mode_Decision_for_Intra4x4Macroblock(double %lambda, i32* nocapture %cost) #0 {
entry:
  %cost8x8 = alloca i32, align 4
  store i32 0, i32* %cost, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %b8.07 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cbp.06 = phi i32 [ 0, %entry ], [ %cbp.1, %if.end ]
  %call = call i32 @Mode_Decision_for_8x8IntraBlocks(i32 %b8.07, double %lambda, i32* %cost8x8) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %shl = shl i32 1, %b8.07
  %or = or i32 %shl, %cbp.06
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %cbp.1 = phi i32 [ %or, %if.then ], [ %cbp.06, %for.body ]
  %0 = load i32* %cost8x8, align 4, !tbaa !3
  %1 = load i32* %cost, align 4, !tbaa !3
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %cost, align 4, !tbaa !3
  %inc = add nsw i32 %b8.07, 1
  %exitcond = icmp eq i32 %inc, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret i32 %cbp.1
}

; Function Attrs: nounwind optsize uwtable
define double @RDCost_for_8x8blocks(i32* nocapture %cnt_nonz, i64* %cbp_blk, double %lambda, i32 %block, i32 %mode, i16 signext %pdir, i16 signext %ref, i16 signext %bwd_ref) #0 {
entry:
  %dummy = alloca i32, align 4
  %mrate = alloca i32, align 4
  %cbp = alloca i32, align 4
  store i32 0, i32* %cbp, align 4, !tbaa !3
  %rem = srem i32 %block, 2
  %mul = shl nsw i32 %rem, 3
  %div = sdiv i32 %block, 2
  %mul1 = shl nsw i32 %div, 3
  %div2 = sdiv i32 %mul, 4
  %div3 = sdiv i32 %mul1, 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %cmp4 = icmp eq i32 %mode, 0
  %cmp4. = and i1 %cmp, %cmp4
  %conv6 = sext i16 %pdir to i32
  %call = call i32 @B8Mode2Value(i32 %mode, i32 %conv6) #8
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 3
  %3 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 51
  %4 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom
  %currSEnr = getelementptr inbounds %struct.macroblock* %arrayidx, i64 0, i32 0
  %5 = load i32* %currSEnr, align 4, !tbaa !3
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 52, i64 %idxprom7
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 50
  %6 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 61
  %8 = load i32* %partition_mode, align 4, !tbaa !3
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom9
  %9 = load i32** %arrayidx10, align 8, !tbaa !0
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 34
  store i32 0, i32* %bi_pred_me, align 4, !tbaa !3
  br i1 %cmp4., label %if.then, label %if.else62

if.then:                                          ; preds = %entry
  %block_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 32
  %10 = load i32* %block_y, align 4, !tbaa !3
  %add = add nsw i32 %10, %div3
  %idxprom12 = sext i32 %add to i64
  %block_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 31
  %11 = load i32* %block_x, align 4, !tbaa !3
  %add13 = add nsw i32 %11, %div2
  %idxprom14 = sext i32 %add13 to i64
  %12 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i16** %12, i64 %idxprom14
  %13 = load i16** %arrayidx15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i16* %13, i64 %idxprom12
  %14 = load i16* %arrayidx16, align 2, !tbaa !4
  %cmp18 = icmp slt i16 %14, 0
  br i1 %cmp18, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %15 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %16 = load i16*** %15, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i16** %16, i64 %idxprom14
  %17 = load i16** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16* %17, i64 %idxprom12
  %18 = load i16* %arrayidx37, align 2, !tbaa !4
  %cmp39 = icmp slt i16 %18, 0
  %. = select i1 %cmp39, i16 0, i16 %18
  %arrayidx58 = getelementptr inbounds i16*** %15, i64 1
  %19 = load i16*** %arrayidx58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i16** %19, i64 %idxprom14
  %20 = load i16** %arrayidx59, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i16* %20, i64 %idxprom12
  %21 = load i16* %arrayidx60, align 2, !tbaa !4
  %call61 = call i32 @LumaResidualCoding8x8(i32* %cbp, i64* %cbp_blk, i32 %block, i16 signext %14, i32 0, i32 0, i16 signext %., i16 signext %21) #8
  br label %if.end85

if.else62:                                        ; preds = %entry
  switch i16 %pdir, label %cond.end71 [
    i16 0, label %cond.true69
    i16 2, label %cond.true69
  ]

cond.true69:                                      ; preds = %if.else62, %if.else62
  br label %cond.end71

cond.end71:                                       ; preds = %if.else62, %cond.true69
  %cond72 = phi i32 [ %mode, %cond.true69 ], [ 0, %if.else62 ]
  %pdir.off = add i16 %pdir, -1
  %switch = icmp ult i16 %pdir.off, 2
  %mode. = select i1 %switch, i32 %mode, i32 0
  %call84 = call i32 @LumaResidualCoding8x8(i32* %cbp, i64* %cbp_blk, i32 %block, i16 signext %pdir, i32 %cond72, i32 %mode., i16 signext %ref, i16 signext %bwd_ref) #8
  br label %if.end85

if.end85:                                         ; preds = %cond.end71, %if.else
  %storemerge = phi i32 [ %call84, %cond.end71 ], [ %call61, %if.else ]
  store i32 %storemerge, i32* %cnt_nonz, align 4, !tbaa !3
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 164
  %23 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool86 = icmp eq i32 %23, 0
  br i1 %tobool86, label %if.end373, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end85
  %add117 = add nsw i32 %block, 4
  %add156 = add nsw i32 %block, 8
  br label %for.body

for.cond187.preheader:                            ; preds = %for.inc184
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 156
  %24 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %pix_x = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 33
  %25 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 34
  %26 = load i32* %pix_y, align 4, !tbaa !3
  %27 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %27, i64 0, i32 30
  %28 = load i16**** %imgUV, align 8, !tbaa !0
  %29 = load i16*** %28, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 155
  %30 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %27, i64 0, i32 25
  %31 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx364 = getelementptr inbounds i16*** %28, i64 1
  %32 = load i16*** %arrayidx364, align 8, !tbaa !0
  %33 = shl i32 %rem, 3
  %34 = sext i32 %33 to i64
  %35 = sext i32 %25 to i64
  %36 = shl i32 %div, 3
  %37 = sext i32 %36 to i64
  %38 = sext i32 %26 to i64
  br label %for.cond192.preheader

for.body:                                         ; preds = %for.inc184, %for.cond.preheader
  %39 = phi %struct.ImageParameters* [ %22, %for.cond.preheader ], [ %50, %for.inc184 ]
  %b4.0898 = phi i32 [ 0, %for.cond.preheader ], [ %inc185, %for.inc184 ]
  %rate.0897 = phi i32 [ 0, %for.cond.preheader ], [ %add158, %for.inc184 ]
  %rem90 = srem i32 %b4.0898, 2
  %mul91 = shl nsw i32 %rem90, 2
  %add92 = add nsw i32 %mul91, %mul
  %div93 = sdiv i32 %b4.0898, 2
  %mul94 = shl nsw i32 %div93, 2
  %add95 = add nsw i32 %mul94, %mul1
  %40 = sext i32 %add92 to i64
  %41 = sext i32 %add95 to i64
  br label %for.cond100.preheader

for.cond100.preheader:                            ; preds = %for.inc114, %for.body
  %indvars.iv919 = phi i64 [ 0, %for.body ], [ %indvars.iv.next920, %for.inc114 ]
  %42 = add nsw i64 %indvars.iv919, %41
  br label %for.body103

for.body103:                                      ; preds = %for.body103, %for.cond100.preheader
  %indvars.iv916 = phi i64 [ 0, %for.cond100.preheader ], [ %indvars.iv.next917, %for.body103 ]
  %43 = add nsw i64 %indvars.iv916, %40
  %arrayidx109 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %43, i64 %42
  %44 = load i32* %arrayidx109, align 4, !tbaa !3
  %arrayidx113 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 46, i64 %indvars.iv916, i64 %indvars.iv919
  store i32 %44, i32* %arrayidx113, align 4, !tbaa !3
  %indvars.iv.next917 = add i64 %indvars.iv916, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next917 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc114, label %for.body103

for.inc114:                                       ; preds = %for.body103
  %indvars.iv.next920 = add i64 %indvars.iv919, 1
  %lftr.wideiv922 = trunc i64 %indvars.iv.next920 to i32
  %exitcond923 = icmp eq i32 %lftr.wideiv922, 4
  br i1 %exitcond923, label %for.end116, label %for.cond100.preheader

for.end116:                                       ; preds = %for.inc114
  %call118 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add117, i32 %b4.0898, i32 0) #10
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond124.preheader

for.cond124.preheader:                            ; preds = %for.inc153, %for.end116
  %indvars.iv929 = phi i64 [ 0, %for.end116 ], [ %indvars.iv.next930, %for.inc153 ]
  %46 = add nsw i64 %indvars.iv929, %41
  br label %for.body127

for.body127:                                      ; preds = %for.body127, %for.cond124.preheader
  %indvars.iv924 = phi i64 [ 0, %for.cond124.preheader ], [ %indvars.iv.next925, %for.body127 ]
  %arrayidx132 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 46, i64 %indvars.iv924, i64 %indvars.iv929
  %47 = load i32* %arrayidx132, align 4, !tbaa !3
  %48 = add nsw i64 %indvars.iv924, %40
  %arrayidx138 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %48, i64 %46
  store i32 %47, i32* %arrayidx138, align 4, !tbaa !3
  %arrayidx144 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %48, i64 %46
  %49 = load i32* %arrayidx144, align 4, !tbaa !3
  store i32 %49, i32* %arrayidx132, align 4, !tbaa !3
  %indvars.iv.next925 = add i64 %indvars.iv924, 1
  %lftr.wideiv927 = trunc i64 %indvars.iv.next925 to i32
  %exitcond928 = icmp eq i32 %lftr.wideiv927, 4
  br i1 %exitcond928, label %for.inc153, label %for.body127

for.inc153:                                       ; preds = %for.body127
  %indvars.iv.next930 = add i64 %indvars.iv929, 1
  %lftr.wideiv932 = trunc i64 %indvars.iv.next930 to i32
  %exitcond933 = icmp eq i32 %lftr.wideiv932, 4
  br i1 %exitcond933, label %for.end155, label %for.cond124.preheader

for.end155:                                       ; preds = %for.inc153
  %call157 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add156, i32 %b4.0898, i32 1) #10
  %50 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond163.preheader

for.cond163.preheader:                            ; preds = %for.inc181, %for.end155
  %indvars.iv939 = phi i64 [ 0, %for.end155 ], [ %indvars.iv.next940, %for.inc181 ]
  %51 = add nsw i64 %indvars.iv939, %41
  br label %for.body166

for.body166:                                      ; preds = %for.body166, %for.cond163.preheader
  %indvars.iv934 = phi i64 [ 0, %for.cond163.preheader ], [ %indvars.iv.next935, %for.body166 ]
  %arrayidx171 = getelementptr inbounds %struct.ImageParameters* %50, i64 0, i32 46, i64 %indvars.iv934, i64 %indvars.iv939
  %52 = load i32* %arrayidx171, align 4, !tbaa !3
  %53 = add nsw i64 %indvars.iv934, %40
  %arrayidx177 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %53, i64 %51
  store i32 %52, i32* %arrayidx177, align 4, !tbaa !3
  %indvars.iv.next935 = add i64 %indvars.iv934, 1
  %lftr.wideiv937 = trunc i64 %indvars.iv.next935 to i32
  %exitcond938 = icmp eq i32 %lftr.wideiv937, 4
  br i1 %exitcond938, label %for.inc181, label %for.body166

for.inc181:                                       ; preds = %for.body166
  %indvars.iv.next940 = add i64 %indvars.iv939, 1
  %lftr.wideiv942 = trunc i64 %indvars.iv.next940 to i32
  %exitcond943 = icmp eq i32 %lftr.wideiv942, 4
  br i1 %exitcond943, label %for.inc184, label %for.cond163.preheader

for.inc184:                                       ; preds = %for.inc181
  %add119 = add nsw i32 %call118, %rate.0897
  %add158 = add nsw i32 %add119, %call157
  %inc185 = add nsw i32 %b4.0898, 1
  %exitcond944 = icmp eq i32 %inc185, 4
  br i1 %exitcond944, label %for.cond187.preheader, label %for.body

for.cond192.preheader:                            ; preds = %for.cond187.preheader, %for.inc370
  %indvars.iv911 = phi i64 [ %37, %for.cond187.preheader ], [ %indvars.iv.next912, %for.inc370 ]
  %54 = add nsw i64 %38, %indvars.iv911
  %arrayidx266 = getelementptr inbounds i16** %29, i64 %54
  %55 = load i16** %arrayidx266, align 8, !tbaa !0
  %arrayidx314 = getelementptr inbounds i16** %31, i64 %54
  %56 = load i16** %arrayidx314, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i16** %32, i64 %54
  %57 = load i16** %arrayidx365, align 8, !tbaa !0
  br label %for.body196

for.body196:                                      ; preds = %for.cond192.preheader, %for.body196
  %indvars.iv906 = phi i64 [ %34, %for.cond192.preheader ], [ %indvars.iv.next907, %for.body196 ]
  %arrayidx200 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv906, i64 %indvars.iv911
  %58 = load i32* %arrayidx200, align 4, !tbaa !3
  %arrayidx204 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv906, i64 %indvars.iv911
  %59 = load i32* %arrayidx204, align 4, !tbaa !3
  %shr = ashr i32 %59, 1
  %sub = sub nsw i32 %58, %shr
  %add209 = add nsw i32 %sub, %59
  %arrayidx213 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv906, i64 %indvars.iv911
  %60 = load i32* %arrayidx213, align 4, !tbaa !3
  %shr214 = ashr i32 %60, 1
  %sub215 = sub nsw i32 %sub, %shr214
  %add220 = add nsw i32 %sub215, %60
  %arrayidx224 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv906, i64 %indvars.iv911
  %61 = load i32* %arrayidx224, align 4, !tbaa !3
  %add225 = add nsw i32 %61, %sub215
  %cmp226 = icmp slt i32 %add225, 0
  %.add225 = select i1 %cmp226, i32 0, i32 %add225
  %cmp237 = icmp slt i32 %24, %.add225
  %..add225 = select i1 %cmp237, i32 %24, i32 %.add225
  %conv260 = trunc i32 %..add225 to i16
  %62 = add nsw i64 %35, %indvars.iv906
  %arrayidx267 = getelementptr inbounds i16* %55, i64 %62
  store i16 %conv260, i16* %arrayidx267, align 2, !tbaa !4
  %arrayidx271 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv906, i64 %indvars.iv911
  %63 = load i32* %arrayidx271, align 4, !tbaa !3
  %add272 = add nsw i32 %add209, %63
  %cmp273 = icmp slt i32 %add272, 0
  %.add272 = select i1 %cmp273, i32 0, i32 %add272
  %cmp284 = icmp slt i32 %30, %.add272
  %cond306 = select i1 %cmp284, i32 %30, i32 %.add272
  %conv307 = trunc i32 %cond306 to i16
  %arrayidx315 = getelementptr inbounds i16* %56, i64 %62
  store i16 %conv307, i16* %arrayidx315, align 2, !tbaa !4
  %arrayidx320 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv906, i64 %indvars.iv911
  %64 = load i32* %arrayidx320, align 4, !tbaa !3
  %add321 = add nsw i32 %add220, %64
  %cmp322 = icmp slt i32 %add321, 0
  %.add321 = select i1 %cmp322, i32 0, i32 %add321
  %cmp333 = icmp slt i32 %24, %.add321
  %..add321 = select i1 %cmp333, i32 %24, i32 %.add321
  %conv356 = trunc i32 %..add321 to i16
  %arrayidx366 = getelementptr inbounds i16* %57, i64 %62
  store i16 %conv356, i16* %arrayidx366, align 2, !tbaa !4
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %65 = or i32 %mul, 7
  %66 = trunc i64 %indvars.iv906 to i32
  %cmp194 = icmp slt i32 %66, %65
  br i1 %cmp194, label %for.body196, label %for.inc370

for.inc370:                                       ; preds = %for.body196
  %indvars.iv.next912 = add i64 %indvars.iv911, 1
  %67 = or i32 %mul1, 7
  %68 = trunc i64 %indvars.iv911 to i32
  %cmp189 = icmp slt i32 %68, %67
  br i1 %cmp189, label %for.cond192.preheader, label %if.end373

if.end373:                                        ; preds = %for.inc370, %if.end85
  %69 = phi %struct.ImageParameters* [ %22, %if.end85 ], [ %50, %for.inc370 ]
  %rate.1 = phi i32 [ 0, %if.end85 ], [ %add158, %for.inc370 ]
  %70 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %70, i64 0, i32 85
  %71 = load i32* %rdopt, align 4, !tbaa !3
  %cmp374 = icmp eq i32 %71, 2
  br i1 %cmp374, label %land.lhs.true, label %if.end380.for.cond440.preheader_crit_edge

land.lhs.true:                                    ; preds = %if.end373
  %type376 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 6
  %72 = load i32* %type376, align 4, !tbaa !3
  %cmp377 = icmp eq i32 %72, 1
  br i1 %cmp377, label %land.lhs.true384, label %if.end380

if.end380:                                        ; preds = %land.lhs.true
  call void @compute_residue_b8block(i32 %block, i32 -1) #8
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt381.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 85
  %.pre945 = load i32* %rdopt381.phi.trans.insert, align 4, !tbaa !3
  %cmp382 = icmp eq i32 %.pre945, 2
  br i1 %cmp382, label %land.lhs.true384, label %if.end380.for.cond440.preheader_crit_edge

if.end380.for.cond440.preheader_crit_edge:        ; preds = %if.end373, %if.end380
  %73 = phi %struct.InputParameters* [ %.pre, %if.end380 ], [ %70, %if.end373 ]
  %.pre952 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond440.preheader

for.cond440.preheader:                            ; preds = %land.lhs.true384, %if.end380.for.cond440.preheader_crit_edge
  %74 = phi %struct.InputParameters* [ %73, %if.end380.for.cond440.preheader_crit_edge ], [ %83, %land.lhs.true384 ]
  %75 = phi %struct.ImageParameters* [ %.pre952, %if.end380.for.cond440.preheader_crit_edge ], [ %84, %land.lhs.true384 ]
  %pix_x445 = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 33
  %76 = load i32* %pix_x445, align 4, !tbaa !3
  %add446 = add nsw i32 %76, %mul
  %add449 = add i32 %mul, 8
  %add450865 = add i32 %add449, %76
  %cmp451866 = icmp slt i32 %add446, %add450865
  %77 = load i16*** @imgY_org, align 8, !tbaa !0
  %78 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY465 = getelementptr inbounds %struct.storable_picture* %78, i64 0, i32 25
  %79 = load i16**** @imgUV_org, align 8, !tbaa !0
  %imgUV490 = getelementptr inbounds %struct.storable_picture* %78, i64 0, i32 30
  %arrayidx505 = getelementptr inbounds i16*** %79, i64 1
  %80 = shl i32 %rem, 3
  %81 = add i32 %76, %80
  %82 = sext i32 %81 to i64
  br label %for.body444

land.lhs.true384:                                 ; preds = %land.lhs.true, %if.end380
  %83 = phi %struct.InputParameters* [ %.pre, %if.end380 ], [ %70, %land.lhs.true ]
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type385 = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 6
  %85 = load i32* %type385, align 4, !tbaa !3
  %cmp386 = icmp eq i32 %85, 1
  br i1 %cmp386, label %for.cond440.preheader, label %for.cond389.preheader

for.cond389.preheader:                            ; preds = %land.lhs.true384
  %NoOfDecoders883 = getelementptr inbounds %struct.InputParameters* %83, i64 0, i32 97
  %86 = load i32* %NoOfDecoders883, align 4, !tbaa !3
  %cmp390884 = icmp sgt i32 %86, 0
  br i1 %cmp390884, label %for.body392.lr.ph, label %for.end435

for.body392.lr.ph:                                ; preds = %for.cond389.preheader
  %conv393 = sext i16 %ref to i32
  %add397 = add i32 %mul1, 8
  %add405 = add i32 %mul, 8
  %87 = shl i32 %rem, 3
  %88 = shl i32 %div, 3
  br label %for.body392

for.body392:                                      ; preds = %for.body392.lr.ph, %for.inc433
  %indvars.iv904 = phi i64 [ 0, %for.body392.lr.ph ], [ %indvars.iv.next905, %for.inc433 ]
  %distortion.0885 = phi i64 [ 0, %for.body392.lr.ph ], [ %distortion.1.lcssa, %for.inc433 ]
  %89 = trunc i64 %indvars.iv904 to i32
  call void @decode_one_b8block(i32 %89, i32 8, i32 %block, i32 %mode, i32 %conv393) #8
  %90 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_y = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 38
  %91 = load i32* %opix_y, align 4, !tbaa !3
  %add394 = add nsw i32 %91, %mul1
  %add398878 = add i32 %add397, %91
  %cmp399879 = icmp slt i32 %add394, %add398878
  br i1 %cmp399879, label %for.body401.lr.ph, label %for.inc433

for.body401.lr.ph:                                ; preds = %for.body392
  %opix_x404871 = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 37
  %92 = load i32* %opix_x404871, align 4, !tbaa !3
  %add406872 = add i32 %add405, %92
  %93 = load i16*** @imgY_org, align 8, !tbaa !0
  %94 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY = getelementptr inbounds %struct.Decoders* %94, i64 0, i32 1
  %95 = add i32 %88, %91
  %96 = sext i32 %95 to i64
  br label %for.body401

for.body401:                                      ; preds = %for.body401.lr.ph, %for.inc430
  %indvars.iv901 = phi i64 [ %96, %for.body401.lr.ph ], [ %indvars.iv.next902, %for.inc430 ]
  %distortion.1880 = phi i64 [ %distortion.0885, %for.body401.lr.ph ], [ %distortion.2.lcssa, %for.inc430 ]
  %add402 = add nsw i32 %92, %mul
  %cmp407873 = icmp slt i32 %add402, %add406872
  br i1 %cmp407873, label %for.body409.lr.ph, label %for.inc430

for.body409.lr.ph:                                ; preds = %for.body401
  %arrayidx412 = getelementptr inbounds i16** %93, i64 %indvars.iv901
  %97 = load i16** %arrayidx412, align 8, !tbaa !0
  %98 = load i16**** %decY, align 8, !tbaa !0
  %arrayidx418 = getelementptr inbounds i16*** %98, i64 %indvars.iv904
  %99 = load i16*** %arrayidx418, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i16** %99, i64 %indvars.iv901
  %100 = load i16** %arrayidx419, align 8, !tbaa !0
  %101 = add i32 %87, %92
  %102 = sext i32 %101 to i64
  %quad.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 53
  %.pre946 = load i32** %quad.phi.trans.insert, align 8, !tbaa !0
  br label %for.body409

for.body409:                                      ; preds = %for.body409.lr.ph, %for.body409
  %indvars.iv899 = phi i64 [ %102, %for.body409.lr.ph ], [ %indvars.iv.next900, %for.body409 ]
  %distortion.2874 = phi i64 [ %distortion.1880, %for.body409.lr.ph ], [ %add426, %for.body409 ]
  %arrayidx413 = getelementptr inbounds i16* %97, i64 %indvars.iv899
  %103 = load i16* %arrayidx413, align 2, !tbaa !4
  %conv414 = zext i16 %103 to i64
  %arrayidx420 = getelementptr inbounds i16* %100, i64 %indvars.iv899
  %104 = load i16* %arrayidx420, align 2, !tbaa !4
  %conv421 = zext i16 %104 to i64
  %sub422 = sub i64 %conv414, %conv421
  %arrayidx424 = getelementptr inbounds i32* %.pre946, i64 %sub422
  %105 = load i32* %arrayidx424, align 4, !tbaa !3
  %conv425 = sext i32 %105 to i64
  %add426 = add nsw i64 %conv425, %distortion.2874
  %indvars.iv.next900 = add i64 %indvars.iv899, 1
  %106 = trunc i64 %indvars.iv.next900 to i32
  %cmp407 = icmp slt i32 %106, %add406872
  br i1 %cmp407, label %for.body409, label %for.inc430

for.inc430:                                       ; preds = %for.body409, %for.body401
  %distortion.2.lcssa = phi i64 [ %distortion.1880, %for.body401 ], [ %add426, %for.body409 ]
  %indvars.iv.next902 = add i64 %indvars.iv901, 1
  %107 = trunc i64 %indvars.iv.next902 to i32
  %cmp399 = icmp slt i32 %107, %add398878
  br i1 %cmp399, label %for.body401, label %for.inc433

for.inc433:                                       ; preds = %for.inc430, %for.body392
  %distortion.1.lcssa = phi i64 [ %distortion.0885, %for.body392 ], [ %distortion.2.lcssa, %for.inc430 ]
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %108 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 97
  %109 = load i32* %NoOfDecoders, align 4, !tbaa !3
  %110 = trunc i64 %indvars.iv.next905 to i32
  %cmp390 = icmp slt i32 %110, %109
  br i1 %cmp390, label %for.body392, label %for.end435

for.end435:                                       ; preds = %for.inc433, %for.cond389.preheader
  %111 = phi %struct.InputParameters* [ %83, %for.cond389.preheader ], [ %108, %for.inc433 ]
  %.lcssa = phi i32 [ %86, %for.cond389.preheader ], [ %109, %for.inc433 ]
  %distortion.0.lcssa = phi i64 [ 0, %for.cond389.preheader ], [ %distortion.1.lcssa, %for.inc433 ]
  %conv437 = sext i32 %.lcssa to i64
  %div438 = sdiv i64 %distortion.0.lcssa, %conv437
  br label %if.end531

for.body444:                                      ; preds = %for.cond440.preheader, %for.inc528
  %j.5870 = phi i32 [ %mul1, %for.cond440.preheader ], [ %inc529, %for.inc528 ]
  %distortion.3869 = phi i64 [ 0, %for.cond440.preheader ], [ %distortion.4.lcssa, %for.inc528 ]
  br i1 %cmp451866, label %for.body453.lr.ph, label %for.inc528

for.body453.lr.ph:                                ; preds = %for.body444
  %112 = load i16*** %imgY465, align 8, !tbaa !0
  %opix_y455.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 38
  %.pre948 = load i32* %opix_y455.phi.trans.insert, align 4, !tbaa !3
  %pix_y462.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 34
  %.pre949 = load i32* %pix_y462.phi.trans.insert, align 4, !tbaa !3
  %quad471.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 53
  %.pre950 = load i32** %quad471.phi.trans.insert, align 8, !tbaa !0
  %residue_transform_flag475.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 164
  %.pre951 = load i32* %residue_transform_flag475.phi.trans.insert, align 4, !tbaa !3
  br label %for.body453

for.body453:                                      ; preds = %for.body453.lr.ph, %for.inc525
  %indvars.iv = phi i64 [ %82, %for.body453.lr.ph ], [ %indvars.iv.next, %for.inc525 ]
  %distortion.4867 = phi i64 [ %distortion.3869, %for.body453.lr.ph ], [ %distortion.5, %for.inc525 ]
  %add456 = add nsw i32 %.pre948, %j.5870
  %idxprom457 = sext i32 %add456 to i64
  %arrayidx458 = getelementptr inbounds i16** %77, i64 %idxprom457
  %113 = load i16** %arrayidx458, align 8, !tbaa !0
  %arrayidx459 = getelementptr inbounds i16* %113, i64 %indvars.iv
  %114 = load i16* %arrayidx459, align 2, !tbaa !4
  %conv460 = zext i16 %114 to i64
  %add463 = add nsw i32 %.pre949, %j.5870
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx466 = getelementptr inbounds i16** %112, i64 %idxprom464
  %115 = load i16** %arrayidx466, align 8, !tbaa !0
  %arrayidx467 = getelementptr inbounds i16* %115, i64 %indvars.iv
  %116 = load i16* %arrayidx467, align 2, !tbaa !4
  %conv468 = zext i16 %116 to i64
  %sub469 = sub i64 %conv460, %conv468
  %arrayidx472 = getelementptr inbounds i32* %.pre950, i64 %sub469
  %117 = load i32* %arrayidx472, align 4, !tbaa !3
  %conv473 = sext i32 %117 to i64
  %add474 = add nsw i64 %conv473, %distortion.4867
  %tobool476 = icmp eq i32 %.pre951, 0
  br i1 %tobool476, label %for.inc525, label %if.then477

if.then477:                                       ; preds = %for.body453
  %118 = load i16*** %79, align 8, !tbaa !0
  %arrayidx483 = getelementptr inbounds i16** %118, i64 %idxprom457
  %119 = load i16** %arrayidx483, align 8, !tbaa !0
  %arrayidx484 = getelementptr inbounds i16* %119, i64 %indvars.iv
  %120 = load i16* %arrayidx484, align 2, !tbaa !4
  %conv485 = zext i16 %120 to i64
  %121 = load i16**** %imgUV490, align 8, !tbaa !0
  %122 = load i16*** %121, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i16** %122, i64 %idxprom464
  %123 = load i16** %arrayidx492, align 8, !tbaa !0
  %arrayidx493 = getelementptr inbounds i16* %123, i64 %indvars.iv
  %124 = load i16* %arrayidx493, align 2, !tbaa !4
  %conv494 = zext i16 %124 to i64
  %sub495 = sub i64 %conv485, %conv494
  %arrayidx498 = getelementptr inbounds i32* %.pre950, i64 %sub495
  %125 = load i32* %arrayidx498, align 4, !tbaa !3
  %conv499 = sext i32 %125 to i64
  %add500 = add nsw i64 %conv499, %add474
  %126 = load i16*** %arrayidx505, align 8, !tbaa !0
  %arrayidx506 = getelementptr inbounds i16** %126, i64 %idxprom457
  %127 = load i16** %arrayidx506, align 8, !tbaa !0
  %arrayidx507 = getelementptr inbounds i16* %127, i64 %indvars.iv
  %128 = load i16* %arrayidx507, align 2, !tbaa !4
  %conv508 = zext i16 %128 to i64
  %arrayidx514 = getelementptr inbounds i16*** %121, i64 1
  %129 = load i16*** %arrayidx514, align 8, !tbaa !0
  %arrayidx515 = getelementptr inbounds i16** %129, i64 %idxprom464
  %130 = load i16** %arrayidx515, align 8, !tbaa !0
  %arrayidx516 = getelementptr inbounds i16* %130, i64 %indvars.iv
  %131 = load i16* %arrayidx516, align 2, !tbaa !4
  %conv517 = zext i16 %131 to i64
  %sub518 = sub i64 %conv508, %conv517
  %arrayidx521 = getelementptr inbounds i32* %.pre950, i64 %sub518
  %132 = load i32* %arrayidx521, align 4, !tbaa !3
  %conv522 = sext i32 %132 to i64
  %add523 = add nsw i64 %add500, %conv522
  br label %for.inc525

for.inc525:                                       ; preds = %for.body453, %if.then477
  %distortion.5 = phi i64 [ %add523, %if.then477 ], [ %add474, %for.body453 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %133 = trunc i64 %indvars.iv.next to i32
  %cmp451 = icmp slt i32 %133, %add450865
  br i1 %cmp451, label %for.body453, label %for.inc528

for.inc528:                                       ; preds = %for.inc525, %for.body444
  %distortion.4.lcssa = phi i64 [ %distortion.3869, %for.body444 ], [ %distortion.5, %for.inc525 ]
  %inc529 = add nsw i32 %j.5870, 1
  %134 = or i32 %mul1, 7
  %cmp442 = icmp slt i32 %j.5870, %134
  br i1 %cmp442, label %for.body444, label %if.end531

if.end531:                                        ; preds = %for.inc528, %for.end435
  %135 = phi %struct.InputParameters* [ %111, %for.end435 ], [ %74, %for.inc528 ]
  %distortion.6 = phi i64 [ %div438, %for.end435 ], [ %distortion.4.lcssa, %for.inc528 ]
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %135, i64 0, i32 59
  %136 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp532 = icmp eq i32 %136, 0
  br i1 %cmp532, label %if.then534, label %if.else536

if.then534:                                       ; preds = %if.end531
  %137 = load i32* %dummy, align 4, !tbaa !3
  call void @ue_linfo(i32 %call, i32 %137, i32* %mrate, i32* %dummy) #8
  %138 = load i32* %mrate, align 4, !tbaa !3
  br label %if.end547

if.else536:                                       ; preds = %if.end531
  %value1 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 52, i64 %idxprom7, i32 1
  store i32 %call, i32* %value1, align 4, !tbaa !3
  %writing = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 52, i64 %idxprom7, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeB8_typeInfo_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !tbaa !0
  %type537 = getelementptr inbounds %struct.syntaxelement* %arrayidx8, i64 0, i32 0
  store i32 2, i32* %type537, align 4, !tbaa !3
  %arrayidx540 = getelementptr inbounds i32* %9, i64 2
  %139 = load i32* %arrayidx540, align 4, !tbaa !3
  %idxprom541 = sext i32 %139 to i64
  %partArr = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  %140 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %arrayidx542 = getelementptr inbounds %struct.datapartition* %140, i64 %idxprom541
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition* %140, i64 %idxprom541, i32 2
  %141 = load i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8, !tbaa !0
  %call543 = call i32 %141(%struct.syntaxelement* %arrayidx8, %struct.datapartition* %arrayidx542) #8
  %len = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 52, i64 %idxprom7, i32 3
  %142 = load i32* %len, align 4, !tbaa !3
  %143 = load i32* %currSEnr, align 4, !tbaa !3
  %inc546 = add nsw i32 %143, 1
  store i32 %inc546, i32* %currSEnr, align 4, !tbaa !3
  br label %if.end547

if.end547:                                        ; preds = %if.else536, %if.then534
  %.pn = phi i32 [ %138, %if.then534 ], [ %142, %if.else536 ]
  %rate.2 = add nsw i32 %.pn, %rate.1
  br i1 %cmp4., label %if.end613, label %if.then549

if.then549:                                       ; preds = %if.end547
  %144 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %144, i64 0, i32 79
  %145 = load i32* %num_ref_idx_l0_active, align 4, !tbaa !3
  %cmp550 = icmp sgt i32 %145, 1
  br i1 %cmp550, label %land.lhs.true552, label %if.end564

land.lhs.true552:                                 ; preds = %if.then549
  switch i16 %pdir, label %if.end564 [
    i16 0, label %if.then560
    i16 2, label %if.then560
  ]

if.then560:                                       ; preds = %land.lhs.true552, %land.lhs.true552
  %conv561 = sext i16 %ref to i32
  %call562 = call i32 @writeReferenceFrame(i32 %mode, i32 %div2, i32 %div3, i32 1, i32 %conv561) #8
  %add563 = add nsw i32 %call562, %rate.2
  %.pre947 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end564

if.end564:                                        ; preds = %land.lhs.true552, %if.then560, %if.then549
  %146 = phi %struct.ImageParameters* [ %.pre947, %if.then560 ], [ %144, %if.then549 ], [ %144, %land.lhs.true552 ]
  %rate.3 = phi i32 [ %add563, %if.then560 ], [ %rate.2, %if.then549 ], [ %rate.2, %land.lhs.true552 ]
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters* %146, i64 0, i32 80
  %147 = load i32* %num_ref_idx_l1_active, align 4, !tbaa !3
  %cmp565 = icmp sgt i32 %147, 1
  br i1 %cmp565, label %land.lhs.true567, label %if.end584

land.lhs.true567:                                 ; preds = %if.end564
  %type568 = getelementptr inbounds %struct.ImageParameters* %146, i64 0, i32 6
  %148 = load i32* %type568, align 4, !tbaa !3
  %cmp569 = icmp eq i32 %148, 1
  br i1 %cmp569, label %if.then571, label %if.end584

if.then571:                                       ; preds = %land.lhs.true567
  %pdir.off860 = add i16 %pdir, -1
  %switch861 = icmp ult i16 %pdir.off860, 2
  br i1 %switch861, label %if.then579, label %if.end584

if.then579:                                       ; preds = %if.then571
  %conv580 = sext i16 %bwd_ref to i32
  %call581 = call i32 @writeReferenceFrame(i32 %mode, i32 %div2, i32 %div3, i32 0, i32 %conv580) #8
  %add582 = add nsw i32 %call581, %rate.3
  br label %if.end584

if.end584:                                        ; preds = %if.then571, %if.then579, %land.lhs.true567, %if.end564
  %rate.4 = phi i32 [ %add582, %if.then579 ], [ %rate.3, %land.lhs.true567 ], [ %rate.3, %if.end564 ], [ %rate.3, %if.then571 ]
  switch i16 %pdir, label %if.end598 [
    i16 0, label %if.then592
    i16 2, label %if.then592
  ]

if.then592:                                       ; preds = %if.end584, %if.end584
  %add593 = add nsw i32 %div2, 2
  %add594 = add nsw i32 %div3, 2
  %conv595 = sext i16 %ref to i32
  %call596 = call i32 @writeMotionVector8x8(i32 %div2, i32 %div3, i32 %add593, i32 %add594, i32 %conv595, i32 0, i32 %mode) #8
  %add597 = add nsw i32 %call596, %rate.4
  br label %if.end598

if.end598:                                        ; preds = %if.end584, %if.then592
  %rate.5 = phi i32 [ %add597, %if.then592 ], [ %rate.4, %if.end584 ]
  %pdir.off862 = add i16 %pdir, -1
  %switch863 = icmp ult i16 %pdir.off862, 2
  br i1 %switch863, label %if.then606, label %if.end613

if.then606:                                       ; preds = %if.end598
  %add607 = add nsw i32 %div2, 2
  %add608 = add nsw i32 %div3, 2
  %conv609 = sext i16 %bwd_ref to i32
  %call610 = call i32 @writeMotionVector8x8(i32 %div2, i32 %div3, i32 %add607, i32 %add608, i32 %conv609, i32 1, i32 %mode) #8
  %add611 = add nsw i32 %call610, %rate.5
  br label %if.end613

if.end613:                                        ; preds = %if.end598, %if.then606, %if.end547
  %rate.6 = phi i32 [ %rate.2, %if.end547 ], [ %add611, %if.then606 ], [ %rate.5, %if.end598 ]
  %149 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode614 = getelementptr inbounds %struct.InputParameters* %149, i64 0, i32 59
  %150 = load i32* %symbol_mode614, align 4, !tbaa !3
  %cmp615 = icmp eq i32 %150, 1
  br i1 %cmp615, label %if.then617, label %if.end629

if.then617:                                       ; preds = %if.end613
  %arrayidx618 = getelementptr inbounds i32* %9, i64 11
  %151 = load i32* %arrayidx618, align 4, !tbaa !3
  %idxprom619 = sext i32 %151 to i64
  %partArr620 = getelementptr inbounds %struct.Slice* %6, i64 0, i32 6
  %152 = load %struct.datapartition** %partArr620, align 8, !tbaa !0
  %ee_cabac = getelementptr inbounds %struct.datapartition* %152, i64 %idxprom619, i32 1
  %call622 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #8
  store i32 %call622, i32* %mrate, align 4, !tbaa !3
  %153 = load i32* %cnt_nonz, align 4, !tbaa !3
  %cmp623 = icmp sgt i32 %153, 0
  %cond625 = zext i1 %cmp623 to i32
  %154 = load i32* @cbp8x8, align 4, !tbaa !3
  call void @writeCBP_BIT_CABAC(i32 %block, i32 %cond625, i32 %154, %struct.macroblock* %arrayidx, i32 1, %struct.EncodingEnvironment* %ee_cabac) #8
  %call626 = call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #8
  %155 = load i32* %mrate, align 4, !tbaa !3
  %sub627 = sub nsw i32 %call626, %155
  store i32 %sub627, i32* %mrate, align 4, !tbaa !3
  %add628 = add nsw i32 %sub627, %rate.6
  br label %if.end629

if.end629:                                        ; preds = %if.then617, %if.end613
  %rate.7 = phi i32 [ %add628, %if.then617 ], [ %rate.6, %if.end613 ]
  %156 = load i32* %cnt_nonz, align 4, !tbaa !3
  %tobool630 = icmp eq i32 %156, 0
  br i1 %tobool630, label %if.end634, label %if.then631

if.then631:                                       ; preds = %if.end629
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 32
  %157 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %call632 = call i32 @writeLumaCoeff8x8(i32 %block, i32 %mode, i32 %157) #8
  %add633 = add nsw i32 %call632, %rate.7
  br label %if.end634

if.end634:                                        ; preds = %if.end629, %if.then631
  %rate.8 = phi i32 [ %add633, %if.then631 ], [ %rate.7, %if.end629 ]
  %conv635 = sitofp i64 %distortion.6 to double
  %conv636 = sitofp i32 %rate.8 to double
  %mul637 = fmul double %conv636, %lambda
  %add638 = fadd double %conv635, %mul637
  br label %return

return:                                           ; preds = %if.then, %if.end634
  %retval.0 = phi double [ %add638, %if.end634 ], [ 1.000000e+20, %if.then ]
  ret double %retval.0
}

; Function Attrs: optsize
declare i32 @B8Mode2Value(i32, i32) #1

; Function Attrs: optsize
declare i32 @LumaResidualCoding8x8(i32*, i64*, i32, i16 signext, i32, i32, i16 signext, i16 signext) #1

; Function Attrs: optsize
declare void @compute_residue_b8block(i32, i32) #1

; Function Attrs: optsize
declare void @decode_one_b8block(i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare void @writeB8_typeInfo_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @writeReferenceFrame(i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @writeMotionVector8x8(i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare void @writeCBP_BIT_CABAC(i32, i32, i32, %struct.macroblock*, i32, %struct.EncodingEnvironment*) #1

; Function Attrs: optsize
declare i32 @writeLumaCoeff8x8(i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @I16Offset(i32 %cbp, i32 %i16mode) #5 {
entry:
  %and = and i32 %cbp, 15
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 13, i32 1
  %and1 = lshr i32 %cbp, 2
  %shr4 = and i32 %and1, 12
  %add = add i32 %shr4, %i16mode
  %add2 = add i32 %add, %cond
  ret i32 %add2
}

; Function Attrs: nounwind optsize uwtable
define void @SetModesAndRefframeForBlocks(i32 %mode) #0 {
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
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %4 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %5 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %5, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem839 = shl i32 %1, 1
  %6 = and i32 %rem839, 2
  %7 = add i32 %6, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %7, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  store i32 %mode, i32* %mb_type, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %mode, 1
  br i1 %cmp5, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %cond.end
  %arrayidx8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 74, i64 1
  %8 = load i16* %arrayidx8, align 2, !tbaa !4
  %conv9 = sext i16 %8 to i32
  %bi_pred_me10 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  store i32 %conv9, i32* %bi_pred_me10, align 4, !tbaa !3
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %if.end, %if.end, %if.end.thread
  %idxprom40 = sext i32 %mode to i64
  br label %for.body35

if.end:                                           ; preds = %cond.end
  %bi_pred_me11 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  store i32 0, i32* %bi_pred_me11, align 4, !tbaa !3
  switch i32 %mode, label %sw.default [
    i32 0, label %for.cond.preheader
    i32 13, label %for.body104
    i32 2, label %for.cond32.preheader
    i32 3, label %for.cond32.preheader
    i32 8, label %for.body54
    i32 9, label %for.body76
    i32 10, label %for.body90
  ]

for.cond.preheader:                               ; preds = %if.end
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %9 = load i16*** @direct_pdir, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %cond.end27, %for.cond.preheader
  %indvars.iv908 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next909, %cond.end27 ]
  %arrayidx15 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv908
  store i32 0, i32* %arrayidx15, align 4, !tbaa !3
  br i1 %cmp, label %cond.true17, label %cond.end27

cond.true17:                                      ; preds = %for.body
  %10 = load i32* %block_y, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv908 to i32
  %div = sdiv i32 %11, 2
  %mul = shl i32 %div, 1
  %add = add nsw i32 %mul, %10
  %idxprom18 = sext i32 %add to i64
  %12 = load i32* %block_x, align 4, !tbaa !3
  %rem19 = srem i32 %11, 2
  %mul20 = shl i32 %rem19, 1
  %add21 = add nsw i32 %mul20, %12
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i16** %9, i64 %idxprom22
  %13 = load i16** %arrayidx23, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i16* %13, i64 %idxprom18
  %14 = load i16* %arrayidx24, align 2, !tbaa !4
  %conv25 = sext i16 %14 to i32
  br label %cond.end27

cond.end27:                                       ; preds = %for.body, %cond.true17
  %cond28 = phi i32 [ %conv25, %cond.true17 ], [ 0, %for.body ]
  %arrayidx30 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv908
  store i32 %cond28, i32* %arrayidx30, align 4, !tbaa !3
  %indvars.iv.next909 = add i64 %indvars.iv908, 1
  %lftr.wideiv910 = trunc i64 %indvars.iv.next909 to i32
  %exitcond911 = icmp eq i32 %lftr.wideiv910, 4
  br i1 %exitcond911, label %sw.epilog, label %for.body

for.body35:                                       ; preds = %for.body35, %for.cond32.preheader
  %indvars.iv904 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next905, %for.body35 ]
  %arrayidx38 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv904
  store i32 %mode, i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 %idxprom40, i64 %indvars.iv904
  %15 = load i16* %arrayidx42, align 2, !tbaa !4
  %conv43 = sext i16 %15 to i32
  %arrayidx46 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv904
  store i32 %conv43, i32* %arrayidx46, align 4, !tbaa !3
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %lftr.wideiv906 = trunc i64 %indvars.iv.next905 to i32
  %exitcond907 = icmp eq i32 %lftr.wideiv906, 4
  br i1 %exitcond907, label %sw.epilog, label %for.body35

for.body54:                                       ; preds = %if.end, %for.body54
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %for.body54 ], [ 0, %if.end ]
  %arrayidx56 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %indvars.iv918
  %16 = load i16* %arrayidx56, align 2, !tbaa !4
  %conv57 = sext i16 %16 to i32
  %arrayidx60 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv918
  store i32 %conv57, i32* %arrayidx60, align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 8, i64 %indvars.iv918
  %17 = load i16* %arrayidx64, align 2, !tbaa !4
  %conv65 = sext i16 %17 to i32
  %arrayidx68 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv918
  store i32 %conv65, i32* %arrayidx68, align 4, !tbaa !3
  %indvars.iv.next919 = add i64 %indvars.iv918, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv.next919 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, 4
  br i1 %exitcond921, label %sw.epilog, label %for.body54

for.body76:                                       ; preds = %if.end, %for.body76
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %for.body76 ], [ 0, %if.end ]
  %arrayidx79 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv922
  store i32 11, i32* %arrayidx79, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv922
  store i32 -1, i32* %arrayidx82, align 4, !tbaa !3
  %indvars.iv.next923 = add i64 %indvars.iv922, 1
  %lftr.wideiv924 = trunc i64 %indvars.iv.next923 to i32
  %exitcond925 = icmp eq i32 %lftr.wideiv924, 4
  br i1 %exitcond925, label %sw.epilog, label %for.body76

for.body90:                                       ; preds = %if.end, %for.body90
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %for.body90 ], [ 0, %if.end ]
  %arrayidx93 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv927
  store i32 0, i32* %arrayidx93, align 4, !tbaa !3
  %arrayidx96 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv927
  store i32 -1, i32* %arrayidx96, align 4, !tbaa !3
  %indvars.iv.next928 = add i64 %indvars.iv927, 1
  %lftr.wideiv929 = trunc i64 %indvars.iv.next928 to i32
  %exitcond930 = icmp eq i32 %lftr.wideiv929, 4
  br i1 %exitcond930, label %sw.epilog, label %for.body90

for.body104:                                      ; preds = %if.end, %for.body104
  %indvars.iv913 = phi i64 [ %indvars.iv.next914, %for.body104 ], [ 0, %if.end ]
  %arrayidx107 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv913
  store i32 13, i32* %arrayidx107, align 4, !tbaa !3
  %arrayidx110 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv913
  store i32 -1, i32* %arrayidx110, align 4, !tbaa !3
  %indvars.iv.next914 = add i64 %indvars.iv913, 1
  %lftr.wideiv915 = trunc i64 %indvars.iv.next914 to i32
  %exitcond916 = icmp eq i32 %lftr.wideiv915, 4
  br i1 %exitcond916, label %for.end113, label %for.body104

for.end113:                                       ; preds = %for.body104
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  store i32 1, i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #11
  unreachable

sw.epilog:                                        ; preds = %for.body90, %for.body76, %for.body54, %cond.end27, %for.body35, %for.end113
  %cmp114 = icmp eq i32 %mode, 0
  switch i32 %mode, label %if.else232 [
    i32 13, label %if.then124
    i32 10, label %if.then124
    i32 9, label %if.then124
    i32 0, label %if.then124
  ]

if.then124:                                       ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  br i1 %cmp, label %for.cond127.preheader, label %for.cond203.preheader

for.cond203.preheader:                            ; preds = %if.then124
  %not.cmp114 = xor i1 %cmp114, true
  %conv214 = sext i1 %not.cmp114 to i16
  %block_y215 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %18 = load i32* %block_y215, align 4, !tbaa !3
  %block_x218 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %19 = load i32* %block_x218, align 4, !tbaa !3
  %20 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx221 = getelementptr inbounds %struct.storable_picture* %20, i64 0, i32 32
  %21 = load i16**** %ref_idx221, align 8, !tbaa !0
  %22 = load i16*** %21, align 8, !tbaa !0
  %23 = sext i32 %19 to i64
  %24 = sext i32 %18 to i64
  br label %for.cond207.preheader

for.cond127.preheader:                            ; preds = %if.then124
  %block_y175 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %25 = load i32* %block_y175, align 4, !tbaa !3
  %block_x178 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %26 = load i32* %block_x178, align 4, !tbaa !3
  %27 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %28 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %28, i64 0, i32 32
  %arrayidx161 = getelementptr inbounds i16*** %27, i64 1
  %29 = sext i32 %26 to i64
  %30 = sext i32 %25 to i64
  br label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %for.inc199, %for.cond127.preheader
  %indvars.iv889 = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next890, %for.inc199 ]
  %31 = add nsw i64 %30, %indvars.iv889
  br label %for.body134

for.body134:                                      ; preds = %for.inc196, %for.cond131.preheader
  %indvars.iv884 = phi i64 [ 0, %for.cond131.preheader ], [ %indvars.iv.next885, %for.inc196 ]
  %32 = add nsw i64 %29, %indvars.iv884
  br i1 %cmp114, label %if.then136, label %if.else174

if.then136:                                       ; preds = %for.body134
  %33 = load i16*** %27, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i16** %33, i64 %32
  %34 = load i16** %arrayidx144, align 8, !tbaa !0
  %arrayidx145 = getelementptr inbounds i16* %34, i64 %31
  %35 = load i16* %arrayidx145, align 2, !tbaa !4
  %36 = load i16**** %ref_idx, align 8, !tbaa !0
  %37 = load i16*** %36, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds i16** %37, i64 %32
  %38 = load i16** %arrayidx153, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i16* %38, i64 %31
  store i16 %35, i16* %arrayidx154, align 2, !tbaa !4
  %39 = trunc i64 %indvars.iv889 to i32
  %add156 = add nsw i32 %25, %39
  %idxprom157 = sext i32 %add156 to i64
  %40 = trunc i64 %indvars.iv884 to i32
  %add159 = add nsw i32 %26, %40
  %idxprom160 = sext i32 %add159 to i64
  %41 = load i16*** %arrayidx161, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds i16** %41, i64 %idxprom160
  %42 = load i16** %arrayidx162, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i16* %42, i64 %idxprom157
  %43 = load i16* %arrayidx163, align 2, !tbaa !4
  %arrayidx171 = getelementptr inbounds i16*** %36, i64 1
  %44 = load i16*** %arrayidx171, align 8, !tbaa !0
  %arrayidx172 = getelementptr inbounds i16** %44, i64 %idxprom160
  %45 = load i16** %arrayidx172, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i16* %45, i64 %idxprom157
  store i16 %43, i16* %arrayidx173, align 2, !tbaa !4
  br label %for.inc196

if.else174:                                       ; preds = %for.body134
  %46 = load i16**** %ref_idx, align 8, !tbaa !0
  %47 = load i16*** %46, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i16** %47, i64 %32
  %48 = load i16** %arrayidx183, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i16* %48, i64 %31
  store i16 -1, i16* %arrayidx184, align 2, !tbaa !4
  %49 = trunc i64 %indvars.iv889 to i32
  %add186 = add nsw i32 %25, %49
  %idxprom187 = sext i32 %add186 to i64
  %50 = trunc i64 %indvars.iv884 to i32
  %add189 = add nsw i32 %26, %50
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx192 = getelementptr inbounds i16*** %46, i64 1
  %51 = load i16*** %arrayidx192, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i16** %51, i64 %idxprom190
  %52 = load i16** %arrayidx193, align 8, !tbaa !0
  %arrayidx194 = getelementptr inbounds i16* %52, i64 %idxprom187
  store i16 -1, i16* %arrayidx194, align 2, !tbaa !4
  br label %for.inc196

for.inc196:                                       ; preds = %if.then136, %if.else174
  %.pre943954 = phi i16** [ %37, %if.then136 ], [ %47, %if.else174 ]
  %.pre942950 = phi i16*** [ %36, %if.then136 ], [ %46, %if.else174 ]
  %indvars.iv.next885 = add i64 %indvars.iv884, 1
  %lftr.wideiv887 = trunc i64 %indvars.iv.next885 to i32
  %exitcond888 = icmp eq i32 %lftr.wideiv887, 4
  br i1 %exitcond888, label %for.inc199, label %for.body134

for.inc199:                                       ; preds = %for.inc196
  %indvars.iv.next890 = add i64 %indvars.iv889, 1
  %lftr.wideiv892 = trunc i64 %indvars.iv.next890 to i32
  %exitcond893 = icmp eq i32 %lftr.wideiv892, 4
  br i1 %exitcond893, label %for.cond547.preheader, label %for.cond131.preheader

for.cond207.preheader:                            ; preds = %for.inc228, %for.cond203.preheader
  %indvars.iv899 = phi i64 [ 0, %for.cond203.preheader ], [ %indvars.iv.next900, %for.inc228 ]
  %53 = add nsw i64 %24, %indvars.iv899
  br label %for.body210

for.cond547.preheader:                            ; preds = %for.inc228, %for.inc199, %for.inc542, %for.inc473
  %.pre943952 = phi i16** [ %.pre943953, %for.inc473 ], [ %61, %for.inc542 ], [ %.pre943954, %for.inc199 ], [ %22, %for.inc228 ]
  %.pre942948 = phi i16*** [ %.pre942949, %for.inc473 ], [ %60, %for.inc542 ], [ %.pre942950, %for.inc199 ], [ %21, %for.inc228 ]
  %.pre933939 = phi i32 [ %.pre933940, %for.inc473 ], [ %58, %for.inc542 ], [ %26, %for.inc199 ], [ %19, %for.inc228 ]
  %.pre936 = phi i32 [ %.pre937, %for.inc473 ], [ %57, %for.inc542 ], [ %25, %for.inc199 ], [ %18, %for.inc228 ]
  %54 = phi %struct.storable_picture* [ %65, %for.inc473 ], [ %59, %for.inc542 ], [ %28, %for.inc199 ], [ %20, %for.inc228 ]
  %idxprom581838 = zext i32 %cond4 to i64
  br label %for.cond551.preheader

for.body210:                                      ; preds = %for.body210, %for.cond207.preheader
  %indvars.iv894 = phi i64 [ 0, %for.cond207.preheader ], [ %indvars.iv.next895, %for.body210 ]
  %55 = add nsw i64 %23, %indvars.iv894
  %arrayidx223 = getelementptr inbounds i16** %22, i64 %55
  %56 = load i16** %arrayidx223, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds i16* %56, i64 %53
  store i16 %conv214, i16* %arrayidx224, align 2, !tbaa !4
  %indvars.iv.next895 = add i64 %indvars.iv894, 1
  %lftr.wideiv897 = trunc i64 %indvars.iv.next895 to i32
  %exitcond898 = icmp eq i32 %lftr.wideiv897, 4
  br i1 %exitcond898, label %for.inc228, label %for.body210

for.inc228:                                       ; preds = %for.body210
  %indvars.iv.next900 = add i64 %indvars.iv899, 1
  %lftr.wideiv902 = trunc i64 %indvars.iv.next900 to i32
  %exitcond903 = icmp eq i32 %lftr.wideiv902, 4
  br i1 %exitcond903, label %for.cond547.preheader, label %for.cond207.preheader

if.else232:                                       ; preds = %sw.epilog
  br i1 %cmp, label %for.cond235.preheader, label %for.cond477.preheader

for.cond477.preheader:                            ; preds = %if.else232
  %idxprom494 = sext i32 %mode to i64
  %block_y529 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %57 = load i32* %block_y529, align 4, !tbaa !3
  %block_x532 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %58 = load i32* %block_x532, align 4, !tbaa !3
  %59 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx535 = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 32
  %60 = load i16**** %ref_idx535, align 8, !tbaa !0
  %61 = load i16*** %60, align 8, !tbaa !0
  %62 = sext i32 %58 to i64
  %63 = sext i32 %57 to i64
  br label %for.cond481.preheader

for.cond235.preheader:                            ; preds = %if.else232
  %cmp251 = icmp eq i32 %mode, 8
  %block_y260 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %block_x263 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %64 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %65 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx275 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 32
  %arrayidx285 = getelementptr inbounds i16*** %64, i64 1
  %bi_pred_me302 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  %idxprom306 = sext i32 %mode to i64
  %cmp321 = icmp ne i32 %mode, 8
  br label %for.cond239.preheader

for.cond239.preheader:                            ; preds = %for.inc473, %for.cond235.preheader
  %j.2852 = phi i32 [ 0, %for.cond235.preheader ], [ %inc474, %for.inc473 ]
  %div243 = sdiv i32 %j.2852, 2
  %mul244 = shl nsw i32 %div243, 1
  br label %for.body242

for.body242:                                      ; preds = %for.inc470, %for.cond239.preheader
  %i.8850 = phi i32 [ 0, %for.cond239.preheader ], [ %inc471, %for.inc470 ]
  %div245 = sdiv i32 %i.8850, 2
  %add246 = add nsw i32 %mul244, %div245
  br i1 %cmp251, label %land.lhs.true253, label %if.else298

land.lhs.true253:                                 ; preds = %for.body242
  %idxprom254 = sext i32 %add246 to i64
  %arrayidx255 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %idxprom254
  %66 = load i16* %arrayidx255, align 2, !tbaa !4
  %cmp257 = icmp eq i16 %66, 0
  br i1 %cmp257, label %if.then259, label %if.else298

if.then259:                                       ; preds = %land.lhs.true253
  %67 = load i32* %block_y260, align 4, !tbaa !3
  %add261 = add nsw i32 %67, %j.2852
  %idxprom262 = sext i32 %add261 to i64
  %68 = load i32* %block_x263, align 4, !tbaa !3
  %add264 = add nsw i32 %68, %i.8850
  %idxprom265 = sext i32 %add264 to i64
  %69 = load i16*** %64, align 8, !tbaa !0
  %arrayidx267 = getelementptr inbounds i16** %69, i64 %idxprom265
  %70 = load i16** %arrayidx267, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i16* %70, i64 %idxprom262
  %71 = load i16* %arrayidx268, align 2, !tbaa !4
  %72 = load i16**** %ref_idx275, align 8, !tbaa !0
  %73 = load i16*** %72, align 8, !tbaa !0
  %arrayidx277 = getelementptr inbounds i16** %73, i64 %idxprom265
  %74 = load i16** %arrayidx277, align 8, !tbaa !0
  %arrayidx278 = getelementptr inbounds i16* %74, i64 %idxprom262
  store i16 %71, i16* %arrayidx278, align 2, !tbaa !4
  %75 = load i16*** %arrayidx285, align 8, !tbaa !0
  %arrayidx286 = getelementptr inbounds i16** %75, i64 %idxprom265
  %76 = load i16** %arrayidx286, align 8, !tbaa !0
  %arrayidx287 = getelementptr inbounds i16* %76, i64 %idxprom262
  %77 = load i16* %arrayidx287, align 2, !tbaa !4
  %arrayidx295 = getelementptr inbounds i16*** %72, i64 1
  %78 = load i16*** %arrayidx295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i16** %78, i64 %idxprom265
  %79 = load i16** %arrayidx296, align 8, !tbaa !0
  %arrayidx297 = getelementptr inbounds i16* %79, i64 %idxprom262
  store i16 %77, i16* %arrayidx297, align 2, !tbaa !4
  br label %for.inc470

if.else298:                                       ; preds = %land.lhs.true253, %for.body242
  br i1 %cmp5, label %land.lhs.true301, label %if.else377

land.lhs.true301:                                 ; preds = %if.else298
  %80 = load i32* %bi_pred_me302, align 4, !tbaa !3
  %tobool303 = icmp eq i32 %80, 0
  br i1 %tobool303, label %if.else377, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %land.lhs.true301
  %idxprom305 = sext i32 %add246 to i64
  %arrayidx308 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 %idxprom306, i64 %idxprom305
  %81 = load i16* %arrayidx308, align 2, !tbaa !4
  switch i16 %81, label %if.else377 [
    i16 0, label %land.lhs.true320
    i16 2, label %land.lhs.true320
  ]

land.lhs.true320:                                 ; preds = %land.lhs.true304, %land.lhs.true304
  br i1 %cmp321, label %land.lhs.true331, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %land.lhs.true320
  %arrayidx325 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %idxprom305
  %82 = load i16* %arrayidx325, align 2, !tbaa !4
  %cmp327.not = icmp eq i16 %82, 0
  br i1 %cmp327.not, label %if.else377, label %land.lhs.true331

land.lhs.true331:                                 ; preds = %lor.lhs.false323, %land.lhs.true320
  %.off = add i16 %81, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %land.lhs.true347, label %if.else377

land.lhs.true347:                                 ; preds = %land.lhs.true331
  br i1 %cmp321, label %if.then356, label %lor.lhs.false350

lor.lhs.false350:                                 ; preds = %land.lhs.true347
  %arrayidx352 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %idxprom305
  %83 = load i16* %arrayidx352, align 2, !tbaa !4
  %cmp354 = icmp eq i16 %83, 0
  br i1 %cmp354, label %if.else377, label %if.then356

if.then356:                                       ; preds = %lor.lhs.false350, %land.lhs.true347
  %84 = load i32* %block_y260, align 4, !tbaa !3
  %add358 = add nsw i32 %84, %j.2852
  %idxprom359 = sext i32 %add358 to i64
  %85 = load i32* %block_x263, align 4, !tbaa !3
  %add361 = add nsw i32 %85, %i.8850
  %idxprom362 = sext i32 %add361 to i64
  %86 = load i16**** %ref_idx275, align 8, !tbaa !0
  %87 = load i16*** %86, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i16** %87, i64 %idxprom362
  %88 = load i16** %arrayidx365, align 8, !tbaa !0
  %arrayidx366 = getelementptr inbounds i16* %88, i64 %idxprom359
  store i16 0, i16* %arrayidx366, align 2, !tbaa !4
  %arrayidx374 = getelementptr inbounds i16*** %86, i64 1
  %89 = load i16*** %arrayidx374, align 8, !tbaa !0
  %arrayidx375 = getelementptr inbounds i16** %89, i64 %idxprom362
  %90 = load i16** %arrayidx375, align 8, !tbaa !0
  %arrayidx376 = getelementptr inbounds i16* %90, i64 %idxprom359
  store i16 0, i16* %arrayidx376, align 2, !tbaa !4
  br label %for.inc470

if.else377:                                       ; preds = %land.lhs.true301, %if.else298, %lor.lhs.false323, %land.lhs.true331, %land.lhs.true304, %lor.lhs.false350
  %idxprom378 = sext i32 %add246 to i64
  %arrayidx381 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 %idxprom306, i64 %idxprom378
  %91 = load i16* %arrayidx381, align 2, !tbaa !4
  switch i16 %91, label %cond.end411 [
    i16 0, label %land.lhs.true393
    i16 2, label %land.lhs.true393
  ]

land.lhs.true393:                                 ; preds = %if.else377, %if.else377
  br i1 %cmp251, label %lor.lhs.false396, label %cond.true404

lor.lhs.false396:                                 ; preds = %land.lhs.true393
  %arrayidx398 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %idxprom378
  %92 = load i16* %arrayidx398, align 2, !tbaa !4
  %cmp400.not = icmp eq i16 %92, 0
  br i1 %cmp400.not, label %cond.end411, label %cond.true404

cond.true404:                                     ; preds = %lor.lhs.false396, %land.lhs.true393
  %arrayidx408 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 %idxprom306, i64 %idxprom378
  %93 = load i16* %arrayidx408, align 2, !tbaa !4
  br label %cond.end411

cond.end411:                                      ; preds = %lor.lhs.false396, %if.else377, %cond.true404
  %cond412 = phi i16 [ %93, %cond.true404 ], [ -1, %if.else377 ], [ -1, %lor.lhs.false396 ]
  %94 = load i32* %block_y260, align 4, !tbaa !3
  %add415 = add nsw i32 %94, %j.2852
  %idxprom416 = sext i32 %add415 to i64
  %95 = load i32* %block_x263, align 4, !tbaa !3
  %add418 = add nsw i32 %95, %i.8850
  %idxprom419 = sext i32 %add418 to i64
  %96 = load i16**** %ref_idx275, align 8, !tbaa !0
  %97 = load i16*** %96, align 8, !tbaa !0
  %arrayidx422 = getelementptr inbounds i16** %97, i64 %idxprom419
  %98 = load i16** %arrayidx422, align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds i16* %98, i64 %idxprom416
  store i16 %cond412, i16* %arrayidx423, align 2, !tbaa !4
  %99 = load i16* %arrayidx381, align 2, !tbaa !4
  %.off844 = add i16 %99, -1
  %switch845 = icmp ult i16 %.off844, 2
  br i1 %switch845, label %land.lhs.true439, label %cond.end455

land.lhs.true439:                                 ; preds = %cond.end411
  br i1 %cmp251, label %lor.lhs.false442, label %cond.true448

lor.lhs.false442:                                 ; preds = %land.lhs.true439
  %arrayidx444 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %idxprom378
  %100 = load i16* %arrayidx444, align 2, !tbaa !4
  %cmp446 = icmp eq i16 %100, 0
  br i1 %cmp446, label %cond.end455, label %cond.true448

cond.true448:                                     ; preds = %lor.lhs.false442, %land.lhs.true439
  %arrayidx452 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 %idxprom306, i64 %idxprom378
  %101 = load i16* %arrayidx452, align 2, !tbaa !4
  br label %cond.end455

cond.end455:                                      ; preds = %cond.end411, %lor.lhs.false442, %cond.true448
  %cond456 = phi i16 [ %101, %cond.true448 ], [ -1, %lor.lhs.false442 ], [ -1, %cond.end411 ]
  %arrayidx465 = getelementptr inbounds i16*** %96, i64 1
  %102 = load i16*** %arrayidx465, align 8, !tbaa !0
  %arrayidx466 = getelementptr inbounds i16** %102, i64 %idxprom419
  %103 = load i16** %arrayidx466, align 8, !tbaa !0
  %arrayidx467 = getelementptr inbounds i16* %103, i64 %idxprom416
  store i16 %cond456, i16* %arrayidx467, align 2, !tbaa !4
  br label %for.inc470

for.inc470:                                       ; preds = %if.then259, %cond.end455, %if.then356
  %.pre943953 = phi i16** [ %73, %if.then259 ], [ %97, %cond.end455 ], [ %87, %if.then356 ]
  %.pre942949 = phi i16*** [ %72, %if.then259 ], [ %96, %cond.end455 ], [ %86, %if.then356 ]
  %.pre933940 = phi i32 [ %68, %if.then259 ], [ %95, %cond.end455 ], [ %85, %if.then356 ]
  %.pre937 = phi i32 [ %67, %if.then259 ], [ %94, %cond.end455 ], [ %84, %if.then356 ]
  %inc471 = add nsw i32 %i.8850, 1
  %exitcond875 = icmp eq i32 %inc471, 4
  br i1 %exitcond875, label %for.inc473, label %for.body242

for.inc473:                                       ; preds = %for.inc470
  %inc474 = add nsw i32 %j.2852, 1
  %exitcond876 = icmp eq i32 %inc474, 4
  br i1 %exitcond876, label %for.cond547.preheader, label %for.cond239.preheader

for.cond481.preheader:                            ; preds = %for.inc542, %for.cond477.preheader
  %indvars.iv879 = phi i64 [ 0, %for.cond477.preheader ], [ %indvars.iv.next880, %for.inc542 ]
  %104 = trunc i64 %indvars.iv879 to i32
  %div485 = sdiv i32 %104, 2
  %mul486 = shl i32 %div485, 1
  %105 = add nsw i64 %63, %indvars.iv879
  br label %for.body484

for.body484:                                      ; preds = %cond.end526, %for.cond481.preheader
  %indvars.iv = phi i64 [ 0, %for.cond481.preheader ], [ %indvars.iv.next, %cond.end526 ]
  %106 = trunc i64 %indvars.iv to i32
  %div487 = sdiv i32 %106, 2
  %add488 = add nsw i32 %mul486, %div487
  %idxprom493 = sext i32 %add488 to i64
  %arrayidx496 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 %idxprom494, i64 %idxprom493
  %107 = load i16* %arrayidx496, align 2, !tbaa !4
  switch i16 %107, label %cond.end526 [
    i16 0, label %cond.true519
    i16 2, label %cond.true519
  ]

cond.true519:                                     ; preds = %for.body484, %for.body484
  %arrayidx523 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 %idxprom494, i64 %idxprom493
  %108 = load i16* %arrayidx523, align 2, !tbaa !4
  br label %cond.end526

cond.end526:                                      ; preds = %for.body484, %cond.true519
  %cond527 = phi i16 [ %108, %cond.true519 ], [ -1, %for.body484 ]
  %109 = add nsw i64 %62, %indvars.iv
  %arrayidx537 = getelementptr inbounds i16** %61, i64 %109
  %110 = load i16** %arrayidx537, align 8, !tbaa !0
  %arrayidx538 = getelementptr inbounds i16* %110, i64 %105
  store i16 %cond527, i16* %arrayidx538, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond878 = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond878, label %for.inc542, label %for.body484

for.inc542:                                       ; preds = %cond.end526
  %indvars.iv.next880 = add i64 %indvars.iv879, 1
  %lftr.wideiv882 = trunc i64 %indvars.iv.next880 to i32
  %exitcond883 = icmp eq i32 %lftr.wideiv882, 4
  br i1 %exitcond883, label %for.cond547.preheader, label %for.cond481.preheader

for.cond551.preheader:                            ; preds = %for.inc599, %for.cond547.preheader
  %j.4849 = phi i32 [ 0, %for.cond547.preheader ], [ %inc600, %for.inc599 ]
  br label %for.body554

for.body554:                                      ; preds = %cond.end585, %for.cond551.preheader
  %i.10848 = phi i32 [ 0, %for.cond551.preheader ], [ %inc597, %cond.end585 ]
  %add556 = add nsw i32 %.pre936, %j.4849
  %idxprom557 = sext i32 %add556 to i64
  %add559 = add nsw i32 %.pre933939, %i.10848
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx563 = getelementptr inbounds i16** %.pre943952, i64 %idxprom560
  %111 = load i16** %arrayidx563, align 8, !tbaa !0
  %arrayidx564 = getelementptr inbounds i16* %111, i64 %idxprom557
  %112 = load i16* %arrayidx564, align 2, !tbaa !4
  %cmp566 = icmp sgt i16 %112, -1
  br i1 %cmp566, label %cond.true568, label %cond.end585

cond.true568:                                     ; preds = %for.body554
  %idxprom579 = sext i16 %112 to i64
  %arrayidx583 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 6, i64 %idxprom581838, i64 %idxprom579
  %113 = load i64* %arrayidx583, align 8, !tbaa !5
  br label %cond.end585

cond.end585:                                      ; preds = %for.body554, %cond.true568
  %cond586 = phi i64 [ %113, %cond.true568 ], [ -1, %for.body554 ]
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 33
  %114 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %115 = load i64*** %114, align 8, !tbaa !0
  %arrayidx594 = getelementptr inbounds i64** %115, i64 %idxprom560
  %116 = load i64** %arrayidx594, align 8, !tbaa !0
  %arrayidx595 = getelementptr inbounds i64* %116, i64 %idxprom557
  store i64 %cond586, i64* %arrayidx595, align 8, !tbaa !5
  %inc597 = add nsw i32 %i.10848, 1
  %exitcond873 = icmp eq i32 %inc597, 4
  br i1 %exitcond873, label %for.inc599, label %for.body554

for.inc599:                                       ; preds = %cond.end585
  %inc600 = add nsw i32 %j.4849, 1
  %exitcond874 = icmp eq i32 %inc600, 4
  br i1 %exitcond874, label %for.end601, label %for.cond551.preheader

for.end601:                                       ; preds = %for.inc599
  br i1 %cmp, label %for.cond604.preheader, label %if.end661

for.cond604.preheader:                            ; preds = %for.end601
  %add637836 = or i32 %cond4, 1
  %idxprom638837 = zext i32 %add637836 to i64
  %arrayidx619.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16*** %.pre942948, i64 1
  %.pre947.pre = load i16*** %arrayidx619.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  br label %for.cond608.preheader

for.cond608.preheader:                            ; preds = %for.inc658, %for.cond604.preheader
  %j.5847 = phi i32 [ 0, %for.cond604.preheader ], [ %inc659, %for.inc658 ]
  br label %for.body611

for.body611:                                      ; preds = %cond.end643, %for.cond608.preheader
  %i.11846 = phi i32 [ 0, %for.cond608.preheader ], [ %inc656, %cond.end643 ]
  %add613 = add nsw i32 %.pre936, %j.5847
  %idxprom614 = sext i32 %add613 to i64
  %add616 = add nsw i32 %.pre933939, %i.11846
  %idxprom617 = sext i32 %add616 to i64
  %arrayidx620 = getelementptr inbounds i16** %.pre947.pre, i64 %idxprom617
  %117 = load i16** %arrayidx620, align 8, !tbaa !0
  %arrayidx621 = getelementptr inbounds i16* %117, i64 %idxprom614
  %118 = load i16* %arrayidx621, align 2, !tbaa !4
  %cmp623 = icmp sgt i16 %118, -1
  br i1 %cmp623, label %cond.true625, label %cond.end643

cond.true625:                                     ; preds = %for.body611
  %idxprom636 = sext i16 %118 to i64
  %arrayidx641 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 6, i64 %idxprom638837, i64 %idxprom636
  %119 = load i64* %arrayidx641, align 8, !tbaa !5
  br label %cond.end643

cond.end643:                                      ; preds = %for.body611, %cond.true625
  %cond644 = phi i64 [ %119, %cond.true625 ], [ -1, %for.body611 ]
  %arrayidx652 = getelementptr inbounds i64*** %114, i64 1
  %120 = load i64*** %arrayidx652, align 8, !tbaa !0
  %arrayidx653 = getelementptr inbounds i64** %120, i64 %idxprom617
  %121 = load i64** %arrayidx653, align 8, !tbaa !0
  %arrayidx654 = getelementptr inbounds i64* %121, i64 %idxprom614
  store i64 %cond644, i64* %arrayidx654, align 8, !tbaa !5
  %inc656 = add nsw i32 %i.11846, 1
  %exitcond = icmp eq i32 %inc656, 4
  br i1 %exitcond, label %for.inc658, label %for.body611

for.inc658:                                       ; preds = %cond.end643
  %inc659 = add nsw i32 %j.5847, 1
  %exitcond872 = icmp eq i32 %inc659, 4
  br i1 %exitcond872, label %if.end661, label %for.cond608.preheader

if.end661:                                        ; preds = %for.inc658, %for.end601
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize uwtable
define void @Intra16x16_Mode_Decision(%struct.macroblock* nocapture %currMB, i32* %i16mode) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  %3 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %4 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %5 = load i32* %pix_y, align 4, !tbaa !3
  %6 = load i16*** @imgY_org, align 8, !tbaa !0
  %7 = load i16**** @imgUV_org, align 8, !tbaa !0
  tail call void (...)* @intrapred_luma_16x16() #8
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 164
  %9 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %if.end, label %for.cond.preheader

if.end:                                           ; preds = %entry
  %call = tail call i32 @find_sad_16x16(i32* %i16mode) #8
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag1.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 164
  %.pre616 = load i32* %residue_transform_flag1.phi.trans.insert, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %.pre616, 0
  br i1 %tobool2, label %if.end90, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end
  %10 = phi %struct.ImageParameters* [ %.pre, %if.end ], [ %8, %entry ]
  %11 = load i16*** %7, align 8, !tbaa !0
  %idxprom15 = sext i32 %3 to i64
  %arrayidx40 = getelementptr inbounds i16*** %7, i64 1
  %12 = load i16*** %arrayidx40, align 8, !tbaa !0
  %13 = sext i32 %4 to i64
  %14 = sext i32 %5 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc87, %for.cond.preheader
  %indvars.iv611 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next612, %for.inc87 ]
  %15 = add nsw i64 %indvars.iv611, %14
  %arrayidx11 = getelementptr inbounds i16** %11, i64 %15
  %16 = load i16** %arrayidx11, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16** %6, i64 %15
  %17 = load i16** %arrayidx25, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i16** %12, i64 %15
  %18 = load i16** %arrayidx41, align 8, !tbaa !0
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv606 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next607, %for.body6 ]
  %19 = add nsw i64 %indvars.iv606, %13
  %arrayidx12 = getelementptr inbounds i16* %16, i64 %19
  %20 = load i16* %arrayidx12, align 2, !tbaa !4
  %conv = zext i16 %20 to i32
  %arrayidx19 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 44, i64 0, i64 %idxprom15, i64 %indvars.iv606, i64 %indvars.iv611
  %21 = load i16* %arrayidx19, align 2, !tbaa !4
  %conv20 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv, %conv20
  %arrayidx26 = getelementptr inbounds i16* %17, i64 %19
  %22 = load i16* %arrayidx26, align 2, !tbaa !4
  %conv27 = zext i16 %22 to i32
  %23 = load i32* %i16mode, align 4, !tbaa !3
  %idxprom30 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 42, i64 %idxprom30, i64 %indvars.iv611, i64 %indvars.iv606
  %24 = load i16* %arrayidx33, align 2, !tbaa !4
  %conv34 = zext i16 %24 to i32
  %sub35 = sub nsw i32 %conv27, %conv34
  %arrayidx42 = getelementptr inbounds i16* %18, i64 %19
  %25 = load i16* %arrayidx42, align 2, !tbaa !4
  %conv43 = zext i16 %25 to i32
  %arrayidx51 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 44, i64 1, i64 %idxprom15, i64 %indvars.iv606, i64 %indvars.iv611
  %26 = load i16* %arrayidx51, align 2, !tbaa !4
  %conv52 = zext i16 %26 to i32
  %sub53 = sub nsw i32 %conv43, %conv52
  %sub54 = sub i32 %sub53, %sub
  %arrayidx58 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv606, i64 %indvars.iv611
  store i32 %sub54, i32* %arrayidx58, align 4, !tbaa !3
  %shr = ashr i32 %sub54, 1
  %add63 = add nsw i32 %shr, %sub
  %sub64 = sub i32 %sub35, %add63
  %arrayidx68 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv606, i64 %indvars.iv611
  store i32 %sub64, i32* %arrayidx68, align 4, !tbaa !3
  %shr73 = ashr i32 %sub64, 1
  %add74 = add nsw i32 %shr73, %add63
  %arrayidx78 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv606, i64 %indvars.iv611
  store i32 %add74, i32* %arrayidx78, align 4, !tbaa !3
  %arrayidx86 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 46, i64 %indvars.iv606, i64 %indvars.iv611
  store i32 %add74, i32* %arrayidx86, align 4, !tbaa !3
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %lftr.wideiv609 = trunc i64 %indvars.iv.next607 to i32
  %exitcond610 = icmp eq i32 %lftr.wideiv609, 16
  br i1 %exitcond610, label %for.inc87, label %for.body6

for.inc87:                                        ; preds = %for.body6
  %indvars.iv.next612 = add i64 %indvars.iv611, 1
  %lftr.wideiv614 = trunc i64 %indvars.iv.next612 to i32
  %exitcond615 = icmp eq i32 %lftr.wideiv614, 16
  br i1 %exitcond615, label %if.end90, label %for.cond4.preheader

if.end90:                                         ; preds = %for.inc87, %if.end
  %27 = load i32* %i16mode, align 4, !tbaa !3
  %call91 = tail call i32 @dct_luma_16x16(i32 %27) #8
  %cbp = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 12
  store i32 %call91, i32* %cbp, align 4, !tbaa !3
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag92 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 164
  %29 = load i32* %residue_transform_flag92, align 4, !tbaa !3
  %tobool93 = icmp eq i32 %29, 0
  br i1 %tobool93, label %if.end420, label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %if.end90, %for.inc124
  %indvars.iv602 = phi i64 [ %indvars.iv.next603, %for.inc124 ], [ 0, %if.end90 ]
  br label %for.body102

for.body102:                                      ; preds = %for.body102, %for.cond99.preheader
  %indvars.iv598 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next599, %for.body102 ]
  %arrayidx107 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 46, i64 %indvars.iv598, i64 %indvars.iv602
  %30 = load i32* %arrayidx107, align 4, !tbaa !3
  %arrayidx111 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv598, i64 %indvars.iv602
  store i32 %30, i32* %arrayidx111, align 4, !tbaa !3
  %arrayidx115 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv598, i64 %indvars.iv602
  %31 = load i32* %arrayidx115, align 4, !tbaa !3
  store i32 %31, i32* %arrayidx107, align 4, !tbaa !3
  %indvars.iv.next599 = add i64 %indvars.iv598, 1
  %lftr.wideiv600 = trunc i64 %indvars.iv.next599 to i32
  %exitcond601 = icmp eq i32 %lftr.wideiv600, 16
  br i1 %exitcond601, label %for.inc124, label %for.body102

for.inc124:                                       ; preds = %for.body102
  %indvars.iv.next603 = add i64 %indvars.iv602, 1
  %lftr.wideiv604 = trunc i64 %indvars.iv.next603 to i32
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 16
  br i1 %exitcond605, label %for.end126, label %for.cond99.preheader

for.end126:                                       ; preds = %for.inc124
  %call127 = tail call i32 @dct_chroma(i32 0, i32 0) #8
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.inc157, %for.end126
  %indvars.iv594 = phi i64 [ 0, %for.end126 ], [ %indvars.iv.next595, %for.inc157 ]
  br label %for.body135

for.body135:                                      ; preds = %for.body135, %for.cond132.preheader
  %indvars.iv590 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next591, %for.body135 ]
  %arrayidx140 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 46, i64 %indvars.iv590, i64 %indvars.iv594
  %33 = load i32* %arrayidx140, align 4, !tbaa !3
  %arrayidx144 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv590, i64 %indvars.iv594
  store i32 %33, i32* %arrayidx144, align 4, !tbaa !3
  %arrayidx148 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv590, i64 %indvars.iv594
  %34 = load i32* %arrayidx148, align 4, !tbaa !3
  store i32 %34, i32* %arrayidx140, align 4, !tbaa !3
  %indvars.iv.next591 = add i64 %indvars.iv590, 1
  %lftr.wideiv592 = trunc i64 %indvars.iv.next591 to i32
  %exitcond593 = icmp eq i32 %lftr.wideiv592, 16
  br i1 %exitcond593, label %for.inc157, label %for.body135

for.inc157:                                       ; preds = %for.body135
  %indvars.iv.next595 = add i64 %indvars.iv594, 1
  %lftr.wideiv596 = trunc i64 %indvars.iv.next595 to i32
  %exitcond597 = icmp eq i32 %lftr.wideiv596, 16
  br i1 %exitcond597, label %for.end159, label %for.cond132.preheader

for.end159:                                       ; preds = %for.inc157
  %call160 = tail call i32 @dct_chroma(i32 1, i32 %call127) #8
  %35 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond165.preheader

for.cond165.preheader:                            ; preds = %for.inc181, %for.end159
  %indvars.iv586 = phi i64 [ 0, %for.end159 ], [ %indvars.iv.next587, %for.inc181 ]
  br label %for.body168

for.body168:                                      ; preds = %for.body168, %for.cond165.preheader
  %indvars.iv582 = phi i64 [ 0, %for.cond165.preheader ], [ %indvars.iv.next583, %for.body168 ]
  %arrayidx173 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 46, i64 %indvars.iv582, i64 %indvars.iv586
  %36 = load i32* %arrayidx173, align 4, !tbaa !3
  %arrayidx177 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv582, i64 %indvars.iv586
  store i32 %36, i32* %arrayidx177, align 4, !tbaa !3
  %indvars.iv.next583 = add i64 %indvars.iv582, 1
  %lftr.wideiv584 = trunc i64 %indvars.iv.next583 to i32
  %exitcond585 = icmp eq i32 %lftr.wideiv584, 16
  br i1 %exitcond585, label %for.inc181, label %for.body168

for.inc181:                                       ; preds = %for.body168
  %indvars.iv.next587 = add i64 %indvars.iv586, 1
  %lftr.wideiv588 = trunc i64 %indvars.iv.next587 to i32
  %exitcond589 = icmp eq i32 %lftr.wideiv588, 16
  br i1 %exitcond589, label %for.end183, label %for.cond165.preheader

for.end183:                                       ; preds = %for.inc181
  %shl = shl i32 %call160, 4
  %37 = load i32* %cbp, align 4, !tbaa !3
  %add185 = add nsw i32 %37, %shl
  store i32 %add185, i32* %cbp, align 4, !tbaa !3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 156
  %idxprom222 = sext i32 %3 to i64
  %38 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 30
  %39 = load i16**** %imgUV, align 8, !tbaa !0
  %40 = load i16*** %39, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 155
  %imgY = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 25
  %41 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx411 = getelementptr inbounds i16*** %39, i64 1
  %42 = load i16*** %arrayidx411, align 8, !tbaa !0
  %43 = sext i32 %4 to i64
  %44 = sext i32 %5 to i64
  %.pre617.pre = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %.pre618.pre = load i32* %max_imgpel_value, align 4, !tbaa !3
  %.pre619.pre = load i32* %i16mode, align 4, !tbaa !3
  br label %for.cond190.preheader

for.cond190.preheader:                            ; preds = %for.inc417, %for.end183
  %indvars.iv577 = phi i64 [ 0, %for.end183 ], [ %indvars.iv.next578, %for.inc417 ]
  %45 = add nsw i64 %indvars.iv577, %44
  %arrayidx281 = getelementptr inbounds i16** %40, i64 %45
  %46 = load i16** %arrayidx281, align 8, !tbaa !0
  %arrayidx343 = getelementptr inbounds i16** %41, i64 %45
  %47 = load i16** %arrayidx343, align 8, !tbaa !0
  %arrayidx412 = getelementptr inbounds i16** %42, i64 %45
  %48 = load i16** %arrayidx412, align 8, !tbaa !0
  br label %for.body193

for.body193:                                      ; preds = %for.body193, %for.cond190.preheader
  %indvars.iv = phi i64 [ 0, %for.cond190.preheader ], [ %indvars.iv.next, %for.body193 ]
  %arrayidx197 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv, i64 %indvars.iv577
  %49 = load i32* %arrayidx197, align 4, !tbaa !3
  %arrayidx201 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv, i64 %indvars.iv577
  %50 = load i32* %arrayidx201, align 4, !tbaa !3
  %shr202 = ashr i32 %50, 1
  %sub203 = sub nsw i32 %49, %shr202
  %add208 = add nsw i32 %sub203, %50
  %arrayidx212 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv, i64 %indvars.iv577
  %51 = load i32* %arrayidx212, align 4, !tbaa !3
  %shr213 = ashr i32 %51, 1
  %sub214 = sub nsw i32 %sub203, %shr213
  %add219 = add nsw i32 %sub214, %51
  %arrayidx227 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 44, i64 0, i64 %idxprom222, i64 %indvars.iv, i64 %indvars.iv577
  %52 = load i16* %arrayidx227, align 2, !tbaa !4
  %conv228 = zext i16 %52 to i32
  %add229 = add nsw i32 %conv228, %sub214
  %cmp230 = icmp slt i32 %add229, 0
  %.add229 = select i1 %cmp230, i32 0, i32 %add229
  %cmp242 = icmp slt i32 %.pre617.pre, %.add229
  %..add229 = select i1 %cmp242, i32 %.pre617.pre, i32 %.add229
  %conv275 = trunc i32 %..add229 to i16
  %53 = add nsw i64 %indvars.iv, %43
  %arrayidx282 = getelementptr inbounds i16* %46, i64 %53
  store i16 %conv275, i16* %arrayidx282, align 2, !tbaa !4
  %idxprom285 = sext i32 %.pre619.pre to i64
  %arrayidx289 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 42, i64 %idxprom285, i64 %indvars.iv577, i64 %indvars.iv
  %54 = load i16* %arrayidx289, align 2, !tbaa !4
  %conv290 = zext i16 %54 to i32
  %add291 = add nsw i32 %add208, %conv290
  %cmp292 = icmp slt i32 %add291, 0
  %.add291 = select i1 %cmp292, i32 0, i32 %add291
  %cmp307 = icmp slt i32 %.pre618.pre, %.add291
  %cond337 = select i1 %cmp307, i32 %.pre618.pre, i32 %.add291
  %conv338 = trunc i32 %cond337 to i16
  %arrayidx344 = getelementptr inbounds i16* %47, i64 %53
  store i16 %conv338, i16* %arrayidx344, align 2, !tbaa !4
  %arrayidx353 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 44, i64 1, i64 %idxprom222, i64 %indvars.iv, i64 %indvars.iv577
  %55 = load i16* %arrayidx353, align 2, !tbaa !4
  %conv354 = zext i16 %55 to i32
  %add355 = add nsw i32 %add219, %conv354
  %cmp356 = icmp slt i32 %add355, 0
  %.add355 = select i1 %cmp356, i32 0, i32 %add355
  %cmp372 = icmp slt i32 %.pre617.pre, %.add355
  %..add355 = select i1 %cmp372, i32 %.pre617.pre, i32 %.add355
  %conv405 = trunc i32 %..add355 to i16
  %arrayidx413 = getelementptr inbounds i16* %48, i64 %53
  store i16 %conv405, i16* %arrayidx413, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc417, label %for.body193

for.inc417:                                       ; preds = %for.body193
  %indvars.iv.next578 = add i64 %indvars.iv577, 1
  %lftr.wideiv580 = trunc i64 %indvars.iv.next578 to i32
  %exitcond581 = icmp eq i32 %lftr.wideiv580, 16
  br i1 %exitcond581, label %if.end420, label %for.cond190.preheader

if.end420:                                        ; preds = %for.inc417, %if.end90
  ret void
}

; Function Attrs: optsize
declare void @intrapred_luma_16x16(...) #1

; Function Attrs: optsize
declare i32 @find_sad_16x16(i32*) #1

; Function Attrs: optsize
declare i32 @dct_luma_16x16(i32) #1

; Function Attrs: optsize
declare i32 @dct_chroma(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @SetCoeffAndReconstruction8x8(%struct.macroblock* nocapture %currMB) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %2 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22
  %3 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %4 = load i32* %current_mb_nr, align 4, !tbaa !3
  %rem773 = shl i32 %4, 1
  %5 = and i32 %rem773, 2
  %6 = add i32 %5, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond3 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 32
  %7 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %tobool4 = icmp eq i32 %7, 0
  br i1 %tobool4, label %for.cond389.preheader, label %for.body

for.cond389.preheader:                            ; preds = %cond.end
  %num_blk8x8_uv784 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %8 = load i32* %num_blk8x8_uv784, align 4, !tbaa !3
  %add390785 = add nsw i32 %8, 4
  %cmp391786 = icmp sgt i32 %add390785, 0
  br i1 %cmp391786, label %for.cond394.preheader.lr.ph, label %for.end434

for.cond394.preheader.lr.ph:                      ; preds = %for.cond389.preheader
  %9 = load i32***** @cofAC8x8, align 8, !tbaa !0
  %cofAC418 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %10 = load i32***** %cofAC418, align 8, !tbaa !0
  br label %for.cond394.preheader

for.body:                                         ; preds = %cond.end, %for.body
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %for.body ], [ 0, %cond.end ]
  %arrayidx = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv910
  %11 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 14, i64 %indvars.iv910
  store i32 %11, i32* %arrayidx8, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv910
  %12 = load i16* %arrayidx10, align 2, !tbaa !4
  %conv11 = sext i16 %12 to i32
  %arrayidx13 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 15, i64 %indvars.iv910
  store i32 %conv11, i32* %arrayidx13, align 4, !tbaa !3
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  %lftr.wideiv912 = trunc i64 %indvars.iv.next911 to i32
  %exitcond913 = icmp eq i32 %lftr.wideiv912, 4
  br i1 %exitcond913, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %13 = load i32* %block_y, align 4, !tbaa !3
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %14 = load i32* %block_x, align 4, !tbaa !3
  %15 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 32
  %16 = load i16**** %ref_idx, align 8, !tbaa !0
  %17 = load i16*** %16, align 8, !tbaa !0
  br i1 %cmp, label %for.cond16.preheader, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.end
  %18 = sext i32 %14 to i64
  %19 = sext i32 %13 to i64
  br label %for.cond60.preheader

for.cond16.preheader:                             ; preds = %for.end
  %arrayidx47 = getelementptr inbounds i16*** %16, i64 1
  %20 = load i16*** %arrayidx47, align 8, !tbaa !0
  %21 = sext i32 %14 to i64
  %22 = sext i32 %13 to i64
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.inc53, %for.cond16.preheader
  %indvars.iv894 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next895, %for.inc53 ]
  %23 = trunc i64 %indvars.iv894 to i32
  %div = sdiv i32 %23, 2
  %mul = shl i32 %div, 1
  %24 = add nsw i64 %22, %indvars.iv894
  br label %for.body23

for.cond90.preheader:                             ; preds = %for.inc87, %for.inc53
  %idxprom124772 = zext i32 %cond3 to i64
  br label %for.cond94.preheader

for.body23:                                       ; preds = %for.body23, %for.cond20.preheader
  %indvars.iv888 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next889, %for.body23 ]
  %25 = trunc i64 %indvars.iv888 to i32
  %div24 = sdiv i32 %25, 2
  %add = add nsw i32 %mul, %div24
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %idxprom29
  %26 = load i16* %arrayidx30, align 2, !tbaa !4
  %27 = add nsw i64 %21, %indvars.iv888
  %arrayidx36 = getelementptr inbounds i16** %17, i64 %27
  %28 = load i16** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16* %28, i64 %24
  store i16 %26, i16* %arrayidx37, align 2, !tbaa !4
  %arrayidx39 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %idxprom29
  %29 = load i16* %arrayidx39, align 2, !tbaa !4
  %arrayidx48 = getelementptr inbounds i16** %20, i64 %27
  %30 = load i16** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16* %30, i64 %24
  store i16 %29, i16* %arrayidx49, align 2, !tbaa !4
  %indvars.iv.next889 = add i64 %indvars.iv888, 1
  %lftr.wideiv892 = trunc i64 %indvars.iv.next889 to i32
  %exitcond893 = icmp eq i32 %lftr.wideiv892, 4
  br i1 %exitcond893, label %for.inc53, label %for.body23

for.inc53:                                        ; preds = %for.body23
  %indvars.iv.next895 = add i64 %indvars.iv894, 1
  %lftr.wideiv898 = trunc i64 %indvars.iv.next895 to i32
  %exitcond899 = icmp eq i32 %lftr.wideiv898, 4
  br i1 %exitcond899, label %for.cond90.preheader, label %for.cond20.preheader

for.cond60.preheader:                             ; preds = %for.inc87, %for.cond56.preheader
  %indvars.iv905 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next906, %for.inc87 ]
  %31 = trunc i64 %indvars.iv905 to i32
  %div64 = sdiv i32 %31, 2
  %mul65 = shl i32 %div64, 1
  %32 = add nsw i64 %19, %indvars.iv905
  br label %for.body63

for.body63:                                       ; preds = %for.body63, %for.cond60.preheader
  %indvars.iv900 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next901, %for.body63 ]
  %33 = trunc i64 %indvars.iv900 to i32
  %div66 = sdiv i32 %33, 2
  %add67 = add nsw i32 %mul65, %div66
  %idxprom72 = sext i32 %add67 to i64
  %arrayidx73 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %idxprom72
  %34 = load i16* %arrayidx73, align 2, !tbaa !4
  %35 = add nsw i64 %18, %indvars.iv900
  %arrayidx82 = getelementptr inbounds i16** %17, i64 %35
  %36 = load i16** %arrayidx82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i16* %36, i64 %32
  store i16 %34, i16* %arrayidx83, align 2, !tbaa !4
  %indvars.iv.next901 = add i64 %indvars.iv900, 1
  %lftr.wideiv903 = trunc i64 %indvars.iv.next901 to i32
  %exitcond904 = icmp eq i32 %lftr.wideiv903, 4
  br i1 %exitcond904, label %for.inc87, label %for.body63

for.inc87:                                        ; preds = %for.body63
  %indvars.iv.next906 = add i64 %indvars.iv905, 1
  %lftr.wideiv908 = trunc i64 %indvars.iv.next906 to i32
  %exitcond909 = icmp eq i32 %lftr.wideiv908, 4
  br i1 %exitcond909, label %for.cond90.preheader, label %for.cond60.preheader

for.cond94.preheader:                             ; preds = %for.inc142, %for.cond90.preheader
  %j.2803 = phi i32 [ 0, %for.cond90.preheader ], [ %inc143, %for.inc142 ]
  br label %for.body97

for.body97:                                       ; preds = %cond.end128, %for.cond94.preheader
  %i.3802 = phi i32 [ 0, %for.cond94.preheader ], [ %inc140, %cond.end128 ]
  %add99 = add nsw i32 %13, %j.2803
  %idxprom100 = sext i32 %add99 to i64
  %add102 = add nsw i32 %14, %i.3802
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx106 = getelementptr inbounds i16** %17, i64 %idxprom103
  %37 = load i16** %arrayidx106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i16* %37, i64 %idxprom100
  %38 = load i16* %arrayidx107, align 2, !tbaa !4
  %cmp109 = icmp sgt i16 %38, -1
  br i1 %cmp109, label %cond.true111, label %cond.end128

cond.true111:                                     ; preds = %for.body97
  %idxprom122 = sext i16 %38 to i64
  %arrayidx126 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 6, i64 %idxprom124772, i64 %idxprom122
  %39 = load i64* %arrayidx126, align 8, !tbaa !5
  br label %cond.end128

cond.end128:                                      ; preds = %for.body97, %cond.true111
  %cond129 = phi i64 [ %39, %cond.true111 ], [ -1, %for.body97 ]
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 33
  %40 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %41 = load i64*** %40, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i64** %41, i64 %idxprom103
  %42 = load i64** %arrayidx137, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i64* %42, i64 %idxprom100
  store i64 %cond129, i64* %arrayidx138, align 8, !tbaa !5
  %inc140 = add nsw i32 %i.3802, 1
  %exitcond886 = icmp eq i32 %inc140, 4
  br i1 %exitcond886, label %for.inc142, label %for.body97

for.inc142:                                       ; preds = %cond.end128
  %inc143 = add nsw i32 %j.2803, 1
  %exitcond887 = icmp eq i32 %inc143, 4
  br i1 %exitcond887, label %for.end144, label %for.cond94.preheader

for.end144:                                       ; preds = %for.inc142
  br i1 %cmp, label %for.cond147.preheader, label %if.end204

for.cond147.preheader:                            ; preds = %for.end144
  %add180770 = or i32 %cond3, 1
  %idxprom181771 = zext i32 %add180770 to i64
  %arrayidx162.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16*** %16, i64 1
  %.pre927.pre = load i16*** %arrayidx162.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  br label %for.cond151.preheader

for.cond151.preheader:                            ; preds = %for.inc201, %for.cond147.preheader
  %j.3801 = phi i32 [ 0, %for.cond147.preheader ], [ %inc202, %for.inc201 ]
  br label %for.body154

for.body154:                                      ; preds = %cond.end186, %for.cond151.preheader
  %i.4800 = phi i32 [ 0, %for.cond151.preheader ], [ %inc199, %cond.end186 ]
  %add156 = add nsw i32 %13, %j.3801
  %idxprom157 = sext i32 %add156 to i64
  %add159 = add nsw i32 %14, %i.4800
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx163 = getelementptr inbounds i16** %.pre927.pre, i64 %idxprom160
  %43 = load i16** %arrayidx163, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds i16* %43, i64 %idxprom157
  %44 = load i16* %arrayidx164, align 2, !tbaa !4
  %cmp166 = icmp sgt i16 %44, -1
  br i1 %cmp166, label %cond.true168, label %cond.end186

cond.true168:                                     ; preds = %for.body154
  %idxprom179 = sext i16 %44 to i64
  %arrayidx184 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 6, i64 %idxprom181771, i64 %idxprom179
  %45 = load i64* %arrayidx184, align 8, !tbaa !5
  br label %cond.end186

cond.end186:                                      ; preds = %for.body154, %cond.true168
  %cond187 = phi i64 [ %45, %cond.true168 ], [ -1, %for.body154 ]
  %arrayidx195 = getelementptr inbounds i64*** %40, i64 1
  %46 = load i64*** %arrayidx195, align 8, !tbaa !0
  %arrayidx196 = getelementptr inbounds i64** %46, i64 %idxprom160
  %47 = load i64** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i64* %47, i64 %idxprom157
  store i64 %cond187, i64* %arrayidx197, align 8, !tbaa !5
  %inc199 = add nsw i32 %i.4800, 1
  %exitcond884 = icmp eq i32 %inc199, 4
  br i1 %exitcond884, label %for.inc201, label %for.body154

for.inc201:                                       ; preds = %cond.end186
  %inc202 = add nsw i32 %j.3801, 1
  %exitcond885 = icmp eq i32 %inc202, 4
  br i1 %exitcond885, label %if.end204, label %for.cond151.preheader

if.end204:                                        ; preds = %for.inc201, %for.end144
  tail call void @StoreMV8x8(i32 1) #10
  tail call void @RestoreMV8x8(i32 0) #10
  %48 = load i32***** @cofAC_8x8ts, align 8, !tbaa !0
  %49 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 47
  %50 = load i32***** %cofAC, align 8, !tbaa !0
  br label %for.cond209.preheader

for.cond209.preheader:                            ; preds = %for.inc246, %if.end204
  %indvars.iv880 = phi i64 [ 0, %if.end204 ], [ %indvars.iv.next881, %for.inc246 ]
  %arrayidx225 = getelementptr inbounds i32**** %48, i64 %indvars.iv880
  %51 = load i32**** %arrayidx225, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32**** %50, i64 %indvars.iv880
  %52 = load i32**** %arrayidx233, align 8, !tbaa !0
  br label %for.cond213.preheader

for.cond213.preheader:                            ; preds = %for.inc243, %for.cond209.preheader
  %indvars.iv876 = phi i64 [ 0, %for.cond209.preheader ], [ %indvars.iv.next877, %for.inc243 ]
  %arrayidx226 = getelementptr inbounds i32*** %51, i64 %indvars.iv876
  %53 = load i32*** %arrayidx226, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i32*** %52, i64 %indvars.iv876
  %54 = load i32*** %arrayidx234, align 8, !tbaa !0
  br label %for.cond217.preheader

for.cond217.preheader:                            ; preds = %for.inc240, %for.cond213.preheader
  %indvars.iv872 = phi i64 [ 0, %for.cond213.preheader ], [ %indvars.iv.next873, %for.inc240 ]
  %arrayidx227 = getelementptr inbounds i32** %53, i64 %indvars.iv872
  %55 = load i32** %arrayidx227, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i32** %54, i64 %indvars.iv872
  %56 = load i32** %arrayidx235, align 8, !tbaa !0
  br label %for.body220

for.body220:                                      ; preds = %for.body220, %for.cond217.preheader
  %indvars.iv868 = phi i64 [ 0, %for.cond217.preheader ], [ %indvars.iv.next869, %for.body220 ]
  %arrayidx228 = getelementptr inbounds i32* %55, i64 %indvars.iv868
  %57 = load i32* %arrayidx228, align 4, !tbaa !3
  %arrayidx236 = getelementptr inbounds i32* %56, i64 %indvars.iv868
  store i32 %57, i32* %arrayidx236, align 4, !tbaa !3
  %indvars.iv.next869 = add i64 %indvars.iv868, 1
  %lftr.wideiv870 = trunc i64 %indvars.iv.next869 to i32
  %exitcond871 = icmp eq i32 %lftr.wideiv870, 65
  br i1 %exitcond871, label %for.inc240, label %for.body220

for.inc240:                                       ; preds = %for.body220
  %indvars.iv.next873 = add i64 %indvars.iv872, 1
  %lftr.wideiv874 = trunc i64 %indvars.iv.next873 to i32
  %exitcond875 = icmp eq i32 %lftr.wideiv874, 2
  br i1 %exitcond875, label %for.inc243, label %for.cond217.preheader

for.inc243:                                       ; preds = %for.inc240
  %indvars.iv.next877 = add i64 %indvars.iv876, 1
  %lftr.wideiv878 = trunc i64 %indvars.iv.next877 to i32
  %exitcond879 = icmp eq i32 %lftr.wideiv878, 4
  br i1 %exitcond879, label %for.inc246, label %for.cond213.preheader

for.inc246:                                       ; preds = %for.inc243
  %indvars.iv.next881 = add i64 %indvars.iv880, 1
  %lftr.wideiv882 = trunc i64 %indvars.iv.next881 to i32
  %exitcond883 = icmp eq i32 %lftr.wideiv882, 4
  br i1 %exitcond883, label %for.end248, label %for.cond209.preheader

for.end248:                                       ; preds = %for.inc246
  %58 = load i32* @cnt_nonz8_8x8ts, align 4, !tbaa !3
  %cmp249 = icmp slt i32 %58, 6
  br i1 %cmp249, label %land.lhs.true251, label %if.else290

land.lhs.true251:                                 ; preds = %for.end248
  %qp = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 10
  %59 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 151
  %60 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add252 = sub i32 0, %60
  %cmp253 = icmp eq i32 %59, %add252
  br i1 %cmp253, label %lor.lhs.false, label %if.then257

lor.lhs.false:                                    ; preds = %land.lhs.true251
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 160
  %61 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp255 = icmp eq i32 %61, 0
  br i1 %cmp255, label %if.then257, label %if.else290

if.then257:                                       ; preds = %land.lhs.true251, %lor.lhs.false
  %cbp = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 12
  store i32 0, i32* %cbp, align 4, !tbaa !3
  %cbp_blk = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 13
  store i64 0, i64* %cbp_blk, align 8, !tbaa !5
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 164
  %pix_x = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 34
  %62 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %62, i64 0, i32 25
  br label %for.cond262.preheader

for.cond262.preheader:                            ; preds = %for.inc287, %if.then257
  %indvars.iv856 = phi i64 [ 0, %if.then257 ], [ %indvars.iv.next857, %for.inc287 ]
  br label %for.body265

for.body265:                                      ; preds = %for.inc284, %for.cond262.preheader
  %indvars.iv852 = phi i64 [ 0, %for.cond262.preheader ], [ %indvars.iv.next853, %for.inc284 ]
  %63 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool266 = icmp eq i32 %63, 0
  br i1 %tobool266, label %if.then267, label %if.else278

if.then267:                                       ; preds = %for.body265
  %arrayidx271 = getelementptr inbounds [16 x [16 x i16]]* @mpr_8x8ts, i64 0, i64 %indvars.iv856, i64 %indvars.iv852
  %64 = load i16* %arrayidx271, align 2, !tbaa !4
  %65 = load i32* %pix_x, align 4, !tbaa !3
  %66 = trunc i64 %indvars.iv852 to i32
  %add272 = add nsw i32 %65, %66
  %idxprom273 = sext i32 %add272 to i64
  %67 = load i32* %pix_y, align 4, !tbaa !3
  %68 = trunc i64 %indvars.iv856 to i32
  %add274 = add nsw i32 %67, %68
  %idxprom275 = sext i32 %add274 to i64
  %69 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i16** %69, i64 %idxprom275
  %70 = load i16** %arrayidx276, align 8, !tbaa !0
  %arrayidx277 = getelementptr inbounds i16* %70, i64 %idxprom273
  store i16 %64, i16* %arrayidx277, align 2, !tbaa !4
  br label %for.inc284

if.else278:                                       ; preds = %for.body265
  %arrayidx282 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv852, i64 %indvars.iv856
  store i32 0, i32* %arrayidx282, align 4, !tbaa !3
  br label %for.inc284

for.inc284:                                       ; preds = %if.then267, %if.else278
  %indvars.iv.next853 = add i64 %indvars.iv852, 1
  %lftr.wideiv854 = trunc i64 %indvars.iv.next853 to i32
  %exitcond855 = icmp eq i32 %lftr.wideiv854, 16
  br i1 %exitcond855, label %for.inc287, label %for.body265

for.inc287:                                       ; preds = %for.inc284
  %indvars.iv.next857 = add i64 %indvars.iv856, 1
  %lftr.wideiv858 = trunc i64 %indvars.iv.next857 to i32
  %exitcond859 = icmp eq i32 %lftr.wideiv858, 16
  br i1 %exitcond859, label %for.cond338.preheader, label %for.cond262.preheader

if.else290:                                       ; preds = %lor.lhs.false, %for.end248
  %71 = load i32* @cbp8_8x8ts, align 4, !tbaa !3
  %cbp291 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 12
  store i32 %71, i32* %cbp291, align 4, !tbaa !3
  %72 = load i64* @cbp_blk8_8x8ts, align 8, !tbaa !5
  %cbp_blk292 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 13
  store i64 %72, i64* %cbp_blk292, align 8, !tbaa !5
  %residue_transform_flag301 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 164
  %pix_x308 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 33
  %pix_y311 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 34
  %73 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY314 = getelementptr inbounds %struct.storable_picture* %73, i64 0, i32 25
  br label %for.cond297.preheader

for.cond297.preheader:                            ; preds = %for.inc330, %if.else290
  %indvars.iv864 = phi i64 [ 0, %if.else290 ], [ %indvars.iv.next865, %for.inc330 ]
  br label %for.body300

for.body300:                                      ; preds = %for.inc327, %for.cond297.preheader
  %indvars.iv860 = phi i64 [ 0, %for.cond297.preheader ], [ %indvars.iv.next861, %for.inc327 ]
  %74 = load i32* %residue_transform_flag301, align 4, !tbaa !3
  %tobool302 = icmp eq i32 %74, 0
  br i1 %tobool302, label %if.then303, label %if.else317

if.then303:                                       ; preds = %for.body300
  %arrayidx307 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY_8x8ts, i64 0, i64 %indvars.iv864, i64 %indvars.iv860
  %75 = load i16* %arrayidx307, align 2, !tbaa !4
  %76 = load i32* %pix_x308, align 4, !tbaa !3
  %77 = trunc i64 %indvars.iv860 to i32
  %add309 = add nsw i32 %76, %77
  %idxprom310 = sext i32 %add309 to i64
  %78 = load i32* %pix_y311, align 4, !tbaa !3
  %79 = trunc i64 %indvars.iv864 to i32
  %add312 = add nsw i32 %78, %79
  %idxprom313 = sext i32 %add312 to i64
  %80 = load i16*** %imgY314, align 8, !tbaa !0
  %arrayidx315 = getelementptr inbounds i16** %80, i64 %idxprom313
  %81 = load i16** %arrayidx315, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i16* %81, i64 %idxprom310
  store i16 %75, i16* %arrayidx316, align 2, !tbaa !4
  br label %for.inc327

if.else317:                                       ; preds = %for.body300
  %arrayidx321 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8ts, i64 0, i64 %indvars.iv860, i64 %indvars.iv864
  %82 = load i32* %arrayidx321, align 4, !tbaa !3
  %arrayidx325 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv860, i64 %indvars.iv864
  store i32 %82, i32* %arrayidx325, align 4, !tbaa !3
  br label %for.inc327

for.inc327:                                       ; preds = %if.then303, %if.else317
  %indvars.iv.next861 = add i64 %indvars.iv860, 1
  %lftr.wideiv862 = trunc i64 %indvars.iv.next861 to i32
  %exitcond863 = icmp eq i32 %lftr.wideiv862, 16
  br i1 %exitcond863, label %for.inc330, label %for.body300

for.inc330:                                       ; preds = %for.inc327
  %indvars.iv.next865 = add i64 %indvars.iv864, 1
  %lftr.wideiv866 = trunc i64 %indvars.iv.next865 to i32
  %exitcond867 = icmp eq i32 %lftr.wideiv866, 16
  br i1 %exitcond867, label %for.cond338.preheader, label %for.cond297.preheader

for.cond338.preheader:                            ; preds = %for.inc287, %for.inc330, %for.inc385
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %for.inc385 ], [ 0, %for.inc330 ], [ 0, %for.inc287 ]
  br label %for.body341

for.body341:                                      ; preds = %for.body341, %for.cond338.preheader
  %indvars.iv844 = phi i64 [ 0, %for.cond338.preheader ], [ %indvars.iv.next845, %for.body341 ]
  %arrayidx345 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  %83 = load i32* %arrayidx345, align 4, !tbaa !3
  %arrayidx349 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  store i32 %83, i32* %arrayidx349, align 4, !tbaa !3
  %arrayidx353 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 1, i64 %indvars.iv844, i64 %indvars.iv848
  %84 = load i32* %arrayidx353, align 4, !tbaa !3
  %arrayidx357 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv844, i64 %indvars.iv848
  store i32 %84, i32* %arrayidx357, align 4, !tbaa !3
  %arrayidx361 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 2, i64 %indvars.iv844, i64 %indvars.iv848
  %85 = load i32* %arrayidx361, align 4, !tbaa !3
  %arrayidx365 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv844, i64 %indvars.iv848
  store i32 %85, i32* %arrayidx365, align 4, !tbaa !3
  %arrayidx369 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8ts, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  %86 = load i32* %arrayidx369, align 4, !tbaa !3
  %arrayidx373 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  store i32 %86, i32* %arrayidx373, align 4, !tbaa !3
  %arrayidx377 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8ts, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  %87 = load i32* %arrayidx377, align 4, !tbaa !3
  %arrayidx381 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv844, i64 %indvars.iv848
  store i32 %87, i32* %arrayidx381, align 4, !tbaa !3
  %indvars.iv.next845 = add i64 %indvars.iv844, 1
  %lftr.wideiv846 = trunc i64 %indvars.iv.next845 to i32
  %exitcond847 = icmp eq i32 %lftr.wideiv846, 16
  br i1 %exitcond847, label %for.inc385, label %for.body341

for.inc385:                                       ; preds = %for.body341
  %indvars.iv.next849 = add i64 %indvars.iv848, 1
  %lftr.wideiv850 = trunc i64 %indvars.iv.next849 to i32
  %exitcond851 = icmp eq i32 %lftr.wideiv850, 16
  br i1 %exitcond851, label %if.end589, label %for.cond338.preheader

for.cond394.preheader:                            ; preds = %for.cond394.preheader.lr.ph, %for.inc432
  %indvars.iv842 = phi i64 [ 0, %for.cond394.preheader.lr.ph ], [ %indvars.iv.next843, %for.inc432 ]
  %arrayidx410 = getelementptr inbounds i32**** %9, i64 %indvars.iv842
  %88 = load i32**** %arrayidx410, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i32**** %10, i64 %indvars.iv842
  %89 = load i32**** %arrayidx419, align 8, !tbaa !0
  br label %for.cond398.preheader

for.cond398.preheader:                            ; preds = %for.inc429, %for.cond394.preheader
  %indvars.iv838 = phi i64 [ 0, %for.cond394.preheader ], [ %indvars.iv.next839, %for.inc429 ]
  %arrayidx411 = getelementptr inbounds i32*** %88, i64 %indvars.iv838
  %90 = load i32*** %arrayidx411, align 8, !tbaa !0
  %arrayidx420 = getelementptr inbounds i32*** %89, i64 %indvars.iv838
  %91 = load i32*** %arrayidx420, align 8, !tbaa !0
  br label %for.cond402.preheader

for.cond402.preheader:                            ; preds = %for.inc426, %for.cond398.preheader
  %indvars.iv834 = phi i64 [ 0, %for.cond398.preheader ], [ %indvars.iv.next835, %for.inc426 ]
  %arrayidx412 = getelementptr inbounds i32** %90, i64 %indvars.iv834
  %92 = load i32** %arrayidx412, align 8, !tbaa !0
  %arrayidx421 = getelementptr inbounds i32** %91, i64 %indvars.iv834
  %93 = load i32** %arrayidx421, align 8, !tbaa !0
  br label %for.body405

for.body405:                                      ; preds = %for.body405, %for.cond402.preheader
  %indvars.iv830 = phi i64 [ 0, %for.cond402.preheader ], [ %indvars.iv.next831, %for.body405 ]
  %arrayidx413 = getelementptr inbounds i32* %92, i64 %indvars.iv830
  %94 = load i32* %arrayidx413, align 4, !tbaa !3
  %arrayidx422 = getelementptr inbounds i32* %93, i64 %indvars.iv830
  store i32 %94, i32* %arrayidx422, align 4, !tbaa !3
  %indvars.iv.next831 = add i64 %indvars.iv830, 1
  %lftr.wideiv832 = trunc i64 %indvars.iv.next831 to i32
  %exitcond833 = icmp eq i32 %lftr.wideiv832, 65
  br i1 %exitcond833, label %for.inc426, label %for.body405

for.inc426:                                       ; preds = %for.body405
  %indvars.iv.next835 = add i64 %indvars.iv834, 1
  %lftr.wideiv836 = trunc i64 %indvars.iv.next835 to i32
  %exitcond837 = icmp eq i32 %lftr.wideiv836, 2
  br i1 %exitcond837, label %for.inc429, label %for.cond402.preheader

for.inc429:                                       ; preds = %for.inc426
  %indvars.iv.next839 = add i64 %indvars.iv838, 1
  %lftr.wideiv840 = trunc i64 %indvars.iv.next839 to i32
  %exitcond841 = icmp eq i32 %lftr.wideiv840, 4
  br i1 %exitcond841, label %for.inc432, label %for.cond398.preheader

for.inc432:                                       ; preds = %for.inc429
  %indvars.iv.next843 = add i64 %indvars.iv842, 1
  %95 = load i32* %num_blk8x8_uv784, align 4, !tbaa !3
  %96 = add nsw i32 %95, 3
  %97 = trunc i64 %indvars.iv842 to i32
  %cmp391 = icmp slt i32 %97, %96
  br i1 %cmp391, label %for.cond394.preheader, label %for.end434

for.end434:                                       ; preds = %for.inc432, %for.cond389.preheader
  %98 = load i32* @cnt_nonz_8x8, align 4, !tbaa !3
  %cmp435 = icmp slt i32 %98, 6
  br i1 %cmp435, label %land.lhs.true437, label %if.else490

land.lhs.true437:                                 ; preds = %for.end434
  %99 = load i32* %type, align 4, !tbaa !3
  %cmp439 = icmp eq i32 %99, 3
  br i1 %cmp439, label %if.else490, label %land.lhs.true441

land.lhs.true441:                                 ; preds = %land.lhs.true437
  %qp442 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 10
  %100 = load i32* %qp442, align 4, !tbaa !3
  %bitdepth_luma_qp_scale443 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 151
  %101 = load i32* %bitdepth_luma_qp_scale443, align 4, !tbaa !3
  %add444 = sub i32 0, %101
  %cmp445 = icmp eq i32 %100, %add444
  br i1 %cmp445, label %lor.lhs.false447, label %if.then451

lor.lhs.false447:                                 ; preds = %land.lhs.true441
  %lossless_qpprime_flag448 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 160
  %102 = load i32* %lossless_qpprime_flag448, align 4, !tbaa !3
  %cmp449 = icmp eq i32 %102, 0
  br i1 %cmp449, label %if.then451, label %if.else490

if.then451:                                       ; preds = %land.lhs.true441, %lor.lhs.false447
  %cbp452 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 12
  store i32 0, i32* %cbp452, align 4, !tbaa !3
  %cbp_blk453 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 13
  store i64 0, i64* %cbp_blk453, align 8, !tbaa !5
  %residue_transform_flag462 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 164
  %pix_x469 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %pix_y472 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %103 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY475 = getelementptr inbounds %struct.storable_picture* %103, i64 0, i32 25
  br label %for.cond458.preheader

for.cond458.preheader:                            ; preds = %for.inc487, %if.then451
  %indvars.iv826 = phi i64 [ 0, %if.then451 ], [ %indvars.iv.next827, %for.inc487 ]
  br label %for.body461

for.body461:                                      ; preds = %for.inc484, %for.cond458.preheader
  %indvars.iv822 = phi i64 [ 0, %for.cond458.preheader ], [ %indvars.iv.next823, %for.inc484 ]
  %104 = load i32* %residue_transform_flag462, align 4, !tbaa !3
  %tobool463 = icmp eq i32 %104, 0
  br i1 %tobool463, label %if.then464, label %if.else478

if.then464:                                       ; preds = %for.body461
  %arrayidx468 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %indvars.iv826, i64 %indvars.iv822
  %105 = load i16* %arrayidx468, align 2, !tbaa !4
  %106 = load i32* %pix_x469, align 4, !tbaa !3
  %107 = trunc i64 %indvars.iv822 to i32
  %add470 = add nsw i32 %106, %107
  %idxprom471 = sext i32 %add470 to i64
  %108 = load i32* %pix_y472, align 4, !tbaa !3
  %109 = trunc i64 %indvars.iv826 to i32
  %add473 = add nsw i32 %108, %109
  %idxprom474 = sext i32 %add473 to i64
  %110 = load i16*** %imgY475, align 8, !tbaa !0
  %arrayidx476 = getelementptr inbounds i16** %110, i64 %idxprom474
  %111 = load i16** %arrayidx476, align 8, !tbaa !0
  %arrayidx477 = getelementptr inbounds i16* %111, i64 %idxprom471
  store i16 %105, i16* %arrayidx477, align 2, !tbaa !4
  br label %for.inc484

if.else478:                                       ; preds = %for.body461
  %arrayidx482 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv822, i64 %indvars.iv826
  store i32 0, i32* %arrayidx482, align 4, !tbaa !3
  br label %for.inc484

for.inc484:                                       ; preds = %if.then464, %if.else478
  %indvars.iv.next823 = add i64 %indvars.iv822, 1
  %lftr.wideiv824 = trunc i64 %indvars.iv.next823 to i32
  %exitcond825 = icmp eq i32 %lftr.wideiv824, 16
  br i1 %exitcond825, label %for.inc487, label %for.body461

for.inc487:                                       ; preds = %for.inc484
  %indvars.iv.next827 = add i64 %indvars.iv826, 1
  %lftr.wideiv828 = trunc i64 %indvars.iv.next827 to i32
  %exitcond829 = icmp eq i32 %lftr.wideiv828, 16
  br i1 %exitcond829, label %for.cond539.preheader, label %for.cond458.preheader

if.else490:                                       ; preds = %land.lhs.true437, %lor.lhs.false447, %for.end434
  %112 = load i32* @cbp8x8, align 4, !tbaa !3
  %cbp491 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 12
  store i32 %112, i32* %cbp491, align 4, !tbaa !3
  %113 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %conv492 = sext i32 %113 to i64
  %cbp_blk493 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 13
  store i64 %conv492, i64* %cbp_blk493, align 8, !tbaa !5
  %residue_transform_flag502 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 164
  %pix_x509 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %pix_y512 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %114 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY515 = getelementptr inbounds %struct.storable_picture* %114, i64 0, i32 25
  br label %for.cond498.preheader

for.cond498.preheader:                            ; preds = %for.inc531, %if.else490
  %indvars.iv818 = phi i64 [ 0, %if.else490 ], [ %indvars.iv.next819, %for.inc531 ]
  br label %for.body501

for.body501:                                      ; preds = %for.inc528, %for.cond498.preheader
  %indvars.iv814 = phi i64 [ 0, %for.cond498.preheader ], [ %indvars.iv.next815, %for.inc528 ]
  %115 = load i32* %residue_transform_flag502, align 4, !tbaa !3
  %tobool503 = icmp eq i32 %115, 0
  br i1 %tobool503, label %if.then504, label %if.else518

if.then504:                                       ; preds = %for.body501
  %arrayidx508 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY8x8, i64 0, i64 %indvars.iv818, i64 %indvars.iv814
  %116 = load i16* %arrayidx508, align 2, !tbaa !4
  %117 = load i32* %pix_x509, align 4, !tbaa !3
  %118 = trunc i64 %indvars.iv814 to i32
  %add510 = add nsw i32 %117, %118
  %idxprom511 = sext i32 %add510 to i64
  %119 = load i32* %pix_y512, align 4, !tbaa !3
  %120 = trunc i64 %indvars.iv818 to i32
  %add513 = add nsw i32 %119, %120
  %idxprom514 = sext i32 %add513 to i64
  %121 = load i16*** %imgY515, align 8, !tbaa !0
  %arrayidx516 = getelementptr inbounds i16** %121, i64 %idxprom514
  %122 = load i16** %arrayidx516, align 8, !tbaa !0
  %arrayidx517 = getelementptr inbounds i16* %122, i64 %idxprom511
  store i16 %116, i16* %arrayidx517, align 2, !tbaa !4
  br label %for.inc528

if.else518:                                       ; preds = %for.body501
  %arrayidx522 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8, i64 0, i64 %indvars.iv814, i64 %indvars.iv818
  %123 = load i32* %arrayidx522, align 4, !tbaa !3
  %arrayidx526 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv814, i64 %indvars.iv818
  store i32 %123, i32* %arrayidx526, align 4, !tbaa !3
  br label %for.inc528

for.inc528:                                       ; preds = %if.then504, %if.else518
  %indvars.iv.next815 = add i64 %indvars.iv814, 1
  %lftr.wideiv816 = trunc i64 %indvars.iv.next815 to i32
  %exitcond817 = icmp eq i32 %lftr.wideiv816, 16
  br i1 %exitcond817, label %for.inc531, label %for.body501

for.inc531:                                       ; preds = %for.inc528
  %indvars.iv.next819 = add i64 %indvars.iv818, 1
  %lftr.wideiv820 = trunc i64 %indvars.iv.next819 to i32
  %exitcond821 = icmp eq i32 %lftr.wideiv820, 16
  br i1 %exitcond821, label %for.cond539.preheader, label %for.cond498.preheader

for.cond539.preheader:                            ; preds = %for.inc531, %for.inc487, %for.inc586
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %for.inc586 ], [ 0, %for.inc487 ], [ 0, %for.inc531 ]
  br label %for.body542

for.body542:                                      ; preds = %for.body542, %for.cond539.preheader
  %indvars.iv = phi i64 [ 0, %for.cond539.preheader ], [ %indvars.iv.next, %for.body542 ]
  %arrayidx546 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  %124 = load i32* %arrayidx546, align 4, !tbaa !3
  %arrayidx550 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  store i32 %124, i32* %arrayidx550, align 4, !tbaa !3
  %arrayidx554 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 1, i64 %indvars.iv, i64 %indvars.iv810
  %125 = load i32* %arrayidx554, align 4, !tbaa !3
  %arrayidx558 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv, i64 %indvars.iv810
  store i32 %125, i32* %arrayidx558, align 4, !tbaa !3
  %arrayidx562 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 2, i64 %indvars.iv, i64 %indvars.iv810
  %126 = load i32* %arrayidx562, align 4, !tbaa !3
  %arrayidx566 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv, i64 %indvars.iv810
  store i32 %126, i32* %arrayidx566, align 4, !tbaa !3
  %arrayidx570 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  %127 = load i32* %arrayidx570, align 4, !tbaa !3
  %arrayidx574 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  store i32 %127, i32* %arrayidx574, align 4, !tbaa !3
  %arrayidx578 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  %128 = load i32* %arrayidx578, align 4, !tbaa !3
  %arrayidx582 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv, i64 %indvars.iv810
  store i32 %128, i32* %arrayidx582, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc586, label %for.body542

for.inc586:                                       ; preds = %for.body542
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  %lftr.wideiv812 = trunc i64 %indvars.iv.next811 to i32
  %exitcond813 = icmp eq i32 %lftr.wideiv812, 16
  br i1 %exitcond813, label %if.end589, label %for.cond539.preheader

if.end589:                                        ; preds = %for.inc385, %for.inc586
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @StoreMV8x8(i32 %dir) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %indvars.iv
  %3 = load i16* %arrayidx4, align 2, !tbaa !4
  %conv5 = sext i16 %3 to i32
  %arrayidx7 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %indvars.iv
  %4 = load i16* %arrayidx7, align 2, !tbaa !4
  %conv8 = sext i16 %4 to i32
  %arrayidx10 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv
  %5 = load i16* %arrayidx10, align 2, !tbaa !4
  %conv11 = sext i16 %5 to i32
  %6 = trunc i64 %indvars.iv to i32
  tail call void @StoreMVBlock8x8(i32 %dir, i32 %6, i32 %2, i32 %conv5, i32 %conv8, i32 %conv11, i32 %conv) #10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @RestoreMV8x8(i32 %dir) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %indvars.iv
  %3 = load i16* %arrayidx4, align 2, !tbaa !4
  %conv5 = sext i16 %3 to i32
  %arrayidx7 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %indvars.iv
  %4 = load i16* %arrayidx7, align 2, !tbaa !4
  %conv8 = sext i16 %4 to i32
  %arrayidx10 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv
  %5 = load i16* %arrayidx10, align 2, !tbaa !4
  %conv11 = sext i16 %5 to i32
  %6 = trunc i64 %indvars.iv to i32
  tail call void @RestoreMVBlock8x8(i32 %dir, i32 %6, i32 %2, i32 %conv5, i32 %conv8, i32 %conv11, i32 %conv) #10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SetMotionVectorsMB(%struct.macroblock* nocapture %currMB, i32 %bframe) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv1, align 8, !tbaa !0
  %pred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  %2 = load i16******* %pred_mv2, align 8, !tbaa !0
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 34
  %mb_type = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 8
  %tobool37 = icmp eq i32 %bframe, 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc304, %entry
  %indvars.iv621 = phi i64 [ 0, %entry ], [ %indvars.iv.next622, %for.inc304 ]
  %all_mv.0602 = phi i16****** [ %1, %entry ], [ %all_mv.2, %for.inc304 ]
  %3 = trunc i64 %indvars.iv621 to i32
  %div = sdiv i32 %3, 2
  %mul = shl i32 %div, 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %for.cond3.preheader
  %indvars.iv617 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next618, %for.inc ]
  %all_mv.1599 = phi i16****** [ %all_mv.0602, %for.cond3.preheader ], [ %all_mv.2, %for.inc ]
  %4 = trunc i64 %indvars.iv617 to i32
  %div6 = sdiv i32 %4, 2
  %add = add nsw i32 %mul, %div6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 14, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 32
  %7 = load i32* %block_y, align 4, !tbaa !3
  %add10 = add nsw i32 %7, %3
  %block_x = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 31
  %8 = load i32* %block_x, align 4, !tbaa !3
  %add11 = add nsw i32 %8, %4
  %arrayidx16 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 15, i64 %idxprom
  %9 = load i32* %arrayidx16, align 4, !tbaa !3
  %idxprom17 = sext i32 %add10 to i64
  %idxprom18 = sext i32 %add11 to i64
  %10 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 32
  %11 = load i16**** %ref_idx, align 8, !tbaa !0
  %12 = load i16*** %11, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i16** %12, i64 %idxprom18
  %13 = load i16** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i16* %13, i64 %idxprom17
  %14 = load i16* %arrayidx21, align 2, !tbaa !4
  %conv = sext i16 %14 to i32
  %arrayidx25 = getelementptr inbounds i16*** %11, i64 1
  %15 = load i16*** %arrayidx25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i16** %15, i64 %idxprom18
  %16 = load i16** %arrayidx26, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i16* %16, i64 %idxprom17
  %17 = load i16* %arrayidx27, align 2, !tbaa !4
  %conv28 = sext i16 %17 to i32
  %18 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool = icmp ne i32 %18, 0
  %cmp29 = icmp eq i32 %9, 2
  %or.cond = and i1 %tobool, %cmp29
  br i1 %or.cond, label %land.lhs.true31, label %if.end

land.lhs.true31:                                  ; preds = %for.body5
  %19 = load i32* %mb_type, align 4, !tbaa !3
  %cmp32 = icmp eq i32 %19, 1
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true31
  %cmp35 = icmp eq i32 %18, 1
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 73
  %cond.in = select i1 %cmp35, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond = load i16******* %cond.in, align 8
  br label %if.end

if.end:                                           ; preds = %for.body5, %if.then, %land.lhs.true31
  %ref.0 = phi i32 [ 0, %if.then ], [ %conv, %land.lhs.true31 ], [ %conv, %for.body5 ]
  %all_mv.2 = phi i16****** [ %cond, %if.then ], [ %all_mv.1599, %land.lhs.true31 ], [ %all_mv.1599, %for.body5 ]
  %bw_ref.0 = phi i32 [ 0, %if.then ], [ %conv28, %land.lhs.true31 ], [ %conv28, %for.body5 ]
  br i1 %tobool37, label %if.then38, label %if.else90

if.then38:                                        ; preds = %if.end
  %cmp39 = icmp sgt i32 %9, -1
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then38
  %idxprom42 = sext i32 %5 to i64
  %idxprom43 = sext i32 %ref.0 to i64
  %arrayidx46 = getelementptr inbounds i16****** %all_mv.2, i64 %indvars.iv617
  %20 = load i16****** %arrayidx46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i16***** %20, i64 %indvars.iv621
  %21 = load i16***** %arrayidx47, align 8, !tbaa !0
  %22 = load i16**** %21, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16*** %22, i64 %idxprom43
  %23 = load i16*** %arrayidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i16** %23, i64 %idxprom42
  %24 = load i16** %arrayidx50, align 8, !tbaa !0
  %25 = load i16* %24, align 2, !tbaa !4
  %mv = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %26 = load i16***** %mv, align 8, !tbaa !0
  %27 = load i16**** %26, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i16*** %27, i64 %idxprom18
  %28 = load i16*** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i16** %28, i64 %idxprom17
  %29 = load i16** %arrayidx56, align 8, !tbaa !0
  store i16 %25, i16* %29, align 2, !tbaa !4
  %arrayidx67 = getelementptr inbounds i16* %24, i64 1
  %30 = load i16* %arrayidx67, align 2, !tbaa !4
  %arrayidx74 = getelementptr inbounds i16* %29, i64 1
  store i16 %30, i16* %arrayidx74, align 2, !tbaa !4
  br label %for.inc

if.else:                                          ; preds = %if.then38
  %mv77 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %31 = load i16***** %mv77, align 8, !tbaa !0
  %32 = load i16**** %31, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16*** %32, i64 %idxprom18
  %33 = load i16*** %arrayidx79, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i16** %33, i64 %idxprom17
  %34 = load i16** %arrayidx80, align 8, !tbaa !0
  store i16 0, i16* %34, align 2, !tbaa !4
  %arrayidx88 = getelementptr inbounds i16* %34, i64 1
  store i16 0, i16* %arrayidx88, align 2, !tbaa !4
  br label %for.inc

if.else90:                                        ; preds = %if.end
  switch i32 %9, label %if.else298 [
    i32 -1, label %if.then93
    i32 0, label %if.then125
    i32 1, label %if.then177
    i32 2, label %if.then229
  ]

if.then93:                                        ; preds = %if.else90
  %mv96 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %35 = load i16***** %mv96, align 8, !tbaa !0
  %36 = load i16**** %35, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i16*** %36, i64 %idxprom18
  %37 = load i16*** %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i16** %37, i64 %idxprom17
  %38 = load i16** %arrayidx99, align 8, !tbaa !0
  store i16 0, i16* %38, align 2, !tbaa !4
  %arrayidx107 = getelementptr inbounds i16* %38, i64 1
  store i16 0, i16* %arrayidx107, align 2, !tbaa !4
  %arrayidx111 = getelementptr inbounds i16**** %35, i64 1
  %39 = load i16**** %arrayidx111, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i16*** %39, i64 %idxprom18
  %40 = load i16*** %arrayidx112, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i16** %40, i64 %idxprom17
  %41 = load i16** %arrayidx113, align 8, !tbaa !0
  store i16 0, i16* %41, align 2, !tbaa !4
  %arrayidx121 = getelementptr inbounds i16* %41, i64 1
  store i16 0, i16* %arrayidx121, align 2, !tbaa !4
  br label %for.inc

if.then125:                                       ; preds = %if.else90
  %idxprom126 = sext i32 %5 to i64
  %idxprom127 = sext i32 %ref.0 to i64
  %arrayidx130 = getelementptr inbounds i16****** %all_mv.2, i64 %indvars.iv617
  %42 = load i16****** %arrayidx130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i16***** %42, i64 %indvars.iv621
  %43 = load i16***** %arrayidx131, align 8, !tbaa !0
  %44 = load i16**** %43, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i16*** %44, i64 %idxprom127
  %45 = load i16*** %arrayidx133, align 8, !tbaa !0
  %arrayidx134 = getelementptr inbounds i16** %45, i64 %idxprom126
  %46 = load i16** %arrayidx134, align 8, !tbaa !0
  %47 = load i16* %46, align 2, !tbaa !4
  %mv138 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %48 = load i16***** %mv138, align 8, !tbaa !0
  %49 = load i16**** %48, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i16*** %49, i64 %idxprom18
  %50 = load i16*** %arrayidx140, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i16** %50, i64 %idxprom17
  %51 = load i16** %arrayidx141, align 8, !tbaa !0
  store i16 %47, i16* %51, align 2, !tbaa !4
  %arrayidx152 = getelementptr inbounds i16* %46, i64 1
  %52 = load i16* %arrayidx152, align 2, !tbaa !4
  %arrayidx159 = getelementptr inbounds i16* %51, i64 1
  store i16 %52, i16* %arrayidx159, align 2, !tbaa !4
  %arrayidx163 = getelementptr inbounds i16**** %48, i64 1
  %53 = load i16**** %arrayidx163, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds i16*** %53, i64 %idxprom18
  %54 = load i16*** %arrayidx164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i16** %54, i64 %idxprom17
  %55 = load i16** %arrayidx165, align 8, !tbaa !0
  store i16 0, i16* %55, align 2, !tbaa !4
  %arrayidx173 = getelementptr inbounds i16* %55, i64 1
  store i16 0, i16* %arrayidx173, align 2, !tbaa !4
  br label %for.inc

if.then177:                                       ; preds = %if.else90
  %mv180 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %56 = load i16***** %mv180, align 8, !tbaa !0
  %57 = load i16**** %56, align 8, !tbaa !0
  %arrayidx182 = getelementptr inbounds i16*** %57, i64 %idxprom18
  %58 = load i16*** %arrayidx182, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i16** %58, i64 %idxprom17
  %59 = load i16** %arrayidx183, align 8, !tbaa !0
  store i16 0, i16* %59, align 2, !tbaa !4
  %arrayidx191 = getelementptr inbounds i16* %59, i64 1
  store i16 0, i16* %arrayidx191, align 2, !tbaa !4
  %idxprom192 = sext i32 %5 to i64
  %idxprom193 = sext i32 %bw_ref.0 to i64
  %arrayidx196 = getelementptr inbounds i16****** %all_mv.2, i64 %indvars.iv617
  %60 = load i16****** %arrayidx196, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i16***** %60, i64 %indvars.iv621
  %61 = load i16***** %arrayidx197, align 8, !tbaa !0
  %arrayidx198 = getelementptr inbounds i16**** %61, i64 1
  %62 = load i16**** %arrayidx198, align 8, !tbaa !0
  %arrayidx199 = getelementptr inbounds i16*** %62, i64 %idxprom193
  %63 = load i16*** %arrayidx199, align 8, !tbaa !0
  %arrayidx200 = getelementptr inbounds i16** %63, i64 %idxprom192
  %64 = load i16** %arrayidx200, align 8, !tbaa !0
  %65 = load i16* %64, align 2, !tbaa !4
  %arrayidx205 = getelementptr inbounds i16**** %56, i64 1
  %66 = load i16**** %arrayidx205, align 8, !tbaa !0
  %arrayidx206 = getelementptr inbounds i16*** %66, i64 %idxprom18
  %67 = load i16*** %arrayidx206, align 8, !tbaa !0
  %arrayidx207 = getelementptr inbounds i16** %67, i64 %idxprom17
  %68 = load i16** %arrayidx207, align 8, !tbaa !0
  store i16 %65, i16* %68, align 2, !tbaa !4
  %arrayidx218 = getelementptr inbounds i16* %64, i64 1
  %69 = load i16* %arrayidx218, align 2, !tbaa !4
  %arrayidx225 = getelementptr inbounds i16* %68, i64 1
  store i16 %69, i16* %arrayidx225, align 2, !tbaa !4
  br label %for.inc

if.then229:                                       ; preds = %if.else90
  %idxprom230 = sext i32 %5 to i64
  %idxprom231 = sext i32 %ref.0 to i64
  %arrayidx234 = getelementptr inbounds i16****** %all_mv.2, i64 %indvars.iv617
  %70 = load i16****** %arrayidx234, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i16***** %70, i64 %indvars.iv621
  %71 = load i16***** %arrayidx235, align 8, !tbaa !0
  %72 = load i16**** %71, align 8, !tbaa !0
  %arrayidx237 = getelementptr inbounds i16*** %72, i64 %idxprom231
  %73 = load i16*** %arrayidx237, align 8, !tbaa !0
  %arrayidx238 = getelementptr inbounds i16** %73, i64 %idxprom230
  %74 = load i16** %arrayidx238, align 8, !tbaa !0
  %75 = load i16* %74, align 2, !tbaa !4
  %mv242 = getelementptr inbounds %struct.storable_picture* %10, i64 0, i32 35
  %76 = load i16***** %mv242, align 8, !tbaa !0
  %77 = load i16**** %76, align 8, !tbaa !0
  %arrayidx244 = getelementptr inbounds i16*** %77, i64 %idxprom18
  %78 = load i16*** %arrayidx244, align 8, !tbaa !0
  %arrayidx245 = getelementptr inbounds i16** %78, i64 %idxprom17
  %79 = load i16** %arrayidx245, align 8, !tbaa !0
  store i16 %75, i16* %79, align 2, !tbaa !4
  %arrayidx256 = getelementptr inbounds i16* %74, i64 1
  %80 = load i16* %arrayidx256, align 2, !tbaa !4
  %arrayidx263 = getelementptr inbounds i16* %79, i64 1
  store i16 %80, i16* %arrayidx263, align 2, !tbaa !4
  %idxprom265 = sext i32 %bw_ref.0 to i64
  %arrayidx270 = getelementptr inbounds i16**** %71, i64 1
  %81 = load i16**** %arrayidx270, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i16*** %81, i64 %idxprom265
  %82 = load i16*** %arrayidx271, align 8, !tbaa !0
  %arrayidx272 = getelementptr inbounds i16** %82, i64 %idxprom230
  %83 = load i16** %arrayidx272, align 8, !tbaa !0
  %84 = load i16* %83, align 2, !tbaa !4
  %arrayidx277 = getelementptr inbounds i16**** %76, i64 1
  %85 = load i16**** %arrayidx277, align 8, !tbaa !0
  %arrayidx278 = getelementptr inbounds i16*** %85, i64 %idxprom18
  %86 = load i16*** %arrayidx278, align 8, !tbaa !0
  %arrayidx279 = getelementptr inbounds i16** %86, i64 %idxprom17
  %87 = load i16** %arrayidx279, align 8, !tbaa !0
  store i16 %84, i16* %87, align 2, !tbaa !4
  %arrayidx290 = getelementptr inbounds i16* %83, i64 1
  %88 = load i16* %arrayidx290, align 2, !tbaa !4
  %arrayidx297 = getelementptr inbounds i16* %87, i64 1
  store i16 %88, i16* %arrayidx297, align 2, !tbaa !4
  br label %for.inc

if.else298:                                       ; preds = %if.else90
  tail call void @error(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 255) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then41, %if.then125, %if.then229, %if.else298, %if.then177, %if.then93
  %indvars.iv.next618 = add i64 %indvars.iv617, 1
  %lftr.wideiv619 = trunc i64 %indvars.iv.next618 to i32
  %exitcond620 = icmp eq i32 %lftr.wideiv619, 4
  br i1 %exitcond620, label %for.inc304, label %for.body5

for.inc304:                                       ; preds = %for.inc
  %indvars.iv.next622 = add i64 %indvars.iv621, 1
  %lftr.wideiv623 = trunc i64 %indvars.iv.next622 to i32
  %exitcond624 = icmp eq i32 %lftr.wideiv623, 4
  br i1 %exitcond624, label %for.end306, label %for.cond3.preheader

for.end306:                                       ; preds = %for.inc304
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 90
  %90 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool307 = icmp eq i32 %90, 0
  br i1 %tobool307, label %if.end436, label %for.cond309.preheader

for.cond309.preheader:                            ; preds = %for.end306
  %max_num_references593 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 9
  %91 = load i32* %max_num_references593, align 4, !tbaa !3
  %cmp322594 = icmp sgt i32 %91, 0
  %92 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %all_mv345 = getelementptr inbounds %struct.RD_DATA* %92, i64 0, i32 16
  %pred_mv368 = getelementptr inbounds %struct.RD_DATA* %92, i64 0, i32 15
  br label %for.cond313.preheader

for.cond313.preheader:                            ; preds = %for.inc433, %for.cond309.preheader
  %indvars.iv613 = phi i64 [ 0, %for.cond309.preheader ], [ %indvars.iv.next614, %for.inc433 ]
  %arrayidx334 = getelementptr inbounds i16****** %all_mv.2, i64 %indvars.iv613
  %arrayidx357 = getelementptr inbounds i16****** %2, i64 %indvars.iv613
  br label %for.cond317.preheader

for.cond317.preheader:                            ; preds = %for.inc430, %for.cond313.preheader
  %indvars.iv609 = phi i64 [ 0, %for.cond313.preheader ], [ %indvars.iv.next610, %for.inc430 ]
  br label %for.cond321.preheader

for.cond321.preheader:                            ; preds = %for.inc427, %for.cond317.preheader
  %indvars.iv605 = phi i64 [ 0, %for.cond317.preheader ], [ %indvars.iv.next606, %for.inc427 ]
  br i1 %cmp322594, label %for.cond325.preheader.lr.ph, label %for.inc427

for.cond325.preheader.lr.ph:                      ; preds = %for.cond321.preheader
  %93 = load i16****** %arrayidx334, align 8, !tbaa !0
  %arrayidx335 = getelementptr inbounds i16***** %93, i64 %indvars.iv609
  %94 = load i16***** %arrayidx335, align 8, !tbaa !0
  %arrayidx336 = getelementptr inbounds i16**** %94, i64 %indvars.iv605
  %95 = load i16**** %arrayidx336, align 8, !tbaa !0
  %96 = load i16******* %all_mv345, align 8, !tbaa !0
  %arrayidx346 = getelementptr inbounds i16****** %96, i64 %indvars.iv613
  %97 = load i16****** %arrayidx346, align 8, !tbaa !0
  %arrayidx347 = getelementptr inbounds i16***** %97, i64 %indvars.iv609
  %98 = load i16***** %arrayidx347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds i16**** %98, i64 %indvars.iv605
  %99 = load i16**** %arrayidx348, align 8, !tbaa !0
  %100 = load i16****** %arrayidx357, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds i16***** %100, i64 %indvars.iv609
  %101 = load i16***** %arrayidx358, align 8, !tbaa !0
  %arrayidx359 = getelementptr inbounds i16**** %101, i64 %indvars.iv605
  %102 = load i16**** %arrayidx359, align 8, !tbaa !0
  %103 = load i16******* %pred_mv368, align 8, !tbaa !0
  %arrayidx369 = getelementptr inbounds i16****** %103, i64 %indvars.iv613
  %104 = load i16****** %arrayidx369, align 8, !tbaa !0
  %arrayidx370 = getelementptr inbounds i16***** %104, i64 %indvars.iv609
  %105 = load i16***** %arrayidx370, align 8, !tbaa !0
  %arrayidx371 = getelementptr inbounds i16**** %105, i64 %indvars.iv605
  %106 = load i16**** %arrayidx371, align 8, !tbaa !0
  br label %for.cond325.preheader

for.cond325.preheader:                            ; preds = %for.cond325.preheader.lr.ph, %for.inc424
  %indvars.iv603 = phi i64 [ 0, %for.cond325.preheader.lr.ph ], [ %indvars.iv.next604, %for.inc424 ]
  %arrayidx337 = getelementptr inbounds i16*** %95, i64 %indvars.iv603
  %107 = load i16*** %arrayidx337, align 8, !tbaa !0
  %arrayidx349 = getelementptr inbounds i16*** %99, i64 %indvars.iv603
  %108 = load i16*** %arrayidx349, align 8, !tbaa !0
  %arrayidx360 = getelementptr inbounds i16*** %102, i64 %indvars.iv603
  %109 = load i16*** %arrayidx360, align 8, !tbaa !0
  %arrayidx372 = getelementptr inbounds i16*** %106, i64 %indvars.iv603
  %110 = load i16*** %arrayidx372, align 8, !tbaa !0
  br label %for.body328

for.body328:                                      ; preds = %for.body328, %for.cond325.preheader
  %indvars.iv = phi i64 [ 0, %for.cond325.preheader ], [ %indvars.iv.next, %for.body328 ]
  %arrayidx338 = getelementptr inbounds i16** %107, i64 %indvars.iv
  %111 = load i16** %arrayidx338, align 8, !tbaa !0
  %112 = load i16* %111, align 2, !tbaa !4
  %arrayidx350 = getelementptr inbounds i16** %108, i64 %indvars.iv
  %113 = load i16** %arrayidx350, align 8, !tbaa !0
  store i16 %112, i16* %113, align 2, !tbaa !4
  %arrayidx361 = getelementptr inbounds i16** %109, i64 %indvars.iv
  %114 = load i16** %arrayidx361, align 8, !tbaa !0
  %115 = load i16* %114, align 2, !tbaa !4
  %arrayidx373 = getelementptr inbounds i16** %110, i64 %indvars.iv
  %116 = load i16** %arrayidx373, align 8, !tbaa !0
  store i16 %115, i16* %116, align 2, !tbaa !4
  %arrayidx385 = getelementptr inbounds i16* %111, i64 1
  %117 = load i16* %arrayidx385, align 2, !tbaa !4
  %arrayidx397 = getelementptr inbounds i16* %113, i64 1
  store i16 %117, i16* %arrayidx397, align 2, !tbaa !4
  %arrayidx408 = getelementptr inbounds i16* %114, i64 1
  %118 = load i16* %arrayidx408, align 2, !tbaa !4
  %arrayidx420 = getelementptr inbounds i16* %116, i64 1
  store i16 %118, i16* %arrayidx420, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.inc424, label %for.body328

for.inc424:                                       ; preds = %for.body328
  %indvars.iv.next604 = add i64 %indvars.iv603, 1
  %119 = trunc i64 %indvars.iv.next604 to i32
  %cmp322 = icmp slt i32 %119, %91
  br i1 %cmp322, label %for.cond325.preheader, label %for.inc427

for.inc427:                                       ; preds = %for.inc424, %for.cond321.preheader
  %indvars.iv.next606 = add i64 %indvars.iv605, 1
  %lftr.wideiv607 = trunc i64 %indvars.iv.next606 to i32
  %exitcond608 = icmp eq i32 %lftr.wideiv607, 2
  br i1 %exitcond608, label %for.inc430, label %for.cond321.preheader

for.inc430:                                       ; preds = %for.inc427
  %indvars.iv.next610 = add i64 %indvars.iv609, 1
  %lftr.wideiv611 = trunc i64 %indvars.iv.next610 to i32
  %exitcond612 = icmp eq i32 %lftr.wideiv611, 4
  br i1 %exitcond612, label %for.inc433, label %for.cond317.preheader

for.inc433:                                       ; preds = %for.inc430
  %indvars.iv.next614 = add i64 %indvars.iv613, 1
  %lftr.wideiv615 = trunc i64 %indvars.iv.next614 to i32
  %exitcond616 = icmp eq i32 %lftr.wideiv615, 4
  br i1 %exitcond616, label %if.end436, label %for.cond313.preheader

if.end436:                                        ; preds = %for.inc433, %for.end306
  ret void
}

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @RDCost_for_macroblocks(double %lambda, i32 %mode, double* nocapture %min_rdcost, i32 %i16mode) #0 {
entry:
  %i16mode.addr = alloca i32, align 4
  %rate = alloca i32, align 4
  %cc_rate = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i32 %i16mode, i32* %i16mode.addr, align 4, !tbaa !3
  store i32 0, i32* %rate, align 4, !tbaa !3
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
  %idxprom3 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom3
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.macroblock* [ %arrayidx5, %cond.true ], [ null, %entry ]
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 1
  %cmp7 = icmp eq i32 %3, 2
  br i1 %cmp7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.end
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 59
  %5 = load i32* %symbol_mode, align 4, !tbaa !3
  %cmp9 = icmp ne i32 %5, 1
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.rhs
  %6 = phi i1 [ false, %cond.end ], [ %cmp9, %land.rhs ]
  call void @SetModesAndRefframeForBlocks(i32 %mode) #10
  %cmp12 = icmp eq i32 %mode, 0
  %or.cond = and i1 %cmp, %cmp12
  br i1 %or.cond, label %if.then, label %if.end33

if.then:                                          ; preds = %land.end
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 33
  %8 = load i32* %pix_x, align 4, !tbaa !3
  %shr = ashr i32 %8, 2
  %pix_y = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 34
  %9 = load i32* %pix_y, align 4, !tbaa !3
  %shr14 = ashr i32 %9, 2
  %10 = load i16*** @direct_pdir, align 8, !tbaa !0
  %11 = sext i32 %shr14 to i64
  %12 = sext i32 %shr to i64
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.then, %for.inc30
  %indvars.iv717 = phi i64 [ 0, %if.then ], [ %indvars.iv.next718, %for.inc30 ]
  %13 = add nsw i64 %indvars.iv717, %12
  %arrayidx24 = getelementptr inbounds i16** %10, i64 %13
  %14 = load i16** %arrayidx24, align 8, !tbaa !0
  br label %for.body20

for.cond17:                                       ; preds = %for.body20
  %15 = trunc i64 %indvars.iv.next715 to i32
  %cmp18 = icmp slt i32 %15, 4
  br i1 %cmp18, label %for.body20, label %for.inc30

for.body20:                                       ; preds = %for.cond17.preheader, %for.cond17
  %indvars.iv714 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next715, %for.cond17 ]
  %16 = add nsw i64 %indvars.iv714, %11
  %arrayidx25 = getelementptr inbounds i16* %14, i64 %16
  %17 = load i16* %arrayidx25, align 2, !tbaa !4
  %cmp27 = icmp slt i16 %17, 0
  %indvars.iv.next715 = add i64 %indvars.iv714, 1
  br i1 %cmp27, label %return, label %for.cond17

for.inc30:                                        ; preds = %for.cond17
  %indvars.iv.next718 = add i64 %indvars.iv717, 1
  %18 = trunc i64 %indvars.iv.next718 to i32
  %cmp15 = icmp slt i32 %18, 4
  br i1 %cmp15, label %for.cond17.preheader, label %if.end33

if.end33:                                         ; preds = %for.inc30, %land.end
  %cmp34 = icmp slt i32 %mode, 8
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  call void (...)* @LumaResidualCoding() #8
  br i1 %cmp12, label %land.lhs.true39, label %if.end157

land.lhs.true39:                                  ; preds = %if.then36
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %19 = load i32* %cbp, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %19, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.end157

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %20 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %cmp43 = icmp eq i32 %20, 1
  br i1 %cmp43, label %return, label %if.end157

if.else:                                          ; preds = %if.end33
  switch i32 %mode, label %if.end157 [
    i32 8, label %if.then49
    i32 9, label %if.then53
    i32 10, label %if.then101
    i32 13, label %if.then105
  ]

if.then49:                                        ; preds = %if.else
  call void @SetCoeffAndReconstruction8x8(%struct.macroblock* %arrayidx) #10
  br label %if.end157

if.then53:                                        ; preds = %if.else
  %call = call i32 @Mode_Decision_for_Intra4x4Macroblock(double %lambda, i32* %dummy) #10
  %cbp54 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  store i32 %call, i32* %cbp54, align 4, !tbaa !3
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 164
  %22 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool55 = icmp eq i32 %22, 0
  br i1 %tobool55, label %if.end157, label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %if.then53, %for.inc84
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %for.inc84 ], [ 0, %if.then53 ]
  %cr_cbp.0653 = phi i32 [ %cr_cbp.2., %for.inc84 ], [ 0, %if.then53 ]
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.inc81, %for.cond61.preheader
  %indvars.iv693 = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next694, %for.inc81 ]
  %cr_cbp.1652 = phi i32 [ %cr_cbp.0653, %for.cond61.preheader ], [ %cr_cbp.2., %for.inc81 ]
  br label %for.body68

for.body68:                                       ; preds = %for.body68, %for.cond65.preheader
  %indvars.iv689 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next690, %for.body68 ]
  %cr_cbp.2650 = phi i32 [ %cr_cbp.1652, %for.cond65.preheader ], [ %cr_cbp.2., %for.body68 ]
  %arrayidx74 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv697, i64 %indvars.iv693, i64 %indvars.iv689
  %23 = load i32* %arrayidx74, align 4, !tbaa !3
  %tobool75 = icmp eq i32 %23, 0
  %cr_cbp.2. = select i1 %tobool75, i32 %cr_cbp.2650, i32 2
  %indvars.iv.next690 = add i64 %indvars.iv689, 1
  %lftr.wideiv691 = trunc i64 %indvars.iv.next690 to i32
  %exitcond692 = icmp eq i32 %lftr.wideiv691, 4
  br i1 %exitcond692, label %for.inc81, label %for.body68

for.inc81:                                        ; preds = %for.body68
  %indvars.iv.next694 = add i64 %indvars.iv693, 1
  %lftr.wideiv695 = trunc i64 %indvars.iv.next694 to i32
  %exitcond696 = icmp eq i32 %lftr.wideiv695, 4
  br i1 %exitcond696, label %for.inc84, label %for.cond65.preheader

for.inc84:                                        ; preds = %for.inc81
  %indvars.iv.next698 = add i64 %indvars.iv697, 1
  %lftr.wideiv699 = trunc i64 %indvars.iv.next698 to i32
  %exitcond700 = icmp eq i32 %lftr.wideiv699, 2
  br i1 %exitcond700, label %for.body90, label %for.cond61.preheader

for.body90:                                       ; preds = %for.inc84, %for.body90
  %uv.0648 = phi i32 [ %inc93, %for.body90 ], [ 0, %for.inc84 ]
  %cr_cbp.4647 = phi i32 [ %call91, %for.body90 ], [ %cr_cbp.2., %for.inc84 ]
  %call91 = call i32 @dct_chroma_DC(i32 %uv.0648, i32 %cr_cbp.4647) #8
  %inc93 = add nsw i32 %uv.0648, 1
  %exitcond688 = icmp eq i32 %inc93, 2
  br i1 %exitcond688, label %for.end94, label %for.body90

for.end94:                                        ; preds = %for.body90
  %shl = shl i32 %call91, 4
  %24 = load i32* %cbp54, align 4, !tbaa !3
  %add96 = add nsw i32 %24, %shl
  store i32 %add96, i32* %cbp54, align 4, !tbaa !3
  br label %if.end157

if.then101:                                       ; preds = %if.else
  call void @Intra16x16_Mode_Decision(%struct.macroblock* %arrayidx, i32* %i16mode.addr) #10
  br label %if.end157

if.then105:                                       ; preds = %if.else
  %call106 = call i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %lambda, i32* %dummy) #8
  %cbp107 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  store i32 %call106, i32* %cbp107, align 4, !tbaa !3
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag108 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 164
  %26 = load i32* %residue_transform_flag108, align 4, !tbaa !3
  %tobool109 = icmp eq i32 %26, 0
  br i1 %tobool109, label %if.end157, label %for.cond115.preheader

for.cond115.preheader:                            ; preds = %if.then105, %for.inc138
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %for.inc138 ], [ 0, %if.then105 ]
  %cr_cbp.5661 = phi i32 [ %cr_cbp.7., %for.inc138 ], [ 0, %if.then105 ]
  br label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.inc135, %for.cond115.preheader
  %indvars.iv706 = phi i64 [ 0, %for.cond115.preheader ], [ %indvars.iv.next707, %for.inc135 ]
  %cr_cbp.6660 = phi i32 [ %cr_cbp.5661, %for.cond115.preheader ], [ %cr_cbp.7., %for.inc135 ]
  br label %for.body122

for.body122:                                      ; preds = %for.body122, %for.cond119.preheader
  %indvars.iv702 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv.next703, %for.body122 ]
  %cr_cbp.7658 = phi i32 [ %cr_cbp.6660, %for.cond119.preheader ], [ %cr_cbp.7., %for.body122 ]
  %arrayidx128 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv710, i64 %indvars.iv706, i64 %indvars.iv702
  %27 = load i32* %arrayidx128, align 4, !tbaa !3
  %tobool129 = icmp eq i32 %27, 0
  %cr_cbp.7. = select i1 %tobool129, i32 %cr_cbp.7658, i32 2
  %indvars.iv.next703 = add i64 %indvars.iv702, 1
  %lftr.wideiv704 = trunc i64 %indvars.iv.next703 to i32
  %exitcond705 = icmp eq i32 %lftr.wideiv704, 4
  br i1 %exitcond705, label %for.inc135, label %for.body122

for.inc135:                                       ; preds = %for.body122
  %indvars.iv.next707 = add i64 %indvars.iv706, 1
  %lftr.wideiv708 = trunc i64 %indvars.iv.next707 to i32
  %exitcond709 = icmp eq i32 %lftr.wideiv708, 4
  br i1 %exitcond709, label %for.inc138, label %for.cond119.preheader

for.inc138:                                       ; preds = %for.inc135
  %indvars.iv.next711 = add i64 %indvars.iv710, 1
  %lftr.wideiv712 = trunc i64 %indvars.iv.next711 to i32
  %exitcond713 = icmp eq i32 %lftr.wideiv712, 2
  br i1 %exitcond713, label %for.body144, label %for.cond115.preheader

for.body144:                                      ; preds = %for.inc138, %for.body144
  %uv.1656 = phi i32 [ %inc147, %for.body144 ], [ 0, %for.inc138 ]
  %cr_cbp.9655 = phi i32 [ %call145, %for.body144 ], [ %cr_cbp.7., %for.inc138 ]
  %call145 = call i32 @dct_chroma_DC(i32 %uv.1656, i32 %cr_cbp.9655) #8
  %inc147 = add nsw i32 %uv.1656, 1
  %exitcond701 = icmp eq i32 %inc147, 2
  br i1 %exitcond701, label %for.end148, label %for.body144

for.end148:                                       ; preds = %for.body144
  %shl149 = shl i32 %call145, 4
  %28 = load i32* %cbp107, align 4, !tbaa !3
  %add151 = add nsw i32 %28, %shl149
  store i32 %add151, i32* %cbp107, align 4, !tbaa !3
  br label %if.end157

if.end157:                                        ; preds = %if.else, %if.then53, %if.then105, %if.then49, %if.then101, %for.end148, %for.end94, %if.then36, %land.lhs.true39, %land.lhs.true42
  %29 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %29, i64 0, i32 85
  %30 = load i32* %rdopt, align 4, !tbaa !3
  %cmp158 = icmp eq i32 %30, 2
  br i1 %cmp158, label %land.lhs.true160, label %if.end171

land.lhs.true160:                                 ; preds = %if.end157
  %31 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type161 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 6
  %32 = load i32* %type161, align 4, !tbaa !3
  %cmp162 = icmp eq i32 %32, 1
  br i1 %cmp162, label %if.end171, label %if.then164

if.then164:                                       ; preds = %land.lhs.true160
  %cmp165 = icmp eq i32 %mode, 10
  %33 = load i32* %i16mode.addr, align 4, !tbaa !3
  %cond170 = select i1 %cmp165, i32 %33, i32 -1
  call void @compute_residue_mb(i32 %cond170) #8
  br label %if.end171

if.end171:                                        ; preds = %land.lhs.true160, %if.then164, %if.end157
  %cmp172 = icmp eq i32 %mode, 10
  br i1 %cmp172, label %for.cond175.preheader, label %for.cond201.preheader

for.cond201.preheader:                            ; preds = %if.end171
  %34 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond205.preheader

for.cond175.preheader:                            ; preds = %if.end171
  %35 = load i32* %i16mode.addr, align 4, !tbaa !3
  %idxprom185 = sext i32 %35 to i64
  %36 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond179.preheader

for.cond179.preheader:                            ; preds = %for.inc197, %for.cond175.preheader
  %indvars.iv676 = phi i64 [ 0, %for.cond175.preheader ], [ %indvars.iv.next677, %for.inc197 ]
  br label %for.body182

for.body182:                                      ; preds = %for.body182, %for.cond179.preheader
  %indvars.iv673 = phi i64 [ 0, %for.cond179.preheader ], [ %indvars.iv.next674, %for.body182 ]
  %arrayidx188 = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 42, i64 %idxprom185, i64 %indvars.iv673, i64 %indvars.iv676
  %37 = load i16* %arrayidx188, align 2, !tbaa !4
  %conv189 = zext i16 %37 to i32
  %arrayidx193 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv673, i64 %indvars.iv676
  store i32 %conv189, i32* %arrayidx193, align 4, !tbaa !3
  %indvars.iv.next674 = add i64 %indvars.iv673, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next674 to i32
  %exitcond675 = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond675, label %for.inc197, label %for.body182

for.inc197:                                       ; preds = %for.body182
  %indvars.iv.next677 = add i64 %indvars.iv676, 1
  %lftr.wideiv678 = trunc i64 %indvars.iv.next677 to i32
  %exitcond679 = icmp eq i32 %lftr.wideiv678, 16
  br i1 %exitcond679, label %if.end224, label %for.cond179.preheader

for.cond205.preheader:                            ; preds = %for.inc221, %for.cond201.preheader
  %indvars.iv684 = phi i64 [ 0, %for.cond201.preheader ], [ %indvars.iv.next685, %for.inc221 ]
  br label %for.body208

for.body208:                                      ; preds = %for.body208, %for.cond205.preheader
  %indvars.iv680 = phi i64 [ 0, %for.cond205.preheader ], [ %indvars.iv.next681, %for.body208 ]
  %arrayidx212 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 45, i64 %indvars.iv684, i64 %indvars.iv680
  %38 = load i16* %arrayidx212, align 2, !tbaa !4
  %conv213 = zext i16 %38 to i32
  %arrayidx217 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv680, i64 %indvars.iv684
  store i32 %conv213, i32* %arrayidx217, align 4, !tbaa !3
  %indvars.iv.next681 = add i64 %indvars.iv680, 1
  %lftr.wideiv682 = trunc i64 %indvars.iv.next681 to i32
  %exitcond683 = icmp eq i32 %lftr.wideiv682, 16
  br i1 %exitcond683, label %for.inc221, label %for.body208

for.inc221:                                       ; preds = %for.body208
  %indvars.iv.next685 = add i64 %indvars.iv684, 1
  %lftr.wideiv686 = trunc i64 %indvars.iv.next685 to i32
  %exitcond687 = icmp eq i32 %lftr.wideiv686, 16
  br i1 %exitcond687, label %if.end224, label %for.cond205.preheader

if.end224:                                        ; preds = %for.inc221, %for.inc197
  %39 = phi %struct.ImageParameters* [ %36, %for.inc197 ], [ %34, %for.inc221 ]
  %i16offset = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 85
  store i32 0, i32* %i16offset, align 4, !tbaa !3
  store i32 0, i32* %dummy, align 4, !tbaa !3
  %residue_transform_flag225 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 164
  %40 = load i32* %residue_transform_flag225, align 4, !tbaa !3
  %tobool226 = icmp eq i32 %40, 0
  br i1 %tobool226, label %land.lhs.true235, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.end224
  %mode.off = add i32 %mode, -9
  %41 = icmp ult i32 %mode.off, 2
  %cmp233 = icmp eq i32 %mode, 13
  %or.cond487 = or i1 %41, %cmp233
  br i1 %or.cond487, label %if.end239, label %land.lhs.true235

land.lhs.true235:                                 ; preds = %if.end224, %land.lhs.true227
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 159
  %42 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp236 = icmp eq i32 %42, 0
  br i1 %cmp236, label %if.end239, label %if.then238

if.then238:                                       ; preds = %land.lhs.true235
  call void @ChromaResidualCoding(i32* %dummy) #8
  br label %if.end239

if.end239:                                        ; preds = %land.lhs.true235, %if.then238, %land.lhs.true227
  br i1 %cmp172, label %if.then242, label %if.end246

if.then242:                                       ; preds = %if.end239
  %cbp243 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %43 = load i32* %cbp243, align 4, !tbaa !3
  %44 = load i32* %i16mode.addr, align 4, !tbaa !3
  %and.i = and i32 %43, 15
  %tobool.i = icmp ne i32 %and.i, 0
  %cond.i = select i1 %tobool.i, i32 13, i32 1
  %and1.i = lshr i32 %43, 2
  %shr4.i = and i32 %and1.i, 12
  %add.i = add i32 %shr4.i, %44
  %add2.i = add i32 %add.i, %cond.i
  %45 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %i16offset245 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 85
  store i32 %add2.i, i32* %i16offset245, align 4, !tbaa !3
  br label %if.end246

if.end246:                                        ; preds = %if.end239, %if.then242
  %46 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt247 = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 85
  %47 = load i32* %rdopt247, align 4, !tbaa !3
  %cmp248 = icmp eq i32 %47, 2
  %48 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %cmp248, label %land.lhs.true250, label %for.cond301.preheader

for.cond301.preheader:                            ; preds = %if.end246, %land.lhs.true250
  %opix_x305 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 37
  %49 = load i32* %opix_x305, align 4, !tbaa !3
  %50 = load i16*** @imgY_org, align 8, !tbaa !0
  %51 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %51, i64 0, i32 25
  %52 = sext i32 %49 to i64
  br label %for.body311.lr.ph

land.lhs.true250:                                 ; preds = %if.end246
  %type251 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 6
  %53 = load i32* %type251, align 4, !tbaa !3
  %cmp252 = icmp eq i32 %53, 1
  br i1 %cmp252, label %for.cond301.preheader, label %for.cond255.preheader

for.cond255.preheader:                            ; preds = %land.lhs.true250
  %NoOfDecoders636 = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 97
  %54 = load i32* %NoOfDecoders636, align 4, !tbaa !3
  %cmp256637 = icmp sgt i32 %54, 0
  br i1 %cmp256637, label %for.body258, label %for.end297

for.body258:                                      ; preds = %for.cond255.preheader, %for.inc295
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %for.inc295 ], [ 0, %for.cond255.preheader ]
  %distortion.0638 = phi i64 [ %add288, %for.inc295 ], [ 0, %for.cond255.preheader ]
  %55 = trunc i64 %indvars.iv671 to i32
  call void @decode_one_mb(i32 %55, %struct.macroblock* %arrayidx) #8
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 37
  %57 = load i32* %opix_x, align 4, !tbaa !3
  %58 = load i16*** @imgY_org, align 8, !tbaa !0
  %59 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY = getelementptr inbounds %struct.Decoders* %59, i64 0, i32 1
  %60 = sext i32 %57 to i64
  br label %for.body268.lr.ph

for.body268.lr.ph:                                ; preds = %for.body258, %for.inc292
  %j.5635 = phi i32 [ 0, %for.body258 ], [ %inc293, %for.inc292 ]
  %distortion.1634 = phi i64 [ %distortion.0638, %for.body258 ], [ %add288, %for.inc292 ]
  %61 = load i16**** %decY, align 8, !tbaa !0
  %arrayidx280 = getelementptr inbounds i16*** %61, i64 %indvars.iv671
  %62 = load i16*** %arrayidx280, align 8, !tbaa !0
  %opix_y.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 38
  %.pre = load i32* %opix_y.phi.trans.insert, align 4, !tbaa !3
  %quad.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 53
  %.pre720 = load i32** %quad.phi.trans.insert, align 8, !tbaa !0
  br label %for.body268

for.body268:                                      ; preds = %for.body268.lr.ph, %for.body268
  %indvars.iv667 = phi i64 [ %60, %for.body268.lr.ph ], [ %indvars.iv.next668, %for.body268 ]
  %distortion.2631 = phi i64 [ %distortion.1634, %for.body268.lr.ph ], [ %add288, %for.body268 ]
  %add270 = add nsw i32 %.pre, %j.5635
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds i16** %58, i64 %idxprom271
  %63 = load i16** %arrayidx272, align 8, !tbaa !0
  %arrayidx273 = getelementptr inbounds i16* %63, i64 %indvars.iv667
  %64 = load i16* %arrayidx273, align 2, !tbaa !4
  %conv274 = zext i16 %64 to i64
  %arrayidx281 = getelementptr inbounds i16** %62, i64 %idxprom271
  %65 = load i16** %arrayidx281, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i16* %65, i64 %indvars.iv667
  %66 = load i16* %arrayidx282, align 2, !tbaa !4
  %conv283 = zext i16 %66 to i64
  %sub284 = sub i64 %conv274, %conv283
  %arrayidx286 = getelementptr inbounds i32* %.pre720, i64 %sub284
  %67 = load i32* %arrayidx286, align 4, !tbaa !3
  %conv287 = sext i32 %67 to i64
  %add288 = add nsw i64 %conv287, %distortion.2631
  %indvars.iv.next668 = add i64 %indvars.iv667, 1
  %68 = add nsw i32 %57, 15
  %69 = trunc i64 %indvars.iv667 to i32
  %cmp266 = icmp slt i32 %69, %68
  br i1 %cmp266, label %for.body268, label %for.inc292

for.inc292:                                       ; preds = %for.body268
  %inc293 = add nsw i32 %j.5635, 1
  %exitcond669 = icmp eq i32 %inc293, 16
  br i1 %exitcond669, label %for.inc295, label %for.body268.lr.ph

for.inc295:                                       ; preds = %for.inc292
  %indvars.iv.next672 = add i64 %indvars.iv671, 1
  %70 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %70, i64 0, i32 97
  %71 = load i32* %NoOfDecoders, align 4, !tbaa !3
  %72 = trunc i64 %indvars.iv.next672 to i32
  %cmp256 = icmp slt i32 %72, %71
  br i1 %cmp256, label %for.body258, label %for.end297

for.end297:                                       ; preds = %for.inc295, %for.cond255.preheader
  %73 = phi %struct.ImageParameters* [ %48, %for.cond255.preheader ], [ %56, %for.inc295 ]
  %.lcssa = phi i32 [ %54, %for.cond255.preheader ], [ %71, %for.inc295 ]
  %distortion.0.lcssa = phi i64 [ 0, %for.cond255.preheader ], [ %add288, %for.inc295 ]
  %conv299 = sext i32 %.lcssa to i64
  %div = sdiv i64 %distortion.0.lcssa, %conv299
  br label %if.end338

for.body311.lr.ph:                                ; preds = %for.cond301.preheader, %for.inc335
  %j.6626 = phi i32 [ 0, %for.cond301.preheader ], [ %inc336, %for.inc335 ]
  %distortion.3625 = phi i64 [ 0, %for.cond301.preheader ], [ %add331, %for.inc335 ]
  %74 = load i16*** %imgY, align 8, !tbaa !0
  %opix_y313.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 38
  %.pre724 = load i32* %opix_y313.phi.trans.insert, align 4, !tbaa !3
  %pix_y320.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 34
  %.pre725 = load i32* %pix_y320.phi.trans.insert, align 4, !tbaa !3
  %quad328.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 53
  %.pre726 = load i32** %quad328.phi.trans.insert, align 8, !tbaa !0
  br label %for.body311

for.body311:                                      ; preds = %for.body311.lr.ph, %for.body311
  %indvars.iv665 = phi i64 [ %52, %for.body311.lr.ph ], [ %indvars.iv.next666, %for.body311 ]
  %distortion.4622 = phi i64 [ %distortion.3625, %for.body311.lr.ph ], [ %add331, %for.body311 ]
  %add314 = add nsw i32 %.pre724, %j.6626
  %idxprom315 = sext i32 %add314 to i64
  %arrayidx316 = getelementptr inbounds i16** %50, i64 %idxprom315
  %75 = load i16** %arrayidx316, align 8, !tbaa !0
  %arrayidx317 = getelementptr inbounds i16* %75, i64 %indvars.iv665
  %76 = load i16* %arrayidx317, align 2, !tbaa !4
  %conv318 = zext i16 %76 to i64
  %add321 = add nsw i32 %.pre725, %j.6626
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds i16** %74, i64 %idxprom322
  %77 = load i16** %arrayidx323, align 8, !tbaa !0
  %arrayidx324 = getelementptr inbounds i16* %77, i64 %indvars.iv665
  %78 = load i16* %arrayidx324, align 2, !tbaa !4
  %conv325 = zext i16 %78 to i64
  %sub326 = sub i64 %conv318, %conv325
  %arrayidx329 = getelementptr inbounds i32* %.pre726, i64 %sub326
  %79 = load i32* %arrayidx329, align 4, !tbaa !3
  %conv330 = sext i32 %79 to i64
  %add331 = add nsw i64 %conv330, %distortion.4622
  %indvars.iv.next666 = add i64 %indvars.iv665, 1
  %80 = add nsw i32 %49, 15
  %81 = trunc i64 %indvars.iv665 to i32
  %cmp309 = icmp slt i32 %81, %80
  br i1 %cmp309, label %for.body311, label %for.inc335

for.inc335:                                       ; preds = %for.body311
  %inc336 = add nsw i32 %j.6626, 1
  %exitcond = icmp eq i32 %inc336, 16
  br i1 %exitcond, label %if.end338, label %for.body311.lr.ph

if.end338:                                        ; preds = %for.inc335, %for.end297
  %82 = phi %struct.ImageParameters* [ %73, %for.end297 ], [ %48, %for.inc335 ]
  %distortion.5 = phi i64 [ %div, %for.end297 ], [ %add331, %for.inc335 ]
  %yuv_format339 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 159
  %83 = load i32* %yuv_format339, align 4, !tbaa !3
  %cmp340 = icmp eq i32 %83, 0
  br i1 %cmp340, label %if.end402, label %for.cond343.preheader

for.cond343.preheader:                            ; preds = %if.end338
  %mb_cr_size_y613 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 162
  %84 = load i32* %mb_cr_size_y613, align 4, !tbaa !3
  %cmp344614 = icmp sgt i32 %84, 0
  br i1 %cmp344614, label %for.body346.lr.ph, label %if.end402

for.body346.lr.ph:                                ; preds = %for.cond343.preheader
  %opix_c_x348607 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 39
  %85 = load i32* %opix_c_x348607, align 4, !tbaa !3
  %mb_cr_size_x608 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 161
  %86 = load i32* %mb_cr_size_x608, align 4, !tbaa !3
  %add349609 = add nsw i32 %86, %85
  %87 = load i16**** @imgUV_org, align 8, !tbaa !0
  %88 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %88, i64 0, i32 30
  %arrayidx377 = getelementptr inbounds i16*** %87, i64 1
  br label %for.body346

for.body346:                                      ; preds = %for.body346.lr.ph, %for.inc399
  %j.7616 = phi i32 [ 0, %for.body346.lr.ph ], [ %inc400, %for.inc399 ]
  %distortion.6615 = phi i64 [ %distortion.5, %for.body346.lr.ph ], [ %distortion.7.lcssa, %for.inc399 ]
  %cmp350610 = icmp sgt i32 %86, 0
  br i1 %cmp350610, label %for.body352.lr.ph, label %for.inc399

for.body352.lr.ph:                                ; preds = %for.body346
  %89 = load i16*** %87, align 8, !tbaa !0
  %90 = load i16**** %imgUV, align 8, !tbaa !0
  %91 = load i16*** %90, align 8, !tbaa !0
  %92 = load i16*** %arrayidx377, align 8, !tbaa !0
  %arrayidx386 = getelementptr inbounds i16*** %90, i64 1
  %93 = load i16*** %arrayidx386, align 8, !tbaa !0
  %94 = sext i32 %85 to i64
  %opix_c_y.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 40
  %.pre721 = load i32* %opix_c_y.phi.trans.insert, align 4, !tbaa !3
  %pix_c_y.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 36
  %.pre722 = load i32* %pix_c_y.phi.trans.insert, align 4, !tbaa !3
  %quad369.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 53
  %.pre723 = load i32** %quad369.phi.trans.insert, align 8, !tbaa !0
  br label %for.body352

for.body352:                                      ; preds = %for.body352.lr.ph, %for.body352
  %indvars.iv = phi i64 [ %94, %for.body352.lr.ph ], [ %indvars.iv.next, %for.body352 ]
  %distortion.7611 = phi i64 [ %distortion.6615, %for.body352.lr.ph ], [ %add395, %for.body352 ]
  %add354 = add nsw i32 %.pre721, %j.7616
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx357 = getelementptr inbounds i16** %89, i64 %idxprom355
  %95 = load i16** %arrayidx357, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds i16* %95, i64 %indvars.iv
  %96 = load i16* %arrayidx358, align 2, !tbaa !4
  %conv359 = zext i16 %96 to i64
  %add361 = add nsw i32 %.pre722, %j.7616
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx364 = getelementptr inbounds i16** %91, i64 %idxprom362
  %97 = load i16** %arrayidx364, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i16* %97, i64 %indvars.iv
  %98 = load i16* %arrayidx365, align 2, !tbaa !4
  %conv366 = zext i16 %98 to i64
  %sub367 = sub i64 %conv359, %conv366
  %arrayidx370 = getelementptr inbounds i32* %.pre723, i64 %sub367
  %99 = load i32* %arrayidx370, align 4, !tbaa !3
  %conv371 = sext i32 %99 to i64
  %add372 = add nsw i64 %conv371, %distortion.7611
  %arrayidx378 = getelementptr inbounds i16** %92, i64 %idxprom355
  %100 = load i16** %arrayidx378, align 8, !tbaa !0
  %arrayidx379 = getelementptr inbounds i16* %100, i64 %indvars.iv
  %101 = load i16* %arrayidx379, align 2, !tbaa !4
  %conv380 = zext i16 %101 to i64
  %arrayidx387 = getelementptr inbounds i16** %93, i64 %idxprom362
  %102 = load i16** %arrayidx387, align 8, !tbaa !0
  %arrayidx388 = getelementptr inbounds i16* %102, i64 %indvars.iv
  %103 = load i16* %arrayidx388, align 2, !tbaa !4
  %conv389 = zext i16 %103 to i64
  %sub390 = sub i64 %conv380, %conv389
  %arrayidx393 = getelementptr inbounds i32* %.pre723, i64 %sub390
  %104 = load i32* %arrayidx393, align 4, !tbaa !3
  %conv394 = sext i32 %104 to i64
  %add395 = add nsw i64 %add372, %conv394
  %indvars.iv.next = add i64 %indvars.iv, 1
  %105 = trunc i64 %indvars.iv.next to i32
  %cmp350 = icmp slt i32 %105, %add349609
  br i1 %cmp350, label %for.body352, label %for.inc399

for.inc399:                                       ; preds = %for.body352, %for.body346
  %distortion.7.lcssa = phi i64 [ %distortion.6615, %for.body346 ], [ %add395, %for.body352 ]
  %inc400 = add nsw i32 %j.7616, 1
  %cmp344 = icmp slt i32 %inc400, %84
  br i1 %cmp344, label %for.body346, label %if.end402

if.end402:                                        ; preds = %for.cond343.preheader, %for.inc399, %if.end338
  %distortion.8 = phi i64 [ %distortion.5, %if.end338 ], [ %distortion.5, %for.cond343.preheader ], [ %distortion.7.lcssa, %for.inc399 ]
  %106 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %106) #8
  br i1 %6, label %if.then404, label %if.else423

if.then404:                                       ; preds = %if.end402
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %107 = load i32* %mb_type, align 4, !tbaa !3
  %cmp405 = icmp eq i32 %107, 0
  br i1 %cmp405, label %lor.lhs.false407, label %if.then413

lor.lhs.false407:                                 ; preds = %if.then404
  br i1 %cmp, label %land.lhs.true409, label %if.else417

land.lhs.true409:                                 ; preds = %lor.lhs.false407
  %cbp410 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %108 = load i32* %cbp410, align 4, !tbaa !3
  %cmp411 = icmp eq i32 %108, 0
  br i1 %cmp411, label %if.else417, label %if.then413

if.then413:                                       ; preds = %land.lhs.true409, %if.then404
  %109 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter = getelementptr inbounds %struct.ImageParameters* %109, i64 0, i32 27
  %110 = load i32* %cod_counter, align 4, !tbaa !3
  %call414 = call i32 @writeMBLayer(i32 1) #8
  store i32 %call414, i32* %rate, align 4, !tbaa !3
  %111 = load i32* %dummy, align 4, !tbaa !3
  call void @ue_linfo(i32 %110, i32 %111, i32* %cc_rate, i32* %dummy) #8
  %112 = load i32* %cc_rate, align 4, !tbaa !3
  %113 = load i32* %rate, align 4, !tbaa !3
  %sub415 = sub nsw i32 %113, %112
  store i32 %sub415, i32* %rate, align 4, !tbaa !3
  %114 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter416 = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 27
  store i32 %110, i32* %cod_counter416, align 4, !tbaa !3
  br label %if.end425

if.else417:                                       ; preds = %land.lhs.true409, %lor.lhs.false407
  %115 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter418 = getelementptr inbounds %struct.ImageParameters* %115, i64 0, i32 27
  %116 = load i32* %cod_counter418, align 4, !tbaa !3
  %add419 = add nsw i32 %116, 1
  %117 = load i32* %dummy, align 4, !tbaa !3
  call void @ue_linfo(i32 %add419, i32 %117, i32* %rate, i32* %dummy) #8
  %118 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cod_counter420 = getelementptr inbounds %struct.ImageParameters* %118, i64 0, i32 27
  %119 = load i32* %cod_counter420, align 4, !tbaa !3
  %120 = load i32* %dummy, align 4, !tbaa !3
  call void @ue_linfo(i32 %119, i32 %120, i32* %cc_rate, i32* %dummy) #8
  %121 = load i32* %cc_rate, align 4, !tbaa !3
  %122 = load i32* %rate, align 4, !tbaa !3
  %sub421 = sub nsw i32 %122, %121
  store i32 %sub421, i32* %rate, align 4, !tbaa !3
  br label %if.end425

if.else423:                                       ; preds = %if.end402
  %call424 = call i32 @writeMBLayer(i32 1) #8
  store i32 %call424, i32* %rate, align 4, !tbaa !3
  br label %if.end425

if.end425:                                        ; preds = %if.then413, %if.else417, %if.else423
  %123 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %123) #8
  %conv426 = sitofp i64 %distortion.8 to double
  %124 = load i32* %rate, align 4, !tbaa !3
  %cmp428 = icmp slt i32 %124, 1
  br i1 %cmp428, label %cond.end433, label %cond.false431

cond.false431:                                    ; preds = %if.end425
  %conv427 = sitofp i32 %124 to double
  br label %cond.end433

cond.end433:                                      ; preds = %if.end425, %cond.false431
  %cond434 = phi double [ %conv427, %cond.false431 ], [ 5.000000e-01, %if.end425 ]
  %mul = fmul double %cond434, %lambda
  %add435 = fadd double %conv426, %mul
  %125 = load double* %min_rdcost, align 8, !tbaa !6
  %sub436 = fsub double %add435, %125
  %cmp437 = fcmp ult double %sub436, -1.000000e-12
  br i1 %cmp437, label %lor.lhs.false439, label %return

lor.lhs.false439:                                 ; preds = %cond.end433
  %126 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 10
  %127 = load i32* %qp, align 4, !tbaa !3
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 151
  %128 = load i32* %bitdepth_luma_qp_scale, align 4, !tbaa !3
  %add440 = sub i32 0, %128
  %cmp441 = icmp eq i32 %127, %add440
  br i1 %cmp441, label %land.lhs.true443, label %if.end450

land.lhs.true443:                                 ; preds = %lor.lhs.false439
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 160
  %129 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %cmp444 = icmp ne i32 %129, 1
  %cmp447 = icmp eq i64 %distortion.8, 0
  %or.cond605 = or i1 %cmp444, %cmp447
  br i1 %or.cond605, label %if.end450, label %return

if.end450:                                        ; preds = %land.lhs.true443, %lor.lhs.false439
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 90
  %130 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool451 = icmp ne i32 %130, 0
  %or.cond606 = and i1 %tobool451, %cmp12
  br i1 %or.cond606, label %cond.false455, label %if.end486

cond.false455:                                    ; preds = %if.end450
  %type456 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 6
  %131 = load i32* %type456, align 4, !tbaa !3
  %cmp457 = icmp eq i32 %131, 1
  br i1 %cmp457, label %cond.true459, label %if.then463

cond.true459:                                     ; preds = %cond.false455
  %cbp460 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %132 = load i32* %cbp460, align 4, !tbaa !3
  %tobool461 = icmp eq i32 %132, 0
  br i1 %tobool461, label %if.then463, label %if.end486

if.then463:                                       ; preds = %cond.true459, %cond.false455
  %current_mb_nr464 = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 3
  %133 = load i32* %current_mb_nr464, align 4, !tbaa !3
  %rem604 = and i32 %133, 1
  %tobool465 = icmp eq i32 %rem604, 0
  br i1 %tobool465, label %if.end486, label %if.then466

if.then466:                                       ; preds = %if.then463
  %mb_type467 = getelementptr inbounds %struct.macroblock* %cond, i64 0, i32 8
  %134 = load i32* %mb_type467, align 4, !tbaa !3
  %tobool468 = icmp eq i32 %134, 0
  br i1 %tobool468, label %cond.false470, label %if.end486

cond.false470:                                    ; preds = %if.then466
  br i1 %cmp457, label %cond.true474, label %if.then478

cond.true474:                                     ; preds = %cond.false470
  %cbp475 = getelementptr inbounds %struct.macroblock* %cond, i64 0, i32 12
  %135 = load i32* %cbp475, align 4, !tbaa !3
  %tobool476 = icmp eq i32 %135, 0
  br i1 %tobool476, label %if.then478, label %if.end486

if.then478:                                       ; preds = %cond.true474, %cond.false470
  %call479 = call i32 @field_flag_inference() #10
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %136 = load i32* %mb_field, align 4, !tbaa !3
  %cmp480 = icmp eq i32 %call479, %136
  br i1 %cmp480, label %if.end486, label %return

if.end486:                                        ; preds = %if.end450, %cond.true459, %cond.true474, %if.then466, %if.then463, %if.then478
  store double %add435, double* %min_rdcost, align 8, !tbaa !6
  br label %return

return:                                           ; preds = %for.body20, %if.then478, %cond.end433, %land.lhs.true443, %land.lhs.true42, %if.end486
  %retval.0 = phi i32 [ 1, %if.end486 ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true443 ], [ 0, %cond.end433 ], [ 0, %if.then478 ], [ 0, %for.body20 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @LumaResidualCoding(...) #1

; Function Attrs: optsize
declare i32 @dct_chroma_DC(i32, i32) #1

; Function Attrs: optsize
declare i32 @Mode_Decision_for_new_Intra8x8Macroblock(double, i32*) #1

; Function Attrs: optsize
declare void @compute_residue_mb(i32) #1

; Function Attrs: optsize
declare void @ChromaResidualCoding(i32*) #1

; Function Attrs: optsize
declare void @decode_one_mb(i32, %struct.macroblock*) #1

; Function Attrs: optsize
declare i32 @writeMBLayer(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @store_macroblock_parameters(i32 %mode) #0 {
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
  store i32 %mode, i32* @best_mode, align 4, !tbaa !3
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  %4 = load i32* %c_ipred_mode, align 4, !tbaa !3
  store i32 %4, i32* @best_c_imode, align 4, !tbaa !3
  %i16offset = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85
  %5 = load i32* %i16offset, align 4, !tbaa !3
  store i32 %5, i32* @best_i16offset, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %mode, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  %6 = load i32* %bi_pred_me, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ %6, %if.then ], [ 0, %entry ]
  store i32 %storemerge, i32* @bi_pred_me, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv401 = phi i64 [ 0, %if.end ], [ %indvars.iv.next402, %for.body ]
  %arrayidx6 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv401
  %7 = load i32* %arrayidx6, align 4, !tbaa !3
  %conv7 = trunc i32 %7 to i16
  %arrayidx9 = getelementptr inbounds [4 x i16]* @b8mode, i64 0, i64 %indvars.iv401
  store i16 %conv7, i16* %arrayidx9, align 2, !tbaa !4
  %arrayidx11 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv401
  %8 = load i32* %arrayidx11, align 4, !tbaa !3
  %conv12 = trunc i32 %8 to i16
  %arrayidx14 = getelementptr inbounds [4 x i16]* @b8pdir, i64 0, i64 %indvars.iv401
  store i16 %conv12, i16* %arrayidx14, align 2, !tbaa !4
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  %lftr.wideiv403 = trunc i64 %indvars.iv.next402 to i32
  %exitcond404 = icmp eq i32 %lftr.wideiv403, 4
  br i1 %exitcond404, label %for.body19.lr.ph, label %for.body

for.body19.lr.ph:                                 ; preds = %for.body
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %9 = load i32* %block_y, align 4, !tbaa !3
  %block_x21341 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %10 = sext i32 %9 to i64
  %.pre406 = load i32* %block_x21341, align 4, !tbaa !3
  br label %for.body25.lr.ph

for.cond43.preheader:                             ; preds = %for.inc40
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 26
  %11 = load i32*** %ipredmode8x8, align 8, !tbaa !0
  br label %for.cond47.preheader

for.body25.lr.ph:                                 ; preds = %for.inc40, %for.body19.lr.ph
  %12 = phi i32 [ %.pre406, %for.body19.lr.ph ], [ %18, %for.inc40 ]
  %indvars.iv399 = phi i64 [ %10, %for.body19.lr.ph ], [ %indvars.iv.next400, %for.inc40 ]
  %k.0349 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc38, %for.inc40 ]
  %13 = sext i32 %12 to i64
  %14 = sext i32 %k.0349 to i64
  %ipredmode.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre408 = load i32*** %ipredmode.phi.trans.insert, align 8, !tbaa !0
  br label %for.body25

for.body25:                                       ; preds = %for.body25.lr.ph, %for.body25
  %indvars.iv397 = phi i64 [ %14, %for.body25.lr.ph ], [ %indvars.iv.next398, %for.body25 ]
  %indvars.iv395 = phi i64 [ %13, %for.body25.lr.ph ], [ %indvars.iv.next396, %for.body25 ]
  %k.1344 = phi i32 [ %k.0349, %for.body25.lr.ph ], [ %inc38, %for.body25 ]
  %arrayidx28 = getelementptr inbounds i32** %.pre408, i64 %indvars.iv395
  %15 = load i32** %arrayidx28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %15, i64 %indvars.iv399
  %16 = load i32* %arrayidx29, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds [16 x i32]* @b4_ipredmode, i64 0, i64 %indvars.iv397
  store i32 %16, i32* %arrayidx31, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv397
  %17 = load i32* %arrayidx33, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds [16 x i32]* @b4_intra_pred_modes, i64 0, i64 %indvars.iv397
  store i32 %17, i32* %arrayidx35, align 4, !tbaa !3
  %indvars.iv.next396 = add i64 %indvars.iv395, 1
  %indvars.iv.next398 = add i64 %indvars.iv397, 1
  %inc38 = add nsw i32 %k.1344, 1
  %18 = load i32* %block_x21341, align 4, !tbaa !3
  %19 = add nsw i32 %18, 3
  %20 = trunc i64 %indvars.iv395 to i32
  %cmp23 = icmp slt i32 %20, %19
  br i1 %cmp23, label %for.body25, label %for.inc40

for.inc40:                                        ; preds = %for.body25
  %.pre407 = load i32* %block_y, align 4, !tbaa !3
  %indvars.iv.next400 = add i64 %indvars.iv399, 1
  %21 = add nsw i32 %.pre407, 3
  %22 = trunc i64 %indvars.iv399 to i32
  %cmp17 = icmp slt i32 %22, %21
  br i1 %cmp17, label %for.body25.lr.ph, label %for.cond43.preheader

for.cond47.preheader:                             ; preds = %for.inc71, %for.cond43.preheader
  %indvars.iv391 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next392, %for.inc71 ]
  %indvars.iv389 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next390, %for.inc71 ]
  br label %for.body50

for.cond74.preheader:                             ; preds = %for.inc71
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %23 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %24 = load i32* %pix_y, align 4, !tbaa !3
  %25 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 25
  %26 = load i16*** %imgY, align 8, !tbaa !0
  %27 = sext i32 %23 to i64
  %28 = sext i32 %24 to i64
  br label %for.cond78.preheader

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.cond47.preheader
  %indvars.iv384 = phi i64 [ %indvars.iv391, %for.cond47.preheader ], [ %indvars.iv.next385, %for.body50.for.body50_crit_edge ]
  %indvars.iv382 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next383, %for.body50.for.body50_crit_edge ]
  %29 = load i32* %block_y, align 4, !tbaa !3
  %30 = trunc i64 %indvars.iv382 to i32
  %add52 = add nsw i32 %29, %30
  %idxprom53 = sext i32 %add52 to i64
  %31 = load i32* %block_x21341, align 4, !tbaa !3
  %32 = trunc i64 %indvars.iv389 to i32
  %add55 = add nsw i32 %31, %32
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i32** %11, i64 %idxprom56
  %33 = load i32** %arrayidx57, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i32* %33, i64 %idxprom53
  %34 = load i32* %arrayidx58, align 4, !tbaa !3
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]]* @b8_ipredmode8x8, i64 0, i64 %indvars.iv389, i64 %indvars.iv382
  store i32 %34, i32* %arrayidx62, align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 11, i64 %indvars.iv384
  %35 = load i32* %arrayidx64, align 4, !tbaa !3
  %arrayidx66 = getelementptr inbounds [16 x i32]* @b8_intra_pred_modes8x8, i64 0, i64 %indvars.iv384
  store i32 %35, i32* %arrayidx66, align 4, !tbaa !3
  %indvars.iv.next383 = add i64 %indvars.iv382, 1
  %lftr.wideiv386 = trunc i64 %indvars.iv.next383 to i32
  %exitcond387 = icmp eq i32 %lftr.wideiv386, 4
  br i1 %exitcond387, label %for.inc71, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  %indvars.iv.next385 = add i64 %indvars.iv384, 1
  br label %for.body50

for.inc71:                                        ; preds = %for.body50
  %indvars.iv.next392 = add i64 %indvars.iv391, 4
  %indvars.iv.next390 = add i64 %indvars.iv389, 1
  %lftr.wideiv393 = trunc i64 %indvars.iv.next390 to i32
  %exitcond394 = icmp eq i32 %lftr.wideiv393, 4
  br i1 %exitcond394, label %for.cond74.preheader, label %for.cond47.preheader

for.cond78.preheader:                             ; preds = %for.inc95, %for.cond74.preheader
  %indvars.iv377 = phi i64 [ 0, %for.cond74.preheader ], [ %indvars.iv.next378, %for.inc95 ]
  %36 = add nsw i64 %28, %indvars.iv377
  %arrayidx86 = getelementptr inbounds i16** %26, i64 %36
  %37 = load i16** %arrayidx86, align 8, !tbaa !0
  br label %for.body81

for.body81:                                       ; preds = %for.body81, %for.cond78.preheader
  %indvars.iv371 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next372, %for.body81 ]
  %38 = add nsw i64 %27, %indvars.iv371
  %arrayidx87 = getelementptr inbounds i16* %37, i64 %38
  %39 = load i16* %arrayidx87, align 2, !tbaa !4
  %arrayidx91 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY, i64 0, i64 %indvars.iv377, i64 %indvars.iv371
  store i16 %39, i16* %arrayidx91, align 2, !tbaa !4
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %lftr.wideiv374 = trunc i64 %indvars.iv.next372 to i32
  %exitcond375 = icmp eq i32 %lftr.wideiv374, 16
  br i1 %exitcond375, label %for.inc95, label %for.body81

for.inc95:                                        ; preds = %for.body81
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv380 = trunc i64 %indvars.iv.next378 to i32
  %exitcond381 = icmp eq i32 %lftr.wideiv380, 16
  br i1 %exitcond381, label %for.end97, label %for.cond78.preheader

for.end97:                                        ; preds = %for.inc95
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %40 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %40, 0
  br i1 %cmp98, label %if.end140, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.end97
  %mb_cr_size_y332 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %41 = load i32* %mb_cr_size_y332, align 4, !tbaa !3
  %cmp102333 = icmp sgt i32 %41, 0
  br i1 %cmp102333, label %for.cond105.preheader.lr.ph, label %if.end140

for.cond105.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %mb_cr_size_x329 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %42 = load i32* %mb_cr_size_x329, align 4, !tbaa !3
  %cmp106330 = icmp sgt i32 %42, 0
  %imgUV = getelementptr inbounds %struct.storable_picture* %25, i64 0, i32 30
  %pix_c_x120 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 35
  %pix_c_y123 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 36
  br label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.cond105.preheader.lr.ph, %for.inc137
  %indvars.iv369 = phi i64 [ 0, %for.cond105.preheader.lr.ph ], [ %indvars.iv.next370, %for.inc137 ]
  br i1 %cmp106330, label %for.body108.lr.ph, label %for.inc137

for.body108.lr.ph:                                ; preds = %for.cond105.preheader
  %43 = load i16**** %imgUV, align 8, !tbaa !0
  %44 = load i16*** %43, align 8, !tbaa !0
  %45 = load i32* %pix_c_x120, align 4, !tbaa !3
  %46 = load i32* %pix_c_y123, align 4, !tbaa !3
  %47 = trunc i64 %indvars.iv369 to i32
  %add124 = add nsw i32 %46, %47
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx127 = getelementptr inbounds i16*** %43, i64 1
  %48 = load i16*** %arrayidx127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i16** %48, i64 %idxprom125
  %49 = load i16** %arrayidx128, align 8, !tbaa !0
  %50 = sext i32 %45 to i64
  %arrayidx114.phi.trans.insert = getelementptr inbounds i16** %44, i64 %idxprom125
  %.pre409 = load i16** %arrayidx114.phi.trans.insert, align 8, !tbaa !0
  br label %for.body108

for.body108:                                      ; preds = %for.body108.lr.ph, %for.body108
  %indvars.iv365 = phi i64 [ 0, %for.body108.lr.ph ], [ %indvars.iv.next366, %for.body108 ]
  %51 = trunc i64 %indvars.iv365 to i32
  %add109 = add nsw i32 %45, %51
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx115 = getelementptr inbounds i16* %.pre409, i64 %idxprom110
  %52 = load i16* %arrayidx115, align 2, !tbaa !4
  %arrayidx119 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbU, i64 0, i64 %indvars.iv369, i64 %indvars.iv365
  store i16 %52, i16* %arrayidx119, align 2, !tbaa !4
  %53 = add nsw i64 %50, %indvars.iv365
  %arrayidx129 = getelementptr inbounds i16* %49, i64 %53
  %54 = load i16* %arrayidx129, align 2, !tbaa !4
  %arrayidx133 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbV, i64 0, i64 %indvars.iv369, i64 %indvars.iv365
  store i16 %54, i16* %arrayidx133, align 2, !tbaa !4
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %55 = trunc i64 %indvars.iv.next366 to i32
  %cmp106 = icmp slt i32 %55, %42
  br i1 %cmp106, label %for.body108, label %for.inc137

for.inc137:                                       ; preds = %for.body108, %for.cond105.preheader
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %56 = trunc i64 %indvars.iv.next370 to i32
  %cmp102 = icmp slt i32 %56, %41
  br i1 %cmp102, label %for.cond105.preheader, label %if.end140

if.end140:                                        ; preds = %for.cond101.preheader, %for.inc137, %for.end97
  %57 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 85
  %58 = load i32* %rdopt, align 4, !tbaa !3
  %cmp141 = icmp eq i32 %58, 2
  br i1 %cmp141, label %land.lhs.true, label %if.end186

land.lhs.true:                                    ; preds = %if.end140
  %59 = load i32* %type, align 4, !tbaa !3
  %cmp144 = icmp eq i32 %59, 1
  br i1 %cmp144, label %if.end186, label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %land.lhs.true
  %NoOfDecoders326 = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 97
  %60 = load i32* %NoOfDecoders326, align 4, !tbaa !3
  %cmp148327 = icmp sgt i32 %60, 0
  br i1 %cmp148327, label %for.body150.lr.ph, label %if.end186

for.body150.lr.ph:                                ; preds = %for.cond147.preheader
  %61 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY = getelementptr inbounds %struct.Decoders* %61, i64 0, i32 1
  %decY_best = getelementptr inbounds %struct.Decoders* %61, i64 0, i32 3
  br label %for.body157.lr.ph

for.body157.lr.ph:                                ; preds = %for.inc183, %for.body150.lr.ph
  %indvars.iv363 = phi i64 [ 0, %for.body150.lr.ph ], [ %indvars.iv.next364, %for.inc183 ]
  br label %for.body164.lr.ph

for.body164.lr.ph:                                ; preds = %for.inc180, %for.body157.lr.ph
  %indvars.iv361 = phi i64 [ %28, %for.body157.lr.ph ], [ %indvars.iv.next362, %for.inc180 ]
  %62 = load i16**** %decY, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds i16*** %62, i64 %indvars.iv363
  %63 = load i16*** %arrayidx168, align 8, !tbaa !0
  %arrayidx169 = getelementptr inbounds i16** %63, i64 %indvars.iv361
  %64 = load i16** %arrayidx169, align 8, !tbaa !0
  %65 = load i16**** %decY_best, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i16*** %65, i64 %indvars.iv363
  %66 = load i16*** %arrayidx174, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i16** %66, i64 %indvars.iv361
  %67 = load i16** %arrayidx175, align 8, !tbaa !0
  br label %for.body164

for.body164:                                      ; preds = %for.body164.lr.ph, %for.body164
  %indvars.iv358 = phi i64 [ %27, %for.body164.lr.ph ], [ %indvars.iv.next359, %for.body164 ]
  %arrayidx170 = getelementptr inbounds i16* %64, i64 %indvars.iv358
  %68 = load i16* %arrayidx170, align 2, !tbaa !4
  %arrayidx176 = getelementptr inbounds i16* %67, i64 %indvars.iv358
  store i16 %68, i16* %arrayidx176, align 2, !tbaa !4
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %69 = add nsw i32 %23, 15
  %70 = trunc i64 %indvars.iv358 to i32
  %cmp162 = icmp slt i32 %70, %69
  br i1 %cmp162, label %for.body164, label %for.inc180

for.inc180:                                       ; preds = %for.body164
  %indvars.iv.next362 = add i64 %indvars.iv361, 1
  %71 = add nsw i32 %24, 15
  %72 = trunc i64 %indvars.iv361 to i32
  %cmp155 = icmp slt i32 %72, %71
  br i1 %cmp155, label %for.body164.lr.ph, label %for.inc183

for.inc183:                                       ; preds = %for.inc180
  %indvars.iv.next364 = add i64 %indvars.iv363, 1
  %73 = trunc i64 %indvars.iv.next364 to i32
  %cmp148 = icmp slt i32 %73, %60
  br i1 %cmp148, label %for.body157.lr.ph, label %if.end186

if.end186:                                        ; preds = %for.cond147.preheader, %for.inc183, %land.lhs.true, %if.end140
  %tobool.not = icmp ne i32 %mode, 0
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %if.then188, label %if.else191

if.then188:                                       ; preds = %if.end186
  %74 = load i32***** @cofAC, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %75 = load i32***** %cofAC, align 8, !tbaa !0
  store i32**** %75, i32***** @cofAC, align 8, !tbaa !0
  store i32**** %74, i32***** %cofAC, align 8, !tbaa !0
  %76 = load i32**** @cofDC, align 8, !tbaa !0
  %77 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofDC = getelementptr inbounds %struct.ImageParameters* %77, i64 0, i32 48
  %78 = load i32**** %cofDC, align 8, !tbaa !0
  store i32*** %78, i32**** @cofDC, align 8, !tbaa !0
  store i32*** %76, i32**** %cofDC, align 8, !tbaa !0
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %79 = load i32* %cbp, align 4, !tbaa !3
  store i32 %79, i32* @cbp, align 4, !tbaa !3
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %80 = load i64* %cbp_blk, align 8, !tbaa !5
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %.pre405 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %if.end192

if.else191:                                       ; preds = %if.end186
  store i32 0, i32* @cbp, align 4, !tbaa !3
  br label %if.end192

if.end192:                                        ; preds = %if.else191, %if.then188
  %81 = phi %struct.storable_picture* [ %25, %if.else191 ], [ %.pre405, %if.then188 ]
  %82 = phi %struct.ImageParameters* [ %0, %if.else191 ], [ %.pre, %if.then188 ]
  %storemerge315 = phi i64 [ 0, %if.else191 ], [ %80, %if.then188 ]
  store i64 %storemerge315, i64* @cbp_blk, align 8, !tbaa !5
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %83 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  store i32 %83, i32* @luma_transform_size_8x8_flag, align 4, !tbaa !3
  %block_y201 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 32
  %84 = load i32* %block_y201, align 4, !tbaa !3
  %block_x204 = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 31
  %85 = load i32* %block_x204, align 4, !tbaa !3
  %ref_idx = getelementptr inbounds %struct.storable_picture* %81, i64 0, i32 32
  %86 = load i16**** %ref_idx, align 8, !tbaa !0
  %87 = load i16*** %86, align 8, !tbaa !0
  %88 = sext i32 %85 to i64
  %89 = sext i32 %84 to i64
  br label %for.cond197.preheader

for.cond197.preheader:                            ; preds = %for.inc234, %if.end192
  %indvars.iv353 = phi i64 [ 0, %if.end192 ], [ %indvars.iv.next354, %for.inc234 ]
  %90 = add nsw i64 %89, %indvars.iv353
  br label %for.body200

for.body200:                                      ; preds = %for.inc231, %for.cond197.preheader
  %indvars.iv = phi i64 [ 0, %for.cond197.preheader ], [ %indvars.iv.next, %for.inc231 ]
  %91 = add nsw i64 %88, %indvars.iv
  %arrayidx208 = getelementptr inbounds i16** %87, i64 %91
  %92 = load i16** %arrayidx208, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i16* %92, i64 %90
  %93 = load i16* %arrayidx209, align 2, !tbaa !4
  %arrayidx213 = getelementptr inbounds [4 x [4 x i16]]* @frefframe, i64 0, i64 %indvars.iv353, i64 %indvars.iv
  store i16 %93, i16* %arrayidx213, align 2, !tbaa !4
  br i1 %cmp, label %if.then215, label %for.inc231

if.then215:                                       ; preds = %for.body200
  %94 = trunc i64 %indvars.iv353 to i32
  %add217 = add nsw i32 %84, %94
  %idxprom218 = sext i32 %add217 to i64
  %95 = trunc i64 %indvars.iv to i32
  %add220 = add nsw i32 %85, %95
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx223 = getelementptr inbounds i16*** %86, i64 1
  %96 = load i16*** %arrayidx223, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds i16** %96, i64 %idxprom221
  %97 = load i16** %arrayidx224, align 8, !tbaa !0
  %arrayidx225 = getelementptr inbounds i16* %97, i64 %idxprom218
  %98 = load i16* %arrayidx225, align 2, !tbaa !4
  %arrayidx229 = getelementptr inbounds [4 x [4 x i16]]* @brefframe, i64 0, i64 %indvars.iv353, i64 %indvars.iv
  store i16 %98, i16* %arrayidx229, align 2, !tbaa !4
  br label %for.inc231

for.inc231:                                       ; preds = %for.body200, %if.then215
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc234, label %for.body200

for.inc234:                                       ; preds = %for.inc231
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  %lftr.wideiv356 = trunc i64 %indvars.iv.next354 to i32
  %exitcond357 = icmp eq i32 %lftr.wideiv356, 4
  br i1 %exitcond357, label %for.end236, label %for.cond197.preheader

for.end236:                                       ; preds = %for.inc234
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @set_stored_macroblock_parameters() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom
  %3 = load i32* @best_mode, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 1
  %conv = zext i1 %cmp to i32
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %5 = load i32*** %ipredmode, align 8, !tbaa !0
  %6 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY1 = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 25
  %7 = load i16*** %imgY1, align 8, !tbaa !0
  %imgUV2 = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 30
  %8 = load i16**** %imgUV2, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %9 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22
  %10 = load i32* %mb_field, align 4, !tbaa !3
  %tobool3 = icmp eq i32 %10, 0
  br i1 %tobool3, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem1524 = shl i32 %1, 1
  %11 = and i32 %rem1524, 2
  %12 = add i32 %11, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond6 = phi i32 [ %12, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %13 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc33, %cond.end
  %indvars.iv1682 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next1683, %for.inc33 ]
  br label %for.body12

for.body12:                                       ; preds = %for.inc, %for.cond9.preheader
  %indvars.iv1678 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next1679, %for.inc ]
  %arrayidx16 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY, i64 0, i64 %indvars.iv1682, i64 %indvars.iv1678
  %14 = load i16* %arrayidx16, align 2, !tbaa !4
  %15 = load i32* %pix_x, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv1678 to i32
  %add = add nsw i32 %15, %16
  %idxprom17 = sext i32 %add to i64
  %17 = load i32* %pix_y, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv1682 to i32
  %add18 = add nsw i32 %17, %18
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i16** %7, i64 %idxprom19
  %19 = load i16** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i16* %19, i64 %idxprom17
  store i16 %14, i16* %arrayidx21, align 2, !tbaa !4
  %20 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %20, 0
  br i1 %tobool23, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body12
  %21 = load i16* %arrayidx16, align 2, !tbaa !4
  %conv28 = zext i16 %21 to i32
  %arrayidx32 = getelementptr inbounds %struct.RD_DATA* %13, i64 0, i32 1, i64 %indvars.iv1682, i64 %indvars.iv1678
  store i32 %conv28, i32* %arrayidx32, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body12, %if.then
  %indvars.iv.next1679 = add i64 %indvars.iv1678, 1
  %lftr.wideiv1680 = trunc i64 %indvars.iv.next1679 to i32
  %exitcond1681 = icmp eq i32 %lftr.wideiv1680, 16
  br i1 %exitcond1681, label %for.inc33, label %for.body12

for.inc33:                                        ; preds = %for.inc
  %indvars.iv.next1683 = add i64 %indvars.iv1682, 1
  %lftr.wideiv1684 = trunc i64 %indvars.iv.next1683 to i32
  %exitcond1685 = icmp eq i32 %lftr.wideiv1684, 16
  br i1 %exitcond1685, label %for.end35, label %for.cond9.preheader

for.end35:                                        ; preds = %for.inc33
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %22 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp36 = icmp eq i32 %22, 0
  br i1 %cmp36, label %if.end99, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.end35
  %mb_cr_size_y1589 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %23 = load i32* %mb_cr_size_y1589, align 4, !tbaa !3
  %cmp401590 = icmp sgt i32 %23, 0
  br i1 %cmp401590, label %for.cond43.preheader.lr.ph, label %if.end99

for.cond43.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %mb_cr_size_x1586 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %pix_c_x62 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 35
  %pix_c_y65 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 36
  %arrayidx68 = getelementptr inbounds i16*** %8, i64 1
  %.pre1691 = load i32* %mb_cr_size_x1586, align 4, !tbaa !3
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader.lr.ph, %for.inc96
  %24 = phi i32 [ %23, %for.cond43.preheader.lr.ph ], [ %42, %for.inc96 ]
  %25 = phi i32 [ %.pre1691, %for.cond43.preheader.lr.ph ], [ %43, %for.inc96 ]
  %indvars.iv1676 = phi i64 [ 0, %for.cond43.preheader.lr.ph ], [ %indvars.iv.next1677, %for.inc96 ]
  %cmp441587 = icmp sgt i32 %25, 0
  br i1 %cmp441587, label %for.body46.lr.ph, label %for.inc96

for.body46.lr.ph:                                 ; preds = %for.cond43.preheader
  %26 = load i16*** %8, align 8, !tbaa !0
  %27 = load i16*** %arrayidx68, align 8, !tbaa !0
  br label %for.body46

for.body46:                                       ; preds = %for.inc93, %for.body46.lr.ph
  %28 = phi i32 [ %25, %for.body46.lr.ph ], [ %40, %for.inc93 ]
  %indvars.iv1674 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next1675, %for.inc93 ]
  %arrayidx50 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbU, i64 0, i64 %indvars.iv1676, i64 %indvars.iv1674
  %29 = load i16* %arrayidx50, align 2, !tbaa !4
  %30 = load i32* %pix_c_x62, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv1674 to i32
  %add51 = add nsw i32 %30, %31
  %idxprom52 = sext i32 %add51 to i64
  %32 = load i32* %pix_c_y65, align 4, !tbaa !3
  %33 = trunc i64 %indvars.iv1676 to i32
  %add53 = add nsw i32 %32, %33
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx56 = getelementptr inbounds i16** %26, i64 %idxprom54
  %34 = load i16** %arrayidx56, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i16* %34, i64 %idxprom52
  store i16 %29, i16* %arrayidx57, align 2, !tbaa !4
  %arrayidx61 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbV, i64 0, i64 %indvars.iv1676, i64 %indvars.iv1674
  %35 = load i16* %arrayidx61, align 2, !tbaa !4
  %arrayidx69 = getelementptr inbounds i16** %27, i64 %idxprom54
  %36 = load i16** %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i16* %36, i64 %idxprom52
  store i16 %35, i16* %arrayidx70, align 2, !tbaa !4
  %37 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool72 = icmp eq i32 %37, 0
  br i1 %tobool72, label %for.inc93, label %if.then73

if.then73:                                        ; preds = %for.body46
  %38 = load i16* %arrayidx50, align 2, !tbaa !4
  %conv78 = zext i16 %38 to i32
  %arrayidx82 = getelementptr inbounds %struct.RD_DATA* %13, i64 0, i32 2, i64 %indvars.iv1676, i64 %indvars.iv1674
  store i32 %conv78, i32* %arrayidx82, align 4, !tbaa !3
  %39 = load i16* %arrayidx61, align 2, !tbaa !4
  %conv87 = zext i16 %39 to i32
  %arrayidx91 = getelementptr inbounds %struct.RD_DATA* %13, i64 0, i32 3, i64 %indvars.iv1676, i64 %indvars.iv1674
  store i32 %conv87, i32* %arrayidx91, align 4, !tbaa !3
  %.pre1692 = load i32* %mb_cr_size_x1586, align 4, !tbaa !3
  br label %for.inc93

for.inc93:                                        ; preds = %for.body46, %if.then73
  %40 = phi i32 [ %28, %for.body46 ], [ %.pre1692, %if.then73 ]
  %indvars.iv.next1675 = add i64 %indvars.iv1674, 1
  %41 = trunc i64 %indvars.iv.next1675 to i32
  %cmp44 = icmp slt i32 %41, %40
  br i1 %cmp44, label %for.body46, label %for.cond43.for.inc96_crit_edge

for.cond43.for.inc96_crit_edge:                   ; preds = %for.inc93
  %.pre1694 = load i32* %mb_cr_size_y1589, align 4, !tbaa !3
  br label %for.inc96

for.inc96:                                        ; preds = %for.cond43.preheader, %for.cond43.for.inc96_crit_edge
  %42 = phi i32 [ %.pre1694, %for.cond43.for.inc96_crit_edge ], [ %24, %for.cond43.preheader ]
  %43 = phi i32 [ %40, %for.cond43.for.inc96_crit_edge ], [ %25, %for.cond43.preheader ]
  %indvars.iv.next1677 = add i64 %indvars.iv1676, 1
  %44 = trunc i64 %indvars.iv.next1677 to i32
  %cmp40 = icmp slt i32 %44, %42
  br i1 %cmp40, label %for.cond43.preheader, label %if.end99

if.end99:                                         ; preds = %for.cond39.preheader, %for.inc96, %for.end35
  %45 = load i32***** @cofAC, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %46 = load i32***** %cofAC, align 8, !tbaa !0
  store i32**** %46, i32***** @cofAC, align 8, !tbaa !0
  store i32**** %45, i32***** %cofAC, align 8, !tbaa !0
  %47 = load i32**** @cofDC, align 8, !tbaa !0
  %48 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofDC = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 48
  %49 = load i32**** %cofDC, align 8, !tbaa !0
  store i32*** %49, i32**** @cofDC, align 8, !tbaa !0
  store i32*** %47, i32**** %cofDC, align 8, !tbaa !0
  %50 = load i32* @cbp, align 4, !tbaa !3
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  store i32 %50, i32* %cbp, align 4, !tbaa !3
  %51 = load i64* @cbp_blk, align 8, !tbaa !5
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  store i64 %51, i64* %cbp_blk, align 8, !tbaa !5
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  store i32 %3, i32* %mb_type, align 4, !tbaa !3
  %52 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag102 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 90
  %53 = load i32* %MbaffFrameFlag102, align 4, !tbaa !3
  %tobool103 = icmp eq i32 %53, 0
  %.pre1693 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  br i1 %tobool103, label %for.cond196.preheader, label %if.then104

if.then104:                                       ; preds = %if.end99
  %mode105 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 14
  store i32 %3, i32* %mode105, align 4, !tbaa !3
  %i16offset = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 85
  %54 = load i32* %i16offset, align 4, !tbaa !3
  %i16offset106 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 20
  store i32 %54, i32* %i16offset106, align 4, !tbaa !3
  %55 = load i32* @cbp, align 4, !tbaa !3
  %cbp107 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 12
  store i32 %55, i32* %cbp107, align 4, !tbaa !3
  %56 = load i64* @cbp_blk, align 8, !tbaa !5
  %cbp_blk108 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 13
  store i64 %56, i64* %cbp_blk108, align 8, !tbaa !5
  %mb_type109 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 6
  store i32 %3, i32* %mb_type109, align 4, !tbaa !3
  %prev_qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 36
  %57 = load i32* %prev_qp, align 4, !tbaa !3
  %prev_qp110 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 25
  store i32 %57, i32* %prev_qp110, align 4, !tbaa !3
  %prev_delta_qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 37
  %58 = load i32* %prev_delta_qp, align 4, !tbaa !3
  %prev_delta_qp111 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 26
  store i32 %58, i32* %prev_delta_qp111, align 4, !tbaa !3
  %qp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3
  %59 = load i32* %qp, align 4, !tbaa !3
  %qp112 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 24
  store i32 %59, i32* %qp112, align 4, !tbaa !3
  %num_blk8x8_uv1582 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 157
  %60 = load i32* %num_blk8x8_uv1582, align 4, !tbaa !3
  %add1141583 = add nsw i32 %60, 4
  %cmp1151584 = icmp sgt i32 %add1141583, 0
  br i1 %cmp1151584, label %for.cond118.preheader.lr.ph, label %for.cond160.preheader

for.cond118.preheader.lr.ph:                      ; preds = %if.then104
  %cofAC134 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 47
  %61 = load i32***** %cofAC134, align 8, !tbaa !0
  %cofAC143 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 4
  %62 = load i32***** %cofAC143, align 8, !tbaa !0
  br label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %for.cond118.preheader.lr.ph, %for.inc157
  %indvars.iv1672 = phi i64 [ 0, %for.cond118.preheader.lr.ph ], [ %indvars.iv.next1673, %for.inc157 ]
  %arrayidx135 = getelementptr inbounds i32**** %61, i64 %indvars.iv1672
  %63 = load i32**** %arrayidx135, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i32**** %62, i64 %indvars.iv1672
  %64 = load i32**** %arrayidx144, align 8, !tbaa !0
  br label %for.cond122.preheader

for.cond160.preheader:                            ; preds = %for.inc157, %if.then104
  %cofDC175 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 48
  %65 = load i32**** %cofDC175, align 8, !tbaa !0
  %cofDC182 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 5
  %66 = load i32**** %cofDC182, align 8, !tbaa !0
  br label %for.cond164.preheader

for.cond122.preheader:                            ; preds = %for.inc154, %for.cond118.preheader
  %indvars.iv1668 = phi i64 [ 0, %for.cond118.preheader ], [ %indvars.iv.next1669, %for.inc154 ]
  %arrayidx136 = getelementptr inbounds i32*** %63, i64 %indvars.iv1668
  %67 = load i32*** %arrayidx136, align 8, !tbaa !0
  %arrayidx145 = getelementptr inbounds i32*** %64, i64 %indvars.iv1668
  %68 = load i32*** %arrayidx145, align 8, !tbaa !0
  br label %for.cond126.preheader

for.cond126.preheader:                            ; preds = %for.inc151, %for.cond122.preheader
  %indvars.iv1664 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next1665, %for.inc151 ]
  %arrayidx137 = getelementptr inbounds i32** %67, i64 %indvars.iv1664
  %69 = load i32** %arrayidx137, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32** %68, i64 %indvars.iv1664
  %70 = load i32** %arrayidx146, align 8, !tbaa !0
  br label %for.body129

for.body129:                                      ; preds = %for.body129, %for.cond126.preheader
  %indvars.iv1660 = phi i64 [ 0, %for.cond126.preheader ], [ %indvars.iv.next1661, %for.body129 ]
  %arrayidx138 = getelementptr inbounds i32* %69, i64 %indvars.iv1660
  %71 = load i32* %arrayidx138, align 4, !tbaa !3
  %arrayidx147 = getelementptr inbounds i32* %70, i64 %indvars.iv1660
  store i32 %71, i32* %arrayidx147, align 4, !tbaa !3
  %indvars.iv.next1661 = add i64 %indvars.iv1660, 1
  %lftr.wideiv1662 = trunc i64 %indvars.iv.next1661 to i32
  %exitcond1663 = icmp eq i32 %lftr.wideiv1662, 65
  br i1 %exitcond1663, label %for.inc151, label %for.body129

for.inc151:                                       ; preds = %for.body129
  %indvars.iv.next1665 = add i64 %indvars.iv1664, 1
  %lftr.wideiv1666 = trunc i64 %indvars.iv.next1665 to i32
  %exitcond1667 = icmp eq i32 %lftr.wideiv1666, 2
  br i1 %exitcond1667, label %for.inc154, label %for.cond126.preheader

for.inc154:                                       ; preds = %for.inc151
  %indvars.iv.next1669 = add i64 %indvars.iv1668, 1
  %lftr.wideiv1670 = trunc i64 %indvars.iv.next1669 to i32
  %exitcond1671 = icmp eq i32 %lftr.wideiv1670, 4
  br i1 %exitcond1671, label %for.inc157, label %for.cond122.preheader

for.inc157:                                       ; preds = %for.inc154
  %indvars.iv.next1673 = add i64 %indvars.iv1672, 1
  %72 = load i32* %num_blk8x8_uv1582, align 4, !tbaa !3
  %73 = add nsw i32 %72, 3
  %74 = trunc i64 %indvars.iv1672 to i32
  %cmp115 = icmp slt i32 %74, %73
  br i1 %cmp115, label %for.cond118.preheader, label %for.cond160.preheader

for.cond164.preheader:                            ; preds = %for.inc192, %for.cond160.preheader
  %indvars.iv1656 = phi i64 [ 0, %for.cond160.preheader ], [ %indvars.iv.next1657, %for.inc192 ]
  %arrayidx176 = getelementptr inbounds i32*** %65, i64 %indvars.iv1656
  %75 = load i32*** %arrayidx176, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i32*** %66, i64 %indvars.iv1656
  %76 = load i32*** %arrayidx183, align 8, !tbaa !0
  br label %for.cond168.preheader

for.cond196.preheader:                            ; preds = %if.end99, %for.inc192
  br label %for.body199

for.cond168.preheader:                            ; preds = %for.inc189, %for.cond164.preheader
  %indvars.iv1652 = phi i64 [ 0, %for.cond164.preheader ], [ %indvars.iv.next1653, %for.inc189 ]
  %arrayidx177 = getelementptr inbounds i32** %75, i64 %indvars.iv1652
  %77 = load i32** %arrayidx177, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i32** %76, i64 %indvars.iv1652
  %78 = load i32** %arrayidx184, align 8, !tbaa !0
  br label %for.body171

for.body171:                                      ; preds = %for.body171, %for.cond168.preheader
  %indvars.iv1648 = phi i64 [ 0, %for.cond168.preheader ], [ %indvars.iv.next1649, %for.body171 ]
  %arrayidx178 = getelementptr inbounds i32* %77, i64 %indvars.iv1648
  %79 = load i32* %arrayidx178, align 4, !tbaa !3
  %arrayidx185 = getelementptr inbounds i32* %78, i64 %indvars.iv1648
  store i32 %79, i32* %arrayidx185, align 4, !tbaa !3
  %indvars.iv.next1649 = add i64 %indvars.iv1648, 1
  %lftr.wideiv1650 = trunc i64 %indvars.iv.next1649 to i32
  %exitcond1651 = icmp eq i32 %lftr.wideiv1650, 18
  br i1 %exitcond1651, label %for.inc189, label %for.body171

for.inc189:                                       ; preds = %for.body171
  %indvars.iv.next1653 = add i64 %indvars.iv1652, 1
  %lftr.wideiv1654 = trunc i64 %indvars.iv.next1653 to i32
  %exitcond1655 = icmp eq i32 %lftr.wideiv1654, 2
  br i1 %exitcond1655, label %for.inc192, label %for.cond168.preheader

for.inc192:                                       ; preds = %for.inc189
  %indvars.iv.next1657 = add i64 %indvars.iv1656, 1
  %lftr.wideiv1658 = trunc i64 %indvars.iv.next1657 to i32
  %exitcond1659 = icmp eq i32 %lftr.wideiv1658, 3
  br i1 %exitcond1659, label %for.cond196.preheader, label %for.cond164.preheader

for.body199:                                      ; preds = %for.inc226, %for.cond196.preheader
  %indvars.iv1644 = phi i64 [ 0, %for.cond196.preheader ], [ %indvars.iv.next1645, %for.inc226 ]
  %arrayidx201 = getelementptr inbounds [4 x i16]* @b8mode, i64 0, i64 %indvars.iv1644
  %80 = load i16* %arrayidx201, align 2, !tbaa !4
  %conv202 = sext i16 %80 to i32
  %arrayidx204 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv1644
  store i32 %conv202, i32* %arrayidx204, align 4, !tbaa !3
  %arrayidx206 = getelementptr inbounds [4 x i16]* @b8pdir, i64 0, i64 %indvars.iv1644
  %81 = load i16* %arrayidx206, align 2, !tbaa !4
  %conv207 = sext i16 %81 to i32
  %arrayidx209 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv1644
  store i32 %conv207, i32* %arrayidx209, align 4, !tbaa !3
  %82 = load i32* %MbaffFrameFlag102, align 4, !tbaa !3
  %tobool211 = icmp eq i32 %82, 0
  br i1 %tobool211, label %for.inc226, label %if.then212

if.then212:                                       ; preds = %for.body199
  %arrayidx218 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 8, i64 %indvars.iv1644
  store i32 %conv202, i32* %arrayidx218, align 4, !tbaa !3
  %arrayidx224 = getelementptr inbounds %struct.RD_DATA* %.pre1693, i64 0, i32 9, i64 %indvars.iv1644
  store i32 %conv207, i32* %arrayidx224, align 4, !tbaa !3
  br label %for.inc226

for.inc226:                                       ; preds = %for.body199, %if.then212
  %indvars.iv.next1645 = add i64 %indvars.iv1644, 1
  %lftr.wideiv1646 = trunc i64 %indvars.iv.next1645 to i32
  %exitcond1647 = icmp eq i32 %lftr.wideiv1646, 4
  br i1 %exitcond1647, label %for.end228, label %for.body199

for.end228:                                       ; preds = %for.inc226
  %83 = load i32* %mb_type, align 4, !tbaa !3
  %cmp230 = icmp eq i32 %83, 1
  br i1 %cmp230, label %if.then232, label %if.else

if.then232:                                       ; preds = %for.end228
  %84 = load i32* @bi_pred_me, align 4, !tbaa !3
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  store i32 %84, i32* %bi_pred_me, align 4, !tbaa !3
  br label %if.end234

if.else:                                          ; preds = %for.end228
  %bi_pred_me233 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  store i32 0, i32* %bi_pred_me233, align 4, !tbaa !3
  br label %if.end234

if.end234:                                        ; preds = %if.else, %if.then232
  %cmp235 = icmp ne i32 %3, 8
  %85 = load i32* @luma_transform_size_8x8_flag, align 4, !tbaa !3
  %tobool238 = icmp ne i32 %85, 0
  %or.cond = or i1 %cmp235, %tobool238
  br i1 %or.cond, label %if.end242, label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.end234
  %86 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %86, i64 0, i32 123
  %87 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool240 = icmp eq i32 %87, 0
  br i1 %tobool240, label %if.end242, label %if.then241

if.then241:                                       ; preds = %land.lhs.true239
  tail call void @RestoreMV8x8(i32 1) #10
  br label %if.end242

if.end242:                                        ; preds = %land.lhs.true239, %if.end234, %if.then241
  %88 = load i32* %cbp, align 4, !tbaa !3
  %and = and i32 %88, 15
  %cmp244 = icmp eq i32 %and, 0
  br i1 %cmp244, label %land.lhs.true246, label %if.else254

land.lhs.true246:                                 ; preds = %if.end242
  %89 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %89, label %if.then253 [
    i32 9, label %if.else254
    i32 13, label %if.else254
  ]

if.then253:                                       ; preds = %land.lhs.true246
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  store i32 0, i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  br label %if.end256

if.else254:                                       ; preds = %land.lhs.true246, %land.lhs.true246, %if.end242
  %90 = load i32* @luma_transform_size_8x8_flag, align 4, !tbaa !3
  %luma_transform_size_8x8_flag255 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  store i32 %90, i32* %luma_transform_size_8x8_flag255, align 4, !tbaa !3
  br label %if.end256

if.end256:                                        ; preds = %if.else254, %if.then253
  %91 = phi i32 [ %90, %if.else254 ], [ 0, %if.then253 ]
  %92 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %luma_transform_size_8x8_flag258 = getelementptr inbounds %struct.RD_DATA* %92, i64 0, i32 22
  store i32 %91, i32* %luma_transform_size_8x8_flag258, align 4, !tbaa !3
  %93 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %93, i64 0, i32 85
  %94 = load i32* %rdopt, align 4, !tbaa !3
  %cmp259 = icmp eq i32 %94, 2
  br i1 %cmp259, label %land.lhs.true261, label %for.cond272.preheader

land.lhs.true261:                                 ; preds = %if.end256
  %95 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type262 = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 6
  %96 = load i32* %type262, align 4, !tbaa !3
  %cmp263 = icmp eq i32 %96, 1
  br i1 %cmp263, label %for.cond272.preheader, label %if.then265

if.then265:                                       ; preds = %land.lhs.true261
  %conv266 = trunc i32 %3 to i8
  %mb_y = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 30
  %97 = load i32* %mb_y, align 4, !tbaa !3
  %idxprom267 = sext i32 %97 to i64
  %mb_x = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 29
  %98 = load i32* %mb_x, align 4, !tbaa !3
  %idxprom268 = sext i32 %98 to i64
  %99 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %99, i64 0, i32 6
  %100 = load i8*** %dec_mb_mode, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i8** %100, i64 %idxprom268
  %101 = load i8** %arrayidx269, align 8, !tbaa !0
  %arrayidx270 = getelementptr inbounds i8* %101, i64 %idxprom267
  store i8 %conv266, i8* %arrayidx270, align 1, !tbaa !1
  br label %for.cond272.preheader

for.cond272.preheader:                            ; preds = %land.lhs.true261, %if.then265, %if.end256
  %bi_pred_me347 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  %idxprom3821523 = zext i32 %cond6 to i64
  br label %for.cond276.preheader

for.cond276.preheader:                            ; preds = %for.inc659, %for.cond272.preheader
  %indvars.iv1640 = phi i64 [ 0, %for.cond272.preheader ], [ %indvars.iv.next1641, %for.inc659 ]
  %102 = trunc i64 %indvars.iv1640 to i32
  %div280 = sdiv i32 %102, 2
  %mul = shl i32 %div280, 1
  br label %for.body279

for.body279:                                      ; preds = %for.inc656, %for.cond276.preheader
  %indvars.iv1636 = phi i64 [ 0, %for.cond276.preheader ], [ %indvars.iv.next1637, %for.inc656 ]
  %103 = trunc i64 %indvars.iv1636 to i32
  %div = sdiv i32 %103, 2
  %add281 = add nsw i32 %mul, %div
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx284 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom282
  %104 = load i32* %arrayidx284, align 4, !tbaa !3
  %cmp285 = icmp eq i32 %104, 1
  br i1 %cmp285, label %if.then299, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %for.body279
  %105 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %105, label %if.else346 [
    i32 9, label %if.then299
    i32 10, label %if.then299
    i32 13, label %if.then299
  ]

if.then299:                                       ; preds = %lor.lhs.false287, %lor.lhs.false287, %lor.lhs.false287, %for.body279
  %106 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 32
  %107 = load i32* %block_y, align 4, !tbaa !3
  %add300 = add nsw i32 %107, %102
  %idxprom301 = sext i32 %add300 to i64
  %block_x = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 31
  %108 = load i32* %block_x, align 4, !tbaa !3
  %add302 = add nsw i32 %108, %103
  %idxprom303 = sext i32 %add302 to i64
  %109 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 32
  %110 = load i16**** %ref_idx, align 8, !tbaa !0
  %111 = load i16*** %110, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i16** %111, i64 %idxprom303
  %112 = load i16** %arrayidx305, align 8, !tbaa !0
  %arrayidx306 = getelementptr inbounds i16* %112, i64 %idxprom301
  store i16 -1, i16* %arrayidx306, align 2, !tbaa !4
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 33
  %113 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %114 = load i64*** %113, align 8, !tbaa !0
  %arrayidx314 = getelementptr inbounds i64** %114, i64 %idxprom303
  %115 = load i64** %arrayidx314, align 8, !tbaa !0
  %arrayidx315 = getelementptr inbounds i64* %115, i64 %idxprom301
  store i64 -1, i64* %arrayidx315, align 8, !tbaa !5
  %mv = getelementptr inbounds %struct.storable_picture* %109, i64 0, i32 35
  %116 = load i16***** %mv, align 8, !tbaa !0
  %117 = load i16**** %116, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds i16*** %117, i64 %idxprom303
  %118 = load i16*** %arrayidx323, align 8, !tbaa !0
  %arrayidx324 = getelementptr inbounds i16** %118, i64 %idxprom301
  %119 = load i16** %arrayidx324, align 8, !tbaa !0
  store i16 0, i16* %119, align 2, !tbaa !4
  %arrayidx336 = getelementptr inbounds i16* %119, i64 1
  store i16 0, i16* %arrayidx336, align 2, !tbaa !4
  %MbaffFrameFlag337 = getelementptr inbounds %struct.ImageParameters* %106, i64 0, i32 90
  %120 = load i32* %MbaffFrameFlag337, align 4, !tbaa !3
  %tobool338 = icmp eq i32 %120, 0
  br i1 %tobool338, label %if.end580, label %if.then339

if.then339:                                       ; preds = %if.then299
  %121 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx344 = getelementptr inbounds %struct.RD_DATA* %121, i64 0, i32 19, i64 0, i64 %indvars.iv1640, i64 %indvars.iv1636
  store i16 -1, i16* %arrayidx344, align 2, !tbaa !4
  br label %if.end580

if.else346:                                       ; preds = %lor.lhs.false287
  %122 = load i32* %bi_pred_me347, align 4, !tbaa !3
  %tobool348 = icmp ne i32 %122, 0
  %cmp357 = icmp eq i32 %104, 2
  %or.cond1525 = and i1 %tobool348, %cmp357
  %cmp361 = icmp eq i32 %105, 1
  %or.cond1526 = and i1 %or.cond1525, %cmp361
  br i1 %or.cond1526, label %if.then363, label %if.else459

if.then363:                                       ; preds = %if.else346
  %cmp365 = icmp eq i32 %122, 1
  %123 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 73
  %cond370.in = select i1 %cmp365, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond370 = load i16******* %cond370.in, align 8
  %block_y371 = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 32
  %124 = load i32* %block_y371, align 4, !tbaa !3
  %add372 = add nsw i32 %124, %102
  %idxprom373 = sext i32 %add372 to i64
  %block_x374 = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 31
  %125 = load i32* %block_x374, align 4, !tbaa !3
  %add375 = add nsw i32 %125, %103
  %idxprom376 = sext i32 %add375 to i64
  %126 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx377 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 32
  %127 = load i16**** %ref_idx377, align 8, !tbaa !0
  %128 = load i16*** %127, align 8, !tbaa !0
  %arrayidx379 = getelementptr inbounds i16** %128, i64 %idxprom376
  %129 = load i16** %arrayidx379, align 8, !tbaa !0
  %arrayidx380 = getelementptr inbounds i16* %129, i64 %idxprom373
  store i16 0, i16* %arrayidx380, align 2, !tbaa !4
  %arrayidx384 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 6, i64 %idxprom3821523, i64 0
  %130 = load i64* %arrayidx384, align 8, !tbaa !5
  %ref_pic_id391 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 33
  %131 = load i64**** %ref_pic_id391, align 8, !tbaa !0
  %132 = load i64*** %131, align 8, !tbaa !0
  %arrayidx393 = getelementptr inbounds i64** %132, i64 %idxprom376
  %133 = load i64** %arrayidx393, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i64* %133, i64 %idxprom373
  store i64 %130, i64* %arrayidx394, align 8, !tbaa !5
  %arrayidx401 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom282
  %134 = load i32* %arrayidx401, align 4, !tbaa !3
  %idxprom402 = sext i32 %134 to i64
  %arrayidx405 = getelementptr inbounds i16****** %cond370, i64 %indvars.iv1636
  %135 = load i16****** %arrayidx405, align 8, !tbaa !0
  %arrayidx406 = getelementptr inbounds i16***** %135, i64 %indvars.iv1640
  %136 = load i16***** %arrayidx406, align 8, !tbaa !0
  %137 = load i16**** %136, align 8, !tbaa !0
  %138 = load i16*** %137, align 8, !tbaa !0
  %arrayidx409 = getelementptr inbounds i16** %138, i64 %idxprom402
  %139 = load i16** %arrayidx409, align 8, !tbaa !0
  %140 = load i16* %139, align 2, !tbaa !4
  %mv417 = getelementptr inbounds %struct.storable_picture* %126, i64 0, i32 35
  %141 = load i16***** %mv417, align 8, !tbaa !0
  %142 = load i16**** %141, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i16*** %142, i64 %idxprom376
  %143 = load i16*** %arrayidx419, align 8, !tbaa !0
  %arrayidx420 = getelementptr inbounds i16** %143, i64 %idxprom373
  %144 = load i16** %arrayidx420, align 8, !tbaa !0
  store i16 %140, i16* %144, align 2, !tbaa !4
  %arrayidx437 = getelementptr inbounds i16* %139, i64 1
  %145 = load i16* %arrayidx437, align 2, !tbaa !4
  %arrayidx448 = getelementptr inbounds i16* %144, i64 1
  store i16 %145, i16* %arrayidx448, align 2, !tbaa !4
  %MbaffFrameFlag449 = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 90
  %146 = load i32* %MbaffFrameFlag449, align 4, !tbaa !3
  %tobool450 = icmp eq i32 %146, 0
  br i1 %tobool450, label %if.end580, label %if.then451

if.then451:                                       ; preds = %if.then363
  %147 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds %struct.RD_DATA* %147, i64 0, i32 19, i64 0, i64 %indvars.iv1640, i64 %indvars.iv1636
  store i16 0, i16* %arrayidx457, align 2, !tbaa !4
  br label %if.end580

if.else459:                                       ; preds = %if.else346
  %arrayidx463 = getelementptr inbounds [4 x [4 x i16]]* @frefframe, i64 0, i64 %indvars.iv1640, i64 %indvars.iv1636
  %148 = load i16* %arrayidx463, align 2, !tbaa !4
  %149 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y464 = getelementptr inbounds %struct.ImageParameters* %149, i64 0, i32 32
  %150 = load i32* %block_y464, align 4, !tbaa !3
  %add465 = add nsw i32 %150, %102
  %idxprom466 = sext i32 %add465 to i64
  %block_x467 = getelementptr inbounds %struct.ImageParameters* %149, i64 0, i32 31
  %151 = load i32* %block_x467, align 4, !tbaa !3
  %add468 = add nsw i32 %151, %103
  %idxprom469 = sext i32 %add468 to i64
  %152 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx470 = getelementptr inbounds %struct.storable_picture* %152, i64 0, i32 32
  %153 = load i16**** %ref_idx470, align 8, !tbaa !0
  %154 = load i16*** %153, align 8, !tbaa !0
  %arrayidx472 = getelementptr inbounds i16** %154, i64 %idxprom469
  %155 = load i16** %arrayidx472, align 8, !tbaa !0
  %arrayidx473 = getelementptr inbounds i16* %155, i64 %idxprom466
  store i16 %148, i16* %arrayidx473, align 2, !tbaa !4
  %idxprom484 = sext i16 %148 to i64
  %arrayidx489 = getelementptr inbounds %struct.storable_picture* %152, i64 0, i32 6, i64 %idxprom3821523, i64 %idxprom484
  %156 = load i64* %arrayidx489, align 8, !tbaa !5
  %ref_pic_id496 = getelementptr inbounds %struct.storable_picture* %152, i64 0, i32 33
  %157 = load i64**** %ref_pic_id496, align 8, !tbaa !0
  %158 = load i64*** %157, align 8, !tbaa !0
  %arrayidx498 = getelementptr inbounds i64** %158, i64 %idxprom469
  %159 = load i64** %arrayidx498, align 8, !tbaa !0
  %arrayidx499 = getelementptr inbounds i64* %159, i64 %idxprom466
  store i64 %156, i64* %arrayidx499, align 8, !tbaa !5
  %arrayidx506 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom282
  %160 = load i32* %arrayidx506, align 4, !tbaa !3
  %idxprom507 = sext i32 %160 to i64
  %161 = load i16* %arrayidx463, align 2, !tbaa !4
  %idxprom512 = sext i16 %161 to i64
  %all_mv = getelementptr inbounds %struct.ImageParameters* %149, i64 0, i32 71
  %162 = load i16******* %all_mv, align 8, !tbaa !0
  %arrayidx515 = getelementptr inbounds i16****** %162, i64 %indvars.iv1636
  %163 = load i16****** %arrayidx515, align 8, !tbaa !0
  %arrayidx516 = getelementptr inbounds i16***** %163, i64 %indvars.iv1640
  %164 = load i16***** %arrayidx516, align 8, !tbaa !0
  %165 = load i16**** %164, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i16*** %165, i64 %idxprom512
  %166 = load i16*** %arrayidx518, align 8, !tbaa !0
  %arrayidx519 = getelementptr inbounds i16** %166, i64 %idxprom507
  %167 = load i16** %arrayidx519, align 8, !tbaa !0
  %168 = load i16* %167, align 2, !tbaa !4
  %mv527 = getelementptr inbounds %struct.storable_picture* %152, i64 0, i32 35
  %169 = load i16***** %mv527, align 8, !tbaa !0
  %170 = load i16**** %169, align 8, !tbaa !0
  %arrayidx529 = getelementptr inbounds i16*** %170, i64 %idxprom469
  %171 = load i16*** %arrayidx529, align 8, !tbaa !0
  %arrayidx530 = getelementptr inbounds i16** %171, i64 %idxprom466
  %172 = load i16** %arrayidx530, align 8, !tbaa !0
  store i16 %168, i16* %172, align 2, !tbaa !4
  %173 = load i16* %arrayidx463, align 2, !tbaa !4
  %idxprom544 = sext i16 %173 to i64
  %arrayidx551 = getelementptr inbounds i16*** %165, i64 %idxprom544
  %174 = load i16*** %arrayidx551, align 8, !tbaa !0
  %arrayidx552 = getelementptr inbounds i16** %174, i64 %idxprom507
  %175 = load i16** %arrayidx552, align 8, !tbaa !0
  %arrayidx553 = getelementptr inbounds i16* %175, i64 1
  %176 = load i16* %arrayidx553, align 2, !tbaa !4
  %arrayidx564 = getelementptr inbounds i16* %172, i64 1
  store i16 %176, i16* %arrayidx564, align 2, !tbaa !4
  %MbaffFrameFlag565 = getelementptr inbounds %struct.ImageParameters* %149, i64 0, i32 90
  %177 = load i32* %MbaffFrameFlag565, align 4, !tbaa !3
  %tobool566 = icmp eq i32 %177, 0
  br i1 %tobool566, label %if.end580, label %if.then567

if.then567:                                       ; preds = %if.else459
  %178 = load i16* %arrayidx463, align 2, !tbaa !4
  %179 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx577 = getelementptr inbounds %struct.RD_DATA* %179, i64 0, i32 19, i64 0, i64 %indvars.iv1640, i64 %indvars.iv1636
  store i16 %178, i16* %arrayidx577, align 2, !tbaa !4
  br label %if.end580

if.end580:                                        ; preds = %if.else459, %if.then363, %if.then299, %if.then451, %if.then567, %if.then339
  %180 = phi i32 [ 0, %if.then299 ], [ %146, %if.then451 ], [ %177, %if.then567 ], [ %120, %if.then339 ], [ 0, %if.then363 ], [ 0, %if.else459 ]
  %181 = phi i64*** [ %113, %if.then299 ], [ %131, %if.then451 ], [ %157, %if.then567 ], [ %113, %if.then339 ], [ %131, %if.then363 ], [ %157, %if.else459 ]
  %182 = phi i16*** [ %110, %if.then299 ], [ %127, %if.then451 ], [ %153, %if.then567 ], [ %110, %if.then339 ], [ %127, %if.then363 ], [ %153, %if.else459 ]
  %183 = phi i32 [ %108, %if.then299 ], [ %125, %if.then451 ], [ %151, %if.then567 ], [ %108, %if.then339 ], [ %125, %if.then363 ], [ %151, %if.else459 ]
  %184 = phi i32 [ %107, %if.then299 ], [ %124, %if.then451 ], [ %150, %if.then567 ], [ %107, %if.then339 ], [ %124, %if.then363 ], [ %150, %if.else459 ]
  %185 = phi i16**** [ %116, %if.then299 ], [ %141, %if.then451 ], [ %169, %if.then567 ], [ %116, %if.then339 ], [ %141, %if.then363 ], [ %169, %if.else459 ]
  %186 = phi %struct.storable_picture* [ %109, %if.then299 ], [ %126, %if.then451 ], [ %152, %if.then567 ], [ %109, %if.then339 ], [ %126, %if.then363 ], [ %152, %if.else459 ]
  %187 = phi %struct.ImageParameters* [ %106, %if.then299 ], [ %123, %if.then451 ], [ %149, %if.then567 ], [ %106, %if.then339 ], [ %123, %if.then363 ], [ %149, %if.else459 ]
  %188 = load i32* %arrayidx284, align 4, !tbaa !3
  %cmp588 = icmp eq i32 %188, 0
  br i1 %cmp588, label %if.then602, label %lor.lhs.false590

lor.lhs.false590:                                 ; preds = %if.end580
  %189 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %189, label %for.inc656 [
    i32 9, label %if.then602
    i32 10, label %if.then602
    i32 13, label %if.then602
  ]

if.then602:                                       ; preds = %lor.lhs.false590, %if.end580, %lor.lhs.false590, %lor.lhs.false590
  %add604 = add nsw i32 %184, %102
  %idxprom605 = sext i32 %add604 to i64
  %add607 = add nsw i32 %183, %103
  %idxprom608 = sext i32 %add607 to i64
  %arrayidx610 = getelementptr inbounds i16*** %182, i64 1
  %190 = load i16*** %arrayidx610, align 8, !tbaa !0
  %arrayidx611 = getelementptr inbounds i16** %190, i64 %idxprom608
  %191 = load i16** %arrayidx611, align 8, !tbaa !0
  %arrayidx612 = getelementptr inbounds i16* %191, i64 %idxprom605
  store i16 -1, i16* %arrayidx612, align 2, !tbaa !4
  %arrayidx620 = getelementptr inbounds i64*** %181, i64 1
  %192 = load i64*** %arrayidx620, align 8, !tbaa !0
  %arrayidx621 = getelementptr inbounds i64** %192, i64 %idxprom608
  %193 = load i64** %arrayidx621, align 8, !tbaa !0
  %arrayidx622 = getelementptr inbounds i64* %193, i64 %idxprom605
  store i64 -1, i64* %arrayidx622, align 8, !tbaa !5
  %arrayidx630 = getelementptr inbounds i16**** %185, i64 1
  %194 = load i16**** %arrayidx630, align 8, !tbaa !0
  %arrayidx631 = getelementptr inbounds i16*** %194, i64 %idxprom608
  %195 = load i16*** %arrayidx631, align 8, !tbaa !0
  %arrayidx632 = getelementptr inbounds i16** %195, i64 %idxprom605
  %196 = load i16** %arrayidx632, align 8, !tbaa !0
  store i16 0, i16* %196, align 2, !tbaa !4
  %arrayidx644 = getelementptr inbounds i16* %196, i64 1
  store i16 0, i16* %arrayidx644, align 2, !tbaa !4
  %tobool646 = icmp eq i32 %180, 0
  br i1 %tobool646, label %for.inc656, label %if.then647

if.then647:                                       ; preds = %if.then602
  %197 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx653 = getelementptr inbounds %struct.RD_DATA* %197, i64 0, i32 19, i64 1, i64 %indvars.iv1640, i64 %indvars.iv1636
  store i16 -1, i16* %arrayidx653, align 2, !tbaa !4
  br label %for.inc656

for.inc656:                                       ; preds = %lor.lhs.false590, %if.then602, %if.then647
  %indvars.iv.next1637 = add i64 %indvars.iv1636, 1
  %lftr.wideiv1638 = trunc i64 %indvars.iv.next1637 to i32
  %exitcond1639 = icmp eq i32 %lftr.wideiv1638, 4
  br i1 %exitcond1639, label %for.inc659, label %for.body279

for.inc659:                                       ; preds = %for.inc656
  %indvars.iv.next1641 = add i64 %indvars.iv1640, 1
  %lftr.wideiv1642 = trunc i64 %indvars.iv.next1641 to i32
  %exitcond1643 = icmp eq i32 %lftr.wideiv1642, 4
  br i1 %exitcond1643, label %for.end661, label %for.cond276.preheader

for.end661:                                       ; preds = %for.inc659
  br i1 %cmp, label %for.cond664.preheader, label %if.end992

for.cond664.preheader:                            ; preds = %for.end661
  %add7841520 = or i32 %cond6, 1
  %idxprom7851521 = zext i32 %add7841520 to i64
  br label %for.cond668.preheader

for.cond668.preheader:                            ; preds = %for.inc989, %for.cond664.preheader
  %198 = phi i32 [ %180, %for.cond664.preheader ], [ %259, %for.inc989 ]
  %199 = phi i32 [ %180, %for.cond664.preheader ], [ %260, %for.inc989 ]
  %200 = phi i32 [ %180, %for.cond664.preheader ], [ %261, %for.inc989 ]
  %indvars.iv1632 = phi i64 [ 0, %for.cond664.preheader ], [ %indvars.iv.next1633, %for.inc989 ]
  %201 = trunc i64 %indvars.iv1632 to i32
  %div685 = sdiv i32 %201, 2
  %mul686 = shl i32 %div685, 1
  br label %for.body671

for.body671:                                      ; preds = %for.inc986, %for.cond668.preheader
  %202 = phi i32 [ %198, %for.cond668.preheader ], [ %259, %for.inc986 ]
  %203 = phi i32 [ %199, %for.cond668.preheader ], [ %260, %for.inc986 ]
  %204 = phi i32 [ %200, %for.cond668.preheader ], [ %261, %for.inc986 ]
  %indvars.iv1628 = phi i64 [ 0, %for.cond668.preheader ], [ %indvars.iv.next1629, %for.inc986 ]
  %205 = load i32* %mb_type, align 4, !tbaa !3
  switch i32 %205, label %lor.lhs.false683 [
    i32 9, label %if.then693
    i32 10, label %if.then693
    i32 13, label %if.then693
  ]

lor.lhs.false683:                                 ; preds = %for.body671
  %206 = trunc i64 %indvars.iv1628 to i32
  %div684 = sdiv i32 %206, 2
  %add687 = add nsw i32 %mul686, %div684
  %idxprom688 = sext i32 %add687 to i64
  %arrayidx690 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom688
  %207 = load i32* %arrayidx690, align 4, !tbaa !3
  %cmp691 = icmp eq i32 %207, 0
  br i1 %cmp691, label %if.then693, label %if.else746

if.then693:                                       ; preds = %lor.lhs.false683, %for.body671, %for.body671, %for.body671
  %add695 = add nsw i32 %184, %201
  %idxprom696 = sext i32 %add695 to i64
  %208 = trunc i64 %indvars.iv1628 to i32
  %add698 = add nsw i32 %183, %208
  %idxprom699 = sext i32 %add698 to i64
  %arrayidx701 = getelementptr inbounds i16*** %182, i64 1
  %209 = load i16*** %arrayidx701, align 8, !tbaa !0
  %arrayidx702 = getelementptr inbounds i16** %209, i64 %idxprom699
  %210 = load i16** %arrayidx702, align 8, !tbaa !0
  %arrayidx703 = getelementptr inbounds i16* %210, i64 %idxprom696
  store i16 -1, i16* %arrayidx703, align 2, !tbaa !4
  %arrayidx711 = getelementptr inbounds i64*** %181, i64 1
  %211 = load i64*** %arrayidx711, align 8, !tbaa !0
  %arrayidx712 = getelementptr inbounds i64** %211, i64 %idxprom699
  %212 = load i64** %arrayidx712, align 8, !tbaa !0
  %arrayidx713 = getelementptr inbounds i64* %212, i64 %idxprom696
  store i64 -1, i64* %arrayidx713, align 8, !tbaa !5
  %arrayidx721 = getelementptr inbounds i16**** %185, i64 1
  %213 = load i16**** %arrayidx721, align 8, !tbaa !0
  %arrayidx722 = getelementptr inbounds i16*** %213, i64 %idxprom699
  %214 = load i16*** %arrayidx722, align 8, !tbaa !0
  %arrayidx723 = getelementptr inbounds i16** %214, i64 %idxprom696
  %215 = load i16** %arrayidx723, align 8, !tbaa !0
  store i16 0, i16* %215, align 2, !tbaa !4
  %arrayidx735 = getelementptr inbounds i16* %215, i64 1
  store i16 0, i16* %arrayidx735, align 2, !tbaa !4
  %tobool737 = icmp eq i32 %202, 0
  br i1 %tobool737, label %for.inc986, label %if.then738

if.then738:                                       ; preds = %if.then693
  %216 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx744 = getelementptr inbounds %struct.RD_DATA* %216, i64 0, i32 19, i64 1, i64 %indvars.iv1632, i64 %indvars.iv1628
  store i16 -1, i16* %arrayidx744, align 2, !tbaa !4
  br label %for.inc986

if.else746:                                       ; preds = %lor.lhs.false683
  %217 = load i32* %bi_pred_me347, align 4, !tbaa !3
  %tobool748 = icmp ne i32 %217, 0
  %cmp757 = icmp eq i32 %207, 2
  %or.cond1527 = and i1 %tobool748, %cmp757
  %cmp761 = icmp eq i32 %205, 1
  %or.cond1528 = and i1 %or.cond1527, %cmp761
  br i1 %or.cond1528, label %if.then763, label %if.else863

if.then763:                                       ; preds = %if.else746
  %cmp766 = icmp eq i32 %217, 1
  %bipred_mv1769 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 72
  %bipred_mv2771 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 73
  %cond773.in = select i1 %cmp766, i16******* %bipred_mv1769, i16******* %bipred_mv2771
  %cond773 = load i16******* %cond773.in, align 8
  %add775 = add nsw i32 %184, %201
  %idxprom776 = sext i32 %add775 to i64
  %add778 = add nsw i32 %183, %206
  %idxprom779 = sext i32 %add778 to i64
  %arrayidx781 = getelementptr inbounds i16*** %182, i64 1
  %218 = load i16*** %arrayidx781, align 8, !tbaa !0
  %arrayidx782 = getelementptr inbounds i16** %218, i64 %idxprom779
  %219 = load i16** %arrayidx782, align 8, !tbaa !0
  %arrayidx783 = getelementptr inbounds i16* %219, i64 %idxprom776
  store i16 0, i16* %arrayidx783, align 2, !tbaa !4
  %arrayidx788 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 6, i64 %idxprom7851521, i64 0
  %220 = load i64* %arrayidx788, align 8, !tbaa !5
  %arrayidx796 = getelementptr inbounds i64*** %181, i64 1
  %221 = load i64*** %arrayidx796, align 8, !tbaa !0
  %arrayidx797 = getelementptr inbounds i64** %221, i64 %idxprom779
  %222 = load i64** %arrayidx797, align 8, !tbaa !0
  %arrayidx798 = getelementptr inbounds i64* %222, i64 %idxprom776
  store i64 %220, i64* %arrayidx798, align 8, !tbaa !5
  %arrayidx805 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom688
  %223 = load i32* %arrayidx805, align 4, !tbaa !3
  %idxprom806 = sext i32 %223 to i64
  %arrayidx809 = getelementptr inbounds i16****** %cond773, i64 %indvars.iv1628
  %224 = load i16****** %arrayidx809, align 8, !tbaa !0
  %arrayidx810 = getelementptr inbounds i16***** %224, i64 %indvars.iv1632
  %225 = load i16***** %arrayidx810, align 8, !tbaa !0
  %arrayidx811 = getelementptr inbounds i16**** %225, i64 1
  %226 = load i16**** %arrayidx811, align 8, !tbaa !0
  %227 = load i16*** %226, align 8, !tbaa !0
  %arrayidx813 = getelementptr inbounds i16** %227, i64 %idxprom806
  %228 = load i16** %arrayidx813, align 8, !tbaa !0
  %229 = load i16* %228, align 2, !tbaa !4
  %arrayidx822 = getelementptr inbounds i16**** %185, i64 1
  %230 = load i16**** %arrayidx822, align 8, !tbaa !0
  %arrayidx823 = getelementptr inbounds i16*** %230, i64 %idxprom779
  %231 = load i16*** %arrayidx823, align 8, !tbaa !0
  %arrayidx824 = getelementptr inbounds i16** %231, i64 %idxprom776
  %232 = load i16** %arrayidx824, align 8, !tbaa !0
  store i16 %229, i16* %232, align 2, !tbaa !4
  %arrayidx841 = getelementptr inbounds i16* %228, i64 1
  %233 = load i16* %arrayidx841, align 2, !tbaa !4
  %arrayidx852 = getelementptr inbounds i16* %232, i64 1
  store i16 %233, i16* %arrayidx852, align 2, !tbaa !4
  %tobool854 = icmp eq i32 %204, 0
  br i1 %tobool854, label %for.inc986, label %if.then855

if.then855:                                       ; preds = %if.then763
  %234 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx861 = getelementptr inbounds %struct.RD_DATA* %234, i64 0, i32 19, i64 1, i64 %indvars.iv1632, i64 %indvars.iv1628
  store i16 0, i16* %arrayidx861, align 2, !tbaa !4
  br label %for.inc986

if.else863:                                       ; preds = %if.else746
  %arrayidx867 = getelementptr inbounds [4 x [4 x i16]]* @brefframe, i64 0, i64 %indvars.iv1632, i64 %indvars.iv1628
  %235 = load i16* %arrayidx867, align 2, !tbaa !4
  %add869 = add nsw i32 %184, %201
  %idxprom870 = sext i32 %add869 to i64
  %add872 = add nsw i32 %183, %206
  %idxprom873 = sext i32 %add872 to i64
  %arrayidx875 = getelementptr inbounds i16*** %182, i64 1
  %236 = load i16*** %arrayidx875, align 8, !tbaa !0
  %arrayidx876 = getelementptr inbounds i16** %236, i64 %idxprom873
  %237 = load i16** %arrayidx876, align 8, !tbaa !0
  %arrayidx877 = getelementptr inbounds i16* %237, i64 %idxprom870
  store i16 %235, i16* %arrayidx877, align 2, !tbaa !4
  %idxprom888 = sext i16 %235 to i64
  %arrayidx893 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 6, i64 %idxprom7851521, i64 %idxprom888
  %238 = load i64* %arrayidx893, align 8, !tbaa !5
  %arrayidx901 = getelementptr inbounds i64*** %181, i64 1
  %239 = load i64*** %arrayidx901, align 8, !tbaa !0
  %arrayidx902 = getelementptr inbounds i64** %239, i64 %idxprom873
  %240 = load i64** %arrayidx902, align 8, !tbaa !0
  %arrayidx903 = getelementptr inbounds i64* %240, i64 %idxprom870
  store i64 %238, i64* %arrayidx903, align 8, !tbaa !5
  %arrayidx910 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom688
  %241 = load i32* %arrayidx910, align 4, !tbaa !3
  %idxprom911 = sext i32 %241 to i64
  %242 = load i16* %arrayidx867, align 2, !tbaa !4
  %idxprom916 = sext i16 %242 to i64
  %all_mv919 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 71
  %243 = load i16******* %all_mv919, align 8, !tbaa !0
  %arrayidx920 = getelementptr inbounds i16****** %243, i64 %indvars.iv1628
  %244 = load i16****** %arrayidx920, align 8, !tbaa !0
  %arrayidx921 = getelementptr inbounds i16***** %244, i64 %indvars.iv1632
  %245 = load i16***** %arrayidx921, align 8, !tbaa !0
  %arrayidx922 = getelementptr inbounds i16**** %245, i64 1
  %246 = load i16**** %arrayidx922, align 8, !tbaa !0
  %arrayidx923 = getelementptr inbounds i16*** %246, i64 %idxprom916
  %247 = load i16*** %arrayidx923, align 8, !tbaa !0
  %arrayidx924 = getelementptr inbounds i16** %247, i64 %idxprom911
  %248 = load i16** %arrayidx924, align 8, !tbaa !0
  %249 = load i16* %248, align 2, !tbaa !4
  %arrayidx933 = getelementptr inbounds i16**** %185, i64 1
  %250 = load i16**** %arrayidx933, align 8, !tbaa !0
  %arrayidx934 = getelementptr inbounds i16*** %250, i64 %idxprom873
  %251 = load i16*** %arrayidx934, align 8, !tbaa !0
  %arrayidx935 = getelementptr inbounds i16** %251, i64 %idxprom870
  %252 = load i16** %arrayidx935, align 8, !tbaa !0
  store i16 %249, i16* %252, align 2, !tbaa !4
  %253 = load i16* %arrayidx867, align 2, !tbaa !4
  %idxprom949 = sext i16 %253 to i64
  %arrayidx956 = getelementptr inbounds i16*** %246, i64 %idxprom949
  %254 = load i16*** %arrayidx956, align 8, !tbaa !0
  %arrayidx957 = getelementptr inbounds i16** %254, i64 %idxprom911
  %255 = load i16** %arrayidx957, align 8, !tbaa !0
  %arrayidx958 = getelementptr inbounds i16* %255, i64 1
  %256 = load i16* %arrayidx958, align 2, !tbaa !4
  %arrayidx969 = getelementptr inbounds i16* %252, i64 1
  store i16 %256, i16* %arrayidx969, align 2, !tbaa !4
  %tobool971 = icmp eq i32 %203, 0
  br i1 %tobool971, label %for.inc986, label %if.then972

if.then972:                                       ; preds = %if.else863
  %257 = load i16* %arrayidx867, align 2, !tbaa !4
  %258 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %arrayidx982 = getelementptr inbounds %struct.RD_DATA* %258, i64 0, i32 19, i64 1, i64 %indvars.iv1632, i64 %indvars.iv1628
  store i16 %257, i16* %arrayidx982, align 2, !tbaa !4
  br label %for.inc986

for.inc986:                                       ; preds = %if.then693, %if.then763, %if.else863, %if.then738, %if.then972, %if.then855
  %259 = phi i32 [ 0, %if.then693 ], [ %202, %if.then763 ], [ %202, %if.else863 ], [ %202, %if.then738 ], [ %202, %if.then972 ], [ %202, %if.then855 ]
  %260 = phi i32 [ 0, %if.then693 ], [ %203, %if.then763 ], [ 0, %if.else863 ], [ %202, %if.then738 ], [ %203, %if.then972 ], [ %203, %if.then855 ]
  %261 = phi i32 [ 0, %if.then693 ], [ 0, %if.then763 ], [ 0, %if.else863 ], [ %202, %if.then738 ], [ %203, %if.then972 ], [ %204, %if.then855 ]
  %indvars.iv.next1629 = add i64 %indvars.iv1628, 1
  %lftr.wideiv1630 = trunc i64 %indvars.iv.next1629 to i32
  %exitcond1631 = icmp eq i32 %lftr.wideiv1630, 4
  br i1 %exitcond1631, label %for.inc989, label %for.body671

for.inc989:                                       ; preds = %for.inc986
  %indvars.iv.next1633 = add i64 %indvars.iv1632, 1
  %lftr.wideiv1634 = trunc i64 %indvars.iv.next1633 to i32
  %exitcond1635 = icmp eq i32 %lftr.wideiv1634, 4
  br i1 %exitcond1635, label %if.end992, label %for.cond668.preheader

if.end992:                                        ; preds = %for.inc989, %for.end661
  %262 = load i32* @best_c_imode, align 4, !tbaa !3
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  store i32 %262, i32* %c_ipred_mode, align 4, !tbaa !3
  %263 = load i32* @best_i16offset, align 4, !tbaa !3
  %i16offset993 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 85
  store i32 %263, i32* %i16offset993, align 4, !tbaa !3
  %264 = load i32* %mb_type, align 4, !tbaa !3
  %cmp995 = icmp eq i32 %264, 13
  br i1 %cmp995, label %for.cond998.preheader, label %if.else1034

for.cond998.preheader:                            ; preds = %if.end992
  %block_y1006 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 32
  %block_x1009 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 31
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 26
  %265 = load i32*** %ipredmode8x8, align 8, !tbaa !0
  %ipredmode1020 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 25
  %266 = load i32*** %ipredmode1020, align 8, !tbaa !0
  br label %for.cond1002.preheader

for.cond1002.preheader:                           ; preds = %for.inc1031, %for.cond998.preheader
  %indvars.iv1613 = phi i64 [ 0, %for.cond998.preheader ], [ %indvars.iv.next1614, %for.inc1031 ]
  %i.71546 = phi i32 [ 0, %for.cond998.preheader ], [ %inc1032, %for.inc1031 ]
  br label %for.body1005

for.body1005:                                     ; preds = %for.body1005, %for.cond1002.preheader
  %indvars.iv1609 = phi i64 [ %indvars.iv1613, %for.cond1002.preheader ], [ %indvars.iv.next1610, %for.body1005 ]
  %j.51544 = phi i32 [ 0, %for.cond1002.preheader ], [ %inc1028, %for.body1005 ]
  %267 = load i32* %block_y1006, align 4, !tbaa !3
  %add1007 = add nsw i32 %267, %j.51544
  %idxprom1008 = sext i32 %add1007 to i64
  %268 = load i32* %block_x1009, align 4, !tbaa !3
  %add1010 = add nsw i32 %268, %i.71546
  %idxprom1011 = sext i32 %add1010 to i64
  %arrayidx1012 = getelementptr inbounds i32** %265, i64 %idxprom1011
  %269 = load i32** %arrayidx1012, align 8, !tbaa !0
  %arrayidx1013 = getelementptr inbounds i32* %269, i64 %idxprom1008
  %270 = load i32* %arrayidx1013, align 4, !tbaa !3
  %arrayidx1021 = getelementptr inbounds i32** %266, i64 %idxprom1011
  %271 = load i32** %arrayidx1021, align 8, !tbaa !0
  %arrayidx1022 = getelementptr inbounds i32* %271, i64 %idxprom1008
  store i32 %270, i32* %arrayidx1022, align 4, !tbaa !3
  %arrayidx1024 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 11, i64 %indvars.iv1609
  %272 = load i32* %arrayidx1024, align 4, !tbaa !3
  %arrayidx1026 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv1609
  store i32 %272, i32* %arrayidx1026, align 4, !tbaa !3
  %inc1028 = add nsw i32 %j.51544, 1
  %indvars.iv.next1610 = add i64 %indvars.iv1609, 1
  %exitcond1611 = icmp eq i32 %inc1028, 4
  br i1 %exitcond1611, label %for.inc1031, label %for.body1005

for.inc1031:                                      ; preds = %for.body1005
  %indvars.iv.next1614 = add i64 %indvars.iv1613, 4
  %inc1032 = add nsw i32 %i.71546, 1
  %exitcond1615 = icmp eq i32 %inc1032, 4
  br i1 %exitcond1615, label %if.end1107, label %for.cond1002.preheader

if.else1034:                                      ; preds = %if.end992
  switch i32 %3, label %for.body1047.lr.ph [
    i32 9, label %for.body1079.lr.ph
    i32 13, label %if.end1107
  ]

for.body1047.lr.ph:                               ; preds = %if.else1034
  %block_y1041 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 32
  %273 = load i32* %block_y1041, align 4, !tbaa !3
  %block_x10501547 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 31
  %274 = sext i32 %273 to i64
  %.pre1687 = load i32* %block_x10501547, align 4, !tbaa !3
  br label %for.body1054.lr.ph

for.body1054.lr.ph:                               ; preds = %for.inc1066, %for.body1047.lr.ph
  %275 = phi i32 [ %.pre1687, %for.body1047.lr.ph ], [ %279, %for.inc1066 ]
  %indvars.iv1620 = phi i64 [ %274, %for.body1047.lr.ph ], [ %indvars.iv.next1621, %for.inc1066 ]
  %k.41557 = phi i32 [ 0, %for.body1047.lr.ph ], [ %inc1064, %for.inc1066 ]
  %276 = sext i32 %275 to i64
  %277 = sext i32 %k.41557 to i64
  br label %for.body1054

for.body1054:                                     ; preds = %for.body1054.lr.ph, %for.body1054
  %indvars.iv1618 = phi i64 [ %277, %for.body1054.lr.ph ], [ %indvars.iv.next1619, %for.body1054 ]
  %indvars.iv1616 = phi i64 [ %276, %for.body1054.lr.ph ], [ %indvars.iv.next1617, %for.body1054 ]
  %k.51550 = phi i32 [ %k.41557, %for.body1054.lr.ph ], [ %inc1064, %for.body1054 ]
  %arrayidx1057 = getelementptr inbounds i32** %5, i64 %indvars.iv1616
  %278 = load i32** %arrayidx1057, align 8, !tbaa !0
  %arrayidx1058 = getelementptr inbounds i32* %278, i64 %indvars.iv1620
  store i32 2, i32* %arrayidx1058, align 4, !tbaa !3
  %arrayidx1061 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv1618
  store i32 2, i32* %arrayidx1061, align 4, !tbaa !3
  %indvars.iv.next1617 = add i64 %indvars.iv1616, 1
  %indvars.iv.next1619 = add i64 %indvars.iv1618, 1
  %inc1064 = add nsw i32 %k.51550, 1
  %279 = load i32* %block_x10501547, align 4, !tbaa !3
  %280 = add nsw i32 %279, 3
  %281 = trunc i64 %indvars.iv1616 to i32
  %cmp1052 = icmp slt i32 %281, %280
  br i1 %cmp1052, label %for.body1054, label %for.inc1066

for.inc1066:                                      ; preds = %for.body1054
  %.pre1688 = load i32* %block_y1041, align 4, !tbaa !3
  %indvars.iv.next1621 = add i64 %indvars.iv1620, 1
  %282 = add nsw i32 %.pre1688, 3
  %283 = trunc i64 %indvars.iv1620 to i32
  %cmp1045 = icmp slt i32 %283, %282
  br i1 %cmp1045, label %for.body1054.lr.ph, label %if.end1107

for.body1079.lr.ph:                               ; preds = %if.else1034
  %block_y1073 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 32
  %284 = load i32* %block_y1073, align 4, !tbaa !3
  %block_x10821559 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 31
  %285 = sext i32 %284 to i64
  %.pre1689 = load i32* %block_x10821559, align 4, !tbaa !3
  br label %for.body1086.lr.ph

for.body1086.lr.ph:                               ; preds = %for.inc1102, %for.body1079.lr.ph
  %286 = phi i32 [ %.pre1689, %for.body1079.lr.ph ], [ %292, %for.inc1102 ]
  %indvars.iv1626 = phi i64 [ %285, %for.body1079.lr.ph ], [ %indvars.iv.next1627, %for.inc1102 ]
  %k.61569 = phi i32 [ 0, %for.body1079.lr.ph ], [ %inc1100, %for.inc1102 ]
  %287 = sext i32 %286 to i64
  %288 = sext i32 %k.61569 to i64
  br label %for.body1086

for.body1086:                                     ; preds = %for.body1086.lr.ph, %for.body1086
  %indvars.iv1624 = phi i64 [ %288, %for.body1086.lr.ph ], [ %indvars.iv.next1625, %for.body1086 ]
  %indvars.iv1622 = phi i64 [ %287, %for.body1086.lr.ph ], [ %indvars.iv.next1623, %for.body1086 ]
  %k.71562 = phi i32 [ %k.61569, %for.body1086.lr.ph ], [ %inc1100, %for.body1086 ]
  %arrayidx1088 = getelementptr inbounds [16 x i32]* @b4_ipredmode, i64 0, i64 %indvars.iv1624
  %289 = load i32* %arrayidx1088, align 4, !tbaa !3
  %arrayidx1091 = getelementptr inbounds i32** %5, i64 %indvars.iv1622
  %290 = load i32** %arrayidx1091, align 8, !tbaa !0
  %arrayidx1092 = getelementptr inbounds i32* %290, i64 %indvars.iv1626
  store i32 %289, i32* %arrayidx1092, align 4, !tbaa !3
  %arrayidx1094 = getelementptr inbounds [16 x i32]* @b4_intra_pred_modes, i64 0, i64 %indvars.iv1624
  %291 = load i32* %arrayidx1094, align 4, !tbaa !3
  %arrayidx1097 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv1624
  store i32 %291, i32* %arrayidx1097, align 4, !tbaa !3
  %indvars.iv.next1623 = add i64 %indvars.iv1622, 1
  %indvars.iv.next1625 = add i64 %indvars.iv1624, 1
  %inc1100 = add nsw i32 %k.71562, 1
  %292 = load i32* %block_x10821559, align 4, !tbaa !3
  %293 = add nsw i32 %292, 3
  %294 = trunc i64 %indvars.iv1622 to i32
  %cmp1084 = icmp slt i32 %294, %293
  br i1 %cmp1084, label %for.body1086, label %for.inc1102

for.inc1102:                                      ; preds = %for.body1086
  %.pre1690 = load i32* %block_y1073, align 4, !tbaa !3
  %indvars.iv.next1627 = add i64 %indvars.iv1626, 1
  %295 = add nsw i32 %.pre1690, 3
  %296 = trunc i64 %indvars.iv1626 to i32
  %cmp1077 = icmp slt i32 %296, %295
  br i1 %cmp1077, label %for.body1086.lr.ph, label %if.end1107

if.end1107:                                       ; preds = %for.inc1102, %for.inc1066, %for.inc1031, %if.else1034
  %297 = load i32* %mb_type, align 4, !tbaa !3
  %cmp1109 = icmp eq i32 %297, 13
  br i1 %cmp1109, label %for.cond1112.preheader, label %if.end1145

for.cond1112.preheader:                           ; preds = %if.end1107
  %block_y1124 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 32
  %block_x1127 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 31
  %ipredmode1130 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 25
  %298 = load i32*** %ipredmode1130, align 8, !tbaa !0
  br label %for.cond1116.preheader

for.cond1116.preheader:                           ; preds = %for.inc1142, %for.cond1112.preheader
  %indvars.iv1605 = phi i64 [ 0, %for.cond1112.preheader ], [ %indvars.iv.next1606, %for.inc1142 ]
  %indvars.iv1603 = phi i64 [ 0, %for.cond1112.preheader ], [ %indvars.iv.next1604, %for.inc1142 ]
  br label %for.body1119

for.body1119:                                     ; preds = %for.body1119.for.body1119_crit_edge, %for.cond1116.preheader
  %indvars.iv1600 = phi i64 [ %indvars.iv1605, %for.cond1116.preheader ], [ %indvars.iv.next1601, %for.body1119.for.body1119_crit_edge ]
  %indvars.iv1598 = phi i64 [ 0, %for.cond1116.preheader ], [ %indvars.iv.next1599, %for.body1119.for.body1119_crit_edge ]
  %arrayidx1123 = getelementptr inbounds [4 x [4 x i32]]* @b8_ipredmode8x8, i64 0, i64 %indvars.iv1603, i64 %indvars.iv1598
  %299 = load i32* %arrayidx1123, align 4, !tbaa !3
  %300 = load i32* %block_y1124, align 4, !tbaa !3
  %301 = trunc i64 %indvars.iv1598 to i32
  %add1125 = add nsw i32 %300, %301
  %idxprom1126 = sext i32 %add1125 to i64
  %302 = load i32* %block_x1127, align 4, !tbaa !3
  %303 = trunc i64 %indvars.iv1603 to i32
  %add1128 = add nsw i32 %302, %303
  %idxprom1129 = sext i32 %add1128 to i64
  %arrayidx1131 = getelementptr inbounds i32** %298, i64 %idxprom1129
  %304 = load i32** %arrayidx1131, align 8, !tbaa !0
  %arrayidx1132 = getelementptr inbounds i32* %304, i64 %idxprom1126
  store i32 %299, i32* %arrayidx1132, align 4, !tbaa !3
  %arrayidx1134 = getelementptr inbounds [16 x i32]* @b8_intra_pred_modes8x8, i64 0, i64 %indvars.iv1600
  %305 = load i32* %arrayidx1134, align 4, !tbaa !3
  %arrayidx1137 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv1600
  store i32 %305, i32* %arrayidx1137, align 4, !tbaa !3
  %indvars.iv.next1599 = add i64 %indvars.iv1598, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1599 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc1142, label %for.body1119.for.body1119_crit_edge

for.body1119.for.body1119_crit_edge:              ; preds = %for.body1119
  %indvars.iv.next1601 = add i64 %indvars.iv1600, 1
  br label %for.body1119

for.inc1142:                                      ; preds = %for.body1119
  %indvars.iv.next1606 = add i64 %indvars.iv1605, 4
  %indvars.iv.next1604 = add i64 %indvars.iv1603, 1
  %lftr.wideiv1607 = trunc i64 %indvars.iv.next1604 to i32
  %exitcond1608 = icmp eq i32 %lftr.wideiv1607, 4
  br i1 %exitcond1608, label %if.end1145, label %for.cond1116.preheader

if.end1145:                                       ; preds = %for.inc1142, %if.end1107
  %MbaffFrameFlag1146 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 90
  %306 = load i32* %MbaffFrameFlag1146, align 4, !tbaa !3
  %tobool1147 = icmp eq i32 %306, 0
  br i1 %tobool1147, label %if.end1189, label %for.body1155.lr.ph

for.body1155.lr.ph:                               ; preds = %if.end1145
  %block_y1149 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 32
  %307 = load i32* %block_y1149, align 4, !tbaa !3
  %block_x11581529 = getelementptr inbounds %struct.ImageParameters* %187, i64 0, i32 31
  %308 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %ipredmode1169 = getelementptr inbounds %struct.RD_DATA* %308, i64 0, i32 10
  %309 = sext i32 %307 to i64
  %.pre = load i32* %block_x11581529, align 4, !tbaa !3
  br label %for.body1162.lr.ph

for.body1162.lr.ph:                               ; preds = %for.inc1182, %for.body1155.lr.ph
  %310 = phi i32 [ %.pre, %for.body1155.lr.ph ], [ %318, %for.inc1182 ]
  %indvars.iv1596 = phi i64 [ %309, %for.body1155.lr.ph ], [ %indvars.iv.next1597, %for.inc1182 ]
  %k.101537 = phi i32 [ 0, %for.body1155.lr.ph ], [ %inc1180, %for.inc1182 ]
  %311 = load i32*** %ipredmode1169, align 8, !tbaa !0
  %312 = sext i32 %310 to i64
  %313 = sext i32 %k.101537 to i64
  br label %for.body1162

for.body1162:                                     ; preds = %for.body1162.lr.ph, %for.body1162
  %indvars.iv1594 = phi i64 [ %313, %for.body1162.lr.ph ], [ %indvars.iv.next1595, %for.body1162 ]
  %indvars.iv = phi i64 [ %312, %for.body1162.lr.ph ], [ %indvars.iv.next, %for.body1162 ]
  %k.111532 = phi i32 [ %k.101537, %for.body1162.lr.ph ], [ %inc1180, %for.body1162 ]
  %arrayidx1165 = getelementptr inbounds i32** %5, i64 %indvars.iv
  %314 = load i32** %arrayidx1165, align 8, !tbaa !0
  %arrayidx1166 = getelementptr inbounds i32* %314, i64 %indvars.iv1596
  %315 = load i32* %arrayidx1166, align 4, !tbaa !3
  %arrayidx1170 = getelementptr inbounds i32** %311, i64 %indvars.iv
  %316 = load i32** %arrayidx1170, align 8, !tbaa !0
  %arrayidx1171 = getelementptr inbounds i32* %316, i64 %indvars.iv1596
  store i32 %315, i32* %arrayidx1171, align 4, !tbaa !3
  %arrayidx1174 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv1594
  %317 = load i32* %arrayidx1174, align 4, !tbaa !3
  %arrayidx1177 = getelementptr inbounds %struct.RD_DATA* %308, i64 0, i32 11, i64 %indvars.iv1594
  store i32 %317, i32* %arrayidx1177, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next1595 = add i64 %indvars.iv1594, 1
  %inc1180 = add nsw i32 %k.111532, 1
  %318 = load i32* %block_x11581529, align 4, !tbaa !3
  %319 = add nsw i32 %318, 3
  %320 = trunc i64 %indvars.iv to i32
  %cmp1160 = icmp slt i32 %320, %319
  br i1 %cmp1160, label %for.body1162, label %for.inc1182

for.inc1182:                                      ; preds = %for.body1162
  %.pre1686 = load i32* %block_y1149, align 4, !tbaa !3
  %indvars.iv.next1597 = add i64 %indvars.iv1596, 1
  %321 = add nsw i32 %.pre1686, 3
  %322 = trunc i64 %indvars.iv1596 to i32
  %cmp1153 = icmp slt i32 %322, %321
  br i1 %cmp1153, label %for.body1162.lr.ph, label %for.end1184

for.end1184:                                      ; preds = %for.inc1182
  %323 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %324 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %c_ipred_mode1186 = getelementptr inbounds %struct.RD_DATA* %324, i64 0, i32 21
  store i32 %323, i32* %c_ipred_mode1186, align 4, !tbaa !3
  %325 = load i32* %i16offset993, align 4, !tbaa !3
  %i16offset1188 = getelementptr inbounds %struct.RD_DATA* %324, i64 0, i32 20
  store i32 %325, i32* %i16offset1188, align 4, !tbaa !3
  br label %if.end1189

if.end1189:                                       ; preds = %if.end1145, %for.end1184
  tail call void @SetMotionVectorsMB(%struct.macroblock* %arrayidx, i32 %conv) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SetRefAndMotionVectors(i32 %block, i32 %mode, i32 %pdir, i32 %fwref, i32 %bwref) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %mode.off = add i32 %mode, -1
  %2 = icmp ult i32 %mode.off, 3
  %div = sdiv i32 %block, 2
  %shl = shl i32 %div, 1
  %rem = srem i32 %block, 2
  %shl8 = shl i32 %rem, 1
  %3 = sext i32 %mode to i64
  %idxprom = select i1 %2, i64 %3, i64 4
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 21, i64 %idxprom, i64 1
  %5 = load i32* %arrayidx9, align 4, !tbaa !3
  %add = add nsw i32 %5, %shl
  %arrayidx13 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 21, i64 %idxprom, i64 0
  %6 = load i32* %arrayidx13, align 4, !tbaa !3
  %add14 = add nsw i32 %6, %shl8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %7 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %7, 0
  %current_mb_nr26.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %.pre916 = load i32* %current_mb_nr26.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool, label %entry.cond.end24_crit_edge, label %land.lhs.true

entry.cond.end24_crit_edge:                       ; preds = %entry
  %mb_data28.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %.pre917 = load %struct.macroblock** %mb_data28.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end24

land.lhs.true:                                    ; preds = %entry
  %idxprom15 = sext i32 %.pre916 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %8 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom15, i32 22
  %9 = load i32* %mb_field, align 4, !tbaa !3
  %tobool17 = icmp eq i32 %9, 0
  br i1 %tobool17, label %cond.end24, label %cond.true18

cond.true18:                                      ; preds = %land.lhs.true
  %rem20866 = shl i32 %.pre916, 1
  %10 = and i32 %rem20866, 2
  %11 = add i32 %10, 2
  br label %cond.end24

cond.end24:                                       ; preds = %entry.cond.end24_crit_edge, %land.lhs.true, %cond.true18
  %12 = phi %struct.macroblock* [ %8, %cond.true18 ], [ %8, %land.lhs.true ], [ %.pre917, %entry.cond.end24_crit_edge ]
  %cond25 = phi i32 [ %11, %cond.true18 ], [ 0, %land.lhs.true ], [ 0, %entry.cond.end24_crit_edge ]
  %idxprom27 = sext i32 %.pre916 to i64
  %cmp30 = icmp slt i32 %pdir, 0
  %cmp32874 = icmp sgt i32 %5, 0
  br i1 %cmp30, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %cond.end24
  br i1 %cmp32874, label %for.cond34.preheader.lr.ph, label %if.end692

for.cond34.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp35872 = icmp sgt i32 %6, 0
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %13 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 35
  %ref_idx = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 32
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %13, i64 0, i32 33
  %14 = shl i32 %rem, 1
  %15 = sext i32 %14 to i64
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.inc117
  %j.0875 = phi i32 [ %shl, %for.cond34.preheader.lr.ph ], [ %inc118, %for.inc117 ]
  br i1 %cmp35872, label %for.body37.lr.ph, label %for.inc117

for.body37.lr.ph:                                 ; preds = %for.cond34.preheader
  %16 = load i32* %block_y, align 4, !tbaa !3
  %add38 = add nsw i32 %16, %j.0875
  %idxprom39 = sext i32 %add38 to i64
  %17 = load i32* %block_x, align 4, !tbaa !3
  %18 = load i16***** %mv, align 8, !tbaa !0
  %19 = load i16**** %18, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i16**** %18, i64 1
  %20 = load i16**** %arrayidx64, align 8, !tbaa !0
  %21 = load i16**** %ref_idx, align 8, !tbaa !0
  %22 = load i16*** %21, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i16*** %21, i64 1
  %23 = load i16*** %arrayidx95, align 8, !tbaa !0
  %24 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %25 = load i64*** %24, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i64*** %24, i64 1
  %26 = load i64*** %arrayidx114, align 8, !tbaa !0
  %27 = sext i32 %17 to i64
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %indvars.iv = phi i64 [ %15, %for.body37.lr.ph ], [ %indvars.iv.next, %for.body37 ]
  %28 = add nsw i64 %27, %indvars.iv
  %arrayidx43 = getelementptr inbounds i16*** %19, i64 %28
  %29 = load i16*** %arrayidx43, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i16** %29, i64 %idxprom39
  %30 = load i16** %arrayidx44, align 8, !tbaa !0
  store i16 0, i16* %30, align 2, !tbaa !4
  %arrayidx56 = getelementptr inbounds i16* %30, i64 1
  store i16 0, i16* %arrayidx56, align 2, !tbaa !4
  %arrayidx65 = getelementptr inbounds i16*** %20, i64 %28
  %31 = load i16*** %arrayidx65, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i16** %31, i64 %idxprom39
  %32 = load i16** %arrayidx66, align 8, !tbaa !0
  store i16 0, i16* %32, align 2, !tbaa !4
  %arrayidx78 = getelementptr inbounds i16* %32, i64 1
  store i16 0, i16* %arrayidx78, align 2, !tbaa !4
  %arrayidx86 = getelementptr inbounds i16** %22, i64 %28
  %33 = load i16** %arrayidx86, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i16* %33, i64 %idxprom39
  store i16 -1, i16* %arrayidx87, align 2, !tbaa !4
  %arrayidx96 = getelementptr inbounds i16** %23, i64 %28
  %34 = load i16** %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i16* %34, i64 %idxprom39
  store i16 -1, i16* %arrayidx97, align 2, !tbaa !4
  %arrayidx105 = getelementptr inbounds i64** %25, i64 %28
  %35 = load i64** %arrayidx105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i64* %35, i64 %idxprom39
  store i64 -1, i64* %arrayidx106, align 8, !tbaa !5
  %arrayidx115 = getelementptr inbounds i64** %26, i64 %28
  %36 = load i64** %arrayidx115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i64* %36, i64 %idxprom39
  store i64 -1, i64* %arrayidx116, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %37 = trunc i64 %indvars.iv.next to i32
  %cmp35 = icmp slt i32 %37, %add14
  br i1 %cmp35, label %for.body37, label %for.inc117

for.inc117:                                       ; preds = %for.body37, %for.cond34.preheader
  %inc118 = add nsw i32 %j.0875, 1
  %cmp32 = icmp slt i32 %inc118, %add
  br i1 %cmp32, label %for.cond34.preheader, label %if.end692

if.end:                                           ; preds = %cond.end24
  br i1 %cmp, label %for.cond215.preheader, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %if.end
  br i1 %cmp32874, label %for.cond126.preheader.lr.ph, label %if.end692

for.cond126.preheader.lr.ph:                      ; preds = %for.cond122.preheader
  %cmp127889 = icmp sgt i32 %6, 0
  %idxprom131 = sext i32 %fwref to i64
  %conv173 = trunc i32 %fwref to i16
  %idxprom196859 = zext i32 %cond25 to i64
  %38 = shl i32 %rem, 1
  %39 = sext i32 %38 to i64
  %40 = shl i32 %div, 1
  %41 = sext i32 %40 to i64
  br label %for.cond126.preheader

for.cond215.preheader:                            ; preds = %if.end
  br i1 %cmp32874, label %for.cond219.preheader.lr.ph, label %if.end692

for.cond219.preheader.lr.ph:                      ; preds = %for.cond215.preheader
  %cmp220876 = icmp sgt i32 %6, 0
  %cmp223 = icmp eq i32 %mode, 0
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %12, i64 %idxprom27, i32 34
  %cmp1.not = icmp ne i32 %mode, 1
  %idxprom410864 = zext i32 %cond25 to i64
  %add626860 = or i32 %cond25, 1
  %idxprom627861 = zext i32 %add626860 to i64
  %42 = shl i32 %rem, 1
  %43 = sext i32 %42 to i64
  %44 = shl i32 %div, 1
  %45 = sext i32 %44 to i64
  br label %for.cond219.preheader

for.cond126.preheader:                            ; preds = %for.cond126.preheader.lr.ph, %for.inc212
  %indvars.iv908 = phi i64 [ %41, %for.cond126.preheader.lr.ph ], [ %indvars.iv.next909, %for.inc212 ]
  br i1 %cmp127889, label %for.body129.lr.ph, label %for.inc212

for.body129.lr.ph:                                ; preds = %for.cond126.preheader
  %block_y140.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %.pre = load i32* %block_y140.phi.trans.insert, align 4, !tbaa !3
  %block_x143.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %.pre910 = load i32* %block_x143.phi.trans.insert, align 4, !tbaa !3
  %.pre911 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx180.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre911, i64 0, i32 32
  %.pre912 = load i16**** %ref_idx180.phi.trans.insert, align 8, !tbaa !0
  %.pre913 = load i16*** %.pre912, align 8, !tbaa !0
  %ref_pic_id205.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre911, i64 0, i32 33
  %.pre914 = load i64**** %ref_pic_id205.phi.trans.insert, align 8, !tbaa !0
  %.pre915 = load i64*** %.pre914, align 8, !tbaa !0
  %all_mv.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %.pre918 = load i16******* %all_mv.phi.trans.insert, align 8, !tbaa !0
  %mv146.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre911, i64 0, i32 35
  %.pre919 = load i16***** %mv146.phi.trans.insert, align 8, !tbaa !0
  %.pre920 = load i16**** %.pre919, align 8, !tbaa !0
  br label %for.body129

for.body129:                                      ; preds = %for.body129.lr.ph, %for.body129
  %indvars.iv906 = phi i64 [ %39, %for.body129.lr.ph ], [ %indvars.iv.next907, %for.body129 ]
  %arrayidx134 = getelementptr inbounds i16****** %.pre918, i64 %indvars.iv906
  %46 = load i16****** %arrayidx134, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i16***** %46, i64 %indvars.iv908
  %47 = load i16***** %arrayidx135, align 8, !tbaa !0
  %48 = load i16**** %47, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i16*** %48, i64 %idxprom131
  %49 = load i16*** %arrayidx137, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i16** %49, i64 %3
  %50 = load i16** %arrayidx138, align 8, !tbaa !0
  %51 = load i16* %50, align 2, !tbaa !4
  %52 = trunc i64 %indvars.iv908 to i32
  %add141 = add nsw i32 %.pre, %52
  %idxprom142 = sext i32 %add141 to i64
  %53 = trunc i64 %indvars.iv906 to i32
  %add144 = add nsw i32 %.pre910, %53
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx148 = getelementptr inbounds i16*** %.pre920, i64 %idxprom145
  %54 = load i16*** %arrayidx148, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i16** %54, i64 %idxprom142
  %55 = load i16** %arrayidx149, align 8, !tbaa !0
  store i16 %51, i16* %55, align 2, !tbaa !4
  %arrayidx161 = getelementptr inbounds i16* %50, i64 1
  %56 = load i16* %arrayidx161, align 2, !tbaa !4
  %arrayidx172 = getelementptr inbounds i16* %55, i64 1
  store i16 %56, i16* %arrayidx172, align 2, !tbaa !4
  %arrayidx182 = getelementptr inbounds i16** %.pre913, i64 %idxprom145
  %57 = load i16** %arrayidx182, align 8, !tbaa !0
  %arrayidx183 = getelementptr inbounds i16* %57, i64 %idxprom142
  store i16 %conv173, i16* %arrayidx183, align 2, !tbaa !4
  %idxprom194 = sext i16 %conv173 to i64
  %arrayidx198 = getelementptr inbounds %struct.storable_picture* %.pre911, i64 0, i32 6, i64 %idxprom196859, i64 %idxprom194
  %58 = load i64* %arrayidx198, align 8, !tbaa !5
  %arrayidx207 = getelementptr inbounds i64** %.pre915, i64 %idxprom145
  %59 = load i64** %arrayidx207, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i64* %59, i64 %idxprom142
  store i64 %58, i64* %arrayidx208, align 8, !tbaa !5
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %60 = trunc i64 %indvars.iv.next907 to i32
  %cmp127 = icmp slt i32 %60, %add14
  br i1 %cmp127, label %for.body129, label %for.inc212

for.inc212:                                       ; preds = %for.body129, %for.cond126.preheader
  %indvars.iv.next909 = add i64 %indvars.iv908, 1
  %61 = trunc i64 %indvars.iv.next909 to i32
  %cmp123 = icmp slt i32 %61, %add
  br i1 %cmp123, label %for.cond126.preheader, label %if.end692

for.cond219.preheader:                            ; preds = %for.cond219.preheader.lr.ph, %for.inc689
  %indvars.iv904 = phi i64 [ %45, %for.cond219.preheader.lr.ph ], [ %indvars.iv.next905, %for.inc689 ]
  %pdir.addr.0888 = phi i32 [ %pdir, %for.cond219.preheader.lr.ph ], [ %pdir.addr.1.lcssa, %for.inc689 ]
  %fwref.addr.0887 = phi i32 [ %fwref, %for.cond219.preheader.lr.ph ], [ %fwref.addr.1.lcssa, %for.inc689 ]
  %bwref.addr.0886 = phi i32 [ %bwref, %for.cond219.preheader.lr.ph ], [ %bwref.addr.1.lcssa, %for.inc689 ]
  br i1 %cmp220876, label %for.body222, label %for.inc689

for.body222:                                      ; preds = %for.cond219.preheader, %for.inc686
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %for.inc686 ], [ %43, %for.cond219.preheader ]
  %pdir.addr.1880 = phi i32 [ %pdir.addr.2, %for.inc686 ], [ %pdir.addr.0888, %for.cond219.preheader ]
  %fwref.addr.1879 = phi i32 [ %fwref.addr.2, %for.inc686 ], [ %fwref.addr.0887, %for.cond219.preheader ]
  %bwref.addr.1878 = phi i32 [ %bwref.addr.2, %for.inc686 ], [ %bwref.addr.0886, %for.cond219.preheader ]
  br i1 %cmp223, label %if.then225, label %if.end255

if.then225:                                       ; preds = %for.body222
  %block_y226 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %62 = load i32* %block_y226, align 4, !tbaa !3
  %63 = trunc i64 %indvars.iv904 to i32
  %add227 = add nsw i32 %62, %63
  %idxprom228 = sext i32 %add227 to i64
  %block_x229 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %64 = load i32* %block_x229, align 4, !tbaa !3
  %65 = trunc i64 %indvars.iv902 to i32
  %add230 = add nsw i32 %64, %65
  %idxprom231 = sext i32 %add230 to i64
  %66 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx232 = getelementptr inbounds i16** %66, i64 %idxprom231
  %67 = load i16** %arrayidx232, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i16* %67, i64 %idxprom228
  %68 = load i16* %arrayidx233, align 2, !tbaa !4
  %conv234 = sext i16 %68 to i32
  %69 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %70 = load i16*** %69, align 8, !tbaa !0
  %arrayidx242 = getelementptr inbounds i16** %70, i64 %idxprom231
  %71 = load i16** %arrayidx242, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds i16* %71, i64 %idxprom228
  %72 = load i16* %arrayidx243, align 2, !tbaa !4
  %conv244 = sext i16 %72 to i32
  %arrayidx251 = getelementptr inbounds i16*** %69, i64 1
  %73 = load i16*** %arrayidx251, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i16** %73, i64 %idxprom231
  %74 = load i16** %arrayidx252, align 8, !tbaa !0
  %arrayidx253 = getelementptr inbounds i16* %74, i64 %idxprom228
  %75 = load i16* %arrayidx253, align 2, !tbaa !4
  %conv254 = sext i16 %75 to i32
  br label %if.end255

if.end255:                                        ; preds = %if.then225, %for.body222
  %bwref.addr.2 = phi i32 [ %conv254, %if.then225 ], [ %bwref.addr.1878, %for.body222 ]
  %fwref.addr.2 = phi i32 [ %conv244, %if.then225 ], [ %fwref.addr.1879, %for.body222 ]
  %pdir.addr.2 = phi i32 [ %conv234, %if.then225 ], [ %pdir.addr.1880, %for.body222 ]
  %cmp259 = icmp eq i32 %pdir.addr.2, 2
  %76 = and i32 %pdir.addr.2, -3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.then261, label %if.else425

if.then261:                                       ; preds = %if.end255
  %78 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool262 = icmp eq i32 %78, 0
  %cmp259.not = xor i1 %cmp259, true
  %brmerge = or i1 %tobool262, %cmp259.not
  %brmerge867 = or i1 %brmerge, %cmp1.not
  br i1 %brmerge867, label %if.else342, label %if.then269

if.then269:                                       ; preds = %if.then261
  %cmp271 = icmp eq i32 %78, 1
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %cond276.in = select i1 %cmp271, i16******* %bipred_mv1, i16******* %bipred_mv2
  %cond276 = load i16******* %cond276.in, align 8
  %arrayidx280 = getelementptr inbounds i16****** %cond276, i64 %indvars.iv902
  %79 = load i16****** %arrayidx280, align 8, !tbaa !0
  %arrayidx281 = getelementptr inbounds i16***** %79, i64 %indvars.iv904
  %80 = load i16***** %arrayidx281, align 8, !tbaa !0
  %81 = load i16**** %80, align 8, !tbaa !0
  %82 = load i16*** %81, align 8, !tbaa !0
  %arrayidx284 = getelementptr inbounds i16** %82, i64 %3
  %83 = load i16** %arrayidx284, align 8, !tbaa !0
  %84 = load i16* %83, align 2, !tbaa !4
  %block_y286 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %85 = load i32* %block_y286, align 4, !tbaa !3
  %86 = trunc i64 %indvars.iv904 to i32
  %add287 = add nsw i32 %85, %86
  %idxprom288 = sext i32 %add287 to i64
  %block_x289 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %87 = load i32* %block_x289, align 4, !tbaa !3
  %88 = trunc i64 %indvars.iv902 to i32
  %add290 = add nsw i32 %87, %88
  %idxprom291 = sext i32 %add290 to i64
  %89 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv292 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 35
  %90 = load i16***** %mv292, align 8, !tbaa !0
  %91 = load i16**** %90, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i16*** %91, i64 %idxprom291
  %92 = load i16*** %arrayidx294, align 8, !tbaa !0
  %arrayidx295 = getelementptr inbounds i16** %92, i64 %idxprom288
  %93 = load i16** %arrayidx295, align 8, !tbaa !0
  store i16 %84, i16* %93, align 2, !tbaa !4
  %arrayidx305 = getelementptr inbounds i16* %83, i64 1
  %94 = load i16* %arrayidx305, align 2, !tbaa !4
  %arrayidx316 = getelementptr inbounds i16* %93, i64 1
  store i16 %94, i16* %arrayidx316, align 2, !tbaa !4
  %ref_idx323 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 32
  %95 = load i16**** %ref_idx323, align 8, !tbaa !0
  %96 = load i16*** %95, align 8, !tbaa !0
  %arrayidx325 = getelementptr inbounds i16** %96, i64 %idxprom291
  %97 = load i16** %arrayidx325, align 8, !tbaa !0
  %arrayidx326 = getelementptr inbounds i16* %97, i64 %idxprom288
  store i16 0, i16* %arrayidx326, align 2, !tbaa !4
  %arrayidx331 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 6, i64 %idxprom410864, i64 0
  %98 = load i64* %arrayidx331, align 8, !tbaa !5
  %ref_pic_id338 = getelementptr inbounds %struct.storable_picture* %89, i64 0, i32 33
  %99 = load i64**** %ref_pic_id338, align 8, !tbaa !0
  %100 = load i64*** %99, align 8, !tbaa !0
  %arrayidx340 = getelementptr inbounds i64** %100, i64 %idxprom291
  %101 = load i64** %arrayidx340, align 8, !tbaa !0
  %arrayidx341 = getelementptr inbounds i64* %101, i64 %idxprom288
  store i64 %98, i64* %arrayidx341, align 8, !tbaa !5
  br label %if.end468

if.else342:                                       ; preds = %if.then261
  %idxprom344 = sext i32 %fwref.addr.2 to i64
  %all_mv347 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %102 = load i16******* %all_mv347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds i16****** %102, i64 %indvars.iv902
  %103 = load i16****** %arrayidx348, align 8, !tbaa !0
  %arrayidx349 = getelementptr inbounds i16***** %103, i64 %indvars.iv904
  %104 = load i16***** %arrayidx349, align 8, !tbaa !0
  %105 = load i16**** %104, align 8, !tbaa !0
  %arrayidx351 = getelementptr inbounds i16*** %105, i64 %idxprom344
  %106 = load i16*** %arrayidx351, align 8, !tbaa !0
  %arrayidx352 = getelementptr inbounds i16** %106, i64 %3
  %107 = load i16** %arrayidx352, align 8, !tbaa !0
  %108 = load i16* %107, align 2, !tbaa !4
  %block_y354 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %109 = load i32* %block_y354, align 4, !tbaa !3
  %110 = trunc i64 %indvars.iv904 to i32
  %add355 = add nsw i32 %109, %110
  %idxprom356 = sext i32 %add355 to i64
  %block_x357 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %111 = load i32* %block_x357, align 4, !tbaa !3
  %112 = trunc i64 %indvars.iv902 to i32
  %add358 = add nsw i32 %111, %112
  %idxprom359 = sext i32 %add358 to i64
  %113 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv360 = getelementptr inbounds %struct.storable_picture* %113, i64 0, i32 35
  %114 = load i16***** %mv360, align 8, !tbaa !0
  %115 = load i16**** %114, align 8, !tbaa !0
  %arrayidx362 = getelementptr inbounds i16*** %115, i64 %idxprom359
  %116 = load i16*** %arrayidx362, align 8, !tbaa !0
  %arrayidx363 = getelementptr inbounds i16** %116, i64 %idxprom356
  %117 = load i16** %arrayidx363, align 8, !tbaa !0
  store i16 %108, i16* %117, align 2, !tbaa !4
  %arrayidx375 = getelementptr inbounds i16* %107, i64 1
  %118 = load i16* %arrayidx375, align 2, !tbaa !4
  %arrayidx386 = getelementptr inbounds i16* %117, i64 1
  store i16 %118, i16* %arrayidx386, align 2, !tbaa !4
  %conv387 = trunc i32 %fwref.addr.2 to i16
  %ref_idx394 = getelementptr inbounds %struct.storable_picture* %113, i64 0, i32 32
  %119 = load i16**** %ref_idx394, align 8, !tbaa !0
  %120 = load i16*** %119, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i16** %120, i64 %idxprom359
  %121 = load i16** %arrayidx396, align 8, !tbaa !0
  %arrayidx397 = getelementptr inbounds i16* %121, i64 %idxprom356
  store i16 %conv387, i16* %arrayidx397, align 2, !tbaa !4
  %idxprom408 = sext i16 %conv387 to i64
  %arrayidx413 = getelementptr inbounds %struct.storable_picture* %113, i64 0, i32 6, i64 %idxprom410864, i64 %idxprom408
  %122 = load i64* %arrayidx413, align 8, !tbaa !5
  %ref_pic_id420 = getelementptr inbounds %struct.storable_picture* %113, i64 0, i32 33
  %123 = load i64**** %ref_pic_id420, align 8, !tbaa !0
  %124 = load i64*** %123, align 8, !tbaa !0
  %arrayidx422 = getelementptr inbounds i64** %124, i64 %idxprom359
  %125 = load i64** %arrayidx422, align 8, !tbaa !0
  %arrayidx423 = getelementptr inbounds i64* %125, i64 %idxprom356
  store i64 %122, i64* %arrayidx423, align 8, !tbaa !5
  br label %if.end468

if.else425:                                       ; preds = %if.end255
  %block_y426 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %126 = load i32* %block_y426, align 4, !tbaa !3
  %127 = trunc i64 %indvars.iv904 to i32
  %add427 = add nsw i32 %126, %127
  %idxprom428 = sext i32 %add427 to i64
  %block_x429 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %128 = load i32* %block_x429, align 4, !tbaa !3
  %129 = trunc i64 %indvars.iv902 to i32
  %add430 = add nsw i32 %128, %129
  %idxprom431 = sext i32 %add430 to i64
  %130 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv432 = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 35
  %131 = load i16***** %mv432, align 8, !tbaa !0
  %132 = load i16**** %131, align 8, !tbaa !0
  %arrayidx434 = getelementptr inbounds i16*** %132, i64 %idxprom431
  %133 = load i16*** %arrayidx434, align 8, !tbaa !0
  %arrayidx435 = getelementptr inbounds i16** %133, i64 %idxprom428
  %134 = load i16** %arrayidx435, align 8, !tbaa !0
  store i16 0, i16* %134, align 2, !tbaa !4
  %arrayidx447 = getelementptr inbounds i16* %134, i64 1
  store i16 0, i16* %arrayidx447, align 2, !tbaa !4
  %ref_idx454 = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 32
  %135 = load i16**** %ref_idx454, align 8, !tbaa !0
  %136 = load i16*** %135, align 8, !tbaa !0
  %arrayidx456 = getelementptr inbounds i16** %136, i64 %idxprom431
  %137 = load i16** %arrayidx456, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds i16* %137, i64 %idxprom428
  store i16 -1, i16* %arrayidx457, align 2, !tbaa !4
  %ref_pic_id464 = getelementptr inbounds %struct.storable_picture* %130, i64 0, i32 33
  %138 = load i64**** %ref_pic_id464, align 8, !tbaa !0
  %139 = load i64*** %138, align 8, !tbaa !0
  %arrayidx466 = getelementptr inbounds i64** %139, i64 %idxprom431
  %140 = load i64** %arrayidx466, align 8, !tbaa !0
  %arrayidx467 = getelementptr inbounds i64* %140, i64 %idxprom428
  store i64 -1, i64* %arrayidx467, align 8, !tbaa !5
  br label %if.end468

if.end468:                                        ; preds = %if.then269, %if.else342, %if.else425
  %141 = phi i16*** [ %95, %if.then269 ], [ %119, %if.else342 ], [ %135, %if.else425 ]
  %142 = phi i16**** [ %90, %if.then269 ], [ %114, %if.else342 ], [ %131, %if.else425 ]
  %143 = phi i64*** [ %99, %if.then269 ], [ %123, %if.else342 ], [ %138, %if.else425 ]
  %144 = phi %struct.storable_picture* [ %89, %if.then269 ], [ %113, %if.else342 ], [ %130, %if.else425 ]
  %145 = phi i32 [ %87, %if.then269 ], [ %111, %if.else342 ], [ %128, %if.else425 ]
  %146 = phi i32 [ %85, %if.then269 ], [ %109, %if.else342 ], [ %126, %if.else425 ]
  %pdir.addr.2.off = add i32 %pdir.addr.2, -1
  %147 = icmp ult i32 %pdir.addr.2.off, 2
  br i1 %147, label %if.then474, label %if.else642

if.then474:                                       ; preds = %if.end468
  %148 = load i32* %bi_pred_me, align 4, !tbaa !3
  %tobool476 = icmp eq i32 %148, 0
  %cmp259.not868 = xor i1 %cmp259, true
  %brmerge869 = or i1 %tobool476, %cmp259.not868
  %brmerge871 = or i1 %brmerge869, %cmp1.not
  br i1 %brmerge871, label %if.else559, label %if.then483

if.then483:                                       ; preds = %if.then474
  %cmp486 = icmp eq i32 %148, 1
  %bipred_mv1489 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2491 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %cond493.in = select i1 %cmp486, i16******* %bipred_mv1489, i16******* %bipred_mv2491
  %cond493 = load i16******* %cond493.in, align 8
  %arrayidx497 = getelementptr inbounds i16****** %cond493, i64 %indvars.iv902
  %149 = load i16****** %arrayidx497, align 8, !tbaa !0
  %arrayidx498 = getelementptr inbounds i16***** %149, i64 %indvars.iv904
  %150 = load i16***** %arrayidx498, align 8, !tbaa !0
  %arrayidx499 = getelementptr inbounds i16**** %150, i64 1
  %151 = load i16**** %arrayidx499, align 8, !tbaa !0
  %152 = load i16*** %151, align 8, !tbaa !0
  %arrayidx501 = getelementptr inbounds i16** %152, i64 %3
  %153 = load i16** %arrayidx501, align 8, !tbaa !0
  %154 = load i16* %153, align 2, !tbaa !4
  %155 = trunc i64 %indvars.iv904 to i32
  %add504 = add nsw i32 %146, %155
  %idxprom505 = sext i32 %add504 to i64
  %156 = trunc i64 %indvars.iv902 to i32
  %add507 = add nsw i32 %145, %156
  %idxprom508 = sext i32 %add507 to i64
  %arrayidx510 = getelementptr inbounds i16**** %142, i64 1
  %157 = load i16**** %arrayidx510, align 8, !tbaa !0
  %arrayidx511 = getelementptr inbounds i16*** %157, i64 %idxprom508
  %158 = load i16*** %arrayidx511, align 8, !tbaa !0
  %arrayidx512 = getelementptr inbounds i16** %158, i64 %idxprom505
  %159 = load i16** %arrayidx512, align 8, !tbaa !0
  store i16 %154, i16* %159, align 2, !tbaa !4
  %arrayidx522 = getelementptr inbounds i16* %153, i64 1
  %160 = load i16* %arrayidx522, align 2, !tbaa !4
  %arrayidx533 = getelementptr inbounds i16* %159, i64 1
  store i16 %160, i16* %arrayidx533, align 2, !tbaa !4
  %arrayidx541 = getelementptr inbounds i16*** %141, i64 1
  %161 = load i16*** %arrayidx541, align 8, !tbaa !0
  %arrayidx542 = getelementptr inbounds i16** %161, i64 %idxprom508
  %162 = load i16** %arrayidx542, align 8, !tbaa !0
  %arrayidx543 = getelementptr inbounds i16* %162, i64 %idxprom505
  store i16 0, i16* %arrayidx543, align 2, !tbaa !4
  %arrayidx548 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 %idxprom627861, i64 0
  %163 = load i64* %arrayidx548, align 8, !tbaa !5
  %arrayidx556 = getelementptr inbounds i64*** %143, i64 1
  %164 = load i64*** %arrayidx556, align 8, !tbaa !0
  %arrayidx557 = getelementptr inbounds i64** %164, i64 %idxprom508
  %165 = load i64** %arrayidx557, align 8, !tbaa !0
  %arrayidx558 = getelementptr inbounds i64* %165, i64 %idxprom505
  store i64 %163, i64* %arrayidx558, align 8, !tbaa !5
  br label %for.inc686

if.else559:                                       ; preds = %if.then474
  %idxprom561 = sext i32 %bwref.addr.2 to i64
  %all_mv564 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %166 = load i16******* %all_mv564, align 8, !tbaa !0
  %arrayidx565 = getelementptr inbounds i16****** %166, i64 %indvars.iv902
  %167 = load i16****** %arrayidx565, align 8, !tbaa !0
  %arrayidx566 = getelementptr inbounds i16***** %167, i64 %indvars.iv904
  %168 = load i16***** %arrayidx566, align 8, !tbaa !0
  %arrayidx567 = getelementptr inbounds i16**** %168, i64 1
  %169 = load i16**** %arrayidx567, align 8, !tbaa !0
  %arrayidx568 = getelementptr inbounds i16*** %169, i64 %idxprom561
  %170 = load i16*** %arrayidx568, align 8, !tbaa !0
  %arrayidx569 = getelementptr inbounds i16** %170, i64 %3
  %171 = load i16** %arrayidx569, align 8, !tbaa !0
  %172 = load i16* %171, align 2, !tbaa !4
  %173 = trunc i64 %indvars.iv904 to i32
  %add572 = add nsw i32 %146, %173
  %idxprom573 = sext i32 %add572 to i64
  %174 = trunc i64 %indvars.iv902 to i32
  %add575 = add nsw i32 %145, %174
  %idxprom576 = sext i32 %add575 to i64
  %arrayidx578 = getelementptr inbounds i16**** %142, i64 1
  %175 = load i16**** %arrayidx578, align 8, !tbaa !0
  %arrayidx579 = getelementptr inbounds i16*** %175, i64 %idxprom576
  %176 = load i16*** %arrayidx579, align 8, !tbaa !0
  %arrayidx580 = getelementptr inbounds i16** %176, i64 %idxprom573
  %177 = load i16** %arrayidx580, align 8, !tbaa !0
  store i16 %172, i16* %177, align 2, !tbaa !4
  %arrayidx592 = getelementptr inbounds i16* %171, i64 1
  %178 = load i16* %arrayidx592, align 2, !tbaa !4
  %arrayidx603 = getelementptr inbounds i16* %177, i64 1
  store i16 %178, i16* %arrayidx603, align 2, !tbaa !4
  %conv604 = trunc i32 %bwref.addr.2 to i16
  %arrayidx612 = getelementptr inbounds i16*** %141, i64 1
  %179 = load i16*** %arrayidx612, align 8, !tbaa !0
  %arrayidx613 = getelementptr inbounds i16** %179, i64 %idxprom576
  %180 = load i16** %arrayidx613, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds i16* %180, i64 %idxprom573
  store i16 %conv604, i16* %arrayidx614, align 2, !tbaa !4
  %idxprom625 = sext i16 %conv604 to i64
  %arrayidx630 = getelementptr inbounds %struct.storable_picture* %144, i64 0, i32 6, i64 %idxprom627861, i64 %idxprom625
  %181 = load i64* %arrayidx630, align 8, !tbaa !5
  %arrayidx638 = getelementptr inbounds i64*** %143, i64 1
  %182 = load i64*** %arrayidx638, align 8, !tbaa !0
  %arrayidx639 = getelementptr inbounds i64** %182, i64 %idxprom576
  %183 = load i64** %arrayidx639, align 8, !tbaa !0
  %arrayidx640 = getelementptr inbounds i64* %183, i64 %idxprom573
  store i64 %181, i64* %arrayidx640, align 8, !tbaa !5
  br label %for.inc686

if.else642:                                       ; preds = %if.end468
  %184 = trunc i64 %indvars.iv904 to i32
  %add644 = add nsw i32 %146, %184
  %idxprom645 = sext i32 %add644 to i64
  %185 = trunc i64 %indvars.iv902 to i32
  %add647 = add nsw i32 %145, %185
  %idxprom648 = sext i32 %add647 to i64
  %arrayidx650 = getelementptr inbounds i16**** %142, i64 1
  %186 = load i16**** %arrayidx650, align 8, !tbaa !0
  %arrayidx651 = getelementptr inbounds i16*** %186, i64 %idxprom648
  %187 = load i16*** %arrayidx651, align 8, !tbaa !0
  %arrayidx652 = getelementptr inbounds i16** %187, i64 %idxprom645
  %188 = load i16** %arrayidx652, align 8, !tbaa !0
  store i16 0, i16* %188, align 2, !tbaa !4
  %arrayidx664 = getelementptr inbounds i16* %188, i64 1
  store i16 0, i16* %arrayidx664, align 2, !tbaa !4
  %arrayidx672 = getelementptr inbounds i16*** %141, i64 1
  %189 = load i16*** %arrayidx672, align 8, !tbaa !0
  %arrayidx673 = getelementptr inbounds i16** %189, i64 %idxprom648
  %190 = load i16** %arrayidx673, align 8, !tbaa !0
  %arrayidx674 = getelementptr inbounds i16* %190, i64 %idxprom645
  store i16 -1, i16* %arrayidx674, align 2, !tbaa !4
  %arrayidx682 = getelementptr inbounds i64*** %143, i64 1
  %191 = load i64*** %arrayidx682, align 8, !tbaa !0
  %arrayidx683 = getelementptr inbounds i64** %191, i64 %idxprom648
  %192 = load i64** %arrayidx683, align 8, !tbaa !0
  %arrayidx684 = getelementptr inbounds i64* %192, i64 %idxprom645
  store i64 -1, i64* %arrayidx684, align 8, !tbaa !5
  br label %for.inc686

for.inc686:                                       ; preds = %if.else642, %if.else559, %if.then483
  %indvars.iv.next903 = add i64 %indvars.iv902, 1
  %193 = trunc i64 %indvars.iv.next903 to i32
  %cmp220 = icmp slt i32 %193, %add14
  br i1 %cmp220, label %for.body222, label %for.inc689

for.inc689:                                       ; preds = %for.inc686, %for.cond219.preheader
  %pdir.addr.1.lcssa = phi i32 [ %pdir.addr.0888, %for.cond219.preheader ], [ %pdir.addr.2, %for.inc686 ]
  %fwref.addr.1.lcssa = phi i32 [ %fwref.addr.0887, %for.cond219.preheader ], [ %fwref.addr.2, %for.inc686 ]
  %bwref.addr.1.lcssa = phi i32 [ %bwref.addr.0886, %for.cond219.preheader ], [ %bwref.addr.2, %for.inc686 ]
  %indvars.iv.next905 = add i64 %indvars.iv904, 1
  %194 = trunc i64 %indvars.iv.next905 to i32
  %cmp216 = icmp slt i32 %194, %add
  br i1 %cmp216, label %for.cond219.preheader, label %if.end692

if.end692:                                        ; preds = %for.cond122.preheader, %for.inc212, %for.cond215.preheader, %for.inc689, %for.cond.preheader, %for.inc117
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @field_flag_inference() #2 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mbAvailA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 27
  %3 = load i32* %mbAvailA, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mbAddrA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 23
  %4 = load i32* %mbAddrA, align 4, !tbaa !3
  %idxprom1 = sext i32 %4 to i64
  %mb_field4 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom1, i32 22
  %5 = load i32* %mb_field4, align 4, !tbaa !3
  br label %if.end12

if.else:                                          ; preds = %entry
  %mbAvailB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 28
  %6 = load i32* %mbAvailB, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %6, 0
  br i1 %tobool5, label %if.end12, label %if.then6

if.then6:                                         ; preds = %if.else
  %mbAddrB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 24
  %7 = load i32* %mbAddrB, align 4, !tbaa !3
  %idxprom7 = sext i32 %7 to i64
  %mb_field10 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom7, i32 22
  %8 = load i32* %mb_field10, align 4, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6, %if.then
  %mb_field.0 = phi i32 [ %5, %if.then ], [ %8, %if.then6 ], [ 0, %if.else ]
  ret i32 %mb_field.0
}

; Function Attrs: nounwind optsize uwtable
define void @StoreMVBlock8x8(i32 %dir, i32 %block8x8, i32 %mode, i32 %ref, i32 %bw_ref, i32 %pdir8, i32 %bframe) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv1, align 8, !tbaa !0
  %pred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  %2 = load i16******* %pred_mv2, align 8, !tbaa !0
  %rem = srem i32 %block8x8, 2
  %shl = shl i32 %rem, 1
  %div = sdiv i32 %block8x8, 2
  %shl3 = shl i32 %div, 1
  %add = add nsw i32 %shl, 2
  %add4 = add nsw i32 %shl3, 2
  %tobool = icmp eq i32 %bframe, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %pdir8, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end415

for.cond.preheader:                               ; preds = %if.then
  %idxprom = sext i32 %ref to i64
  %idxprom19 = sext i32 %dir to i64
  %3 = shl i32 %rem, 1
  %4 = sext i32 %3 to i64
  %5 = shl i32 %div, 1
  %6 = sext i32 %5 to i64
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond.preheader, %for.inc76
  %indvars.iv608 = phi i64 [ %6, %for.cond.preheader ], [ %indvars.iv.next609, %for.inc76 ]
  br label %for.body9

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv = phi i64 [ %4, %for.cond7.preheader ], [ %indvars.iv.next, %for.body9 ]
  %arrayidx = getelementptr inbounds i16****** %1, i64 %indvars.iv
  %7 = load i16****** %arrayidx, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i16***** %7, i64 %indvars.iv608
  %8 = load i16***** %arrayidx12, align 8, !tbaa !0
  %9 = load i16**** %8, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i16*** %9, i64 %idxprom
  %10 = load i16*** %arrayidx14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i16** %10, i64 4
  %11 = load i16** %arrayidx15, align 8, !tbaa !0
  %12 = load i16* %11, align 2, !tbaa !4
  %arrayidx24 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom19, i64 0, i64 %indvars.iv, i64 %indvars.iv608, i64 0
  store i16 %12, i16* %arrayidx24, align 4, !tbaa !4
  %arrayidx33 = getelementptr inbounds i16* %11, i64 1
  %13 = load i16* %arrayidx33, align 2, !tbaa !4
  %arrayidx41 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom19, i64 0, i64 %indvars.iv, i64 %indvars.iv608, i64 1
  store i16 %13, i16* %arrayidx41, align 2, !tbaa !4
  %arrayidx45 = getelementptr inbounds i16****** %2, i64 %indvars.iv
  %14 = load i16****** %arrayidx45, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i16***** %14, i64 %indvars.iv608
  %15 = load i16***** %arrayidx46, align 8, !tbaa !0
  %16 = load i16**** %15, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16*** %16, i64 %idxprom
  %17 = load i16*** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16** %17, i64 4
  %18 = load i16** %arrayidx49, align 8, !tbaa !0
  %19 = load i16* %18, align 2, !tbaa !4
  %arrayidx58 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom19, i64 0, i64 %indvars.iv, i64 %indvars.iv608, i64 0
  store i16 %19, i16* %arrayidx58, align 4, !tbaa !4
  %arrayidx67 = getelementptr inbounds i16* %18, i64 1
  %20 = load i16* %arrayidx67, align 2, !tbaa !4
  %arrayidx75 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom19, i64 0, i64 %indvars.iv, i64 %indvars.iv608, i64 1
  store i16 %20, i16* %arrayidx75, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %21, %add
  br i1 %cmp8, label %for.body9, label %for.inc76

for.inc76:                                        ; preds = %for.body9
  %indvars.iv.next609 = add i64 %indvars.iv608, 1
  %22 = trunc i64 %indvars.iv.next609 to i32
  %cmp6 = icmp slt i32 %22, %add4
  br i1 %cmp6, label %for.cond7.preheader, label %if.end415

if.else:                                          ; preds = %entry
  switch i32 %pdir8, label %if.else411 [
    i32 0, label %for.cond81.preheader
    i32 1, label %for.cond168.preheader
    i32 2, label %for.cond255.preheader
  ]

for.cond255.preheader:                            ; preds = %if.else
  %idxprom261 = sext i32 %mode to i64
  %idxprom262 = sext i32 %ref to i64
  %idxprom273 = sext i32 %dir to i64
  %idxprom334 = sext i32 %bw_ref to i64
  %23 = shl i32 %rem, 1
  %24 = sext i32 %23 to i64
  %25 = shl i32 %div, 1
  %26 = sext i32 %25 to i64
  br label %for.cond258.preheader

for.cond168.preheader:                            ; preds = %if.else
  %idxprom174 = sext i32 %mode to i64
  %idxprom175 = sext i32 %bw_ref to i64
  %idxprom186 = sext i32 %dir to i64
  %27 = shl i32 %rem, 1
  %28 = sext i32 %27 to i64
  %29 = shl i32 %div, 1
  %30 = sext i32 %29 to i64
  br label %for.cond171.preheader

for.cond81.preheader:                             ; preds = %if.else
  %idxprom87 = sext i32 %mode to i64
  %idxprom88 = sext i32 %ref to i64
  %idxprom99 = sext i32 %dir to i64
  %31 = shl i32 %rem, 1
  %32 = sext i32 %31 to i64
  %33 = shl i32 %div, 1
  %34 = sext i32 %33 to i64
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond81.preheader, %for.inc162
  %indvars.iv612 = phi i64 [ %34, %for.cond81.preheader ], [ %indvars.iv.next613, %for.inc162 ]
  br label %for.body86

for.body86:                                       ; preds = %for.cond84.preheader, %for.body86
  %indvars.iv610 = phi i64 [ %32, %for.cond84.preheader ], [ %indvars.iv.next611, %for.body86 ]
  %arrayidx91 = getelementptr inbounds i16****** %1, i64 %indvars.iv610
  %35 = load i16****** %arrayidx91, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds i16***** %35, i64 %indvars.iv612
  %36 = load i16***** %arrayidx92, align 8, !tbaa !0
  %37 = load i16**** %36, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i16*** %37, i64 %idxprom88
  %38 = load i16*** %arrayidx94, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i16** %38, i64 %idxprom87
  %39 = load i16** %arrayidx95, align 8, !tbaa !0
  %40 = load i16* %39, align 2, !tbaa !4
  %arrayidx104 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom99, i64 0, i64 %indvars.iv610, i64 %indvars.iv612, i64 0
  store i16 %40, i16* %arrayidx104, align 4, !tbaa !4
  %arrayidx114 = getelementptr inbounds i16* %39, i64 1
  %41 = load i16* %arrayidx114, align 2, !tbaa !4
  %arrayidx122 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom99, i64 0, i64 %indvars.iv610, i64 %indvars.iv612, i64 1
  store i16 %41, i16* %arrayidx122, align 2, !tbaa !4
  %arrayidx127 = getelementptr inbounds i16****** %2, i64 %indvars.iv610
  %42 = load i16****** %arrayidx127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i16***** %42, i64 %indvars.iv612
  %43 = load i16***** %arrayidx128, align 8, !tbaa !0
  %44 = load i16**** %43, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16*** %44, i64 %idxprom88
  %45 = load i16*** %arrayidx130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i16** %45, i64 %idxprom87
  %46 = load i16** %arrayidx131, align 8, !tbaa !0
  %47 = load i16* %46, align 2, !tbaa !4
  %arrayidx140 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom99, i64 0, i64 %indvars.iv610, i64 %indvars.iv612, i64 0
  store i16 %47, i16* %arrayidx140, align 4, !tbaa !4
  %arrayidx150 = getelementptr inbounds i16* %46, i64 1
  %48 = load i16* %arrayidx150, align 2, !tbaa !4
  %arrayidx158 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom99, i64 0, i64 %indvars.iv610, i64 %indvars.iv612, i64 1
  store i16 %48, i16* %arrayidx158, align 2, !tbaa !4
  %indvars.iv.next611 = add i64 %indvars.iv610, 1
  %49 = trunc i64 %indvars.iv.next611 to i32
  %cmp85 = icmp slt i32 %49, %add
  br i1 %cmp85, label %for.body86, label %for.inc162

for.inc162:                                       ; preds = %for.body86
  %indvars.iv.next613 = add i64 %indvars.iv612, 1
  %50 = trunc i64 %indvars.iv.next613 to i32
  %cmp82 = icmp slt i32 %50, %add4
  br i1 %cmp82, label %for.cond84.preheader, label %if.end415

for.cond171.preheader:                            ; preds = %for.cond168.preheader, %for.inc249
  %indvars.iv616 = phi i64 [ %30, %for.cond168.preheader ], [ %indvars.iv.next617, %for.inc249 ]
  br label %for.body173

for.body173:                                      ; preds = %for.cond171.preheader, %for.body173
  %indvars.iv614 = phi i64 [ %28, %for.cond171.preheader ], [ %indvars.iv.next615, %for.body173 ]
  %arrayidx178 = getelementptr inbounds i16****** %1, i64 %indvars.iv614
  %51 = load i16****** %arrayidx178, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i16***** %51, i64 %indvars.iv616
  %52 = load i16***** %arrayidx179, align 8, !tbaa !0
  %arrayidx180 = getelementptr inbounds i16**** %52, i64 1
  %53 = load i16**** %arrayidx180, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds i16*** %53, i64 %idxprom175
  %54 = load i16*** %arrayidx181, align 8, !tbaa !0
  %arrayidx182 = getelementptr inbounds i16** %54, i64 %idxprom174
  %55 = load i16** %arrayidx182, align 8, !tbaa !0
  %56 = load i16* %55, align 2, !tbaa !4
  %arrayidx191 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom186, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  store i16 %56, i16* %arrayidx191, align 4, !tbaa !4
  %arrayidx201 = getelementptr inbounds i16* %55, i64 1
  %57 = load i16* %arrayidx201, align 2, !tbaa !4
  %arrayidx209 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom186, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  store i16 %57, i16* %arrayidx209, align 2, !tbaa !4
  %arrayidx214 = getelementptr inbounds i16****** %2, i64 %indvars.iv614
  %58 = load i16****** %arrayidx214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i16***** %58, i64 %indvars.iv616
  %59 = load i16***** %arrayidx215, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i16**** %59, i64 1
  %60 = load i16**** %arrayidx216, align 8, !tbaa !0
  %arrayidx217 = getelementptr inbounds i16*** %60, i64 %idxprom175
  %61 = load i16*** %arrayidx217, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i16** %61, i64 %idxprom174
  %62 = load i16** %arrayidx218, align 8, !tbaa !0
  %63 = load i16* %62, align 2, !tbaa !4
  %arrayidx227 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom186, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  store i16 %63, i16* %arrayidx227, align 4, !tbaa !4
  %arrayidx237 = getelementptr inbounds i16* %62, i64 1
  %64 = load i16* %arrayidx237, align 2, !tbaa !4
  %arrayidx245 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom186, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  store i16 %64, i16* %arrayidx245, align 2, !tbaa !4
  %indvars.iv.next615 = add i64 %indvars.iv614, 1
  %65 = trunc i64 %indvars.iv.next615 to i32
  %cmp172 = icmp slt i32 %65, %add
  br i1 %cmp172, label %for.body173, label %for.inc249

for.inc249:                                       ; preds = %for.body173
  %indvars.iv.next617 = add i64 %indvars.iv616, 1
  %66 = trunc i64 %indvars.iv.next617 to i32
  %cmp169 = icmp slt i32 %66, %add4
  br i1 %cmp169, label %for.cond171.preheader, label %if.end415

for.cond258.preheader:                            ; preds = %for.cond255.preheader, %for.inc408
  %indvars.iv620 = phi i64 [ %26, %for.cond255.preheader ], [ %indvars.iv.next621, %for.inc408 ]
  br label %for.body260

for.body260:                                      ; preds = %for.cond258.preheader, %for.body260
  %indvars.iv618 = phi i64 [ %24, %for.cond258.preheader ], [ %indvars.iv.next619, %for.body260 ]
  %arrayidx265 = getelementptr inbounds i16****** %1, i64 %indvars.iv618
  %67 = load i16****** %arrayidx265, align 8, !tbaa !0
  %arrayidx266 = getelementptr inbounds i16***** %67, i64 %indvars.iv620
  %68 = load i16***** %arrayidx266, align 8, !tbaa !0
  %69 = load i16**** %68, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i16*** %69, i64 %idxprom262
  %70 = load i16*** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i16** %70, i64 %idxprom261
  %71 = load i16** %arrayidx269, align 8, !tbaa !0
  %72 = load i16* %71, align 2, !tbaa !4
  %arrayidx278 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom273, i64 0, i64 %indvars.iv618, i64 %indvars.iv620, i64 0
  store i16 %72, i16* %arrayidx278, align 4, !tbaa !4
  %arrayidx288 = getelementptr inbounds i16* %71, i64 1
  %73 = load i16* %arrayidx288, align 2, !tbaa !4
  %arrayidx296 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom273, i64 0, i64 %indvars.iv618, i64 %indvars.iv620, i64 1
  store i16 %73, i16* %arrayidx296, align 2, !tbaa !4
  %arrayidx301 = getelementptr inbounds i16****** %2, i64 %indvars.iv618
  %74 = load i16****** %arrayidx301, align 8, !tbaa !0
  %arrayidx302 = getelementptr inbounds i16***** %74, i64 %indvars.iv620
  %75 = load i16***** %arrayidx302, align 8, !tbaa !0
  %76 = load i16**** %75, align 8, !tbaa !0
  %arrayidx304 = getelementptr inbounds i16*** %76, i64 %idxprom262
  %77 = load i16*** %arrayidx304, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i16** %77, i64 %idxprom261
  %78 = load i16** %arrayidx305, align 8, !tbaa !0
  %79 = load i16* %78, align 2, !tbaa !4
  %arrayidx314 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom273, i64 0, i64 %indvars.iv618, i64 %indvars.iv620, i64 0
  store i16 %79, i16* %arrayidx314, align 4, !tbaa !4
  %arrayidx324 = getelementptr inbounds i16* %78, i64 1
  %80 = load i16* %arrayidx324, align 2, !tbaa !4
  %arrayidx332 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom273, i64 0, i64 %indvars.iv618, i64 %indvars.iv620, i64 1
  store i16 %80, i16* %arrayidx332, align 2, !tbaa !4
  %arrayidx339 = getelementptr inbounds i16**** %68, i64 1
  %81 = load i16**** %arrayidx339, align 8, !tbaa !0
  %arrayidx340 = getelementptr inbounds i16*** %81, i64 %idxprom334
  %82 = load i16*** %arrayidx340, align 8, !tbaa !0
  %arrayidx341 = getelementptr inbounds i16** %82, i64 %idxprom261
  %83 = load i16** %arrayidx341, align 8, !tbaa !0
  %84 = load i16* %83, align 2, !tbaa !4
  %arrayidx350 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom273, i64 1, i64 %indvars.iv618, i64 %indvars.iv620, i64 0
  store i16 %84, i16* %arrayidx350, align 4, !tbaa !4
  %arrayidx360 = getelementptr inbounds i16* %83, i64 1
  %85 = load i16* %arrayidx360, align 2, !tbaa !4
  %arrayidx368 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom273, i64 1, i64 %indvars.iv618, i64 %indvars.iv620, i64 1
  store i16 %85, i16* %arrayidx368, align 2, !tbaa !4
  %arrayidx375 = getelementptr inbounds i16**** %75, i64 1
  %86 = load i16**** %arrayidx375, align 8, !tbaa !0
  %arrayidx376 = getelementptr inbounds i16*** %86, i64 %idxprom334
  %87 = load i16*** %arrayidx376, align 8, !tbaa !0
  %arrayidx377 = getelementptr inbounds i16** %87, i64 %idxprom261
  %88 = load i16** %arrayidx377, align 8, !tbaa !0
  %89 = load i16* %88, align 2, !tbaa !4
  %arrayidx386 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom273, i64 1, i64 %indvars.iv618, i64 %indvars.iv620, i64 0
  store i16 %89, i16* %arrayidx386, align 4, !tbaa !4
  %arrayidx396 = getelementptr inbounds i16* %88, i64 1
  %90 = load i16* %arrayidx396, align 2, !tbaa !4
  %arrayidx404 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom273, i64 1, i64 %indvars.iv618, i64 %indvars.iv620, i64 1
  store i16 %90, i16* %arrayidx404, align 2, !tbaa !4
  %indvars.iv.next619 = add i64 %indvars.iv618, 1
  %91 = trunc i64 %indvars.iv.next619 to i32
  %cmp259 = icmp slt i32 %91, %add
  br i1 %cmp259, label %for.body260, label %for.inc408

for.inc408:                                       ; preds = %for.body260
  %indvars.iv.next621 = add i64 %indvars.iv620, 1
  %92 = trunc i64 %indvars.iv.next621 to i32
  %cmp256 = icmp slt i32 %92, %add4
  br i1 %cmp256, label %for.cond258.preheader, label %if.end415

if.else411:                                       ; preds = %if.else
  tail call void @error(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 255) #8
  br label %if.end415

if.end415:                                        ; preds = %for.inc408, %for.inc249, %for.inc162, %for.inc76, %if.else411, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @RestoreMVBlock8x8(i32 %dir, i32 %block8x8, i32 %mode, i32 %ref, i32 %bw_ref, i32 %pdir8, i32 %bframe) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv1, align 8, !tbaa !0
  %pred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  %2 = load i16******* %pred_mv2, align 8, !tbaa !0
  %rem = srem i32 %block8x8, 2
  %shl = shl i32 %rem, 1
  %div = sdiv i32 %block8x8, 2
  %shl3 = shl i32 %div, 1
  %add = add nsw i32 %shl, 2
  %add4 = add nsw i32 %shl3, 2
  %tobool = icmp eq i32 %bframe, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %pdir8, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end415

for.cond.preheader:                               ; preds = %if.then
  %idxprom11 = sext i32 %dir to i64
  %idxprom16 = sext i32 %ref to i64
  %3 = shl i32 %rem, 1
  %4 = sext i32 %3 to i64
  %5 = shl i32 %div, 1
  %6 = sext i32 %5 to i64
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond.preheader, %for.inc76
  %indvars.iv604 = phi i64 [ %6, %for.cond.preheader ], [ %indvars.iv.next605, %for.inc76 ]
  br label %for.body9

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv = phi i64 [ %4, %for.cond7.preheader ], [ %indvars.iv.next, %for.body9 ]
  %arrayidx15 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom11, i64 0, i64 %indvars.iv, i64 %indvars.iv604, i64 0
  %7 = load i16* %arrayidx15, align 4, !tbaa !4
  %arrayidx19 = getelementptr inbounds i16****** %1, i64 %indvars.iv
  %8 = load i16****** %arrayidx19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i16***** %8, i64 %indvars.iv604
  %9 = load i16***** %arrayidx20, align 8, !tbaa !0
  %10 = load i16**** %9, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i16*** %10, i64 %idxprom16
  %11 = load i16*** %arrayidx22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i16** %11, i64 4
  %12 = load i16** %arrayidx23, align 8, !tbaa !0
  store i16 %7, i16* %12, align 2, !tbaa !4
  %arrayidx32 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom11, i64 0, i64 %indvars.iv, i64 %indvars.iv604, i64 1
  %13 = load i16* %arrayidx32, align 2, !tbaa !4
  %arrayidx41 = getelementptr inbounds i16* %12, i64 1
  store i16 %13, i16* %arrayidx41, align 2, !tbaa !4
  %arrayidx49 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom11, i64 0, i64 %indvars.iv, i64 %indvars.iv604, i64 0
  %14 = load i16* %arrayidx49, align 4, !tbaa !4
  %arrayidx53 = getelementptr inbounds i16****** %2, i64 %indvars.iv
  %15 = load i16****** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16***** %15, i64 %indvars.iv604
  %16 = load i16***** %arrayidx54, align 8, !tbaa !0
  %17 = load i16**** %16, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i16*** %17, i64 %idxprom16
  %18 = load i16*** %arrayidx56, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i16** %18, i64 4
  %19 = load i16** %arrayidx57, align 8, !tbaa !0
  store i16 %14, i16* %19, align 2, !tbaa !4
  %arrayidx66 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom11, i64 0, i64 %indvars.iv, i64 %indvars.iv604, i64 1
  %20 = load i16* %arrayidx66, align 2, !tbaa !4
  %arrayidx75 = getelementptr inbounds i16* %19, i64 1
  store i16 %20, i16* %arrayidx75, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %21, %add
  br i1 %cmp8, label %for.body9, label %for.inc76

for.inc76:                                        ; preds = %for.body9
  %indvars.iv.next605 = add i64 %indvars.iv604, 1
  %22 = trunc i64 %indvars.iv.next605 to i32
  %cmp6 = icmp slt i32 %22, %add4
  br i1 %cmp6, label %for.cond7.preheader, label %if.end415

if.else:                                          ; preds = %entry
  switch i32 %pdir8, label %if.else411 [
    i32 0, label %for.cond81.preheader
    i32 1, label %for.cond168.preheader
    i32 2, label %for.cond255.preheader
  ]

for.cond255.preheader:                            ; preds = %if.else
  %idxprom263 = sext i32 %dir to i64
  %idxprom269 = sext i32 %mode to i64
  %idxprom270 = sext i32 %ref to i64
  %idxprom342 = sext i32 %bw_ref to i64
  %23 = shl i32 %rem, 1
  %24 = sext i32 %23 to i64
  %25 = shl i32 %div, 1
  %26 = sext i32 %25 to i64
  br label %for.cond258.preheader

for.cond168.preheader:                            ; preds = %if.else
  %idxprom176 = sext i32 %dir to i64
  %idxprom182 = sext i32 %mode to i64
  %idxprom183 = sext i32 %bw_ref to i64
  %27 = shl i32 %rem, 1
  %28 = sext i32 %27 to i64
  %29 = shl i32 %div, 1
  %30 = sext i32 %29 to i64
  br label %for.cond171.preheader

for.cond81.preheader:                             ; preds = %if.else
  %idxprom89 = sext i32 %dir to i64
  %idxprom95 = sext i32 %mode to i64
  %idxprom96 = sext i32 %ref to i64
  %31 = shl i32 %rem, 1
  %32 = sext i32 %31 to i64
  %33 = shl i32 %div, 1
  %34 = sext i32 %33 to i64
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond81.preheader, %for.inc162
  %indvars.iv608 = phi i64 [ %34, %for.cond81.preheader ], [ %indvars.iv.next609, %for.inc162 ]
  br label %for.body86

for.body86:                                       ; preds = %for.cond84.preheader, %for.body86
  %indvars.iv606 = phi i64 [ %32, %for.cond84.preheader ], [ %indvars.iv.next607, %for.body86 ]
  %arrayidx94 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom89, i64 0, i64 %indvars.iv606, i64 %indvars.iv608, i64 0
  %35 = load i16* %arrayidx94, align 4, !tbaa !4
  %arrayidx99 = getelementptr inbounds i16****** %1, i64 %indvars.iv606
  %36 = load i16****** %arrayidx99, align 8, !tbaa !0
  %arrayidx100 = getelementptr inbounds i16***** %36, i64 %indvars.iv608
  %37 = load i16***** %arrayidx100, align 8, !tbaa !0
  %38 = load i16**** %37, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds i16*** %38, i64 %idxprom96
  %39 = load i16*** %arrayidx102, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i16** %39, i64 %idxprom95
  %40 = load i16** %arrayidx103, align 8, !tbaa !0
  store i16 %35, i16* %40, align 2, !tbaa !4
  %arrayidx112 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom89, i64 0, i64 %indvars.iv606, i64 %indvars.iv608, i64 1
  %41 = load i16* %arrayidx112, align 2, !tbaa !4
  %arrayidx122 = getelementptr inbounds i16* %40, i64 1
  store i16 %41, i16* %arrayidx122, align 2, !tbaa !4
  %arrayidx130 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom89, i64 0, i64 %indvars.iv606, i64 %indvars.iv608, i64 0
  %42 = load i16* %arrayidx130, align 4, !tbaa !4
  %arrayidx135 = getelementptr inbounds i16****** %2, i64 %indvars.iv606
  %43 = load i16****** %arrayidx135, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i16***** %43, i64 %indvars.iv608
  %44 = load i16***** %arrayidx136, align 8, !tbaa !0
  %45 = load i16**** %44, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i16*** %45, i64 %idxprom96
  %46 = load i16*** %arrayidx138, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i16** %46, i64 %idxprom95
  %47 = load i16** %arrayidx139, align 8, !tbaa !0
  store i16 %42, i16* %47, align 2, !tbaa !4
  %arrayidx148 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom89, i64 0, i64 %indvars.iv606, i64 %indvars.iv608, i64 1
  %48 = load i16* %arrayidx148, align 2, !tbaa !4
  %arrayidx158 = getelementptr inbounds i16* %47, i64 1
  store i16 %48, i16* %arrayidx158, align 2, !tbaa !4
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %49 = trunc i64 %indvars.iv.next607 to i32
  %cmp85 = icmp slt i32 %49, %add
  br i1 %cmp85, label %for.body86, label %for.inc162

for.inc162:                                       ; preds = %for.body86
  %indvars.iv.next609 = add i64 %indvars.iv608, 1
  %50 = trunc i64 %indvars.iv.next609 to i32
  %cmp82 = icmp slt i32 %50, %add4
  br i1 %cmp82, label %for.cond84.preheader, label %if.end415

for.cond171.preheader:                            ; preds = %for.cond168.preheader, %for.inc249
  %indvars.iv612 = phi i64 [ %30, %for.cond168.preheader ], [ %indvars.iv.next613, %for.inc249 ]
  br label %for.body173

for.body173:                                      ; preds = %for.cond171.preheader, %for.body173
  %indvars.iv610 = phi i64 [ %28, %for.cond171.preheader ], [ %indvars.iv.next611, %for.body173 ]
  %arrayidx181 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom176, i64 1, i64 %indvars.iv610, i64 %indvars.iv612, i64 0
  %51 = load i16* %arrayidx181, align 4, !tbaa !4
  %arrayidx186 = getelementptr inbounds i16****** %1, i64 %indvars.iv610
  %52 = load i16****** %arrayidx186, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i16***** %52, i64 %indvars.iv612
  %53 = load i16***** %arrayidx187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i16**** %53, i64 1
  %54 = load i16**** %arrayidx188, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i16*** %54, i64 %idxprom183
  %55 = load i16*** %arrayidx189, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i16** %55, i64 %idxprom182
  %56 = load i16** %arrayidx190, align 8, !tbaa !0
  store i16 %51, i16* %56, align 2, !tbaa !4
  %arrayidx199 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom176, i64 1, i64 %indvars.iv610, i64 %indvars.iv612, i64 1
  %57 = load i16* %arrayidx199, align 2, !tbaa !4
  %arrayidx209 = getelementptr inbounds i16* %56, i64 1
  store i16 %57, i16* %arrayidx209, align 2, !tbaa !4
  %arrayidx217 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom176, i64 1, i64 %indvars.iv610, i64 %indvars.iv612, i64 0
  %58 = load i16* %arrayidx217, align 4, !tbaa !4
  %arrayidx222 = getelementptr inbounds i16****** %2, i64 %indvars.iv610
  %59 = load i16****** %arrayidx222, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds i16***** %59, i64 %indvars.iv612
  %60 = load i16***** %arrayidx223, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds i16**** %60, i64 1
  %61 = load i16**** %arrayidx224, align 8, !tbaa !0
  %arrayidx225 = getelementptr inbounds i16*** %61, i64 %idxprom183
  %62 = load i16*** %arrayidx225, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i16** %62, i64 %idxprom182
  %63 = load i16** %arrayidx226, align 8, !tbaa !0
  store i16 %58, i16* %63, align 2, !tbaa !4
  %arrayidx235 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom176, i64 1, i64 %indvars.iv610, i64 %indvars.iv612, i64 1
  %64 = load i16* %arrayidx235, align 2, !tbaa !4
  %arrayidx245 = getelementptr inbounds i16* %63, i64 1
  store i16 %64, i16* %arrayidx245, align 2, !tbaa !4
  %indvars.iv.next611 = add i64 %indvars.iv610, 1
  %65 = trunc i64 %indvars.iv.next611 to i32
  %cmp172 = icmp slt i32 %65, %add
  br i1 %cmp172, label %for.body173, label %for.inc249

for.inc249:                                       ; preds = %for.body173
  %indvars.iv.next613 = add i64 %indvars.iv612, 1
  %66 = trunc i64 %indvars.iv.next613 to i32
  %cmp169 = icmp slt i32 %66, %add4
  br i1 %cmp169, label %for.cond171.preheader, label %if.end415

for.cond258.preheader:                            ; preds = %for.cond255.preheader, %for.inc408
  %indvars.iv616 = phi i64 [ %26, %for.cond255.preheader ], [ %indvars.iv.next617, %for.inc408 ]
  br label %for.body260

for.body260:                                      ; preds = %for.cond258.preheader, %for.body260
  %indvars.iv614 = phi i64 [ %24, %for.cond258.preheader ], [ %indvars.iv.next615, %for.body260 ]
  %arrayidx268 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom263, i64 0, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  %67 = load i16* %arrayidx268, align 4, !tbaa !4
  %arrayidx273 = getelementptr inbounds i16****** %1, i64 %indvars.iv614
  %68 = load i16****** %arrayidx273, align 8, !tbaa !0
  %arrayidx274 = getelementptr inbounds i16***** %68, i64 %indvars.iv616
  %69 = load i16***** %arrayidx274, align 8, !tbaa !0
  %70 = load i16**** %69, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i16*** %70, i64 %idxprom270
  %71 = load i16*** %arrayidx276, align 8, !tbaa !0
  %arrayidx277 = getelementptr inbounds i16** %71, i64 %idxprom269
  %72 = load i16** %arrayidx277, align 8, !tbaa !0
  store i16 %67, i16* %72, align 2, !tbaa !4
  %arrayidx286 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom263, i64 0, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  %73 = load i16* %arrayidx286, align 2, !tbaa !4
  %arrayidx296 = getelementptr inbounds i16* %72, i64 1
  store i16 %73, i16* %arrayidx296, align 2, !tbaa !4
  %arrayidx304 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom263, i64 0, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  %74 = load i16* %arrayidx304, align 4, !tbaa !4
  %arrayidx309 = getelementptr inbounds i16****** %2, i64 %indvars.iv614
  %75 = load i16****** %arrayidx309, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i16***** %75, i64 %indvars.iv616
  %76 = load i16***** %arrayidx310, align 8, !tbaa !0
  %77 = load i16**** %76, align 8, !tbaa !0
  %arrayidx312 = getelementptr inbounds i16*** %77, i64 %idxprom270
  %78 = load i16*** %arrayidx312, align 8, !tbaa !0
  %arrayidx313 = getelementptr inbounds i16** %78, i64 %idxprom269
  %79 = load i16** %arrayidx313, align 8, !tbaa !0
  store i16 %74, i16* %79, align 2, !tbaa !4
  %arrayidx322 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom263, i64 0, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  %80 = load i16* %arrayidx322, align 2, !tbaa !4
  %arrayidx332 = getelementptr inbounds i16* %79, i64 1
  store i16 %80, i16* %arrayidx332, align 2, !tbaa !4
  %arrayidx340 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom263, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  %81 = load i16* %arrayidx340, align 4, !tbaa !4
  %arrayidx347 = getelementptr inbounds i16**** %69, i64 1
  %82 = load i16**** %arrayidx347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds i16*** %82, i64 %idxprom342
  %83 = load i16*** %arrayidx348, align 8, !tbaa !0
  %arrayidx349 = getelementptr inbounds i16** %83, i64 %idxprom269
  %84 = load i16** %arrayidx349, align 8, !tbaa !0
  store i16 %81, i16* %84, align 2, !tbaa !4
  %arrayidx358 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom263, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  %85 = load i16* %arrayidx358, align 2, !tbaa !4
  %arrayidx368 = getelementptr inbounds i16* %84, i64 1
  store i16 %85, i16* %arrayidx368, align 2, !tbaa !4
  %arrayidx376 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom263, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 0
  %86 = load i16* %arrayidx376, align 4, !tbaa !4
  %arrayidx383 = getelementptr inbounds i16**** %76, i64 1
  %87 = load i16**** %arrayidx383, align 8, !tbaa !0
  %arrayidx384 = getelementptr inbounds i16*** %87, i64 %idxprom342
  %88 = load i16*** %arrayidx384, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds i16** %88, i64 %idxprom269
  %89 = load i16** %arrayidx385, align 8, !tbaa !0
  store i16 %86, i16* %89, align 2, !tbaa !4
  %arrayidx394 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom263, i64 1, i64 %indvars.iv614, i64 %indvars.iv616, i64 1
  %90 = load i16* %arrayidx394, align 2, !tbaa !4
  %arrayidx404 = getelementptr inbounds i16* %89, i64 1
  store i16 %90, i16* %arrayidx404, align 2, !tbaa !4
  %indvars.iv.next615 = add i64 %indvars.iv614, 1
  %91 = trunc i64 %indvars.iv.next615 to i32
  %cmp259 = icmp slt i32 %91, %add
  br i1 %cmp259, label %for.body260, label %for.inc408

for.inc408:                                       ; preds = %for.body260
  %indvars.iv.next617 = add i64 %indvars.iv616, 1
  %92 = trunc i64 %indvars.iv.next617 to i32
  %cmp256 = icmp slt i32 %92, %add4
  br i1 %cmp256, label %for.cond258.preheader, label %if.end415

if.else411:                                       ; preds = %if.else
  tail call void @error(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 255) #8
  br label %if.end415

if.end415:                                        ; preds = %for.inc408, %for.inc249, %for.inc162, %for.inc76, %if.else411, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @StoreNewMotionVectorsBlock8x8(i32 %dir, i32 %block8x8, i32 %mode, i32 %fw_ref, i32 %bw_ref, i32 %pdir8, i32 %bframe) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv1, align 8, !tbaa !0
  %pred_mv2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  %2 = load i16******* %pred_mv2, align 8, !tbaa !0
  %rem = srem i32 %block8x8, 2
  %shl = shl i32 %rem, 1
  %div = sdiv i32 %block8x8, 2
  %shl3 = shl i32 %div, 1
  %add = add nsw i32 %shl, 2
  %add4 = add nsw i32 %shl3, 2
  %cmp = icmp slt i32 %pdir8, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %idxprom10 = sext i32 %dir to i64
  %3 = shl i32 %rem, 1
  %4 = sext i32 %3 to i64
  %5 = shl i32 %div, 1
  %6 = sext i32 %5 to i64
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond.preheader, %for.inc39
  %indvars.iv530 = phi i64 [ %6, %for.cond.preheader ], [ %indvars.iv.next531, %for.inc39 ]
  br label %for.body8

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %indvars.iv = phi i64 [ %4, %for.cond6.preheader ], [ %indvars.iv.next, %for.body8 ]
  %arrayidx14 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom10, i64 0, i64 %indvars.iv, i64 %indvars.iv530, i64 0
  store i16 0, i16* %arrayidx14, align 4, !tbaa !4
  %arrayidx22 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom10, i64 0, i64 %indvars.iv, i64 %indvars.iv530, i64 1
  store i16 0, i16* %arrayidx22, align 2, !tbaa !4
  %arrayidx30 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom10, i64 1, i64 %indvars.iv, i64 %indvars.iv530, i64 0
  store i16 0, i16* %arrayidx30, align 4, !tbaa !4
  %arrayidx38 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom10, i64 1, i64 %indvars.iv, i64 %indvars.iv530, i64 1
  store i16 0, i16* %arrayidx38, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %7, %add
  br i1 %cmp7, label %for.body8, label %for.inc39

for.inc39:                                        ; preds = %for.body8
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %8 = trunc i64 %indvars.iv.next531 to i32
  %cmp5 = icmp slt i32 %8, %add4
  br i1 %cmp5, label %for.cond6.preheader, label %if.end358

if.end:                                           ; preds = %entry
  %tobool = icmp eq i32 %bframe, 0
  br i1 %tobool, label %for.cond43.preheader, label %if.else

for.cond43.preheader:                             ; preds = %if.end
  %idxprom49 = sext i32 %fw_ref to i64
  %idxprom60 = sext i32 %dir to i64
  %9 = shl i32 %rem, 1
  %10 = sext i32 %9 to i64
  %11 = shl i32 %div, 1
  %12 = sext i32 %11 to i64
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.cond43.preheader, %for.inc120
  %indvars.iv534 = phi i64 [ %12, %for.cond43.preheader ], [ %indvars.iv.next535, %for.inc120 ]
  br label %for.body48

for.body48:                                       ; preds = %for.cond46.preheader, %for.body48
  %indvars.iv532 = phi i64 [ %10, %for.cond46.preheader ], [ %indvars.iv.next533, %for.body48 ]
  %arrayidx52 = getelementptr inbounds i16****** %1, i64 %indvars.iv532
  %13 = load i16****** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i16***** %13, i64 %indvars.iv534
  %14 = load i16***** %arrayidx53, align 8, !tbaa !0
  %15 = load i16**** %14, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i16*** %15, i64 %idxprom49
  %16 = load i16*** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i16** %16, i64 4
  %17 = load i16** %arrayidx56, align 8, !tbaa !0
  %18 = load i16* %17, align 2, !tbaa !4
  %arrayidx65 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom60, i64 0, i64 %indvars.iv532, i64 %indvars.iv534, i64 0
  store i16 %18, i16* %arrayidx65, align 4, !tbaa !4
  %arrayidx74 = getelementptr inbounds i16* %17, i64 1
  %19 = load i16* %arrayidx74, align 2, !tbaa !4
  %arrayidx82 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom60, i64 0, i64 %indvars.iv532, i64 %indvars.iv534, i64 1
  store i16 %19, i16* %arrayidx82, align 2, !tbaa !4
  %arrayidx86 = getelementptr inbounds i16****** %2, i64 %indvars.iv532
  %20 = load i16****** %arrayidx86, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i16***** %20, i64 %indvars.iv534
  %21 = load i16***** %arrayidx87, align 8, !tbaa !0
  %22 = load i16**** %21, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i16*** %22, i64 %idxprom49
  %23 = load i16*** %arrayidx89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i16** %23, i64 4
  %24 = load i16** %arrayidx90, align 8, !tbaa !0
  %25 = load i16* %24, align 2, !tbaa !4
  %arrayidx99 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom60, i64 0, i64 %indvars.iv532, i64 %indvars.iv534, i64 0
  store i16 %25, i16* %arrayidx99, align 4, !tbaa !4
  %arrayidx108 = getelementptr inbounds i16* %24, i64 1
  %26 = load i16* %arrayidx108, align 2, !tbaa !4
  %arrayidx116 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom60, i64 0, i64 %indvars.iv532, i64 %indvars.iv534, i64 1
  store i16 %26, i16* %arrayidx116, align 2, !tbaa !4
  %indvars.iv.next533 = add i64 %indvars.iv532, 1
  %27 = trunc i64 %indvars.iv.next533 to i32
  %cmp47 = icmp slt i32 %27, %add
  br i1 %cmp47, label %for.body48, label %for.inc120

for.inc120:                                       ; preds = %for.body48
  %indvars.iv.next535 = add i64 %indvars.iv534, 1
  %28 = trunc i64 %indvars.iv.next535 to i32
  %cmp44 = icmp slt i32 %28, %add4
  br i1 %cmp44, label %for.cond46.preheader, label %if.end358

if.else:                                          ; preds = %if.end
  %29 = and i32 %pdir8, -3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %for.cond126.preheader, label %for.cond211.preheader

for.cond211.preheader:                            ; preds = %if.else
  %idxprom219 = sext i32 %dir to i64
  %31 = shl i32 %rem, 1
  %32 = sext i32 %31 to i64
  %33 = shl i32 %div, 1
  %34 = sext i32 %33 to i64
  br label %for.cond214.preheader

for.cond126.preheader:                            ; preds = %if.else
  %idxprom132 = sext i32 %mode to i64
  %idxprom133 = sext i32 %fw_ref to i64
  %idxprom144 = sext i32 %dir to i64
  %35 = shl i32 %rem, 1
  %36 = sext i32 %35 to i64
  %37 = shl i32 %div, 1
  %38 = sext i32 %37 to i64
  br label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.cond126.preheader, %for.inc207
  %indvars.iv546 = phi i64 [ %38, %for.cond126.preheader ], [ %indvars.iv.next547, %for.inc207 ]
  br label %for.body131

for.body131:                                      ; preds = %for.cond129.preheader, %for.body131
  %indvars.iv544 = phi i64 [ %36, %for.cond129.preheader ], [ %indvars.iv.next545, %for.body131 ]
  %arrayidx136 = getelementptr inbounds i16****** %1, i64 %indvars.iv544
  %39 = load i16****** %arrayidx136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i16***** %39, i64 %indvars.iv546
  %40 = load i16***** %arrayidx137, align 8, !tbaa !0
  %41 = load i16**** %40, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i16*** %41, i64 %idxprom133
  %42 = load i16*** %arrayidx139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i16** %42, i64 %idxprom132
  %43 = load i16** %arrayidx140, align 8, !tbaa !0
  %44 = load i16* %43, align 2, !tbaa !4
  %arrayidx149 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom144, i64 0, i64 %indvars.iv544, i64 %indvars.iv546, i64 0
  store i16 %44, i16* %arrayidx149, align 4, !tbaa !4
  %arrayidx159 = getelementptr inbounds i16* %43, i64 1
  %45 = load i16* %arrayidx159, align 2, !tbaa !4
  %arrayidx167 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom144, i64 0, i64 %indvars.iv544, i64 %indvars.iv546, i64 1
  store i16 %45, i16* %arrayidx167, align 2, !tbaa !4
  %arrayidx172 = getelementptr inbounds i16****** %2, i64 %indvars.iv544
  %46 = load i16****** %arrayidx172, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i16***** %46, i64 %indvars.iv546
  %47 = load i16***** %arrayidx173, align 8, !tbaa !0
  %48 = load i16**** %47, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i16*** %48, i64 %idxprom133
  %49 = load i16*** %arrayidx175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i16** %49, i64 %idxprom132
  %50 = load i16** %arrayidx176, align 8, !tbaa !0
  %51 = load i16* %50, align 2, !tbaa !4
  %arrayidx185 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom144, i64 0, i64 %indvars.iv544, i64 %indvars.iv546, i64 0
  store i16 %51, i16* %arrayidx185, align 4, !tbaa !4
  %arrayidx195 = getelementptr inbounds i16* %50, i64 1
  %52 = load i16* %arrayidx195, align 2, !tbaa !4
  %arrayidx203 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom144, i64 0, i64 %indvars.iv544, i64 %indvars.iv546, i64 1
  store i16 %52, i16* %arrayidx203, align 2, !tbaa !4
  %indvars.iv.next545 = add i64 %indvars.iv544, 1
  %53 = trunc i64 %indvars.iv.next545 to i32
  %cmp130 = icmp slt i32 %53, %add
  br i1 %cmp130, label %for.body131, label %for.inc207

for.inc207:                                       ; preds = %for.body131
  %indvars.iv.next547 = add i64 %indvars.iv546, 1
  %54 = trunc i64 %indvars.iv.next547 to i32
  %cmp127 = icmp slt i32 %54, %add4
  br i1 %cmp127, label %for.cond129.preheader, label %if.end239

for.cond214.preheader:                            ; preds = %for.cond211.preheader, %for.inc236
  %indvars.iv550 = phi i64 [ %34, %for.cond211.preheader ], [ %indvars.iv.next551, %for.inc236 ]
  br label %for.body216

for.body216:                                      ; preds = %for.cond214.preheader, %for.body216
  %indvars.iv548 = phi i64 [ %32, %for.cond214.preheader ], [ %indvars.iv.next549, %for.body216 ]
  %arrayidx224 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom219, i64 0, i64 %indvars.iv548, i64 %indvars.iv550, i64 0
  store i16 0, i16* %arrayidx224, align 4, !tbaa !4
  %arrayidx232 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom219, i64 0, i64 %indvars.iv548, i64 %indvars.iv550, i64 1
  store i16 0, i16* %arrayidx232, align 2, !tbaa !4
  %indvars.iv.next549 = add i64 %indvars.iv548, 1
  %55 = trunc i64 %indvars.iv.next549 to i32
  %cmp215 = icmp slt i32 %55, %add
  br i1 %cmp215, label %for.body216, label %for.inc236

for.inc236:                                       ; preds = %for.body216
  %indvars.iv.next551 = add i64 %indvars.iv550, 1
  %56 = trunc i64 %indvars.iv.next551 to i32
  %cmp212 = icmp slt i32 %56, %add4
  br i1 %cmp212, label %for.cond214.preheader, label %if.end239

if.end239:                                        ; preds = %for.inc236, %for.inc207
  %pdir8.off = add i32 %pdir8, -1
  %57 = icmp ult i32 %pdir8.off, 2
  br i1 %57, label %for.cond244.preheader, label %for.cond329.preheader

for.cond329.preheader:                            ; preds = %if.end239
  %idxprom337 = sext i32 %dir to i64
  %58 = shl i32 %rem, 1
  %59 = sext i32 %58 to i64
  %60 = shl i32 %div, 1
  %61 = sext i32 %60 to i64
  br label %for.cond332.preheader

for.cond244.preheader:                            ; preds = %if.end239
  %idxprom250 = sext i32 %mode to i64
  %idxprom251 = sext i32 %bw_ref to i64
  %idxprom262 = sext i32 %dir to i64
  %62 = shl i32 %rem, 1
  %63 = sext i32 %62 to i64
  %64 = shl i32 %div, 1
  %65 = sext i32 %64 to i64
  br label %for.cond247.preheader

for.cond247.preheader:                            ; preds = %for.cond244.preheader, %for.inc325
  %indvars.iv538 = phi i64 [ %65, %for.cond244.preheader ], [ %indvars.iv.next539, %for.inc325 ]
  br label %for.body249

for.body249:                                      ; preds = %for.cond247.preheader, %for.body249
  %indvars.iv536 = phi i64 [ %63, %for.cond247.preheader ], [ %indvars.iv.next537, %for.body249 ]
  %arrayidx254 = getelementptr inbounds i16****** %1, i64 %indvars.iv536
  %66 = load i16****** %arrayidx254, align 8, !tbaa !0
  %arrayidx255 = getelementptr inbounds i16***** %66, i64 %indvars.iv538
  %67 = load i16***** %arrayidx255, align 8, !tbaa !0
  %arrayidx256 = getelementptr inbounds i16**** %67, i64 1
  %68 = load i16**** %arrayidx256, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i16*** %68, i64 %idxprom251
  %69 = load i16*** %arrayidx257, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i16** %69, i64 %idxprom250
  %70 = load i16** %arrayidx258, align 8, !tbaa !0
  %71 = load i16* %70, align 2, !tbaa !4
  %arrayidx267 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom262, i64 1, i64 %indvars.iv536, i64 %indvars.iv538, i64 0
  store i16 %71, i16* %arrayidx267, align 4, !tbaa !4
  %arrayidx277 = getelementptr inbounds i16* %70, i64 1
  %72 = load i16* %arrayidx277, align 2, !tbaa !4
  %arrayidx285 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom262, i64 1, i64 %indvars.iv536, i64 %indvars.iv538, i64 1
  store i16 %72, i16* %arrayidx285, align 2, !tbaa !4
  %arrayidx290 = getelementptr inbounds i16****** %2, i64 %indvars.iv536
  %73 = load i16****** %arrayidx290, align 8, !tbaa !0
  %arrayidx291 = getelementptr inbounds i16***** %73, i64 %indvars.iv538
  %74 = load i16***** %arrayidx291, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds i16**** %74, i64 1
  %75 = load i16**** %arrayidx292, align 8, !tbaa !0
  %arrayidx293 = getelementptr inbounds i16*** %75, i64 %idxprom251
  %76 = load i16*** %arrayidx293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i16** %76, i64 %idxprom250
  %77 = load i16** %arrayidx294, align 8, !tbaa !0
  %78 = load i16* %77, align 2, !tbaa !4
  %arrayidx303 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom262, i64 1, i64 %indvars.iv536, i64 %indvars.iv538, i64 0
  store i16 %78, i16* %arrayidx303, align 4, !tbaa !4
  %arrayidx313 = getelementptr inbounds i16* %77, i64 1
  %79 = load i16* %arrayidx313, align 2, !tbaa !4
  %arrayidx321 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @pred_mv8x8, i64 0, i64 %idxprom262, i64 1, i64 %indvars.iv536, i64 %indvars.iv538, i64 1
  store i16 %79, i16* %arrayidx321, align 2, !tbaa !4
  %indvars.iv.next537 = add i64 %indvars.iv536, 1
  %80 = trunc i64 %indvars.iv.next537 to i32
  %cmp248 = icmp slt i32 %80, %add
  br i1 %cmp248, label %for.body249, label %for.inc325

for.inc325:                                       ; preds = %for.body249
  %indvars.iv.next539 = add i64 %indvars.iv538, 1
  %81 = trunc i64 %indvars.iv.next539 to i32
  %cmp245 = icmp slt i32 %81, %add4
  br i1 %cmp245, label %for.cond247.preheader, label %if.end358

for.cond332.preheader:                            ; preds = %for.cond329.preheader, %for.inc354
  %indvars.iv542 = phi i64 [ %61, %for.cond329.preheader ], [ %indvars.iv.next543, %for.inc354 ]
  br label %for.body334

for.body334:                                      ; preds = %for.cond332.preheader, %for.body334
  %indvars.iv540 = phi i64 [ %59, %for.cond332.preheader ], [ %indvars.iv.next541, %for.body334 ]
  %arrayidx342 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom337, i64 1, i64 %indvars.iv540, i64 %indvars.iv542, i64 0
  store i16 0, i16* %arrayidx342, align 4, !tbaa !4
  %arrayidx350 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]]* @all_mv8x8, i64 0, i64 %idxprom337, i64 1, i64 %indvars.iv540, i64 %indvars.iv542, i64 1
  store i16 0, i16* %arrayidx350, align 2, !tbaa !4
  %indvars.iv.next541 = add i64 %indvars.iv540, 1
  %82 = trunc i64 %indvars.iv.next541 to i32
  %cmp333 = icmp slt i32 %82, %add
  br i1 %cmp333, label %for.body334, label %for.inc354

for.inc354:                                       ; preds = %for.body334
  %indvars.iv.next543 = add i64 %indvars.iv542, 1
  %83 = trunc i64 %indvars.iv.next543 to i32
  %cmp330 = icmp slt i32 %83, %add4
  br i1 %cmp330, label %for.cond332.preheader, label %if.end358

if.end358:                                        ; preds = %for.inc354, %for.inc325, %for.inc120, %for.inc39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @GetBestTransformP8x8() #0 {
entry:
  %diff4x4 = alloca [64 x i32], align 16
  %diff8x8 = alloca [64 x i32], align 16
  %0 = bitcast [64 x i32]* %diff4x4 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %1 = bitcast [64 x i32]* %diff8x8 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 123
  %3 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %arraydecay = getelementptr inbounds [64 x i32]* %diff8x8, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.end60, %for.cond.preheader
  %cost4x4.0113 = phi i32 [ 0, %for.cond.preheader ], [ %add54, %for.end60 ]
  %cost8x8.0112 = phi i32 [ 0, %for.cond.preheader ], [ %add63, %for.end60 ]
  %block8x8.0111 = phi i32 [ 0, %for.cond.preheader ], [ %inc65, %for.end60 ]
  %div = sdiv i32 %block8x8.0111, 2
  %shl = shl i32 %div, 3
  %rem = srem i32 %block8x8.0111, 2
  %shl2 = shl i32 %rem, 3
  %4 = shl i32 %rem, 3
  %5 = sext i32 %4 to i64
  %6 = or i32 %4, 4
  %7 = icmp sgt i32 %4, %6
  %smax = select i1 %7, i32 %4, i32 %6
  %8 = or i32 %smax, 3
  %9 = sub i32 %8, %4
  %10 = lshr i32 %9, 2
  %11 = shl i32 %10, 4
  %12 = add i32 %11, 16
  %13 = shl i32 %div, 3
  %14 = sext i32 %13 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.inc58
  %indvars.iv126 = phi i64 [ %14, %for.body ], [ %indvars.iv.next127, %for.inc58 ]
  %cost4x4.1110 = phi i32 [ %cost4x4.0113, %for.body ], [ %add54, %for.inc58 ]
  %k.0108 = phi i32 [ 0, %for.body ], [ %38, %for.inc58 ]
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_y = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 38
  %16 = load i32* %opix_y, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv126 to i32
  %add6 = add nsw i32 %16, %17
  %18 = sext i32 %add6 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.end53.for.body10_crit_edge, %for.body5
  %19 = phi %struct.ImageParameters* [ %15, %for.body5 ], [ %.pre, %for.end53.for.body10_crit_edge ]
  %indvars.iv124 = phi i64 [ %5, %for.body5 ], [ %indvars.iv.next125, %for.end53.for.body10_crit_edge ]
  %cost4x4.2107 = phi i32 [ %cost4x4.1110, %for.body5 ], [ %add54, %for.end53.for.body10_crit_edge ]
  %k.1105 = phi i32 [ %k.0108, %for.body5 ], [ %37, %for.end53.for.body10_crit_edge ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 37
  %20 = load i32* %opix_x, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv124 to i32
  %add11 = add nsw i32 %20, %21
  %idxprom = sext i32 %k.1105 to i64
  %22 = load i16*** @imgY_org, align 8, !tbaa !0
  %23 = sext i32 %add11 to i64
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.inc51, %for.body10
  %indvars.iv118 = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next119, %for.inc51 ]
  %k.2104 = phi i32 [ %k.1105, %for.body10 ], [ %33, %for.inc51 ]
  %24 = add nsw i64 %18, %indvars.iv118
  %arrayidx22 = getelementptr inbounds i16** %22, i64 %24
  %25 = load i16** %arrayidx22, align 8, !tbaa !0
  %26 = add nsw i64 %indvars.iv118, %indvars.iv126
  %27 = sext i32 %k.2104 to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.cond15.preheader
  %indvars.iv114 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next115, %for.body17 ]
  %indvars.iv = phi i64 [ %27, %for.cond15.preheader ], [ %indvars.iv.next, %for.body17 ]
  %28 = add nsw i64 %23, %indvars.iv114
  %arrayidx23 = getelementptr inbounds i16* %25, i64 %28
  %29 = load i16* %arrayidx23, align 2, !tbaa !4
  %conv = zext i16 %29 to i32
  %30 = add nsw i64 %indvars.iv114, %indvars.iv124
  %arrayidx29 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %26, i64 %30
  %31 = load i16* %arrayidx29, align 2, !tbaa !4
  %conv30 = zext i16 %31 to i32
  %sub = sub nsw i32 %conv, %conv30
  %arrayidx32 = getelementptr inbounds [64 x i32]* %diff4x4, i64 0, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx32, align 4, !tbaa !3
  %arrayidx45 = getelementptr inbounds [16 x [16 x i16]]* @mpr_8x8ts, i64 0, i64 %26, i64 %30
  %32 = load i16* %arrayidx45, align 2, !tbaa !4
  %conv46 = zext i16 %32 to i32
  %sub47 = sub nsw i32 %conv, %conv46
  %arrayidx49 = getelementptr inbounds [64 x i32]* %diff8x8, i64 0, i64 %indvars.iv
  store i32 %sub47, i32* %arrayidx49, align 4, !tbaa !3
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next115 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc51, label %for.body17

for.inc51:                                        ; preds = %for.body17
  %33 = add i32 %k.2104, 4
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next119 to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, 4
  br i1 %exitcond123, label %for.end53, label %for.cond15.preheader

for.end53:                                        ; preds = %for.inc51
  %arrayidx = getelementptr inbounds [64 x i32]* %diff4x4, i64 0, i64 %idxprom
  %34 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %34, i64 0, i32 6
  %35 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arrayidx, i32 %35) #8
  %add54 = add nsw i32 %call, %cost4x4.2107
  %36 = or i32 %shl2, 4
  %cmp9 = icmp slt i32 %21, %36
  br i1 %cmp9, label %for.end53.for.body10_crit_edge, label %for.inc58

for.end53.for.body10_crit_edge:                   ; preds = %for.end53
  %indvars.iv.next125 = add i64 %indvars.iv124, 4
  %37 = add i32 %k.1105, 16
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body10

for.inc58:                                        ; preds = %for.end53
  %38 = add i32 %12, %k.0108
  %indvars.iv.next127 = add i64 %indvars.iv126, 4
  %39 = or i32 %shl, 4
  %cmp4 = icmp slt i32 %17, %39
  br i1 %cmp4, label %for.body5, label %for.end60

for.end60:                                        ; preds = %for.inc58
  %40 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard61 = getelementptr inbounds %struct.InputParameters* %40, i64 0, i32 6
  %41 = load i32* %hadamard61, align 4, !tbaa !3
  %call62 = call i32 @SATD8X8(i32* %arraydecay, i32 %41) #8
  %add63 = add nsw i32 %call62, %cost8x8.0112
  %inc65 = add nsw i32 %block8x8.0111, 1
  %exitcond128 = icmp eq i32 %inc65, 4
  br i1 %exitcond128, label %for.end66, label %for.body

for.end66:                                        ; preds = %for.end60
  %cmp67 = icmp slt i32 %add63, %add54
  %. = zext i1 %cmp67 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end66, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %for.end66 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #3
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @SATD8X8(i32*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @encode_one_macroblock() #0 {
entry:
  %valid = alloca [15 x i32], align 16
  %dummy = alloca i32, align 4
  %min_rdcost = alloca double, align 8
  %cnt_nonz = alloca i32, align 4
  %curr_cbp_blk = alloca i64, align 8
  %cost = alloca i32, align 4
  %i16mode = alloca i32, align 4
  %direct8x8_tmp = alloca i32, align 4
  %mb_available_up = alloca i32, align 4
  %mb_available_left = alloca i32, align 4
  %mb_available_up_left = alloca i32, align 4
  %0 = bitcast [15 x i32]* %valid to i8*
  call void @llvm.lifetime.start(i64 60, i8* %0) #3
  store i32 0, i32* %cnt_nonz, align 4, !tbaa !3
  store i32 0, i32* %cost, align 4, !tbaa !3
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %2 = load i32* %type, align 4, !tbaa !3
  switch i32 %2, label %lor.rhs [
    i32 0, label %land.lhs.true
    i32 3, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %entry, %entry
  %mb_y = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 30
  %3 = load i32* %mb_y, align 4, !tbaa !3
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 22
  %4 = load i32* %mb_y_upd, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %land.lhs.true4, label %lor.rhs

land.lhs.true4:                                   ; preds = %land.lhs.true
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 23
  %5 = load i32* %mb_y_intra, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %3, %5
  br i1 %cmp6, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %cmp8 = icmp eq i32 %2, 2
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true4, %lor.rhs
  %6 = phi i1 [ %cmp8, %lor.rhs ], [ true, %land.lhs.true4 ]
  %lor.ext = zext i1 %6 to i32
  %cmp10 = icmp eq i32 %2, 3
  %cmp12 = icmp eq i32 %2, 4
  %conv13 = zext i1 %cmp12 to i32
  %cmp15 = icmp eq i32 %2, 1
  %conv16 = zext i1 %cmp15 to i32
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RestrictRef = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 98
  %8 = load i32* %RestrictRef, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %8, 1
  %rdopt = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 85
  %9 = load i32* %rdopt, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %9, 2
  %or.cond9192 = and i1 %cmp17, %cmp20
  br i1 %or.cond9192, label %land.rhs, label %land.end38

land.rhs:                                         ; preds = %lor.end
  %cmp23 = icmp eq i32 %2, 0
  %.mux = or i1 %cmp23, %cmp10
  br i1 %cmp15, label %land.rhs33, label %land.end38.thread

land.rhs33:                                       ; preds = %land.rhs
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 113
  %10 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp34 = icmp sgt i32 %10, 0
  br label %land.end38.thread

land.end38.thread:                                ; preds = %land.rhs33, %land.rhs
  %.ph = phi i1 [ %cmp34, %land.rhs33 ], [ %.mux, %land.rhs ]
  %cond9168 = select i1 %.ph, i32 2, i32 1
  br label %land.lhs.true40

land.end38:                                       ; preds = %lor.end
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %land.end53, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.end38.thread, %land.end38
  %cond9170 = phi i32 [ %cond9168, %land.end38.thread ], [ 1, %land.end38 ]
  %11 = phi i1 [ %.ph, %land.end38.thread ], [ false, %land.end38 ]
  %tobool42 = icmp eq i32 %8, 0
  br i1 %tobool42, label %land.end53, label %land.rhs43

land.rhs43:                                       ; preds = %land.lhs.true40
  %notlhs = icmp ne i32 %2, 0
  %notrhs = icmp ne i32 %2, 3
  %phitmp8303 = and i1 %notrhs, %notlhs
  br label %land.end53

land.end53:                                       ; preds = %land.rhs43, %land.lhs.true40, %land.end38
  %cond9171 = phi i32 [ %cond9170, %land.lhs.true40 ], [ 1, %land.end38 ], [ %cond9170, %land.rhs43 ]
  %12 = phi i1 [ %11, %land.lhs.true40 ], [ false, %land.end38 ], [ %11, %land.rhs43 ]
  %13 = phi i1 [ true, %land.lhs.true40 ], [ true, %land.end38 ], [ %phitmp8303, %land.rhs43 ]
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3
  %14 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %14 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51
  %15 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom
  %tobool55 = icmp eq i32 %14, 0
  br i1 %tobool55, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.end53
  %sub = add nsw i32 %14, -1
  %idxprom57 = sext i32 %sub to i64
  %arrayidx59 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom57
  br label %cond.end

cond.end:                                         ; preds = %land.end53, %cond.true
  %cond60 = phi %struct.macroblock* [ %arrayidx59, %cond.true ], [ null, %land.end53 ]
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 25
  %16 = load i32*** %ipredmode, align 8, !tbaa !0
  %all_mv = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 71
  %17 = load i16******* %all_mv, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 90
  %18 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %18, 0
  br i1 %tobool61, label %if.end71, label %land.end64

land.end64:                                       ; preds = %cond.end
  %mb_field = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 22
  %19 = load i32* %mb_field, align 4, !tbaa !3
  %tobool63 = icmp ne i32 %19, 0
  %land.ext65 = zext i1 %tobool63 to i32
  br i1 %tobool63, label %if.then, label %if.end71

if.then:                                          ; preds = %land.end64
  %rem8196 = shl i32 %14, 1
  %20 = and i32 %rem8196, 2
  %21 = add i32 %20, 2
  br label %if.end71

if.end71:                                         ; preds = %cond.end, %land.end64, %if.then
  %land.ext658272 = phi i32 [ %land.ext65, %if.then ], [ %land.ext65, %land.end64 ], [ 0, %cond.end ]
  %22 = phi i1 [ true, %if.then ], [ false, %land.end64 ], [ false, %cond.end ]
  %list_offset.0 = phi i32 [ %21, %if.then ], [ 0, %land.end64 ], [ 0, %cond.end ]
  %FMEnable = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 134
  %23 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool72 = icmp eq i32 %23, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end71
  call void (...)* @decide_intrabk_SAD() #8
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr75.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 3
  %.pre9112 = load i32* %current_mb_nr75.phi.trans.insert, align 4, !tbaa !3
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %if.then73
  %24 = phi i32 [ %14, %if.end71 ], [ %.pre9112, %if.then73 ]
  %call = call i32 @RandomIntra(i32 %24) #8
  %or = or i32 %call, %lor.ext
  %25 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 123
  %26 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %arrayidx76 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 13
  store i32 %26, i32* %arrayidx76, align 4, !tbaa !3
  %27 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %not.cmp78 = icmp ne i32 %27, 2
  %cond80 = zext i1 %not.cmp78 to i32
  %arrayidx81 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 9
  store i32 %cond80, i32* %arrayidx81, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 10
  store i32 1, i32* %arrayidx82, align 8, !tbaa !3
  %tobool83 = icmp ne i32 %or, 0
  %28 = zext i1 %tobool83 to i32
  %lnot.ext = xor i32 %28, 1
  %arrayidx84 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 0
  store i32 %lnot.ext, i32* %arrayidx84, align 16, !tbaa !3
  br i1 %tobool83, label %land.end118.thread, label %land.rhs122

land.end118.thread:                               ; preds = %if.end74
  %arrayidx90.c = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 1
  %arrayidx1088276 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 4
  %arrayidx1148279 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 5
  %arrayidx1208283 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 6
  %29 = bitcast i32* %arrayidx90.c to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 24, i32 4, i1 false)
  br label %land.end124

land.rhs122:                                      ; preds = %if.end74
  %InterSearch16x16 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 62
  %30 = load i32* %InterSearch16x16, align 4, !tbaa !3
  %tobool87 = icmp ne i32 %30, 0
  %land.ext89 = zext i1 %tobool87 to i32
  %arrayidx90 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 1
  store i32 %land.ext89, i32* %arrayidx90, align 4, !tbaa !3
  %InterSearch16x8 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 63
  %31 = load i32* %InterSearch16x8, align 4, !tbaa !3
  %tobool93 = icmp ne i32 %31, 0
  %land.ext95 = zext i1 %tobool93 to i32
  %arrayidx96 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 2
  store i32 %land.ext95, i32* %arrayidx96, align 8, !tbaa !3
  %InterSearch8x16 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 64
  %32 = load i32* %InterSearch8x16, align 4, !tbaa !3
  %tobool99 = icmp ne i32 %32, 0
  %land.ext101 = zext i1 %tobool99 to i32
  %arrayidx102 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 3
  store i32 %land.ext101, i32* %arrayidx102, align 4, !tbaa !3
  %InterSearch8x8 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 65
  %33 = load i32* %InterSearch8x8, align 4, !tbaa !3
  %tobool105 = icmp ne i32 %33, 0
  %land.ext107 = zext i1 %tobool105 to i32
  %arrayidx108 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 4
  store i32 %land.ext107, i32* %arrayidx108, align 16, !tbaa !3
  %InterSearch8x4 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 66
  %34 = load i32* %InterSearch8x4, align 4, !tbaa !3
  %tobool111 = icmp ne i32 %34, 0
  %land.ext113 = zext i1 %tobool111 to i32
  %arrayidx114 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 5
  store i32 %land.ext113, i32* %arrayidx114, align 4, !tbaa !3
  %InterSearch4x8 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 67
  %35 = load i32* %InterSearch4x8, align 4, !tbaa !3
  %tobool117 = icmp ne i32 %35, 0
  %land.ext119 = zext i1 %tobool117 to i32
  %arrayidx120 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 6
  store i32 %land.ext119, i32* %arrayidx120, align 8, !tbaa !3
  %InterSearch4x4 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 68
  %36 = load i32* %InterSearch4x4, align 4, !tbaa !3
  %tobool123 = icmp ne i32 %36, 0
  br label %land.end124

land.end124:                                      ; preds = %land.end118.thread, %land.rhs122
  %arrayidx1208286 = phi i32* [ %arrayidx120, %land.rhs122 ], [ %arrayidx1208283, %land.end118.thread ]
  %arrayidx108827782808285 = phi i32* [ %arrayidx108, %land.rhs122 ], [ %arrayidx1088276, %land.end118.thread ]
  %arrayidx11482818284 = phi i32* [ %arrayidx114, %land.rhs122 ], [ %arrayidx1148279, %land.end118.thread ]
  %37 = phi i1 [ %tobool123, %land.rhs122 ], [ false, %land.end118.thread ]
  %land.ext125 = zext i1 %37 to i32
  %arrayidx126 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 7
  store i32 %land.ext125, i32* %arrayidx126, align 4, !tbaa !3
  %38 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %cmp128 = icmp eq i32 %38, 2
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %land.end124
  store i32 0, i32* %arrayidx126, align 4, !tbaa !3
  store i32 0, i32* %arrayidx1208286, align 8, !tbaa !3
  store i32 0, i32* %arrayidx11482818284, align 4, !tbaa !3
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %land.end124
  %39 = load i32* %arrayidx108827782808285, align 16, !tbaa !3
  %tobool136 = icmp eq i32 %39, 0
  br i1 %tobool136, label %lor.lhs.false137, label %lor.end146

lor.lhs.false137:                                 ; preds = %if.end134
  %40 = load i32* %arrayidx11482818284, align 4, !tbaa !3
  %tobool139 = icmp eq i32 %40, 0
  br i1 %tobool139, label %lor.lhs.false140, label %lor.end146

lor.lhs.false140:                                 ; preds = %lor.lhs.false137
  %41 = load i32* %arrayidx1208286, align 8, !tbaa !3
  %tobool142 = icmp eq i32 %41, 0
  br i1 %tobool142, label %lor.rhs143, label %lor.end146

lor.rhs143:                                       ; preds = %lor.lhs.false140
  %42 = load i32* %arrayidx126, align 4, !tbaa !3
  %tobool145 = icmp ne i32 %42, 0
  br label %lor.end146

lor.end146:                                       ; preds = %lor.lhs.false140, %lor.lhs.false137, %if.end134, %lor.rhs143
  %43 = phi i1 [ true, %lor.lhs.false140 ], [ true, %lor.lhs.false137 ], [ true, %if.end134 ], [ %tobool145, %lor.rhs143 ]
  %lor.ext147 = zext i1 %43 to i32
  %arrayidx148 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 8
  store i32 %lor.ext147, i32* %arrayidx148, align 16, !tbaa !3
  %arrayidx149 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 12
  store i32 %conv13, i32* %arrayidx149, align 16, !tbaa !3
  %44 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag150 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 90
  %45 = load i32* %MbaffFrameFlag150, align 4, !tbaa !3
  %tobool151 = icmp eq i32 %45, 0
  %46 = sext i32 %list_offset.0 to i64
  br i1 %tobool151, label %for.cond156.preheader, label %if.else206

for.cond156.preheader:                            ; preds = %lor.end146, %for.inc203
  %indvars.iv9055 = phi i64 [ %indvars.iv.next9056, %for.inc203 ], [ %46, %lor.end146 ]
  %arrayidx158 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv9055
  %47 = load i32* %arrayidx158, align 4, !tbaa !3
  %cmp1598607 = icmp sgt i32 %47, 0
  br i1 %cmp1598607, label %for.body161.lr.ph, label %for.inc203

for.body161.lr.ph:                                ; preds = %for.cond156.preheader
  %arrayidx164 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv9055
  %.pre9109 = load %struct.storable_picture*** %arrayidx164, align 8, !tbaa !0
  br label %for.body161

for.body161:                                      ; preds = %for.body161.lr.ph, %for.inc
  %indvars.iv9053 = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next9054, %for.inc ]
  %arrayidx165 = getelementptr inbounds %struct.storable_picture** %.pre9109, i64 %indvars.iv9053
  %48 = load %struct.storable_picture** %arrayidx165, align 8, !tbaa !0
  %chroma_vector_adjustment = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 22
  store i32 0, i32* %chroma_vector_adjustment, align 4, !tbaa !3
  %structure = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 7
  %49 = load i32* %structure, align 4, !tbaa !3
  %cmp166 = icmp eq i32 %49, 1
  br i1 %cmp166, label %land.lhs.true168, label %if.end183

land.lhs.true168:                                 ; preds = %for.body161
  %structure174 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 0
  %50 = load i32* %structure174, align 4, !tbaa !1
  %cmp175 = icmp eq i32 %50, 1
  br i1 %cmp175, label %for.inc, label %if.then177

if.then177:                                       ; preds = %land.lhs.true168
  store i32 -2, i32* %chroma_vector_adjustment, align 4, !tbaa !3
  %.pre9110 = load i32* %structure, align 4, !tbaa !3
  br label %if.end183

if.end183:                                        ; preds = %if.then177, %for.body161
  %51 = phi i32 [ %.pre9110, %if.then177 ], [ %49, %for.body161 ]
  %cmp185 = icmp eq i32 %51, 2
  br i1 %cmp185, label %land.lhs.true187, label %for.inc

land.lhs.true187:                                 ; preds = %if.end183
  %structure193 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 0
  %52 = load i32* %structure193, align 4, !tbaa !1
  %cmp194 = icmp eq i32 %52, 2
  br i1 %cmp194, label %for.inc, label %if.then196

if.then196:                                       ; preds = %land.lhs.true187
  store i32 2, i32* %chroma_vector_adjustment, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true168, %land.lhs.true187, %if.end183, %if.then196
  %indvars.iv.next9054 = add i64 %indvars.iv9053, 1
  %53 = load i32* %arrayidx158, align 4, !tbaa !3
  %54 = trunc i64 %indvars.iv.next9054 to i32
  %cmp159 = icmp slt i32 %54, %53
  br i1 %cmp159, label %for.body161, label %for.inc203

for.inc203:                                       ; preds = %for.inc, %for.cond156.preheader
  %indvars.iv.next9056 = add i64 %indvars.iv9055, 1
  %55 = add nsw i32 %list_offset.0, 1
  %56 = trunc i64 %indvars.iv9055 to i32
  %cmp154 = icmp slt i32 %56, %55
  br i1 %cmp154, label %for.cond156.preheader, label %if.end295

if.else206:                                       ; preds = %lor.end146
  br i1 %22, label %for.cond215.preheader, label %for.cond277.preheader

for.cond215.preheader:                            ; preds = %if.else206, %for.inc267
  %indvars.iv9059 = phi i64 [ %indvars.iv.next9060, %for.inc267 ], [ %46, %if.else206 ]
  %arrayidx217 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv9059
  %57 = load i32* %arrayidx217, align 4, !tbaa !3
  %cmp2188610 = icmp sgt i32 %57, 0
  br i1 %cmp2188610, label %for.body220.lr.ph, label %for.inc267

for.body220.lr.ph:                                ; preds = %for.cond215.preheader
  %arrayidx223 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv9059
  %.pre9107 = load %struct.storable_picture*** %arrayidx223, align 8, !tbaa !0
  br label %for.body220

for.body220:                                      ; preds = %for.body220.lr.ph, %for.inc264
  %indvars.iv9057 = phi i64 [ 0, %for.body220.lr.ph ], [ %indvars.iv.next9058, %for.inc264 ]
  %arrayidx224 = getelementptr inbounds %struct.storable_picture** %.pre9107, i64 %indvars.iv9057
  %58 = load %struct.storable_picture** %arrayidx224, align 8, !tbaa !0
  %chroma_vector_adjustment225 = getelementptr inbounds %struct.storable_picture* %58, i64 0, i32 22
  store i32 0, i32* %chroma_vector_adjustment225, align 4, !tbaa !3
  %current_mb_nr226 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 3
  %59 = load i32* %current_mb_nr226, align 4, !tbaa !3
  %rem2278195 = and i32 %59, 1
  %cmp228 = icmp eq i32 %rem2278195, 0
  br i1 %cmp228, label %land.lhs.true230, label %if.end244

land.lhs.true230:                                 ; preds = %for.body220
  %structure235 = getelementptr inbounds %struct.storable_picture* %58, i64 0, i32 0
  %60 = load i32* %structure235, align 4, !tbaa !1
  %cmp236 = icmp eq i32 %60, 2
  br i1 %cmp236, label %if.then238, label %if.end244

if.then238:                                       ; preds = %land.lhs.true230
  store i32 -2, i32* %chroma_vector_adjustment225, align 4, !tbaa !3
  %.pre9108 = load i32* %current_mb_nr226, align 4, !tbaa !3
  br label %if.end244

if.end244:                                        ; preds = %if.then238, %land.lhs.true230, %for.body220
  %61 = phi i32 [ %.pre9108, %if.then238 ], [ %59, %land.lhs.true230 ], [ %59, %for.body220 ]
  %rem246 = srem i32 %61, 2
  %cmp247 = icmp eq i32 %rem246, 1
  br i1 %cmp247, label %land.lhs.true249, label %for.inc264

land.lhs.true249:                                 ; preds = %if.end244
  %structure254 = getelementptr inbounds %struct.storable_picture* %58, i64 0, i32 0
  %62 = load i32* %structure254, align 4, !tbaa !1
  %cmp255 = icmp eq i32 %62, 1
  br i1 %cmp255, label %if.then257, label %for.inc264

if.then257:                                       ; preds = %land.lhs.true249
  store i32 2, i32* %chroma_vector_adjustment225, align 4, !tbaa !3
  br label %for.inc264

for.inc264:                                       ; preds = %if.end244, %land.lhs.true249, %if.then257
  %indvars.iv.next9058 = add i64 %indvars.iv9057, 1
  %63 = load i32* %arrayidx217, align 4, !tbaa !3
  %64 = trunc i64 %indvars.iv.next9058 to i32
  %cmp218 = icmp slt i32 %64, %63
  br i1 %cmp218, label %for.body220, label %for.inc267

for.inc267:                                       ; preds = %for.inc264, %for.cond215.preheader
  %indvars.iv.next9060 = add i64 %indvars.iv9059, 1
  %65 = add nsw i32 %list_offset.0, 1
  %66 = trunc i64 %indvars.iv9059 to i32
  %cmp212 = icmp slt i32 %66, %65
  br i1 %cmp212, label %for.cond215.preheader, label %if.end295

for.cond277.preheader:                            ; preds = %if.else206, %for.inc291
  %indvars.iv9063 = phi i64 [ %indvars.iv.next9064, %for.inc291 ], [ %46, %if.else206 ]
  %arrayidx279 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %indvars.iv9063
  %67 = load i32* %arrayidx279, align 4, !tbaa !3
  %cmp2808614 = icmp sgt i32 %67, 0
  br i1 %cmp2808614, label %for.body282.lr.ph, label %for.inc291

for.body282.lr.ph:                                ; preds = %for.cond277.preheader
  %arrayidx285 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %indvars.iv9063
  %68 = load %struct.storable_picture*** %arrayidx285, align 8, !tbaa !0
  br label %for.body282

for.body282:                                      ; preds = %for.body282.lr.ph, %for.body282
  %indvars.iv9061 = phi i64 [ 0, %for.body282.lr.ph ], [ %indvars.iv.next9062, %for.body282 ]
  %arrayidx286 = getelementptr inbounds %struct.storable_picture** %68, i64 %indvars.iv9061
  %69 = load %struct.storable_picture** %arrayidx286, align 8, !tbaa !0
  %chroma_vector_adjustment287 = getelementptr inbounds %struct.storable_picture* %69, i64 0, i32 22
  store i32 0, i32* %chroma_vector_adjustment287, align 4, !tbaa !3
  %indvars.iv.next9062 = add i64 %indvars.iv9061, 1
  %70 = load i32* %arrayidx279, align 4, !tbaa !3
  %71 = trunc i64 %indvars.iv.next9062 to i32
  %cmp280 = icmp slt i32 %71, %70
  br i1 %cmp280, label %for.body282, label %for.inc291

for.inc291:                                       ; preds = %for.body282, %for.cond277.preheader
  %indvars.iv.next9064 = add i64 %indvars.iv9063, 1
  %72 = add nsw i32 %list_offset.0, 1
  %73 = trunc i64 %indvars.iv9063 to i32
  %cmp274 = icmp slt i32 %73, %72
  br i1 %cmp274, label %for.cond277.preheader, label %if.end295

if.end295:                                        ; preds = %for.inc291, %for.inc267, %for.inc203
  %rdopt296 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 85
  %74 = load i32* %rdopt296, align 4, !tbaa !3
  %tobool297 = icmp eq i32 %74, 0
  %qp299 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 10
  %75 = load i32* %qp299, align 4, !tbaa !3
  br i1 %tobool297, label %if.else496, label %if.then298

if.then298:                                       ; preds = %if.end295
  %conv300 = sitofp i32 %75 to double
  %sub301 = fadd double %conv300, -1.200000e+01
  %UseExplicitLambdaParams = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 144
  %76 = load i32* %UseExplicitLambdaParams, align 4, !tbaa !3
  %tobool302 = icmp eq i32 %76, 0
  %type304 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 6
  %77 = load i32* %type304, align 4, !tbaa !3
  %cmp305 = icmp eq i32 %77, 1
  br i1 %tobool302, label %if.else327, label %if.then303

if.then303:                                       ; preds = %if.then298
  br i1 %cmp305, label %land.lhs.true307, label %if.else315

land.lhs.true307:                                 ; preds = %if.then303
  %nal_reference_idc308 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 113
  %78 = load i32* %nal_reference_idc308, align 4, !tbaa !3
  %tobool309 = icmp eq i32 %78, 0
  br i1 %tobool309, label %if.else315, label %if.then310

if.then310:                                       ; preds = %land.lhs.true307
  %arrayidx311 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 145, i64 5
  %79 = load double* %arrayidx311, align 8, !tbaa !6
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 153
  %80 = load i32* %bitdepth_lambda_scale, align 4, !tbaa !3
  %conv312 = sitofp i32 %80 to double
  %div = fdiv double %sub301, 3.000000e+00
  %add313 = fadd double %conv312, %div
  %exp28194 = call double @exp2(double %add313) #7
  %mul = fmul double %79, %exp28194
  br label %if.end490

if.else315:                                       ; preds = %land.lhs.true307, %if.then303
  %idxprom317 = sext i32 %77 to i64
  %arrayidx319 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 145, i64 %idxprom317
  %81 = load double* %arrayidx319, align 8, !tbaa !6
  %bitdepth_lambda_scale320 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 153
  %82 = load i32* %bitdepth_lambda_scale320, align 4, !tbaa !3
  %conv321 = sitofp i32 %82 to double
  %div322 = fdiv double %sub301, 3.000000e+00
  %add323 = fadd double %conv321, %div322
  %exp28193 = call double @exp2(double %add323) #7
  %mul325 = fmul double %81, %exp28193
  br label %if.end490

if.else327:                                       ; preds = %if.then298
  br i1 %cmp305, label %land.lhs.true331, label %cond.false336

land.lhs.true331:                                 ; preds = %if.else327
  %nal_reference_idc332 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 113
  %83 = load i32* %nal_reference_idc332, align 4, !tbaa !3
  %cmp333 = icmp eq i32 %83, 0
  br i1 %cmp333, label %cond.end340, label %cond.false336

cond.false336:                                    ; preds = %land.lhs.true331, %if.else327
  %jumpd = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 5
  %84 = load i32* %jumpd, align 4, !tbaa !3
  %conv337 = sitofp i32 %84 to double
  %mul338 = fmul double %conv337, 5.000000e-02
  %sub339 = fsub double 1.000000e+00, %mul338
  br label %cond.end340

cond.end340:                                      ; preds = %land.lhs.true331, %cond.false336
  %cond341 = phi double [ %sub339, %cond.false336 ], [ 1.000000e+00, %land.lhs.true331 ]
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 34
  %85 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp342 = icmp sgt i32 %85, 0
  %bitdepth_lambda_scale345 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 153
  %86 = load i32* %bitdepth_lambda_scale345, align 4, !tbaa !3
  %conv346 = sitofp i32 %86 to double
  %div347 = fdiv double %sub301, 3.000000e+00
  %add348 = fadd double %conv346, %div347
  %exp2 = call double @exp2(double %add348) #7
  br i1 %cmp342, label %if.then344, label %if.else406

if.then344:                                       ; preds = %cond.end340
  %mul350 = fmul double %exp2, 6.800000e-01
  br i1 %cmp15, label %cond.true352, label %cond.false375

cond.true352:                                     ; preds = %if.then344
  %div353 = fdiv double %sub301, 6.000000e+00
  %cmp354 = fcmp ogt double %div353, 4.000000e+00
  br i1 %cmp354, label %cond.end403, label %cond.false357

cond.false357:                                    ; preds = %cond.true352
  %phitmp8192 = fcmp olt double %div353, 2.000000e+00
  %.mux8199.div353 = select i1 %phitmp8192, double 2.000000e+00, double %div353
  br label %cond.end403

cond.false375:                                    ; preds = %if.then344
  br i1 %cmp10, label %cond.true377, label %cond.end403

cond.true377:                                     ; preds = %cond.false375
  %div378 = fdiv double %sub301, 1.200000e+01
  %cmp379 = fcmp ogt double %div378, 3.000000e+00
  br i1 %cmp379, label %cond.end403, label %cond.false382

cond.false382:                                    ; preds = %cond.true377
  %phitmp8191 = fcmp olt double %div378, 1.400000e+00
  %.mux8201.div378 = select i1 %phitmp8191, double 1.400000e+00, double %div378
  br label %cond.end403

cond.end403:                                      ; preds = %cond.false382, %cond.false357, %cond.true377, %cond.true352, %cond.false375
  %cond404 = phi double [ 1.000000e+00, %cond.false375 ], [ 4.000000e+00, %cond.true352 ], [ 3.000000e+00, %cond.true377 ], [ %.mux8199.div353, %cond.false357 ], [ %.mux8201.div378, %cond.false382 ]
  %mul405 = fmul double %mul350, %cond404
  br label %if.end446

if.else406:                                       ; preds = %cond.end340
  %mul412 = fmul double %exp2, 8.500000e-01
  %cmp10.not = xor i1 %cmp10, true
  %brmerge8202 = or i1 %cmp15, %cmp10.not
  %.mux8203 = select i1 %cmp15, double 4.000000e+00, double 1.000000e+00
  br i1 %brmerge8202, label %cond.end443, label %cond.true417

cond.true417:                                     ; preds = %if.else406
  %div418 = fdiv double %sub301, 1.200000e+01
  %cmp419 = fcmp ogt double %div418, 3.000000e+00
  br i1 %cmp419, label %cond.end443, label %cond.false422

cond.false422:                                    ; preds = %cond.true417
  %phitmp8190 = fcmp olt double %div418, 1.400000e+00
  %.mux8205.div418 = select i1 %phitmp8190, double 1.400000e+00, double %div418
  br label %cond.end443

cond.end443:                                      ; preds = %cond.false422, %cond.true417, %if.else406
  %cond444 = phi double [ %.mux8203, %if.else406 ], [ 3.000000e+00, %cond.true417 ], [ %.mux8205.div418, %cond.false422 ]
  %mul445 = fmul double %mul412, %cond444
  br label %if.end446

if.end446:                                        ; preds = %cond.end443, %cond.end403
  %lambda_mode.0 = phi double [ %mul405, %cond.end403 ], [ %mul445, %cond.end443 ]
  %87 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 55
  %88 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp447 = icmp eq i32 %88, 2
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type450 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 6
  %90 = load i32* %type450, align 4, !tbaa !3
  %cmp451 = icmp eq i32 %90, 1
  br i1 %cmp447, label %if.then449, label %if.else478

if.then449:                                       ; preds = %if.end446
  br i1 %cmp451, label %land.lhs.true453, label %if.end488

land.lhs.true453:                                 ; preds = %if.then449
  %nal_reference_idc454 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 113
  %91 = load i32* %nal_reference_idc454, align 4, !tbaa !3
  %tobool455 = icmp eq i32 %91, 0
  br i1 %tobool455, label %if.end488, label %if.then456

if.then456:                                       ; preds = %land.lhs.true453
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 67
  %92 = load i32* %b_frame_to_code, align 4, !tbaa !3
  %sub457 = add nsw i32 %92, -1
  %idxprom458 = sext i32 %sub457 to i64
  %93 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA* %93, i64 %idxprom458, i32 4
  %94 = load i32* %pyramid_layer, align 4, !tbaa !3
  %conv460 = sitofp i32 %94 to double
  %mul461 = fmul double %conv460, 2.000000e-01
  %cmp462 = fcmp ogt double %mul461, 4.000000e-01
  %cond474 = select i1 %cmp462, double 4.000000e-01, double %mul461
  %sub475 = fsub double 1.000000e+00, %cond474
  %mul476 = fmul double %lambda_mode.0, %sub475
  br label %if.end488

if.else478:                                       ; preds = %if.end446
  br i1 %cmp451, label %land.lhs.true482, label %if.end488

land.lhs.true482:                                 ; preds = %if.else478
  %nal_reference_idc483 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 113
  %95 = load i32* %nal_reference_idc483, align 4, !tbaa !3
  %tobool484 = icmp eq i32 %95, 0
  br i1 %tobool484, label %if.end488, label %if.then485

if.then485:                                       ; preds = %land.lhs.true482
  %mul486 = fmul double %lambda_mode.0, 8.000000e-01
  br label %if.end488

if.end488:                                        ; preds = %land.lhs.true453, %land.lhs.true482, %if.else478, %if.then485, %if.then449, %if.then456
  %lambda_mode.1 = phi double [ %mul476, %if.then456 ], [ %lambda_mode.0, %land.lhs.true453 ], [ %lambda_mode.0, %if.then449 ], [ %mul486, %if.then485 ], [ %lambda_mode.0, %land.lhs.true482 ], [ %lambda_mode.0, %if.else478 ]
  %mul489 = fmul double %cond341, %lambda_mode.1
  br label %if.end490

if.end490:                                        ; preds = %if.then310, %if.else315, %if.end488
  %lambda_mode.2 = phi double [ %mul, %if.then310 ], [ %mul325, %if.else315 ], [ %mul489, %if.end488 ]
  %96 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %96, i64 0, i32 7
  %97 = load i32* %hadamardqpel, align 4, !tbaa !3
  %tobool491 = icmp eq i32 %97, 0
  br i1 %tobool491, label %if.end494, label %if.then492

if.then492:                                       ; preds = %if.end490
  %mul493 = fmul double %lambda_mode.2, 9.500000e-01
  br label %if.end494

if.end494:                                        ; preds = %if.end490, %if.then492
  %lambda_mode.3 = phi double [ %mul493, %if.then492 ], [ %lambda_mode.2, %if.end490 ]
  %call495 = call double @sqrt(double %lambda_mode.3) #8
  %.pre9065 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end510

if.else496:                                       ; preds = %if.end295
  %sub498 = add nsw i32 %75, -12
  %cmp499 = icmp slt i32 %sub498, 0
  %phitmp = sext i32 %sub498 to i64
  %.phitmp = select i1 %cmp499, i64 0, i64 %phitmp
  %arrayidx508 = getelementptr inbounds [40 x i32]* @QP2QUANT, i64 0, i64 %.phitmp
  %98 = load i32* %arrayidx508, align 4, !tbaa !3
  %conv509 = sitofp i32 %98 to double
  br label %if.end510

if.end510:                                        ; preds = %if.else496, %if.end494
  %99 = phi %struct.ImageParameters* [ %.pre9065, %if.end494 ], [ %44, %if.else496 ]
  %lambda_motion.0 = phi double [ %call495, %if.end494 ], [ %conv509, %if.else496 ]
  %lambda_mode.4 = phi double [ %lambda_mode.3, %if.end494 ], [ %conv509, %if.else496 ]
  %mul511 = fmul double %lambda_motion.0, 6.553600e+04
  %add512 = fadd double %mul511, 5.000000e-01
  %scevgep = getelementptr %struct.ImageParameters* %99, i64 0, i32 74, i64 0
  %scevgep9052 = bitcast i16* %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep9052, i8 0, i64 30, i32 2, i1 false)
  %conv513 = fptosi double %add512 to i32
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 20
  %luma_transform_size_8x8_flag4691 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 32
  %NoMbPartLessThan8x8Flag = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 33
  %cmp15.not8265 = xor i1 %cmp15, true
  %cbp5202 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 12
  %mb_type4962 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 8
  %mul4726 = fmul double %lambda_motion.0, 1.600000e+01
  %add4727 = fadd double %mul4726, 4.999000e-01
  %idxprom5808171 = zext i32 %list_offset.0 to i64
  %arrayidx581 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %idxprom5808171
  %add13498183 = or i32 %list_offset.0, 1
  %idxprom13508184 = zext i32 %add13498183 to i64
  %arrayidx647 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %idxprom13508184
  %mul781 = fmul double %lambda_motion.0, 2.000000e+00
  %mul782 = fmul double %mul781, 0.000000e+00
  %conv783 = fptosi double %mul782 to i32
  %all_blk_8x8 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 31
  %cond2996 = xor i32 %conv16, 1
  %100 = zext i32 %cond2996 to i64
  br label %for.body526

for.body526:                                      ; preds = %if.end510, %for.inc5577
  %rerun.08605 = phi i32 [ 0, %if.end510 ], [ %inc5578, %for.inc5577 ]
  %cr_cbp.08604 = phi i32 [ 0, %if.end510 ], [ %cr_cbp.13, %for.inc5577 ]
  %best_bw_ref.08603 = phi i16 [ -1, %if.end510 ], [ %best_bw_ref.24, %for.inc5577 ]
  %cost8x8_direct.08602 = phi i32 [ 0, %if.end510 ], [ %cost8x8_direct.9, %for.inc5577 ]
  %best_transform_flag.08601 = phi i32 [ 0, %if.end510 ], [ %best_transform_flag.3, %for.inc5577 ]
  %intra1.08600 = phi i32 [ 0, %if.end510 ], [ %intra1.1, %for.inc5577 ]
  %have_direct.08599 = phi i32 [ 0, %if.end510 ], [ %have_direct.14, %for.inc5577 ]
  %cost_direct.08598 = phi i32 [ 0, %if.end510 ], [ %cost_direct.16, %for.inc5577 ]
  %best_fw_ref.08597 = phi i16 [ 0, %if.end510 ], [ %best_fw_ref.24, %for.inc5577 ]
  %best_cnt_nonz.08596 = phi i32 [ 0, %if.end510 ], [ %best_cnt_nonz.14, %for.inc5577 ]
  %rdcost.08595 = phi double [ 0.000000e+00, %if.end510 ], [ %rdcost.12, %for.inc5577 ]
  br i1 %12, label %if.then529, label %if.end537

if.then529:                                       ; preds = %for.body526
  %cmp530 = icmp eq i32 %rerun.08605, 0
  %101 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt533 = getelementptr inbounds %struct.InputParameters* %101, i64 0, i32 85
  br i1 %cmp530, label %if.then532, label %if.else534

if.then532:                                       ; preds = %if.then529
  store i32 1, i32* %rdopt533, align 4, !tbaa !3
  br label %if.end537

if.else534:                                       ; preds = %if.then529
  store i32 2, i32* %rdopt533, align 4, !tbaa !3
  br label %if.end537

if.end537:                                        ; preds = %if.then532, %if.else534, %for.body526
  store i32 0, i32* %c_ipred_mode, align 4, !tbaa !3
  br i1 %tobool83, label %if.end3941, label %if.then539

if.then539:                                       ; preds = %if.end537
  br i1 %cmp15, label %if.then541, label %if.end542

if.then541:                                       ; preds = %if.then539
  call void (...)* @Get_Direct_Motion_Vectors() #8
  br label %if.end542

if.end542:                                        ; preds = %if.then541, %if.then539
  store i32 1, i32* @best_mode, align 4, !tbaa !3
  br label %for.body546

for.body546:                                      ; preds = %for.inc2163, %if.end542
  %indvars.iv8735 = phi i64 [ 1, %if.end542 ], [ %indvars.iv.next8736, %for.inc2163 ]
  %best_bw_ref.18387 = phi i16 [ %best_bw_ref.08603, %if.end542 ], [ %best_bw_ref.6, %for.inc2163 ]
  %best_transform_flag.18386 = phi i32 [ %best_transform_flag.08601, %if.end542 ], [ %best_transform_flag.2, %for.inc2163 ]
  %min_cost.18385 = phi i32 [ 2147483647, %if.end542 ], [ %min_cost.2, %for.inc2163 ]
  %best_fw_ref.18384 = phi i16 [ %best_fw_ref.08597, %if.end542 ], [ %best_fw_ref.6, %for.inc2163 ]
  store i32 0, i32* @bi_pred_me, align 4, !tbaa !3
  %102 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx549 = getelementptr inbounds %struct.ImageParameters* %102, i64 0, i32 74, i64 %indvars.iv8735
  store i16 0, i16* %arrayidx549, align 2, !tbaa !4
  %arrayidx551 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %indvars.iv8735
  %103 = load i32* %arrayidx551, align 4, !tbaa !3
  %tobool552 = icmp eq i32 %103, 0
  br i1 %tobool552, label %for.inc2163, label %if.then553

if.then553:                                       ; preds = %for.body546
  store i32 0, i32* %cost, align 4, !tbaa !3
  %104 = trunc i64 %indvars.iv8735 to i32
  %cmp555 = icmp eq i32 %104, 1
  %cond557 = select i1 %cmp555, i32 1, i32 2
  %cmp2134 = icmp sgt i32 %104, 1
  %cmp1540 = icmp eq i32 %104, 2
  %cmp555.not = xor i1 %cmp555, true
  br label %for.body560

for.body560:                                      ; preds = %if.then553, %for.inc2144
  %indvars.iv8722 = phi i64 [ 0, %if.then553 ], [ %indvars.iv.next8723, %for.inc2144 ]
  %best_bw_ref.28382 = phi i16 [ %best_bw_ref.18387, %if.then553 ], [ %best_bw_ref.5, %for.inc2144 ]
  %best_fw_ref.28381 = phi i16 [ %best_fw_ref.18384, %if.then553 ], [ %best_fw_ref.5, %for.inc2144 ]
  %105 = trunc i64 %indvars.iv8722 to i32
  call void @PartitionMotionSearch(i32 %104, i32 %105, double %lambda_motion.0) #8
  %106 = load i32* %arrayidx581, align 4, !tbaa !3
  %cmp5828342 = icmp sgt i32 %106, 0
  br i1 %cmp5828342, label %for.body584.lr.ph, label %for.end640

for.body584.lr.ph:                                ; preds = %for.body560
  %107 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt595 = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 85
  %108 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx628 = getelementptr inbounds i32**** %108, i64 %indvars.iv8735
  %109 = load i32** @refbits, align 8, !tbaa !0
  br label %for.body584

for.body584:                                      ; preds = %for.body584.lr.ph, %for.inc638
  %conv5788347 = phi i32 [ 0, %for.body584.lr.ph ], [ %conv578, %for.inc638 ]
  %ref.08345 = phi i16 [ 0, %for.body584.lr.ph ], [ %inc639, %for.inc638 ]
  %best_fw_ref.38344 = phi i16 [ %best_fw_ref.28381, %for.body584.lr.ph ], [ %best_fw_ref.4, %for.inc638 ]
  %fw_mcost.08343 = phi i32 [ 2147483647, %for.body584.lr.ph ], [ %fw_mcost.1, %for.inc638 ]
  %cmp588 = icmp eq i16 %ref.08345, 0
  %or.cond8206 = or i1 %13, %cmp588
  br i1 %or.cond8206, label %if.then594, label %lor.lhs.false590

lor.lhs.false590:                                 ; preds = %for.body584
  %call592 = call i32 @CheckReliabilityOfRef(i32 %105, i32 0, i32 %conv5788347, i32 %104) #10
  %tobool593 = icmp eq i32 %call592, 0
  br i1 %tobool593, label %for.inc638, label %if.then594

if.then594:                                       ; preds = %lor.lhs.false590, %for.body584
  %110 = load i32* %rdopt595, align 4, !tbaa !3
  %tobool596 = icmp eq i32 %110, 0
  br i1 %tobool596, label %cond.false610, label %cond.true597

cond.true597:                                     ; preds = %if.then594
  %cmp601 = icmp slt i32 %106, 2
  br i1 %cmp601, label %cond.end607, label %cond.false604

cond.false604:                                    ; preds = %cond.true597
  %idxprom605 = sext i16 %ref.08345 to i64
  %arrayidx606 = getelementptr inbounds i32* %109, i64 %idxprom605
  %111 = load i32* %arrayidx606, align 4, !tbaa !3
  br label %cond.end607

cond.end607:                                      ; preds = %cond.true597, %cond.false604
  %cond608 = phi i32 [ %111, %cond.false604 ], [ 0, %cond.true597 ]
  %mul609 = mul nsw i32 %cond608, %conv513
  %shr = ashr i32 %mul609, 16
  br label %cond.end623

cond.false610:                                    ; preds = %if.then594
  %cmp613 = icmp slt i16 %ref.08345, 1
  br i1 %cmp613, label %cond.true615, label %cond.end618

cond.true615:                                     ; preds = %cond.false610
  %phitmp8189 = sitofp i16 %ref.08345 to double
  br label %cond.end618

cond.end618:                                      ; preds = %cond.false610, %cond.true615
  %cond619 = phi double [ %phitmp8189, %cond.true615 ], [ 1.000000e+00, %cond.false610 ]
  %mul621 = fmul double %mul781, %cond619
  %conv622 = fptosi double %mul621 to i32
  br label %cond.end623

cond.end623:                                      ; preds = %cond.end618, %cond.end607
  %cond624 = phi i32 [ %shr, %cond.end607 ], [ %conv622, %cond.end618 ]
  %idxprom626 = sext i16 %ref.08345 to i64
  %112 = load i32**** %arrayidx628, align 8, !tbaa !0
  %113 = load i32*** %112, align 8, !tbaa !0
  %arrayidx630 = getelementptr inbounds i32** %113, i64 %idxprom626
  %114 = load i32** %arrayidx630, align 8, !tbaa !0
  %arrayidx631 = getelementptr inbounds i32* %114, i64 %indvars.iv8722
  %115 = load i32* %arrayidx631, align 4, !tbaa !3
  %add632 = add nsw i32 %115, %cond624
  %cmp633 = icmp slt i32 %add632, %fw_mcost.08343
  %add632.fw_mcost.0 = select i1 %cmp633, i32 %add632, i32 %fw_mcost.08343
  %ref.0.best_fw_ref.3 = select i1 %cmp633, i16 %ref.08345, i16 %best_fw_ref.38344
  br label %for.inc638

for.inc638:                                       ; preds = %cond.end623, %lor.lhs.false590
  %fw_mcost.1 = phi i32 [ %fw_mcost.08343, %lor.lhs.false590 ], [ %add632.fw_mcost.0, %cond.end623 ]
  %best_fw_ref.4 = phi i16 [ %best_fw_ref.38344, %lor.lhs.false590 ], [ %ref.0.best_fw_ref.3, %cond.end623 ]
  %inc639 = add i16 %ref.08345, 1
  %conv578 = sext i16 %inc639 to i32
  %cmp582 = icmp slt i32 %conv578, %106
  br i1 %cmp582, label %for.body584, label %for.end640

for.end640:                                       ; preds = %for.inc638, %for.body560
  %best_fw_ref.3.lcssa = phi i16 [ %best_fw_ref.28381, %for.body560 ], [ %best_fw_ref.4, %for.inc638 ]
  %fw_mcost.0.lcssa = phi i32 [ 2147483647, %for.body560 ], [ %fw_mcost.1, %for.inc638 ]
  br i1 %cmp15, label %for.cond643.preheader, label %if.else923

for.cond643.preheader:                            ; preds = %for.end640
  %116 = load i32* %arrayidx647, align 4, !tbaa !3
  %cmp6488352 = icmp sgt i32 %116, 0
  %117 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt6518353 = getelementptr inbounds %struct.InputParameters* %117, i64 0, i32 85
  %118 = load i32* %rdopt6518353, align 4, !tbaa !3
  %tobool6528354 = icmp ne i32 %118, 0
  br i1 %cmp6488352, label %for.body650.lr.ph, label %for.end696

for.body650.lr.ph:                                ; preds = %for.cond643.preheader
  %119 = load i32** @refbits, align 8, !tbaa !0
  %120 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx685 = getelementptr inbounds i32**** %120, i64 %indvars.iv8735
  %121 = load i32**** %arrayidx685, align 8, !tbaa !0
  %arrayidx686 = getelementptr inbounds i32*** %121, i64 1
  %122 = load i32*** %arrayidx686, align 8, !tbaa !0
  br label %for.body650

for.body650:                                      ; preds = %for.body650.lr.ph, %cond.end680
  %best_bw_ref.38357 = phi i16 [ %best_bw_ref.28382, %for.body650.lr.ph ], [ %ref.1.best_bw_ref.3, %cond.end680 ]
  %ref.18356 = phi i16 [ 0, %for.body650.lr.ph ], [ %inc695, %cond.end680 ]
  %bw_mcost.08355 = phi i32 [ 2147483647, %for.body650.lr.ph ], [ %add689.bw_mcost.0, %cond.end680 ]
  br i1 %tobool6528354, label %cond.true653, label %cond.false667

cond.true653:                                     ; preds = %for.body650
  %cmp657 = icmp slt i32 %116, 2
  br i1 %cmp657, label %cond.end663, label %cond.false660

cond.false660:                                    ; preds = %cond.true653
  %idxprom661 = sext i16 %ref.18356 to i64
  %arrayidx662 = getelementptr inbounds i32* %119, i64 %idxprom661
  %123 = load i32* %arrayidx662, align 4, !tbaa !3
  br label %cond.end663

cond.end663:                                      ; preds = %cond.true653, %cond.false660
  %cond664 = phi i32 [ %123, %cond.false660 ], [ 0, %cond.true653 ]
  %mul665 = mul nsw i32 %cond664, %conv513
  %shr666 = ashr i32 %mul665, 16
  br label %cond.end680

cond.false667:                                    ; preds = %for.body650
  %cmp670 = icmp slt i16 %ref.18356, 1
  br i1 %cmp670, label %cond.true672, label %cond.end675

cond.true672:                                     ; preds = %cond.false667
  %phitmp8188 = sitofp i16 %ref.18356 to double
  br label %cond.end675

cond.end675:                                      ; preds = %cond.false667, %cond.true672
  %cond676 = phi double [ %phitmp8188, %cond.true672 ], [ 1.000000e+00, %cond.false667 ]
  %mul678 = fmul double %mul781, %cond676
  %conv679 = fptosi double %mul678 to i32
  br label %cond.end680

cond.end680:                                      ; preds = %cond.end675, %cond.end663
  %cond681 = phi i32 [ %shr666, %cond.end663 ], [ %conv679, %cond.end675 ]
  %idxprom683 = sext i16 %ref.18356 to i64
  %arrayidx687 = getelementptr inbounds i32** %122, i64 %idxprom683
  %124 = load i32** %arrayidx687, align 8, !tbaa !0
  %arrayidx688 = getelementptr inbounds i32* %124, i64 %indvars.iv8722
  %125 = load i32* %arrayidx688, align 4, !tbaa !3
  %add689 = add nsw i32 %125, %cond681
  %cmp690 = icmp slt i32 %add689, %bw_mcost.08355
  %add689.bw_mcost.0 = select i1 %cmp690, i32 %add689, i32 %bw_mcost.08355
  %ref.1.best_bw_ref.3 = select i1 %cmp690, i16 %ref.18356, i16 %best_bw_ref.38357
  %inc695 = add i16 %ref.18356, 1
  %conv644 = sext i16 %inc695 to i32
  %cmp648 = icmp slt i32 %conv644, %116
  br i1 %cmp648, label %for.body650, label %for.end696

for.end696:                                       ; preds = %cond.end680, %for.cond643.preheader
  %best_bw_ref.3.lcssa = phi i16 [ %best_bw_ref.28382, %for.cond643.preheader ], [ %ref.1.best_bw_ref.3, %cond.end680 ]
  %bw_mcost.0.lcssa = phi i32 [ 2147483647, %for.cond643.preheader ], [ %add689.bw_mcost.0, %cond.end680 ]
  br i1 %tobool6528354, label %cond.true699, label %cond.false726

cond.true699:                                     ; preds = %for.end696
  %cmp703 = icmp slt i32 %106, 2
  br i1 %cmp703, label %cond.end709, label %cond.false706

cond.false706:                                    ; preds = %cond.true699
  %idxprom707 = sext i16 %best_fw_ref.3.lcssa to i64
  %126 = load i32** @refbits, align 8, !tbaa !0
  %arrayidx708 = getelementptr inbounds i32* %126, i64 %idxprom707
  %127 = load i32* %arrayidx708, align 4, !tbaa !3
  br label %cond.end709

cond.end709:                                      ; preds = %cond.true699, %cond.false706
  %cond710 = phi i32 [ %127, %cond.false706 ], [ 0, %cond.true699 ]
  %mul711 = mul nsw i32 %cond710, %conv513
  %shr712 = ashr i32 %mul711, 16
  %cmp716 = icmp slt i32 %116, 2
  br i1 %cmp716, label %cond.end721, label %cond.false719

cond.false719:                                    ; preds = %cond.end709
  %128 = load i32** @refbits, align 8, !tbaa !0
  %129 = load i32* %128, align 4, !tbaa !3
  br label %cond.end721

cond.end721:                                      ; preds = %cond.end709, %cond.false719
  %cond722 = phi i32 [ %129, %cond.false719 ], [ 0, %cond.end709 ]
  %mul723 = mul nsw i32 %cond722, %conv513
  %shr724 = ashr i32 %mul723, 16
  %add725 = add nsw i32 %shr724, %shr712
  br label %cond.end739

cond.false726:                                    ; preds = %for.end696
  %cmp729 = icmp slt i16 %best_fw_ref.3.lcssa, 1
  br i1 %cmp729, label %cond.true731, label %cond.end734

cond.true731:                                     ; preds = %cond.false726
  %phitmp8187 = sitofp i16 %best_fw_ref.3.lcssa to double
  br label %cond.end734

cond.end734:                                      ; preds = %cond.false726, %cond.true731
  %cond735 = phi double [ %phitmp8187, %cond.true731 ], [ 1.000000e+00, %cond.false726 ]
  %mul737 = fmul double %mul781, %cond735
  %conv738 = fptosi double %mul737 to i32
  br label %cond.end739

cond.end739:                                      ; preds = %cond.end734, %cond.end721
  %cond740 = phi i32 [ %add725, %cond.end721 ], [ %conv738, %cond.end734 ]
  %call741 = call i32 @BIDPartitionCost(i32 %104, i32 %105, i16 signext %best_fw_ref.3.lcssa, i16 signext 0, i32 %conv513) #8
  %add742 = add nsw i32 %call741, %cond740
  br i1 %cmp555, label %land.lhs.true745, label %if.end825

land.lhs.true745:                                 ; preds = %cond.end739
  %130 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type746 = getelementptr inbounds %struct.ImageParameters* %130, i64 0, i32 6
  %131 = load i32* %type746, align 4, !tbaa !3
  %cmp747 = icmp eq i32 %131, 1
  br i1 %cmp747, label %land.lhs.true749, label %if.end825

land.lhs.true749:                                 ; preds = %land.lhs.true745
  %132 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %132, i64 0, i32 39
  %133 = load i32* %BiPredMotionEstimation, align 4, !tbaa !3
  %tobool750 = icmp eq i32 %133, 0
  br i1 %tobool750, label %if.end825, label %if.then751

if.then751:                                       ; preds = %land.lhs.true749
  %rdopt752 = getelementptr inbounds %struct.InputParameters* %132, i64 0, i32 85
  %134 = load i32* %rdopt752, align 4, !tbaa !3
  %tobool753 = icmp eq i32 %134, 0
  br i1 %tobool753, label %cond.end784, label %cond.true754

cond.true754:                                     ; preds = %if.then751
  %135 = load i32* %arrayidx581, align 4, !tbaa !3
  %cmp758 = icmp slt i32 %135, 2
  br i1 %cmp758, label %cond.end763, label %cond.false761

cond.false761:                                    ; preds = %cond.true754
  %136 = load i32** @refbits, align 8, !tbaa !0
  %137 = load i32* %136, align 4, !tbaa !3
  br label %cond.end763

cond.end763:                                      ; preds = %cond.true754, %cond.false761
  %cond764 = phi i32 [ %137, %cond.false761 ], [ 0, %cond.true754 ]
  %mul765 = mul nsw i32 %cond764, %conv513
  %shr766 = ashr i32 %mul765, 16
  %138 = load i32* %arrayidx647, align 4, !tbaa !3
  %cmp770 = icmp slt i32 %138, 2
  br i1 %cmp770, label %cond.end775, label %cond.false773

cond.false773:                                    ; preds = %cond.end763
  %139 = load i32** @refbits, align 8, !tbaa !0
  %140 = load i32* %139, align 4, !tbaa !3
  br label %cond.end775

cond.end775:                                      ; preds = %cond.end763, %cond.false773
  %cond776 = phi i32 [ %140, %cond.false773 ], [ 0, %cond.end763 ]
  %mul777 = mul nsw i32 %cond776, %conv513
  %shr778 = ashr i32 %mul777, 16
  %add779 = add nsw i32 %shr778, %shr766
  br label %cond.end784

cond.end784:                                      ; preds = %if.then751, %cond.end775
  %cond785 = phi i32 [ %add779, %cond.end775 ], [ %conv783, %if.then751 ]
  %call786 = call i32 @BPredPartitionCost(i32 1, i32 %105, i16 signext 0, i16 signext 0, i32 %conv513, i32 0) #8
  %add787 = add nsw i32 %call786, %cond785
  %141 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt788 = getelementptr inbounds %struct.InputParameters* %141, i64 0, i32 85
  %142 = load i32* %rdopt788, align 4, !tbaa !3
  %tobool789 = icmp eq i32 %142, 0
  br i1 %tobool789, label %cond.end820, label %cond.true790

cond.true790:                                     ; preds = %cond.end784
  %143 = load i32* %arrayidx581, align 4, !tbaa !3
  %cmp794 = icmp slt i32 %143, 2
  br i1 %cmp794, label %cond.end799, label %cond.false797

cond.false797:                                    ; preds = %cond.true790
  %144 = load i32** @refbits, align 8, !tbaa !0
  %145 = load i32* %144, align 4, !tbaa !3
  br label %cond.end799

cond.end799:                                      ; preds = %cond.true790, %cond.false797
  %cond800 = phi i32 [ %145, %cond.false797 ], [ 0, %cond.true790 ]
  %mul801 = mul nsw i32 %cond800, %conv513
  %shr802 = ashr i32 %mul801, 16
  %146 = load i32* %arrayidx647, align 4, !tbaa !3
  %cmp806 = icmp slt i32 %146, 2
  br i1 %cmp806, label %cond.end811, label %cond.false809

cond.false809:                                    ; preds = %cond.end799
  %147 = load i32** @refbits, align 8, !tbaa !0
  %148 = load i32* %147, align 4, !tbaa !3
  br label %cond.end811

cond.end811:                                      ; preds = %cond.end799, %cond.false809
  %cond812 = phi i32 [ %148, %cond.false809 ], [ 0, %cond.end799 ]
  %mul813 = mul nsw i32 %cond812, %conv513
  %shr814 = ashr i32 %mul813, 16
  %add815 = add nsw i32 %shr814, %shr802
  br label %cond.end820

cond.end820:                                      ; preds = %cond.end784, %cond.end811
  %cond821 = phi i32 [ %add815, %cond.end811 ], [ %conv783, %cond.end784 ]
  %call822 = call i32 @BPredPartitionCost(i32 1, i32 %105, i16 signext 0, i16 signext 0, i32 %conv513, i32 1) #8
  %add823 = add nsw i32 %call822, %cond821
  br label %if.end825

if.end825:                                        ; preds = %land.lhs.true745, %cond.end739, %land.lhs.true749, %cond.end820
  %bpd_mcost_l0.0 = phi i32 [ %add787, %cond.end820 ], [ 2147483647, %land.lhs.true749 ], [ 2147483647, %cond.end739 ], [ 2147483647, %land.lhs.true745 ]
  %bpd_mcost_l1.0 = phi i32 [ %add823, %cond.end820 ], [ 2147483647, %land.lhs.true749 ], [ 2147483647, %cond.end739 ], [ 2147483647, %land.lhs.true745 ]
  %149 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMotionEstimation826 = getelementptr inbounds %struct.InputParameters* %149, i64 0, i32 39
  %150 = load i32* %BiPredMotionEstimation826, align 4, !tbaa !3
  %tobool827 = icmp eq i32 %150, 0
  %brmerge8207 = or i1 %tobool827, %cmp555.not
  %cmp903 = icmp sgt i32 %fw_mcost.0.lcssa, %bw_mcost.0.lcssa
  %cmp906 = icmp sgt i32 %fw_mcost.0.lcssa, %add742
  br i1 %brmerge8207, label %if.else902, label %if.then831

if.then831:                                       ; preds = %if.end825
  %or.cond8208.not.demorgan = or i1 %cmp903, %cmp906
  %or.cond8208.not = xor i1 %or.cond8208.not.demorgan, true
  %cmp838 = icmp slt i32 %fw_mcost.0.lcssa, %bpd_mcost_l0.0
  %or.cond8209 = and i1 %cmp838, %or.cond8208.not
  %cmp841 = icmp slt i32 %fw_mcost.0.lcssa, %bpd_mcost_l1.0
  %or.cond8210 = and i1 %or.cond8209, %cmp841
  br i1 %or.cond8210, label %if.then843, label %if.else845

if.then843:                                       ; preds = %if.then831
  %151 = load i32* %cost, align 4, !tbaa !3
  %add844 = add nsw i32 %151, %fw_mcost.0.lcssa
  store i32 %add844, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.else845:                                       ; preds = %if.then831
  %notlhs8306 = icmp sle i32 %bw_mcost.0.lcssa, %fw_mcost.0.lcssa
  %notrhs8307 = icmp sle i32 %bw_mcost.0.lcssa, %add742
  %or.cond8211.not = and i1 %notrhs8307, %notlhs8306
  %cmp852 = icmp slt i32 %bw_mcost.0.lcssa, %bpd_mcost_l0.0
  %or.cond8212 = and i1 %or.cond8211.not, %cmp852
  %cmp855 = icmp slt i32 %bw_mcost.0.lcssa, %bpd_mcost_l1.0
  %or.cond8213 = and i1 %or.cond8212, %cmp855
  br i1 %or.cond8213, label %if.then857, label %if.else859

if.then857:                                       ; preds = %if.else845
  %152 = load i32* %cost, align 4, !tbaa !3
  %add858 = add nsw i32 %152, %bw_mcost.0.lcssa
  store i32 %add858, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.else859:                                       ; preds = %if.else845
  %notlhs8308 = icmp sle i32 %add742, %fw_mcost.0.lcssa
  %notrhs8309 = icmp sle i32 %add742, %bw_mcost.0.lcssa
  %or.cond8214.not = and i1 %notrhs8309, %notlhs8308
  %cmp866 = icmp slt i32 %add742, %bpd_mcost_l0.0
  %or.cond8215 = and i1 %or.cond8214.not, %cmp866
  %cmp869 = icmp slt i32 %add742, %bpd_mcost_l1.0
  %or.cond8216 = and i1 %or.cond8215, %cmp869
  br i1 %or.cond8216, label %if.then871, label %if.else876

if.then871:                                       ; preds = %if.else859
  %153 = load i32* %cost, align 4, !tbaa !3
  %add872 = add nsw i32 %153, %add742
  store i32 %add872, i32* %cost, align 4, !tbaa !3
  store i32 0, i32* @bi_pred_me, align 4, !tbaa !3
  %154 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx875 = getelementptr inbounds %struct.ImageParameters* %154, i64 0, i32 74, i64 %indvars.iv8735
  store i16 0, i16* %arrayidx875, align 2, !tbaa !4
  br label %if.end925

if.else876:                                       ; preds = %if.else859
  %or.cond8217 = or i1 %cmp838, %cmp852
  %or.cond8218 = or i1 %or.cond8217, %cmp866
  %cmp886 = icmp sgt i32 %bpd_mcost_l0.0, %bpd_mcost_l1.0
  %or.cond8219 = or i1 %or.cond8218, %cmp886
  %155 = load i32* %cost, align 4, !tbaa !3
  br i1 %or.cond8219, label %if.else893, label %if.then888

if.then888:                                       ; preds = %if.else876
  %add889 = add nsw i32 %155, %bpd_mcost_l0.0
  store i32 %add889, i32* %cost, align 4, !tbaa !3
  store i32 1, i32* @bi_pred_me, align 4, !tbaa !3
  %156 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx892 = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 74, i64 %indvars.iv8735
  store i16 1, i16* %arrayidx892, align 2, !tbaa !4
  br label %if.end925

if.else893:                                       ; preds = %if.else876
  %add894 = add nsw i32 %155, %bpd_mcost_l1.0
  store i32 %add894, i32* %cost, align 4, !tbaa !3
  store i32 2, i32* @bi_pred_me, align 4, !tbaa !3
  %157 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %arrayidx897 = getelementptr inbounds %struct.ImageParameters* %157, i64 0, i32 74, i64 %indvars.iv8735
  store i16 2, i16* %arrayidx897, align 2, !tbaa !4
  br label %if.end925

if.else902:                                       ; preds = %if.end825
  %or.cond8220 = or i1 %cmp903, %cmp906
  br i1 %or.cond8220, label %if.else910, label %if.then908

if.then908:                                       ; preds = %if.else902
  %158 = load i32* %cost, align 4, !tbaa !3
  %add909 = add nsw i32 %158, %fw_mcost.0.lcssa
  store i32 %add909, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.else910:                                       ; preds = %if.else902
  %cmp911 = icmp sgt i32 %bw_mcost.0.lcssa, %fw_mcost.0.lcssa
  %cmp914 = icmp sgt i32 %bw_mcost.0.lcssa, %add742
  %or.cond8221 = or i1 %cmp911, %cmp914
  %159 = load i32* %cost, align 4, !tbaa !3
  br i1 %or.cond8221, label %if.else918, label %if.then916

if.then916:                                       ; preds = %if.else910
  %add917 = add nsw i32 %159, %bw_mcost.0.lcssa
  store i32 %add917, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.else918:                                       ; preds = %if.else910
  %add919 = add nsw i32 %159, %add742
  store i32 %add919, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.else923:                                       ; preds = %for.end640
  %160 = load i32* %cost, align 4, !tbaa !3
  %add924 = add nsw i32 %160, %fw_mcost.0.lcssa
  store i32 %add924, i32* %cost, align 4, !tbaa !3
  br label %if.end925

if.end925:                                        ; preds = %if.then857, %if.then888, %if.else893, %if.then871, %if.then843, %if.then916, %if.else918, %if.then908, %if.else923
  %best_fw_ref.5 = phi i16 [ %best_fw_ref.3.lcssa, %if.then843 ], [ 0, %if.then857 ], [ %best_fw_ref.3.lcssa, %if.then871 ], [ 0, %if.then888 ], [ 0, %if.else893 ], [ %best_fw_ref.3.lcssa, %if.then908 ], [ 0, %if.then916 ], [ %best_fw_ref.3.lcssa, %if.else918 ], [ %best_fw_ref.3.lcssa, %if.else923 ]
  %best_pdir.0 = phi i16 [ 0, %if.then843 ], [ 1, %if.then857 ], [ 2, %if.then871 ], [ 2, %if.then888 ], [ 2, %if.else893 ], [ 0, %if.then908 ], [ 1, %if.then916 ], [ 2, %if.else918 ], [ 0, %if.else923 ]
  %best_bw_ref.5 = phi i16 [ 0, %if.then843 ], [ %best_bw_ref.3.lcssa, %if.then857 ], [ 0, %if.then871 ], [ 0, %if.then888 ], [ 0, %if.else893 ], [ 0, %if.then908 ], [ %best_bw_ref.3.lcssa, %if.then916 ], [ 0, %if.else918 ], [ %best_bw_ref.28382, %if.else923 ]
  br i1 %cmp555, label %if.then928, label %if.else1539

if.then928:                                       ; preds = %if.end925
  %cmp930 = icmp eq i16 %best_pdir.0, 1
  br i1 %cmp930, label %for.cond933.preheader, label %for.cond1004.preheader

for.cond933.preheader:                            ; preds = %if.then928
  %161 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 32
  %162 = load i32* %block_y, align 4, !tbaa !3
  %and = and i32 %105, 2
  %block_x = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 31
  %163 = load i32* %block_x, align 4, !tbaa !3
  %164 = shl i64 %indvars.iv8722, 1
  %165 = trunc i64 %164 to i32
  %mul945 = and i32 %165, 2
  %166 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %166, i64 0, i32 32
  %167 = load i16**** %ref_idx, align 8, !tbaa !0
  %168 = load i16*** %167, align 8, !tbaa !0
  %ref_pic_id = getelementptr inbounds %struct.storable_picture* %166, i64 0, i32 33
  %169 = load i64**** %ref_pic_id, align 8, !tbaa !0
  %170 = load i64*** %169, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %166, i64 0, i32 35
  %171 = load i16***** %mv, align 8, !tbaa !0
  %172 = load i16**** %171, align 8, !tbaa !0
  br label %for.cond937.preheader

for.cond1004.preheader:                           ; preds = %if.then928
  %and1028 = and i32 %105, 2
  %173 = shl i64 %indvars.iv8722, 1
  %174 = trunc i64 %173 to i32
  %mul1034 = and i32 %174, 2
  %idxprom1164 = sext i16 %best_fw_ref.5 to i64
  %.pre9104.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond1008.preheader

for.cond937.preheader:                            ; preds = %for.inc1000, %for.cond933.preheader
  %indvars.iv8702 = phi i64 [ 0, %for.cond933.preheader ], [ %indvars.iv.next8703, %for.inc1000 ]
  %175 = trunc i64 %indvars.iv8702 to i32
  %add941 = add i32 %175, %and
  %add942 = add i32 %add941, %162
  %idxprom943 = sext i32 %add942 to i64
  br label %for.body940

for.body940:                                      ; preds = %for.body940, %for.cond937.preheader
  %indvars.iv8698 = phi i64 [ 0, %for.cond937.preheader ], [ %indvars.iv.next8699, %for.body940 ]
  %176 = trunc i64 %indvars.iv8698 to i32
  %add946 = add i32 %176, %mul945
  %add947 = add i32 %add946, %163
  %idxprom948 = sext i32 %add947 to i64
  %arrayidx950 = getelementptr inbounds i16** %168, i64 %idxprom948
  %177 = load i16** %arrayidx950, align 8, !tbaa !0
  %arrayidx951 = getelementptr inbounds i16* %177, i64 %idxprom943
  store i16 -1, i16* %arrayidx951, align 2, !tbaa !4
  %arrayidx964 = getelementptr inbounds i64** %170, i64 %idxprom948
  %178 = load i64** %arrayidx964, align 8, !tbaa !0
  %arrayidx965 = getelementptr inbounds i64* %178, i64 %idxprom943
  store i64 -1, i64* %arrayidx965, align 8, !tbaa !5
  %arrayidx978 = getelementptr inbounds i16*** %172, i64 %idxprom948
  %179 = load i16*** %arrayidx978, align 8, !tbaa !0
  %arrayidx979 = getelementptr inbounds i16** %179, i64 %idxprom943
  %180 = load i16** %arrayidx979, align 8, !tbaa !0
  store i16 0, i16* %180, align 2, !tbaa !4
  %arrayidx996 = getelementptr inbounds i16* %180, i64 1
  store i16 0, i16* %arrayidx996, align 2, !tbaa !4
  %indvars.iv.next8699 = add i64 %indvars.iv8698, 1
  %lftr.wideiv8700 = trunc i64 %indvars.iv.next8699 to i32
  %exitcond8701 = icmp eq i32 %lftr.wideiv8700, 4
  br i1 %exitcond8701, label %for.inc1000, label %for.body940

for.inc1000:                                      ; preds = %for.body940
  %indvars.iv.next8703 = add i64 %indvars.iv8702, 1
  %lftr.wideiv8704 = trunc i64 %indvars.iv.next8703 to i32
  %exitcond8705 = icmp eq i32 %lftr.wideiv8704, 4
  br i1 %exitcond8705, label %if.end1224, label %for.cond937.preheader

for.cond1008.preheader:                           ; preds = %for.inc1221, %for.cond1004.preheader
  %indvars.iv8694 = phi i64 [ 0, %for.cond1004.preheader ], [ %indvars.iv.next8695, %for.inc1221 ]
  %181 = trunc i64 %indvars.iv8694 to i32
  %add1029 = add i32 %181, %and1028
  br label %for.body1011

for.body1011:                                     ; preds = %for.inc1218, %for.cond1008.preheader
  %indvars.iv8690 = phi i64 [ 0, %for.cond1008.preheader ], [ %indvars.iv.next8691, %for.inc1218 ]
  %arrayidx1014 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 74, i64 %indvars.iv8735
  %182 = load i16* %arrayidx1014, align 2, !tbaa !4
  switch i16 %182, label %cond.false1024 [
    i16 0, label %if.else1111
    i16 1, label %cond.true1023
  ]

cond.true1023:                                    ; preds = %for.body1011
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 72
  br label %cond.end1025

cond.false1024:                                   ; preds = %for.body1011
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 73
  br label %cond.end1025

cond.end1025:                                     ; preds = %cond.false1024, %cond.true1023
  %cond1026.in = phi i16******* [ %bipred_mv1, %cond.true1023 ], [ %bipred_mv2, %cond.false1024 ]
  %cond1026 = load i16******* %cond1026.in, align 8
  %block_y1027 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 32
  %183 = load i32* %block_y1027, align 4, !tbaa !3
  %add1030 = add i32 %add1029, %183
  %idxprom1031 = sext i32 %add1030 to i64
  %block_x1032 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 31
  %184 = load i32* %block_x1032, align 4, !tbaa !3
  %185 = trunc i64 %indvars.iv8690 to i32
  %add1035 = add i32 %185, %mul1034
  %add1036 = add i32 %add1035, %184
  %idxprom1037 = sext i32 %add1036 to i64
  %186 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx1038 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 32
  %187 = load i16**** %ref_idx1038, align 8, !tbaa !0
  %188 = load i16*** %187, align 8, !tbaa !0
  %arrayidx1040 = getelementptr inbounds i16** %188, i64 %idxprom1037
  %189 = load i16** %arrayidx1040, align 8, !tbaa !0
  %arrayidx1041 = getelementptr inbounds i16* %189, i64 %idxprom1031
  store i16 0, i16* %arrayidx1041, align 2, !tbaa !4
  %arrayidx1045 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 6, i64 %idxprom5808171, i64 0
  %190 = load i64* %arrayidx1045, align 8, !tbaa !5
  %ref_pic_id1057 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 33
  %191 = load i64**** %ref_pic_id1057, align 8, !tbaa !0
  %192 = load i64*** %191, align 8, !tbaa !0
  %arrayidx1059 = getelementptr inbounds i64** %192, i64 %idxprom1037
  %193 = load i64** %arrayidx1059, align 8, !tbaa !0
  %arrayidx1060 = getelementptr inbounds i64* %193, i64 %idxprom1031
  store i64 %190, i64* %arrayidx1060, align 8, !tbaa !5
  %arrayidx1064 = getelementptr inbounds i16****** %cond1026, i64 %indvars.iv8690
  %194 = load i16****** %arrayidx1064, align 8, !tbaa !0
  %arrayidx1065 = getelementptr inbounds i16***** %194, i64 %indvars.iv8694
  %195 = load i16***** %arrayidx1065, align 8, !tbaa !0
  %196 = load i16**** %195, align 8, !tbaa !0
  %197 = load i16*** %196, align 8, !tbaa !0
  %arrayidx1068 = getelementptr inbounds i16** %197, i64 %indvars.iv8735
  %198 = load i16** %arrayidx1068, align 8, !tbaa !0
  %199 = load i16* %198, align 2, !tbaa !4
  %mv1081 = getelementptr inbounds %struct.storable_picture* %186, i64 0, i32 35
  %200 = load i16***** %mv1081, align 8, !tbaa !0
  %201 = load i16**** %200, align 8, !tbaa !0
  %arrayidx1083 = getelementptr inbounds i16*** %201, i64 %idxprom1037
  %202 = load i16*** %arrayidx1083, align 8, !tbaa !0
  %arrayidx1084 = getelementptr inbounds i16** %202, i64 %idxprom1031
  %203 = load i16** %arrayidx1084, align 8, !tbaa !0
  store i16 %199, i16* %203, align 2, !tbaa !4
  %arrayidx1094 = getelementptr inbounds i16* %198, i64 1
  %204 = load i16* %arrayidx1094, align 2, !tbaa !4
  %arrayidx1110 = getelementptr inbounds i16* %203, i64 1
  store i16 %204, i16* %arrayidx1110, align 2, !tbaa !4
  br label %for.inc1218

if.else1111:                                      ; preds = %for.body1011
  %block_y1112 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 32
  %205 = load i32* %block_y1112, align 4, !tbaa !3
  %add1115 = add i32 %add1029, %205
  %idxprom1116 = sext i32 %add1115 to i64
  %block_x1117 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 31
  %206 = load i32* %block_x1117, align 4, !tbaa !3
  %207 = trunc i64 %indvars.iv8690 to i32
  %add1120 = add i32 %207, %mul1034
  %add1121 = add i32 %add1120, %206
  %idxprom1122 = sext i32 %add1121 to i64
  %208 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx1123 = getelementptr inbounds %struct.storable_picture* %208, i64 0, i32 32
  %209 = load i16**** %ref_idx1123, align 8, !tbaa !0
  %210 = load i16*** %209, align 8, !tbaa !0
  %arrayidx1125 = getelementptr inbounds i16** %210, i64 %idxprom1122
  %211 = load i16** %arrayidx1125, align 8, !tbaa !0
  %arrayidx1126 = getelementptr inbounds i16* %211, i64 %idxprom1116
  store i16 %best_fw_ref.5, i16* %arrayidx1126, align 2, !tbaa !4
  %arrayidx1147 = getelementptr inbounds %struct.storable_picture* %208, i64 0, i32 6, i64 %idxprom5808171, i64 %idxprom1164
  %212 = load i64* %arrayidx1147, align 8, !tbaa !5
  %ref_pic_id1159 = getelementptr inbounds %struct.storable_picture* %208, i64 0, i32 33
  %213 = load i64**** %ref_pic_id1159, align 8, !tbaa !0
  %214 = load i64*** %213, align 8, !tbaa !0
  %arrayidx1161 = getelementptr inbounds i64** %214, i64 %idxprom1122
  %215 = load i64** %arrayidx1161, align 8, !tbaa !0
  %arrayidx1162 = getelementptr inbounds i64* %215, i64 %idxprom1116
  store i64 %212, i64* %arrayidx1162, align 8, !tbaa !5
  %all_mv1167 = getelementptr inbounds %struct.ImageParameters* %.pre9104.pre, i64 0, i32 71
  %216 = load i16******* %all_mv1167, align 8, !tbaa !0
  %arrayidx1168 = getelementptr inbounds i16****** %216, i64 %indvars.iv8690
  %217 = load i16****** %arrayidx1168, align 8, !tbaa !0
  %arrayidx1169 = getelementptr inbounds i16***** %217, i64 %indvars.iv8694
  %218 = load i16***** %arrayidx1169, align 8, !tbaa !0
  %219 = load i16**** %218, align 8, !tbaa !0
  %arrayidx1171 = getelementptr inbounds i16*** %219, i64 %idxprom1164
  %220 = load i16*** %arrayidx1171, align 8, !tbaa !0
  %arrayidx1172 = getelementptr inbounds i16** %220, i64 %indvars.iv8735
  %221 = load i16** %arrayidx1172, align 8, !tbaa !0
  %222 = load i16* %221, align 2, !tbaa !4
  %mv1185 = getelementptr inbounds %struct.storable_picture* %208, i64 0, i32 35
  %223 = load i16***** %mv1185, align 8, !tbaa !0
  %224 = load i16**** %223, align 8, !tbaa !0
  %arrayidx1187 = getelementptr inbounds i16*** %224, i64 %idxprom1122
  %225 = load i16*** %arrayidx1187, align 8, !tbaa !0
  %arrayidx1188 = getelementptr inbounds i16** %225, i64 %idxprom1116
  %226 = load i16** %arrayidx1188, align 8, !tbaa !0
  store i16 %222, i16* %226, align 2, !tbaa !4
  %arrayidx1200 = getelementptr inbounds i16* %221, i64 1
  %227 = load i16* %arrayidx1200, align 2, !tbaa !4
  %arrayidx1216 = getelementptr inbounds i16* %226, i64 1
  store i16 %227, i16* %arrayidx1216, align 2, !tbaa !4
  br label %for.inc1218

for.inc1218:                                      ; preds = %cond.end1025, %if.else1111
  %228 = phi i32 [ %184, %cond.end1025 ], [ %206, %if.else1111 ]
  %229 = phi i32 [ %183, %cond.end1025 ], [ %205, %if.else1111 ]
  %230 = phi %struct.storable_picture* [ %186, %cond.end1025 ], [ %208, %if.else1111 ]
  %indvars.iv.next8691 = add i64 %indvars.iv8690, 1
  %lftr.wideiv8692 = trunc i64 %indvars.iv.next8691 to i32
  %exitcond8693 = icmp eq i32 %lftr.wideiv8692, 4
  br i1 %exitcond8693, label %for.inc1221, label %for.body1011

for.inc1221:                                      ; preds = %for.inc1218
  %indvars.iv.next8695 = add i64 %indvars.iv8694, 1
  %lftr.wideiv8696 = trunc i64 %indvars.iv.next8695 to i32
  %exitcond8697 = icmp eq i32 %lftr.wideiv8696, 4
  br i1 %exitcond8697, label %if.end1224, label %for.cond1008.preheader

if.end1224:                                       ; preds = %for.inc1000, %for.inc1221
  %231 = phi i32 [ %228, %for.inc1221 ], [ %163, %for.inc1000 ]
  %232 = phi i32 [ %229, %for.inc1221 ], [ %162, %for.inc1000 ]
  %233 = phi %struct.storable_picture* [ %230, %for.inc1221 ], [ %166, %for.inc1000 ]
  %234 = phi %struct.ImageParameters* [ %.pre9104.pre, %for.inc1221 ], [ %161, %for.inc1000 ]
  br i1 %cmp15, label %if.then1226, label %if.end2087

if.then1226:                                      ; preds = %if.end1224
  %cmp1228 = icmp eq i16 %best_pdir.0, 0
  %and1240 = and i32 %105, 2
  %235 = shl i64 %indvars.iv8722, 1
  %236 = trunc i64 %235 to i32
  %mul1246 = and i32 %236, 2
  br i1 %cmp1228, label %for.cond1231.preheader, label %for.cond1308.preheader

for.cond1231.preheader:                           ; preds = %if.then1226
  %ref_idx1250 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 32
  %237 = load i16**** %ref_idx1250, align 8, !tbaa !0
  %arrayidx1251 = getelementptr inbounds i16*** %237, i64 1
  %238 = load i16*** %arrayidx1251, align 8, !tbaa !0
  %ref_pic_id1265 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 33
  %239 = load i64**** %ref_pic_id1265, align 8, !tbaa !0
  %arrayidx1266 = getelementptr inbounds i64*** %239, i64 1
  %240 = load i64*** %arrayidx1266, align 8, !tbaa !0
  %mv1280 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 35
  %241 = load i16***** %mv1280, align 8, !tbaa !0
  %arrayidx1281 = getelementptr inbounds i16**** %241, i64 1
  %242 = load i16**** %arrayidx1281, align 8, !tbaa !0
  br label %for.cond1235.preheader

for.cond1308.preheader:                           ; preds = %if.then1226
  %cmp1472 = icmp sgt i16 %best_bw_ref.5, -1
  %idxprom1476 = sext i16 %best_bw_ref.5 to i64
  br label %for.cond1312.preheader

for.cond1235.preheader:                           ; preds = %for.inc1304, %for.cond1231.preheader
  %indvars.iv8718 = phi i64 [ 0, %for.cond1231.preheader ], [ %indvars.iv.next8719, %for.inc1304 ]
  %243 = trunc i64 %indvars.iv8718 to i32
  %add1241 = add i32 %243, %and1240
  %add1242 = add i32 %add1241, %232
  %idxprom1243 = sext i32 %add1242 to i64
  br label %for.body1238

for.body1238:                                     ; preds = %for.body1238, %for.cond1235.preheader
  %indvars.iv8714 = phi i64 [ 0, %for.cond1235.preheader ], [ %indvars.iv.next8715, %for.body1238 ]
  %244 = trunc i64 %indvars.iv8714 to i32
  %add1247 = add i32 %244, %mul1246
  %add1248 = add i32 %add1247, %231
  %idxprom1249 = sext i32 %add1248 to i64
  %arrayidx1252 = getelementptr inbounds i16** %238, i64 %idxprom1249
  %245 = load i16** %arrayidx1252, align 8, !tbaa !0
  %arrayidx1253 = getelementptr inbounds i16* %245, i64 %idxprom1243
  store i16 -1, i16* %arrayidx1253, align 2, !tbaa !4
  %arrayidx1267 = getelementptr inbounds i64** %240, i64 %idxprom1249
  %246 = load i64** %arrayidx1267, align 8, !tbaa !0
  %arrayidx1268 = getelementptr inbounds i64* %246, i64 %idxprom1243
  store i64 -1, i64* %arrayidx1268, align 8, !tbaa !5
  %arrayidx1282 = getelementptr inbounds i16*** %242, i64 %idxprom1249
  %247 = load i16*** %arrayidx1282, align 8, !tbaa !0
  %arrayidx1283 = getelementptr inbounds i16** %247, i64 %idxprom1243
  %248 = load i16** %arrayidx1283, align 8, !tbaa !0
  store i16 0, i16* %248, align 2, !tbaa !4
  %arrayidx1300 = getelementptr inbounds i16* %248, i64 1
  store i16 0, i16* %arrayidx1300, align 2, !tbaa !4
  %indvars.iv.next8715 = add i64 %indvars.iv8714, 1
  %lftr.wideiv8716 = trunc i64 %indvars.iv.next8715 to i32
  %exitcond8717 = icmp eq i32 %lftr.wideiv8716, 4
  br i1 %exitcond8717, label %for.inc1304, label %for.body1238

for.inc1304:                                      ; preds = %for.body1238
  %indvars.iv.next8719 = add i64 %indvars.iv8718, 1
  %lftr.wideiv8720 = trunc i64 %indvars.iv.next8719 to i32
  %exitcond8721 = icmp eq i32 %lftr.wideiv8720, 4
  br i1 %exitcond8721, label %if.end2087, label %for.cond1235.preheader

for.cond1312.preheader:                           ; preds = %for.inc1534, %for.cond1308.preheader
  %indvars.iv8710 = phi i64 [ 0, %for.cond1308.preheader ], [ %indvars.iv.next8711, %for.inc1534 ]
  %249 = trunc i64 %indvars.iv8710 to i32
  %add1336 = add i32 %249, %and1240
  br label %for.body1315

for.body1315:                                     ; preds = %for.inc1531, %for.cond1312.preheader
  %indvars.iv8706 = phi i64 [ 0, %for.cond1312.preheader ], [ %indvars.iv.next8707, %for.inc1531 ]
  %arrayidx1318 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 74, i64 %indvars.iv8735
  %250 = load i16* %arrayidx1318, align 2, !tbaa !4
  switch i16 %250, label %cond.false1330 [
    i16 0, label %if.else1419
    i16 1, label %cond.true1328
  ]

cond.true1328:                                    ; preds = %for.body1315
  %bipred_mv11329 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 72
  br label %cond.end1332

cond.false1330:                                   ; preds = %for.body1315
  %bipred_mv21331 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 73
  br label %cond.end1332

cond.end1332:                                     ; preds = %cond.false1330, %cond.true1328
  %cond1333.in = phi i16******* [ %bipred_mv11329, %cond.true1328 ], [ %bipred_mv21331, %cond.false1330 ]
  %cond1333 = load i16******* %cond1333.in, align 8
  %add1337 = add i32 %add1336, %232
  %idxprom1338 = sext i32 %add1337 to i64
  %251 = trunc i64 %indvars.iv8706 to i32
  %add1342 = add i32 %251, %mul1246
  %add1343 = add i32 %add1342, %231
  %idxprom1344 = sext i32 %add1343 to i64
  %ref_idx1345 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 32
  %252 = load i16**** %ref_idx1345, align 8, !tbaa !0
  %arrayidx1346 = getelementptr inbounds i16*** %252, i64 1
  %253 = load i16*** %arrayidx1346, align 8, !tbaa !0
  %arrayidx1347 = getelementptr inbounds i16** %253, i64 %idxprom1344
  %254 = load i16** %arrayidx1347, align 8, !tbaa !0
  %arrayidx1348 = getelementptr inbounds i16* %254, i64 %idxprom1338
  store i16 0, i16* %arrayidx1348, align 2, !tbaa !4
  %arrayidx1353 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 6, i64 %idxprom13508184, i64 0
  %255 = load i64* %arrayidx1353, align 8, !tbaa !5
  %ref_pic_id1365 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 33
  %256 = load i64**** %ref_pic_id1365, align 8, !tbaa !0
  %arrayidx1366 = getelementptr inbounds i64*** %256, i64 1
  %257 = load i64*** %arrayidx1366, align 8, !tbaa !0
  %arrayidx1367 = getelementptr inbounds i64** %257, i64 %idxprom1344
  %258 = load i64** %arrayidx1367, align 8, !tbaa !0
  %arrayidx1368 = getelementptr inbounds i64* %258, i64 %idxprom1338
  store i64 %255, i64* %arrayidx1368, align 8, !tbaa !5
  %arrayidx1372 = getelementptr inbounds i16****** %cond1333, i64 %indvars.iv8706
  %259 = load i16****** %arrayidx1372, align 8, !tbaa !0
  %arrayidx1373 = getelementptr inbounds i16***** %259, i64 %indvars.iv8710
  %260 = load i16***** %arrayidx1373, align 8, !tbaa !0
  %arrayidx1374 = getelementptr inbounds i16**** %260, i64 1
  %261 = load i16**** %arrayidx1374, align 8, !tbaa !0
  %262 = load i16*** %261, align 8, !tbaa !0
  %arrayidx1376 = getelementptr inbounds i16** %262, i64 %indvars.iv8735
  %263 = load i16** %arrayidx1376, align 8, !tbaa !0
  %264 = load i16* %263, align 2, !tbaa !4
  %mv1389 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 35
  %265 = load i16***** %mv1389, align 8, !tbaa !0
  %arrayidx1390 = getelementptr inbounds i16**** %265, i64 1
  %266 = load i16**** %arrayidx1390, align 8, !tbaa !0
  %arrayidx1391 = getelementptr inbounds i16*** %266, i64 %idxprom1344
  %267 = load i16*** %arrayidx1391, align 8, !tbaa !0
  %arrayidx1392 = getelementptr inbounds i16** %267, i64 %idxprom1338
  %268 = load i16** %arrayidx1392, align 8, !tbaa !0
  store i16 %264, i16* %268, align 2, !tbaa !4
  %arrayidx1402 = getelementptr inbounds i16* %263, i64 1
  %269 = load i16* %arrayidx1402, align 2, !tbaa !4
  %arrayidx1418 = getelementptr inbounds i16* %268, i64 1
  store i16 %269, i16* %arrayidx1418, align 2, !tbaa !4
  br label %for.inc1531

if.else1419:                                      ; preds = %for.body1315
  %add1423 = add i32 %add1336, %232
  %idxprom1424 = sext i32 %add1423 to i64
  %270 = trunc i64 %indvars.iv8706 to i32
  %add1428 = add i32 %270, %mul1246
  %add1429 = add i32 %add1428, %231
  %idxprom1430 = sext i32 %add1429 to i64
  %ref_idx1431 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 32
  %271 = load i16**** %ref_idx1431, align 8, !tbaa !0
  %arrayidx1432 = getelementptr inbounds i16*** %271, i64 1
  %272 = load i16*** %arrayidx1432, align 8, !tbaa !0
  %arrayidx1433 = getelementptr inbounds i16** %272, i64 %idxprom1430
  %273 = load i16** %arrayidx1433, align 8, !tbaa !0
  %arrayidx1434 = getelementptr inbounds i16* %273, i64 %idxprom1424
  store i16 %best_bw_ref.5, i16* %arrayidx1434, align 2, !tbaa !4
  %arrayidx1455 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 6, i64 %idxprom13508184, i64 %idxprom1476
  %274 = load i64* %arrayidx1455, align 8, !tbaa !5
  %ref_pic_id1467 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 33
  %275 = load i64**** %ref_pic_id1467, align 8, !tbaa !0
  %arrayidx1468 = getelementptr inbounds i64*** %275, i64 1
  %276 = load i64*** %arrayidx1468, align 8, !tbaa !0
  %arrayidx1469 = getelementptr inbounds i64** %276, i64 %idxprom1430
  %277 = load i64** %arrayidx1469, align 8, !tbaa !0
  %arrayidx1470 = getelementptr inbounds i64* %277, i64 %idxprom1424
  store i64 %274, i64* %arrayidx1470, align 8, !tbaa !5
  br i1 %cmp1472, label %if.then1474, label %for.inc1531

if.then1474:                                      ; preds = %if.else1419
  %all_mv1479 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 71
  %278 = load i16******* %all_mv1479, align 8, !tbaa !0
  %arrayidx1480 = getelementptr inbounds i16****** %278, i64 %indvars.iv8706
  %279 = load i16****** %arrayidx1480, align 8, !tbaa !0
  %arrayidx1481 = getelementptr inbounds i16***** %279, i64 %indvars.iv8710
  %280 = load i16***** %arrayidx1481, align 8, !tbaa !0
  %arrayidx1482 = getelementptr inbounds i16**** %280, i64 1
  %281 = load i16**** %arrayidx1482, align 8, !tbaa !0
  %arrayidx1483 = getelementptr inbounds i16*** %281, i64 %idxprom1476
  %282 = load i16*** %arrayidx1483, align 8, !tbaa !0
  %arrayidx1484 = getelementptr inbounds i16** %282, i64 %indvars.iv8735
  %283 = load i16** %arrayidx1484, align 8, !tbaa !0
  %284 = load i16* %283, align 2, !tbaa !4
  %mv1497 = getelementptr inbounds %struct.storable_picture* %233, i64 0, i32 35
  %285 = load i16***** %mv1497, align 8, !tbaa !0
  %arrayidx1498 = getelementptr inbounds i16**** %285, i64 1
  %286 = load i16**** %arrayidx1498, align 8, !tbaa !0
  %arrayidx1499 = getelementptr inbounds i16*** %286, i64 %idxprom1430
  %287 = load i16*** %arrayidx1499, align 8, !tbaa !0
  %arrayidx1500 = getelementptr inbounds i16** %287, i64 %idxprom1424
  %288 = load i16** %arrayidx1500, align 8, !tbaa !0
  store i16 %284, i16* %288, align 2, !tbaa !4
  %arrayidx1512 = getelementptr inbounds i16* %283, i64 1
  %289 = load i16* %arrayidx1512, align 2, !tbaa !4
  %arrayidx1528 = getelementptr inbounds i16* %288, i64 1
  store i16 %289, i16* %arrayidx1528, align 2, !tbaa !4
  br label %for.inc1531

for.inc1531:                                      ; preds = %cond.end1332, %if.then1474, %if.else1419
  %indvars.iv.next8707 = add i64 %indvars.iv8706, 1
  %lftr.wideiv8708 = trunc i64 %indvars.iv.next8707 to i32
  %exitcond8709 = icmp eq i32 %lftr.wideiv8708, 4
  br i1 %exitcond8709, label %for.inc1534, label %for.body1315

for.inc1534:                                      ; preds = %for.inc1531
  %indvars.iv.next8711 = add i64 %indvars.iv8710, 1
  %lftr.wideiv8712 = trunc i64 %indvars.iv.next8711 to i32
  %exitcond8713 = icmp eq i32 %lftr.wideiv8712, 4
  br i1 %exitcond8713, label %if.end2087, label %for.cond1312.preheader

if.else1539:                                      ; preds = %if.end925
  %290 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %cmp1540, label %if.then1542, label %if.else1814

if.then1542:                                      ; preds = %if.else1539
  %block_y1543 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 32
  %291 = load i32* %block_y1543, align 4, !tbaa !3
  %292 = shl nsw i64 %indvars.iv8722, 1
  %293 = trunc i64 %292 to i32
  %add1545 = add nsw i32 %291, %293
  %cmp1555 = icmp eq i16 %best_pdir.0, 1
  %cmp1680 = icmp eq i16 %best_pdir.0, 0
  %cmp1756 = icmp sgt i16 %best_bw_ref.5, -1
  %idxprom1760 = sext i16 %best_bw_ref.5 to i64
  %idxprom1631 = sext i16 %best_fw_ref.5 to i64
  %294 = sext i32 %add1545 to i64
  %.pre9105.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %block_x1560.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 31
  %.pre9144.pre = load i32* %block_x1560.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %ref_idx1563.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 32
  %.pre9145.pre = load i16**** %ref_idx1563.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9156.pre = load i16*** %.pre9145.pre, align 8, !tbaa !0
  br label %for.cond1550.preheader

for.cond1550.preheader:                           ; preds = %for.inc1811, %if.then1542
  %indvars.iv8683 = phi i64 [ 0, %if.then1542 ], [ %indvars.iv.next8684, %for.inc1811 ]
  %295 = add nsw i64 %294, %indvars.iv8683
  %296 = add nsw i64 %indvars.iv8683, %292
  br label %for.body1553

for.body1553:                                     ; preds = %for.inc1808, %for.cond1550.preheader
  %indvars.iv8679 = phi i64 [ 0, %for.cond1550.preheader ], [ %indvars.iv.next8680, %for.inc1808 ]
  %297 = trunc i64 %indvars.iv8679 to i32
  %add1561 = add nsw i32 %.pre9144.pre, %297
  %idxprom1562 = sext i32 %add1561 to i64
  %arrayidx1565 = getelementptr inbounds i16** %.pre9156.pre, i64 %idxprom1562
  %298 = load i16** %arrayidx1565, align 8, !tbaa !0
  %arrayidx1566 = getelementptr inbounds i16* %298, i64 %295
  br i1 %cmp1555, label %if.then1557, label %if.else1596

if.then1557:                                      ; preds = %for.body1553
  store i16 -1, i16* %arrayidx1566, align 2, !tbaa !4
  %ref_pic_id1572 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 33
  %299 = load i64**** %ref_pic_id1572, align 8, !tbaa !0
  %300 = load i64*** %299, align 8, !tbaa !0
  %arrayidx1574 = getelementptr inbounds i64** %300, i64 %idxprom1562
  %301 = load i64** %arrayidx1574, align 8, !tbaa !0
  %arrayidx1575 = getelementptr inbounds i64* %301, i64 %295
  store i64 -1, i64* %arrayidx1575, align 8, !tbaa !5
  %mv1581 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 35
  %302 = load i16***** %mv1581, align 8, !tbaa !0
  %303 = load i16**** %302, align 8, !tbaa !0
  %arrayidx1583 = getelementptr inbounds i16*** %303, i64 %idxprom1562
  %304 = load i16*** %arrayidx1583, align 8, !tbaa !0
  %arrayidx1584 = getelementptr inbounds i16** %304, i64 %295
  %305 = load i16** %arrayidx1584, align 8, !tbaa !0
  store i16 0, i16* %305, align 2, !tbaa !4
  %arrayidx1595 = getelementptr inbounds i16* %305, i64 1
  store i16 0, i16* %arrayidx1595, align 2, !tbaa !4
  br label %if.end1676

if.else1596:                                      ; preds = %for.body1553
  store i16 %best_fw_ref.5, i16* %arrayidx1566, align 2, !tbaa !4
  %arrayidx1620 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 6, i64 %idxprom5808171, i64 %idxprom1631
  %306 = load i64* %arrayidx1620, align 8, !tbaa !5
  %ref_pic_id1626 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 33
  %307 = load i64**** %ref_pic_id1626, align 8, !tbaa !0
  %308 = load i64*** %307, align 8, !tbaa !0
  %arrayidx1628 = getelementptr inbounds i64** %308, i64 %idxprom1562
  %309 = load i64** %arrayidx1628, align 8, !tbaa !0
  %arrayidx1629 = getelementptr inbounds i64* %309, i64 %295
  store i64 %306, i64* %arrayidx1629, align 8, !tbaa !5
  %all_mv1636 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 71
  %310 = load i16******* %all_mv1636, align 8, !tbaa !0
  %arrayidx1637 = getelementptr inbounds i16****** %310, i64 %indvars.iv8679
  %311 = load i16****** %arrayidx1637, align 8, !tbaa !0
  %arrayidx1638 = getelementptr inbounds i16***** %311, i64 %296
  %312 = load i16***** %arrayidx1638, align 8, !tbaa !0
  %313 = load i16**** %312, align 8, !tbaa !0
  %arrayidx1640 = getelementptr inbounds i16*** %313, i64 %idxprom1631
  %314 = load i16*** %arrayidx1640, align 8, !tbaa !0
  %arrayidx1641 = getelementptr inbounds i16** %314, i64 %indvars.iv8735
  %315 = load i16** %arrayidx1641, align 8, !tbaa !0
  %316 = load i16* %315, align 2, !tbaa !4
  %mv1648 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 35
  %317 = load i16***** %mv1648, align 8, !tbaa !0
  %318 = load i16**** %317, align 8, !tbaa !0
  %arrayidx1650 = getelementptr inbounds i16*** %318, i64 %idxprom1562
  %319 = load i16*** %arrayidx1650, align 8, !tbaa !0
  %arrayidx1651 = getelementptr inbounds i16** %319, i64 %295
  %320 = load i16** %arrayidx1651, align 8, !tbaa !0
  store i16 %316, i16* %320, align 2, !tbaa !4
  %arrayidx1665 = getelementptr inbounds i16* %315, i64 1
  %321 = load i16* %arrayidx1665, align 2, !tbaa !4
  %arrayidx1675 = getelementptr inbounds i16* %320, i64 1
  store i16 %321, i16* %arrayidx1675, align 2, !tbaa !4
  br label %if.end1676

if.end1676:                                       ; preds = %if.else1596, %if.then1557
  %322 = phi i64*** [ %307, %if.else1596 ], [ %299, %if.then1557 ]
  %323 = phi i16**** [ %317, %if.else1596 ], [ %302, %if.then1557 ]
  br i1 %cmp15, label %if.then1678, label %for.inc1808

if.then1678:                                      ; preds = %if.end1676
  %arrayidx1689 = getelementptr inbounds i16*** %.pre9145.pre, i64 1
  %324 = load i16*** %arrayidx1689, align 8, !tbaa !0
  %arrayidx1690 = getelementptr inbounds i16** %324, i64 %idxprom1562
  %325 = load i16** %arrayidx1690, align 8, !tbaa !0
  %arrayidx1691 = getelementptr inbounds i16* %325, i64 %295
  br i1 %cmp1680, label %if.then1682, label %if.else1721

if.then1682:                                      ; preds = %if.then1678
  store i16 -1, i16* %arrayidx1691, align 2, !tbaa !4
  %arrayidx1698 = getelementptr inbounds i64*** %322, i64 1
  %326 = load i64*** %arrayidx1698, align 8, !tbaa !0
  %arrayidx1699 = getelementptr inbounds i64** %326, i64 %idxprom1562
  %327 = load i64** %arrayidx1699, align 8, !tbaa !0
  %arrayidx1700 = getelementptr inbounds i64* %327, i64 %295
  store i64 -1, i64* %arrayidx1700, align 8, !tbaa !5
  %arrayidx1707 = getelementptr inbounds i16**** %323, i64 1
  %328 = load i16**** %arrayidx1707, align 8, !tbaa !0
  %arrayidx1708 = getelementptr inbounds i16*** %328, i64 %idxprom1562
  %329 = load i16*** %arrayidx1708, align 8, !tbaa !0
  %arrayidx1709 = getelementptr inbounds i16** %329, i64 %295
  %330 = load i16** %arrayidx1709, align 8, !tbaa !0
  store i16 0, i16* %330, align 2, !tbaa !4
  %arrayidx1720 = getelementptr inbounds i16* %330, i64 1
  store i16 0, i16* %arrayidx1720, align 2, !tbaa !4
  br label %for.inc1808

if.else1721:                                      ; preds = %if.then1678
  store i16 %best_bw_ref.5, i16* %arrayidx1691, align 2, !tbaa !4
  %arrayidx1745 = getelementptr inbounds %struct.storable_picture* %.pre9105.pre, i64 0, i32 6, i64 %idxprom13508184, i64 %idxprom1760
  %331 = load i64* %arrayidx1745, align 8, !tbaa !5
  %arrayidx1752 = getelementptr inbounds i64*** %322, i64 1
  %332 = load i64*** %arrayidx1752, align 8, !tbaa !0
  %arrayidx1753 = getelementptr inbounds i64** %332, i64 %idxprom1562
  %333 = load i64** %arrayidx1753, align 8, !tbaa !0
  %arrayidx1754 = getelementptr inbounds i64* %333, i64 %295
  store i64 %331, i64* %arrayidx1754, align 8, !tbaa !5
  br i1 %cmp1756, label %if.then1758, label %for.inc1808

if.then1758:                                      ; preds = %if.else1721
  %all_mv1765 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 71
  %334 = load i16******* %all_mv1765, align 8, !tbaa !0
  %arrayidx1766 = getelementptr inbounds i16****** %334, i64 %indvars.iv8679
  %335 = load i16****** %arrayidx1766, align 8, !tbaa !0
  %arrayidx1767 = getelementptr inbounds i16***** %335, i64 %296
  %336 = load i16***** %arrayidx1767, align 8, !tbaa !0
  %arrayidx1768 = getelementptr inbounds i16**** %336, i64 1
  %337 = load i16**** %arrayidx1768, align 8, !tbaa !0
  %arrayidx1769 = getelementptr inbounds i16*** %337, i64 %idxprom1760
  %338 = load i16*** %arrayidx1769, align 8, !tbaa !0
  %arrayidx1770 = getelementptr inbounds i16** %338, i64 %indvars.iv8735
  %339 = load i16** %arrayidx1770, align 8, !tbaa !0
  %340 = load i16* %339, align 2, !tbaa !4
  %arrayidx1778 = getelementptr inbounds i16**** %323, i64 1
  %341 = load i16**** %arrayidx1778, align 8, !tbaa !0
  %arrayidx1779 = getelementptr inbounds i16*** %341, i64 %idxprom1562
  %342 = load i16*** %arrayidx1779, align 8, !tbaa !0
  %arrayidx1780 = getelementptr inbounds i16** %342, i64 %295
  %343 = load i16** %arrayidx1780, align 8, !tbaa !0
  store i16 %340, i16* %343, align 2, !tbaa !4
  %arrayidx1794 = getelementptr inbounds i16* %339, i64 1
  %344 = load i16* %arrayidx1794, align 2, !tbaa !4
  %arrayidx1804 = getelementptr inbounds i16* %343, i64 1
  store i16 %344, i16* %arrayidx1804, align 2, !tbaa !4
  br label %for.inc1808

for.inc1808:                                      ; preds = %if.end1676, %if.else1721, %if.then1758, %if.then1682
  %indvars.iv.next8680 = add i64 %indvars.iv8679, 1
  %lftr.wideiv8681 = trunc i64 %indvars.iv.next8680 to i32
  %exitcond8682 = icmp eq i32 %lftr.wideiv8681, 4
  br i1 %exitcond8682, label %for.inc1811, label %for.body1553

for.inc1811:                                      ; preds = %for.inc1808
  %indvars.iv.next8684 = add i64 %indvars.iv8683, 1
  %lftr.wideiv8688 = trunc i64 %indvars.iv.next8684 to i32
  %exitcond8689 = icmp eq i32 %lftr.wideiv8688, 2
  br i1 %exitcond8689, label %if.end2087, label %for.cond1550.preheader

if.else1814:                                      ; preds = %if.else1539
  %block_x1815 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 31
  %345 = load i32* %block_x1815, align 4, !tbaa !3
  %346 = shl nsw i64 %indvars.iv8722, 1
  %347 = trunc i64 %346 to i32
  %add1817 = add nsw i32 %345, %347
  %cmp1827 = icmp eq i16 %best_pdir.0, 1
  %cmp1952 = icmp eq i16 %best_pdir.0, 0
  %cmp2028 = icmp sgt i16 %best_bw_ref.5, -1
  %idxprom2032 = sext i16 %best_bw_ref.5 to i64
  %idxprom1903 = sext i16 %best_fw_ref.5 to i64
  %348 = sext i32 %add1817 to i64
  %.pre9106.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %block_y1830.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 32
  %.pre9147.pre = load i32* %block_y1830.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %ref_idx1835.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 32
  %.pre9148.pre = load i16**** %ref_idx1835.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9159.pre = load i16*** %.pre9148.pre, align 8, !tbaa !0
  br label %for.cond1822.preheader

for.cond1822.preheader:                           ; preds = %for.inc2083, %if.else1814
  %indvars.iv8675 = phi i64 [ 0, %if.else1814 ], [ %indvars.iv.next8676, %for.inc2083 ]
  br label %for.body1825

for.body1825:                                     ; preds = %for.inc2080, %for.cond1822.preheader
  %indvars.iv8668 = phi i64 [ 0, %for.cond1822.preheader ], [ %indvars.iv.next8669, %for.inc2080 ]
  %349 = trunc i64 %indvars.iv8675 to i32
  %add1831 = add nsw i32 %.pre9147.pre, %349
  %idxprom1832 = sext i32 %add1831 to i64
  %350 = add nsw i64 %348, %indvars.iv8668
  %arrayidx1837 = getelementptr inbounds i16** %.pre9159.pre, i64 %350
  %351 = load i16** %arrayidx1837, align 8, !tbaa !0
  %arrayidx1838 = getelementptr inbounds i16* %351, i64 %idxprom1832
  br i1 %cmp1827, label %if.then1829, label %if.else1868

if.then1829:                                      ; preds = %for.body1825
  store i16 -1, i16* %arrayidx1838, align 2, !tbaa !4
  %ref_pic_id1844 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 33
  %352 = load i64**** %ref_pic_id1844, align 8, !tbaa !0
  %353 = load i64*** %352, align 8, !tbaa !0
  %arrayidx1846 = getelementptr inbounds i64** %353, i64 %350
  %354 = load i64** %arrayidx1846, align 8, !tbaa !0
  %arrayidx1847 = getelementptr inbounds i64* %354, i64 %idxprom1832
  store i64 -1, i64* %arrayidx1847, align 8, !tbaa !5
  %mv1853 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 35
  %355 = load i16***** %mv1853, align 8, !tbaa !0
  %356 = load i16**** %355, align 8, !tbaa !0
  %arrayidx1855 = getelementptr inbounds i16*** %356, i64 %350
  %357 = load i16*** %arrayidx1855, align 8, !tbaa !0
  %arrayidx1856 = getelementptr inbounds i16** %357, i64 %idxprom1832
  %358 = load i16** %arrayidx1856, align 8, !tbaa !0
  store i16 0, i16* %358, align 2, !tbaa !4
  %arrayidx1867 = getelementptr inbounds i16* %358, i64 1
  store i16 0, i16* %arrayidx1867, align 2, !tbaa !4
  br label %if.end1948

if.else1868:                                      ; preds = %for.body1825
  store i16 %best_fw_ref.5, i16* %arrayidx1838, align 2, !tbaa !4
  %arrayidx1892 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 6, i64 %idxprom5808171, i64 %idxprom1903
  %359 = load i64* %arrayidx1892, align 8, !tbaa !5
  %ref_pic_id1898 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 33
  %360 = load i64**** %ref_pic_id1898, align 8, !tbaa !0
  %361 = load i64*** %360, align 8, !tbaa !0
  %arrayidx1900 = getelementptr inbounds i64** %361, i64 %350
  %362 = load i64** %arrayidx1900, align 8, !tbaa !0
  %arrayidx1901 = getelementptr inbounds i64* %362, i64 %idxprom1832
  store i64 %359, i64* %arrayidx1901, align 8, !tbaa !5
  %363 = add nsw i64 %indvars.iv8668, %346
  %all_mv1908 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 71
  %364 = load i16******* %all_mv1908, align 8, !tbaa !0
  %arrayidx1909 = getelementptr inbounds i16****** %364, i64 %363
  %365 = load i16****** %arrayidx1909, align 8, !tbaa !0
  %arrayidx1910 = getelementptr inbounds i16***** %365, i64 %indvars.iv8675
  %366 = load i16***** %arrayidx1910, align 8, !tbaa !0
  %367 = load i16**** %366, align 8, !tbaa !0
  %arrayidx1912 = getelementptr inbounds i16*** %367, i64 %idxprom1903
  %368 = load i16*** %arrayidx1912, align 8, !tbaa !0
  %arrayidx1913 = getelementptr inbounds i16** %368, i64 %indvars.iv8735
  %369 = load i16** %arrayidx1913, align 8, !tbaa !0
  %370 = load i16* %369, align 2, !tbaa !4
  %mv1920 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 35
  %371 = load i16***** %mv1920, align 8, !tbaa !0
  %372 = load i16**** %371, align 8, !tbaa !0
  %arrayidx1922 = getelementptr inbounds i16*** %372, i64 %350
  %373 = load i16*** %arrayidx1922, align 8, !tbaa !0
  %arrayidx1923 = getelementptr inbounds i16** %373, i64 %idxprom1832
  %374 = load i16** %arrayidx1923, align 8, !tbaa !0
  store i16 %370, i16* %374, align 2, !tbaa !4
  %arrayidx1937 = getelementptr inbounds i16* %369, i64 1
  %375 = load i16* %arrayidx1937, align 2, !tbaa !4
  %arrayidx1947 = getelementptr inbounds i16* %374, i64 1
  store i16 %375, i16* %arrayidx1947, align 2, !tbaa !4
  br label %if.end1948

if.end1948:                                       ; preds = %if.else1868, %if.then1829
  %376 = phi i64*** [ %360, %if.else1868 ], [ %352, %if.then1829 ]
  %377 = phi i16**** [ %371, %if.else1868 ], [ %355, %if.then1829 ]
  br i1 %cmp15, label %if.then1950, label %for.inc2080

if.then1950:                                      ; preds = %if.end1948
  %arrayidx1961 = getelementptr inbounds i16*** %.pre9148.pre, i64 1
  %378 = load i16*** %arrayidx1961, align 8, !tbaa !0
  %arrayidx1962 = getelementptr inbounds i16** %378, i64 %350
  %379 = load i16** %arrayidx1962, align 8, !tbaa !0
  %arrayidx1963 = getelementptr inbounds i16* %379, i64 %idxprom1832
  br i1 %cmp1952, label %if.then1954, label %if.else1993

if.then1954:                                      ; preds = %if.then1950
  store i16 -1, i16* %arrayidx1963, align 2, !tbaa !4
  %arrayidx1970 = getelementptr inbounds i64*** %376, i64 1
  %380 = load i64*** %arrayidx1970, align 8, !tbaa !0
  %arrayidx1971 = getelementptr inbounds i64** %380, i64 %350
  %381 = load i64** %arrayidx1971, align 8, !tbaa !0
  %arrayidx1972 = getelementptr inbounds i64* %381, i64 %idxprom1832
  store i64 -1, i64* %arrayidx1972, align 8, !tbaa !5
  %arrayidx1979 = getelementptr inbounds i16**** %377, i64 1
  %382 = load i16**** %arrayidx1979, align 8, !tbaa !0
  %arrayidx1980 = getelementptr inbounds i16*** %382, i64 %350
  %383 = load i16*** %arrayidx1980, align 8, !tbaa !0
  %arrayidx1981 = getelementptr inbounds i16** %383, i64 %idxprom1832
  %384 = load i16** %arrayidx1981, align 8, !tbaa !0
  store i16 0, i16* %384, align 2, !tbaa !4
  %arrayidx1992 = getelementptr inbounds i16* %384, i64 1
  store i16 0, i16* %arrayidx1992, align 2, !tbaa !4
  br label %for.inc2080

if.else1993:                                      ; preds = %if.then1950
  store i16 %best_bw_ref.5, i16* %arrayidx1963, align 2, !tbaa !4
  %arrayidx2017 = getelementptr inbounds %struct.storable_picture* %.pre9106.pre, i64 0, i32 6, i64 %idxprom13508184, i64 %idxprom2032
  %385 = load i64* %arrayidx2017, align 8, !tbaa !5
  %arrayidx2024 = getelementptr inbounds i64*** %376, i64 1
  %386 = load i64*** %arrayidx2024, align 8, !tbaa !0
  %arrayidx2025 = getelementptr inbounds i64** %386, i64 %350
  %387 = load i64** %arrayidx2025, align 8, !tbaa !0
  %arrayidx2026 = getelementptr inbounds i64* %387, i64 %idxprom1832
  store i64 %385, i64* %arrayidx2026, align 8, !tbaa !5
  br i1 %cmp2028, label %if.then2030, label %for.inc2080

if.then2030:                                      ; preds = %if.else1993
  %388 = add nsw i64 %indvars.iv8668, %346
  %all_mv2037 = getelementptr inbounds %struct.ImageParameters* %290, i64 0, i32 71
  %389 = load i16******* %all_mv2037, align 8, !tbaa !0
  %arrayidx2038 = getelementptr inbounds i16****** %389, i64 %388
  %390 = load i16****** %arrayidx2038, align 8, !tbaa !0
  %arrayidx2039 = getelementptr inbounds i16***** %390, i64 %indvars.iv8675
  %391 = load i16***** %arrayidx2039, align 8, !tbaa !0
  %arrayidx2040 = getelementptr inbounds i16**** %391, i64 1
  %392 = load i16**** %arrayidx2040, align 8, !tbaa !0
  %arrayidx2041 = getelementptr inbounds i16*** %392, i64 %idxprom2032
  %393 = load i16*** %arrayidx2041, align 8, !tbaa !0
  %arrayidx2042 = getelementptr inbounds i16** %393, i64 %indvars.iv8735
  %394 = load i16** %arrayidx2042, align 8, !tbaa !0
  %395 = load i16* %394, align 2, !tbaa !4
  %arrayidx2050 = getelementptr inbounds i16**** %377, i64 1
  %396 = load i16**** %arrayidx2050, align 8, !tbaa !0
  %arrayidx2051 = getelementptr inbounds i16*** %396, i64 %350
  %397 = load i16*** %arrayidx2051, align 8, !tbaa !0
  %arrayidx2052 = getelementptr inbounds i16** %397, i64 %idxprom1832
  %398 = load i16** %arrayidx2052, align 8, !tbaa !0
  store i16 %395, i16* %398, align 2, !tbaa !4
  %arrayidx2066 = getelementptr inbounds i16* %394, i64 1
  %399 = load i16* %arrayidx2066, align 2, !tbaa !4
  %arrayidx2076 = getelementptr inbounds i16* %398, i64 1
  store i16 %399, i16* %arrayidx2076, align 2, !tbaa !4
  br label %for.inc2080

for.inc2080:                                      ; preds = %if.end1948, %if.else1993, %if.then2030, %if.then1954
  %indvars.iv.next8669 = add i64 %indvars.iv8668, 1
  %lftr.wideiv8673 = trunc i64 %indvars.iv.next8669 to i32
  %exitcond8674 = icmp eq i32 %lftr.wideiv8673, 2
  br i1 %exitcond8674, label %for.inc2083, label %for.body1825

for.inc2083:                                      ; preds = %for.inc2080
  %indvars.iv.next8676 = add i64 %indvars.iv8675, 1
  %lftr.wideiv8677 = trunc i64 %indvars.iv.next8676 to i32
  %exitcond8678 = icmp eq i32 %lftr.wideiv8677, 4
  br i1 %exitcond8678, label %if.end2087, label %for.cond1822.preheader

if.end2087:                                       ; preds = %for.inc1304, %for.inc1534, %for.inc1811, %for.inc2083, %if.end1224
  switch i32 %104, label %if.else2131 [
    i32 3, label %if.then2090
    i32 2, label %if.then2109
  ]

if.then2090:                                      ; preds = %if.end2087
  %400 = add nsw i64 %indvars.iv8722, 2
  %arrayidx2093 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 3, i64 %400
  store i16 %best_fw_ref.5, i16* %arrayidx2093, align 2, !tbaa !4
  %arrayidx2095 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 3, i64 %indvars.iv8722
  store i16 %best_fw_ref.5, i16* %arrayidx2095, align 2, !tbaa !4
  %arrayidx2098 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 3, i64 %400
  store i16 %best_pdir.0, i16* %arrayidx2098, align 2, !tbaa !4
  %arrayidx2100 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 3, i64 %indvars.iv8722
  store i16 %best_pdir.0, i16* %arrayidx2100, align 2, !tbaa !4
  %arrayidx2103 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 3, i64 %400
  store i16 %best_bw_ref.5, i16* %arrayidx2103, align 2, !tbaa !4
  %arrayidx2105 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 3, i64 %indvars.iv8722
  store i16 %best_bw_ref.5, i16* %arrayidx2105, align 2, !tbaa !4
  br label %if.end2133

if.then2109:                                      ; preds = %if.end2087
  %401 = shl nsw i64 %indvars.iv8722, 1
  %402 = or i64 %401, 1
  %arrayidx2113 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 2, i64 %402
  store i16 %best_fw_ref.5, i16* %arrayidx2113, align 2, !tbaa !4
  %arrayidx2116 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 2, i64 %401
  store i16 %best_fw_ref.5, i16* %arrayidx2116, align 4, !tbaa !4
  %arrayidx2120 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 2, i64 %402
  store i16 %best_pdir.0, i16* %arrayidx2120, align 2, !tbaa !4
  %arrayidx2123 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 2, i64 %401
  store i16 %best_pdir.0, i16* %arrayidx2123, align 4, !tbaa !4
  %arrayidx2127 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 2, i64 %402
  store i16 %best_bw_ref.5, i16* %arrayidx2127, align 2, !tbaa !4
  %arrayidx2130 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 2, i64 %401
  store i16 %best_bw_ref.5, i16* %arrayidx2130, align 4, !tbaa !4
  br label %if.end2133

if.else2131:                                      ; preds = %if.end2087
  store i16 %best_fw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8fwref, i64 0, i64 1, i64 3), align 2, !tbaa !4
  store i16 %best_fw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8fwref, i64 0, i64 1, i64 2), align 4, !tbaa !4
  store i16 %best_fw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8fwref, i64 0, i64 1, i64 1), align 2, !tbaa !4
  store i16 %best_fw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8fwref, i64 0, i64 1, i64 0), align 8, !tbaa !4
  store i16 %best_pdir.0, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 3), align 2, !tbaa !4
  store i16 %best_pdir.0, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 2), align 4, !tbaa !4
  store i16 %best_pdir.0, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 1), align 2, !tbaa !4
  store i16 %best_pdir.0, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 0), align 8, !tbaa !4
  store i16 %best_bw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8bwref, i64 0, i64 1, i64 3), align 2, !tbaa !4
  store i16 %best_bw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8bwref, i64 0, i64 1, i64 2), align 4, !tbaa !4
  store i16 %best_bw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8bwref, i64 0, i64 1, i64 1), align 2, !tbaa !4
  store i16 %best_bw_ref.5, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8bwref, i64 0, i64 1, i64 0), align 8, !tbaa !4
  br label %if.end2133

if.end2133:                                       ; preds = %if.then2109, %if.else2131, %if.then2090
  %cmp2137 = icmp eq i32 %105, 0
  %or.cond8222 = and i1 %cmp2134, %cmp2137
  br i1 %or.cond8222, label %if.then2139, label %for.inc2144

if.then2139:                                      ; preds = %if.end2133
  %conv21408172 = zext i16 %best_pdir.0 to i32
  %conv2141 = sext i16 %best_fw_ref.5 to i32
  %conv2142 = sext i16 %best_bw_ref.5 to i32
  call void @SetRefAndMotionVectors(i32 0, i32 %104, i32 %conv21408172, i32 %conv2141, i32 %conv2142) #10
  br label %for.inc2144

for.inc2144:                                      ; preds = %if.end2133, %if.then2139
  %indvars.iv.next8723 = add i64 %indvars.iv8722, 1
  %403 = trunc i64 %indvars.iv.next8723 to i32
  %cmp558 = icmp slt i32 %403, %cond557
  br i1 %cmp558, label %for.body560, label %for.end2146

for.end2146:                                      ; preds = %for.inc2144
  %404 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2147 = getelementptr inbounds %struct.InputParameters* %404, i64 0, i32 85
  %405 = load i32* %rdopt2147, align 4, !tbaa !3
  %tobool2148 = icmp eq i32 %405, 0
  br i1 %tobool2148, label %if.then2149, label %if.end2156

if.then2149:                                      ; preds = %for.end2146
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %AllowTransform8x82150 = getelementptr inbounds %struct.InputParameters* %404, i64 0, i32 123
  %406 = load i32* %AllowTransform8x82150, align 4, !tbaa !3
  %tobool2151 = icmp eq i32 %406, 0
  br i1 %tobool2151, label %if.end2156, label %if.then2152

if.then2152:                                      ; preds = %if.then2149
  call void @SetModesAndRefframeForBlocks(i32 %104) #10
  %call2153 = call i32 @TransformDecision(i32 -1, i32* %cost) #8
  store i32 %call2153, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end2156

if.end2156:                                       ; preds = %if.then2149, %for.end2146, %if.then2152
  %407 = load i32* %cost, align 4, !tbaa !3
  %cmp2157 = icmp slt i32 %407, %min_cost.18385
  br i1 %cmp2157, label %if.then2159, label %for.inc2163

if.then2159:                                      ; preds = %if.end2156
  store i32 %104, i32* @best_mode, align 4, !tbaa !3
  %408 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.inc2163

for.inc2163:                                      ; preds = %for.body546, %if.then2159, %if.end2156
  %best_fw_ref.6 = phi i16 [ %best_fw_ref.5, %if.then2159 ], [ %best_fw_ref.5, %if.end2156 ], [ %best_fw_ref.18384, %for.body546 ]
  %min_cost.2 = phi i32 [ %407, %if.then2159 ], [ %min_cost.18385, %if.end2156 ], [ %min_cost.18385, %for.body546 ]
  %best_transform_flag.2 = phi i32 [ %408, %if.then2159 ], [ %best_transform_flag.18386, %if.end2156 ], [ %best_transform_flag.18386, %for.body546 ]
  %best_bw_ref.6 = phi i16 [ %best_bw_ref.5, %if.then2159 ], [ %best_bw_ref.5, %if.end2156 ], [ %best_bw_ref.18387, %for.body546 ]
  %indvars.iv.next8736 = add i64 %indvars.iv8735, 1
  %lftr.wideiv8737 = trunc i64 %indvars.iv.next8736 to i32
  %exitcond8738 = icmp eq i32 %lftr.wideiv8737, 4
  br i1 %exitcond8738, label %for.end2165, label %for.body546

for.end2165:                                      ; preds = %for.inc2163
  %409 = load i32* %arrayidx148, align 16, !tbaa !3
  %tobool2167 = icmp eq i32 %409, 0
  br i1 %tobool2167, label %if.end3930, label %if.then2168

if.then2168:                                      ; preds = %for.end2165
  store i32 2147483647, i32* @cost8_8x8ts, align 4, !tbaa !3
  %410 = load %struct.CSobj** @cs_mb, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %410) #8
  store i32 -1, i32* %all_blk_8x8, align 4, !tbaa !3
  %411 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x82169 = getelementptr inbounds %struct.InputParameters* %411, i64 0, i32 123
  %412 = load i32* %AllowTransform8x82169, align 4, !tbaa !3
  %tobool2170 = icmp eq i32 %412, 0
  br i1 %tobool2170, label %if.then2984, label %if.then2171

if.then2171:                                      ; preds = %if.then2168
  store i32 0, i32* @cnt_nonz_8x8, align 4, !tbaa !3
  store i32 0, i32* @cbp_blk8x8, align 4, !tbaa !3
  store i32 0, i32* @cbp8x8, align 4, !tbaa !3
  br label %for.body2187.lr.ph

for.body2187.lr.ph:                               ; preds = %if.then2171, %for.inc2975
  %indvars.iv8783 = phi i64 [ 0, %if.then2171 ], [ %indvars.iv.next8784, %for.inc2975 ]
  %best_bw_ref.78456 = phi i16 [ %best_bw_ref.6, %if.then2171 ], [ %best_bw_ref.13, %for.inc2975 ]
  %cost8x8_direct.18455 = phi i32 [ %cost8x8_direct.08602, %if.then2171 ], [ %cost8x8_direct.6, %for.inc2975 ]
  %have_direct.18454 = phi i32 [ %have_direct.08599, %if.then2171 ], [ %have_direct.5, %for.inc2975 ]
  %cost_direct.18453 = phi i32 [ 0, %if.then2171 ], [ %cost_direct.6, %for.inc2975 ]
  %cost8x8.08452 = phi i32 [ 0, %if.then2171 ], [ %cost8x8.1, %for.inc2975 ]
  %best_fw_ref.78451 = phi i16 [ %best_fw_ref.6, %if.then2171 ], [ %best_fw_ref.13, %for.inc2975 ]
  %best_cnt_nonz.18450 = phi i32 [ %best_cnt_nonz.08596, %if.then2171 ], [ %best_cnt_nonz.5, %for.inc2975 ]
  %rdcost.18449 = phi double [ %rdcost.08595, %if.then2171 ], [ %rdcost.4, %for.inc2975 ]
  %413 = trunc i64 %indvars.iv8783 to i32
  %div2176 = sdiv i32 %413, 2
  %shl = shl i32 %div2176, 3
  %rem2178 = srem i32 %413, 2
  %shl2179 = shl i32 %rem2178, 3
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %and2353 = and i32 %413, 2
  %414 = shl i64 %indvars.iv8783, 1
  %415 = trunc i64 %414 to i32
  %mul2359 = and i32 %415, 2
  %arrayidx2618 = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv8783
  %arrayidx2620 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv8783
  %arrayidx2622 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %indvars.iv8783
  %arrayidx2624 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %indvars.iv8783
  %shr26288163 = lshr i32 %413, 1
  %shl2629 = shl i32 %shr26288163, 3
  %shl2631 = shl i32 %rem2178, 1
  %add2632 = add nsw i32 %shl2631, %shl2629
  %shl2633 = shl i32 51, %add2632
  %neg = xor i32 %shl2633, -1
  %416 = shl i32 %rem2178, 3
  %417 = sext i32 %416 to i64
  %418 = shl i32 %div2176, 3
  %419 = sext i32 %418 to i64
  br label %for.body2187

for.body2187:                                     ; preds = %for.body2187.lr.ph, %for.inc2764
  %indvars.iv8765 = phi i64 [ %100, %for.body2187.lr.ph ], [ %indvars.iv.next8766, %for.inc2764 ]
  %rdcost.38459 = phi double [ 1.000000e+30, %for.body2187.lr.ph ], [ %rdcost.38460, %for.inc2764 ]
  %best_bw_ref.88433 = phi i16 [ %best_bw_ref.78456, %for.body2187.lr.ph ], [ %best_bw_ref.13, %for.inc2764 ]
  %cost8x8_direct.28432 = phi i32 [ %cost8x8_direct.18455, %for.body2187.lr.ph ], [ %cost8x8_direct.6, %for.inc2764 ]
  %have_direct.28431 = phi i32 [ %have_direct.18454, %for.body2187.lr.ph ], [ %have_direct.5, %for.inc2764 ]
  %cost_direct.28430 = phi i32 [ %cost_direct.18453, %for.body2187.lr.ph ], [ %cost_direct.6, %for.inc2764 ]
  %min_cost8x8.08426 = phi i32 [ 2147483647, %for.body2187.lr.ph ], [ %min_cost8x8.2, %for.inc2764 ]
  %best_fw_ref.88425 = phi i16 [ %best_fw_ref.78451, %for.body2187.lr.ph ], [ %best_fw_ref.13, %for.inc2764 ]
  %best_cnt_nonz.28423 = phi i32 [ %best_cnt_nonz.18450, %for.body2187.lr.ph ], [ %best_cnt_nonz.4, %for.inc2764 ]
  %rdcost.28421 = phi double [ %rdcost.18449, %for.body2187.lr.ph ], [ %rdcost.4, %for.inc2764 ]
  %arrayidx2189 = getelementptr inbounds [6 x i32]* @encode_one_macroblock.b8_mode_table, i64 0, i64 %indvars.iv8765
  %420 = load i32* %arrayidx2189, align 4, !tbaa !3
  %idxprom2190 = sext i32 %420 to i64
  %arrayidx2191 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %idxprom2190
  %421 = load i32* %arrayidx2191, align 4, !tbaa !3
  %tobool2192 = icmp eq i32 %421, 0
  %422 = trunc i64 %indvars.iv8765 to i32
  br i1 %tobool2192, label %lor.lhs.false2196, label %land.lhs.true2193

land.lhs.true2193:                                ; preds = %for.body2187
  switch i32 %422, label %if.then2201 [
    i32 5, label %land.lhs.true2199
    i32 0, label %land.lhs.true2199
  ]

lor.lhs.false2196:                                ; preds = %for.body2187
  switch i32 %422, label %for.inc2764 [
    i32 5, label %land.lhs.true2199
    i32 0, label %land.lhs.true2199
  ]

land.lhs.true2199:                                ; preds = %lor.lhs.false2196, %lor.lhs.false2196, %land.lhs.true2193, %land.lhs.true2193
  %423 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %423, i64 0, i32 27
  %424 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %tobool2200 = icmp eq i32 %424, 0
  br i1 %tobool2200, label %for.inc2764, label %land.lhs.true2199.if.then2201_crit_edge

land.lhs.true2199.if.then2201_crit_edge:          ; preds = %land.lhs.true2199
  %.pre9165 = trunc i64 %indvars.iv8765 to i32
  br label %if.then2201

if.then2201:                                      ; preds = %land.lhs.true2199.if.then2201_crit_edge, %land.lhs.true2193
  %.pre-phi9166 = phi i32 [ %.pre9165, %land.lhs.true2199.if.then2201_crit_edge ], [ %422, %land.lhs.true2193 ]
  store i64 0, i64* %curr_cbp_blk, align 8, !tbaa !5
  switch i32 %.pre-phi9166, label %if.else2278 [
    i32 5, label %if.then2204
    i32 0, label %if.then2204
  ]

if.then2204:                                      ; preds = %if.then2201, %if.then2201
  %425 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2205 = getelementptr inbounds %struct.InputParameters* %425, i64 0, i32 85
  %426 = load i32* %rdopt2205, align 4, !tbaa !3
  %tobool2206 = icmp eq i32 %426, 0
  br i1 %tobool2206, label %if.then2207, label %if.end2242

if.then2207:                                      ; preds = %if.then2204
  store i32 0, i32* %direct8x8_tmp, align 4, !tbaa !3
  %call2208 = call i32 @Get_Direct_Cost8x8(i32 %413, i32* %direct8x8_tmp) #8
  %cmp2209 = icmp eq i32 %call2208, 2147483647
  %cmp2212 = icmp eq i32 %cost_direct.28430, 2147483647
  %or.cond8223 = or i1 %cmp2209, %cmp2212
  br i1 %or.cond8223, label %if.end2218, label %if.else2215

if.else2215:                                      ; preds = %if.then2207
  %add2216 = add nsw i32 %call2208, %cost_direct.28430
  %427 = load i32* %direct8x8_tmp, align 4, !tbaa !3
  %add2217 = add nsw i32 %427, %cost8x8_direct.28432
  br label %if.end2218

if.end2218:                                       ; preds = %if.then2207, %if.else2215
  %cost_direct.3 = phi i32 [ %add2216, %if.else2215 ], [ 2147483647, %if.then2207 ]
  %cost8x8_direct.3 = phi i32 [ %add2217, %if.else2215 ], [ 2147483647, %if.then2207 ]
  %428 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x82219 = getelementptr inbounds %struct.InputParameters* %428, i64 0, i32 123
  %429 = load i32* %AllowTransform8x82219, align 4, !tbaa !3
  switch i32 %429, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2234
  ]

sw.bb:                                            ; preds = %if.end2218
  %430 = load i32* %direct8x8_tmp, align 4, !tbaa !3
  %cmp2220 = icmp slt i32 %430, %call2208
  br i1 %cmp2220, label %if.then2231, label %lor.lhs.false2222

lor.lhs.false2222:                                ; preds = %sw.bb
  %431 = load i32* %arrayidx11482818284, align 4, !tbaa !3
  %tobool2224 = icmp eq i32 %431, 0
  br i1 %tobool2224, label %if.then2231, label %land.lhs.true2225

land.lhs.true2225:                                ; preds = %lor.lhs.false2222
  %432 = load i32* %arrayidx1208286, align 8, !tbaa !3
  %tobool2227 = icmp eq i32 %432, 0
  br i1 %tobool2227, label %if.then2231, label %land.lhs.true2228

land.lhs.true2228:                                ; preds = %land.lhs.true2225
  %433 = load i32* %arrayidx126, align 4, !tbaa !3
  %tobool2230 = icmp eq i32 %433, 0
  br i1 %tobool2230, label %if.then2231, label %if.else2232

if.then2231:                                      ; preds = %land.lhs.true2228, %land.lhs.true2225, %lor.lhs.false2222, %sw.bb
  store i32 %430, i32* %cost, align 4, !tbaa !3
  br label %sw.epilog

if.else2232:                                      ; preds = %land.lhs.true2228
  store i32 %call2208, i32* %cost, align 4, !tbaa !3
  br label %sw.epilog

sw.bb2234:                                        ; preds = %if.end2218
  %434 = load i32* %direct8x8_tmp, align 4, !tbaa !3
  store i32 %434, i32* %cost, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end2218
  store i32 %call2208, i32* %cost, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then2231, %if.else2232, %sw.default, %sw.bb2234
  %435 = load i32* %AllowTransform8x82219, align 4, !tbaa !3
  %cmp2236 = icmp eq i32 %435, 2
  br i1 %cmp2236, label %if.then2238, label %if.end2240

if.then2238:                                      ; preds = %sw.epilog
  %add2239 = add nsw i32 %min_cost8x8.08426, 1
  store i32 %add2239, i32* %cost, align 4, !tbaa !3
  br label %if.end2240

if.end2240:                                       ; preds = %if.then2238, %sw.epilog
  %inc2241 = add nsw i32 %have_direct.28431, 1
  br label %if.end2242

if.end2242:                                       ; preds = %if.then2204, %if.end2240
  %cost_direct.4 = phi i32 [ %cost_direct.28430, %if.then2204 ], [ %cost_direct.3, %if.end2240 ]
  %have_direct.3 = phi i32 [ %have_direct.28431, %if.then2204 ], [ %inc2241, %if.end2240 ]
  %cost8x8_direct.4 = phi i32 [ %cost8x8_direct.28432, %if.then2204 ], [ %cost8x8_direct.3, %if.end2240 ]
  %436 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y2243 = getelementptr inbounds %struct.ImageParameters* %436, i64 0, i32 32
  %437 = load i32* %block_y2243, align 4, !tbaa !3
  %add2245 = add nsw i32 %437, %and2353
  %idxprom2246 = sext i32 %add2245 to i64
  %block_x2247 = getelementptr inbounds %struct.ImageParameters* %436, i64 0, i32 31
  %438 = load i32* %block_x2247, align 4, !tbaa !3
  %add2250 = add nsw i32 %438, %mul2359
  %idxprom2251 = sext i32 %add2250 to i64
  %439 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %440 = load i16*** %439, align 8, !tbaa !0
  %arrayidx2253 = getelementptr inbounds i16** %440, i64 %idxprom2251
  %441 = load i16** %arrayidx2253, align 8, !tbaa !0
  %arrayidx2254 = getelementptr inbounds i16* %441, i64 %idxprom2246
  %442 = load i16* %arrayidx2254, align 2, !tbaa !4
  %arrayidx2264 = getelementptr inbounds i16*** %439, i64 1
  %443 = load i16*** %arrayidx2264, align 8, !tbaa !0
  %arrayidx2265 = getelementptr inbounds i16** %443, i64 %idxprom2251
  %444 = load i16** %arrayidx2265, align 8, !tbaa !0
  %arrayidx2266 = getelementptr inbounds i16* %444, i64 %idxprom2246
  %445 = load i16* %arrayidx2266, align 2, !tbaa !4
  %446 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx2276 = getelementptr inbounds i16** %446, i64 %idxprom2251
  %447 = load i16** %arrayidx2276, align 8, !tbaa !0
  %arrayidx2277 = getelementptr inbounds i16* %447, i64 %idxprom2246
  %448 = load i16* %arrayidx2277, align 2, !tbaa !4
  br label %if.end2573

if.else2278:                                      ; preds = %if.then2201
  call void @PartitionMotionSearch(i32 %420, i32 %413, double %lambda_motion.0) #8
  %449 = load i32* %arrayidx581, align 4, !tbaa !3
  %cmp22848390 = icmp sgt i32 %449, 0
  br i1 %cmp22848390, label %for.body2286.lr.ph, label %for.cond2344.loopexit

for.body2286.lr.ph:                               ; preds = %if.else2278
  %450 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2297 = getelementptr inbounds %struct.InputParameters* %450, i64 0, i32 85
  %451 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx2331 = getelementptr inbounds i32**** %451, i64 %idxprom2190
  %452 = load i32** @refbits, align 8, !tbaa !0
  br label %for.body2286

for.body2286:                                     ; preds = %for.body2286.lr.ph, %for.inc2341
  %conv22808395 = phi i32 [ 0, %for.body2286.lr.ph ], [ %conv2280, %for.inc2341 ]
  %ref.28393 = phi i16 [ 0, %for.body2286.lr.ph ], [ %inc2342, %for.inc2341 ]
  %best_fw_ref.98392 = phi i16 [ %best_fw_ref.88425, %for.body2286.lr.ph ], [ %best_fw_ref.10, %for.inc2341 ]
  %fw_mcost.28391 = phi i32 [ 2147483647, %for.body2286.lr.ph ], [ %fw_mcost.3, %for.inc2341 ]
  %cmp2290 = icmp eq i16 %ref.28393, 0
  %or.cond8225 = or i1 %13, %cmp2290
  br i1 %or.cond8225, label %if.then2296, label %lor.lhs.false2292

lor.lhs.false2292:                                ; preds = %for.body2286
  %call2294 = call i32 @CheckReliabilityOfRef(i32 %413, i32 0, i32 %conv22808395, i32 %420) #10
  %tobool2295 = icmp eq i32 %call2294, 0
  br i1 %tobool2295, label %for.inc2341, label %if.then2296

if.then2296:                                      ; preds = %lor.lhs.false2292, %for.body2286
  %453 = load i32* %rdopt2297, align 4, !tbaa !3
  %tobool2298 = icmp eq i32 %453, 0
  br i1 %tobool2298, label %cond.false2313, label %cond.true2299

cond.true2299:                                    ; preds = %if.then2296
  %cmp2303 = icmp slt i32 %449, 2
  br i1 %cmp2303, label %cond.end2309, label %cond.false2306

cond.false2306:                                   ; preds = %cond.true2299
  %idxprom2307 = sext i16 %ref.28393 to i64
  %arrayidx2308 = getelementptr inbounds i32* %452, i64 %idxprom2307
  %454 = load i32* %arrayidx2308, align 4, !tbaa !3
  br label %cond.end2309

cond.end2309:                                     ; preds = %cond.true2299, %cond.false2306
  %cond2310 = phi i32 [ %454, %cond.false2306 ], [ 0, %cond.true2299 ]
  %mul2311 = mul nsw i32 %cond2310, %conv513
  %shr2312 = ashr i32 %mul2311, 16
  br label %cond.end2326

cond.false2313:                                   ; preds = %if.then2296
  %cmp2316 = icmp slt i16 %ref.28393, 1
  br i1 %cmp2316, label %cond.true2318, label %cond.end2321

cond.true2318:                                    ; preds = %cond.false2313
  %phitmp8170 = sitofp i16 %ref.28393 to double
  br label %cond.end2321

cond.end2321:                                     ; preds = %cond.false2313, %cond.true2318
  %cond2322 = phi double [ %phitmp8170, %cond.true2318 ], [ 1.000000e+00, %cond.false2313 ]
  %mul2324 = fmul double %mul781, %cond2322
  %conv2325 = fptosi double %mul2324 to i32
  br label %cond.end2326

cond.end2326:                                     ; preds = %cond.end2321, %cond.end2309
  %cond2327 = phi i32 [ %shr2312, %cond.end2309 ], [ %conv2325, %cond.end2321 ]
  %idxprom2329 = sext i16 %ref.28393 to i64
  %455 = load i32**** %arrayidx2331, align 8, !tbaa !0
  %456 = load i32*** %455, align 8, !tbaa !0
  %arrayidx2333 = getelementptr inbounds i32** %456, i64 %idxprom2329
  %457 = load i32** %arrayidx2333, align 8, !tbaa !0
  %arrayidx2334 = getelementptr inbounds i32* %457, i64 %indvars.iv8783
  %458 = load i32* %arrayidx2334, align 4, !tbaa !3
  %add2335 = add nsw i32 %458, %cond2327
  %cmp2336 = icmp slt i32 %add2335, %fw_mcost.28391
  %add2335.fw_mcost.2 = select i1 %cmp2336, i32 %add2335, i32 %fw_mcost.28391
  %ref.2.best_fw_ref.9 = select i1 %cmp2336, i16 %ref.28393, i16 %best_fw_ref.98392
  br label %for.inc2341

for.inc2341:                                      ; preds = %cond.end2326, %lor.lhs.false2292
  %fw_mcost.3 = phi i32 [ %fw_mcost.28391, %lor.lhs.false2292 ], [ %add2335.fw_mcost.2, %cond.end2326 ]
  %best_fw_ref.10 = phi i16 [ %best_fw_ref.98392, %lor.lhs.false2292 ], [ %ref.2.best_fw_ref.9, %cond.end2326 ]
  %inc2342 = add i16 %ref.28393, 1
  %conv2280 = sext i16 %inc2342 to i32
  %cmp2284 = icmp slt i32 %conv2280, %449
  br i1 %cmp2284, label %for.body2286, label %for.cond2344.loopexit

for.cond2344.loopexit:                            ; preds = %for.inc2341, %if.else2278
  %best_fw_ref.9.lcssa = phi i16 [ %best_fw_ref.88425, %if.else2278 ], [ %best_fw_ref.10, %for.inc2341 ]
  %fw_mcost.2.lcssa = phi i32 [ 2147483647, %if.else2278 ], [ %fw_mcost.3, %for.inc2341 ]
  %.pre9095.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y2352.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre9095.pre, i64 0, i32 32
  %.pre9096.pre = load i32* %block_y2352.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %block_x2357.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre9095.pre, i64 0, i32 31
  %.pre9097.pre = load i32* %block_x2357.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %.pre9098.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx2363.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9098.pre, i64 0, i32 32
  %.pre9099.pre = load i16**** %ref_idx2363.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9100.pre = load i16*** %.pre9099.pre, align 8, !tbaa !0
  %ref_pic_id2399.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9098.pre, i64 0, i32 33
  %.pre9101.pre = load i64**** %ref_pic_id2399.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9102.pre = load i64*** %.pre9101.pre, align 8, !tbaa !0
  br label %for.cond2348.preheader

for.cond2348.preheader:                           ; preds = %for.inc2406, %for.cond2344.loopexit
  %j.68401 = phi i32 [ 0, %for.cond2344.loopexit ], [ %inc2407, %for.inc2406 ]
  %add2354 = add i32 %j.68401, %and2353
  br label %for.body2351

for.body2351:                                     ; preds = %for.body2351, %for.cond2348.preheader
  %i.68400 = phi i32 [ 0, %for.cond2348.preheader ], [ %inc2404, %for.body2351 ]
  %add2355 = add i32 %add2354, %.pre9096.pre
  %idxprom2356 = sext i32 %add2355 to i64
  %add2360 = add i32 %i.68400, %mul2359
  %add2361 = add i32 %add2360, %.pre9097.pre
  %idxprom2362 = sext i32 %add2361 to i64
  %arrayidx2365 = getelementptr inbounds i16** %.pre9100.pre, i64 %idxprom2362
  %459 = load i16** %arrayidx2365, align 8, !tbaa !0
  %arrayidx2366 = getelementptr inbounds i16* %459, i64 %idxprom2356
  store i16 %best_fw_ref.9.lcssa, i16* %arrayidx2366, align 2, !tbaa !4
  %idxprom2382 = sext i16 %best_fw_ref.9.lcssa to i64
  %arrayidx2387 = getelementptr inbounds %struct.storable_picture* %.pre9098.pre, i64 0, i32 6, i64 %idxprom5808171, i64 %idxprom2382
  %460 = load i64* %arrayidx2387, align 8, !tbaa !5
  %arrayidx2401 = getelementptr inbounds i64** %.pre9102.pre, i64 %idxprom2362
  %461 = load i64** %arrayidx2401, align 8, !tbaa !0
  %arrayidx2402 = getelementptr inbounds i64* %461, i64 %idxprom2356
  store i64 %460, i64* %arrayidx2402, align 8, !tbaa !5
  %inc2404 = add nsw i32 %i.68400, 1
  %exitcond8739 = icmp eq i32 %inc2404, 2
  br i1 %exitcond8739, label %for.inc2406, label %for.body2351

for.inc2406:                                      ; preds = %for.body2351
  %inc2407 = add nsw i32 %j.68401, 1
  %exitcond8740 = icmp eq i32 %inc2407, 2
  br i1 %exitcond8740, label %for.end2408, label %for.cond2348.preheader

for.end2408:                                      ; preds = %for.inc2406
  br i1 %cmp15, label %for.cond2411.preheader, label %if.else2571

for.cond2411.preheader:                           ; preds = %for.end2408
  %462 = load i32* %arrayidx647, align 4, !tbaa !3
  %cmp24168402 = icmp sgt i32 %462, 0
  %463 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt24198403 = getelementptr inbounds %struct.InputParameters* %463, i64 0, i32 85
  %464 = load i32* %rdopt24198403, align 4, !tbaa !3
  %tobool24208404 = icmp ne i32 %464, 0
  br i1 %cmp24168402, label %for.body2418.lr.ph, label %for.end2464

for.body2418.lr.ph:                               ; preds = %for.cond2411.preheader
  %465 = load i32** @refbits, align 8, !tbaa !0
  %466 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx2453 = getelementptr inbounds i32**** %466, i64 %idxprom2190
  %467 = load i32**** %arrayidx2453, align 8, !tbaa !0
  %arrayidx2454 = getelementptr inbounds i32*** %467, i64 1
  %468 = load i32*** %arrayidx2454, align 8, !tbaa !0
  br label %for.body2418

for.body2418:                                     ; preds = %for.body2418.lr.ph, %cond.end2448
  %best_bw_ref.98407 = phi i16 [ %best_bw_ref.88433, %for.body2418.lr.ph ], [ %ref.3.best_bw_ref.9, %cond.end2448 ]
  %ref.38406 = phi i16 [ 0, %for.body2418.lr.ph ], [ %inc2463, %cond.end2448 ]
  %bw_mcost.28405 = phi i32 [ 2147483647, %for.body2418.lr.ph ], [ %add2457.bw_mcost.2, %cond.end2448 ]
  br i1 %tobool24208404, label %cond.true2421, label %cond.false2435

cond.true2421:                                    ; preds = %for.body2418
  %cmp2425 = icmp slt i32 %462, 2
  br i1 %cmp2425, label %cond.end2431, label %cond.false2428

cond.false2428:                                   ; preds = %cond.true2421
  %idxprom2429 = sext i16 %ref.38406 to i64
  %arrayidx2430 = getelementptr inbounds i32* %465, i64 %idxprom2429
  %469 = load i32* %arrayidx2430, align 4, !tbaa !3
  br label %cond.end2431

cond.end2431:                                     ; preds = %cond.true2421, %cond.false2428
  %cond2432 = phi i32 [ %469, %cond.false2428 ], [ 0, %cond.true2421 ]
  %mul2433 = mul nsw i32 %cond2432, %conv513
  %shr2434 = ashr i32 %mul2433, 16
  br label %cond.end2448

cond.false2435:                                   ; preds = %for.body2418
  %cmp2438 = icmp slt i16 %ref.38406, 1
  br i1 %cmp2438, label %cond.true2440, label %cond.end2443

cond.true2440:                                    ; preds = %cond.false2435
  %phitmp8169 = sitofp i16 %ref.38406 to double
  br label %cond.end2443

cond.end2443:                                     ; preds = %cond.false2435, %cond.true2440
  %cond2444 = phi double [ %phitmp8169, %cond.true2440 ], [ 1.000000e+00, %cond.false2435 ]
  %mul2446 = fmul double %mul781, %cond2444
  %conv2447 = fptosi double %mul2446 to i32
  br label %cond.end2448

cond.end2448:                                     ; preds = %cond.end2443, %cond.end2431
  %cond2449 = phi i32 [ %shr2434, %cond.end2431 ], [ %conv2447, %cond.end2443 ]
  %idxprom2451 = sext i16 %ref.38406 to i64
  %arrayidx2455 = getelementptr inbounds i32** %468, i64 %idxprom2451
  %470 = load i32** %arrayidx2455, align 8, !tbaa !0
  %arrayidx2456 = getelementptr inbounds i32* %470, i64 %indvars.iv8783
  %471 = load i32* %arrayidx2456, align 4, !tbaa !3
  %add2457 = add nsw i32 %471, %cond2449
  %cmp2458 = icmp slt i32 %add2457, %bw_mcost.28405
  %add2457.bw_mcost.2 = select i1 %cmp2458, i32 %add2457, i32 %bw_mcost.28405
  %ref.3.best_bw_ref.9 = select i1 %cmp2458, i16 %ref.38406, i16 %best_bw_ref.98407
  %inc2463 = add i16 %ref.38406, 1
  %conv2412 = sext i16 %inc2463 to i32
  %cmp2416 = icmp slt i32 %conv2412, %462
  br i1 %cmp2416, label %for.body2418, label %for.end2464

for.end2464:                                      ; preds = %cond.end2448, %for.cond2411.preheader
  %best_bw_ref.9.lcssa = phi i16 [ %best_bw_ref.88433, %for.cond2411.preheader ], [ %ref.3.best_bw_ref.9, %cond.end2448 ]
  %bw_mcost.2.lcssa = phi i32 [ 2147483647, %for.cond2411.preheader ], [ %add2457.bw_mcost.2, %cond.end2448 ]
  br i1 %tobool24208404, label %cond.true2467, label %cond.false2494

cond.true2467:                                    ; preds = %for.end2464
  %cmp2471 = icmp slt i32 %449, 2
  br i1 %cmp2471, label %cond.end2477, label %cond.false2474

cond.false2474:                                   ; preds = %cond.true2467
  %472 = load i32** @refbits, align 8, !tbaa !0
  %arrayidx2476 = getelementptr inbounds i32* %472, i64 %idxprom2382
  %473 = load i32* %arrayidx2476, align 4, !tbaa !3
  br label %cond.end2477

cond.end2477:                                     ; preds = %cond.true2467, %cond.false2474
  %cond2478 = phi i32 [ %473, %cond.false2474 ], [ 0, %cond.true2467 ]
  %mul2479 = mul nsw i32 %cond2478, %conv513
  %shr2480 = ashr i32 %mul2479, 16
  %cmp2484 = icmp slt i32 %462, 2
  br i1 %cmp2484, label %cond.end2489, label %cond.false2487

cond.false2487:                                   ; preds = %cond.end2477
  %474 = load i32** @refbits, align 8, !tbaa !0
  %475 = load i32* %474, align 4, !tbaa !3
  br label %cond.end2489

cond.end2489:                                     ; preds = %cond.end2477, %cond.false2487
  %cond2490 = phi i32 [ %475, %cond.false2487 ], [ 0, %cond.end2477 ]
  %mul2491 = mul nsw i32 %cond2490, %conv513
  %shr2492 = ashr i32 %mul2491, 16
  %add2493 = add nsw i32 %shr2492, %shr2480
  br label %cond.end2507

cond.false2494:                                   ; preds = %for.end2464
  %cmp2497 = icmp slt i16 %best_fw_ref.9.lcssa, 1
  br i1 %cmp2497, label %cond.true2499, label %cond.end2502

cond.true2499:                                    ; preds = %cond.false2494
  %phitmp8168 = sitofp i16 %best_fw_ref.9.lcssa to double
  br label %cond.end2502

cond.end2502:                                     ; preds = %cond.false2494, %cond.true2499
  %cond2503 = phi double [ %phitmp8168, %cond.true2499 ], [ 1.000000e+00, %cond.false2494 ]
  %mul2505 = fmul double %mul781, %cond2503
  %conv2506 = fptosi double %mul2505 to i32
  br label %cond.end2507

cond.end2507:                                     ; preds = %cond.end2502, %cond.end2489
  %cond2508 = phi i32 [ %add2493, %cond.end2489 ], [ %conv2506, %cond.end2502 ]
  %call2509 = call i32 @BIDPartitionCost(i32 %420, i32 %413, i16 signext %best_fw_ref.9.lcssa, i16 signext 0, i32 %conv513) #8
  %add2510 = add nsw i32 %call2509, %cond2508
  %cmp2511 = icmp sgt i32 %fw_mcost.2.lcssa, %bw_mcost.2.lcssa
  %cmp2514 = icmp sgt i32 %fw_mcost.2.lcssa, %add2510
  %or.cond8226 = or i1 %cmp2511, %cmp2514
  br i1 %or.cond8226, label %if.else2517, label %if.then2516

if.then2516:                                      ; preds = %cond.end2507
  store i32 %fw_mcost.2.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end2526

if.else2517:                                      ; preds = %cond.end2507
  %cmp2518 = icmp sgt i32 %bw_mcost.2.lcssa, %fw_mcost.2.lcssa
  %cmp2521 = icmp sgt i32 %bw_mcost.2.lcssa, %add2510
  %or.cond8227 = or i1 %cmp2518, %cmp2521
  br i1 %or.cond8227, label %if.else2524, label %if.then2523

if.then2523:                                      ; preds = %if.else2517
  store i32 %bw_mcost.2.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end2526

if.else2524:                                      ; preds = %if.else2517
  store i32 %add2510, i32* %cost, align 4, !tbaa !3
  br label %if.end2526

if.end2526:                                       ; preds = %if.then2523, %if.else2524, %if.then2516
  %best_fw_ref.11 = phi i16 [ %best_fw_ref.9.lcssa, %if.then2516 ], [ -1, %if.then2523 ], [ %best_fw_ref.9.lcssa, %if.else2524 ]
  %best_pdir.1 = phi i16 [ 0, %if.then2516 ], [ 1, %if.then2523 ], [ 2, %if.else2524 ]
  %best_bw_ref.11 = phi i16 [ -1, %if.then2516 ], [ %best_bw_ref.9.lcssa, %if.then2523 ], [ 0, %if.else2524 ]
  %476 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y2535 = getelementptr inbounds %struct.ImageParameters* %476, i64 0, i32 32
  %477 = load i32* %block_y2535, align 4, !tbaa !3
  %block_x2540 = getelementptr inbounds %struct.ImageParameters* %476, i64 0, i32 31
  %478 = load i32* %block_x2540, align 4, !tbaa !3
  %479 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx2546 = getelementptr inbounds %struct.storable_picture* %479, i64 0, i32 32
  %480 = load i16**** %ref_idx2546, align 8, !tbaa !0
  %481 = load i16*** %480, align 8, !tbaa !0
  %arrayidx2562 = getelementptr inbounds i16*** %480, i64 1
  %482 = load i16*** %arrayidx2562, align 8, !tbaa !0
  br label %for.cond2531.preheader

for.cond2531.preheader:                           ; preds = %for.inc2568, %if.end2526
  %indvars.iv8745 = phi i64 [ 0, %if.end2526 ], [ %indvars.iv.next8746, %for.inc2568 ]
  %483 = trunc i64 %indvars.iv8745 to i32
  %add2537 = add i32 %483, %and2353
  %add2538 = add i32 %add2537, %477
  %idxprom2539 = sext i32 %add2538 to i64
  br label %for.body2534

for.body2534:                                     ; preds = %for.body2534, %for.cond2531.preheader
  %indvars.iv8741 = phi i64 [ 0, %for.cond2531.preheader ], [ %indvars.iv.next8742, %for.body2534 ]
  %484 = trunc i64 %indvars.iv8741 to i32
  %add2543 = add i32 %484, %mul2359
  %add2544 = add i32 %add2543, %478
  %idxprom2545 = sext i32 %add2544 to i64
  %arrayidx2548 = getelementptr inbounds i16** %481, i64 %idxprom2545
  %485 = load i16** %arrayidx2548, align 8, !tbaa !0
  %arrayidx2549 = getelementptr inbounds i16* %485, i64 %idxprom2539
  store i16 %best_fw_ref.11, i16* %arrayidx2549, align 2, !tbaa !4
  %arrayidx2563 = getelementptr inbounds i16** %482, i64 %idxprom2545
  %486 = load i16** %arrayidx2563, align 8, !tbaa !0
  %arrayidx2564 = getelementptr inbounds i16* %486, i64 %idxprom2539
  store i16 %best_bw_ref.11, i16* %arrayidx2564, align 2, !tbaa !4
  %indvars.iv.next8742 = add i64 %indvars.iv8741, 1
  %lftr.wideiv8743 = trunc i64 %indvars.iv.next8742 to i32
  %exitcond8744 = icmp eq i32 %lftr.wideiv8743, 2
  br i1 %exitcond8744, label %for.inc2568, label %for.body2534

for.inc2568:                                      ; preds = %for.body2534
  %indvars.iv.next8746 = add i64 %indvars.iv8745, 1
  %lftr.wideiv8747 = trunc i64 %indvars.iv.next8746 to i32
  %exitcond8748 = icmp eq i32 %lftr.wideiv8747, 2
  br i1 %exitcond8748, label %if.end2573, label %for.cond2531.preheader

if.else2571:                                      ; preds = %for.end2408
  store i32 %fw_mcost.2.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end2573

if.end2573:                                       ; preds = %for.inc2568, %if.else2571, %if.end2242
  %best_fw_ref.12 = phi i16 [ %442, %if.end2242 ], [ %best_fw_ref.9.lcssa, %if.else2571 ], [ %best_fw_ref.11, %for.inc2568 ]
  %cost_direct.5 = phi i32 [ %cost_direct.4, %if.end2242 ], [ %cost_direct.28430, %if.else2571 ], [ %cost_direct.28430, %for.inc2568 ]
  %have_direct.4 = phi i32 [ %have_direct.3, %if.end2242 ], [ %have_direct.28431, %if.else2571 ], [ %have_direct.28431, %for.inc2568 ]
  %cost8x8_direct.5 = phi i32 [ %cost8x8_direct.4, %if.end2242 ], [ %cost8x8_direct.28432, %if.else2571 ], [ %cost8x8_direct.28432, %for.inc2568 ]
  %best_pdir.2 = phi i16 [ %448, %if.end2242 ], [ 0, %if.else2571 ], [ %best_pdir.1, %for.inc2568 ]
  %best_bw_ref.12 = phi i16 [ %445, %if.end2242 ], [ %best_bw_ref.88433, %if.else2571 ], [ %best_bw_ref.11, %for.inc2568 ]
  %487 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %487) #8
  %488 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2574 = getelementptr inbounds %struct.InputParameters* %488, i64 0, i32 85
  %489 = load i32* %rdopt2574, align 4, !tbaa !3
  %tobool2575 = icmp eq i32 %489, 0
  br i1 %tobool2575, label %if.else2578, label %if.then2576

if.then2576:                                      ; preds = %if.end2573
  %call2577 = call double @RDCost_for_8x8blocks(i32* %cnt_nonz, i64* %curr_cbp_blk, double %lambda_mode.4, i32 %413, i32 %420, i16 signext %best_pdir.2, i16 signext %best_fw_ref.12, i16 signext %best_bw_ref.12) #10
  br label %if.end2604

if.else2578:                                      ; preds = %if.end2573
  %490 = load i32* %cost, align 4, !tbaa !3
  %cmp2579 = icmp eq i32 %490, 2147483647
  br i1 %cmp2579, label %if.end2604, label %if.then2581

if.then2581:                                      ; preds = %if.else2578
  %not.cmp2583 = icmp sgt i16 %best_pdir.2, 0
  %cond2585 = zext i1 %not.cmp2583 to i32
  %add2586 = or i32 %cond2585, %list_offset.0
  %idxprom25878165 = zext i32 %add2586 to i64
  %arrayidx2588 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %idxprom25878165
  %491 = load i32* %arrayidx2588, align 4, !tbaa !3
  %cmp2589 = icmp slt i32 %491, 2
  br i1 %cmp2589, label %cond.end2597, label %cond.false2592

cond.false2592:                                   ; preds = %if.then2581
  %conv2582 = sext i16 %best_pdir.2 to i32
  %call2594 = call i32 @B8Mode2Value(i32 %420, i32 %conv2582) #8
  %idxprom2595 = sext i32 %call2594 to i64
  %492 = load i32** @refbits, align 8, !tbaa !0
  %arrayidx2596 = getelementptr inbounds i32* %492, i64 %idxprom2595
  %493 = load i32* %arrayidx2596, align 4, !tbaa !3
  %.pre9103 = load i32* %cost, align 4, !tbaa !3
  br label %cond.end2597

cond.end2597:                                     ; preds = %if.then2581, %cond.false2592
  %494 = phi i32 [ %.pre9103, %cond.false2592 ], [ %490, %if.then2581 ]
  %cond2598 = phi i32 [ %493, %cond.false2592 ], [ 0, %if.then2581 ]
  %mul2599 = mul nsw i32 %cond2598, %conv513
  %shr2600 = ashr i32 %mul2599, 16
  %sub2601 = add i32 %494, -1
  %add2602 = add i32 %sub2601, %shr2600
  store i32 %add2602, i32* %cost, align 4, !tbaa !3
  br label %if.end2604

if.end2604:                                       ; preds = %if.else2578, %cond.end2597, %if.then2576
  %rdcost.3 = phi double [ %call2577, %if.then2576 ], [ %rdcost.28421, %cond.end2597 ], [ %rdcost.28421, %if.else2578 ]
  %495 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2605 = getelementptr inbounds %struct.InputParameters* %495, i64 0, i32 85
  %496 = load i32* %rdopt2605, align 4, !tbaa !3
  %tobool2606 = icmp eq i32 %496, 0
  br i1 %tobool2606, label %land.lhs.true2613, label %land.lhs.true2607

land.lhs.true2607:                                ; preds = %if.end2604
  %cmp2608 = fcmp olt double %rdcost.3, %rdcost.38459
  br i1 %cmp2608, label %land.lhs.true2607.if.then2616_crit_edge, label %if.end2762

land.lhs.true2607.if.then2616_crit_edge:          ; preds = %land.lhs.true2607
  %.pre9141 = load i32* %cost, align 4, !tbaa !3
  br label %if.then2616

land.lhs.true2613:                                ; preds = %if.end2604
  %497 = load i32* %cost, align 4, !tbaa !3
  %cmp2614 = icmp slt i32 %497, %min_cost8x8.08426
  br i1 %cmp2614, label %if.then2616, label %if.end2762

if.then2616:                                      ; preds = %land.lhs.true2613, %land.lhs.true2607.if.then2616_crit_edge
  %498 = phi i32 [ %.pre9141, %land.lhs.true2607.if.then2616_crit_edge ], [ %497, %land.lhs.true2613 ]
  store i32 %420, i32* %arrayidx2618, align 4, !tbaa !3
  store i16 %best_pdir.2, i16* %arrayidx2620, align 2, !tbaa !4
  store i16 %best_fw_ref.12, i16* %arrayidx2622, align 2, !tbaa !4
  store i16 %best_bw_ref.12, i16* %arrayidx2624, align 2, !tbaa !4
  %499 = load i32* %cnt_nonz, align 4, !tbaa !3
  %500 = load i32* %rdopt2605, align 4, !tbaa !3
  %tobool2626 = icmp eq i32 %500, 0
  br i1 %tobool2626, label %if.end2761, label %if.then2627

if.then2627:                                      ; preds = %if.then2616
  %501 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %and2634 = and i32 %501, %neg
  %502 = load i64* %curr_cbp_blk, align 8, !tbaa !5
  %conv26358164 = zext i32 %and2634 to i64
  %or2636 = or i64 %conv26358164, %502
  %conv2637 = trunc i64 %or2636 to i32
  store i32 %conv2637, i32* @cbp_blk8x8, align 4, !tbaa !3
  %503 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC = getelementptr inbounds %struct.ImageParameters* %503, i64 0, i32 47
  %504 = load i32***** %cofAC, align 8, !tbaa !0
  %arrayidx2654 = getelementptr inbounds i32**** %504, i64 %indvars.iv8783
  %505 = load i32**** %arrayidx2654, align 8, !tbaa !0
  %506 = load i32***** @cofAC_8x8ts, align 8, !tbaa !0
  %arrayidx2662 = getelementptr inbounds i32**** %506, i64 %indvars.iv8783
  %507 = load i32**** %arrayidx2662, align 8, !tbaa !0
  br label %for.cond2642.preheader

for.cond2642.preheader:                           ; preds = %for.inc2672, %if.then2627
  %indvars.iv8757 = phi i64 [ 0, %if.then2627 ], [ %indvars.iv.next8758, %for.inc2672 ]
  %arrayidx2655 = getelementptr inbounds i32*** %505, i64 %indvars.iv8757
  %508 = load i32*** %arrayidx2655, align 8, !tbaa !0
  %arrayidx2663 = getelementptr inbounds i32*** %507, i64 %indvars.iv8757
  %509 = load i32*** %arrayidx2663, align 8, !tbaa !0
  br label %for.cond2646.preheader

for.cond2646.preheader:                           ; preds = %for.inc2669, %for.cond2642.preheader
  %indvars.iv8753 = phi i64 [ 0, %for.cond2642.preheader ], [ %indvars.iv.next8754, %for.inc2669 ]
  %arrayidx2656 = getelementptr inbounds i32** %508, i64 %indvars.iv8753
  %510 = load i32** %arrayidx2656, align 8, !tbaa !0
  %arrayidx2664 = getelementptr inbounds i32** %509, i64 %indvars.iv8753
  %511 = load i32** %arrayidx2664, align 8, !tbaa !0
  br label %for.body2649

for.body2649:                                     ; preds = %for.body2649, %for.cond2646.preheader
  %indvars.iv8749 = phi i64 [ 0, %for.cond2646.preheader ], [ %indvars.iv.next8750, %for.body2649 ]
  %arrayidx2657 = getelementptr inbounds i32* %510, i64 %indvars.iv8749
  %512 = load i32* %arrayidx2657, align 4, !tbaa !3
  %arrayidx2665 = getelementptr inbounds i32* %511, i64 %indvars.iv8749
  store i32 %512, i32* %arrayidx2665, align 4, !tbaa !3
  %indvars.iv.next8750 = add i64 %indvars.iv8749, 1
  %lftr.wideiv8751 = trunc i64 %indvars.iv.next8750 to i32
  %exitcond8752 = icmp eq i32 %lftr.wideiv8751, 65
  br i1 %exitcond8752, label %for.inc2669, label %for.body2649

for.inc2669:                                      ; preds = %for.body2649
  %indvars.iv.next8754 = add i64 %indvars.iv8753, 1
  %lftr.wideiv8755 = trunc i64 %indvars.iv.next8754 to i32
  %exitcond8756 = icmp eq i32 %lftr.wideiv8755, 2
  br i1 %exitcond8756, label %for.inc2672, label %for.cond2646.preheader

for.inc2672:                                      ; preds = %for.inc2669
  %indvars.iv.next8758 = add i64 %indvars.iv8757, 1
  %lftr.wideiv8759 = trunc i64 %indvars.iv.next8758 to i32
  %exitcond8760 = icmp eq i32 %lftr.wideiv8759, 4
  br i1 %exitcond8760, label %for.cond2675.loopexit, label %for.cond2642.preheader

for.cond2675.loopexit:                            ; preds = %for.inc2672
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %503, i64 0, i32 164
  %pix_x = getelementptr inbounds %struct.ImageParameters* %503, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %503, i64 0, i32 34
  %513 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %513, i64 0, i32 25
  br label %for.cond2680.preheader

for.cond2680.preheader:                           ; preds = %for.cond2675.loopexit, %for.inc2758
  %indvars.iv8763 = phi i64 [ %419, %for.cond2675.loopexit ], [ %indvars.iv.next8764, %for.inc2758 ]
  br label %for.body2684

for.body2684:                                     ; preds = %for.inc2755.for.body2684_crit_edge, %for.cond2680.preheader
  %indvars.iv8761 = phi i64 [ %417, %for.cond2680.preheader ], [ %indvars.iv.next8762, %for.inc2755.for.body2684_crit_edge ]
  %514 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %tobool2685 = icmp eq i32 %514, 0
  br i1 %tobool2685, label %if.then2686, label %if.else2705

if.then2686:                                      ; preds = %for.body2684
  %515 = load i32* %pix_x, align 4, !tbaa !3
  %516 = trunc i64 %indvars.iv8761 to i32
  %add2687 = add nsw i32 %515, %516
  %idxprom2688 = sext i32 %add2687 to i64
  %517 = load i32* %pix_y, align 4, !tbaa !3
  %518 = trunc i64 %indvars.iv8763 to i32
  %add2689 = add nsw i32 %517, %518
  %idxprom2690 = sext i32 %add2689 to i64
  %519 = load i16*** %imgY, align 8, !tbaa !0
  %arrayidx2691 = getelementptr inbounds i16** %519, i64 %idxprom2690
  %520 = load i16** %arrayidx2691, align 8, !tbaa !0
  %arrayidx2692 = getelementptr inbounds i16* %520, i64 %idxprom2688
  %521 = load i16* %arrayidx2692, align 2, !tbaa !4
  %arrayidx2696 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY_8x8ts, i64 0, i64 %indvars.iv8763, i64 %indvars.iv8761
  store i16 %521, i16* %arrayidx2696, align 2, !tbaa !4
  %arrayidx2700 = getelementptr inbounds %struct.ImageParameters* %503, i64 0, i32 45, i64 %indvars.iv8761, i64 %indvars.iv8763
  %522 = load i16* %arrayidx2700, align 2, !tbaa !4
  %arrayidx2704 = getelementptr inbounds [16 x [16 x i16]]* @mpr_8x8ts, i64 0, i64 %indvars.iv8763, i64 %indvars.iv8761
  store i16 %522, i16* %arrayidx2704, align 2, !tbaa !4
  br label %for.inc2755

if.else2705:                                      ; preds = %for.body2684
  %arrayidx2709 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  %523 = load i32* %arrayidx2709, align 4, !tbaa !3
  %arrayidx2713 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8ts, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %523, i32* %arrayidx2713, align 4, !tbaa !3
  %arrayidx2717 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  %524 = load i32* %arrayidx2717, align 4, !tbaa !3
  %arrayidx2721 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8ts, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %524, i32* %arrayidx2721, align 4, !tbaa !3
  %arrayidx2725 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  %525 = load i32* %arrayidx2725, align 4, !tbaa !3
  %arrayidx2729 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8ts, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %525, i32* %arrayidx2729, align 4, !tbaa !3
  %arrayidx2733 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  %526 = load i32* %arrayidx2733, align 4, !tbaa !3
  %arrayidx2737 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 0, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %526, i32* %arrayidx2737, align 4, !tbaa !3
  %arrayidx2741 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv8761, i64 %indvars.iv8763
  %527 = load i32* %arrayidx2741, align 4, !tbaa !3
  %arrayidx2745 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 1, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %527, i32* %arrayidx2745, align 4, !tbaa !3
  %arrayidx2749 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv8761, i64 %indvars.iv8763
  %528 = load i32* %arrayidx2749, align 4, !tbaa !3
  %arrayidx2753 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 2, i64 %indvars.iv8761, i64 %indvars.iv8763
  store i32 %528, i32* %arrayidx2753, align 4, !tbaa !3
  %.pre9163 = trunc i64 %indvars.iv8761 to i32
  br label %for.inc2755

for.inc2755:                                      ; preds = %if.then2686, %if.else2705
  %.pre-phi9164 = phi i32 [ %516, %if.then2686 ], [ %.pre9163, %if.else2705 ]
  %529 = or i32 %shl2179, 7
  %cmp2682 = icmp slt i32 %.pre-phi9164, %529
  br i1 %cmp2682, label %for.inc2755.for.body2684_crit_edge, label %for.inc2758

for.inc2755.for.body2684_crit_edge:               ; preds = %for.inc2755
  %indvars.iv.next8762 = add i64 %indvars.iv8761, 1
  br label %for.body2684

for.inc2758:                                      ; preds = %for.inc2755
  %indvars.iv.next8764 = add i64 %indvars.iv8763, 1
  %530 = or i32 %shl, 7
  %531 = trunc i64 %indvars.iv8763 to i32
  %cmp2677 = icmp slt i32 %531, %530
  br i1 %cmp2677, label %for.cond2680.preheader, label %if.end2761

if.end2761:                                       ; preds = %for.inc2758, %if.then2616
  %532 = load %struct.CSobj** @cs_b8, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %532) #8
  br label %if.end2762

if.end2762:                                       ; preds = %land.lhs.true2607, %if.end2761, %land.lhs.true2613
  %rdcost.38461 = phi double [ %rdcost.3, %if.end2761 ], [ %rdcost.38459, %land.lhs.true2613 ], [ %rdcost.38459, %land.lhs.true2607 ]
  %best_cnt_nonz.3 = phi i32 [ %499, %if.end2761 ], [ %best_cnt_nonz.28423, %land.lhs.true2613 ], [ %best_cnt_nonz.28423, %land.lhs.true2607 ]
  %min_cost8x8.1 = phi i32 [ %498, %if.end2761 ], [ %min_cost8x8.08426, %land.lhs.true2613 ], [ %min_cost8x8.08426, %land.lhs.true2607 ]
  %533 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %533) #8
  br label %for.inc2764

for.inc2764:                                      ; preds = %lor.lhs.false2196, %land.lhs.true2199, %if.end2762
  %rdcost.38460 = phi double [ %rdcost.38461, %if.end2762 ], [ %rdcost.38459, %land.lhs.true2199 ], [ %rdcost.38459, %lor.lhs.false2196 ]
  %rdcost.4 = phi double [ %rdcost.3, %if.end2762 ], [ %rdcost.28421, %land.lhs.true2199 ], [ %rdcost.28421, %lor.lhs.false2196 ]
  %best_cnt_nonz.4 = phi i32 [ %best_cnt_nonz.3, %if.end2762 ], [ %best_cnt_nonz.28423, %land.lhs.true2199 ], [ %best_cnt_nonz.28423, %lor.lhs.false2196 ]
  %best_fw_ref.13 = phi i16 [ %best_fw_ref.12, %if.end2762 ], [ %best_fw_ref.88425, %land.lhs.true2199 ], [ %best_fw_ref.88425, %lor.lhs.false2196 ]
  %min_cost8x8.2 = phi i32 [ %min_cost8x8.1, %if.end2762 ], [ %min_cost8x8.08426, %land.lhs.true2199 ], [ %min_cost8x8.08426, %lor.lhs.false2196 ]
  %cost_direct.6 = phi i32 [ %cost_direct.5, %if.end2762 ], [ %cost_direct.28430, %land.lhs.true2199 ], [ %cost_direct.28430, %lor.lhs.false2196 ]
  %have_direct.5 = phi i32 [ %have_direct.4, %if.end2762 ], [ %have_direct.28431, %land.lhs.true2199 ], [ %have_direct.28431, %lor.lhs.false2196 ]
  %cost8x8_direct.6 = phi i32 [ %cost8x8_direct.5, %if.end2762 ], [ %cost8x8_direct.28432, %land.lhs.true2199 ], [ %cost8x8_direct.28432, %lor.lhs.false2196 ]
  %best_bw_ref.13 = phi i16 [ %best_bw_ref.12, %if.end2762 ], [ %best_bw_ref.88433, %land.lhs.true2199 ], [ %best_bw_ref.88433, %lor.lhs.false2196 ]
  %indvars.iv.next8766 = add i64 %indvars.iv8765, 1
  %534 = trunc i64 %indvars.iv.next8766 to i32
  %cmp2185 = icmp slt i32 %534, 2
  br i1 %cmp2185, label %for.body2187, label %for.end2766

for.end2766:                                      ; preds = %for.inc2764
  %535 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt2767 = getelementptr inbounds %struct.InputParameters* %535, i64 0, i32 85
  %536 = load i32* %rdopt2767, align 4, !tbaa !3
  %tobool2768 = icmp eq i32 %536, 0
  br i1 %tobool2768, label %if.then2769, label %if.end2942

if.then2769:                                      ; preds = %for.end2766
  %add2770 = add nsw i32 %min_cost8x8.2, %cost8x8.08452
  %arrayidx2772 = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv8783
  %537 = load i32* %arrayidx2772, align 4, !tbaa !3
  %arrayidx2774 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv8783
  %538 = load i16* %arrayidx2774, align 2, !tbaa !4
  store i64 0, i64* %curr_cbp_blk, align 8, !tbaa !5
  switch i16 %538, label %cond.end2784 [
    i16 0, label %cond.true2782
    i16 2, label %cond.true2782
  ]

cond.true2782:                                    ; preds = %if.then2769, %if.then2769
  br label %cond.end2784

cond.end2784:                                     ; preds = %if.then2769, %cond.true2782
  %cond2785 = phi i32 [ %537, %cond.true2782 ], [ 0, %if.then2769 ]
  %.off8267 = add i16 %538, -1
  %switch = icmp ult i16 %.off8267, 2
  %.8268 = select i1 %switch, i32 %537, i32 0
  %arrayidx2798 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %indvars.iv8783
  %539 = load i16* %arrayidx2798, align 2, !tbaa !4
  %arrayidx2800 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %indvars.iv8783
  %540 = load i16* %arrayidx2800, align 2, !tbaa !4
  %call2801 = call i32 @LumaResidualCoding8x8(i32* %dummy, i64* %curr_cbp_blk, i32 %413, i16 signext %538, i32 %cond2785, i32 %.8268, i16 signext %539, i16 signext %540) #8
  %shr28028160 = lshr i32 %413, 1
  %shl2803 = shl i32 %shr28028160, 3
  %shl2805 = shl i32 %rem2178, 1
  %add2806 = add nsw i32 %shl2805, %shl2803
  %shl2807 = shl i32 51, %add2806
  %neg2808 = xor i32 %shl2807, -1
  %541 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %and2809 = and i32 %541, %neg2808
  %542 = load i64* %curr_cbp_blk, align 8, !tbaa !5
  %conv28108161 = zext i32 %and2809 to i64
  %or2811 = or i64 %conv28108161, %542
  %conv2812 = trunc i64 %or2811 to i32
  store i32 %conv2812, i32* @cbp_blk8x8, align 4, !tbaa !3
  %543 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC2829 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 47
  %544 = load i32***** %cofAC2829, align 8, !tbaa !0
  %arrayidx2830 = getelementptr inbounds i32**** %544, i64 %indvars.iv8783
  %545 = load i32**** %arrayidx2830, align 8, !tbaa !0
  %546 = load i32***** @cofAC_8x8ts, align 8, !tbaa !0
  %arrayidx2838 = getelementptr inbounds i32**** %546, i64 %indvars.iv8783
  %547 = load i32**** %arrayidx2838, align 8, !tbaa !0
  br label %for.cond2817.preheader

for.cond2817.preheader:                           ; preds = %for.inc2848, %cond.end2784
  %indvars.iv8775 = phi i64 [ 0, %cond.end2784 ], [ %indvars.iv.next8776, %for.inc2848 ]
  %arrayidx2831 = getelementptr inbounds i32*** %545, i64 %indvars.iv8775
  %548 = load i32*** %arrayidx2831, align 8, !tbaa !0
  %arrayidx2839 = getelementptr inbounds i32*** %547, i64 %indvars.iv8775
  %549 = load i32*** %arrayidx2839, align 8, !tbaa !0
  br label %for.cond2821.preheader

for.cond2821.preheader:                           ; preds = %for.inc2845, %for.cond2817.preheader
  %indvars.iv8771 = phi i64 [ 0, %for.cond2817.preheader ], [ %indvars.iv.next8772, %for.inc2845 ]
  %arrayidx2832 = getelementptr inbounds i32** %548, i64 %indvars.iv8771
  %550 = load i32** %arrayidx2832, align 8, !tbaa !0
  %arrayidx2840 = getelementptr inbounds i32** %549, i64 %indvars.iv8771
  %551 = load i32** %arrayidx2840, align 8, !tbaa !0
  br label %for.body2824

for.body2824:                                     ; preds = %for.body2824, %for.cond2821.preheader
  %indvars.iv8767 = phi i64 [ 0, %for.cond2821.preheader ], [ %indvars.iv.next8768, %for.body2824 ]
  %arrayidx2833 = getelementptr inbounds i32* %550, i64 %indvars.iv8767
  %552 = load i32* %arrayidx2833, align 4, !tbaa !3
  %arrayidx2841 = getelementptr inbounds i32* %551, i64 %indvars.iv8767
  store i32 %552, i32* %arrayidx2841, align 4, !tbaa !3
  %indvars.iv.next8768 = add i64 %indvars.iv8767, 1
  %lftr.wideiv8769 = trunc i64 %indvars.iv.next8768 to i32
  %exitcond8770 = icmp eq i32 %lftr.wideiv8769, 65
  br i1 %exitcond8770, label %for.inc2845, label %for.body2824

for.inc2845:                                      ; preds = %for.body2824
  %indvars.iv.next8772 = add i64 %indvars.iv8771, 1
  %lftr.wideiv8773 = trunc i64 %indvars.iv.next8772 to i32
  %exitcond8774 = icmp eq i32 %lftr.wideiv8773, 2
  br i1 %exitcond8774, label %for.inc2848, label %for.cond2821.preheader

for.inc2848:                                      ; preds = %for.inc2845
  %indvars.iv.next8776 = add i64 %indvars.iv8775, 1
  %lftr.wideiv8777 = trunc i64 %indvars.iv.next8776 to i32
  %exitcond8778 = icmp eq i32 %lftr.wideiv8777, 4
  br i1 %exitcond8778, label %for.cond2851.loopexit, label %for.cond2817.preheader

for.cond2851.loopexit:                            ; preds = %for.inc2848
  %residue_transform_flag2861 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 164
  %pix_x2864 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 33
  %pix_y2867 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 34
  %553 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY2870 = getelementptr inbounds %struct.storable_picture* %553, i64 0, i32 25
  %554 = shl i32 %rem2178, 3
  %555 = sext i32 %554 to i64
  %556 = shl i32 %div2176, 3
  %557 = sext i32 %556 to i64
  br label %for.cond2856.preheader

for.cond2856.preheader:                           ; preds = %for.cond2851.loopexit, %for.inc2939
  %indvars.iv8781 = phi i64 [ %557, %for.cond2851.loopexit ], [ %indvars.iv.next8782, %for.inc2939 ]
  br label %for.body2860

for.body2860:                                     ; preds = %for.inc2936.for.body2860_crit_edge, %for.cond2856.preheader
  %indvars.iv8779 = phi i64 [ %555, %for.cond2856.preheader ], [ %indvars.iv.next8780, %for.inc2936.for.body2860_crit_edge ]
  %558 = load i32* %residue_transform_flag2861, align 4, !tbaa !3
  %tobool2862 = icmp eq i32 %558, 0
  br i1 %tobool2862, label %if.then2863, label %if.else2886

if.then2863:                                      ; preds = %for.body2860
  %559 = load i32* %pix_x2864, align 4, !tbaa !3
  %560 = trunc i64 %indvars.iv8779 to i32
  %add2865 = add nsw i32 %559, %560
  %idxprom2866 = sext i32 %add2865 to i64
  %561 = load i32* %pix_y2867, align 4, !tbaa !3
  %562 = trunc i64 %indvars.iv8781 to i32
  %add2868 = add nsw i32 %561, %562
  %idxprom2869 = sext i32 %add2868 to i64
  %563 = load i16*** %imgY2870, align 8, !tbaa !0
  %arrayidx2871 = getelementptr inbounds i16** %563, i64 %idxprom2869
  %564 = load i16** %arrayidx2871, align 8, !tbaa !0
  %arrayidx2872 = getelementptr inbounds i16* %564, i64 %idxprom2866
  %565 = load i16* %arrayidx2872, align 2, !tbaa !4
  %arrayidx2876 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY_8x8ts, i64 0, i64 %indvars.iv8781, i64 %indvars.iv8779
  store i16 %565, i16* %arrayidx2876, align 2, !tbaa !4
  %arrayidx2881 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 45, i64 %indvars.iv8779, i64 %indvars.iv8781
  %566 = load i16* %arrayidx2881, align 2, !tbaa !4
  %arrayidx2885 = getelementptr inbounds [16 x [16 x i16]]* @mpr_8x8ts, i64 0, i64 %indvars.iv8781, i64 %indvars.iv8779
  store i16 %566, i16* %arrayidx2885, align 2, !tbaa !4
  br label %for.inc2936

if.else2886:                                      ; preds = %for.body2860
  %arrayidx2890 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  %567 = load i32* %arrayidx2890, align 4, !tbaa !3
  %arrayidx2894 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8ts, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %567, i32* %arrayidx2894, align 4, !tbaa !3
  %arrayidx2898 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  %568 = load i32* %arrayidx2898, align 4, !tbaa !3
  %arrayidx2902 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8ts, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %568, i32* %arrayidx2902, align 4, !tbaa !3
  %arrayidx2906 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  %569 = load i32* %arrayidx2906, align 4, !tbaa !3
  %arrayidx2910 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8ts, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %569, i32* %arrayidx2910, align 4, !tbaa !3
  %arrayidx2914 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  %570 = load i32* %arrayidx2914, align 4, !tbaa !3
  %arrayidx2918 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 0, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %570, i32* %arrayidx2918, align 4, !tbaa !3
  %arrayidx2922 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv8779, i64 %indvars.iv8781
  %571 = load i32* %arrayidx2922, align 4, !tbaa !3
  %arrayidx2926 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 1, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %571, i32* %arrayidx2926, align 4, !tbaa !3
  %arrayidx2930 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv8779, i64 %indvars.iv8781
  %572 = load i32* %arrayidx2930, align 4, !tbaa !3
  %arrayidx2934 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8ts, i64 0, i64 2, i64 %indvars.iv8779, i64 %indvars.iv8781
  store i32 %572, i32* %arrayidx2934, align 4, !tbaa !3
  %.pre9162 = trunc i64 %indvars.iv8779 to i32
  br label %for.inc2936

for.inc2936:                                      ; preds = %if.then2863, %if.else2886
  %.pre-phi = phi i32 [ %560, %if.then2863 ], [ %.pre9162, %if.else2886 ]
  %573 = or i32 %shl2179, 7
  %cmp2858 = icmp slt i32 %.pre-phi, %573
  br i1 %cmp2858, label %for.inc2936.for.body2860_crit_edge, label %for.inc2939

for.inc2936.for.body2860_crit_edge:               ; preds = %for.inc2936
  %indvars.iv.next8780 = add i64 %indvars.iv8779, 1
  br label %for.body2860

for.inc2939:                                      ; preds = %for.inc2936
  %indvars.iv.next8782 = add i64 %indvars.iv8781, 1
  %574 = or i32 %shl, 7
  %575 = trunc i64 %indvars.iv8781 to i32
  %cmp2853 = icmp slt i32 %575, %574
  br i1 %cmp2853, label %for.cond2856.preheader, label %if.end2942

if.end2942:                                       ; preds = %for.inc2939, %for.end2766
  %best_cnt_nonz.5 = phi i32 [ %best_cnt_nonz.4, %for.end2766 ], [ %call2801, %for.inc2939 ]
  %cost8x8.1 = phi i32 [ %cost8x8.08452, %for.end2766 ], [ %add2770, %for.inc2939 ]
  %tobool2943 = icmp eq i32 %best_cnt_nonz.5, 0
  br i1 %tobool2943, label %if.end2948, label %if.then2944

if.then2944:                                      ; preds = %if.end2942
  %shl2945 = shl i32 1, %413
  %576 = load i32* @cbp8x8, align 4, !tbaa !3
  %or2946 = or i32 %576, %shl2945
  store i32 %or2946, i32* @cbp8x8, align 4, !tbaa !3
  %577 = load i32* @cnt_nonz_8x8, align 4, !tbaa !3
  %add2947 = add nsw i32 %577, %best_cnt_nonz.5
  store i32 %add2947, i32* @cnt_nonz_8x8, align 4, !tbaa !3
  br label %if.end2948

if.end2948:                                       ; preds = %if.end2942, %if.then2944
  %arrayidx2950 = getelementptr inbounds [4 x i32]* @part8x8mode, i64 0, i64 %indvars.iv8783
  %578 = load i32* %arrayidx2950, align 4, !tbaa !3
  %arrayidx2952 = getelementptr inbounds [4 x i16]* @part8x8fwref, i64 0, i64 %indvars.iv8783
  %579 = load i16* %arrayidx2952, align 2, !tbaa !4
  %conv2953 = sext i16 %579 to i32
  %arrayidx2955 = getelementptr inbounds [4 x i16]* @part8x8bwref, i64 0, i64 %indvars.iv8783
  %580 = load i16* %arrayidx2955, align 2, !tbaa !4
  %conv2956 = sext i16 %580 to i32
  %arrayidx2958 = getelementptr inbounds [4 x i16]* @part8x8pdir, i64 0, i64 %indvars.iv8783
  %581 = load i16* %arrayidx2958, align 2, !tbaa !4
  %conv2959 = sext i16 %581 to i32
  call void @StoreNewMotionVectorsBlock8x8(i32 0, i32 %413, i32 %578, i32 %conv2953, i32 %conv2956, i32 %conv2959, i32 %conv16) #10
  %582 = load i32* %arrayidx2950, align 4, !tbaa !3
  %583 = load i16* %arrayidx2958, align 2, !tbaa !4
  %conv2964 = sext i16 %583 to i32
  %584 = load i16* %arrayidx2952, align 2, !tbaa !4
  %conv2967 = sext i16 %584 to i32
  %585 = load i16* %arrayidx2955, align 2, !tbaa !4
  %conv2970 = sext i16 %585 to i32
  call void @SetRefAndMotionVectors(i32 %413, i32 %582, i32 %conv2964, i32 %conv2967, i32 %conv2970) #10
  %cmp2971 = icmp slt i32 %413, 3
  br i1 %cmp2971, label %if.then2973, label %for.inc2975

if.then2973:                                      ; preds = %if.end2948
  %586 = load %struct.CSobj** @cs_b8, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %586) #8
  br label %for.inc2975

for.inc2975:                                      ; preds = %if.end2948, %if.then2973
  %indvars.iv.next8784 = add i64 %indvars.iv8783, 1
  %lftr.wideiv8788 = trunc i64 %indvars.iv.next8784 to i32
  %exitcond8789 = icmp eq i32 %lftr.wideiv8788, 4
  br i1 %exitcond8789, label %if.end2980, label %for.body2187.lr.ph

if.end2980:                                       ; preds = %for.inc2975
  store double %rdcost.38460, double* %min_rdcost, align 8, !tbaa !6
  %587 = load i32* @cbp8x8, align 4, !tbaa !3
  store i32 %587, i32* @cbp8_8x8ts, align 4, !tbaa !3
  %588 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %conv2978 = sext i32 %588 to i64
  store i64 %conv2978, i64* @cbp_blk8_8x8ts, align 8, !tbaa !5
  %589 = load i32* @cnt_nonz_8x8, align 4, !tbaa !3
  store i32 %589, i32* @cnt_nonz8_8x8ts, align 4, !tbaa !3
  store i32 %cost8x8.1, i32* @cost8_8x8ts, align 4, !tbaa !3
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %.pre9084 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x82981.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre9084, i64 0, i32 123
  %.pre9085 = load i32* %AllowTransform8x82981.phi.trans.insert, align 4, !tbaa !3
  %phitmp9167 = icmp eq i32 %.pre9085, 2
  br i1 %phitmp9167, label %if.end3861, label %if.then2984

if.then2984:                                      ; preds = %if.then2168, %if.end2980
  %best_bw_ref.149179 = phi i16 [ %best_bw_ref.13, %if.end2980 ], [ %best_bw_ref.6, %if.then2168 ]
  %cost8x8_direct.79177 = phi i32 [ %cost8x8_direct.6, %if.end2980 ], [ %cost8x8_direct.08602, %if.then2168 ]
  %have_direct.69176 = phi i32 [ %have_direct.5, %if.end2980 ], [ %have_direct.08599, %if.then2168 ]
  %best_fw_ref.149175 = phi i16 [ %best_fw_ref.13, %if.end2980 ], [ %best_fw_ref.6, %if.then2168 ]
  %best_cnt_nonz.69174 = phi i32 [ %best_cnt_nonz.5, %if.end2980 ], [ %best_cnt_nonz.08596, %if.then2168 ]
  %rdcost.59173 = phi double [ %rdcost.4, %if.end2980 ], [ %rdcost.08595, %if.then2168 ]
  store i32 0, i32* @cnt_nonz_8x8, align 4, !tbaa !3
  store i32 0, i32* @cbp_blk8x8, align 4, !tbaa !3
  store i32 0, i32* @cbp8x8, align 4, !tbaa !3
  br label %for.body3000.lr.ph

for.body3000.lr.ph:                               ; preds = %if.then2984, %if.end3848
  %indvars.iv8863 = phi i64 [ 0, %if.then2984 ], [ %indvars.iv.next8864, %if.end3848 ]
  %indvars.iv8852 = phi i64 [ 0, %if.then2984 ], [ %indvars.iv.next8853, %if.end3848 ]
  %best_bw_ref.158530 = phi i16 [ %best_bw_ref.149179, %if.then2984 ], [ %best_bw_ref.21, %if.end3848 ]
  %have_direct.78529 = phi i32 [ %have_direct.69176, %if.then2984 ], [ %have_direct.11, %if.end3848 ]
  %cost_direct.88528 = phi i32 [ 0, %if.then2984 ], [ %cost_direct.13, %if.end3848 ]
  %cost8x8.28527 = phi i32 [ 0, %if.then2984 ], [ %add3572, %if.end3848 ]
  %best_fw_ref.158526 = phi i16 [ %best_fw_ref.149175, %if.then2984 ], [ %best_fw_ref.21, %if.end3848 ]
  %best_cnt_nonz.78525 = phi i32 [ %best_cnt_nonz.69174, %if.then2984 ], [ %best_cnt_nonz.11, %if.end3848 ]
  %rdcost.68524 = phi double [ %rdcost.59173, %if.then2984 ], [ %rdcost.9, %if.end3848 ]
  %590 = trunc i64 %indvars.iv8863 to i32
  %div2989 = sdiv i32 %590, 2
  %shl2990 = shl i32 %div2989, 3
  %rem2992 = srem i32 %590, 2
  %shl2993 = shl i32 %rem2992, 3
  %and3135 = and i32 %590, 2
  %591 = shl i64 %indvars.iv8863, 1
  %592 = trunc i64 %591 to i32
  %mul3141 = and i32 %592, 2
  %arrayidx3401 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %indvars.iv8863
  %arrayidx3403 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 8, i64 %indvars.iv8863
  %arrayidx3405 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 8, i64 %indvars.iv8863
  %arrayidx3407 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 8, i64 %indvars.iv8863
  %shr34118152 = lshr i32 %590, 1
  %shl3412 = shl i32 %shr34118152, 3
  %shl3414 = shl i32 %rem2992, 1
  %add3415 = add nsw i32 %shl3414, %shl3412
  %shl3416 = shl i32 51, %add3415
  %neg3417 = xor i32 %shl3416, -1
  %593 = shl i32 %rem2992, 3
  %594 = sext i32 %593 to i64
  %595 = shl i32 %div2989, 3
  %596 = sext i32 %595 to i64
  br label %for.body3000

for.body3000:                                     ; preds = %for.body3000.lr.ph, %for.inc3569
  %indvars.iv8823 = phi i64 [ %100, %for.body3000.lr.ph ], [ %indvars.iv.next8824, %for.inc3569 ]
  %rdcost.88532 = phi double [ 1.000000e+30, %for.body3000.lr.ph ], [ %rdcost.88533, %for.inc3569 ]
  %best_bw_ref.168502 = phi i16 [ %best_bw_ref.158530, %for.body3000.lr.ph ], [ %best_bw_ref.21, %for.inc3569 ]
  %have_direct.88501 = phi i32 [ %have_direct.78529, %for.body3000.lr.ph ], [ %have_direct.11, %for.inc3569 ]
  %cost_direct.98500 = phi i32 [ %cost_direct.88528, %for.body3000.lr.ph ], [ %cost_direct.13, %for.inc3569 ]
  %min_cost8x8.38499 = phi i32 [ 2147483647, %for.body3000.lr.ph ], [ %min_cost8x8.5, %for.inc3569 ]
  %best_fw_ref.168498 = phi i16 [ %best_fw_ref.158526, %for.body3000.lr.ph ], [ %best_fw_ref.21, %for.inc3569 ]
  %best_cnt_nonz.88497 = phi i32 [ %best_cnt_nonz.78525, %for.body3000.lr.ph ], [ %best_cnt_nonz.10, %for.inc3569 ]
  %rdcost.78496 = phi double [ %rdcost.68524, %for.body3000.lr.ph ], [ %rdcost.9, %for.inc3569 ]
  %arrayidx3002 = getelementptr inbounds [6 x i32]* @encode_one_macroblock.b8_mode_table, i64 0, i64 %indvars.iv8823
  %597 = load i32* %arrayidx3002, align 4, !tbaa !3
  %idxprom3003 = sext i32 %597 to i64
  %arrayidx3004 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %idxprom3003
  %598 = load i32* %arrayidx3004, align 4, !tbaa !3
  %tobool3005 = icmp eq i32 %598, 0
  br i1 %tobool3005, label %for.inc3569, label %if.then3006

if.then3006:                                      ; preds = %for.body3000
  store i64 0, i64* %curr_cbp_blk, align 8, !tbaa !5
  %599 = trunc i64 %indvars.iv8823 to i32
  switch i32 %599, label %if.else3060 [
    i32 5, label %if.then3009
    i32 0, label %if.then3009
  ]

if.then3009:                                      ; preds = %if.then3006, %if.then3006
  %600 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3010 = getelementptr inbounds %struct.InputParameters* %600, i64 0, i32 85
  %601 = load i32* %rdopt3010, align 4, !tbaa !3
  %tobool3011 = icmp eq i32 %601, 0
  br i1 %tobool3011, label %if.then3012, label %if.end3024

if.then3012:                                      ; preds = %if.then3009
  %call3013 = call i32 @Get_Direct_Cost8x8(i32 %590, i32* %direct8x8_tmp) #8
  store i32 %call3013, i32* %cost, align 4, !tbaa !3
  %cmp3014 = icmp eq i32 %call3013, 2147483647
  %cmp3017 = icmp eq i32 %cost_direct.98500, 2147483647
  %or.cond8228 = or i1 %cmp3014, %cmp3017
  %add3021 = add nsw i32 %call3013, %cost_direct.98500
  %cost_direct.10 = select i1 %or.cond8228, i32 2147483647, i32 %add3021
  %inc3023 = add nsw i32 %have_direct.88501, 1
  br label %if.end3024

if.end3024:                                       ; preds = %if.then3009, %if.then3012
  %cost_direct.11 = phi i32 [ %cost_direct.98500, %if.then3009 ], [ %cost_direct.10, %if.then3012 ]
  %have_direct.9 = phi i32 [ %have_direct.88501, %if.then3009 ], [ %inc3023, %if.then3012 ]
  %602 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y3025 = getelementptr inbounds %struct.ImageParameters* %602, i64 0, i32 32
  %603 = load i32* %block_y3025, align 4, !tbaa !3
  %add3027 = add nsw i32 %603, %and3135
  %idxprom3028 = sext i32 %add3027 to i64
  %block_x3029 = getelementptr inbounds %struct.ImageParameters* %602, i64 0, i32 31
  %604 = load i32* %block_x3029, align 4, !tbaa !3
  %add3032 = add nsw i32 %604, %mul3141
  %idxprom3033 = sext i32 %add3032 to i64
  %605 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %606 = load i16*** %605, align 8, !tbaa !0
  %arrayidx3035 = getelementptr inbounds i16** %606, i64 %idxprom3033
  %607 = load i16** %arrayidx3035, align 8, !tbaa !0
  %arrayidx3036 = getelementptr inbounds i16* %607, i64 %idxprom3028
  %608 = load i16* %arrayidx3036, align 2, !tbaa !4
  %arrayidx3046 = getelementptr inbounds i16*** %605, i64 1
  %609 = load i16*** %arrayidx3046, align 8, !tbaa !0
  %arrayidx3047 = getelementptr inbounds i16** %609, i64 %idxprom3033
  %610 = load i16** %arrayidx3047, align 8, !tbaa !0
  %arrayidx3048 = getelementptr inbounds i16* %610, i64 %idxprom3028
  %611 = load i16* %arrayidx3048, align 2, !tbaa !4
  %612 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx3058 = getelementptr inbounds i16** %612, i64 %idxprom3033
  %613 = load i16** %arrayidx3058, align 8, !tbaa !0
  %arrayidx3059 = getelementptr inbounds i16* %613, i64 %idxprom3028
  %614 = load i16* %arrayidx3059, align 2, !tbaa !4
  br label %if.end3355

if.else3060:                                      ; preds = %if.then3006
  call void @PartitionMotionSearch(i32 %597, i32 %590, double %lambda_motion.0) #8
  %615 = load i32* %arrayidx581, align 4, !tbaa !3
  %cmp30668463 = icmp sgt i32 %615, 0
  br i1 %cmp30668463, label %for.body3068.lr.ph, label %for.cond3126.loopexit

for.body3068.lr.ph:                               ; preds = %if.else3060
  %616 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3079 = getelementptr inbounds %struct.InputParameters* %616, i64 0, i32 85
  %617 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx3113 = getelementptr inbounds i32**** %617, i64 %idxprom3003
  %618 = load i32** @refbits, align 8, !tbaa !0
  br label %for.body3068

for.body3068:                                     ; preds = %for.body3068.lr.ph, %for.inc3123
  %conv30628468 = phi i32 [ 0, %for.body3068.lr.ph ], [ %conv3062, %for.inc3123 ]
  %ref.48466 = phi i16 [ 0, %for.body3068.lr.ph ], [ %inc3124, %for.inc3123 ]
  %best_fw_ref.178465 = phi i16 [ %best_fw_ref.168498, %for.body3068.lr.ph ], [ %best_fw_ref.18, %for.inc3123 ]
  %fw_mcost.48464 = phi i32 [ 2147483647, %for.body3068.lr.ph ], [ %fw_mcost.5, %for.inc3123 ]
  %cmp3072 = icmp eq i16 %ref.48466, 0
  %or.cond8230 = or i1 %13, %cmp3072
  br i1 %or.cond8230, label %if.then3078, label %lor.lhs.false3074

lor.lhs.false3074:                                ; preds = %for.body3068
  %call3076 = call i32 @CheckReliabilityOfRef(i32 %590, i32 0, i32 %conv30628468, i32 %597) #10
  %tobool3077 = icmp eq i32 %call3076, 0
  br i1 %tobool3077, label %for.inc3123, label %if.then3078

if.then3078:                                      ; preds = %lor.lhs.false3074, %for.body3068
  %619 = load i32* %rdopt3079, align 4, !tbaa !3
  %tobool3080 = icmp eq i32 %619, 0
  br i1 %tobool3080, label %cond.false3095, label %cond.true3081

cond.true3081:                                    ; preds = %if.then3078
  %cmp3085 = icmp slt i32 %615, 2
  br i1 %cmp3085, label %cond.end3091, label %cond.false3088

cond.false3088:                                   ; preds = %cond.true3081
  %idxprom3089 = sext i16 %ref.48466 to i64
  %arrayidx3090 = getelementptr inbounds i32* %618, i64 %idxprom3089
  %620 = load i32* %arrayidx3090, align 4, !tbaa !3
  br label %cond.end3091

cond.end3091:                                     ; preds = %cond.true3081, %cond.false3088
  %cond3092 = phi i32 [ %620, %cond.false3088 ], [ 0, %cond.true3081 ]
  %mul3093 = mul nsw i32 %cond3092, %conv513
  %shr3094 = ashr i32 %mul3093, 16
  br label %cond.end3108

cond.false3095:                                   ; preds = %if.then3078
  %cmp3098 = icmp slt i16 %ref.48466, 1
  br i1 %cmp3098, label %cond.true3100, label %cond.end3103

cond.true3100:                                    ; preds = %cond.false3095
  %phitmp8159 = sitofp i16 %ref.48466 to double
  br label %cond.end3103

cond.end3103:                                     ; preds = %cond.false3095, %cond.true3100
  %cond3104 = phi double [ %phitmp8159, %cond.true3100 ], [ 1.000000e+00, %cond.false3095 ]
  %mul3106 = fmul double %mul781, %cond3104
  %conv3107 = fptosi double %mul3106 to i32
  br label %cond.end3108

cond.end3108:                                     ; preds = %cond.end3103, %cond.end3091
  %cond3109 = phi i32 [ %shr3094, %cond.end3091 ], [ %conv3107, %cond.end3103 ]
  %idxprom3111 = sext i16 %ref.48466 to i64
  %621 = load i32**** %arrayidx3113, align 8, !tbaa !0
  %622 = load i32*** %621, align 8, !tbaa !0
  %arrayidx3115 = getelementptr inbounds i32** %622, i64 %idxprom3111
  %623 = load i32** %arrayidx3115, align 8, !tbaa !0
  %arrayidx3116 = getelementptr inbounds i32* %623, i64 %indvars.iv8863
  %624 = load i32* %arrayidx3116, align 4, !tbaa !3
  %add3117 = add nsw i32 %624, %cond3109
  %cmp3118 = icmp slt i32 %add3117, %fw_mcost.48464
  %add3117.fw_mcost.4 = select i1 %cmp3118, i32 %add3117, i32 %fw_mcost.48464
  %ref.4.best_fw_ref.17 = select i1 %cmp3118, i16 %ref.48466, i16 %best_fw_ref.178465
  br label %for.inc3123

for.inc3123:                                      ; preds = %cond.end3108, %lor.lhs.false3074
  %fw_mcost.5 = phi i32 [ %fw_mcost.48464, %lor.lhs.false3074 ], [ %add3117.fw_mcost.4, %cond.end3108 ]
  %best_fw_ref.18 = phi i16 [ %best_fw_ref.178465, %lor.lhs.false3074 ], [ %ref.4.best_fw_ref.17, %cond.end3108 ]
  %inc3124 = add i16 %ref.48466, 1
  %conv3062 = sext i16 %inc3124 to i32
  %cmp3066 = icmp slt i32 %conv3062, %615
  br i1 %cmp3066, label %for.body3068, label %for.cond3126.loopexit

for.cond3126.loopexit:                            ; preds = %for.inc3123, %if.else3060
  %best_fw_ref.17.lcssa = phi i16 [ %best_fw_ref.168498, %if.else3060 ], [ %best_fw_ref.18, %for.inc3123 ]
  %fw_mcost.4.lcssa = phi i32 [ 2147483647, %if.else3060 ], [ %fw_mcost.5, %for.inc3123 ]
  %.pre9086.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y3134.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre9086.pre, i64 0, i32 32
  %.pre9087.pre = load i32* %block_y3134.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %block_x3139.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre9086.pre, i64 0, i32 31
  %.pre9088.pre = load i32* %block_x3139.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %.pre9089.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx3145.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9089.pre, i64 0, i32 32
  %.pre9090.pre = load i16**** %ref_idx3145.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9091.pre = load i16*** %.pre9090.pre, align 8, !tbaa !0
  %ref_pic_id3181.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre9089.pre, i64 0, i32 33
  %.pre9092.pre = load i64**** %ref_pic_id3181.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre9093.pre = load i64*** %.pre9092.pre, align 8, !tbaa !0
  br label %for.cond3130.preheader

for.cond3130.preheader:                           ; preds = %for.inc3188, %for.cond3126.loopexit
  %j.128474 = phi i32 [ 0, %for.cond3126.loopexit ], [ %inc3189, %for.inc3188 ]
  %add3136 = add i32 %j.128474, %and3135
  br label %for.body3133

for.body3133:                                     ; preds = %for.body3133, %for.cond3130.preheader
  %i.128473 = phi i32 [ 0, %for.cond3130.preheader ], [ %inc3186, %for.body3133 ]
  %add3137 = add i32 %add3136, %.pre9087.pre
  %idxprom3138 = sext i32 %add3137 to i64
  %add3142 = add i32 %i.128473, %mul3141
  %add3143 = add i32 %add3142, %.pre9088.pre
  %idxprom3144 = sext i32 %add3143 to i64
  %arrayidx3147 = getelementptr inbounds i16** %.pre9091.pre, i64 %idxprom3144
  %625 = load i16** %arrayidx3147, align 8, !tbaa !0
  %arrayidx3148 = getelementptr inbounds i16* %625, i64 %idxprom3138
  store i16 %best_fw_ref.17.lcssa, i16* %arrayidx3148, align 2, !tbaa !4
  %idxprom3164 = sext i16 %best_fw_ref.17.lcssa to i64
  %arrayidx3169 = getelementptr inbounds %struct.storable_picture* %.pre9089.pre, i64 0, i32 6, i64 %idxprom5808171, i64 %idxprom3164
  %626 = load i64* %arrayidx3169, align 8, !tbaa !5
  %arrayidx3183 = getelementptr inbounds i64** %.pre9093.pre, i64 %idxprom3144
  %627 = load i64** %arrayidx3183, align 8, !tbaa !0
  %arrayidx3184 = getelementptr inbounds i64* %627, i64 %idxprom3138
  store i64 %626, i64* %arrayidx3184, align 8, !tbaa !5
  %inc3186 = add nsw i32 %i.128473, 1
  %exitcond8790 = icmp eq i32 %inc3186, 2
  br i1 %exitcond8790, label %for.inc3188, label %for.body3133

for.inc3188:                                      ; preds = %for.body3133
  %inc3189 = add nsw i32 %j.128474, 1
  %exitcond8791 = icmp eq i32 %inc3189, 2
  br i1 %exitcond8791, label %for.end3190, label %for.cond3130.preheader

for.end3190:                                      ; preds = %for.inc3188
  br i1 %cmp15, label %for.cond3193.preheader, label %if.else3353

for.cond3193.preheader:                           ; preds = %for.end3190
  %628 = load i32* %arrayidx647, align 4, !tbaa !3
  %cmp31988475 = icmp sgt i32 %628, 0
  %629 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt32018476 = getelementptr inbounds %struct.InputParameters* %629, i64 0, i32 85
  %630 = load i32* %rdopt32018476, align 4, !tbaa !3
  %tobool32028477 = icmp ne i32 %630, 0
  br i1 %cmp31988475, label %for.body3200.lr.ph, label %for.end3246

for.body3200.lr.ph:                               ; preds = %for.cond3193.preheader
  %631 = load i32** @refbits, align 8, !tbaa !0
  %632 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx3235 = getelementptr inbounds i32**** %632, i64 %idxprom3003
  %633 = load i32**** %arrayidx3235, align 8, !tbaa !0
  %arrayidx3236 = getelementptr inbounds i32*** %633, i64 1
  %634 = load i32*** %arrayidx3236, align 8, !tbaa !0
  br label %for.body3200

for.body3200:                                     ; preds = %for.body3200.lr.ph, %cond.end3230
  %best_bw_ref.178480 = phi i16 [ %best_bw_ref.168502, %for.body3200.lr.ph ], [ %ref.5.best_bw_ref.17, %cond.end3230 ]
  %ref.58479 = phi i16 [ 0, %for.body3200.lr.ph ], [ %inc3245, %cond.end3230 ]
  %bw_mcost.48478 = phi i32 [ 2147483647, %for.body3200.lr.ph ], [ %add3239.bw_mcost.4, %cond.end3230 ]
  br i1 %tobool32028477, label %cond.true3203, label %cond.false3217

cond.true3203:                                    ; preds = %for.body3200
  %cmp3207 = icmp slt i32 %628, 2
  br i1 %cmp3207, label %cond.end3213, label %cond.false3210

cond.false3210:                                   ; preds = %cond.true3203
  %idxprom3211 = sext i16 %ref.58479 to i64
  %arrayidx3212 = getelementptr inbounds i32* %631, i64 %idxprom3211
  %635 = load i32* %arrayidx3212, align 4, !tbaa !3
  br label %cond.end3213

cond.end3213:                                     ; preds = %cond.true3203, %cond.false3210
  %cond3214 = phi i32 [ %635, %cond.false3210 ], [ 0, %cond.true3203 ]
  %mul3215 = mul nsw i32 %cond3214, %conv513
  %shr3216 = ashr i32 %mul3215, 16
  br label %cond.end3230

cond.false3217:                                   ; preds = %for.body3200
  %cmp3220 = icmp slt i16 %ref.58479, 1
  br i1 %cmp3220, label %cond.true3222, label %cond.end3225

cond.true3222:                                    ; preds = %cond.false3217
  %phitmp8158 = sitofp i16 %ref.58479 to double
  br label %cond.end3225

cond.end3225:                                     ; preds = %cond.false3217, %cond.true3222
  %cond3226 = phi double [ %phitmp8158, %cond.true3222 ], [ 1.000000e+00, %cond.false3217 ]
  %mul3228 = fmul double %mul781, %cond3226
  %conv3229 = fptosi double %mul3228 to i32
  br label %cond.end3230

cond.end3230:                                     ; preds = %cond.end3225, %cond.end3213
  %cond3231 = phi i32 [ %shr3216, %cond.end3213 ], [ %conv3229, %cond.end3225 ]
  %idxprom3233 = sext i16 %ref.58479 to i64
  %arrayidx3237 = getelementptr inbounds i32** %634, i64 %idxprom3233
  %636 = load i32** %arrayidx3237, align 8, !tbaa !0
  %arrayidx3238 = getelementptr inbounds i32* %636, i64 %indvars.iv8863
  %637 = load i32* %arrayidx3238, align 4, !tbaa !3
  %add3239 = add nsw i32 %637, %cond3231
  %cmp3240 = icmp slt i32 %add3239, %bw_mcost.48478
  %add3239.bw_mcost.4 = select i1 %cmp3240, i32 %add3239, i32 %bw_mcost.48478
  %ref.5.best_bw_ref.17 = select i1 %cmp3240, i16 %ref.58479, i16 %best_bw_ref.178480
  %inc3245 = add i16 %ref.58479, 1
  %conv3194 = sext i16 %inc3245 to i32
  %cmp3198 = icmp slt i32 %conv3194, %628
  br i1 %cmp3198, label %for.body3200, label %for.end3246

for.end3246:                                      ; preds = %cond.end3230, %for.cond3193.preheader
  %best_bw_ref.17.lcssa = phi i16 [ %best_bw_ref.168502, %for.cond3193.preheader ], [ %ref.5.best_bw_ref.17, %cond.end3230 ]
  %bw_mcost.4.lcssa = phi i32 [ 2147483647, %for.cond3193.preheader ], [ %add3239.bw_mcost.4, %cond.end3230 ]
  br i1 %tobool32028477, label %cond.true3249, label %cond.false3276

cond.true3249:                                    ; preds = %for.end3246
  %cmp3253 = icmp slt i32 %615, 2
  br i1 %cmp3253, label %cond.end3259, label %cond.false3256

cond.false3256:                                   ; preds = %cond.true3249
  %638 = load i32** @refbits, align 8, !tbaa !0
  %arrayidx3258 = getelementptr inbounds i32* %638, i64 %idxprom3164
  %639 = load i32* %arrayidx3258, align 4, !tbaa !3
  br label %cond.end3259

cond.end3259:                                     ; preds = %cond.true3249, %cond.false3256
  %cond3260 = phi i32 [ %639, %cond.false3256 ], [ 0, %cond.true3249 ]
  %mul3261 = mul nsw i32 %cond3260, %conv513
  %shr3262 = ashr i32 %mul3261, 16
  %cmp3266 = icmp slt i32 %628, 2
  br i1 %cmp3266, label %cond.end3271, label %cond.false3269

cond.false3269:                                   ; preds = %cond.end3259
  %640 = load i32** @refbits, align 8, !tbaa !0
  %641 = load i32* %640, align 4, !tbaa !3
  br label %cond.end3271

cond.end3271:                                     ; preds = %cond.end3259, %cond.false3269
  %cond3272 = phi i32 [ %641, %cond.false3269 ], [ 0, %cond.end3259 ]
  %mul3273 = mul nsw i32 %cond3272, %conv513
  %shr3274 = ashr i32 %mul3273, 16
  %add3275 = add nsw i32 %shr3274, %shr3262
  br label %cond.end3289

cond.false3276:                                   ; preds = %for.end3246
  %cmp3279 = icmp slt i16 %best_fw_ref.17.lcssa, 1
  br i1 %cmp3279, label %cond.true3281, label %cond.end3284

cond.true3281:                                    ; preds = %cond.false3276
  %phitmp8157 = sitofp i16 %best_fw_ref.17.lcssa to double
  br label %cond.end3284

cond.end3284:                                     ; preds = %cond.false3276, %cond.true3281
  %cond3285 = phi double [ %phitmp8157, %cond.true3281 ], [ 1.000000e+00, %cond.false3276 ]
  %mul3287 = fmul double %mul781, %cond3285
  %conv3288 = fptosi double %mul3287 to i32
  br label %cond.end3289

cond.end3289:                                     ; preds = %cond.end3284, %cond.end3271
  %cond3290 = phi i32 [ %add3275, %cond.end3271 ], [ %conv3288, %cond.end3284 ]
  %call3291 = call i32 @BIDPartitionCost(i32 %597, i32 %590, i16 signext %best_fw_ref.17.lcssa, i16 signext 0, i32 %conv513) #8
  %add3292 = add nsw i32 %call3291, %cond3290
  %cmp3293 = icmp sgt i32 %fw_mcost.4.lcssa, %bw_mcost.4.lcssa
  %cmp3296 = icmp sgt i32 %fw_mcost.4.lcssa, %add3292
  %or.cond8231 = or i1 %cmp3293, %cmp3296
  br i1 %or.cond8231, label %if.else3299, label %if.then3298

if.then3298:                                      ; preds = %cond.end3289
  store i32 %fw_mcost.4.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end3308

if.else3299:                                      ; preds = %cond.end3289
  %cmp3300 = icmp sgt i32 %bw_mcost.4.lcssa, %fw_mcost.4.lcssa
  %cmp3303 = icmp sgt i32 %bw_mcost.4.lcssa, %add3292
  %or.cond8232 = or i1 %cmp3300, %cmp3303
  br i1 %or.cond8232, label %if.else3306, label %if.then3305

if.then3305:                                      ; preds = %if.else3299
  store i32 %bw_mcost.4.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end3308

if.else3306:                                      ; preds = %if.else3299
  store i32 %add3292, i32* %cost, align 4, !tbaa !3
  br label %if.end3308

if.end3308:                                       ; preds = %if.then3305, %if.else3306, %if.then3298
  %best_fw_ref.19 = phi i16 [ %best_fw_ref.17.lcssa, %if.then3298 ], [ -1, %if.then3305 ], [ %best_fw_ref.17.lcssa, %if.else3306 ]
  %best_pdir.3 = phi i16 [ 0, %if.then3298 ], [ 1, %if.then3305 ], [ 2, %if.else3306 ]
  %best_bw_ref.19 = phi i16 [ -1, %if.then3298 ], [ %best_bw_ref.17.lcssa, %if.then3305 ], [ 0, %if.else3306 ]
  %642 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y3317 = getelementptr inbounds %struct.ImageParameters* %642, i64 0, i32 32
  %643 = load i32* %block_y3317, align 4, !tbaa !3
  %block_x3322 = getelementptr inbounds %struct.ImageParameters* %642, i64 0, i32 31
  %644 = load i32* %block_x3322, align 4, !tbaa !3
  %645 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx3328 = getelementptr inbounds %struct.storable_picture* %645, i64 0, i32 32
  %646 = load i16**** %ref_idx3328, align 8, !tbaa !0
  %647 = load i16*** %646, align 8, !tbaa !0
  %arrayidx3344 = getelementptr inbounds i16*** %646, i64 1
  %648 = load i16*** %arrayidx3344, align 8, !tbaa !0
  br label %for.cond3313.preheader

for.cond3313.preheader:                           ; preds = %for.inc3350, %if.end3308
  %indvars.iv8796 = phi i64 [ 0, %if.end3308 ], [ %indvars.iv.next8797, %for.inc3350 ]
  %649 = trunc i64 %indvars.iv8796 to i32
  %add3319 = add i32 %649, %and3135
  %add3320 = add i32 %add3319, %643
  %idxprom3321 = sext i32 %add3320 to i64
  br label %for.body3316

for.body3316:                                     ; preds = %for.body3316, %for.cond3313.preheader
  %indvars.iv8792 = phi i64 [ 0, %for.cond3313.preheader ], [ %indvars.iv.next8793, %for.body3316 ]
  %650 = trunc i64 %indvars.iv8792 to i32
  %add3325 = add i32 %650, %mul3141
  %add3326 = add i32 %add3325, %644
  %idxprom3327 = sext i32 %add3326 to i64
  %arrayidx3330 = getelementptr inbounds i16** %647, i64 %idxprom3327
  %651 = load i16** %arrayidx3330, align 8, !tbaa !0
  %arrayidx3331 = getelementptr inbounds i16* %651, i64 %idxprom3321
  store i16 %best_fw_ref.19, i16* %arrayidx3331, align 2, !tbaa !4
  %arrayidx3345 = getelementptr inbounds i16** %648, i64 %idxprom3327
  %652 = load i16** %arrayidx3345, align 8, !tbaa !0
  %arrayidx3346 = getelementptr inbounds i16* %652, i64 %idxprom3321
  store i16 %best_bw_ref.19, i16* %arrayidx3346, align 2, !tbaa !4
  %indvars.iv.next8793 = add i64 %indvars.iv8792, 1
  %lftr.wideiv8794 = trunc i64 %indvars.iv.next8793 to i32
  %exitcond8795 = icmp eq i32 %lftr.wideiv8794, 2
  br i1 %exitcond8795, label %for.inc3350, label %for.body3316

for.inc3350:                                      ; preds = %for.body3316
  %indvars.iv.next8797 = add i64 %indvars.iv8796, 1
  %lftr.wideiv8798 = trunc i64 %indvars.iv.next8797 to i32
  %exitcond8799 = icmp eq i32 %lftr.wideiv8798, 2
  br i1 %exitcond8799, label %if.end3355, label %for.cond3313.preheader

if.else3353:                                      ; preds = %for.end3190
  store i32 %fw_mcost.4.lcssa, i32* %cost, align 4, !tbaa !3
  br label %if.end3355

if.end3355:                                       ; preds = %for.inc3350, %if.else3353, %if.end3024
  %best_fw_ref.20 = phi i16 [ %608, %if.end3024 ], [ %best_fw_ref.17.lcssa, %if.else3353 ], [ %best_fw_ref.19, %for.inc3350 ]
  %cost_direct.12 = phi i32 [ %cost_direct.11, %if.end3024 ], [ %cost_direct.98500, %if.else3353 ], [ %cost_direct.98500, %for.inc3350 ]
  %have_direct.10 = phi i32 [ %have_direct.9, %if.end3024 ], [ %have_direct.88501, %if.else3353 ], [ %have_direct.88501, %for.inc3350 ]
  %best_pdir.4 = phi i16 [ %614, %if.end3024 ], [ 0, %if.else3353 ], [ %best_pdir.3, %for.inc3350 ]
  %best_bw_ref.20 = phi i16 [ %611, %if.end3024 ], [ %best_bw_ref.168502, %if.else3353 ], [ %best_bw_ref.19, %for.inc3350 ]
  %653 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %653) #8
  %654 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3356 = getelementptr inbounds %struct.InputParameters* %654, i64 0, i32 85
  %655 = load i32* %rdopt3356, align 4, !tbaa !3
  %tobool3357 = icmp eq i32 %655, 0
  br i1 %tobool3357, label %if.else3360, label %if.then3358

if.then3358:                                      ; preds = %if.end3355
  %call3359 = call double @RDCost_for_8x8blocks(i32* %cnt_nonz, i64* %curr_cbp_blk, double %lambda_mode.4, i32 %590, i32 %597, i16 signext %best_pdir.4, i16 signext %best_fw_ref.20, i16 signext %best_bw_ref.20) #10
  br label %if.end3386

if.else3360:                                      ; preds = %if.end3355
  %656 = load i32* %cost, align 4, !tbaa !3
  %cmp3361 = icmp eq i32 %656, 2147483647
  br i1 %cmp3361, label %if.end3386, label %if.then3363

if.then3363:                                      ; preds = %if.else3360
  %not.cmp3365 = icmp sgt i16 %best_pdir.4, 0
  %cond3367 = zext i1 %not.cmp3365 to i32
  %add3368 = or i32 %cond3367, %list_offset.0
  %idxprom33698154 = zext i32 %add3368 to i64
  %arrayidx3370 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %idxprom33698154
  %657 = load i32* %arrayidx3370, align 4, !tbaa !3
  %cmp3371 = icmp slt i32 %657, 2
  br i1 %cmp3371, label %cond.end3379, label %cond.false3374

cond.false3374:                                   ; preds = %if.then3363
  %conv3364 = sext i16 %best_pdir.4 to i32
  %call3376 = call i32 @B8Mode2Value(i32 %597, i32 %conv3364) #8
  %idxprom3377 = sext i32 %call3376 to i64
  %658 = load i32** @refbits, align 8, !tbaa !0
  %arrayidx3378 = getelementptr inbounds i32* %658, i64 %idxprom3377
  %659 = load i32* %arrayidx3378, align 4, !tbaa !3
  %.pre9094 = load i32* %cost, align 4, !tbaa !3
  br label %cond.end3379

cond.end3379:                                     ; preds = %if.then3363, %cond.false3374
  %660 = phi i32 [ %.pre9094, %cond.false3374 ], [ %656, %if.then3363 ]
  %cond3380 = phi i32 [ %659, %cond.false3374 ], [ 0, %if.then3363 ]
  %mul3381 = mul nsw i32 %cond3380, %conv513
  %shr3382 = ashr i32 %mul3381, 16
  %sub3383 = add i32 %660, -1
  %add3384 = add i32 %sub3383, %shr3382
  store i32 %add3384, i32* %cost, align 4, !tbaa !3
  br label %if.end3386

if.end3386:                                       ; preds = %if.else3360, %cond.end3379, %if.then3358
  %rdcost.8 = phi double [ %call3359, %if.then3358 ], [ %rdcost.78496, %cond.end3379 ], [ %rdcost.78496, %if.else3360 ]
  %661 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3387 = getelementptr inbounds %struct.InputParameters* %661, i64 0, i32 85
  %662 = load i32* %rdopt3387, align 4, !tbaa !3
  %tobool3388 = icmp eq i32 %662, 0
  br i1 %tobool3388, label %land.lhs.true3395, label %land.lhs.true3389

land.lhs.true3389:                                ; preds = %if.end3386
  %cmp3390 = fcmp olt double %rdcost.8, %rdcost.88532
  br i1 %cmp3390, label %if.then3410, label %if.end3567

land.lhs.true3395:                                ; preds = %if.end3386
  %663 = load i32* %cost, align 4, !tbaa !3
  %cmp3396 = icmp slt i32 %663, %min_cost8x8.38499
  br i1 %cmp3396, label %if.then3398.if.end3498_crit_edge, label %if.end3567

if.then3398.if.end3498_crit_edge:                 ; preds = %land.lhs.true3395
  %conv33999180 = trunc i32 %597 to i16
  store i16 %conv33999180, i16* %arrayidx3401, align 2, !tbaa !4
  store i16 %best_pdir.4, i16* %arrayidx3403, align 2, !tbaa !4
  store i16 %best_fw_ref.20, i16* %arrayidx3405, align 2, !tbaa !4
  store i16 %best_bw_ref.20, i16* %arrayidx3407, align 2, !tbaa !4
  %664 = load i32* %cnt_nonz, align 4, !tbaa !3
  %.pre9132 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end3498

if.then3410:                                      ; preds = %land.lhs.true3389
  %.pre9131 = load i32* %cost, align 4, !tbaa !3
  %conv3399 = trunc i32 %597 to i16
  store i16 %conv3399, i16* %arrayidx3401, align 2, !tbaa !4
  store i16 %best_pdir.4, i16* %arrayidx3403, align 2, !tbaa !4
  store i16 %best_fw_ref.20, i16* %arrayidx3405, align 2, !tbaa !4
  store i16 %best_bw_ref.20, i16* %arrayidx3407, align 2, !tbaa !4
  %665 = load i32* %cnt_nonz, align 4, !tbaa !3
  %666 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %and3418 = and i32 %666, %neg3417
  %667 = load i64* %curr_cbp_blk, align 8, !tbaa !5
  %conv34198153 = zext i32 %and3418 to i64
  %or3420 = or i64 %conv34198153, %667
  %conv3421 = trunc i64 %or3420 to i32
  store i32 %conv3421, i32* @cbp_blk8x8, align 4, !tbaa !3
  %668 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC3438 = getelementptr inbounds %struct.ImageParameters* %668, i64 0, i32 47
  %669 = load i32***** %cofAC3438, align 8, !tbaa !0
  %arrayidx3439 = getelementptr inbounds i32**** %669, i64 %indvars.iv8863
  %670 = load i32**** %arrayidx3439, align 8, !tbaa !0
  %671 = load i32***** @cofAC8x8, align 8, !tbaa !0
  %arrayidx3447 = getelementptr inbounds i32**** %671, i64 %indvars.iv8863
  %672 = load i32**** %arrayidx3447, align 8, !tbaa !0
  br label %for.cond3426.preheader

for.cond3426.preheader:                           ; preds = %for.inc3457, %if.then3410
  %indvars.iv8808 = phi i64 [ 0, %if.then3410 ], [ %indvars.iv.next8809, %for.inc3457 ]
  %arrayidx3440 = getelementptr inbounds i32*** %670, i64 %indvars.iv8808
  %673 = load i32*** %arrayidx3440, align 8, !tbaa !0
  %arrayidx3448 = getelementptr inbounds i32*** %672, i64 %indvars.iv8808
  %674 = load i32*** %arrayidx3448, align 8, !tbaa !0
  br label %for.cond3430.preheader

for.cond3430.preheader:                           ; preds = %for.inc3454, %for.cond3426.preheader
  %indvars.iv8804 = phi i64 [ 0, %for.cond3426.preheader ], [ %indvars.iv.next8805, %for.inc3454 ]
  %arrayidx3441 = getelementptr inbounds i32** %673, i64 %indvars.iv8804
  %675 = load i32** %arrayidx3441, align 8, !tbaa !0
  %arrayidx3449 = getelementptr inbounds i32** %674, i64 %indvars.iv8804
  %676 = load i32** %arrayidx3449, align 8, !tbaa !0
  br label %for.body3433

for.body3433:                                     ; preds = %for.body3433, %for.cond3430.preheader
  %indvars.iv8800 = phi i64 [ 0, %for.cond3430.preheader ], [ %indvars.iv.next8801, %for.body3433 ]
  %arrayidx3442 = getelementptr inbounds i32* %675, i64 %indvars.iv8800
  %677 = load i32* %arrayidx3442, align 4, !tbaa !3
  %arrayidx3450 = getelementptr inbounds i32* %676, i64 %indvars.iv8800
  store i32 %677, i32* %arrayidx3450, align 4, !tbaa !3
  %indvars.iv.next8801 = add i64 %indvars.iv8800, 1
  %lftr.wideiv8802 = trunc i64 %indvars.iv.next8801 to i32
  %exitcond8803 = icmp eq i32 %lftr.wideiv8802, 65
  br i1 %exitcond8803, label %for.inc3454, label %for.body3433

for.inc3454:                                      ; preds = %for.body3433
  %indvars.iv.next8805 = add i64 %indvars.iv8804, 1
  %lftr.wideiv8806 = trunc i64 %indvars.iv.next8805 to i32
  %exitcond8807 = icmp eq i32 %lftr.wideiv8806, 2
  br i1 %exitcond8807, label %for.inc3457, label %for.cond3430.preheader

for.inc3457:                                      ; preds = %for.inc3454
  %indvars.iv.next8809 = add i64 %indvars.iv8808, 1
  %lftr.wideiv8810 = trunc i64 %indvars.iv.next8809 to i32
  %exitcond8811 = icmp eq i32 %lftr.wideiv8810, 4
  br i1 %exitcond8811, label %for.cond3460.loopexit, label %for.cond3426.preheader

for.cond3460.loopexit:                            ; preds = %for.inc3457
  %pix_x3470 = getelementptr inbounds %struct.ImageParameters* %668, i64 0, i32 33
  %678 = load i32* %pix_x3470, align 4, !tbaa !3
  %pix_y3473 = getelementptr inbounds %struct.ImageParameters* %668, i64 0, i32 34
  %679 = load i32* %pix_y3473, align 4, !tbaa !3
  %680 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY3476 = getelementptr inbounds %struct.storable_picture* %680, i64 0, i32 25
  %681 = load i16*** %imgY3476, align 8, !tbaa !0
  %682 = sext i32 %678 to i64
  %683 = sext i32 %679 to i64
  br label %for.cond3465.preheader

for.cond3465.preheader:                           ; preds = %for.cond3460.loopexit, %for.inc3495
  %indvars.iv8816 = phi i64 [ %596, %for.cond3460.loopexit ], [ %indvars.iv.next8817, %for.inc3495 ]
  %684 = add nsw i64 %683, %indvars.iv8816
  %arrayidx3477 = getelementptr inbounds i16** %681, i64 %684
  %685 = load i16** %arrayidx3477, align 8, !tbaa !0
  br label %for.body3469

for.body3469:                                     ; preds = %for.cond3465.preheader, %for.body3469
  %indvars.iv8812 = phi i64 [ %594, %for.cond3465.preheader ], [ %indvars.iv.next8813, %for.body3469 ]
  %686 = add nsw i64 %682, %indvars.iv8812
  %arrayidx3478 = getelementptr inbounds i16* %685, i64 %686
  %687 = load i16* %arrayidx3478, align 2, !tbaa !4
  %arrayidx3482 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY8x8, i64 0, i64 %indvars.iv8816, i64 %indvars.iv8812
  store i16 %687, i16* %arrayidx3482, align 2, !tbaa !4
  %arrayidx3487 = getelementptr inbounds %struct.ImageParameters* %668, i64 0, i32 45, i64 %indvars.iv8812, i64 %indvars.iv8816
  %688 = load i16* %arrayidx3487, align 2, !tbaa !4
  %arrayidx3491 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %indvars.iv8816, i64 %indvars.iv8812
  store i16 %688, i16* %arrayidx3491, align 2, !tbaa !4
  %indvars.iv.next8813 = add i64 %indvars.iv8812, 1
  %689 = or i32 %shl2993, 7
  %690 = trunc i64 %indvars.iv8812 to i32
  %cmp3467 = icmp slt i32 %690, %689
  br i1 %cmp3467, label %for.body3469, label %for.inc3495

for.inc3495:                                      ; preds = %for.body3469
  %indvars.iv.next8817 = add i64 %indvars.iv8816, 1
  %691 = or i32 %shl2990, 7
  %692 = trunc i64 %indvars.iv8816 to i32
  %cmp3462 = icmp slt i32 %692, %691
  br i1 %cmp3462, label %for.cond3465.preheader, label %if.end3498

if.end3498:                                       ; preds = %for.inc3495, %if.then3398.if.end3498_crit_edge
  %693 = phi i32 [ %664, %if.then3398.if.end3498_crit_edge ], [ %665, %for.inc3495 ]
  %694 = phi i32 [ %663, %if.then3398.if.end3498_crit_edge ], [ %.pre9131, %for.inc3495 ]
  %695 = phi %struct.ImageParameters* [ %.pre9132, %if.then3398.if.end3498_crit_edge ], [ %668, %for.inc3495 ]
  %residue_transform_flag3499 = getelementptr inbounds %struct.ImageParameters* %695, i64 0, i32 164
  %696 = load i32* %residue_transform_flag3499, align 4, !tbaa !3
  %tobool3500 = icmp eq i32 %696, 0
  br i1 %tobool3500, label %if.end3566, label %for.cond3507.preheader

for.cond3507.preheader:                           ; preds = %if.end3498, %for.inc3563
  %indvars.iv8821 = phi i64 [ %indvars.iv.next8822, %for.inc3563 ], [ %596, %if.end3498 ]
  br label %for.body3511

for.body3511:                                     ; preds = %for.cond3507.preheader, %for.body3511
  %indvars.iv8819 = phi i64 [ %594, %for.cond3507.preheader ], [ %indvars.iv.next8820, %for.body3511 ]
  %arrayidx3515 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  %697 = load i32* %arrayidx3515, align 4, !tbaa !3
  %arrayidx3519 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %697, i32* %arrayidx3519, align 4, !tbaa !3
  %arrayidx3523 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  %698 = load i32* %arrayidx3523, align 4, !tbaa !3
  %arrayidx3527 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %698, i32* %arrayidx3527, align 4, !tbaa !3
  %arrayidx3531 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  %699 = load i32* %arrayidx3531, align 4, !tbaa !3
  %arrayidx3535 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %699, i32* %arrayidx3535, align 4, !tbaa !3
  %arrayidx3539 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  %700 = load i32* %arrayidx3539, align 4, !tbaa !3
  %arrayidx3543 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 0, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %700, i32* %arrayidx3543, align 4, !tbaa !3
  %arrayidx3547 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv8819, i64 %indvars.iv8821
  %701 = load i32* %arrayidx3547, align 4, !tbaa !3
  %arrayidx3551 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 1, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %701, i32* %arrayidx3551, align 4, !tbaa !3
  %arrayidx3555 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv8819, i64 %indvars.iv8821
  %702 = load i32* %arrayidx3555, align 4, !tbaa !3
  %arrayidx3559 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 2, i64 %indvars.iv8819, i64 %indvars.iv8821
  store i32 %702, i32* %arrayidx3559, align 4, !tbaa !3
  %indvars.iv.next8820 = add i64 %indvars.iv8819, 1
  %703 = or i32 %shl2993, 7
  %704 = trunc i64 %indvars.iv8819 to i32
  %cmp3509 = icmp slt i32 %704, %703
  br i1 %cmp3509, label %for.body3511, label %for.inc3563

for.inc3563:                                      ; preds = %for.body3511
  %indvars.iv.next8822 = add i64 %indvars.iv8821, 1
  %705 = or i32 %shl2990, 7
  %706 = trunc i64 %indvars.iv8821 to i32
  %cmp3504 = icmp slt i32 %706, %705
  br i1 %cmp3504, label %for.cond3507.preheader, label %if.end3566

if.end3566:                                       ; preds = %for.inc3563, %if.end3498
  %707 = load %struct.CSobj** @cs_b8, align 8, !tbaa !0
  call void @store_coding_state(%struct.CSobj* %707) #8
  br label %if.end3567

if.end3567:                                       ; preds = %land.lhs.true3389, %if.end3566, %land.lhs.true3395
  %rdcost.88534 = phi double [ %rdcost.8, %if.end3566 ], [ %rdcost.88532, %land.lhs.true3395 ], [ %rdcost.88532, %land.lhs.true3389 ]
  %best_cnt_nonz.9 = phi i32 [ %693, %if.end3566 ], [ %best_cnt_nonz.88497, %land.lhs.true3395 ], [ %best_cnt_nonz.88497, %land.lhs.true3389 ]
  %min_cost8x8.4 = phi i32 [ %694, %if.end3566 ], [ %min_cost8x8.38499, %land.lhs.true3395 ], [ %min_cost8x8.38499, %land.lhs.true3389 ]
  %708 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %708) #8
  br label %for.inc3569

for.inc3569:                                      ; preds = %for.body3000, %if.end3567
  %rdcost.88533 = phi double [ %rdcost.88534, %if.end3567 ], [ %rdcost.88532, %for.body3000 ]
  %rdcost.9 = phi double [ %rdcost.8, %if.end3567 ], [ %rdcost.78496, %for.body3000 ]
  %best_cnt_nonz.10 = phi i32 [ %best_cnt_nonz.9, %if.end3567 ], [ %best_cnt_nonz.88497, %for.body3000 ]
  %best_fw_ref.21 = phi i16 [ %best_fw_ref.20, %if.end3567 ], [ %best_fw_ref.168498, %for.body3000 ]
  %min_cost8x8.5 = phi i32 [ %min_cost8x8.4, %if.end3567 ], [ %min_cost8x8.38499, %for.body3000 ]
  %cost_direct.13 = phi i32 [ %cost_direct.12, %if.end3567 ], [ %cost_direct.98500, %for.body3000 ]
  %have_direct.11 = phi i32 [ %have_direct.10, %if.end3567 ], [ %have_direct.88501, %for.body3000 ]
  %best_bw_ref.21 = phi i16 [ %best_bw_ref.20, %if.end3567 ], [ %best_bw_ref.168502, %for.body3000 ]
  %indvars.iv.next8824 = add i64 %indvars.iv8823, 1
  %709 = trunc i64 %indvars.iv.next8824 to i32
  %cmp2998 = icmp slt i32 %709, 5
  br i1 %cmp2998, label %for.body3000, label %for.end3571

for.end3571:                                      ; preds = %for.inc3569
  %add3572 = add nsw i32 %min_cost8x8.5, %cost8x8.28527
  %710 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3573 = getelementptr inbounds %struct.InputParameters* %710, i64 0, i32 85
  %711 = load i32* %rdopt3573, align 4, !tbaa !3
  %tobool3574 = icmp eq i32 %711, 0
  br i1 %tobool3574, label %if.then3575, label %if.end3763

if.then3575:                                      ; preds = %for.end3571
  %arrayidx3577 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %indvars.iv8863
  %712 = load i16* %arrayidx3577, align 2, !tbaa !4
  %conv3578 = sext i16 %712 to i32
  %arrayidx3580 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 8, i64 %indvars.iv8863
  %713 = load i16* %arrayidx3580, align 2, !tbaa !4
  store i64 0, i64* %curr_cbp_blk, align 8, !tbaa !5
  switch i16 %713, label %cond.end3590 [
    i16 0, label %cond.true3588
    i16 2, label %cond.true3588
  ]

cond.true3588:                                    ; preds = %if.then3575, %if.then3575
  br label %cond.end3590

cond.end3590:                                     ; preds = %if.then3575, %cond.true3588
  %cond3591 = phi i32 [ %conv3578, %cond.true3588 ], [ 0, %if.then3575 ]
  %.off8269 = add i16 %713, -1
  %switch8270 = icmp ult i16 %.off8269, 2
  %conv3578. = select i1 %switch8270, i32 %conv3578, i32 0
  %arrayidx3604 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 8, i64 %indvars.iv8863
  %714 = load i16* %arrayidx3604, align 2, !tbaa !4
  %arrayidx3606 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 8, i64 %indvars.iv8863
  %715 = load i16* %arrayidx3606, align 2, !tbaa !4
  %call3607 = call i32 @LumaResidualCoding8x8(i32* %dummy, i64* %curr_cbp_blk, i32 %590, i16 signext %713, i32 %cond3591, i32 %conv3578., i16 signext %714, i16 signext %715) #8
  %shr36088149 = lshr i32 %590, 1
  %shl3609 = shl i32 %shr36088149, 3
  %shl3611 = shl i32 %rem2992, 1
  %add3612 = add nsw i32 %shl3611, %shl3609
  %shl3613 = shl i32 51, %add3612
  %neg3614 = xor i32 %shl3613, -1
  %716 = load i32* @cbp_blk8x8, align 4, !tbaa !3
  %and3615 = and i32 %716, %neg3614
  %717 = load i64* %curr_cbp_blk, align 8, !tbaa !5
  %conv36168150 = zext i32 %and3615 to i64
  %or3617 = or i64 %conv36168150, %717
  %conv3618 = trunc i64 %or3617 to i32
  store i32 %conv3618, i32* @cbp_blk8x8, align 4, !tbaa !3
  %718 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC3635 = getelementptr inbounds %struct.ImageParameters* %718, i64 0, i32 47
  %719 = load i32***** %cofAC3635, align 8, !tbaa !0
  %arrayidx3636 = getelementptr inbounds i32**** %719, i64 %indvars.iv8863
  %720 = load i32**** %arrayidx3636, align 8, !tbaa !0
  %721 = load i32***** @cofAC8x8, align 8, !tbaa !0
  %arrayidx3644 = getelementptr inbounds i32**** %721, i64 %indvars.iv8863
  %722 = load i32**** %arrayidx3644, align 8, !tbaa !0
  br label %for.cond3623.preheader

for.cond3623.preheader:                           ; preds = %for.inc3654, %cond.end3590
  %indvars.iv8833 = phi i64 [ 0, %cond.end3590 ], [ %indvars.iv.next8834, %for.inc3654 ]
  %arrayidx3637 = getelementptr inbounds i32*** %720, i64 %indvars.iv8833
  %723 = load i32*** %arrayidx3637, align 8, !tbaa !0
  %arrayidx3645 = getelementptr inbounds i32*** %722, i64 %indvars.iv8833
  %724 = load i32*** %arrayidx3645, align 8, !tbaa !0
  br label %for.cond3627.preheader

for.cond3627.preheader:                           ; preds = %for.inc3651, %for.cond3623.preheader
  %indvars.iv8829 = phi i64 [ 0, %for.cond3623.preheader ], [ %indvars.iv.next8830, %for.inc3651 ]
  %arrayidx3638 = getelementptr inbounds i32** %723, i64 %indvars.iv8829
  %725 = load i32** %arrayidx3638, align 8, !tbaa !0
  %arrayidx3646 = getelementptr inbounds i32** %724, i64 %indvars.iv8829
  %726 = load i32** %arrayidx3646, align 8, !tbaa !0
  br label %for.body3630

for.body3630:                                     ; preds = %for.body3630, %for.cond3627.preheader
  %indvars.iv8825 = phi i64 [ 0, %for.cond3627.preheader ], [ %indvars.iv.next8826, %for.body3630 ]
  %arrayidx3639 = getelementptr inbounds i32* %725, i64 %indvars.iv8825
  %727 = load i32* %arrayidx3639, align 4, !tbaa !3
  %arrayidx3647 = getelementptr inbounds i32* %726, i64 %indvars.iv8825
  store i32 %727, i32* %arrayidx3647, align 4, !tbaa !3
  %indvars.iv.next8826 = add i64 %indvars.iv8825, 1
  %lftr.wideiv8827 = trunc i64 %indvars.iv.next8826 to i32
  %exitcond8828 = icmp eq i32 %lftr.wideiv8827, 65
  br i1 %exitcond8828, label %for.inc3651, label %for.body3630

for.inc3651:                                      ; preds = %for.body3630
  %indvars.iv.next8830 = add i64 %indvars.iv8829, 1
  %lftr.wideiv8831 = trunc i64 %indvars.iv.next8830 to i32
  %exitcond8832 = icmp eq i32 %lftr.wideiv8831, 2
  br i1 %exitcond8832, label %for.inc3654, label %for.cond3627.preheader

for.inc3654:                                      ; preds = %for.inc3651
  %indvars.iv.next8834 = add i64 %indvars.iv8833, 1
  %lftr.wideiv8835 = trunc i64 %indvars.iv.next8834 to i32
  %exitcond8836 = icmp eq i32 %lftr.wideiv8835, 4
  br i1 %exitcond8836, label %for.cond3657.loopexit, label %for.cond3623.preheader

for.cond3657.loopexit:                            ; preds = %for.inc3654
  %add3658 = add nsw i32 %shl2990, 8
  %pix_x3667 = getelementptr inbounds %struct.ImageParameters* %718, i64 0, i32 33
  %728 = load i32* %pix_x3667, align 4, !tbaa !3
  %pix_y3670 = getelementptr inbounds %struct.ImageParameters* %718, i64 0, i32 34
  %729 = load i32* %pix_y3670, align 4, !tbaa !3
  %730 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY3673 = getelementptr inbounds %struct.storable_picture* %730, i64 0, i32 25
  %731 = load i16*** %imgY3673, align 8, !tbaa !0
  %732 = shl i32 %rem2992, 3
  %733 = sext i32 %732 to i64
  %734 = sext i32 %728 to i64
  %735 = shl i32 %div2989, 3
  %736 = sext i32 %735 to i64
  %737 = sext i32 %729 to i64
  br label %for.cond3662.preheader

for.cond3662.preheader:                           ; preds = %for.cond3657.loopexit, %for.inc3692
  %indvars.iv8841 = phi i64 [ %736, %for.cond3657.loopexit ], [ %indvars.iv.next8842, %for.inc3692 ]
  %738 = add nsw i64 %737, %indvars.iv8841
  %arrayidx3674 = getelementptr inbounds i16** %731, i64 %738
  %739 = load i16** %arrayidx3674, align 8, !tbaa !0
  br label %for.body3666

for.body3666:                                     ; preds = %for.cond3662.preheader, %for.body3666
  %indvars.iv8837 = phi i64 [ %733, %for.cond3662.preheader ], [ %indvars.iv.next8838, %for.body3666 ]
  %740 = add nsw i64 %734, %indvars.iv8837
  %arrayidx3675 = getelementptr inbounds i16* %739, i64 %740
  %741 = load i16* %arrayidx3675, align 2, !tbaa !4
  %arrayidx3679 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY8x8, i64 0, i64 %indvars.iv8841, i64 %indvars.iv8837
  store i16 %741, i16* %arrayidx3679, align 2, !tbaa !4
  %arrayidx3684 = getelementptr inbounds %struct.ImageParameters* %718, i64 0, i32 45, i64 %indvars.iv8837, i64 %indvars.iv8841
  %742 = load i16* %arrayidx3684, align 2, !tbaa !4
  %arrayidx3688 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %indvars.iv8841, i64 %indvars.iv8837
  store i16 %742, i16* %arrayidx3688, align 2, !tbaa !4
  %indvars.iv.next8838 = add i64 %indvars.iv8837, 1
  %743 = or i32 %shl2993, 7
  %744 = trunc i64 %indvars.iv8837 to i32
  %cmp3664 = icmp slt i32 %744, %743
  br i1 %cmp3664, label %for.body3666, label %for.inc3692

for.inc3692:                                      ; preds = %for.body3666
  %indvars.iv.next8842 = add i64 %indvars.iv8841, 1
  %745 = trunc i64 %indvars.iv.next8842 to i32
  %cmp3659 = icmp slt i32 %745, %add3658
  br i1 %cmp3659, label %for.cond3662.preheader, label %for.end3694

for.end3694:                                      ; preds = %for.inc3692
  %residue_transform_flag3695 = getelementptr inbounds %struct.ImageParameters* %718, i64 0, i32 164
  %746 = load i32* %residue_transform_flag3695, align 4, !tbaa !3
  %tobool3696 = icmp eq i32 %746, 0
  br i1 %tobool3696, label %if.end3763, label %for.cond3703.preheader

for.cond3703.preheader:                           ; preds = %for.end3694, %for.inc3759
  %indvars.iv8846 = phi i64 [ %indvars.iv.next8847, %for.inc3759 ], [ %736, %for.end3694 ]
  br label %for.body3707

for.body3707:                                     ; preds = %for.cond3703.preheader, %for.body3707
  %indvars.iv8844 = phi i64 [ %733, %for.cond3703.preheader ], [ %indvars.iv.next8845, %for.body3707 ]
  %arrayidx3711 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  %747 = load i32* %arrayidx3711, align 4, !tbaa !3
  %arrayidx3715 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG_8x8, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %747, i32* %arrayidx3715, align 4, !tbaa !3
  %arrayidx3719 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  %748 = load i32* %arrayidx3719, align 4, !tbaa !3
  %arrayidx3723 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R_8x8, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %748, i32* %arrayidx3723, align 4, !tbaa !3
  %arrayidx3727 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  %749 = load i32* %arrayidx3727, align 4, !tbaa !3
  %arrayidx3731 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B_8x8, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %749, i32* %arrayidx3731, align 4, !tbaa !3
  %arrayidx3735 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  %750 = load i32* %arrayidx3735, align 4, !tbaa !3
  %arrayidx3739 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 0, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %750, i32* %arrayidx3739, align 4, !tbaa !3
  %arrayidx3743 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 1, i64 %indvars.iv8844, i64 %indvars.iv8846
  %751 = load i32* %arrayidx3743, align 4, !tbaa !3
  %arrayidx3747 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 1, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %751, i32* %arrayidx3747, align 4, !tbaa !3
  %arrayidx3751 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB, i64 0, i64 2, i64 %indvars.iv8844, i64 %indvars.iv8846
  %752 = load i32* %arrayidx3751, align 4, !tbaa !3
  %arrayidx3755 = getelementptr inbounds [3 x [16 x [16 x i32]]]* @mprRGB_8x8, i64 0, i64 2, i64 %indvars.iv8844, i64 %indvars.iv8846
  store i32 %752, i32* %arrayidx3755, align 4, !tbaa !3
  %indvars.iv.next8845 = add i64 %indvars.iv8844, 1
  %753 = trunc i64 %indvars.iv8844 to i32
  %cmp3705 = icmp slt i32 %753, %743
  br i1 %cmp3705, label %for.body3707, label %for.inc3759

for.inc3759:                                      ; preds = %for.body3707
  %indvars.iv.next8847 = add i64 %indvars.iv8846, 1
  %754 = trunc i64 %indvars.iv.next8847 to i32
  %cmp3700 = icmp slt i32 %754, %add3658
  br i1 %cmp3700, label %for.cond3703.preheader, label %if.end3763

if.end3763:                                       ; preds = %for.inc3759, %for.end3694, %for.end3571
  %best_cnt_nonz.11 = phi i32 [ %best_cnt_nonz.10, %for.end3571 ], [ %call3607, %for.end3694 ], [ %call3607, %for.inc3759 ]
  %tobool3764 = icmp eq i32 %best_cnt_nonz.11, 0
  br i1 %tobool3764, label %if.end3769, label %if.then3765

if.then3765:                                      ; preds = %if.end3763
  %shl3766 = shl i32 1, %590
  %755 = load i32* @cbp8x8, align 4, !tbaa !3
  %or3767 = or i32 %755, %shl3766
  store i32 %or3767, i32* @cbp8x8, align 4, !tbaa !3
  %756 = load i32* @cnt_nonz_8x8, align 4, !tbaa !3
  %add3768 = add nsw i32 %756, %best_cnt_nonz.11
  store i32 %add3768, i32* @cnt_nonz_8x8, align 4, !tbaa !3
  br label %if.end3769

if.end3769:                                       ; preds = %if.end3763, %if.then3765
  %arrayidx3771 = getelementptr inbounds [4 x i16]* @best8x8mode, i64 0, i64 %indvars.iv8863
  %757 = load i16* %arrayidx3771, align 2, !tbaa !4
  %758 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y3773 = getelementptr inbounds %struct.ImageParameters* %758, i64 0, i32 32
  %759 = load i32* %block_y3773, align 4, !tbaa !3
  %mul3775 = shl nsw i32 %div2989, 1
  %add3776 = add nsw i32 %759, %mul3775
  %block_x3777 = getelementptr inbounds %struct.ImageParameters* %758, i64 0, i32 31
  %760 = load i32* %block_x3777, align 4, !tbaa !3
  %mul3779 = shl nsw i32 %rem2992, 1
  %add3780 = add nsw i32 %760, %mul3779
  %761 = shl i32 %rem2992, 1
  %762 = add i32 %760, %761
  %763 = sext i32 %762 to i64
  %764 = shl i32 %div2989, 1
  %765 = add i32 %759, %764
  %766 = sext i32 %765 to i64
  br label %for.cond3786.preheader

for.cond3786.preheader:                           ; preds = %if.end3769, %for.inc3798
  %indvars.iv8850 = phi i64 [ %766, %if.end3769 ], [ %indvars.iv.next8851, %for.inc3798 ]
  br label %for.body3790

for.body3790:                                     ; preds = %for.cond3786.preheader, %for.body3790
  %indvars.iv8848 = phi i64 [ %763, %for.cond3786.preheader ], [ %indvars.iv.next8849, %for.body3790 ]
  %arrayidx3793 = getelementptr inbounds i32** %16, i64 %indvars.iv8848
  %767 = load i32** %arrayidx3793, align 8, !tbaa !0
  %arrayidx3794 = getelementptr inbounds i32* %767, i64 %indvars.iv8850
  store i32 2, i32* %arrayidx3794, align 4, !tbaa !3
  %indvars.iv.next8849 = add i64 %indvars.iv8848, 1
  %768 = add nsw i32 %add3780, 1
  %769 = trunc i64 %indvars.iv8848 to i32
  %cmp3788 = icmp slt i32 %769, %768
  br i1 %cmp3788, label %for.body3790, label %for.inc3798

for.inc3798:                                      ; preds = %for.body3790
  %indvars.iv.next8851 = add i64 %indvars.iv8850, 1
  %770 = add nsw i32 %add3776, 1
  %771 = trunc i64 %indvars.iv8850 to i32
  %cmp3783 = icmp slt i32 %771, %770
  br i1 %cmp3783, label %for.cond3786.preheader, label %for.end3800

for.end3800:                                      ; preds = %for.inc3798
  %772 = shl nsw i64 %indvars.iv8863, 2
  br label %for.body3806

for.body3806:                                     ; preds = %for.end3800, %for.body3806
  %indvars.iv8854 = phi i64 [ %indvars.iv8852, %for.end3800 ], [ %indvars.iv.next8855, %for.body3806 ]
  %arrayidx3808 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 10, i64 %indvars.iv8854
  store i32 2, i32* %arrayidx3808, align 4, !tbaa !3
  %indvars.iv.next8855 = add i64 %indvars.iv8854, 1
  %773 = or i64 %772, 3
  %774 = trunc i64 %indvars.iv8854 to i32
  %775 = trunc i64 %773 to i32
  %cmp3804 = icmp slt i32 %774, %775
  br i1 %cmp3804, label %for.body3806, label %for.end3811

for.end3811:                                      ; preds = %for.body3806
  %conv3772 = sext i16 %757 to i32
  %cmp3812 = icmp slt i32 %590, 3
  br i1 %cmp3812, label %if.then3814, label %if.end3848

if.then3814:                                      ; preds = %for.end3811
  %pix_x3833 = getelementptr inbounds %struct.ImageParameters* %758, i64 0, i32 33
  %776 = load i32* %pix_x3833, align 4, !tbaa !3
  %pix_y3836 = getelementptr inbounds %struct.ImageParameters* %758, i64 0, i32 34
  %777 = load i32* %pix_y3836, align 4, !tbaa !3
  %778 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY3839 = getelementptr inbounds %struct.storable_picture* %778, i64 0, i32 25
  %779 = load i16*** %imgY3839, align 8, !tbaa !0
  %780 = shl i32 %rem2992, 3
  %781 = sext i32 %780 to i64
  %782 = sext i32 %776 to i64
  %783 = shl i32 %div2989, 3
  %784 = sext i32 %783 to i64
  %785 = sext i32 %777 to i64
  br label %for.cond3824.preheader

for.cond3824.preheader:                           ; preds = %if.then3814, %for.inc3845
  %indvars.iv8860 = phi i64 [ %784, %if.then3814 ], [ %indvars.iv.next8861, %for.inc3845 ]
  %786 = add nsw i64 %785, %indvars.iv8860
  %arrayidx3840 = getelementptr inbounds i16** %779, i64 %786
  %787 = load i16** %arrayidx3840, align 8, !tbaa !0
  br label %for.body3828

for.body3828:                                     ; preds = %for.cond3824.preheader, %for.body3828
  %indvars.iv8856 = phi i64 [ %781, %for.cond3824.preheader ], [ %indvars.iv.next8857, %for.body3828 ]
  %arrayidx3832 = getelementptr inbounds [16 x [16 x i16]]* @rec_mbY8x8, i64 0, i64 %indvars.iv8860, i64 %indvars.iv8856
  %788 = load i16* %arrayidx3832, align 2, !tbaa !4
  %789 = add nsw i64 %782, %indvars.iv8856
  %arrayidx3841 = getelementptr inbounds i16* %787, i64 %789
  store i16 %788, i16* %arrayidx3841, align 2, !tbaa !4
  %indvars.iv.next8857 = add i64 %indvars.iv8856, 1
  %790 = or i32 %shl2993, 7
  %791 = trunc i64 %indvars.iv8856 to i32
  %cmp3826 = icmp slt i32 %791, %790
  br i1 %cmp3826, label %for.body3828, label %for.inc3845

for.inc3845:                                      ; preds = %for.body3828
  %indvars.iv.next8861 = add i64 %indvars.iv8860, 1
  %792 = or i32 %shl2990, 7
  %793 = trunc i64 %indvars.iv8860 to i32
  %cmp3821 = icmp slt i32 %793, %792
  br i1 %cmp3821, label %for.cond3824.preheader, label %if.end3848

if.end3848:                                       ; preds = %for.inc3845, %for.end3811
  %arrayidx3850 = getelementptr inbounds [15 x [4 x i16]]* @best8x8pdir, i64 0, i64 8, i64 %indvars.iv8863
  %794 = load i16* %arrayidx3850, align 2, !tbaa !4
  %conv3851 = sext i16 %794 to i32
  %arrayidx3853 = getelementptr inbounds [15 x [4 x i16]]* @best8x8fwref, i64 0, i64 8, i64 %indvars.iv8863
  %795 = load i16* %arrayidx3853, align 2, !tbaa !4
  %conv3854 = sext i16 %795 to i32
  %arrayidx3856 = getelementptr inbounds [15 x [4 x i16]]* @best8x8bwref, i64 0, i64 8, i64 %indvars.iv8863
  %796 = load i16* %arrayidx3856, align 2, !tbaa !4
  %conv3857 = sext i16 %796 to i32
  call void @SetRefAndMotionVectors(i32 %590, i32 %conv3772, i32 %conv3851, i32 %conv3854, i32 %conv3857) #10
  %797 = load %struct.CSobj** @cs_b8, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %797) #8
  %indvars.iv.next8864 = add i64 %indvars.iv8863, 1
  %indvars.iv.next8853 = add i64 %indvars.iv8852, 4
  %lftr.wideiv8869 = trunc i64 %indvars.iv.next8864 to i32
  %exitcond8870 = icmp eq i32 %lftr.wideiv8869, 4
  br i1 %exitcond8870, label %if.end3861.loopexit, label %for.body3000.lr.ph

if.end3861.loopexit:                              ; preds = %if.end3848
  store double %rdcost.88533, double* %min_rdcost, align 8, !tbaa !6
  br label %if.end3861

if.end3861:                                       ; preds = %if.end3861.loopexit, %if.end2980
  %cost8x8_direct.79178 = phi i32 [ %cost8x8_direct.6, %if.end2980 ], [ %cost8x8_direct.79177, %if.end3861.loopexit ]
  %rdcost.10 = phi double [ %rdcost.4, %if.end2980 ], [ %rdcost.9, %if.end3861.loopexit ]
  %best_cnt_nonz.12 = phi i32 [ %best_cnt_nonz.5, %if.end2980 ], [ %best_cnt_nonz.11, %if.end3861.loopexit ]
  %best_fw_ref.22 = phi i16 [ %best_fw_ref.13, %if.end2980 ], [ %best_fw_ref.21, %if.end3861.loopexit ]
  %cost8x8.3 = phi i32 [ 2147483647, %if.end2980 ], [ %add3572, %if.end3861.loopexit ]
  %cost_direct.14 = phi i32 [ %cost_direct.6, %if.end2980 ], [ %cost_direct.13, %if.end3861.loopexit ]
  %have_direct.12 = phi i32 [ %have_direct.5, %if.end2980 ], [ %have_direct.11, %if.end3861.loopexit ]
  %best_bw_ref.22 = phi i16 [ %best_bw_ref.13, %if.end2980 ], [ %best_bw_ref.21, %if.end3861.loopexit ]
  %798 = load %struct.CSobj** @cs_mb, align 8, !tbaa !0
  call void @reset_coding_state(%struct.CSobj* %798) #8
  %799 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %799, i64 0, i32 37
  %opix_y = getelementptr inbounds %struct.ImageParameters* %799, i64 0, i32 38
  %800 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond3866.preheader

for.cond3866.preheader:                           ; preds = %for.inc3891, %if.end3861
  %indvars.iv8875 = phi i64 [ 0, %if.end3861 ], [ %indvars.iv.next8876, %for.inc3891 ]
  br label %for.body3869

for.body3869:                                     ; preds = %for.body3869, %for.cond3866.preheader
  %indvars.iv8871 = phi i64 [ 0, %for.cond3866.preheader ], [ %indvars.iv.next8872, %for.body3869 ]
  %801 = load i32* %opix_x, align 4, !tbaa !3
  %802 = trunc i64 %indvars.iv8875 to i32
  %add3870 = add nsw i32 %801, %802
  %idxprom3871 = sext i32 %add3870 to i64
  %803 = load i32* %opix_y, align 4, !tbaa !3
  %804 = trunc i64 %indvars.iv8871 to i32
  %add3872 = add nsw i32 %803, %804
  %idxprom3873 = sext i32 %add3872 to i64
  %arrayidx3874 = getelementptr inbounds i16** %800, i64 %idxprom3873
  %805 = load i16** %arrayidx3874, align 8, !tbaa !0
  %arrayidx3875 = getelementptr inbounds i16* %805, i64 %idxprom3871
  %806 = load i16* %arrayidx3875, align 2, !tbaa !4
  %conv3876 = zext i16 %806 to i32
  %arrayidx3881 = getelementptr inbounds %struct.ImageParameters* %799, i64 0, i32 45, i64 %indvars.iv8875, i64 %indvars.iv8871
  %807 = load i16* %arrayidx3881, align 2, !tbaa !4
  %conv3882 = zext i16 %807 to i32
  %sub3883 = sub nsw i32 %conv3876, %conv3882
  %arrayidx3887 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8871, i64 %indvars.iv8875
  store i32 %sub3883, i32* %arrayidx3887, align 4, !tbaa !3
  %indvars.iv.next8872 = add i64 %indvars.iv8871, 1
  %lftr.wideiv8873 = trunc i64 %indvars.iv.next8872 to i32
  %exitcond8874 = icmp eq i32 %lftr.wideiv8873, 16
  br i1 %exitcond8874, label %for.inc3891, label %for.body3869

for.inc3891:                                      ; preds = %for.body3869
  %indvars.iv.next8876 = add i64 %indvars.iv8875, 1
  %lftr.wideiv8877 = trunc i64 %indvars.iv.next8876 to i32
  %exitcond8878 = icmp eq i32 %lftr.wideiv8877, 16
  br i1 %exitcond8878, label %for.end3893, label %for.cond3866.preheader

for.end3893:                                      ; preds = %for.inc3891
  %808 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3894 = getelementptr inbounds %struct.InputParameters* %808, i64 0, i32 85
  %809 = load i32* %rdopt3894, align 4, !tbaa !3
  %tobool3895 = icmp eq i32 %809, 0
  br i1 %tobool3895, label %land.lhs.true3896, label %if.end3930

land.lhs.true3896:                                ; preds = %for.end3893
  %cmp3897 = icmp slt i32 %cost8x8.3, %min_cost.2
  %810 = load i32* @cost8_8x8ts, align 4, !tbaa !3
  %cmp3900 = icmp slt i32 %810, %min_cost.2
  %or.cond8234 = or i1 %cmp3897, %cmp3900
  br i1 %or.cond8234, label %if.then3902, label %if.end3930

if.then3902:                                      ; preds = %land.lhs.true3896
  store i32 8, i32* @best_mode, align 4, !tbaa !3
  %AllowTransform8x83903 = getelementptr inbounds %struct.InputParameters* %808, i64 0, i32 123
  %811 = load i32* %AllowTransform8x83903, align 4, !tbaa !3
  %tobool3904 = icmp eq i32 %811, 0
  br i1 %tobool3904, label %if.else3925, label %if.then3905

if.then3905:                                      ; preds = %if.then3902
  %cmp3906 = icmp slt i32 %810, %cost8x8.3
  br i1 %cmp3906, label %if.then3908, label %if.else3910

if.then3908:                                      ; preds = %if.then3905
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end3930

if.else3910:                                      ; preds = %if.then3905
  %cmp3911 = icmp slt i32 %cost8x8.3, %810
  br i1 %cmp3911, label %if.then3913, label %if.else3915

if.then3913:                                      ; preds = %if.else3910
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end3930

if.else3915:                                      ; preds = %if.else3910
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %call3917 = call i32 @GetBestTransformP8x8() #10
  %cmp3918 = icmp eq i32 %call3917, 0
  br i1 %cmp3918, label %if.then3920, label %if.end3930

if.then3920:                                      ; preds = %if.else3915
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end3930

if.else3925:                                      ; preds = %if.then3902
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end3930

if.end3930:                                       ; preds = %if.else3915, %for.end2165, %land.lhs.true3896, %for.end3893, %if.then3908, %if.then3920, %if.then3913, %if.else3925
  %rdcost.11 = phi double [ %rdcost.10, %for.end3893 ], [ %rdcost.10, %if.then3908 ], [ %rdcost.10, %if.then3913 ], [ %rdcost.10, %if.then3920 ], [ %rdcost.10, %if.else3925 ], [ %rdcost.10, %land.lhs.true3896 ], [ %rdcost.08595, %for.end2165 ], [ %rdcost.10, %if.else3915 ]
  %best_cnt_nonz.13 = phi i32 [ %best_cnt_nonz.12, %for.end3893 ], [ %best_cnt_nonz.12, %if.then3908 ], [ %best_cnt_nonz.12, %if.then3913 ], [ %best_cnt_nonz.12, %if.then3920 ], [ %best_cnt_nonz.12, %if.else3925 ], [ %best_cnt_nonz.12, %land.lhs.true3896 ], [ %best_cnt_nonz.08596, %for.end2165 ], [ %best_cnt_nonz.12, %if.else3915 ]
  %best_fw_ref.23 = phi i16 [ %best_fw_ref.22, %for.end3893 ], [ %best_fw_ref.22, %if.then3908 ], [ %best_fw_ref.22, %if.then3913 ], [ %best_fw_ref.22, %if.then3920 ], [ %best_fw_ref.22, %if.else3925 ], [ %best_fw_ref.22, %land.lhs.true3896 ], [ %best_fw_ref.6, %for.end2165 ], [ %best_fw_ref.22, %if.else3915 ]
  %min_cost.3 = phi i32 [ %min_cost.2, %for.end3893 ], [ %810, %if.then3908 ], [ %cost8x8.3, %if.then3913 ], [ %cost8x8.3, %if.then3920 ], [ %cost8x8.3, %if.else3925 ], [ %min_cost.2, %land.lhs.true3896 ], [ %min_cost.2, %for.end2165 ], [ %810, %if.else3915 ]
  %cost_direct.15 = phi i32 [ %cost_direct.14, %for.end3893 ], [ %cost_direct.14, %if.then3908 ], [ %cost_direct.14, %if.then3913 ], [ %cost_direct.14, %if.then3920 ], [ %cost_direct.14, %if.else3925 ], [ %cost_direct.14, %land.lhs.true3896 ], [ %cost_direct.08598, %for.end2165 ], [ %cost_direct.14, %if.else3915 ]
  %have_direct.13 = phi i32 [ %have_direct.12, %for.end3893 ], [ %have_direct.12, %if.then3908 ], [ %have_direct.12, %if.then3913 ], [ %have_direct.12, %if.then3920 ], [ %have_direct.12, %if.else3925 ], [ %have_direct.12, %land.lhs.true3896 ], [ %have_direct.08599, %for.end2165 ], [ %have_direct.12, %if.else3915 ]
  %cost8x8_direct.8 = phi i32 [ %cost8x8_direct.79178, %for.end3893 ], [ %cost8x8_direct.79178, %if.then3908 ], [ %cost8x8_direct.79178, %if.then3913 ], [ %cost8x8_direct.79178, %if.then3920 ], [ %cost8x8_direct.79178, %if.else3925 ], [ %cost8x8_direct.79178, %land.lhs.true3896 ], [ %cost8x8_direct.08602, %for.end2165 ], [ %cost8x8_direct.79178, %if.else3915 ]
  %best_bw_ref.23 = phi i16 [ %best_bw_ref.22, %for.end3893 ], [ %best_bw_ref.22, %if.then3908 ], [ %best_bw_ref.22, %if.then3913 ], [ %best_bw_ref.22, %if.then3920 ], [ %best_bw_ref.22, %if.else3925 ], [ %best_bw_ref.22, %land.lhs.true3896 ], [ %best_bw_ref.6, %for.end2165 ], [ %best_bw_ref.22, %if.else3915 ]
  %812 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type3931 = getelementptr inbounds %struct.ImageParameters* %812, i64 0, i32 6
  %813 = load i32* %type3931, align 4, !tbaa !3
  switch i32 %813, label %if.end3941 [
    i32 0, label %if.then3938
    i32 3, label %if.then3938
  ]

if.then3938:                                      ; preds = %if.end3930, %if.end3930
  call void (...)* @FindSkipModeMotionVector() #8
  br label %if.end3941

if.end3941:                                       ; preds = %if.end3930, %if.end537, %if.then3938
  %rdcost.12 = phi double [ %rdcost.11, %if.then3938 ], [ %rdcost.08595, %if.end537 ], [ %rdcost.11, %if.end3930 ]
  %best_cnt_nonz.14 = phi i32 [ %best_cnt_nonz.13, %if.then3938 ], [ %best_cnt_nonz.08596, %if.end537 ], [ %best_cnt_nonz.13, %if.end3930 ]
  %best_fw_ref.24 = phi i16 [ %best_fw_ref.23, %if.then3938 ], [ %best_fw_ref.08597, %if.end537 ], [ %best_fw_ref.23, %if.end3930 ]
  %min_cost.4 = phi i32 [ %min_cost.3, %if.then3938 ], [ 2147483647, %if.end537 ], [ %min_cost.3, %if.end3930 ]
  %cost_direct.16 = phi i32 [ %cost_direct.15, %if.then3938 ], [ %cost_direct.08598, %if.end537 ], [ %cost_direct.15, %if.end3930 ]
  %have_direct.14 = phi i32 [ %have_direct.13, %if.then3938 ], [ %have_direct.08599, %if.end537 ], [ %have_direct.13, %if.end3930 ]
  %best_transform_flag.3 = phi i32 [ %best_transform_flag.2, %if.then3938 ], [ %best_transform_flag.08601, %if.end537 ], [ %best_transform_flag.2, %if.end3930 ]
  %cost8x8_direct.9 = phi i32 [ %cost8x8_direct.8, %if.then3938 ], [ %cost8x8_direct.08602, %if.end537 ], [ %cost8x8_direct.8, %if.end3930 ]
  %best_bw_ref.24 = phi i16 [ %best_bw_ref.23, %if.then3938 ], [ %best_bw_ref.08603, %if.end537 ], [ %best_bw_ref.23, %if.end3930 ]
  %814 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt3942 = getelementptr inbounds %struct.InputParameters* %814, i64 0, i32 85
  %815 = load i32* %rdopt3942, align 4, !tbaa !3
  %tobool3943 = icmp eq i32 %815, 0
  br i1 %tobool3943, label %if.else4690, label %if.then3944

if.then3944:                                      ; preds = %if.end3941
  store double 1.000000e+30, double* %min_rdcost, align 8, !tbaa !6
  %816 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %816, i64 0, i32 159
  %817 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp3945 = icmp eq i32 %817, 0
  br i1 %cmp3945, label %if.else4365, label %if.then3947

if.then3947:                                      ; preds = %if.then3944
  call void @IntraChromaPrediction(i32* %mb_available_up, i32* %mb_available_left, i32* %mb_available_up_left) #8
  store i32 0, i32* %c_ipred_mode, align 4, !tbaa !3
  %.pre9082 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body3953

for.body3953:                                     ; preds = %for.inc4361.thread9189, %if.then3947, %for.inc4361
  %818 = phi %struct.InputParameters* [ %.pre9082, %if.then3947 ], [ %903, %for.inc4361 ], [ %818, %for.inc4361.thread9189 ]
  %.pr = phi i32 [ 0, %if.then3947 ], [ %inc4363, %for.inc4361 ], [ %.ph9188, %for.inc4361.thread9189 ]
  %ChromaIntraDisable = getelementptr inbounds %struct.InputParameters* %818, i64 0, i32 75
  %819 = load i32* %ChromaIntraDisable, align 4, !tbaa !3
  %cmp3954 = icmp ne i32 %819, 1
  %cmp3958 = icmp eq i32 %.pr, 0
  %or.cond8235 = or i1 %cmp3954, %cmp3958
  br i1 %or.cond8235, label %lor.lhs.false3960, label %for.inc4361

lor.lhs.false3960:                                ; preds = %for.body3953
  switch i32 %.pr, label %if.end3983 [
    i32 2, label %land.lhs.true3964
    i32 1, label %land.lhs.true3970
    i32 3, label %land.lhs.true3976
  ]

land.lhs.true3964:                                ; preds = %lor.lhs.false3960
  %820 = load i32* %mb_available_up, align 4, !tbaa !3
  %tobool3965 = icmp eq i32 %820, 0
  br i1 %tobool3965, label %for.inc4361.thread9189, label %if.end3983

land.lhs.true3970:                                ; preds = %lor.lhs.false3960
  %821 = load i32* %mb_available_left, align 4, !tbaa !3
  %tobool3971 = icmp eq i32 %821, 0
  br i1 %tobool3971, label %for.inc4361.thread9189, label %if.end3983

land.lhs.true3976:                                ; preds = %lor.lhs.false3960
  %822 = load i32* %mb_available_left, align 4, !tbaa !3
  %tobool3977 = icmp eq i32 %822, 0
  br i1 %tobool3977, label %for.inc4361.thread, label %lor.lhs.false3978

lor.lhs.false3978:                                ; preds = %land.lhs.true3976
  %823 = load i32* %mb_available_up, align 4, !tbaa !3
  %tobool3979 = icmp eq i32 %823, 0
  br i1 %tobool3979, label %for.inc4361.thread, label %lor.lhs.false3980

lor.lhs.false3980:                                ; preds = %lor.lhs.false3978
  %824 = load i32* %mb_available_up_left, align 4, !tbaa !3
  %tobool3981 = icmp eq i32 %824, 0
  br i1 %tobool3981, label %for.inc4361.thread, label %if.end3983

if.end3983:                                       ; preds = %lor.lhs.false3960, %land.lhs.true3964, %land.lhs.true3970, %lor.lhs.false3980
  %825 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag3984 = getelementptr inbounds %struct.ImageParameters* %825, i64 0, i32 164
  %826 = load i32* %residue_transform_flag3984, align 4, !tbaa !3
  %tobool3985 = icmp eq i32 %826, 0
  %.8236 = select i1 %tobool3985, i32 8, i32 11
  %BiPredMotionEstimation3989 = getelementptr inbounds %struct.InputParameters* %818, i64 0, i32 39
  %827 = load i32* %BiPredMotionEstimation3989, align 4, !tbaa !3
  %tobool3990 = icmp eq i32 %827, 0
  br i1 %tobool3990, label %for.body3998, label %if.then3991

if.then3991:                                      ; preds = %if.end3983
  %arrayidx3993 = getelementptr inbounds %struct.ImageParameters* %825, i64 0, i32 74, i64 1
  store i16 0, i16* %arrayidx3993, align 2, !tbaa !4
  br label %for.body3998

for.body3998:                                     ; preds = %if.then3991, %if.end3983, %for.inc4358.for.body3998_crit_edge
  %828 = phi i32 [ %.pre9122, %for.inc4358.for.body3998_crit_edge ], [ %826, %if.end3983 ], [ %826, %if.then3991 ]
  %829 = phi %struct.ImageParameters* [ %.pre9121, %for.inc4358.for.body3998_crit_edge ], [ %825, %if.end3983 ], [ %825, %if.then3991 ]
  %830 = phi %struct.InputParameters* [ %901, %for.inc4358.for.body3998_crit_edge ], [ %818, %if.end3983 ], [ %818, %if.then3991 ]
  %index.28546 = phi i32 [ %inc4359, %for.inc4358.for.body3998_crit_edge ], [ 0, %if.end3983 ], [ 0, %if.then3991 ]
  %ctr16x16.08545 = phi i32 [ %ctr16x16.3, %for.inc4358.for.body3998_crit_edge ], [ 0, %if.end3983 ], [ 0, %if.then3991 ]
  %idxprom3999 = sext i32 %index.28546 to i64
  %tobool4002 = icmp eq i32 %828, 0
  br i1 %tobool4002, label %if.else4034, label %if.then4003

if.then4003:                                      ; preds = %for.body3998
  %arrayidx4005 = getelementptr inbounds [11 x i32]* @encode_one_macroblock.mb_mode_table_RCT, i64 0, i64 %idxprom3999
  %831 = load i32* %arrayidx4005, align 4, !tbaa !3
  %832 = add i64 %idxprom3999, -5
  %cmp4006 = icmp ult i64 %832, 4
  br i1 %cmp4006, label %if.then4008, label %if.end4037

if.then4008:                                      ; preds = %if.then4003
  %sub4009 = add nsw i32 %index.28546, -5
  store i32 %sub4009, i32* %i16mode, align 4, !tbaa !3
  switch i32 %index.28546, label %if.end4037 [
    i32 5, label %land.lhs.true4016
    i32 6, label %land.lhs.true4021
    i32 8, label %land.lhs.true4026
  ]

land.lhs.true4016:                                ; preds = %if.then4008
  %833 = load i32* %mb_available_up, align 4, !tbaa !3
  %tobool4017 = icmp eq i32 %833, 0
  br i1 %tobool4017, label %for.inc4358, label %if.end4037

land.lhs.true4021:                                ; preds = %if.then4008
  %834 = load i32* %mb_available_left, align 4, !tbaa !3
  %tobool4022 = icmp eq i32 %834, 0
  br i1 %tobool4022, label %for.inc4358, label %if.end4037

land.lhs.true4026:                                ; preds = %if.then4008
  %835 = load i32* %mb_available_left, align 4, !tbaa !3
  %tobool4027 = icmp eq i32 %835, 0
  br i1 %tobool4027, label %for.inc4358, label %lor.lhs.false4028

lor.lhs.false4028:                                ; preds = %land.lhs.true4026
  %836 = load i32* %mb_available_up, align 4, !tbaa !3
  %tobool4029 = icmp eq i32 %836, 0
  br i1 %tobool4029, label %for.inc4358, label %lor.lhs.false4030

lor.lhs.false4030:                                ; preds = %lor.lhs.false4028
  %837 = load i32* %mb_available_up_left, align 4, !tbaa !3
  %tobool4031 = icmp eq i32 %837, 0
  br i1 %tobool4031, label %for.inc4358, label %if.end4037

if.else4034:                                      ; preds = %for.body3998
  %arrayidx4000 = getelementptr inbounds [8 x i32]* @encode_one_macroblock.mb_mode_table, i64 0, i64 %idxprom3999
  %838 = load i32* %arrayidx4000, align 4, !tbaa !3
  store i32 0, i32* %i16mode, align 4, !tbaa !3
  br label %if.end4037

if.end4037:                                       ; preds = %if.then4008, %land.lhs.true4016, %land.lhs.true4021, %if.then4003, %lor.lhs.false4030, %if.else4034
  %mode.2 = phi i32 [ %831, %lor.lhs.false4030 ], [ %838, %if.else4034 ], [ %831, %if.then4003 ], [ %831, %land.lhs.true4021 ], [ %831, %land.lhs.true4016 ], [ %831, %if.then4008 ]
  %cmp4038 = icmp eq i32 %mode.2, 1
  br i1 %cmp4038, label %land.lhs.true4040, label %if.end4074

land.lhs.true4040:                                ; preds = %if.end4037
  %type4041 = getelementptr inbounds %struct.ImageParameters* %829, i64 0, i32 6
  %839 = load i32* %type4041, align 4, !tbaa !3
  %cmp4042 = icmp eq i32 %839, 1
  br i1 %cmp4042, label %if.then4044, label %if.end4074

if.then4044:                                      ; preds = %land.lhs.true4040
  %conv4045 = trunc i32 %ctr16x16.08545 to i16
  store i16 %conv4045, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 3), align 2, !tbaa !4
  store i16 %conv4045, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 2), align 4, !tbaa !4
  store i16 %conv4045, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 1), align 2, !tbaa !4
  store i16 %conv4045, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 0), align 8, !tbaa !4
  %BiPredMotionEstimation4046 = getelementptr inbounds %struct.InputParameters* %830, i64 0, i32 39
  %840 = load i32* %BiPredMotionEstimation4046, align 4, !tbaa !3
  %tobool4047 = icmp ne i32 %840, 0
  %cmp4053 = icmp eq i32 %ctr16x16.08545, 2
  %or.cond9193 = and i1 %tobool4047, %cmp4053
  br i1 %or.cond9193, label %land.lhs.true4055, label %if.end4067

land.lhs.true4055:                                ; preds = %if.then4044
  %arrayidx4058 = getelementptr inbounds %struct.ImageParameters* %829, i64 0, i32 74, i64 1
  %841 = load i16* %arrayidx4058, align 2, !tbaa !4
  %cmp4060 = icmp slt i16 %841, 2
  %. = select i1 %cmp4060, i32 1, i32 2
  br label %if.end4067

if.end4067:                                       ; preds = %land.lhs.true4055, %if.then4044
  %ctr16x16.1 = phi i32 [ %ctr16x16.08545, %if.then4044 ], [ %., %land.lhs.true4055 ]
  %cmp4068 = icmp slt i32 %ctr16x16.1, 2
  %dec4071 = sext i1 %cmp4068 to i32
  %dec4071.index.2 = add nsw i32 %dec4071, %index.28546
  %inc4073 = add nsw i32 %ctr16x16.1, 1
  br label %if.end4074

if.end4074:                                       ; preds = %if.end4067, %land.lhs.true4040, %if.end4037
  %ctr16x16.2 = phi i32 [ %inc4073, %if.end4067 ], [ %ctr16x16.08545, %land.lhs.true4040 ], [ %ctr16x16.08545, %if.end4037 ]
  %index.4 = phi i32 [ %dec4071.index.2, %if.end4067 ], [ %index.28546, %land.lhs.true4040 ], [ %index.28546, %if.end4037 ]
  %NoResidueDirect = getelementptr inbounds %struct.ImageParameters* %829, i64 0, i32 88
  store i32 0, i32* %NoResidueDirect, align 4, !tbaa !3
  %SkipIntraInInterSlices = getelementptr inbounds %struct.InputParameters* %830, i64 0, i32 53
  %842 = load i32* %SkipIntraInInterSlices, align 4, !tbaa !3
  %tobool4075 = icmp eq i32 %842, 0
  br i1 %tobool4075, label %if.end4093, label %land.lhs.true4076

land.lhs.true4076:                                ; preds = %if.end4074
  %type4077 = getelementptr inbounds %struct.ImageParameters* %829, i64 0, i32 6
  %843 = load i32* %type4077, align 4, !tbaa !3
  %cmp4078 = icmp eq i32 %843, 2
  br i1 %cmp4078, label %if.end4093, label %if.then4080

if.then4080:                                      ; preds = %land.lhs.true4076
  %cmp4081 = icmp sgt i32 %mode.2, 9
  %844 = load i32* @best_mode, align 4, !tbaa !3
  %cmp4084 = icmp eq i32 %844, 0
  %or.cond = and i1 %cmp4081, %cmp4084
  br i1 %or.cond, label %land.lhs.true4086, label %if.end4093

land.lhs.true4086:                                ; preds = %if.then4080
  %845 = load i32* %cbp5202, align 4, !tbaa !3
  %cmp4087 = icmp eq i32 %845, 0
  br i1 %cmp4087, label %if.then4089, label %if.end4093

if.then4089:                                      ; preds = %land.lhs.true4086
  %idxprom4090 = sext i32 %mode.2 to i64
  %arrayidx4091 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %idxprom4090
  store i32 0, i32* %arrayidx4091, align 4, !tbaa !3
  br label %if.end4093

if.end4093:                                       ; preds = %land.lhs.true4086, %if.then4080, %land.lhs.true4076, %if.end4074, %if.then4089
  %idxprom4094 = sext i32 %mode.2 to i64
  %arrayidx4095 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %idxprom4094
  %846 = load i32* %arrayidx4095, align 4, !tbaa !3
  %tobool4096 = icmp eq i32 %846, 0
  br i1 %tobool4096, label %if.end4322, label %if.then4097

if.then4097:                                      ; preds = %if.end4093
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %AllowTransform8x84099 = getelementptr inbounds %struct.InputParameters* %830, i64 0, i32 123
  %847 = load i32* %AllowTransform8x84099, align 4, !tbaa !3
  %cmp4100 = icmp eq i32 %847, 2
  br i1 %cmp4100, label %if.then4102, label %if.end4131

if.then4102:                                      ; preds = %if.then4097
  %mode.2.off8148 = add i32 %mode.2, -1
  %848 = icmp ult i32 %mode.2.off8148, 3
  br i1 %848, label %if.then4108, label %if.else4110

if.then4108:                                      ; preds = %if.then4102
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4131

if.else4110:                                      ; preds = %if.then4102
  %cmp4111.not = icmp ne i32 %mode.2, 0
  %brmerge8239 = or i1 %cmp4111.not, %cmp15.not8265
  br i1 %brmerge8239, label %if.else4120, label %land.lhs.true4115

land.lhs.true4115:                                ; preds = %if.else4110
  %849 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag4116 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %849, i64 0, i32 27
  %850 = load i32* %direct_8x8_inference_flag4116, align 4, !tbaa !1
  %tobool4117 = icmp eq i32 %850, 0
  br i1 %tobool4117, label %if.else4120, label %if.then4118

if.then4118:                                      ; preds = %land.lhs.true4115
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4131

if.else4120:                                      ; preds = %if.else4110, %land.lhs.true4115
  %cmp4121 = icmp eq i32 %mode.2, 8
  br i1 %cmp4121, label %land.lhs.true4123, label %if.end4131

land.lhs.true4123:                                ; preds = %if.else4120
  %851 = load i32* %arrayidx108827782808285, align 16, !tbaa !3
  %tobool4125 = icmp eq i32 %851, 0
  br i1 %tobool4125, label %if.end4131, label %if.then4126

if.then4126:                                      ; preds = %land.lhs.true4123
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4131

if.end4131:                                       ; preds = %land.lhs.true4123, %if.then4108, %if.else4120, %if.then4126, %if.then4118, %if.then4097
  call void @SetModesAndRefframeForBlocks(i32 %mode.2) #10
  %852 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %cmp4133 = icmp eq i32 %852, 0
  br i1 %cmp4133, label %while.body.preheader, label %lor.lhs.false4135

lor.lhs.false4135:                                ; preds = %if.end4131
  %853 = load i32* %mb_type4962, align 4, !tbaa !3
  switch i32 %853, label %if.end4265 [
    i32 9, label %while.body.preheader
    i32 10, label %while.body.preheader
    i32 13, label %while.body.preheader
  ]

while.body.preheader:                             ; preds = %if.end4131, %lor.lhs.false4135, %lor.lhs.false4135, %lor.lhs.false4135
  %mode.2.off = add i32 %mode.2, -1
  %854 = icmp ult i32 %mode.2.off, 3
  %cmp4237.not = icmp ne i32 %mode.2, 0
  %brmerge8241 = or i1 %cmp4237.not, %cmp15.not8265
  %cmp4251 = icmp eq i32 %mode.2, 8
  br label %while.body

while.body:                                       ; preds = %if.then4234, %if.then4248, %if.then4260, %while.body.preheader
  %855 = load i32* %i16mode, align 4, !tbaa !3
  %call4147 = call i32 @RDCost_for_macroblocks(double %lambda_mode.4, i32 %mode.2, double* %min_rdcost, i32 %855) #10
  %tobool4148 = icmp eq i32 %call4147, 0
  br i1 %tobool4148, label %if.end4220, label %if.then4149

if.then4149:                                      ; preds = %while.body
  %856 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x4161 = getelementptr inbounds %struct.ImageParameters* %856, i64 0, i32 37
  %opix_y4164 = getelementptr inbounds %struct.ImageParameters* %856, i64 0, i32 38
  %857 = load i16*** @imgY_org, align 8, !tbaa !0
  br i1 %cmp4251, label %for.cond4157.preheader, label %for.cond4191.preheader

for.cond4157.preheader:                           ; preds = %if.then4149, %for.inc4183
  %indvars.iv8891 = phi i64 [ %indvars.iv.next8892, %for.inc4183 ], [ 0, %if.then4149 ]
  br label %for.body4160

for.body4160:                                     ; preds = %for.body4160, %for.cond4157.preheader
  %indvars.iv8887 = phi i64 [ 0, %for.cond4157.preheader ], [ %indvars.iv.next8888, %for.body4160 ]
  %858 = load i32* %opix_x4161, align 4, !tbaa !3
  %859 = trunc i64 %indvars.iv8891 to i32
  %add4162 = add nsw i32 %858, %859
  %idxprom4163 = sext i32 %add4162 to i64
  %860 = load i32* %opix_y4164, align 4, !tbaa !3
  %861 = trunc i64 %indvars.iv8887 to i32
  %add4165 = add nsw i32 %860, %861
  %idxprom4166 = sext i32 %add4165 to i64
  %arrayidx4167 = getelementptr inbounds i16** %857, i64 %idxprom4166
  %862 = load i16** %arrayidx4167, align 8, !tbaa !0
  %arrayidx4168 = getelementptr inbounds i16* %862, i64 %idxprom4163
  %863 = load i16* %arrayidx4168, align 2, !tbaa !4
  %conv4169 = zext i16 %863 to i32
  %arrayidx4173 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %indvars.iv8887, i64 %indvars.iv8891
  %864 = load i16* %arrayidx4173, align 2, !tbaa !4
  %conv4174 = zext i16 %864 to i32
  %sub4175 = sub nsw i32 %conv4169, %conv4174
  %arrayidx4179 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8887, i64 %indvars.iv8891
  store i32 %sub4175, i32* %arrayidx4179, align 4, !tbaa !3
  %indvars.iv.next8888 = add i64 %indvars.iv8887, 1
  %lftr.wideiv8889 = trunc i64 %indvars.iv.next8888 to i32
  %exitcond8890 = icmp eq i32 %lftr.wideiv8889, 16
  br i1 %exitcond8890, label %for.inc4183, label %for.body4160

for.inc4183:                                      ; preds = %for.body4160
  %indvars.iv.next8892 = add i64 %indvars.iv8891, 1
  %lftr.wideiv8893 = trunc i64 %indvars.iv.next8892 to i32
  %exitcond8894 = icmp eq i32 %lftr.wideiv8893, 16
  br i1 %exitcond8894, label %if.end4219, label %for.cond4157.preheader

for.cond4191.preheader:                           ; preds = %if.then4149, %for.inc4216
  %indvars.iv8883 = phi i64 [ %indvars.iv.next8884, %for.inc4216 ], [ 0, %if.then4149 ]
  br label %for.body4194

for.body4194:                                     ; preds = %for.body4194, %for.cond4191.preheader
  %indvars.iv8879 = phi i64 [ 0, %for.cond4191.preheader ], [ %indvars.iv.next8880, %for.body4194 ]
  %865 = load i32* %opix_x4161, align 4, !tbaa !3
  %866 = trunc i64 %indvars.iv8883 to i32
  %add4196 = add nsw i32 %865, %866
  %idxprom4197 = sext i32 %add4196 to i64
  %867 = load i32* %opix_y4164, align 4, !tbaa !3
  %868 = trunc i64 %indvars.iv8879 to i32
  %add4199 = add nsw i32 %867, %868
  %idxprom4200 = sext i32 %add4199 to i64
  %arrayidx4201 = getelementptr inbounds i16** %857, i64 %idxprom4200
  %869 = load i16** %arrayidx4201, align 8, !tbaa !0
  %arrayidx4202 = getelementptr inbounds i16* %869, i64 %idxprom4197
  %870 = load i16* %arrayidx4202, align 2, !tbaa !4
  %conv4203 = zext i16 %870 to i32
  %arrayidx4207 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv8879, i64 %indvars.iv8883
  %871 = load i32* %arrayidx4207, align 4, !tbaa !3
  %sub4208 = sub nsw i32 %conv4203, %871
  %arrayidx4212 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8879, i64 %indvars.iv8883
  store i32 %sub4208, i32* %arrayidx4212, align 4, !tbaa !3
  %indvars.iv.next8880 = add i64 %indvars.iv8879, 1
  %lftr.wideiv8881 = trunc i64 %indvars.iv.next8880 to i32
  %exitcond8882 = icmp eq i32 %lftr.wideiv8881, 16
  br i1 %exitcond8882, label %for.inc4216, label %for.body4194

for.inc4216:                                      ; preds = %for.body4194
  %indvars.iv.next8884 = add i64 %indvars.iv8883, 1
  %lftr.wideiv8885 = trunc i64 %indvars.iv.next8884 to i32
  %exitcond8886 = icmp eq i32 %lftr.wideiv8885, 16
  br i1 %exitcond8886, label %if.end4219, label %for.cond4191.preheader

if.end4219:                                       ; preds = %for.inc4183, %for.inc4216
  call void @store_macroblock_parameters(i32 %mode.2) #10
  br label %if.end4220

if.end4220:                                       ; preds = %while.body, %if.end4219
  %872 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x84221 = getelementptr inbounds %struct.InputParameters* %872, i64 0, i32 123
  %873 = load i32* %AllowTransform8x84221, align 4, !tbaa !3
  %cmp4222 = icmp eq i32 %873, 1
  br i1 %cmp4222, label %if.then4224, label %if.end4265

if.then4224:                                      ; preds = %if.end4220
  br i1 %854, label %land.lhs.true4230, label %if.else4236

land.lhs.true4230:                                ; preds = %if.then4224
  %874 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4232 = icmp eq i32 %874, 0
  br i1 %cmp4232, label %if.then4234, label %if.else4262

if.then4234:                                      ; preds = %land.lhs.true4230
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body

if.else4236:                                      ; preds = %if.then4224
  br i1 %brmerge8241, label %if.else4250, label %land.lhs.true4241

land.lhs.true4241:                                ; preds = %if.else4236
  %875 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag4242 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %875, i64 0, i32 27
  %876 = load i32* %direct_8x8_inference_flag4242, align 4, !tbaa !1
  %tobool4243 = icmp eq i32 %876, 0
  br i1 %tobool4243, label %if.else4250, label %land.lhs.true4244

land.lhs.true4244:                                ; preds = %land.lhs.true4241
  %877 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4246 = icmp eq i32 %877, 0
  br i1 %cmp4246, label %if.then4248, label %if.else4250

if.then4248:                                      ; preds = %land.lhs.true4244
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body

if.else4250:                                      ; preds = %if.else4236, %land.lhs.true4241, %land.lhs.true4244
  br i1 %cmp4251, label %land.lhs.true4253, label %if.else4262

land.lhs.true4253:                                ; preds = %if.else4250
  %878 = load i32* %arrayidx108827782808285, align 16, !tbaa !3
  %tobool4255 = icmp eq i32 %878, 0
  br i1 %tobool4255, label %if.else4262, label %land.lhs.true4256

land.lhs.true4256:                                ; preds = %land.lhs.true4253
  %879 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4258 = icmp eq i32 %879, 0
  br i1 %cmp4258, label %if.then4260, label %if.else4262

if.then4260:                                      ; preds = %land.lhs.true4256
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body

if.else4262:                                      ; preds = %land.lhs.true4230, %land.lhs.true4253, %land.lhs.true4256, %if.else4250
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4265

if.end4265:                                       ; preds = %if.end4220, %lor.lhs.false4135, %if.else4262
  %880 = load i32* %arrayidx84, align 16, !tbaa !3
  %tobool4267.not = icmp ne i32 %880, 0
  %brmerge8243.not = and i1 %cmp15, %tobool4267.not
  %cmp4271 = icmp eq i32 %mode.2, 0
  %or.cond8244 = and i1 %brmerge8243.not, %cmp4271
  br i1 %or.cond8244, label %land.lhs.true4273, label %if.end4322

land.lhs.true4273:                                ; preds = %if.end4265
  %881 = load i32* %cbp5202, align 4, !tbaa !3
  %tobool4275 = icmp eq i32 %881, 0
  %and4278 = and i32 %881, 15
  %cmp4279 = icmp eq i32 %and4278, 15
  %or.cond8246 = or i1 %tobool4275, %cmp4279
  br i1 %or.cond8246, label %if.end4322, label %land.lhs.true4281

land.lhs.true4281:                                ; preds = %land.lhs.true4273
  %882 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %nobskip = getelementptr inbounds %struct.InputParameters* %882, i64 0, i32 87
  %883 = load i32* %nobskip, align 4, !tbaa !3
  %tobool4282 = icmp eq i32 %883, 0
  br i1 %tobool4282, label %if.then4283, label %if.end4322

if.then4283:                                      ; preds = %land.lhs.true4281
  %884 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %NoResidueDirect4284 = getelementptr inbounds %struct.ImageParameters* %884, i64 0, i32 88
  store i32 1, i32* %NoResidueDirect4284, align 4, !tbaa !3
  %885 = load i32* %i16mode, align 4, !tbaa !3
  %call4285 = call i32 @RDCost_for_macroblocks(double %lambda_mode.4, i32 0, double* %min_rdcost, i32 %885) #10
  %tobool4286 = icmp eq i32 %call4285, 0
  br i1 %tobool4286, label %if.end4322, label %for.cond4288.preheader

for.cond4288.preheader:                           ; preds = %if.then4283
  %886 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x4296 = getelementptr inbounds %struct.ImageParameters* %886, i64 0, i32 37
  %opix_y4299 = getelementptr inbounds %struct.ImageParameters* %886, i64 0, i32 38
  %887 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond4292.preheader

for.cond4292.preheader:                           ; preds = %for.inc4317, %for.cond4288.preheader
  %indvars.iv8899 = phi i64 [ 0, %for.cond4288.preheader ], [ %indvars.iv.next8900, %for.inc4317 ]
  br label %for.body4295

for.body4295:                                     ; preds = %for.body4295, %for.cond4292.preheader
  %indvars.iv8895 = phi i64 [ 0, %for.cond4292.preheader ], [ %indvars.iv.next8896, %for.body4295 ]
  %888 = load i32* %opix_x4296, align 4, !tbaa !3
  %889 = trunc i64 %indvars.iv8899 to i32
  %add4297 = add nsw i32 %888, %889
  %idxprom4298 = sext i32 %add4297 to i64
  %890 = load i32* %opix_y4299, align 4, !tbaa !3
  %891 = trunc i64 %indvars.iv8895 to i32
  %add4300 = add nsw i32 %890, %891
  %idxprom4301 = sext i32 %add4300 to i64
  %arrayidx4302 = getelementptr inbounds i16** %887, i64 %idxprom4301
  %892 = load i16** %arrayidx4302, align 8, !tbaa !0
  %arrayidx4303 = getelementptr inbounds i16* %892, i64 %idxprom4298
  %893 = load i16* %arrayidx4303, align 2, !tbaa !4
  %conv4304 = zext i16 %893 to i32
  %arrayidx4308 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv8895, i64 %indvars.iv8899
  %894 = load i32* %arrayidx4308, align 4, !tbaa !3
  %sub4309 = sub nsw i32 %conv4304, %894
  %arrayidx4313 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8895, i64 %indvars.iv8899
  store i32 %sub4309, i32* %arrayidx4313, align 4, !tbaa !3
  %indvars.iv.next8896 = add i64 %indvars.iv8895, 1
  %lftr.wideiv8897 = trunc i64 %indvars.iv.next8896 to i32
  %exitcond8898 = icmp eq i32 %lftr.wideiv8897, 16
  br i1 %exitcond8898, label %for.inc4317, label %for.body4295

for.inc4317:                                      ; preds = %for.body4295
  %indvars.iv.next8900 = add i64 %indvars.iv8899, 1
  %lftr.wideiv8901 = trunc i64 %indvars.iv.next8900 to i32
  %exitcond8902 = icmp eq i32 %lftr.wideiv8901, 16
  br i1 %exitcond8902, label %for.end4319, label %for.cond4292.preheader

for.end4319:                                      ; preds = %for.inc4317
  call void @store_macroblock_parameters(i32 0) #10
  br label %if.end4322

if.end4322:                                       ; preds = %if.then4283, %land.lhs.true4273, %if.end4265, %land.lhs.true4281, %if.end4093, %for.end4319
  %895 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMotionEstimation4323 = getelementptr inbounds %struct.InputParameters* %895, i64 0, i32 39
  %896 = load i32* %BiPredMotionEstimation4323, align 4, !tbaa !3
  %tobool4324 = icmp eq i32 %896, 0
  br i1 %tobool4324, label %for.inc4358, label %land.lhs.true4325

land.lhs.true4325:                                ; preds = %if.end4322
  %897 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type4326 = getelementptr inbounds %struct.ImageParameters* %897, i64 0, i32 6
  %898 = load i32* %type4326, align 4, !tbaa !3
  %cmp4327 = icmp eq i32 %898, 1
  %cmp4330 = icmp eq i32 %ctr16x16.2, 2
  %or.cond8247 = and i1 %cmp4327, %cmp4330
  br i1 %or.cond8247, label %land.lhs.true4332, label %for.inc4358

land.lhs.true4332:                                ; preds = %land.lhs.true4325
  %arrayidx4335 = getelementptr inbounds %struct.ImageParameters* %897, i64 0, i32 74, i64 %idxprom4094
  %899 = load i16* %arrayidx4335, align 2, !tbaa !4
  %cmp4337.not.not = icmp slt i16 %899, 2
  %brmerge8248.not = and i1 %cmp4038, %cmp4337.not.not
  %900 = load i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 0), align 8, !tbaa !4
  %cmp4344 = icmp eq i16 %900, 2
  %or.cond8250 = and i1 %brmerge8248.not, %cmp4344
  br i1 %or.cond8250, label %if.then4346, label %for.inc4358

if.then4346:                                      ; preds = %land.lhs.true4332
  %add4351 = add i16 %899, 1
  store i16 %add4351, i16* %arrayidx4335, align 2, !tbaa !4
  br label %for.inc4358

for.inc4358:                                      ; preds = %land.lhs.true4332, %land.lhs.true4016, %land.lhs.true4021, %lor.lhs.false4030, %lor.lhs.false4028, %land.lhs.true4026, %if.end4322, %land.lhs.true4325, %if.then4346
  %901 = phi %struct.InputParameters* [ %895, %if.then4346 ], [ %895, %land.lhs.true4332 ], [ %895, %land.lhs.true4325 ], [ %895, %if.end4322 ], [ %830, %lor.lhs.false4030 ], [ %830, %lor.lhs.false4028 ], [ %830, %land.lhs.true4026 ], [ %830, %land.lhs.true4021 ], [ %830, %land.lhs.true4016 ]
  %ctr16x16.3 = phi i32 [ 2, %if.then4346 ], [ 2, %land.lhs.true4332 ], [ %ctr16x16.2, %land.lhs.true4325 ], [ %ctr16x16.2, %if.end4322 ], [ %ctr16x16.08545, %lor.lhs.false4030 ], [ %ctr16x16.08545, %lor.lhs.false4028 ], [ %ctr16x16.08545, %land.lhs.true4026 ], [ %ctr16x16.08545, %land.lhs.true4021 ], [ %ctr16x16.08545, %land.lhs.true4016 ]
  %index.5 = phi i32 [ %index.4, %if.then4346 ], [ %index.4, %land.lhs.true4332 ], [ %index.4, %land.lhs.true4325 ], [ %index.4, %if.end4322 ], [ %index.28546, %lor.lhs.false4030 ], [ %index.28546, %lor.lhs.false4028 ], [ %index.28546, %land.lhs.true4026 ], [ %index.28546, %land.lhs.true4021 ], [ %index.28546, %land.lhs.true4016 ]
  %inc4359 = add nsw i32 %index.5, 1
  %cmp3996 = icmp slt i32 %inc4359, %.8236
  br i1 %cmp3996, label %for.inc4358.for.body3998_crit_edge, label %for.inc4361.loopexit

for.inc4358.for.body3998_crit_edge:               ; preds = %for.inc4358
  %.pre9121 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag4001.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre9121, i64 0, i32 164
  %.pre9122 = load i32* %residue_transform_flag4001.phi.trans.insert, align 4, !tbaa !3
  br label %for.body3998

for.inc4361.loopexit:                             ; preds = %for.inc4358
  %.pre9083 = load i32* %c_ipred_mode, align 4, !tbaa !3
  br label %for.inc4361

for.inc4361.thread:                               ; preds = %lor.lhs.false3980, %lor.lhs.false3978, %land.lhs.true3976
  store i32 4, i32* %c_ipred_mode, align 4, !tbaa !3
  br label %if.end5558

for.inc4361.thread9189:                           ; preds = %land.lhs.true3964, %land.lhs.true3970
  %.ph9188 = phi i32 [ 3, %land.lhs.true3964 ], [ 2, %land.lhs.true3970 ]
  store i32 %.ph9188, i32* %c_ipred_mode, align 4, !tbaa !3
  br label %for.body3953

for.inc4361:                                      ; preds = %for.inc4361.loopexit, %for.body3953
  %902 = phi i32 [ %.pre9083, %for.inc4361.loopexit ], [ %.pr, %for.body3953 ]
  %903 = phi %struct.InputParameters* [ %901, %for.inc4361.loopexit ], [ %818, %for.body3953 ]
  %inc4363 = add nsw i32 %902, 1
  store i32 %inc4363, i32* %c_ipred_mode, align 4, !tbaa !3
  %cmp3951 = icmp slt i32 %inc4363, 4
  br i1 %cmp3951, label %for.body3953, label %if.end5558

if.else4365:                                      ; preds = %if.then3944
  %BiPredMotionEstimation4366 = getelementptr inbounds %struct.InputParameters* %814, i64 0, i32 39
  %904 = load i32* %BiPredMotionEstimation4366, align 4, !tbaa !3
  %tobool4367 = icmp eq i32 %904, 0
  br i1 %tobool4367, label %for.body4375, label %if.then4368

if.then4368:                                      ; preds = %if.else4365
  %arrayidx4370 = getelementptr inbounds %struct.ImageParameters* %816, i64 0, i32 74, i64 1
  store i16 0, i16* %arrayidx4370, align 2, !tbaa !4
  br label %for.body4375

for.body4375:                                     ; preds = %if.then4368, %if.else4365, %for.inc4686
  %905 = phi i32 [ %959, %for.inc4686 ], [ 0, %if.else4365 ], [ %904, %if.then4368 ]
  %906 = phi %struct.InputParameters* [ %958, %for.inc4686 ], [ %814, %if.else4365 ], [ %814, %if.then4368 ]
  %index.68557 = phi i32 [ %inc4687, %for.inc4686 ], [ 0, %if.else4365 ], [ 0, %if.then4368 ]
  %ctr16x16.48556 = phi i32 [ %ctr16x16.6, %for.inc4686 ], [ 0, %if.else4365 ], [ 0, %if.then4368 ]
  %idxprom4376 = sext i32 %index.68557 to i64
  %arrayidx4377 = getelementptr inbounds [8 x i32]* @encode_one_macroblock.mb_mode_table, i64 0, i64 %idxprom4376
  %907 = load i32* %arrayidx4377, align 4, !tbaa !3
  %cmp4378 = icmp eq i32 %index.68557, 1
  %908 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %cmp4378, label %land.lhs.true4380, label %if.end4415

land.lhs.true4380:                                ; preds = %for.body4375
  %type4381 = getelementptr inbounds %struct.ImageParameters* %908, i64 0, i32 6
  %909 = load i32* %type4381, align 4, !tbaa !3
  %cmp4382 = icmp eq i32 %909, 1
  br i1 %cmp4382, label %if.then4384, label %if.end4415

if.then4384:                                      ; preds = %land.lhs.true4380
  %conv4385 = trunc i32 %ctr16x16.48556 to i16
  store i16 %conv4385, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 3), align 2, !tbaa !4
  store i16 %conv4385, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 2), align 4, !tbaa !4
  store i16 %conv4385, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 1), align 2, !tbaa !4
  store i16 %conv4385, i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 0), align 8, !tbaa !4
  %tobool4387 = icmp ne i32 %905, 0
  %cmp4393 = icmp eq i32 %ctr16x16.48556, 2
  %or.cond9194 = and i1 %tobool4387, %cmp4393
  br i1 %or.cond9194, label %land.lhs.true4395, label %if.end4408

land.lhs.true4395:                                ; preds = %if.then4384
  %idxprom4396 = sext i32 %907 to i64
  %arrayidx4398 = getelementptr inbounds %struct.ImageParameters* %908, i64 0, i32 74, i64 %idxprom4396
  %910 = load i16* %arrayidx4398, align 2, !tbaa !4
  %cmp4400 = icmp slt i16 %910, 2
  %.9195 = select i1 %cmp4400, i32 1, i32 2
  br label %if.end4408

if.end4408:                                       ; preds = %land.lhs.true4395, %if.then4384
  %ctr16x16.5 = phi i32 [ %ctr16x16.48556, %if.then4384 ], [ %.9195, %land.lhs.true4395 ]
  %cmp4409 = icmp slt i32 %ctr16x16.5, 2
  %dec4412 = sext i1 %cmp4409 to i32
  %dec4412.index.6 = add nsw i32 %dec4412, 1
  %inc4414 = add nsw i32 %ctr16x16.5, 1
  br label %if.end4415

if.end4415:                                       ; preds = %for.body4375, %if.end4408, %land.lhs.true4380
  %ctr16x16.6 = phi i32 [ %inc4414, %if.end4408 ], [ %ctr16x16.48556, %land.lhs.true4380 ], [ %ctr16x16.48556, %for.body4375 ]
  %index.8 = phi i32 [ %dec4412.index.6, %if.end4408 ], [ 1, %land.lhs.true4380 ], [ %index.68557, %for.body4375 ]
  %NoResidueDirect4416 = getelementptr inbounds %struct.ImageParameters* %908, i64 0, i32 88
  store i32 0, i32* %NoResidueDirect4416, align 4, !tbaa !3
  %idxprom4417 = sext i32 %907 to i64
  %arrayidx4418 = getelementptr inbounds [15 x i32]* %valid, i64 0, i64 %idxprom4417
  %911 = load i32* %arrayidx4418, align 4, !tbaa !3
  %tobool4419 = icmp eq i32 %911, 0
  br i1 %tobool4419, label %if.end4650, label %if.then4420

if.then4420:                                      ; preds = %if.end4415
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %AllowTransform8x84422 = getelementptr inbounds %struct.InputParameters* %906, i64 0, i32 123
  %912 = load i32* %AllowTransform8x84422, align 4, !tbaa !3
  %cmp4423 = icmp eq i32 %912, 2
  br i1 %cmp4423, label %if.then4425, label %if.end4454

if.then4425:                                      ; preds = %if.then4420
  %cmp4426 = icmp ne i32 %index.68557, 0
  %cmp4429 = icmp ult i32 %index.68557, 4
  %or.cond6332 = and i1 %cmp4426, %cmp4429
  br i1 %or.cond6332, label %if.then4431, label %if.else4433

if.then4431:                                      ; preds = %if.then4425
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4454

if.else4433:                                      ; preds = %if.then4425
  %brmerge8253 = or i1 %cmp4426, %cmp15.not8265
  br i1 %brmerge8253, label %if.else4443, label %land.lhs.true4438

land.lhs.true4438:                                ; preds = %if.else4433
  %913 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag4439 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %913, i64 0, i32 27
  %914 = load i32* %direct_8x8_inference_flag4439, align 4, !tbaa !1
  %tobool4440 = icmp eq i32 %914, 0
  br i1 %tobool4440, label %if.else4443, label %if.then4441

if.then4441:                                      ; preds = %land.lhs.true4438
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4454

if.else4443:                                      ; preds = %if.else4433, %land.lhs.true4438
  %cmp4444 = icmp eq i32 %index.68557, 4
  br i1 %cmp4444, label %land.lhs.true4446, label %if.end4454

land.lhs.true4446:                                ; preds = %if.else4443
  %915 = load i32* %arrayidx108827782808285, align 16, !tbaa !3
  %tobool4448 = icmp eq i32 %915, 0
  br i1 %tobool4448, label %if.end4454, label %if.then4449

if.then4449:                                      ; preds = %land.lhs.true4446
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4454

if.end4454:                                       ; preds = %land.lhs.true4446, %if.then4431, %if.else4443, %if.then4449, %if.then4441, %if.then4420
  call void @SetModesAndRefframeForBlocks(i32 %907) #10
  %916 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %cmp4456 = icmp eq i32 %916, 0
  br i1 %cmp4456, label %while.body4472.preheader, label %lor.lhs.false4458

lor.lhs.false4458:                                ; preds = %if.end4454
  %917 = load i32* %mb_type4962, align 4, !tbaa !3
  switch i32 %917, label %if.end4592 [
    i32 9, label %while.body4472.preheader
    i32 10, label %while.body4472.preheader
    i32 13, label %while.body4472.preheader
  ]

while.body4472.preheader:                         ; preds = %if.end4454, %lor.lhs.false4458, %lor.lhs.false4458, %lor.lhs.false4458
  %cmp4551 = icmp ne i32 %index.68557, 0
  %cmp4554 = icmp ult i32 %index.68557, 4
  %or.cond6333 = and i1 %cmp4551, %cmp4554
  %brmerge8255 = or i1 %cmp4551, %cmp15.not8265
  %cmp4577 = icmp eq i32 %index.68557, 4
  br label %while.body4472

while.body4472:                                   ; preds = %if.then4560, %if.then4574, %if.then4586, %while.body4472.preheader
  %918 = load i32* %i16mode, align 4, !tbaa !3
  %call4473 = call i32 @RDCost_for_macroblocks(double %lambda_mode.4, i32 %907, double* %min_rdcost, i32 %918) #10
  %tobool4474 = icmp eq i32 %call4473, 0
  br i1 %tobool4474, label %if.end4546, label %if.then4475

if.then4475:                                      ; preds = %while.body4472
  %919 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x4487 = getelementptr inbounds %struct.ImageParameters* %919, i64 0, i32 37
  %opix_y4490 = getelementptr inbounds %struct.ImageParameters* %919, i64 0, i32 38
  %920 = load i16*** @imgY_org, align 8, !tbaa !0
  br i1 %cmp4577, label %for.cond4483.preheader, label %for.cond4517.preheader

for.cond4483.preheader:                           ; preds = %if.then4475, %for.inc4509
  %indvars.iv8915 = phi i64 [ %indvars.iv.next8916, %for.inc4509 ], [ 0, %if.then4475 ]
  br label %for.body4486

for.body4486:                                     ; preds = %for.body4486, %for.cond4483.preheader
  %indvars.iv8911 = phi i64 [ 0, %for.cond4483.preheader ], [ %indvars.iv.next8912, %for.body4486 ]
  %921 = load i32* %opix_x4487, align 4, !tbaa !3
  %922 = trunc i64 %indvars.iv8915 to i32
  %add4488 = add nsw i32 %921, %922
  %idxprom4489 = sext i32 %add4488 to i64
  %923 = load i32* %opix_y4490, align 4, !tbaa !3
  %924 = trunc i64 %indvars.iv8911 to i32
  %add4491 = add nsw i32 %923, %924
  %idxprom4492 = sext i32 %add4491 to i64
  %arrayidx4493 = getelementptr inbounds i16** %920, i64 %idxprom4492
  %925 = load i16** %arrayidx4493, align 8, !tbaa !0
  %arrayidx4494 = getelementptr inbounds i16* %925, i64 %idxprom4489
  %926 = load i16* %arrayidx4494, align 2, !tbaa !4
  %conv4495 = zext i16 %926 to i32
  %arrayidx4499 = getelementptr inbounds [16 x [16 x i16]]* @mpr8x8, i64 0, i64 %indvars.iv8911, i64 %indvars.iv8915
  %927 = load i16* %arrayidx4499, align 2, !tbaa !4
  %conv4500 = zext i16 %927 to i32
  %sub4501 = sub nsw i32 %conv4495, %conv4500
  %arrayidx4505 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8911, i64 %indvars.iv8915
  store i32 %sub4501, i32* %arrayidx4505, align 4, !tbaa !3
  %indvars.iv.next8912 = add i64 %indvars.iv8911, 1
  %lftr.wideiv8913 = trunc i64 %indvars.iv.next8912 to i32
  %exitcond8914 = icmp eq i32 %lftr.wideiv8913, 16
  br i1 %exitcond8914, label %for.inc4509, label %for.body4486

for.inc4509:                                      ; preds = %for.body4486
  %indvars.iv.next8916 = add i64 %indvars.iv8915, 1
  %lftr.wideiv8917 = trunc i64 %indvars.iv.next8916 to i32
  %exitcond8918 = icmp eq i32 %lftr.wideiv8917, 16
  br i1 %exitcond8918, label %if.end4545, label %for.cond4483.preheader

for.cond4517.preheader:                           ; preds = %if.then4475, %for.inc4542
  %indvars.iv8907 = phi i64 [ %indvars.iv.next8908, %for.inc4542 ], [ 0, %if.then4475 ]
  br label %for.body4520

for.body4520:                                     ; preds = %for.body4520, %for.cond4517.preheader
  %indvars.iv8903 = phi i64 [ 0, %for.cond4517.preheader ], [ %indvars.iv.next8904, %for.body4520 ]
  %928 = load i32* %opix_x4487, align 4, !tbaa !3
  %929 = trunc i64 %indvars.iv8907 to i32
  %add4522 = add nsw i32 %928, %929
  %idxprom4523 = sext i32 %add4522 to i64
  %930 = load i32* %opix_y4490, align 4, !tbaa !3
  %931 = trunc i64 %indvars.iv8903 to i32
  %add4525 = add nsw i32 %930, %931
  %idxprom4526 = sext i32 %add4525 to i64
  %arrayidx4527 = getelementptr inbounds i16** %920, i64 %idxprom4526
  %932 = load i16** %arrayidx4527, align 8, !tbaa !0
  %arrayidx4528 = getelementptr inbounds i16* %932, i64 %idxprom4523
  %933 = load i16* %arrayidx4528, align 2, !tbaa !4
  %conv4529 = zext i16 %933 to i32
  %arrayidx4533 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv8903, i64 %indvars.iv8907
  %934 = load i32* %arrayidx4533, align 4, !tbaa !3
  %sub4534 = sub nsw i32 %conv4529, %934
  %arrayidx4538 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8903, i64 %indvars.iv8907
  store i32 %sub4534, i32* %arrayidx4538, align 4, !tbaa !3
  %indvars.iv.next8904 = add i64 %indvars.iv8903, 1
  %lftr.wideiv8905 = trunc i64 %indvars.iv.next8904 to i32
  %exitcond8906 = icmp eq i32 %lftr.wideiv8905, 16
  br i1 %exitcond8906, label %for.inc4542, label %for.body4520

for.inc4542:                                      ; preds = %for.body4520
  %indvars.iv.next8908 = add i64 %indvars.iv8907, 1
  %lftr.wideiv8909 = trunc i64 %indvars.iv.next8908 to i32
  %exitcond8910 = icmp eq i32 %lftr.wideiv8909, 16
  br i1 %exitcond8910, label %if.end4545, label %for.cond4517.preheader

if.end4545:                                       ; preds = %for.inc4509, %for.inc4542
  call void @store_macroblock_parameters(i32 %907) #10
  br label %if.end4546

if.end4546:                                       ; preds = %while.body4472, %if.end4545
  %935 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x84547 = getelementptr inbounds %struct.InputParameters* %935, i64 0, i32 123
  %936 = load i32* %AllowTransform8x84547, align 4, !tbaa !3
  %cmp4548 = icmp eq i32 %936, 1
  br i1 %cmp4548, label %if.then4550, label %if.end4592

if.then4550:                                      ; preds = %if.end4546
  br i1 %or.cond6333, label %land.lhs.true4556, label %if.else4562

land.lhs.true4556:                                ; preds = %if.then4550
  %937 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4558 = icmp eq i32 %937, 0
  br i1 %cmp4558, label %if.then4560, label %if.else4562

if.then4560:                                      ; preds = %land.lhs.true4556
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body4472

if.else4562:                                      ; preds = %land.lhs.true4556, %if.then4550
  br i1 %brmerge8255, label %if.else4576, label %land.lhs.true4567

land.lhs.true4567:                                ; preds = %if.else4562
  %938 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag4568 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %938, i64 0, i32 27
  %939 = load i32* %direct_8x8_inference_flag4568, align 4, !tbaa !1
  %tobool4569 = icmp eq i32 %939, 0
  br i1 %tobool4569, label %if.else4576, label %land.lhs.true4570

land.lhs.true4570:                                ; preds = %land.lhs.true4567
  %940 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4572 = icmp eq i32 %940, 0
  br i1 %cmp4572, label %if.then4574, label %if.else4576

if.then4574:                                      ; preds = %land.lhs.true4570
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body4472

if.else4576:                                      ; preds = %if.else4562, %land.lhs.true4567, %land.lhs.true4570
  br i1 %cmp4577, label %land.lhs.true4579, label %if.else4588

land.lhs.true4579:                                ; preds = %if.else4576
  %941 = load i32* %arrayidx108827782808285, align 16, !tbaa !3
  %tobool4581 = icmp eq i32 %941, 0
  br i1 %tobool4581, label %if.else4588, label %land.lhs.true4582

land.lhs.true4582:                                ; preds = %land.lhs.true4579
  %942 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %cmp4584 = icmp eq i32 %942, 0
  br i1 %cmp4584, label %if.then4586, label %if.else4588

if.then4586:                                      ; preds = %land.lhs.true4582
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %while.body4472

if.else4588:                                      ; preds = %land.lhs.true4579, %land.lhs.true4582, %if.else4576
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4592

if.end4592:                                       ; preds = %if.end4546, %lor.lhs.false4458, %if.else4588
  %943 = load i32* %arrayidx84, align 16, !tbaa !3
  %tobool4594.not = icmp ne i32 %943, 0
  %brmerge8257.not = and i1 %cmp15, %tobool4594.not
  %cmp4598 = icmp eq i32 %index.68557, 0
  %or.cond8258 = and i1 %brmerge8257.not, %cmp4598
  br i1 %or.cond8258, label %land.lhs.true4600, label %if.end4650

land.lhs.true4600:                                ; preds = %if.end4592
  %944 = load i32* %cbp5202, align 4, !tbaa !3
  %tobool4602 = icmp eq i32 %944, 0
  %and4605 = and i32 %944, 15
  %cmp4606 = icmp eq i32 %and4605, 15
  %or.cond8260 = or i1 %tobool4602, %cmp4606
  br i1 %or.cond8260, label %if.end4650, label %land.lhs.true4608

land.lhs.true4608:                                ; preds = %land.lhs.true4600
  %945 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %nobskip4609 = getelementptr inbounds %struct.InputParameters* %945, i64 0, i32 87
  %946 = load i32* %nobskip4609, align 4, !tbaa !3
  %tobool4610 = icmp eq i32 %946, 0
  br i1 %tobool4610, label %if.then4611, label %if.end4650

if.then4611:                                      ; preds = %land.lhs.true4608
  %947 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %NoResidueDirect4612 = getelementptr inbounds %struct.ImageParameters* %947, i64 0, i32 88
  store i32 1, i32* %NoResidueDirect4612, align 4, !tbaa !3
  %948 = load i32* %i16mode, align 4, !tbaa !3
  %call4613 = call i32 @RDCost_for_macroblocks(double %lambda_mode.4, i32 %907, double* %min_rdcost, i32 %948) #10
  %tobool4614 = icmp eq i32 %call4613, 0
  br i1 %tobool4614, label %if.end4650, label %for.cond4616.preheader

for.cond4616.preheader:                           ; preds = %if.then4611
  %949 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x4624 = getelementptr inbounds %struct.ImageParameters* %949, i64 0, i32 37
  %opix_y4627 = getelementptr inbounds %struct.ImageParameters* %949, i64 0, i32 38
  %950 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond4620.preheader

for.cond4620.preheader:                           ; preds = %for.inc4645, %for.cond4616.preheader
  %indvars.iv8923 = phi i64 [ 0, %for.cond4616.preheader ], [ %indvars.iv.next8924, %for.inc4645 ]
  br label %for.body4623

for.body4623:                                     ; preds = %for.body4623, %for.cond4620.preheader
  %indvars.iv8919 = phi i64 [ 0, %for.cond4620.preheader ], [ %indvars.iv.next8920, %for.body4623 ]
  %951 = load i32* %opix_x4624, align 4, !tbaa !3
  %952 = trunc i64 %indvars.iv8923 to i32
  %add4625 = add nsw i32 %951, %952
  %idxprom4626 = sext i32 %add4625 to i64
  %953 = load i32* %opix_y4627, align 4, !tbaa !3
  %954 = trunc i64 %indvars.iv8919 to i32
  %add4628 = add nsw i32 %953, %954
  %idxprom4629 = sext i32 %add4628 to i64
  %arrayidx4630 = getelementptr inbounds i16** %950, i64 %idxprom4629
  %955 = load i16** %arrayidx4630, align 8, !tbaa !0
  %arrayidx4631 = getelementptr inbounds i16* %955, i64 %idxprom4626
  %956 = load i16* %arrayidx4631, align 2, !tbaa !4
  %conv4632 = zext i16 %956 to i32
  %arrayidx4636 = getelementptr inbounds [16 x [16 x i32]]* @pred, i64 0, i64 %indvars.iv8919, i64 %indvars.iv8923
  %957 = load i32* %arrayidx4636, align 4, !tbaa !3
  %sub4637 = sub nsw i32 %conv4632, %957
  %arrayidx4641 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8919, i64 %indvars.iv8923
  store i32 %sub4637, i32* %arrayidx4641, align 4, !tbaa !3
  %indvars.iv.next8920 = add i64 %indvars.iv8919, 1
  %lftr.wideiv8921 = trunc i64 %indvars.iv.next8920 to i32
  %exitcond8922 = icmp eq i32 %lftr.wideiv8921, 16
  br i1 %exitcond8922, label %for.inc4645, label %for.body4623

for.inc4645:                                      ; preds = %for.body4623
  %indvars.iv.next8924 = add i64 %indvars.iv8923, 1
  %lftr.wideiv8925 = trunc i64 %indvars.iv.next8924 to i32
  %exitcond8926 = icmp eq i32 %lftr.wideiv8925, 16
  br i1 %exitcond8926, label %for.end4647, label %for.cond4620.preheader

for.end4647:                                      ; preds = %for.inc4645
  call void @store_macroblock_parameters(i32 %907) #10
  br label %if.end4650

if.end4650:                                       ; preds = %if.then4611, %land.lhs.true4600, %if.end4592, %land.lhs.true4608, %if.end4415, %for.end4647
  %958 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMotionEstimation4651 = getelementptr inbounds %struct.InputParameters* %958, i64 0, i32 39
  %959 = load i32* %BiPredMotionEstimation4651, align 4, !tbaa !3
  %tobool4652 = icmp eq i32 %959, 0
  br i1 %tobool4652, label %for.inc4686, label %land.lhs.true4653

land.lhs.true4653:                                ; preds = %if.end4650
  %960 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type4654 = getelementptr inbounds %struct.ImageParameters* %960, i64 0, i32 6
  %961 = load i32* %type4654, align 4, !tbaa !3
  %cmp4655 = icmp eq i32 %961, 1
  %cmp4658 = icmp eq i32 %ctr16x16.6, 2
  %or.cond8261 = and i1 %cmp4655, %cmp4658
  br i1 %or.cond8261, label %land.lhs.true4660, label %for.inc4686

land.lhs.true4660:                                ; preds = %land.lhs.true4653
  %arrayidx4663 = getelementptr inbounds %struct.ImageParameters* %960, i64 0, i32 74, i64 %idxprom4417
  %962 = load i16* %arrayidx4663, align 2, !tbaa !4
  %cmp4665.not.not = icmp slt i16 %962, 2
  %brmerge8262.not = and i1 %cmp4378, %cmp4665.not.not
  %963 = load i16* getelementptr inbounds ([15 x [4 x i16]]* @best8x8pdir, i64 0, i64 1, i64 0), align 8, !tbaa !4
  %cmp4672 = icmp eq i16 %963, 2
  %or.cond8264 = and i1 %brmerge8262.not, %cmp4672
  br i1 %or.cond8264, label %if.then4674, label %for.inc4686

if.then4674:                                      ; preds = %land.lhs.true4660
  %add4679 = add i16 %962, 1
  store i16 %add4679, i16* %arrayidx4663, align 2, !tbaa !4
  br label %for.inc4686

for.inc4686:                                      ; preds = %land.lhs.true4660, %if.end4650, %land.lhs.true4653, %if.then4674
  %inc4687 = add nsw i32 %index.8, 1
  %cmp4373 = icmp slt i32 %inc4687, 8
  br i1 %cmp4373, label %for.body4375, label %if.end5558

if.else4690:                                      ; preds = %if.end3941
  %964 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %965 = load i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  %966 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format4692 = getelementptr inbounds %struct.ImageParameters* %966, i64 0, i32 159
  %967 = load i32* %yuv_format4692, align 4, !tbaa !3
  %cmp4693 = icmp eq i32 %967, 0
  br i1 %cmp4693, label %if.end4696, label %if.then4695

if.then4695:                                      ; preds = %if.else4690
  call void @IntraChromaPrediction(i32* null, i32* null, i32* null) #8
  br label %if.end4696

if.end4696:                                       ; preds = %if.else4690, %if.then4695
  %968 = load i32* %arrayidx84, align 16, !tbaa !3
  %tobool4698 = icmp eq i32 %968, 0
  %brmerge8266 = or i1 %tobool4698, %cmp15.not8265
  br i1 %brmerge8266, label %if.end4795, label %if.then4701

if.then4701:                                      ; preds = %if.end4696
  %tobool4702 = icmp eq i32 %have_direct.14, 0
  br i1 %tobool4702, label %if.else4723, label %if.then4703

if.then4703:                                      ; preds = %if.then4701
  %969 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x84704 = getelementptr inbounds %struct.InputParameters* %969, i64 0, i32 123
  %970 = load i32* %AllowTransform8x84704, align 4, !tbaa !3
  switch i32 %970, label %sw.default4721 [
    i32 1, label %sw.bb4705
    i32 2, label %sw.bb4720
  ]

sw.bb4705:                                        ; preds = %if.then4703
  %cmp4706 = icmp slt i32 %cost8x8_direct.9, %cost_direct.16
  br i1 %cmp4706, label %if.then4717, label %lor.lhs.false4708

lor.lhs.false4708:                                ; preds = %sw.bb4705
  %971 = load i32* %arrayidx11482818284, align 4, !tbaa !3
  %tobool4710 = icmp eq i32 %971, 0
  br i1 %tobool4710, label %if.then4717, label %land.lhs.true4711

land.lhs.true4711:                                ; preds = %lor.lhs.false4708
  %972 = load i32* %arrayidx1208286, align 8, !tbaa !3
  %tobool4713 = icmp eq i32 %972, 0
  br i1 %tobool4713, label %if.then4717, label %land.lhs.true4714

land.lhs.true4714:                                ; preds = %land.lhs.true4711
  %973 = load i32* %arrayidx126, align 4, !tbaa !3
  %tobool4716 = icmp eq i32 %973, 0
  br i1 %tobool4716, label %if.then4717, label %if.else4718

if.then4717:                                      ; preds = %land.lhs.true4714, %land.lhs.true4711, %lor.lhs.false4708, %sw.bb4705
  store i32 %cost8x8_direct.9, i32* %cost, align 4, !tbaa !3
  br label %if.end4725

if.else4718:                                      ; preds = %land.lhs.true4714
  store i32 %cost_direct.16, i32* %cost, align 4, !tbaa !3
  br label %if.end4725

sw.bb4720:                                        ; preds = %if.then4703
  store i32 %cost8x8_direct.9, i32* %cost, align 4, !tbaa !3
  br label %if.end4725

sw.default4721:                                   ; preds = %if.then4703
  store i32 %cost_direct.16, i32* %cost, align 4, !tbaa !3
  br label %if.end4725

if.else4723:                                      ; preds = %if.then4701
  %call4724 = call i32 @Get_Direct_CostMB(double %lambda_mode.4) #8
  store i32 %call4724, i32* %cost, align 4, !tbaa !3
  br label %if.end4725

if.end4725:                                       ; preds = %sw.bb4720, %sw.default4721, %if.else4718, %if.then4717, %if.else4723
  %974 = phi i32 [ %cost8x8_direct.9, %sw.bb4720 ], [ %cost_direct.16, %sw.default4721 ], [ %cost_direct.16, %if.else4718 ], [ %cost8x8_direct.9, %if.then4717 ], [ %call4724, %if.else4723 ]
  %call4728 = call double @floor(double %add4727) #9
  %conv4729 = fptosi double %call4728 to i32
  %sub4730 = sub nsw i32 %974, %conv4729
  store i32 %sub4730, i32* %cost, align 4, !tbaa !3
  %cmp4731 = icmp sgt i32 %sub4730, %min_cost.4
  br i1 %cmp4731, label %if.else4791, label %if.then4733

if.then4733:                                      ; preds = %if.end4725
  %975 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %direct_8x8_inference_flag4734 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %975, i64 0, i32 27
  %976 = load i32* %direct_8x8_inference_flag4734, align 4, !tbaa !1
  %tobool4735 = icmp eq i32 %976, 0
  br i1 %tobool4735, label %if.else4754, label %land.lhs.true4736

land.lhs.true4736:                                ; preds = %if.then4733
  %977 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x84737 = getelementptr inbounds %struct.InputParameters* %977, i64 0, i32 123
  %978 = load i32* %AllowTransform8x84737, align 4, !tbaa !3
  switch i32 %978, label %if.else4745 [
    i32 0, label %if.else4754
    i32 2, label %if.then4743
  ]

if.then4743:                                      ; preds = %land.lhs.true4736
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.cond4757.preheader

if.else4745:                                      ; preds = %land.lhs.true4736
  %cmp4746 = icmp slt i32 %cost8x8_direct.9, %cost_direct.16
  br i1 %cmp4746, label %if.then4748, label %if.else4750

if.then4748:                                      ; preds = %if.else4745
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.cond4757.preheader

if.else4750:                                      ; preds = %if.else4745
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.cond4757.preheader

if.else4754:                                      ; preds = %land.lhs.true4736, %if.then4733
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.cond4757.preheader

for.cond4757.preheader:                           ; preds = %if.then4743, %if.else4750, %if.then4748, %if.else4754
  %979 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x4765 = getelementptr inbounds %struct.ImageParameters* %979, i64 0, i32 33
  %pix_y4768 = getelementptr inbounds %struct.ImageParameters* %979, i64 0, i32 34
  %980 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond4761.preheader

for.cond4761.preheader:                           ; preds = %for.inc4788, %for.cond4757.preheader
  %indvars.iv8931 = phi i64 [ 0, %for.cond4757.preheader ], [ %indvars.iv.next8932, %for.inc4788 ]
  br label %for.body4764

for.body4764:                                     ; preds = %for.body4764, %for.cond4761.preheader
  %indvars.iv8927 = phi i64 [ 0, %for.cond4761.preheader ], [ %indvars.iv.next8928, %for.body4764 ]
  %981 = load i32* %pix_x4765, align 4, !tbaa !3
  %982 = trunc i64 %indvars.iv8931 to i32
  %add4766 = add nsw i32 %981, %982
  %idxprom4767 = sext i32 %add4766 to i64
  %983 = load i32* %pix_y4768, align 4, !tbaa !3
  %984 = trunc i64 %indvars.iv8927 to i32
  %add4769 = add nsw i32 %983, %984
  %idxprom4770 = sext i32 %add4769 to i64
  %arrayidx4771 = getelementptr inbounds i16** %980, i64 %idxprom4770
  %985 = load i16** %arrayidx4771, align 8, !tbaa !0
  %arrayidx4772 = getelementptr inbounds i16* %985, i64 %idxprom4767
  %986 = load i16* %arrayidx4772, align 2, !tbaa !4
  %conv4773 = zext i16 %986 to i32
  %arrayidx4778 = getelementptr inbounds %struct.ImageParameters* %979, i64 0, i32 45, i64 %indvars.iv8931, i64 %indvars.iv8927
  %987 = load i16* %arrayidx4778, align 2, !tbaa !4
  %conv4779 = zext i16 %987 to i32
  %sub4780 = sub nsw i32 %conv4773, %conv4779
  %arrayidx4784 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8927, i64 %indvars.iv8931
  store i32 %sub4780, i32* %arrayidx4784, align 4, !tbaa !3
  %indvars.iv.next8928 = add i64 %indvars.iv8927, 1
  %lftr.wideiv8929 = trunc i64 %indvars.iv.next8928 to i32
  %exitcond8930 = icmp eq i32 %lftr.wideiv8929, 16
  br i1 %exitcond8930, label %for.inc4788, label %for.body4764

for.inc4788:                                      ; preds = %for.body4764
  %indvars.iv.next8932 = add i64 %indvars.iv8931, 1
  %lftr.wideiv8933 = trunc i64 %indvars.iv.next8932 to i32
  %exitcond8934 = icmp eq i32 %lftr.wideiv8933, 16
  br i1 %exitcond8934, label %for.end4790, label %for.cond4761.preheader

for.end4790:                                      ; preds = %for.inc4788
  %988 = load i32* %cost, align 4, !tbaa !3
  store i32 0, i32* @best_mode, align 4, !tbaa !3
  br label %if.end4795

if.else4791:                                      ; preds = %if.end4725
  store i32 %964, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  store i32 %965, i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  br label %if.end4795

if.end4795:                                       ; preds = %if.end4696, %for.end4790, %if.else4791
  %min_cost.5 = phi i32 [ %988, %for.end4790 ], [ %min_cost.4, %if.else4791 ], [ %min_cost.4, %if.end4696 ]
  %989 = load i32* %arrayidx76, align 4, !tbaa !3
  %tobool4797 = icmp eq i32 %989, 0
  br i1 %tobool4797, label %if.end4957, label %if.then4798

if.then4798:                                      ; preds = %if.end4795
  store i32 1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  store i32 13, i32* %mb_type4962, align 4, !tbaa !3
  %call4801 = call i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %lambda_mode.4, i32* %cost) #8
  %990 = load i32* %cost, align 4, !tbaa !3
  %cmp4802 = icmp sgt i32 %990, %min_cost.5
  br i1 %cmp4802, label %if.else4954, label %if.then4804

if.then4804:                                      ; preds = %if.then4798
  %991 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag4805 = getelementptr inbounds %struct.ImageParameters* %991, i64 0, i32 164
  %992 = load i32* %residue_transform_flag4805, align 4, !tbaa !3
  %tobool4806 = icmp eq i32 %992, 0
  br i1 %tobool4806, label %if.end4883, label %for.cond4812.preheader

for.cond4812.preheader:                           ; preds = %if.then4804, %for.inc4835
  %indvars.iv8943 = phi i64 [ %indvars.iv.next8944, %for.inc4835 ], [ 0, %if.then4804 ]
  %cr_cbp.18567 = phi i32 [ %cr_cbp.3., %for.inc4835 ], [ %cr_cbp.08604, %if.then4804 ]
  br label %for.cond4816.preheader

for.cond4816.preheader:                           ; preds = %for.inc4832, %for.cond4812.preheader
  %indvars.iv8939 = phi i64 [ 0, %for.cond4812.preheader ], [ %indvars.iv.next8940, %for.inc4832 ]
  %cr_cbp.28565 = phi i32 [ %cr_cbp.18567, %for.cond4812.preheader ], [ %cr_cbp.3., %for.inc4832 ]
  br label %for.body4819

for.body4819:                                     ; preds = %for.body4819, %for.cond4816.preheader
  %indvars.iv8935 = phi i64 [ 0, %for.cond4816.preheader ], [ %indvars.iv.next8936, %for.body4819 ]
  %cr_cbp.38563 = phi i32 [ %cr_cbp.28565, %for.cond4816.preheader ], [ %cr_cbp.3., %for.body4819 ]
  %arrayidx4825 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv8943, i64 %indvars.iv8939, i64 %indvars.iv8935
  %993 = load i32* %arrayidx4825, align 4, !tbaa !3
  %tobool4826 = icmp eq i32 %993, 0
  %cr_cbp.3. = select i1 %tobool4826, i32 %cr_cbp.38563, i32 2
  %indvars.iv.next8936 = add i64 %indvars.iv8935, 1
  %lftr.wideiv8937 = trunc i64 %indvars.iv.next8936 to i32
  %exitcond8938 = icmp eq i32 %lftr.wideiv8937, 4
  br i1 %exitcond8938, label %for.inc4832, label %for.body4819

for.inc4832:                                      ; preds = %for.body4819
  %indvars.iv.next8940 = add i64 %indvars.iv8939, 1
  %lftr.wideiv8941 = trunc i64 %indvars.iv.next8940 to i32
  %exitcond8942 = icmp eq i32 %lftr.wideiv8941, 4
  br i1 %exitcond8942, label %for.inc4835, label %for.cond4816.preheader

for.inc4835:                                      ; preds = %for.inc4832
  %indvars.iv.next8944 = add i64 %indvars.iv8943, 1
  %lftr.wideiv8945 = trunc i64 %indvars.iv.next8944 to i32
  %exitcond8946 = icmp eq i32 %lftr.wideiv8945, 2
  br i1 %exitcond8946, label %for.end4837, label %for.cond4812.preheader

for.end4837:                                      ; preds = %for.inc4835
  %call4838 = call i32 @dct_chroma_DC(i32 0, i32 %cr_cbp.3.) #8
  %call4839 = call i32 @dct_chroma_DC(i32 1, i32 %call4838) #8
  %shl4840 = shl i32 %call4839, 4
  %994 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x4850 = getelementptr inbounds %struct.ImageParameters* %994, i64 0, i32 33
  %995 = load i32* %pix_x4850, align 4, !tbaa !3
  %pix_y4853 = getelementptr inbounds %struct.ImageParameters* %994, i64 0, i32 34
  %996 = load i32* %pix_y4853, align 4, !tbaa !3
  %997 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %997, i64 0, i32 30
  %998 = load i16**** %imgUV, align 8, !tbaa !0
  %999 = load i16*** %998, align 8, !tbaa !0
  %arrayidx4870 = getelementptr inbounds i16*** %998, i64 1
  %1000 = load i16*** %arrayidx4870, align 8, !tbaa !0
  %1001 = sext i32 %995 to i64
  %1002 = sext i32 %996 to i64
  br label %for.cond4846.preheader

for.cond4846.preheader:                           ; preds = %for.inc4880, %for.end4837
  %indvars.iv8955 = phi i64 [ 0, %for.end4837 ], [ %indvars.iv.next8956, %for.inc4880 ]
  %1003 = add nsw i64 %1002, %indvars.iv8955
  %arrayidx4857 = getelementptr inbounds i16** %999, i64 %1003
  %1004 = load i16** %arrayidx4857, align 8, !tbaa !0
  %arrayidx4871 = getelementptr inbounds i16** %1000, i64 %1003
  %1005 = load i16** %arrayidx4871, align 8, !tbaa !0
  br label %for.body4849

for.body4849:                                     ; preds = %for.body4849, %for.cond4846.preheader
  %indvars.iv8947 = phi i64 [ 0, %for.cond4846.preheader ], [ %indvars.iv.next8948, %for.body4849 ]
  %1006 = add nsw i64 %1001, %indvars.iv8947
  %arrayidx4858 = getelementptr inbounds i16* %1004, i64 %1006
  %1007 = load i16* %arrayidx4858, align 2, !tbaa !4
  %arrayidx4862 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgU, i64 0, i64 %indvars.iv8955, i64 %indvars.iv8947
  store i16 %1007, i16* %arrayidx4862, align 2, !tbaa !4
  %arrayidx4872 = getelementptr inbounds i16* %1005, i64 %1006
  %1008 = load i16* %arrayidx4872, align 2, !tbaa !4
  %arrayidx4876 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgV, i64 0, i64 %indvars.iv8955, i64 %indvars.iv8947
  store i16 %1008, i16* %arrayidx4876, align 2, !tbaa !4
  %indvars.iv.next8948 = add i64 %indvars.iv8947, 1
  %lftr.wideiv8951 = trunc i64 %indvars.iv.next8948 to i32
  %exitcond8952 = icmp eq i32 %lftr.wideiv8951, 16
  br i1 %exitcond8952, label %for.inc4880, label %for.body4849

for.inc4880:                                      ; preds = %for.body4849
  %indvars.iv.next8956 = add i64 %indvars.iv8955, 1
  %lftr.wideiv8959 = trunc i64 %indvars.iv.next8956 to i32
  %exitcond8960 = icmp eq i32 %lftr.wideiv8959, 16
  br i1 %exitcond8960, label %if.end4883.loopexit, label %for.cond4846.preheader

if.end4883.loopexit:                              ; preds = %for.inc4880
  %add4841 = add nsw i32 %shl4840, %call4801
  br label %if.end4883

if.end4883:                                       ; preds = %if.end4883.loopexit, %if.then4804
  %1009 = phi %struct.ImageParameters* [ %991, %if.then4804 ], [ %994, %if.end4883.loopexit ]
  %temp_cpb.0 = phi i32 [ %call4801, %if.then4804 ], [ %add4841, %if.end4883.loopexit ]
  %cr_cbp.5 = phi i32 [ %cr_cbp.08604, %if.then4804 ], [ %call4839, %if.end4883.loopexit ]
  store i32 %temp_cpb.0, i32* %cbp5202, align 4, !tbaa !3
  %1010 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x84885 = getelementptr inbounds %struct.InputParameters* %1010, i64 0, i32 123
  %1011 = load i32* %AllowTransform8x84885, align 4, !tbaa !3
  %cmp4886 = icmp eq i32 %1011, 2
  br i1 %cmp4886, label %for.cond4892.preheader, label %if.then4888

if.then4888:                                      ; preds = %if.end4883
  %1012 = load i32***** @cofAC, align 8, !tbaa !0
  %cofAC4889 = getelementptr inbounds %struct.ImageParameters* %1009, i64 0, i32 47
  %1013 = load i32***** %cofAC4889, align 8, !tbaa !0
  store i32**** %1013, i32***** @cofAC, align 8, !tbaa !0
  store i32**** %1012, i32***** %cofAC4889, align 8, !tbaa !0
  %.pre9075 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond4892.preheader

for.cond4892.preheader:                           ; preds = %if.end4883, %if.then4888
  %1014 = phi %struct.ImageParameters* [ %.pre9075, %if.then4888 ], [ %1009, %if.end4883 ]
  %pix_x4900 = getelementptr inbounds %struct.ImageParameters* %1014, i64 0, i32 33
  %1015 = load i32* %pix_x4900, align 4, !tbaa !3
  %pix_y4903 = getelementptr inbounds %struct.ImageParameters* %1014, i64 0, i32 34
  %1016 = load i32* %pix_y4903, align 4, !tbaa !3
  %1017 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY4906 = getelementptr inbounds %struct.storable_picture* %1017, i64 0, i32 25
  %1018 = load i16*** %imgY4906, align 8, !tbaa !0
  %1019 = sext i32 %1015 to i64
  %1020 = sext i32 %1016 to i64
  br label %for.cond4896.preheader

for.cond4896.preheader:                           ; preds = %for.inc4916, %for.cond4892.preheader
  %indvars.iv8967 = phi i64 [ 0, %for.cond4892.preheader ], [ %indvars.iv.next8968, %for.inc4916 ]
  %1021 = add nsw i64 %1020, %indvars.iv8967
  %arrayidx4907 = getelementptr inbounds i16** %1018, i64 %1021
  %1022 = load i16** %arrayidx4907, align 8, !tbaa !0
  br label %for.body4899

for.body4899:                                     ; preds = %for.body4899, %for.cond4896.preheader
  %indvars.iv8961 = phi i64 [ 0, %for.cond4896.preheader ], [ %indvars.iv.next8962, %for.body4899 ]
  %1023 = add nsw i64 %1019, %indvars.iv8961
  %arrayidx4908 = getelementptr inbounds i16* %1022, i64 %1023
  %1024 = load i16* %arrayidx4908, align 2, !tbaa !4
  %arrayidx4912 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgY, i64 0, i64 %indvars.iv8967, i64 %indvars.iv8961
  store i16 %1024, i16* %arrayidx4912, align 2, !tbaa !4
  %indvars.iv.next8962 = add i64 %indvars.iv8961, 1
  %lftr.wideiv8964 = trunc i64 %indvars.iv.next8962 to i32
  %exitcond8965 = icmp eq i32 %lftr.wideiv8964, 16
  br i1 %exitcond8965, label %for.inc4916, label %for.body4899

for.inc4916:                                      ; preds = %for.body4899
  %indvars.iv.next8968 = add i64 %indvars.iv8967, 1
  %lftr.wideiv8970 = trunc i64 %indvars.iv.next8968 to i32
  %exitcond8971 = icmp eq i32 %lftr.wideiv8970, 16
  br i1 %exitcond8971, label %for.cond4919.loopexit, label %for.cond4896.preheader

for.cond4919.loopexit:                            ; preds = %for.inc4916
  %1025 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond4923.preheader

for.cond4923.preheader:                           ; preds = %for.inc4950, %for.cond4919.loopexit
  %indvars.iv8976 = phi i64 [ 0, %for.cond4919.loopexit ], [ %indvars.iv.next8977, %for.inc4950 ]
  br label %for.body4926

for.body4926:                                     ; preds = %for.body4926, %for.cond4923.preheader
  %indvars.iv8972 = phi i64 [ 0, %for.cond4923.preheader ], [ %indvars.iv.next8973, %for.body4926 ]
  %1026 = load i32* %pix_x4900, align 4, !tbaa !3
  %1027 = trunc i64 %indvars.iv8976 to i32
  %add4928 = add nsw i32 %1026, %1027
  %idxprom4929 = sext i32 %add4928 to i64
  %1028 = load i32* %pix_y4903, align 4, !tbaa !3
  %1029 = trunc i64 %indvars.iv8972 to i32
  %add4931 = add nsw i32 %1028, %1029
  %idxprom4932 = sext i32 %add4931 to i64
  %arrayidx4933 = getelementptr inbounds i16** %1025, i64 %idxprom4932
  %1030 = load i16** %arrayidx4933, align 8, !tbaa !0
  %arrayidx4934 = getelementptr inbounds i16* %1030, i64 %idxprom4929
  %1031 = load i16* %arrayidx4934, align 2, !tbaa !4
  %conv4935 = zext i16 %1031 to i32
  %arrayidx4940 = getelementptr inbounds %struct.ImageParameters* %1014, i64 0, i32 45, i64 %indvars.iv8976, i64 %indvars.iv8972
  %1032 = load i16* %arrayidx4940, align 2, !tbaa !4
  %conv4941 = zext i16 %1032 to i32
  %sub4942 = sub nsw i32 %conv4935, %conv4941
  %arrayidx4946 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8972, i64 %indvars.iv8976
  store i32 %sub4942, i32* %arrayidx4946, align 4, !tbaa !3
  %indvars.iv.next8973 = add i64 %indvars.iv8972, 1
  %lftr.wideiv8974 = trunc i64 %indvars.iv.next8973 to i32
  %exitcond8975 = icmp eq i32 %lftr.wideiv8974, 16
  br i1 %exitcond8975, label %for.inc4950, label %for.body4926

for.inc4950:                                      ; preds = %for.body4926
  %indvars.iv.next8977 = add i64 %indvars.iv8976, 1
  %lftr.wideiv8978 = trunc i64 %indvars.iv.next8977 to i32
  %exitcond8979 = icmp eq i32 %lftr.wideiv8978, 16
  br i1 %exitcond8979, label %for.end4952, label %for.cond4923.preheader

for.end4952:                                      ; preds = %for.inc4950
  %1033 = load i32* %cost, align 4, !tbaa !3
  store i32 13, i32* @best_mode, align 4, !tbaa !3
  %1034 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4957

if.else4954:                                      ; preds = %if.then4798
  store i32 %964, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end4957

if.end4957:                                       ; preds = %if.end4795, %for.end4952, %if.else4954
  %min_cost.6 = phi i32 [ %1033, %for.end4952 ], [ %min_cost.5, %if.else4954 ], [ %min_cost.5, %if.end4795 ]
  %tmp_8x8_flag.0 = phi i32 [ %1034, %for.end4952 ], [ %964, %if.else4954 ], [ %964, %if.end4795 ]
  %cr_cbp.6 = phi i32 [ %cr_cbp.5, %for.end4952 ], [ %cr_cbp.08604, %if.else4954 ], [ %cr_cbp.08604, %if.end4795 ]
  %1035 = load i32* %arrayidx81, align 4, !tbaa !3
  %tobool4959 = icmp eq i32 %1035, 0
  br i1 %tobool4959, label %if.end5046, label %if.then4960

if.then4960:                                      ; preds = %if.end4957
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  store i32 9, i32* %mb_type4962, align 4, !tbaa !3
  %call4963 = call i32 @Mode_Decision_for_Intra4x4Macroblock(double %lambda_mode.4, i32* %cost) #10
  %1036 = load i32* %cost, align 4, !tbaa !3
  %cmp4964 = icmp sgt i32 %1036, %min_cost.6
  br i1 %cmp4964, label %if.else5041, label %if.then4966

if.then4966:                                      ; preds = %if.then4960
  %1037 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag4967 = getelementptr inbounds %struct.ImageParameters* %1037, i64 0, i32 164
  %1038 = load i32* %residue_transform_flag4967, align 4, !tbaa !3
  %tobool4968 = icmp eq i32 %1038, 0
  br i1 %tobool4968, label %if.end5004, label %for.cond4974.preheader

for.cond4974.preheader:                           ; preds = %if.then4966, %for.inc4997
  %indvars.iv8988 = phi i64 [ %indvars.iv.next8989, %for.inc4997 ], [ 0, %if.then4966 ]
  %cr_cbp.78579 = phi i32 [ %cr_cbp.9., %for.inc4997 ], [ %cr_cbp.6, %if.then4966 ]
  br label %for.cond4978.preheader

for.cond4978.preheader:                           ; preds = %for.inc4994, %for.cond4974.preheader
  %indvars.iv8984 = phi i64 [ 0, %for.cond4974.preheader ], [ %indvars.iv.next8985, %for.inc4994 ]
  %cr_cbp.88577 = phi i32 [ %cr_cbp.78579, %for.cond4974.preheader ], [ %cr_cbp.9., %for.inc4994 ]
  br label %for.body4981

for.body4981:                                     ; preds = %for.body4981, %for.cond4978.preheader
  %indvars.iv8980 = phi i64 [ 0, %for.cond4978.preheader ], [ %indvars.iv.next8981, %for.body4981 ]
  %cr_cbp.98575 = phi i32 [ %cr_cbp.88577, %for.cond4978.preheader ], [ %cr_cbp.9., %for.body4981 ]
  %arrayidx4987 = getelementptr inbounds [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i64 0, i64 %indvars.iv8988, i64 %indvars.iv8984, i64 %indvars.iv8980
  %1039 = load i32* %arrayidx4987, align 4, !tbaa !3
  %tobool4988 = icmp eq i32 %1039, 0
  %cr_cbp.9. = select i1 %tobool4988, i32 %cr_cbp.98575, i32 2
  %indvars.iv.next8981 = add i64 %indvars.iv8980, 1
  %lftr.wideiv8982 = trunc i64 %indvars.iv.next8981 to i32
  %exitcond8983 = icmp eq i32 %lftr.wideiv8982, 4
  br i1 %exitcond8983, label %for.inc4994, label %for.body4981

for.inc4994:                                      ; preds = %for.body4981
  %indvars.iv.next8985 = add i64 %indvars.iv8984, 1
  %lftr.wideiv8986 = trunc i64 %indvars.iv.next8985 to i32
  %exitcond8987 = icmp eq i32 %lftr.wideiv8986, 4
  br i1 %exitcond8987, label %for.inc4997, label %for.cond4978.preheader

for.inc4997:                                      ; preds = %for.inc4994
  %indvars.iv.next8989 = add i64 %indvars.iv8988, 1
  %lftr.wideiv8990 = trunc i64 %indvars.iv.next8989 to i32
  %exitcond8991 = icmp eq i32 %lftr.wideiv8990, 2
  br i1 %exitcond8991, label %for.end4999, label %for.cond4974.preheader

for.end4999:                                      ; preds = %for.inc4997
  %call5000 = call i32 @dct_chroma_DC(i32 0, i32 %cr_cbp.9.) #8
  %call5001 = call i32 @dct_chroma_DC(i32 1, i32 %call5000) #8
  %shl5002 = shl i32 %call5001, 4
  %add5003 = add nsw i32 %shl5002, %call4963
  %.pre9074 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end5004

if.end5004:                                       ; preds = %if.then4966, %for.end4999
  %1040 = phi %struct.ImageParameters* [ %.pre9074, %for.end4999 ], [ %1037, %if.then4966 ]
  %temp_cpb.1 = phi i32 [ %add5003, %for.end4999 ], [ %call4963, %if.then4966 ]
  %cr_cbp.11 = phi i32 [ %call5001, %for.end4999 ], [ %cr_cbp.6, %if.then4966 ]
  store i32 %temp_cpb.1, i32* %cbp5202, align 4, !tbaa !3
  %pix_x5014 = getelementptr inbounds %struct.ImageParameters* %1040, i64 0, i32 33
  %pix_y5017 = getelementptr inbounds %struct.ImageParameters* %1040, i64 0, i32 34
  %1041 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond5010.preheader

for.cond5010.preheader:                           ; preds = %for.inc5037, %if.end5004
  %indvars.iv8996 = phi i64 [ 0, %if.end5004 ], [ %indvars.iv.next8997, %for.inc5037 ]
  br label %for.body5013

for.body5013:                                     ; preds = %for.body5013, %for.cond5010.preheader
  %indvars.iv8992 = phi i64 [ 0, %for.cond5010.preheader ], [ %indvars.iv.next8993, %for.body5013 ]
  %1042 = load i32* %pix_x5014, align 4, !tbaa !3
  %1043 = trunc i64 %indvars.iv8996 to i32
  %add5015 = add nsw i32 %1042, %1043
  %idxprom5016 = sext i32 %add5015 to i64
  %1044 = load i32* %pix_y5017, align 4, !tbaa !3
  %1045 = trunc i64 %indvars.iv8992 to i32
  %add5018 = add nsw i32 %1044, %1045
  %idxprom5019 = sext i32 %add5018 to i64
  %arrayidx5020 = getelementptr inbounds i16** %1041, i64 %idxprom5019
  %1046 = load i16** %arrayidx5020, align 8, !tbaa !0
  %arrayidx5021 = getelementptr inbounds i16* %1046, i64 %idxprom5016
  %1047 = load i16* %arrayidx5021, align 2, !tbaa !4
  %conv5022 = zext i16 %1047 to i32
  %arrayidx5027 = getelementptr inbounds %struct.ImageParameters* %1040, i64 0, i32 45, i64 %indvars.iv8996, i64 %indvars.iv8992
  %1048 = load i16* %arrayidx5027, align 2, !tbaa !4
  %conv5028 = zext i16 %1048 to i32
  %sub5029 = sub nsw i32 %conv5022, %conv5028
  %arrayidx5033 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv8992, i64 %indvars.iv8996
  store i32 %sub5029, i32* %arrayidx5033, align 4, !tbaa !3
  %indvars.iv.next8993 = add i64 %indvars.iv8992, 1
  %lftr.wideiv8994 = trunc i64 %indvars.iv.next8993 to i32
  %exitcond8995 = icmp eq i32 %lftr.wideiv8994, 16
  br i1 %exitcond8995, label %for.inc5037, label %for.body5013

for.inc5037:                                      ; preds = %for.body5013
  %indvars.iv.next8997 = add i64 %indvars.iv8996, 1
  %lftr.wideiv8998 = trunc i64 %indvars.iv.next8997 to i32
  %exitcond8999 = icmp eq i32 %lftr.wideiv8998, 16
  br i1 %exitcond8999, label %for.end5039, label %for.cond5010.preheader

for.end5039:                                      ; preds = %for.inc5037
  %1049 = load i32* %cost, align 4, !tbaa !3
  store i32 9, i32* @best_mode, align 4, !tbaa !3
  %1050 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end5046

if.else5041:                                      ; preds = %if.then4960
  store i32 %tmp_8x8_flag.0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %1051 = load i32***** @cofAC, align 8, !tbaa !0
  %1052 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %cofAC5043 = getelementptr inbounds %struct.ImageParameters* %1052, i64 0, i32 47
  %1053 = load i32***** %cofAC5043, align 8, !tbaa !0
  store i32**** %1053, i32***** @cofAC, align 8, !tbaa !0
  store i32**** %1051, i32***** %cofAC5043, align 8, !tbaa !0
  br label %if.end5046

if.end5046:                                       ; preds = %if.end4957, %for.end5039, %if.else5041
  %min_cost.7 = phi i32 [ %1049, %for.end5039 ], [ %min_cost.6, %if.else5041 ], [ %min_cost.6, %if.end4957 ]
  %tmp_8x8_flag.1 = phi i32 [ %1050, %for.end5039 ], [ %tmp_8x8_flag.0, %if.else5041 ], [ %tmp_8x8_flag.0, %if.end4957 ]
  %cr_cbp.12 = phi i32 [ %cr_cbp.11, %for.end5039 ], [ %cr_cbp.6, %if.else5041 ], [ %cr_cbp.6, %if.end4957 ]
  %1054 = load i32* %arrayidx82, align 8, !tbaa !3
  %tobool5048 = icmp eq i32 %1054, 0
  br i1 %tobool5048, label %if.end5558, label %if.then5049

if.then5049:                                      ; preds = %if.end5046
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  call void (...)* @intrapred_luma_16x16() #8
  %call5051 = call i32 @find_sad_16x16(i32* %i16mode) #8
  store i32 %call5051, i32* %cost, align 4, !tbaa !3
  %cmp5052 = icmp slt i32 %call5051, %min_cost.7
  br i1 %cmp5052, label %for.cond5055.preheader, label %if.else5553

for.cond5055.preheader:                           ; preds = %if.then5049
  %1055 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x5063 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 33
  %pix_y5066 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 34
  %1056 = load i16*** @imgY_org, align 8, !tbaa !0
  %.pre9066.pre = load i32* %i16mode, align 4, !tbaa !3
  br label %for.cond5059.preheader

for.cond5059.preheader:                           ; preds = %for.inc5087, %for.cond5055.preheader
  %indvars.iv9004 = phi i64 [ 0, %for.cond5055.preheader ], [ %indvars.iv.next9005, %for.inc5087 ]
  br label %for.body5062

for.body5062:                                     ; preds = %for.body5062, %for.cond5059.preheader
  %indvars.iv9000 = phi i64 [ 0, %for.cond5059.preheader ], [ %indvars.iv.next9001, %for.body5062 ]
  %1057 = load i32* %pix_x5063, align 4, !tbaa !3
  %1058 = trunc i64 %indvars.iv9004 to i32
  %add5064 = add nsw i32 %1057, %1058
  %idxprom5065 = sext i32 %add5064 to i64
  %1059 = load i32* %pix_y5066, align 4, !tbaa !3
  %1060 = trunc i64 %indvars.iv9000 to i32
  %add5067 = add nsw i32 %1059, %1060
  %idxprom5068 = sext i32 %add5067 to i64
  %arrayidx5069 = getelementptr inbounds i16** %1056, i64 %idxprom5068
  %1061 = load i16** %arrayidx5069, align 8, !tbaa !0
  %arrayidx5070 = getelementptr inbounds i16* %1061, i64 %idxprom5065
  %1062 = load i16* %arrayidx5070, align 2, !tbaa !4
  %conv5071 = zext i16 %1062 to i32
  %idxprom5074 = sext i32 %.pre9066.pre to i64
  %arrayidx5077 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 42, i64 %idxprom5074, i64 %indvars.iv9000, i64 %indvars.iv9004
  %1063 = load i16* %arrayidx5077, align 2, !tbaa !4
  %conv5078 = zext i16 %1063 to i32
  %sub5079 = sub nsw i32 %conv5071, %conv5078
  %arrayidx5083 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv9000, i64 %indvars.iv9004
  store i32 %sub5079, i32* %arrayidx5083, align 4, !tbaa !3
  %indvars.iv.next9001 = add i64 %indvars.iv9000, 1
  %lftr.wideiv9002 = trunc i64 %indvars.iv.next9001 to i32
  %exitcond9003 = icmp eq i32 %lftr.wideiv9002, 16
  br i1 %exitcond9003, label %for.inc5087, label %for.body5062

for.inc5087:                                      ; preds = %for.body5062
  %indvars.iv.next9005 = add i64 %indvars.iv9004, 1
  %lftr.wideiv9006 = trunc i64 %indvars.iv.next9005 to i32
  %exitcond9007 = icmp eq i32 %lftr.wideiv9006, 16
  br i1 %exitcond9007, label %for.end5089, label %for.cond5059.preheader

for.end5089:                                      ; preds = %for.inc5087
  %residue_transform_flag5090 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 164
  %1064 = load i32* %residue_transform_flag5090, align 4, !tbaa !3
  %tobool5091 = icmp eq i32 %1064, 0
  br i1 %tobool5091, label %if.end5200, label %for.cond5093.preheader

for.cond5093.preheader:                           ; preds = %for.end5089
  %1065 = load i16**** @imgUV_org, align 8, !tbaa !0
  %1066 = load i16*** %1065, align 8, !tbaa !0
  %arrayidx5145 = getelementptr inbounds i16*** %1065, i64 1
  %1067 = load i16*** %arrayidx5145, align 8, !tbaa !0
  br label %for.cond5097.preheader

for.cond5097.preheader:                           ; preds = %for.inc5197, %for.cond5093.preheader
  %indvars.iv9012 = phi i64 [ 0, %for.cond5093.preheader ], [ %indvars.iv.next9013, %for.inc5197 ]
  br label %for.body5100

for.body5100:                                     ; preds = %for.body5100, %for.cond5097.preheader
  %indvars.iv9008 = phi i64 [ 0, %for.cond5097.preheader ], [ %indvars.iv.next9009, %for.body5100 ]
  %1068 = load i32* %pix_x5063, align 4, !tbaa !3
  %1069 = trunc i64 %indvars.iv9008 to i32
  %add5102 = add nsw i32 %1068, %1069
  %idxprom5103 = sext i32 %add5102 to i64
  %1070 = load i32* %pix_y5066, align 4, !tbaa !3
  %1071 = trunc i64 %indvars.iv9012 to i32
  %add5105 = add nsw i32 %1070, %1071
  %idxprom5106 = sext i32 %add5105 to i64
  %arrayidx5108 = getelementptr inbounds i16** %1066, i64 %idxprom5106
  %1072 = load i16** %arrayidx5108, align 8, !tbaa !0
  %arrayidx5109 = getelementptr inbounds i16* %1072, i64 %idxprom5103
  %1073 = load i16* %arrayidx5109, align 2, !tbaa !4
  %conv5110 = zext i16 %1073 to i32
  %1074 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %idxprom5114 = sext i32 %1074 to i64
  %arrayidx5118 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 44, i64 0, i64 %idxprom5114, i64 %indvars.iv9008, i64 %indvars.iv9012
  %1075 = load i16* %arrayidx5118, align 2, !tbaa !4
  %conv5119 = zext i16 %1075 to i32
  %sub5120 = sub nsw i32 %conv5110, %conv5119
  %arrayidx5127 = getelementptr inbounds i16** %1056, i64 %idxprom5106
  %1076 = load i16** %arrayidx5127, align 8, !tbaa !0
  %arrayidx5128 = getelementptr inbounds i16* %1076, i64 %idxprom5103
  %1077 = load i16* %arrayidx5128, align 2, !tbaa !4
  %conv5129 = zext i16 %1077 to i32
  %1078 = load i32* %i16mode, align 4, !tbaa !3
  %idxprom5132 = sext i32 %1078 to i64
  %arrayidx5136 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 42, i64 %idxprom5132, i64 %indvars.iv9012, i64 %indvars.iv9008
  %1079 = load i16* %arrayidx5136, align 2, !tbaa !4
  %conv5137 = zext i16 %1079 to i32
  %sub5138 = sub nsw i32 %conv5129, %conv5137
  %arrayidx5146 = getelementptr inbounds i16** %1067, i64 %idxprom5106
  %1080 = load i16** %arrayidx5146, align 8, !tbaa !0
  %arrayidx5147 = getelementptr inbounds i16* %1080, i64 %idxprom5103
  %1081 = load i16* %arrayidx5147, align 2, !tbaa !4
  %conv5148 = zext i16 %1081 to i32
  %arrayidx5157 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 44, i64 1, i64 %idxprom5114, i64 %indvars.iv9008, i64 %indvars.iv9012
  %1082 = load i16* %arrayidx5157, align 2, !tbaa !4
  %conv5158 = zext i16 %1082 to i32
  %sub5159 = sub nsw i32 %conv5148, %conv5158
  %sub5160 = sub i32 %sub5159, %sub5120
  %arrayidx5164 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv9008, i64 %indvars.iv9012
  store i32 %sub5160, i32* %arrayidx5164, align 4, !tbaa !3
  %shr5169 = ashr i32 %sub5160, 1
  %add5170 = add nsw i32 %shr5169, %sub5120
  %sub5171 = sub i32 %sub5138, %add5170
  %arrayidx5175 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv9008, i64 %indvars.iv9012
  store i32 %sub5171, i32* %arrayidx5175, align 4, !tbaa !3
  %shr5180 = ashr i32 %sub5171, 1
  %add5181 = add nsw i32 %shr5180, %add5170
  %arrayidx5185 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_G, i64 0, i64 %indvars.iv9008, i64 %indvars.iv9012
  store i32 %add5181, i32* %arrayidx5185, align 4, !tbaa !3
  %arrayidx5193 = getelementptr inbounds %struct.ImageParameters* %1055, i64 0, i32 46, i64 %indvars.iv9008, i64 %indvars.iv9012
  store i32 %add5181, i32* %arrayidx5193, align 4, !tbaa !3
  %indvars.iv.next9009 = add i64 %indvars.iv9008, 1
  %lftr.wideiv9010 = trunc i64 %indvars.iv.next9009 to i32
  %exitcond9011 = icmp eq i32 %lftr.wideiv9010, 16
  br i1 %exitcond9011, label %for.inc5197, label %for.body5100

for.inc5197:                                      ; preds = %for.body5100
  %indvars.iv.next9013 = add i64 %indvars.iv9012, 1
  %lftr.wideiv9014 = trunc i64 %indvars.iv.next9013 to i32
  %exitcond9015 = icmp eq i32 %lftr.wideiv9014, 16
  br i1 %exitcond9015, label %if.end5200.loopexit, label %for.cond5097.preheader

if.end5200.loopexit:                              ; preds = %for.inc5197
  %.pre9067 = load i32* %i16mode, align 4, !tbaa !3
  br label %if.end5200

if.end5200:                                       ; preds = %if.end5200.loopexit, %for.end5089
  %1083 = phi i32 [ %.pre9067, %if.end5200.loopexit ], [ %.pre9066.pre, %for.end5089 ]
  store i32 10, i32* @best_mode, align 4, !tbaa !3
  %call5201 = call i32 @dct_luma_16x16(i32 %1083) #8
  store i32 %call5201, i32* %cbp5202, align 4, !tbaa !3
  %1084 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %residue_transform_flag5203 = getelementptr inbounds %struct.ImageParameters* %1084, i64 0, i32 164
  %1085 = load i32* %residue_transform_flag5203, align 4, !tbaa !3
  %tobool5204 = icmp eq i32 %1085, 0
  br i1 %tobool5204, label %if.end5558, label %for.cond5210.preheader

for.cond5210.preheader:                           ; preds = %if.end5200, %for.inc5235
  %indvars.iv9020 = phi i64 [ %indvars.iv.next9021, %for.inc5235 ], [ 0, %if.end5200 ]
  br label %for.body5213

for.body5213:                                     ; preds = %for.body5213, %for.cond5210.preheader
  %indvars.iv9016 = phi i64 [ 0, %for.cond5210.preheader ], [ %indvars.iv.next9017, %for.body5213 ]
  %arrayidx5218 = getelementptr inbounds %struct.ImageParameters* %1084, i64 0, i32 46, i64 %indvars.iv9016, i64 %indvars.iv9020
  %1086 = load i32* %arrayidx5218, align 4, !tbaa !3
  %arrayidx5222 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv9016, i64 %indvars.iv9020
  store i32 %1086, i32* %arrayidx5222, align 4, !tbaa !3
  %arrayidx5226 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_R, i64 0, i64 %indvars.iv9016, i64 %indvars.iv9020
  %1087 = load i32* %arrayidx5226, align 4, !tbaa !3
  store i32 %1087, i32* %arrayidx5218, align 4, !tbaa !3
  %indvars.iv.next9017 = add i64 %indvars.iv9016, 1
  %lftr.wideiv9018 = trunc i64 %indvars.iv.next9017 to i32
  %exitcond9019 = icmp eq i32 %lftr.wideiv9018, 16
  br i1 %exitcond9019, label %for.inc5235, label %for.body5213

for.inc5235:                                      ; preds = %for.body5213
  %indvars.iv.next9021 = add i64 %indvars.iv9020, 1
  %lftr.wideiv9022 = trunc i64 %indvars.iv.next9021 to i32
  %exitcond9023 = icmp eq i32 %lftr.wideiv9022, 16
  br i1 %exitcond9023, label %for.end5237, label %for.cond5210.preheader

for.end5237:                                      ; preds = %for.inc5235
  %call5238 = call i32 @dct_chroma(i32 0, i32 0) #8
  %1088 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond5243.preheader

for.cond5243.preheader:                           ; preds = %for.inc5268, %for.end5237
  %indvars.iv9028 = phi i64 [ 0, %for.end5237 ], [ %indvars.iv.next9029, %for.inc5268 ]
  br label %for.body5246

for.body5246:                                     ; preds = %for.body5246, %for.cond5243.preheader
  %indvars.iv9024 = phi i64 [ 0, %for.cond5243.preheader ], [ %indvars.iv.next9025, %for.body5246 ]
  %arrayidx5251 = getelementptr inbounds %struct.ImageParameters* %1088, i64 0, i32 46, i64 %indvars.iv9024, i64 %indvars.iv9028
  %1089 = load i32* %arrayidx5251, align 4, !tbaa !3
  %arrayidx5255 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv9024, i64 %indvars.iv9028
  store i32 %1089, i32* %arrayidx5255, align 4, !tbaa !3
  %arrayidx5259 = getelementptr inbounds [16 x [16 x i32]]* @resTrans_B, i64 0, i64 %indvars.iv9024, i64 %indvars.iv9028
  %1090 = load i32* %arrayidx5259, align 4, !tbaa !3
  store i32 %1090, i32* %arrayidx5251, align 4, !tbaa !3
  %indvars.iv.next9025 = add i64 %indvars.iv9024, 1
  %lftr.wideiv9026 = trunc i64 %indvars.iv.next9025 to i32
  %exitcond9027 = icmp eq i32 %lftr.wideiv9026, 16
  br i1 %exitcond9027, label %for.inc5268, label %for.body5246

for.inc5268:                                      ; preds = %for.body5246
  %indvars.iv.next9029 = add i64 %indvars.iv9028, 1
  %lftr.wideiv9030 = trunc i64 %indvars.iv.next9029 to i32
  %exitcond9031 = icmp eq i32 %lftr.wideiv9030, 16
  br i1 %exitcond9031, label %for.end5270, label %for.cond5243.preheader

for.end5270:                                      ; preds = %for.inc5268
  %call5271 = call i32 @dct_chroma(i32 1, i32 %call5238) #8
  %1091 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.cond5276.preheader

for.cond5276.preheader:                           ; preds = %for.inc5292, %for.end5270
  %indvars.iv9036 = phi i64 [ 0, %for.end5270 ], [ %indvars.iv.next9037, %for.inc5292 ]
  br label %for.body5279

for.body5279:                                     ; preds = %for.body5279, %for.cond5276.preheader
  %indvars.iv9032 = phi i64 [ 0, %for.cond5276.preheader ], [ %indvars.iv.next9033, %for.body5279 ]
  %arrayidx5284 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 46, i64 %indvars.iv9032, i64 %indvars.iv9036
  %1092 = load i32* %arrayidx5284, align 4, !tbaa !3
  %arrayidx5288 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv9032, i64 %indvars.iv9036
  store i32 %1092, i32* %arrayidx5288, align 4, !tbaa !3
  %indvars.iv.next9033 = add i64 %indvars.iv9032, 1
  %lftr.wideiv9034 = trunc i64 %indvars.iv.next9033 to i32
  %exitcond9035 = icmp eq i32 %lftr.wideiv9034, 16
  br i1 %exitcond9035, label %for.inc5292, label %for.body5279

for.inc5292:                                      ; preds = %for.body5279
  %indvars.iv.next9037 = add i64 %indvars.iv9036, 1
  %lftr.wideiv9038 = trunc i64 %indvars.iv.next9037 to i32
  %exitcond9039 = icmp eq i32 %lftr.wideiv9038, 16
  br i1 %exitcond9039, label %for.end5294, label %for.cond5276.preheader

for.end5294:                                      ; preds = %for.inc5292
  %shl5295 = shl i32 %call5271, 4
  %1093 = load i32* %cbp5202, align 4, !tbaa !3
  %add5297 = add nsw i32 %1093, %shl5295
  store i32 %add5297, i32* %cbp5202, align 4, !tbaa !3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 156
  %pix_x5396 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 33
  %pix_y5399 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 34
  %1094 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV5402 = getelementptr inbounds %struct.storable_picture* %1094, i64 0, i32 30
  %1095 = load i16**** %imgUV5402, align 8, !tbaa !0
  %1096 = load i16*** %1095, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 155
  %imgY5468 = getelementptr inbounds %struct.storable_picture* %1094, i64 0, i32 25
  %1097 = load i16*** %imgY5468, align 8, !tbaa !0
  %arrayidx5543 = getelementptr inbounds i16*** %1095, i64 1
  %1098 = load i16*** %arrayidx5543, align 8, !tbaa !0
  %.pre9068.pre = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %.pre9069.pre = load i32* %c_ipred_mode, align 4, !tbaa !3
  %.pre9070.pre = load i32* %pix_x5396, align 4, !tbaa !3
  %.pre9071.pre = load i32* %pix_y5399, align 4, !tbaa !3
  %.pre9072.pre = load i32* %max_imgpel_value, align 4, !tbaa !3
  %.pre9073.pre = load i32* %i16mode, align 4, !tbaa !3
  br label %for.cond5302.preheader

for.cond5302.preheader:                           ; preds = %for.inc5549, %for.end5294
  %indvars.iv9044 = phi i64 [ 0, %for.end5294 ], [ %indvars.iv.next9045, %for.inc5549 ]
  br label %for.body5305

for.body5305:                                     ; preds = %for.body5305, %for.cond5302.preheader
  %indvars.iv9040 = phi i64 [ 0, %for.cond5302.preheader ], [ %indvars.iv.next9041, %for.body5305 ]
  %arrayidx5309 = getelementptr inbounds [16 x [16 x i32]]* @rec_resG, i64 0, i64 %indvars.iv9040, i64 %indvars.iv9044
  %1099 = load i32* %arrayidx5309, align 4, !tbaa !3
  %arrayidx5313 = getelementptr inbounds [16 x [16 x i32]]* @rec_resB, i64 0, i64 %indvars.iv9040, i64 %indvars.iv9044
  %1100 = load i32* %arrayidx5313, align 4, !tbaa !3
  %shr5314 = ashr i32 %1100, 1
  %sub5315 = sub nsw i32 %1099, %shr5314
  %add5320 = add nsw i32 %sub5315, %1100
  %arrayidx5324 = getelementptr inbounds [16 x [16 x i32]]* @rec_resR, i64 0, i64 %indvars.iv9040, i64 %indvars.iv9044
  %1101 = load i32* %arrayidx5324, align 4, !tbaa !3
  %shr5325 = ashr i32 %1101, 1
  %sub5326 = sub nsw i32 %sub5315, %shr5325
  %add5331 = add nsw i32 %sub5326, %1101
  %idxprom5335 = sext i32 %.pre9069.pre to i64
  %arrayidx5340 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 44, i64 0, i64 %idxprom5335, i64 %indvars.iv9040, i64 %indvars.iv9044
  %1102 = load i16* %arrayidx5340, align 2, !tbaa !4
  %conv5341 = zext i16 %1102 to i32
  %add5342 = add nsw i32 %conv5341, %sub5326
  %cmp5343 = icmp slt i32 %add5342, 0
  %.add5342 = select i1 %cmp5343, i32 0, i32 %add5342
  %cmp5360 = icmp slt i32 %.pre9068.pre, %.add5342
  %..add5342 = select i1 %cmp5360, i32 %.pre9068.pre, i32 %.add5342
  %conv5395 = trunc i32 %..add5342 to i16
  %1103 = trunc i64 %indvars.iv9040 to i32
  %add5397 = add nsw i32 %.pre9070.pre, %1103
  %idxprom5398 = sext i32 %add5397 to i64
  %1104 = trunc i64 %indvars.iv9044 to i32
  %add5400 = add nsw i32 %.pre9071.pre, %1104
  %idxprom5401 = sext i32 %add5400 to i64
  %arrayidx5404 = getelementptr inbounds i16** %1096, i64 %idxprom5401
  %1105 = load i16** %arrayidx5404, align 8, !tbaa !0
  %arrayidx5405 = getelementptr inbounds i16* %1105, i64 %idxprom5398
  store i16 %conv5395, i16* %arrayidx5405, align 2, !tbaa !4
  %idxprom5408 = sext i32 %.pre9073.pre to i64
  %arrayidx5412 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 42, i64 %idxprom5408, i64 %indvars.iv9044, i64 %indvars.iv9040
  %1106 = load i16* %arrayidx5412, align 2, !tbaa !4
  %conv5413 = zext i16 %1106 to i32
  %add5414 = add nsw i32 %add5320, %conv5413
  %cmp5415 = icmp slt i32 %add5414, 0
  %.add5414 = select i1 %cmp5415, i32 0, i32 %add5414
  %cmp5430 = icmp slt i32 %.pre9072.pre, %.add5414
  %cond5460 = select i1 %cmp5430, i32 %.pre9072.pre, i32 %.add5414
  %conv5461 = trunc i32 %cond5460 to i16
  %arrayidx5469 = getelementptr inbounds i16** %1097, i64 %idxprom5401
  %1107 = load i16** %arrayidx5469, align 8, !tbaa !0
  %arrayidx5470 = getelementptr inbounds i16* %1107, i64 %idxprom5398
  store i16 %conv5461, i16* %arrayidx5470, align 2, !tbaa !4
  %arrayidx5480 = getelementptr inbounds %struct.ImageParameters* %1091, i64 0, i32 44, i64 1, i64 %idxprom5335, i64 %indvars.iv9040, i64 %indvars.iv9044
  %1108 = load i16* %arrayidx5480, align 2, !tbaa !4
  %conv5481 = zext i16 %1108 to i32
  %add5482 = add nsw i32 %add5331, %conv5481
  %cmp5483 = icmp slt i32 %add5482, 0
  %.add5482 = select i1 %cmp5483, i32 0, i32 %add5482
  %cmp5500 = icmp slt i32 %.pre9068.pre, %.add5482
  %..add5482 = select i1 %cmp5500, i32 %.pre9068.pre, i32 %.add5482
  %conv5535 = trunc i32 %..add5482 to i16
  %arrayidx5544 = getelementptr inbounds i16** %1098, i64 %idxprom5401
  %1109 = load i16** %arrayidx5544, align 8, !tbaa !0
  %arrayidx5545 = getelementptr inbounds i16* %1109, i64 %idxprom5398
  store i16 %conv5535, i16* %arrayidx5545, align 2, !tbaa !4
  %indvars.iv.next9041 = add i64 %indvars.iv9040, 1
  %lftr.wideiv9042 = trunc i64 %indvars.iv.next9041 to i32
  %exitcond9043 = icmp eq i32 %lftr.wideiv9042, 16
  br i1 %exitcond9043, label %for.inc5549, label %for.body5305

for.inc5549:                                      ; preds = %for.body5305
  %indvars.iv.next9045 = add i64 %indvars.iv9044, 1
  %lftr.wideiv9046 = trunc i64 %indvars.iv.next9045 to i32
  %exitcond9047 = icmp eq i32 %lftr.wideiv9046, 16
  br i1 %exitcond9047, label %if.end5558, label %for.cond5302.preheader

if.else5553:                                      ; preds = %if.then5049
  store i32 %tmp_8x8_flag.1, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  store i32 %965, i32* %NoMbPartLessThan8x8Flag, align 4, !tbaa !3
  br label %if.end5558

if.end5558:                                       ; preds = %for.inc5549, %for.inc4686, %for.inc4361, %for.inc4361.thread, %if.end5200, %if.end5046, %if.else5553
  %min_cost.8 = phi i32 [ %min_cost.7, %if.end5200 ], [ %min_cost.7, %if.else5553 ], [ %min_cost.7, %if.end5046 ], [ %min_cost.4, %for.inc4361.thread ], [ %min_cost.4, %for.inc4361 ], [ %min_cost.4, %for.inc4686 ], [ %min_cost.7, %for.inc5549 ]
  %cr_cbp.13 = phi i32 [ %cr_cbp.12, %if.end5200 ], [ %cr_cbp.12, %if.else5553 ], [ %cr_cbp.12, %if.end5046 ], [ %cr_cbp.08604, %for.inc4361.thread ], [ %cr_cbp.08604, %for.inc4361 ], [ %cr_cbp.08604, %for.inc4686 ], [ %call5271, %for.inc5549 ]
  %cmp5559 = icmp eq i32 %rerun.08605, 0
  br i1 %cmp5559, label %if.then5561, label %for.inc5577

if.then5561:                                      ; preds = %if.end5558
  %1110 = load i32* %mb_type4962, align 4, !tbaa !3
  switch i32 %1110, label %lor.rhs5569 [
    i32 10, label %for.inc5577
    i32 9, label %for.inc5577
    i32 13, label %for.inc5577
  ]

lor.rhs5569:                                      ; preds = %if.then5561
  br label %for.inc5577

for.inc5577:                                      ; preds = %lor.rhs5569, %if.then5561, %if.then5561, %if.then5561, %if.end5558
  %intra1.1 = phi i32 [ %intra1.08600, %if.end5558 ], [ 1, %if.then5561 ], [ 0, %lor.rhs5569 ], [ 1, %if.then5561 ], [ 1, %if.then5561 ]
  %inc5578 = add nsw i32 %rerun.08605, 1
  %cmp524 = icmp slt i32 %inc5578, %cond9171
  br i1 %cmp524, label %for.body526, label %for.end5579

for.end5579:                                      ; preds = %for.inc5577
  %1111 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt5580 = getelementptr inbounds %struct.InputParameters* %1111, i64 0, i32 85
  %1112 = load i32* %rdopt5580, align 4, !tbaa !3
  %tobool5581 = icmp eq i32 %1112, 0
  br i1 %tobool5581, label %if.else5601, label %if.then5582

if.then5582:                                      ; preds = %for.end5579
  %1113 = load i32* @cbp, align 4, !tbaa !3
  %cmp5583 = icmp ne i32 %1113, 0
  %1114 = load i32* @best_mode, align 4, !tbaa !3
  %cmp5586 = icmp eq i32 %1114, 10
  %or.cond6334 = or i1 %cmp5583, %cmp5586
  br i1 %or.cond6334, label %if.then5588, label %land.lhs.true5592

if.then5588:                                      ; preds = %if.then5582
  %prev_cbp = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 38
  store i32 1, i32* %prev_cbp, align 4, !tbaa !3
  br label %if.end5600

land.lhs.true5592:                                ; preds = %if.then5582
  %RCEnable = getelementptr inbounds %struct.InputParameters* %1111, i64 0, i32 127
  %1115 = load i32* %RCEnable, align 4, !tbaa !3
  %tobool5593 = icmp eq i32 %1115, 0
  br i1 %tobool5593, label %if.then5594, label %if.end5600

if.then5594:                                      ; preds = %land.lhs.true5592
  %delta_qp = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp, align 4, !tbaa !3
  %prev_qp = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 36
  %1116 = load i32* %prev_qp, align 4, !tbaa !3
  %qp5595 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 3
  store i32 %1116, i32* %qp5595, align 4, !tbaa !3
  %1117 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp5597 = getelementptr inbounds %struct.ImageParameters* %1117, i64 0, i32 10
  store i32 %1116, i32* %qp5597, align 4, !tbaa !3
  %prev_cbp5598 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 38
  store i32 0, i32* %prev_cbp5598, align 4, !tbaa !3
  br label %if.end5600

if.end5600:                                       ; preds = %land.lhs.true5592, %if.then5594, %if.then5588
  call void @set_stored_macroblock_parameters() #10
  br label %if.end5976

if.else5601:                                      ; preds = %for.end5579
  %1118 = load i32* @best_mode, align 4, !tbaa !3
  call void @SetModesAndRefframeForBlocks(i32 %1118) #10
  %1119 = load i32* @best_mode, align 4, !tbaa !3
  switch i32 %1119, label %if.end5759 [
    i32 8, label %if.then5604
    i32 13, label %for.cond5649.preheader
  ]

for.cond5649.preheader:                           ; preds = %if.else5601
  %1120 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y5657 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 32
  %block_x5660 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 31
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 26
  %1121 = load i32*** %ipredmode8x8, align 8, !tbaa !0
  %ipredmode5671 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 25
  %1122 = load i32*** %ipredmode5671, align 8, !tbaa !0
  br label %for.cond5653.preheader

if.then5604:                                      ; preds = %if.else5601
  %1123 = load i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %tobool5606 = icmp ne i32 %1123, 0
  %1124 = load i32* @cbp8_8x8ts, align 4, !tbaa !3
  %cmp5608 = icmp eq i32 %1124, 0
  %or.cond6335 = and i1 %tobool5606, %cmp5608
  br i1 %or.cond6335, label %land.lhs.true5610, label %for.body5623.lr.ph

land.lhs.true5610:                                ; preds = %if.then5604
  %1125 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x85611 = getelementptr inbounds %struct.InputParameters* %1125, i64 0, i32 123
  %1126 = load i32* %AllowTransform8x85611, align 4, !tbaa !3
  %cmp5612 = icmp eq i32 %1126, 2
  br i1 %cmp5612, label %for.body5623.lr.ph, label %if.then5614

if.then5614:                                      ; preds = %land.lhs.true5610
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.body5623.lr.ph

for.body5623.lr.ph:                               ; preds = %if.then5604, %if.then5614, %land.lhs.true5610
  call void @SetCoeffAndReconstruction8x8(%struct.macroblock* %arrayidx) #10
  %1127 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y5617 = getelementptr inbounds %struct.ImageParameters* %1127, i64 0, i32 32
  %1128 = load i32* %block_y5617, align 4, !tbaa !3
  %block_x56268322 = getelementptr inbounds %struct.ImageParameters* %1127, i64 0, i32 31
  %1129 = sext i32 %1128 to i64
  %.pre9080 = load i32* %block_x56268322, align 4, !tbaa !3
  br label %for.body5630.lr.ph

for.body5630.lr.ph:                               ; preds = %for.inc5642, %for.body5623.lr.ph
  %1130 = phi i32 [ %.pre9080, %for.body5623.lr.ph ], [ %1134, %for.inc5642 ]
  %indvars.iv8634 = phi i64 [ %1129, %for.body5623.lr.ph ], [ %indvars.iv.next8635, %for.inc5642 ]
  %k.98332 = phi i32 [ 0, %for.body5623.lr.ph ], [ %inc5640, %for.inc5642 ]
  %1131 = sext i32 %1130 to i64
  %1132 = sext i32 %k.98332 to i64
  br label %for.body5630

for.body5630:                                     ; preds = %for.body5630.lr.ph, %for.body5630
  %indvars.iv8632 = phi i64 [ %1132, %for.body5630.lr.ph ], [ %indvars.iv.next8633, %for.body5630 ]
  %indvars.iv8630 = phi i64 [ %1131, %for.body5630.lr.ph ], [ %indvars.iv.next8631, %for.body5630 ]
  %k.108325 = phi i32 [ %k.98332, %for.body5630.lr.ph ], [ %inc5640, %for.body5630 ]
  %arrayidx5633 = getelementptr inbounds i32** %16, i64 %indvars.iv8630
  %1133 = load i32** %arrayidx5633, align 8, !tbaa !0
  %arrayidx5634 = getelementptr inbounds i32* %1133, i64 %indvars.iv8634
  store i32 2, i32* %arrayidx5634, align 4, !tbaa !3
  %arrayidx5637 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 10, i64 %indvars.iv8632
  store i32 2, i32* %arrayidx5637, align 4, !tbaa !3
  %indvars.iv.next8631 = add i64 %indvars.iv8630, 1
  %indvars.iv.next8633 = add i64 %indvars.iv8632, 1
  %inc5640 = add nsw i32 %k.108325, 1
  %1134 = load i32* %block_x56268322, align 4, !tbaa !3
  %1135 = add nsw i32 %1134, 3
  %1136 = trunc i64 %indvars.iv8630 to i32
  %cmp5628 = icmp slt i32 %1136, %1135
  br i1 %cmp5628, label %for.body5630, label %for.inc5642

for.inc5642:                                      ; preds = %for.body5630
  %.pre9081 = load i32* %block_y5617, align 4, !tbaa !3
  %indvars.iv.next8635 = add i64 %indvars.iv8634, 1
  %1137 = add nsw i32 %.pre9081, 3
  %1138 = trunc i64 %indvars.iv8634 to i32
  %cmp5621 = icmp slt i32 %1138, %1137
  br i1 %cmp5621, label %for.body5630.lr.ph, label %if.end5850

for.cond5653.preheader:                           ; preds = %for.inc5683, %for.cond5649.preheader
  %indvars.iv8665 = phi i64 [ 0, %for.cond5649.preheader ], [ %indvars.iv.next8666, %for.inc5683 ]
  %i.448341 = phi i32 [ 0, %for.cond5649.preheader ], [ %inc5684, %for.inc5683 ]
  br label %for.body5656

for.cond5686.preheader:                           ; preds = %for.inc5683
  %pix_x5698 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 33
  %1139 = load i32* %pix_x5698, align 4, !tbaa !3
  %pix_y5701 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 34
  %1140 = load i32* %pix_y5701, align 4, !tbaa !3
  %1141 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY5704 = getelementptr inbounds %struct.storable_picture* %1141, i64 0, i32 25
  %1142 = load i16*** %imgY5704, align 8, !tbaa !0
  %1143 = sext i32 %1139 to i64
  %1144 = sext i32 %1140 to i64
  br label %for.cond5690.preheader

for.body5656:                                     ; preds = %for.body5656, %for.cond5653.preheader
  %indvars.iv8661 = phi i64 [ %indvars.iv8665, %for.cond5653.preheader ], [ %indvars.iv.next8662, %for.body5656 ]
  %j.438339 = phi i32 [ 0, %for.cond5653.preheader ], [ %inc5680, %for.body5656 ]
  %1145 = load i32* %block_y5657, align 4, !tbaa !3
  %add5658 = add nsw i32 %1145, %j.438339
  %idxprom5659 = sext i32 %add5658 to i64
  %1146 = load i32* %block_x5660, align 4, !tbaa !3
  %add5661 = add nsw i32 %1146, %i.448341
  %idxprom5662 = sext i32 %add5661 to i64
  %arrayidx5663 = getelementptr inbounds i32** %1121, i64 %idxprom5662
  %1147 = load i32** %arrayidx5663, align 8, !tbaa !0
  %arrayidx5664 = getelementptr inbounds i32* %1147, i64 %idxprom5659
  %1148 = load i32* %arrayidx5664, align 4, !tbaa !3
  %arrayidx5672 = getelementptr inbounds i32** %1122, i64 %idxprom5662
  %1149 = load i32** %arrayidx5672, align 8, !tbaa !0
  %arrayidx5673 = getelementptr inbounds i32* %1149, i64 %idxprom5659
  store i32 %1148, i32* %arrayidx5673, align 4, !tbaa !3
  %arrayidx5675 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 11, i64 %indvars.iv8661
  %1150 = load i32* %arrayidx5675, align 4, !tbaa !3
  %arrayidx5678 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 10, i64 %indvars.iv8661
  store i32 %1150, i32* %arrayidx5678, align 4, !tbaa !3
  %inc5680 = add nsw i32 %j.438339, 1
  %indvars.iv.next8662 = add i64 %indvars.iv8661, 1
  %exitcond8663 = icmp eq i32 %inc5680, 4
  br i1 %exitcond8663, label %for.inc5683, label %for.body5656

for.inc5683:                                      ; preds = %for.body5656
  %indvars.iv.next8666 = add i64 %indvars.iv8665, 4
  %inc5684 = add nsw i32 %i.448341, 1
  %exitcond8667 = icmp eq i32 %inc5684, 4
  br i1 %exitcond8667, label %for.cond5686.preheader, label %for.cond5653.preheader

for.cond5690.preheader:                           ; preds = %for.inc5710, %for.cond5686.preheader
  %indvars.iv8656 = phi i64 [ 0, %for.cond5686.preheader ], [ %indvars.iv.next8657, %for.inc5710 ]
  %1151 = add nsw i64 %1144, %indvars.iv8656
  %arrayidx5705 = getelementptr inbounds i16** %1142, i64 %1151
  %1152 = load i16** %arrayidx5705, align 8, !tbaa !0
  br label %for.body5693

for.body5693:                                     ; preds = %for.body5693, %for.cond5690.preheader
  %indvars.iv8650 = phi i64 [ 0, %for.cond5690.preheader ], [ %indvars.iv.next8651, %for.body5693 ]
  %arrayidx5697 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgY, i64 0, i64 %indvars.iv8656, i64 %indvars.iv8650
  %1153 = load i16* %arrayidx5697, align 2, !tbaa !4
  %1154 = add nsw i64 %1143, %indvars.iv8650
  %arrayidx5706 = getelementptr inbounds i16* %1152, i64 %1154
  store i16 %1153, i16* %arrayidx5706, align 2, !tbaa !4
  %indvars.iv.next8651 = add i64 %indvars.iv8650, 1
  %lftr.wideiv8653 = trunc i64 %indvars.iv.next8651 to i32
  %exitcond8654 = icmp eq i32 %lftr.wideiv8653, 16
  br i1 %exitcond8654, label %for.inc5710, label %for.body5693

for.inc5710:                                      ; preds = %for.body5693
  %indvars.iv.next8657 = add i64 %indvars.iv8656, 1
  %lftr.wideiv8659 = trunc i64 %indvars.iv.next8657 to i32
  %exitcond8660 = icmp eq i32 %lftr.wideiv8659, 16
  br i1 %exitcond8660, label %for.end5712, label %for.cond5690.preheader

for.end5712:                                      ; preds = %for.inc5710
  %residue_transform_flag5713 = getelementptr inbounds %struct.ImageParameters* %1120, i64 0, i32 164
  %1155 = load i32* %residue_transform_flag5713, align 4, !tbaa !3
  %tobool5714 = icmp eq i32 %1155, 0
  br i1 %tobool5714, label %if.end5759thread-pre-split, label %for.cond5716.preheader

for.cond5716.preheader:                           ; preds = %for.end5712
  %imgUV5734 = getelementptr inbounds %struct.storable_picture* %1141, i64 0, i32 30
  %1156 = load i16**** %imgUV5734, align 8, !tbaa !0
  %1157 = load i16*** %1156, align 8, !tbaa !0
  %arrayidx5749 = getelementptr inbounds i16*** %1156, i64 1
  %1158 = load i16*** %arrayidx5749, align 8, !tbaa !0
  br label %for.cond5720.preheader

for.cond5720.preheader:                           ; preds = %for.inc5755, %for.cond5716.preheader
  %indvars.iv8644 = phi i64 [ 0, %for.cond5716.preheader ], [ %indvars.iv.next8645, %for.inc5755 ]
  %1159 = add nsw i64 %1144, %indvars.iv8644
  %arrayidx5736 = getelementptr inbounds i16** %1157, i64 %1159
  %1160 = load i16** %arrayidx5736, align 8, !tbaa !0
  %arrayidx5750 = getelementptr inbounds i16** %1158, i64 %1159
  %1161 = load i16** %arrayidx5750, align 8, !tbaa !0
  br label %for.body5723

for.body5723:                                     ; preds = %for.body5723, %for.cond5720.preheader
  %indvars.iv8636 = phi i64 [ 0, %for.cond5720.preheader ], [ %indvars.iv.next8637, %for.body5723 ]
  %arrayidx5727 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgU, i64 0, i64 %indvars.iv8644, i64 %indvars.iv8636
  %1162 = load i16* %arrayidx5727, align 2, !tbaa !4
  %1163 = add nsw i64 %1143, %indvars.iv8636
  %arrayidx5737 = getelementptr inbounds i16* %1160, i64 %1163
  store i16 %1162, i16* %arrayidx5737, align 2, !tbaa !4
  %arrayidx5741 = getelementptr inbounds [16 x [16 x i16]]* @temp_imgV, i64 0, i64 %indvars.iv8644, i64 %indvars.iv8636
  %1164 = load i16* %arrayidx5741, align 2, !tbaa !4
  %arrayidx5751 = getelementptr inbounds i16* %1161, i64 %1163
  store i16 %1164, i16* %arrayidx5751, align 2, !tbaa !4
  %indvars.iv.next8637 = add i64 %indvars.iv8636, 1
  %lftr.wideiv8640 = trunc i64 %indvars.iv.next8637 to i32
  %exitcond8641 = icmp eq i32 %lftr.wideiv8640, 16
  br i1 %exitcond8641, label %for.inc5755, label %for.body5723

for.inc5755:                                      ; preds = %for.body5723
  %indvars.iv.next8645 = add i64 %indvars.iv8644, 1
  %lftr.wideiv8648 = trunc i64 %indvars.iv.next8645 to i32
  %exitcond8649 = icmp eq i32 %lftr.wideiv8648, 16
  br i1 %exitcond8649, label %if.end5759thread-pre-split, label %for.cond5720.preheader

if.end5759thread-pre-split:                       ; preds = %for.inc5755, %for.end5712
  %.pr8293 = load i32* @best_mode, align 4, !tbaa !3
  br label %if.end5759

if.end5759:                                       ; preds = %if.end5759thread-pre-split, %if.else5601
  %1165 = phi i32 [ %.pr8293, %if.end5759thread-pre-split ], [ %1119, %if.else5601 ]
  switch i32 %1165, label %for.body5772.lr.ph [
    i32 13, label %if.end5850
    i32 9, label %if.end5850
  ]

for.body5772.lr.ph:                               ; preds = %if.end5759
  %1166 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %block_y5766 = getelementptr inbounds %struct.ImageParameters* %1166, i64 0, i32 32
  %1167 = load i32* %block_y5766, align 4, !tbaa !3
  %block_x57758312 = getelementptr inbounds %struct.ImageParameters* %1166, i64 0, i32 31
  %1168 = sext i32 %1167 to i64
  %.pre9077 = load i32* %block_x57758312, align 4, !tbaa !3
  br label %for.body5779.lr.ph

for.body5779.lr.ph:                               ; preds = %for.inc5791, %for.body5772.lr.ph
  %1169 = phi i32 [ %.pre9077, %for.body5772.lr.ph ], [ %1173, %for.inc5791 ]
  %indvars.iv8628 = phi i64 [ %1168, %for.body5772.lr.ph ], [ %indvars.iv.next8629, %for.inc5791 ]
  %k.138320 = phi i32 [ 0, %for.body5772.lr.ph ], [ %inc5789, %for.inc5791 ]
  %1170 = sext i32 %1169 to i64
  %1171 = sext i32 %k.138320 to i64
  br label %for.body5779

for.body5779:                                     ; preds = %for.body5779.lr.ph, %for.body5779
  %indvars.iv8626 = phi i64 [ %1171, %for.body5779.lr.ph ], [ %indvars.iv.next8627, %for.body5779 ]
  %indvars.iv8624 = phi i64 [ %1170, %for.body5779.lr.ph ], [ %indvars.iv.next8625, %for.body5779 ]
  %k.148315 = phi i32 [ %k.138320, %for.body5779.lr.ph ], [ %inc5789, %for.body5779 ]
  %arrayidx5782 = getelementptr inbounds i32** %16, i64 %indvars.iv8624
  %1172 = load i32** %arrayidx5782, align 8, !tbaa !0
  %arrayidx5783 = getelementptr inbounds i32* %1172, i64 %indvars.iv8628
  store i32 2, i32* %arrayidx5783, align 4, !tbaa !3
  %arrayidx5786 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 10, i64 %indvars.iv8626
  store i32 2, i32* %arrayidx5786, align 4, !tbaa !3
  %indvars.iv.next8625 = add i64 %indvars.iv8624, 1
  %indvars.iv.next8627 = add i64 %indvars.iv8626, 1
  %inc5789 = add nsw i32 %k.148315, 1
  %1173 = load i32* %block_x57758312, align 4, !tbaa !3
  %1174 = add nsw i32 %1173, 3
  %1175 = trunc i64 %indvars.iv8624 to i32
  %cmp5777 = icmp slt i32 %1175, %1174
  br i1 %cmp5777, label %for.body5779, label %for.inc5791

for.inc5791:                                      ; preds = %for.body5779
  %.pre9078 = load i32* %block_y5766, align 4, !tbaa !3
  %indvars.iv.next8629 = add i64 %indvars.iv8628, 1
  %1176 = add nsw i32 %.pre9078, 3
  %1177 = trunc i64 %indvars.iv8628 to i32
  %cmp5770 = icmp slt i32 %1177, %1176
  br i1 %cmp5770, label %for.body5779.lr.ph, label %for.end5793

for.end5793:                                      ; preds = %for.inc5791
  %.pre9076 = load i32* @best_mode, align 4, !tbaa !3
  %cmp5794 = icmp eq i32 %.pre9076, 10
  br i1 %cmp5794, label %if.end5850, label %if.then5796

if.then5796:                                      ; preds = %for.end5793
  %.off8145 = add i32 %.pre9076, -1
  %1178 = icmp ult i32 %.off8145, 3
  br i1 %1178, label %if.then5802, label %if.end5804

if.then5802:                                      ; preds = %if.then5796
  store i32 %best_transform_flag.3, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end5804

if.end5804:                                       ; preds = %if.then5802, %if.then5796
  call void (...)* @LumaResidualCoding() #8
  %1179 = load i32* %cbp5202, align 4, !tbaa !3
  %1180 = load i32* @best_mode, align 4, !tbaa !3
  %1181 = or i32 %1180, %1179
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %if.then5811, label %for.cond5814.preheader

if.then5811:                                      ; preds = %if.end5804
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %for.cond5814.preheader

for.cond5814.preheader:                           ; preds = %if.then5811, %if.end5804
  %1183 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x5822 = getelementptr inbounds %struct.ImageParameters* %1183, i64 0, i32 33
  %pix_y5825 = getelementptr inbounds %struct.ImageParameters* %1183, i64 0, i32 34
  %1184 = load i16*** @imgY_org, align 8, !tbaa !0
  br label %for.cond5818.preheader

for.cond5818.preheader:                           ; preds = %for.inc5845, %for.cond5814.preheader
  %indvars.iv8620 = phi i64 [ 0, %for.cond5814.preheader ], [ %indvars.iv.next8621, %for.inc5845 ]
  br label %for.body5821

for.body5821:                                     ; preds = %for.body5821, %for.cond5818.preheader
  %indvars.iv = phi i64 [ 0, %for.cond5818.preheader ], [ %indvars.iv.next, %for.body5821 ]
  %1185 = load i32* %pix_x5822, align 4, !tbaa !3
  %1186 = trunc i64 %indvars.iv8620 to i32
  %add5823 = add nsw i32 %1185, %1186
  %idxprom5824 = sext i32 %add5823 to i64
  %1187 = load i32* %pix_y5825, align 4, !tbaa !3
  %1188 = trunc i64 %indvars.iv to i32
  %add5826 = add nsw i32 %1187, %1188
  %idxprom5827 = sext i32 %add5826 to i64
  %arrayidx5828 = getelementptr inbounds i16** %1184, i64 %idxprom5827
  %1189 = load i16** %arrayidx5828, align 8, !tbaa !0
  %arrayidx5829 = getelementptr inbounds i16* %1189, i64 %idxprom5824
  %1190 = load i16* %arrayidx5829, align 2, !tbaa !4
  %conv5830 = zext i16 %1190 to i32
  %arrayidx5835 = getelementptr inbounds %struct.ImageParameters* %1183, i64 0, i32 45, i64 %indvars.iv8620, i64 %indvars.iv
  %1191 = load i16* %arrayidx5835, align 2, !tbaa !4
  %conv5836 = zext i16 %1191 to i32
  %sub5837 = sub nsw i32 %conv5830, %conv5836
  %arrayidx5841 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv, i64 %indvars.iv8620
  store i32 %sub5837, i32* %arrayidx5841, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc5845, label %for.body5821

for.inc5845:                                      ; preds = %for.body5821
  %indvars.iv.next8621 = add i64 %indvars.iv8620, 1
  %lftr.wideiv8622 = trunc i64 %indvars.iv.next8621 to i32
  %exitcond8623 = icmp eq i32 %lftr.wideiv8622, 16
  br i1 %exitcond8623, label %if.end5850, label %for.cond5818.preheader

if.end5850:                                       ; preds = %for.inc5642, %for.inc5845, %if.end5759, %if.end5759, %for.end5793
  %1192 = load i32* %cbp5202, align 4, !tbaa !3
  %and5852 = and i32 %1192, 15
  %cmp5853 = icmp eq i32 %and5852, 0
  br i1 %cmp5853, label %land.lhs.true5855, label %if.end5865

land.lhs.true5855:                                ; preds = %if.end5850
  %1193 = load i32* %mb_type4962, align 4, !tbaa !3
  switch i32 %1193, label %if.then5863 [
    i32 9, label %if.end5865
    i32 13, label %if.end5865
  ]

if.then5863:                                      ; preds = %land.lhs.true5855
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  br label %if.end5865

if.end5865:                                       ; preds = %land.lhs.true5855, %land.lhs.true5855, %if.end5850, %if.then5863
  %1194 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format5866 = getelementptr inbounds %struct.ImageParameters* %1194, i64 0, i32 159
  %1195 = load i32* %yuv_format5866, align 4, !tbaa !3
  %cmp5867 = icmp eq i32 %1195, 0
  br i1 %cmp5867, label %if.end5870, label %if.then5869

if.then5869:                                      ; preds = %if.end5865
  call void @IntraChromaPrediction(i32* null, i32* null, i32* null) #8
  %.pre9079 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end5870

if.end5870:                                       ; preds = %if.end5865, %if.then5869
  %1196 = phi %struct.ImageParameters* [ %1194, %if.end5865 ], [ %.pre9079, %if.then5869 ]
  %i16offset = getelementptr inbounds %struct.ImageParameters* %1196, i64 0, i32 85
  store i32 0, i32* %i16offset, align 4, !tbaa !3
  store i32 0, i32* %dummy, align 4, !tbaa !3
  %residue_transform_flag5871 = getelementptr inbounds %struct.ImageParameters* %1196, i64 0, i32 164
  %1197 = load i32* %residue_transform_flag5871, align 4, !tbaa !3
  %tobool5872 = icmp eq i32 %1197, 0
  br i1 %tobool5872, label %land.lhs.true5882, label %land.lhs.true5873

land.lhs.true5873:                                ; preds = %if.end5870
  %1198 = load i32* @best_mode, align 4, !tbaa !3
  %.off = add i32 %1198, -9
  %1199 = icmp ult i32 %.off, 2
  %cmp5880 = icmp eq i32 %1198, 13
  %or.cond6340 = or i1 %1199, %cmp5880
  br i1 %or.cond6340, label %if.end5887, label %land.lhs.true5882

land.lhs.true5882:                                ; preds = %if.end5870, %land.lhs.true5873
  %yuv_format5883 = getelementptr inbounds %struct.ImageParameters* %1196, i64 0, i32 159
  %1200 = load i32* %yuv_format5883, align 4, !tbaa !3
  %cmp5884 = icmp eq i32 %1200, 0
  br i1 %cmp5884, label %if.end5887thread-pre-split, label %if.then5886

if.then5886:                                      ; preds = %land.lhs.true5882
  call void @ChromaResidualCoding(i32* %dummy) #8
  br label %if.end5887thread-pre-split

if.end5887thread-pre-split:                       ; preds = %land.lhs.true5882, %if.then5886
  %.pr8294 = load i32* @best_mode, align 4, !tbaa !3
  br label %if.end5887

if.end5887:                                       ; preds = %if.end5887thread-pre-split, %land.lhs.true5873
  %1201 = phi i32 [ %.pr8294, %if.end5887thread-pre-split ], [ %1198, %land.lhs.true5873 ]
  %cmp5888 = icmp eq i32 %1201, 10
  br i1 %cmp5888, label %if.then5890, label %if.end5894

if.then5890:                                      ; preds = %if.end5887
  %1202 = load i32* %cbp5202, align 4, !tbaa !3
  %1203 = load i32* %i16mode, align 4, !tbaa !3
  %and.i = and i32 %1202, 15
  %tobool.i = icmp ne i32 %and.i, 0
  %cond.i = select i1 %tobool.i, i32 13, i32 1
  %and1.i = lshr i32 %1202, 2
  %shr4.i = and i32 %and1.i, 12
  %add.i = add i32 %shr4.i, %1203
  %add2.i = add i32 %add.i, %cond.i
  %1204 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %i16offset5893 = getelementptr inbounds %struct.ImageParameters* %1204, i64 0, i32 85
  store i32 %add2.i, i32* %i16offset5893, align 4, !tbaa !3
  br label %if.end5894

if.end5894:                                       ; preds = %if.then5890, %if.end5887
  call void @SetMotionVectorsMB(%struct.macroblock* %arrayidx, i32 %conv16) #10
  %1205 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type5895 = getelementptr inbounds %struct.ImageParameters* %1205, i64 0, i32 6
  %1206 = load i32* %type5895, align 4, !tbaa !3
  %cmp5896 = icmp eq i32 %1206, 0
  br i1 %cmp5896, label %land.lhs.true5902, label %lor.lhs.false5898

lor.lhs.false5898:                                ; preds = %if.end5894
  %cmp5900 = icmp eq i32 %1206, 3
  %1207 = load i32* @best_mode, align 4, !tbaa !3
  %cmp5903 = icmp eq i32 %1207, 1
  %or.cond6341 = and i1 %cmp5900, %cmp5903
  br i1 %or.cond6341, label %land.lhs.true5905, label %if.end5971

land.lhs.true5902:                                ; preds = %if.end5894
  %.old = load i32* @best_mode, align 4, !tbaa !3
  %cmp5903.old = icmp eq i32 %.old, 1
  br i1 %cmp5903.old, label %land.lhs.true5905, label %if.end5971

land.lhs.true5905:                                ; preds = %lor.lhs.false5898, %land.lhs.true5902
  %1208 = load i32* %cbp5202, align 4, !tbaa !3
  %cmp5907 = icmp eq i32 %1208, 0
  br i1 %cmp5907, label %land.lhs.true5909, label %if.end5971

land.lhs.true5909:                                ; preds = %land.lhs.true5905
  %block_y5910 = getelementptr inbounds %struct.ImageParameters* %1205, i64 0, i32 32
  %1209 = load i32* %block_y5910, align 4, !tbaa !3
  %idxprom5911 = sext i32 %1209 to i64
  %block_x5912 = getelementptr inbounds %struct.ImageParameters* %1205, i64 0, i32 31
  %1210 = load i32* %block_x5912, align 4, !tbaa !3
  %idxprom5913 = sext i32 %1210 to i64
  %1211 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx5914 = getelementptr inbounds %struct.storable_picture* %1211, i64 0, i32 32
  %1212 = load i16**** %ref_idx5914, align 8, !tbaa !0
  %1213 = load i16*** %1212, align 8, !tbaa !0
  %arrayidx5916 = getelementptr inbounds i16** %1213, i64 %idxprom5913
  %1214 = load i16** %arrayidx5916, align 8, !tbaa !0
  %arrayidx5917 = getelementptr inbounds i16* %1214, i64 %idxprom5911
  %1215 = load i16* %arrayidx5917, align 2, !tbaa !4
  %cmp5919 = icmp eq i16 %1215, 0
  br i1 %cmp5919, label %land.lhs.true5921, label %if.end5971

land.lhs.true5921:                                ; preds = %land.lhs.true5909
  %mv5926 = getelementptr inbounds %struct.storable_picture* %1211, i64 0, i32 35
  %1216 = load i16***** %mv5926, align 8, !tbaa !0
  %1217 = load i16**** %1216, align 8, !tbaa !0
  %arrayidx5928 = getelementptr inbounds i16*** %1217, i64 %idxprom5913
  %1218 = load i16*** %arrayidx5928, align 8, !tbaa !0
  %arrayidx5929 = getelementptr inbounds i16** %1218, i64 %idxprom5911
  %1219 = load i16** %arrayidx5929, align 8, !tbaa !0
  %1220 = load i16* %1219, align 2, !tbaa !4
  %1221 = load i16****** %17, align 8, !tbaa !0
  %1222 = load i16***** %1221, align 8, !tbaa !0
  %1223 = load i16**** %1222, align 8, !tbaa !0
  %1224 = load i16*** %1223, align 8, !tbaa !0
  %1225 = load i16** %1224, align 8, !tbaa !0
  %1226 = load i16* %1225, align 2, !tbaa !4
  %cmp5939 = icmp eq i16 %1220, %1226
  br i1 %cmp5939, label %land.lhs.true5941, label %if.end5971

land.lhs.true5941:                                ; preds = %land.lhs.true5921
  %arrayidx5950 = getelementptr inbounds i16* %1219, i64 1
  %1227 = load i16* %arrayidx5950, align 2, !tbaa !4
  %arrayidx5957 = getelementptr inbounds i16* %1225, i64 1
  %1228 = load i16* %arrayidx5957, align 2, !tbaa !4
  %cmp5959 = icmp eq i16 %1227, %1228
  br i1 %cmp5959, label %if.then5961, label %if.end5971

if.then5961:                                      ; preds = %land.lhs.true5941
  %arrayidx5968 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 14, i64 0
  store i32 0, i32* %mb_type4962, align 4, !tbaa !3
  store i32 0, i32* %luma_transform_size_8x8_flag4691, align 4, !tbaa !3
  %1229 = bitcast i32* %arrayidx5968 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1229, i8 0, i64 16, i32 4, i1 false)
  br label %if.end5971

if.end5971:                                       ; preds = %if.then5961, %land.lhs.true5941, %land.lhs.true5921, %land.lhs.true5909, %land.lhs.true5905, %land.lhs.true5902, %lor.lhs.false5898
  %MbaffFrameFlag5972 = getelementptr inbounds %struct.ImageParameters* %1205, i64 0, i32 90
  %1230 = load i32* %MbaffFrameFlag5972, align 4, !tbaa !3
  %tobool5973 = icmp eq i32 %1230, 0
  br i1 %tobool5973, label %if.end5976, label %if.then5974

if.then5974:                                      ; preds = %if.end5971
  call void @set_mbaff_parameters() #10
  br label %if.end5976

if.end5976:                                       ; preds = %if.end5971, %if.then5974, %if.end5600
  %1231 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable5977 = getelementptr inbounds %struct.InputParameters* %1231, i64 0, i32 127
  %1232 = load i32* %RCEnable5977, align 4, !tbaa !3
  %tobool5978 = icmp eq i32 %1232, 0
  br i1 %tobool5978, label %if.end6025, label %if.then5979

if.then5979:                                      ; preds = %if.end5976
  %1233 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type5980 = getelementptr inbounds %struct.ImageParameters* %1233, i64 0, i32 6
  %1234 = load i32* %type5980, align 4, !tbaa !3
  %cmp5981 = icmp eq i32 %1234, 0
  br i1 %cmp5981, label %if.then5983, label %if.end6025

if.then5983:                                      ; preds = %if.then5979
  %call5984 = call double (...)* @calc_MAD() #8
  %1235 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr5985 = getelementptr inbounds %struct.ImageParameters* %1235, i64 0, i32 3
  %1236 = load i32* %current_mb_nr5985, align 4, !tbaa !3
  %idxprom5986 = sext i32 %1236 to i64
  %MADofMB = getelementptr inbounds %struct.ImageParameters* %1235, i64 0, i32 131
  %1237 = load double** %MADofMB, align 8, !tbaa !0
  %arrayidx5987 = getelementptr inbounds double* %1237, i64 %idxprom5986
  store double %call5984, double* %arrayidx5987, align 8, !tbaa !6
  %1238 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %basicunit = getelementptr inbounds %struct.InputParameters* %1238, i64 0, i32 130
  %1239 = load i32* %basicunit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %1235, i64 0, i32 136
  %1240 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp5988 = icmp slt i32 %1239, %1240
  br i1 %cmp5988, label %if.then5990, label %if.end6025

if.then5990:                                      ; preds = %if.then5983
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters* %1235, i64 0, i32 123
  %1241 = load double* %TotalMADBasicUnit, align 8, !tbaa !6
  %add5995 = fadd double %call5984, %1241
  store double %add5995, double* %TotalMADBasicUnit, align 8, !tbaa !6
  %1242 = load i32* @cbp, align 4, !tbaa !3
  %cmp5996 = icmp ne i32 %1242, 0
  %1243 = load i32* @best_mode, align 4, !tbaa !3
  %cmp5999 = icmp eq i32 %1243, 10
  %or.cond6343 = or i1 %cmp5996, %cmp5999
  br i1 %or.cond6343, label %if.then6001, label %if.else6003

if.then6001:                                      ; preds = %if.then5990
  %prev_cbp6002 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 38
  store i32 1, i32* %prev_cbp6002, align 4, !tbaa !3
  br label %if.end6010

if.else6003:                                      ; preds = %if.then5990
  %delta_qp6004 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 2
  store i32 0, i32* %delta_qp6004, align 4, !tbaa !3
  %prev_qp6005 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 36
  %1244 = load i32* %prev_qp6005, align 4, !tbaa !3
  %qp6006 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 3
  store i32 %1244, i32* %qp6006, align 4, !tbaa !3
  %qp6008 = getelementptr inbounds %struct.ImageParameters* %1235, i64 0, i32 10
  store i32 %1244, i32* %qp6008, align 4, !tbaa !3
  %prev_cbp6009 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 38
  store i32 0, i32* %prev_cbp6009, align 4, !tbaa !3
  br label %if.end6010

if.end6010:                                       ; preds = %if.else6003, %if.then6001
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %1238, i64 0, i32 92
  %1245 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool6011 = icmp eq i32 %1245, 0
  br i1 %tobool6011, label %if.end6025, label %if.then6012

if.then6012:                                      ; preds = %if.end6010
  %mb_field6013 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 22
  %1246 = load i32* %mb_field6013, align 4, !tbaa !3
  %tobool6014 = icmp eq i32 %1246, 0
  %delta_qp6019 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 2
  %1247 = load i32* %delta_qp6019, align 4, !tbaa !3
  br i1 %tobool6014, label %if.then6015, label %if.else6018

if.then6015:                                      ; preds = %if.then6012
  store i32 %1247, i32* @DELTA_QP, align 4, !tbaa !3
  %qp6017 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 3
  %1248 = load i32* %qp6017, align 4, !tbaa !3
  store i32 %1248, i32* @QP, align 4, !tbaa !3
  br label %if.end6025

if.else6018:                                      ; preds = %if.then6012
  store i32 %1247, i32* @DELTA_QP2, align 4, !tbaa !3
  %qp6020 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom, i32 3
  %1249 = load i32* %qp6020, align 4, !tbaa !3
  store i32 %1249, i32* @QP2, align 4, !tbaa !3
  br label %if.end6025

if.end6025:                                       ; preds = %if.end6010, %if.end5976, %if.then5979, %if.else6018, %if.then6015, %if.then5983
  %1250 = phi %struct.InputParameters* [ %1238, %if.end6010 ], [ %1231, %if.end5976 ], [ %1231, %if.then5979 ], [ %1238, %if.else6018 ], [ %1238, %if.then6015 ], [ %1238, %if.then5983 ]
  %rdopt6026 = getelementptr inbounds %struct.InputParameters* %1250, i64 0, i32 85
  %1251 = load i32* %rdopt6026, align 4, !tbaa !3
  %tobool6027 = icmp eq i32 %1251, 0
  br i1 %tobool6027, label %if.else6030, label %if.then6028

if.then6028:                                      ; preds = %if.end6025
  %1252 = load double* %min_rdcost, align 8, !tbaa !6
  %1253 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost6029 = getelementptr inbounds %struct.RD_DATA* %1253, i64 0, i32 0
  store double %1252, double* %min_rdcost6029, align 8, !tbaa !6
  br label %if.end6033

if.else6030:                                      ; preds = %if.end6025
  %conv6031 = sitofp i32 %min_cost.8 to double
  %1254 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %min_rdcost6032 = getelementptr inbounds %struct.RD_DATA* %1254, i64 0, i32 0
  store double %conv6031, double* %min_rdcost6032, align 8, !tbaa !6
  br label %if.end6033

if.end6033:                                       ; preds = %if.else6030, %if.then6028
  %1255 = phi %struct.RD_DATA* [ %1254, %if.else6030 ], [ %1253, %if.then6028 ]
  %1256 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag6034 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 90
  %1257 = load i32* %MbaffFrameFlag6034, align 4, !tbaa !3
  %tobool6035 = icmp eq i32 %1257, 0
  br i1 %tobool6035, label %if.end6073, label %if.then6036

if.then6036:                                      ; preds = %if.end6033
  %current_mb_nr6037 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 3
  %1258 = load i32* %current_mb_nr6037, align 4, !tbaa !3
  %rem60388144 = and i32 %1258, 1
  %tobool6039 = icmp eq i32 %rem60388144, 0
  br i1 %tobool6039, label %if.end6073, label %if.then6040

if.then6040:                                      ; preds = %if.then6036
  %1259 = load i32* %mb_type4962, align 4, !tbaa !3
  %tobool6042 = icmp eq i32 %1259, 0
  br i1 %tobool6042, label %cond.false6044, label %if.end6073

cond.false6044:                                   ; preds = %if.then6040
  %type6045 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 6
  %1260 = load i32* %type6045, align 4, !tbaa !3
  %cmp6046 = icmp eq i32 %1260, 1
  br i1 %cmp6046, label %cond.true6048, label %land.lhs.true6052

cond.true6048:                                    ; preds = %cond.false6044
  %1261 = load i32* %cbp5202, align 4, !tbaa !3
  %tobool6050 = icmp eq i32 %1261, 0
  br i1 %tobool6050, label %land.lhs.true6052, label %if.end6073

land.lhs.true6052:                                ; preds = %cond.true6048, %cond.false6044
  %mb_type6053 = getelementptr inbounds %struct.macroblock* %cond60, i64 0, i32 8
  %1262 = load i32* %mb_type6053, align 4, !tbaa !3
  %tobool6054 = icmp eq i32 %1262, 0
  br i1 %tobool6054, label %cond.false6056, label %if.end6073

cond.false6056:                                   ; preds = %land.lhs.true6052
  br i1 %cmp6046, label %cond.true6060, label %if.then6064

cond.true6060:                                    ; preds = %cond.false6056
  %cbp6061 = getelementptr inbounds %struct.macroblock* %cond60, i64 0, i32 12
  %1263 = load i32* %cbp6061, align 4, !tbaa !3
  %tobool6062 = icmp eq i32 %1263, 0
  br i1 %tobool6062, label %if.then6064, label %if.end6073

if.then6064:                                      ; preds = %cond.true6060, %cond.false6056
  %call6065 = call i32 @field_flag_inference() #10
  %cmp6066 = icmp eq i32 %call6065, %land.ext658272
  br i1 %cmp6066, label %if.end6073, label %if.then6068

if.then6068:                                      ; preds = %if.then6064
  %min_rdcost6069 = getelementptr inbounds %struct.RD_DATA* %1255, i64 0, i32 0
  store double 1.000000e+30, double* %min_rdcost6069, align 8, !tbaa !6
  br label %if.end6073

if.end6073:                                       ; preds = %cond.true6048, %cond.true6060, %land.lhs.true6052, %if.then6040, %if.then6036, %if.end6033, %if.then6064, %if.then6068
  %RestrictRef6074 = getelementptr inbounds %struct.InputParameters* %1250, i64 0, i32 98
  %1264 = load i32* %RestrictRef6074, align 4, !tbaa !3
  switch i32 %1264, label %if.end6322 [
    i32 1, label %if.then6077
    i32 2, label %if.then6240
  ]

if.then6077:                                      ; preds = %if.end6073
  switch i32 %1251, label %if.end6322 [
    i32 1, label %if.then6081
    i32 2, label %if.then6133
  ]

if.then6081:                                      ; preds = %if.then6077
  %conv6084 = zext i1 %tobool83 to i8
  %mb_x = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 29
  %1265 = load i32* %mb_x, align 4, !tbaa !3
  %mul6085 = shl nsw i32 %1265, 1
  %idxprom6086 = sext i32 %mul6085 to i64
  %mb_y6087 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 30
  %1266 = load i32* %mb_y6087, align 4, !tbaa !3
  %mul6088 = shl nsw i32 %1266, 1
  %idxprom6089 = sext i32 %mul6088 to i64
  %1267 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6090 = getelementptr inbounds i8** %1267, i64 %idxprom6089
  %1268 = load i8** %arrayidx6090, align 8, !tbaa !0
  %arrayidx6091 = getelementptr inbounds i8* %1268, i64 %idxprom6086
  store i8 %conv6084, i8* %arrayidx6091, align 1, !tbaa !1
  %1269 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6095 = getelementptr inbounds %struct.ImageParameters* %1269, i64 0, i32 29
  %1270 = load i32* %mb_x6095, align 4, !tbaa !3
  %mul6096 = shl nsw i32 %1270, 1
  %add60978140 = or i32 %mul6096, 1
  %idxprom6098 = sext i32 %add60978140 to i64
  %mb_y6099 = getelementptr inbounds %struct.ImageParameters* %1269, i64 0, i32 30
  %1271 = load i32* %mb_y6099, align 4, !tbaa !3
  %mul6100 = shl nsw i32 %1271, 1
  %idxprom6101 = sext i32 %mul6100 to i64
  %1272 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6102 = getelementptr inbounds i8** %1272, i64 %idxprom6101
  %1273 = load i8** %arrayidx6102, align 8, !tbaa !0
  %arrayidx6103 = getelementptr inbounds i8* %1273, i64 %idxprom6098
  store i8 %conv6084, i8* %arrayidx6103, align 1, !tbaa !1
  %1274 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6107 = getelementptr inbounds %struct.ImageParameters* %1274, i64 0, i32 29
  %1275 = load i32* %mb_x6107, align 4, !tbaa !3
  %mul6108 = shl nsw i32 %1275, 1
  %idxprom6109 = sext i32 %mul6108 to i64
  %mb_y6110 = getelementptr inbounds %struct.ImageParameters* %1274, i64 0, i32 30
  %1276 = load i32* %mb_y6110, align 4, !tbaa !3
  %mul6111 = shl nsw i32 %1276, 1
  %add61128141 = or i32 %mul6111, 1
  %idxprom6113 = sext i32 %add61128141 to i64
  %1277 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6114 = getelementptr inbounds i8** %1277, i64 %idxprom6113
  %1278 = load i8** %arrayidx6114, align 8, !tbaa !0
  %arrayidx6115 = getelementptr inbounds i8* %1278, i64 %idxprom6109
  store i8 %conv6084, i8* %arrayidx6115, align 1, !tbaa !1
  %1279 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6119 = getelementptr inbounds %struct.ImageParameters* %1279, i64 0, i32 29
  %1280 = load i32* %mb_x6119, align 4, !tbaa !3
  %mul6120 = shl nsw i32 %1280, 1
  %add61218142 = or i32 %mul6120, 1
  %idxprom6122 = sext i32 %add61218142 to i64
  %mb_y6123 = getelementptr inbounds %struct.ImageParameters* %1279, i64 0, i32 30
  %1281 = load i32* %mb_y6123, align 4, !tbaa !3
  %mul6124 = shl nsw i32 %1281, 1
  %add61258143 = or i32 %mul6124, 1
  %idxprom6126 = sext i32 %add61258143 to i64
  %1282 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6127 = getelementptr inbounds i8** %1282, i64 %idxprom6126
  %1283 = load i8** %arrayidx6127, align 8, !tbaa !0
  %arrayidx6128 = getelementptr inbounds i8* %1283, i64 %idxprom6122
  store i8 %conv6084, i8* %arrayidx6128, align 1, !tbaa !1
  br label %if.end6322

if.then6133:                                      ; preds = %if.then6077
  %cmp6134 = icmp eq i32 %intra1.1, 0
  br i1 %cmp6134, label %land.rhs6136, label %land.end6146

land.rhs6136:                                     ; preds = %if.then6133
  %1284 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8302 = add i32 %1284, -9
  %1285 = icmp ult i32 %.off8302, 2
  br label %land.end6146

land.end6146:                                     ; preds = %land.rhs6136, %if.then6133
  %1286 = phi i1 [ false, %if.then6133 ], [ %1285, %land.rhs6136 ]
  %conv6149 = zext i1 %1286 to i8
  %mb_x6150 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 29
  %1287 = load i32* %mb_x6150, align 4, !tbaa !3
  %mul6151 = shl nsw i32 %1287, 1
  %idxprom6152 = sext i32 %mul6151 to i64
  %mb_y6153 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 30
  %1288 = load i32* %mb_y6153, align 4, !tbaa !3
  %mul6154 = shl nsw i32 %1288, 1
  %idxprom6155 = sext i32 %mul6154 to i64
  %1289 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6156 = getelementptr inbounds i8** %1289, i64 %idxprom6155
  %1290 = load i8** %arrayidx6156, align 8, !tbaa !0
  %arrayidx6157 = getelementptr inbounds i8* %1290, i64 %idxprom6152
  store i8 %conv6149, i8* %arrayidx6157, align 1, !tbaa !1
  br i1 %cmp6134, label %land.rhs6160, label %land.end6170

land.rhs6160:                                     ; preds = %land.end6146
  %1291 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8301 = add i32 %1291, -9
  %1292 = icmp ult i32 %.off8301, 2
  br label %land.end6170

land.end6170:                                     ; preds = %land.rhs6160, %land.end6146
  %1293 = phi i1 [ false, %land.end6146 ], [ %1292, %land.rhs6160 ]
  %conv6173 = zext i1 %1293 to i8
  %1294 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6174 = getelementptr inbounds %struct.ImageParameters* %1294, i64 0, i32 29
  %1295 = load i32* %mb_x6174, align 4, !tbaa !3
  %mul6175 = shl nsw i32 %1295, 1
  %add61768136 = or i32 %mul6175, 1
  %idxprom6177 = sext i32 %add61768136 to i64
  %mb_y6178 = getelementptr inbounds %struct.ImageParameters* %1294, i64 0, i32 30
  %1296 = load i32* %mb_y6178, align 4, !tbaa !3
  %mul6179 = shl nsw i32 %1296, 1
  %idxprom6180 = sext i32 %mul6179 to i64
  %1297 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6181 = getelementptr inbounds i8** %1297, i64 %idxprom6180
  %1298 = load i8** %arrayidx6181, align 8, !tbaa !0
  %arrayidx6182 = getelementptr inbounds i8* %1298, i64 %idxprom6177
  store i8 %conv6173, i8* %arrayidx6182, align 1, !tbaa !1
  br i1 %cmp6134, label %land.rhs6185, label %land.end6195

land.rhs6185:                                     ; preds = %land.end6170
  %1299 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8300 = add i32 %1299, -9
  %1300 = icmp ult i32 %.off8300, 2
  br label %land.end6195

land.end6195:                                     ; preds = %land.rhs6185, %land.end6170
  %1301 = phi i1 [ false, %land.end6170 ], [ %1300, %land.rhs6185 ]
  %conv6198 = zext i1 %1301 to i8
  %1302 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6199 = getelementptr inbounds %struct.ImageParameters* %1302, i64 0, i32 29
  %1303 = load i32* %mb_x6199, align 4, !tbaa !3
  %mul6200 = shl nsw i32 %1303, 1
  %idxprom6201 = sext i32 %mul6200 to i64
  %mb_y6202 = getelementptr inbounds %struct.ImageParameters* %1302, i64 0, i32 30
  %1304 = load i32* %mb_y6202, align 4, !tbaa !3
  %mul6203 = shl nsw i32 %1304, 1
  %add62048137 = or i32 %mul6203, 1
  %idxprom6205 = sext i32 %add62048137 to i64
  %1305 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6206 = getelementptr inbounds i8** %1305, i64 %idxprom6205
  %1306 = load i8** %arrayidx6206, align 8, !tbaa !0
  %arrayidx6207 = getelementptr inbounds i8* %1306, i64 %idxprom6201
  store i8 %conv6198, i8* %arrayidx6207, align 1, !tbaa !1
  br i1 %cmp6134, label %land.rhs6210, label %land.end6220

land.rhs6210:                                     ; preds = %land.end6195
  %1307 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8299 = add i32 %1307, -9
  %1308 = icmp ult i32 %.off8299, 2
  br label %land.end6220

land.end6220:                                     ; preds = %land.rhs6210, %land.end6195
  %1309 = phi i1 [ false, %land.end6195 ], [ %1308, %land.rhs6210 ]
  %conv6223 = zext i1 %1309 to i8
  %1310 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6224 = getelementptr inbounds %struct.ImageParameters* %1310, i64 0, i32 29
  %1311 = load i32* %mb_x6224, align 4, !tbaa !3
  %mul6225 = shl nsw i32 %1311, 1
  %add62268138 = or i32 %mul6225, 1
  %idxprom6227 = sext i32 %add62268138 to i64
  %mb_y6228 = getelementptr inbounds %struct.ImageParameters* %1310, i64 0, i32 30
  %1312 = load i32* %mb_y6228, align 4, !tbaa !3
  %mul6229 = shl nsw i32 %1312, 1
  %add62308139 = or i32 %mul6229, 1
  %idxprom6231 = sext i32 %add62308139 to i64
  %1313 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6232 = getelementptr inbounds i8** %1313, i64 %idxprom6231
  %1314 = load i8** %arrayidx6232, align 8, !tbaa !0
  %arrayidx6233 = getelementptr inbounds i8* %1314, i64 %idxprom6227
  store i8 %conv6223, i8* %arrayidx6233, align 1, !tbaa !1
  br label %if.end6322

if.then6240:                                      ; preds = %if.end6073
  %1315 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8295 = add i32 %1315, -9
  %1316 = icmp ult i32 %.off8295, 2
  %conv6251 = zext i1 %1316 to i8
  %mb_x6252 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 29
  %1317 = load i32* %mb_x6252, align 4, !tbaa !3
  %mul6253 = shl nsw i32 %1317, 1
  %idxprom6254 = sext i32 %mul6253 to i64
  %mb_y6255 = getelementptr inbounds %struct.ImageParameters* %1256, i64 0, i32 30
  %1318 = load i32* %mb_y6255, align 4, !tbaa !3
  %mul6256 = shl nsw i32 %1318, 1
  %idxprom6257 = sext i32 %mul6256 to i64
  %1319 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6258 = getelementptr inbounds i8** %1319, i64 %idxprom6257
  %1320 = load i8** %arrayidx6258, align 8, !tbaa !0
  %arrayidx6259 = getelementptr inbounds i8* %1320, i64 %idxprom6254
  store i8 %conv6251, i8* %arrayidx6259, align 1, !tbaa !1
  %1321 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8296 = add i32 %1321, -9
  %1322 = icmp ult i32 %.off8296, 2
  %conv6270 = zext i1 %1322 to i8
  %1323 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6271 = getelementptr inbounds %struct.ImageParameters* %1323, i64 0, i32 29
  %1324 = load i32* %mb_x6271, align 4, !tbaa !3
  %mul6272 = shl nsw i32 %1324, 1
  %add62738132 = or i32 %mul6272, 1
  %idxprom6274 = sext i32 %add62738132 to i64
  %mb_y6275 = getelementptr inbounds %struct.ImageParameters* %1323, i64 0, i32 30
  %1325 = load i32* %mb_y6275, align 4, !tbaa !3
  %mul6276 = shl nsw i32 %1325, 1
  %idxprom6277 = sext i32 %mul6276 to i64
  %1326 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6278 = getelementptr inbounds i8** %1326, i64 %idxprom6277
  %1327 = load i8** %arrayidx6278, align 8, !tbaa !0
  %arrayidx6279 = getelementptr inbounds i8* %1327, i64 %idxprom6274
  store i8 %conv6270, i8* %arrayidx6279, align 1, !tbaa !1
  %1328 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8297 = add i32 %1328, -9
  %1329 = icmp ult i32 %.off8297, 2
  %conv6290 = zext i1 %1329 to i8
  %1330 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6291 = getelementptr inbounds %struct.ImageParameters* %1330, i64 0, i32 29
  %1331 = load i32* %mb_x6291, align 4, !tbaa !3
  %mul6292 = shl nsw i32 %1331, 1
  %idxprom6293 = sext i32 %mul6292 to i64
  %mb_y6294 = getelementptr inbounds %struct.ImageParameters* %1330, i64 0, i32 30
  %1332 = load i32* %mb_y6294, align 4, !tbaa !3
  %mul6295 = shl nsw i32 %1332, 1
  %add62968133 = or i32 %mul6295, 1
  %idxprom6297 = sext i32 %add62968133 to i64
  %1333 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6298 = getelementptr inbounds i8** %1333, i64 %idxprom6297
  %1334 = load i8** %arrayidx6298, align 8, !tbaa !0
  %arrayidx6299 = getelementptr inbounds i8* %1334, i64 %idxprom6293
  store i8 %conv6290, i8* %arrayidx6299, align 1, !tbaa !1
  %1335 = load i32* %mb_type4962, align 4, !tbaa !3
  %.off8298 = add i32 %1335, -9
  %1336 = icmp ult i32 %.off8298, 2
  %conv6310 = zext i1 %1336 to i8
  %1337 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_x6311 = getelementptr inbounds %struct.ImageParameters* %1337, i64 0, i32 29
  %1338 = load i32* %mb_x6311, align 4, !tbaa !3
  %mul6312 = shl nsw i32 %1338, 1
  %add63138134 = or i32 %mul6312, 1
  %idxprom6314 = sext i32 %add63138134 to i64
  %mb_y6315 = getelementptr inbounds %struct.ImageParameters* %1337, i64 0, i32 30
  %1339 = load i32* %mb_y6315, align 4, !tbaa !3
  %mul6316 = shl nsw i32 %1339, 1
  %add63178135 = or i32 %mul6316, 1
  %idxprom6318 = sext i32 %add63178135 to i64
  %1340 = load i8*** @refresh_map, align 8, !tbaa !0
  %arrayidx6319 = getelementptr inbounds i8** %1340, i64 %idxprom6318
  %1341 = load i8** %arrayidx6319, align 8, !tbaa !0
  %arrayidx6320 = getelementptr inbounds i8* %1341, i64 %idxprom6314
  store i8 %conv6310, i8* %arrayidx6320, align 1, !tbaa !1
  br label %if.end6322

if.end6322:                                       ; preds = %if.end6073, %if.then6077, %if.then6240, %if.then6081, %land.end6220
  %1342 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable6323 = getelementptr inbounds %struct.InputParameters* %1342, i64 0, i32 134
  %1343 = load i32* %FMEnable6323, align 4, !tbaa !3
  %tobool6324 = icmp eq i32 %1343, 0
  br i1 %tobool6324, label %if.end6329, label %if.then6325

if.then6325:                                      ; preds = %if.end6322
  %1344 = load i32* @best_mode, align 4, !tbaa !3
  %1345 = load i32* %arrayidx581, align 4, !tbaa !3
  call void @skip_intrabk_SAD(i32 %1344, i32 %1345) #8
  br label %if.end6329

if.end6329:                                       ; preds = %if.end6322, %if.then6325
  call void @llvm.lifetime.end(i64 60, i8* %0) #3
  ret void
}

; Function Attrs: optsize
declare void @decide_intrabk_SAD(...) #1

; Function Attrs: optsize
declare i32 @RandomIntra(i32) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #7

; Function Attrs: optsize
declare void @Get_Direct_Motion_Vectors(...) #1

; Function Attrs: optsize
declare void @PartitionMotionSearch(i32, i32, double) #1

; Function Attrs: optsize
declare i32 @BIDPartitionCost(i32, i32, i16 signext, i16 signext, i32) #1

; Function Attrs: optsize
declare i32 @BPredPartitionCost(i32, i32, i16 signext, i16 signext, i32, i32) #1

; Function Attrs: optsize
declare i32 @TransformDecision(i32, i32*) #1

; Function Attrs: optsize
declare i32 @Get_Direct_Cost8x8(i32, i32*) #1

; Function Attrs: optsize
declare void @FindSkipModeMotionVector(...) #1

; Function Attrs: optsize
declare void @IntraChromaPrediction(i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @Get_Direct_CostMB(double) #1

; Function Attrs: optsize
declare double @calc_MAD(...) #1

; Function Attrs: optsize
declare void @skip_intrabk_SAD(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @set_mbaff_parameters() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %1 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %2 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %3 = load i32* @best_mode, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 1
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %5 = load i32*** %ipredmode, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %6 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %for.end270, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %7 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 25
  %8 = load i16*** %imgY, align 8, !tbaa !0
  %9 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc17, %for.cond.preheader
  %indvars.iv450 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next451, %for.inc17 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond3.preheader
  %indvars.iv446 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next447, %for.body6 ]
  %10 = load i32* %pix_x, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv446 to i32
  %add = add nsw i32 %10, %11
  %idxprom7 = sext i32 %add to i64
  %12 = load i32* %pix_y, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv450 to i32
  %add8 = add nsw i32 %12, %13
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i16** %8, i64 %idxprom9
  %14 = load i16** %arrayidx10, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i16* %14, i64 %idxprom7
  %15 = load i16* %arrayidx11, align 2, !tbaa !4
  %conv12 = zext i16 %15 to i32
  %arrayidx16 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 1, i64 %indvars.iv450, i64 %indvars.iv446
  store i32 %conv12, i32* %arrayidx16, align 4, !tbaa !3
  %indvars.iv.next447 = add i64 %indvars.iv446, 1
  %lftr.wideiv448 = trunc i64 %indvars.iv.next447 to i32
  %exitcond449 = icmp eq i32 %lftr.wideiv448, 16
  br i1 %exitcond449, label %for.inc17, label %for.body6

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next451 = add i64 %indvars.iv450, 1
  %lftr.wideiv452 = trunc i64 %indvars.iv.next451 to i32
  %exitcond453 = icmp eq i32 %lftr.wideiv452, 16
  br i1 %exitcond453, label %for.end19, label %for.cond3.preheader

for.end19:                                        ; preds = %for.inc17
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %16 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.end64, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end19
  %mb_cr_size_y383 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %17 = load i32* %mb_cr_size_y383, align 4, !tbaa !3
  %cmp24384 = icmp sgt i32 %17, 0
  br i1 %cmp24384, label %for.cond27.preheader.lr.ph, label %if.end64

for.cond27.preheader.lr.ph:                       ; preds = %for.cond23.preheader
  %mb_cr_size_x380 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %imgUV = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 30
  %pix_c_x43 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 35
  %pix_c_y46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 36
  %.pre455 = load i32* %mb_cr_size_x380, align 4, !tbaa !3
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %for.inc61
  %18 = phi i32 [ %17, %for.cond27.preheader.lr.ph ], [ %35, %for.inc61 ]
  %19 = phi i32 [ %.pre455, %for.cond27.preheader.lr.ph ], [ %36, %for.inc61 ]
  %indvars.iv444 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %indvars.iv.next445, %for.inc61 ]
  %cmp28381 = icmp sgt i32 %19, 0
  br i1 %cmp28381, label %for.body30.lr.ph, label %for.inc61

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %20 = load i16**** %imgUV, align 8, !tbaa !0
  %21 = load i16*** %20, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i16*** %20, i64 1
  %22 = load i16*** %arrayidx50, align 8, !tbaa !0
  br label %for.body30

for.body30:                                       ; preds = %for.body30.lr.ph, %for.body30
  %indvars.iv442 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next443, %for.body30 ]
  %23 = load i32* %pix_c_x43, align 4, !tbaa !3
  %24 = trunc i64 %indvars.iv442 to i32
  %add31 = add nsw i32 %23, %24
  %idxprom32 = sext i32 %add31 to i64
  %25 = load i32* %pix_c_y46, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv444 to i32
  %add33 = add nsw i32 %25, %26
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx36 = getelementptr inbounds i16** %21, i64 %idxprom34
  %27 = load i16** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i16* %27, i64 %idxprom32
  %28 = load i16* %arrayidx37, align 2, !tbaa !4
  %conv38 = zext i16 %28 to i32
  %arrayidx42 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 2, i64 %indvars.iv444, i64 %indvars.iv442
  store i32 %conv38, i32* %arrayidx42, align 4, !tbaa !3
  %29 = load i32* %pix_c_x43, align 4, !tbaa !3
  %add44 = add nsw i32 %29, %24
  %idxprom45 = sext i32 %add44 to i64
  %30 = load i32* %pix_c_y46, align 4, !tbaa !3
  %add47 = add nsw i32 %30, %26
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx51 = getelementptr inbounds i16** %22, i64 %idxprom48
  %31 = load i16** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i16* %31, i64 %idxprom45
  %32 = load i16* %arrayidx52, align 2, !tbaa !4
  %conv53 = zext i16 %32 to i32
  %arrayidx57 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 3, i64 %indvars.iv444, i64 %indvars.iv442
  store i32 %conv53, i32* %arrayidx57, align 4, !tbaa !3
  %indvars.iv.next443 = add i64 %indvars.iv442, 1
  %33 = load i32* %mb_cr_size_x380, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv.next443 to i32
  %cmp28 = icmp slt i32 %34, %33
  br i1 %cmp28, label %for.body30, label %for.cond27.for.inc61_crit_edge

for.cond27.for.inc61_crit_edge:                   ; preds = %for.body30
  %.pre456 = load i32* %mb_cr_size_y383, align 4, !tbaa !3
  br label %for.inc61

for.inc61:                                        ; preds = %for.cond27.for.inc61_crit_edge, %for.cond27.preheader
  %35 = phi i32 [ %.pre456, %for.cond27.for.inc61_crit_edge ], [ %18, %for.cond27.preheader ]
  %36 = phi i32 [ %33, %for.cond27.for.inc61_crit_edge ], [ %19, %for.cond27.preheader ]
  %indvars.iv.next445 = add i64 %indvars.iv444, 1
  %37 = trunc i64 %indvars.iv.next445 to i32
  %cmp24 = icmp slt i32 %37, %35
  br i1 %cmp24, label %for.cond27.preheader, label %if.end64

if.end64:                                         ; preds = %for.cond23.preheader, %for.inc61, %for.end19
  %mode65 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 14
  store i32 %3, i32* %mode65, align 4, !tbaa !3
  %i16offset = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85
  %38 = load i32* %i16offset, align 4, !tbaa !3
  %i16offset66 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 20
  store i32 %38, i32* %i16offset66, align 4, !tbaa !3
  %cbp = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  %39 = load i32* %cbp, align 4, !tbaa !3
  %cbp67 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 12
  store i32 %39, i32* %cbp67, align 4, !tbaa !3
  %cbp_blk = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  %40 = load i64* %cbp_blk, align 8, !tbaa !5
  %cbp_blk68 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 13
  store i64 %40, i64* %cbp_blk68, align 8, !tbaa !5
  %mb_type = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  %41 = load i32* %mb_type, align 4, !tbaa !3
  %mb_type69 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 6
  store i32 %41, i32* %mb_type69, align 4, !tbaa !3
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  %42 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %luma_transform_size_8x8_flag70 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 22
  store i32 %42, i32* %luma_transform_size_8x8_flag70, align 4, !tbaa !3
  %cmp72 = icmp ne i32 %41, 0
  %cmp74 = icmp eq i32 %3, 0
  %or.cond = or i1 %cmp72, %cmp74
  br i1 %or.cond, label %for.cond79.preheader, label %if.then76

if.then76:                                        ; preds = %if.end64
  store i32 0, i32* %mode65, align 4, !tbaa !3
  br label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %if.end64, %if.then76
  %num_blk8x8_uv376 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %43 = load i32* %num_blk8x8_uv376, align 4, !tbaa !3
  %add80377 = add nsw i32 %43, 4
  %cmp81378 = icmp sgt i32 %add80377, 0
  br i1 %cmp81378, label %for.cond84.preheader.lr.ph, label %for.cond125.preheader

for.cond84.preheader.lr.ph:                       ; preds = %for.cond79.preheader
  %cofAC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %44 = load i32***** %cofAC, align 8, !tbaa !0
  %cofAC108 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 4
  %45 = load i32***** %cofAC108, align 8, !tbaa !0
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond84.preheader.lr.ph, %for.inc122
  %indvars.iv440 = phi i64 [ 0, %for.cond84.preheader.lr.ph ], [ %indvars.iv.next441, %for.inc122 ]
  %arrayidx100 = getelementptr inbounds i32**** %44, i64 %indvars.iv440
  %46 = load i32**** %arrayidx100, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32**** %45, i64 %indvars.iv440
  %47 = load i32**** %arrayidx109, align 8, !tbaa !0
  br label %for.cond88.preheader

for.cond125.preheader:                            ; preds = %for.inc122, %for.cond79.preheader
  %cofDC = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %48 = load i32**** %cofDC, align 8, !tbaa !0
  %cofDC146 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 5
  %49 = load i32**** %cofDC146, align 8, !tbaa !0
  br label %for.cond129.preheader

for.cond88.preheader:                             ; preds = %for.inc119, %for.cond84.preheader
  %indvars.iv436 = phi i64 [ 0, %for.cond84.preheader ], [ %indvars.iv.next437, %for.inc119 ]
  %arrayidx101 = getelementptr inbounds i32*** %46, i64 %indvars.iv436
  %50 = load i32*** %arrayidx101, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32*** %47, i64 %indvars.iv436
  %51 = load i32*** %arrayidx110, align 8, !tbaa !0
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.inc116, %for.cond88.preheader
  %indvars.iv432 = phi i64 [ 0, %for.cond88.preheader ], [ %indvars.iv.next433, %for.inc116 ]
  %arrayidx102 = getelementptr inbounds i32** %50, i64 %indvars.iv432
  %52 = load i32** %arrayidx102, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32** %51, i64 %indvars.iv432
  %53 = load i32** %arrayidx111, align 8, !tbaa !0
  br label %for.body95

for.body95:                                       ; preds = %for.body95, %for.cond92.preheader
  %indvars.iv428 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next429, %for.body95 ]
  %arrayidx103 = getelementptr inbounds i32* %52, i64 %indvars.iv428
  %54 = load i32* %arrayidx103, align 4, !tbaa !3
  %arrayidx112 = getelementptr inbounds i32* %53, i64 %indvars.iv428
  store i32 %54, i32* %arrayidx112, align 4, !tbaa !3
  %indvars.iv.next429 = add i64 %indvars.iv428, 1
  %lftr.wideiv430 = trunc i64 %indvars.iv.next429 to i32
  %exitcond431 = icmp eq i32 %lftr.wideiv430, 65
  br i1 %exitcond431, label %for.inc116, label %for.body95

for.inc116:                                       ; preds = %for.body95
  %indvars.iv.next433 = add i64 %indvars.iv432, 1
  %lftr.wideiv434 = trunc i64 %indvars.iv.next433 to i32
  %exitcond435 = icmp eq i32 %lftr.wideiv434, 2
  br i1 %exitcond435, label %for.inc119, label %for.cond92.preheader

for.inc119:                                       ; preds = %for.inc116
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  %lftr.wideiv438 = trunc i64 %indvars.iv.next437 to i32
  %exitcond439 = icmp eq i32 %lftr.wideiv438, 4
  br i1 %exitcond439, label %for.inc122, label %for.cond88.preheader

for.inc122:                                       ; preds = %for.inc119
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %55 = load i32* %num_blk8x8_uv376, align 4, !tbaa !3
  %56 = add nsw i32 %55, 3
  %57 = trunc i64 %indvars.iv440 to i32
  %cmp81 = icmp slt i32 %57, %56
  br i1 %cmp81, label %for.cond84.preheader, label %for.cond125.preheader

for.cond129.preheader:                            ; preds = %for.inc156, %for.cond125.preheader
  %indvars.iv424 = phi i64 [ 0, %for.cond125.preheader ], [ %indvars.iv.next425, %for.inc156 ]
  %arrayidx140 = getelementptr inbounds i32*** %48, i64 %indvars.iv424
  %58 = load i32*** %arrayidx140, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i32*** %49, i64 %indvars.iv424
  %59 = load i32*** %arrayidx147, align 8, !tbaa !0
  br label %for.cond133.preheader

for.cond133.preheader:                            ; preds = %for.inc153, %for.cond129.preheader
  %indvars.iv420 = phi i64 [ 0, %for.cond129.preheader ], [ %indvars.iv.next421, %for.inc153 ]
  %arrayidx141 = getelementptr inbounds i32** %58, i64 %indvars.iv420
  %60 = load i32** %arrayidx141, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32** %59, i64 %indvars.iv420
  %61 = load i32** %arrayidx148, align 8, !tbaa !0
  br label %for.body136

for.body136:                                      ; preds = %for.body136, %for.cond133.preheader
  %indvars.iv416 = phi i64 [ 0, %for.cond133.preheader ], [ %indvars.iv.next417, %for.body136 ]
  %arrayidx142 = getelementptr inbounds i32* %60, i64 %indvars.iv416
  %62 = load i32* %arrayidx142, align 4, !tbaa !3
  %arrayidx149 = getelementptr inbounds i32* %61, i64 %indvars.iv416
  store i32 %62, i32* %arrayidx149, align 4, !tbaa !3
  %indvars.iv.next417 = add i64 %indvars.iv416, 1
  %lftr.wideiv418 = trunc i64 %indvars.iv.next417 to i32
  %exitcond419 = icmp eq i32 %lftr.wideiv418, 18
  br i1 %exitcond419, label %for.inc153, label %for.body136

for.inc153:                                       ; preds = %for.body136
  %indvars.iv.next421 = add i64 %indvars.iv420, 1
  %lftr.wideiv422 = trunc i64 %indvars.iv.next421 to i32
  %exitcond423 = icmp eq i32 %lftr.wideiv422, 2
  br i1 %exitcond423, label %for.inc156, label %for.cond133.preheader

for.inc156:                                       ; preds = %for.inc153
  %indvars.iv.next425 = add i64 %indvars.iv424, 1
  %lftr.wideiv426 = trunc i64 %indvars.iv.next425 to i32
  %exitcond427 = icmp eq i32 %lftr.wideiv426, 3
  br i1 %exitcond427, label %for.body162, label %for.cond129.preheader

for.cond176.preheader:                            ; preds = %for.body162
  %block_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %63 = load i32* %block_y, align 4, !tbaa !3
  %block_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %64 = load i32* %block_x, align 4, !tbaa !3
  %ref_idx = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 32
  %65 = load i16**** %ref_idx, align 8, !tbaa !0
  %66 = load i16*** %65, align 8, !tbaa !0
  %67 = sext i32 %64 to i64
  %68 = sext i32 %63 to i64
  br label %for.cond180.preheader

for.body162:                                      ; preds = %for.inc156, %for.body162
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %for.body162 ], [ 0, %for.inc156 ]
  %arrayidx164 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv410
  %69 = load i32* %arrayidx164, align 4, !tbaa !3
  %arrayidx167 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 8, i64 %indvars.iv410
  store i32 %69, i32* %arrayidx167, align 4, !tbaa !3
  %arrayidx169 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv410
  %70 = load i32* %arrayidx169, align 4, !tbaa !3
  %arrayidx172 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 9, i64 %indvars.iv410
  store i32 %70, i32* %arrayidx172, align 4, !tbaa !3
  %indvars.iv.next411 = add i64 %indvars.iv410, 1
  %lftr.wideiv412 = trunc i64 %indvars.iv.next411 to i32
  %exitcond413 = icmp eq i32 %lftr.wideiv412, 4
  br i1 %exitcond413, label %for.cond176.preheader, label %for.body162

for.cond180.preheader:                            ; preds = %for.inc199, %for.cond176.preheader
  %indvars.iv405 = phi i64 [ 0, %for.cond176.preheader ], [ %indvars.iv.next406, %for.inc199 ]
  %71 = add nsw i64 %68, %indvars.iv405
  br label %for.body183

for.body183:                                      ; preds = %for.body183, %for.cond180.preheader
  %indvars.iv400 = phi i64 [ 0, %for.cond180.preheader ], [ %indvars.iv.next401, %for.body183 ]
  %72 = add nsw i64 %67, %indvars.iv400
  %arrayidx189 = getelementptr inbounds i16** %66, i64 %72
  %73 = load i16** %arrayidx189, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i16* %73, i64 %71
  %74 = load i16* %arrayidx190, align 2, !tbaa !4
  %arrayidx195 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 19, i64 0, i64 %indvars.iv405, i64 %indvars.iv400
  store i16 %74, i16* %arrayidx195, align 2, !tbaa !4
  %indvars.iv.next401 = add i64 %indvars.iv400, 1
  %lftr.wideiv403 = trunc i64 %indvars.iv.next401 to i32
  %exitcond404 = icmp eq i32 %lftr.wideiv403, 4
  br i1 %exitcond404, label %for.inc199, label %for.body183

for.inc199:                                       ; preds = %for.body183
  %indvars.iv.next406 = add i64 %indvars.iv405, 1
  %lftr.wideiv408 = trunc i64 %indvars.iv.next406 to i32
  %exitcond409 = icmp eq i32 %lftr.wideiv408, 4
  br i1 %exitcond409, label %for.end201, label %for.cond180.preheader

for.end201:                                       ; preds = %for.inc199
  br i1 %cmp, label %for.cond204.preheader, label %for.body242.lr.ph

for.cond204.preheader:                            ; preds = %for.end201
  %arrayidx219 = getelementptr inbounds i16*** %65, i64 1
  %75 = load i16*** %arrayidx219, align 8, !tbaa !0
  br label %for.cond208.preheader

for.cond208.preheader:                            ; preds = %for.inc231, %for.cond204.preheader
  %indvars.iv395 = phi i64 [ 0, %for.cond204.preheader ], [ %indvars.iv.next396, %for.inc231 ]
  %76 = add nsw i64 %68, %indvars.iv395
  br label %for.body211

for.body211:                                      ; preds = %for.body211, %for.cond208.preheader
  %indvars.iv392 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next393, %for.body211 ]
  %77 = add nsw i64 %67, %indvars.iv392
  %arrayidx220 = getelementptr inbounds i16** %75, i64 %77
  %78 = load i16** %arrayidx220, align 8, !tbaa !0
  %arrayidx221 = getelementptr inbounds i16* %78, i64 %76
  %79 = load i16* %arrayidx221, align 2, !tbaa !4
  %arrayidx227 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 19, i64 1, i64 %indvars.iv395, i64 %indvars.iv392
  store i16 %79, i16* %arrayidx227, align 2, !tbaa !4
  %indvars.iv.next393 = add i64 %indvars.iv392, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next393 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc231, label %for.body211

for.inc231:                                       ; preds = %for.body211
  %indvars.iv.next396 = add i64 %indvars.iv395, 1
  %lftr.wideiv398 = trunc i64 %indvars.iv.next396 to i32
  %exitcond399 = icmp eq i32 %lftr.wideiv398, 4
  br i1 %exitcond399, label %for.end233, label %for.cond208.preheader

for.end233:                                       ; preds = %for.inc231
  %bi_pred_me = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  %80 = load i32* %bi_pred_me, align 4, !tbaa !3
  %bi_pred_me234 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 7
  store i32 %80, i32* %bi_pred_me234, align 4, !tbaa !3
  br label %for.body242.lr.ph

for.body242.lr.ph:                                ; preds = %for.end201, %for.end233
  %81 = load i32* %block_y, align 4, !tbaa !3
  %ipredmode256 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 10
  %82 = sext i32 %81 to i64
  %.pre = load i32* %block_x, align 4, !tbaa !3
  br label %for.body249.lr.ph

for.body249.lr.ph:                                ; preds = %for.inc268, %for.body242.lr.ph
  %83 = phi i32 [ %.pre, %for.body242.lr.ph ], [ %91, %for.inc268 ]
  %indvars.iv390 = phi i64 [ %82, %for.body242.lr.ph ], [ %indvars.iv.next391, %for.inc268 ]
  %k.2363 = phi i32 [ 0, %for.body242.lr.ph ], [ %inc266, %for.inc268 ]
  %84 = load i32*** %ipredmode256, align 8, !tbaa !0
  %85 = sext i32 %83 to i64
  %86 = sext i32 %k.2363 to i64
  br label %for.body249

for.body249:                                      ; preds = %for.body249.lr.ph, %for.body249
  %indvars.iv388 = phi i64 [ %86, %for.body249.lr.ph ], [ %indvars.iv.next389, %for.body249 ]
  %indvars.iv = phi i64 [ %85, %for.body249.lr.ph ], [ %indvars.iv.next, %for.body249 ]
  %k.3358 = phi i32 [ %k.2363, %for.body249.lr.ph ], [ %inc266, %for.body249 ]
  %arrayidx252 = getelementptr inbounds i32** %5, i64 %indvars.iv
  %87 = load i32** %arrayidx252, align 8, !tbaa !0
  %arrayidx253 = getelementptr inbounds i32* %87, i64 %indvars.iv390
  %88 = load i32* %arrayidx253, align 4, !tbaa !3
  %arrayidx257 = getelementptr inbounds i32** %84, i64 %indvars.iv
  %89 = load i32** %arrayidx257, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i32* %89, i64 %indvars.iv390
  store i32 %88, i32* %arrayidx258, align 4, !tbaa !3
  %arrayidx260 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv388
  %90 = load i32* %arrayidx260, align 4, !tbaa !3
  %arrayidx263 = getelementptr inbounds %struct.RD_DATA* %9, i64 0, i32 11, i64 %indvars.iv388
  store i32 %90, i32* %arrayidx263, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next389 = add i64 %indvars.iv388, 1
  %inc266 = add nsw i32 %k.3358, 1
  %91 = load i32* %block_x, align 4, !tbaa !3
  %92 = add nsw i32 %91, 3
  %93 = trunc i64 %indvars.iv to i32
  %cmp247 = icmp slt i32 %93, %92
  br i1 %cmp247, label %for.body249, label %for.inc268

for.inc268:                                       ; preds = %for.body249
  %.pre454 = load i32* %block_y, align 4, !tbaa !3
  %indvars.iv.next391 = add i64 %indvars.iv390, 1
  %94 = add nsw i32 %.pre454, 3
  %95 = trunc i64 %indvars.iv390 to i32
  %cmp240 = icmp slt i32 %95, %94
  br i1 %cmp240, label %for.body249.lr.ph, label %for.end270

for.end270:                                       ; preds = %for.inc268, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @store_coding_state_cs_cm() #0 {
entry:
  %0 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  tail call void @store_coding_state(%struct.CSobj* %0) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reset_coding_state_cs_cm() #0 {
entry:
  %0 = load %struct.CSobj** @cs_cm, align 8, !tbaa !0
  tail call void @reset_coding_state(%struct.CSobj* %0) #8
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

declare double @exp2(double)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
