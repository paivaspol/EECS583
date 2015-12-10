; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@stdout = external global %struct._IO_FILE*
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
@str = private unnamed_addr constant [90 x i8] c" Leaky BucketRateFile does not have valid entries;\0A using rate calculated from avg. rate \00"
@str14 = private unnamed_addr constant [76 x i8] c" LeakyBucketRate File does not exist; using rate calculated from avg. rate \00"

; Function Attrs: nounwind optsize uwtable
define i32 @get_LeakyBucketRate(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
entry:
  %buf = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{i64 %NumberLeakyBuckets}, i64 0, metadata !18), !dbg !608
  call void @llvm.dbg.value(metadata !{i64* %Rmin}, i64 0, metadata !19), !dbg !608
  call void @llvm.dbg.declare(metadata !{i64* %buf}, metadata !78), !dbg !609
  %0 = load %struct.InputParameters** @input, align 8, !dbg !610, !tbaa !611
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 89, i64 0, !dbg !610
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5, !dbg !610
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !20), !dbg !610
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !610
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !610

for.cond.preheader:                               ; preds = %entry
  %cmp214 = icmp eq i64 %NumberLeakyBuckets, 0, !dbg !614
  br i1 %cmp214, label %for.end, label %for.body, !dbg !614

if.then:                                          ; preds = %entry
  %puts13 = call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str14, i64 0, i64 0)), !dbg !616
  br label %return, !dbg !618

for.body:                                         ; preds = %for.cond.preheader, %if.end8
  %i.015 = phi i64 [ %inc, %if.end8 ], [ 0, %for.cond.preheader ]
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i64* %buf) #5, !dbg !619
  %cmp4 = icmp eq i32 %call3, 1, !dbg !619
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !619

if.then5:                                         ; preds = %for.body
  %puts = call i32 @puts(i8* getelementptr inbounds ([90 x i8]* @str, i64 0, i64 0)), !dbg !621
  %call7 = call i32 @fclose(%struct._IO_FILE* %call) #5, !dbg !623
  br label %return, !dbg !624

if.end8:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i64* %buf}, i64 0, metadata !78), !dbg !625
  %1 = load i64* %buf, align 8, !dbg !625, !tbaa !626
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %i.015, !dbg !625
  store i64 %1, i64* %arrayidx, align 8, !dbg !625, !tbaa !626
  %inc = add i64 %i.015, 1, !dbg !614
  call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !77), !dbg !614
  %cmp2 = icmp ult i64 %inc, %NumberLeakyBuckets, !dbg !614
  br i1 %cmp2, label %for.body, label %for.end, !dbg !614

for.end:                                          ; preds = %if.end8, %for.cond.preheader
  %call9 = call i32 @fclose(%struct._IO_FILE* %call) #5, !dbg !627
  br label %return, !dbg !628

return:                                           ; preds = %for.end, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %for.end ]
  ret i32 %retval.0, !dbg !628
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @PutBigDoubleWord(i64 %dw, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %dw}, i64 0, metadata !83), !dbg !629
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !84), !dbg !629
  %shr = lshr i64 %dw, 24, !dbg !630
  %shr.tr = trunc i64 %shr to i32, !dbg !630
  %conv = and i32 %shr.tr, 255, !dbg !630
  %call = tail call i32 @fputc(i32 %conv, %struct._IO_FILE* %fp) #5, !dbg !630
  %shr1 = lshr i64 %dw, 16, !dbg !631
  %shr1.tr = trunc i64 %shr1 to i32, !dbg !631
  %conv3 = and i32 %shr1.tr, 255, !dbg !631
  %call4 = tail call i32 @fputc(i32 %conv3, %struct._IO_FILE* %fp) #5, !dbg !631
  %shr5 = lshr i64 %dw, 8, !dbg !632
  %shr5.tr = trunc i64 %shr5 to i32, !dbg !632
  %conv7 = and i32 %shr5.tr, 255, !dbg !632
  %call8 = tail call i32 @fputc(i32 %conv7, %struct._IO_FILE* %fp) #5, !dbg !632
  %dw.tr = trunc i64 %dw to i32, !dbg !633
  %conv10 = and i32 %dw.tr, 255, !dbg !633
  %call11 = tail call i32 @fputc(i32 %conv10, %struct._IO_FILE* %fp) #5, !dbg !633
  ret void, !dbg !634
}

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @write_buffer(i64 %NumberLeakyBuckets, i64* nocapture %Rmin, i64* nocapture %Bmin, i64* nocapture %Fmin) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %NumberLeakyBuckets}, i64 0, metadata !89), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i64* %Rmin}, i64 0, metadata !90), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i64* %Bmin}, i64 0, metadata !91), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i64* %Fmin}, i64 0, metadata !92), !dbg !635
  %0 = load %struct.InputParameters** @input, align 8, !dbg !636, !tbaa !611
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 90, i64 0, !dbg !636
  %call = tail call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !636
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !93), !dbg !636
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !636
  br i1 %cmp, label %if.then, label %if.end, !dbg !636

if.then:                                          ; preds = %entry
  %1 = load %struct.InputParameters** @input, align 8, !dbg !637, !tbaa !611
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 90, i64 0, !dbg !637
  %call3 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i8* %arraydecay2) #5, !dbg !637
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #5, !dbg !639
  br label %if.end, !dbg !640

if.end:                                           ; preds = %if.then, %entry
  tail call void @PutBigDoubleWord(i64 %NumberLeakyBuckets, %struct._IO_FILE* %call) #6, !dbg !641
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), i64 %NumberLeakyBuckets) #5, !dbg !642
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !94), !dbg !644
  %cmp529 = icmp eq i64 %NumberLeakyBuckets, 0, !dbg !644
  br i1 %cmp529, label %for.end, label %for.body, !dbg !644

for.body:                                         ; preds = %if.end, %for.body
  %iBucket.030 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %iBucket.030, !dbg !646
  %2 = load i64* %arrayidx, align 8, !dbg !646, !tbaa !626
  tail call void @PutBigDoubleWord(i64 %2, %struct._IO_FILE* %call) #6, !dbg !646
  %arrayidx6 = getelementptr inbounds i64* %Bmin, i64 %iBucket.030, !dbg !648
  %3 = load i64* %arrayidx6, align 8, !dbg !648, !tbaa !626
  tail call void @PutBigDoubleWord(i64 %3, %struct._IO_FILE* %call) #6, !dbg !648
  %arrayidx7 = getelementptr inbounds i64* %Fmin, i64 %iBucket.030, !dbg !649
  %4 = load i64* %arrayidx7, align 8, !dbg !649, !tbaa !626
  tail call void @PutBigDoubleWord(i64 %4, %struct._IO_FILE* %call) #6, !dbg !649
  %5 = load i64* %arrayidx, align 8, !dbg !650, !tbaa !626
  %6 = load i64* %arrayidx6, align 8, !dbg !650, !tbaa !626
  %7 = load i64* %arrayidx7, align 8, !dbg !650, !tbaa !626
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), i64 %5, i64 %6, i64 %7) #5, !dbg !650
  %inc = add i64 %iBucket.030, 1, !dbg !644
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !94), !dbg !644
  %exitcond = icmp eq i64 %inc, %NumberLeakyBuckets, !dbg !644
  br i1 %exitcond, label %for.end, label %for.body, !dbg !644

for.end:                                          ; preds = %for.body, %if.end
  %call12 = tail call i32 @fclose(%struct._IO_FILE* %call) #5, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Sort(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %NumberLeakyBuckets}, i64 0, metadata !99), !dbg !653
  tail call void @llvm.dbg.value(metadata !{i64* %Rmin}, i64 0, metadata !100), !dbg !653
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !101), !dbg !654
  %sub = add i64 %NumberLeakyBuckets, -1, !dbg !654
  %cmp29 = icmp eq i64 %sub, 0, !dbg !654
  br i1 %cmp29, label %for.end12, label %for.body, !dbg !654

for.cond.loopexit:                                ; preds = %for.inc, %for.body
  %exitcond31 = icmp eq i64 %add, %sub, !dbg !654
  br i1 %exitcond31, label %for.end12, label %for.body, !dbg !654

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %i.030 = phi i64 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %add = add i64 %i.030, 1, !dbg !656
  tail call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !102), !dbg !656
  %cmp227 = icmp ult i64 %add, %NumberLeakyBuckets, !dbg !656
  br i1 %cmp227, label %for.body3.lr.ph, label %for.cond.loopexit, !dbg !656

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %i.030, !dbg !659
  br label %for.body3, !dbg !656

for.body3:                                        ; preds = %for.inc, %for.body3.lr.ph
  %j.028 = phi i64 [ %add, %for.body3.lr.ph ], [ %inc, %for.inc ]
  %0 = load i64* %arrayidx, align 8, !dbg !659, !tbaa !626
  %arrayidx4 = getelementptr inbounds i64* %Rmin, i64 %j.028, !dbg !659
  %1 = load i64* %arrayidx4, align 8, !dbg !659, !tbaa !626
  %cmp5 = icmp ugt i64 %0, %1, !dbg !659
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !659

if.then:                                          ; preds = %for.body3
  tail call void @llvm.dbg.value(metadata !{i64 %0}, i64 0, metadata !103), !dbg !661
  store i64 %1, i64* %arrayidx, align 8, !dbg !663, !tbaa !626
  store i64 %0, i64* %arrayidx4, align 8, !dbg !664, !tbaa !626
  br label %for.inc, !dbg !665

for.inc:                                          ; preds = %for.body3, %if.then
  %inc = add i64 %j.028, 1, !dbg !656
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !102), !dbg !656
  %exitcond = icmp eq i64 %inc, %NumberLeakyBuckets, !dbg !656
  br i1 %exitcond, label %for.cond.loopexit, label %for.body3, !dbg !656

for.end12:                                        ; preds = %for.cond.loopexit, %entry
  ret void, !dbg !666
}

; Function Attrs: nounwind optsize uwtable
define void @calc_buffer() #0 {
if.end:
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !116), !dbg !667
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !611
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %0), !dbg !668
  %2 = load i64* @total_frame_buffer, align 8, !dbg !669, !tbaa !626
  %3 = load %struct.InputParameters** @input, align 8, !dbg !669, !tbaa !611
  %no_frames = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2, !dbg !669
  %4 = load i32* %no_frames, align 4, !dbg !669, !tbaa !670
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 %2, i32 %4) #5, !dbg !669
  %5 = load %struct.InputParameters** @input, align 8, !dbg !671, !tbaa !611
  %NumberLeakyBuckets2 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 88, !dbg !671
  %6 = load i32* %NumberLeakyBuckets2, align 4, !dbg !671, !tbaa !670
  %conv = sext i32 %6 to i64, !dbg !671
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !110), !dbg !671
  tail call void @llvm.dbg.value(metadata !672, i64 0, metadata !111), !dbg !673
  %call4 = tail call noalias i8* @calloc(i64 %conv, i64 8) #5, !dbg !674
  %7 = bitcast i8* %call4 to i64*, !dbg !674
  tail call void @llvm.dbg.value(metadata !{i64* %7}, i64 0, metadata !121), !dbg !674
  %tobool5 = icmp eq i8* %call4, null, !dbg !675
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !675

if.then6:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !676
  br label %if.end7, !dbg !676

if.end7:                                          ; preds = %if.end, %if.then6
  %call8 = tail call noalias i8* @calloc(i64 %conv, i64 8) #5, !dbg !677
  %8 = bitcast i8* %call8 to i64*, !dbg !677
  tail call void @llvm.dbg.value(metadata !{i64* %8}, i64 0, metadata !122), !dbg !677
  %tobool9 = icmp eq i8* %call8, null, !dbg !678
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !678

if.then10:                                        ; preds = %if.end7
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !679
  br label %if.end11, !dbg !679

if.end11:                                         ; preds = %if.end7, %if.then10
  %call12 = tail call noalias i8* @calloc(i64 %conv, i64 8) #5, !dbg !680
  %9 = bitcast i8* %call12 to i64*, !dbg !680
  tail call void @llvm.dbg.value(metadata !{i64* %9}, i64 0, metadata !123), !dbg !680
  %tobool13 = icmp eq i8* %call12, null, !dbg !681
  br i1 %tobool13, label %if.then14, label %for.cond.preheader, !dbg !681

if.then14:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !682
  br label %for.cond.preheader, !dbg !682

for.cond.preheader:                               ; preds = %if.end11, %if.then14
  %10 = load i64* @total_frame_buffer, align 8, !dbg !683, !tbaa !626
  %cmp236 = icmp eq i64 %10, 0, !dbg !683
  br i1 %cmp236, label %for.end, label %for.body, !dbg !683

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %TotalRate.0238 = phi i64 [ %add17, %for.body ], [ 0, %for.cond.preheader ]
  %iFrame.0237 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.0237, !dbg !685
  %11 = load i64* %arrayidx, align 8, !dbg !685, !tbaa !626
  %add17 = add i64 %11, %TotalRate.0238, !dbg !685
  tail call void @llvm.dbg.value(metadata !{i64 %add17}, i64 0, metadata !109), !dbg !685
  %inc = add i64 %iFrame.0237, 1, !dbg !683
  tail call void @llvm.dbg.value(metadata !{i64 %inc}, i64 0, metadata !115), !dbg !683
  %cmp = icmp ult i64 %inc, %10, !dbg !683
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !683

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = uitofp i64 %add17 to float, !dbg !683
  %phitmp241 = uitofp i64 %10 to float, !dbg !683
  br label %for.end, !dbg !683

for.end:                                          ; preds = %for.cond.preheader, %for.cond.for.end_crit_edge
  %.lcssa = phi float [ %phitmp241, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %for.cond.preheader ]
  %TotalRate.0.lcssa = phi float [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %for.cond.preheader ]
  %div = fdiv float %TotalRate.0.lcssa, %.lcssa, !dbg !687
  %conv20 = fptoui float %div to i64, !dbg !687
  tail call void @llvm.dbg.value(metadata !{i64 %conv20}, i64 0, metadata !108), !dbg !687
  %call21 = tail call i32 @get_LeakyBucketRate(i64 %conv, i64* %7) #6, !dbg !688
  %cmp22 = icmp eq i32 %call21, 1, !dbg !688
  br i1 %cmp22, label %if.end55, label %for.cond25.preheader, !dbg !688

for.cond25.preheader:                             ; preds = %for.end
  %cmp26234 = icmp eq i32 %6, 0, !dbg !689
  br i1 %cmp26234, label %if.end55.thread, label %for.body28.lr.ph, !dbg !689

if.end55.thread:                                  ; preds = %for.cond25.preheader
  tail call void @Sort(i64 %conv, i64* %7) #6, !dbg !692
  tail call void @llvm.dbg.value(metadata !{i64 %mul56}, i64 0, metadata !117), !dbg !693
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !114), !dbg !694
  br label %for.end136, !dbg !694

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %conv32 = uitofp i64 %conv20 to float, !dbg !696
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !696, !tbaa !611
  %framerate = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 12, !dbg !696
  %13 = load %struct.InputParameters** @input, align 8, !dbg !696, !tbaa !611
  %jumpd = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 5, !dbg !696
  %div40 = lshr i64 %conv20, 2, !dbg !698
  %conv41 = uitofp i64 %div40 to float, !dbg !698
  br label %for.body28, !dbg !689

for.body28:                                       ; preds = %for.body28.lr.ph, %for.inc52
  %iBucket.0235 = phi i64 [ 0, %for.body28.lr.ph ], [ %inc53, %for.inc52 ]
  %cmp29 = icmp eq i64 %iBucket.0235, 0, !dbg !699
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !699

if.then31:                                        ; preds = %for.body28
  %14 = load float* %framerate, align 4, !dbg !696, !tbaa !700
  %mul = fmul float %conv32, %14, !dbg !696
  %conv33 = fptoui float %mul to i64, !dbg !696
  %15 = load i32* %jumpd, align 4, !dbg !696, !tbaa !670
  %add34 = add nsw i32 %15, 1, !dbg !696
  %conv35 = sext i32 %add34 to i64, !dbg !696
  %div36 = udiv i64 %conv33, %conv35, !dbg !696
  store i64 %div36, i64* %7, align 8, !dbg !696, !tbaa !626
  br label %for.inc52, !dbg !696

if.else:                                          ; preds = %for.body28
  %sub = add i64 %iBucket.0235, -1, !dbg !698
  %arrayidx38 = getelementptr inbounds i64* %7, i64 %sub, !dbg !698
  %16 = load i64* %arrayidx38, align 8, !dbg !698, !tbaa !626
  %conv39 = uitofp i64 %16 to float, !dbg !698
  %17 = load float* %framerate, align 4, !dbg !698, !tbaa !700
  %mul43 = fmul float %conv41, %17, !dbg !698
  %18 = load i32* %jumpd, align 4, !dbg !698, !tbaa !670
  %add45 = add nsw i32 %18, 1, !dbg !698
  %conv46 = sitofp i32 %add45 to float, !dbg !698
  %div47 = fdiv float %mul43, %conv46, !dbg !698
  %add48 = fadd float %conv39, %div47, !dbg !698
  %conv49 = fptoui float %add48 to i64, !dbg !698
  %arrayidx50 = getelementptr inbounds i64* %7, i64 %iBucket.0235, !dbg !698
  store i64 %conv49, i64* %arrayidx50, align 8, !dbg !698, !tbaa !626
  br label %for.inc52

for.inc52:                                        ; preds = %if.then31, %if.else
  %inc53 = add i64 %iBucket.0235, 1, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i64 %inc53}, i64 0, metadata !114), !dbg !689
  %cmp26 = icmp ult i64 %inc53, %conv, !dbg !689
  br i1 %cmp26, label %for.body28, label %if.end55, !dbg !689

if.end55:                                         ; preds = %for.inc52, %for.end
  tail call void @Sort(i64 %conv, i64* %7) #6, !dbg !692
  %mul56 = mul i64 %conv20, 20, !dbg !693
  tail call void @llvm.dbg.value(metadata !{i64 %mul56}, i64 0, metadata !117), !dbg !693
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !114), !dbg !694
  %cmp58231 = icmp eq i32 %6, 0, !dbg !694
  br i1 %cmp58231, label %for.end136, label %for.body60.lr.ph, !dbg !694

for.body60.lr.ph:                                 ; preds = %if.end55
  %19 = load %struct.InputParameters** @input, align 8, !dbg !701, !tbaa !611
  %jumpd62 = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 5, !dbg !701
  %20 = load i32* %jumpd62, align 4, !dbg !701, !tbaa !670
  %add63 = add nsw i32 %20, 1, !dbg !701
  %conv64 = sext i32 %add63 to i64, !dbg !701
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !701, !tbaa !611
  %framerate67 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 12, !dbg !701
  %22 = load float* %framerate67, align 4, !dbg !701, !tbaa !700
  %23 = load i64* @total_frame_buffer, align 8, !dbg !703, !tbaa !626
  %cmp72226 = icmp eq i64 %23, 0, !dbg !703
  %24 = load i64* getelementptr inbounds ([10000 x i64]* @Bit_Buffer, i64 0, i64 0), align 16, !dbg !705, !tbaa !626
  br label %for.body60, !dbg !694

for.body60:                                       ; preds = %for.body60.lr.ph, %for.end131
  %iBucket.1233 = phi i64 [ 0, %for.body60.lr.ph ], [ %inc135, %for.end131 ]
  %FrameIndex.0232 = phi i64 [ 0, %for.body60.lr.ph ], [ %FrameIndex.1.lcssa, %for.end131 ]
  %arrayidx61 = getelementptr inbounds i64* %7, i64 %iBucket.1233, !dbg !701
  %25 = load i64* %arrayidx61, align 8, !dbg !701, !tbaa !626
  %mul65 = mul i64 %conv64, %25, !dbg !701
  %conv66 = uitofp i64 %mul65 to float, !dbg !701
  %div68 = fdiv float %conv66, %22, !dbg !701
  %conv69 = fptosi float %div68 to i64, !dbg !701
  tail call void @llvm.dbg.value(metadata !{i64 %conv69}, i64 0, metadata !120), !dbg !701
  tail call void @llvm.dbg.value(metadata !{i64 %mul56}, i64 0, metadata !119), !dbg !706
  tail call void @llvm.dbg.value(metadata !{i64 %mul56}, i64 0, metadata !113), !dbg !707
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !115), !dbg !703
  br i1 %cmp72226, label %for.end99, label %for.body74, !dbg !703

for.body74:                                       ; preds = %for.body60, %for.body74.for.body74_crit_edge
  %26 = phi i64 [ %storemerge225, %for.body74.for.body74_crit_edge ], [ %mul56, %for.body60 ], !dbg !708
  %minB.0229 = phi i64 [ %sub77.minB.0, %for.body74.for.body74_crit_edge ], [ %mul56, %for.body60 ]
  %iFrame.1228 = phi i64 [ %add87, %for.body74.for.body74_crit_edge ], [ 0, %for.body60 ]
  %FrameIndex.1227 = phi i64 [ %iFrame.1.FrameIndex.1, %for.body74.for.body74_crit_edge ], [ %FrameIndex.0232, %for.body60 ]
  %arrayidx76 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.1228, !dbg !708
  %27 = load i64* %arrayidx76, align 8, !dbg !708, !tbaa !626
  %sub77 = sub nsw i64 %26, %27, !dbg !708
  %cmp80 = icmp slt i64 %sub77, %minB.0229, !dbg !710
  tail call void @llvm.dbg.value(metadata !{i64 %sub77}, i64 0, metadata !113), !dbg !711
  tail call void @llvm.dbg.value(metadata !{i64 %iFrame.1228}, i64 0, metadata !116), !dbg !713
  %iFrame.1.FrameIndex.1 = select i1 %cmp80, i64 %iFrame.1228, i64 %FrameIndex.1227, !dbg !710
  %sub77.minB.0 = select i1 %cmp80, i64 %sub77, i64 %minB.0229, !dbg !710
  %add86 = add nsw i64 %sub77, %conv69, !dbg !714
  %add87 = add i64 %iFrame.1228, 1, !dbg !714
  tail call void @llvm.dbg.value(metadata !{i64 %add87}, i64 0, metadata !115), !dbg !703
  %exitcond = icmp eq i64 %add87, %23, !dbg !703
  br i1 %exitcond, label %for.end99, label %for.body74.for.body74_crit_edge, !dbg !703

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  %cmp91 = icmp sgt i64 %add86, %mul56, !dbg !715
  %storemerge225 = select i1 %cmp91, i64 %mul56, i64 %add86, !dbg !715
  br label %for.body74, !dbg !703

for.end99:                                        ; preds = %for.body74, %for.body60
  %minB.0.lcssa = phi i64 [ %mul56, %for.body60 ], [ %sub77.minB.0, %for.body74 ]
  %FrameIndex.1.lcssa = phi i64 [ %FrameIndex.0232, %for.body60 ], [ %iFrame.1.FrameIndex.1, %for.body74 ]
  %sub100 = sub nsw i64 %mul56, %minB.0.lcssa, !dbg !716
  tail call void @llvm.dbg.value(metadata !{i64 %sub100}, i64 0, metadata !118), !dbg !716
  tail call void @llvm.dbg.value(metadata !{i64 %24}, i64 0, metadata !119), !dbg !705
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !115), !dbg !717
  %add103 = add i64 %FrameIndex.1.lcssa, 1, !dbg !717
  br label %for.cond102, !dbg !717

for.cond102:                                      ; preds = %for.body106, %for.end99
  %28 = phi i64 [ %24, %for.end99 ], [ %add120, %for.body106 ]
  %InitFullness.0 = phi i64 [ %24, %for.end99 ], [ %sub116.InitFullness.0, %for.body106 ]
  %iFrame.2 = phi i64 [ 0, %for.end99 ], [ %add121, %for.body106 ]
  %cmp104 = icmp ult i64 %iFrame.2, %add103, !dbg !717
  br i1 %cmp104, label %for.body106, label %for.end131, !dbg !717

for.body106:                                      ; preds = %for.cond102
  %arrayidx108 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.2, !dbg !719
  %29 = load i64* %arrayidx108, align 8, !dbg !719, !tbaa !626
  %sub109 = sub nsw i64 %28, %29, !dbg !719
  %cmp112 = icmp slt i64 %sub109, 0, !dbg !721
  %.sub109 = select i1 %cmp112, i64 0, i64 %sub109, !dbg !721
  %sub116 = select i1 %cmp112, i64 %sub109, i64 0, !dbg !721
  %sub116.InitFullness.0 = sub nsw i64 %InitFullness.0, %sub116, !dbg !721
  %add120 = add nsw i64 %.sub109, %conv69, !dbg !722
  %add121 = add i64 %iFrame.2, 1, !dbg !722
  %cmp125 = icmp sgt i64 %add120, %sub100, !dbg !723
  br i1 %cmp125, label %for.end131, label %for.cond102, !dbg !723

for.end131:                                       ; preds = %for.body106, %for.cond102
  %InitFullness.2 = phi i64 [ %sub116.InitFullness.0, %for.body106 ], [ %InitFullness.0, %for.cond102 ]
  %arrayidx132 = getelementptr inbounds i64* %8, i64 %iBucket.1233, !dbg !724
  store i64 %sub100, i64* %arrayidx132, align 8, !dbg !724, !tbaa !626
  %arrayidx133 = getelementptr inbounds i64* %9, i64 %iBucket.1233, !dbg !725
  store i64 %InitFullness.2, i64* %arrayidx133, align 8, !dbg !725, !tbaa !626
  %inc135 = add i64 %iBucket.1233, 1, !dbg !694
  tail call void @llvm.dbg.value(metadata !{i64 %inc135}, i64 0, metadata !114), !dbg !694
  %cmp58 = icmp ult i64 %inc135, %conv, !dbg !694
  br i1 %cmp58, label %for.body60, label %for.end136, !dbg !694

for.end136:                                       ; preds = %for.end131, %if.end55.thread, %if.end55
  tail call void @write_buffer(i64 %conv, i64* %7, i64* %8, i64* %9) #6, !dbg !726
  tail call void @free(i8* %call4) #5, !dbg !727
  tail call void @free(i8* %call8) #5, !dbg !728
  tail call void @free(i8* %call12) #5, !dbg !729
  ret void, !dbg !730
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !124, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !79, metadata !85, metadata !95, metadata !104}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"get_LeakyBucketRate", metadata !"get_LeakyBucketRate", metadata !"", i32 47, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i64, i64*)* @get_LeakyBucketRate, null, null, metadata !17, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [get_LeakyBucketRate]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !16}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long unsigned int]
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !77, metadata !78}
!18 = metadata !{i32 786689, metadata !10, metadata !"NumberLeakyBuckets", metadata !11, i32 16777263, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NumberLeakyBuckets] [line 47]
!19 = metadata !{i32 786689, metadata !10, metadata !"Rmin", metadata !11, i32 33554479, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rmin] [line 47]
!20 = metadata !{i32 786688, metadata !10, metadata !"f", metadata !11, i32 49, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 49]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!24 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !56, metadata !58, metadata !62, metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !72, metadata !73}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!37 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!39 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!40 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!42 = metadata !{i32 786451, metadata !24, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47}
!44 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786445, metadata !24, metadata !42, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!50 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!51 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!52 = metadata !{i32 786454, metadata !24, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!53 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!54 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !55} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !57} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!57 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!58 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !59} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !29, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !65} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!65 = metadata !{i32 786454, metadata !24, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!69 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!70 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!71 = metadata !{i32 786454, metadata !24, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!73 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !74} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!74 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !29, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!77 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!78 = metadata !{i32 786688, metadata !10, metadata !"buf", metadata !11, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 50]
!79 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"PutBigDoubleWord", metadata !"PutBigDoubleWord", metadata !"", i32 90, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, %struct._IO_FILE*)* @PutBigDoubleWord, null, null, metadata !82, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [PutBigDoubleWord]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !15, metadata !21}
!82 = metadata !{metadata !83, metadata !84}
!83 = metadata !{i32 786689, metadata !79, metadata !"dw", metadata !11, i32 16777306, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dw] [line 90]
!84 = metadata !{i32 786689, metadata !79, metadata !"fp", metadata !11, i32 33554522, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 90]
!85 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"write_buffer", metadata !"write_buffer", metadata !"", i32 124, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64*, i64*, i64*)* @write_buffer, null, null, metadata !88, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [write_buffer]
!86 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{null, metadata !15, metadata !16, metadata !16, metadata !16}
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!89 = metadata !{i32 786689, metadata !85, metadata !"NumberLeakyBuckets", metadata !11, i32 16777340, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NumberLeakyBuckets] [line 124]
!90 = metadata !{i32 786689, metadata !85, metadata !"Rmin", metadata !11, i32 33554556, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rmin] [line 124]
!91 = metadata !{i32 786689, metadata !85, metadata !"Bmin", metadata !11, i32 50331772, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Bmin] [line 124]
!92 = metadata !{i32 786689, metadata !85, metadata !"Fmin", metadata !11, i32 67108988, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Fmin] [line 124]
!93 = metadata !{i32 786688, metadata !85, metadata !"outf", metadata !11, i32 126, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outf] [line 126]
!94 = metadata !{i32 786688, metadata !85, metadata !"iBucket", metadata !11, i32 127, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iBucket] [line 127]
!95 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"Sort", metadata !"Sort", metadata !"", i32 168, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64*)* @Sort, null, null, metadata !98, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [Sort]
!96 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{null, metadata !15, metadata !16}
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103}
!99 = metadata !{i32 786689, metadata !95, metadata !"NumberLeakyBuckets", metadata !11, i32 16777384, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NumberLeakyBuckets] [line 168]
!100 = metadata !{i32 786689, metadata !95, metadata !"Rmin", metadata !11, i32 33554600, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rmin] [line 168]
!101 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !11, i32 170, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 170]
!102 = metadata !{i32 786688, metadata !95, metadata !"j", metadata !11, i32 170, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 170]
!103 = metadata !{i32 786688, metadata !95, metadata !"temp", metadata !11, i32 171, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 171]
!104 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"calc_buffer", metadata !"calc_buffer", metadata !"", i32 200, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @calc_buffer, null, null, metadata !107, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [calc_buffer]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{null}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!108 = metadata !{i32 786688, metadata !104, metadata !"AvgRate", metadata !11, i32 202, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [AvgRate] [line 202]
!109 = metadata !{i32 786688, metadata !104, metadata !"TotalRate", metadata !11, i32 202, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [TotalRate] [line 202]
!110 = metadata !{i32 786688, metadata !104, metadata !"NumberLeakyBuckets", metadata !11, i32 202, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberLeakyBuckets] [line 202]
!111 = metadata !{i32 786688, metadata !104, metadata !"buffer_frame", metadata !11, i32 203, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer_frame] [line 203]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!113 = metadata !{i32 786688, metadata !104, metadata !"minB", metadata !11, i32 203, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minB] [line 203]
!114 = metadata !{i32 786688, metadata !104, metadata !"iBucket", metadata !11, i32 204, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iBucket] [line 204]
!115 = metadata !{i32 786688, metadata !104, metadata !"iFrame", metadata !11, i32 204, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iFrame] [line 204]
!116 = metadata !{i32 786688, metadata !104, metadata !"FrameIndex", metadata !11, i32 204, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameIndex] [line 204]
!117 = metadata !{i32 786688, metadata !104, metadata !"maxBuffer", metadata !11, i32 205, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxBuffer] [line 205]
!118 = metadata !{i32 786688, metadata !104, metadata !"actualBuffer", metadata !11, i32 205, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [actualBuffer] [line 205]
!119 = metadata !{i32 786688, metadata !104, metadata !"InitFullness", metadata !11, i32 205, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InitFullness] [line 205]
!120 = metadata !{i32 786688, metadata !104, metadata !"iChannelRate", metadata !11, i32 205, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iChannelRate] [line 205]
!121 = metadata !{i32 786688, metadata !104, metadata !"Rmin", metadata !11, i32 206, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rmin] [line 206]
!122 = metadata !{i32 786688, metadata !104, metadata !"Bmin", metadata !11, i32 206, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Bmin] [line 206]
!123 = metadata !{i32 786688, metadata !104, metadata !"Fmin", metadata !11, i32 206, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Fmin] [line 206]
!124 = metadata !{metadata !125, metadata !126, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !328, metadata !330, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !375, metadata !470, metadata !471, metadata !472, metadata !474, metadata !475, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !494, metadata !495, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !510, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !522, metadata !525, metadata !526, metadata !527, metadata !528, metadata !531, metadata !534, metadata !545, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604}
!125 = metadata !{i32 786484, i32 0, null, metadata !"total_frame_buffer", metadata !"total_frame_buffer", metadata !"", metadata !11, i32 22, metadata !15, i32 0, i32 1, i64* @total_frame_buffer, null} ; [ DW_TAG_variable ] [total_frame_buffer] [line 22] [def]
!126 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !127, i32 558, metadata !129, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!127 = metadata !{i32 786473, metadata !128}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!128 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!130 = metadata !{i32 786454, metadata !128, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!131 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !132, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !316, metadata !317, metadata !319, metadata !320}
!133 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!134 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!136 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !137, metadata !314, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!138 = metadata !{i32 786454, metadata !128, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!139 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !225, metadata !262, metadata !289, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !311}
!141 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!142 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!143 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!144 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!145 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!146 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!147 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !148} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!149 = metadata !{i32 786454, metadata !128, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!150 = metadata !{i32 786451, metadata !128, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !171, metadata !197}
!152 = metadata !{i32 786445, metadata !128, metadata !150, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!154 = metadata !{i32 786454, metadata !128, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!155 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !170}
!157 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!158 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!159 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!160 = metadata !{i32 786454, metadata !128, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!161 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!162 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!163 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!164 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !160} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!165 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !160} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!166 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!167 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!168 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !169} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!170 = metadata !{i32 786445, metadata !128, metadata !155, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!171 = metadata !{i32 786445, metadata !128, metadata !150, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !172} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!172 = metadata !{i32 786454, metadata !128, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!173 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!175 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!176 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!177 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!178 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!179 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !176} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!180 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !176} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!181 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !169} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!182 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !183} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!184 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !176} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!185 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !176} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!186 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !176} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!187 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !176} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!188 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !176} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!189 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !169} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!190 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !183} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!191 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!192 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!193 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!194 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!195 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!196 = metadata !{i32 786445, metadata !128, metadata !173, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!197 = metadata !{i32 786445, metadata !128, metadata !150, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !198} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{metadata !14, metadata !201, metadata !224}
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!202 = metadata !{i32 786454, metadata !128, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!203 = metadata !{i32 786451, metadata !128, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !217}
!205 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!206 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!207 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!208 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!209 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!210 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !176} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!211 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!212 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!213 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !214} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{null, metadata !14, metadata !14, metadata !183, metadata !183}
!217 = metadata !{i32 786445, metadata !128, metadata !203, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !218} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!218 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!219 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{null, metadata !221, metadata !222}
!221 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!222 = metadata !{i32 786454, metadata !128, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!225 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !226} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!227 = metadata !{i32 786454, metadata !128, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!228 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !229, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!229 = metadata !{metadata !230, metadata !241, metadata !246, metadata !250, metadata !254, metadata !258, metadata !259}
!230 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!231 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !232, metadata !238, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!232 = metadata !{i32 786454, metadata !128, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!233 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !234, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!234 = metadata !{metadata !235, metadata !236, metadata !237}
!235 = metadata !{i32 786445, metadata !128, metadata !233, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!236 = metadata !{i32 786445, metadata !128, metadata !233, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !161} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!237 = metadata !{i32 786445, metadata !128, metadata !233, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!238 = metadata !{metadata !239, metadata !240}
!239 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!240 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!241 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !242} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!242 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !232, metadata !243, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!243 = metadata !{metadata !244, metadata !245}
!244 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!245 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!246 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !247} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !232, metadata !248, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!248 = metadata !{metadata !244, metadata !249}
!249 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!250 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !251} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!251 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !232, metadata !252, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!252 = metadata !{metadata !244, metadata !253}
!253 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!254 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !255} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!255 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !232, metadata !256, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!256 = metadata !{metadata !257}
!257 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!258 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !255} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!259 = metadata !{i32 786445, metadata !128, metadata !228, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !260} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!260 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !232, metadata !261, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!261 = metadata !{metadata !239}
!262 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !263} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !264} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!264 = metadata !{i32 786454, metadata !128, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!266 = metadata !{metadata !267, metadata !270, metadata !271, metadata !274, metadata !277, metadata !281, metadata !282, metadata !286, metadata !287, metadata !288}
!267 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !268} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!268 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !232, metadata !269, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!269 = metadata !{metadata !244}
!270 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !255} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!271 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !272} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!272 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !232, metadata !273, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!273 = metadata !{metadata !239, metadata !257}
!274 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !275} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!275 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !232, metadata !276, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!276 = metadata !{metadata !249, metadata !257}
!277 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !278} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!278 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !232, metadata !279, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!279 = metadata !{metadata !249, metadata !280}
!280 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!281 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !278} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!282 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !283} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!283 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !232, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!284 = metadata !{metadata !249, metadata !285}
!285 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!286 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !283} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!287 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !278} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!288 = metadata !{i32 786445, metadata !128, metadata !265, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !278} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!289 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !290} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!290 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!291 = metadata !{i32 786454, metadata !128, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!292 = metadata !{i32 786451, metadata !128, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !293, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!293 = metadata !{metadata !294, metadata !295, metadata !296}
!294 = metadata !{i32 786445, metadata !128, metadata !292, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!295 = metadata !{i32 786445, metadata !128, metadata !292, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!296 = metadata !{i32 786445, metadata !128, metadata !292, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !297} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!298 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!299 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !183} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!300 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !183} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!301 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !183} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!302 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!303 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!304 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !183} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!305 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !183} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!306 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !307} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !14}
!310 = metadata !{i32 786454, metadata !128, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!311 = metadata !{i32 786445, metadata !128, metadata !139, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !312} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!312 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!313 = metadata !{metadata !239, metadata !244}
!314 = metadata !{metadata !315}
!315 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!316 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!317 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !318} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!318 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!319 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !318} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!320 = metadata !{i32 786445, metadata !128, metadata !131, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !318} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!321 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !127, i32 559, metadata !129, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!322 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !127, i32 560, metadata !129, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!323 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !127, i32 561, metadata !129, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!324 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !127, i32 562, metadata !129, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!325 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !127, i32 565, metadata !326, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!326 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!328 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !127, i32 566, metadata !329, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !326} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!330 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !127, i32 567, metadata !331, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!332 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !127, i32 569, metadata !176, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !127, i32 570, metadata !176, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!334 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !127, i32 572, metadata !14, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!335 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !127, i32 572, metadata !14, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!336 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !127, i32 573, metadata !337, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!337 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!338 = metadata !{i32 786454, metadata !128, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !339} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!339 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !340, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!340 = metadata !{metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !351, metadata !352, metadata !353, metadata !354, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374}
!341 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!342 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!343 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!344 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !310} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!345 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !310} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!346 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !310} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!347 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !348} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!348 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !349, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!349 = metadata !{metadata !350}
!350 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!351 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !310} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!352 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !176} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!353 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !176} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!354 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !355} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!355 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !176, metadata !349, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!356 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !355} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!357 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !355} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!358 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !310} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!359 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !176} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!360 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !176} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!361 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !169} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!362 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!363 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!364 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !310} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!365 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !176} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!366 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!367 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!368 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!369 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !14} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!370 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!371 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !310} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!372 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !310} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!373 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !310} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!374 = metadata !{i32 786445, metadata !4, metadata !339, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !310} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!375 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !127, i32 574, metadata !376, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!376 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !377} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!377 = metadata !{i32 786454, metadata !128, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !378} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!378 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !379, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!379 = metadata !{metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417}
!380 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!382 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!383 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !310} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!384 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !310} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!385 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !310} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!386 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !176} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!387 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !176} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!388 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !176} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!389 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !310} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !348} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!391 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !176} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!392 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !176} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!393 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !176} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!394 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !176} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!395 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !176} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!396 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !310} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!397 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!398 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!399 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !176} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!400 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !401} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!401 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !402, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!402 = metadata !{metadata !403}
!403 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!404 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !176} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!405 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !310} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!406 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !176} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!407 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !176} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!408 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !310} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!409 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !310} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!410 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !310} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!411 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !310} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!412 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !176} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!413 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !176} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!414 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !176} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!415 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !176} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!416 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !310} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!417 = metadata !{i32 786445, metadata !4, metadata !378, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !418} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!418 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !419} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!419 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !420, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!420 = metadata !{metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469}
!421 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!422 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!424 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !176} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!425 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !310} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !310} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!427 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !310} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!428 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !176} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!429 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !310} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!430 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !310} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!431 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !176} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!432 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !176} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !176} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!434 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !310} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!435 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !176} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!436 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !176} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!437 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !310} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!438 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !176} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!439 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !176} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!440 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !310} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!441 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !310} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!442 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !443} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!443 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !444} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!444 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !445, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!445 = metadata !{metadata !446, metadata !447, metadata !448, metadata !449, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458}
!446 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!447 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!448 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!449 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !450} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!450 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !176, metadata !451, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!451 = metadata !{metadata !452}
!452 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!453 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !450} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!454 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !450} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!455 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !176} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!456 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !176} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!457 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !176} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!458 = metadata !{i32 786445, metadata !4, metadata !444, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !176} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!459 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !310} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!460 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !443} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!461 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !310} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!462 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !310} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!463 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !310} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !176} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!465 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !176} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!466 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !176} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !176} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!468 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !176} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!469 = metadata !{i32 786445, metadata !4, metadata !419, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !176} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!470 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !127, i32 578, metadata !14, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !127, i32 579, metadata !14, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !127, i32 583, metadata !473, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!473 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!474 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !127, i32 584, metadata !473, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!475 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !127, i32 585, metadata !476, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !473} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!477 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !127, i32 586, metadata !14, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!478 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !127, i32 587, metadata !14, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !127, i32 588, metadata !14, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !127, i32 589, metadata !14, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !127, i32 592, metadata !326, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !127, i32 593, metadata !326, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !127, i32 595, metadata !329, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !127, i32 596, metadata !329, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !127, i32 598, metadata !326, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!486 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !127, i32 599, metadata !329, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!487 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !127, i32 601, metadata !326, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!488 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !127, i32 602, metadata !329, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!489 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !127, i32 604, metadata !490, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!490 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !493} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!493 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!494 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !127, i32 605, metadata !491, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!495 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !127, i32 608, metadata !496, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!496 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!497 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !127, i32 609, metadata !496, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !127, i32 610, metadata !14, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !127, i32 612, metadata !14, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !127, i32 612, metadata !14, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !127, i32 612, metadata !14, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !127, i32 613, metadata !14, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!503 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !127, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!504 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !127, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!505 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !127, i32 614, metadata !14, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!506 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !127, i32 617, metadata !507, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!507 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !29, metadata !508, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!508 = metadata !{metadata !509}
!509 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!510 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !127, i32 620, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!511 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !512, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!512 = metadata !{metadata !513, metadata !513}
!513 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!514 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !127, i32 620, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !127, i32 620, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !127, i32 621, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !127, i32 621, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!518 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !127, i32 621, metadata !511, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!519 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !127, i32 622, metadata !520, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !14, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!521 = metadata !{metadata !239, metadata !513, metadata !513}
!522 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !127, i32 623, metadata !523, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!523 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !14, metadata !524, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!524 = metadata !{metadata !244, metadata !257, metadata !257}
!525 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !127, i32 623, metadata !523, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !127, i32 624, metadata !523, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !127, i32 624, metadata !523, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!528 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !127, i32 625, metadata !529, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!529 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !530, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!530 = metadata !{metadata !257, metadata !257}
!531 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !127, i32 625, metadata !532, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!532 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !533, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!533 = metadata !{metadata !513}
!534 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !127, i32 1201, metadata !535, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!535 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!536 = metadata !{i32 786454, metadata !128, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !537} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!537 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !538, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!538 = metadata !{metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544}
!539 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!540 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!541 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!542 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!543 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!544 = metadata !{i32 786445, metadata !128, metadata !537, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!545 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !127, i32 1202, metadata !546, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!546 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !547} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!547 = metadata !{i32 786454, metadata !128, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !548} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!548 = metadata !{i32 786451, metadata !128, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !549, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!549 = metadata !{metadata !550, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !568, metadata !569, metadata !573, metadata !574, metadata !575, metadata !576, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584}
!550 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !551} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!551 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!552 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !511} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!553 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !511} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!554 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !511} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!555 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !476} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!556 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !473} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!557 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!558 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!559 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !560} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!560 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !256, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!561 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !560} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!562 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !331} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!563 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !532} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!564 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!565 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !566} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!566 = metadata !{i32 786454, metadata !128, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !567} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!567 = metadata !{i32 786454, metadata !128, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!568 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!569 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !570} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !571} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!571 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !572} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!572 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !490} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!573 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !570} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!574 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !570} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!575 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !570} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!576 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !577} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!577 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !493, metadata !524, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!578 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !14} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!579 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!580 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!581 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!582 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!583 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!584 = metadata !{i32 786445, metadata !128, metadata !548, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!585 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !127, i32 1203, metadata !547, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !127, i32 1203, metadata !547, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!587 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !127, i32 1204, metadata !547, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!588 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !127, i32 1204, metadata !547, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!589 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !127, i32 1230, metadata !21, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!590 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !127, i32 1231, metadata !21, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!591 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !127, i32 1232, metadata !21, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!592 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !127, i32 1233, metadata !14, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!593 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !127, i32 1234, metadata !14, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!594 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !127, i32 1237, metadata !595, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!595 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !14, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!596 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !127, i32 1238, metadata !595, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !127, i32 1239, metadata !595, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !127, i32 1240, metadata !595, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !127, i32 1241, metadata !595, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !127, i32 1242, metadata !595, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!601 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !127, i32 1456, metadata !14, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !127, i32 1465, metadata !14, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !127, i32 1466, metadata !14, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!604 = metadata !{i32 786484, i32 0, null, metadata !"Bit_Buffer", metadata !"Bit_Buffer", metadata !"", metadata !11, i32 21, metadata !605, i32 0, i32 1, [10000 x i64]* @Bit_Buffer, null} ; [ DW_TAG_variable ] [Bit_Buffer] [line 21] [def]
!605 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640000, i64 64, i32 0, i32 0, metadata !53, metadata !606, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640000, align 64, offset 0] [from long int]
!606 = metadata !{metadata !607}
!607 = metadata !{i32 786465, i64 0, i64 10000}   ; [ DW_TAG_subrange_type ] [0, 9999]
!608 = metadata !{i32 47, i32 0, metadata !10, null}
!609 = metadata !{i32 50, i32 0, metadata !10, null}
!610 = metadata !{i32 52, i32 0, metadata !10, null}
!611 = metadata !{metadata !"any pointer", metadata !612}
!612 = metadata !{metadata !"omnipotent char", metadata !613}
!613 = metadata !{metadata !"Simple C/C++ TBAA"}
!614 = metadata !{i32 58, i32 0, metadata !615, null} ; [ DW_TAG_imported_module ]
!615 = metadata !{i32 786443, metadata !1, metadata !10, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!616 = metadata !{i32 54, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !10, i32 53, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!618 = metadata !{i32 55, i32 0, metadata !617, null}
!619 = metadata !{i32 60, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !615, i32 59, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!621 = metadata !{i32 62, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !620, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!623 = metadata !{i32 63, i32 0, metadata !622, null}
!624 = metadata !{i32 64, i32 0, metadata !622, null}
!625 = metadata !{i32 66, i32 0, metadata !620, null}
!626 = metadata !{metadata !"long", metadata !612}
!627 = metadata !{i32 68, i32 0, metadata !10, null}
!628 = metadata !{i32 69, i32 0, metadata !10, null}
!629 = metadata !{i32 90, i32 0, metadata !79, null}
!630 = metadata !{i32 92, i32 0, metadata !79, null}
!631 = metadata !{i32 93, i32 0, metadata !79, null}
!632 = metadata !{i32 94, i32 0, metadata !79, null}
!633 = metadata !{i32 95, i32 0, metadata !79, null}
!634 = metadata !{i32 96, i32 0, metadata !79, null}
!635 = metadata !{i32 124, i32 0, metadata !85, null}
!636 = metadata !{i32 129, i32 0, metadata !85, null}
!637 = metadata !{i32 131, i32 0, metadata !638, null}
!638 = metadata !{i32 786443, metadata !1, metadata !85, i32 130, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!639 = metadata !{i32 132, i32 0, metadata !638, null}
!640 = metadata !{i32 133, i32 0, metadata !638, null}
!641 = metadata !{i32 135, i32 0, metadata !85, null}
!642 = metadata !{i32 136, i32 0, metadata !85, null}
!643 = metadata !{i64 0}
!644 = metadata !{i32 137, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !85, i32 137, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!646 = metadata !{i32 142, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !645, i32 138, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!648 = metadata !{i32 143, i32 0, metadata !647, null}
!649 = metadata !{i32 144, i32 0, metadata !647, null}
!650 = metadata !{i32 145, i32 0, metadata !647, null}
!651 = metadata !{i32 147, i32 0, metadata !85, null}
!652 = metadata !{i32 148, i32 0, metadata !85, null}
!653 = metadata !{i32 168, i32 0, metadata !95, null}
!654 = metadata !{i32 172, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !95, i32 172, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!656 = metadata !{i32 174, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !658, i32 174, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!658 = metadata !{i32 786443, metadata !1, metadata !655, i32 173, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!659 = metadata !{i32 176, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !657, i32 175, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!661 = metadata !{i32 177, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !660, i32 176, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!663 = metadata !{i32 178, i32 0, metadata !662, null}
!664 = metadata !{i32 179, i32 0, metadata !662, null}
!665 = metadata !{i32 180, i32 0, metadata !662, null}
!666 = metadata !{i32 183, i32 0, metadata !95, null}
!667 = metadata !{i32 204, i32 0, metadata !104, null}
!668 = metadata !{i32 208, i32 0, metadata !104, null}
!669 = metadata !{i32 209, i32 0, metadata !104, null}
!670 = metadata !{metadata !"int", metadata !612}
!671 = metadata !{i32 210, i32 0, metadata !104, null}
!672 = metadata !{i64* undef}
!673 = metadata !{i32 211, i32 0, metadata !104, null}
!674 = metadata !{i32 214, i32 0, metadata !104, null}
!675 = metadata !{i32 215, i32 0, metadata !104, null}
!676 = metadata !{i32 216, i32 0, metadata !104, null}
!677 = metadata !{i32 217, i32 0, metadata !104, null}
!678 = metadata !{i32 218, i32 0, metadata !104, null}
!679 = metadata !{i32 219, i32 0, metadata !104, null}
!680 = metadata !{i32 220, i32 0, metadata !104, null}
!681 = metadata !{i32 221, i32 0, metadata !104, null}
!682 = metadata !{i32 222, i32 0, metadata !104, null}
!683 = metadata !{i32 225, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !104, i32 225, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!685 = metadata !{i32 227, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !684, i32 226, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!687 = metadata !{i32 229, i32 0, metadata !104, null}
!688 = metadata !{i32 231, i32 0, metadata !104, null}
!689 = metadata !{i32 233, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !691, i32 233, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!691 = metadata !{i32 786443, metadata !1, metadata !104, i32 232, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!692 = metadata !{i32 241, i32 0, metadata !104, null}
!693 = metadata !{i32 243, i32 0, metadata !104, null}
!694 = metadata !{i32 244, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !104, i32 244, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!696 = metadata !{i32 236, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !690, i32 234, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!698 = metadata !{i32 238, i32 0, metadata !697, null}
!699 = metadata !{i32 235, i32 0, metadata !697, null}
!700 = metadata !{metadata !"float", metadata !612}
!701 = metadata !{i32 246, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !695, i32 245, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!703 = metadata !{i32 252, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !702, i32 252, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!705 = metadata !{i32 268, i32 0, metadata !702, null}
!706 = metadata !{i32 248, i32 0, metadata !702, null}
!707 = metadata !{i32 250, i32 0, metadata !702, null}
!708 = metadata !{i32 254, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !704, i32 253, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!710 = metadata !{i32 255, i32 0, metadata !709, null}
!711 = metadata !{i32 257, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !709, i32 256, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!713 = metadata !{i32 258, i32 0, metadata !712, null}
!714 = metadata !{i32 261, i32 0, metadata !709, null}
!715 = metadata !{i32 262, i32 0, metadata !709, null}
!716 = metadata !{i32 265, i32 0, metadata !702, null}
!717 = metadata !{i32 270, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !702, i32 270, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!719 = metadata !{i32 272, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !718, i32 271, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c]
!721 = metadata !{i32 273, i32 0, metadata !720, null}
!722 = metadata !{i32 277, i32 0, metadata !720, null}
!723 = metadata !{i32 278, i32 0, metadata !720, null}
!724 = metadata !{i32 281, i32 0, metadata !702, null}
!725 = metadata !{i32 282, i32 0, metadata !702, null}
!726 = metadata !{i32 285, i32 0, metadata !104, null}
!727 = metadata !{i32 288, i32 0, metadata !104, null}
!728 = metadata !{i32 289, i32 0, metadata !104, null}
!729 = metadata !{i32 290, i32 0, metadata !104, null}
!730 = metadata !{i32 291, i32 0, metadata !104, null}
