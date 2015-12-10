; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c'
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [21 x i8] c"img->yuv_format != 0\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c\00", align 1
@__PRETTY_FUNCTION__.getNonAffNeighbour = private unnamed_addr constant [65 x i8] c"void getNonAffNeighbour(unsigned int, int, int, int, PixelPos *)\00", align 1
@__PRETTY_FUNCTION__.getAffNeighbour = private unnamed_addr constant [62 x i8] c"void getAffNeighbour(unsigned int, int, int, int, PixelPos *)\00", align 1
@.str2 = private unnamed_addr constant [40 x i8] c"getNeighbour: invalid macroblock number\00", align 1
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

; Function Attrs: nounwind optsize readonly uwtable
define i32 @mb_is_available(i32 %mbAddr, i32 %currMbAddr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mbAddr}, i64 0, metadata !16), !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %currMbAddr}, i64 0, metadata !17), !dbg !689
  %cmp = icmp slt i32 %mbAddr, 0, !dbg !690
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !690

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !690, !tbaa !691
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110, !dbg !690
  %1 = load i32* %PicSizeInMbs, align 4, !dbg !690, !tbaa !694
  %cmp1 = icmp sgt i32 %1, %mbAddr, !dbg !690
  br i1 %cmp1, label %if.end, label %return, !dbg !690

if.end:                                           ; preds = %lor.lhs.false
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143, !dbg !695
  %2 = load i32* %DeblockCall, align 4, !dbg !695, !tbaa !694
  %tobool = icmp eq i32 %2, 0, !dbg !695
  br i1 %tobool, label %if.then2, label %if.end10, !dbg !695

if.then2:                                         ; preds = %if.end
  %idxprom = sext i32 %mbAddr to i64, !dbg !696
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !696
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !696, !tbaa !691
  %slice_nr = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 1, !dbg !696
  %4 = load i32* %slice_nr, align 4, !dbg !696, !tbaa !694
  %idxprom3 = sext i32 %currMbAddr to i64, !dbg !696
  %slice_nr6 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom3, i32 1, !dbg !696
  %5 = load i32* %slice_nr6, align 4, !dbg !696, !tbaa !694
  %cmp7 = icmp eq i32 %4, %5, !dbg !696
  br i1 %cmp7, label %if.end10, label %return, !dbg !696

if.end10:                                         ; preds = %if.then2, %if.end
  br label %return, !dbg !698

return:                                           ; preds = %if.then2, %entry, %lor.lhs.false, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0, !dbg !698
}

; Function Attrs: nounwind optsize uwtable
define void @CheckAvailabilityOfNeighbors() #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !699, !tbaa !691
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !699
  %1 = load i32* %current_mb_nr, align 4, !dbg !699, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !22), !dbg !699
  %idxprom = sext i32 %1 to i64, !dbg !700
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !700
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !700, !tbaa !691
  %mb_available_up = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6, !dbg !701
  %mb_available_left = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7, !dbg !702
  %3 = bitcast %struct.macroblock** %mb_available_up to i8*, !dbg !703
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false), !dbg !702
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !703, !tbaa !691
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 90, !dbg !703
  %5 = load i32* %MbaffFrameFlag, align 4, !dbg !703, !tbaa !694
  %tobool = icmp eq i32 %5, 0, !dbg !703
  br i1 %tobool, label %if.else, label %if.then, !dbg !703

if.then:                                          ; preds = %entry
  %div = sdiv i32 %1, 2, !dbg !704
  %sub = shl i32 %div, 1, !dbg !704
  %mul = add i32 %sub, -2, !dbg !704
  %mbAddrA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 23, !dbg !704
  store i32 %mul, i32* %mbAddrA, align 4, !dbg !704, !tbaa !694
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 106, !dbg !706
  %6 = load i32* %PicWidthInMbs, align 4, !dbg !706, !tbaa !694
  %sub2 = sub i32 %div, %6, !dbg !706
  %mul3 = shl i32 %sub2, 1, !dbg !706
  %mbAddrB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 24, !dbg !706
  store i32 %mul3, i32* %mbAddrB, align 4, !dbg !706, !tbaa !694
  %7 = load i32* %PicWidthInMbs, align 4, !dbg !707, !tbaa !694
  %sub6 = sub i32 %div, %7, !dbg !707
  %add = shl i32 %sub6, 1, !dbg !707
  %mul7 = add i32 %add, 2, !dbg !707
  %mbAddrC = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 25, !dbg !707
  store i32 %mul7, i32* %mbAddrC, align 4, !dbg !707, !tbaa !694
  %8 = load i32* %PicWidthInMbs, align 4, !dbg !708, !tbaa !694
  %sub10 = sub i32 %div, %8, !dbg !708
  %sub11 = shl i32 %sub10, 1, !dbg !708
  %mul12 = add i32 %sub11, -2, !dbg !708
  %mbAddrD = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 26, !dbg !708
  store i32 %mul12, i32* %mbAddrD, align 4, !dbg !708, !tbaa !694
  %call = tail call i32 @mb_is_available(i32 %mul, i32 %1) #6, !dbg !709
  %tobool14 = icmp eq i32 %call, 0, !dbg !709
  br i1 %tobool14, label %land.end, label %land.rhs, !dbg !709

land.rhs:                                         ; preds = %if.then
  %9 = load i32* %PicWidthInMbs, align 4, !dbg !709, !tbaa !694
  %rem = urem i32 %div, %9, !dbg !709
  %cmp = icmp ne i32 %rem, 0, !dbg !709
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %10 = phi i1 [ false, %if.then ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %mbAvailA = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 27
  store i32 %land.ext, i32* %mbAvailA, align 4, !tbaa !694
  %call18 = tail call i32 @mb_is_available(i32 %mul3, i32 %1) #6, !dbg !710
  %mbAvailB = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 28, !dbg !710
  store i32 %call18, i32* %mbAvailB, align 4, !dbg !710, !tbaa !694
  %call20 = tail call i32 @mb_is_available(i32 %mul7, i32 %1) #6, !dbg !711
  %tobool21 = icmp eq i32 %call20, 0, !dbg !711
  br i1 %tobool21, label %land.end28, label %land.rhs22, !dbg !711

land.rhs22:                                       ; preds = %land.end
  %add24 = add nsw i32 %div, 1, !dbg !711
  %11 = load i32* %PicWidthInMbs, align 4, !dbg !711, !tbaa !694
  %rem26 = urem i32 %add24, %11, !dbg !711
  %cmp27 = icmp ne i32 %rem26, 0, !dbg !711
  br label %land.end28

land.end28:                                       ; preds = %land.end, %land.rhs22
  %12 = phi i1 [ false, %land.end ], [ %cmp27, %land.rhs22 ]
  %land.ext29 = zext i1 %12 to i32
  %mbAvailC = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 29
  store i32 %land.ext29, i32* %mbAvailC, align 4, !tbaa !694
  %call31 = tail call i32 @mb_is_available(i32 %mul12, i32 %1) #6, !dbg !712
  %tobool32 = icmp eq i32 %call31, 0, !dbg !712
  br i1 %tobool32, label %land.end38, label %land.rhs33, !dbg !712

land.rhs33:                                       ; preds = %land.end28
  %13 = load i32* %PicWidthInMbs, align 4, !dbg !712, !tbaa !694
  %rem36 = urem i32 %div, %13, !dbg !712
  %cmp37 = icmp ne i32 %rem36, 0, !dbg !712
  br label %land.end38

land.end38:                                       ; preds = %land.end28, %land.rhs33
  %14 = phi i1 [ false, %land.end28 ], [ %cmp37, %land.rhs33 ]
  %land.ext39 = zext i1 %14 to i32
  %mbAvailD = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 30
  store i32 %land.ext39, i32* %mbAvailD, align 4, !tbaa !694
  br label %if.end, !dbg !713

if.else:                                          ; preds = %entry
  %sub40 = add i32 %1, -1, !dbg !714
  %mbAddrA41 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 23, !dbg !714
  store i32 %sub40, i32* %mbAddrA41, align 4, !dbg !714, !tbaa !694
  %PicWidthInMbs42 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 106, !dbg !716
  %15 = load i32* %PicWidthInMbs42, align 4, !dbg !716, !tbaa !694
  %sub43 = sub i32 %1, %15, !dbg !716
  %mbAddrB44 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 24, !dbg !716
  store i32 %sub43, i32* %mbAddrB44, align 4, !dbg !716, !tbaa !694
  %16 = load i32* %PicWidthInMbs42, align 4, !dbg !717, !tbaa !694
  %sub46 = add i32 %1, 1, !dbg !717
  %add47 = sub i32 %sub46, %16, !dbg !717
  %mbAddrC48 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 25, !dbg !717
  store i32 %add47, i32* %mbAddrC48, align 4, !dbg !717, !tbaa !694
  %17 = load i32* %PicWidthInMbs42, align 4, !dbg !718, !tbaa !694
  %sub51 = sub i32 %sub40, %17, !dbg !718
  %mbAddrD52 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 26, !dbg !718
  store i32 %sub51, i32* %mbAddrD52, align 4, !dbg !718, !tbaa !694
  %call54 = tail call i32 @mb_is_available(i32 %sub40, i32 %1) #6, !dbg !719
  %tobool55 = icmp eq i32 %call54, 0, !dbg !719
  br i1 %tobool55, label %land.end60, label %land.rhs56, !dbg !719

land.rhs56:                                       ; preds = %if.else
  %18 = load i32* %PicWidthInMbs42, align 4, !dbg !719, !tbaa !694
  %rem58 = urem i32 %1, %18, !dbg !719
  %cmp59 = icmp ne i32 %rem58, 0, !dbg !719
  br label %land.end60

land.end60:                                       ; preds = %if.else, %land.rhs56
  %19 = phi i1 [ false, %if.else ], [ %cmp59, %land.rhs56 ]
  %land.ext61 = zext i1 %19 to i32
  %mbAvailA62 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 27
  store i32 %land.ext61, i32* %mbAvailA62, align 4, !tbaa !694
  %call64 = tail call i32 @mb_is_available(i32 %sub43, i32 %1) #6, !dbg !720
  %mbAvailB65 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 28, !dbg !720
  store i32 %call64, i32* %mbAvailB65, align 4, !dbg !720, !tbaa !694
  %call67 = tail call i32 @mb_is_available(i32 %add47, i32 %1) #6, !dbg !721
  %tobool68 = icmp eq i32 %call67, 0, !dbg !721
  br i1 %tobool68, label %land.end74, label %land.rhs69, !dbg !721

land.rhs69:                                       ; preds = %land.end60
  %20 = load i32* %PicWidthInMbs42, align 4, !dbg !721, !tbaa !694
  %rem72 = urem i32 %sub46, %20, !dbg !721
  %cmp73 = icmp ne i32 %rem72, 0, !dbg !721
  br label %land.end74

land.end74:                                       ; preds = %land.end60, %land.rhs69
  %21 = phi i1 [ false, %land.end60 ], [ %cmp73, %land.rhs69 ]
  %land.ext75 = zext i1 %21 to i32
  %mbAvailC76 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 29
  store i32 %land.ext75, i32* %mbAvailC76, align 4, !tbaa !694
  %call78 = tail call i32 @mb_is_available(i32 %sub51, i32 %1) #6, !dbg !722
  %tobool79 = icmp eq i32 %call78, 0, !dbg !722
  br i1 %tobool79, label %land.end84, label %land.rhs80, !dbg !722

land.rhs80:                                       ; preds = %land.end74
  %22 = load i32* %PicWidthInMbs42, align 4, !dbg !722, !tbaa !694
  %rem82 = urem i32 %1, %22, !dbg !722
  %cmp83 = icmp ne i32 %rem82, 0, !dbg !722
  br label %land.end84

land.end84:                                       ; preds = %land.end74, %land.rhs80
  %23 = phi i1 [ false, %land.end74 ], [ %cmp83, %land.rhs80 ]
  %land.ext85 = zext i1 %23 to i32
  %mbAvailD86 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 30
  store i32 %land.ext85, i32* %mbAvailD86, align 4, !tbaa !694
  br label %if.end

if.end:                                           ; preds = %land.end84, %land.end38
  %24 = phi i32 [ %sub40, %land.end84 ], [ %mul, %land.end38 ]
  %25 = phi i32 [ %sub43, %land.end84 ], [ %mul3, %land.end38 ]
  %26 = phi i32 [ %call64, %land.end84 ], [ %call18, %land.end38 ]
  %27 = phi i32 [ %land.ext61, %land.end84 ], [ %land.ext, %land.end38 ]
  %tobool88 = icmp eq i32 %27, 0, !dbg !723
  br i1 %tobool88, label %if.end95, label %if.then89, !dbg !723

if.then89:                                        ; preds = %if.end
  %idxprom91 = sext i32 %24 to i64, !dbg !723
  %mb_data92 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 51, !dbg !723
  %28 = load %struct.macroblock** %mb_data92, align 8, !dbg !723, !tbaa !691
  %arrayidx93 = getelementptr inbounds %struct.macroblock* %28, i64 %idxprom91, !dbg !723
  store %struct.macroblock* %arrayidx93, %struct.macroblock** %mb_available_left, align 8, !dbg !723, !tbaa !691
  br label %if.end95, !dbg !723

if.end95:                                         ; preds = %if.end, %if.then89
  %tobool97 = icmp eq i32 %26, 0, !dbg !724
  br i1 %tobool97, label %if.end104, label %if.then98, !dbg !724

if.then98:                                        ; preds = %if.end95
  %idxprom100 = sext i32 %25 to i64, !dbg !724
  %29 = load %struct.ImageParameters** @img, align 8, !dbg !724, !tbaa !691
  %mb_data101 = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 51, !dbg !724
  %30 = load %struct.macroblock** %mb_data101, align 8, !dbg !724, !tbaa !691
  %arrayidx102 = getelementptr inbounds %struct.macroblock* %30, i64 %idxprom100, !dbg !724
  store %struct.macroblock* %arrayidx102, %struct.macroblock** %mb_available_up, align 8, !dbg !724, !tbaa !691
  br label %if.end104, !dbg !724

if.end104:                                        ; preds = %if.end95, %if.then98
  ret void, !dbg !725
}

; Function Attrs: nounwind optsize uwtable
define void @get_mb_block_pos(i32 %mb_addr, i32* nocapture %x, i32* nocapture %y) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mb_addr}, i64 0, metadata !98), !dbg !726
  tail call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !99), !dbg !726
  tail call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !100), !dbg !726
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !727, !tbaa !691
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !727
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !727, !tbaa !694
  %tobool = icmp eq i32 %1, 0, !dbg !727
  br i1 %tobool, label %if.else, label %if.then, !dbg !727

if.then:                                          ; preds = %entry
  %div = sdiv i32 %mb_addr, 2, !dbg !728
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 106, !dbg !728
  %2 = load i32* %PicWidthInMbs, align 4, !dbg !728, !tbaa !694
  %rem = urem i32 %div, %2, !dbg !728
  store i32 %rem, i32* %x, align 4, !dbg !728, !tbaa !694
  %3 = load i32* %PicWidthInMbs, align 4, !dbg !730, !tbaa !694
  %div3 = udiv i32 %div, %3, !dbg !730
  %mul = shl i32 %div3, 1, !dbg !730
  %rem4 = srem i32 %mb_addr, 2, !dbg !730
  %add = add i32 %mul, %rem4, !dbg !730
  br label %if.end, !dbg !731

if.else:                                          ; preds = %entry
  %PicWidthInMbs5 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 106, !dbg !732
  %4 = load i32* %PicWidthInMbs5, align 4, !dbg !732, !tbaa !694
  %rem6 = urem i32 %mb_addr, %4, !dbg !732
  store i32 %rem6, i32* %x, align 4, !dbg !732, !tbaa !694
  %5 = load i32* %PicWidthInMbs5, align 4, !dbg !734, !tbaa !694
  %div8 = udiv i32 %mb_addr, %5, !dbg !734
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %div8, %if.else ], [ %add, %if.then ]
  store i32 %storemerge, i32* %y, align 4, !dbg !730, !tbaa !694
  ret void, !dbg !735
}

; Function Attrs: nounwind optsize uwtable
define void @get_mb_pos(i32 %mb_addr, i32* nocapture %x, i32* nocapture %y) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mb_addr}, i64 0, metadata !103), !dbg !736
  tail call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !104), !dbg !736
  tail call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !105), !dbg !736
  tail call void @get_mb_block_pos(i32 %mb_addr, i32* %x, i32* %y) #6, !dbg !737
  %0 = load i32* %x, align 4, !dbg !738, !tbaa !694
  %mul = shl nsw i32 %0, 4, !dbg !738
  store i32 %mul, i32* %x, align 4, !dbg !738, !tbaa !694
  %1 = load i32* %y, align 4, !dbg !739, !tbaa !694
  %mul1 = shl nsw i32 %1, 4, !dbg !739
  store i32 %mul1, i32* %y, align 4, !dbg !739, !tbaa !694
  ret void, !dbg !740
}

; Function Attrs: nounwind optsize uwtable
define void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %curr_mb_nr}, i64 0, metadata !121), !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %xN}, i64 0, metadata !122), !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !123), !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %luma}, i64 0, metadata !124), !dbg !741
  tail call void @llvm.dbg.value(metadata !{%struct.pix_pos* %pix}, i64 0, metadata !125), !dbg !741
  %idxprom = zext i32 %curr_mb_nr to i64, !dbg !742
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !742, !tbaa !691
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !742
  %1 = load %struct.macroblock** %mb_data, align 8, !dbg !742, !tbaa !691
  %tobool = icmp ne i32 %luma, 0, !dbg !743
  br i1 %tobool, label %if.end, label %if.else, !dbg !743

if.else:                                          ; preds = %entry
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !744
  %2 = load i32* %yuv_format, align 4, !dbg !744, !tbaa !694
  %cmp = icmp eq i32 %2, 0, !dbg !744
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !744

cond.false:                                       ; preds = %if.else
  tail call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([65 x i8]* @__PRETTY_FUNCTION__.getNonAffNeighbour, i64 0, i64 0)) #7, !dbg !744
  unreachable, !dbg !744

cond.end:                                         ; preds = %if.else
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !746
  %3 = load i32* %mb_cr_size_x, align 4, !dbg !746, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !127), !dbg !746
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162, !dbg !747
  %4 = load i32* %mb_cr_size_y, align 4, !dbg !747, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !128), !dbg !747
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %maxW.0 = phi i32 [ %3, %cond.end ], [ 16, %entry ]
  %maxH.0 = phi i32 [ %4, %cond.end ], [ 16, %entry ]
  %cmp2 = icmp slt i32 %yN, 0, !dbg !748
  %5 = and i32 %yN, %xN, !dbg !748
  %6 = icmp slt i32 %5, 0, !dbg !748
  br i1 %6, label %if.then3, label %if.else4, !dbg !748

if.then3:                                         ; preds = %if.end
  %mbAddrD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26, !dbg !749
  %7 = load i32* %mbAddrD, align 4, !dbg !749, !tbaa !694
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !749
  store i32 %7, i32* %mb_addr, align 4, !dbg !749, !tbaa !694
  %mbAvailD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30, !dbg !751
  %8 = load i32* %mbAvailD, align 4, !dbg !751, !tbaa !694
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !751
  store i32 %8, i32* %available, align 4, !dbg !751, !tbaa !694
  br label %if.end46, !dbg !752

if.else4:                                         ; preds = %if.end
  %cmp1 = icmp slt i32 %xN, 0, !dbg !748
  %cmp7 = icmp sgt i32 %yN, -1, !dbg !753
  %or.cond133 = and i1 %cmp1, %cmp7, !dbg !753
  %cmp9 = icmp sgt i32 %maxH.0, %yN, !dbg !753
  %or.cond134 = and i1 %or.cond133, %cmp9, !dbg !753
  br i1 %or.cond134, label %if.then10, label %if.else13, !dbg !753

if.then10:                                        ; preds = %if.else4
  %mbAddrA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23, !dbg !754
  %9 = load i32* %mbAddrA, align 4, !dbg !754, !tbaa !694
  %mb_addr11 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !754
  store i32 %9, i32* %mb_addr11, align 4, !dbg !754, !tbaa !694
  %mbAvailA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27, !dbg !756
  %10 = load i32* %mbAvailA, align 4, !dbg !756, !tbaa !694
  %available12 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !756
  store i32 %10, i32* %available12, align 4, !dbg !756, !tbaa !694
  br label %if.end46, !dbg !757

if.else13:                                        ; preds = %if.else4
  %cmp14 = icmp sgt i32 %xN, -1, !dbg !758
  %cmp16 = icmp sgt i32 %maxW.0, %xN, !dbg !758
  %or.cond135 = and i1 %cmp14, %cmp16, !dbg !758
  %or.cond136 = and i1 %or.cond135, %cmp2, !dbg !758
  br i1 %or.cond136, label %if.then19, label %if.else22, !dbg !758

if.then19:                                        ; preds = %if.else13
  %mbAddrB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24, !dbg !759
  %11 = load i32* %mbAddrB, align 4, !dbg !759, !tbaa !694
  %mb_addr20 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !759
  store i32 %11, i32* %mb_addr20, align 4, !dbg !759, !tbaa !694
  %mbAvailB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28, !dbg !761
  %12 = load i32* %mbAvailB, align 4, !dbg !761, !tbaa !694
  %available21 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !761
  store i32 %12, i32* %available21, align 4, !dbg !761, !tbaa !694
  br label %if.end46, !dbg !762

if.else22:                                        ; preds = %if.else13
  %or.cond138 = and i1 %or.cond135, %cmp7, !dbg !763
  %or.cond139 = and i1 %or.cond138, %cmp9, !dbg !763
  br i1 %or.cond139, label %if.end46.thread142, label %if.else33, !dbg !763

if.end46.thread142:                               ; preds = %if.else22
  %mb_addr31 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !764
  store i32 %curr_mb_nr, i32* %mb_addr31, align 4, !dbg !764, !tbaa !694
  %available32 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !766
  store i32 1, i32* %available32, align 4, !dbg !766, !tbaa !694
  br label %if.then50, !dbg !767

if.else33:                                        ; preds = %if.else22
  %cmp34 = icmp sle i32 %maxW.0, %xN, !dbg !768
  %or.cond140 = and i1 %cmp34, %cmp2, !dbg !768
  br i1 %or.cond140, label %if.then37, label %if.end46.thread, !dbg !768

if.then37:                                        ; preds = %if.else33
  %mbAddrC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25, !dbg !769
  %13 = load i32* %mbAddrC, align 4, !dbg !769, !tbaa !694
  %mb_addr38 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !769
  store i32 %13, i32* %mb_addr38, align 4, !dbg !769, !tbaa !694
  %mbAvailC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29, !dbg !771
  %14 = load i32* %mbAvailC, align 4, !dbg !771, !tbaa !694
  %available39 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !771
  store i32 %14, i32* %available39, align 4, !dbg !771, !tbaa !694
  br label %if.end46, !dbg !772

if.end46.thread:                                  ; preds = %if.else33
  %available41 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !773
  store i32 0, i32* %available41, align 4, !dbg !773, !tbaa !694
  br label %lor.lhs.false, !dbg !767

if.end46:                                         ; preds = %if.then10, %if.then37, %if.then19, %if.then3
  %15 = phi i32 [ %10, %if.then10 ], [ %14, %if.then37 ], [ %12, %if.then19 ], [ %8, %if.then3 ]
  %tobool48 = icmp eq i32 %15, 0, !dbg !767
  br i1 %tobool48, label %lor.lhs.false, label %if.then50, !dbg !767

lor.lhs.false:                                    ; preds = %if.end46.thread, %if.end46
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143, !dbg !767
  %16 = load i32* %DeblockCall, align 4, !dbg !767, !tbaa !694
  %tobool49 = icmp eq i32 %16, 0, !dbg !767
  br i1 %tobool49, label %if.end77, label %if.then50, !dbg !767

if.then50:                                        ; preds = %lor.lhs.false, %if.end46, %if.end46.thread142
  %add = add nsw i32 %maxW.0, %xN, !dbg !775
  %rem = srem i32 %add, %maxW.0, !dbg !775
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2, !dbg !775
  store i32 %rem, i32* %x, align 4, !dbg !775, !tbaa !694
  %add51 = add nsw i32 %maxH.0, %yN, !dbg !777
  %rem52 = srem i32 %add51, %maxH.0, !dbg !777
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3, !dbg !777
  store i32 %rem52, i32* %y, align 4, !dbg !777, !tbaa !694
  %mb_addr53 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !778
  %17 = load i32* %mb_addr53, align 4, !dbg !778, !tbaa !694
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4, !dbg !778
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5, !dbg !778
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !779) #5, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32* %pos_x}, i64 0, metadata !781) #5, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32* %pos_y}, i64 0, metadata !782) #5, !dbg !780
  tail call void @get_mb_block_pos(i32 %17, i32* %pos_x, i32* %pos_y) #8, !dbg !783
  %18 = load i32* %pos_x, align 4, !dbg !784, !tbaa !694
  %mul.i = shl nsw i32 %18, 4, !dbg !784
  store i32 %mul.i, i32* %pos_x, align 4, !dbg !784, !tbaa !694
  %19 = load i32* %pos_y, align 4, !dbg !785, !tbaa !694
  %mul1.i = shl nsw i32 %19, 4, !dbg !785
  store i32 %mul1.i, i32* %pos_y, align 4, !dbg !785, !tbaa !694
  br i1 %tobool, label %if.then55, label %if.else62, !dbg !786

if.then55:                                        ; preds = %if.then50
  %20 = load i32* %x, align 4, !dbg !787, !tbaa !694
  %add58 = add nsw i32 %mul.i, %20, !dbg !787
  store i32 %add58, i32* %pos_x, align 4, !dbg !787, !tbaa !694
  %21 = load i32* %y, align 4, !dbg !789, !tbaa !694
  %add61 = add nsw i32 %mul1.i, %21, !dbg !789
  store i32 %add61, i32* %pos_y, align 4, !dbg !789, !tbaa !694
  br label %if.end77, !dbg !790

if.else62:                                        ; preds = %if.then50
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !791, !tbaa !691
  %mb_cr_size_x64 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 161, !dbg !791
  %23 = load i32* %mb_cr_size_x64, align 4, !dbg !791, !tbaa !694
  %div = sdiv i32 16, %23, !dbg !791
  %div65 = sdiv i32 %mul.i, %div, !dbg !791
  %24 = load i32* %x, align 4, !dbg !791, !tbaa !694
  %add67 = add nsw i32 %24, %div65, !dbg !791
  store i32 %add67, i32* %pos_x, align 4, !dbg !791, !tbaa !694
  %mb_cr_size_y70 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 162, !dbg !793
  %25 = load i32* %mb_cr_size_y70, align 4, !dbg !793, !tbaa !694
  %div71 = sdiv i32 16, %25, !dbg !793
  %div72 = sdiv i32 %mul1.i, %div71, !dbg !793
  %26 = load i32* %y, align 4, !dbg !793, !tbaa !694
  %add74 = add nsw i32 %26, %div72, !dbg !793
  store i32 %add74, i32* %pos_y, align 4, !dbg !793, !tbaa !694
  br label %if.end77

if.end77:                                         ; preds = %lor.lhs.false, %if.then55, %if.else62
  ret void, !dbg !794
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %curr_mb_nr}, i64 0, metadata !131), !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32 %xN}, i64 0, metadata !132), !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !133), !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32 %luma}, i64 0, metadata !134), !dbg !795
  tail call void @llvm.dbg.value(metadata !{%struct.pix_pos* %pix}, i64 0, metadata !135), !dbg !795
  %idxprom = zext i32 %curr_mb_nr to i64, !dbg !796
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !796, !tbaa !691
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !796
  %1 = load %struct.macroblock** %mb_data, align 8, !dbg !796, !tbaa !691
  tail call void @llvm.dbg.value(metadata !797, i64 0, metadata !139), !dbg !798
  %tobool = icmp ne i32 %luma, 0, !dbg !799
  br i1 %tobool, label %if.end, label %if.else, !dbg !799

if.else:                                          ; preds = %entry
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !800
  %2 = load i32* %yuv_format, align 4, !dbg !800, !tbaa !694
  %cmp = icmp eq i32 %2, 0, !dbg !800
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !800

cond.false:                                       ; preds = %if.else
  tail call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([62 x i8]* @__PRETTY_FUNCTION__.getAffNeighbour, i64 0, i64 0)) #7, !dbg !800
  unreachable, !dbg !800

cond.end:                                         ; preds = %if.else
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !802
  %3 = load i32* %mb_cr_size_x, align 4, !dbg !802, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !137), !dbg !802
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162, !dbg !803
  %4 = load i32* %mb_cr_size_y, align 4, !dbg !803, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !138), !dbg !803
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %maxW.0 = phi i32 [ %3, %cond.end ], [ 16, %entry ]
  %maxH.0 = phi i32 [ %4, %cond.end ], [ 16, %entry ]
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !804
  store i32 0, i32* %available, align 4, !dbg !804, !tbaa !694
  %cmp1 = icmp sgt i32 %maxH.0, %yN, !dbg !805
  br i1 %cmp1, label %if.end3, label %if.end377, !dbg !805

if.end3:                                          ; preds = %if.end
  %cmp5 = icmp sle i32 %maxW.0, %xN, !dbg !806
  %cmp6 = icmp sgt i32 %yN, -1, !dbg !806
  %or.cond = and i1 %cmp5, %cmp6, !dbg !806
  br i1 %or.cond, label %if.end377, label %if.end10, !dbg !806

if.end10:                                         ; preds = %if.end3
  %cmp11 = icmp slt i32 %xN, 0, !dbg !807
  br i1 %cmp11, label %if.then12, label %if.else204, !dbg !807

if.then12:                                        ; preds = %if.end10
  %cmp13 = icmp slt i32 %yN, 0, !dbg !808
  %mb_field = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22, !dbg !810
  %5 = load i32* %mb_field, align 4, !dbg !810, !tbaa !694
  %tobool15 = icmp eq i32 %5, 0, !dbg !810
  %rem40 = and i32 %curr_mb_nr, 1, !dbg !812
  %cmp41 = icmp eq i32 %rem40, 0, !dbg !812
  br i1 %cmp13, label %if.then14, label %if.then74, !dbg !808

if.then14:                                        ; preds = %if.then12
  br i1 %tobool15, label %if.then16, label %if.else39, !dbg !810

if.then16:                                        ; preds = %if.then14
  br i1 %cmp41, label %if.then18, label %if.else20, !dbg !814

if.then18:                                        ; preds = %if.then16
  %mbAddrD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26, !dbg !816
  %6 = load i32* %mbAddrD, align 4, !dbg !816, !tbaa !694
  %add = add nsw i32 %6, 1, !dbg !816
  %mb_addr = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !816
  store i32 %add, i32* %mb_addr, align 4, !dbg !816, !tbaa !694
  %mbAvailD = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30, !dbg !818
  %7 = load i32* %mbAvailD, align 4, !dbg !818, !tbaa !694
  store i32 %7, i32* %available, align 4, !dbg !818, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !819
  br label %if.end342, !dbg !820

if.else20:                                        ; preds = %if.then16
  %mbAddrA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23, !dbg !821
  %8 = load i32* %mbAddrA, align 4, !dbg !821, !tbaa !694
  %mb_addr21 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !821
  store i32 %8, i32* %mb_addr21, align 4, !dbg !821, !tbaa !694
  %mbAvailA = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27, !dbg !823
  %9 = load i32* %mbAvailA, align 4, !dbg !823, !tbaa !694
  store i32 %9, i32* %available, align 4, !dbg !823, !tbaa !694
  %10 = load i32* %mbAvailA, align 4, !dbg !824, !tbaa !694
  %tobool24 = icmp eq i32 %10, 0, !dbg !824
  br i1 %tobool24, label %if.end342, label %if.then25, !dbg !824

if.then25:                                        ; preds = %if.else20
  %11 = load i32* %mbAddrA, align 4, !dbg !825, !tbaa !694
  %idxprom27 = sext i32 %11 to i64, !dbg !825
  %mb_field30 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom27, i32 22, !dbg !825
  %12 = load i32* %mb_field30, align 4, !dbg !825, !tbaa !694
  %tobool31 = icmp eq i32 %12, 0, !dbg !825
  br i1 %tobool31, label %if.end342, label %if.else33, !dbg !825

if.else33:                                        ; preds = %if.then25
  %inc = add nsw i32 %8, 1, !dbg !827
  store i32 %inc, i32* %mb_addr21, align 4, !dbg !827, !tbaa !694
  %add35 = add nsw i32 %maxH.0, %yN, !dbg !829
  %shr = ashr i32 %add35, 1, !dbg !829
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !139), !dbg !829
  br label %if.end342

if.else39:                                        ; preds = %if.then14
  %mbAddrD43 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 26, !dbg !830
  %13 = load i32* %mbAddrD43, align 4, !dbg !830, !tbaa !694
  br i1 %cmp41, label %if.then42, label %if.else62, !dbg !812

if.then42:                                        ; preds = %if.else39
  %mb_addr44 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !830
  store i32 %13, i32* %mb_addr44, align 4, !dbg !830, !tbaa !694
  %mbAvailD45 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30, !dbg !832
  %14 = load i32* %mbAvailD45, align 4, !dbg !832, !tbaa !694
  store i32 %14, i32* %available, align 4, !dbg !832, !tbaa !694
  %15 = load i32* %mbAvailD45, align 4, !dbg !833, !tbaa !694
  %tobool48 = icmp eq i32 %15, 0, !dbg !833
  br i1 %tobool48, label %if.end342, label %if.then49, !dbg !833

if.then49:                                        ; preds = %if.then42
  %16 = load i32* %mbAddrD43, align 4, !dbg !834, !tbaa !694
  %idxprom51 = sext i32 %16 to i64, !dbg !834
  %mb_field54 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom51, i32 22, !dbg !834
  %17 = load i32* %mb_field54, align 4, !dbg !834, !tbaa !694
  %tobool55 = icmp eq i32 %17, 0, !dbg !834
  br i1 %tobool55, label %if.then56, label %if.end342, !dbg !834

if.then56:                                        ; preds = %if.then49
  %inc58 = add nsw i32 %13, 1, !dbg !836
  store i32 %inc58, i32* %mb_addr44, align 4, !dbg !836, !tbaa !694
  %mul = shl nsw i32 %yN, 1, !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !139), !dbg !838
  br label %if.end342, !dbg !839

if.else62:                                        ; preds = %if.else39
  %add64 = add nsw i32 %13, 1, !dbg !840
  %mb_addr65 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !840
  store i32 %add64, i32* %mb_addr65, align 4, !dbg !840, !tbaa !694
  %mbAvailD66 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 30, !dbg !842
  %18 = load i32* %mbAvailD66, align 4, !dbg !842, !tbaa !694
  store i32 %18, i32* %available, align 4, !dbg !842, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !843
  br label %if.end342

if.then74:                                        ; preds = %if.then12
  %mbAddrA143 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 23, !dbg !844
  %19 = load i32* %mbAddrA143, align 4, !dbg !844, !tbaa !694
  %mb_addr144 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !844
  store i32 %19, i32* %mb_addr144, align 4, !dbg !844, !tbaa !694
  %mbAvailA145 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 27, !dbg !849
  %20 = load i32* %mbAvailA145, align 4, !dbg !849, !tbaa !694
  store i32 %20, i32* %available, align 4, !dbg !849, !tbaa !694
  %21 = load i32* %mbAvailA145, align 4, !dbg !850, !tbaa !694
  %tobool148 = icmp ne i32 %21, 0, !dbg !850
  br i1 %tobool15, label %if.then77, label %if.else139, !dbg !851

if.then77:                                        ; preds = %if.then74
  br i1 %cmp41, label %if.then80, label %if.else107, !dbg !852

if.then80:                                        ; preds = %if.then77
  br i1 %tobool148, label %if.then87, label %if.end342, !dbg !854

if.then87:                                        ; preds = %if.then80
  %22 = load i32* %mbAddrA143, align 4, !dbg !856, !tbaa !694
  %idxprom89 = sext i32 %22 to i64, !dbg !856
  %mb_field92 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom89, i32 22, !dbg !856
  %23 = load i32* %mb_field92, align 4, !dbg !856, !tbaa !694
  %tobool93 = icmp eq i32 %23, 0, !dbg !856
  br i1 %tobool93, label %if.end342, label %if.else95, !dbg !856

if.else95:                                        ; preds = %if.then87
  %rem96537 = and i32 %yN, 1, !dbg !858
  %cmp97 = icmp eq i32 %rem96537, 0, !dbg !858
  br i1 %cmp97, label %if.then98, label %if.else100, !dbg !858

if.then98:                                        ; preds = %if.else95
  %shr99 = ashr i32 %yN, 1, !dbg !860
  tail call void @llvm.dbg.value(metadata !{i32 %shr99}, i64 0, metadata !139), !dbg !860
  br label %if.end342, !dbg !862

if.else100:                                       ; preds = %if.else95
  %inc102 = add nsw i32 %19, 1, !dbg !863
  store i32 %inc102, i32* %mb_addr144, align 4, !dbg !863, !tbaa !694
  %shr103 = ashr i32 %yN, 1, !dbg !865
  tail call void @llvm.dbg.value(metadata !{i32 %shr103}, i64 0, metadata !139), !dbg !865
  br label %if.end342

if.else107:                                       ; preds = %if.then77
  br i1 %tobool148, label %if.then114, label %if.end342, !dbg !866

if.then114:                                       ; preds = %if.else107
  %24 = load i32* %mbAddrA143, align 4, !dbg !868, !tbaa !694
  %idxprom116 = sext i32 %24 to i64, !dbg !868
  %mb_field119 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom116, i32 22, !dbg !868
  %25 = load i32* %mb_field119, align 4, !dbg !868, !tbaa !694
  %tobool120 = icmp eq i32 %25, 0, !dbg !868
  br i1 %tobool120, label %if.then121, label %if.else124, !dbg !868

if.then121:                                       ; preds = %if.then114
  %inc123 = add nsw i32 %19, 1, !dbg !870
  store i32 %inc123, i32* %mb_addr144, align 4, !dbg !870, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !872
  br label %if.end342, !dbg !873

if.else124:                                       ; preds = %if.then114
  %rem125536 = and i32 %yN, 1, !dbg !874
  %cmp126 = icmp eq i32 %rem125536, 0, !dbg !874
  br i1 %cmp126, label %if.then127, label %if.else130, !dbg !874

if.then127:                                       ; preds = %if.else124
  %add128 = add nsw i32 %maxH.0, %yN, !dbg !876
  %shr129 = ashr i32 %add128, 1, !dbg !876
  tail call void @llvm.dbg.value(metadata !{i32 %shr129}, i64 0, metadata !139), !dbg !876
  br label %if.end342, !dbg !878

if.else130:                                       ; preds = %if.else124
  %inc132 = add nsw i32 %19, 1, !dbg !879
  store i32 %inc132, i32* %mb_addr144, align 4, !dbg !879, !tbaa !694
  %add133 = add nsw i32 %maxH.0, %yN, !dbg !881
  %shr134 = ashr i32 %add133, 1, !dbg !881
  tail call void @llvm.dbg.value(metadata !{i32 %shr134}, i64 0, metadata !139), !dbg !881
  br label %if.end342

if.else139:                                       ; preds = %if.then74
  br i1 %cmp41, label %if.then142, label %if.else168, !dbg !882

if.then142:                                       ; preds = %if.else139
  br i1 %tobool148, label %if.then149, label %if.end342, !dbg !850

if.then149:                                       ; preds = %if.then142
  %26 = load i32* %mbAddrA143, align 4, !dbg !883, !tbaa !694
  %idxprom151 = sext i32 %26 to i64, !dbg !883
  %mb_field154 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom151, i32 22, !dbg !883
  %27 = load i32* %mb_field154, align 4, !dbg !883, !tbaa !694
  %tobool155 = icmp eq i32 %27, 0, !dbg !883
  br i1 %tobool155, label %if.then156, label %if.end342, !dbg !883

if.then156:                                       ; preds = %if.then149
  %div = sdiv i32 %maxH.0, 2, !dbg !885
  %cmp157 = icmp sgt i32 %div, %yN, !dbg !885
  br i1 %cmp157, label %if.then158, label %if.else159, !dbg !885

if.then158:                                       ; preds = %if.then156
  %shl = shl i32 %yN, 1, !dbg !887
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !139), !dbg !887
  br label %if.end342, !dbg !889

if.else159:                                       ; preds = %if.then156
  %inc161 = add nsw i32 %19, 1, !dbg !890
  store i32 %inc161, i32* %mb_addr144, align 4, !dbg !890, !tbaa !694
  %shl162 = shl i32 %yN, 1, !dbg !892
  %sub163 = sub nsw i32 %shl162, %maxH.0, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %sub163}, i64 0, metadata !139), !dbg !892
  br label %if.end342

if.else168:                                       ; preds = %if.else139
  br i1 %tobool148, label %if.then175, label %if.end342, !dbg !893

if.then175:                                       ; preds = %if.else168
  %28 = load i32* %mbAddrA143, align 4, !dbg !895, !tbaa !694
  %idxprom177 = sext i32 %28 to i64, !dbg !895
  %mb_field180 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom177, i32 22, !dbg !895
  %29 = load i32* %mb_field180, align 4, !dbg !895, !tbaa !694
  %tobool181 = icmp eq i32 %29, 0, !dbg !895
  br i1 %tobool181, label %if.then182, label %if.else195, !dbg !895

if.then182:                                       ; preds = %if.then175
  %div183 = sdiv i32 %maxH.0, 2, !dbg !897
  %cmp184 = icmp sgt i32 %div183, %yN, !dbg !897
  br i1 %cmp184, label %if.then185, label %if.else188, !dbg !897

if.then185:                                       ; preds = %if.then182
  %shl186 = shl i32 %yN, 1, !dbg !899
  %add187539 = or i32 %shl186, 1, !dbg !899
  tail call void @llvm.dbg.value(metadata !{i32 %add187539}, i64 0, metadata !139), !dbg !899
  br label %if.end342, !dbg !901

if.else188:                                       ; preds = %if.then182
  %inc190 = add nsw i32 %19, 1, !dbg !902
  store i32 %inc190, i32* %mb_addr144, align 4, !dbg !902, !tbaa !694
  %shl191 = shl i32 %yN, 1, !dbg !904
  %add192538 = or i32 %shl191, 1, !dbg !904
  %sub193 = sub nsw i32 %add192538, %maxH.0, !dbg !904
  tail call void @llvm.dbg.value(metadata !{i32 %sub193}, i64 0, metadata !139), !dbg !904
  br label %if.end342

if.else195:                                       ; preds = %if.then175
  %inc197 = add nsw i32 %19, 1, !dbg !905
  store i32 %inc197, i32* %mb_addr144, align 4, !dbg !905, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !907
  br label %if.end342

if.else204:                                       ; preds = %if.end10
  %cmp207 = icmp sgt i32 %maxW.0, %xN, !dbg !908
  %cmp209 = icmp slt i32 %yN, 0, !dbg !910
  br i1 %cmp207, label %if.then208, label %if.else293, !dbg !908

if.then208:                                       ; preds = %if.else204
  br i1 %cmp209, label %if.then210, label %if.else272, !dbg !910

if.then210:                                       ; preds = %if.then208
  %mb_field211 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22, !dbg !912
  %30 = load i32* %mb_field211, align 4, !dbg !912, !tbaa !694
  %tobool212 = icmp eq i32 %30, 0, !dbg !912
  %rem241 = and i32 %curr_mb_nr, 1, !dbg !914
  %cmp242 = icmp eq i32 %rem241, 0, !dbg !914
  br i1 %tobool212, label %if.then213, label %if.else240, !dbg !912

if.then213:                                       ; preds = %if.then210
  br i1 %cmp242, label %if.then216, label %if.else235, !dbg !916

if.then216:                                       ; preds = %if.then213
  %mbAddrB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24, !dbg !918
  %31 = load i32* %mbAddrB, align 4, !dbg !918, !tbaa !694
  %mb_addr217 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !918
  store i32 %31, i32* %mb_addr217, align 4, !dbg !918, !tbaa !694
  %mbAvailB = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28, !dbg !920
  %32 = load i32* %mbAvailB, align 4, !dbg !920, !tbaa !694
  %tobool218 = icmp eq i32 %32, 0, !dbg !920
  br i1 %tobool218, label %if.end232, label %if.then219, !dbg !920

if.then219:                                       ; preds = %if.then216
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143, !dbg !921
  %33 = load i32* %DeblockCall, align 4, !dbg !921, !tbaa !694
  %cmp220 = icmp eq i32 %33, 1, !dbg !921
  br i1 %cmp220, label %land.lhs.true221, label %if.then228, !dbg !921

land.lhs.true221:                                 ; preds = %if.then219
  %34 = load i32* %mbAddrB, align 4, !dbg !921, !tbaa !694
  %idxprom223 = sext i32 %34 to i64, !dbg !921
  %mb_field226 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom223, i32 22, !dbg !921
  %35 = load i32* %mb_field226, align 4, !dbg !921, !tbaa !694
  %tobool227 = icmp eq i32 %35, 0, !dbg !921
  br i1 %tobool227, label %if.then228, label %if.end232, !dbg !921

if.then228:                                       ; preds = %land.lhs.true221, %if.then219
  %add230 = add nsw i32 %31, 1, !dbg !923
  store i32 %add230, i32* %mb_addr217, align 4, !dbg !923, !tbaa !694
  %.pre = load i32* %mbAvailB, align 4, !dbg !924, !tbaa !694
  br label %if.end232, !dbg !923

if.end232:                                        ; preds = %land.lhs.true221, %if.then216, %if.then228
  %36 = phi i32 [ %32, %land.lhs.true221 ], [ 0, %if.then216 ], [ %.pre, %if.then228 ]
  store i32 %36, i32* %available, align 4, !dbg !924, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !925
  br label %if.end342, !dbg !926

if.else235:                                       ; preds = %if.then213
  %sub236 = add i32 %curr_mb_nr, -1, !dbg !927
  %mb_addr237 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !927
  store i32 %sub236, i32* %mb_addr237, align 4, !dbg !927, !tbaa !694
  store i32 1, i32* %available, align 4, !dbg !929, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !930
  br label %if.then347

if.else240:                                       ; preds = %if.then210
  %mbAddrB244 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24, !dbg !931
  %37 = load i32* %mbAddrB244, align 4, !dbg !931, !tbaa !694
  br i1 %cmp242, label %if.then243, label %if.else264, !dbg !914

if.then243:                                       ; preds = %if.else240
  %mb_addr245 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !931
  store i32 %37, i32* %mb_addr245, align 4, !dbg !931, !tbaa !694
  %mbAvailB246 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28, !dbg !933
  %38 = load i32* %mbAvailB246, align 4, !dbg !933, !tbaa !694
  store i32 %38, i32* %available, align 4, !dbg !933, !tbaa !694
  %39 = load i32* %mbAvailB246, align 4, !dbg !934, !tbaa !694
  %tobool249 = icmp eq i32 %39, 0, !dbg !934
  br i1 %tobool249, label %if.end342, label %if.then250, !dbg !934

if.then250:                                       ; preds = %if.then243
  %40 = load i32* %mbAddrB244, align 4, !dbg !935, !tbaa !694
  %idxprom252 = sext i32 %40 to i64, !dbg !935
  %mb_field255 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom252, i32 22, !dbg !935
  %41 = load i32* %mb_field255, align 4, !dbg !935, !tbaa !694
  %tobool256 = icmp eq i32 %41, 0, !dbg !935
  br i1 %tobool256, label %if.then257, label %if.end342, !dbg !935

if.then257:                                       ; preds = %if.then250
  %inc259 = add nsw i32 %37, 1, !dbg !937
  store i32 %inc259, i32* %mb_addr245, align 4, !dbg !937, !tbaa !694
  %mul260 = shl nsw i32 %yN, 1, !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32 %mul260}, i64 0, metadata !139), !dbg !939
  br label %if.end342, !dbg !940

if.else264:                                       ; preds = %if.else240
  %add266 = add nsw i32 %37, 1, !dbg !941
  %mb_addr267 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !941
  store i32 %add266, i32* %mb_addr267, align 4, !dbg !941, !tbaa !694
  %mbAvailB268 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 28, !dbg !943
  %42 = load i32* %mbAvailB268, align 4, !dbg !943, !tbaa !694
  store i32 %42, i32* %available, align 4, !dbg !943, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !944
  br label %if.end342

if.else272:                                       ; preds = %if.then208
  %cmp273 = icmp eq i32 %yN, 0, !dbg !945
  br i1 %cmp273, label %land.lhs.true274, label %if.then287, !dbg !945

land.lhs.true274:                                 ; preds = %if.else272
  %DeblockCall275 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143, !dbg !945
  %43 = load i32* %DeblockCall275, align 4, !dbg !945, !tbaa !694
  %cmp276 = icmp eq i32 %43, 2, !dbg !945
  br i1 %cmp276, label %if.then277, label %if.then287, !dbg !945

if.then277:                                       ; preds = %land.lhs.true274
  %mbAddrB278 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 24, !dbg !947
  %44 = load i32* %mbAddrB278, align 4, !dbg !947, !tbaa !694
  %add279 = add nsw i32 %44, 1, !dbg !947
  %mb_addr280 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !947
  store i32 %add279, i32* %mb_addr280, align 4, !dbg !947, !tbaa !694
  store i32 1, i32* %available, align 4, !dbg !949, !tbaa !694
  tail call void @llvm.dbg.value(metadata !797, i64 0, metadata !139), !dbg !950
  br label %if.then347, !dbg !951

if.then287:                                       ; preds = %if.else272, %land.lhs.true274
  %mb_addr288 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !952
  store i32 %curr_mb_nr, i32* %mb_addr288, align 4, !dbg !952, !tbaa !694
  store i32 1, i32* %available, align 4, !dbg !954, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !955
  br label %if.then347, !dbg !956

if.else293:                                       ; preds = %if.else204
  br i1 %cmp209, label %if.then295, label %lor.lhs.false, !dbg !957

if.then295:                                       ; preds = %if.else293
  %mb_field296 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 22, !dbg !959
  %45 = load i32* %mb_field296, align 4, !dbg !959, !tbaa !694
  %tobool297 = icmp eq i32 %45, 0, !dbg !959
  %rem309 = and i32 %curr_mb_nr, 1, !dbg !961
  %cmp310 = icmp eq i32 %rem309, 0, !dbg !961
  br i1 %tobool297, label %if.then298, label %if.else308, !dbg !959

if.then298:                                       ; preds = %if.then295
  br i1 %cmp310, label %if.then301, label %if.end342.thread547, !dbg !963

if.then301:                                       ; preds = %if.then298
  %mbAddrC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25, !dbg !965
  %46 = load i32* %mbAddrC, align 4, !dbg !965, !tbaa !694
  %add302 = add nsw i32 %46, 1, !dbg !965
  %mb_addr303 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !965
  store i32 %add302, i32* %mb_addr303, align 4, !dbg !965, !tbaa !694
  %mbAvailC = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29, !dbg !967
  %47 = load i32* %mbAvailC, align 4, !dbg !967, !tbaa !694
  store i32 %47, i32* %available, align 4, !dbg !967, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !968
  br label %if.end342, !dbg !969

if.end342.thread547:                              ; preds = %if.then298
  store i32 0, i32* %available, align 4, !dbg !970, !tbaa !694
  br label %lor.lhs.false, !dbg !972

if.else308:                                       ; preds = %if.then295
  %mbAddrC312 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 25, !dbg !973
  %48 = load i32* %mbAddrC312, align 4, !dbg !973, !tbaa !694
  br i1 %cmp310, label %if.then311, label %if.else332, !dbg !961

if.then311:                                       ; preds = %if.else308
  %mb_addr313 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !973
  store i32 %48, i32* %mb_addr313, align 4, !dbg !973, !tbaa !694
  %mbAvailC314 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29, !dbg !975
  %49 = load i32* %mbAvailC314, align 4, !dbg !975, !tbaa !694
  store i32 %49, i32* %available, align 4, !dbg !975, !tbaa !694
  %50 = load i32* %mbAvailC314, align 4, !dbg !976, !tbaa !694
  %tobool317 = icmp eq i32 %50, 0, !dbg !976
  br i1 %tobool317, label %if.end342, label %if.then318, !dbg !976

if.then318:                                       ; preds = %if.then311
  %51 = load i32* %mbAddrC312, align 4, !dbg !977, !tbaa !694
  %idxprom320 = sext i32 %51 to i64, !dbg !977
  %mb_field323 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom320, i32 22, !dbg !977
  %52 = load i32* %mb_field323, align 4, !dbg !977, !tbaa !694
  %tobool324 = icmp eq i32 %52, 0, !dbg !977
  br i1 %tobool324, label %if.then325, label %if.end342, !dbg !977

if.then325:                                       ; preds = %if.then318
  %inc327 = add nsw i32 %48, 1, !dbg !979
  store i32 %inc327, i32* %mb_addr313, align 4, !dbg !979, !tbaa !694
  %mul328 = shl nsw i32 %yN, 1, !dbg !981
  tail call void @llvm.dbg.value(metadata !{i32 %mul328}, i64 0, metadata !139), !dbg !981
  br label %if.end342, !dbg !982

if.else332:                                       ; preds = %if.else308
  %add334 = add nsw i32 %48, 1, !dbg !983
  %mb_addr335 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !983
  store i32 %add334, i32* %mb_addr335, align 4, !dbg !983, !tbaa !694
  %mbAvailC336 = getelementptr inbounds %struct.macroblock* %1, i64 %idxprom, i32 29, !dbg !985
  %53 = load i32* %mbAvailC336, align 4, !dbg !985, !tbaa !694
  store i32 %53, i32* %available, align 4, !dbg !985, !tbaa !694
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !139), !dbg !986
  br label %if.end342

if.end342:                                        ; preds = %if.then318, %if.then250, %if.then149, %if.then87, %if.then49, %if.then25, %if.then257, %if.then325, %if.then56, %if.else33, %if.else107, %if.then127, %if.else130, %if.then121, %if.then80, %if.then98, %if.else100, %if.else168, %if.then185, %if.else188, %if.else195, %if.then142, %if.then158, %if.else159, %if.then42, %if.else20, %if.then243, %if.then311, %if.end232, %if.else264, %if.then301, %if.else332, %if.else62, %if.then18
  %54 = phi i32 [ %14, %if.then42 ], [ %9, %if.else20 ], [ %38, %if.then243 ], [ %49, %if.then311 ], [ %36, %if.end232 ], [ %42, %if.else264 ], [ %47, %if.then301 ], [ %53, %if.else332 ], [ %18, %if.else62 ], [ %7, %if.then18 ], [ %49, %if.then318 ], [ %38, %if.then250 ], [ %20, %if.then149 ], [ %20, %if.then87 ], [ %14, %if.then49 ], [ %9, %if.then25 ], [ %38, %if.then257 ], [ %49, %if.then325 ], [ %14, %if.then56 ], [ %9, %if.else33 ], [ %20, %if.else107 ], [ %20, %if.then127 ], [ %20, %if.else130 ], [ %20, %if.then121 ], [ %20, %if.then80 ], [ %20, %if.then98 ], [ %20, %if.else100 ], [ %20, %if.else168 ], [ %20, %if.then185 ], [ %20, %if.else188 ], [ %20, %if.else195 ], [ %20, %if.then142 ], [ %20, %if.then158 ], [ %20, %if.else159 ], !dbg !972
  %yM.0 = phi i32 [ -1, %if.then42 ], [ -1, %if.else20 ], [ -1, %if.then243 ], [ -1, %if.then311 ], [ %yN, %if.end232 ], [ %yN, %if.else264 ], [ %yN, %if.then301 ], [ %yN, %if.else332 ], [ %yN, %if.else62 ], [ %yN, %if.then18 ], [ %yN, %if.then318 ], [ %yN, %if.then250 ], [ %yN, %if.then149 ], [ %yN, %if.then87 ], [ %yN, %if.then49 ], [ %yN, %if.then25 ], [ %mul260, %if.then257 ], [ %mul328, %if.then325 ], [ %mul, %if.then56 ], [ %shr, %if.else33 ], [ -1, %if.else107 ], [ %shr129, %if.then127 ], [ %shr134, %if.else130 ], [ %yN, %if.then121 ], [ -1, %if.then80 ], [ %shr99, %if.then98 ], [ %shr103, %if.else100 ], [ -1, %if.else168 ], [ %add187539, %if.then185 ], [ %sub193, %if.else188 ], [ %yN, %if.else195 ], [ -1, %if.then142 ], [ %shl, %if.then158 ], [ %sub163, %if.else159 ]
  %tobool344 = icmp eq i32 %54, 0, !dbg !972
  br i1 %tobool344, label %lor.lhs.false, label %if.then347, !dbg !972

lor.lhs.false:                                    ; preds = %if.else293, %if.end342, %if.end342.thread547
  %yM.0549 = phi i32 [ -1, %if.end342.thread547 ], [ %yM.0, %if.end342 ], [ -1, %if.else293 ]
  %DeblockCall345 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 143, !dbg !972
  %55 = load i32* %DeblockCall345, align 4, !dbg !972, !tbaa !694
  %tobool346 = icmp eq i32 %55, 0, !dbg !972
  br i1 %tobool346, label %if.end377, label %if.then347, !dbg !972

if.then347:                                       ; preds = %lor.lhs.false, %if.end342, %if.else235, %if.then287, %if.then277
  %yM.0546 = phi i32 [ -1, %if.then277 ], [ %yN, %if.then287 ], [ %yN, %if.else235 ], [ %yM.0, %if.end342 ], [ %yM.0549, %lor.lhs.false ]
  %add348 = add nsw i32 %maxW.0, %xN, !dbg !987
  %rem349 = srem i32 %add348, %maxW.0, !dbg !987
  %x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2, !dbg !987
  store i32 %rem349, i32* %x, align 4, !dbg !987, !tbaa !694
  %add350 = add nsw i32 %yM.0546, %maxH.0, !dbg !989
  %rem351 = srem i32 %add350, %maxH.0, !dbg !989
  %y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3, !dbg !989
  store i32 %rem351, i32* %y, align 4, !dbg !989, !tbaa !694
  %mb_addr352 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 1, !dbg !990
  %56 = load i32* %mb_addr352, align 4, !dbg !990, !tbaa !694
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4, !dbg !990
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5, !dbg !990
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !991) #5, !dbg !992
  tail call void @llvm.dbg.value(metadata !{i32* %pos_x}, i64 0, metadata !993) #5, !dbg !992
  tail call void @llvm.dbg.value(metadata !{i32* %pos_y}, i64 0, metadata !994) #5, !dbg !992
  tail call void @get_mb_block_pos(i32 %56, i32* %pos_x, i32* %pos_y) #8, !dbg !995
  %57 = load i32* %pos_x, align 4, !dbg !996, !tbaa !694
  %mul.i = shl nsw i32 %57, 4, !dbg !996
  store i32 %mul.i, i32* %pos_x, align 4, !dbg !996, !tbaa !694
  %58 = load i32* %pos_y, align 4, !dbg !997, !tbaa !694
  %mul1.i = shl nsw i32 %58, 4, !dbg !997
  store i32 %mul1.i, i32* %pos_y, align 4, !dbg !997, !tbaa !694
  br i1 %tobool, label %if.then354, label %if.else361, !dbg !998

if.then354:                                       ; preds = %if.then347
  %59 = load i32* %x, align 4, !dbg !999, !tbaa !694
  %add357 = add nsw i32 %mul.i, %59, !dbg !999
  store i32 %add357, i32* %pos_x, align 4, !dbg !999, !tbaa !694
  %60 = load i32* %y, align 4, !dbg !1001, !tbaa !694
  %add360 = add nsw i32 %mul1.i, %60, !dbg !1001
  store i32 %add360, i32* %pos_y, align 4, !dbg !1001, !tbaa !694
  br label %if.end377, !dbg !1002

if.else361:                                       ; preds = %if.then347
  %61 = load %struct.ImageParameters** @img, align 8, !dbg !1003, !tbaa !691
  %mb_cr_size_x363 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 161, !dbg !1003
  %62 = load i32* %mb_cr_size_x363, align 4, !dbg !1003, !tbaa !694
  %div364 = sdiv i32 16, %62, !dbg !1003
  %div365 = sdiv i32 %mul.i, %div364, !dbg !1003
  %63 = load i32* %x, align 4, !dbg !1003, !tbaa !694
  %add367 = add nsw i32 %63, %div365, !dbg !1003
  store i32 %add367, i32* %pos_x, align 4, !dbg !1003, !tbaa !694
  %mb_cr_size_y370 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 162, !dbg !1005
  %64 = load i32* %mb_cr_size_y370, align 4, !dbg !1005, !tbaa !694
  %div371 = sdiv i32 16, %64, !dbg !1005
  %div372 = sdiv i32 %mul1.i, %div371, !dbg !1005
  %65 = load i32* %y, align 4, !dbg !1005, !tbaa !694
  %add374 = add nsw i32 %65, %div372, !dbg !1005
  store i32 %add374, i32* %pos_y, align 4, !dbg !1005, !tbaa !694
  br label %if.end377

if.end377:                                        ; preds = %if.end3, %lor.lhs.false, %if.end, %if.then354, %if.else361
  ret void, !dbg !1006
}

; Function Attrs: nounwind optsize uwtable
define void @getNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* nocapture %pix) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %curr_mb_nr}, i64 0, metadata !144), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %xN}, i64 0, metadata !145), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %yN}, i64 0, metadata !146), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %luma}, i64 0, metadata !147), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{%struct.pix_pos* %pix}, i64 0, metadata !148), !dbg !1007
  %cmp = icmp slt i32 %curr_mb_nr, 0, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1008

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([40 x i8]* @.str2, i64 0, i64 0), i32 100) #8, !dbg !1009
  br label %if.end, !dbg !1009

if.end:                                           ; preds = %if.then, %entry
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1010, !tbaa !691
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !1010
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !1010, !tbaa !694
  %tobool = icmp eq i32 %1, 0, !dbg !1010
  br i1 %tobool, label %if.else, label %if.then1, !dbg !1010

if.then1:                                         ; preds = %if.end
  tail call void @getAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #6, !dbg !1011
  br label %if.end2, !dbg !1011

if.else:                                          ; preds = %if.end
  tail call void @getNonAffNeighbour(i32 %curr_mb_nr, i32 %xN, i32 %yN, i32 %luma, %struct.pix_pos* %pix) #6, !dbg !1012
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  ret void, !dbg !1013
}

; Function Attrs: optsize
declare void @error(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @getLuma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* nocapture %pix) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %curr_mb_nr}, i64 0, metadata !153), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !154), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !155), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i32 %rel_x}, i64 0, metadata !156), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i32 %rel_y}, i64 0, metadata !157), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{%struct.pix_pos* %pix}, i64 0, metadata !158), !dbg !1014
  %mul = shl i32 %block_x, 2, !dbg !1015
  %add = add nsw i32 %mul, %rel_x, !dbg !1015
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !159), !dbg !1015
  %mul1 = shl i32 %block_y, 2, !dbg !1016
  %add2 = add nsw i32 %mul1, %rel_y, !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !160), !dbg !1016
  tail call void @getNeighbour(i32 %curr_mb_nr, i32 %add, i32 %add2, i32 1, %struct.pix_pos* %pix) #6, !dbg !1017
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !1018
  %0 = load i32* %available, align 4, !dbg !1018, !tbaa !694
  %tobool = icmp eq i32 %0, 0, !dbg !1018
  br i1 %tobool, label %if.end, label %if.then, !dbg !1018

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2, !dbg !1019
  %1 = load i32* %x3, align 4, !dbg !1019, !tbaa !694
  %div = sdiv i32 %1, 4, !dbg !1019
  store i32 %div, i32* %x3, align 4, !dbg !1019, !tbaa !694
  %y4 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3, !dbg !1021
  %2 = load i32* %y4, align 4, !dbg !1021, !tbaa !694
  %div5 = sdiv i32 %2, 4, !dbg !1021
  store i32 %div5, i32* %y4, align 4, !dbg !1021, !tbaa !694
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4, !dbg !1022
  %3 = load i32* %pos_x, align 4, !dbg !1022, !tbaa !694
  %div6 = sdiv i32 %3, 4, !dbg !1022
  store i32 %div6, i32* %pos_x, align 4, !dbg !1022, !tbaa !694
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5, !dbg !1023
  %4 = load i32* %pos_y, align 4, !dbg !1023, !tbaa !694
  %div7 = sdiv i32 %4, 4, !dbg !1023
  store i32 %div7, i32* %pos_y, align 4, !dbg !1023, !tbaa !694
  br label %if.end, !dbg !1024

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1025
}

; Function Attrs: nounwind optsize uwtable
define void @getChroma4x4Neighbour(i32 %curr_mb_nr, i32 %block_x, i32 %block_y, i32 %rel_x, i32 %rel_y, %struct.pix_pos* nocapture %pix) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %curr_mb_nr}, i64 0, metadata !163), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %block_x}, i64 0, metadata !164), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %block_y}, i64 0, metadata !165), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %rel_x}, i64 0, metadata !166), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %rel_y}, i64 0, metadata !167), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{%struct.pix_pos* %pix}, i64 0, metadata !168), !dbg !1026
  %mul = shl i32 %block_x, 2, !dbg !1027
  %add = add nsw i32 %mul, %rel_x, !dbg !1027
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !169), !dbg !1027
  %mul1 = shl i32 %block_y, 2, !dbg !1028
  %add2 = add nsw i32 %mul1, %rel_y, !dbg !1028
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !170), !dbg !1028
  tail call void @getNeighbour(i32 %curr_mb_nr, i32 %add, i32 %add2, i32 0, %struct.pix_pos* %pix) #6, !dbg !1029
  %available = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 0, !dbg !1030
  %0 = load i32* %available, align 4, !dbg !1030, !tbaa !694
  %tobool = icmp eq i32 %0, 0, !dbg !1030
  br i1 %tobool, label %if.end, label %if.then, !dbg !1030

if.then:                                          ; preds = %entry
  %x3 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 2, !dbg !1031
  %1 = load i32* %x3, align 4, !dbg !1031, !tbaa !694
  %div = sdiv i32 %1, 4, !dbg !1031
  store i32 %div, i32* %x3, align 4, !dbg !1031, !tbaa !694
  %y4 = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 3, !dbg !1033
  %2 = load i32* %y4, align 4, !dbg !1033, !tbaa !694
  %div5 = sdiv i32 %2, 4, !dbg !1033
  store i32 %div5, i32* %y4, align 4, !dbg !1033, !tbaa !694
  %pos_x = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 4, !dbg !1034
  %3 = load i32* %pos_x, align 4, !dbg !1034, !tbaa !694
  %div6 = sdiv i32 %3, 4, !dbg !1034
  store i32 %div6, i32* %pos_x, align 4, !dbg !1034, !tbaa !694
  %pos_y = getelementptr inbounds %struct.pix_pos* %pix, i64 0, i32 5, !dbg !1035
  %4 = load i32* %pos_y, align 4, !dbg !1035, !tbaa !694
  %div7 = sdiv i32 %4, 4, !dbg !1035
  store i32 %div7, i32* %pos_y, align 4, !dbg !1035, !tbaa !694
  br label %if.end, !dbg !1036

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1037
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !171, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !18, metadata !93, metadata !101, metadata !106, metadata !129, metadata !140, metadata !149, metadata !161}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"mb_is_available", metadata !"mb_is_available", metadata !"", i32 24, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @mb_is_available, null, null, metadata !15, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [mb_is_available]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786689, metadata !10, metadata !"mbAddr", metadata !11, i32 16777240, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mbAddr] [line 24]
!17 = metadata !{i32 786689, metadata !10, metadata !"currMbAddr", metadata !11, i32 33554456, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMbAddr] [line 24]
!18 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CheckAvailabilityOfNeighbors", metadata !"CheckAvailabilityOfNeighbors", metadata !"", i32 47, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CheckAvailabilityOfNeighbors, null, null, metadata !21, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [CheckAvailabilityOfNeighbors]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null}
!21 = metadata !{metadata !22, metadata !24}
!22 = metadata !{i32 786688, metadata !18, metadata !"mb_nr", metadata !11, i32 49, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_nr] [line 49]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!24 = metadata !{i32 786688, metadata !18, metadata !"currMB", metadata !11, i32 50, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 50]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!26 = metadata !{i32 786454, metadata !27, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{i32 786451, metadata !27, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !39, metadata !41, metadata !42, metadata !43, metadata !48, metadata !52, metadata !53, metadata !54, metadata !58, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!30 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!34 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!35 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!36 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!39 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!41 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!42 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!43 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !44} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!44 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !14, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!45 = metadata !{metadata !46, metadata !47, metadata !47, metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !49} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!49 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!52 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !49} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!54 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !55} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!55 = metadata !{i32 786454, metadata !27, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"int64_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [int64_t] [line 40, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !59} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!60 = metadata !{metadata !47}
!61 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !59} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!62 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !63} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!63 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !14} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!65 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !14} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!66 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !14} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!67 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!68 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !14} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!69 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!70 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!71 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!72 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!73 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!74 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!75 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!76 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!77 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !14} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!78 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !14} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!79 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!80 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!81 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!82 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !83} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!83 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!84 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!85 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!86 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!87 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !14} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!88 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !14} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!89 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !14} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!90 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !14} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!91 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !14} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!92 = metadata !{i32 786445, metadata !27, metadata !28, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !14} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!93 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"get_mb_block_pos", metadata !"get_mb_block_pos", metadata !"", i32 92, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i32*)* @get_mb_block_pos, null, null, metadata !97, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [get_mb_block_pos]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !14, metadata !96, metadata !96}
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!97 = metadata !{metadata !98, metadata !99, metadata !100}
!98 = metadata !{i32 786689, metadata !93, metadata !"mb_addr", metadata !11, i32 16777308, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mb_addr] [line 92]
!99 = metadata !{i32 786689, metadata !93, metadata !"x", metadata !11, i32 33554524, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 92]
!100 = metadata !{i32 786689, metadata !93, metadata !"y", metadata !11, i32 50331740, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 92]
!101 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"get_mb_pos", metadata !"get_mb_pos", metadata !"", i32 114, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i32*)* @get_mb_pos, null, null, metadata !102, i32 115} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 115] [get_mb_pos]
!102 = metadata !{metadata !103, metadata !104, metadata !105}
!103 = metadata !{i32 786689, metadata !101, metadata !"mb_addr", metadata !11, i32 16777330, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mb_addr] [line 114]
!104 = metadata !{i32 786689, metadata !101, metadata !"x", metadata !11, i32 33554546, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 114]
!105 = metadata !{i32 786689, metadata !101, metadata !"y", metadata !11, i32 50331762, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 114]
!106 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getNonAffNeighbour", metadata !"getNonAffNeighbour", metadata !"", i32 139, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNonAffNeighbour, null, null, metadata !120, i32 140} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 140] [getNonAffNeighbour]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !109, metadata !14, metadata !14, metadata !14, metadata !110}
!109 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PixelPos]
!111 = metadata !{i32 786454, metadata !1, null, metadata !"PixelPos", i32 305, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [PixelPos] [line 305, size 0, align 0, offset 0] [from pix_pos]
!112 = metadata !{i32 786451, metadata !27, null, metadata !"pix_pos", i32 297, i64 192, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, null} ; [ DW_TAG_structure_type ] [pix_pos] [line 297, size 192, align 32, offset 0] [from ]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119}
!114 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"available", i32 299, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [available] [line 299, size 32, align 32, offset 0] [from int]
!115 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"mb_addr", i32 300, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_addr] [line 300, size 32, align 32, offset 32] [from int]
!116 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"x", i32 301, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [x] [line 301, size 32, align 32, offset 64] [from int]
!117 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"y", i32 302, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [y] [line 302, size 32, align 32, offset 96] [from int]
!118 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"pos_x", i32 303, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pos_x] [line 303, size 32, align 32, offset 128] [from int]
!119 = metadata !{i32 786445, metadata !27, metadata !112, metadata !"pos_y", i32 304, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pos_y] [line 304, size 32, align 32, offset 160] [from int]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!121 = metadata !{i32 786689, metadata !106, metadata !"curr_mb_nr", metadata !11, i32 16777355, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [curr_mb_nr] [line 139]
!122 = metadata !{i32 786689, metadata !106, metadata !"xN", metadata !11, i32 33554571, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xN] [line 139]
!123 = metadata !{i32 786689, metadata !106, metadata !"yN", metadata !11, i32 50331787, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yN] [line 139]
!124 = metadata !{i32 786689, metadata !106, metadata !"luma", metadata !11, i32 67109003, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [luma] [line 139]
!125 = metadata !{i32 786689, metadata !106, metadata !"pix", metadata !11, i32 83886219, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pix] [line 139]
!126 = metadata !{i32 786688, metadata !106, metadata !"currMb", metadata !11, i32 141, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMb] [line 141]
!127 = metadata !{i32 786688, metadata !106, metadata !"maxW", metadata !11, i32 142, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxW] [line 142]
!128 = metadata !{i32 786688, metadata !106, metadata !"maxH", metadata !11, i32 142, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxH] [line 142]
!129 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getAffNeighbour", metadata !"getAffNeighbour", metadata !"", i32 220, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, %struct.pix_pos*)* @getAffNeighbour, null, null, metadata !130, i32 221} ; [ DW_TAG_subprogram ] [line 220] [def] [scope 221] [getAffNeighbour]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139}
!131 = metadata !{i32 786689, metadata !129, metadata !"curr_mb_nr", metadata !11, i32 16777436, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [curr_mb_nr] [line 220]
!132 = metadata !{i32 786689, metadata !129, metadata !"xN", metadata !11, i32 33554652, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xN] [line 220]
!133 = metadata !{i32 786689, metadata !129, metadata !"yN", metadata !11, i32 50331868, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yN] [line 220]
!134 = metadata !{i32 786689, metadata !129, metadata !"luma", metadata !11, i32 67109084, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [luma] [line 220]
!135 = metadata !{i32 786689, metadata !129, metadata !"pix", metadata !11, i32 83886300, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pix] [line 220]
!136 = metadata !{i32 786688, metadata !129, metadata !"currMb", metadata !11, i32 222, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMb] [line 222]
!137 = metadata !{i32 786688, metadata !129, metadata !"maxW", metadata !11, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxW] [line 223]
!138 = metadata !{i32 786688, metadata !129, metadata !"maxH", metadata !11, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxH] [line 223]
!139 = metadata !{i32 786688, metadata !129, metadata !"yM", metadata !11, i32 224, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yM] [line 224]
!140 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getNeighbour", metadata !"getNeighbour", metadata !"", i32 598, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, %struct.pix_pos*)* @getNeighbour, null, null, metadata !143, i32 599} ; [ DW_TAG_subprogram ] [line 598] [def] [scope 599] [getNeighbour]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !14, metadata !110}
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!144 = metadata !{i32 786689, metadata !140, metadata !"curr_mb_nr", metadata !11, i32 16777814, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [curr_mb_nr] [line 598]
!145 = metadata !{i32 786689, metadata !140, metadata !"xN", metadata !11, i32 33555030, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xN] [line 598]
!146 = metadata !{i32 786689, metadata !140, metadata !"yN", metadata !11, i32 50332246, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [yN] [line 598]
!147 = metadata !{i32 786689, metadata !140, metadata !"luma", metadata !11, i32 67109462, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [luma] [line 598]
!148 = metadata !{i32 786689, metadata !140, metadata !"pix", metadata !11, i32 83886678, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pix] [line 598]
!149 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getLuma4x4Neighbour", metadata !"getLuma4x4Neighbour", metadata !"", i32 628, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, %struct.pix_pos*)* @getLuma4x4Neighbour, null, null, metadata !152, i32 629} ; [ DW_TAG_subprogram ] [line 628] [def] [scope 629] [getLuma4x4Neighbour]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{null, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !110}
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160}
!153 = metadata !{i32 786689, metadata !149, metadata !"curr_mb_nr", metadata !11, i32 16777844, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [curr_mb_nr] [line 628]
!154 = metadata !{i32 786689, metadata !149, metadata !"block_x", metadata !11, i32 33555060, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 628]
!155 = metadata !{i32 786689, metadata !149, metadata !"block_y", metadata !11, i32 50332276, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 628]
!156 = metadata !{i32 786689, metadata !149, metadata !"rel_x", metadata !11, i32 67109492, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rel_x] [line 628]
!157 = metadata !{i32 786689, metadata !149, metadata !"rel_y", metadata !11, i32 83886708, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rel_y] [line 628]
!158 = metadata !{i32 786689, metadata !149, metadata !"pix", metadata !11, i32 100663924, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pix] [line 628]
!159 = metadata !{i32 786688, metadata !149, metadata !"x", metadata !11, i32 630, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 630]
!160 = metadata !{i32 786688, metadata !149, metadata !"y", metadata !11, i32 631, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 631]
!161 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getChroma4x4Neighbour", metadata !"getChroma4x4Neighbour", metadata !"", i32 663, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32, %struct.pix_pos*)* @getChroma4x4Neighbour, null, null, metadata !162, i32 664} ; [ DW_TAG_subprogram ] [line 663] [def] [scope 664] [getChroma4x4Neighbour]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170}
!163 = metadata !{i32 786689, metadata !161, metadata !"curr_mb_nr", metadata !11, i32 16777879, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [curr_mb_nr] [line 663]
!164 = metadata !{i32 786689, metadata !161, metadata !"block_x", metadata !11, i32 33555095, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_x] [line 663]
!165 = metadata !{i32 786689, metadata !161, metadata !"block_y", metadata !11, i32 50332311, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block_y] [line 663]
!166 = metadata !{i32 786689, metadata !161, metadata !"rel_x", metadata !11, i32 67109527, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rel_x] [line 663]
!167 = metadata !{i32 786689, metadata !161, metadata !"rel_y", metadata !11, i32 83886743, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rel_y] [line 663]
!168 = metadata !{i32 786689, metadata !161, metadata !"pix", metadata !11, i32 100663959, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pix] [line 663]
!169 = metadata !{i32 786688, metadata !161, metadata !"x", metadata !11, i32 665, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 665]
!170 = metadata !{i32 786688, metadata !161, metadata !"y", metadata !11, i32 666, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 666]
!171 = metadata !{metadata !172, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !369, metadata !371, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !413, metadata !508, metadata !509, metadata !510, metadata !512, metadata !513, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !532, metadata !533, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !549, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !560, metadata !563, metadata !564, metadata !565, metadata !566, metadata !569, metadata !570, metadata !581, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688}
!172 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !173, i32 558, metadata !174, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!173 = metadata !{i32 786473, metadata !27}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!175 = metadata !{i32 786454, metadata !27, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!176 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !177, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !357, metadata !358, metadata !360, metadata !361}
!178 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!179 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!180 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !182, metadata !355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!183 = metadata !{i32 786454, metadata !27, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !268, metadata !303, metadata !330, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !352}
!186 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!187 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!188 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!189 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!190 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!191 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!192 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !193} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!194 = metadata !{i32 786454, metadata !27, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!195 = metadata !{i32 786451, metadata !27, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !196, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !216, metadata !240}
!197 = metadata !{i32 786445, metadata !27, metadata !195, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!199 = metadata !{i32 786454, metadata !27, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!200 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !201, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !215}
!202 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!203 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!204 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !205} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!205 = metadata !{i32 786454, metadata !27, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!206 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!207 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!208 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!209 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !205} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!210 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !205} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!211 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!212 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!213 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !214} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!215 = metadata !{i32 786445, metadata !27, metadata !200, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!216 = metadata !{i32 786445, metadata !27, metadata !195, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!217 = metadata !{i32 786454, metadata !27, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!218 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !219, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239}
!220 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!221 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !109} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!222 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!223 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !109} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!224 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !109} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!225 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !214} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!226 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !96} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!227 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !109} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!228 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !109} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!229 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !109} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!230 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !109} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!231 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !109} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!232 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !214} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!233 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !96} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!234 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!235 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!236 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!237 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!238 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!239 = metadata !{i32 786445, metadata !27, metadata !218, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!240 = metadata !{i32 786445, metadata !27, metadata !195, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !241} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !14, metadata !244, metadata !267}
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!245 = metadata !{i32 786454, metadata !27, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!246 = metadata !{i32 786451, metadata !27, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !247, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!247 = metadata !{metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !260}
!248 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!249 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!250 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!251 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!252 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!253 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !109} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!254 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!255 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!256 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !257} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!258 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{null, metadata !14, metadata !14, metadata !96, metadata !96}
!260 = metadata !{i32 786445, metadata !27, metadata !246, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !261} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!262 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{null, metadata !264, metadata !265}
!264 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!265 = metadata !{i32 786454, metadata !27, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!266 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!267 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!268 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !269} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!270 = metadata !{i32 786454, metadata !27, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!271 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !272, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!272 = metadata !{metadata !273, metadata !285, metadata !289, metadata !293, metadata !297, metadata !299, metadata !300}
!273 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!274 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !275, metadata !282, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!275 = metadata !{i32 786454, metadata !27, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!276 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !277, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!277 = metadata !{metadata !278, metadata !280, metadata !281}
!278 = metadata !{i32 786445, metadata !27, metadata !276, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!279 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!280 = metadata !{i32 786445, metadata !27, metadata !276, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !206} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!281 = metadata !{i32 786445, metadata !27, metadata !276, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!284 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!285 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !286} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!286 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !275, metadata !287, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!287 = metadata !{metadata !46, metadata !288}
!288 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!289 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !290} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!290 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !275, metadata !291, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!291 = metadata !{metadata !46, metadata !292}
!292 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!293 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !294} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!294 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !275, metadata !295, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!295 = metadata !{metadata !46, metadata !296}
!296 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!297 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !298} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!298 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !275, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!299 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !298} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!300 = metadata !{i32 786445, metadata !27, metadata !271, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !301} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!301 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !275, metadata !302, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!302 = metadata !{metadata !283}
!303 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !304} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!305 = metadata !{i32 786454, metadata !27, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!306 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !307, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!307 = metadata !{metadata !308, metadata !311, metadata !312, metadata !315, metadata !318, metadata !322, metadata !323, metadata !327, metadata !328, metadata !329}
!308 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!309 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !275, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!310 = metadata !{metadata !46}
!311 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !298} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!312 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !313} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!313 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !275, metadata !314, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!314 = metadata !{metadata !283, metadata !47}
!315 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !316} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !275, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!317 = metadata !{metadata !292, metadata !47}
!318 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !319} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!319 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !275, metadata !320, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!320 = metadata !{metadata !292, metadata !321}
!321 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!322 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !319} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!323 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !324} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !275, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!325 = metadata !{metadata !292, metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!327 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !324} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!328 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !319} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!329 = metadata !{i32 786445, metadata !27, metadata !306, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !319} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!330 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !331} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !332} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!332 = metadata !{i32 786454, metadata !27, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !333} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!333 = metadata !{i32 786451, metadata !27, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !334, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!334 = metadata !{metadata !335, metadata !336, metadata !337}
!335 = metadata !{i32 786445, metadata !27, metadata !333, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!336 = metadata !{i32 786445, metadata !27, metadata !333, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!337 = metadata !{i32 786445, metadata !27, metadata !333, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !338} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !333} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!339 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!340 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !96} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!341 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !96} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!342 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !96} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!343 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!344 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !96} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!345 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !96} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!346 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !96} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!347 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !348} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !349} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!349 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !351, metadata !14}
!351 = metadata !{i32 786454, metadata !27, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!352 = metadata !{i32 786445, metadata !27, metadata !184, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !353} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!353 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !354, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!354 = metadata !{metadata !283, metadata !46}
!355 = metadata !{metadata !356}
!356 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!357 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!358 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !359} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!359 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!360 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !359} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!361 = metadata !{i32 786445, metadata !27, metadata !176, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !359} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!362 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !173, i32 559, metadata !174, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!363 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !173, i32 560, metadata !174, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!364 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !173, i32 561, metadata !174, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!365 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !173, i32 562, metadata !174, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!366 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !173, i32 565, metadata !367, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!369 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !173, i32 566, metadata !370, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!370 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !367} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!371 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !173, i32 567, metadata !372, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!372 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!373 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !173, i32 569, metadata !109, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!374 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !173, i32 570, metadata !109, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!375 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !173, i32 572, metadata !14, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!376 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !173, i32 572, metadata !14, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!377 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !173, i32 573, metadata !378, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!378 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !379} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!379 = metadata !{i32 786454, metadata !27, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !380} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!380 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !381, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!381 = metadata !{metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412}
!382 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!383 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !109} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!384 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!385 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !351} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!386 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !351} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!387 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !351} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!388 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!389 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !351} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !109} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!391 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !109} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!392 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !393} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!393 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !109, metadata !37, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!394 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !393} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!395 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !393} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!396 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !351} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!397 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !109} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !109} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!399 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !214} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!400 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!401 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!402 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !351} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!403 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !109} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!405 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!406 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!407 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !14} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!408 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!409 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !351} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!410 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !351} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!411 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !351} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!412 = metadata !{i32 786445, metadata !4, metadata !380, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !351} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!413 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !173, i32 574, metadata !414, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!414 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !415} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!415 = metadata !{i32 786454, metadata !27, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !416} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!416 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !417, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!417 = metadata !{metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455}
!418 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!419 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !109} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !351} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!421 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !351} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!422 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !351} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!423 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !351} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!424 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !109} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!425 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !109} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!426 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !109} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!427 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !351} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!428 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!429 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !109} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!430 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !109} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!431 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !109} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!432 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !109} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !109} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!434 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !351} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!435 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!436 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!437 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !109} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!438 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !439} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!439 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !440, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!440 = metadata !{metadata !441}
!441 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!442 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !109} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!443 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !351} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!444 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !109} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!445 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !109} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!446 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !351} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!447 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !351} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!448 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !351} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!449 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !351} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!450 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !109} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!451 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !109} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!452 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !109} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!453 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !109} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!454 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !351} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!455 = metadata !{i32 786445, metadata !4, metadata !416, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !456} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!456 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !457} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!457 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !458, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507}
!459 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!460 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !109} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!461 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!462 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !109} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!463 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !351} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !351} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!465 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !351} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!466 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !109} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !351} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!468 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !351} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!469 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !109} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!470 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !109} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!471 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !109} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!472 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !351} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !109} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!474 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !109} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !351} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!476 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !109} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!477 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !109} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!478 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !351} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!479 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !351} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!480 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !481} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!481 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !482} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!482 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !483, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!483 = metadata !{metadata !484, metadata !485, metadata !486, metadata !487, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496}
!484 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!485 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !109} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!486 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!487 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !488} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!488 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !109, metadata !489, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!489 = metadata !{metadata !490}
!490 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!491 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !488} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!492 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !488} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!493 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !109} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!494 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !109} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!495 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !109} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!496 = metadata !{i32 786445, metadata !4, metadata !482, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !109} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!497 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !351} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!498 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !481} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!499 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !351} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!500 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !351} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!501 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !351} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!502 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !109} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!503 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !109} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!504 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !109} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!505 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !109} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!506 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !109} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!507 = metadata !{i32 786445, metadata !4, metadata !457, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !109} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!508 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !173, i32 578, metadata !14, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!509 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !173, i32 579, metadata !14, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!510 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !173, i32 583, metadata !511, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!511 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!512 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !173, i32 584, metadata !511, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!513 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !173, i32 585, metadata !514, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!514 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !511} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!515 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !173, i32 586, metadata !14, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !173, i32 587, metadata !14, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !173, i32 588, metadata !14, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!518 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !173, i32 589, metadata !14, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!519 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !173, i32 592, metadata !367, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!520 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !173, i32 593, metadata !367, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!521 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !173, i32 595, metadata !370, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!522 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !173, i32 596, metadata !370, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!523 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !173, i32 598, metadata !367, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!524 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !173, i32 599, metadata !370, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !173, i32 601, metadata !367, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !173, i32 602, metadata !370, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !173, i32 604, metadata !528, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!528 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !529} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!529 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !530} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!530 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!531 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!532 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !173, i32 605, metadata !529, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !173, i32 608, metadata !534, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!534 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!535 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !173, i32 609, metadata !534, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!536 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !173, i32 610, metadata !14, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !173, i32 612, metadata !14, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!538 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !173, i32 612, metadata !14, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !173, i32 612, metadata !14, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!540 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !173, i32 613, metadata !14, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!541 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !173, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !173, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !173, i32 614, metadata !14, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!544 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !173, i32 617, metadata !545, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!545 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !546, metadata !547, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!546 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!547 = metadata !{metadata !548}
!548 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!549 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !173, i32 620, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!550 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !551, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!551 = metadata !{metadata !51, metadata !51}
!552 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !173, i32 620, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!553 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !173, i32 620, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!554 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !173, i32 621, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!555 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !173, i32 621, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!556 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !173, i32 621, metadata !550, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!557 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !173, i32 622, metadata !558, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!558 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !14, metadata !559, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!559 = metadata !{metadata !283, metadata !51, metadata !51}
!560 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !173, i32 623, metadata !561, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!561 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !14, metadata !562, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!562 = metadata !{metadata !46, metadata !47, metadata !47}
!563 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !173, i32 623, metadata !561, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!564 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !173, i32 624, metadata !561, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!565 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !173, i32 624, metadata !561, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!566 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !173, i32 625, metadata !567, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!567 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !568, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!568 = metadata !{metadata !47, metadata !47}
!569 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !173, i32 625, metadata !49, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!570 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !173, i32 1201, metadata !571, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!571 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !572} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!572 = metadata !{i32 786454, metadata !27, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !573} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!573 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !574, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!574 = metadata !{metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580}
!575 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!576 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!577 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!578 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!579 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!580 = metadata !{i32 786445, metadata !27, metadata !573, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!581 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !173, i32 1202, metadata !582, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!583 = metadata !{i32 786454, metadata !27, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !584} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!584 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !585, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!585 = metadata !{metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !605, metadata !606, metadata !607, metadata !608, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616}
!586 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!587 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !550} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!588 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !550} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!589 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !550} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!590 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !514} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!591 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !511} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!592 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!593 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!594 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !59} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!595 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !59} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!596 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !372} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!597 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !49} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!598 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!599 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !55} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!600 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!601 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !602} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!602 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !603} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!603 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !604} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!604 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !528} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!605 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !602} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!606 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !602} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!607 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !602} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!608 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !609} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!609 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !531, metadata !562, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!610 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !14} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!611 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!612 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!613 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!614 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!615 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!616 = metadata !{i32 786445, metadata !27, metadata !584, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!617 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !173, i32 1203, metadata !583, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !173, i32 1203, metadata !583, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !173, i32 1204, metadata !583, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !173, i32 1204, metadata !583, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !173, i32 1230, metadata !622, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!622 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !623} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!623 = metadata !{i32 786454, metadata !27, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !624} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!624 = metadata !{i32 786451, metadata !625, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !626, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!625 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!626 = metadata !{metadata !627, metadata !628, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !648, metadata !649, metadata !650, metadata !651, metadata !653, metadata !654, metadata !656, metadata !660, metadata !662, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !670, metadata !671}
!627 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!628 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!629 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!630 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!631 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!632 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!633 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!634 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!635 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!636 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!637 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!638 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!639 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !629} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!640 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !641} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!641 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !642} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!642 = metadata !{i32 786451, metadata !625, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !643, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!643 = metadata !{metadata !644, metadata !645, metadata !647}
!644 = metadata !{i32 786445, metadata !625, metadata !642, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !641} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!645 = metadata !{i32 786445, metadata !625, metadata !642, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !646} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!646 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !624} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!647 = metadata !{i32 786445, metadata !625, metadata !642, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!648 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !646} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!649 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!650 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!651 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !652} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!652 = metadata !{i32 786454, metadata !625, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!653 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !279} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!654 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !655} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!655 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!656 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !657} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!657 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !546, metadata !658, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!658 = metadata !{metadata !659}
!659 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!660 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !661} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!661 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!662 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !663} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!663 = metadata !{i32 786454, metadata !625, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!664 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !661} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!665 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !661} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!666 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !661} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!667 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !661} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!668 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !669} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!669 = metadata !{i32 786454, metadata !625, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!670 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!671 = metadata !{i32 786445, metadata !625, metadata !624, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !672} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!672 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !546, metadata !673, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!673 = metadata !{metadata !674}
!674 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!675 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !173, i32 1231, metadata !622, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!676 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !173, i32 1232, metadata !622, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!677 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !173, i32 1233, metadata !14, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!678 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !173, i32 1234, metadata !14, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!679 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !173, i32 1237, metadata !680, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!680 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !14, metadata !673, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!681 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !173, i32 1238, metadata !680, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!682 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !173, i32 1239, metadata !680, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!683 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !173, i32 1240, metadata !680, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!684 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !173, i32 1241, metadata !680, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!685 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !173, i32 1242, metadata !680, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!686 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !173, i32 1456, metadata !14, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!687 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !173, i32 1465, metadata !14, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!688 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !173, i32 1466, metadata !14, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!689 = metadata !{i32 24, i32 0, metadata !10, null}
!690 = metadata !{i32 26, i32 0, metadata !10, null}
!691 = metadata !{metadata !"any pointer", metadata !692}
!692 = metadata !{metadata !"omnipotent char", metadata !693}
!693 = metadata !{metadata !"Simple C/C++ TBAA"}
!694 = metadata !{metadata !"int", metadata !692}
!695 = metadata !{i32 30, i32 0, metadata !10, null}
!696 = metadata !{i32 32, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !10, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!698 = metadata !{i32 36, i32 0, metadata !10, null}
!699 = metadata !{i32 49, i32 0, metadata !18, null}
!700 = metadata !{i32 50, i32 0, metadata !18, null}
!701 = metadata !{i32 53, i32 0, metadata !18, null}
!702 = metadata !{i32 54, i32 0, metadata !18, null}
!703 = metadata !{i32 56, i32 0, metadata !18, null}
!704 = metadata !{i32 58, i32 0, metadata !705, null} ; [ DW_TAG_imported_module ]
!705 = metadata !{i32 786443, metadata !1, metadata !18, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!706 = metadata !{i32 59, i32 0, metadata !705, null}
!707 = metadata !{i32 60, i32 0, metadata !705, null}
!708 = metadata !{i32 61, i32 0, metadata !705, null}
!709 = metadata !{i32 63, i32 0, metadata !705, null}
!710 = metadata !{i32 64, i32 0, metadata !705, null}
!711 = metadata !{i32 65, i32 0, metadata !705, null}
!712 = metadata !{i32 66, i32 0, metadata !705, null}
!713 = metadata !{i32 67, i32 0, metadata !705, null}
!714 = metadata !{i32 70, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !18, i32 69, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!716 = metadata !{i32 71, i32 0, metadata !715, null}
!717 = metadata !{i32 72, i32 0, metadata !715, null}
!718 = metadata !{i32 73, i32 0, metadata !715, null}
!719 = metadata !{i32 75, i32 0, metadata !715, null}
!720 = metadata !{i32 76, i32 0, metadata !715, null}
!721 = metadata !{i32 77, i32 0, metadata !715, null}
!722 = metadata !{i32 78, i32 0, metadata !715, null}
!723 = metadata !{i32 81, i32 0, metadata !18, null}
!724 = metadata !{i32 82, i32 0, metadata !18, null}
!725 = metadata !{i32 83, i32 0, metadata !18, null}
!726 = metadata !{i32 92, i32 0, metadata !93, null}
!727 = metadata !{i32 95, i32 0, metadata !93, null}
!728 = metadata !{i32 97, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !93, i32 96, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!730 = metadata !{i32 98, i32 0, metadata !729, null}
!731 = metadata !{i32 99, i32 0, metadata !729, null}
!732 = metadata !{i32 102, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !93, i32 101, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!734 = metadata !{i32 103, i32 0, metadata !733, null}
!735 = metadata !{i32 105, i32 0, metadata !93, null}
!736 = metadata !{i32 114, i32 0, metadata !101, null}
!737 = metadata !{i32 116, i32 0, metadata !101, null}
!738 = metadata !{i32 118, i32 0, metadata !101, null}
!739 = metadata !{i32 119, i32 0, metadata !101, null}
!740 = metadata !{i32 120, i32 0, metadata !101, null}
!741 = metadata !{i32 139, i32 0, metadata !106, null}
!742 = metadata !{i32 141, i32 0, metadata !106, null}
!743 = metadata !{i32 144, i32 0, metadata !106, null}
!744 = metadata !{i32 151, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !106, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!746 = metadata !{i32 152, i32 0, metadata !745, null}
!747 = metadata !{i32 153, i32 0, metadata !745, null}
!748 = metadata !{i32 156, i32 0, metadata !106, null}
!749 = metadata !{i32 158, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !106, i32 157, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!751 = metadata !{i32 159, i32 0, metadata !750, null}
!752 = metadata !{i32 160, i32 0, metadata !750, null}
!753 = metadata !{i32 161, i32 0, metadata !106, null}
!754 = metadata !{i32 163, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !106, i32 162, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!756 = metadata !{i32 164, i32 0, metadata !755, null}
!757 = metadata !{i32 165, i32 0, metadata !755, null}
!758 = metadata !{i32 166, i32 0, metadata !106, null}
!759 = metadata !{i32 168, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !106, i32 167, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!761 = metadata !{i32 169, i32 0, metadata !760, null}
!762 = metadata !{i32 170, i32 0, metadata !760, null}
!763 = metadata !{i32 171, i32 0, metadata !106, null}
!764 = metadata !{i32 173, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !106, i32 172, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!766 = metadata !{i32 174, i32 0, metadata !765, null}
!767 = metadata !{i32 186, i32 0, metadata !106, null}
!768 = metadata !{i32 176, i32 0, metadata !106, null}
!769 = metadata !{i32 178, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !106, i32 177, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!771 = metadata !{i32 179, i32 0, metadata !770, null}
!772 = metadata !{i32 180, i32 0, metadata !770, null}
!773 = metadata !{i32 183, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !106, i32 182, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!775 = metadata !{i32 188, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !106, i32 187, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!777 = metadata !{i32 189, i32 0, metadata !776, null}
!778 = metadata !{i32 190, i32 0, metadata !776, null}
!779 = metadata !{i32 786689, metadata !101, metadata !"mb_addr", metadata !11, i32 16777330, metadata !14, i32 0, metadata !778} ; [ DW_TAG_arg_variable ] [mb_addr] [line 114]
!780 = metadata !{i32 114, i32 0, metadata !101, metadata !778}
!781 = metadata !{i32 786689, metadata !101, metadata !"x", metadata !11, i32 33554546, metadata !96, i32 0, metadata !778} ; [ DW_TAG_arg_variable ] [x] [line 114]
!782 = metadata !{i32 786689, metadata !101, metadata !"y", metadata !11, i32 50331762, metadata !96, i32 0, metadata !778} ; [ DW_TAG_arg_variable ] [y] [line 114]
!783 = metadata !{i32 116, i32 0, metadata !101, metadata !778}
!784 = metadata !{i32 118, i32 0, metadata !101, metadata !778}
!785 = metadata !{i32 119, i32 0, metadata !101, metadata !778}
!786 = metadata !{i32 191, i32 0, metadata !776, null}
!787 = metadata !{i32 193, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !776, i32 192, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!789 = metadata !{i32 194, i32 0, metadata !788, null}
!790 = metadata !{i32 195, i32 0, metadata !788, null}
!791 = metadata !{i32 198, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !776, i32 197, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!793 = metadata !{i32 199, i32 0, metadata !792, null}
!794 = metadata !{i32 202, i32 0, metadata !106, null}
!795 = metadata !{i32 220, i32 0, metadata !129, null}
!796 = metadata !{i32 222, i32 0, metadata !129, null}
!797 = metadata !{i32 -1}
!798 = metadata !{i32 224, i32 0, metadata !129, null}
!799 = metadata !{i32 226, i32 0, metadata !129, null}
!800 = metadata !{i32 233, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !129, i32 232, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!802 = metadata !{i32 234, i32 0, metadata !801, null}
!803 = metadata !{i32 235, i32 0, metadata !801, null}
!804 = metadata !{i32 239, i32 0, metadata !129, null}
!805 = metadata !{i32 241, i32 0, metadata !129, null}
!806 = metadata !{i32 245, i32 0, metadata !129, null}
!807 = metadata !{i32 250, i32 0, metadata !129, null}
!808 = metadata !{i32 252, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !129, i32 251, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!810 = metadata !{i32 254, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !809, i32 253, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!812 = metadata !{i32 286, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !811, i32 284, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!814 = metadata !{i32 257, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !811, i32 255, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!816 = metadata !{i32 260, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !815, i32 258, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!818 = metadata !{i32 261, i32 0, metadata !817, null}
!819 = metadata !{i32 262, i32 0, metadata !817, null}
!820 = metadata !{i32 263, i32 0, metadata !817, null}
!821 = metadata !{i32 267, i32 0, metadata !822, null}
!822 = metadata !{i32 786443, metadata !1, metadata !815, i32 265, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!823 = metadata !{i32 268, i32 0, metadata !822, null}
!824 = metadata !{i32 269, i32 0, metadata !822, null}
!825 = metadata !{i32 271, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !822, i32 270, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!827 = metadata !{i32 277, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !826, i32 276, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!829 = metadata !{i32 278, i32 0, metadata !828, null}
!830 = metadata !{i32 289, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !813, i32 287, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!832 = metadata !{i32 290, i32 0, metadata !831, null}
!833 = metadata !{i32 291, i32 0, metadata !831, null}
!834 = metadata !{i32 293, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !831, i32 292, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!836 = metadata !{i32 295, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !835, i32 294, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!838 = metadata !{i32 296, i32 0, metadata !837, null}
!839 = metadata !{i32 297, i32 0, metadata !837, null}
!840 = metadata !{i32 307, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !813, i32 305, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!842 = metadata !{i32 308, i32 0, metadata !841, null}
!843 = metadata !{i32 309, i32 0, metadata !841, null}
!844 = metadata !{i32 378, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !846, i32 376, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!846 = metadata !{i32 786443, metadata !1, metadata !847, i32 373, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!847 = metadata !{i32 786443, metadata !1, metadata !848, i32 316, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!848 = metadata !{i32 786443, metadata !1, metadata !809, i32 314, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!849 = metadata !{i32 379, i32 0, metadata !845, null}
!850 = metadata !{i32 380, i32 0, metadata !845, null}
!851 = metadata !{i32 317, i32 0, metadata !847, null}
!852 = metadata !{i32 320, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !847, i32 318, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!854 = metadata !{i32 325, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !853, i32 321, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!856 = metadata !{i32 327, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !855, i32 326, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!858 = metadata !{i32 333, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !857, i32 332, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!860 = metadata !{i32 335, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !859, i32 334, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!862 = metadata !{i32 336, i32 0, metadata !861, null}
!863 = metadata !{i32 339, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !859, i32 338, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!865 = metadata !{i32 340, i32 0, metadata !864, null}
!866 = metadata !{i32 350, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !853, i32 346, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!868 = metadata !{i32 352, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !867, i32 351, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!870 = metadata !{i32 354, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !869, i32 353, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!872 = metadata !{i32 355, i32 0, metadata !871, null}
!873 = metadata !{i32 356, i32 0, metadata !871, null}
!874 = metadata !{i32 359, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !869, i32 358, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!876 = metadata !{i32 361, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !875, i32 360, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!878 = metadata !{i32 362, i32 0, metadata !877, null}
!879 = metadata !{i32 365, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !875, i32 364, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!881 = metadata !{i32 366, i32 0, metadata !880, null}
!882 = metadata !{i32 375, i32 0, metadata !846, null}
!883 = metadata !{i32 382, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !845, i32 381, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!885 = metadata !{i32 384, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !884, i32 383, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!887 = metadata !{i32 386, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !886, i32 385, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!889 = metadata !{i32 387, i32 0, metadata !888, null}
!890 = metadata !{i32 390, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !886, i32 389, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!892 = metadata !{i32 391, i32 0, metadata !891, null}
!893 = metadata !{i32 405, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !846, i32 401, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!895 = metadata !{i32 407, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !894, i32 406, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!897 = metadata !{i32 409, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !896, i32 408, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!899 = metadata !{i32 411, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !898, i32 410, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!901 = metadata !{i32 412, i32 0, metadata !900, null}
!902 = metadata !{i32 415, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !898, i32 414, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!904 = metadata !{i32 416, i32 0, metadata !903, null}
!905 = metadata !{i32 421, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !896, i32 420, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!907 = metadata !{i32 422, i32 0, metadata !906, null}
!908 = metadata !{i32 432, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !129, i32 431, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!910 = metadata !{i32 434, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !909, i32 433, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!912 = metadata !{i32 436, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !911, i32 435, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!914 = metadata !{i32 465, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !913, i32 463, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!916 = metadata !{i32 439, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !913, i32 437, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!918 = metadata !{i32 442, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !917, i32 440, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!920 = metadata !{i32 445, i32 0, metadata !919, null}
!921 = metadata !{i32 447, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !919, i32 446, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!923 = metadata !{i32 448, i32 0, metadata !922, null}
!924 = metadata !{i32 451, i32 0, metadata !919, null}
!925 = metadata !{i32 452, i32 0, metadata !919, null}
!926 = metadata !{i32 453, i32 0, metadata !919, null}
!927 = metadata !{i32 457, i32 0, metadata !928, null}
!928 = metadata !{i32 786443, metadata !1, metadata !917, i32 455, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!929 = metadata !{i32 458, i32 0, metadata !928, null}
!930 = metadata !{i32 459, i32 0, metadata !928, null}
!931 = metadata !{i32 468, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !915, i32 466, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!933 = metadata !{i32 469, i32 0, metadata !932, null}
!934 = metadata !{i32 470, i32 0, metadata !932, null}
!935 = metadata !{i32 472, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !932, i32 471, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!937 = metadata !{i32 474, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !936, i32 473, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!939 = metadata !{i32 475, i32 0, metadata !938, null}
!940 = metadata !{i32 476, i32 0, metadata !938, null}
!941 = metadata !{i32 486, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !915, i32 484, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!943 = metadata !{i32 487, i32 0, metadata !942, null}
!944 = metadata !{i32 488, i32 0, metadata !942, null}
!945 = metadata !{i32 496, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !911, i32 493, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!947 = metadata !{i32 498, i32 0, metadata !948, null}
!948 = metadata !{i32 786443, metadata !1, metadata !946, i32 497, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!949 = metadata !{i32 499, i32 0, metadata !948, null}
!950 = metadata !{i32 500, i32 0, metadata !948, null}
!951 = metadata !{i32 501, i32 0, metadata !948, null}
!952 = metadata !{i32 505, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !946, i32 504, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!954 = metadata !{i32 506, i32 0, metadata !953, null}
!955 = metadata !{i32 507, i32 0, metadata !953, null}
!956 = metadata !{i32 508, i32 0, metadata !953, null}
!957 = metadata !{i32 513, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !909, i32 512, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!959 = metadata !{i32 515, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !958, i32 514, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!961 = metadata !{i32 534, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !960, i32 532, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!963 = metadata !{i32 518, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !960, i32 516, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!965 = metadata !{i32 521, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !964, i32 519, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!967 = metadata !{i32 522, i32 0, metadata !966, null}
!968 = metadata !{i32 523, i32 0, metadata !966, null}
!969 = metadata !{i32 524, i32 0, metadata !966, null}
!970 = metadata !{i32 528, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !964, i32 526, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!972 = metadata !{i32 563, i32 0, metadata !129, null}
!973 = metadata !{i32 537, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !962, i32 535, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!975 = metadata !{i32 538, i32 0, metadata !974, null}
!976 = metadata !{i32 539, i32 0, metadata !974, null}
!977 = metadata !{i32 541, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !974, i32 540, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!979 = metadata !{i32 543, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !978, i32 542, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!981 = metadata !{i32 544, i32 0, metadata !980, null}
!982 = metadata !{i32 545, i32 0, metadata !980, null}
!983 = metadata !{i32 555, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !962, i32 553, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!985 = metadata !{i32 556, i32 0, metadata !984, null}
!986 = metadata !{i32 557, i32 0, metadata !984, null}
!987 = metadata !{i32 565, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !129, i32 564, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!989 = metadata !{i32 566, i32 0, metadata !988, null}
!990 = metadata !{i32 567, i32 0, metadata !988, null}
!991 = metadata !{i32 786689, metadata !101, metadata !"mb_addr", metadata !11, i32 16777330, metadata !14, i32 0, metadata !990} ; [ DW_TAG_arg_variable ] [mb_addr] [line 114]
!992 = metadata !{i32 114, i32 0, metadata !101, metadata !990}
!993 = metadata !{i32 786689, metadata !101, metadata !"x", metadata !11, i32 33554546, metadata !96, i32 0, metadata !990} ; [ DW_TAG_arg_variable ] [x] [line 114]
!994 = metadata !{i32 786689, metadata !101, metadata !"y", metadata !11, i32 50331762, metadata !96, i32 0, metadata !990} ; [ DW_TAG_arg_variable ] [y] [line 114]
!995 = metadata !{i32 116, i32 0, metadata !101, metadata !990}
!996 = metadata !{i32 118, i32 0, metadata !101, metadata !990}
!997 = metadata !{i32 119, i32 0, metadata !101, metadata !990}
!998 = metadata !{i32 568, i32 0, metadata !988, null}
!999 = metadata !{i32 570, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !988, i32 569, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!1001 = metadata !{i32 571, i32 0, metadata !1000, null}
!1002 = metadata !{i32 572, i32 0, metadata !1000, null}
!1003 = metadata !{i32 575, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !988, i32 574, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!1005 = metadata !{i32 576, i32 0, metadata !1004, null}
!1006 = metadata !{i32 576, i32 0, metadata !129, null}
!1007 = metadata !{i32 598, i32 0, metadata !140, null}
!1008 = metadata !{i32 600, i32 0, metadata !140, null}
!1009 = metadata !{i32 601, i32 0, metadata !140, null}
!1010 = metadata !{i32 603, i32 0, metadata !140, null}
!1011 = metadata !{i32 604, i32 0, metadata !140, null}
!1012 = metadata !{i32 606, i32 0, metadata !140, null}
!1013 = metadata !{i32 607, i32 0, metadata !140, null}
!1014 = metadata !{i32 628, i32 0, metadata !149, null}
!1015 = metadata !{i32 630, i32 0, metadata !149, null}
!1016 = metadata !{i32 631, i32 0, metadata !149, null}
!1017 = metadata !{i32 633, i32 0, metadata !149, null}
!1018 = metadata !{i32 635, i32 0, metadata !149, null}
!1019 = metadata !{i32 637, i32 0, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !1, metadata !149, i32 636, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!1021 = metadata !{i32 638, i32 0, metadata !1020, null}
!1022 = metadata !{i32 639, i32 0, metadata !1020, null}
!1023 = metadata !{i32 640, i32 0, metadata !1020, null}
!1024 = metadata !{i32 641, i32 0, metadata !1020, null}
!1025 = metadata !{i32 642, i32 0, metadata !149, null}
!1026 = metadata !{i32 663, i32 0, metadata !161, null}
!1027 = metadata !{i32 665, i32 0, metadata !161, null}
!1028 = metadata !{i32 666, i32 0, metadata !161, null}
!1029 = metadata !{i32 668, i32 0, metadata !161, null}
!1030 = metadata !{i32 670, i32 0, metadata !161, null}
!1031 = metadata !{i32 672, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !161, i32 671, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/mb_access.c]
!1033 = metadata !{i32 673, i32 0, metadata !1032, null}
!1034 = metadata !{i32 674, i32 0, metadata !1032, null}
!1035 = metadata !{i32 675, i32 0, metadata !1032, null}
!1036 = metadata !{i32 676, i32 0, metadata !1032, null}
!1037 = metadata !{i32 677, i32 0, metadata !161, null}
