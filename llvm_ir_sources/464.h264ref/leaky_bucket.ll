; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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

@total_frame_buffer = global i64 0, align 8
@input = external global %struct.InputParameters*
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str5 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c" Number Leaky Buckets: %ld \0A     Rmin     Bmin     Fmin \0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c" %8ld %8ld %8ld \0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = common global [10000 x i64] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
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
@p_stat = common global %struct.__sFILE* null, align 8
@p_log = common global %struct.__sFILE* null, align 8
@p_trace = common global %struct.__sFILE* null, align 8
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
@str = private unnamed_addr constant [90 x i8] c" Leaky BucketRateFile does not have valid entries;\0A using rate calculated from avg. rate \00"
@str14 = private unnamed_addr constant [76 x i8] c" LeakyBucketRate File does not exist; using rate calculated from avg. rate \00"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_LeakyBucketRate(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
  %buf = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i64 %NumberLeakyBuckets, i64 0, metadata !20, metadata !620), !dbg !621
  tail call void @llvm.dbg.value(metadata i64* %Rmin, i64 0, metadata !21, metadata !620), !dbg !622
  %1 = load %struct.InputParameters** @input, align 8, !dbg !623, !tbaa !625
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 89, i64 0, !dbg !623
  %3 = tail call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !629
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %3, i64 0, metadata !22, metadata !620), !dbg !630
  %4 = icmp eq %struct.__sFILE* %3, null, !dbg !631
  br i1 %4, label %6, label %.preheader, !dbg !632

.preheader:                                       ; preds = %0
  %5 = icmp eq i64 %NumberLeakyBuckets, 0, !dbg !633
  br i1 %5, label %._crit_edge, label %.lr.ph, !dbg !636

; <label>:6                                       ; preds = %0
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str14, i64 0, i64 0)), !dbg !637
  br label %17, !dbg !639

.lr.ph:                                           ; preds = %.preheader, %11
  %i.02 = phi i64 [ %14, %11 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64* %buf, i64 0, metadata !86, metadata !620), !dbg !640
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i64* %buf) #5, !dbg !641
  %8 = icmp eq i32 %7, 1, !dbg !644
  br i1 %8, label %11, label %9, !dbg !645

; <label>:9                                       ; preds = %.lr.ph
  %puts = call i32 @puts(i8* getelementptr inbounds ([90 x i8]* @str, i64 0, i64 0)), !dbg !646
  %10 = call i32 @fclose(%struct.__sFILE* %3) #5, !dbg !648
  br label %17, !dbg !649

; <label>:11                                      ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata i64* %buf, i64 0, metadata !86, metadata !620), !dbg !640
  %12 = load i64* %buf, align 8, !dbg !650, !tbaa !651
  %13 = getelementptr inbounds i64* %Rmin, i64 %i.02, !dbg !653
  store i64 %12, i64* %13, align 8, !dbg !654, !tbaa !651
  %14 = add nuw i64 %i.02, 1, !dbg !655
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !85, metadata !620), !dbg !656
  %15 = icmp ult i64 %14, %NumberLeakyBuckets, !dbg !633
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !636

._crit_edge:                                      ; preds = %11, %.preheader
  %16 = call i32 @fclose(%struct.__sFILE* %3) #5, !dbg !657
  br label %17, !dbg !658

; <label>:17                                      ; preds = %._crit_edge, %9, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %9 ], [ 1, %._crit_edge ]
  ret i32 %.0, !dbg !659
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @PutBigDoubleWord(i64 %dw, %struct.__sFILE* nocapture %fp) #0 {
  tail call void @llvm.dbg.value(metadata i64 %dw, i64 0, metadata !91, metadata !620), !dbg !660
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !92, metadata !620), !dbg !661
  %1 = lshr i64 %dw, 24, !dbg !662
  %.tr = trunc i64 %1 to i32, !dbg !663
  %2 = and i32 %.tr, 255, !dbg !663
  %3 = tail call i32 @fputc(i32 %2, %struct.__sFILE* %fp) #5, !dbg !664
  %4 = lshr i64 %dw, 16, !dbg !665
  %.tr1 = trunc i64 %4 to i32, !dbg !666
  %5 = and i32 %.tr1, 255, !dbg !666
  %6 = tail call i32 @fputc(i32 %5, %struct.__sFILE* %fp) #5, !dbg !667
  %7 = lshr i64 %dw, 8, !dbg !668
  %.tr2 = trunc i64 %7 to i32, !dbg !669
  %8 = and i32 %.tr2, 255, !dbg !669
  %9 = tail call i32 @fputc(i32 %8, %struct.__sFILE* %fp) #5, !dbg !670
  %dw.tr = trunc i64 %dw to i32, !dbg !671
  %10 = and i32 %dw.tr, 255, !dbg !671
  %11 = tail call i32 @fputc(i32 %10, %struct.__sFILE* %fp) #5, !dbg !672
  ret void, !dbg !673
}

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_buffer(i64 %NumberLeakyBuckets, i64* nocapture readonly %Rmin, i64* nocapture readonly %Bmin, i64* nocapture readonly %Fmin) #0 {
  tail call void @llvm.dbg.value(metadata i64 %NumberLeakyBuckets, i64 0, metadata !97, metadata !620), !dbg !674
  tail call void @llvm.dbg.value(metadata i64* %Rmin, i64 0, metadata !98, metadata !620), !dbg !675
  tail call void @llvm.dbg.value(metadata i64* %Bmin, i64 0, metadata !99, metadata !620), !dbg !676
  tail call void @llvm.dbg.value(metadata i64* %Fmin, i64 0, metadata !100, metadata !620), !dbg !677
  %1 = load %struct.InputParameters** @input, align 8, !dbg !678, !tbaa !625
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 90, i64 0, !dbg !678
  %3 = tail call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !680
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %3, i64 0, metadata !101, metadata !620), !dbg !681
  %4 = icmp eq %struct.__sFILE* %3, null, !dbg !682
  br i1 %4, label %5, label %9, !dbg !683

; <label>:5                                       ; preds = %0
  %6 = load %struct.InputParameters** @input, align 8, !dbg !684, !tbaa !625
  %7 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 90, i64 0, !dbg !684
  %8 = tail call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i8* %7) #5, !dbg !684
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #5, !dbg !686
  br label %9, !dbg !687

; <label>:9                                       ; preds = %5, %0
  tail call void @PutBigDoubleWord(i64 %NumberLeakyBuckets, %struct.__sFILE* %3) #6, !dbg !688
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), i64 %NumberLeakyBuckets) #5, !dbg !689
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !102, metadata !620), !dbg !690
  %11 = icmp eq i64 %NumberLeakyBuckets, 0, !dbg !691
  br i1 %11, label %._crit_edge, label %.lr.ph, !dbg !694

.lr.ph:                                           ; preds = %9, %.lr.ph
  %iBucket.01 = phi i64 [ %22, %.lr.ph ], [ 0, %9 ]
  %12 = getelementptr inbounds i64* %Rmin, i64 %iBucket.01, !dbg !695
  %13 = load i64* %12, align 8, !dbg !695, !tbaa !651
  tail call void @PutBigDoubleWord(i64 %13, %struct.__sFILE* %3) #6, !dbg !697
  %14 = getelementptr inbounds i64* %Bmin, i64 %iBucket.01, !dbg !698
  %15 = load i64* %14, align 8, !dbg !698, !tbaa !651
  tail call void @PutBigDoubleWord(i64 %15, %struct.__sFILE* %3) #6, !dbg !699
  %16 = getelementptr inbounds i64* %Fmin, i64 %iBucket.01, !dbg !700
  %17 = load i64* %16, align 8, !dbg !700, !tbaa !651
  tail call void @PutBigDoubleWord(i64 %17, %struct.__sFILE* %3) #6, !dbg !701
  %18 = load i64* %12, align 8, !dbg !702, !tbaa !651
  %19 = load i64* %14, align 8, !dbg !703, !tbaa !651
  %20 = load i64* %16, align 8, !dbg !704, !tbaa !651
  %21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), i64 %18, i64 %19, i64 %20) #5, !dbg !705
  %22 = add nuw i64 %iBucket.01, 1, !dbg !706
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !102, metadata !620), !dbg !690
  %exitcond = icmp eq i64 %22, %NumberLeakyBuckets, !dbg !694
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !694

._crit_edge:                                      ; preds = %.lr.ph, %9
  %23 = tail call i32 @fclose(%struct.__sFILE* %3) #5, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Sort(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
  tail call void @llvm.dbg.value(metadata i64 %NumberLeakyBuckets, i64 0, metadata !107, metadata !620), !dbg !709
  tail call void @llvm.dbg.value(metadata i64* %Rmin, i64 0, metadata !108, metadata !620), !dbg !710
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !109, metadata !620), !dbg !711
  %1 = add i64 %NumberLeakyBuckets, -1, !dbg !712
  %2 = icmp eq i64 %1, 0, !dbg !715
  br i1 %2, label %._crit_edge, label %.lr.ph3, !dbg !716

.loopexit:                                        ; preds = %12, %.lr.ph3
  %exitcond4 = icmp eq i64 %3, %1, !dbg !716
  br i1 %exitcond4, label %._crit_edge, label %.lr.ph3, !dbg !716

.lr.ph3:                                          ; preds = %0, %.loopexit
  %i.02 = phi i64 [ %3, %.loopexit ], [ 0, %0 ]
  %3 = add nuw i64 %i.02, 1, !dbg !717
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !110, metadata !620), !dbg !720
  %4 = icmp ult i64 %3, %NumberLeakyBuckets, !dbg !721
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !723

.lr.ph:                                           ; preds = %.lr.ph3
  %5 = getelementptr inbounds i64* %Rmin, i64 %i.02, !dbg !724
  br label %6, !dbg !723

; <label>:6                                       ; preds = %12, %.lr.ph
  %j.01 = phi i64 [ %3, %.lr.ph ], [ %13, %12 ]
  %7 = load i64* %5, align 8, !dbg !724, !tbaa !651
  %8 = getelementptr inbounds i64* %Rmin, i64 %j.01, !dbg !727
  %9 = load i64* %8, align 8, !dbg !727, !tbaa !651
  %10 = icmp ugt i64 %7, %9, !dbg !728
  br i1 %10, label %11, label %12, !dbg !729

; <label>:11                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !111, metadata !620), !dbg !730
  store i64 %9, i64* %5, align 8, !dbg !731, !tbaa !651
  store i64 %7, i64* %8, align 8, !dbg !733, !tbaa !651
  br label %12, !dbg !734

; <label>:12                                      ; preds = %6, %11
  %13 = add nuw i64 %j.01, 1, !dbg !735
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !110, metadata !620), !dbg !720
  %exitcond = icmp eq i64 %13, %NumberLeakyBuckets, !dbg !723
  br i1 %exitcond, label %.loopexit, label %6, !dbg !723

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void, !dbg !736
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_buffer() #0 {
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !124, metadata !620), !dbg !737
  %1 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !738, !tbaa !625
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), i64 80, i64 1, %struct.__sFILE* %1), !dbg !739
  %3 = load i64* @total_frame_buffer, align 8, !dbg !740, !tbaa !651
  %4 = load %struct.InputParameters** @input, align 8, !dbg !741, !tbaa !625
  %5 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 2, !dbg !742
  %6 = load i32* %5, align 4, !dbg !742, !tbaa !743
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 %3, i32 %6) #5, !dbg !747
  %8 = load %struct.InputParameters** @input, align 8, !dbg !748, !tbaa !625
  %9 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 88, !dbg !749
  %10 = load i32* %9, align 4, !dbg !749, !tbaa !750
  %11 = sext i32 %10 to i64, !dbg !751
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !118, metadata !620), !dbg !752
  tail call void @llvm.dbg.value(metadata i64* undef, i64 0, metadata !119, metadata !620), !dbg !753
  %12 = tail call i8* @calloc(i64 %11, i64 8) #5, !dbg !754
  %13 = bitcast i8* %12 to i64*, !dbg !754
  tail call void @llvm.dbg.value(metadata i64* %13, i64 0, metadata !129, metadata !620), !dbg !755
  %14 = icmp eq i8* %12, null, !dbg !756
  br i1 %14, label %15, label %16, !dbg !758

; <label>:15                                      ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !759
  br label %16, !dbg !759

; <label>:16                                      ; preds = %0, %15
  %17 = tail call i8* @calloc(i64 %11, i64 8) #5, !dbg !760
  %18 = bitcast i8* %17 to i64*, !dbg !760
  tail call void @llvm.dbg.value(metadata i64* %18, i64 0, metadata !130, metadata !620), !dbg !761
  %19 = icmp eq i8* %17, null, !dbg !762
  br i1 %19, label %20, label %21, !dbg !764

; <label>:20                                      ; preds = %16
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !765
  br label %21, !dbg !765

; <label>:21                                      ; preds = %16, %20
  %22 = tail call i8* @calloc(i64 %11, i64 8) #5, !dbg !766
  %23 = bitcast i8* %22 to i64*, !dbg !766
  tail call void @llvm.dbg.value(metadata i64* %23, i64 0, metadata !131, metadata !620), !dbg !767
  %24 = icmp eq i8* %22, null, !dbg !768
  br i1 %24, label %25, label %.preheader2, !dbg !770

; <label>:25                                      ; preds = %21
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !771
  br label %.preheader2, !dbg !771

.preheader2:                                      ; preds = %21, %25
  %26 = load i64* @total_frame_buffer, align 8, !dbg !772, !tbaa !651
  %27 = icmp eq i64 %26, 0, !dbg !775
  br i1 %27, label %33, label %.lr.ph16, !dbg !776

.lr.ph16:                                         ; preds = %.preheader2, %.lr.ph16
  %TotalRate.015 = phi i64 [ %30, %.lr.ph16 ], [ 0, %.preheader2 ]
  %iFrame.014 = phi i64 [ %31, %.lr.ph16 ], [ 0, %.preheader2 ]
  %28 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.014, !dbg !777
  %29 = load i64* %28, align 8, !dbg !777, !tbaa !651
  %30 = add i64 %29, %TotalRate.015, !dbg !779
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !117, metadata !620), !dbg !780
  %31 = add nuw i64 %iFrame.014, 1, !dbg !781
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !123, metadata !620), !dbg !782
  %32 = icmp ult i64 %31, %26, !dbg !775
  br i1 %32, label %.lr.ph16, label %._crit_edge17, !dbg !776

._crit_edge17:                                    ; preds = %.lr.ph16
  %phitmp = uitofp i64 %30 to float, !dbg !776
  %phitmp21 = uitofp i64 %26 to float, !dbg !776
  br label %33, !dbg !776

; <label>:33                                      ; preds = %.preheader2, %._crit_edge17
  %.lcssa = phi float [ %phitmp21, %._crit_edge17 ], [ 0.000000e+00, %.preheader2 ]
  %TotalRate.0.lcssa = phi float [ %phitmp, %._crit_edge17 ], [ 0.000000e+00, %.preheader2 ]
  %34 = fdiv float %TotalRate.0.lcssa, %.lcssa, !dbg !783
  %35 = fptoui float %34 to i64, !dbg !784
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !116, metadata !620), !dbg !785
  %36 = tail call i32 @get_LeakyBucketRate(i64 %11, i64* %13) #6, !dbg !786
  %37 = icmp eq i32 %36, 1, !dbg !788
  br i1 %37, label %.loopexit, label %.preheader, !dbg !789

.preheader:                                       ; preds = %33
  %38 = icmp eq i32 %10, 0, !dbg !790
  br i1 %38, label %.loopexit.thread, label %.lr.ph13, !dbg !794

.loopexit.thread:                                 ; preds = %.preheader
  tail call void @Sort(i64 %11, i64* %13) #6, !dbg !795
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !125, metadata !620), !dbg !796
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !122, metadata !620), !dbg !797
  br label %._crit_edge11, !dbg !798

.lr.ph13:                                         ; preds = %.preheader
  %39 = uitofp i64 %35 to float, !dbg !800
  %40 = load %struct.ImageParameters** @img, align 8, !dbg !803, !tbaa !625
  %41 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 12, !dbg !804
  %42 = load %struct.InputParameters** @input, align 8, !dbg !805, !tbaa !625
  %43 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 5, !dbg !806
  %44 = lshr i64 %35, 2, !dbg !807
  %45 = uitofp i64 %44 to float, !dbg !808
  br label %46, !dbg !794

; <label>:46                                      ; preds = %.lr.ph13, %69
  %iBucket.012 = phi i64 [ 0, %.lr.ph13 ], [ %71, %69 ]
  %47 = icmp eq i64 %iBucket.012, 0, !dbg !809
  br i1 %47, label %48, label %56, !dbg !810

; <label>:48                                      ; preds = %46
  %49 = load float* %41, align 4, !dbg !804, !tbaa !811
  %50 = fmul float %39, %49, !dbg !814
  %51 = fptoui float %50 to i64, !dbg !815
  %52 = load i32* %43, align 4, !dbg !806, !tbaa !816
  %53 = add nsw i32 %52, 1, !dbg !817
  %54 = sext i32 %53 to i64, !dbg !818
  %55 = udiv i64 %51, %54, !dbg !819
  br label %69, !dbg !820

; <label>:56                                      ; preds = %46
  %57 = add i64 %iBucket.012, -1, !dbg !821
  %58 = getelementptr inbounds i64* %13, i64 %57, !dbg !822
  %59 = load i64* %58, align 8, !dbg !822, !tbaa !651
  %60 = uitofp i64 %59 to float, !dbg !823
  %61 = load float* %41, align 4, !dbg !824, !tbaa !811
  %62 = fmul float %45, %61, !dbg !825
  %63 = load i32* %43, align 4, !dbg !826, !tbaa !816
  %64 = add nsw i32 %63, 1, !dbg !827
  %65 = sitofp i32 %64 to float, !dbg !828
  %66 = fdiv float %62, %65, !dbg !829
  %67 = fadd float %60, %66, !dbg !830
  %68 = fptoui float %67 to i64, !dbg !831
  br label %69

; <label>:69                                      ; preds = %48, %56
  %.sink = phi i64 [ %55, %48 ], [ %68, %56 ]
  %70 = getelementptr inbounds i64* %13, i64 %iBucket.012, !dbg !820
  store i64 %.sink, i64* %70, align 8
  %71 = add nuw i64 %iBucket.012, 1, !dbg !832
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !122, metadata !620), !dbg !797
  %72 = icmp ult i64 %71, %11, !dbg !790
  br i1 %72, label %46, label %.loopexit, !dbg !794

.loopexit:                                        ; preds = %69, %33
  tail call void @Sort(i64 %11, i64* %13) #6, !dbg !795
  %73 = mul i64 %35, 20, !dbg !833
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !125, metadata !620), !dbg !796
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !122, metadata !620), !dbg !797
  %74 = icmp eq i32 %10, 0, !dbg !834
  br i1 %74, label %._crit_edge11, label %.lr.ph10, !dbg !798

.lr.ph10:                                         ; preds = %.loopexit
  %75 = load %struct.InputParameters** @input, align 8, !dbg !836, !tbaa !625
  %76 = getelementptr inbounds %struct.InputParameters* %75, i64 0, i32 5, !dbg !838
  %77 = load i32* %76, align 4, !dbg !838, !tbaa !816
  %78 = add nsw i32 %77, 1, !dbg !839
  %79 = sext i32 %78 to i64, !dbg !840
  %80 = load %struct.ImageParameters** @img, align 8, !dbg !841, !tbaa !625
  %81 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 12, !dbg !842
  %82 = load float* %81, align 4, !dbg !842, !tbaa !811
  %83 = load i64* @total_frame_buffer, align 8, !dbg !843, !tbaa !651
  %84 = icmp eq i64 %83, 0, !dbg !846
  %85 = load i64* getelementptr inbounds ([10000 x i64]* @Bit_Buffer, i64 0, i64 0), align 16, !dbg !847, !tbaa !651
  br label %86, !dbg !798

; <label>:86                                      ; preds = %.lr.ph10, %115
  %iBucket.18 = phi i64 [ 0, %.lr.ph10 ], [ %118, %115 ]
  %FrameIndex.07 = phi i64 [ 0, %.lr.ph10 ], [ %FrameIndex.1.lcssa, %115 ]
  %87 = getelementptr inbounds i64* %13, i64 %iBucket.18, !dbg !848
  %88 = load i64* %87, align 8, !dbg !848, !tbaa !651
  %89 = mul i64 %79, %88, !dbg !849
  %90 = uitofp i64 %89 to float, !dbg !848
  %91 = fdiv float %90, %82, !dbg !850
  %92 = fptosi float %91 to i64, !dbg !851
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !128, metadata !620), !dbg !852
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !127, metadata !620), !dbg !853
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !121, metadata !620), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !123, metadata !620), !dbg !782
  br i1 %84, label %._crit_edge, label %.lr.ph, !dbg !855

.lr.ph:                                           ; preds = %86, %.lr.ph
  %93 = phi i64 [ %storemerge1, %.lr.ph ], [ %73, %86 ], !dbg !856
  %minB.05 = phi i64 [ %.minB.0, %.lr.ph ], [ %73, %86 ]
  %iFrame.14 = phi i64 [ %99, %.lr.ph ], [ 0, %86 ]
  %FrameIndex.13 = phi i64 [ %iFrame.1.FrameIndex.1, %.lr.ph ], [ %FrameIndex.07, %86 ]
  %94 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.14, !dbg !858
  %95 = load i64* %94, align 8, !dbg !858, !tbaa !651
  %96 = sub nsw i64 %93, %95, !dbg !859
  %97 = icmp slt i64 %96, %minB.05, !dbg !860
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !121, metadata !620), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !124, metadata !620), !dbg !737
  %iFrame.1.FrameIndex.1 = select i1 %97, i64 %iFrame.14, i64 %FrameIndex.13, !dbg !862
  %.minB.0 = select i1 %97, i64 %96, i64 %minB.05, !dbg !862
  %98 = add nsw i64 %96, %92, !dbg !863
  %99 = add nuw i64 %iFrame.14, 1, !dbg !864
  %100 = icmp sgt i64 %98, %73, !dbg !865
  %storemerge1 = select i1 %100, i64 %73, i64 %98, !dbg !867
  tail call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !123, metadata !620), !dbg !782
  %exitcond = icmp eq i64 %99, %83, !dbg !855
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !855

._crit_edge:                                      ; preds = %.lr.ph, %86
  %minB.0.lcssa = phi i64 [ %73, %86 ], [ %.minB.0, %.lr.ph ]
  %FrameIndex.1.lcssa = phi i64 [ %FrameIndex.07, %86 ], [ %iFrame.1.FrameIndex.1, %.lr.ph ]
  %101 = sub nsw i64 %73, %minB.0.lcssa, !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !126, metadata !620), !dbg !869
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !127, metadata !620), !dbg !853
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !123, metadata !620), !dbg !782
  %102 = add i64 %FrameIndex.1.lcssa, 1, !dbg !870
  br label %103, !dbg !873

; <label>:103                                     ; preds = %106, %._crit_edge
  %104 = phi i64 [ %85, %._crit_edge ], [ %112, %106 ]
  %InitFullness.0 = phi i64 [ %85, %._crit_edge ], [ %.InitFullness.0, %106 ]
  %iFrame.2 = phi i64 [ 0, %._crit_edge ], [ %113, %106 ]
  %105 = icmp ult i64 %iFrame.2, %102, !dbg !874
  br i1 %105, label %106, label %115, !dbg !875

; <label>:106                                     ; preds = %103
  %107 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.2, !dbg !876
  %108 = load i64* %107, align 8, !dbg !876, !tbaa !651
  %109 = sub nsw i64 %104, %108, !dbg !878
  %110 = icmp slt i64 %109, 0, !dbg !879
  %. = select i1 %110, i64 0, i64 %109, !dbg !881
  %111 = select i1 %110, i64 %109, i64 0, !dbg !881
  %.InitFullness.0 = sub nsw i64 %InitFullness.0, %111, !dbg !881
  %112 = add nsw i64 %., %92, !dbg !882
  %113 = add i64 %iFrame.2, 1, !dbg !883
  %114 = icmp sgt i64 %112, %101, !dbg !884
  br i1 %114, label %115, label %103, !dbg !886

; <label>:115                                     ; preds = %106, %103
  %InitFullness.2 = phi i64 [ %.InitFullness.0, %106 ], [ %InitFullness.0, %103 ]
  %116 = getelementptr inbounds i64* %18, i64 %iBucket.18, !dbg !887
  store i64 %101, i64* %116, align 8, !dbg !888, !tbaa !651
  %117 = getelementptr inbounds i64* %23, i64 %iBucket.18, !dbg !889
  store i64 %InitFullness.2, i64* %117, align 8, !dbg !890, !tbaa !651
  %118 = add nuw i64 %iBucket.18, 1, !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !122, metadata !620), !dbg !797
  %119 = icmp ult i64 %118, %11, !dbg !834
  br i1 %119, label %86, label %._crit_edge11, !dbg !798

._crit_edge11:                                    ; preds = %115, %.loopexit.thread, %.loopexit
  tail call void @write_buffer(i64 %11, i64* %13, i64* %18, i64* %23) #6, !dbg !892
  tail call void @free(i8* %12) #6, !dbg !893
  tail call void @free(i8* %17) #6, !dbg !894
  tail call void @free(i8* %22) #6, !dbg !895
  ret void, !dbg !896
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!616, !617, !618}
!llvm.ident = !{!619}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !13, globals: !132, imports: !615)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10, !11, !12}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!12 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!13 = !{!14, !87, !93, !103, !112}
!14 = !DISubprogram(name: "get_LeakyBucketRate", scope: !1, file: !1, line: 47, type: !15, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64, i64*)* @get_LeakyBucketRate, variables: !19)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !10, !18}
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!19 = !{!20, !21, !22, !85, !86}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberLeakyBuckets", arg: 1, scope: !14, file: !1, line: 47, type: !10)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Rmin", arg: 2, scope: !14, file: !1, line: 47, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !14, file: !1, line: 49, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 153, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !25, line: 122, size: 1216, align: 64, elements: !27)
!27 = !{!28, !31, !32, !33, !35, !36, !41, !42, !43, !47, !53, !63, !69, !70, !73, !74, !78, !82, !83, !84}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !25, line: 123, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !25, line: 124, baseType: !17, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !25, line: 125, baseType: !17, size: 32, align: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !25, line: 126, baseType: !34, size: 16, align: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !25, line: 127, baseType: !34, size: 16, align: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !25, line: 128, baseType: !37, size: 128, align: 64, offset: 192)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !25, line: 88, size: 128, align: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !25, line: 89, baseType: !29, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !25, line: 90, baseType: !17, size: 32, align: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !25, line: 129, baseType: !17, size: 32, align: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !25, line: 132, baseType: !9, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !25, line: 133, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!17, !9}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !25, line: 134, baseType: !48, size: 64, align: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!17, !9, !51, !17}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !25, line: 135, baseType: !54, size: 64, align: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !9, !57, !17}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !25, line: 77, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !59, line: 71, baseType: !60)
!59 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !25, line: 136, baseType: !64, size: 64, align: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!17, !9, !67, !17}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !25, line: 139, baseType: !37, size: 128, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !26, file: !25, line: 140, baseType: !71, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !25, line: 94, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !25, line: 141, baseType: !17, size: 32, align: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !25, line: 144, baseType: !75, size: 24, align: 8, offset: 928)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, align: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !25, line: 145, baseType: !79, size: 8, align: 8, offset: 952)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !25, line: 148, baseType: !37, size: 128, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !25, line: 151, baseType: !17, size: 32, align: 32, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !25, line: 152, baseType: !57, size: 64, align: 64, offset: 1152)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !14, file: !1, line: 50, type: !10)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !14, file: !1, line: 50, type: !10)
!87 = !DISubprogram(name: "PutBigDoubleWord", scope: !1, file: !1, line: 90, type: !88, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, %struct.__sFILE*)* @PutBigDoubleWord, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !10, !23}
!90 = !{!91, !92}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dw", arg: 1, scope: !87, file: !1, line: 90, type: !10)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !87, file: !1, line: 90, type: !23)
!93 = !DISubprogram(name: "write_buffer", scope: !1, file: !1, line: 124, type: !94, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, i64*, i64*, i64*)* @write_buffer, variables: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !10, !18, !18, !18}
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberLeakyBuckets", arg: 1, scope: !93, file: !1, line: 124, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Rmin", arg: 2, scope: !93, file: !1, line: 124, type: !18)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Bmin", arg: 3, scope: !93, file: !1, line: 124, type: !18)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Fmin", arg: 4, scope: !93, file: !1, line: 124, type: !18)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outf", scope: !93, file: !1, line: 126, type: !23)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iBucket", scope: !93, file: !1, line: 127, type: !10)
!103 = !DISubprogram(name: "Sort", scope: !1, file: !1, line: 168, type: !104, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: void (i64, i64*)* @Sort, variables: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !10, !18}
!106 = !{!107, !108, !109, !110, !111}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NumberLeakyBuckets", arg: 1, scope: !103, file: !1, line: 168, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Rmin", arg: 2, scope: !103, file: !1, line: 168, type: !18)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !103, file: !1, line: 170, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !103, file: !1, line: 170, type: !10)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !103, file: !1, line: 171, type: !10)
!112 = !DISubprogram(name: "calc_buffer", scope: !1, file: !1, line: 200, type: !113, isLocal: false, isDefinition: true, scopeLine: 201, isOptimized: true, function: void ()* @calc_buffer, variables: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{null}
!115 = !{!116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "AvgRate", scope: !112, file: !1, line: 202, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "TotalRate", scope: !112, file: !1, line: 202, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NumberLeakyBuckets", scope: !112, file: !1, line: 202, type: !10)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer_frame", scope: !112, file: !1, line: 203, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minB", scope: !112, file: !1, line: 203, type: !12)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iBucket", scope: !112, file: !1, line: 204, type: !10)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iFrame", scope: !112, file: !1, line: 204, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FrameIndex", scope: !112, file: !1, line: 204, type: !10)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxBuffer", scope: !112, file: !1, line: 205, type: !12)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "actualBuffer", scope: !112, file: !1, line: 205, type: !12)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "InitFullness", scope: !112, file: !1, line: 205, type: !12)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iChannelRate", scope: !112, file: !1, line: 205, type: !12)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Rmin", scope: !112, file: !1, line: 206, type: !18)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Bmin", scope: !112, file: !1, line: 206, type: !18)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Fmin", scope: !112, file: !1, line: 206, type: !18)
!132 = !{!133, !134, !326, !327, !328, !329, !330, !333, !335, !337, !338, !339, !340, !341, !380, !475, !476, !477, !479, !480, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !498, !499, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !514, !518, !519, !520, !521, !522, !523, !526, !529, !530, !531, !532, !535, !538, !549, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!133 = !DIGlobalVariable(name: "total_frame_buffer", scope: !0, file: !1, line: 22, type: !10, isLocal: false, isDefinition: true, variable: i64* @total_frame_buffer)
!134 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !135, line: 558, type: !136, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!135 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !135, line: 484, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 475, size: 6592, align: 64, elements: !139)
!139 = !{!140, !141, !142, !322, !323, !324, !325}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !138, file: !135, line: 477, baseType: !17, size: 32, align: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !138, file: !135, line: 478, baseType: !17, size: 32, align: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !138, file: !135, line: 479, baseType: !143, size: 6400, align: 64, offset: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 6400, align: 64, elements: !320)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !135, line: 471, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 443, size: 1216, align: 64, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !232, !268, !295, !304, !305, !306, !307, !308, !309, !310, !311, !312, !317}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !146, file: !135, line: 445, baseType: !17, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !146, file: !135, line: 446, baseType: !17, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !146, file: !135, line: 447, baseType: !17, size: 32, align: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !146, file: !135, line: 448, baseType: !17, size: 32, align: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !146, file: !135, line: 449, baseType: !17, size: 32, align: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !146, file: !135, line: 450, baseType: !17, size: 32, align: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !146, file: !135, line: 451, baseType: !155, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !135, line: 440, baseType: !157)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !135, line: 430, size: 960, align: 64, elements: !158)
!158 = !{!159, !178, !204}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !157, file: !135, line: 433, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !135, line: 427, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 411, size: 384, align: 64, elements: !163)
!163 = !{!164, !165, !166, !169, !170, !171, !172, !173, !174, !175, !177}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !162, file: !135, line: 413, baseType: !17, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !162, file: !135, line: 414, baseType: !17, size: 32, align: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !162, file: !135, line: 415, baseType: !167, size: 8, align: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !168, line: 30, baseType: !30)
!168 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !162, file: !135, line: 416, baseType: !17, size: 32, align: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !162, file: !135, line: 417, baseType: !17, size: 32, align: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !162, file: !135, line: 418, baseType: !167, size: 8, align: 8, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !162, file: !135, line: 420, baseType: !167, size: 8, align: 8, offset: 168)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !162, file: !135, line: 421, baseType: !17, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !162, file: !135, line: 422, baseType: !17, size: 32, align: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !162, file: !135, line: 424, baseType: !176, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !162, file: !135, line: 425, baseType: !17, size: 32, align: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !157, file: !135, line: 434, baseType: !179, size: 832, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !135, line: 226, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 207, size: 832, align: 64, elements: !181)
!181 = !{!182, !184, !185, !186, !187, !188, !189, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !180, file: !135, line: 209, baseType: !183, size: 32, align: 32)
!183 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !180, file: !135, line: 209, baseType: !183, size: 32, align: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !180, file: !135, line: 210, baseType: !183, size: 32, align: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !180, file: !135, line: 211, baseType: !183, size: 32, align: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !180, file: !135, line: 212, baseType: !183, size: 32, align: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !180, file: !135, line: 213, baseType: !176, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !180, file: !135, line: 214, baseType: !190, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !180, file: !135, line: 217, baseType: !183, size: 32, align: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !180, file: !135, line: 217, baseType: !183, size: 32, align: 32, offset: 352)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !180, file: !135, line: 218, baseType: !183, size: 32, align: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !180, file: !135, line: 219, baseType: !183, size: 32, align: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !180, file: !135, line: 220, baseType: !183, size: 32, align: 32, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !180, file: !135, line: 221, baseType: !176, size: 64, align: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !180, file: !135, line: 222, baseType: !190, size: 64, align: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !180, file: !135, line: 223, baseType: !17, size: 32, align: 32, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !180, file: !135, line: 223, baseType: !17, size: 32, align: 32, offset: 672)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !180, file: !135, line: 224, baseType: !17, size: 32, align: 32, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !180, file: !135, line: 224, baseType: !17, size: 32, align: 32, offset: 736)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !180, file: !135, line: 225, baseType: !17, size: 32, align: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !180, file: !135, line: 225, baseType: !17, size: 32, align: 32, offset: 800)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !157, file: !135, line: 436, baseType: !205, size: 64, align: 64, offset: 896)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!17, !208, !231}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !135, line: 348, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !135, line: 327, size: 384, align: 64, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !135, line: 329, baseType: !17, size: 32, align: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !210, file: !135, line: 330, baseType: !17, size: 32, align: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !210, file: !135, line: 331, baseType: !17, size: 32, align: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !210, file: !135, line: 332, baseType: !17, size: 32, align: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !210, file: !135, line: 333, baseType: !17, size: 32, align: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !210, file: !135, line: 334, baseType: !183, size: 32, align: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !210, file: !135, line: 335, baseType: !17, size: 32, align: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !210, file: !135, line: 336, baseType: !17, size: 32, align: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !210, file: !135, line: 344, baseType: !221, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !17, !17, !190, !190}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !210, file: !135, line: 346, baseType: !225, size: 64, align: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !228, !229}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !135, line: 228, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !146, file: !135, line: 452, baseType: !233, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !135, line: 268, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 258, size: 12032, align: 64, elements: !236)
!236 = !{!237, !248, !253, !257, !261, !265, !266}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !235, file: !135, line: 260, baseType: !238, size: 4224, align: 64)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4224, align: 64, elements: !246)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !135, line: 238, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 231, size: 128, align: 64, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !240, file: !135, line: 233, baseType: !243, size: 16, align: 16)
!243 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !240, file: !135, line: 234, baseType: !30, size: 8, align: 8, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !240, file: !135, line: 236, baseType: !10, size: 64, align: 64, offset: 64)
!246 = !{!77, !247}
!247 = !DISubrange(count: 11)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !235, file: !135, line: 261, baseType: !249, size: 2304, align: 64, offset: 4224)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2304, align: 64, elements: !250)
!250 = !{!251, !252}
!251 = !DISubrange(count: 2)
!252 = !DISubrange(count: 9)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !235, file: !135, line: 262, baseType: !254, size: 2560, align: 64, offset: 6528)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2560, align: 64, elements: !255)
!255 = !{!251, !256}
!256 = !DISubrange(count: 10)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !235, file: !135, line: 263, baseType: !258, size: 1536, align: 64, offset: 9088)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1536, align: 64, elements: !259)
!259 = !{!251, !260}
!260 = !DISubrange(count: 6)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !235, file: !135, line: 264, baseType: !262, size: 512, align: 64, offset: 10624)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, align: 64, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 4)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !235, file: !135, line: 265, baseType: !262, size: 512, align: 64, offset: 11136)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !235, file: !135, line: 266, baseType: !267, size: 384, align: 64, offset: 11648)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, align: 64, elements: !76)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !146, file: !135, line: 453, baseType: !269, size: 64, align: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !135, line: 293, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 281, size: 97024, align: 64, elements: !272)
!272 = !{!273, !276, !277, !280, !283, !287, !288, !292, !293, !294}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !271, file: !135, line: 283, baseType: !274, size: 256, align: 64)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, align: 64, elements: !275)
!275 = !{!251}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !271, file: !135, line: 284, baseType: !262, size: 512, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !271, file: !135, line: 285, baseType: !278, size: 1536, align: 64, offset: 768)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1536, align: 64, elements: !279)
!279 = !{!77, !264}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !271, file: !135, line: 286, baseType: !281, size: 5120, align: 64, offset: 2304)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 5120, align: 64, elements: !282)
!282 = !{!256, !264}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !271, file: !135, line: 287, baseType: !284, size: 19200, align: 64, offset: 7424)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 19200, align: 64, elements: !285)
!285 = !{!256, !286}
!286 = !DISubrange(count: 15)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !271, file: !135, line: 288, baseType: !284, size: 19200, align: 64, offset: 26624)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !271, file: !135, line: 289, baseType: !289, size: 6400, align: 64, offset: 45824)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 6400, align: 64, elements: !290)
!290 = !{!256, !291}
!291 = !DISubrange(count: 5)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !271, file: !135, line: 290, baseType: !289, size: 6400, align: 64, offset: 52224)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !271, file: !135, line: 291, baseType: !284, size: 19200, align: 64, offset: 58624)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !271, file: !135, line: 292, baseType: !284, size: 19200, align: 64, offset: 77824)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !146, file: !135, line: 456, baseType: !296, size: 64, align: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !135, line: 313, baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !135, line: 308, size: 128, align: 64, elements: !299)
!299 = !{!300, !301, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !298, file: !135, line: 310, baseType: !17, size: 32, align: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !298, file: !135, line: 311, baseType: !17, size: 32, align: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !298, file: !135, line: 312, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !146, file: !135, line: 458, baseType: !17, size: 32, align: 32, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !146, file: !135, line: 459, baseType: !190, size: 64, align: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !146, file: !135, line: 460, baseType: !190, size: 64, align: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !146, file: !135, line: 461, baseType: !190, size: 64, align: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !146, file: !135, line: 462, baseType: !17, size: 32, align: 32, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !146, file: !135, line: 463, baseType: !190, size: 64, align: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !146, file: !135, line: 464, baseType: !190, size: 64, align: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !146, file: !135, line: 465, baseType: !190, size: 64, align: 64, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !146, file: !135, line: 467, baseType: !313, size: 64, align: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !17}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !146, file: !135, line: 469, baseType: !318, size: 192, align: 32, offset: 1024)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, align: 32, elements: !319)
!319 = !{!77, !251}
!320 = !{!321}
!321 = !DISubrange(count: 100)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !138, file: !135, line: 480, baseType: !17, size: 32, align: 32, offset: 6464)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !138, file: !135, line: 481, baseType: !11, size: 32, align: 32, offset: 6496)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !138, file: !135, line: 482, baseType: !11, size: 32, align: 32, offset: 6528)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !138, file: !135, line: 483, baseType: !11, size: 32, align: 32, offset: 6560)
!326 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !135, line: 559, type: !136, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!327 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !135, line: 560, type: !136, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!328 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !135, line: 561, type: !136, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!329 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !135, line: 562, type: !136, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!330 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !135, line: 565, type: !331, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!333 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !135, line: 566, type: !334, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!335 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !135, line: 567, type: !336, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!337 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !135, line: 569, type: !183, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!338 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !135, line: 570, type: !183, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!339 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !135, line: 572, type: !17, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!340 = !DIGlobalVariable(name: "me_time", scope: !0, file: !135, line: 572, type: !17, isLocal: false, isDefinition: true, variable: i32* @me_time)
!341 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !135, line: 573, type: !342, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !344)
!344 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !356, !357, !358, !359, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !344, file: !4, line: 105, baseType: !316, size: 32, align: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !344, file: !4, line: 106, baseType: !183, size: 32, align: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !344, file: !4, line: 107, baseType: !183, size: 32, align: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !344, file: !4, line: 108, baseType: !316, size: 32, align: 32, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !344, file: !4, line: 110, baseType: !316, size: 32, align: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !344, file: !4, line: 111, baseType: !316, size: 32, align: 32, offset: 160)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !344, file: !4, line: 112, baseType: !353, size: 256, align: 32, offset: 192)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, align: 32, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !344, file: !4, line: 115, baseType: !316, size: 32, align: 32, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !344, file: !4, line: 116, baseType: !183, size: 32, align: 32, offset: 480)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !344, file: !4, line: 117, baseType: !183, size: 32, align: 32, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !344, file: !4, line: 119, baseType: !360, size: 256, align: 32, offset: 544)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, align: 32, elements: !354)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !344, file: !4, line: 121, baseType: !360, size: 256, align: 32, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !344, file: !4, line: 122, baseType: !360, size: 256, align: 32, offset: 1056)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !344, file: !4, line: 124, baseType: !316, size: 32, align: 32, offset: 1312)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !344, file: !4, line: 125, baseType: !183, size: 32, align: 32, offset: 1344)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !344, file: !4, line: 127, baseType: !183, size: 32, align: 32, offset: 1376)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !344, file: !4, line: 128, baseType: !176, size: 64, align: 64, offset: 1408)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !344, file: !4, line: 130, baseType: !17, size: 32, align: 32, offset: 1472)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !344, file: !4, line: 131, baseType: !17, size: 32, align: 32, offset: 1504)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !344, file: !4, line: 132, baseType: !316, size: 32, align: 32, offset: 1536)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !344, file: !4, line: 133, baseType: !183, size: 32, align: 32, offset: 1568)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !344, file: !4, line: 134, baseType: !17, size: 32, align: 32, offset: 1600)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !344, file: !4, line: 135, baseType: !17, size: 32, align: 32, offset: 1632)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !344, file: !4, line: 136, baseType: !17, size: 32, align: 32, offset: 1664)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !344, file: !4, line: 138, baseType: !17, size: 32, align: 32, offset: 1696)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !344, file: !4, line: 139, baseType: !17, size: 32, align: 32, offset: 1728)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !344, file: !4, line: 141, baseType: !316, size: 32, align: 32, offset: 1760)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !344, file: !4, line: 142, baseType: !316, size: 32, align: 32, offset: 1792)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !344, file: !4, line: 143, baseType: !316, size: 32, align: 32, offset: 1824)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !344, file: !4, line: 144, baseType: !316, size: 32, align: 32, offset: 1856)
!380 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !135, line: 574, type: !381, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !383, file: !4, line: 151, baseType: !316, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !383, file: !4, line: 153, baseType: !183, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !383, file: !4, line: 154, baseType: !316, size: 32, align: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !383, file: !4, line: 155, baseType: !316, size: 32, align: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !383, file: !4, line: 156, baseType: !316, size: 32, align: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !383, file: !4, line: 157, baseType: !316, size: 32, align: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !383, file: !4, line: 158, baseType: !183, size: 32, align: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !383, file: !4, line: 159, baseType: !183, size: 32, align: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !383, file: !4, line: 160, baseType: !183, size: 32, align: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !383, file: !4, line: 162, baseType: !316, size: 32, align: 32, offset: 288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !383, file: !4, line: 163, baseType: !353, size: 256, align: 32, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !383, file: !4, line: 165, baseType: !183, size: 32, align: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !383, file: !4, line: 166, baseType: !183, size: 32, align: 32, offset: 608)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !383, file: !4, line: 167, baseType: !183, size: 32, align: 32, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !383, file: !4, line: 168, baseType: !183, size: 32, align: 32, offset: 672)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !383, file: !4, line: 170, baseType: !183, size: 32, align: 32, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !383, file: !4, line: 172, baseType: !316, size: 32, align: 32, offset: 736)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !383, file: !4, line: 173, baseType: !17, size: 32, align: 32, offset: 768)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !383, file: !4, line: 174, baseType: !17, size: 32, align: 32, offset: 800)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !383, file: !4, line: 175, baseType: !183, size: 32, align: 32, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !383, file: !4, line: 177, baseType: !406, size: 8192, align: 32, offset: 864)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, align: 32, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !383, file: !4, line: 178, baseType: !183, size: 32, align: 32, offset: 9056)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !383, file: !4, line: 179, baseType: !316, size: 32, align: 32, offset: 9088)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !383, file: !4, line: 180, baseType: !183, size: 32, align: 32, offset: 9120)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !383, file: !4, line: 181, baseType: !183, size: 32, align: 32, offset: 9152)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !383, file: !4, line: 182, baseType: !316, size: 32, align: 32, offset: 9184)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !383, file: !4, line: 184, baseType: !316, size: 32, align: 32, offset: 9216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !383, file: !4, line: 185, baseType: !316, size: 32, align: 32, offset: 9248)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !383, file: !4, line: 186, baseType: !316, size: 32, align: 32, offset: 9280)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !383, file: !4, line: 187, baseType: !183, size: 32, align: 32, offset: 9312)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !383, file: !4, line: 188, baseType: !183, size: 32, align: 32, offset: 9344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !383, file: !4, line: 189, baseType: !183, size: 32, align: 32, offset: 9376)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !383, file: !4, line: 190, baseType: !183, size: 32, align: 32, offset: 9408)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !383, file: !4, line: 191, baseType: !316, size: 32, align: 32, offset: 9440)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !383, file: !4, line: 192, baseType: !423, size: 7584, align: 32, offset: 9472)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !424, file: !4, line: 65, baseType: !316, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !424, file: !4, line: 66, baseType: !183, size: 32, align: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !424, file: !4, line: 67, baseType: !183, size: 32, align: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !424, file: !4, line: 68, baseType: !183, size: 32, align: 32, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !424, file: !4, line: 69, baseType: !316, size: 32, align: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !424, file: !4, line: 70, baseType: !316, size: 32, align: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !424, file: !4, line: 71, baseType: !316, size: 32, align: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !424, file: !4, line: 72, baseType: !183, size: 32, align: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !424, file: !4, line: 73, baseType: !316, size: 32, align: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !424, file: !4, line: 74, baseType: !316, size: 32, align: 32, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !424, file: !4, line: 75, baseType: !183, size: 32, align: 32, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !424, file: !4, line: 76, baseType: !183, size: 32, align: 32, offset: 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !424, file: !4, line: 77, baseType: !183, size: 32, align: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !424, file: !4, line: 78, baseType: !316, size: 32, align: 32, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !424, file: !4, line: 79, baseType: !183, size: 32, align: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !424, file: !4, line: 80, baseType: !183, size: 32, align: 32, offset: 480)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !424, file: !4, line: 81, baseType: !316, size: 32, align: 32, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !424, file: !4, line: 82, baseType: !183, size: 32, align: 32, offset: 544)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !424, file: !4, line: 83, baseType: !183, size: 32, align: 32, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !424, file: !4, line: 84, baseType: !316, size: 32, align: 32, offset: 608)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !424, file: !4, line: 85, baseType: !316, size: 32, align: 32, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !424, file: !4, line: 86, baseType: !448, size: 3296, align: 32, offset: 672)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !450)
!450 = !{!451, !452, !453, !454, !458, !459, !460, !461, !462, !463}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !449, file: !4, line: 50, baseType: !183, size: 32, align: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !449, file: !4, line: 51, baseType: !183, size: 32, align: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !449, file: !4, line: 52, baseType: !183, size: 32, align: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !449, file: !4, line: 53, baseType: !455, size: 1024, align: 32, offset: 96)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, align: 32, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !449, file: !4, line: 54, baseType: !455, size: 1024, align: 32, offset: 1120)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !449, file: !4, line: 55, baseType: !455, size: 1024, align: 32, offset: 2144)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !449, file: !4, line: 56, baseType: !183, size: 32, align: 32, offset: 3168)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !449, file: !4, line: 57, baseType: !183, size: 32, align: 32, offset: 3200)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !449, file: !4, line: 58, baseType: !183, size: 32, align: 32, offset: 3232)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !449, file: !4, line: 59, baseType: !183, size: 32, align: 32, offset: 3264)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !424, file: !4, line: 87, baseType: !316, size: 32, align: 32, offset: 3968)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !424, file: !4, line: 88, baseType: !448, size: 3296, align: 32, offset: 4000)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !424, file: !4, line: 90, baseType: !316, size: 32, align: 32, offset: 7296)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !424, file: !4, line: 91, baseType: !316, size: 32, align: 32, offset: 7328)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !424, file: !4, line: 92, baseType: !316, size: 32, align: 32, offset: 7360)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !424, file: !4, line: 93, baseType: !183, size: 32, align: 32, offset: 7392)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !424, file: !4, line: 94, baseType: !183, size: 32, align: 32, offset: 7424)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !424, file: !4, line: 95, baseType: !183, size: 32, align: 32, offset: 7456)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !424, file: !4, line: 96, baseType: !183, size: 32, align: 32, offset: 7488)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !424, file: !4, line: 97, baseType: !183, size: 32, align: 32, offset: 7520)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !424, file: !4, line: 98, baseType: !183, size: 32, align: 32, offset: 7552)
!475 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !135, line: 578, type: !17, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!476 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !135, line: 579, type: !17, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!477 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !135, line: 583, type: !478, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!479 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !135, line: 584, type: !478, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!480 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !135, line: 585, type: !481, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!482 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !135, line: 586, type: !17, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!483 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !135, line: 587, type: !17, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!484 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !135, line: 588, type: !17, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!485 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !135, line: 589, type: !17, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!486 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !135, line: 592, type: !331, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!487 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !135, line: 593, type: !331, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!488 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !135, line: 595, type: !334, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!489 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !135, line: 596, type: !334, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!490 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !135, line: 598, type: !331, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!491 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !135, line: 599, type: !334, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!492 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !135, line: 601, type: !331, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!493 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !135, line: 602, type: !334, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!494 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !135, line: 604, type: !495, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!498 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !135, line: 605, type: !496, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!499 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !135, line: 608, type: !500, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!501 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !135, line: 609, type: !500, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!502 = !DIGlobalVariable(name: "intras", scope: !0, file: !135, line: 610, type: !17, isLocal: false, isDefinition: true, variable: i32* @intras)
!503 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !135, line: 612, type: !17, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!504 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !135, line: 612, type: !17, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!505 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !135, line: 612, type: !17, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!506 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !135, line: 613, type: !17, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!507 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !135, line: 613, type: !17, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!508 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !135, line: 613, type: !17, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!509 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !135, line: 614, type: !17, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!510 = !DIGlobalVariable(name: "errortext", scope: !0, file: !135, line: 617, type: !511, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2400, align: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 300)
!514 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !135, line: 620, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, align: 32, elements: !516)
!516 = !{!517, !517}
!517 = !DISubrange(count: 16)
!518 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !135, line: 620, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!519 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !135, line: 620, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!520 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !135, line: 621, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!521 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !135, line: 621, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!522 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !135, line: 621, type: !515, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!523 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !135, line: 622, type: !524, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24576, align: 32, elements: !525)
!525 = !{!77, !517, !517}
!526 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !135, line: 623, type: !527, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1024, align: 32, elements: !528)
!528 = !{!251, !264, !264}
!529 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !135, line: 623, type: !527, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!530 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !135, line: 624, type: !527, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!531 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !135, line: 624, type: !527, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!532 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !135, line: 625, type: !533, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, align: 32, elements: !534)
!534 = !{!264, !264}
!535 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !135, line: 625, type: !536, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, align: 32, elements: !537)
!537 = !{!517}
!538 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !135, line: 1201, type: !539, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !135, line: 1190, baseType: !541)
!541 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 1182, size: 192, align: 32, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !541, file: !135, line: 1184, baseType: !17, size: 32, align: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !541, file: !135, line: 1185, baseType: !17, size: 32, align: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !541, file: !135, line: 1186, baseType: !17, size: 32, align: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !541, file: !135, line: 1187, baseType: !17, size: 32, align: 32, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !541, file: !135, line: 1188, baseType: !17, size: 32, align: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !541, file: !135, line: 1189, baseType: !17, size: 32, align: 32, offset: 160)
!549 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !135, line: 1202, type: !550, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !135, line: 1177, baseType: !552)
!552 = !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 1145, size: 26880, align: 64, elements: !553)
!553 = !{!554, !556, !557, !558, !559, !560, !561, !562, !563, !565, !566, !567, !568, !569, !573, !574, !578, !579, !580, !581, !583, !584, !585, !586, !587, !588, !589}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !552, file: !135, line: 1147, baseType: !555, size: 64, align: 64)
!555 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !552, file: !135, line: 1149, baseType: !515, size: 8192, align: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !552, file: !135, line: 1150, baseType: !515, size: 8192, align: 32, offset: 8256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !552, file: !135, line: 1150, baseType: !515, size: 8192, align: 32, offset: 16448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !552, file: !135, line: 1151, baseType: !481, size: 64, align: 64, offset: 24640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !552, file: !135, line: 1152, baseType: !478, size: 64, align: 64, offset: 24704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !552, file: !135, line: 1153, baseType: !17, size: 32, align: 32, offset: 24768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !552, file: !135, line: 1155, baseType: !17, size: 32, align: 32, offset: 24800)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !552, file: !135, line: 1157, baseType: !564, size: 128, align: 32, offset: 24832)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, align: 32, elements: !263)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !552, file: !135, line: 1157, baseType: !564, size: 128, align: 32, offset: 24960)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !552, file: !135, line: 1158, baseType: !336, size: 64, align: 64, offset: 25088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !552, file: !135, line: 1159, baseType: !536, size: 512, align: 32, offset: 25152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !552, file: !135, line: 1160, baseType: !17, size: 32, align: 32, offset: 25664)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !552, file: !135, line: 1161, baseType: !570, size: 64, align: 64, offset: 25728)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !135, line: 62, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !572, line: 30, baseType: !62)
!572 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !552, file: !135, line: 1162, baseType: !17, size: 32, align: 32, offset: 25792)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !552, file: !135, line: 1163, baseType: !575, size: 64, align: 64, offset: 25856)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !552, file: !135, line: 1164, baseType: !575, size: 64, align: 64, offset: 25920)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !552, file: !135, line: 1165, baseType: !575, size: 64, align: 64, offset: 25984)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !552, file: !135, line: 1166, baseType: !575, size: 64, align: 64, offset: 26048)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !552, file: !135, line: 1167, baseType: !582, size: 512, align: 16, offset: 26112)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, align: 16, elements: !528)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !552, file: !135, line: 1168, baseType: !17, size: 32, align: 32, offset: 26624)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !552, file: !135, line: 1169, baseType: !17, size: 32, align: 32, offset: 26656)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !552, file: !135, line: 1171, baseType: !17, size: 32, align: 32, offset: 26688)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !552, file: !135, line: 1172, baseType: !17, size: 32, align: 32, offset: 26720)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !552, file: !135, line: 1174, baseType: !17, size: 32, align: 32, offset: 26752)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !552, file: !135, line: 1175, baseType: !17, size: 32, align: 32, offset: 26784)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !552, file: !135, line: 1176, baseType: !17, size: 32, align: 32, offset: 26816)
!590 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !135, line: 1203, type: !551, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!591 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !135, line: 1203, type: !551, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!592 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !135, line: 1204, type: !551, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!593 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !135, line: 1204, type: !551, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!594 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !135, line: 1230, type: !23, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!595 = !DIGlobalVariable(name: "p_log", scope: !0, file: !135, line: 1231, type: !23, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!596 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !135, line: 1232, type: !23, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!597 = !DIGlobalVariable(name: "p_in", scope: !0, file: !135, line: 1233, type: !17, isLocal: false, isDefinition: true, variable: i32* @p_in)
!598 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !135, line: 1234, type: !17, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!599 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !135, line: 1237, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, align: 32, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 20)
!603 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !135, line: 1238, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!604 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !135, line: 1239, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!605 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !135, line: 1240, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!606 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !135, line: 1241, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!607 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !135, line: 1242, type: !600, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!608 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !135, line: 1456, type: !17, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!609 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !135, line: 1465, type: !17, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!610 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !135, line: 1466, type: !17, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!611 = !DIGlobalVariable(name: "Bit_Buffer", scope: !0, file: !1, line: 21, type: !612, isLocal: false, isDefinition: true, variable: [10000 x i64]* @Bit_Buffer)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640000, align: 64, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 10000)
!615 = !{}
!616 = !{i32 2, !"Dwarf Version", i32 2}
!617 = !{i32 2, !"Debug Info Version", i32 700000003}
!618 = !{i32 1, !"PIC Level", i32 2}
!619 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!620 = !DIExpression()
!621 = !DILocation(line: 47, column: 39, scope: !14)
!622 = !DILocation(line: 47, column: 74, scope: !14)
!623 = !DILocation(line: 52, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !14, file: !1, line: 52, column: 6)
!625 = !{!626, !626, i64 0}
!626 = !{!"any pointer", !627, i64 0}
!627 = !{!"omnipotent char", !628, i64 0}
!628 = !{!"Simple C/C++ TBAA"}
!629 = !DILocation(line: 52, column: 11, scope: !624)
!630 = !DILocation(line: 49, column: 9, scope: !14)
!631 = !DILocation(line: 52, column: 51, scope: !624)
!632 = !DILocation(line: 52, column: 6, scope: !14)
!633 = !DILocation(line: 58, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 58, column: 3)
!635 = distinct !DILexicalBlock(scope: !14, file: !1, line: 58, column: 3)
!636 = !DILocation(line: 58, column: 3, scope: !635)
!637 = !DILocation(line: 54, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !624, file: !1, line: 53, column: 3)
!639 = !DILocation(line: 55, column: 5, scope: !638)
!640 = !DILocation(line: 50, column: 20, scope: !14)
!641 = !DILocation(line: 60, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 60, column: 8)
!643 = distinct !DILexicalBlock(scope: !634, file: !1, line: 59, column: 3)
!644 = !DILocation(line: 60, column: 10, scope: !642)
!645 = !DILocation(line: 60, column: 8, scope: !643)
!646 = !DILocation(line: 62, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !1, line: 61, column: 5)
!648 = !DILocation(line: 63, column: 7, scope: !647)
!649 = !DILocation(line: 64, column: 7, scope: !647)
!650 = !DILocation(line: 66, column: 15, scope: !643)
!651 = !{!652, !652, i64 0}
!652 = !{!"long", !627, i64 0}
!653 = !DILocation(line: 66, column: 5, scope: !643)
!654 = !DILocation(line: 66, column: 13, scope: !643)
!655 = !DILocation(line: 58, column: 35, scope: !634)
!656 = !DILocation(line: 50, column: 17, scope: !14)
!657 = !DILocation(line: 68, column: 3, scope: !14)
!658 = !DILocation(line: 69, column: 3, scope: !14)
!659 = !DILocation(line: 70, column: 1, scope: !14)
!660 = !DILocation(line: 90, column: 37, scope: !87)
!661 = !DILocation(line: 90, column: 47, scope: !87)
!662 = !DILocation(line: 92, column: 13, scope: !87)
!663 = !DILocation(line: 92, column: 9, scope: !87)
!664 = !DILocation(line: 92, column: 3, scope: !87)
!665 = !DILocation(line: 93, column: 13, scope: !87)
!666 = !DILocation(line: 93, column: 9, scope: !87)
!667 = !DILocation(line: 93, column: 3, scope: !87)
!668 = !DILocation(line: 94, column: 13, scope: !87)
!669 = !DILocation(line: 94, column: 9, scope: !87)
!670 = !DILocation(line: 94, column: 3, scope: !87)
!671 = !DILocation(line: 95, column: 9, scope: !87)
!672 = !DILocation(line: 95, column: 3, scope: !87)
!673 = !DILocation(line: 96, column: 1, scope: !87)
!674 = !DILocation(line: 124, column: 33, scope: !93)
!675 = !DILocation(line: 124, column: 67, scope: !93)
!676 = !DILocation(line: 124, column: 89, scope: !93)
!677 = !DILocation(line: 124, column: 111, scope: !93)
!678 = !DILocation(line: 129, column: 19, scope: !679)
!679 = distinct !DILexicalBlock(scope: !93, file: !1, line: 129, column: 7)
!680 = !DILocation(line: 129, column: 13, scope: !679)
!681 = !DILocation(line: 126, column: 9, scope: !93)
!682 = !DILocation(line: 129, column: 53, scope: !679)
!683 = !DILocation(line: 129, column: 7, scope: !93)
!684 = !DILocation(line: 131, column: 5, scope: !685)
!685 = distinct !DILexicalBlock(scope: !679, file: !1, line: 130, column: 3)
!686 = !DILocation(line: 132, column: 5, scope: !685)
!687 = !DILocation(line: 133, column: 3, scope: !685)
!688 = !DILocation(line: 135, column: 3, scope: !93)
!689 = !DILocation(line: 136, column: 3, scope: !93)
!690 = !DILocation(line: 127, column: 17, scope: !93)
!691 = !DILocation(line: 137, column: 27, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 137, column: 3)
!693 = distinct !DILexicalBlock(scope: !93, file: !1, line: 137, column: 3)
!694 = !DILocation(line: 137, column: 3, scope: !693)
!695 = !DILocation(line: 142, column: 22, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !1, line: 138, column: 3)
!697 = !DILocation(line: 142, column: 5, scope: !696)
!698 = !DILocation(line: 143, column: 22, scope: !696)
!699 = !DILocation(line: 143, column: 5, scope: !696)
!700 = !DILocation(line: 144, column: 22, scope: !696)
!701 = !DILocation(line: 144, column: 5, scope: !696)
!702 = !DILocation(line: 145, column: 34, scope: !696)
!703 = !DILocation(line: 145, column: 49, scope: !696)
!704 = !DILocation(line: 145, column: 64, scope: !696)
!705 = !DILocation(line: 145, column: 5, scope: !696)
!706 = !DILocation(line: 137, column: 56, scope: !692)
!707 = !DILocation(line: 147, column: 3, scope: !93)
!708 = !DILocation(line: 148, column: 1, scope: !93)
!709 = !DILocation(line: 168, column: 25, scope: !103)
!710 = !DILocation(line: 168, column: 60, scope: !103)
!711 = !DILocation(line: 170, column: 17, scope: !103)
!712 = !DILocation(line: 172, column: 33, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 172, column: 3)
!714 = distinct !DILexicalBlock(scope: !103, file: !1, line: 172, column: 3)
!715 = !DILocation(line: 172, column: 13, scope: !713)
!716 = !DILocation(line: 172, column: 3, scope: !714)
!717 = !DILocation(line: 174, column: 12, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 174, column: 5)
!719 = distinct !DILexicalBlock(scope: !713, file: !1, line: 173, column: 3)
!720 = !DILocation(line: 170, column: 20, scope: !103)
!721 = !DILocation(line: 174, column: 17, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !1, line: 174, column: 5)
!723 = !DILocation(line: 174, column: 5, scope: !718)
!724 = !DILocation(line: 176, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 176, column: 10)
!726 = distinct !DILexicalBlock(scope: !722, file: !1, line: 175, column: 5)
!727 = !DILocation(line: 176, column: 20, scope: !725)
!728 = !DILocation(line: 176, column: 18, scope: !725)
!729 = !DILocation(line: 176, column: 10, scope: !726)
!730 = !DILocation(line: 171, column: 17, scope: !103)
!731 = !DILocation(line: 178, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !725, file: !1, line: 176, column: 29)
!733 = !DILocation(line: 179, column: 17, scope: !732)
!734 = !DILocation(line: 180, column: 7, scope: !732)
!735 = !DILocation(line: 174, column: 39, scope: !722)
!736 = !DILocation(line: 183, column: 1, scope: !103)
!737 = !DILocation(line: 204, column: 35, scope: !112)
!738 = !DILocation(line: 208, column: 11, scope: !112)
!739 = !DILocation(line: 208, column: 3, scope: !112)
!740 = !DILocation(line: 209, column: 41, scope: !112)
!741 = !DILocation(line: 209, column: 61, scope: !112)
!742 = !DILocation(line: 209, column: 68, scope: !112)
!743 = !{!744, !745, i64 8}
!744 = !{!"", !745, i64 0, !745, i64 4, !745, i64 8, !745, i64 12, !745, i64 16, !745, i64 20, !745, i64 24, !745, i64 28, !745, i64 32, !745, i64 36, !745, i64 40, !745, i64 44, !745, i64 48, !745, i64 52, !745, i64 56, !745, i64 60, !745, i64 64, !745, i64 68, !745, i64 72, !745, i64 76, !627, i64 80, !627, i64 144, !745, i64 208, !745, i64 212, !745, i64 216, !745, i64 220, !627, i64 224, !627, i64 424, !627, i64 624, !627, i64 824, !627, i64 1024, !745, i64 1224, !745, i64 1228, !745, i64 1232, !745, i64 1236, !745, i64 1240, !745, i64 1244, !745, i64 1248, !745, i64 1252, !745, i64 1256, !745, i64 1260, !745, i64 1264, !745, i64 1268, !745, i64 1272, !745, i64 1276, !745, i64 1280, !745, i64 1284, !745, i64 1288, !745, i64 1292, !745, i64 1296, !745, i64 1300, !745, i64 1304, !745, i64 1308, !745, i64 1312, !745, i64 1316, !745, i64 1320, !627, i64 1324, !745, i64 2348, !745, i64 2352, !745, i64 2356, !745, i64 2360, !745, i64 2364, !745, i64 2368, !745, i64 2372, !745, i64 2376, !745, i64 2380, !745, i64 2384, !745, i64 2388, !745, i64 2392, !745, i64 2396, !745, i64 2400, !745, i64 2404, !745, i64 2408, !745, i64 2412, !745, i64 2416, !745, i64 2420, !746, i64 2424, !745, i64 2432, !745, i64 2436, !745, i64 2440, !745, i64 2444, !745, i64 2448, !745, i64 2452, !745, i64 2456, !745, i64 2460, !745, i64 2464, !745, i64 2468, !745, i64 2472, !745, i64 2476, !627, i64 2480, !627, i64 2680, !745, i64 2880, !745, i64 2884, !745, i64 2888, !745, i64 2892, !745, i64 2896, !745, i64 2900, !745, i64 2904, !745, i64 2908, !745, i64 2912, !745, i64 2916, !745, i64 2920, !745, i64 2924, !745, i64 2928, !745, i64 2932, !745, i64 2936, !745, i64 2940, !745, i64 2944, !745, i64 2948, !627, i64 2952, !745, i64 3152, !745, i64 3156, !626, i64 3160, !626, i64 3168, !626, i64 3176, !626, i64 3184, !745, i64 3192, !745, i64 3196, !745, i64 3200, !745, i64 3204, !745, i64 3208, !745, i64 3212, !745, i64 3216, !745, i64 3220, !745, i64 3224, !745, i64 3228, !745, i64 3232, !745, i64 3236, !745, i64 3240, !745, i64 3244, !745, i64 3248, !745, i64 3252, !745, i64 3256, !627, i64 3260, !745, i64 3292, !745, i64 3296, !745, i64 3300, !745, i64 3304, !745, i64 3308, !745, i64 3312, !745, i64 3316, !745, i64 3320, !745, i64 3324, !745, i64 3328, !745, i64 3332, !627, i64 3336, !627, i64 3384, !745, i64 3584}
!745 = !{!"int", !627, i64 0}
!746 = !{!"double", !627, i64 0}
!747 = !DILocation(line: 209, column: 3, scope: !112)
!748 = !DILocation(line: 210, column: 40, scope: !112)
!749 = !DILocation(line: 210, column: 47, scope: !112)
!750 = !{!744, !745, i64 2476}
!751 = !DILocation(line: 210, column: 24, scope: !112)
!752 = !DILocation(line: 202, column: 37, scope: !112)
!753 = !DILocation(line: 203, column: 9, scope: !112)
!754 = !DILocation(line: 214, column: 10, scope: !112)
!755 = !DILocation(line: 206, column: 18, scope: !112)
!756 = !DILocation(line: 215, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !112, file: !1, line: 215, column: 6)
!758 = !DILocation(line: 215, column: 6, scope: !112)
!759 = !DILocation(line: 216, column: 5, scope: !757)
!760 = !DILocation(line: 217, column: 10, scope: !112)
!761 = !DILocation(line: 206, column: 25, scope: !112)
!762 = !DILocation(line: 218, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !112, file: !1, line: 218, column: 6)
!764 = !DILocation(line: 218, column: 6, scope: !112)
!765 = !DILocation(line: 219, column: 5, scope: !763)
!766 = !DILocation(line: 220, column: 10, scope: !112)
!767 = !DILocation(line: 206, column: 32, scope: !112)
!768 = !DILocation(line: 221, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !112, file: !1, line: 221, column: 6)
!770 = !DILocation(line: 221, column: 6, scope: !112)
!771 = !DILocation(line: 222, column: 5, scope: !769)
!772 = !DILocation(line: 225, column: 26, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 225, column: 3)
!774 = distinct !DILexicalBlock(scope: !112, file: !1, line: 225, column: 3)
!775 = !DILocation(line: 225, column: 24, scope: !773)
!776 = !DILocation(line: 225, column: 3, scope: !774)
!777 = !DILocation(line: 227, column: 34, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !1, line: 226, column: 3)
!779 = !DILocation(line: 227, column: 15, scope: !778)
!780 = !DILocation(line: 202, column: 26, scope: !112)
!781 = !DILocation(line: 225, column: 52, scope: !773)
!782 = !DILocation(line: 204, column: 26, scope: !112)
!783 = !DILocation(line: 229, column: 47, scope: !112)
!784 = !DILocation(line: 229, column: 13, scope: !112)
!785 = !DILocation(line: 202, column: 17, scope: !112)
!786 = !DILocation(line: 231, column: 11, scope: !787)
!787 = distinct !DILexicalBlock(scope: !112, file: !1, line: 231, column: 6)
!788 = !DILocation(line: 231, column: 8, scope: !787)
!789 = !DILocation(line: 231, column: 6, scope: !112)
!790 = !DILocation(line: 233, column: 28, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 233, column: 5)
!792 = distinct !DILexicalBlock(scope: !793, file: !1, line: 233, column: 5)
!793 = distinct !DILexicalBlock(scope: !787, file: !1, line: 232, column: 3)
!794 = !DILocation(line: 233, column: 5, scope: !792)
!795 = !DILocation(line: 241, column: 3, scope: !112)
!796 = !DILocation(line: 205, column: 8, scope: !112)
!797 = !DILocation(line: 204, column: 17, scope: !112)
!798 = !DILocation(line: 244, column: 3, scope: !799)
!799 = distinct !DILexicalBlock(scope: !112, file: !1, line: 244, column: 3)
!800 = !DILocation(line: 236, column: 41, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 235, column: 10)
!802 = distinct !DILexicalBlock(scope: !791, file: !1, line: 234, column: 5)
!803 = !DILocation(line: 236, column: 59, scope: !801)
!804 = !DILocation(line: 236, column: 64, scope: !801)
!805 = !DILocation(line: 236, column: 76, scope: !801)
!806 = !DILocation(line: 236, column: 83, scope: !801)
!807 = !DILocation(line: 238, column: 76, scope: !801)
!808 = !DILocation(line: 238, column: 68, scope: !801)
!809 = !DILocation(line: 235, column: 18, scope: !801)
!810 = !DILocation(line: 235, column: 10, scope: !802)
!811 = !{!812, !813, i64 48}
!812 = !{!"", !745, i64 0, !745, i64 4, !745, i64 8, !745, i64 12, !745, i64 16, !745, i64 20, !745, i64 24, !745, i64 28, !745, i64 32, !745, i64 36, !745, i64 40, !745, i64 44, !813, i64 48, !745, i64 52, !745, i64 56, !745, i64 60, !745, i64 64, !745, i64 68, !745, i64 72, !745, i64 76, !745, i64 80, !745, i64 84, !745, i64 88, !745, i64 92, !745, i64 96, !626, i64 104, !626, i64 112, !745, i64 120, !626, i64 128, !745, i64 136, !745, i64 140, !745, i64 144, !745, i64 148, !745, i64 152, !745, i64 156, !745, i64 160, !745, i64 164, !745, i64 168, !745, i64 172, !745, i64 176, !745, i64 180, !627, i64 184, !627, i64 4792, !627, i64 7352, !627, i64 8504, !627, i64 12600, !627, i64 13112, !626, i64 14136, !626, i64 14144, !626, i64 14152, !626, i64 14160, !626, i64 14168, !627, i64 14176, !626, i64 71776, !626, i64 71784, !745, i64 71792, !745, i64 71796, !745, i64 71800, !745, i64 71804, !627, i64 71808, !745, i64 71872, !745, i64 71876, !745, i64 71880, !745, i64 71884, !745, i64 71888, !746, i64 71896, !745, i64 71904, !745, i64 71908, !745, i64 71912, !745, i64 71916, !626, i64 71920, !626, i64 71928, !626, i64 71936, !626, i64 71944, !627, i64 71952, !745, i64 71984, !745, i64 71988, !745, i64 71992, !745, i64 71996, !745, i64 72000, !745, i64 72004, !745, i64 72008, !745, i64 72012, !627, i64 72016, !745, i64 72376, !745, i64 72380, !745, i64 72384, !745, i64 72388, !745, i64 72392, !745, i64 72396, !745, i64 72400, !745, i64 72404, !745, i64 72408, !745, i64 72412, !745, i64 72416, !745, i64 72420, !627, i64 72424, !745, i64 72428, !745, i64 72432, !627, i64 72436, !745, i64 72444, !745, i64 72448, !745, i64 72452, !745, i64 72456, !745, i64 72460, !745, i64 72464, !745, i64 72468, !745, i64 72472, !745, i64 72476, !745, i64 72480, !745, i64 72484, !745, i64 72488, !745, i64 72492, !745, i64 72496, !745, i64 72500, !745, i64 72504, !745, i64 72508, !626, i64 72512, !745, i64 72520, !745, i64 72524, !745, i64 72528, !745, i64 72532, !745, i64 72536, !746, i64 72544, !745, i64 72552, !745, i64 72556, !745, i64 72560, !745, i64 72564, !745, i64 72568, !745, i64 72572, !745, i64 72576, !626, i64 72584, !745, i64 72592, !745, i64 72596, !745, i64 72600, !745, i64 72604, !745, i64 72608, !745, i64 72612, !745, i64 72616, !745, i64 72620, !745, i64 72624, !745, i64 72628, !745, i64 72632, !745, i64 72636, !745, i64 72640, !745, i64 72644, !745, i64 72648, !745, i64 72652, !745, i64 72656, !745, i64 72660, !745, i64 72664, !745, i64 72668, !745, i64 72672, !745, i64 72676, !745, i64 72680, !745, i64 72684, !745, i64 72688, !745, i64 72692, !745, i64 72696, !745, i64 72700, !745, i64 72704, !745, i64 72708, !745, i64 72712, !627, i64 72716, !745, i64 72724, !745, i64 72728, !745, i64 72732}
!813 = !{!"float", !627, i64 0}
!814 = !DILocation(line: 236, column: 57, scope: !801)
!815 = !DILocation(line: 236, column: 25, scope: !801)
!816 = !{!744, !745, i64 20}
!817 = !DILocation(line: 236, column: 88, scope: !801)
!818 = !DILocation(line: 236, column: 75, scope: !801)
!819 = !DILocation(line: 236, column: 74, scope: !801)
!820 = !DILocation(line: 236, column: 9, scope: !801)
!821 = !DILocation(line: 238, column: 62, scope: !801)
!822 = !DILocation(line: 238, column: 50, scope: !801)
!823 = !DILocation(line: 238, column: 42, scope: !801)
!824 = !DILocation(line: 238, column: 88, scope: !801)
!825 = !DILocation(line: 238, column: 80, scope: !801)
!826 = !DILocation(line: 238, column: 109, scope: !801)
!827 = !DILocation(line: 238, column: 114, scope: !801)
!828 = !DILocation(line: 238, column: 101, scope: !801)
!829 = !DILocation(line: 238, column: 99, scope: !801)
!830 = !DILocation(line: 238, column: 66, scope: !801)
!831 = !DILocation(line: 238, column: 25, scope: !801)
!832 = !DILocation(line: 233, column: 57, scope: !791)
!833 = !DILocation(line: 243, column: 23, scope: !112)
!834 = !DILocation(line: 244, column: 25, scope: !835)
!835 = distinct !DILexicalBlock(scope: !799, file: !1, line: 244, column: 3)
!836 = !DILocation(line: 246, column: 45, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !1, line: 245, column: 3)
!838 = !DILocation(line: 246, column: 52, scope: !837)
!839 = !DILocation(line: 246, column: 57, scope: !837)
!840 = !DILocation(line: 246, column: 44, scope: !837)
!841 = !DILocation(line: 246, column: 62, scope: !837)
!842 = !DILocation(line: 246, column: 67, scope: !837)
!843 = !DILocation(line: 252, column: 26, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 252, column: 5)
!845 = distinct !DILexicalBlock(scope: !837, file: !1, line: 252, column: 5)
!846 = !DILocation(line: 252, column: 25, scope: !844)
!847 = !DILocation(line: 268, column: 20, scope: !837)
!848 = !DILocation(line: 246, column: 28, scope: !837)
!849 = !DILocation(line: 246, column: 42, scope: !837)
!850 = !DILocation(line: 246, column: 60, scope: !837)
!851 = !DILocation(line: 246, column: 20, scope: !837)
!852 = !DILocation(line: 205, column: 47, scope: !112)
!853 = !DILocation(line: 205, column: 33, scope: !112)
!854 = !DILocation(line: 203, column: 23, scope: !112)
!855 = !DILocation(line: 252, column: 5, scope: !845)
!856 = !DILocation(line: 254, column: 30, scope: !857)
!857 = distinct !DILexicalBlock(scope: !844, file: !1, line: 253, column: 5)
!858 = !DILocation(line: 254, column: 53, scope: !857)
!859 = !DILocation(line: 254, column: 51, scope: !857)
!860 = !DILocation(line: 255, column: 31, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !1, line: 255, column: 10)
!862 = !DILocation(line: 255, column: 10, scope: !857)
!863 = !DILocation(line: 261, column: 53, scope: !857)
!864 = !DILocation(line: 261, column: 26, scope: !857)
!865 = !DILocation(line: 262, column: 33, scope: !866)
!866 = distinct !DILexicalBlock(scope: !857, file: !1, line: 262, column: 10)
!867 = !DILocation(line: 262, column: 10, scope: !857)
!868 = !DILocation(line: 265, column: 31, scope: !837)
!869 = !DILocation(line: 205, column: 19, scope: !112)
!870 = !DILocation(line: 270, column: 38, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 270, column: 5)
!872 = distinct !DILexicalBlock(scope: !837, file: !1, line: 270, column: 5)
!873 = !DILocation(line: 270, column: 9, scope: !872)
!874 = !DILocation(line: 270, column: 26, scope: !871)
!875 = !DILocation(line: 270, column: 5, scope: !872)
!876 = !DILocation(line: 272, column: 53, scope: !877)
!877 = distinct !DILexicalBlock(scope: !871, file: !1, line: 271, column: 5)
!878 = !DILocation(line: 272, column: 51, scope: !877)
!879 = !DILocation(line: 273, column: 31, scope: !880)
!880 = distinct !DILexicalBlock(scope: !877, file: !1, line: 273, column: 10)
!881 = !DILocation(line: 273, column: 10, scope: !877)
!882 = !DILocation(line: 277, column: 53, scope: !877)
!883 = !DILocation(line: 277, column: 26, scope: !877)
!884 = !DILocation(line: 278, column: 33, scope: !885)
!885 = distinct !DILexicalBlock(scope: !877, file: !1, line: 278, column: 10)
!886 = !DILocation(line: 278, column: 10, scope: !877)
!887 = !DILocation(line: 281, column: 5, scope: !837)
!888 = !DILocation(line: 281, column: 19, scope: !837)
!889 = !DILocation(line: 282, column: 5, scope: !837)
!890 = !DILocation(line: 282, column: 19, scope: !837)
!891 = !DILocation(line: 244, column: 54, scope: !835)
!892 = !DILocation(line: 285, column: 3, scope: !112)
!893 = !DILocation(line: 288, column: 3, scope: !112)
!894 = !DILocation(line: 289, column: 3, scope: !112)
!895 = !DILocation(line: 290, column: 3, scope: !112)
!896 = !DILocation(line: 291, column: 3, scope: !112)
