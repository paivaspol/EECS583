; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
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
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@input = external global %struct.InputParameters*
@gop_structure = common global %struct.GOP_DATA* null, align 8
@.str1 = private unnamed_addr constant [31 x i8] c"create_pyramid:curGOPLeveldist\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str9 = private unnamed_addr constant [51 x i8] c"Invalid QP value. Please check configuration file.\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str11 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@log2_max_frame_num_minus4 = common global i32 0, align 4
@start_tr_in_this_IGOP = external global i32
@dpb = external global %struct.decoded_picture_buffer
@.str13 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str14 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
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
define void @create_pyramid() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !647, !tbaa !648
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !647
  %1 = load i32* %successive_Bframe, align 4, !dbg !647, !tbaa !651
  %div = sdiv i32 %1, 2, !dbg !647
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !51), !dbg !647
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55, !dbg !652
  %2 = load i32* %PyramidCoding, align 4, !dbg !652, !tbaa !651
  %cmp = icmp eq i32 %2, 1, !dbg !652
  br i1 %cmp, label %for.cond.preheader, label %while.cond.preheader, !dbg !652

while.cond.preheader:                             ; preds = %entry
  %cmp29292 = icmp sgt i32 %1, 2, !dbg !653
  br i1 %cmp29292, label %while.body, label %if.end37, !dbg !653

for.cond.preheader:                               ; preds = %entry
  %cmp2277 = icmp sgt i32 %1, 0, !dbg !654
  br i1 %cmp2277, label %for.body.lr.ph, label %if.end200, !dbg !654

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !657, !tbaa !648
  br label %for.body, !dbg !654

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = trunc i64 %indvars.iv to i32, !dbg !660
  %cmp3 = icmp slt i32 %4, %div, !dbg !660
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 0, !dbg !657
  store i32 1, i32* %slice_type, align 4, !dbg !657, !tbaa !651
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !660

if.then4:                                         ; preds = %for.body
  %mul = shl nsw i32 %4, 1, !dbg !661
  %add275 = or i32 %mul, 1, !dbg !661
  %display_no = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 1, !dbg !661
  store i32 %add275, i32* %display_no, align 4, !dbg !661, !tbaa !651
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 4, !dbg !662
  store i32 0, i32* %pyramid_layer, align 4, !dbg !662, !tbaa !651
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 2, !dbg !663
  store i32 2, i32* %reference_idc, align 4, !dbg !663, !tbaa !651
  br label %for.inc, !dbg !664

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %4, %div, !dbg !665
  %mul14 = shl nsw i32 %sub, 1, !dbg !665
  %display_no17 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 1, !dbg !665
  store i32 %mul14, i32* %display_no17, align 4, !dbg !665, !tbaa !651
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 4, !dbg !667
  store i32 1, i32* %pyramid_layer20, align 4, !dbg !667, !tbaa !651
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA* %3, i64 %indvars.iv, i32 2, !dbg !668
  store i32 0, i32* %reference_idc23, align 4, !dbg !668, !tbaa !651
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !654
  %5 = load i32* %successive_Bframe, align 4, !dbg !654, !tbaa !651
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !654
  %cmp2 = icmp slt i32 %6, %5, !dbg !654
  br i1 %cmp2, label %for.body, label %if.end200, !dbg !654

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %GOPlevels.0294 = phi i32 [ %inc31, %while.body ], [ 0, %while.cond.preheader ]
  %Bframes.0293 = phi i32 [ %div30, %while.body ], [ %1, %while.cond.preheader ]
  %div30 = sdiv i32 %Bframes.0293, 2, !dbg !669
  tail call void @llvm.dbg.value(metadata !{i32 %div30}, i64 0, metadata !54), !dbg !669
  %inc31 = add nsw i32 %GOPlevels.0294, 1, !dbg !671
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !52), !dbg !671
  %cmp29 = icmp sgt i32 %Bframes.0293, 5, !dbg !653
  br i1 %cmp29, label %while.body, label %if.end37, !dbg !653

if.end37:                                         ; preds = %while.cond.preheader, %while.body
  %GOPlevels.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc31, %while.body ]
  tail call void @llvm.dbg.value(metadata !{i32 %GOPlevels.0.lcssa}, i64 0, metadata !58), !dbg !672
  %add32 = add nsw i32 %GOPlevels.0.lcssa, 1, !dbg !673
  %conv = sext i32 %add32 to i64, !dbg !673
  %mul33 = shl nsw i64 %conv, 2, !dbg !673
  tail call void @llvm.dbg.value(metadata !674, i64 0, metadata !55), !dbg !673
  %call41 = tail call noalias i8* @malloc(i64 %mul33) #6, !dbg !675
  %7 = bitcast i8* %call41 to i32*, !dbg !675
  tail call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !57), !dbg !675
  %cmp42 = icmp eq i8* %call41, null, !dbg !675
  br i1 %cmp42, label %if.then44, label %for.cond46.preheader, !dbg !675

if.then44:                                        ; preds = %if.end37
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !675
  br label %for.cond46.preheader, !dbg !675

for.cond46.preheader:                             ; preds = %if.end37, %if.then44
  %8 = load %struct.InputParameters** @input, align 8, !dbg !676, !tbaa !648
  %successive_Bframe47289 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34, !dbg !676
  %9 = load i32* %successive_Bframe47289, align 4, !dbg !676, !tbaa !651
  %cmp48290 = icmp sgt i32 %9, 0, !dbg !676
  br i1 %cmp48290, label %for.body50.lr.ph, label %while.cond60.preheader, !dbg !676

for.body50.lr.ph:                                 ; preds = %for.cond46.preheader
  %10 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !678, !tbaa !648
  br label %for.body50, !dbg !676

while.cond60.preheader:                           ; preds = %for.body50, %for.cond46.preheader
  %11 = phi i32 [ %9, %for.cond46.preheader ], [ %13, %for.body50 ]
  %12 = sext i32 %GOPlevels.0.lcssa to i64
  br i1 %cmp29292, label %while.body63, label %while.end72, !dbg !680

for.body50:                                       ; preds = %for.body50.lr.ph, %for.body50
  %indvars.iv303 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next304, %for.body50 ]
  %display_no53 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv303, i32 1, !dbg !678
  store i32 0, i32* %display_no53, align 4, !dbg !678, !tbaa !651
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv303, i32 0, !dbg !681
  store i32 1, i32* %slice_type56, align 4, !dbg !681, !tbaa !651
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !676
  %13 = load i32* %successive_Bframe47289, align 4, !dbg !676, !tbaa !651
  %14 = trunc i64 %indvars.iv.next304 to i32, !dbg !676
  %cmp48 = icmp slt i32 %14, %13, !dbg !676
  br i1 %cmp48, label %for.body50, label %while.cond60.preheader, !dbg !676

while.body63:                                     ; preds = %while.cond60.preheader, %while.body63
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %while.body63 ], [ %12, %while.cond60.preheader ]
  %prvlevelrefs.0288 = phi i32 [ %div64, %while.body63 ], [ %1, %while.cond60.preheader ]
  %div64 = sdiv i32 %prvlevelrefs.0288, 2, !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %div64}, i64 0, metadata !60), !dbg !682
  %rem = srem i32 %div64, 2, !dbg !684
  %add68 = add nsw i32 %rem, %div64, !dbg !684
  %15 = trunc i64 %indvars.iv301 to i32, !dbg !684
  %sub69 = sub nsw i32 %GOPlevels.0.lcssa, %15, !dbg !684
  %idxprom70 = sext i32 %sub69 to i64, !dbg !684
  %arrayidx71 = getelementptr inbounds i32* %7, i64 %idxprom70, !dbg !684
  store i32 %add68, i32* %arrayidx71, align 4, !dbg !684, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %div64}, i64 0, metadata !59), !dbg !685
  %indvars.iv.next302 = add i64 %indvars.iv301, -1, !dbg !680
  %cmp61 = icmp sgt i32 %prvlevelrefs.0288, 5, !dbg !680
  br i1 %cmp61, label %while.body63, label %while.end72, !dbg !680

while.end72:                                      ; preds = %while.cond60.preheader, %while.body63
  %16 = phi i32 [ %div64, %while.body63 ], [ %1, %while.cond60.preheader ]
  %rem74 = srem i32 %16, 2, !dbg !686
  %add75 = add nsw i32 %rem74, %16, !dbg !686
  %arrayidx77 = getelementptr inbounds i32* %7, i64 %12, !dbg !686
  store i32 %add75, i32* %arrayidx77, align 4, !dbg !686, !tbaa !651
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !50), !dbg !687
  %cmp80284 = icmp sgt i32 %16, 0, !dbg !687
  br i1 %cmp80284, label %for.body82.lr.ph, label %for.end91, !dbg !687

for.body82.lr.ph:                                 ; preds = %while.end72
  %17 = load i32* %7, align 4, !dbg !689, !tbaa !651
  %sub88 = add nsw i32 %17, -1, !dbg !689
  br label %for.body82, !dbg !687

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.lr.ph
  %j.0285 = phi i32 [ 1, %for.body82.lr.ph ], [ %phitmp, %for.body82.for.body82_crit_edge ]
  %mul85 = mul nsw i32 %17, %j.0285, !dbg !689
  %sub86 = add nsw i32 %mul85, -1, !dbg !689
  %18 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !689, !tbaa !648
  tail call void @gop_pyramid(i32 %GOPlevels.0.lcssa, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %18) #7, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %j.0285}, i64 0, metadata !50), !dbg !687
  %cmp80 = icmp slt i32 %j.0285, %16, !dbg !687
  br i1 %cmp80, label %for.body82.for.body82_crit_edge, label %for.cond78.for.end91_crit_edge, !dbg !687

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  %phitmp = add i32 %j.0285, 1, !dbg !687
  br label %for.body82, !dbg !687

for.cond78.for.end91_crit_edge:                   ; preds = %for.body82
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !691, !tbaa !648
  %successive_Bframe92.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 34
  %.pre306 = load i32* %successive_Bframe92.phi.trans.insert, align 4, !dbg !691, !tbaa !651
  br label %for.end91, !dbg !687

for.end91:                                        ; preds = %for.cond78.for.end91_crit_edge, %while.end72
  %19 = phi i32 [ %.pre306, %for.cond78.for.end91_crit_edge ], [ %11, %while.end72 ]
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !50), !dbg !691
  %cmp94282 = icmp sgt i32 %19, 0, !dbg !691
  br i1 %cmp94282, label %for.cond97.preheader.lr.ph, label %if.end200, !dbg !691

for.cond97.preheader.lr.ph:                       ; preds = %for.end91
  %20 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !692, !tbaa !648
  br label %for.cond97.preheader, !dbg !691

for.cond97.preheader:                             ; preds = %for.cond97.preheader.lr.ph, %for.inc197
  %indvars.iv299 = phi i32 [ %19, %for.cond97.preheader.lr.ph ], [ %indvars.iv.next300, %for.inc197 ], !dbg !693
  %cmp98279 = icmp sgt i32 %indvars.iv299, 1, !dbg !693
  br i1 %cmp98279, label %for.body100.lr.ph, label %for.inc197, !dbg !693

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %pyramid_layer107.phi.trans.insert = getelementptr inbounds %struct.GOP_DATA* %20, i64 0, i32 4
  %.pre305 = load i32* %pyramid_layer107.phi.trans.insert, align 4, !dbg !692, !tbaa !651
  br label %for.body100, !dbg !693

for.body100:                                      ; preds = %for.inc194, %for.body100.lr.ph
  %21 = phi i32 [ %.pre305, %for.body100.lr.ph ], [ %35, %for.inc194 ], !dbg !692
  %indvars.iv296 = phi i64 [ 1, %for.body100.lr.ph ], [ %indvars.iv.next297, %for.inc194 ]
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 4, !dbg !692
  %22 = load i32* %pyramid_layer103, align 4, !dbg !692, !tbaa !651
  %23 = add nsw i64 %indvars.iv296, -1, !dbg !692
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 4, !dbg !692
  %cmp108 = icmp sgt i32 %22, %21, !dbg !692
  br i1 %cmp108, label %if.then110, label %for.inc194, !dbg !692

if.then110:                                       ; preds = %for.body100
  %display_no114 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 1, !dbg !694
  %24 = load i32* %display_no114, align 4, !dbg !694, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !62), !dbg !694
  %display_no117 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 1, !dbg !696
  %25 = load i32* %display_no117, align 4, !dbg !696, !tbaa !651
  store i32 %25, i32* %display_no114, align 4, !dbg !696, !tbaa !651
  store i32 %24, i32* %display_no117, align 4, !dbg !697, !tbaa !651
  %26 = load i32* %pyramid_layer107, align 4, !dbg !698, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !62), !dbg !698
  store i32 %22, i32* %pyramid_layer107, align 4, !dbg !699, !tbaa !651
  store i32 %26, i32* %pyramid_layer103, align 4, !dbg !700, !tbaa !651
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 2, !dbg !701
  %27 = load i32* %reference_idc142, align 4, !dbg !701, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !62), !dbg !701
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 2, !dbg !702
  %28 = load i32* %reference_idc145, align 4, !dbg !702, !tbaa !651
  store i32 %28, i32* %reference_idc142, align 4, !dbg !702, !tbaa !651
  store i32 %27, i32* %reference_idc145, align 4, !dbg !703, !tbaa !651
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 0, !dbg !704
  %29 = load i32* %slice_type156, align 4, !dbg !704, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !62), !dbg !704
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 0, !dbg !705
  %30 = load i32* %slice_type159, align 4, !dbg !705, !tbaa !651
  store i32 %30, i32* %slice_type156, align 4, !dbg !705, !tbaa !651
  store i32 %29, i32* %slice_type159, align 4, !dbg !706, !tbaa !651
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 3, !dbg !707
  %31 = load i32* %slice_qp, align 4, !dbg !707, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !62), !dbg !707
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 3, !dbg !708
  %32 = load i32* %slice_qp172, align 4, !dbg !708, !tbaa !651
  store i32 %32, i32* %slice_qp, align 4, !dbg !708, !tbaa !651
  store i32 %31, i32* %slice_qp172, align 4, !dbg !709, !tbaa !651
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA* %20, i64 %23, i32 5, !dbg !710
  %33 = load i32* %pyramidPocDelta, align 4, !dbg !710, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !62), !dbg !710
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA* %20, i64 %indvars.iv296, i32 5, !dbg !711
  %34 = load i32* %pyramidPocDelta185, align 4, !dbg !711, !tbaa !651
  store i32 %34, i32* %pyramidPocDelta, align 4, !dbg !711, !tbaa !651
  store i32 %33, i32* %pyramidPocDelta185, align 4, !dbg !712, !tbaa !651
  br label %for.inc194, !dbg !713

for.inc194:                                       ; preds = %for.body100, %if.then110
  %35 = phi i32 [ %22, %for.body100 ], [ %26, %if.then110 ]
  %indvars.iv.next297 = add i64 %indvars.iv296, 1, !dbg !693
  %lftr.wideiv = trunc i64 %indvars.iv.next297 to i32, !dbg !693
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv299, !dbg !693
  br i1 %exitcond, label %for.inc197, label %for.body100, !dbg !693

for.inc197:                                       ; preds = %for.inc194, %for.cond97.preheader
  %indvars.iv.next300 = add i32 %indvars.iv299, -1, !dbg !691
  tail call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next300}, i64 0, metadata !50), !dbg !691
  %cmp94 = icmp sgt i32 %indvars.iv.next300, 0, !dbg !691
  br i1 %cmp94, label %for.cond97.preheader, label %if.end200, !dbg !691

if.end200:                                        ; preds = %for.end91, %for.inc197, %for.cond.preheader, %for.inc
  ret void, !dbg !714
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @gop_pyramid(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !81), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %frm_no.tr.lcssa}, i64 0, metadata !82), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %frames}, i64 0, metadata !83), !dbg !715
  tail call void @llvm.dbg.value(metadata !{%struct.GOP_DATA* %pyramid_structure}, i64 0, metadata !84), !dbg !715
  %cmp74 = icmp eq i32 %level, 0, !dbg !716
  %cmp175 = icmp sgt i32 %frm_no, -1, !dbg !717
  br i1 %cmp74, label %if.then, label %if.else, !dbg !716

if.then:                                          ; preds = %if.end32, %entry
  %cmp1.lcssa = phi i1 [ %cmp175, %entry ], [ %cmp1, %if.end32 ]
  %frm_no.tr.lcssa = phi i32 [ %frm_no, %entry ], [ %add39, %if.end32 ]
  br i1 %cmp1.lcssa, label %land.lhs.true, label %if.end42, !dbg !717

land.lhs.true:                                    ; preds = %if.then
  %0 = load %struct.InputParameters** @input, align 8, !dbg !717, !tbaa !648
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !717
  %1 = load i32* %successive_Bframe, align 4, !dbg !717, !tbaa !651
  %cmp2 = icmp sgt i32 %1, %frm_no.tr.lcssa, !dbg !717
  br i1 %cmp2, label %land.lhs.true3, label %if.end42, !dbg !717

land.lhs.true3:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %frm_no.tr.lcssa to i64, !dbg !717
  %display_no = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 1, !dbg !717
  %2 = load i32* %display_no, align 4, !dbg !717, !tbaa !651
  %cmp4 = icmp eq i32 %2, 0, !dbg !717
  br i1 %cmp4, label %if.then5, label %if.end42, !dbg !717

if.then5:                                         ; preds = %land.lhs.true3
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 0, !dbg !719
  store i32 1, i32* %slice_type, align 4, !dbg !719, !tbaa !651
  store i32 %frm_no.tr.lcssa, i32* %display_no, align 4, !dbg !721, !tbaa !651
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 4, !dbg !722
  store i32 0, i32* %pyramid_layer, align 4, !dbg !722, !tbaa !651
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom, i32 2, !dbg !723
  store i32 0, i32* %reference_idc, align 4, !dbg !723, !tbaa !651
  br label %if.end42, !dbg !724

if.else:                                          ; preds = %entry, %if.end32
  %cmp179 = phi i1 [ %cmp1, %if.end32 ], [ %cmp175, %entry ]
  %frames.tr78 = phi i32 [ %div, %if.end32 ], [ %frames, %entry ]
  %frm_no.tr77 = phi i32 [ %add39, %if.end32 ], [ %frm_no, %entry ]
  %level.tr76 = phi i32 [ %sub, %if.end32 ], [ %level, %entry ]
  br i1 %cmp179, label %land.lhs.true16, label %if.end32, !dbg !725

land.lhs.true16:                                  ; preds = %if.else
  %3 = load %struct.InputParameters** @input, align 8, !dbg !725, !tbaa !648
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 34, !dbg !725
  %4 = load i32* %successive_Bframe17, align 4, !dbg !725, !tbaa !651
  %cmp18 = icmp sgt i32 %4, %frm_no.tr77, !dbg !725
  br i1 %cmp18, label %if.then19, label %if.end32, !dbg !725

if.then19:                                        ; preds = %land.lhs.true16
  %idxprom20 = sext i32 %frm_no.tr77 to i64, !dbg !727
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 0, !dbg !727
  store i32 1, i32* %slice_type22, align 4, !dbg !727, !tbaa !651
  %display_no25 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 1, !dbg !729
  store i32 %frm_no.tr77, i32* %display_no25, align 4, !dbg !729, !tbaa !651
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 4, !dbg !730
  store i32 %level.tr76, i32* %pyramid_layer28, align 4, !dbg !730, !tbaa !651
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %idxprom20, i32 2, !dbg !731
  store i32 2, i32* %reference_idc31, align 4, !dbg !731, !tbaa !651
  br label %if.end32, !dbg !732

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %sub = add nsw i32 %level.tr76, -1, !dbg !733
  %add = add nsw i32 %frames.tr78, 1, !dbg !733
  %div = sdiv i32 %add, 2, !dbg !733
  %sub33 = sub nsw i32 %frm_no.tr77, %div, !dbg !733
  tail call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div, %struct.GOP_DATA* %pyramid_structure) #7, !dbg !733
  %add39 = add nsw i32 %div, %frm_no.tr77, !dbg !734
  tail call void @llvm.dbg.value(metadata !{i32 %level.tr76}, i64 0, metadata !81), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %frm_no.tr.lcssa}, i64 0, metadata !82), !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %frames.tr78}, i64 0, metadata !83), !dbg !715
  tail call void @llvm.dbg.value(metadata !{%struct.GOP_DATA* %pyramid_structure}, i64 0, metadata !84), !dbg !715
  %cmp = icmp eq i32 %sub, 0, !dbg !716
  %cmp1 = icmp sgt i32 %add39, -1, !dbg !717
  br i1 %cmp, label %if.then, label %if.else, !dbg !716

if.end42:                                         ; preds = %if.then, %land.lhs.true, %land.lhs.true3, %if.then5
  ret void, !dbg !735
}

; Function Attrs: nounwind optsize uwtable
define void @init_gop_structure() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !736, !tbaa !648
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55, !dbg !736
  %1 = load i32* %PyramidCoding, align 4, !dbg !736, !tbaa !651
  %cmp = icmp eq i32 %1, 3, !dbg !736
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !736
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5, !dbg !736
  %cond.in = select i1 %cmp, i32* %jumpd, i32* %successive_Bframe, !dbg !736
  %cond = load i32* %cond.in, align 4, !dbg !736
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !87), !dbg !736
  %cmp1 = icmp slt i32 %cond, 10, !dbg !737
  %2 = sext i32 %cond to i64, !dbg !737
  %conv = select i1 %cmp1, i64 10, i64 %2, !dbg !737
  %call = tail call noalias i8* @calloc(i64 %conv, i64 24) #6, !dbg !737
  %3 = bitcast i8* %call to %struct.GOP_DATA*, !dbg !737
  store %struct.GOP_DATA* %3, %struct.GOP_DATA** @gop_structure, align 8, !dbg !737, !tbaa !648
  %cmp6 = icmp eq i8* %call, null, !dbg !738
  br i1 %cmp6, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !739
  br label %if.end, !dbg !739

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !740
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @clear_gop_structure() #0 {
entry:
  %0 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !741, !tbaa !648
  %tobool = icmp eq %struct.GOP_DATA* %0, null, !dbg !741
  br i1 %tobool, label %if.end, label %if.then, !dbg !741

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.GOP_DATA* %0 to i8*, !dbg !742
  tail call void @free(i8* %1) #6, !dbg !742
  br label %if.end, !dbg !742

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !743
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @interpret_gop_structure() #0 {
entry:
  %qp = alloca i32, align 4
  %display_no = alloca i32, align 4
  %0 = load %struct.InputParameters** @input, align 8, !dbg !744, !tbaa !648
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 56, i64 0, !dbg !744
  %call = call i64 @strlen(i8* %arraydecay) #8, !dbg !744
  %conv = trunc i64 %call to i32, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !91), !dbg !744
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !92), !dbg !745
  call void @llvm.dbg.declare(metadata !{i32* %qp}, metadata !94), !dbg !745
  call void @llvm.dbg.declare(metadata !{i32* %display_no}, metadata !95), !dbg !745
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !96), !dbg !746
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !97), !dbg !746
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !98), !dbg !746
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !99), !dbg !746
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !100), !dbg !747
  %cmp = icmp sgt i32 %conv, 0, !dbg !748
  br i1 %cmp, label %for.body.lr.ph, label %if.else169, !dbg !748

for.body.lr.ph:                                   ; preds = %entry
  %sub149 = add nsw i32 %conv, -2, !dbg !749
  br label %for.body, !dbg !755

for.body:                                         ; preds = %for.body.lr.ph, %for.inc166
  %coded_frame.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %coded_frame.1, %for.inc166 ]
  %qp_read.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %qp_read.1, %for.inc166 ]
  %stored_read.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %stored_read.1, %for.inc166 ]
  %order_read.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %order_read.1, %for.inc166 ]
  %slice_read.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %slice_read.1, %for.inc166 ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc167, %for.inc166 ]
  %cmp4 = icmp eq i32 %slice_read.0212, 0, !dbg !756
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !756

if.then6:                                         ; preds = %for.body
  %idxprom = sext i32 %i.0211 to i64, !dbg !757
  %1 = load %struct.InputParameters** @input, align 8, !dbg !757, !tbaa !648
  %arrayidx = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 56, i64 %idxprom, !dbg !757
  %2 = load i8* %arrayidx, align 1, !dbg !757, !tbaa !649
  %conv8 = sext i8 %2 to i32, !dbg !757
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ], !dbg !757

sw.bb:                                            ; preds = %if.then6, %if.then6
  %idxprom9 = sext i32 %coded_frame.0216 to i64, !dbg !759
  %3 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !759, !tbaa !648
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %3, i64 %idxprom9, i32 0, !dbg !759
  store i32 0, i32* %slice_type, align 4, !dbg !759, !tbaa !651
  br label %for.inc166, !dbg !761

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %idxprom12 = sext i32 %coded_frame.0216 to i64, !dbg !762
  %4 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !762, !tbaa !648
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA* %4, i64 %idxprom12, i32 0, !dbg !762
  store i32 1, i32* %slice_type14, align 4, !dbg !762, !tbaa !651
  br label %for.inc166, !dbg !763

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %idxprom16 = sext i32 %coded_frame.0216 to i64, !dbg !764
  %5 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !764, !tbaa !648
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA* %5, i64 %idxprom16, i32 0, !dbg !764
  store i32 2, i32* %slice_type18, align 4, !dbg !764, !tbaa !651
  br label %for.inc166, !dbg !765

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !766
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !767
  br label %for.inc166, !dbg !768

if.else:                                          ; preds = %for.body
  switch i32 %order_read.0213, label %for.inc166 [
    i32 0, label %if.then22
    i32 1, label %if.then64
  ], !dbg !769

if.then22:                                        ; preds = %if.else
  %6 = load %struct.InputParameters** @input, align 8, !dbg !770, !tbaa !648
  %idx.ext = sext i32 %i.0211 to i64, !dbg !770
  %add.ptr = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 56, i64 %idx.ext, !dbg !770
  %7 = load i8* %add.ptr, align 1, !dbg !770, !tbaa !649
  %idxprom26 = sext i8 %7 to i64, !dbg !770
  %call27 = call i16** @__ctype_b_loc() #9, !dbg !770
  %8 = load i16** %call27, align 8, !dbg !770, !tbaa !648
  %arrayidx28 = getelementptr inbounds i16* %8, i64 %idxprom26, !dbg !770
  %9 = load i16* %arrayidx28, align 2, !dbg !770, !tbaa !772
  %and = and i16 %9, 2048, !dbg !770
  %tobool = icmp eq i16 %and, 0, !dbg !770
  br i1 %tobool, label %if.else58, label %if.then30, !dbg !770

if.then30:                                        ; preds = %if.then22
  %call35 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %display_no) #6, !dbg !773
  call void @llvm.dbg.value(metadata !{i32* %display_no}, i64 0, metadata !95), !dbg !775
  %10 = load i32* %display_no, align 4, !dbg !775, !tbaa !651
  %idxprom36 = sext i32 %coded_frame.0216 to i64, !dbg !775
  %11 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !775, !tbaa !648
  %display_no38 = getelementptr inbounds %struct.GOP_DATA* %11, i64 %idxprom36, i32 1, !dbg !775
  store i32 %10, i32* %display_no38, align 4, !dbg !775, !tbaa !651
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !97), !dbg !777
  call void @llvm.dbg.value(metadata !{i32* %display_no}, i64 0, metadata !95), !dbg !778
  %12 = load i32* %display_no, align 4, !dbg !778, !tbaa !651
  %cmp39 = icmp sgt i32 %12, -1, !dbg !778
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !779, !tbaa !648
  %jumpd44.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 5
  %.pre217 = load i32* %jumpd44.phi.trans.insert, align 4, !dbg !779, !tbaa !651
  %cmp41 = icmp slt i32 %12, %.pre217, !dbg !778
  %or.cond225 = and i1 %cmp39, %cmp41, !dbg !778
  br i1 %or.cond225, label %for.cond46.preheader, label %if.then43, !dbg !778

if.then43:                                        ; preds = %if.then30
  %sub = add nsw i32 %.pre217, -1, !dbg !779
  %call45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), i32 %sub) #6, !dbg !779
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !781
  br label %for.cond46.preheader, !dbg !782

for.cond46.preheader:                             ; preds = %if.then30, %if.then43
  %cmp47208 = icmp sgt i32 %coded_frame.0216, 0, !dbg !783
  br i1 %cmp47208, label %for.body49, label %for.inc166, !dbg !783

for.body49:                                       ; preds = %for.inc, %for.cond46.preheader
  %indvars.iv = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next, %for.inc ]
  %13 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !785, !tbaa !648
  %display_no52 = getelementptr inbounds %struct.GOP_DATA* %13, i64 %indvars.iv, i32 1, !dbg !785
  %14 = load i32* %display_no52, align 4, !dbg !785, !tbaa !651
  call void @llvm.dbg.value(metadata !{i32* %display_no}, i64 0, metadata !95), !dbg !785
  %15 = load i32* %display_no, align 4, !dbg !785, !tbaa !651
  %cmp53 = icmp eq i32 %14, %15, !dbg !785
  br i1 %cmp53, label %if.then55, label %for.inc, !dbg !785

if.then55:                                        ; preds = %for.body49
  %16 = trunc i64 %indvars.iv to i32, !dbg !787
  %call56 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), i32 %14, i32 %coded_frame.0216, i32 %16) #6, !dbg !787
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !789
  br label %for.inc, !dbg !790

for.inc:                                          ; preds = %for.body49, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !783
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !783
  %exitcond = icmp eq i32 %lftr.wideiv, %coded_frame.0216, !dbg !783
  br i1 %exitcond, label %for.inc166, label %for.body49, !dbg !783

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !791
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !793
  br label %for.inc166

if.then64:                                        ; preds = %if.else
  %cmp65 = icmp eq i32 %stored_read.0214, 0, !dbg !794
  br i1 %cmp65, label %land.lhs.true, label %if.else93, !dbg !794

land.lhs.true:                                    ; preds = %if.then64
  %17 = load %struct.InputParameters** @input, align 8, !dbg !794, !tbaa !648
  %idx.ext69 = sext i32 %i.0211 to i64, !dbg !794
  %add.ptr70 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 56, i64 %idx.ext69, !dbg !794
  %18 = load i8* %add.ptr70, align 1, !dbg !794, !tbaa !649
  %idxprom72 = sext i8 %18 to i64, !dbg !794
  %call73 = call i16** @__ctype_b_loc() #9, !dbg !794
  %19 = load i16** %call73, align 8, !dbg !794, !tbaa !648
  %arrayidx74 = getelementptr inbounds i16* %19, i64 %idxprom72, !dbg !794
  %20 = load i16* %arrayidx74, align 2, !dbg !794, !tbaa !772
  %and76 = and i16 %20, 2048, !dbg !794
  %tobool77 = icmp eq i16 %and76, 0, !dbg !794
  br i1 %tobool77, label %if.then78, label %for.inc166, !dbg !794

if.then78:                                        ; preds = %land.lhs.true
  %conv82 = sext i8 %18 to i32, !dbg !795
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ], !dbg !795

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %idxprom84 = sext i32 %coded_frame.0216 to i64, !dbg !797
  %21 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !797, !tbaa !648
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %21, i64 %idxprom84, i32 2, !dbg !797
  store i32 0, i32* %reference_idc, align 4, !dbg !797, !tbaa !651
  br label %for.inc166, !dbg !799

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %idxprom87 = sext i32 %coded_frame.0216 to i64, !dbg !800
  %22 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !800, !tbaa !648
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA* %22, i64 %idxprom87, i32 2, !dbg !800
  store i32 2, i32* %reference_idc89, align 4, !dbg !800, !tbaa !651
  br label %for.inc166, !dbg !801

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !802
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !803
  br label %for.inc166, !dbg !804

if.else93:                                        ; preds = %if.then64
  %cmp94 = icmp eq i32 %stored_read.0214, 1, !dbg !805
  %cmp97 = icmp eq i32 %qp_read.0215, 0, !dbg !805
  %or.cond = and i1 %cmp94, %cmp97, !dbg !805
  br i1 %or.cond, label %if.then99, label %if.else130, !dbg !805

if.then99:                                        ; preds = %if.else93
  %23 = load %struct.InputParameters** @input, align 8, !dbg !806, !tbaa !648
  %idx.ext102 = sext i32 %i.0211 to i64, !dbg !806
  %add.ptr103 = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 56, i64 %idx.ext102, !dbg !806
  %24 = load i8* %add.ptr103, align 1, !dbg !806, !tbaa !649
  %idxprom105 = sext i8 %24 to i64, !dbg !806
  %call106 = call i16** @__ctype_b_loc() #9, !dbg !806
  %25 = load i16** %call106, align 8, !dbg !806, !tbaa !648
  %arrayidx107 = getelementptr inbounds i16* %25, i64 %idxprom105, !dbg !806
  %26 = load i16* %arrayidx107, align 2, !dbg !806, !tbaa !772
  %and109 = and i16 %26, 2048, !dbg !806
  %tobool110 = icmp eq i16 %and109, 0, !dbg !806
  br i1 %tobool110, label %if.else127, label %if.then111, !dbg !806

if.then111:                                       ; preds = %if.then99
  %call116 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr103, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %qp) #6, !dbg !808
  call void @llvm.dbg.value(metadata !{i32* %qp}, i64 0, metadata !94), !dbg !810
  %27 = load i32* %qp, align 4, !dbg !810, !tbaa !651
  %idxprom117 = sext i32 %coded_frame.0216 to i64, !dbg !810
  %28 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !810, !tbaa !648
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %28, i64 %idxprom117, i32 3, !dbg !810
  store i32 %27, i32* %slice_qp, align 4, !dbg !810, !tbaa !651
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !99), !dbg !811
  call void @llvm.dbg.value(metadata !{i32* %qp}, i64 0, metadata !94), !dbg !812
  %29 = load i32* %qp, align 4, !dbg !812, !tbaa !651
  %30 = icmp ugt i32 %29, 51, !dbg !812
  br i1 %30, label %if.then124, label %for.inc166, !dbg !812

if.then124:                                       ; preds = %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !813
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !815
  br label %for.inc166, !dbg !816

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8]* @.str10, i64 0, i64 0)) #6, !dbg !817
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !819
  br label %for.inc166

if.else130:                                       ; preds = %if.else93
  %cmp134 = icmp eq i32 %qp_read.0215, 1, !dbg !749
  %or.cond203 = and i1 %cmp94, %cmp134, !dbg !749
  br i1 %or.cond203, label %land.lhs.true136, label %for.inc166, !dbg !749

land.lhs.true136:                                 ; preds = %if.else130
  %31 = load %struct.InputParameters** @input, align 8, !dbg !749, !tbaa !648
  %idx.ext139 = sext i32 %i.0211 to i64, !dbg !749
  %add.ptr140 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 56, i64 %idx.ext139, !dbg !749
  %32 = load i8* %add.ptr140, align 1, !dbg !749, !tbaa !649
  %idxprom142 = sext i8 %32 to i64, !dbg !749
  %call143 = call i16** @__ctype_b_loc() #9, !dbg !749
  %33 = load i16** %call143, align 8, !dbg !749, !tbaa !648
  %arrayidx144 = getelementptr inbounds i16* %33, i64 %idxprom142, !dbg !749
  %34 = load i16* %arrayidx144, align 2, !dbg !749, !tbaa !772
  %and146 = and i16 %34, 2048, !dbg !749
  %tobool147 = icmp eq i16 %and146, 0, !dbg !749
  %cmp150 = icmp slt i32 %i.0211, %sub149, !dbg !749
  %or.cond226 = and i1 %tobool147, %cmp150, !dbg !749
  br i1 %or.cond226, label %if.then152, label %for.inc166, !dbg !749

if.then152:                                       ; preds = %land.lhs.true136
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !98), !dbg !820
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !99), !dbg !822
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !97), !dbg !823
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !96), !dbg !824
  %dec = add nsw i32 %i.0211, -1, !dbg !825
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !92), !dbg !825
  %inc153 = add nsw i32 %coded_frame.0216, 1, !dbg !826
  call void @llvm.dbg.value(metadata !{i32 %inc153}, i64 0, metadata !100), !dbg !826
  %jumpd154 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 5, !dbg !827
  %35 = load i32* %jumpd154, align 4, !dbg !827, !tbaa !651
  %cmp155 = icmp slt i32 %inc153, %35, !dbg !827
  br i1 %cmp155, label %for.inc166, label %if.then157, !dbg !827

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !828
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !830
  br label %for.inc166, !dbg !831

for.inc166:                                       ; preds = %land.lhs.true, %for.cond46.preheader, %for.inc, %sw.bb83, %sw.bb86, %sw.default90, %if.else, %sw.bb, %sw.bb11, %sw.bb15, %sw.default, %if.then152, %land.lhs.true136, %if.then124, %if.then111, %if.else127, %if.then157, %if.else130, %if.else58
  %i.1 = phi i32 [ %i.0211, %if.else58 ], [ %i.0211, %if.then124 ], [ %i.0211, %if.then111 ], [ %i.0211, %if.else127 ], [ %i.0211, %land.lhs.true136 ], [ %dec, %if.then157 ], [ %dec, %if.then152 ], [ %i.0211, %if.else130 ], [ %i.0211, %sw.default ], [ %i.0211, %sw.bb15 ], [ %i.0211, %sw.bb11 ], [ %i.0211, %sw.bb ], [ %i.0211, %if.else ], [ %i.0211, %sw.default90 ], [ %i.0211, %sw.bb86 ], [ %i.0211, %sw.bb83 ], [ %i.0211, %for.inc ], [ %i.0211, %for.cond46.preheader ], [ %i.0211, %land.lhs.true ]
  %slice_read.1 = phi i32 [ %slice_read.0212, %if.else58 ], [ %slice_read.0212, %if.then124 ], [ %slice_read.0212, %if.then111 ], [ %slice_read.0212, %if.else127 ], [ %slice_read.0212, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %slice_read.0212, %if.else130 ], [ 1, %sw.default ], [ 1, %sw.bb15 ], [ 1, %sw.bb11 ], [ 1, %sw.bb ], [ %slice_read.0212, %if.else ], [ %slice_read.0212, %sw.default90 ], [ %slice_read.0212, %sw.bb86 ], [ %slice_read.0212, %sw.bb83 ], [ %slice_read.0212, %for.inc ], [ %slice_read.0212, %for.cond46.preheader ], [ %slice_read.0212, %land.lhs.true ]
  %order_read.1 = phi i32 [ 0, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 1, %if.else127 ], [ 1, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ 1, %if.else130 ], [ %order_read.0213, %sw.default ], [ %order_read.0213, %sw.bb15 ], [ %order_read.0213, %sw.bb11 ], [ %order_read.0213, %sw.bb ], [ %order_read.0213, %if.else ], [ 1, %sw.default90 ], [ 1, %sw.bb86 ], [ 1, %sw.bb83 ], [ 1, %for.inc ], [ 1, %for.cond46.preheader ], [ 1, %land.lhs.true ]
  %stored_read.1 = phi i32 [ %stored_read.0214, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 1, %if.else127 ], [ %stored_read.0214, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %stored_read.0214, %if.else130 ], [ %stored_read.0214, %sw.default ], [ %stored_read.0214, %sw.bb15 ], [ %stored_read.0214, %sw.bb11 ], [ %stored_read.0214, %sw.bb ], [ %stored_read.0214, %if.else ], [ 1, %sw.default90 ], [ 1, %sw.bb86 ], [ 1, %sw.bb83 ], [ %stored_read.0214, %for.inc ], [ %stored_read.0214, %for.cond46.preheader ], [ 0, %land.lhs.true ]
  %qp_read.1 = phi i32 [ %qp_read.0215, %if.else58 ], [ 1, %if.then124 ], [ 1, %if.then111 ], [ 0, %if.else127 ], [ 1, %land.lhs.true136 ], [ 0, %if.then157 ], [ 0, %if.then152 ], [ %qp_read.0215, %if.else130 ], [ %qp_read.0215, %sw.default ], [ %qp_read.0215, %sw.bb15 ], [ %qp_read.0215, %sw.bb11 ], [ %qp_read.0215, %sw.bb ], [ %qp_read.0215, %if.else ], [ %qp_read.0215, %sw.default90 ], [ %qp_read.0215, %sw.bb86 ], [ %qp_read.0215, %sw.bb83 ], [ %qp_read.0215, %for.inc ], [ %qp_read.0215, %for.cond46.preheader ], [ %qp_read.0215, %land.lhs.true ]
  %coded_frame.1 = phi i32 [ %coded_frame.0216, %if.else58 ], [ %coded_frame.0216, %if.then124 ], [ %coded_frame.0216, %if.then111 ], [ %coded_frame.0216, %if.else127 ], [ %coded_frame.0216, %land.lhs.true136 ], [ %inc153, %if.then157 ], [ %inc153, %if.then152 ], [ %coded_frame.0216, %if.else130 ], [ %coded_frame.0216, %sw.default ], [ %coded_frame.0216, %sw.bb15 ], [ %coded_frame.0216, %sw.bb11 ], [ %coded_frame.0216, %sw.bb ], [ %coded_frame.0216, %if.else ], [ %coded_frame.0216, %sw.default90 ], [ %coded_frame.0216, %sw.bb86 ], [ %coded_frame.0216, %sw.bb83 ], [ %coded_frame.0216, %for.inc ], [ %coded_frame.0216, %for.cond46.preheader ], [ %coded_frame.0216, %land.lhs.true ]
  %inc167 = add nsw i32 %i.1, 1, !dbg !755
  call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !92), !dbg !755
  %cmp2 = icmp slt i32 %inc167, %conv, !dbg !755
  br i1 %cmp2, label %for.body, label %if.end171, !dbg !755

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0)) #6, !dbg !832
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #6, !dbg !834
  br label %if.end171

if.end171:                                        ; preds = %for.inc166, %if.else169
  %coded_frame.2 = phi i32 [ 0, %if.else169 ], [ %coded_frame.1, %for.inc166 ]
  %add = add nsw i32 %coded_frame.2, 1, !dbg !835
  %36 = load %struct.InputParameters** @input, align 8, !dbg !835, !tbaa !648
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %36, i64 0, i32 34, !dbg !835
  store i32 %add, i32* %successive_Bframe, align 4, !dbg !835, !tbaa !651
  ret void, !dbg !836
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @encode_enhancement_layer() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !837, !tbaa !648
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !837
  %1 = load i32* %successive_Bframe, align 4, !dbg !837, !tbaa !651
  %cmp = icmp eq i32 %1, 0, !dbg !837
  %.pre289 = load %struct.ImageParameters** @img, align 8, !dbg !838, !tbaa !648
  br i1 %cmp, label %if.end276, label %land.lhs.true, !dbg !837

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 0, !dbg !837
  %2 = load i32* %number, align 4, !dbg !837, !tbaa !651
  %3 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !837, !tbaa !651
  %sub = sub nsw i32 %2, %3, !dbg !837
  %cmp1 = icmp sgt i32 %sub, 0, !dbg !837
  br i1 %cmp1, label %if.then, label %if.end276, !dbg !837

if.then:                                          ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 6, !dbg !839
  store i32 1, i32* %type, align 4, !dbg !839, !tbaa !651
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 99, !dbg !841
  %4 = load i32* %NumFramesInELSubSeq, align 4, !dbg !841, !tbaa !651
  %layer = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 86, !dbg !842
  %not.cmp2 = icmp ne i32 %4, 0, !dbg !842
  %. = zext i1 %not.cmp2 to i32, !dbg !842
  store i32 %., i32* %layer, align 4, !dbg !842, !tbaa !651
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 54, !dbg !843
  %5 = load i32* %BRefPictures, align 4, !dbg !843, !tbaa !651
  %cmp5 = icmp eq i32 %5, 0, !dbg !843
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 55, !dbg !843
  br i1 %cmp5, label %land.lhs.true6, label %if.end10, !dbg !843

land.lhs.true6:                                   ; preds = %if.then
  %6 = load i32* %PyramidCoding, align 4, !dbg !843, !tbaa !651
  %cmp7 = icmp eq i32 %6, 0, !dbg !843
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !843

if.then8:                                         ; preds = %land.lhs.true6
  %frame_num = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 105, !dbg !844
  %7 = load i32* %frame_num, align 4, !dbg !844, !tbaa !651
  %inc = add i32 %7, 1, !dbg !844
  store i32 %inc, i32* %frame_num, align 4, !dbg !844, !tbaa !651
  %8 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !846, !tbaa !651
  %add = add i32 %8, 4, !dbg !846
  %shl = shl nuw i32 1, %add, !dbg !846
  %9 = add i32 %shl, -1, !dbg !846
  %rem = and i32 %9, %inc, !dbg !846
  store i32 %rem, i32* %frame_num, align 4, !dbg !846, !tbaa !651
  br label %if.end10, !dbg !847

if.end10:                                         ; preds = %if.then, %if.then8, %land.lhs.true6
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 113, !dbg !848
  store i32 0, i32* %nal_reference_idc, align 4, !dbg !848, !tbaa !651
  %10 = load i32* %PyramidCoding, align 4, !dbg !849, !tbaa !651
  %tobool = icmp eq i32 %10, 0, !dbg !849
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters* %.pre289, i64 0, i32 67, !dbg !850
  store i32 1, i32* %b_frame_to_code, align 4, !dbg !850, !tbaa !651
  %11 = load i32* %successive_Bframe, align 4, !dbg !853, !tbaa !651
  %cmp158283 = icmp slt i32 %11, 1, !dbg !853
  br i1 %tobool, label %for.cond155.preheader, label %for.cond.preheader, !dbg !849

for.cond.preheader:                               ; preds = %if.end10
  br i1 %cmp158283, label %for.end, label %for.body, !dbg !850

for.cond155.preheader:                            ; preds = %if.end10
  br i1 %cmp158283, label %if.end276, label %for.body160, !dbg !853

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %12 = phi %struct.InputParameters* [ %44, %for.inc ], [ %0, %for.cond.preheader ]
  %13 = phi i32 [ %inc151, %for.inc ], [ 1, %for.cond.preheader ]
  %14 = phi %struct.ImageParameters* [ %45, %for.inc ], [ %.pre289, %for.cond.preheader ]
  %nal_reference_idc16 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 113, !dbg !856
  store i32 0, i32* %nal_reference_idc16, align 4, !dbg !856, !tbaa !651
  %sub18 = add nsw i32 %13, -1, !dbg !858
  %idxprom = sext i32 %sub18 to i64, !dbg !858
  %15 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !858, !tbaa !648
  %slice_type = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 0, !dbg !858
  %16 = load i32* %slice_type, align 4, !dbg !858, !tbaa !651
  %type19 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 6, !dbg !858
  store i32 %16, i32* %type19, align 4, !dbg !858, !tbaa !651
  %reference_idc = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 2, !dbg !859
  %17 = load i32* %reference_idc, align 4, !dbg !859, !tbaa !651
  %cmp24 = icmp eq i32 %17, 2, !dbg !859
  br i1 %cmp24, label %if.then25, label %if.end33, !dbg !859

if.then25:                                        ; preds = %for.body
  store i32 1, i32* %nal_reference_idc16, align 4, !dbg !860, !tbaa !651
  %frame_num27 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 105, !dbg !862
  %18 = load i32* %frame_num27, align 4, !dbg !862, !tbaa !651
  %inc28 = add i32 %18, 1, !dbg !862
  store i32 %inc28, i32* %frame_num27, align 4, !dbg !862, !tbaa !651
  %19 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !863, !tbaa !651
  %add29 = add i32 %19, 4, !dbg !863
  %shl30 = shl nuw i32 1, %add29, !dbg !863
  %20 = add i32 %shl30, -1, !dbg !863
  %rem32 = and i32 %20, %inc28, !dbg !863
  store i32 %rem32, i32* %frame_num27, align 4, !dbg !863, !tbaa !651
  br label %if.end33, !dbg !864

if.end33:                                         ; preds = %if.then25, %for.body
  %jumpd = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 5, !dbg !865
  %21 = load i32* %jumpd, align 4, !dbg !865, !tbaa !651
  %add34 = add nsw i32 %21, 1, !dbg !865
  %conv = sitofp i32 %add34 to double, !dbg !865
  %successive_Bframe35 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 34, !dbg !865
  %22 = load i32* %successive_Bframe35, align 4, !dbg !865, !tbaa !651
  %conv36 = sitofp i32 %22 to double, !dbg !865
  %add37 = fadd double %conv36, 1.000000e+00, !dbg !865
  %div = fdiv double %conv, %add37, !dbg !865
  %b_interval = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 65, !dbg !865
  store double %div, double* %b_interval, align 8, !dbg !865, !tbaa !866
  %PyramidCoding38 = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 55, !dbg !867
  %23 = load i32* %PyramidCoding38, align 4, !dbg !867, !tbaa !651
  %cmp39 = icmp eq i32 %23, 3, !dbg !867
  %.div = select i1 %cmp39, double 1.000000e+00, double %div, !dbg !867
  store double %.div, double* %b_interval, align 8, !dbg !868, !tbaa !866
  %.div292 = select i1 %cmp39, double 1.000000e+00, double %div, !dbg !867
  %intra_period = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 31, !dbg !869
  %24 = load i32* %intra_period, align 4, !dbg !869, !tbaa !651
  %tobool44 = icmp eq i32 %24, 0, !dbg !869
  br i1 %tobool44, label %if.else66, label %land.lhs.true45, !dbg !869

land.lhs.true45:                                  ; preds = %if.end33
  %idr_enable = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 32, !dbg !869
  %25 = load i32* %idr_enable, align 4, !dbg !869, !tbaa !651
  %tobool46 = icmp eq i32 %25, 0, !dbg !869
  br i1 %tobool46, label %if.else66, label %if.then47, !dbg !869

if.then47:                                        ; preds = %land.lhs.true45
  %number48 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 0, !dbg !870
  %26 = load i32* %number48, align 4, !dbg !870, !tbaa !651
  %27 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !870, !tbaa !651
  %sub49 = sub nsw i32 %26, %27, !dbg !870
  %rem51 = srem i32 %sub49, %24, !dbg !870
  %sub52 = add nsw i32 %rem51, -1, !dbg !870
  %mul = mul nsw i32 %add34, %sub52, !dbg !870
  %display_no = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 1, !dbg !870
  %28 = load i32* %display_no, align 4, !dbg !870, !tbaa !651
  %add60 = add nsw i32 %28, 1, !dbg !870
  %conv61 = sitofp i32 %add60 to double, !dbg !870
  %mul62 = fmul double %.div292, %conv61, !dbg !870
  %conv63 = fptosi double %mul62 to i32, !dbg !870
  %add64 = add nsw i32 %conv63, %mul, !dbg !870
  %mul65 = shl nsw i32 %add64, 1, !dbg !870
  %toppoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 101, !dbg !870
  store i32 %mul65, i32* %toppoc, align 4, !dbg !870, !tbaa !651
  br label %if.end86, !dbg !870

if.else66:                                        ; preds = %land.lhs.true45, %if.end33
  %number67 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 0, !dbg !871
  %29 = load i32* %number67, align 4, !dbg !871, !tbaa !651
  %30 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !871, !tbaa !651
  %sub68 = add i32 %29, -1, !dbg !871
  %sub69 = sub i32 %sub68, %30, !dbg !871
  %mul72 = mul nsw i32 %add34, %sub69, !dbg !871
  %display_no78 = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom, i32 1, !dbg !871
  %31 = load i32* %display_no78, align 4, !dbg !871, !tbaa !651
  %add79 = add nsw i32 %31, 1, !dbg !871
  %conv80 = sitofp i32 %add79 to double, !dbg !871
  %mul81 = fmul double %.div292, %conv80, !dbg !871
  %conv82 = fptosi double %mul81 to i32, !dbg !871
  %add83 = add nsw i32 %conv82, %mul72, !dbg !871
  %mul84 = shl nsw i32 %add83, 1, !dbg !871
  %toppoc85 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 101, !dbg !871
  store i32 %mul84, i32* %toppoc85, align 4, !dbg !871, !tbaa !651
  br label %if.end86

if.end86:                                         ; preds = %if.else66, %if.then47
  %32 = phi i32 [ %29, %if.else66 ], [ %26, %if.then47 ]
  %33 = phi i32 [ %mul84, %if.else66 ], [ %mul65, %if.then47 ]
  %cmp88 = icmp eq i32 %13, 1, !dbg !872
  %34 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !873, !tbaa !651
  %35 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !873, !tbaa !651
  %sub93 = sub nsw i32 %32, %35, !dbg !873
  br i1 %cmp88, label %if.then90, label %if.else101, !dbg !872

if.then90:                                        ; preds = %if.end86
  %36 = load i32* %jumpd, align 4, !dbg !873, !tbaa !651
  %add95 = add nsw i32 %36, 1, !dbg !873
  %mul96 = mul nsw i32 %add95, %sub93, !dbg !873
  %add97 = add nsw i32 %mul96, %34, !dbg !873
  %mul98 = shl nsw i32 %add97, 1, !dbg !873
  %sub99 = sub nsw i32 %33, %mul98, !dbg !873
  %arrayidx100 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 0, !dbg !873
  store i32 %sub99, i32* %arrayidx100, align 4, !dbg !873, !tbaa !651
  br label %if.end126, !dbg !873

if.else101:                                       ; preds = %if.end86
  %sub105 = add nsw i32 %sub93, -1, !dbg !874
  %37 = load i32* %jumpd, align 4, !dbg !874, !tbaa !651
  %add107 = add nsw i32 %37, 1, !dbg !874
  %mul108 = mul nsw i32 %add107, %sub105, !dbg !874
  %add109 = add nsw i32 %mul108, %34, !dbg !874
  %mul111 = fmul double %.div292, 2.000000e+00, !dbg !874
  %sub113 = add nsw i32 %13, -2, !dbg !874
  %idxprom114 = sext i32 %sub113 to i64, !dbg !874
  %display_no116 = getelementptr inbounds %struct.GOP_DATA* %15, i64 %idxprom114, i32 1, !dbg !874
  %38 = load i32* %display_no116, align 4, !dbg !874, !tbaa !651
  %add117 = add nsw i32 %38, 1, !dbg !874
  %conv118 = sitofp i32 %add117 to double, !dbg !874
  %mul119 = fmul double %mul111, %conv118, !dbg !874
  %conv120 = fptosi double %mul119 to i32, !dbg !874
  %add121 = add nsw i32 %add109, %conv120, !dbg !874
  %mul122 = shl nsw i32 %add121, 1, !dbg !874
  %sub123 = sub nsw i32 %33, %mul122, !dbg !874
  %arrayidx125 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 0, !dbg !874
  store i32 %sub123, i32* %arrayidx125, align 4, !dbg !874, !tbaa !651
  br label %if.end126

if.end126:                                        ; preds = %if.else101, %if.then90
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 91, !dbg !875
  %39 = load i32* %PicInterlace, align 4, !dbg !875, !tbaa !651
  %cmp127 = icmp eq i32 %39, 0, !dbg !875
  br i1 %cmp127, label %land.lhs.true129, label %if.else134, !dbg !875

land.lhs.true129:                                 ; preds = %if.end126
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 92, !dbg !875
  %40 = load i32* %MbInterlace, align 4, !dbg !875, !tbaa !651
  %cmp130 = icmp eq i32 %40, 0, !dbg !875
  br i1 %cmp130, label %if.then132, label %if.else134, !dbg !875

if.then132:                                       ; preds = %land.lhs.true129
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 102, !dbg !876
  store i32 %33, i32* %bottompoc, align 4, !dbg !876, !tbaa !651
  br label %if.end138, !dbg !876

if.else134:                                       ; preds = %land.lhs.true129, %if.end126
  %add136290 = or i32 %33, 1, !dbg !877
  %bottompoc137 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 102, !dbg !877
  store i32 %add136290, i32* %bottompoc137, align 4, !dbg !877, !tbaa !651
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %if.then132
  %41 = phi i32 [ %add136290, %if.else134 ], [ %33, %if.then132 ]
  %cmp141 = icmp slt i32 %33, %41, !dbg !878
  %.278 = select i1 %cmp141, i32 %33, i32 %41, !dbg !878
  %framepoc = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 103, !dbg !878
  store i32 %.278, i32* %framepoc, align 4, !dbg !878, !tbaa !651
  %arrayidx146 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 99, i64 1, !dbg !879
  store i32 0, i32* %arrayidx146, align 4, !dbg !879, !tbaa !651
  %call = tail call i32 (...)* @encode_one_frame() #6, !dbg !880
  %42 = load %struct.InputParameters** @input, align 8, !dbg !881, !tbaa !648
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 125, !dbg !881
  %43 = load i32* %ReportFrameStats, align 4, !dbg !881, !tbaa !651
  %tobool147 = icmp eq i32 %43, 0, !dbg !881
  br i1 %tobool147, label %for.inc, label %if.then148, !dbg !881

if.then148:                                       ; preds = %if.end138
  tail call void (...)* @report_frame_statistic() #6, !dbg !882
  %.pre288 = load %struct.InputParameters** @input, align 8, !dbg !850, !tbaa !648
  br label %for.inc, !dbg !882

for.inc:                                          ; preds = %if.end138, %if.then148
  %44 = phi %struct.InputParameters* [ %42, %if.end138 ], [ %.pre288, %if.then148 ]
  %45 = load %struct.ImageParameters** @img, align 8, !dbg !850, !tbaa !648
  %b_frame_to_code150 = getelementptr inbounds %struct.ImageParameters* %45, i64 0, i32 67, !dbg !850
  %46 = load i32* %b_frame_to_code150, align 4, !dbg !850, !tbaa !651
  %inc151 = add nsw i32 %46, 1, !dbg !850
  store i32 %inc151, i32* %b_frame_to_code150, align 4, !dbg !850, !tbaa !651
  %successive_Bframe14 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 34, !dbg !850
  %47 = load i32* %successive_Bframe14, align 4, !dbg !850, !tbaa !651
  %cmp15 = icmp slt i32 %46, %47, !dbg !850
  br i1 %cmp15, label %for.body, label %for.end, !dbg !850

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %48 = phi %struct.ImageParameters* [ %.pre289, %for.cond.preheader ], [ %45, %for.inc ]
  %b_frame_to_code13.lcssa = phi i32* [ %b_frame_to_code, %for.cond.preheader ], [ %b_frame_to_code150, %for.inc ]
  store i32 0, i32* %b_frame_to_code13.lcssa, align 4, !dbg !883, !tbaa !651
  br label %if.end276, !dbg !884

for.body160:                                      ; preds = %for.cond155.preheader, %for.inc271
  %49 = phi i32 [ %inc273, %for.inc271 ], [ 1, %for.cond155.preheader ]
  %50 = phi %struct.InputParameters* [ %72, %for.inc271 ], [ %0, %for.cond155.preheader ]
  %51 = phi %struct.ImageParameters* [ %73, %for.inc271 ], [ %.pre289, %for.cond155.preheader ]
  %nal_reference_idc161 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 113, !dbg !885
  store i32 0, i32* %nal_reference_idc161, align 4, !dbg !885, !tbaa !651
  %BRefPictures162 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 54, !dbg !887
  %52 = load i32* %BRefPictures162, align 4, !dbg !887, !tbaa !651
  %cmp163 = icmp eq i32 %52, 1, !dbg !887
  br i1 %cmp163, label %if.then165, label %if.end173, !dbg !887

if.then165:                                       ; preds = %for.body160
  store i32 1, i32* %nal_reference_idc161, align 4, !dbg !888, !tbaa !651
  %frame_num167 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 105, !dbg !890
  %53 = load i32* %frame_num167, align 4, !dbg !890, !tbaa !651
  %inc168 = add i32 %53, 1, !dbg !890
  store i32 %inc168, i32* %frame_num167, align 4, !dbg !890, !tbaa !651
  %54 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !891, !tbaa !651
  %add169 = add i32 %54, 4, !dbg !891
  %shl170 = shl nuw i32 1, %add169, !dbg !891
  %55 = add i32 %shl170, -1, !dbg !891
  %rem172 = and i32 %55, %inc168, !dbg !891
  store i32 %rem172, i32* %frame_num167, align 4, !dbg !891, !tbaa !651
  br label %if.end173, !dbg !892

if.end173:                                        ; preds = %if.then165, %for.body160
  %jumpd174 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 5, !dbg !893
  %56 = load i32* %jumpd174, align 4, !dbg !893, !tbaa !651
  %add175 = add nsw i32 %56, 1, !dbg !893
  %conv176 = sitofp i32 %add175 to double, !dbg !893
  %successive_Bframe177 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 34, !dbg !893
  %57 = load i32* %successive_Bframe177, align 4, !dbg !893, !tbaa !651
  %conv178 = sitofp i32 %57 to double, !dbg !893
  %add179 = fadd double %conv178, 1.000000e+00, !dbg !893
  %div180 = fdiv double %conv176, %add179, !dbg !893
  %b_interval181 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 65, !dbg !893
  store double %div180, double* %b_interval181, align 8, !dbg !893, !tbaa !866
  %PyramidCoding182 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 55, !dbg !894
  %58 = load i32* %PyramidCoding182, align 4, !dbg !894, !tbaa !651
  %cmp183 = icmp eq i32 %58, 3, !dbg !894
  %.div180 = select i1 %cmp183, double 1.000000e+00, double %div180, !dbg !894
  store double %.div180, double* %b_interval181, align 8, !dbg !895, !tbaa !866
  %.div180293 = select i1 %cmp183, double 1.000000e+00, double %div180, !dbg !894
  %intra_period188 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 31, !dbg !896
  %59 = load i32* %intra_period188, align 4, !dbg !896, !tbaa !651
  %tobool189 = icmp eq i32 %59, 0, !dbg !896
  br i1 %tobool189, label %if.else210, label %land.lhs.true190, !dbg !896

land.lhs.true190:                                 ; preds = %if.end173
  %idr_enable191 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 32, !dbg !896
  %60 = load i32* %idr_enable191, align 4, !dbg !896, !tbaa !651
  %tobool192 = icmp eq i32 %60, 0, !dbg !896
  br i1 %tobool192, label %if.else210, label %if.then193, !dbg !896

if.then193:                                       ; preds = %land.lhs.true190
  %number194 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 0, !dbg !897
  %61 = load i32* %number194, align 4, !dbg !897, !tbaa !651
  %62 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !897, !tbaa !651
  %sub195 = sub nsw i32 %61, %62, !dbg !897
  %rem197 = srem i32 %sub195, %59, !dbg !897
  %sub198 = add nsw i32 %rem197, -1, !dbg !897
  %mul201 = mul nsw i32 %add175, %sub198, !dbg !897
  %conv204 = sitofp i32 %49 to double, !dbg !897
  %mul205 = fmul double %.div180293, %conv204, !dbg !897
  %conv206 = fptosi double %mul205 to i32, !dbg !897
  %add207 = add nsw i32 %conv206, %mul201, !dbg !897
  %mul208 = shl nsw i32 %add207, 1, !dbg !897
  %toppoc209 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 101, !dbg !897
  store i32 %mul208, i32* %toppoc209, align 4, !dbg !897, !tbaa !651
  br label %if.end225, !dbg !897

if.else210:                                       ; preds = %land.lhs.true190, %if.end173
  %number211 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 0, !dbg !898
  %63 = load i32* %number211, align 4, !dbg !898, !tbaa !651
  %64 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !898, !tbaa !651
  %sub212 = add i32 %63, -1, !dbg !898
  %sub213 = sub i32 %sub212, %64, !dbg !898
  %mul216 = mul nsw i32 %add175, %sub213, !dbg !898
  %conv219 = sitofp i32 %49 to double, !dbg !898
  %mul220 = fmul double %.div180293, %conv219, !dbg !898
  %conv221 = fptosi double %mul220 to i32, !dbg !898
  %add222 = add nsw i32 %conv221, %mul216, !dbg !898
  %mul223 = shl nsw i32 %add222, 1, !dbg !898
  %toppoc224 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 101, !dbg !898
  store i32 %mul223, i32* %toppoc224, align 4, !dbg !898, !tbaa !651
  br label %if.end225

if.end225:                                        ; preds = %if.else210, %if.then193
  %65 = phi i32 [ %mul223, %if.else210 ], [ %mul208, %if.then193 ]
  %PicInterlace226 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 91, !dbg !899
  %66 = load i32* %PicInterlace226, align 4, !dbg !899, !tbaa !651
  %cmp227 = icmp eq i32 %66, 0, !dbg !899
  br i1 %cmp227, label %land.lhs.true229, label %if.else236, !dbg !899

land.lhs.true229:                                 ; preds = %if.end225
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 92, !dbg !899
  %67 = load i32* %MbInterlace230, align 4, !dbg !899, !tbaa !651
  %cmp231 = icmp eq i32 %67, 0, !dbg !899
  br i1 %cmp231, label %if.then233, label %if.else236, !dbg !899

if.then233:                                       ; preds = %land.lhs.true229
  %bottompoc235 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 102, !dbg !900
  store i32 %65, i32* %bottompoc235, align 4, !dbg !900, !tbaa !651
  br label %if.end240, !dbg !900

if.else236:                                       ; preds = %land.lhs.true229, %if.end225
  %add238291 = or i32 %65, 1, !dbg !901
  %bottompoc239 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 102, !dbg !901
  store i32 %add238291, i32* %bottompoc239, align 4, !dbg !901, !tbaa !651
  br label %if.end240

if.end240:                                        ; preds = %if.else236, %if.then233
  %68 = phi i32 [ %add238291, %if.else236 ], [ %65, %if.then233 ]
  %cmp243 = icmp slt i32 %65, %68, !dbg !902
  %.279 = select i1 %cmp243, i32 %65, i32 %68, !dbg !902
  %framepoc251 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 103, !dbg !902
  store i32 %.279, i32* %framepoc251, align 4, !dbg !902, !tbaa !651
  %69 = load i32* %BRefPictures162, align 4, !dbg !903, !tbaa !651
  %tobool253 = icmp eq i32 %69, 0, !dbg !903
  br i1 %tobool253, label %if.then254, label %if.else260, !dbg !903

if.then254:                                       ; preds = %if.end240
  %sub256 = shl i32 %49, 1, !dbg !904
  %mul257 = add i32 %sub256, -2, !dbg !904
  %arrayidx259 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 0, !dbg !904
  store i32 %mul257, i32* %arrayidx259, align 4, !dbg !904, !tbaa !651
  br label %if.end263, !dbg !906

if.else260:                                       ; preds = %if.end240
  %arrayidx262 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 0, !dbg !907
  store i32 -2, i32* %arrayidx262, align 4, !dbg !907, !tbaa !651
  br label %if.end263

if.end263:                                        ; preds = %if.else260, %if.then254
  %arrayidx265 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 99, i64 1, !dbg !909
  store i32 0, i32* %arrayidx265, align 4, !dbg !909, !tbaa !651
  %call266 = tail call i32 (...)* @encode_one_frame() #6, !dbg !910
  %70 = load %struct.InputParameters** @input, align 8, !dbg !911, !tbaa !648
  %ReportFrameStats267 = getelementptr inbounds %struct.InputParameters* %70, i64 0, i32 125, !dbg !911
  %71 = load i32* %ReportFrameStats267, align 4, !dbg !911, !tbaa !651
  %tobool268 = icmp eq i32 %71, 0, !dbg !911
  br i1 %tobool268, label %for.inc271, label %if.then269, !dbg !911

if.then269:                                       ; preds = %if.end263
  tail call void (...)* @report_frame_statistic() #6, !dbg !912
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !853, !tbaa !648
  br label %for.inc271, !dbg !912

for.inc271:                                       ; preds = %if.end263, %if.then269
  %72 = phi %struct.InputParameters* [ %70, %if.end263 ], [ %.pre, %if.then269 ]
  %73 = load %struct.ImageParameters** @img, align 8, !dbg !853, !tbaa !648
  %b_frame_to_code272 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 67, !dbg !853
  %74 = load i32* %b_frame_to_code272, align 4, !dbg !853, !tbaa !651
  %inc273 = add nsw i32 %74, 1, !dbg !853
  store i32 %inc273, i32* %b_frame_to_code272, align 4, !dbg !853, !tbaa !651
  %successive_Bframe157 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 34, !dbg !853
  %75 = load i32* %successive_Bframe157, align 4, !dbg !853, !tbaa !651
  %cmp158 = icmp slt i32 %74, %75, !dbg !853
  br i1 %cmp158, label %for.body160, label %if.end276, !dbg !853

if.end276:                                        ; preds = %entry, %for.cond155.preheader, %for.inc271, %for.end, %land.lhs.true
  %76 = phi %struct.ImageParameters* [ %48, %for.end ], [ %.pre289, %land.lhs.true ], [ %.pre289, %for.cond155.preheader ], [ %73, %for.inc271 ], [ %.pre289, %entry ]
  %b_frame_to_code277 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 67, !dbg !838
  store i32 0, i32* %b_frame_to_code277, align 4, !dbg !838, !tbaa !651
  ret void, !dbg !913
}

; Function Attrs: optsize
declare i32 @encode_one_frame(...) #3

; Function Attrs: optsize
declare void @report_frame_statistic(...) #3

; Function Attrs: nounwind optsize uwtable
define void @poc_based_ref_management(i32 %current_pic_num) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %current_pic_num}, i64 0, metadata !106), !dbg !914
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !109), !dbg !915
  tail call void @llvm.dbg.value(metadata !916, i64 0, metadata !110), !dbg !917
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !918, !tbaa !648
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 117, !dbg !918
  %1 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8, !dbg !918, !tbaa !648
  %cmp = icmp eq %struct.DecRefPicMarking_s* %1, null, !dbg !918
  br i1 %cmp, label %if.end, label %return, !dbg !918

if.end:                                           ; preds = %entry
  %2 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5) to i64*), align 8, !dbg !919
  %3 = trunc i64 %2 to i32, !dbg !919
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %add = sub i32 0, %5, !dbg !919
  %cmp1 = icmp eq i32 %3, %add, !dbg !919
  br i1 %cmp1, label %return, label %for.cond.preheader, !dbg !919

for.cond.preheader:                               ; preds = %if.end
  %6 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !dbg !920, !tbaa !651
  %cmp443 = icmp eq i32 %6, 0, !dbg !920
  br i1 %cmp443, label %for.end, label %for.body.lr.ph, !dbg !920

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %7 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !dbg !922, !tbaa !648
  br label %for.body, !dbg !920

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %pic_num.045 = phi i32 [ 0, %for.body.lr.ph ], [ %pic_num.1, %for.inc ]
  %min_poc.044 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %min_poc.1, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.frame_store** %7, i64 %indvars.iv, !dbg !922
  %8 = load %struct.frame_store** %arrayidx, align 8, !dbg !922, !tbaa !648
  %is_reference = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 1, !dbg !922
  %9 = load i32* %is_reference, align 4, !dbg !922, !tbaa !651
  %tobool = icmp eq i32 %9, 0, !dbg !922
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !922

land.lhs.true:                                    ; preds = %for.body
  %is_long_term = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 2, !dbg !922
  %10 = load i32* %is_long_term, align 4, !dbg !922, !tbaa !651
  %tobool7 = icmp eq i32 %10, 0, !dbg !922
  br i1 %tobool7, label %land.lhs.true8, label %for.inc, !dbg !922

land.lhs.true8:                                   ; preds = %land.lhs.true
  %poc = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 9, !dbg !922
  %11 = load i32* %poc, align 4, !dbg !922, !tbaa !651
  %cmp11 = icmp slt i32 %11, %min_poc.044, !dbg !922
  br i1 %cmp11, label %if.then12, label %for.inc, !dbg !922

if.then12:                                        ; preds = %land.lhs.true8
  %frame = getelementptr inbounds %struct.frame_store* %8, i64 0, i32 10, !dbg !924
  %12 = load %struct.storable_picture** %frame, align 8, !dbg !924, !tbaa !648
  %poc15 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 1, !dbg !924
  %13 = load i32* %poc15, align 4, !dbg !924, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !110), !dbg !924
  %pic_num19 = getelementptr inbounds %struct.storable_picture* %12, i64 0, i32 11, !dbg !926
  %14 = load i32* %pic_num19, align 4, !dbg !926, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !109), !dbg !926
  br label %for.inc, !dbg !927

for.inc:                                          ; preds = %land.lhs.true, %for.body, %land.lhs.true8, %if.then12
  %min_poc.1 = phi i32 [ %min_poc.044, %land.lhs.true ], [ %13, %if.then12 ], [ %min_poc.044, %land.lhs.true8 ], [ %min_poc.044, %for.body ]
  %pic_num.1 = phi i32 [ %pic_num.045, %land.lhs.true ], [ %14, %if.then12 ], [ %pic_num.045, %land.lhs.true8 ], [ %pic_num.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !920
  %15 = trunc i64 %indvars.iv.next to i32, !dbg !920
  %cmp4 = icmp ult i32 %15, %6, !dbg !920
  br i1 %cmp4, label %for.body, label %for.end, !dbg !920

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %pic_num.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %pic_num.1, %for.inc ]
  %call = tail call noalias i8* @calloc(i64 1, i64 32) #6, !dbg !928
  %16 = bitcast i8* %call to %struct.DecRefPicMarking_s*, !dbg !928
  tail call void @llvm.dbg.value(metadata !{%struct.DecRefPicMarking_s* %16}, i64 0, metadata !111), !dbg !928
  %cmp21 = icmp eq i8* %call, null, !dbg !928
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !928

if.then22:                                        ; preds = %for.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !928
  br label %if.end23, !dbg !928

if.end23:                                         ; preds = %if.then22, %for.end
  %Next = getelementptr inbounds i8* %call, i64 24, !dbg !929
  %17 = bitcast i8* %Next to %struct.DecRefPicMarking_s**, !dbg !929
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %17, align 8, !dbg !929, !tbaa !648
  %memory_management_control_operation = bitcast i8* %call to i32*, !dbg !930
  store i32 0, i32* %memory_management_control_operation, align 4, !dbg !930, !tbaa !651
  %call24 = tail call noalias i8* @calloc(i64 1, i64 32) #6, !dbg !931
  %18 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*, !dbg !931
  tail call void @llvm.dbg.value(metadata !{%struct.DecRefPicMarking_s* %18}, i64 0, metadata !123), !dbg !931
  %cmp25 = icmp eq i8* %call24, null, !dbg !931
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !931

if.then26:                                        ; preds = %if.end23
  tail call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8]* @.str14, i64 0, i64 0)) #6, !dbg !931
  br label %if.end27, !dbg !931

if.end27:                                         ; preds = %if.end23, %if.then26
  %Next28 = getelementptr inbounds i8* %call24, i64 24, !dbg !932
  %19 = bitcast i8* %Next28 to %struct.DecRefPicMarking_s**, !dbg !932
  store %struct.DecRefPicMarking_s* %16, %struct.DecRefPicMarking_s** %19, align 8, !dbg !932, !tbaa !648
  %memory_management_control_operation29 = bitcast i8* %call24 to i32*, !dbg !933
  store i32 1, i32* %memory_management_control_operation29, align 4, !dbg !933, !tbaa !651
  %sub = add i32 %current_pic_num, -1, !dbg !934
  %sub30 = sub i32 %sub, %pic_num.0.lcssa, !dbg !934
  %difference_of_pic_nums_minus1 = getelementptr inbounds i8* %call24, i64 4, !dbg !934
  %20 = bitcast i8* %difference_of_pic_nums_minus1 to i32*, !dbg !934
  store i32 %sub30, i32* %20, align 4, !dbg !934, !tbaa !651
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !935, !tbaa !648
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 117, !dbg !935
  store %struct.DecRefPicMarking_s* %18, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8, !dbg !935, !tbaa !648
  br label %return, !dbg !935

return:                                           ; preds = %entry, %if.end, %if.end27
  ret void, !dbg !935
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !41, metadata !42, metadata !124, metadata !41, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !11, metadata !26, metadata !31, metadata !36}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10}
!6 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!7 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!8 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!9 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!10 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!11 = metadata !{i32 786436, metadata !12, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!12 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!14 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!15 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!16 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!17 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!18 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!19 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!20 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!21 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!22 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!23 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!24 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!25 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!26 = metadata !{i32 786436, metadata !27, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30}
!29 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!30 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!31 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !35}
!33 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!34 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!35 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!36 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39, metadata !40}
!38 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!39 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!40 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!41 = metadata !{i32 0}
!42 = metadata !{metadata !43, metadata !67, metadata !85, metadata !88, metadata !89, metadata !101, metadata !102}
!43 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"create_pyramid", metadata !"create_pyramid", metadata !"", i32 32, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @create_pyramid, null, null, metadata !47, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [create_pyramid]
!44 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null}
!47 = metadata !{metadata !48, metadata !50, metadata !51, metadata !52, metadata !54, metadata !55, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!48 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !44, i32 34, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 34]
!49 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!50 = metadata !{i32 786688, metadata !43, metadata !"j", metadata !44, i32 34, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 34]
!51 = metadata !{i32 786688, metadata !43, metadata !"centerB", metadata !44, i32 35, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [centerB] [line 35]
!52 = metadata !{i32 786688, metadata !53, metadata !"GOPlevels", metadata !44, i32 61, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GOPlevels] [line 61]
!53 = metadata !{i32 786443, metadata !1, metadata !43, i32 60, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!54 = metadata !{i32 786688, metadata !53, metadata !"Bframes", metadata !44, i32 62, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bframes] [line 62]
!55 = metadata !{i32 786688, metadata !53, metadata !"curGOPLevelfrm", metadata !44, i32 63, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curGOPLevelfrm] [line 63]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!57 = metadata !{i32 786688, metadata !53, metadata !"curGOPLeveldist", metadata !44, i32 63, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curGOPLeveldist] [line 63]
!58 = metadata !{i32 786688, metadata !53, metadata !"curlevel", metadata !44, i32 64, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curlevel] [line 64]
!59 = metadata !{i32 786688, metadata !53, metadata !"prvlevelrefs", metadata !44, i32 65, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prvlevelrefs] [line 65]
!60 = metadata !{i32 786688, metadata !53, metadata !"levelrefs", metadata !44, i32 66, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levelrefs] [line 66]
!61 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !44, i32 67, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 67]
!62 = metadata !{i32 786688, metadata !63, metadata !"tempnum", metadata !44, i32 110, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempnum] [line 110]
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 109, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 108, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 107, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!66 = metadata !{i32 786443, metadata !1, metadata !53, i32 106, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!67 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"gop_pyramid", metadata !"gop_pyramid", metadata !"", i32 153, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, %struct.GOP_DATA*)* @gop_pyramid, null, null, metadata !80, i32 154} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 154] [gop_pyramid]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !49, metadata !49, metadata !49, metadata !70}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!74 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!75 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!76 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!77 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!78 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!79 = metadata !{i32 786445, metadata !4, metadata !72, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786689, metadata !67, metadata !"level", metadata !44, i32 16777369, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 153]
!82 = metadata !{i32 786689, metadata !67, metadata !"frm_no", metadata !44, i32 33554585, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frm_no] [line 153]
!83 = metadata !{i32 786689, metadata !67, metadata !"frames", metadata !44, i32 50331801, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frames] [line 153]
!84 = metadata !{i32 786689, metadata !67, metadata !"pyramid_structure", metadata !44, i32 67109017, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pyramid_structure] [line 153]
!85 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"init_gop_structure", metadata !"init_gop_structure", metadata !"", i32 190, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_gop_structure, null, null, metadata !86, i32 191} ; [ DW_TAG_subprogram ] [line 190] [def] [scope 191] [init_gop_structure]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786688, metadata !85, metadata !"max_gopsize", metadata !44, i32 192, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_gopsize] [line 192]
!88 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"clear_gop_structure", metadata !"clear_gop_structure", metadata !"", i32 206, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @clear_gop_structure, null, null, metadata !41, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [clear_gop_structure]
!89 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"interpret_gop_structure", metadata !"interpret_gop_structure", metadata !"", i32 219, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @interpret_gop_structure, null, null, metadata !90, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [interpret_gop_structure]
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!91 = metadata !{i32 786688, metadata !89, metadata !"nLength", metadata !44, i32 222, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLength] [line 222]
!92 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !44, i32 223, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 223]
!93 = metadata !{i32 786688, metadata !89, metadata !"k", metadata !44, i32 223, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 223]
!94 = metadata !{i32 786688, metadata !89, metadata !"qp", metadata !44, i32 223, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp] [line 223]
!95 = metadata !{i32 786688, metadata !89, metadata !"display_no", metadata !44, i32 223, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [display_no] [line 223]
!96 = metadata !{i32 786688, metadata !89, metadata !"slice_read", metadata !44, i32 224, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slice_read] [line 224]
!97 = metadata !{i32 786688, metadata !89, metadata !"order_read", metadata !44, i32 224, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [order_read] [line 224]
!98 = metadata !{i32 786688, metadata !89, metadata !"stored_read", metadata !44, i32 224, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stored_read] [line 224]
!99 = metadata !{i32 786688, metadata !89, metadata !"qp_read", metadata !44, i32 224, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp_read] [line 224]
!100 = metadata !{i32 786688, metadata !89, metadata !"coded_frame", metadata !44, i32 225, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coded_frame] [line 225]
!101 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"encode_enhancement_layer", metadata !"encode_enhancement_layer", metadata !"", i32 363, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @encode_enhancement_layer, null, null, metadata !41, i32 364} ; [ DW_TAG_subprogram ] [line 363] [def] [scope 364] [encode_enhancement_layer]
!102 = metadata !{i32 786478, metadata !1, metadata !44, metadata !"poc_based_ref_management", metadata !"poc_based_ref_management", metadata !"", i32 482, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @poc_based_ref_management, null, null, metadata !105, i32 483} ; [ DW_TAG_subprogram ] [line 482] [def] [scope 483] [poc_based_ref_management]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !49}
!105 = metadata !{metadata !106, metadata !107, metadata !109, metadata !110, metadata !111, metadata !123}
!106 = metadata !{i32 786689, metadata !102, metadata !"current_pic_num", metadata !44, i32 16777698, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [current_pic_num] [line 482]
!107 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !44, i32 484, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 484]
!108 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!109 = metadata !{i32 786688, metadata !102, metadata !"pic_num", metadata !44, i32 484, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_num] [line 484]
!110 = metadata !{i32 786688, metadata !102, metadata !"min_poc", metadata !44, i32 486, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_poc] [line 486]
!111 = metadata !{i32 786688, metadata !102, metadata !"tmp_drpm", metadata !44, i32 487, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_drpm] [line 487]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_t]
!113 = metadata !{i32 786454, metadata !4, null, metadata !"DecRefPicMarking_t", i32 324, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [DecRefPicMarking_t] [line 324, size 0, align 0, offset 0] [from DecRefPicMarking_s]
!114 = metadata !{i32 786451, metadata !4, null, metadata !"DecRefPicMarking_s", i32 316, i64 256, i64 64, i32 0, i32 0, null, metadata !115, i32 0, null, null} ; [ DW_TAG_structure_type ] [DecRefPicMarking_s] [line 316, size 256, align 64, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!116 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"memory_management_control_operation", i32 318, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [memory_management_control_operation] [line 318, size 32, align 32, offset 0] [from int]
!117 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"difference_of_pic_nums_minus1", i32 319, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [difference_of_pic_nums_minus1] [line 319, size 32, align 32, offset 32] [from int]
!118 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"long_term_pic_num", i32 320, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [long_term_pic_num] [line 320, size 32, align 32, offset 64] [from int]
!119 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"long_term_frame_idx", i32 321, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [long_term_frame_idx] [line 321, size 32, align 32, offset 96] [from int]
!120 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"max_long_term_frame_idx_plus1", i32 322, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [max_long_term_frame_idx_plus1] [line 322, size 32, align 32, offset 128] [from int]
!121 = metadata !{i32 786445, metadata !4, metadata !114, metadata !"Next", i32 323, i64 64, i64 64, i64 192, i32 0, metadata !122} ; [ DW_TAG_member ] [Next] [line 323, size 64, align 64, offset 192] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_s]
!123 = metadata !{i32 786688, metadata !102, metadata !"tmp_drpm2", metadata !44, i32 487, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_drpm2] [line 487]
!124 = metadata !{metadata !125, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !326, metadata !328, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !373, metadata !468, metadata !469, metadata !470, metadata !472, metadata !473, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !492, metadata !493, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !509, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !521, metadata !524, metadata !525, metadata !526, metadata !527, metadata !530, metadata !533, metadata !534, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646}
!125 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !126, i32 558, metadata !127, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!126 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!128 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !314, metadata !315, metadata !317, metadata !318}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !134} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !135, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!136 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!137 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !138, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !221, metadata !260, metadata !287, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !309}
!139 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!140 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!141 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!142 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!143 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!144 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!145 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !146} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!147 = metadata !{i32 786454, metadata !4, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!148 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!149 = metadata !{metadata !150, metadata !169, metadata !193}
!150 = metadata !{i32 786445, metadata !4, metadata !148, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!152 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!153 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !168}
!155 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!156 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!157 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !158} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!158 = metadata !{i32 786454, metadata !4, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!159 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!160 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!161 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!162 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !158} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!163 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !158} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!164 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !49} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!166 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !167} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!168 = metadata !{i32 786445, metadata !4, metadata !153, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!169 = metadata !{i32 786445, metadata !4, metadata !148, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !170} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!170 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!171 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!173 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!174 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!175 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!176 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !108} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!177 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !108} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!178 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !167} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!179 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !56} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!180 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !108} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!181 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !108} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!182 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!183 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !108} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!184 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !108} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!185 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !167} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!186 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!187 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !49} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!188 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !49} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!189 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !49} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!190 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !49} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!191 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!192 = metadata !{i32 786445, metadata !4, metadata !171, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !49} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!193 = metadata !{i32 786445, metadata !4, metadata !148, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !194} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!195 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{metadata !49, metadata !197, metadata !220}
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!198 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!199 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !213}
!201 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!202 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!203 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!204 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!205 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!206 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !108} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!207 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!208 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !49} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!209 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !210} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!211 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!212 = metadata !{null, metadata !49, metadata !49, metadata !56, metadata !56}
!213 = metadata !{i32 786445, metadata !4, metadata !199, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !214} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{null, metadata !217, metadata !218}
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!218 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!221 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !222} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!223 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!224 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !225, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !239, metadata !244, metadata !248, metadata !252, metadata !256, metadata !257}
!226 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!227 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !228, metadata !236, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!228 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!229 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !230, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!230 = metadata !{metadata !231, metadata !233, metadata !234}
!231 = metadata !{i32 786445, metadata !4, metadata !229, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !232} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!232 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!233 = metadata !{i32 786445, metadata !4, metadata !229, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !159} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!234 = metadata !{i32 786445, metadata !4, metadata !229, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !235} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!235 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!236 = metadata !{metadata !237, metadata !238}
!237 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!238 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!239 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !240} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!240 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !228, metadata !241, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!241 = metadata !{metadata !242, metadata !243}
!242 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!243 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!244 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !245} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !228, metadata !246, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!246 = metadata !{metadata !242, metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!248 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !249} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!249 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !228, metadata !250, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!250 = metadata !{metadata !242, metadata !251}
!251 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!252 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !253} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!253 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !228, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!256 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !253} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!257 = metadata !{i32 786445, metadata !4, metadata !224, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !258} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!258 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !228, metadata !259, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!259 = metadata !{metadata !237}
!260 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !261} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!262 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!263 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !264, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!264 = metadata !{metadata !265, metadata !268, metadata !269, metadata !272, metadata !275, metadata !279, metadata !280, metadata !284, metadata !285, metadata !286}
!265 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!266 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !228, metadata !267, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!267 = metadata !{metadata !242}
!268 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !253} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!269 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !270} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!270 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !228, metadata !271, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!271 = metadata !{metadata !237, metadata !255}
!272 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !273} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!273 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !228, metadata !274, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!274 = metadata !{metadata !247, metadata !255}
!275 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !276} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!276 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !228, metadata !277, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!277 = metadata !{metadata !247, metadata !278}
!278 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!279 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !276} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!280 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !281} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!281 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !228, metadata !282, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!282 = metadata !{metadata !247, metadata !283}
!283 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!284 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !281} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!285 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !276} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!286 = metadata !{i32 786445, metadata !4, metadata !263, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !276} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!287 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !288} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!289 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !290} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!290 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !291, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!291 = metadata !{metadata !292, metadata !293, metadata !294}
!292 = metadata !{i32 786445, metadata !4, metadata !290, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!293 = metadata !{i32 786445, metadata !4, metadata !290, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!294 = metadata !{i32 786445, metadata !4, metadata !290, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !295} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!296 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!297 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !56} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!298 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!299 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !56} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!300 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !49} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!301 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !56} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!302 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !56} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!303 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !56} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!304 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !305} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !306} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!306 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{metadata !308, metadata !49}
!308 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!309 = metadata !{i32 786445, metadata !4, metadata !137, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !310} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !49, metadata !311, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!311 = metadata !{metadata !237, metadata !242}
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!314 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !49} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!315 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !316} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!316 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!317 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !316} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!318 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !316} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!319 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !126, i32 559, metadata !127, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!320 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !126, i32 560, metadata !127, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!321 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !126, i32 561, metadata !127, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!322 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !126, i32 562, metadata !127, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!323 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !126, i32 565, metadata !324, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !232} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!326 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !126, i32 566, metadata !327, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !324} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!328 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !126, i32 567, metadata !329, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!330 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !126, i32 569, metadata !108, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!331 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !126, i32 570, metadata !108, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!332 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !126, i32 572, metadata !49, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !126, i32 572, metadata !49, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!334 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !126, i32 573, metadata !335, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!335 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!336 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !337} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!337 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !349, metadata !350, metadata !351, metadata !352, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372}
!339 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!340 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!341 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!342 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !308} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!343 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !308} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!344 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !308} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!345 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !346} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!346 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !49, metadata !347, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!347 = metadata !{metadata !348}
!348 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!349 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !308} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!350 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !108} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!351 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !108} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!352 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !353} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!353 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !108, metadata !347, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!354 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !353} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!355 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !353} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!356 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !308} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!357 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !108} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!358 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !108} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!359 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !167} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!360 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !49} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!361 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !49} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!362 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !308} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!363 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!364 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !49} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!365 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !49} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!366 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !49} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!367 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !49} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!368 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !49} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!369 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !308} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!370 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !308} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!371 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !308} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!372 = metadata !{i32 786445, metadata !27, metadata !337, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !308} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!373 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !126, i32 574, metadata !374, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!375 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !376} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!376 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !377, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!377 = metadata !{metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415}
!378 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!379 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!380 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !308} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!381 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !308} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!382 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !308} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!383 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !308} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!384 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !108} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!385 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !108} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!386 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!387 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !308} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!388 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !346} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!389 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !108} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!390 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !108} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!391 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !108} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!392 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !108} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!393 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !108} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!394 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !308} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!395 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!396 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !49} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!397 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !108} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!398 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !399} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!399 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !49, metadata !400, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!400 = metadata !{metadata !401}
!401 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!402 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !108} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!403 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !308} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!404 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !108} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!405 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !108} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!406 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !308} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!407 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !308} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!408 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !308} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!409 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !308} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!410 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !108} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!411 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !108} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!412 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !108} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!413 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !108} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!414 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !308} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!415 = metadata !{i32 786445, metadata !27, metadata !376, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !416} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!416 = metadata !{i32 786454, metadata !27, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!417 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !418, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!418 = metadata !{metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467}
!419 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!420 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!421 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!422 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !108} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!423 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !308} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!424 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !308} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!425 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !308} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!426 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !108} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!427 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !308} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!428 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !308} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!429 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !108} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!430 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !108} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!431 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !108} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!432 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !308} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!433 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !108} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!434 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !108} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!435 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !308} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!436 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !108} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!437 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !108} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!438 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !308} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!439 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !308} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!440 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !441} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!441 = metadata !{i32 786454, metadata !27, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!442 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !446, metadata !447, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456}
!444 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!445 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !108} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!446 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !108} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!447 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !448} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!448 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !108, metadata !449, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!449 = metadata !{metadata !450}
!450 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!451 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !448} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!452 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !448} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!453 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !108} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!454 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !108} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!455 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !108} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!456 = metadata !{i32 786445, metadata !27, metadata !442, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !108} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!457 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !308} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!458 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !441} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!459 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !308} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!460 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !308} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!461 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !308} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!462 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !108} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!463 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !108} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!464 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !108} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!465 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !108} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!466 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !108} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!467 = metadata !{i32 786445, metadata !27, metadata !417, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !108} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!468 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !126, i32 578, metadata !49, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !126, i32 579, metadata !49, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !126, i32 583, metadata !471, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!472 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !126, i32 584, metadata !471, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!473 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !126, i32 585, metadata !474, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!474 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!475 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !126, i32 586, metadata !49, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!476 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !126, i32 587, metadata !49, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!477 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !126, i32 588, metadata !49, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!478 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !126, i32 589, metadata !49, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !126, i32 592, metadata !324, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !126, i32 593, metadata !324, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !126, i32 595, metadata !327, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !126, i32 596, metadata !327, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !126, i32 598, metadata !324, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !126, i32 599, metadata !327, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !126, i32 601, metadata !324, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!486 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !126, i32 602, metadata !327, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!487 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !126, i32 604, metadata !488, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!488 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !490} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!490 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!491 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!492 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !126, i32 605, metadata !489, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!493 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !126, i32 608, metadata !494, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!494 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!495 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !126, i32 609, metadata !494, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !126, i32 610, metadata !49, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !126, i32 612, metadata !49, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !126, i32 612, metadata !49, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !126, i32 612, metadata !49, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !126, i32 613, metadata !49, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !126, i32 613, metadata !49, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !126, i32 613, metadata !49, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!503 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !126, i32 614, metadata !49, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!504 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !126, i32 617, metadata !505, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!505 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !506, metadata !507, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!506 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!507 = metadata !{metadata !508}
!508 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!509 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !126, i32 620, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!510 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !49, metadata !511, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!511 = metadata !{metadata !512, metadata !512}
!512 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!513 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !126, i32 620, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !126, i32 620, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !126, i32 621, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !126, i32 621, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !126, i32 621, metadata !510, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!518 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !126, i32 622, metadata !519, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!519 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !49, metadata !520, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!520 = metadata !{metadata !237, metadata !512, metadata !512}
!521 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !126, i32 623, metadata !522, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!522 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !49, metadata !523, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!523 = metadata !{metadata !242, metadata !255, metadata !255}
!524 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !126, i32 623, metadata !522, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !126, i32 624, metadata !522, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !126, i32 624, metadata !522, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !126, i32 625, metadata !528, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!528 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !49, metadata !529, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!529 = metadata !{metadata !255, metadata !255}
!530 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !126, i32 625, metadata !531, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!531 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !49, metadata !532, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!532 = metadata !{metadata !512}
!533 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !126, i32 1201, metadata !70, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!534 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !126, i32 1202, metadata !535, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!535 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!536 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !537} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!537 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !538, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!538 = metadata !{metadata !539, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !558, metadata !559, metadata !563, metadata !564, metadata !565, metadata !566, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574}
!539 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !540} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!540 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!541 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !510} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!542 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !510} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!543 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !510} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!544 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !474} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!545 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !471} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!546 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !49} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!547 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !49} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!548 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !549} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!549 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !49, metadata !254, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!550 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !549} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!551 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !329} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!552 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !531} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!553 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !49} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!554 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !555} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!555 = metadata !{i32 786454, metadata !4, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !556} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!556 = metadata !{i32 786454, metadata !4, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!557 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!558 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !49} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!559 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !560} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!560 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !561} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!561 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!563 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !560} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!564 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !560} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!565 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !560} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!566 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !567} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!567 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !491, metadata !523, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!568 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !49} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!569 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !49} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!570 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !49} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!571 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !49} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!572 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !49} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!573 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !49} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!574 = metadata !{i32 786445, metadata !4, metadata !537, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !49} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!575 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !126, i32 1203, metadata !536, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!576 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !126, i32 1203, metadata !536, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!577 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !126, i32 1204, metadata !536, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!578 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !126, i32 1204, metadata !536, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!579 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !126, i32 1230, metadata !580, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!580 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !581} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!581 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!582 = metadata !{i32 786451, metadata !583, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !584, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!583 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!584 = metadata !{metadata !585, metadata !586, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !606, metadata !607, metadata !608, metadata !609, metadata !611, metadata !612, metadata !614, metadata !618, metadata !620, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !628, metadata !629}
!585 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!586 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!587 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!588 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!589 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!590 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!591 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!592 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!593 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!594 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!595 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!596 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!597 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !587} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!598 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !599} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!599 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !600} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!600 = metadata !{i32 786451, metadata !583, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !601, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!601 = metadata !{metadata !602, metadata !603, metadata !605}
!602 = metadata !{i32 786445, metadata !583, metadata !600, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !599} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!603 = metadata !{i32 786445, metadata !583, metadata !600, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !604} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!604 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !582} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!605 = metadata !{i32 786445, metadata !583, metadata !600, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!606 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !604} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!607 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !49} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!608 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !49} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!609 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !610} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!610 = metadata !{i32 786454, metadata !583, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!611 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !232} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!612 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !613} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!613 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!614 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !615} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!615 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !506, metadata !616, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!616 = metadata !{metadata !617}
!617 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!618 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !619} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!619 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!620 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !621} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!621 = metadata !{i32 786454, metadata !583, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!622 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !619} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!623 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !619} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!624 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !619} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!625 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !619} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!626 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !627} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!627 = metadata !{i32 786454, metadata !583, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!628 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !49} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!629 = metadata !{i32 786445, metadata !583, metadata !582, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !630} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!630 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !506, metadata !631, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!631 = metadata !{metadata !632}
!632 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!633 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !126, i32 1231, metadata !580, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!634 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !126, i32 1232, metadata !580, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!635 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !126, i32 1233, metadata !49, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !126, i32 1234, metadata !49, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !126, i32 1237, metadata !638, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!638 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !49, metadata !631, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!639 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !126, i32 1238, metadata !638, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!640 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !126, i32 1239, metadata !638, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!641 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !126, i32 1240, metadata !638, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!642 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !126, i32 1241, metadata !638, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!643 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !126, i32 1242, metadata !638, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!644 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !126, i32 1456, metadata !49, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!645 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !126, i32 1465, metadata !49, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!646 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !126, i32 1466, metadata !49, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!647 = metadata !{i32 35, i32 0, metadata !43, null}
!648 = metadata !{metadata !"any pointer", metadata !649}
!649 = metadata !{metadata !"omnipotent char", metadata !650}
!650 = metadata !{metadata !"Simple C/C++ TBAA"}
!651 = metadata !{metadata !"int", metadata !649}
!652 = metadata !{i32 37, i32 0, metadata !43, null}
!653 = metadata !{i32 69, i32 0, metadata !53, null}
!654 = metadata !{i32 39, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !656, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!656 = metadata !{i32 786443, metadata !1, metadata !43, i32 38, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!657 = metadata !{i32 43, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !659, i32 42, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!659 = metadata !{i32 786443, metadata !1, metadata !655, i32 40, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!660 = metadata !{i32 41, i32 0, metadata !659, null}
!661 = metadata !{i32 44, i32 0, metadata !658, null}
!662 = metadata !{i32 45, i32 0, metadata !658, null}
!663 = metadata !{i32 46, i32 0, metadata !658, null}
!664 = metadata !{i32 47, i32 0, metadata !658, null}
!665 = metadata !{i32 51, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !659, i32 49, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!667 = metadata !{i32 52, i32 0, metadata !666, null}
!668 = metadata !{i32 53, i32 0, metadata !666, null}
!669 = metadata !{i32 71, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !53, i32 70, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!671 = metadata !{i32 72, i32 0, metadata !670, null}
!672 = metadata !{i32 75, i32 0, metadata !53, null}
!673 = metadata !{i32 76, i32 0, metadata !53, null}
!674 = metadata !{i32* undef}
!675 = metadata !{i32 77, i32 0, metadata !53, null}
!676 = metadata !{i32 79, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !53, i32 79, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!678 = metadata !{i32 81, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !677, i32 80, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!680 = metadata !{i32 85, i32 0, metadata !53, null}
!681 = metadata !{i32 82, i32 0, metadata !679, null}
!682 = metadata !{i32 87, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !53, i32 86, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!684 = metadata !{i32 89, i32 0, metadata !683, null}
!685 = metadata !{i32 91, i32 0, metadata !683, null}
!686 = metadata !{i32 96, i32 0, metadata !53, null}
!687 = metadata !{i32 99, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !53, i32 99, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!689 = metadata !{i32 101, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !688, i32 100, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!691 = metadata !{i32 106, i32 0, metadata !66, null}
!692 = metadata !{i32 112, i32 0, metadata !63, null}
!693 = metadata !{i32 108, i32 0, metadata !64, null}
!694 = metadata !{i32 114, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !63, i32 113, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!696 = metadata !{i32 115, i32 0, metadata !695, null}
!697 = metadata !{i32 116, i32 0, metadata !695, null}
!698 = metadata !{i32 118, i32 0, metadata !695, null}
!699 = metadata !{i32 119, i32 0, metadata !695, null}
!700 = metadata !{i32 120, i32 0, metadata !695, null}
!701 = metadata !{i32 122, i32 0, metadata !695, null}
!702 = metadata !{i32 123, i32 0, metadata !695, null}
!703 = metadata !{i32 124, i32 0, metadata !695, null}
!704 = metadata !{i32 126, i32 0, metadata !695, null}
!705 = metadata !{i32 127, i32 0, metadata !695, null}
!706 = metadata !{i32 128, i32 0, metadata !695, null}
!707 = metadata !{i32 130, i32 0, metadata !695, null}
!708 = metadata !{i32 131, i32 0, metadata !695, null}
!709 = metadata !{i32 132, i32 0, metadata !695, null}
!710 = metadata !{i32 134, i32 0, metadata !695, null}
!711 = metadata !{i32 135, i32 0, metadata !695, null}
!712 = metadata !{i32 136, i32 0, metadata !695, null}
!713 = metadata !{i32 138, i32 0, metadata !695, null}
!714 = metadata !{i32 144, i32 0, metadata !43, null}
!715 = metadata !{i32 153, i32 0, metadata !67, null}
!716 = metadata !{i32 156, i32 0, metadata !67, null}
!717 = metadata !{i32 158, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !67, i32 157, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!719 = metadata !{i32 160, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !718, i32 159, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!721 = metadata !{i32 161, i32 0, metadata !720, null}
!722 = metadata !{i32 162, i32 0, metadata !720, null}
!723 = metadata !{i32 163, i32 0, metadata !720, null}
!724 = metadata !{i32 164, i32 0, metadata !720, null}
!725 = metadata !{i32 168, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !67, i32 167, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!727 = metadata !{i32 170, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !726, i32 169, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!729 = metadata !{i32 171, i32 0, metadata !728, null}
!730 = metadata !{i32 172, i32 0, metadata !728, null}
!731 = metadata !{i32 173, i32 0, metadata !728, null}
!732 = metadata !{i32 174, i32 0, metadata !728, null}
!733 = metadata !{i32 177, i32 0, metadata !726, null}
!734 = metadata !{i32 178, i32 0, metadata !726, null}
!735 = metadata !{i32 180, i32 0, metadata !67, null}
!736 = metadata !{i32 192, i32 0, metadata !85, null}
!737 = metadata !{i32 194, i32 0, metadata !85, null}
!738 = metadata !{i32 195, i32 0, metadata !85, null}
!739 = metadata !{i32 196, i32 0, metadata !85, null}
!740 = metadata !{i32 197, i32 0, metadata !85, null}
!741 = metadata !{i32 208, i32 0, metadata !88, null}
!742 = metadata !{i32 209, i32 0, metadata !88, null}
!743 = metadata !{i32 210, i32 0, metadata !88, null}
!744 = metadata !{i32 222, i32 0, metadata !89, null}
!745 = metadata !{i32 223, i32 0, metadata !89, null}
!746 = metadata !{i32 224, i32 0, metadata !89, null}
!747 = metadata !{i32 225, i32 0, metadata !89, null}
!748 = metadata !{i32 228, i32 0, metadata !89, null}
!749 = metadata !{i32 327, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !751, i32 288, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!751 = metadata !{i32 786443, metadata !1, metadata !752, i32 258, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!752 = metadata !{i32 786443, metadata !1, metadata !753, i32 232, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!753 = metadata !{i32 786443, metadata !1, metadata !754, i32 231, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!754 = metadata !{i32 786443, metadata !1, metadata !89, i32 229, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!755 = metadata !{i32 231, i32 0, metadata !753, null}
!756 = metadata !{i32 234, i32 0, metadata !752, null}
!757 = metadata !{i32 236, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !752, i32 235, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!759 = metadata !{i32 240, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !758, i32 237, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!761 = metadata !{i32 241, i32 0, metadata !760, null}
!762 = metadata !{i32 244, i32 0, metadata !760, null}
!763 = metadata !{i32 245, i32 0, metadata !760, null}
!764 = metadata !{i32 248, i32 0, metadata !760, null}
!765 = metadata !{i32 249, i32 0, metadata !760, null}
!766 = metadata !{i32 251, i32 0, metadata !760, null}
!767 = metadata !{i32 252, i32 0, metadata !760, null}
!768 = metadata !{i32 253, i32 0, metadata !760, null}
!769 = metadata !{i32 260, i32 0, metadata !751, null}
!770 = metadata !{i32 262, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !751, i32 261, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!772 = metadata !{metadata !"short", metadata !649}
!773 = metadata !{i32 264, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !771, i32 263, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!775 = metadata !{i32 265, i32 0, metadata !774, null}
!776 = metadata !{i32 1}
!777 = metadata !{i32 266, i32 0, metadata !774, null}
!778 = metadata !{i32 267, i32 0, metadata !774, null}
!779 = metadata !{i32 269, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !774, i32 268, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!781 = metadata !{i32 270, i32 0, metadata !780, null}
!782 = metadata !{i32 271, i32 0, metadata !780, null}
!783 = metadata !{i32 272, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !774, i32 272, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!785 = metadata !{i32 274, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !784, i32 273, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!787 = metadata !{i32 276, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !786, i32 275, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!789 = metadata !{i32 277, i32 0, metadata !788, null}
!790 = metadata !{i32 278, i32 0, metadata !788, null}
!791 = metadata !{i32 283, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !771, i32 282, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!793 = metadata !{i32 284, i32 0, metadata !792, null}
!794 = metadata !{i32 289, i32 0, metadata !750, null}
!795 = metadata !{i32 291, i32 0, metadata !796, null}
!796 = metadata !{i32 786443, metadata !1, metadata !750, i32 290, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!797 = metadata !{i32 295, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !796, i32 292, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!799 = metadata !{i32 296, i32 0, metadata !798, null}
!800 = metadata !{i32 299, i32 0, metadata !798, null}
!801 = metadata !{i32 300, i32 0, metadata !798, null}
!802 = metadata !{i32 302, i32 0, metadata !798, null}
!803 = metadata !{i32 303, i32 0, metadata !798, null}
!804 = metadata !{i32 304, i32 0, metadata !798, null}
!805 = metadata !{i32 308, i32 0, metadata !750, null}
!806 = metadata !{i32 310, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !750, i32 309, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!808 = metadata !{i32 312, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !807, i32 311, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!810 = metadata !{i32 313, i32 0, metadata !809, null}
!811 = metadata !{i32 314, i32 0, metadata !809, null}
!812 = metadata !{i32 315, i32 0, metadata !809, null}
!813 = metadata !{i32 317, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !809, i32 316, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!815 = metadata !{i32 318, i32 0, metadata !814, null}
!816 = metadata !{i32 319, i32 0, metadata !814, null}
!817 = metadata !{i32 323, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !807, i32 322, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!819 = metadata !{i32 324, i32 0, metadata !818, null}
!820 = metadata !{i32 329, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !750, i32 328, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!822 = metadata !{i32 330, i32 0, metadata !821, null}
!823 = metadata !{i32 331, i32 0, metadata !821, null}
!824 = metadata !{i32 332, i32 0, metadata !821, null}
!825 = metadata !{i32 333, i32 0, metadata !821, null}
!826 = metadata !{i32 334, i32 0, metadata !821, null}
!827 = metadata !{i32 335, i32 0, metadata !821, null}
!828 = metadata !{i32 337, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !821, i32 336, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!830 = metadata !{i32 338, i32 0, metadata !829, null}
!831 = metadata !{i32 339, i32 0, metadata !829, null}
!832 = metadata !{i32 349, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !89, i32 348, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!834 = metadata !{i32 350, i32 0, metadata !833, null}
!835 = metadata !{i32 353, i32 0, metadata !89, null}
!836 = metadata !{i32 354, i32 0, metadata !89, null}
!837 = metadata !{i32 365, i32 0, metadata !101, null}
!838 = metadata !{i32 478, i32 0, metadata !101, null}
!839 = metadata !{i32 367, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !101, i32 366, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!841 = metadata !{i32 369, i32 0, metadata !840, null}
!842 = metadata !{i32 370, i32 0, metadata !840, null}
!843 = metadata !{i32 374, i32 0, metadata !840, null}
!844 = metadata !{i32 376, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !840, i32 375, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!846 = metadata !{i32 377, i32 0, metadata !845, null}
!847 = metadata !{i32 378, i32 0, metadata !845, null}
!848 = metadata !{i32 379, i32 0, metadata !840, null}
!849 = metadata !{i32 382, i32 0, metadata !840, null}
!850 = metadata !{i32 384, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !852, i32 384, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!852 = metadata !{i32 786443, metadata !1, metadata !840, i32 383, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!853 = metadata !{i32 431, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !855, i32 431, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!855 = metadata !{i32 786443, metadata !1, metadata !840, i32 430, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!856 = metadata !{i32 387, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !851, i32 385, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!858 = metadata !{i32 389, i32 0, metadata !857, null}
!859 = metadata !{i32 391, i32 0, metadata !857, null}
!860 = metadata !{i32 393, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !857, i32 392, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!862 = metadata !{i32 394, i32 0, metadata !861, null}
!863 = metadata !{i32 395, i32 0, metadata !861, null}
!864 = metadata !{i32 396, i32 0, metadata !861, null}
!865 = metadata !{i32 398, i32 0, metadata !857, null}
!866 = metadata !{metadata !"double", metadata !649}
!867 = metadata !{i32 401, i32 0, metadata !857, null}
!868 = metadata !{i32 402, i32 0, metadata !857, null}
!869 = metadata !{i32 404, i32 0, metadata !857, null}
!870 = metadata !{i32 405, i32 0, metadata !857, null}
!871 = metadata !{i32 407, i32 0, metadata !857, null}
!872 = metadata !{i32 409, i32 0, metadata !857, null}
!873 = metadata !{i32 410, i32 0, metadata !857, null}
!874 = metadata !{i32 412, i32 0, metadata !857, null}
!875 = metadata !{i32 414, i32 0, metadata !857, null}
!876 = metadata !{i32 415, i32 0, metadata !857, null}
!877 = metadata !{i32 417, i32 0, metadata !857, null}
!878 = metadata !{i32 419, i32 0, metadata !857, null}
!879 = metadata !{i32 421, i32 0, metadata !857, null}
!880 = metadata !{i32 423, i32 0, metadata !857, null}
!881 = metadata !{i32 424, i32 0, metadata !857, null}
!882 = metadata !{i32 425, i32 0, metadata !857, null}
!883 = metadata !{i32 427, i32 0, metadata !852, null}
!884 = metadata !{i32 428, i32 0, metadata !852, null}
!885 = metadata !{i32 434, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !854, i32 432, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!887 = metadata !{i32 435, i32 0, metadata !886, null}
!888 = metadata !{i32 437, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !886, i32 436, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!890 = metadata !{i32 438, i32 0, metadata !889, null}
!891 = metadata !{i32 439, i32 0, metadata !889, null}
!892 = metadata !{i32 440, i32 0, metadata !889, null}
!893 = metadata !{i32 442, i32 0, metadata !886, null}
!894 = metadata !{i32 445, i32 0, metadata !886, null}
!895 = metadata !{i32 446, i32 0, metadata !886, null}
!896 = metadata !{i32 448, i32 0, metadata !886, null}
!897 = metadata !{i32 449, i32 0, metadata !886, null}
!898 = metadata !{i32 451, i32 0, metadata !886, null}
!899 = metadata !{i32 453, i32 0, metadata !886, null}
!900 = metadata !{i32 454, i32 0, metadata !886, null}
!901 = metadata !{i32 456, i32 0, metadata !886, null}
!902 = metadata !{i32 458, i32 0, metadata !886, null}
!903 = metadata !{i32 461, i32 0, metadata !886, null}
!904 = metadata !{i32 463, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !886, i32 462, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!906 = metadata !{i32 464, i32 0, metadata !905, null}
!907 = metadata !{i32 467, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !886, i32 466, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!909 = metadata !{i32 470, i32 0, metadata !886, null}
!910 = metadata !{i32 472, i32 0, metadata !886, null}
!911 = metadata !{i32 473, i32 0, metadata !886, null}
!912 = metadata !{i32 474, i32 0, metadata !886, null}
!913 = metadata !{i32 479, i32 0, metadata !101, null}
!914 = metadata !{i32 482, i32 0, metadata !102, null}
!915 = metadata !{i32 484, i32 0, metadata !102, null}
!916 = metadata !{i32 2147483647}
!917 = metadata !{i32 486, i32 0, metadata !102, null}
!918 = metadata !{i32 489, i32 0, metadata !102, null}
!919 = metadata !{i32 492, i32 0, metadata !102, null}
!920 = metadata !{i32 495, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !102, i32 495, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!922 = metadata !{i32 497, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !921, i32 496, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!924 = metadata !{i32 499, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !923, i32 498, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/explicit_gop.c]
!926 = metadata !{i32 500, i32 0, metadata !925, null}
!927 = metadata !{i32 501, i32 0, metadata !925, null}
!928 = metadata !{i32 504, i32 0, metadata !102, null}
!929 = metadata !{i32 505, i32 0, metadata !102, null}
!930 = metadata !{i32 507, i32 0, metadata !102, null}
!931 = metadata !{i32 509, i32 0, metadata !102, null}
!932 = metadata !{i32 510, i32 0, metadata !102, null}
!933 = metadata !{i32 512, i32 0, metadata !102, null}
!934 = metadata !{i32 513, i32 0, metadata !102, null}
!935 = metadata !{i32 514, i32 0, metadata !102, null}
