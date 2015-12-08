; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@ONE_FOURTH_TAP = constant [3 x [2 x i32]] [[2 x i32] [i32 20, i32 20], [2 x i32] [i32 -5, i32 -4], [2 x i32] [i32 1, i32 0]], align 16
@enc_picture = common global %struct.storable_picture* null, align 8
@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@input = external global %struct.InputParameters*
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@stats = external global %struct.StatParameters*
@decs = external global %struct.Decoders*
@encode_one_frame.prev_frame_no = internal unnamed_addr global i32 0, align 4
@encode_one_frame.consecutive_non_reference_pictures = internal unnamed_addr global i32 0, align 4
@me_time = external global i32
@enc_frame_picture = common global %struct.storable_picture* null, align 8
@enc_frame_picture2 = common global %struct.storable_picture* null, align 8
@enc_frame_picture3 = common global %struct.storable_picture* null, align 8
@Bframe_ctr = external global i32
@Iframe_ctr = external global i32
@Pframe_ctr = external global i32
@top_pic = external global %struct.Picture*
@bottom_pic = external global %struct.Picture*
@mb_adaptive = external global i32
@QP = external global i32
@PicParSet = external global [256 x %struct.pic_parameter_set_rbsp_t]
@frame_pic = external global %struct.Picture*
@frame_pic3 = external global %struct.Picture*
@frame_pic2 = external global %struct.Picture*
@enc_bottom_picture = common global %struct.storable_picture* null, align 8
@total_frame_buffer = external global i64
@Bit_Buffer = external global [10000 x i64]
@frame_no = external global i32
@.str = private unnamed_addr constant [137 x i8] c"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\0A\00", align 1
@Pprev_bits = external global i32
@snr = external global %struct.SNRParameters*
@enc_top_picture = common global %struct.storable_picture* null, align 8
@nextP_tr_fld = external global i32
@.str1 = private unnamed_addr constant [35 x i8] c"alloc_storable_picture: s->imgY_11\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"alloc_storable_picture: s->imgY_11_w\00", align 1
@img4Y_tmp = external global i32**
@rdopt = external global %struct.RD_DATA*
@.str3 = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str4 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@last_P_no = common global i32* null, align 8
@last_P_no_frm = common global i32* null, align 8
@last_P_no_fld = common global i32* null, align 8
@intras = external global i32
@imgY_org_bot = external global i16**
@imgY_org = external global i16**
@imgUV_org_bot = external global i16***
@imgUV_org = external global i16***
@imgY_org_top = external global i16**
@imgUV_org_top = external global i16***
@imgY_org_frm = external global i16**
@imgUV_org_frm = external global i16***
@.str5 = private unnamed_addr constant [18 x i8] c"ReadOneFrame: buf\00", align 1
@p_in = external global i32
@.str6 = private unnamed_addr constant [52 x i8] c"ReadOneFrame: cannot fseek to (Header size) in p_in\00", align 1
@errortext = external global [300 x i8]
@.str7 = private unnamed_addr constant [67 x i8] c"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\0A\00", align 1
@.str8 = private unnamed_addr constant [77 x i8] c"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting\00", align 1
@.str9 = private unnamed_addr constant [75 x i8] c"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@start_tr_in_this_IGOP = external global i32
@gop_structure = external global %struct.GOP_DATA*
@.str10 = private unnamed_addr constant [65 x i8] c"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"FRM\00", align 1
@.str13 = private unnamed_addr constant [69 x i8] c"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str14 = private unnamed_addr constant [69 x i8] c"%04d(RB) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str15 = private unnamed_addr constant [65 x i8] c"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str16 = private unnamed_addr constant [65 x i8] c"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str17 = private unnamed_addr constant [65 x i8] c"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@Iprev_bits = external global i32
@.str18 = private unnamed_addr constant [15 x i8] c"%04d(NVB)%8d \0A\00", align 1
@imgY_com = external global i16**
@imgUV_com = external global i16***
@nextP_tr_frm = external global i32
@WriteNALU = external global i32 (%struct.NALU_t*)*

; Function Attrs: nounwind optsize uwtable
define void @MbAffPostProc() #0 {
entry:
  %temp = alloca [16 x [32 x i16]], align 16
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %0 = bitcast [16 x [32 x i16]]* %temp to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25
  %2 = load i16*** %imgY1, align 8, !tbaa !0
  %imgUV2 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 30
  %3 = load i16**** %imgUV2, align 8, !tbaa !0
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 159
  %5 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp = icmp eq i32 %5, 0
  %PicSizeInMbs141292 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 110
  %6 = load i32* %PicSizeInMbs141292, align 4, !tbaa !3
  %cmp142293 = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.cond140.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp142293, label %for.body, label %if.end211

for.cond140.preheader:                            ; preds = %entry
  br i1 %cmp142293, label %for.body143, label %if.end211

for.body:                                         ; preds = %for.cond.preheader, %for.inc137.for.body_crit_edge
  %7 = phi %struct.storable_picture* [ %.pre384, %for.inc137.for.body_crit_edge ], [ %1, %for.cond.preheader ]
  %8 = phi %struct.ImageParameters* [ %54, %for.inc137.for.body_crit_edge ], [ %4, %for.cond.preheader ]
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc137.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %mb_field = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 31
  %9 = load i8** %mb_field, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %9, i64 %indvars.iv381
  %10 = load i8* %arrayidx, align 1, !tbaa !1
  %tobool = icmp eq i8 %10, 0
  br i1 %tobool, label %for.inc137, label %if.then4

if.then4:                                         ; preds = %for.body
  %11 = trunc i64 %indvars.iv381 to i32
  call void @get_mb_pos(i32 %11, i32* %x0, i32* %y0) #7
  %12 = load i32* %x0, align 4, !tbaa !3
  %13 = load i32* %y0, align 4, !tbaa !3
  %14 = sext i32 %12 to i64
  %15 = sext i32 %13 to i64
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc20, %if.then4
  %indvars.iv345 = phi i64 [ 0, %if.then4 ], [ %indvars.iv.next346, %for.inc20 ]
  %16 = add nsw i64 %15, %indvars.iv345
  %arrayidx14 = getelementptr inbounds i16** %2, i64 %16
  %17 = load i16** %arrayidx14, align 8, !tbaa !0
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv340 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next341, %for.body10 ]
  %18 = add nsw i64 %14, %indvars.iv340
  %arrayidx15 = getelementptr inbounds i16* %17, i64 %18
  %19 = load i16* %arrayidx15, align 2, !tbaa !4
  %arrayidx19 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv340, i64 %indvars.iv345
  store i16 %19, i16* %arrayidx19, align 2, !tbaa !4
  %indvars.iv.next341 = add i64 %indvars.iv340, 1
  %lftr.wideiv343 = trunc i64 %indvars.iv.next341 to i32
  %exitcond344 = icmp eq i32 %lftr.wideiv343, 16
  br i1 %exitcond344, label %for.inc20, label %for.body10

for.inc20:                                        ; preds = %for.body10
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %lftr.wideiv348 = trunc i64 %indvars.iv.next346 to i32
  %exitcond349 = icmp eq i32 %lftr.wideiv348, 32
  br i1 %exitcond349, label %for.cond26.preheader, label %for.cond8.preheader

for.cond26.preheader:                             ; preds = %for.inc20, %for.inc55
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %for.inc55 ], [ 0, %for.inc20 ]
  %20 = shl nsw i64 %indvars.iv356, 1
  %21 = add nsw i64 %15, %20
  %arrayidx37 = getelementptr inbounds i16** %2, i64 %21
  %22 = load i16** %arrayidx37, align 8, !tbaa !0
  %23 = add nsw i64 %indvars.iv356, 16
  %24 = or i64 %20, 1
  %25 = add nsw i64 %15, %24
  %arrayidx50 = getelementptr inbounds i16** %2, i64 %25
  %26 = load i16** %arrayidx50, align 8, !tbaa !0
  br label %for.body28

for.body28:                                       ; preds = %for.body28, %for.cond26.preheader
  %indvars.iv350 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next351, %for.body28 ]
  %arrayidx32 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv350, i64 %indvars.iv356
  %27 = load i16* %arrayidx32, align 2, !tbaa !4
  %28 = add nsw i64 %14, %indvars.iv350
  %arrayidx38 = getelementptr inbounds i16* %22, i64 %28
  store i16 %27, i16* %arrayidx38, align 2, !tbaa !4
  %arrayidx43 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv350, i64 %23
  %29 = load i16* %arrayidx43, align 2, !tbaa !4
  %arrayidx51 = getelementptr inbounds i16* %26, i64 %28
  store i16 %29, i16* %arrayidx51, align 2, !tbaa !4
  %indvars.iv.next351 = add i64 %indvars.iv350, 1
  %lftr.wideiv354 = trunc i64 %indvars.iv.next351 to i32
  %exitcond355 = icmp eq i32 %lftr.wideiv354, 16
  br i1 %exitcond355, label %for.inc55, label %for.body28

for.inc55:                                        ; preds = %for.body28
  %indvars.iv.next357 = add i64 %indvars.iv356, 1
  %lftr.wideiv363 = trunc i64 %indvars.iv.next357 to i32
  %exitcond364 = icmp eq i32 %lftr.wideiv363, 16
  br i1 %exitcond364, label %for.end57, label %for.cond26.preheader

for.end57:                                        ; preds = %for.inc55
  %30 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 161
  %31 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %div = sdiv i32 16, %31
  %div58 = sdiv i32 %12, %div
  store i32 %div58, i32* %x0, align 4, !tbaa !3
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 162
  %32 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %div59 = sdiv i32 16, %32
  %div60 = sdiv i32 %13, %div59
  store i32 %div60, i32* %y0, align 4, !tbaa !3
  %33 = load i32* %mb_cr_size_y, align 4, !tbaa !3
  %cmp67304 = icmp sgt i32 %33, 0
  %34 = sext i32 %div58 to i64
  %35 = sext i32 %div60 to i64
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.inc134, %for.end57
  %indvars.iv377 = phi i64 [ 0, %for.end57 ], [ %indvars.iv.next378, %for.inc134 ]
  br i1 %cmp67304, label %for.cond69.preheader.lr.ph, label %for.inc134

for.cond69.preheader.lr.ph:                       ; preds = %for.cond64.preheader
  %36 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %cmp71300 = icmp sgt i32 %36, 0
  %mul66 = shl nsw i32 %33, 1
  %arrayidx78 = getelementptr inbounds i16*** %3, i64 %indvars.iv377
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.lr.ph, %for.inc88
  %indvars.iv368 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next369, %for.inc88 ]
  br i1 %cmp71300, label %for.body72.lr.ph, label %for.inc88

for.body72.lr.ph:                                 ; preds = %for.cond69.preheader
  %37 = add nsw i64 %35, %indvars.iv368
  %38 = load i16*** %arrayidx78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16** %38, i64 %37
  %39 = load i16** %arrayidx79, align 8, !tbaa !0
  br label %for.body72

for.body72:                                       ; preds = %for.body72.lr.ph, %for.body72
  %indvars.iv365 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next366, %for.body72 ]
  %40 = add nsw i64 %34, %indvars.iv365
  %arrayidx80 = getelementptr inbounds i16* %39, i64 %40
  %41 = load i16* %arrayidx80, align 2, !tbaa !4
  %arrayidx84 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv365, i64 %indvars.iv368
  store i16 %41, i16* %arrayidx84, align 2, !tbaa !4
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %42 = trunc i64 %indvars.iv.next366 to i32
  %cmp71 = icmp slt i32 %42, %36
  br i1 %cmp71, label %for.body72, label %for.inc88

for.inc88:                                        ; preds = %for.body72, %for.cond69.preheader
  %indvars.iv.next369 = add i64 %indvars.iv368, 1
  %43 = trunc i64 %indvars.iv.next369 to i32
  %cmp67 = icmp slt i32 %43, %mul66
  br i1 %cmp67, label %for.cond69.preheader, label %for.cond91.loopexit

for.cond91.loopexit:                              ; preds = %for.inc88
  br i1 %cmp67304, label %for.cond95.preheader.lr.ph, label %for.inc134

for.cond95.preheader.lr.ph:                       ; preds = %for.cond91.loopexit
  %44 = load i32* %mb_cr_size_x, align 4, !tbaa !3
  %cmp97307 = icmp sgt i32 %44, 0
  %arrayidx109 = getelementptr inbounds i16*** %3, i64 %indvars.iv377
  br label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.cond95.preheader.lr.ph, %for.inc131
  %indvars.iv375 = phi i64 [ 0, %for.cond95.preheader.lr.ph ], [ %indvars.iv.next376, %for.inc131 ]
  br i1 %cmp97307, label %for.body98.lr.ph, label %for.inc131

for.body98.lr.ph:                                 ; preds = %for.cond95.preheader
  %45 = trunc i64 %indvars.iv375 to i32
  %mul105 = shl nsw i32 %45, 1
  %add106 = add nsw i32 %div60, %mul105
  %idxprom107 = sext i32 %add106 to i64
  %46 = load i16*** %arrayidx109, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds i16** %46, i64 %idxprom107
  %47 = load i16** %arrayidx110, align 8, !tbaa !0
  %add113 = add nsw i32 %33, %45
  %idxprom114 = sext i32 %add113 to i64
  %add121286 = or i32 %mul105, 1
  %add122 = add nsw i32 %div60, %add121286
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx126 = getelementptr inbounds i16** %46, i64 %idxprom123
  %48 = load i16** %arrayidx126, align 8, !tbaa !0
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %for.body98
  %indvars.iv371 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next372, %for.body98 ]
  %arrayidx102 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv371, i64 %indvars.iv375
  %49 = load i16* %arrayidx102, align 2, !tbaa !4
  %50 = add nsw i64 %34, %indvars.iv371
  %arrayidx111 = getelementptr inbounds i16* %47, i64 %50
  store i16 %49, i16* %arrayidx111, align 2, !tbaa !4
  %arrayidx117 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv371, i64 %idxprom114
  %51 = load i16* %arrayidx117, align 2, !tbaa !4
  %arrayidx127 = getelementptr inbounds i16* %48, i64 %50
  store i16 %51, i16* %arrayidx127, align 2, !tbaa !4
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %52 = trunc i64 %indvars.iv.next372 to i32
  %cmp97 = icmp slt i32 %52, %44
  br i1 %cmp97, label %for.body98, label %for.inc131

for.inc131:                                       ; preds = %for.body98, %for.cond95.preheader
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %53 = trunc i64 %indvars.iv.next376 to i32
  %cmp93 = icmp slt i32 %53, %33
  br i1 %cmp93, label %for.cond95.preheader, label %for.inc134

for.inc134:                                       ; preds = %for.cond64.preheader, %for.inc131, %for.cond91.loopexit
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32
  %exitcond380 = icmp eq i32 %lftr.wideiv379, 2
  br i1 %exitcond380, label %for.inc137, label %for.cond64.preheader

for.inc137:                                       ; preds = %for.inc134, %for.body
  %54 = phi %struct.ImageParameters* [ %8, %for.body ], [ %30, %for.inc134 ]
  %indvars.iv.next382 = add i64 %indvars.iv381, 2
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 110
  %55 = load i32* %PicSizeInMbs, align 4, !tbaa !3
  %56 = trunc i64 %indvars.iv.next382 to i32
  %cmp3 = icmp slt i32 %56, %55
  br i1 %cmp3, label %for.inc137.for.body_crit_edge, label %if.end211

for.inc137.for.body_crit_edge:                    ; preds = %for.inc137
  %.pre384 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.body

for.body143:                                      ; preds = %for.cond140.preheader, %for.inc208.for.body143_crit_edge
  %57 = phi %struct.storable_picture* [ %.pre383, %for.inc208.for.body143_crit_edge ], [ %1, %for.cond140.preheader ]
  %58 = phi %struct.ImageParameters* [ %80, %for.inc208.for.body143_crit_edge ], [ %4, %for.cond140.preheader ]
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.inc208.for.body143_crit_edge ], [ 0, %for.cond140.preheader ]
  %mb_field145 = getelementptr inbounds %struct.storable_picture* %57, i64 0, i32 31
  %59 = load i8** %mb_field145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i8* %59, i64 %indvars.iv338
  %60 = load i8* %arrayidx146, align 1, !tbaa !1
  %tobool147 = icmp eq i8 %60, 0
  br i1 %tobool147, label %for.inc208, label %if.then148

if.then148:                                       ; preds = %for.body143
  %61 = trunc i64 %indvars.iv338 to i32
  call void @get_mb_pos(i32 %61, i32* %x0, i32* %y0) #7
  %62 = load i32* %x0, align 4, !tbaa !3
  %63 = load i32* %y0, align 4, !tbaa !3
  %64 = sext i32 %62 to i64
  %65 = sext i32 %63 to i64
  br label %for.cond152.preheader

for.cond152.preheader:                            ; preds = %for.inc168, %if.then148
  %indvars.iv318 = phi i64 [ 0, %if.then148 ], [ %indvars.iv.next319, %for.inc168 ]
  %66 = add nsw i64 %65, %indvars.iv318
  %arrayidx159 = getelementptr inbounds i16** %2, i64 %66
  %67 = load i16** %arrayidx159, align 8, !tbaa !0
  br label %for.body154

for.body154:                                      ; preds = %for.body154, %for.cond152.preheader
  %indvars.iv = phi i64 [ 0, %for.cond152.preheader ], [ %indvars.iv.next, %for.body154 ]
  %68 = add nsw i64 %64, %indvars.iv
  %arrayidx160 = getelementptr inbounds i16* %67, i64 %68
  %69 = load i16* %arrayidx160, align 2, !tbaa !4
  %arrayidx164 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv, i64 %indvars.iv318
  store i16 %69, i16* %arrayidx164, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc168, label %for.body154

for.inc168:                                       ; preds = %for.body154
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %lftr.wideiv321 = trunc i64 %indvars.iv.next319 to i32
  %exitcond322 = icmp eq i32 %lftr.wideiv321, 32
  br i1 %exitcond322, label %for.cond174.preheader, label %for.cond152.preheader

for.cond174.preheader:                            ; preds = %for.inc168, %for.inc204
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %for.inc204 ], [ 0, %for.inc168 ]
  %70 = shl nsw i64 %indvars.iv329, 1
  %71 = add nsw i64 %65, %70
  %arrayidx186 = getelementptr inbounds i16** %2, i64 %71
  %72 = load i16** %arrayidx186, align 8, !tbaa !0
  %73 = add nsw i64 %indvars.iv329, 16
  %74 = or i64 %70, 1
  %75 = add nsw i64 %65, %74
  %arrayidx199 = getelementptr inbounds i16** %2, i64 %75
  %76 = load i16** %arrayidx199, align 8, !tbaa !0
  br label %for.body176

for.body176:                                      ; preds = %for.body176, %for.cond174.preheader
  %indvars.iv323 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next324, %for.body176 ]
  %arrayidx180 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv323, i64 %indvars.iv329
  %77 = load i16* %arrayidx180, align 2, !tbaa !4
  %78 = add nsw i64 %64, %indvars.iv323
  %arrayidx187 = getelementptr inbounds i16* %72, i64 %78
  store i16 %77, i16* %arrayidx187, align 2, !tbaa !4
  %arrayidx192 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv323, i64 %73
  %79 = load i16* %arrayidx192, align 2, !tbaa !4
  %arrayidx200 = getelementptr inbounds i16* %76, i64 %78
  store i16 %79, i16* %arrayidx200, align 2, !tbaa !4
  %indvars.iv.next324 = add i64 %indvars.iv323, 1
  %lftr.wideiv327 = trunc i64 %indvars.iv.next324 to i32
  %exitcond328 = icmp eq i32 %lftr.wideiv327, 16
  br i1 %exitcond328, label %for.inc204, label %for.body176

for.inc204:                                       ; preds = %for.body176
  %indvars.iv.next330 = add i64 %indvars.iv329, 1
  %lftr.wideiv336 = trunc i64 %indvars.iv.next330 to i32
  %exitcond337 = icmp eq i32 %lftr.wideiv336, 16
  br i1 %exitcond337, label %for.inc208.loopexit, label %for.cond174.preheader

for.inc208.loopexit:                              ; preds = %for.inc204
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.inc208

for.inc208:                                       ; preds = %for.inc208.loopexit, %for.body143
  %80 = phi %struct.ImageParameters* [ %.pre, %for.inc208.loopexit ], [ %58, %for.body143 ]
  %indvars.iv.next339 = add i64 %indvars.iv338, 2
  %PicSizeInMbs141 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 110
  %81 = load i32* %PicSizeInMbs141, align 4, !tbaa !3
  %82 = trunc i64 %indvars.iv.next339 to i32
  %cmp142 = icmp slt i32 %82, %81
  br i1 %cmp142, label %for.inc208.for.body143_crit_edge, label %if.end211

for.inc208.for.body143_crit_edge:                 ; preds = %for.inc208
  %.pre383 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.body143

if.end211:                                        ; preds = %for.cond.preheader, %for.inc137, %for.cond140.preheader, %for.inc208
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @get_mb_pos(i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @code_a_picture(%struct.Picture* %pic) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49
  store %struct.Picture* %pic, %struct.Picture** %currentPicture, align 8, !tbaa !0
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0
  %2 = load i32* %number, align 4, !tbaa !3
  %3 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, %3
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7
  %4 = load i32* %structure, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry, %land.lhs.true
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %idr_enable = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 32
  %6 = load i32* %idr_enable, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %6, 0
  br i1 %tobool1, label %lor.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %lor.rhs
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %7 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %7, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %land.lhs.true2
  %structure9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7
  %8 = load i32* %structure9, align 4, !tbaa !3
  %lnot = icmp ne i32 %8, 2
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true2, %lor.rhs, %land.rhs, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %lnot, %land.rhs ], [ false, %land.lhs.true2 ]
  %lor.ext = zext i1 %9 to i32
  %currentPicture11 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 49
  %10 = load %struct.Picture** %currentPicture11, align 8, !tbaa !0
  %idr_flag = getelementptr inbounds %struct.Picture* %10, i64 0, i32 1
  store i32 %lor.ext, i32* %idr_flag, align 4, !tbaa !3
  %no_slices = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 0
  store i32 0, i32* %no_slices, align 4, !tbaa !3
  %distortion_y = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 4
  store float 0.000000e+00, float* %distortion_y, align 4, !tbaa !5
  %distortion_v = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 6
  store float 0.000000e+00, float* %distortion_v, align 4, !tbaa !5
  %distortion_u = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 5
  store float 0.000000e+00, float* %distortion_u, align 4, !tbaa !5
  tail call void (...)* @RandomIntraNewPicture() #7
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 147
  store i32 1, i32* %slice_group_change_cycle, align 4, !tbaa !3
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %13 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %call = tail call i32 @FmoInit(%struct.ImageParameters* %11, %struct.pic_parameter_set_rbsp_t* %12, %struct.seq_parameter_set_rbsp_t* %13) #7
  %call12 = tail call i32 (...)* @FmoStartPicture() #7
  tail call void (...)* @CalculateQuantParam() #7
  tail call void (...)* @CalculateOffsetParam() #7
  %14 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 123
  %15 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool13 = icmp eq i32 %15, 0
  br i1 %tobool13, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %lor.end
  tail call void (...)* @CalculateQuant8Param() #7
  tail call void (...)* @CalculateOffset8Param() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %lor.end
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %total_number_mb50 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 4
  %17 = load i32* %total_number_mb50, align 4, !tbaa !3
  %cmp1451 = icmp sgt i32 %17, 0
  br i1 %cmp1451, label %while.cond15.preheader, label %while.end22

while.cond15.preheader:                           ; preds = %while.cond.preheader, %while.end
  %SliceGroup.053 = phi i32 [ %inc21, %while.end ], [ 0, %while.cond.preheader ]
  %NumberOfCodedMBs.052 = phi i32 [ %NumberOfCodedMBs.1.lcssa, %while.end ], [ 0, %while.cond.preheader ]
  %call1647 = tail call i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroup.053) #7
  %lnot1848 = icmp eq i32 %call1647, 0
  br i1 %lnot1848, label %while.body19, label %while.end

while.body19:                                     ; preds = %while.cond15.preheader, %while.body19
  %NumberOfCodedMBs.149 = phi i32 [ %add, %while.body19 ], [ %NumberOfCodedMBs.052, %while.cond15.preheader ]
  %call20 = tail call i32 @encode_one_slice(i32 %SliceGroup.053, %struct.Picture* %pic) #7
  %add = add nsw i32 %call20, %NumberOfCodedMBs.149
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 3
  %19 = load i32* %current_mb_nr, align 4, !tbaa !3
  tail call void @FmoSetLastMacroblockInSlice(i32 %19) #7
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 5
  %21 = load i32* %current_slice_nr, align 4, !tbaa !3
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %current_slice_nr, align 4, !tbaa !3
  %22 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_slice = getelementptr inbounds %struct.StatParameters* %22, i64 0, i32 6
  store i32 0, i32* %bit_slice, align 4, !tbaa !3
  %call16 = tail call i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroup.053) #7
  %lnot18 = icmp eq i32 %call16, 0
  br i1 %lnot18, label %while.body19, label %while.end

while.end:                                        ; preds = %while.body19, %while.cond15.preheader
  %NumberOfCodedMBs.1.lcssa = phi i32 [ %NumberOfCodedMBs.052, %while.cond15.preheader ], [ %add, %while.body19 ]
  %inc21 = add nsw i32 %SliceGroup.053, 1
  %23 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 4
  %24 = load i32* %total_number_mb, align 4, !tbaa !3
  %cmp14 = icmp slt i32 %NumberOfCodedMBs.1.lcssa, %24
  br i1 %cmp14, label %while.cond15.preheader, label %while.end22

while.end22:                                      ; preds = %while.end, %while.cond.preheader
  %call23 = tail call i32 (...)* @FmoEndPicture() #7
  %25 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 85
  %26 = load i32* %rdopt, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %26, 2
  br i1 %cmp24, label %land.lhs.true25, label %if.end31

land.lhs.true25:                                  ; preds = %while.end22
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type26 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 6
  %28 = load i32* %type26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %28, 1
  br i1 %cmp27, label %if.end31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true25
  %NoOfDecoders44 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 97
  %29 = load i32* %NoOfDecoders44, align 4, !tbaa !3
  %cmp2945 = icmp sgt i32 %29, 0
  br i1 %cmp2945, label %for.body, label %if.end31

for.body:                                         ; preds = %for.cond.preheader, %for.body.for.body_crit_edge
  %30 = phi %struct.ImageParameters* [ %.pre, %for.body.for.body_crit_edge ], [ %27, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %31 = load %struct.Decoders** @decs, align 8, !tbaa !0
  %decY_best = getelementptr inbounds %struct.Decoders* %31, i64 0, i32 3
  %32 = load i16**** %decY_best, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16*** %32, i64 %indvars.iv
  %33 = load i16*** %arrayidx, align 8, !tbaa !0
  tail call void @DeblockFrame(%struct.ImageParameters* %30, i16** %33, i16*** null) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %34 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %34, i64 0, i32 97
  %35 = load i32* %NoOfDecoders, align 4, !tbaa !3
  %36 = trunc i64 %indvars.iv.next to i32
  %cmp29 = icmp slt i32 %36, %35
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %if.end31

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body

if.end31:                                         ; preds = %for.cond.preheader, %for.body, %while.end22, %land.lhs.true25
  %37 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %38 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 25
  %39 = load i16*** %imgY, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 30
  %40 = load i16**** %imgUV, align 8, !tbaa !0
  tail call void @DeblockFrame(%struct.ImageParameters* %37, i16** %39, i16*** %40) #7
  %41 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 90
  %42 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %42, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end31
  tail call void @MbAffPostProc() #8
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then33
  ret void
}

; Function Attrs: optsize
declare void @RandomIntraNewPicture(...) #2

; Function Attrs: optsize
declare i32 @FmoInit(%struct.ImageParameters*, %struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #2

; Function Attrs: optsize
declare i32 @FmoStartPicture(...) #2

; Function Attrs: optsize
declare void @CalculateQuantParam(...) #2

; Function Attrs: optsize
declare void @CalculateOffsetParam(...) #2

; Function Attrs: optsize
declare void @CalculateQuant8Param(...) #2

; Function Attrs: optsize
declare void @CalculateOffset8Param(...) #2

; Function Attrs: optsize
declare i32 @FmoSliceGroupCompletelyCoded(i32) #2

; Function Attrs: optsize
declare i32 @encode_one_slice(i32, %struct.Picture*) #2

; Function Attrs: optsize
declare void @FmoSetLastMacroblockInSlice(i32) #2

; Function Attrs: optsize
declare i32 @FmoEndPicture(...) #2

; Function Attrs: optsize
declare void @DeblockFrame(%struct.ImageParameters*, i16**, i16***) #2

; Function Attrs: nounwind optsize uwtable
define i32 @encode_one_frame() #0 {
entry:
  store i32 0, i32* @me_time, align 4, !tbaa !3
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %rd_pass = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 58
  store i32 0, i32* %rd_pass, align 4, !tbaa !3
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  %write_macroblock = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 140
  store i32 0, i32* %write_macroblock, align 4, !tbaa !3
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ResendPPS = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 14
  %2 = load i32* %ResendPPS, align 4, !tbaa !3
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %3 = load i32* %number, align 4, !tbaa !3
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @write_PPS(i32 0, i32 0) #7
  %4 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 33
  store i32 %call, i32* %bit_ctr_parametersets_n, align 4, !tbaa !3
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 32
  %5 = load i32* %bit_ctr_parametersets, align 4, !tbaa !3
  %add = add nsw i32 %5, %call
  store i32 %add, i32* %bit_ctr_parametersets, align 4, !tbaa !3
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %6 = phi %struct.ImageParameters* [ %.pre, %if.then ], [ %0, %entry ], [ %0, %land.lhs.true ]
  %7 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %7, i16*** @imgY_org, align 8, !tbaa !0
  %8 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %8, i16**** @imgUV_org, align 8, !tbaa !0
  %9 = load i32** @last_P_no_frm, align 8, !tbaa !0
  store i32* %9, i32** @last_P_no, align 8, !tbaa !0
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 3
  store i32 0, i32* %current_mb_nr.i, align 4, !tbaa !3
  %current_slice_nr.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 5
  store i32 0, i32* %current_slice_nr.i, align 4, !tbaa !3
  %10 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_slice.i = getelementptr inbounds %struct.StatParameters* %10, i64 0, i32 6
  store i32 0, i32* %bit_slice.i, align 4, !tbaa !3
  %mb_x.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 29
  %block_c_x.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 24
  store i32 0, i32* %block_c_x.i, align 4, !tbaa !3
  %width247.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 13
  %11 = bitcast i32* %mb_x.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 32, i32 4, i1 false) #1
  %12 = load i32* %width247.i, align 4, !tbaa !3
  %div248.i = sdiv i32 %12, 16
  %height249.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 15
  %13 = load i32* %height249.i, align 4, !tbaa !3
  %div1250.i = sdiv i32 %13, 16
  %mul251.i = mul nsw i32 %div1250.i, %div248.i
  %cmp252.i = icmp sgt i32 %mul251.i, 0
  br i1 %cmp252.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %mb_data.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 51
  %.pre.i = load %struct.macroblock** %mb_data.phi.trans.insert.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv256.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next257.i, %for.body.i ]
  %slice_nr.i = getelementptr inbounds %struct.macroblock* %.pre.i, i64 %indvars.iv256.i, i32 1
  store i32 -1, i32* %slice_nr.i, align 4, !tbaa !3
  %indvars.iv.next257.i = add i64 %indvars.iv256.i, 1
  %14 = load i32* %width247.i, align 4, !tbaa !3
  %div.i = sdiv i32 %14, 16
  %15 = load i32* %height249.i, align 4, !tbaa !3
  %div1.i = sdiv i32 %15, 16
  %mul.i = mul nsw i32 %div1.i, %div.i
  %16 = trunc i64 %indvars.iv.next257.i to i32
  %cmp.i = icmp slt i32 %16, %mul.i
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %if.end
  %b_frame_to_code.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 67
  %17 = load i32* %b_frame_to_code.i, align 4, !tbaa !3
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %if.then.i, label %if.else63.i

if.then.i:                                        ; preds = %for.end.i
  %18 = load i32* @start_tr_in_this_IGOP, align 4, !tbaa !3
  %number.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 0
  %19 = load i32* %number.i, align 4, !tbaa !3
  %20 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub.i310 = sub nsw i32 %19, %20
  %21 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 5
  %22 = load i32* %jumpd.i, align 4, !tbaa !3
  %add.i = add nsw i32 %22, 1
  %mul3.i = mul nsw i32 %add.i, %sub.i310
  %add4.i = add nsw i32 %mul3.i, %18
  %tr.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 55
  store i32 %add4.i, i32* %tr.i, align 4, !tbaa !3
  %imgtr_next_P_frm.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 61
  %23 = load i32* %imgtr_next_P_frm.i, align 4, !tbaa !3
  %imgtr_last_P_frm.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 62
  store i32 %23, i32* %imgtr_last_P_frm.i, align 4, !tbaa !3
  store i32 %add4.i, i32* %imgtr_next_P_frm.i, align 4, !tbaa !3
  %last_frame.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 79
  %24 = load i32* %last_frame.i, align 4, !tbaa !3
  %tobool.i311 = icmp eq i32 %24, 0
  br i1 %tobool.i311, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %add8.i = add nsw i32 %19, 1
  %no_frames.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 2
  %25 = load i32* %no_frames.i, align 4, !tbaa !3
  %cmp9.i = icmp eq i32 %add8.i, %25
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  store i32 %24, i32* %tr.i, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %land.lhs.true.i, %if.then.i
  %26 = phi i32 [ %add4.i, %if.then.i ], [ %24, %if.then10.i ], [ %add4.i, %land.lhs.true.i ]
  %27 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %cmp15.i = icmp eq i32 %19, %27
  br i1 %cmp15.i, label %if.end20.i, label %land.lhs.true16.i

land.lhs.true16.i:                                ; preds = %if.end.i
  %successive_Bframe.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 34
  %28 = load i32* %successive_Bframe.i, align 4, !tbaa !3
  %cmp17.i = icmp eq i32 %28, 0
  br i1 %cmp17.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  store i32 %26, i32* @nextP_tr_frm, align 4, !tbaa !3
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i, %if.end.i
  %RCEnable.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 127
  %29 = load i32* %RCEnable.i, align 4, !tbaa !3
  %tobool21.i = icmp eq i32 %29, 0
  br i1 %tobool21.i, label %if.then22.i, label %if.end52.i

if.then22.i:                                      ; preds = %if.end20.i
  %type.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 6
  %30 = load i32* %type.i, align 4, !tbaa !3
  %cmp23.i = icmp eq i32 %30, 2
  %qp2start.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 82
  %31 = load i32* %qp2start.i, align 4, !tbaa !3
  %cmp25.i = icmp sgt i32 %31, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.else33.i

if.then24.i:                                      ; preds = %if.then22.i
  br i1 %cmp25.i, label %land.lhs.true26.i, label %if.else.i

land.lhs.true26.i:                                ; preds = %if.then24.i
  %32 = load i32* %tr.i, align 4, !tbaa !3
  %cmp29.i = icmp slt i32 %32, %31
  br i1 %cmp29.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true26.i
  %qp02.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 83
  %33 = load i32* %qp02.i, align 4, !tbaa !3
  %qp.i312 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %33, i32* %qp.i312, align 4, !tbaa !3
  br label %if.end52.i

if.else.i:                                        ; preds = %land.lhs.true26.i, %if.then24.i
  %qp0.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 3
  %34 = load i32* %qp0.i, align 4, !tbaa !3
  %qp31.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %34, i32* %qp31.i, align 4, !tbaa !3
  br label %if.end52.i

if.else33.i:                                      ; preds = %if.then22.i
  br i1 %cmp25.i, label %land.lhs.true36.i, label %if.else42.i

land.lhs.true36.i:                                ; preds = %if.else33.i
  %35 = load i32* %tr.i, align 4, !tbaa !3
  %cmp39.i = icmp slt i32 %35, %31
  br i1 %cmp39.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true36.i
  %qpN2.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 80
  %36 = load i32* %qpN2.i, align 4, !tbaa !3
  %qp41.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %36, i32* %qp41.i, align 4, !tbaa !3
  br label %if.end44.i

if.else42.i:                                      ; preds = %land.lhs.true36.i, %if.else33.i
  %qpN.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 4
  %37 = load i32* %qpN.i, align 4, !tbaa !3
  %qp43.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %37, i32* %qp43.i, align 4, !tbaa !3
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else42.i, %if.then40.i
  %cmp46.i = icmp eq i32 %30, 3
  br i1 %cmp46.i, label %if.then47.i, label %if.end52.i

if.then47.i:                                      ; preds = %if.end44.i
  %qpsp.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 44
  %38 = load i32* %qpsp.i, align 4, !tbaa !3
  %qp48.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %38, i32* %qp48.i, align 4, !tbaa !3
  %qpsp_pred.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 45
  %39 = load i32* %qpsp_pred.i, align 4, !tbaa !3
  %qpsp49.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 11
  store i32 %39, i32* %qpsp49.i, align 4, !tbaa !3
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then47.i, %if.end44.i, %if.else.i, %if.then30.i, %if.end20.i
  %mb_y_upd.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 22
  %40 = load i32* %mb_y_upd.i, align 4, !tbaa !3
  %mb_y_intra.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 23
  store i32 %40, i32* %mb_y_intra.i, align 4, !tbaa !3
  %intra_upd.i = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 19
  %41 = load i32* %intra_upd.i, align 4, !tbaa !3
  %cmp53.i = icmp sgt i32 %41, 0
  br i1 %cmp53.i, label %if.then54.i, label %init_frame.exit

if.then54.i:                                      ; preds = %if.end52.i
  %42 = load i32* %number.i, align 4, !tbaa !3
  %43 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub56.i = sub nsw i32 %42, %43
  %div58.i = sdiv i32 %sub56.i, %41
  %44 = load i32* %height249.i, align 4, !tbaa !3
  %div60.i = sdiv i32 %44, 16
  %rem.i = srem i32 %div58.i, %div60.i
  store i32 %rem.i, i32* %mb_y_upd.i, align 4, !tbaa !3
  br label %init_frame.exit

if.else63.i:                                      ; preds = %for.end.i
  %45 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd64.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 5
  %46 = load i32* %jumpd64.i, align 4, !tbaa !3
  %add65.i = add nsw i32 %46, 1
  %p_interval.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 66
  store i32 %add65.i, i32* %p_interval.i, align 4, !tbaa !3
  %47 = load i32* @start_tr_in_this_IGOP, align 4, !tbaa !3
  %number66.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 0
  %48 = load i32* %number66.i, align 4, !tbaa !3
  %49 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub67.i = sub nsw i32 %48, %49
  %sub68.i = add nsw i32 %sub67.i, -1
  %mul70.i = mul nsw i32 %sub68.i, %add65.i
  %add71.i = add nsw i32 %mul70.i, %47
  %mul75.i = mul nsw i32 %sub67.i, %add65.i
  %add76.i = add nsw i32 %mul75.i, %47
  store i32 %add71.i, i32* %9, align 4, !tbaa !3
  %buf_cycle243.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 84
  %50 = load i32* %buf_cycle243.i, align 4, !tbaa !3
  %cmp79244.i = icmp sgt i32 %50, 1
  br i1 %cmp79244.i, label %for.body80.i, label %for.end90.i

for.body80.i:                                     ; preds = %if.else63.i, %for.body80.i
  %51 = phi i32 [ %sub85.i, %for.body80.i ], [ %add71.i, %if.else63.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body80.i ], [ 1, %if.else63.i ]
  %52 = load i32* %p_interval.i, align 4, !tbaa !3
  %sub85.i = sub nsw i32 %51, %52
  %arrayidx87.i = getelementptr inbounds i32* %9, i64 %indvars.iv.i
  store i32 %sub85.i, i32* %arrayidx87.i, align 4, !tbaa !3
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %53 = load i32* %buf_cycle243.i, align 4, !tbaa !3
  %54 = trunc i64 %indvars.iv.next.i to i32
  %cmp79.i = icmp slt i32 %54, %53
  br i1 %cmp79.i, label %for.body80.i, label %for.end90.i

for.end90.i:                                      ; preds = %for.body80.i, %if.else63.i
  %last_frame91.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 79
  %55 = load i32* %last_frame91.i, align 4, !tbaa !3
  %tobool92.i = icmp eq i32 %55, 0
  br i1 %tobool92.i, label %if.end102.i, label %land.lhs.true93.i

land.lhs.true93.i:                                ; preds = %for.end90.i
  %56 = load i32* %number66.i, align 4, !tbaa !3
  %add95.i = add nsw i32 %56, 1
  %no_frames96.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 2
  %57 = load i32* %no_frames96.i, align 4, !tbaa !3
  %cmp97.i = icmp eq i32 %add95.i, %57
  br i1 %cmp97.i, label %if.then98.i, label %if.end102.i

if.then98.i:                                      ; preds = %land.lhs.true93.i
  %sub100.i = sub nsw i32 %55, %add71.i
  store i32 %sub100.i, i32* %p_interval.i, align 4, !tbaa !3
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %land.lhs.true93.i, %for.end90.i
  %nextP_no.0.i = phi i32 [ %55, %if.then98.i ], [ %add76.i, %land.lhs.true93.i ], [ %add76.i, %for.end90.i ]
  %58 = load i32* %jumpd64.i, align 4, !tbaa !3
  %add104.i = add nsw i32 %58, 1
  %conv.i313 = sitofp i32 %add104.i to double
  %successive_Bframe105.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 34
  %59 = load i32* %successive_Bframe105.i, align 4, !tbaa !3
  %conv106.i = sitofp i32 %59 to double
  %add107.i = fadd double %conv106.i, 1.000000e+00
  %div108.i = fdiv double %conv.i313, %add107.i
  %b_interval.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 65
  store double %div108.i, double* %b_interval.i, align 8, !tbaa !6
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 55
  %60 = load i32* %PyramidCoding.i, align 4, !tbaa !3
  %cmp109.i = icmp eq i32 %60, 3
  br i1 %cmp109.i, label %if.end113.thread.i, label %if.end113.i

if.end113.thread.i:                               ; preds = %if.end102.i
  store double 1.000000e+00, double* %b_interval.i, align 8, !tbaa !6
  %61 = load i32* %b_frame_to_code.i, align 4, !tbaa !3
  br label %if.then116.i

if.end113.i:                                      ; preds = %if.end102.i
  %tobool115.i = icmp eq i32 %60, 0
  %62 = load i32* %b_frame_to_code.i, align 4, !tbaa !3
  br i1 %tobool115.i, label %if.else128.i, label %if.then116.i

if.then116.i:                                     ; preds = %if.end113.i, %if.end113.thread.i
  %63 = phi i32 [ %61, %if.end113.thread.i ], [ %62, %if.end113.i ]
  %64 = phi double [ 1.000000e+00, %if.end113.thread.i ], [ %div108.i, %if.end113.i ]
  %sub119.i = add nsw i32 %63, -1
  %idxprom120.i = sext i32 %sub119.i to i64
  %65 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %display_no.i = getelementptr inbounds %struct.GOP_DATA* %65, i64 %idxprom120.i, i32 1
  %66 = load i32* %display_no.i, align 4, !tbaa !3
  %add122.i = add nsw i32 %66, 1
  %conv123.i = sitofp i32 %add122.i to double
  %mul124.i = fmul double %64, %conv123.i
  %conv125.i = fptosi double %mul124.i to i32
  %add126.i = add nsw i32 %conv125.i, %add71.i
  %tr127.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 55
  store i32 %add126.i, i32* %tr127.i, align 4, !tbaa !3
  br label %if.end136.i

if.else128.i:                                     ; preds = %if.end113.i
  %conv131.i = sitofp i32 %62 to double
  %mul132.i = fmul double %div108.i, %conv131.i
  %conv133.i = fptosi double %mul132.i to i32
  %add134.i = add nsw i32 %conv133.i, %add71.i
  %tr135.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 55
  store i32 %add134.i, i32* %tr135.i, align 4, !tbaa !3
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.else128.i, %if.then116.i
  %67 = phi i32 [ %62, %if.else128.i ], [ %63, %if.then116.i ]
  %68 = phi i32 [ %add134.i, %if.else128.i ], [ %add126.i, %if.then116.i ]
  %cmp138.i = icmp slt i32 %68, %nextP_no.0.i
  br i1 %cmp138.i, label %if.end143.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.end136.i
  %tr137.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 55
  %sub141.i = add nsw i32 %nextP_no.0.i, -1
  store i32 %sub141.i, i32* %tr137.i, align 4, !tbaa !3
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then140.i, %if.end136.i
  %69 = phi i32 [ %68, %if.end136.i ], [ %sub141.i, %if.then140.i ]
  %RCEnable144.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 127
  %70 = load i32* %RCEnable144.i, align 4, !tbaa !3
  %tobool145.i = icmp eq i32 %70, 0
  %71 = load i32* %PyramidCoding.i, align 4, !tbaa !3
  %cmp148.i = icmp eq i32 %71, 3
  br i1 %tobool145.i, label %land.lhs.true146.i, label %if.else216.i

land.lhs.true146.i:                               ; preds = %if.end143.i
  br i1 %cmp148.i, label %if.then220.i, label %if.then150.i

if.then150.i:                                     ; preds = %land.lhs.true146.i
  %qp2start151.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 82
  %72 = load i32* %qp2start151.i, align 4, !tbaa !3
  %cmp152.i = icmp slt i32 %72, 1
  %cmp157.i = icmp slt i32 %69, %72
  %or.cond.i = or i1 %cmp152.i, %cmp157.i
  br i1 %or.cond.i, label %if.else161.i, label %if.then159.i

if.then159.i:                                     ; preds = %if.then150.i
  %qpB2.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 81
  %73 = load i32* %qpB2.i, align 4, !tbaa !3
  %qp160.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %73, i32* %qp160.i, align 4, !tbaa !3
  br label %if.end163.i

if.else161.i:                                     ; preds = %if.then150.i
  %qpB.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 35
  %74 = load i32* %qpB.i, align 4, !tbaa !3
  %qp162.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %74, i32* %qp162.i, align 4, !tbaa !3
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.else161.i, %if.then159.i
  %nal_reference_idc.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 113
  %75 = load i32* %nal_reference_idc.i, align 4, !tbaa !3
  %tobool164.i = icmp eq i32 %75, 0
  br i1 %tobool164.i, label %init_frame.exit, label %if.then165.i

if.then165.i:                                     ; preds = %if.end163.i
  %76 = load i32* %qp2start151.i, align 4, !tbaa !3
  %cmp167.i = icmp slt i32 %76, 1
  %cmp172.i = icmp slt i32 %69, %76
  %or.cond260.i = or i1 %cmp167.i, %cmp172.i
  br i1 %or.cond260.i, label %if.else192.i, label %if.then174.i

if.then174.i:                                     ; preds = %if.then165.i
  %qpB2175.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 81
  %77 = load i32* %qpB2175.i, align 4, !tbaa !3
  %qpBRS2Offset.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 84
  %78 = load i32* %qpBRS2Offset.i, align 4, !tbaa !3
  %add176.i = add nsw i32 %78, %77
  %cmp177.i = icmp slt i32 %add176.i, 0
  br i1 %cmp177.i, label %cond.end189.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.then174.i
  %cmp182.i = icmp sgt i32 %add176.i, 51
  %.add176.i = select i1 %cmp182.i, i32 51, i32 %add176.i
  br label %cond.end189.i

cond.end189.i:                                    ; preds = %cond.false.i, %if.then174.i
  %cond190.i = phi i32 [ 0, %if.then174.i ], [ %.add176.i, %cond.false.i ]
  %qp191.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %cond190.i, i32* %qp191.i, align 4, !tbaa !3
  br label %init_frame.exit

if.else192.i:                                     ; preds = %if.then165.i
  %qpB193.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 35
  %79 = load i32* %qpB193.i, align 4, !tbaa !3
  %qpBRSOffset.i = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 36
  %80 = load i32* %qpBRSOffset.i, align 4, !tbaa !3
  %add194.i = add nsw i32 %80, %79
  %cmp195.i = icmp slt i32 %add194.i, 0
  br i1 %cmp195.i, label %cond.end211.i, label %cond.false198.i

cond.false198.i:                                  ; preds = %if.else192.i
  %cmp202.i = icmp sgt i32 %add194.i, 51
  %.add194.i = select i1 %cmp202.i, i32 51, i32 %add194.i
  br label %cond.end211.i

cond.end211.i:                                    ; preds = %cond.false198.i, %if.else192.i
  %cond212.i = phi i32 [ 0, %if.else192.i ], [ %.add194.i, %cond.false198.i ]
  %qp213.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %cond212.i, i32* %qp213.i, align 4, !tbaa !3
  br label %init_frame.exit

if.else216.i:                                     ; preds = %if.end143.i
  br i1 %cmp148.i, label %if.then220.i, label %init_frame.exit

if.then220.i:                                     ; preds = %if.else216.i, %land.lhs.true146.i
  %sub222.i = add nsw i32 %67, -1
  %idxprom223.i = sext i32 %sub222.i to i64
  %81 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_qp.i = getelementptr inbounds %struct.GOP_DATA* %81, i64 %idxprom223.i, i32 3
  %82 = load i32* %slice_qp.i, align 4, !tbaa !3
  %qp225.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 10
  store i32 %82, i32* %qp225.i, align 4, !tbaa !3
  br label %init_frame.exit

init_frame.exit:                                  ; preds = %if.end52.i, %if.then54.i, %if.end163.i, %cond.end189.i, %cond.end211.i, %if.else216.i, %if.then220.i
  %layer.i = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 86
  %83 = load i32* %layer.i, align 4, !tbaa !3
  tail call void @UpdateSubseqInfo(i32 %83) #7
  tail call void @UpdateSceneInformation(i32 0, i32 0, i32 0, i32 -1) #7
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width229.i = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 13
  %85 = load i32* %width229.i, align 4, !tbaa !3
  %height230.i = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 15
  %86 = load i32* %height230.i, align 4, !tbaa !3
  %mul231.i = mul nsw i32 %86, %85
  %div232.i = sdiv i32 %mul231.i, 256
  %total_number_mb.i = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 4
  store i32 %div232.i, i32* %total_number_mb.i, align 4, !tbaa !3
  %no_output_of_prior_pics_flag.i = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 115
  %87 = bitcast i32* %no_output_of_prior_pics_flag.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %87, i8 0, i64 16, i32 4, i1 false) #1
  %88 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %b_frame_to_code.i314 = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 67
  %89 = load i32* %b_frame_to_code.i314, align 4, !tbaa !3
  %tobool.i315 = icmp eq i32 %89, 0
  br i1 %tobool.i315, label %if.else24.i, label %if.then.i324

if.then.i324:                                     ; preds = %init_frame.exit
  %90 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidCoding.i316 = getelementptr inbounds %struct.InputParameters* %90, i64 0, i32 55
  %91 = load i32* %PyramidCoding.i316, align 4, !tbaa !3
  %tobool1.i = icmp eq i32 %91, 0
  %92 = load i32* @start_tr_in_this_IGOP, align 4, !tbaa !3
  %number.i317 = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 0
  %93 = load i32* %number.i317, align 4, !tbaa !3
  %94 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub.i318 = add i32 %93, -1
  %sub3.i = sub i32 %sub.i318, %94
  %jumpd.i319 = getelementptr inbounds %struct.InputParameters* %90, i64 0, i32 5
  %95 = load i32* %jumpd.i319, align 4, !tbaa !3
  %add.i320 = add nsw i32 %95, 1
  %mul.i321 = mul nsw i32 %add.i320, %sub3.i
  %add4.i322 = add nsw i32 %mul.i321, %92
  %b_interval.i323 = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 65
  %96 = load double* %b_interval.i323, align 8, !tbaa !6
  br i1 %tobool1.i, label %if.else.i327, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i324
  %sub6.i = add nsw i32 %89, -1
  %idxprom.i = sext i32 %sub6.i to i64
  %97 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %display_no.i325 = getelementptr inbounds %struct.GOP_DATA* %97, i64 %idxprom.i, i32 1
  %98 = load i32* %display_no.i325, align 4, !tbaa !3
  %add7.i = add nsw i32 %98, 1
  %conv.i326 = sitofp i32 %add7.i to double
  %mul8.i = fmul double %96, %conv.i326
  %conv9.i = fptosi double %mul8.i to i32
  %add10.i = add nsw i32 %conv9.i, %add4.i322
  store i32 %add10.i, i32* @frame_no, align 4, !tbaa !3
  br label %CalculateFrameNumber.exit

if.else.i327:                                     ; preds = %if.then.i324
  %conv20.i = sitofp i32 %89 to double
  %mul21.i = fmul double %conv20.i, %96
  %conv22.i = fptosi double %mul21.i to i32
  %add23.i = add nsw i32 %add4.i322, %conv22.i
  store i32 %add23.i, i32* @frame_no, align 4, !tbaa !3
  br label %CalculateFrameNumber.exit

if.else24.i:                                      ; preds = %init_frame.exit
  %99 = load i32* @start_tr_in_this_IGOP, align 4, !tbaa !3
  %number25.i = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 0
  %100 = load i32* %number25.i, align 4, !tbaa !3
  %101 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %sub26.i = sub nsw i32 %100, %101
  %102 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd27.i = getelementptr inbounds %struct.InputParameters* %102, i64 0, i32 5
  %103 = load i32* %jumpd27.i, align 4, !tbaa !3
  %add28.i = add nsw i32 %103, 1
  %mul29.i = mul nsw i32 %add28.i, %sub26.i
  %add30.i = add nsw i32 %mul29.i, %99
  store i32 %add30.i, i32* @frame_no, align 4, !tbaa !3
  %last_frame.i328 = getelementptr inbounds %struct.InputParameters* %102, i64 0, i32 79
  %104 = load i32* %last_frame.i328, align 4, !tbaa !3
  %tobool31.i = icmp eq i32 %104, 0
  br i1 %tobool31.i, label %CalculateFrameNumber.exit, label %land.lhs.true.i331

land.lhs.true.i331:                               ; preds = %if.else24.i
  %105 = load i32* %number25.i, align 4, !tbaa !3
  %add33.i = add nsw i32 %105, 1
  %no_frames.i329 = getelementptr inbounds %struct.InputParameters* %102, i64 0, i32 2
  %106 = load i32* %no_frames.i329, align 4, !tbaa !3
  %cmp.i330 = icmp eq i32 %add33.i, %106
  br i1 %cmp.i330, label %if.then35.i, label %CalculateFrameNumber.exit

if.then35.i:                                      ; preds = %land.lhs.true.i331
  store i32 %104, i32* @frame_no, align 4, !tbaa !3
  br label %CalculateFrameNumber.exit

CalculateFrameNumber.exit:                        ; preds = %if.then2.i, %if.else.i327, %if.else24.i, %land.lhs.true.i331, %if.then35.i
  %107 = phi %struct.InputParameters* [ %102, %if.else24.i ], [ %102, %land.lhs.true.i331 ], [ %102, %if.then35.i ], [ %90, %if.then2.i ], [ %90, %if.else.i327 ]
  %108 = phi i32 [ %add30.i, %if.else24.i ], [ %add30.i, %land.lhs.true.i331 ], [ %104, %if.then35.i ], [ %add10.i, %if.then2.i ], [ %add23.i, %if.else.i327 ]
  %infile_header = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 25
  %109 = load i32* %infile_header, align 4, !tbaa !3
  %img_width = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 16
  %110 = load i32* %img_width, align 4, !tbaa !3
  %img_height = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 17
  %111 = load i32* %img_height, align 4, !tbaa !3
  %img_width_cr = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 138
  %112 = load i32* %img_width_cr, align 4, !tbaa !3
  %img_height_cr = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 137
  %113 = load i32* %img_height_cr, align 4, !tbaa !3
  %pic_unit_size_on_disk.i = getelementptr inbounds %struct.ImageParameters* %88, i64 0, i32 148
  %114 = load i32* %pic_unit_size_on_disk.i, align 4, !tbaa !3
  %div.i332 = sdiv i32 %114, 8
  %mul.i333 = mul nsw i32 %111, %110
  %mul1.i = mul nsw i32 %113, %112
  %mul2.i = mul i32 %mul.i333, %div.i332
  %mul3.i334 = mul i32 %mul1.i, %div.i332
  %mul4.i = shl i32 %mul3.i334, 1
  %add.i335 = add nsw i32 %mul4.i, %mul2.i
  %conv.i336 = sext i32 %add.i335 to i64
  %rgb_input_flag.i = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 139
  %115 = load i32* %rgb_input_flag.i, align 4, !tbaa !3
  %cmp.i337 = icmp eq i32 %115, 1
  br i1 %cmp.i337, label %land.rhs.i, label %land.end.i

land.rhs.i:                                       ; preds = %CalculateFrameNumber.exit
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 18
  %116 = load i32* %yuv_format.i, align 4, !tbaa !3
  %cmp6.i = icmp eq i32 %116, 3
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %CalculateFrameNumber.exit
  %117 = phi i1 [ false, %CalculateFrameNumber.exit ], [ %cmp6.i, %land.rhs.i ]
  %conv10.i = zext i32 %mul2.i to i64
  %call.i338 = tail call noalias i8* @malloc(i64 %conv10.i) #7
  %cmp11.i = icmp eq i8* %call.i338, null
  br i1 %cmp11.i, label %if.then.i339, label %if.end.i340

if.then.i339:                                     ; preds = %land.end.i
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #7
  br label %if.end.i340

if.end.i340:                                      ; preds = %if.then.i339, %land.end.i
  %118 = load i32* @p_in, align 4, !tbaa !3
  %conv13.i = sext i32 %109 to i64
  %call14.i = tail call i64 @lseek(i32 %118, i64 %conv13.i, i32 0) #7
  %cmp16.i = icmp eq i64 %call14.i, %conv13.i
  br i1 %cmp16.i, label %if.end19.i, label %if.then18.i341

if.then18.i341:                                   ; preds = %if.end.i340
  tail call void @error(i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 -1) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i341, %if.end.i340
  %119 = load i32* @p_in, align 4, !tbaa !3
  %120 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %start_frame.i = getelementptr inbounds %struct.InputParameters* %120, i64 0, i32 33
  %121 = load i32* %start_frame.i, align 4, !tbaa !3
  %conv20.i342 = sext i32 %121 to i64
  %mul21.i343 = mul nsw i64 %conv20.i342, %conv.i336
  %call22.i = tail call i64 @lseek(i32 %119, i64 %mul21.i343, i32 1) #7
  %cmp23.i344 = icmp eq i64 %call22.i, -1
  br i1 %cmp23.i344, label %if.then25.i, label %if.end28.i

if.then25.i:                                      ; preds = %if.end19.i
  %122 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %start_frame26.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 33
  %123 = load i32* %start_frame26.i, align 4, !tbaa !3
  %call27.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 %123) #7
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 -1) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end19.i
  %124 = load i32* @p_in, align 4, !tbaa !3
  %conv29.i = sext i32 %108 to i64
  %mul30.i = mul nsw i64 %conv.i336, %conv29.i
  %call31.i = tail call i64 @lseek(i32 %124, i64 %mul30.i, i32 1) #7
  %cmp32.i = icmp eq i64 %call31.i, -1
  br i1 %cmp32.i, label %if.then34.i, label %if.end38.i

if.then34.i:                                      ; preds = %if.end28.i
  %125 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %start_frame35.i = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 33
  %126 = load i32* %start_frame35.i, align 4, !tbaa !3
  %add36.i = add nsw i32 %126, %108
  %call37.i = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 %add36.i) #7
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 -1) #7
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end28.i
  %127 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_unit_size_on_disk39.i = getelementptr inbounds %struct.ImageParameters* %127, i64 0, i32 148
  %128 = load i32* %pic_unit_size_on_disk39.i, align 4, !tbaa !3
  %rem125.i = and i32 %128, 7
  %cmp40.i = icmp eq i32 %rem125.i, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i346

if.then42.i:                                      ; preds = %if.end38.i
  br i1 %117, label %if.then43.i, label %if.end46.i

if.then43.i:                                      ; preds = %if.then42.i
  %129 = load i32* @p_in, align 4, !tbaa !3
  %div44.i = sdiv i64 %conv.i336, 3
  %call45.i = tail call i64 @lseek(i32 %129, i64 %div44.i, i32 1) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.then42.i
  %130 = load i32* @p_in, align 4, !tbaa !3
  %conv47.i = sext i32 %mul2.i to i64
  %call48.i = tail call i64 @read(i32 %130, i8* %call.i338, i64 %conv47.i) #7
  %cmp50.i = icmp eq i64 %call48.i, %conv47.i
  br i1 %cmp50.i, label %if.end54.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end46.i
  %call53.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %mul2.i) #7
  tail call void (...)* @report_stats_on_error() #7
  tail call void @exit(i32 -1) #9
  unreachable

if.end54.i:                                       ; preds = %if.end46.i
  %131 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  tail call void @buf2img(i16** %131, i8* %call.i338, i32 %110, i32 %111, i32 %div.i332) #7
  %132 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format55.i = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 159
  %133 = load i32* %yuv_format55.i, align 4, !tbaa !3
  %cmp56.i = icmp eq i32 %133, 0
  br i1 %cmp56.i, label %ReadOneFrame.exit, label %if.then58.i

if.then58.i:                                      ; preds = %if.end54.i
  %134 = load i32* @p_in, align 4, !tbaa !3
  %conv59.i = sext i32 %mul3.i334 to i64
  %call60.i = tail call i64 @read(i32 %134, i8* %call.i338, i64 %conv59.i) #7
  %cmp62.i = icmp eq i64 %call60.i, %conv59.i
  br i1 %cmp62.i, label %if.end66.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.then58.i
  %call65.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %mul2.i) #7
  tail call void (...)* @report_stats_on_error() #7
  tail call void @exit(i32 -1) #9
  unreachable

if.end66.i:                                       ; preds = %if.then58.i
  %135 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  %136 = load i16*** %135, align 8, !tbaa !0
  tail call void @buf2img(i16** %136, i8* %call.i338, i32 %112, i32 %113, i32 %div.i332) #7
  br i1 %117, label %if.then68.i, label %if.end70.i

if.then68.i:                                      ; preds = %if.end66.i
  %137 = load i32* @p_in, align 4, !tbaa !3
  %sub.i345 = sub nsw i64 0, %conv.i336
  %call69.i = tail call i64 @lseek(i32 %137, i64 %sub.i345, i32 1) #7
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then68.i, %if.end66.i
  %138 = load i32* @p_in, align 4, !tbaa !3
  %call72.i = tail call i64 @read(i32 %138, i8* %call.i338, i64 %conv59.i) #7
  %cmp74.i = icmp eq i64 %call72.i, %conv59.i
  br i1 %cmp74.i, label %if.end78.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end70.i
  %call77.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %mul2.i) #7
  tail call void (...)* @report_stats_on_error() #7
  tail call void @exit(i32 -1) #9
  unreachable

if.end78.i:                                       ; preds = %if.end70.i
  %139 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  %arrayidx79.i = getelementptr inbounds i16*** %139, i64 1
  %140 = load i16*** %arrayidx79.i, align 8, !tbaa !0
  tail call void @buf2img(i16** %140, i8* %call.i338, i32 %112, i32 %113, i32 %div.i332) #7
  br i1 %117, label %if.then81.i, label %ReadOneFrame.exit

if.then81.i:                                      ; preds = %if.end78.i
  %141 = load i32* @p_in, align 4, !tbaa !3
  %mul82.i = shl nsw i64 %conv.i336, 1
  %div83.i = sdiv i64 %mul82.i, 3
  %call84.i = tail call i64 @lseek(i32 %141, i64 %div83.i, i32 1) #7
  br label %ReadOneFrame.exit

if.else.i346:                                     ; preds = %if.end38.i
  %call87.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str9, i64 0, i64 0)) #7
  tail call void @exit(i32 -1) #9
  unreachable

ReadOneFrame.exit:                                ; preds = %if.end54.i, %if.end78.i, %if.then81.i
  tail call void @free(i8* %call.i338) #7
  %142 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_width3 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 16
  %143 = load i32* %img_width3, align 4, !tbaa !3
  %img_height4 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 17
  %144 = load i32* %img_height4, align 4, !tbaa !3
  %145 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 13
  %146 = load i32* %width, align 4, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 15
  %147 = load i32* %height, align 4, !tbaa !3
  %img_width_cr5 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 138
  %148 = load i32* %img_width_cr5, align 4, !tbaa !3
  %img_height_cr6 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 137
  %149 = load i32* %img_height_cr6, align 4, !tbaa !3
  %width_cr = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 14
  %150 = load i32* %width_cr, align 4, !tbaa !3
  %height_cr = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 16
  %151 = load i32* %height_cr, align 4, !tbaa !3
  %cmp159.i = icmp sgt i32 %144, 0
  br i1 %cmp159.i, label %for.cond1.preheader.lr.ph.i, label %for.cond13.preheader.i

for.cond1.preheader.lr.ph.i:                      ; preds = %ReadOneFrame.exit
  %cmp2157.i = icmp slt i32 %143, %146
  %152 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  %153 = sext i32 %143 to i64
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc10.i, %for.cond1.preheader.lr.ph.i
  %indvars.iv184.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i ], [ %indvars.iv.next185.i, %for.inc10.i ]
  br i1 %cmp2157.i, label %for.body3.lr.ph.i, label %for.inc10.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %arrayidx.i = getelementptr inbounds i16** %152, i64 %indvars.iv184.i
  %154 = load i16** %arrayidx.i, align 8, !tbaa !0
  br label %for.body3.i

for.cond13.preheader.i:                           ; preds = %for.inc10.i, %ReadOneFrame.exit
  %cmp14155.i = icmp slt i32 %144, %147
  br i1 %cmp14155.i, label %for.cond16.preheader.lr.ph.i, label %for.end33.i

for.cond16.preheader.lr.ph.i:                     ; preds = %for.cond13.preheader.i
  %cmp17153.i = icmp sgt i32 %146, 0
  %155 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  %156 = sext i32 %144 to i64
  br label %for.cond16.preheader.i

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.lr.ph.i
  %indvars.iv180.i = phi i64 [ %153, %for.body3.lr.ph.i ], [ %indvars.iv.next181.i, %for.body3.i ]
  %157 = add nsw i64 %indvars.iv180.i, -1
  %arrayidx5.i = getelementptr inbounds i16* %154, i64 %157
  %158 = load i16* %arrayidx5.i, align 2, !tbaa !4
  %arrayidx9.i = getelementptr inbounds i16* %154, i64 %indvars.iv180.i
  store i16 %158, i16* %arrayidx9.i, align 2, !tbaa !4
  %indvars.iv.next181.i = add i64 %indvars.iv180.i, 1
  %159 = trunc i64 %indvars.iv.next181.i to i32
  %cmp2.i347 = icmp slt i32 %159, %146
  br i1 %cmp2.i347, label %for.body3.i, label %for.inc10.i

for.inc10.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.next185.i = add i64 %indvars.iv184.i, 1
  %lftr.wideiv541 = trunc i64 %indvars.iv.next185.i to i32
  %exitcond542 = icmp eq i32 %lftr.wideiv541, %144
  br i1 %exitcond542, label %for.cond13.preheader.i, label %for.cond1.preheader.i

for.cond16.preheader.i:                           ; preds = %for.inc31.i, %for.cond16.preheader.lr.ph.i
  %indvars.iv177.i = phi i64 [ %156, %for.cond16.preheader.lr.ph.i ], [ %indvars.iv.next178.i, %for.inc31.i ]
  br i1 %cmp17153.i, label %for.body18.lr.ph.i, label %for.inc31.i

for.body18.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %160 = add nsw i64 %indvars.iv177.i, -1
  %arrayidx22.i = getelementptr inbounds i16** %155, i64 %160
  %161 = load i16** %arrayidx22.i, align 8, !tbaa !0
  %arrayidx26.i = getelementptr inbounds i16** %155, i64 %indvars.iv177.i
  %162 = load i16** %arrayidx26.i, align 8, !tbaa !0
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i, %for.body18.lr.ph.i
  %indvars.iv173.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next174.i, %for.body18.i ]
  %arrayidx23.i = getelementptr inbounds i16* %161, i64 %indvars.iv173.i
  %163 = load i16* %arrayidx23.i, align 2, !tbaa !4
  %arrayidx27.i = getelementptr inbounds i16* %162, i64 %indvars.iv173.i
  store i16 %163, i16* %arrayidx27.i, align 2, !tbaa !4
  %indvars.iv.next174.i = add i64 %indvars.iv173.i, 1
  %lftr.wideiv538 = trunc i64 %indvars.iv.next174.i to i32
  %exitcond539 = icmp eq i32 %lftr.wideiv538, %146
  br i1 %exitcond539, label %for.inc31.i, label %for.body18.i

for.inc31.i:                                      ; preds = %for.body18.i, %for.cond16.preheader.i
  %indvars.iv.next178.i = add i64 %indvars.iv177.i, 1
  %164 = trunc i64 %indvars.iv.next178.i to i32
  %cmp14.i = icmp slt i32 %164, %147
  br i1 %cmp14.i, label %for.cond16.preheader.i, label %for.end33.i

for.end33.i:                                      ; preds = %for.inc31.i, %for.cond13.preheader.i
  %yuv_format.i348 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 159
  %165 = load i32* %yuv_format.i348, align 4, !tbaa !3
  %cmp34.i = icmp eq i32 %165, 0
  br i1 %cmp34.i, label %PaddAutoCropBorders.exit, label %for.cond35.preheader.i

for.cond35.preheader.i:                           ; preds = %for.end33.i
  %cmp36151.i = icmp sgt i32 %149, 0
  br i1 %cmp36151.i, label %for.cond38.preheader.lr.ph.i, label %for.cond69.preheader.i

for.cond38.preheader.lr.ph.i:                     ; preds = %for.cond35.preheader.i
  %cmp39149.i = icmp slt i32 %148, %150
  %166 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  %arrayidx55.i = getelementptr inbounds i16*** %166, i64 1
  %167 = sext i32 %148 to i64
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.inc66.i, %for.cond38.preheader.lr.ph.i
  %indvars.iv169.i = phi i64 [ 0, %for.cond38.preheader.lr.ph.i ], [ %indvars.iv.next170.i, %for.inc66.i ]
  br i1 %cmp39149.i, label %for.body40.lr.ph.i, label %for.inc66.i

for.body40.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %168 = load i16*** %166, align 8, !tbaa !0
  %arrayidx45.i = getelementptr inbounds i16** %168, i64 %indvars.iv169.i
  %169 = load i16** %arrayidx45.i, align 8, !tbaa !0
  %170 = load i16*** %arrayidx55.i, align 8, !tbaa !0
  %arrayidx56.i = getelementptr inbounds i16** %170, i64 %indvars.iv169.i
  %171 = load i16** %arrayidx56.i, align 8, !tbaa !0
  br label %for.body40.i

for.cond69.preheader.i:                           ; preds = %for.inc66.i, %for.cond35.preheader.i
  %cmp70147.i = icmp slt i32 %149, %151
  br i1 %cmp70147.i, label %for.cond72.preheader.lr.ph.i, label %PaddAutoCropBorders.exit

for.cond72.preheader.lr.ph.i:                     ; preds = %for.cond69.preheader.i
  %cmp73145.i = icmp sgt i32 %150, 0
  %172 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  %arrayidx89.i = getelementptr inbounds i16*** %172, i64 1
  %173 = sext i32 %149 to i64
  br label %for.cond72.preheader.i

for.body40.i:                                     ; preds = %for.body40.i, %for.body40.lr.ph.i
  %indvars.iv164.i = phi i64 [ %167, %for.body40.lr.ph.i ], [ %indvars.iv.next165.i, %for.body40.i ]
  %174 = add nsw i64 %indvars.iv164.i, -1
  %arrayidx46.i = getelementptr inbounds i16* %169, i64 %174
  %175 = load i16* %arrayidx46.i, align 2, !tbaa !4
  %arrayidx51.i = getelementptr inbounds i16* %169, i64 %indvars.iv164.i
  store i16 %175, i16* %arrayidx51.i, align 2, !tbaa !4
  %arrayidx57.i = getelementptr inbounds i16* %171, i64 %174
  %176 = load i16* %arrayidx57.i, align 2, !tbaa !4
  %arrayidx62.i = getelementptr inbounds i16* %171, i64 %indvars.iv164.i
  store i16 %176, i16* %arrayidx62.i, align 2, !tbaa !4
  %indvars.iv.next165.i = add i64 %indvars.iv164.i, 1
  %177 = trunc i64 %indvars.iv.next165.i to i32
  %cmp39.i349 = icmp slt i32 %177, %150
  br i1 %cmp39.i349, label %for.body40.i, label %for.inc66.i

for.inc66.i:                                      ; preds = %for.body40.i, %for.cond38.preheader.i
  %indvars.iv.next170.i = add i64 %indvars.iv169.i, 1
  %lftr.wideiv536 = trunc i64 %indvars.iv.next170.i to i32
  %exitcond537 = icmp eq i32 %lftr.wideiv536, %149
  br i1 %exitcond537, label %for.cond69.preheader.i, label %for.cond38.preheader.i

for.cond72.preheader.i:                           ; preds = %for.inc100.i, %for.cond72.preheader.lr.ph.i
  %indvars.iv161.i = phi i64 [ %173, %for.cond72.preheader.lr.ph.i ], [ %indvars.iv.next162.i, %for.inc100.i ]
  br i1 %cmp73145.i, label %for.body74.lr.ph.i, label %for.inc100.i

for.body74.lr.ph.i:                               ; preds = %for.cond72.preheader.i
  %178 = add nsw i64 %indvars.iv161.i, -1
  %179 = load i16*** %172, align 8, !tbaa !0
  %arrayidx79.i350 = getelementptr inbounds i16** %179, i64 %178
  %180 = load i16** %arrayidx79.i350, align 8, !tbaa !0
  %arrayidx84.i = getelementptr inbounds i16** %179, i64 %indvars.iv161.i
  %181 = load i16** %arrayidx84.i, align 8, !tbaa !0
  %182 = load i16*** %arrayidx89.i, align 8, !tbaa !0
  %arrayidx90.i = getelementptr inbounds i16** %182, i64 %178
  %183 = load i16** %arrayidx90.i, align 8, !tbaa !0
  %arrayidx95.i = getelementptr inbounds i16** %182, i64 %indvars.iv161.i
  %184 = load i16** %arrayidx95.i, align 8, !tbaa !0
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv.i351 = phi i64 [ 0, %for.body74.lr.ph.i ], [ %indvars.iv.next.i352, %for.body74.i ]
  %arrayidx80.i = getelementptr inbounds i16* %180, i64 %indvars.iv.i351
  %185 = load i16* %arrayidx80.i, align 2, !tbaa !4
  %arrayidx85.i = getelementptr inbounds i16* %181, i64 %indvars.iv.i351
  store i16 %185, i16* %arrayidx85.i, align 2, !tbaa !4
  %arrayidx91.i = getelementptr inbounds i16* %183, i64 %indvars.iv.i351
  %186 = load i16* %arrayidx91.i, align 2, !tbaa !4
  %arrayidx96.i = getelementptr inbounds i16* %184, i64 %indvars.iv.i351
  store i16 %186, i16* %arrayidx96.i, align 2, !tbaa !4
  %indvars.iv.next.i352 = add i64 %indvars.iv.i351, 1
  %lftr.wideiv532 = trunc i64 %indvars.iv.next.i352 to i32
  %exitcond533 = icmp eq i32 %lftr.wideiv532, %150
  br i1 %exitcond533, label %for.inc100.i, label %for.body74.i

for.inc100.i:                                     ; preds = %for.body74.i, %for.cond72.preheader.i
  %indvars.iv.next162.i = add i64 %indvars.iv161.i, 1
  %187 = trunc i64 %indvars.iv.next162.i to i32
  %cmp70.i = icmp slt i32 %187, %151
  br i1 %cmp70.i, label %for.cond72.preheader.i, label %PaddAutoCropBorders.exit

PaddAutoCropBorders.exit:                         ; preds = %for.inc100.i, %for.end33.i, %for.cond69.preheader.i
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 37
  %188 = load i32* %direct_spatial_mv_pred_flag, align 4, !tbaa !3
  %direct_spatial_mv_pred_flag7 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 78
  store i32 %188, i32* %direct_spatial_mv_pred_flag7, align 4, !tbaa !3
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 103
  %189 = load i32* %LFDisableIdc, align 4, !tbaa !3
  %LFDisableIdc8 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 75
  store i32 %189, i32* %LFDisableIdc8, align 4, !tbaa !3
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 104
  %190 = load i32* %LFAlphaC0Offset, align 4, !tbaa !3
  %LFAlphaC0Offset9 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 76
  store i32 %190, i32* %LFAlphaC0Offset9, align 4, !tbaa !3
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 105
  %191 = load i32* %LFBetaOffset, align 4, !tbaa !3
  %LFBetaOffset10 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 77
  store i32 %191, i32* %LFBetaOffset10, align 4, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 6
  %192 = load i32* %type, align 4, !tbaa !3
  switch i32 %192, label %if.else17 [
    i32 1, label %if.then12
    i32 2, label %if.then15
  ]

if.then12:                                        ; preds = %PaddAutoCropBorders.exit
  %193 = load i32* @Bframe_ctr, align 4, !tbaa !3
  %inc = add nsw i32 %193, 1
  store i32 %inc, i32* @Bframe_ctr, align 4, !tbaa !3
  br label %if.end20

if.then15:                                        ; preds = %PaddAutoCropBorders.exit
  %194 = load i32* @Iframe_ctr, align 4, !tbaa !3
  %inc16 = add nsw i32 %194, 1
  store i32 %inc16, i32* @Iframe_ctr, align 4, !tbaa !3
  br label %if.end20

if.else17:                                        ; preds = %PaddAutoCropBorders.exit
  %195 = load i32* @Pframe_ctr, align 4, !tbaa !3
  %inc18 = add nsw i32 %195, 1
  store i32 %inc18, i32* @Pframe_ctr, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.else17, %if.then12
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 91
  %196 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %196, 1
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 134
  br i1 %cmp21, label %if.end91.thread552, label %if.else23

if.end91.thread552:                               ; preds = %if.end20
  store i32 1, i32* %FieldControl, align 4, !tbaa !3
  %field_picture = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 100
  store i32 1, i32* %field_picture, align 4, !tbaa !3
  %197 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  %198 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  tail call void @field_picture(%struct.Picture* %197, %struct.Picture* %198) #8
  %199 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 57
  store i32 1, i32* %fld_flag, align 4, !tbaa !3
  br label %if.then94

if.else23:                                        ; preds = %if.end20
  store i32 0, i32* %FieldControl, align 4, !tbaa !3
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 92
  %200 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool25 = icmp eq i32 %200, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.else23
  store i32 1, i32* @mb_adaptive, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then26
  %field_picture28 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 100
  store i32 0, i32* %field_picture28, align 4, !tbaa !3
  %RCEnable = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 127
  %201 = load i32* %RCEnable, align 4, !tbaa !3
  %tobool29 = icmp eq i32 %201, 0
  br i1 %tobool29, label %if.end48, label %if.then30

if.then30:                                        ; preds = %if.end27
  %202 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool32 = icmp eq i32 %202, 0
  %basicunit43.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 130
  %.pre548 = load i32* %basicunit43.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool32, label %if.else42, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then30
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 136
  %203 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp34 = icmp slt i32 %.pre548, %203
  br i1 %cmp34, label %land.lhs.true35, label %if.else42

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %204 = load i32* %type, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %204, 0
  br i1 %cmp37, label %land.lhs.true38, label %if.else42

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 137
  %205 = load i32* %IFLAG, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %205, 0
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %land.lhs.true38
  %mul = shl nsw i32 %.pre548, 1
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 139
  store i32 %mul, i32* %BasicUnit, align 4, !tbaa !3
  br label %if.end45

if.else42:                                        ; preds = %if.then30, %land.lhs.true38, %land.lhs.true35, %land.lhs.true33
  %BasicUnit44 = getelementptr inbounds %struct.ImageParameters* %145, i64 0, i32 139
  store i32 %.pre548, i32* %BasicUnit44, align 4, !tbaa !3
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40
  tail call void @rc_init_pict(i32 1, i32 0, i32 1) #7
  %call46 = tail call i32 @updateQuantizationParameter(i32 0) #7
  %206 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.ImageParameters* %206, i64 0, i32 10
  store i32 %call46, i32* %qp, align 4, !tbaa !3
  store i32 0, i32* @QP, align 4, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.end27, %if.end45
  %207 = phi %struct.ImageParameters* [ %145, %if.end27 ], [ %206, %if.end45 ]
  %208 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %208, i64 0, i32 25
  %209 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool49 = icmp eq i32 %209, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end48
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters* %207, i64 0, i32 133
  store i32 0, i32* %TopFieldFlag, align 4, !tbaa !3
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then50
  %210 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %210, i64 0, i32 15
  %211 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %211, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end51
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.then53
  %212 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  tail call void @frame_picture(%struct.Picture* %212, i32 0) #8
  %213 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RDPictureIntra = getelementptr inbounds %struct.InputParameters* %213, i64 0, i32 50
  %214 = load i32* %RDPictureIntra, align 4, !tbaa !3
  %tobool55 = icmp eq i32 %214, 0
  br i1 %tobool55, label %lor.lhs.false, label %land.lhs.true58

lor.lhs.false:                                    ; preds = %if.end54
  %215 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type56 = getelementptr inbounds %struct.ImageParameters* %215, i64 0, i32 6
  %216 = load i32* %type56, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %216, 2
  br i1 %cmp57, label %if.end61, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %lor.lhs.false, %if.end54
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters* %213, i64 0, i32 49
  %217 = load i32* %RDPictureDecision, align 4, !tbaa !3
  %tobool59 = icmp eq i32 %217, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %land.lhs.true58
  %218 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp.i354 = getelementptr inbounds %struct.ImageParameters* %218, i64 0, i32 10
  %219 = load i32* %qp.i354, align 4, !tbaa !3
  %220 = load i32* @intras, align 4, !tbaa !3
  %type.i355 = getelementptr inbounds %struct.ImageParameters* %218, i64 0, i32 6
  %221 = load i32* %type.i355, align 4, !tbaa !3
  %cmp.i356 = icmp eq i32 %221, 2
  br i1 %cmp.i356, label %if.else11.i, label %land.lhs.true.i358

land.lhs.true.i358:                               ; preds = %if.then60
  %GenerateMultiplePPS.i = getelementptr inbounds %struct.InputParameters* %213, i64 0, i32 15
  %222 = load i32* %GenerateMultiplePPS.i, align 4, !tbaa !3
  %tobool.i357 = icmp eq i32 %222, 0
  br i1 %tobool.i357, label %if.else11.i, label %if.then.i359

if.then.i359:                                     ; preds = %land.lhs.true.i358
  %cmp4.i = icmp eq i32 %221, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.else9.i

if.then5.i:                                       ; preds = %if.then.i359
  %call.i360 = tail call i32 @test_wp_P_slice(i32 0) #7
  %cmp6.i361 = icmp eq i32 %call.i360, 1
  br i1 %cmp6.i361, label %if.then7.i, label %if.end14.i

if.then7.i:                                       ; preds = %if.then5.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %.pre126.i = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp15.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %.pre126.i, i64 0, i32 10
  %.pre127.i = load i32* %qp15.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end14.thread.i

if.else9.i:                                       ; preds = %if.then.i359
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end14.thread.i

if.else11.i:                                      ; preds = %land.lhs.true.i358, %if.then60
  %sub13.i = add nsw i32 %219, -1
  store i32 %sub13.i, i32* %qp.i354, align 4, !tbaa !3
  %.pre.i362 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.else11.i, %if.else9.i, %if.then7.i
  %.ph.i = phi i32 [ %.pre127.i, %if.then7.i ], [ %219, %if.else9.i ], [ %sub13.i, %if.else11.i ]
  %.ph129.i = phi %struct.ImageParameters* [ %.pre126.i, %if.then7.i ], [ %218, %if.else9.i ], [ %218, %if.else11.i ]
  %.ph130.i = phi %struct.pic_parameter_set_rbsp_t* [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %if.then7.i ], [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2), %if.else9.i ], [ %.pre.i362, %if.else11.i ]
  %write_macroblock131.i = getelementptr inbounds %struct.ImageParameters* %.ph129.i, i64 0, i32 140
  store i32 0, i32* %write_macroblock131.i, align 4, !tbaa !3
  br label %if.end21.i

if.end14.i:                                       ; preds = %if.then5.i
  %223 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RDPSliceWeightOnly.i = getelementptr inbounds %struct.InputParameters* %223, i64 0, i32 51
  %224 = load i32* %RDPSliceWeightOnly.i, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %225 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp8.i = getelementptr inbounds %struct.ImageParameters* %225, i64 0, i32 10
  %226 = load i32* %qp8.i, align 4, !tbaa !3
  %sub.i363 = add nsw i32 %226, -1
  store i32 %sub.i363, i32* %qp8.i, align 4, !tbaa !3
  %write_macroblock.i = getelementptr inbounds %struct.ImageParameters* %225, i64 0, i32 140
  store i32 0, i32* %write_macroblock.i, align 4, !tbaa !3
  %tobool16.i = icmp eq i32 %224, 0
  br i1 %tobool16.i, label %if.end21.i, label %if.end21.thread.i

if.end21.thread.i:                                ; preds = %if.end14.i
  %rd_pass.i = getelementptr inbounds %struct.ImageParameters* %225, i64 0, i32 58
  store i32 0, i32* %rd_pass.i, align 4, !tbaa !3
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  br label %if.then24.i364

if.end21.i:                                       ; preds = %if.end14.i, %if.end14.thread.i
  %227 = phi %struct.pic_parameter_set_rbsp_t* [ %.ph130.i, %if.end14.thread.i ], [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %if.end14.i ]
  %228 = phi i32 [ %.ph.i, %if.end14.thread.i ], [ %sub.i363, %if.end14.i ]
  %229 = load %struct.Picture** @frame_pic2, align 8, !tbaa !0
  tail call void @frame_picture(%struct.Picture* %229, i32 1) #7
  %230 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  %231 = load %struct.Picture** @frame_pic2, align 8, !tbaa !0
  %call19.i = tail call i32 @picture_coding_decision(%struct.Picture* %230, %struct.Picture* %231, i32 %219) #7
  %232 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %rd_pass20.i = getelementptr inbounds %struct.ImageParameters* %232, i64 0, i32 58
  store i32 %call19.i, i32* %rd_pass20.i, align 4, !tbaa !3
  %phitmp.i = icmp eq i32 %call19.i, 0
  br i1 %phitmp.i, label %if.then24.i364, label %if.else35.i

if.then24.i364:                                   ; preds = %if.end21.i, %if.end21.thread.i
  %233 = phi %struct.ImageParameters* [ %225, %if.end21.thread.i ], [ %232, %if.end21.i ]
  %234 = phi i32 [ %sub.i363, %if.end21.thread.i ], [ %228, %if.end21.i ]
  %235 = phi %struct.pic_parameter_set_rbsp_t* [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %if.end21.thread.i ], [ %227, %if.end21.i ]
  %skip_encode.0133136.i = phi i32 [ %224, %if.end21.thread.i ], [ 0, %if.end21.i ]
  %236 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  store %struct.storable_picture* %236, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %type25.i = getelementptr inbounds %struct.ImageParameters* %233, i64 0, i32 6
  %237 = load i32* %type25.i, align 4, !tbaa !3
  %cmp26.i = icmp eq i32 %237, 2
  br i1 %cmp26.i, label %if.else32.i, label %land.lhs.true27.i

land.lhs.true27.i:                                ; preds = %if.then24.i364
  %238 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS28.i = getelementptr inbounds %struct.InputParameters* %238, i64 0, i32 15
  %239 = load i32* %GenerateMultiplePPS28.i, align 4, !tbaa !3
  %tobool29.i = icmp eq i32 %239, 0
  br i1 %tobool29.i, label %if.else32.i, label %if.then30.i366

if.then30.i366:                                   ; preds = %land.lhs.true27.i
  %qp31.i365 = getelementptr inbounds %struct.ImageParameters* %233, i64 0, i32 10
  store i32 %219, i32* %qp31.i365, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end34.i

if.else32.i:                                      ; preds = %land.lhs.true27.i, %if.then24.i364
  %qp33.i = getelementptr inbounds %struct.ImageParameters* %233, i64 0, i32 10
  store i32 %219, i32* %qp33.i, align 4, !tbaa !3
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else32.i, %if.then30.i366
  store i32 %220, i32* @intras, align 4, !tbaa !3
  br label %if.end36.i

if.else35.i:                                      ; preds = %if.end21.i
  %240 = load i32* @intras, align 4, !tbaa !3
  %type37.pre.i = getelementptr inbounds %struct.ImageParameters* %232, i64 0, i32 6
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else35.i, %if.end34.i
  %241 = phi %struct.ImageParameters* [ %232, %if.else35.i ], [ %233, %if.end34.i ]
  %242 = phi i32 [ %228, %if.else35.i ], [ %234, %if.end34.i ]
  %243 = phi %struct.pic_parameter_set_rbsp_t* [ %227, %if.else35.i ], [ %235, %if.end34.i ]
  %skip_encode.0133135.i = phi i32 [ 0, %if.else35.i ], [ %skip_encode.0133136.i, %if.end34.i ]
  %type37.pre-phi.i = phi i32* [ %type37.pre.i, %if.else35.i ], [ %type25.i, %if.end34.i ]
  %previntras.0.i = phi i32 [ %240, %if.else35.i ], [ %220, %if.end34.i ]
  %244 = load i32* %type37.pre-phi.i, align 4, !tbaa !3
  %cmp38.i = icmp eq i32 %244, 2
  br i1 %cmp38.i, label %if.else69.i, label %land.lhs.true39.i

land.lhs.true39.i:                                ; preds = %if.end36.i
  %245 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS40.i = getelementptr inbounds %struct.InputParameters* %245, i64 0, i32 15
  %246 = load i32* %GenerateMultiplePPS40.i, align 4, !tbaa !3
  %tobool41.i = icmp eq i32 %246, 0
  br i1 %tobool41.i, label %if.else69.i, label %if.then42.i368

if.then42.i368:                                   ; preds = %land.lhs.true39.i
  %qp43.i367 = getelementptr inbounds %struct.ImageParameters* %241, i64 0, i32 10
  store i32 %219, i32* %qp43.i367, align 4, !tbaa !3
  %cmp45.i = icmp eq i32 %244, 0
  br i1 %cmp45.i, label %if.then46.i, label %if.else54.i

if.then46.i:                                      ; preds = %if.then42.i368
  %call47.i = tail call i32 @test_wp_P_slice(i32 1) #7
  %cmp48.i = icmp eq i32 %call47.i, 1
  br i1 %cmp48.i, label %if.then49.i, label %if.else50.i

if.then49.i:                                      ; preds = %if.then46.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end72.i

if.else50.i:                                      ; preds = %if.then46.i
  %247 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RDPSliceWeightOnly51.i = getelementptr inbounds %struct.InputParameters* %247, i64 0, i32 51
  %248 = load i32* %RDPSliceWeightOnly51.i, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %249 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp52.i = getelementptr inbounds %struct.ImageParameters* %249, i64 0, i32 10
  %250 = load i32* %qp52.i, align 4, !tbaa !3
  %add.i369 = add nsw i32 %250, 1
  store i32 %add.i369, i32* %qp52.i, align 4, !tbaa !3
  br label %if.end72.i

if.else54.i:                                      ; preds = %if.then42.i368
  %call55.i = tail call i32 @test_wp_B_slice(i32 0) #7
  %cmp56.i370 = icmp eq i32 %call55.i, 1
  br i1 %cmp56.i370, label %if.then57.i, label %if.else58.i

if.then57.i:                                      ; preds = %if.else54.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end72.i

if.else58.i:                                      ; preds = %if.else54.i
  %251 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RDBSliceWeightOnly.i = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 52
  %252 = load i32* %RDBSliceWeightOnly.i, align 4, !tbaa !3
  %253 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %nal_reference_idc.i371 = getelementptr inbounds %struct.ImageParameters* %253, i64 0, i32 113
  %254 = load i32* %nal_reference_idc.i371, align 4, !tbaa !3
  %tobool59.i = icmp eq i32 %254, 0
  br i1 %tobool59.i, label %if.else63.i372, label %if.then60.i

if.then60.i:                                      ; preds = %if.else58.i
  %sub61.i = add nsw i32 %219, -1
  %qp62.i = getelementptr inbounds %struct.ImageParameters* %253, i64 0, i32 10
  store i32 %sub61.i, i32* %qp62.i, align 4, !tbaa !3
  br label %if.end72.i

if.else63.i372:                                   ; preds = %if.else58.i
  %add64.i = add nsw i32 %219, 1
  %qp65.i = getelementptr inbounds %struct.ImageParameters* %253, i64 0, i32 10
  store i32 %add64.i, i32* %qp65.i, align 4, !tbaa !3
  br label %if.end72.i

if.else69.i:                                      ; preds = %land.lhs.true39.i, %if.end36.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %add70.i = add nsw i32 %219, 1
  %qp71.i = getelementptr inbounds %struct.ImageParameters* %241, i64 0, i32 10
  store i32 %add70.i, i32* %qp71.i, align 4, !tbaa !3
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else69.i, %if.else63.i372, %if.then60.i, %if.then57.i, %if.else50.i, %if.then49.i
  %skip_encode.1.i = phi i32 [ 0, %if.then49.i ], [ %248, %if.else50.i ], [ 0, %if.then57.i ], [ %252, %if.then60.i ], [ %252, %if.else63.i372 ], [ %skip_encode.0133135.i, %if.else69.i ]
  %255 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type73.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 6
  %256 = load i32* %type73.i, align 4, !tbaa !3
  %cmp74.i373 = icmp eq i32 %256, 0
  br i1 %cmp74.i373, label %land.lhs.true75.i, label %if.end82.i

land.lhs.true75.i:                                ; preds = %if.end72.i
  %257 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS76.i = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 15
  %258 = load i32* %GenerateMultiplePPS76.i, align 4, !tbaa !3
  %tobool77.i = icmp eq i32 %258, 0
  br i1 %tobool77.i, label %if.end82.i, label %land.lhs.true78.i

land.lhs.true78.i:                                ; preds = %land.lhs.true75.i
  %259 = load i32* @intras, align 4, !tbaa !3
  %mul.i374 = mul nsw i32 %259, 100
  %FrameSizeInMbs.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 111
  %260 = load i32* %FrameSizeInMbs.i, align 4, !tbaa !3
  %div.i375 = udiv i32 %mul.i374, %260
  %cmp79.i376 = icmp ugt i32 %div.i375, 74
  br i1 %cmp79.i376, label %if.then80.i, label %if.end82.i

if.then80.i:                                      ; preds = %land.lhs.true78.i
  store i32 2, i32* %type73.i, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %land.lhs.true78.i, %land.lhs.true75.i, %if.end72.i
  %write_macroblock83.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 140
  store i32 0, i32* %write_macroblock83.i, align 4, !tbaa !3
  %tobool84.i = icmp eq i32 %skip_encode.1.i, 0
  br i1 %tobool84.i, label %if.else87.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end82.i
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  %qp86.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 10
  store i32 %219, i32* %qp86.i, align 4, !tbaa !3
  %rd_pass100.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 58
  %.pre128.i = load i32* %rd_pass100.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end99.i

if.else87.i:                                      ; preds = %if.end82.i
  %261 = load %struct.Picture** @frame_pic3, align 8, !tbaa !0
  tail call void @frame_picture(%struct.Picture* %261, i32 2) #7
  %262 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %rd_pass88.i = getelementptr inbounds %struct.ImageParameters* %262, i64 0, i32 58
  %263 = load i32* %rd_pass88.i, align 4, !tbaa !3
  %cmp89.i = icmp eq i32 %263, 0
  br i1 %cmp89.i, label %if.then90.i, label %if.else94.i

if.then90.i:                                      ; preds = %if.else87.i
  %264 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  %265 = load %struct.Picture** @frame_pic3, align 8, !tbaa !0
  %call91.i = tail call i32 @picture_coding_decision(%struct.Picture* %264, %struct.Picture* %265, i32 %219) #7
  %mul92.i = shl nsw i32 %call91.i, 1
  %266 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %rd_pass93.i = getelementptr inbounds %struct.ImageParameters* %266, i64 0, i32 58
  store i32 %mul92.i, i32* %rd_pass93.i, align 4, !tbaa !3
  br label %if.end99.i

if.else94.i:                                      ; preds = %if.else87.i
  %267 = load %struct.Picture** @frame_pic2, align 8, !tbaa !0
  %268 = load %struct.Picture** @frame_pic3, align 8, !tbaa !0
  %call95.i = tail call i32 @picture_coding_decision(%struct.Picture* %267, %struct.Picture* %268, i32 %219) #7
  %269 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %rd_pass96.i = getelementptr inbounds %struct.ImageParameters* %269, i64 0, i32 58
  %270 = load i32* %rd_pass96.i, align 4, !tbaa !3
  %add97.i = add i32 %270, %call95.i
  store i32 %add97.i, i32* %rd_pass96.i, align 4, !tbaa !3
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else94.i, %if.then90.i, %if.then85.i
  %271 = phi i32 [ %mul92.i, %if.then90.i ], [ %add97.i, %if.else94.i ], [ %.pre128.i, %if.then85.i ]
  %272 = phi %struct.ImageParameters* [ %266, %if.then90.i ], [ %269, %if.else94.i ], [ %255, %if.then85.i ]
  switch i32 %271, label %if.end61 [
    i32 0, label %if.then102.i
    i32 1, label %if.then108.i
  ]

if.then102.i:                                     ; preds = %if.end99.i
  %273 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  store %struct.storable_picture* %273, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %type103.i = getelementptr inbounds %struct.ImageParameters* %272, i64 0, i32 6
  store i32 %221, i32* %type103.i, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %qp104.i = getelementptr inbounds %struct.ImageParameters* %272, i64 0, i32 10
  store i32 %219, i32* %qp104.i, align 4, !tbaa !3
  store i32 %previntras.0.i, i32* @intras, align 4, !tbaa !3
  br label %if.end61

if.then108.i:                                     ; preds = %if.end99.i
  %274 = load %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  store %struct.storable_picture* %274, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %type109.i = getelementptr inbounds %struct.ImageParameters* %272, i64 0, i32 6
  store i32 %221, i32* %type109.i, align 4, !tbaa !3
  store %struct.pic_parameter_set_rbsp_t* %243, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %qp110.i = getelementptr inbounds %struct.ImageParameters* %272, i64 0, i32 10
  store i32 %242, i32* %qp110.i, align 4, !tbaa !3
  store i32 %previntras.0.i, i32* @intras, align 4, !tbaa !3
  br label %if.end61

if.end61:                                         ; preds = %if.end99.i, %if.then108.i, %if.then102.i, %land.lhs.true58, %lor.lhs.false
  %275 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace62 = getelementptr inbounds %struct.InputParameters* %275, i64 0, i32 92
  %276 = load i32* %MbInterlace62, align 4, !tbaa !3
  %tobool63 = icmp eq i32 %276, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end61
  store i32 0, i32* @mb_adaptive, align 4, !tbaa !3
  br label %if.end65

if.end65:                                         ; preds = %if.end61, %if.then64
  %PicInterlace66 = getelementptr inbounds %struct.InputParameters* %275, i64 0, i32 91
  %277 = load i32* %PicInterlace66, align 4, !tbaa !3
  %cmp67 = icmp eq i32 %277, 2
  %278 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %cmp67, label %if.then68, label %if.else88

if.then68:                                        ; preds = %if.end65
  %FieldControl69 = getelementptr inbounds %struct.ImageParameters* %278, i64 0, i32 134
  store i32 1, i32* %FieldControl69, align 4, !tbaa !3
  %write_macroblock70 = getelementptr inbounds %struct.ImageParameters* %278, i64 0, i32 140
  store i32 0, i32* %write_macroblock70, align 4, !tbaa !3
  %bot_MB = getelementptr inbounds %struct.ImageParameters* %278, i64 0, i32 141
  store i32 0, i32* %bot_MB, align 4, !tbaa !3
  %field_picture71 = getelementptr inbounds %struct.ImageParameters* %278, i64 0, i32 100
  store i32 1, i32* %field_picture71, align 4, !tbaa !3
  %279 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  %280 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  tail call void @field_picture(%struct.Picture* %279, %struct.Picture* %280) #8
  %281 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  %282 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  %283 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  %284 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type.i377 = getelementptr inbounds %struct.ImageParameters* %284, i64 0, i32 6
  %285 = load i32* %type.i377, align 4, !tbaa !3
  %cmp.i378 = icmp eq i32 %285, 1
  %bitdepth_lambda_scale.i = getelementptr inbounds %struct.ImageParameters* %284, i64 0, i32 153
  %286 = load i32* %bitdepth_lambda_scale.i, align 4, !tbaa !3
  %conv1.i379 = sitofp i32 %286 to double
  %qp.i380 = getelementptr inbounds %struct.ImageParameters* %284, i64 0, i32 10
  %287 = load i32* %qp.i380, align 4, !tbaa !3
  %sub.i381 = add nsw i32 %287, -12
  %conv2.i382 = sitofp i32 %sub.i381 to double
  %div.i383 = fdiv double %conv2.i382, 3.000000e+00
  %add.i384 = fadd double %conv1.i379, %div.i383
  %exp2.i = tail call double @exp2(double %add.i384) #3
  %mul.i385 = fmul double %exp2.i, 8.500000e-01
  %conv3.i = select i1 %cmp.i378, double 4.000000e+00, double 1.000000e+00
  %mul4.i386 = fmul double %conv3.i, %mul.i385
  %distortion_y.i = getelementptr inbounds %struct.Picture* %282, i64 0, i32 4
  %288 = load float* %distortion_y.i, align 4, !tbaa !5
  %distortion_u.i = getelementptr inbounds %struct.Picture* %282, i64 0, i32 5
  %289 = load float* %distortion_u.i, align 4, !tbaa !5
  %add5.i = fadd float %288, %289
  %distortion_v.i = getelementptr inbounds %struct.Picture* %282, i64 0, i32 6
  %290 = load float* %distortion_v.i, align 4, !tbaa !5
  %add6.i = fadd float %add5.i, %290
  %distortion_y7.i = getelementptr inbounds %struct.Picture* %281, i64 0, i32 4
  %291 = load float* %distortion_y7.i, align 4, !tbaa !5
  %distortion_u8.i = getelementptr inbounds %struct.Picture* %281, i64 0, i32 5
  %292 = load float* %distortion_u8.i, align 4, !tbaa !5
  %add9.i = fadd float %291, %292
  %distortion_v10.i = getelementptr inbounds %struct.Picture* %281, i64 0, i32 6
  %293 = load float* %distortion_v10.i, align 4, !tbaa !5
  %add11.i = fadd float %add9.i, %293
  %bits_per_picture.i = getelementptr inbounds %struct.Picture* %281, i64 0, i32 3
  %294 = load i32* %bits_per_picture.i, align 4, !tbaa !3
  %bits_per_picture12.i = getelementptr inbounds %struct.Picture* %283, i64 0, i32 3
  %295 = load i32* %bits_per_picture12.i, align 4, !tbaa !3
  %add13.i = add nsw i32 %295, %294
  %bits_per_picture14.i = getelementptr inbounds %struct.Picture* %282, i64 0, i32 3
  %296 = load i32* %bits_per_picture14.i, align 4, !tbaa !3
  %call15.i = tail call i32 @decide_fld_frame(float %add6.i, float %add11.i, i32 %add13.i, i32 %296, double %mul4.i386) #7
  %297 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_flag80 = getelementptr inbounds %struct.ImageParameters* %297, i64 0, i32 57
  store i32 %call15.i, i32* %fld_flag80, align 4, !tbaa !3
  tail call void @update_field_frame_contexts(i32 %call15.i) #7
  %298 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_flag82 = getelementptr inbounds %struct.ImageParameters* %298, i64 0, i32 57
  %299 = load i32* %fld_flag82, align 4, !tbaa !3
  %cmp83 = icmp eq i32 %299, 0
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %298, i64 0, i32 135
  br i1 %cmp83, label %if.then84, label %if.end91

if.then84:                                        ; preds = %if.then68
  store i32 1, i32* %FieldFrame, align 4, !tbaa !3
  br label %if.else96

if.else88:                                        ; preds = %if.end65
  %fld_flag89 = getelementptr inbounds %struct.ImageParameters* %278, i64 0, i32 57
  store i32 0, i32* %fld_flag89, align 4, !tbaa !3
  br label %if.else96

if.end91:                                         ; preds = %if.then68
  store i32 0, i32* %FieldFrame, align 4, !tbaa !3
  br label %if.then94

if.then94:                                        ; preds = %if.end91, %if.end91.thread552
  %.pn = phi %struct.ImageParameters* [ %199, %if.end91.thread552 ], [ %298, %if.end91 ]
  %300 = phi %struct.ImageParameters* [ %199, %if.end91.thread552 ], [ %298, %if.end91 ]
  %301 = load %struct.StatParameters** @stats, align 8
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters* %301, i64 0, i32 30
  %302 = load i32* %em_prev_bits_fld, align 4, !tbaa !3
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters* %301, i64 0, i32 7
  %303 = load i32* %bit_ctr_emulationprevention, align 4, !tbaa !3
  %add95 = add nsw i32 %303, %302
  store i32 %add95, i32* %bit_ctr_emulationprevention, align 4, !tbaa !3
  br label %if.end99

if.else96:                                        ; preds = %if.else88, %if.then84
  %.ph = phi %struct.ImageParameters* [ %278, %if.else88 ], [ %298, %if.then84 ]
  %304 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters* %304, i64 0, i32 29
  %305 = load i32* %em_prev_bits_frm, align 4, !tbaa !3
  %bit_ctr_emulationprevention97 = getelementptr inbounds %struct.StatParameters* %304, i64 0, i32 7
  %306 = load i32* %bit_ctr_emulationprevention97, align 4, !tbaa !3
  %add98 = add nsw i32 %306, %305
  store i32 %add98, i32* %bit_ctr_emulationprevention97, align 4, !tbaa !3
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then94
  %.ph.pn = phi %struct.ImageParameters* [ %.ph, %if.else96 ], [ %.pn, %if.then94 ]
  %307 = phi %struct.ImageParameters* [ %.ph, %if.else96 ], [ %300, %if.then94 ]
  %fld_flag92550 = getelementptr inbounds %struct.ImageParameters* %.ph.pn, i64 0, i32 57
  %type100 = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 6
  %308 = load i32* %type100, align 4, !tbaa !3
  %cmp101 = icmp eq i32 %308, 1
  %.pre546 = load i32* %fld_flag92550, align 4, !tbaa !3
  br i1 %cmp101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.end99
  %pstruct_next_P = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 60
  store i32 %.pre546, i32* %pstruct_next_P, align 4, !tbaa !3
  br label %if.end104

if.end104:                                        ; preds = %if.end99, %if.then102
  %tobool106 = icmp eq i32 %.pre546, 0
  %309 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %309, i16*** @imgY_org, align 8, !tbaa !0
  %310 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %310, i16**** @imgUV_org, align 8, !tbaa !0
  br i1 %tobool106, label %if.else110, label %if.then107

if.then107:                                       ; preds = %if.end104
  %311 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i387 = getelementptr inbounds %struct.SNRParameters* %311, i64 0, i32 0
  store float 0.000000e+00, float* %snr_y.i387, align 4, !tbaa !5
  %snr_u.i388 = getelementptr inbounds %struct.SNRParameters* %311, i64 0, i32 1
  store float 0.000000e+00, float* %snr_u.i388, align 4, !tbaa !5
  %snr_v.i389 = getelementptr inbounds %struct.SNRParameters* %311, i64 0, i32 2
  store float 0.000000e+00, float* %snr_v.i389, align 4, !tbaa !5
  %312 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  tail call fastcc void @writeout_picture(%struct.Picture* %312) #8
  %313 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  tail call fastcc void @writeout_picture(%struct.Picture* %313) #8
  br label %if.end130

if.else110:                                       ; preds = %if.end104
  %314 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace.i = getelementptr inbounds %struct.InputParameters* %314, i64 0, i32 91
  %315 = load i32* %PicInterlace.i, align 4, !tbaa !3
  %cmp.i390 = icmp eq i32 %315, 0
  br i1 %cmp.i390, label %lor.lhs.false.i, label %if.then.i399

lor.lhs.false.i:                                  ; preds = %if.else110
  %MbInterlace.i = getelementptr inbounds %struct.InputParameters* %314, i64 0, i32 92
  %316 = load i32* %MbInterlace.i, align 4, !tbaa !3
  %cmp1.i = icmp eq i32 %316, 0
  br i1 %cmp1.i, label %frame_mode_buffer.exit, label %if.then.i399

if.then.i399:                                     ; preds = %lor.lhs.false.i, %if.else110
  %height.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 15
  %317 = load i32* %height.i, align 4, !tbaa !3
  %div.i391 = sdiv i32 %317, 2
  store i32 %div.i391, i32* %height.i, align 4, !tbaa !3
  %height_cr.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 16
  %318 = load i32* %height_cr.i, align 4, !tbaa !3
  %div3.i = sdiv i32 %318, 2
  store i32 %div3.i, i32* %height_cr.i, align 4, !tbaa !3
  %number.i392 = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 0
  %319 = load i32* %number.i392, align 4, !tbaa !3
  %mul.i393 = shl nsw i32 %319, 1
  %fld_type.i1.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 56
  %inc2.i = or i32 %mul.i393, 1
  store i32 1, i32* %fld_type.i1.i, align 4, !tbaa !3
  %div7.i = sdiv i32 %inc2.i, 2
  store i32 %div7.i, i32* %number.i392, align 4, !tbaa !3
  %img_height.i = getelementptr inbounds %struct.InputParameters* %314, i64 0, i32 17
  %320 = load i32* %img_height.i, align 4, !tbaa !3
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 166
  %321 = load i32* %auto_crop_bottom.i, align 4, !tbaa !3
  %add.i394 = add nsw i32 %321, %320
  store i32 %add.i394, i32* %height.i, align 4, !tbaa !3
  %height_cr_frame.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 17
  %322 = load i32* %height_cr_frame.i, align 4, !tbaa !3
  store i32 %322, i32* %height_cr.i, align 4, !tbaa !3
  %width.i = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 13
  %323 = load i32* %width.i, align 4, !tbaa !3
  %mul11.i = mul nsw i32 %323, %add.i394
  %div12.i = sdiv i32 %mul11.i, 256
  %total_number_mb.i395 = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 4
  store i32 %div12.i, i32* %total_number_mb.i395, align 4, !tbaa !3
  %324 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i396 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 0
  store float 0.000000e+00, float* %snr_y.i396, align 4, !tbaa !5
  %snr_u.i397 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 1
  store float 0.000000e+00, float* %snr_u.i397, align 4, !tbaa !5
  %snr_v.i398 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 2
  store float 0.000000e+00, float* %snr_v.i398, align 4, !tbaa !5
  store i16** %309, i16*** @imgY_org, align 8, !tbaa !0
  store i16*** %310, i16**** @imgUV_org, align 8, !tbaa !0
  br label %frame_mode_buffer.exit

frame_mode_buffer.exit:                           ; preds = %lor.lhs.false.i, %if.then.i399
  %RDPictureDecision111 = getelementptr inbounds %struct.InputParameters* %314, i64 0, i32 49
  %325 = load i32* %RDPictureDecision111, align 4, !tbaa !3
  %tobool112 = icmp eq i32 %325, 0
  br i1 %tobool112, label %if.else126, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %frame_mode_buffer.exit
  %rd_pass114 = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 58
  %326 = load i32* %rd_pass114, align 4, !tbaa !3
  %cmp115 = icmp eq i32 %326, 2
  br i1 %cmp115, label %if.then116, label %land.lhs.true121

if.then116:                                       ; preds = %land.lhs.true113
  %327 = load %struct.Picture** @frame_pic3, align 8, !tbaa !0
  tail call fastcc void @writeout_picture(%struct.Picture* %327) #8
  br label %if.end130

land.lhs.true121:                                 ; preds = %land.lhs.true113
  %rd_pass122 = getelementptr inbounds %struct.ImageParameters* %307, i64 0, i32 58
  %328 = load i32* %rd_pass122, align 4, !tbaa !3
  %cmp123 = icmp eq i32 %328, 1
  br i1 %cmp123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %land.lhs.true121
  %329 = load %struct.Picture** @frame_pic2, align 8, !tbaa !0
  tail call fastcc void @writeout_picture(%struct.Picture* %329) #8
  br label %if.end130

if.else126:                                       ; preds = %frame_mode_buffer.exit, %land.lhs.true121
  %330 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  tail call fastcc void @writeout_picture(%struct.Picture* %330) #8
  br label %if.end130

if.end130:                                        ; preds = %if.then116, %if.else126, %if.then124, %if.then107
  %331 = load %struct.Picture** @frame_pic3, align 8, !tbaa !0
  %tobool131 = icmp eq %struct.Picture* %331, null
  br i1 %tobool131, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end130
  tail call void @free_slice_list(%struct.Picture* %331) #7
  br label %if.end133

if.end133:                                        ; preds = %if.end130, %if.then132
  %332 = load %struct.Picture** @frame_pic2, align 8, !tbaa !0
  %tobool134 = icmp eq %struct.Picture* %332, null
  br i1 %tobool134, label %if.end136, label %if.then135

if.then135:                                       ; preds = %if.end133
  tail call void @free_slice_list(%struct.Picture* %332) #7
  br label %if.end136

if.end136:                                        ; preds = %if.end133, %if.then135
  %333 = load %struct.Picture** @frame_pic, align 8, !tbaa !0
  %tobool137 = icmp eq %struct.Picture* %333, null
  br i1 %tobool137, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end136
  tail call void @free_slice_list(%struct.Picture* %333) #7
  br label %if.end139

if.end139:                                        ; preds = %if.end136, %if.then138
  %334 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  %tobool140 = icmp eq %struct.Picture* %334, null
  br i1 %tobool140, label %if.end142, label %if.then141

if.then141:                                       ; preds = %if.end139
  tail call void @free_slice_list(%struct.Picture* %334) #7
  br label %if.end142

if.end142:                                        ; preds = %if.end139, %if.then141
  %335 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  %tobool143 = icmp eq %struct.Picture* %335, null
  br i1 %tobool143, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end142
  tail call void @free_slice_list(%struct.Picture* %335) #7
  br label %if.end145

if.end145:                                        ; preds = %if.end142, %if.then144
  %336 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable146 = getelementptr inbounds %struct.InputParameters* %336, i64 0, i32 127
  %337 = load i32* %RCEnable146, align 4, !tbaa !3
  %tobool147 = icmp eq i32 %337, 0
  br i1 %tobool147, label %if.end149, label %if.then148

if.then148:                                       ; preds = %if.end145
  %338 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr = getelementptr inbounds %struct.StatParameters* %338, i64 0, i32 4
  %339 = load i32* %bit_ctr, align 4, !tbaa !3
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters* %338, i64 0, i32 5
  %340 = load i32* %bit_ctr_n, align 4, !tbaa !3
  %sub = sub nsw i32 %339, %340
  tail call void @rc_update_pict_frame(i32 %sub) #7
  %.pre543 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end149

if.end149:                                        ; preds = %if.end145, %if.then148
  %341 = phi %struct.InputParameters* [ %.pre543, %if.then148 ], [ %336, %if.end145 ]
  %bits.0 = phi i32 [ %sub, %if.then148 ], [ 0, %if.end145 ]
  %342 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 155
  %343 = load i32* %max_imgpel_value.i, align 4, !tbaa !3
  %mul.i401 = mul nsw i32 %343, %343
  %max_imgpel_value_uv.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 156
  %344 = load i32* %max_imgpel_value_uv.i, align 4, !tbaa !3
  %mul3.i402 = mul nsw i32 %344, %344
  %img_height.i403 = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 17
  %345 = load i32* %img_height.i403, align 4, !tbaa !3
  %img_width.i = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 16
  %346 = load i32* %img_width.i, align 4, !tbaa !3
  %mul4.i404 = mul nsw i32 %346, %345
  %img_height_cr.i = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 137
  %347 = load i32* %img_height_cr.i, align 4, !tbaa !3
  %img_width_cr.i = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 138
  %348 = load i32* %img_width_cr.i, align 4, !tbaa !3
  %mul5.i = mul nsw i32 %348, %347
  %fld_flag.i405 = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 57
  %349 = load i32* %fld_flag.i405, align 4, !tbaa !3
  %cmp.i406 = icmp eq i32 %349, 0
  br i1 %cmp.i406, label %if.else.i416, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end149
  %cmp7486.i = icmp sgt i32 %346, 0
  br i1 %cmp7486.i, label %for.cond8.preheader.lr.ph.i, label %for.end24.i

for.cond8.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp10481.i = icmp sgt i32 %345, 0
  %350 = load i16*** @imgY_org, align 8, !tbaa !0
  %351 = load i16*** @imgY_com, align 8, !tbaa !0
  %quad.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 53
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc22.i, %for.cond8.preheader.lr.ph.i
  %indvars.iv502.i = phi i64 [ 0, %for.cond8.preheader.lr.ph.i ], [ %indvars.iv.next503.i, %for.inc22.i ]
  %diff_y.0487.i = phi i64 [ 0, %for.cond8.preheader.lr.ph.i ], [ %diff_y.1.lcssa.i, %for.inc22.i ]
  br i1 %cmp10481.i, label %for.body11.lr.ph.i, label %for.inc22.i

for.body11.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %352 = load i32** %quad.i, align 8, !tbaa !0
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.lr.ph.i
  %indvars.iv500.i = phi i64 [ 0, %for.body11.lr.ph.i ], [ %indvars.iv.next501.i, %for.body11.i ]
  %diff_y.1482.i = phi i64 [ %diff_y.0487.i, %for.body11.lr.ph.i ], [ %add.i410, %for.body11.i ]
  %arrayidx.i407 = getelementptr inbounds i16** %350, i64 %indvars.iv500.i
  %353 = load i16** %arrayidx.i407, align 8, !tbaa !0
  %arrayidx13.i = getelementptr inbounds i16* %353, i64 %indvars.iv502.i
  %354 = load i16* %arrayidx13.i, align 2, !tbaa !4
  %conv.i408 = zext i16 %354 to i64
  %arrayidx16.i = getelementptr inbounds i16** %351, i64 %indvars.iv500.i
  %355 = load i16** %arrayidx16.i, align 8, !tbaa !0
  %arrayidx17.i = getelementptr inbounds i16* %355, i64 %indvars.iv502.i
  %356 = load i16* %arrayidx17.i, align 2, !tbaa !4
  %conv18.i = zext i16 %356 to i64
  %sub.i409 = sub i64 %conv.i408, %conv18.i
  %arrayidx20.i = getelementptr inbounds i32* %352, i64 %sub.i409
  %357 = load i32* %arrayidx20.i, align 4, !tbaa !3
  %conv21.i = sext i32 %357 to i64
  %add.i410 = add nsw i64 %conv21.i, %diff_y.1482.i
  %indvars.iv.next501.i = add i64 %indvars.iv500.i, 1
  %lftr.wideiv528 = trunc i64 %indvars.iv.next501.i to i32
  %exitcond529 = icmp eq i32 %lftr.wideiv528, %345
  br i1 %exitcond529, label %for.inc22.i, label %for.body11.i

for.inc22.i:                                      ; preds = %for.body11.i, %for.cond8.preheader.i
  %diff_y.1.lcssa.i = phi i64 [ %diff_y.0487.i, %for.cond8.preheader.i ], [ %add.i410, %for.body11.i ]
  %indvars.iv.next503.i = add i64 %indvars.iv502.i, 1
  %lftr.wideiv530 = trunc i64 %indvars.iv.next503.i to i32
  %exitcond531 = icmp eq i32 %lftr.wideiv530, %346
  br i1 %exitcond531, label %for.end24.i, label %for.cond8.preheader.i

for.end24.i:                                      ; preds = %for.inc22.i, %for.cond.preheader.i
  %diff_y.0.lcssa.i = phi i64 [ 0, %for.cond.preheader.i ], [ %diff_y.1.lcssa.i, %for.inc22.i ]
  %yuv_format.i411 = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 159
  %358 = load i32* %yuv_format.i411, align 4, !tbaa !3
  %cmp25.i412 = icmp ne i32 %358, 0
  %cmp30474.i = icmp sgt i32 %348, 0
  %or.cond.i413 = and i1 %cmp25.i412, %cmp30474.i
  br i1 %or.cond.i413, label %for.cond33.preheader.lr.ph.i, label %if.then189.i

for.cond33.preheader.lr.ph.i:                     ; preds = %for.end24.i
  %cmp35466.i = icmp sgt i32 %347, 0
  %359 = load i16**** @imgUV_org, align 8, !tbaa !0
  %360 = load i16**** @imgUV_com, align 8, !tbaa !0
  %quad52.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 53
  %arrayidx58.i = getelementptr inbounds i16*** %359, i64 1
  %arrayidx64.i = getelementptr inbounds i16*** %360, i64 1
  br label %for.cond33.preheader.i

for.cond33.preheader.i:                           ; preds = %for.inc77.i, %for.cond33.preheader.lr.ph.i
  %indvars.iv498.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %indvars.iv.next499.i, %for.inc77.i ]
  %diff_u.0476.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %diff_u.1.lcssa.i, %for.inc77.i ]
  %diff_v.0475.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %diff_v.1.lcssa.i, %for.inc77.i ]
  br i1 %cmp35466.i, label %for.body37.lr.ph.i, label %for.inc77.i

for.body37.lr.ph.i:                               ; preds = %for.cond33.preheader.i
  %361 = load i16*** %359, align 8, !tbaa !0
  %362 = load i16*** %360, align 8, !tbaa !0
  %363 = load i32** %quad52.i, align 8, !tbaa !0
  %364 = load i16*** %arrayidx58.i, align 8, !tbaa !0
  %365 = load i16*** %arrayidx64.i, align 8, !tbaa !0
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.body37.i, %for.body37.lr.ph.i
  %indvars.iv496.i = phi i64 [ 0, %for.body37.lr.ph.i ], [ %indvars.iv.next497.i, %for.body37.i ]
  %diff_u.1468.i = phi i64 [ %diff_u.0476.i, %for.body37.lr.ph.i ], [ %add55.i, %for.body37.i ]
  %diff_v.1467.i = phi i64 [ %diff_v.0475.i, %for.body37.lr.ph.i ], [ %add73.i, %for.body37.i ]
  %arrayidx41.i = getelementptr inbounds i16** %361, i64 %indvars.iv496.i
  %366 = load i16** %arrayidx41.i, align 8, !tbaa !0
  %arrayidx42.i = getelementptr inbounds i16* %366, i64 %indvars.iv498.i
  %367 = load i16* %arrayidx42.i, align 2, !tbaa !4
  %conv43.i = zext i16 %367 to i64
  %arrayidx47.i = getelementptr inbounds i16** %362, i64 %indvars.iv496.i
  %368 = load i16** %arrayidx47.i, align 8, !tbaa !0
  %arrayidx48.i = getelementptr inbounds i16* %368, i64 %indvars.iv498.i
  %369 = load i16* %arrayidx48.i, align 2, !tbaa !4
  %conv49.i = zext i16 %369 to i64
  %sub50.i = sub i64 %conv43.i, %conv49.i
  %arrayidx53.i = getelementptr inbounds i32* %363, i64 %sub50.i
  %370 = load i32* %arrayidx53.i, align 4, !tbaa !3
  %conv54.i = sext i32 %370 to i64
  %add55.i = add nsw i64 %conv54.i, %diff_u.1468.i
  %arrayidx59.i = getelementptr inbounds i16** %364, i64 %indvars.iv496.i
  %371 = load i16** %arrayidx59.i, align 8, !tbaa !0
  %arrayidx60.i = getelementptr inbounds i16* %371, i64 %indvars.iv498.i
  %372 = load i16* %arrayidx60.i, align 2, !tbaa !4
  %conv61.i = zext i16 %372 to i64
  %arrayidx65.i = getelementptr inbounds i16** %365, i64 %indvars.iv496.i
  %373 = load i16** %arrayidx65.i, align 8, !tbaa !0
  %arrayidx66.i = getelementptr inbounds i16* %373, i64 %indvars.iv498.i
  %374 = load i16* %arrayidx66.i, align 2, !tbaa !4
  %conv67.i = zext i16 %374 to i64
  %sub68.i414 = sub i64 %conv61.i, %conv67.i
  %arrayidx71.i = getelementptr inbounds i32* %363, i64 %sub68.i414
  %375 = load i32* %arrayidx71.i, align 4, !tbaa !3
  %conv72.i = sext i32 %375 to i64
  %add73.i = add nsw i64 %conv72.i, %diff_v.1467.i
  %indvars.iv.next497.i = add i64 %indvars.iv496.i, 1
  %lftr.wideiv524 = trunc i64 %indvars.iv.next497.i to i32
  %exitcond525 = icmp eq i32 %lftr.wideiv524, %347
  br i1 %exitcond525, label %for.inc77.i, label %for.body37.i

for.inc77.i:                                      ; preds = %for.body37.i, %for.cond33.preheader.i
  %diff_u.1.lcssa.i = phi i64 [ %diff_u.0476.i, %for.cond33.preheader.i ], [ %add55.i, %for.body37.i ]
  %diff_v.1.lcssa.i = phi i64 [ %diff_v.0475.i, %for.cond33.preheader.i ], [ %add73.i, %for.body37.i ]
  %indvars.iv.next499.i = add i64 %indvars.iv498.i, 1
  %lftr.wideiv526 = trunc i64 %indvars.iv.next499.i to i32
  %exitcond527 = icmp eq i32 %lftr.wideiv526, %348
  br i1 %exitcond527, label %if.then189.i, label %for.cond33.preheader.i

if.else.i416:                                     ; preds = %if.end149
  %376 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %376, i16*** @imgY_org, align 8, !tbaa !0
  %377 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %377, i16**** @imgUV_org, align 8, !tbaa !0
  %PicInterlace.i415 = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 91
  %378 = load i32* %PicInterlace.i415, align 4, !tbaa !3
  %cmp80.i = icmp eq i32 %378, 2
  br i1 %cmp80.i, label %if.then82.i, label %for.cond84.preheader.i

if.then82.i:                                      ; preds = %if.else.i416
  %379 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  store %struct.storable_picture* %379, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  br label %for.cond84.preheader.i

for.cond84.preheader.i:                           ; preds = %if.then82.i, %if.else.i416
  %cmp86461.i = icmp sgt i32 %346, 0
  br i1 %cmp86461.i, label %for.cond89.preheader.lr.ph.i, label %for.end115.i

for.cond89.preheader.lr.ph.i:                     ; preds = %for.cond84.preheader.i
  %cmp91456.i = icmp sgt i32 %345, 0
  %380 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY.i = getelementptr inbounds %struct.storable_picture* %380, i64 0, i32 25
  %quad106.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 53
  br label %for.cond89.preheader.i

for.cond89.preheader.i:                           ; preds = %for.inc113.i, %for.cond89.preheader.lr.ph.i
  %indvars.iv494.i = phi i64 [ 0, %for.cond89.preheader.lr.ph.i ], [ %indvars.iv.next495.i, %for.inc113.i ]
  %diff_y.2462.i = phi i64 [ 0, %for.cond89.preheader.lr.ph.i ], [ %diff_y.3.lcssa.i, %for.inc113.i ]
  br i1 %cmp91456.i, label %for.body93.lr.ph.i, label %for.inc113.i

for.body93.lr.ph.i:                               ; preds = %for.cond89.preheader.i
  %381 = load i16*** %imgY.i, align 8, !tbaa !0
  %382 = load i32** %quad106.i, align 8, !tbaa !0
  br label %for.body93.i

for.body93.i:                                     ; preds = %for.body93.i, %for.body93.lr.ph.i
  %indvars.iv492.i = phi i64 [ 0, %for.body93.lr.ph.i ], [ %indvars.iv.next493.i, %for.body93.i ]
  %diff_y.3457.i = phi i64 [ %diff_y.2462.i, %for.body93.lr.ph.i ], [ %add109.i, %for.body93.i ]
  %arrayidx96.i417 = getelementptr inbounds i16** %376, i64 %indvars.iv492.i
  %383 = load i16** %arrayidx96.i417, align 8, !tbaa !0
  %arrayidx97.i = getelementptr inbounds i16* %383, i64 %indvars.iv494.i
  %384 = load i16* %arrayidx97.i, align 2, !tbaa !4
  %conv98.i = zext i16 %384 to i64
  %arrayidx101.i = getelementptr inbounds i16** %381, i64 %indvars.iv492.i
  %385 = load i16** %arrayidx101.i, align 8, !tbaa !0
  %arrayidx102.i = getelementptr inbounds i16* %385, i64 %indvars.iv494.i
  %386 = load i16* %arrayidx102.i, align 2, !tbaa !4
  %conv103.i = zext i16 %386 to i64
  %sub104.i = sub i64 %conv98.i, %conv103.i
  %arrayidx107.i = getelementptr inbounds i32* %382, i64 %sub104.i
  %387 = load i32* %arrayidx107.i, align 4, !tbaa !3
  %conv108.i = sext i32 %387 to i64
  %add109.i = add nsw i64 %conv108.i, %diff_y.3457.i
  %indvars.iv.next493.i = add i64 %indvars.iv492.i, 1
  %lftr.wideiv520 = trunc i64 %indvars.iv.next493.i to i32
  %exitcond521 = icmp eq i32 %lftr.wideiv520, %345
  br i1 %exitcond521, label %for.inc113.i, label %for.body93.i

for.inc113.i:                                     ; preds = %for.body93.i, %for.cond89.preheader.i
  %diff_y.3.lcssa.i = phi i64 [ %diff_y.2462.i, %for.cond89.preheader.i ], [ %add109.i, %for.body93.i ]
  %indvars.iv.next495.i = add i64 %indvars.iv494.i, 1
  %lftr.wideiv522 = trunc i64 %indvars.iv.next495.i to i32
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %346
  br i1 %exitcond523, label %for.end115.i, label %for.cond89.preheader.i

for.end115.i:                                     ; preds = %for.inc113.i, %for.cond84.preheader.i
  %diff_y.2.lcssa.i = phi i64 [ 0, %for.cond84.preheader.i ], [ %diff_y.3.lcssa.i, %for.inc113.i ]
  %yuv_format116.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 159
  %388 = load i32* %yuv_format116.i, align 4, !tbaa !3
  %cmp117.i = icmp ne i32 %388, 0
  %cmp122449.i = icmp sgt i32 %348, 0
  %or.cond504.i = and i1 %cmp117.i, %cmp122449.i
  br i1 %or.cond504.i, label %for.cond125.preheader.lr.ph.i, label %if.then189.i

for.cond125.preheader.lr.ph.i:                    ; preds = %for.end115.i
  %cmp127443.i = icmp sgt i32 %347, 0
  %389 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV.i = getelementptr inbounds %struct.storable_picture* %389, i64 0, i32 30
  %quad144.i = getelementptr inbounds %struct.ImageParameters* %342, i64 0, i32 53
  %arrayidx150.i = getelementptr inbounds i16*** %377, i64 1
  br label %for.cond125.preheader.i

for.cond125.preheader.i:                          ; preds = %for.inc170.i, %for.cond125.preheader.lr.ph.i
  %indvars.iv490.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %indvars.iv.next491.i, %for.inc170.i ]
  %diff_u.2451.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %diff_u.3.lcssa.i, %for.inc170.i ]
  %diff_v.2450.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %diff_v.3.lcssa.i, %for.inc170.i ]
  br i1 %cmp127443.i, label %for.body129.lr.ph.i, label %for.inc170.i

for.body129.lr.ph.i:                              ; preds = %for.cond125.preheader.i
  %390 = load i16*** %377, align 8, !tbaa !0
  %391 = load i16**** %imgUV.i, align 8, !tbaa !0
  %392 = load i16*** %391, align 8, !tbaa !0
  %393 = load i32** %quad144.i, align 8, !tbaa !0
  %394 = load i16*** %arrayidx150.i, align 8, !tbaa !0
  %arrayidx157.i = getelementptr inbounds i16*** %391, i64 1
  %395 = load i16*** %arrayidx157.i, align 8, !tbaa !0
  br label %for.body129.i

for.body129.i:                                    ; preds = %for.body129.i, %for.body129.lr.ph.i
  %indvars.iv.i418 = phi i64 [ 0, %for.body129.lr.ph.i ], [ %indvars.iv.next.i419, %for.body129.i ]
  %diff_u.3445.i = phi i64 [ %diff_u.2451.i, %for.body129.lr.ph.i ], [ %add147.i, %for.body129.i ]
  %diff_v.3444.i = phi i64 [ %diff_v.2450.i, %for.body129.lr.ph.i ], [ %add166.i, %for.body129.i ]
  %arrayidx133.i = getelementptr inbounds i16** %390, i64 %indvars.iv.i418
  %396 = load i16** %arrayidx133.i, align 8, !tbaa !0
  %arrayidx134.i = getelementptr inbounds i16* %396, i64 %indvars.iv490.i
  %397 = load i16* %arrayidx134.i, align 2, !tbaa !4
  %conv135.i = zext i16 %397 to i64
  %arrayidx139.i = getelementptr inbounds i16** %392, i64 %indvars.iv.i418
  %398 = load i16** %arrayidx139.i, align 8, !tbaa !0
  %arrayidx140.i = getelementptr inbounds i16* %398, i64 %indvars.iv490.i
  %399 = load i16* %arrayidx140.i, align 2, !tbaa !4
  %conv141.i = zext i16 %399 to i64
  %sub142.i = sub i64 %conv135.i, %conv141.i
  %arrayidx145.i = getelementptr inbounds i32* %393, i64 %sub142.i
  %400 = load i32* %arrayidx145.i, align 4, !tbaa !3
  %conv146.i = sext i32 %400 to i64
  %add147.i = add nsw i64 %conv146.i, %diff_u.3445.i
  %arrayidx151.i = getelementptr inbounds i16** %394, i64 %indvars.iv.i418
  %401 = load i16** %arrayidx151.i, align 8, !tbaa !0
  %arrayidx152.i = getelementptr inbounds i16* %401, i64 %indvars.iv490.i
  %402 = load i16* %arrayidx152.i, align 2, !tbaa !4
  %conv153.i = zext i16 %402 to i64
  %arrayidx158.i = getelementptr inbounds i16** %395, i64 %indvars.iv.i418
  %403 = load i16** %arrayidx158.i, align 8, !tbaa !0
  %arrayidx159.i = getelementptr inbounds i16* %403, i64 %indvars.iv490.i
  %404 = load i16* %arrayidx159.i, align 2, !tbaa !4
  %conv160.i = zext i16 %404 to i64
  %sub161.i = sub i64 %conv153.i, %conv160.i
  %arrayidx164.i = getelementptr inbounds i32* %393, i64 %sub161.i
  %405 = load i32* %arrayidx164.i, align 4, !tbaa !3
  %conv165.i = sext i32 %405 to i64
  %add166.i = add nsw i64 %conv165.i, %diff_v.3444.i
  %indvars.iv.next.i419 = add i64 %indvars.iv.i418, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i419 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %347
  br i1 %exitcond, label %for.inc170.i, label %for.body129.i

for.inc170.i:                                     ; preds = %for.body129.i, %for.cond125.preheader.i
  %diff_u.3.lcssa.i = phi i64 [ %diff_u.2451.i, %for.cond125.preheader.i ], [ %add147.i, %for.body129.i ]
  %diff_v.3.lcssa.i = phi i64 [ %diff_v.2450.i, %for.cond125.preheader.i ], [ %add166.i, %for.body129.i ]
  %indvars.iv.next491.i = add i64 %indvars.iv490.i, 1
  %lftr.wideiv518 = trunc i64 %indvars.iv.next491.i to i32
  %exitcond519 = icmp eq i32 %lftr.wideiv518, %348
  br i1 %exitcond519, label %if.then189.i, label %for.cond125.preheader.i

if.then189.i:                                     ; preds = %for.inc77.i, %for.inc170.i, %for.end115.i, %for.end24.i
  %diff_v.4.i = phi i64 [ 0, %for.end24.i ], [ 0, %for.end115.i ], [ %diff_v.3.lcssa.i, %for.inc170.i ], [ %diff_v.1.lcssa.i, %for.inc77.i ]
  %diff_u.4.i = phi i64 [ 0, %for.end24.i ], [ 0, %for.end115.i ], [ %diff_u.3.lcssa.i, %for.inc170.i ], [ %diff_u.1.lcssa.i, %for.inc77.i ]
  %diff_y.4.i = phi i64 [ %diff_y.0.lcssa.i, %for.end24.i ], [ %diff_y.2.lcssa.i, %for.end115.i ], [ %diff_y.2.lcssa.i, %for.inc170.i ], [ %diff_y.0.lcssa.i, %for.inc77.i ]
  %cmp175.i = icmp eq i64 %diff_y.4.i, 0
  %conv190.i = uitofp i32 %mul.i401 to double
  %conv191.i = sitofp i32 %mul4.i404 to double
  %406 = sitofp i64 %diff_y.4.i to double
  %conv192.i = select i1 %cmp175.i, double 1.000000e+00, double %406
  %div.i420 = fdiv double %conv191.i, %conv192.i
  %mul193.i = fmul double %conv190.i, %div.i420
  %call.i421 = tail call double @log10(double %mul193.i) #7
  %mul194.i = fmul double %call.i421, 1.000000e+01
  %conv195.i = fptrunc double %mul194.i to float
  %407 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i422 = getelementptr inbounds %struct.SNRParameters* %407, i64 0, i32 0
  store float %conv195.i, float* %snr_y.i422, align 4, !tbaa !5
  %408 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format196.i = getelementptr inbounds %struct.ImageParameters* %408, i64 0, i32 159
  %409 = load i32* %yuv_format196.i, align 4, !tbaa !3
  %cmp197.i = icmp eq i32 %409, 0
  br i1 %cmp197.i, label %if.else216.i426, label %if.then199.i

if.then199.i:                                     ; preds = %if.then189.i
  %cmp183.i = icmp eq i64 %diff_v.4.i, 0
  %cmp179.i = icmp eq i64 %diff_u.4.i, 0
  %conv200.i = uitofp i32 %mul3.i402 to double
  %conv201.i = sitofp i32 %mul5.i to double
  %410 = sitofp i64 %diff_u.4.i to double
  %conv202.i = select i1 %cmp179.i, double 1.000000e+00, double %410
  %div203.i = fdiv double %conv201.i, %conv202.i
  %mul204.i = fmul double %conv200.i, %div203.i
  %call205.i = tail call double @log10(double %mul204.i) #7
  %mul206.i = fmul double %call205.i, 1.000000e+01
  %conv207.i = fptrunc double %mul206.i to float
  %411 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_u.i423 = getelementptr inbounds %struct.SNRParameters* %411, i64 0, i32 1
  store float %conv207.i, float* %snr_u.i423, align 4, !tbaa !5
  %412 = sitofp i64 %diff_v.4.i to double
  %conv210.i = select i1 %cmp183.i, double 1.000000e+00, double %412
  %div211.i = fdiv double %conv201.i, %conv210.i
  %mul212.i = fmul double %conv200.i, %div211.i
  %call213.i = tail call double @log10(double %mul212.i) #7
  %mul214.i = fmul double %call213.i, 1.000000e+01
  %conv215.i = fptrunc double %mul214.i to float
  %413 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_v.i424 = getelementptr inbounds %struct.SNRParameters* %413, i64 0, i32 2
  store float %conv215.i, float* %snr_v.i424, align 4, !tbaa !5
  %.pre.i425 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end220.i

if.else216.i426:                                  ; preds = %if.then189.i
  %snr_u217.i = getelementptr inbounds %struct.SNRParameters* %407, i64 0, i32 1
  store float 0.000000e+00, float* %snr_u217.i, align 4, !tbaa !5
  %snr_v218.i = getelementptr inbounds %struct.SNRParameters* %407, i64 0, i32 2
  store float 0.000000e+00, float* %snr_v218.i, align 4, !tbaa !5
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else216.i426, %if.then199.i
  %414 = phi float [ %conv215.i, %if.then199.i ], [ 0.000000e+00, %if.else216.i426 ]
  %415 = phi %struct.SNRParameters* [ %413, %if.then199.i ], [ %407, %if.else216.i426 ]
  %416 = phi %struct.ImageParameters* [ %.pre.i425, %if.then199.i ], [ %408, %if.else216.i426 ]
  %number.i427 = getelementptr inbounds %struct.ImageParameters* %416, i64 0, i32 0
  %417 = load i32* %number.i427, align 4, !tbaa !3
  %cmp221.i = icmp eq i32 %417, 0
  br i1 %cmp221.i, label %if.then223.i, label %if.else245.i

if.then223.i:                                     ; preds = %if.end220.i
  %snr_y224.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 0
  %418 = load float* %snr_y224.i, align 4, !tbaa !5
  %snr_y1.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 3
  store float %418, float* %snr_y1.i, align 4, !tbaa !5
  %snr_u225.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 1
  %419 = load float* %snr_u225.i, align 4, !tbaa !5
  %snr_u1.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 4
  store float %419, float* %snr_u1.i, align 4, !tbaa !5
  %snr_v1.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 5
  store float %414, float* %snr_v1.i, align 4, !tbaa !5
  %snr_ya.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 9
  store float %418, float* %snr_ya.i, align 4, !tbaa !5
  %snr_ua.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 10
  store float %419, float* %snr_ua.i, align 4, !tbaa !5
  %snr_va.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 11
  store float %414, float* %snr_va.i, align 4, !tbaa !5
  %arrayidx234.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 6, i64 0
  %420 = bitcast float* %arrayidx234.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %420, i8 0, i64 36, i32 4, i1 false) #1
  br label %if.end285.i

if.else245.i:                                     ; preds = %if.end220.i
  %snr_ya246.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 9
  %421 = load float* %snr_ya246.i, align 4, !tbaa !5
  %422 = load i32* @Bframe_ctr, align 4, !tbaa !3
  %add248.i = add nsw i32 %422, %417
  %conv249.i = sitofp i32 %add248.i to float
  %mul250.i = fmul float %421, %conv249.i
  %snr_y251.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 0
  %423 = load float* %snr_y251.i, align 4, !tbaa !5
  %add252.i = fadd float %423, %mul250.i
  %add255.i = add nsw i32 %add248.i, 1
  %conv256.i = sitofp i32 %add255.i to float
  %div257.i = fdiv float %add252.i, %conv256.i
  store float %div257.i, float* %snr_ya246.i, align 4, !tbaa !5
  %snr_ua259.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 10
  %424 = load float* %snr_ua259.i, align 4, !tbaa !5
  %mul263.i = fmul float %conv249.i, %424
  %snr_u264.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 1
  %425 = load float* %snr_u264.i, align 4, !tbaa !5
  %add265.i = fadd float %425, %mul263.i
  %div270.i = fdiv float %add265.i, %conv256.i
  store float %div270.i, float* %snr_ua259.i, align 4, !tbaa !5
  %snr_va272.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 11
  %426 = load float* %snr_va272.i, align 4, !tbaa !5
  %mul276.i = fmul float %conv249.i, %426
  %add278.i = fadd float %414, %mul276.i
  %div283.i = fdiv float %add278.i, %conv256.i
  store float %div283.i, float* %snr_va272.i, align 4, !tbaa !5
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.else245.i, %if.then223.i
  %427 = phi float [ %425, %if.else245.i ], [ %419, %if.then223.i ]
  %428 = phi float [ %423, %if.else245.i ], [ %418, %if.then223.i ]
  %type.i428 = getelementptr inbounds %struct.ImageParameters* %416, i64 0, i32 6
  %429 = load i32* %type.i428, align 4, !tbaa !3
  switch i32 %429, label %if.else360.i [
    i32 2, label %if.then288.i
    i32 1, label %if.then326.i
  ]

if.then288.i:                                     ; preds = %if.end285.i
  %arrayidx290.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 6, i64 2
  %430 = load float* %arrayidx290.i, align 4, !tbaa !5
  %431 = load i32* @Iframe_ctr, align 4, !tbaa !3
  %sub291.i = add nsw i32 %431, -1
  %conv292.i = sitofp i32 %sub291.i to float
  %mul293.i = fmul float %430, %conv292.i
  %add295.i = fadd float %428, %mul293.i
  %conv296.i = sitofp i32 %431 to float
  %div297.i = fdiv float %add295.i, %conv296.i
  store float %div297.i, float* %arrayidx290.i, align 4, !tbaa !5
  %arrayidx301.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 7, i64 2
  %432 = load float* %arrayidx301.i, align 4, !tbaa !5
  %mul304.i = fmul float %432, %conv292.i
  %add306.i = fadd float %427, %mul304.i
  %div308.i = fdiv float %add306.i, %conv296.i
  store float %div308.i, float* %arrayidx301.i, align 4, !tbaa !5
  %arrayidx312.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 8, i64 2
  %433 = load float* %arrayidx312.i, align 4, !tbaa !5
  %mul315.i = fmul float %conv292.i, %433
  %add317.i = fadd float %414, %mul315.i
  %div319.i = fdiv float %add317.i, %conv296.i
  store float %div319.i, float* %arrayidx312.i, align 4, !tbaa !5
  br label %find_snr.exit

if.then326.i:                                     ; preds = %if.end285.i
  %arrayidx328.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 6, i64 1
  %434 = load float* %arrayidx328.i, align 4, !tbaa !5
  %435 = load i32* @Bframe_ctr, align 4, !tbaa !3
  %sub329.i = add nsw i32 %435, -1
  %conv330.i = sitofp i32 %sub329.i to float
  %mul331.i = fmul float %434, %conv330.i
  %add333.i = fadd float %428, %mul331.i
  %conv334.i = sitofp i32 %435 to float
  %div335.i = fdiv float %add333.i, %conv334.i
  store float %div335.i, float* %arrayidx328.i, align 4, !tbaa !5
  %arrayidx339.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 7, i64 1
  %436 = load float* %arrayidx339.i, align 4, !tbaa !5
  %mul342.i = fmul float %436, %conv330.i
  %add344.i = fadd float %427, %mul342.i
  %div346.i = fdiv float %add344.i, %conv334.i
  store float %div346.i, float* %arrayidx339.i, align 4, !tbaa !5
  %arrayidx350.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 8, i64 1
  %437 = load float* %arrayidx350.i, align 4, !tbaa !5
  %mul353.i = fmul float %conv330.i, %437
  %add355.i = fadd float %414, %mul353.i
  %div357.i = fdiv float %add355.i, %conv334.i
  store float %div357.i, float* %arrayidx350.i, align 4, !tbaa !5
  br label %find_snr.exit

if.else360.i:                                     ; preds = %if.end285.i
  %arrayidx362.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 6, i64 0
  %438 = load float* %arrayidx362.i, align 4, !tbaa !5
  %439 = load i32* @Pframe_ctr, align 4, !tbaa !3
  %sub363.i = add nsw i32 %439, -1
  %conv364.i = sitofp i32 %sub363.i to float
  %mul365.i = fmul float %438, %conv364.i
  %add367.i = fadd float %428, %mul365.i
  %conv368.i = sitofp i32 %439 to float
  %div369.i = fdiv float %add367.i, %conv368.i
  store float %div369.i, float* %arrayidx362.i, align 4, !tbaa !5
  %arrayidx373.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 7, i64 0
  %440 = load float* %arrayidx373.i, align 4, !tbaa !5
  %mul376.i = fmul float %440, %conv364.i
  %add378.i = fadd float %427, %mul376.i
  %div380.i = fdiv float %add378.i, %conv368.i
  store float %div380.i, float* %arrayidx373.i, align 4, !tbaa !5
  %arrayidx384.i = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 8, i64 0
  %441 = load float* %arrayidx384.i, align 4, !tbaa !5
  %mul387.i = fmul float %conv364.i, %441
  %add389.i = fadd float %414, %mul387.i
  %div391.i = fdiv float %add389.i, %conv368.i
  store float %div391.i, float* %arrayidx384.i, align 4, !tbaa !5
  br label %find_snr.exit

find_snr.exit:                                    ; preds = %if.then288.i, %if.then326.i, %if.else360.i
  %442 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace164 = getelementptr inbounds %struct.InputParameters* %442, i64 0, i32 91
  %443 = load i32* %PicInterlace164, align 4, !tbaa !3
  %cmp165 = icmp eq i32 %443, 2
  %444 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_flag168 = getelementptr inbounds %struct.ImageParameters* %444, i64 0, i32 57
  %445 = load i32* %fld_flag168, align 4, !tbaa !3
  %tobool169 = icmp ne i32 %445, 0
  br i1 %cmp165, label %if.then167, label %if.else173

if.then167:                                       ; preds = %find_snr.exit
  br i1 %tobool169, label %if.then170, label %if.else171

if.then170:                                       ; preds = %if.then167
  %446 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %446) #7
  %447 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %447) #7
  br label %if.end191

if.else171:                                       ; preds = %if.then167
  %448 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  tail call void @replace_top_pic_with_frame(%struct.storable_picture* %448) #7
  %449 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %449) #7
  br label %if.end191

if.else173:                                       ; preds = %find_snr.exit
  br i1 %tobool169, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.else173
  %450 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %450) #7
  br label %if.end191

if.else177:                                       ; preds = %if.else173
  %rd_pass178 = getelementptr inbounds %struct.ImageParameters* %444, i64 0, i32 58
  %451 = load i32* %rd_pass178, align 4, !tbaa !3
  switch i32 %451, label %if.else187 [
    i32 2, label %if.then181
    i32 1, label %if.then186
  ]

if.then181:                                       ; preds = %if.else177
  %452 = load %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %452) #7
  %453 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %453) #7
  %454 = load %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %454) #7
  br label %if.end191

if.then186:                                       ; preds = %if.else177
  %455 = load %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %455) #7
  %456 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %456) #7
  %457 = load %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %457) #7
  br label %if.end191

if.else187:                                       ; preds = %if.else177
  %458 = load %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %458) #7
  %459 = load %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %459) #7
  %460 = load %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  tail call void @free_storable_picture(%struct.storable_picture* %460) #7
  br label %if.end191

if.end191:                                        ; preds = %if.then176, %if.then186, %if.else187, %if.then181, %if.then170, %if.else171
  %461 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr192 = getelementptr inbounds %struct.StatParameters* %461, i64 0, i32 4
  %462 = load i32* %bit_ctr192, align 4, !tbaa !3
  %bit_ctr_n193 = getelementptr inbounds %struct.StatParameters* %461, i64 0, i32 5
  %463 = load i32* %bit_ctr_n193, align 4, !tbaa !3
  %sub194 = sub nsw i32 %462, %463
  %conv195 = sext i32 %sub194 to i64
  %464 = load i64* @total_frame_buffer, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %464
  store i64 %conv195, i64* %arrayidx, align 8, !tbaa !7
  %inc196 = add i64 %464, 1
  store i64 %inc196, i64* @total_frame_buffer, align 8, !tbaa !7
  %465 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters* %465, i64 0, i32 91
  %466 = load i32* %pic_order_cnt_type, align 4, !tbaa !3
  %cmp197 = icmp eq i32 %466, 2
  br i1 %cmp197, label %if.then199, label %if.end212

if.then199:                                       ; preds = %if.end191
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %465, i64 0, i32 113
  %467 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %tobool200 = icmp eq i32 %467, 0
  br i1 %tobool200, label %if.then201, label %if.end204

if.then201:                                       ; preds = %if.then199
  %468 = load i32* @encode_one_frame.consecutive_non_reference_pictures, align 4, !tbaa !3
  %inc202 = add nsw i32 %468, 1
  br label %if.end204

if.end204:                                        ; preds = %if.then199, %if.then201
  %storemerge = phi i32 [ %inc202, %if.then201 ], [ 0, %if.then199 ]
  store i32 %storemerge, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4, !tbaa !3
  %469 = load i32* @frame_no, align 4, !tbaa !3
  %470 = load i32* @encode_one_frame.prev_frame_no, align 4, !tbaa !3
  %cmp205 = icmp slt i32 %469, %470
  %cmp208 = icmp sgt i32 %storemerge, 1
  %or.cond = or i1 %cmp205, %cmp208
  br i1 %or.cond, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.end204
  tail call void @error(i8* getelementptr inbounds ([137 x i8]* @.str, i64 0, i64 0), i32 -1) #7
  %.pre544 = load i32* @frame_no, align 4, !tbaa !3
  %.pre545.pre = load %struct.StatParameters** @stats, align 8, !tbaa !0
  br label %if.end211

if.end211:                                        ; preds = %if.end204, %if.then210
  %.pre545 = phi %struct.StatParameters* [ %461, %if.end204 ], [ %.pre545.pre, %if.then210 ]
  %471 = phi i32 [ %469, %if.end204 ], [ %.pre544, %if.then210 ]
  store i32 %471, i32* @encode_one_frame.prev_frame_no, align 4, !tbaa !3
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end191
  %472 = phi %struct.StatParameters* [ %.pre545, %if.end211 ], [ %461, %if.end191 ]
  %bit_ctr_parametersets_n213 = getelementptr inbounds %struct.StatParameters* %472, i64 0, i32 33
  %473 = load i32* %bit_ctr_parametersets_n213, align 4, !tbaa !3
  %cmp214 = icmp eq i32 %473, 0
  br i1 %cmp214, label %if.end217, label %if.then216

if.then216:                                       ; preds = %if.end212
  %474 = load i32* @frame_no, align 4, !tbaa !3
  %call.i429 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i32 %474, i32 %473) #7
  br label %if.end217

if.end217:                                        ; preds = %if.end212, %if.then216
  %475 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number218 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 0
  %476 = load i32* %number218, align 4, !tbaa !3
  %477 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %cmp220 = icmp eq i32 %476, %477
  br i1 %cmp220, label %if.then222, label %if.else223

if.then222:                                       ; preds = %if.end217
  %478 = load i32* @me_time, align 4, !tbaa !3
  %479 = load i32* @frame_no, align 4, !tbaa !3
  %480 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr.i430 = getelementptr inbounds %struct.StatParameters* %480, i64 0, i32 4
  %481 = load i32* %bit_ctr.i430, align 4, !tbaa !3
  %bit_ctr_n.i431 = getelementptr inbounds %struct.StatParameters* %480, i64 0, i32 5
  %482 = load i32* %bit_ctr_n.i431, align 4, !tbaa !3
  %sub.i432 = sub nsw i32 %481, %482
  %qp.i433 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 10
  %483 = load i32* %qp.i433, align 4, !tbaa !3
  %484 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i434 = getelementptr inbounds %struct.SNRParameters* %484, i64 0, i32 0
  %485 = load float* %snr_y.i434, align 4, !tbaa !5
  %conv.i435 = fpext float %485 to double
  %snr_u.i436 = getelementptr inbounds %struct.SNRParameters* %484, i64 0, i32 1
  %486 = load float* %snr_u.i436, align 4, !tbaa !5
  %conv1.i437 = fpext float %486 to double
  %snr_v.i438 = getelementptr inbounds %struct.SNRParameters* %484, i64 0, i32 2
  %487 = load float* %snr_v.i438, align 4, !tbaa !5
  %conv2.i439 = fpext float %487 to double
  %fld_flag.i440 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 57
  %488 = load i32* %fld_flag.i440, align 4, !tbaa !3
  %tobool.i441 = icmp ne i32 %488, 0
  %cond.i442 = select i1 %tobool.i441, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)
  %489 = load i32* @intras, align 4, !tbaa !3
  %call.i443 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str16, i64 0, i64 0), i32 %479, i32 %sub.i432, i32 0, i32 %483, double %conv.i435, double %conv1.i437, double %conv2.i439, i32 0, i32 %478, i8* %cond.i442, i32 %489) #7
  %490 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable.i444 = getelementptr inbounds %struct.InputParameters* %490, i64 0, i32 127
  %491 = load i32* %RCEnable.i444, align 4, !tbaa !3
  %tobool3.i = icmp eq i32 %491, 0
  br i1 %tobool3.i, label %ReportFirstframe.exit, label %if.then.i446

if.then.i446:                                     ; preds = %if.then222
  %PicInterlace.i445 = getelementptr inbounds %struct.InputParameters* %490, i64 0, i32 91
  %492 = load i32* %PicInterlace.i445, align 4, !tbaa !3
  %tobool4.i = icmp eq i32 %492, 0
  br i1 %tobool4.i, label %land.lhs.true.i448, label %if.else.i449

land.lhs.true.i448:                               ; preds = %if.then.i446
  %MbInterlace.i447 = getelementptr inbounds %struct.InputParameters* %490, i64 0, i32 92
  %493 = load i32* %MbInterlace.i447, align 4, !tbaa !3
  %tobool5.i = icmp eq i32 %493, 0
  br i1 %tobool5.i, label %ReportFirstframe.exit, label %if.else.i449

if.else.i449:                                     ; preds = %land.lhs.true.i448, %if.then.i446
  %494 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr10.i = getelementptr inbounds %struct.StatParameters* %494, i64 0, i32 4
  %495 = load i32* %bit_ctr10.i, align 4, !tbaa !3
  store i32 %495, i32* @Iprev_bits, align 4, !tbaa !3
  br label %ReportFirstframe.exit

ReportFirstframe.exit:                            ; preds = %land.lhs.true.i448, %if.then222, %if.else.i449
  %496 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr14.i = getelementptr inbounds %struct.StatParameters* %496, i64 0, i32 4
  %497 = load i32* %bit_ctr14.i, align 4, !tbaa !3
  %bit_ctr_I.i = getelementptr inbounds %struct.StatParameters* %496, i64 0, i32 14
  store i32 %497, i32* %bit_ctr_I.i, align 4, !tbaa !3
  store i32 0, i32* %bit_ctr14.i, align 4, !tbaa !3
  br label %if.end268

if.else223:                                       ; preds = %if.end217
  %498 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable224 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 127
  %499 = load i32* %RCEnable224, align 4, !tbaa !3
  %tobool225 = icmp eq i32 %499, 0
  br i1 %tobool225, label %if.end241, label %if.then226

if.then226:                                       ; preds = %if.else223
  %PicInterlace227 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 91
  %500 = load i32* %PicInterlace227, align 4, !tbaa !3
  %tobool228 = icmp eq i32 %500, 0
  br i1 %tobool228, label %land.lhs.true229, label %if.else236

land.lhs.true229:                                 ; preds = %if.then226
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 92
  %501 = load i32* %MbInterlace230, align 4, !tbaa !3
  %tobool231 = icmp eq i32 %501, 0
  br i1 %tobool231, label %if.then232, label %if.else236

if.then232:                                       ; preds = %land.lhs.true229
  %502 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr233 = getelementptr inbounds %struct.StatParameters* %502, i64 0, i32 4
  %503 = load i32* %bit_ctr233, align 4, !tbaa !3
  %bit_ctr_n234 = getelementptr inbounds %struct.StatParameters* %502, i64 0, i32 5
  %504 = load i32* %bit_ctr_n234, align 4, !tbaa !3
  %sub235 = sub nsw i32 %503, %504
  br label %if.end241

if.else236:                                       ; preds = %land.lhs.true229, %if.then226
  %505 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr237 = getelementptr inbounds %struct.StatParameters* %505, i64 0, i32 4
  %506 = load i32* %bit_ctr237, align 4, !tbaa !3
  %507 = load i32* @Pprev_bits, align 4, !tbaa !3
  %sub238 = sub nsw i32 %506, %507
  store i32 %506, i32* @Pprev_bits, align 4, !tbaa !3
  br label %if.end241

if.end241:                                        ; preds = %if.else223, %if.then232, %if.else236
  %bits.1 = phi i32 [ %sub238, %if.else236 ], [ %sub235, %if.then232 ], [ %bits.0, %if.else223 ]
  %type242 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 6
  %508 = load i32* %type242, align 4, !tbaa !3
  switch i32 %508, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb247
    i32 1, label %sw.bb252
  ]

sw.bb:                                            ; preds = %if.end241
  %509 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr243 = getelementptr inbounds %struct.StatParameters* %509, i64 0, i32 4
  %510 = load i32* %bit_ctr243, align 4, !tbaa !3
  %bit_ctr_n244 = getelementptr inbounds %struct.StatParameters* %509, i64 0, i32 5
  %511 = load i32* %bit_ctr_n244, align 4, !tbaa !3
  %sub245 = sub i32 %510, %511
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %509, i64 0, i32 14
  %512 = load i32* %bit_ctr_I, align 4, !tbaa !3
  %add246 = add nsw i32 %sub245, %512
  store i32 %add246, i32* %bit_ctr_I, align 4, !tbaa !3
  %513 = load i32* @me_time, align 4, !tbaa !3
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 49
  %514 = load %struct.Picture** %currentPicture.i, align 8, !tbaa !0
  %idr_flag.i = getelementptr inbounds %struct.Picture* %514, i64 0, i32 1
  %515 = load i32* %idr_flag.i, align 4, !tbaa !3
  %cmp.i450 = icmp eq i32 %515, 1
  %516 = load i32* @frame_no, align 4, !tbaa !3
  %qp.i454 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 10
  %517 = load i32* %qp.i454, align 4, !tbaa !3
  %518 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i455 = getelementptr inbounds %struct.SNRParameters* %518, i64 0, i32 0
  %519 = load float* %snr_y.i455, align 4, !tbaa !5
  %conv.i456 = fpext float %519 to double
  %snr_u.i457 = getelementptr inbounds %struct.SNRParameters* %518, i64 0, i32 1
  %520 = load float* %snr_u.i457, align 4, !tbaa !5
  %conv1.i458 = fpext float %520 to double
  %snr_v.i459 = getelementptr inbounds %struct.SNRParameters* %518, i64 0, i32 2
  %521 = load float* %snr_v.i459, align 4, !tbaa !5
  %conv2.i460 = fpext float %521 to double
  %fld_flag.i461 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 57
  %522 = load i32* %fld_flag.i461, align 4, !tbaa !3
  %tobool.i462 = icmp ne i32 %522, 0
  %cond.i463 = select i1 %tobool.i462, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)
  %523 = load i32* @intras, align 4, !tbaa !3
  br i1 %cmp.i450, label %if.then.i465, label %if.else.i466

if.then.i465:                                     ; preds = %sw.bb
  %call.i464 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str16, i64 0, i64 0), i32 %516, i32 %sub245, i32 0, i32 %517, double %conv.i456, double %conv1.i458, double %conv2.i460, i32 0, i32 %513, i8* %cond.i463, i32 %523) #7
  br label %if.end268

if.else.i466:                                     ; preds = %sw.bb
  %call16.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str17, i64 0, i64 0), i32 %516, i32 %sub245, i32 0, i32 %517, double %conv.i456, double %conv1.i458, double %conv2.i460, i32 0, i32 %513, i8* %cond.i463, i32 %523) #7
  br label %if.end268

sw.bb247:                                         ; preds = %if.end241
  %524 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr248 = getelementptr inbounds %struct.StatParameters* %524, i64 0, i32 4
  %525 = load i32* %bit_ctr248, align 4, !tbaa !3
  %bit_ctr_n249 = getelementptr inbounds %struct.StatParameters* %524, i64 0, i32 5
  %526 = load i32* %bit_ctr_n249, align 4, !tbaa !3
  %sub250 = sub i32 %525, %526
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters* %524, i64 0, i32 15
  %527 = load i32* %bit_ctr_P, align 4, !tbaa !3
  %add251 = add nsw i32 %sub250, %527
  store i32 %add251, i32* %bit_ctr_P, align 4, !tbaa !3
  %528 = load i32* @me_time, align 4, !tbaa !3
  %529 = load i32* @frame_no, align 4, !tbaa !3
  %530 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag.i471 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %530, i64 0, i32 19
  %531 = load i32* %weighted_pred_flag.i471, align 4, !tbaa !1
  %qp.i472 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 10
  %532 = load i32* %qp.i472, align 4, !tbaa !3
  %533 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i473 = getelementptr inbounds %struct.SNRParameters* %533, i64 0, i32 0
  %534 = load float* %snr_y.i473, align 4, !tbaa !5
  %conv.i474 = fpext float %534 to double
  %snr_u.i475 = getelementptr inbounds %struct.SNRParameters* %533, i64 0, i32 1
  %535 = load float* %snr_u.i475, align 4, !tbaa !5
  %conv1.i476 = fpext float %535 to double
  %snr_v.i477 = getelementptr inbounds %struct.SNRParameters* %533, i64 0, i32 2
  %536 = load float* %snr_v.i477, align 4, !tbaa !5
  %conv2.i478 = fpext float %536 to double
  %fld_flag.i479 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 57
  %537 = load i32* %fld_flag.i479, align 4, !tbaa !3
  %tobool.i480 = icmp ne i32 %537, 0
  %cond.i481 = select i1 %tobool.i480, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)
  %538 = load i32* @intras, align 4, !tbaa !3
  %call.i482 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str15, i64 0, i64 0), i32 %529, i32 %sub250, i32 %531, i32 %532, double %conv.i474, double %conv1.i476, double %conv2.i478, i32 0, i32 %528, i8* %cond.i481, i32 %538) #7
  br label %if.end268

sw.bb252:                                         ; preds = %if.end241
  %539 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr253 = getelementptr inbounds %struct.StatParameters* %539, i64 0, i32 4
  %540 = load i32* %bit_ctr253, align 4, !tbaa !3
  %bit_ctr_n254 = getelementptr inbounds %struct.StatParameters* %539, i64 0, i32 5
  %541 = load i32* %bit_ctr_n254, align 4, !tbaa !3
  %sub255 = sub i32 %540, %541
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters* %539, i64 0, i32 16
  %542 = load i32* %bit_ctr_B, align 4, !tbaa !3
  %add256 = add nsw i32 %sub255, %542
  store i32 %add256, i32* %bit_ctr_B, align 4, !tbaa !3
  %nal_reference_idc257 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 113
  %543 = load i32* %nal_reference_idc257, align 4, !tbaa !3
  %cmp258 = icmp sgt i32 %543, 0
  %544 = load i32* @me_time, align 4, !tbaa !3
  %545 = load i32* @frame_no, align 4, !tbaa !3
  %546 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %546, i64 0, i32 20
  %547 = load i32* %weighted_bipred_idc.i, align 4, !tbaa !3
  %qp.i486 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 10
  %548 = load i32* %qp.i486, align 4, !tbaa !3
  %549 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i487 = getelementptr inbounds %struct.SNRParameters* %549, i64 0, i32 0
  %550 = load float* %snr_y.i487, align 4, !tbaa !5
  %conv.i488 = fpext float %550 to double
  %snr_u.i489 = getelementptr inbounds %struct.SNRParameters* %549, i64 0, i32 1
  %551 = load float* %snr_u.i489, align 4, !tbaa !5
  %conv1.i490 = fpext float %551 to double
  %snr_v.i491 = getelementptr inbounds %struct.SNRParameters* %549, i64 0, i32 2
  %552 = load float* %snr_v.i491, align 4, !tbaa !5
  %conv2.i492 = fpext float %552 to double
  %fld_flag.i493 = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 57
  %553 = load i32* %fld_flag.i493, align 4, !tbaa !3
  %tobool.i494 = icmp ne i32 %553, 0
  %cond.i495 = select i1 %tobool.i494, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)
  %554 = load i32* @intras, align 4, !tbaa !3
  %direct_spatial_mv_pred_flag.i = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 78
  %555 = load i32* %direct_spatial_mv_pred_flag.i, align 4, !tbaa !3
  br i1 %cmp258, label %if.then260, label %if.else261

if.then260:                                       ; preds = %sw.bb252
  %call.i496 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str14, i64 0, i64 0), i32 %545, i32 %sub255, i32 %547, i32 %548, double %conv.i488, double %conv1.i490, double %conv2.i492, i32 0, i32 %544, i8* %cond.i495, i32 %554, i32 %555) #7
  br label %if.end268

if.else261:                                       ; preds = %sw.bb252
  %call.i512 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str13, i64 0, i64 0), i32 %545, i32 %sub255, i32 %547, i32 %548, double %conv.i488, double %conv1.i490, double %conv2.i492, i32 0, i32 %544, i8* %cond.i495, i32 %554, i32 %555) #7
  br label %if.end268

sw.default:                                       ; preds = %if.end241
  %556 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr263 = getelementptr inbounds %struct.StatParameters* %556, i64 0, i32 4
  %557 = load i32* %bit_ctr263, align 4, !tbaa !3
  %bit_ctr_n264 = getelementptr inbounds %struct.StatParameters* %556, i64 0, i32 5
  %558 = load i32* %bit_ctr_n264, align 4, !tbaa !3
  %sub265 = sub i32 %557, %558
  %bit_ctr_P266 = getelementptr inbounds %struct.StatParameters* %556, i64 0, i32 15
  %559 = load i32* %bit_ctr_P266, align 4, !tbaa !3
  %add267 = add nsw i32 %sub265, %559
  store i32 %add267, i32* %bit_ctr_P266, align 4, !tbaa !3
  %560 = load i32* @me_time, align 4, !tbaa !3
  %561 = load i32* @frame_no, align 4, !tbaa !3
  %562 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %562, i64 0, i32 19
  %563 = load i32* %weighted_pred_flag.i, align 4, !tbaa !1
  %qp.i = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 10
  %564 = load i32* %qp.i, align 4, !tbaa !3
  %565 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i = getelementptr inbounds %struct.SNRParameters* %565, i64 0, i32 0
  %566 = load float* %snr_y.i, align 4, !tbaa !5
  %conv.i = fpext float %566 to double
  %snr_u.i = getelementptr inbounds %struct.SNRParameters* %565, i64 0, i32 1
  %567 = load float* %snr_u.i, align 4, !tbaa !5
  %conv1.i = fpext float %567 to double
  %snr_v.i = getelementptr inbounds %struct.SNRParameters* %565, i64 0, i32 2
  %568 = load float* %snr_v.i, align 4, !tbaa !5
  %conv2.i = fpext float %568 to double
  %fld_flag.i = getelementptr inbounds %struct.ImageParameters* %475, i64 0, i32 57
  %569 = load i32* %fld_flag.i, align 4, !tbaa !3
  %tobool.i = icmp ne i32 %569, 0
  %cond.i = select i1 %tobool.i, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)
  %570 = load i32* @intras, align 4, !tbaa !3
  %call.i = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i32 %561, i32 %sub265, i32 %563, i32 %564, double %conv.i, double %conv1.i, double %conv2.i, i32 0, i32 %560, i8* %cond.i, i32 %570) #7
  br label %if.end268

if.end268:                                        ; preds = %if.else.i466, %if.then.i465, %sw.bb247, %sw.default, %if.else261, %if.then260, %ReportFirstframe.exit
  %bits.2 = phi i32 [ %bits.0, %ReportFirstframe.exit ], [ %bits.1, %sw.default ], [ %bits.1, %if.then260 ], [ %bits.1, %if.else261 ], [ %bits.1, %sw.bb247 ], [ %bits.1, %if.then.i465 ], [ %bits.1, %if.else.i466 ]
  %571 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr269 = getelementptr inbounds %struct.StatParameters* %571, i64 0, i32 4
  %572 = load i32* %bit_ctr269, align 4, !tbaa !3
  %bit_ctr_n270 = getelementptr inbounds %struct.StatParameters* %571, i64 0, i32 5
  store i32 %572, i32* %bit_ctr_n270, align 4, !tbaa !3
  %573 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable271 = getelementptr inbounds %struct.InputParameters* %573, i64 0, i32 127
  %574 = load i32* %RCEnable271, align 4, !tbaa !3
  %tobool272 = icmp eq i32 %574, 0
  br i1 %tobool272, label %if.end295, label %if.then273

if.then273:                                       ; preds = %if.end268
  tail call void @rc_update_pict(i32 %bits.2) #7
  %575 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type274 = getelementptr inbounds %struct.ImageParameters* %575, i64 0, i32 6
  %576 = load i32* %type274, align 4, !tbaa !3
  %cmp275 = icmp eq i32 %576, 0
  br i1 %cmp275, label %land.lhs.true277, label %if.end295

land.lhs.true277:                                 ; preds = %if.then273
  %577 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag278 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %577, i64 0, i32 25
  %578 = load i32* %frame_mbs_only_flag278, align 4, !tbaa !1
  %tobool279 = icmp eq i32 %578, 0
  br i1 %tobool279, label %land.lhs.true285, label %if.then280

if.then280:                                       ; preds = %land.lhs.true277
  tail call void (...)* @updateRCModel() #7
  br label %if.end295

land.lhs.true285:                                 ; preds = %land.lhs.true277
  %579 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag286 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %579, i64 0, i32 25
  %580 = load i32* %frame_mbs_only_flag286, align 4, !tbaa !1
  %tobool287 = icmp eq i32 %580, 0
  br i1 %tobool287, label %land.lhs.true288, label %if.end295

land.lhs.true288:                                 ; preds = %land.lhs.true285
  %IFLAG289 = getelementptr inbounds %struct.ImageParameters* %575, i64 0, i32 137
  %581 = load i32* %IFLAG289, align 4, !tbaa !3
  %cmp290 = icmp eq i32 %581, 0
  br i1 %cmp290, label %if.then292, label %if.end295

if.then292:                                       ; preds = %land.lhs.true288
  tail call void (...)* @updateRCModel() #7
  br label %if.end295

if.end295:                                        ; preds = %land.lhs.true288, %land.lhs.true285, %if.then273, %if.end268, %if.then280, %if.then292
  %582 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr_parametersets_n296 = getelementptr inbounds %struct.StatParameters* %582, i64 0, i32 33
  store i32 0, i32* %bit_ctr_parametersets_n296, align 4, !tbaa !3
  %583 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number297 = getelementptr inbounds %struct.ImageParameters* %583, i64 0, i32 0
  %584 = load i32* %number297, align 4, !tbaa !3
  %585 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %not.cmp299 = icmp ne i32 %584, %585
  %. = zext i1 %not.cmp299 to i32
  ret i32 %.
}

; Function Attrs: optsize
declare i32 @write_PPS(i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @field_picture(%struct.Picture* nocapture %top, %struct.Picture* nocapture %bottom) #0 {
entry:
  %0 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters* %0, i64 0, i32 30
  store i32 0, i32* %em_prev_bits_fld, align 4, !tbaa !3
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %0, i64 0, i32 31
  store i32* %em_prev_bits_fld, i32** %em_prev_bits, align 8, !tbaa !0
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0
  %2 = load i32* %number, align 4, !tbaa !3
  %mul = shl nsw i32 %2, 1
  store i32 %mul, i32* %number, align 4, !tbaa !3
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 84
  %3 = load i32* %buf_cycle, align 4, !tbaa !3
  %mul2 = shl nsw i32 %3, 1
  store i32 %mul2, i32* %buf_cycle, align 4, !tbaa !3
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_height = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 17
  %5 = load i32* %img_height, align 4, !tbaa !3
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 166
  %6 = load i32* %auto_crop_bottom, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %div = sdiv i32 %add, 2
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15
  store i32 %div, i32* %height, align 4, !tbaa !3
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 17
  %7 = load i32* %height_cr_frame, align 4, !tbaa !3
  %div3 = sdiv i32 %7, 2
  %height_cr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 16
  store i32 %div3, i32* %height_cr, align 4, !tbaa !3
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 57
  store i32 1, i32* %fld_flag, align 4, !tbaa !3
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 111
  %8 = load i32* %FrameSizeInMbs, align 4, !tbaa !3
  %div4 = lshr i32 %8, 1
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 110
  store i32 %div4, i32* %PicSizeInMbs, align 4, !tbaa !3
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7
  %9 = load i32* %structure, align 4, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13
  %10 = load i32* %width, align 4, !tbaa !3
  %width_cr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 14
  %11 = load i32* %width_cr, align 4, !tbaa !3
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 %9, i32 %10, i32 %div, i32 %11, i32 %div3) #7
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_top_picture, align 8, !tbaa !0
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %toppoc = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 101
  %13 = load i32* %toppoc, align 4, !tbaa !3
  %poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 1
  store i32 %13, i32* %poc, align 4, !tbaa !3
  %14 = load i32* %toppoc, align 4, !tbaa !3
  %frame_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 4
  store i32 %14, i32* %frame_poc, align 4, !tbaa !3
  %frame_num = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 105
  %15 = load i32* %frame_num, align 4, !tbaa !3
  %pic_num = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 11
  store i32 %15, i32* %pic_num, align 4, !tbaa !3
  %16 = load i32* %frame_num, align 4, !tbaa !3
  %frame_num9 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 10
  store i32 %16, i32* %frame_num9, align 4, !tbaa !3
  %coded_frame = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 23
  store i32 0, i32* %coded_frame, align 4, !tbaa !3
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 90
  store i32 0, i32* %MbaffFrameFlag, align 4, !tbaa !3
  %MbaffFrameFlag10 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 24
  store i32 0, i32* %MbaffFrameFlag10, align 4, !tbaa !3
  %17 = load i32* %toppoc, align 4, !tbaa !3
  %ThisPOC = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 104
  store i32 %17, i32* %ThisPOC, align 4, !tbaa !3
  %structure12 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 7
  store i32 1, i32* %structure12, align 4, !tbaa !3
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  tail call void @copy_params() #8
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_type.i = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 56
  store i32 0, i32* %fld_type.i, align 4, !tbaa !3
  %19 = load i16*** @imgY_org_top, align 8, !tbaa !0
  store i16** %19, i16*** @imgY_org, align 8, !tbaa !0
  %20 = load i16**** @imgUV_org_top, align 8, !tbaa !0
  store i16*** %20, i16**** @imgUV_org, align 8, !tbaa !0
  tail call fastcc void @init_field() #8
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type13 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 6
  %22 = load i32* %type13, align 4, !tbaa !3
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %23 = load i32* @nextP_tr_fld, align 4, !tbaa !3
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* @nextP_tr_fld, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 57
  store i32 1, i32* %fld_flag14, align 4, !tbaa !3
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 127
  %25 = load i32* %RCEnable, align 4, !tbaa !3
  %tobool = icmp eq i32 %25, 0
  br i1 %tobool, label %if.end20, label %if.then15

if.then15:                                        ; preds = %if.end
  %basicunit = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 130
  %26 = load i32* %basicunit, align 4, !tbaa !3
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 139
  store i32 %26, i32* %BasicUnit, align 4, !tbaa !3
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 91
  %27 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %27, 1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  tail call void @rc_init_pict(i32 0, i32 1, i32 1) #7
  br label %if.end18

if.else:                                          ; preds = %if.then15
  tail call void @rc_init_pict(i32 0, i32 1, i32 0) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %call19 = tail call i32 @updateQuantizationParameter(i32 1) #7
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 10
  store i32 %call19, i32* %qp, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.end18
  %29 = phi %struct.ImageParameters* [ %21, %if.end ], [ %28, %if.end18 ]
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 133
  store i32 1, i32* %TopFieldFlag, align 4, !tbaa !3
  %30 = load %struct.Picture** @top_pic, align 8, !tbaa !0
  tail call void @code_a_picture(%struct.Picture* %30) #8
  %31 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %structure21 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 0
  store i32 1, i32* %structure21, align 4, !tbaa !1
  %32 = load %struct.storable_picture** @enc_top_picture, align 8, !tbaa !0
  tail call void @store_picture_in_dpb(%struct.storable_picture* %32) #7
  %33 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 50
  %34 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6
  %35 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %35, i64 0, i32 0
  %36 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %36, i64 0, i32 0
  %37 = load i32* %byte_pos, align 4, !tbaa !3
  %mul22 = shl nsw i32 %37, 3
  %bits_per_picture = getelementptr inbounds %struct.Picture* %top, i64 0, i32 3
  store i32 %mul22, i32* %bits_per_picture, align 4, !tbaa !3
  %structure24 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 7
  %38 = load i32* %structure24, align 4, !tbaa !3
  %width25 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 13
  %39 = load i32* %width25, align 4, !tbaa !3
  %height26 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 15
  %40 = load i32* %height26, align 4, !tbaa !3
  %width_cr27 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 14
  %41 = load i32* %width_cr27, align 4, !tbaa !3
  %height_cr28 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 16
  %42 = load i32* %height_cr28, align 4, !tbaa !3
  %call29 = tail call %struct.storable_picture* @alloc_storable_picture(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42) #7
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !0
  %43 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 102
  %44 = load i32* %bottompoc, align 4, !tbaa !3
  %poc30 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 1
  store i32 %44, i32* %poc30, align 4, !tbaa !3
  %45 = load i32* %bottompoc, align 4, !tbaa !3
  %frame_poc32 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 4
  store i32 %45, i32* %frame_poc32, align 4, !tbaa !3
  %frame_num33 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 105
  %46 = load i32* %frame_num33, align 4, !tbaa !3
  %pic_num34 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 11
  store i32 %46, i32* %pic_num34, align 4, !tbaa !3
  %47 = load i32* %frame_num33, align 4, !tbaa !3
  %frame_num36 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 10
  store i32 %47, i32* %frame_num36, align 4, !tbaa !3
  %coded_frame37 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 23
  store i32 0, i32* %coded_frame37, align 4, !tbaa !3
  %MbaffFrameFlag38 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 90
  store i32 0, i32* %MbaffFrameFlag38, align 4, !tbaa !3
  %MbaffFrameFlag39 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 24
  store i32 0, i32* %MbaffFrameFlag39, align 4, !tbaa !3
  %48 = load i32* %bottompoc, align 4, !tbaa !3
  %ThisPOC41 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 104
  store i32 %48, i32* %ThisPOC41, align 4, !tbaa !3
  %structure42 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 7
  store i32 2, i32* %structure42, align 4, !tbaa !3
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  tail call void @copy_params() #8
  %49 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_type.i79 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 56
  store i32 1, i32* %fld_type.i79, align 4, !tbaa !3
  %50 = load i16*** @imgY_org_bot, align 8, !tbaa !0
  store i16** %50, i16*** @imgY_org, align 8, !tbaa !0
  %51 = load i16**** @imgUV_org_bot, align 8, !tbaa !0
  store i16*** %51, i16**** @imgUV_org, align 8, !tbaa !0
  %number43 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 0
  %52 = load i32* %number43, align 4, !tbaa !3
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %number43, align 4, !tbaa !3
  tail call fastcc void @init_field() #8
  %53 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type44 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 6
  %54 = load i32* %type44, align 4, !tbaa !3
  %cmp45 = icmp eq i32 %54, 1
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end20
  %55 = load i32* @nextP_tr_fld, align 4, !tbaa !3
  %inc47 = add nsw i32 %55, 1
  store i32 %inc47, i32* @nextP_tr_fld, align 4, !tbaa !3
  %.pre = load i32* %type44, align 4, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end20
  %56 = phi i32 [ %.pre, %if.then46 ], [ %54, %if.end20 ]
  %cmp50 = icmp eq i32 %56, 2
  %57 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br i1 %cmp50, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end48
  %IntraBottom = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 93
  %58 = load i32* %IntraBottom, align 4, !tbaa !3
  %cmp51 = icmp eq i32 %58, 1
  br i1 %cmp51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  store i32 0, i32* %type44, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %land.lhs.true, %if.then52
  %fld_flag55 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 57
  store i32 1, i32* %fld_flag55, align 4, !tbaa !3
  %RCEnable56 = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 127
  %59 = load i32* %RCEnable56, align 4, !tbaa !3
  %tobool57 = icmp eq i32 %59, 0
  br i1 %tobool57, label %if.end59.if.end65_crit_edge, label %if.end59

if.end59:                                         ; preds = %if.end54
  tail call void @setbitscount(i32 %mul22) #7
  %.pre80 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %RCEnable60.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre80, i64 0, i32 127
  %.pre81 = load i32* %RCEnable60.phi.trans.insert, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pre81, 0
  br i1 %phitmp, label %if.end59.if.end65_crit_edge, label %if.then62

if.end59.if.end65_crit_edge:                      ; preds = %if.end54, %if.end59
  %.pre83 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end65

if.then62:                                        ; preds = %if.end59
  tail call void @rc_init_pict(i32 0, i32 0, i32 0) #7
  %call63 = tail call i32 @updateQuantizationParameter(i32 0) #7
  %60 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %qp64 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 10
  store i32 %call63, i32* %qp64, align 4, !tbaa !3
  br label %if.end65

if.end65:                                         ; preds = %if.end59.if.end65_crit_edge, %if.then62
  %61 = phi %struct.ImageParameters* [ %.pre83, %if.end59.if.end65_crit_edge ], [ %60, %if.then62 ]
  %TopFieldFlag66 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 133
  store i32 0, i32* %TopFieldFlag66, align 4, !tbaa !3
  %62 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %structure67 = getelementptr inbounds %struct.storable_picture* %62, i64 0, i32 0
  store i32 2, i32* %structure67, align 4, !tbaa !1
  %63 = load %struct.Picture** @bottom_pic, align 8, !tbaa !0
  tail call void @code_a_picture(%struct.Picture* %63) #8
  %64 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice68 = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 50
  %65 = load %struct.Slice** %currentSlice68, align 8, !tbaa !0
  %partArr69 = getelementptr inbounds %struct.Slice* %65, i64 0, i32 6
  %66 = load %struct.datapartition** %partArr69, align 8, !tbaa !0
  %bitstream71 = getelementptr inbounds %struct.datapartition* %66, i64 0, i32 0
  %67 = load %struct.Bitstream** %bitstream71, align 8, !tbaa !0
  %byte_pos72 = getelementptr inbounds %struct.Bitstream* %67, i64 0, i32 0
  %68 = load i32* %byte_pos72, align 4, !tbaa !3
  %mul73 = shl nsw i32 %68, 3
  %bits_per_picture74 = getelementptr inbounds %struct.Picture* %bottom, i64 0, i32 3
  store i32 %mul73, i32* %bits_per_picture74, align 4, !tbaa !3
  %distortion_y = getelementptr inbounds %struct.Picture* %top, i64 0, i32 4
  %distortion_u = getelementptr inbounds %struct.Picture* %top, i64 0, i32 5
  %distortion_v = getelementptr inbounds %struct.Picture* %top, i64 0, i32 6
  %number.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 0
  %69 = load i32* %number.i, align 4, !tbaa !3
  %div.i = sdiv i32 %69, 2
  store i32 %div.i, i32* %number.i, align 4, !tbaa !3
  %buf_cycle.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 84
  %70 = load i32* %buf_cycle.i, align 4, !tbaa !3
  %div1.i = sdiv i32 %70, 2
  store i32 %div1.i, i32* %buf_cycle.i, align 4, !tbaa !3
  %71 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_height.i = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 17
  %72 = load i32* %img_height.i, align 4, !tbaa !3
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 166
  %73 = load i32* %auto_crop_bottom.i, align 4, !tbaa !3
  %add.i = add nsw i32 %73, %72
  %height.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 15
  store i32 %add.i, i32* %height.i, align 4, !tbaa !3
  %height_cr_frame.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 17
  %74 = load i32* %height_cr_frame.i, align 4, !tbaa !3
  %height_cr.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 16
  store i32 %74, i32* %height_cr.i, align 4, !tbaa !3
  %width.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 13
  %75 = load i32* %width.i, align 4, !tbaa !3
  %mul.i = mul nsw i32 %75, %add.i
  %div3.i = sdiv i32 %mul.i, 256
  %total_number_mb.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 4
  store i32 %div3.i, i32* %total_number_mb.i, align 4, !tbaa !3
  tail call void (...)* @combine_field() #7
  %76 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %76, i16*** @imgY_org, align 8, !tbaa !0
  %77 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %77, i16**** @imgUV_org, align 8, !tbaa !0
  tail call void @find_distortion() #7
  %78 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 0
  %79 = load float* %snr_y.i, align 4, !tbaa !5
  store float %79, float* %distortion_y, align 4, !tbaa !5
  %snr_u.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 1
  %80 = load float* %snr_u.i, align 4, !tbaa !5
  store float %80, float* %distortion_u, align 4, !tbaa !5
  %snr_v.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 2
  %81 = load float* %snr_v.i, align 4, !tbaa !5
  store float %81, float* %distortion_v, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @rc_init_pict(i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @updateQuantizationParameter(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @frame_picture(%struct.Picture* %frame, i32 %rd_pass) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 7
  store i32 0, i32* %structure, align 4, !tbaa !3
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 111
  %1 = load i32* %FrameSizeInMbs, align 4, !tbaa !3
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110
  store i32 %1, i32* %PicSizeInMbs, align 4, !tbaa !3
  %cmp = icmp eq i32 %rd_pass, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %2 = load i32* %width, align 4, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %3 = load i32* %height, align 4, !tbaa !3
  %width_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 14
  %4 = load i32* %width_cr, align 4, !tbaa !3
  %height_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16
  %5 = load i32* %height_cr, align 4, !tbaa !3
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %2, i32 %3, i32 %4, i32 %5) #7
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_frame_picture3, align 8, !tbaa !0
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framepoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 103
  %7 = load i32* %framepoc, align 4, !tbaa !3
  %poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 1
  store i32 %7, i32* %poc, align 4, !tbaa !3
  %ThisPOC = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 104
  store i32 %7, i32* %ThisPOC, align 4, !tbaa !3
  %toppoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 101
  %8 = load i32* %toppoc, align 4, !tbaa !3
  %top_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 2
  store i32 %8, i32* %top_poc, align 4, !tbaa !3
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 102
  %9 = load i32* %bottompoc, align 4, !tbaa !3
  %bottom_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 3
  store i32 %9, i32* %bottom_poc, align 4, !tbaa !3
  %10 = load i32* %framepoc, align 4, !tbaa !3
  %frame_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 4
  store i32 %10, i32* %frame_poc, align 4, !tbaa !3
  %frame_num = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105
  %11 = load i32* %frame_num, align 4, !tbaa !3
  %pic_num = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 11
  store i32 %11, i32* %pic_num, align 4, !tbaa !3
  %12 = load i32* %frame_num, align 4, !tbaa !3
  %frame_num4 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 10
  store i32 %12, i32* %frame_num4, align 4, !tbaa !3
  %coded_frame = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 23
  store i32 1, i32* %coded_frame, align 4, !tbaa !3
  %13 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 92
  %14 = load i32* %MbInterlace, align 4, !tbaa !3
  %cmp5 = icmp ne i32 %14, 0
  %conv = zext i1 %cmp5 to i32
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 90
  store i32 %conv, i32* %MbaffFrameFlag, align 4, !tbaa !3
  %MbaffFrameFlag6 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 24
  store i32 %conv, i32* %MbaffFrameFlag6, align 4, !tbaa !3
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  tail call void @copy_params() #8
  br label %if.end61

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i32 %rd_pass, 1
  %width11 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %15 = load i32* %width11, align 4, !tbaa !3
  %height12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %16 = load i32* %height12, align 4, !tbaa !3
  %width_cr13 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 14
  %17 = load i32* %width_cr13, align 4, !tbaa !3
  %height_cr14 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16
  %18 = load i32* %height_cr14, align 4, !tbaa !3
  %call15 = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %15, i32 %16, i32 %17, i32 %18) #7
  br i1 %cmp7, label %if.then9, label %if.else35

if.then9:                                         ; preds = %if.else
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_frame_picture2, align 8, !tbaa !0
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framepoc16 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 103
  %20 = load i32* %framepoc16, align 4, !tbaa !3
  %poc17 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 1
  store i32 %20, i32* %poc17, align 4, !tbaa !3
  %ThisPOC18 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 104
  store i32 %20, i32* %ThisPOC18, align 4, !tbaa !3
  %toppoc19 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 101
  %21 = load i32* %toppoc19, align 4, !tbaa !3
  %top_poc20 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 2
  store i32 %21, i32* %top_poc20, align 4, !tbaa !3
  %bottompoc21 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 102
  %22 = load i32* %bottompoc21, align 4, !tbaa !3
  %bottom_poc22 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 3
  store i32 %22, i32* %bottom_poc22, align 4, !tbaa !3
  %23 = load i32* %framepoc16, align 4, !tbaa !3
  %frame_poc24 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 4
  store i32 %23, i32* %frame_poc24, align 4, !tbaa !3
  %frame_num25 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 105
  %24 = load i32* %frame_num25, align 4, !tbaa !3
  %pic_num26 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 11
  store i32 %24, i32* %pic_num26, align 4, !tbaa !3
  %25 = load i32* %frame_num25, align 4, !tbaa !3
  %frame_num28 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 10
  store i32 %25, i32* %frame_num28, align 4, !tbaa !3
  %coded_frame29 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 23
  store i32 1, i32* %coded_frame29, align 4, !tbaa !3
  %26 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace30 = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 92
  %27 = load i32* %MbInterlace30, align 4, !tbaa !3
  %cmp31 = icmp ne i32 %27, 0
  %conv32 = zext i1 %cmp31 to i32
  %MbaffFrameFlag33 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 90
  store i32 %conv32, i32* %MbaffFrameFlag33, align 4, !tbaa !3
  %MbaffFrameFlag34 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 24
  store i32 %conv32, i32* %MbaffFrameFlag34, align 4, !tbaa !3
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  tail call void @copy_params() #8
  br label %if.end61

if.else35:                                        ; preds = %if.else
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !0
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framepoc42 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 103
  %29 = load i32* %framepoc42, align 4, !tbaa !3
  %poc43 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 1
  store i32 %29, i32* %poc43, align 4, !tbaa !3
  %ThisPOC44 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 104
  store i32 %29, i32* %ThisPOC44, align 4, !tbaa !3
  %toppoc45 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 101
  %30 = load i32* %toppoc45, align 4, !tbaa !3
  %top_poc46 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 2
  store i32 %30, i32* %top_poc46, align 4, !tbaa !3
  %bottompoc47 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 102
  %31 = load i32* %bottompoc47, align 4, !tbaa !3
  %bottom_poc48 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 3
  store i32 %31, i32* %bottom_poc48, align 4, !tbaa !3
  %32 = load i32* %framepoc42, align 4, !tbaa !3
  %frame_poc50 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 4
  store i32 %32, i32* %frame_poc50, align 4, !tbaa !3
  %frame_num51 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 105
  %33 = load i32* %frame_num51, align 4, !tbaa !3
  %pic_num52 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 11
  store i32 %33, i32* %pic_num52, align 4, !tbaa !3
  %34 = load i32* %frame_num51, align 4, !tbaa !3
  %frame_num54 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 10
  store i32 %34, i32* %frame_num54, align 4, !tbaa !3
  %coded_frame55 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 23
  store i32 1, i32* %coded_frame55, align 4, !tbaa !3
  %35 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace56 = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 92
  %36 = load i32* %MbInterlace56, align 4, !tbaa !3
  %cmp57 = icmp ne i32 %36, 0
  %conv58 = zext i1 %cmp57 to i32
  %MbaffFrameFlag59 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 90
  store i32 %conv58, i32* %MbaffFrameFlag59, align 4, !tbaa !3
  %MbaffFrameFlag60 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 24
  store i32 %conv58, i32* %MbaffFrameFlag60, align 4, !tbaa !3
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  tail call void @copy_params() #8
  br label %if.end61

if.end61:                                         ; preds = %if.then9, %if.else35, %if.then
  %37 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters* %37, i64 0, i32 29
  store i32 0, i32* %em_prev_bits_frm, align 4, !tbaa !3
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %37, i64 0, i32 31
  store i32* %em_prev_bits_frm, i32** %em_prev_bits, align 8, !tbaa !0
  %38 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 57
  store i32 0, i32* %fld_flag, align 4, !tbaa !3
  tail call void @code_a_picture(%struct.Picture* %frame) #8
  %39 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 50
  %40 = load %struct.Slice** %currentSlice, align 8, !tbaa !0
  %partArr = getelementptr inbounds %struct.Slice* %40, i64 0, i32 6
  %41 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %41, i64 0, i32 0
  %42 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %42, i64 0, i32 0
  %43 = load i32* %byte_pos, align 4, !tbaa !3
  %mul = shl nsw i32 %43, 3
  %bits_per_picture = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 3
  store i32 %mul, i32* %bits_per_picture, align 4, !tbaa !3
  %structure63 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 7
  %44 = load i32* %structure63, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %44, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end61
  tail call void @find_distortion() #8
  %45 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 0
  %46 = load float* %snr_y, align 4, !tbaa !5
  %distortion_y = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 4
  store float %46, float* %distortion_y, align 4, !tbaa !5
  %snr_u = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 1
  %47 = load float* %snr_u, align 4, !tbaa !5
  %distortion_u = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 5
  store float %47, float* %distortion_u, align 4, !tbaa !5
  %snr_v = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 2
  %48 = load float* %snr_v, align 4, !tbaa !5
  %distortion_v = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 6
  store float %48, float* %distortion_v, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end61
  ret void
}

; Function Attrs: optsize
declare void @update_field_frame_contexts(i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @writeout_picture(%struct.Picture* %pic) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49
  store %struct.Picture* %pic, %struct.Picture** %currentPicture, align 8, !tbaa !0
  %no_slices = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 0
  %1 = load i32* %no_slices, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %for.body, label %for.end12

for.body:                                         ; preds = %entry, %for.inc10
  %2 = phi i32 [ %32, %for.inc10 ], [ %1, %entry ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 2, i64 %indvars.iv7
  %3 = load %struct.Slice** %arrayidx, align 8, !tbaa !0
  %max_part_nr = getelementptr inbounds %struct.Slice* %3, i64 0, i32 4
  %4 = load i32* %max_part_nr, align 4, !tbaa !3
  %cmp21 = icmp sgt i32 %4, 0
  br i1 %cmp21, label %for.body3.lr.ph, label %for.inc10

for.body3.lr.ph:                                  ; preds = %for.body
  %partArr = getelementptr inbounds %struct.Slice* %3, i64 0, i32 6
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %writeUnit.exit
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %writeUnit.exit ]
  %5 = load %struct.datapartition** %partArr, align 8, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 0
  %6 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %width.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 13
  %8 = load i32* %width.i, align 4, !tbaa !3
  %height.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 15
  %9 = load i32* %height.i, align 4, !tbaa !3
  %mul.i = shl i32 %8, 2
  %mul1.i = mul i32 %mul.i, %9
  %call.i = tail call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 %mul1.i) #7
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 3
  %11 = load i32* %current_mb_nr.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %11, 0
  %add.i = select i1 %cmp.i, i32 5, i32 4
  %startcodeprefix_len.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 0
  store i32 %add.i, i32* %startcodeprefix_len.i, align 4, !tbaa !3
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0
  %12 = load i32* %byte_pos.i, align 4, !tbaa !3
  %add2.i = add nsw i32 %12, 1
  %len.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 1
  store i32 %add2.i, i32* %len.i, align 4, !tbaa !3
  %buf.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 6
  %13 = load i8** %buf.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %13, i64 1
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9
  %14 = load i8** %streamBuffer.i, align 8, !tbaa !0
  %conv.i = zext i32 %12 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i, i8* %14, i64 %conv.i, i32 1, i1 false) #1
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 49
  %16 = load %struct.Picture** %currentPicture.i, align 8, !tbaa !0
  %idr_flag.i = getelementptr inbounds %struct.Picture* %16, i64 0, i32 1
  %17 = load i32* %idr_flag.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %17, 0
  br i1 %tobool.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body3
  %nal_unit_type.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3
  store i32 5, i32* %nal_unit_type.i, align 4, !tbaa !3
  %nal_reference_idc.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4
  store i32 3, i32* %nal_reference_idc.i, align 4, !tbaa !3
  br label %writeUnit.exit

if.else.i:                                        ; preds = %for.body3
  %type.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6
  %18 = load i32* %type.i, align 4, !tbaa !3
  %cmp4.i = icmp eq i32 %18, 1
  %19 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %partition_mode.i = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 61
  %20 = load i32* %partition_mode.i, align 4, !tbaa !3
  %cmp7.i = icmp eq i32 %20, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else22.i

if.then6.i:                                       ; preds = %if.else.i
  br i1 %cmp7.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.then6.i
  %nal_unit_type10.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3
  store i32 1, i32* %nal_unit_type10.i, align 4, !tbaa !3
  br label %if.end.i

if.else11.i:                                      ; preds = %if.then6.i
  %21 = add nsw i64 %indvars.iv, 2
  %nal_unit_type13.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %nal_unit_type13.i, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else11.i, %if.then9.i
  %nal_reference_idc14.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 113
  %23 = load i32* %nal_reference_idc14.i, align 4, !tbaa !3
  %cmp15.i = icmp eq i32 %23, 0
  %nal_reference_idc18.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4
  br i1 %cmp15.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  store i32 2, i32* %nal_reference_idc18.i, align 4, !tbaa !3
  br label %writeUnit.exit

if.else19.i:                                      ; preds = %if.end.i
  store i32 0, i32* %nal_reference_idc18.i, align 4, !tbaa !3
  br label %writeUnit.exit

if.else22.i:                                      ; preds = %if.else.i
  br i1 %cmp7.i, label %if.then26.i, label %if.else28.i

if.then26.i:                                      ; preds = %if.else22.i
  %nal_unit_type27.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3
  store i32 1, i32* %nal_unit_type27.i, align 4, !tbaa !3
  br label %if.end31.i

if.else28.i:                                      ; preds = %if.else22.i
  %24 = add nsw i64 %indvars.iv, 2
  %nal_unit_type30.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %nal_unit_type30.i, align 4, !tbaa !3
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else28.i, %if.then26.i
  %nal_reference_idc32.i = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 113
  %26 = load i32* %nal_reference_idc32.i, align 4, !tbaa !3
  %cmp33.i = icmp eq i32 %26, 0
  %nal_reference_idc36.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4
  br i1 %cmp33.i, label %if.else37.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end31.i
  store i32 2, i32* %nal_reference_idc36.i, align 4, !tbaa !3
  br label %writeUnit.exit

if.else37.i:                                      ; preds = %if.end31.i
  store i32 0, i32* %nal_reference_idc36.i, align 4, !tbaa !3
  br label %writeUnit.exit

writeUnit.exit:                                   ; preds = %if.then.i, %if.then17.i, %if.else19.i, %if.then35.i, %if.else37.i
  %forbidden_bit.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 5
  store i32 0, i32* %forbidden_bit.i, align 4, !tbaa !3
  %27 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !tbaa !0
  %call42.i = tail call i32 %27(%struct.NALU_t* %call.i) #7
  %28 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr.i = getelementptr inbounds %struct.StatParameters* %28, i64 0, i32 4
  %29 = load i32* %bit_ctr.i, align 4, !tbaa !3
  %add43.i = add nsw i32 %29, %call42.i
  store i32 %add43.i, i32* %bit_ctr.i, align 4, !tbaa !3
  tail call void @FreeNALU(%struct.NALU_t* %call.i) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %30 = load i32* %max_part_nr, align 4, !tbaa !3
  %31 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %31, %30
  br i1 %cmp2, label %for.body3, label %for.cond1.for.inc10_crit_edge

for.cond1.for.inc10_crit_edge:                    ; preds = %writeUnit.exit
  %.pre = load i32* %no_slices, align 4, !tbaa !3
  br label %for.inc10

for.inc10:                                        ; preds = %for.cond1.for.inc10_crit_edge, %for.body
  %32 = phi i32 [ %.pre, %for.cond1.for.inc10_crit_edge ], [ %2, %for.body ]
  %indvars.iv.next8 = add i64 %indvars.iv7, 1
  %33 = trunc i64 %indvars.iv.next8 to i32
  %cmp = icmp slt i32 %33, %32
  br i1 %cmp, label %for.body, label %for.end12

for.end12:                                        ; preds = %for.inc10, %entry
  ret void
}

; Function Attrs: optsize
declare void @free_slice_list(%struct.Picture*) #2

; Function Attrs: optsize
declare void @rc_update_pict_frame(i32) #2

; Function Attrs: optsize
declare void @store_picture_in_dpb(%struct.storable_picture*) #2

; Function Attrs: optsize
declare void @free_storable_picture(%struct.storable_picture*) #2

; Function Attrs: optsize
declare void @replace_top_pic_with_frame(%struct.storable_picture*) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: optsize
declare void @rc_update_pict(i32) #2

; Function Attrs: optsize
declare void @updateRCModel(...) #2

; Function Attrs: nounwind optsize uwtable
define void @copy_params() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 25
  %1 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %2 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %frame_mbs_only_flag1 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 42
  store i32 %1, i32* %frame_mbs_only_flag1, align 4, !tbaa !3
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 28
  %3 = load i32* %frame_cropping_flag, align 4, !tbaa !1
  %frame_cropping_flag2 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 43
  store i32 %3, i32* %frame_cropping_flag2, align 4, !tbaa !3
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 8
  %4 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 41
  store i32 %4, i32* %chroma_format_idc3, align 4, !tbaa !3
  %5 = load i32* %frame_cropping_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 29
  %6 = load i32* %frame_cropping_rect_left_offset, align 4, !tbaa !3
  %frame_cropping_rect_left_offset5 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 44
  store i32 %6, i32* %frame_cropping_rect_left_offset5, align 4, !tbaa !3
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 30
  %7 = load i32* %frame_cropping_rect_right_offset, align 4, !tbaa !3
  %frame_cropping_rect_right_offset6 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 45
  store i32 %7, i32* %frame_cropping_rect_right_offset6, align 4, !tbaa !3
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 31
  %8 = load i32* %frame_cropping_rect_top_offset, align 4, !tbaa !3
  %frame_cropping_rect_top_offset7 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 46
  store i32 %8, i32* %frame_cropping_rect_top_offset7, align 4, !tbaa !3
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 32
  %9 = load i32* %frame_cropping_rect_bottom_offset, align 4, !tbaa !3
  %frame_cropping_rect_bottom_offset8 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 47
  store i32 %9, i32* %frame_cropping_rect_bottom_offset8, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %frame_cropping_rect_left_offset9 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 44
  %10 = bitcast i32* %frame_cropping_rect_left_offset9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: optsize
declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare void @setbitscount(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @UnifiedOneForthPix(%struct.storable_picture* %s) #0 {
entry:
  %imgY1 = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 25
  %0 = load i16*** %imgY1, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 18
  %1 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 19
  %2 = load i32* %size_y, align 4, !tbaa !3
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 28
  %3 = load i16*** %imgY_ups, align 8, !tbaa !0
  %tobool = icmp eq i16** %3, null
  br i1 %tobool, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 26
  %4 = load i16** %imgY_11, align 8, !tbaa !0
  %tobool2 = icmp eq i16* %4, null
  br i1 %tobool2, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %2, %1
  %conv = sext i32 %mul to i64
  %mul5 = shl nsw i64 %conv, 1
  %call = tail call noalias i8* @malloc(i64 %mul5) #7
  %5 = bitcast i8* %call to i16*
  store i16* %5, i16** %imgY_11, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0)) #7
  %.pre = load i32* %size_y, align 4, !tbaa !3
  %.pre1594 = load i32* %size_x, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %6 = phi i32 [ %.pre1594, %if.then9 ], [ %1, %if.end ]
  %7 = phi i32 [ %.pre, %if.then9 ], [ %2, %if.end ]
  %add = shl i32 %7, 2
  %mul13 = add i32 %add, 32
  %add15 = shl i32 %6, 2
  %mul16 = add i32 %add15, 32
  %call17 = tail call i32 @get_mem2Dpel(i16*** %imgY_ups, i32 %mul13, i32 %mul16) #7
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 46
  %9 = load i32* %WeightedPrediction, align 4, !tbaa !3
  %tobool18 = icmp eq i32 %9, 0
  br i1 %tobool18, label %lor.lhs.false19, label %if.then23

lor.lhs.false19:                                  ; preds = %if.end10
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 47
  %10 = load i32* %WeightedBiprediction, align 4, !tbaa !3
  %tobool20 = icmp eq i32 %10, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.then23

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 15
  %11 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool22 = icmp eq i32 %11, 0
  br i1 %tobool22, label %if.end42, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %if.end10
  %12 = load i32* %size_x, align 4, !tbaa !3
  %13 = load i32* %size_y, align 4, !tbaa !3
  %mul26 = mul nsw i32 %13, %12
  %conv27 = sext i32 %mul26 to i64
  %mul28 = shl nsw i64 %conv27, 1
  %call29 = tail call noalias i8* @malloc(i64 %mul28) #7
  %14 = bitcast i8* %call29 to i16*
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 27
  store i16* %14, i16** %imgY_11_w, align 8, !tbaa !0
  %cmp31 = icmp eq i8* %call29, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then23
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #7
  %.pre1606 = load i32* %size_y, align 4, !tbaa !3
  %.pre1607 = load i32* %size_x, align 4, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then23
  %15 = phi i32 [ %.pre1607, %if.then33 ], [ %12, %if.then23 ]
  %16 = phi i32 [ %.pre1606, %if.then33 ], [ %13, %if.then23 ]
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 29
  %add36 = shl i32 %16, 2
  %mul37 = add i32 %add36, 32
  %add39 = shl i32 %15, 2
  %mul40 = add i32 %add39, 32
  %call41 = tail call i32 @get_mem2Dpel(i16*** %imgY_ups_w, i32 %mul37, i32 %mul40) #7
  br label %if.end42

if.end42:                                         ; preds = %lor.lhs.false21, %if.end34
  %17 = load i16*** %imgY_ups, align 8, !tbaa !0
  %18 = load i16** %imgY_11, align 8, !tbaa !0
  %19 = load i32* %size_y, align 4, !tbaa !3
  %add461574 = add nsw i32 %19, 4
  %cmp471575 = icmp sgt i32 %add461574, -4
  br i1 %cmp471575, label %for.cond49.preheader.lr.ph, label %if.end42.for.cond339.preheader_crit_edge

if.end42.for.cond339.preheader_crit_edge:         ; preds = %if.end42
  %.pre1608 = load i32* %size_x, align 4, !tbaa !3
  br label %for.cond339.preheader

for.cond49.preheader.lr.ph:                       ; preds = %if.end42
  %20 = load i32*** @img4Y_tmp, align 8, !tbaa !0
  %.pre1604 = load i32* %size_x, align 4, !tbaa !3
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond49.preheader.lr.ph, %for.inc336
  %21 = phi i32 [ %19, %for.cond49.preheader.lr.ph ], [ %55, %for.inc336 ]
  %22 = phi i32 [ %.pre1604, %for.cond49.preheader.lr.ph ], [ %56, %for.inc336 ]
  %indvars.iv1591 = phi i64 [ -4, %for.cond49.preheader.lr.ph ], [ %indvars.iv.next1592, %for.inc336 ]
  %add511571 = add nsw i32 %22, 4
  %cmp521572 = icmp sgt i32 %add511571, -4
  br i1 %cmp521572, label %for.body54.lr.ph, label %for.cond49.preheader.for.inc336_crit_edge

for.cond49.preheader.for.inc336_crit_edge:        ; preds = %for.cond49.preheader
  %.pre1610 = trunc i64 %indvars.iv1591 to i32
  br label %for.inc336

for.body54.lr.ph:                                 ; preds = %for.cond49.preheader
  %23 = add nsw i64 %indvars.iv1591, 4
  %arrayidx325 = getelementptr inbounds i32** %20, i64 %23
  %24 = load i32** %arrayidx325, align 8, !tbaa !0
  br label %for.body54

for.cond339.preheader:                            ; preds = %for.inc336, %if.end42.for.cond339.preheader_crit_edge
  %25 = phi i32 [ %.pre1608, %if.end42.for.cond339.preheader_crit_edge ], [ %56, %for.inc336 ]
  %26 = phi i32 [ %19, %if.end42.for.cond339.preheader_crit_edge ], [ %55, %for.inc336 ]
  %add3411567 = shl i32 %25, 1
  %mul3421568 = add i32 %add3411567, 16
  %cmp3431569 = icmp sgt i32 %mul3421568, 0
  br i1 %cmp3431569, label %for.cond346.preheader, label %for.end519

for.body54:                                       ; preds = %cond.end170, %for.body54.lr.ph
  %27 = phi i32 [ %21, %for.body54.lr.ph ], [ %.pre1609, %cond.end170 ]
  %28 = phi i32 [ %22, %for.body54.lr.ph ], [ %53, %cond.end170 ]
  %indvars.iv1585 = phi i64 [ -4, %for.body54.lr.ph ], [ %indvars.iv.next1586, %cond.end170 ]
  %29 = trunc i64 %indvars.iv1591 to i32
  %cmp56 = icmp sgt i32 %27, %29
  %sub = add nsw i32 %27, -1
  %cond = select i1 %cmp56, i32 %29, i32 %sub
  %cmp60 = icmp slt i32 %cond, 0
  %30 = trunc i64 %indvars.iv1585 to i32
  %cmp78 = icmp sgt i32 %28, %30
  %sub77 = add nsw i32 %28, -1
  %cond85 = select i1 %cmp78, i32 %30, i32 %sub77
  %cmp86 = icmp slt i32 %cond85, 0
  %31 = sext i32 %cond85 to i64
  %idxprom = select i1 %cmp86, i64 0, i64 %31
  %32 = sext i32 %cond to i64
  %idxprom102 = select i1 %cmp60, i64 0, i64 %32
  %arrayidx = getelementptr inbounds i16** %0, i64 %idxprom102
  %33 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i16* %33, i64 %idxprom
  %34 = load i16* %arrayidx103, align 2, !tbaa !4
  %conv104 = zext i16 %34 to i32
  %indvars.iv.next1586 = add i64 %indvars.iv1585, 1
  %35 = trunc i64 %indvars.iv.next1586 to i32
  %cmp108 = icmp sgt i32 %28, %35
  %cond116 = select i1 %cmp108, i32 %35, i32 %sub77
  %cmp117 = icmp slt i32 %cond116, 0
  %36 = sext i32 %cond116 to i64
  %idxprom135 = select i1 %cmp117, i64 0, i64 %36
  %arrayidx138 = getelementptr inbounds i16* %33, i64 %idxprom135
  %37 = load i16* %arrayidx138, align 2, !tbaa !4
  %conv139 = zext i16 %37 to i32
  %add140 = add nsw i32 %conv139, %conv104
  %mul141 = mul nsw i32 %add140, 20
  %38 = add nsw i64 %indvars.iv1585, 4294967295
  %39 = trunc i64 %38 to i32
  %cmp145 = icmp sgt i32 %28, %39
  %i.0. = select i1 %cmp145, i32 %30, i32 %28
  %cmp154 = icmp slt i32 %i.0., 1
  br i1 %cmp154, label %cond.end170, label %cond.false157

cond.false157:                                    ; preds = %for.body54
  %sub165 = add nsw i32 %i.0., -1
  %phitmp1542 = sext i32 %sub165 to i64
  br label %cond.end170

cond.end170:                                      ; preds = %for.body54, %cond.false157
  %cond171 = phi i64 [ %phitmp1542, %cond.false157 ], [ 0, %for.body54 ]
  %arrayidx175 = getelementptr inbounds i16* %33, i64 %cond171
  %40 = load i16* %arrayidx175, align 2, !tbaa !4
  %conv176 = zext i16 %40 to i32
  %41 = add nsw i64 %indvars.iv1585, 2
  %42 = trunc i64 %41 to i32
  %cmp180 = icmp sgt i32 %28, %42
  %cond188 = select i1 %cmp180, i32 %42, i32 %sub77
  %cmp189 = icmp slt i32 %cond188, 0
  %43 = sext i32 %cond188 to i64
  %idxprom207 = select i1 %cmp189, i64 0, i64 %43
  %arrayidx210 = getelementptr inbounds i16* %33, i64 %idxprom207
  %44 = load i16* %arrayidx210, align 2, !tbaa !4
  %conv211 = zext i16 %44 to i32
  %add212 = add nsw i32 %conv211, %conv176
  %mul213 = mul nsw i32 %add212, -5
  %45 = add nsw i64 %indvars.iv1585, 4294967294
  %46 = trunc i64 %45 to i32
  %cmp218 = icmp sgt i32 %28, %46
  %cond226 = select i1 %cmp218, i32 %46, i32 %sub77
  %cmp227 = icmp slt i32 %cond226, 0
  %47 = sext i32 %cond226 to i64
  %idxprom245 = select i1 %cmp227, i64 0, i64 %47
  %arrayidx248 = getelementptr inbounds i16* %33, i64 %idxprom245
  %48 = load i16* %arrayidx248, align 2, !tbaa !4
  %conv249 = zext i16 %48 to i32
  %49 = add nsw i64 %indvars.iv1585, 3
  %50 = trunc i64 %49 to i32
  %cmp253 = icmp sgt i32 %28, %50
  %cond261 = select i1 %cmp253, i32 %50, i32 %sub77
  %cmp262 = icmp slt i32 %cond261, 0
  %51 = sext i32 %cond261 to i64
  %idxprom280 = select i1 %cmp262, i64 0, i64 %51
  %arrayidx283 = getelementptr inbounds i16* %33, i64 %idxprom280
  %52 = load i16* %arrayidx283, align 2, !tbaa !4
  %conv284 = zext i16 %52 to i32
  %add285 = add i32 %mul213, %mul141
  %add214 = add i32 %add285, %conv249
  %add287 = add i32 %add214, %conv284
  %mul319 = shl nuw nsw i32 %conv104, 10
  %add320 = shl i32 %30, 1
  %mul321 = add i32 %add320, 8
  %idxprom322 = sext i32 %mul321 to i64
  %arrayidx326 = getelementptr inbounds i32* %24, i64 %idxprom322
  store i32 %mul319, i32* %arrayidx326, align 4, !tbaa !3
  %mul327 = shl nsw i32 %add287, 5
  %add330 = add i32 %add320, 9
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx335 = getelementptr inbounds i32* %24, i64 %idxprom331
  store i32 %mul327, i32* %arrayidx335, align 4, !tbaa !3
  %53 = load i32* %size_x, align 4, !tbaa !3
  %54 = add nsw i32 %53, 3
  %cmp52 = icmp slt i32 %30, %54
  %.pre1609 = load i32* %size_y, align 4, !tbaa !3
  br i1 %cmp52, label %for.body54, label %for.inc336

for.inc336:                                       ; preds = %cond.end170, %for.cond49.preheader.for.inc336_crit_edge
  %.pre-phi = phi i32 [ %.pre1610, %for.cond49.preheader.for.inc336_crit_edge ], [ %29, %cond.end170 ]
  %55 = phi i32 [ %21, %for.cond49.preheader.for.inc336_crit_edge ], [ %.pre1609, %cond.end170 ]
  %56 = phi i32 [ %22, %for.cond49.preheader.for.inc336_crit_edge ], [ %53, %cond.end170 ]
  %indvars.iv.next1592 = add i64 %indvars.iv1591, 1
  %57 = add nsw i32 %55, 3
  %cmp47 = icmp slt i32 %.pre-phi, %57
  br i1 %cmp47, label %for.cond49.preheader, label %for.cond339.preheader

for.cond346.preheader:                            ; preds = %for.cond339.preheader, %for.inc517
  %58 = phi i32 [ %92, %for.inc517 ], [ %25, %for.cond339.preheader ]
  %59 = phi i32 [ %93, %for.inc517 ], [ %26, %for.cond339.preheader ]
  %indvars.iv1583 = phi i64 [ %indvars.iv.next1584, %for.inc517 ], [ 0, %for.cond339.preheader ]
  %add3481564 = add nsw i32 %59, 8
  %cmp3491565 = icmp sgt i32 %add3481564, 0
  br i1 %cmp3491565, label %for.body351.lr.ph, label %for.inc517

for.body351.lr.ph:                                ; preds = %for.cond346.preheader
  %60 = trunc i64 %indvars.iv1583 to i32
  %sub430 = shl i32 %60, 1
  %mul431 = add i32 %sub430, -16
  br label %for.body351

for.body351:                                      ; preds = %for.body351, %for.body351.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body351.lr.ph ], [ %indvars.iv.next, %for.body351 ]
  %61 = phi i32 [ %59, %for.body351.lr.ph ], [ %90, %for.body351 ]
  %sub355 = add nsw i32 %61, 7
  %62 = load i32*** @img4Y_tmp, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds i32** %62, i64 %indvars.iv
  %63 = load i32** %arrayidx358, align 8, !tbaa !0
  %arrayidx359 = getelementptr inbounds i32* %63, i64 %indvars.iv1583
  %64 = load i32* %arrayidx359, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %65 = trunc i64 %indvars.iv.next to i32
  %cmp362 = icmp slt i32 %sub355, %65
  %sub355.add361 = select i1 %cmp362, i32 %sub355, i32 %65
  %idxprom369 = sext i32 %sub355.add361 to i64
  %arrayidx370 = getelementptr inbounds i32** %62, i64 %idxprom369
  %66 = load i32** %arrayidx370, align 8, !tbaa !0
  %arrayidx371 = getelementptr inbounds i32* %66, i64 %indvars.iv1583
  %67 = load i32* %arrayidx371, align 4, !tbaa !3
  %add372 = add nsw i32 %67, %64
  %mul373 = mul nsw i32 %add372, 20
  %68 = trunc i64 %indvars.iv to i32
  %cmp376 = icmp slt i32 %68, 1
  %69 = add nsw i64 %indvars.iv, -1
  %. = select i1 %cmp376, i64 0, i64 %69
  %arrayidx384 = getelementptr inbounds i32** %62, i64 %.
  %70 = load i32** %arrayidx384, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds i32* %70, i64 %indvars.iv1583
  %71 = load i32* %arrayidx385, align 4, !tbaa !3
  %72 = add nsw i64 %indvars.iv, 2
  %73 = trunc i64 %72 to i32
  %cmp388 = icmp slt i32 %sub355, %73
  %sub355.add387 = select i1 %cmp388, i32 %sub355, i32 %73
  %idxprom395 = sext i32 %sub355.add387 to i64
  %arrayidx396 = getelementptr inbounds i32** %62, i64 %idxprom395
  %74 = load i32** %arrayidx396, align 8, !tbaa !0
  %arrayidx397 = getelementptr inbounds i32* %74, i64 %indvars.iv1583
  %75 = load i32* %arrayidx397, align 4, !tbaa !3
  %add398 = add nsw i32 %75, %71
  %mul399 = mul nsw i32 %add398, -5
  %76 = add nsw i64 %indvars.iv, -2
  %77 = trunc i64 %76 to i32
  %cmp403 = icmp slt i32 %77, 0
  %cond409 = select i1 %cmp403, i64 0, i64 %76
  %arrayidx411 = getelementptr inbounds i32** %62, i64 %cond409
  %78 = load i32** %arrayidx411, align 8, !tbaa !0
  %arrayidx412 = getelementptr inbounds i32* %78, i64 %indvars.iv1583
  %79 = load i32* %arrayidx412, align 4, !tbaa !3
  %80 = add nsw i64 %indvars.iv, 3
  %81 = trunc i64 %80 to i32
  %cmp415 = icmp slt i32 %sub355, %81
  %sub355.add414 = select i1 %cmp415, i32 %sub355, i32 %81
  %idxprom422 = sext i32 %sub355.add414 to i64
  %arrayidx423 = getelementptr inbounds i32** %62, i64 %idxprom422
  %82 = load i32** %arrayidx423, align 8, !tbaa !0
  %arrayidx424 = getelementptr inbounds i32* %82, i64 %indvars.iv1583
  %83 = load i32* %arrayidx424, align 4, !tbaa !3
  %add425 = add i32 %mul399, %mul373
  %add400 = add i32 %add425, %79
  %add427 = add i32 %add400, %83
  %div = sdiv i32 %add427, 32
  %sub428 = shl i32 %68, 2
  %mul429 = add i32 %sub428, -16
  %84 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 155
  %85 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %add436 = add nsw i32 %64, 512
  %div437 = sdiv i32 %add436, 1024
  %cmp438 = icmp slt i32 %85, %div437
  %cond450 = select i1 %cmp438, i32 %85, i32 %div437
  %cmp451 = icmp slt i32 %cond450, 0
  %86 = trunc i32 %cond450 to i16
  %conv477 = select i1 %cmp451, i16 0, i16 %86
  tail call void @PutPel_14(i16** %17, i32 %mul429, i32 %mul431, i16 zeroext %conv477) #7
  %add480 = add i32 %sub428, -14
  %87 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value483 = getelementptr inbounds %struct.ImageParameters* %87, i64 0, i32 155
  %88 = load i32* %max_imgpel_value483, align 4, !tbaa !3
  %add484 = add nsw i32 %div, 512
  %div485 = sdiv i32 %add484, 1024
  %cmp486 = icmp slt i32 %88, %div485
  %.div485 = select i1 %cmp486, i32 %88, i32 %div485
  %cmp495 = icmp slt i32 %.div485, 0
  %89 = trunc i32 %.div485 to i16
  %conv513 = select i1 %cmp495, i16 0, i16 %89
  tail call void @PutPel_14(i16** %17, i32 %add480, i32 %mul431, i16 zeroext %conv513) #7
  %90 = load i32* %size_y, align 4, !tbaa !3
  %91 = add nsw i32 %90, 7
  %cmp349 = icmp slt i32 %68, %91
  br i1 %cmp349, label %for.body351, label %for.cond346.for.inc517_crit_edge

for.cond346.for.inc517_crit_edge:                 ; preds = %for.body351
  %.pre1603 = load i32* %size_x, align 4, !tbaa !3
  br label %for.inc517

for.inc517:                                       ; preds = %for.cond346.for.inc517_crit_edge, %for.cond346.preheader
  %92 = phi i32 [ %.pre1603, %for.cond346.for.inc517_crit_edge ], [ %58, %for.cond346.preheader ]
  %93 = phi i32 [ %90, %for.cond346.for.inc517_crit_edge ], [ %59, %for.cond346.preheader ]
  %indvars.iv.next1584 = add i64 %indvars.iv1583, 1
  %add341 = shl i32 %92, 1
  %mul342 = add i32 %add341, 16
  %94 = trunc i64 %indvars.iv.next1584 to i32
  %cmp343 = icmp slt i32 %94, %mul342
  br i1 %cmp343, label %for.cond346.preheader, label %for.end519

for.end519:                                       ; preds = %for.inc517, %for.cond339.preheader
  %95 = phi i32 [ %26, %for.cond339.preheader ], [ %93, %for.inc517 ]
  %.lcssa = phi i32 [ %25, %for.cond339.preheader ], [ %92, %for.inc517 ]
  %sub522 = shl i32 %.lcssa, 2
  %mul523 = add i32 %sub522, 28
  %sub526 = shl i32 %95, 2
  %mul527 = add i32 %sub526, 28
  %add529 = add i32 %sub526, 32
  %cmp5301562 = icmp sgt i32 %add529, 0
  br i1 %cmp5301562, label %for.cond533.preheader.lr.ph, label %for.cond654.preheader

for.cond533.preheader.lr.ph:                      ; preds = %for.end519
  %add534 = add i32 %sub522, 31
  %cmp5351560 = icmp sgt i32 %add534, 0
  %add547 = add i32 %sub522, 30
  br label %for.cond533.preheader

for.cond533.preheader:                            ; preds = %for.cond533.preheader.lr.ph, %for.inc651
  %j.21563 = phi i32 [ 0, %for.cond533.preheader.lr.ph ], [ %add652, %for.inc651 ]
  br i1 %cmp5351560, label %for.body537.lr.ph, label %for.inc651

for.body537.lr.ph:                                ; preds = %for.cond533.preheader
  %sub538 = add nsw i32 %j.21563, -16
  br label %for.body537

for.cond654.preheader:                            ; preds = %for.inc651, %for.end519
  %add655 = add i32 %sub522, 32
  %cmp6561558 = icmp sgt i32 %add655, 0
  br i1 %cmp6561558, label %for.cond659.preheader.lr.ph, label %for.end1108

for.cond659.preheader.lr.ph:                      ; preds = %for.cond654.preheader
  %add660 = add i32 %sub526, 31
  %cmp6611555 = icmp sgt i32 %add660, 0
  %add675 = add i32 %sub526, 30
  %add967 = add i32 %sub522, 30
  %96 = shl i32 %.lcssa, 2
  %97 = add i32 %96, 32
  br label %for.cond659.preheader

for.body537:                                      ; preds = %for.body537.lr.ph, %cond.end645
  %i.21561 = phi i32 [ 0, %for.body537.lr.ph ], [ %add548, %cond.end645 ]
  %sub539 = add nsw i32 %i.21561, -16
  %add540 = add nsw i32 %i.21561, -15
  %98 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value541 = getelementptr inbounds %struct.ImageParameters* %98, i64 0, i32 155
  %99 = load i32* %max_imgpel_value541, align 4, !tbaa !3
  %call544 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7
  %conv545 = zext i16 %call544 to i32
  %add548 = add nsw i32 %i.21561, 2
  %cmp549 = icmp slt i32 %add547, %add548
  %.sink1112 = select i1 %cmp549, i32 %mul523, i32 %i.21561
  %sub557 = add nsw i32 %.sink1112, -14
  %call558 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7
  %conv559 = zext i16 %call558 to i32
  %add560 = add i32 %conv545, 1
  %add561 = add i32 %add560, %conv559
  %div562 = lshr i32 %add561, 1
  %cmp563 = icmp slt i32 %99, %div562
  br i1 %cmp563, label %cond.end589, label %cond.end589.thread

cond.end589.thread:                               ; preds = %for.body537
  %call570 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7
  %call584 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7
  %.pre1601 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value595.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1601, i64 0, i32 155
  %.pre1602 = load i32* %max_imgpel_value595.phi.trans.insert, align 4, !tbaa !3
  br label %cond.false594

cond.end589:                                      ; preds = %for.body537
  %100 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value566 = getelementptr inbounds %struct.ImageParameters* %100, i64 0, i32 155
  %101 = load i32* %max_imgpel_value566, align 4, !tbaa !3
  %cmp591 = icmp slt i32 %101, 0
  br i1 %cmp591, label %cond.end645, label %cond.false594

cond.false594:                                    ; preds = %cond.end589.thread, %cond.end589
  %102 = phi i32 [ %.pre1602, %cond.end589.thread ], [ %101, %cond.end589 ]
  %call598 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7
  %conv599 = zext i16 %call598 to i32
  %call612 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7
  %conv613 = zext i16 %call612 to i32
  %add614 = add i32 %conv599, 1
  %add615 = add i32 %add614, %conv613
  %div616 = lshr i32 %add615, 1
  %cmp617 = icmp slt i32 %102, %div616
  br i1 %cmp617, label %cond.true619, label %cond.false621

cond.true619:                                     ; preds = %cond.false594
  %103 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value620 = getelementptr inbounds %struct.ImageParameters* %103, i64 0, i32 155
  %104 = load i32* %max_imgpel_value620, align 4, !tbaa !3
  br label %cond.end645

cond.false621:                                    ; preds = %cond.false594
  %call624 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7
  %conv625 = zext i16 %call624 to i32
  %call638 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7
  %conv639 = zext i16 %call638 to i32
  %add640 = add i32 %conv625, 1
  %add641 = add i32 %add640, %conv639
  %div642 = lshr i32 %add641, 1
  br label %cond.end645

cond.end645:                                      ; preds = %cond.true619, %cond.false621, %cond.end589
  %cond646 = phi i32 [ 0, %cond.end589 ], [ %104, %cond.true619 ], [ %div642, %cond.false621 ]
  %conv647 = trunc i32 %cond646 to i16
  tail call void @PutPel_14(i16** %17, i32 %sub538, i32 %add540, i16 zeroext %conv647) #7
  %cmp535 = icmp slt i32 %add548, %add534
  br i1 %cmp535, label %for.body537, label %for.inc651

for.inc651:                                       ; preds = %cond.end645, %for.cond533.preheader
  %add652 = add nsw i32 %j.21563, 2
  %cmp530 = icmp slt i32 %add652, %add529
  br i1 %cmp530, label %for.cond533.preheader, label %for.cond654.preheader

for.cond659.preheader:                            ; preds = %for.inc1106, %for.cond659.preheader.lr.ph
  %i.31559 = phi i32 [ 0, %for.cond659.preheader.lr.ph ], [ %inc1107.pre-phi, %for.inc1106 ]
  br i1 %cmp6611555, label %for.body663.lr.ph, label %for.cond659.preheader.for.inc1106_crit_edge

for.cond659.preheader.for.inc1106_crit_edge:      ; preds = %for.cond659.preheader
  %inc1107.pre = add nsw i32 %i.31559, 1
  br label %for.inc1106

for.body663.lr.ph:                                ; preds = %for.cond659.preheader
  %rem1540 = and i32 %i.31559, 1
  %cmp664 = icmp eq i32 %rem1540, 0
  %sub669 = add nsw i32 %i.31559, -16
  %sub953 = add nsw i32 %i.31559, -17
  %add968 = add nsw i32 %i.31559, 1
  %cmp969 = icmp slt i32 %add967, %add968
  %add967.add968 = select i1 %cmp969, i32 %add967, i32 %add968
  %sub977 = add nsw i32 %add967.add968, -16
  %rem780 = srem i32 %i.31559, 4
  %cmp781 = icmp eq i32 %rem780, 1
  %cmp789 = icmp eq i32 %rem780, 3
  br label %for.body663

for.body663:                                      ; preds = %for.body663.lr.ph, %for.inc1103
  %j.31556 = phi i32 [ 0, %for.body663.lr.ph ], [ %add1104, %for.inc1103 ]
  br i1 %cmp664, label %if.then666, label %if.else

if.then666:                                       ; preds = %for.body663
  %sub667 = add nsw i32 %j.31556, -16
  %add668 = add nsw i32 %j.31556, -15
  %105 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value670 = getelementptr inbounds %struct.ImageParameters* %105, i64 0, i32 155
  %106 = load i32* %max_imgpel_value670, align 4, !tbaa !3
  %call673 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7
  %conv674 = zext i16 %call673 to i32
  %add676 = add nsw i32 %j.31556, 2
  %cmp677 = icmp slt i32 %add675, %add676
  %.sink1116 = select i1 %cmp677, i32 %mul527, i32 %j.31556
  %sub685 = add nsw i32 %.sink1116, -14
  %call687 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7
  %conv688 = zext i16 %call687 to i32
  %add689 = add i32 %conv674, 1
  %add690 = add i32 %add689, %conv688
  %div691 = lshr i32 %add690, 1
  %cmp692 = icmp slt i32 %106, %div691
  br i1 %cmp692, label %cond.end718, label %cond.end718.thread

cond.end718.thread:                               ; preds = %if.then666
  %call699 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7
  %call713 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7
  %.pre1595 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value724.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1595, i64 0, i32 155
  %.pre1596 = load i32* %max_imgpel_value724.phi.trans.insert, align 4, !tbaa !3
  br label %cond.false723

cond.end718:                                      ; preds = %if.then666
  %107 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value695 = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 155
  %108 = load i32* %max_imgpel_value695, align 4, !tbaa !3
  %cmp720 = icmp slt i32 %108, 0
  br i1 %cmp720, label %cond.end774, label %cond.false723

cond.false723:                                    ; preds = %cond.end718.thread, %cond.end718
  %109 = phi i32 [ %.pre1596, %cond.end718.thread ], [ %108, %cond.end718 ]
  %call727 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7
  %conv728 = zext i16 %call727 to i32
  %call741 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7
  %conv742 = zext i16 %call741 to i32
  %add743 = add i32 %conv728, 1
  %add744 = add i32 %add743, %conv742
  %div745 = lshr i32 %add744, 1
  %cmp746 = icmp slt i32 %109, %div745
  br i1 %cmp746, label %cond.true748, label %cond.false750

cond.true748:                                     ; preds = %cond.false723
  %110 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value749 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 155
  %111 = load i32* %max_imgpel_value749, align 4, !tbaa !3
  br label %cond.end774

cond.false750:                                    ; preds = %cond.false723
  %call753 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7
  %conv754 = zext i16 %call753 to i32
  %call767 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7
  %conv768 = zext i16 %call767 to i32
  %add769 = add i32 %conv754, 1
  %add770 = add i32 %add769, %conv768
  %div771 = lshr i32 %add770, 1
  br label %cond.end774

cond.end774:                                      ; preds = %cond.true748, %cond.false750, %cond.end718
  %cond775 = phi i32 [ 0, %cond.end718 ], [ %111, %cond.true748 ], [ %div771, %cond.false750 ]
  %conv776 = trunc i32 %cond775 to i16
  tail call void @PutPel_14(i16** %17, i32 %add668, i32 %sub669, i16 zeroext %conv776) #7
  br label %for.inc1103

if.else:                                          ; preds = %for.body663
  %rem777 = srem i32 %j.31556, 4
  switch i32 %rem777, label %if.else946 [
    i32 0, label %land.lhs.true
    i32 2, label %land.lhs.true787
  ]

land.lhs.true:                                    ; preds = %if.else
  br i1 %cmp781, label %if.then791, label %if.else946

land.lhs.true787:                                 ; preds = %if.else
  br i1 %cmp789, label %if.then791, label %if.else946

if.then791:                                       ; preds = %land.lhs.true787, %land.lhs.true
  %sub792 = add nsw i32 %j.31556, -16
  %add793 = add nsw i32 %j.31556, -15
  %112 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value795 = getelementptr inbounds %struct.ImageParameters* %112, i64 0, i32 155
  %113 = load i32* %max_imgpel_value795, align 4, !tbaa !3
  %call808 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7
  %conv809 = zext i16 %call808 to i32
  %add811 = add nsw i32 %j.31556, 2
  %cmp812 = icmp slt i32 %add675, %add811
  %.sink1120 = select i1 %cmp812, i32 %mul527, i32 %j.31556
  %sub820 = add nsw i32 %.sink1120, -14
  %call823 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7
  %conv824 = zext i16 %call823 to i32
  %add825 = add i32 %conv809, 1
  %add826 = add i32 %add825, %conv824
  %div827 = lshr i32 %add826, 1
  %cmp828 = icmp slt i32 %113, %div827
  br i1 %cmp828, label %cond.end865, label %cond.end865.thread

cond.end865.thread:                               ; preds = %if.then791
  %call845 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7
  %call860 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7
  %.pre1599 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value871.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1599, i64 0, i32 155
  %.pre1600 = load i32* %max_imgpel_value871.phi.trans.insert, align 4, !tbaa !3
  br label %cond.false870

cond.end865:                                      ; preds = %if.then791
  %114 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value831 = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 155
  %115 = load i32* %max_imgpel_value831, align 4, !tbaa !3
  %cmp867 = icmp slt i32 %115, 0
  br i1 %cmp867, label %cond.end943, label %cond.false870

cond.false870:                                    ; preds = %cond.end865.thread, %cond.end865
  %116 = phi i32 [ %.pre1600, %cond.end865.thread ], [ %115, %cond.end865 ]
  %call884 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7
  %conv885 = zext i16 %call884 to i32
  %call899 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7
  %conv900 = zext i16 %call899 to i32
  %add901 = add i32 %conv885, 1
  %add902 = add i32 %add901, %conv900
  %div903 = lshr i32 %add902, 1
  %cmp904 = icmp slt i32 %116, %div903
  br i1 %cmp904, label %cond.true906, label %cond.false908

cond.true906:                                     ; preds = %cond.false870
  %117 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value907 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 155
  %118 = load i32* %max_imgpel_value907, align 4, !tbaa !3
  br label %cond.end943

cond.false908:                                    ; preds = %cond.false870
  %call921 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7
  %conv922 = zext i16 %call921 to i32
  %call936 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7
  %conv937 = zext i16 %call936 to i32
  %add938 = add i32 %conv922, 1
  %add939 = add i32 %add938, %conv937
  %div940 = lshr i32 %add939, 1
  br label %cond.end943

cond.end943:                                      ; preds = %cond.true906, %cond.false908, %cond.end865
  %cond944 = phi i32 [ 0, %cond.end865 ], [ %118, %cond.true906 ], [ %div940, %cond.false908 ]
  %conv945 = trunc i32 %cond944 to i16
  tail call void @PutPel_14(i16** %17, i32 %add793, i32 %sub669, i16 zeroext %conv945) #7
  br label %for.inc1103

if.else946:                                       ; preds = %land.lhs.true, %if.else, %land.lhs.true787
  %sub947 = add nsw i32 %j.31556, -16
  %add948 = add nsw i32 %j.31556, -15
  %119 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value950 = getelementptr inbounds %struct.ImageParameters* %119, i64 0, i32 155
  %120 = load i32* %max_imgpel_value950, align 4, !tbaa !3
  %call954 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7
  %conv955 = zext i16 %call954 to i32
  %add957 = add nsw i32 %j.31556, 2
  %cmp958 = icmp slt i32 %add675, %add957
  %.sink1124 = select i1 %cmp958, i32 %mul527, i32 %j.31556
  %sub966 = add nsw i32 %.sink1124, -14
  %call978 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7
  %conv979 = zext i16 %call978 to i32
  %add980 = add i32 %conv955, 1
  %add981 = add i32 %add980, %conv979
  %div982 = lshr i32 %add981, 1
  %cmp983 = icmp slt i32 %120, %div982
  br i1 %cmp983, label %cond.end1020, label %cond.end1020.thread

cond.end1020.thread:                              ; preds = %if.else946
  %call991 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7
  %call1015 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7
  %.pre1597 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1026.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1597, i64 0, i32 155
  %.pre1598 = load i32* %max_imgpel_value1026.phi.trans.insert, align 4, !tbaa !3
  br label %cond.false1025

cond.end1020:                                     ; preds = %if.else946
  %121 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value986 = getelementptr inbounds %struct.ImageParameters* %121, i64 0, i32 155
  %122 = load i32* %max_imgpel_value986, align 4, !tbaa !3
  %cmp1022 = icmp slt i32 %122, 0
  br i1 %cmp1022, label %cond.end1098, label %cond.false1025

cond.false1025:                                   ; preds = %cond.end1020.thread, %cond.end1020
  %123 = phi i32 [ %.pre1598, %cond.end1020.thread ], [ %122, %cond.end1020 ]
  %call1030 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7
  %conv1031 = zext i16 %call1030 to i32
  %call1054 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7
  %conv1055 = zext i16 %call1054 to i32
  %add1056 = add i32 %conv1031, 1
  %add1057 = add i32 %add1056, %conv1055
  %div1058 = lshr i32 %add1057, 1
  %cmp1059 = icmp slt i32 %123, %div1058
  br i1 %cmp1059, label %cond.true1061, label %cond.false1063

cond.true1061:                                    ; preds = %cond.false1025
  %124 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1062 = getelementptr inbounds %struct.ImageParameters* %124, i64 0, i32 155
  %125 = load i32* %max_imgpel_value1062, align 4, !tbaa !3
  br label %cond.end1098

cond.false1063:                                   ; preds = %cond.false1025
  %call1067 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7
  %conv1068 = zext i16 %call1067 to i32
  %call1091 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7
  %conv1092 = zext i16 %call1091 to i32
  %add1093 = add i32 %conv1068, 1
  %add1094 = add i32 %add1093, %conv1092
  %div1095 = lshr i32 %add1094, 1
  br label %cond.end1098

cond.end1098:                                     ; preds = %cond.true1061, %cond.false1063, %cond.end1020
  %cond1099 = phi i32 [ 0, %cond.end1020 ], [ %125, %cond.true1061 ], [ %div1095, %cond.false1063 ]
  %conv1100 = trunc i32 %cond1099 to i16
  tail call void @PutPel_14(i16** %17, i32 %add948, i32 %sub669, i16 zeroext %conv1100) #7
  br label %for.inc1103

for.inc1103:                                      ; preds = %cond.end774, %cond.end1098, %cond.end943
  %add1104 = add nsw i32 %j.31556, 2
  %cmp661 = icmp slt i32 %add1104, %add660
  br i1 %cmp661, label %for.body663, label %for.inc1106

for.inc1106:                                      ; preds = %for.inc1103, %for.cond659.preheader.for.inc1106_crit_edge
  %inc1107.pre-phi = phi i32 [ %inc1107.pre, %for.cond659.preheader.for.inc1106_crit_edge ], [ %add968, %for.inc1103 ]
  %exitcond = icmp eq i32 %inc1107.pre-phi, %97
  br i1 %exitcond, label %for.end1108, label %for.cond659.preheader

for.end1108:                                      ; preds = %for.inc1106, %for.cond654.preheader
  %126 = load i32* %size_x, align 4, !tbaa !3
  %127 = load i32* %size_y, align 4, !tbaa !3
  %cmp19.i = icmp sgt i32 %127, 0
  br i1 %cmp19.i, label %for.cond1.preheader.lr.ph.i, label %return

for.cond1.preheader.lr.ph.i:                      ; preds = %for.end1108
  %cmp217.i = icmp sgt i32 %126, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc5.i, %for.cond1.preheader.lr.ph.i
  %y.020.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc6.i, %for.inc5.i ]
  br i1 %cmp217.i, label %for.body3.lr.ph.i, label %for.inc5.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %mul.i = shl nsw i32 %y.020.i, 2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.lr.ph.i
  %x.018.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.body3.i ]
  %mul4.i = shl nsw i32 %x.018.i, 2
  %call.i = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %mul.i, i32 %mul4.i, i32 %127, i32 %126) #7
  tail call void @PutPel_11(i16* %18, i32 %y.020.i, i32 %x.018.i, i16 zeroext %call.i, i32 %126) #7
  %inc.i = add nsw i32 %x.018.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %126
  br i1 %exitcond.i, label %for.inc5.i, label %for.body3.i

for.inc5.i:                                       ; preds = %for.body3.i, %for.cond1.preheader.i
  %inc6.i = add nsw i32 %y.020.i, 1
  %exitcond21.i = icmp eq i32 %inc6.i, %127
  br i1 %exitcond21.i, label %return, label %for.cond1.preheader.i

return:                                           ; preds = %for.inc5.i, %for.end1108, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare i32 @get_mem2Dpel(i16***, i32, i32) #2

; Function Attrs: optsize
declare void @PutPel_14(i16**, i32, i32, i16 zeroext) #2

; Function Attrs: optsize
declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @dummy_slice_too_big(i32 %bits_slice) #4 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @copy_rdopt_data(i32 %bot_block) #0 {
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
  %rem845 = shl i32 %1, 1
  %6 = and i32 %rem845, 2
  %7 = add i32 %6, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %7, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %8 = load %struct.RD_DATA** @rdopt, align 8, !tbaa !0
  %mode5 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 14
  %9 = load i32* %mode5, align 4, !tbaa !3
  %mb_type = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 6
  %10 = load i32* %mb_type, align 4, !tbaa !3
  %mb_type6 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8
  store i32 %10, i32* %mb_type6, align 4, !tbaa !3
  %cbp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 12
  %11 = load i32* %cbp, align 4, !tbaa !3
  %cbp7 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12
  store i32 %11, i32* %cbp7, align 4, !tbaa !3
  %cbp_blk = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 13
  %12 = load i64* %cbp_blk, align 8, !tbaa !7
  %cbp_blk8 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13
  store i64 %12, i64* %cbp_blk8, align 8, !tbaa !7
  %bi_pred_me = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 7
  %13 = load i32* %bi_pred_me, align 4, !tbaa !3
  %bi_pred_me9 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34
  store i32 %13, i32* %bi_pred_me9, align 4, !tbaa !3
  %i16offset = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 20
  %14 = load i32* %i16offset, align 4, !tbaa !3
  %i16offset10 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85
  store i32 %14, i32* %i16offset10, align 4, !tbaa !3
  %prev_qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 25
  %15 = load i32* %prev_qp, align 4, !tbaa !3
  %prev_qp11 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 36
  store i32 %15, i32* %prev_qp11, align 4, !tbaa !3
  %prev_delta_qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 26
  %16 = load i32* %prev_delta_qp, align 4, !tbaa !3
  %prev_delta_qp12 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 37
  store i32 %16, i32* %prev_delta_qp12, align 4, !tbaa !3
  %qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 24
  %17 = load i32* %qp, align 4, !tbaa !3
  %qp13 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3
  store i32 %17, i32* %qp13, align 4, !tbaa !3
  %c_ipred_mode = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 21
  %18 = load i32* %c_ipred_mode, align 4, !tbaa !3
  %c_ipred_mode14 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20
  store i32 %18, i32* %c_ipred_mode14, align 4, !tbaa !3
  %num_blk8x8_uv902 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %19 = load i32* %num_blk8x8_uv902, align 4, !tbaa !3
  %add903 = add nsw i32 %19, 4
  %cmp15904 = icmp sgt i32 %add903, 0
  br i1 %cmp15904, label %for.cond17.preheader.lr.ph, label %for.cond55.preheader

for.cond17.preheader.lr.ph:                       ; preds = %cond.end
  %cofAC = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 4
  %20 = load i32***** %cofAC, align 8, !tbaa !0
  %cofAC41 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47
  %21 = load i32***** %cofAC41, align 8, !tbaa !0
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond17.preheader.lr.ph, %for.inc52
  %indvars.iv999 = phi i64 [ 0, %for.cond17.preheader.lr.ph ], [ %indvars.iv.next1000, %for.inc52 ]
  %arrayidx33 = getelementptr inbounds i32**** %20, i64 %indvars.iv999
  %22 = load i32**** %arrayidx33, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32**** %21, i64 %indvars.iv999
  %23 = load i32**** %arrayidx42, align 8, !tbaa !0
  br label %for.cond21.preheader

for.cond55.preheader:                             ; preds = %for.inc52, %cond.end
  %cofDC = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 5
  %24 = load i32**** %cofDC, align 8, !tbaa !0
  %cofDC76 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48
  %25 = load i32**** %cofDC76, align 8, !tbaa !0
  br label %for.cond59.preheader

for.cond21.preheader:                             ; preds = %for.inc49, %for.cond17.preheader
  %indvars.iv995 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next996, %for.inc49 ]
  %arrayidx34 = getelementptr inbounds i32*** %22, i64 %indvars.iv995
  %26 = load i32*** %arrayidx34, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i32*** %23, i64 %indvars.iv995
  %27 = load i32*** %arrayidx43, align 8, !tbaa !0
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.inc46, %for.cond21.preheader
  %indvars.iv991 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next992, %for.inc46 ]
  %arrayidx35 = getelementptr inbounds i32** %26, i64 %indvars.iv991
  %28 = load i32** %arrayidx35, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i32** %27, i64 %indvars.iv991
  %29 = load i32** %arrayidx44, align 8, !tbaa !0
  br label %for.body28

for.body28:                                       ; preds = %for.body28, %for.cond25.preheader
  %indvars.iv987 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next988, %for.body28 ]
  %arrayidx36 = getelementptr inbounds i32* %28, i64 %indvars.iv987
  %30 = load i32* %arrayidx36, align 4, !tbaa !3
  %arrayidx45 = getelementptr inbounds i32* %29, i64 %indvars.iv987
  store i32 %30, i32* %arrayidx45, align 4, !tbaa !3
  %indvars.iv.next988 = add i64 %indvars.iv987, 1
  %lftr.wideiv989 = trunc i64 %indvars.iv.next988 to i32
  %exitcond990 = icmp eq i32 %lftr.wideiv989, 65
  br i1 %exitcond990, label %for.inc46, label %for.body28

for.inc46:                                        ; preds = %for.body28
  %indvars.iv.next992 = add i64 %indvars.iv991, 1
  %lftr.wideiv993 = trunc i64 %indvars.iv.next992 to i32
  %exitcond994 = icmp eq i32 %lftr.wideiv993, 2
  br i1 %exitcond994, label %for.inc49, label %for.cond25.preheader

for.inc49:                                        ; preds = %for.inc46
  %indvars.iv.next996 = add i64 %indvars.iv995, 1
  %lftr.wideiv997 = trunc i64 %indvars.iv.next996 to i32
  %exitcond998 = icmp eq i32 %lftr.wideiv997, 4
  br i1 %exitcond998, label %for.inc52, label %for.cond21.preheader

for.inc52:                                        ; preds = %for.inc49
  %indvars.iv.next1000 = add i64 %indvars.iv999, 1
  %31 = load i32* %num_blk8x8_uv902, align 4, !tbaa !3
  %32 = add nsw i32 %31, 3
  %33 = trunc i64 %indvars.iv999 to i32
  %cmp15 = icmp slt i32 %33, %32
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond55.preheader

for.cond59.preheader:                             ; preds = %for.inc86, %for.cond55.preheader
  %indvars.iv983 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next984, %for.inc86 ]
  %arrayidx70 = getelementptr inbounds i32*** %24, i64 %indvars.iv983
  %34 = load i32*** %arrayidx70, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32*** %25, i64 %indvars.iv983
  %35 = load i32*** %arrayidx77, align 8, !tbaa !0
  br label %for.cond63.preheader

for.cond89.preheader:                             ; preds = %for.inc86
  %idxprom121842 = zext i32 %cond4 to i64
  %add161843 = or i32 %cond4, 1
  %idxprom162844 = zext i32 %add161843 to i64
  %.pre.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %block_y.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %.pre1011.pre = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %block_x.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %.pre1012.pre = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %ref_idx.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 32
  %.pre1013.pre = load i16**** %ref_idx.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre1014.pre = load i16*** %.pre1013.pre, align 8, !tbaa !0
  %ref_pic_id.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 33
  %.pre1015.pre = load i64**** %ref_pic_id.phi.trans.insert.phi.trans.insert, align 8, !tbaa !0
  %.pre1016.pre = load i64*** %.pre1015.pre, align 8, !tbaa !0
  br label %for.cond93.preheader

for.cond63.preheader:                             ; preds = %for.inc83, %for.cond59.preheader
  %indvars.iv979 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next980, %for.inc83 ]
  %arrayidx71 = getelementptr inbounds i32** %34, i64 %indvars.iv979
  %36 = load i32** %arrayidx71, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i32** %35, i64 %indvars.iv979
  %37 = load i32** %arrayidx78, align 8, !tbaa !0
  br label %for.body66

for.body66:                                       ; preds = %for.body66, %for.cond63.preheader
  %indvars.iv975 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next976, %for.body66 ]
  %arrayidx72 = getelementptr inbounds i32* %36, i64 %indvars.iv975
  %38 = load i32* %arrayidx72, align 4, !tbaa !3
  %arrayidx79 = getelementptr inbounds i32* %37, i64 %indvars.iv975
  store i32 %38, i32* %arrayidx79, align 4, !tbaa !3
  %indvars.iv.next976 = add i64 %indvars.iv975, 1
  %lftr.wideiv977 = trunc i64 %indvars.iv.next976 to i32
  %exitcond978 = icmp eq i32 %lftr.wideiv977, 18
  br i1 %exitcond978, label %for.inc83, label %for.body66

for.inc83:                                        ; preds = %for.body66
  %indvars.iv.next980 = add i64 %indvars.iv979, 1
  %lftr.wideiv981 = trunc i64 %indvars.iv.next980 to i32
  %exitcond982 = icmp eq i32 %lftr.wideiv981, 2
  br i1 %exitcond982, label %for.inc86, label %for.cond63.preheader

for.inc86:                                        ; preds = %for.inc83
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  %lftr.wideiv985 = trunc i64 %indvars.iv.next984 to i32
  %exitcond986 = icmp eq i32 %lftr.wideiv985, 3
  br i1 %exitcond986, label %for.cond89.preheader, label %for.cond59.preheader

for.cond93.preheader:                             ; preds = %for.inc179, %for.cond89.preheader
  %indvars.iv971 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next972, %for.inc179 ]
  br label %for.body96

for.cond182.preheader:                            ; preds = %for.inc179
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %39 = load i32* %pix_x, align 4, !tbaa !3
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %40 = load i32* %pix_y, align 4, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 25
  %41 = load i16*** %imgY, align 8, !tbaa !0
  %42 = sext i32 %39 to i64
  %43 = sext i32 %40 to i64
  br label %for.cond186.preheader

for.body96:                                       ; preds = %for.inc176, %for.cond93.preheader
  %indvars.iv967 = phi i64 [ 0, %for.cond93.preheader ], [ %indvars.iv.next968, %for.inc176 ]
  %arrayidx101 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 0, i64 %indvars.iv971, i64 %indvars.iv967
  %44 = load i16* %arrayidx101, align 2, !tbaa !4
  %45 = trunc i64 %indvars.iv971 to i32
  %add102 = add nsw i32 %.pre1011.pre, %45
  %idxprom103 = sext i32 %add102 to i64
  %46 = trunc i64 %indvars.iv967 to i32
  %add104 = add nsw i32 %.pre1012.pre, %46
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx107 = getelementptr inbounds i16** %.pre1014.pre, i64 %idxprom105
  %47 = load i16** %arrayidx107, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds i16* %47, i64 %idxprom103
  store i16 %44, i16* %arrayidx108, align 2, !tbaa !4
  %idxprom119 = sext i16 %44 to i64
  %arrayidx123 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 6, i64 %idxprom121842, i64 %idxprom119
  %48 = load i64* %arrayidx123, align 8, !tbaa !7
  %arrayidx131 = getelementptr inbounds i64** %.pre1016.pre, i64 %idxprom105
  %49 = load i64** %arrayidx131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i64* %49, i64 %idxprom103
  store i64 %48, i64* %arrayidx132, align 8, !tbaa !7
  br i1 %cmp, label %if.then, label %for.inc176

if.then:                                          ; preds = %for.body96
  %arrayidx139 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 1, i64 %indvars.iv971, i64 %indvars.iv967
  %50 = load i16* %arrayidx139, align 2, !tbaa !4
  %arrayidx147 = getelementptr inbounds i16*** %.pre1013.pre, i64 1
  %51 = load i16*** %arrayidx147, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i16** %51, i64 %idxprom105
  %52 = load i16** %arrayidx148, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i16* %52, i64 %idxprom103
  store i16 %50, i16* %arrayidx149, align 2, !tbaa !4
  %idxprom160 = sext i16 %50 to i64
  %arrayidx165 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 6, i64 %idxprom162844, i64 %idxprom160
  %53 = load i64* %arrayidx165, align 8, !tbaa !7
  %arrayidx173 = getelementptr inbounds i64*** %.pre1015.pre, i64 1
  %54 = load i64*** %arrayidx173, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i64** %54, i64 %idxprom105
  %55 = load i64** %arrayidx174, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i64* %55, i64 %idxprom103
  store i64 %53, i64* %arrayidx175, align 8, !tbaa !7
  br label %for.inc176

for.inc176:                                       ; preds = %for.body96, %if.then
  %indvars.iv.next968 = add i64 %indvars.iv967, 1
  %lftr.wideiv969 = trunc i64 %indvars.iv.next968 to i32
  %exitcond970 = icmp eq i32 %lftr.wideiv969, 4
  br i1 %exitcond970, label %for.inc179, label %for.body96

for.inc179:                                       ; preds = %for.inc176
  %indvars.iv.next972 = add i64 %indvars.iv971, 1
  %lftr.wideiv973 = trunc i64 %indvars.iv.next972 to i32
  %exitcond974 = icmp eq i32 %lftr.wideiv973, 4
  br i1 %exitcond974, label %for.cond182.preheader, label %for.cond93.preheader

for.cond186.preheader:                            ; preds = %for.inc204, %for.cond182.preheader
  %indvars.iv962 = phi i64 [ 0, %for.cond182.preheader ], [ %indvars.iv.next963, %for.inc204 ]
  %56 = add nsw i64 %43, %indvars.iv962
  %arrayidx199 = getelementptr inbounds i16** %41, i64 %56
  %57 = load i16** %arrayidx199, align 8, !tbaa !0
  br label %for.body189

for.body189:                                      ; preds = %for.body189, %for.cond186.preheader
  %indvars.iv957 = phi i64 [ 0, %for.cond186.preheader ], [ %indvars.iv.next958, %for.body189 ]
  %arrayidx193 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 1, i64 %indvars.iv962, i64 %indvars.iv957
  %58 = load i32* %arrayidx193, align 4, !tbaa !3
  %conv194 = trunc i32 %58 to i16
  %59 = add nsw i64 %42, %indvars.iv957
  %arrayidx200 = getelementptr inbounds i16* %57, i64 %59
  store i16 %conv194, i16* %arrayidx200, align 2, !tbaa !4
  %indvars.iv.next958 = add i64 %indvars.iv957, 1
  %lftr.wideiv960 = trunc i64 %indvars.iv.next958 to i32
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 16
  br i1 %exitcond961, label %for.inc204, label %for.body189

for.inc204:                                       ; preds = %for.body189
  %indvars.iv.next963 = add i64 %indvars.iv962, 1
  %lftr.wideiv965 = trunc i64 %indvars.iv.next963 to i32
  %exitcond966 = icmp eq i32 %lftr.wideiv965, 16
  br i1 %exitcond966, label %for.end206, label %for.cond186.preheader

for.end206:                                       ; preds = %for.inc204
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %60 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp207 = icmp eq i32 %60, 0
  br i1 %cmp207, label %for.body255, label %for.cond210.preheader

for.cond210.preheader:                            ; preds = %for.end206
  %mb_cr_size_y889 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162
  %61 = load i32* %mb_cr_size_y889, align 4, !tbaa !3
  %cmp211890 = icmp sgt i32 %61, 0
  br i1 %cmp211890, label %for.cond214.preheader.lr.ph, label %for.body255

for.cond214.preheader.lr.ph:                      ; preds = %for.cond210.preheader
  %mb_cr_size_x886 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161
  %62 = load i32* %mb_cr_size_x886, align 4, !tbaa !3
  %cmp215887 = icmp sgt i32 %62, 0
  %imgUV = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 30
  %pix_c_x235 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 35
  %pix_c_y238 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 36
  br label %for.cond214.preheader

for.cond214.preheader:                            ; preds = %for.cond214.preheader.lr.ph, %for.inc248
  %indvars.iv955 = phi i64 [ 0, %for.cond214.preheader.lr.ph ], [ %indvars.iv.next956, %for.inc248 ]
  br i1 %cmp215887, label %for.body217.lr.ph, label %for.inc248

for.body217.lr.ph:                                ; preds = %for.cond214.preheader
  %63 = load i16**** %imgUV, align 8, !tbaa !0
  %64 = load i16*** %63, align 8, !tbaa !0
  %65 = load i32* %pix_c_x235, align 4, !tbaa !3
  %66 = load i32* %pix_c_y238, align 4, !tbaa !3
  %67 = trunc i64 %indvars.iv955 to i32
  %add239 = add nsw i32 %66, %67
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx242 = getelementptr inbounds i16*** %63, i64 1
  %68 = load i16*** %arrayidx242, align 8, !tbaa !0
  %arrayidx243 = getelementptr inbounds i16** %68, i64 %idxprom240
  %69 = load i16** %arrayidx243, align 8, !tbaa !0
  %70 = sext i32 %65 to i64
  %arrayidx228.phi.trans.insert = getelementptr inbounds i16** %64, i64 %idxprom240
  %.pre1017 = load i16** %arrayidx228.phi.trans.insert, align 8, !tbaa !0
  br label %for.body217

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv952 = phi i64 [ 0, %for.body217.lr.ph ], [ %indvars.iv.next953, %for.body217 ]
  %arrayidx221 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 2, i64 %indvars.iv955, i64 %indvars.iv952
  %71 = load i32* %arrayidx221, align 4, !tbaa !3
  %conv222 = trunc i32 %71 to i16
  %72 = trunc i64 %indvars.iv952 to i32
  %add223 = add nsw i32 %65, %72
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx229 = getelementptr inbounds i16* %.pre1017, i64 %idxprom224
  store i16 %conv222, i16* %arrayidx229, align 2, !tbaa !4
  %arrayidx233 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 3, i64 %indvars.iv955, i64 %indvars.iv952
  %73 = load i32* %arrayidx233, align 4, !tbaa !3
  %conv234 = trunc i32 %73 to i16
  %74 = add nsw i64 %70, %indvars.iv952
  %arrayidx244 = getelementptr inbounds i16* %69, i64 %74
  store i16 %conv234, i16* %arrayidx244, align 2, !tbaa !4
  %indvars.iv.next953 = add i64 %indvars.iv952, 1
  %75 = trunc i64 %indvars.iv.next953 to i32
  %cmp215 = icmp slt i32 %75, %62
  br i1 %cmp215, label %for.body217, label %for.inc248

for.inc248:                                       ; preds = %for.body217, %for.cond214.preheader
  %indvars.iv.next956 = add i64 %indvars.iv955, 1
  %76 = trunc i64 %indvars.iv.next956 to i32
  %cmp211 = icmp slt i32 %76, %61
  br i1 %cmp211, label %for.cond214.preheader, label %for.body255

for.body255:                                      ; preds = %for.end206, %for.inc248, %for.cond210.preheader, %for.body255
  %indvars.iv946 = phi i64 [ %indvars.iv.next947, %for.body255 ], [ 0, %for.cond210.preheader ], [ 0, %for.inc248 ], [ 0, %for.end206 ]
  %arrayidx258 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 8, i64 %indvars.iv946
  %77 = load i32* %arrayidx258, align 4, !tbaa !3
  %arrayidx261 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv946
  store i32 %77, i32* %arrayidx261, align 4, !tbaa !3
  %arrayidx264 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 9, i64 %indvars.iv946
  %78 = load i32* %arrayidx264, align 4, !tbaa !3
  %arrayidx267 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv946
  store i32 %78, i32* %arrayidx267, align 4, !tbaa !3
  %indvars.iv.next947 = add i64 %indvars.iv946, 1
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32
  %exitcond949 = icmp eq i32 %lftr.wideiv948, 4
  br i1 %exitcond949, label %for.end270, label %for.body255

for.end270:                                       ; preds = %for.body255
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 22
  %79 = load i32* %luma_transform_size_8x8_flag, align 4, !tbaa !3
  %luma_transform_size_8x8_flag271 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32
  store i32 %79, i32* %luma_transform_size_8x8_flag271, align 4, !tbaa !3
  switch i32 %9, label %for.body322.lr.ph [
    i32 8, label %for.body281.lr.ph
    i32 13, label %if.else345
    i32 9, label %if.else345
  ]

for.body281.lr.ph:                                ; preds = %for.end270
  %80 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %ipredmode = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 10
  %81 = sext i32 %80 to i64
  %.pre1004 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  br label %for.body288.lr.ph

for.body288.lr.ph:                                ; preds = %for.inc307, %for.body281.lr.ph
  %82 = phi i32 [ %.pre1004, %for.body281.lr.ph ], [ %90, %for.inc307 ]
  %indvars.iv938 = phi i64 [ %81, %for.body281.lr.ph ], [ %indvars.iv.next939, %for.inc307 ]
  %k.2871 = phi i32 [ 0, %for.body281.lr.ph ], [ %inc305, %for.inc307 ]
  %83 = load i32*** %ipredmode, align 8, !tbaa !0
  %84 = sext i32 %82 to i64
  %85 = sext i32 %k.2871 to i64
  %ipredmode295.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1006 = load i32*** %ipredmode295.phi.trans.insert, align 8, !tbaa !0
  br label %for.body288

for.body288:                                      ; preds = %for.body288.lr.ph, %for.body288
  %indvars.iv936 = phi i64 [ %85, %for.body288.lr.ph ], [ %indvars.iv.next937, %for.body288 ]
  %indvars.iv934 = phi i64 [ %84, %for.body288.lr.ph ], [ %indvars.iv.next935, %for.body288 ]
  %k.3864 = phi i32 [ %k.2871, %for.body288.lr.ph ], [ %inc305, %for.body288 ]
  %arrayidx291 = getelementptr inbounds i32** %83, i64 %indvars.iv934
  %86 = load i32** %arrayidx291, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds i32* %86, i64 %indvars.iv938
  %87 = load i32* %arrayidx292, align 4, !tbaa !3
  %arrayidx296 = getelementptr inbounds i32** %.pre1006, i64 %indvars.iv934
  %88 = load i32** %arrayidx296, align 8, !tbaa !0
  %arrayidx297 = getelementptr inbounds i32* %88, i64 %indvars.iv938
  store i32 %87, i32* %arrayidx297, align 4, !tbaa !3
  %arrayidx299 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 11, i64 %indvars.iv936
  %89 = load i32* %arrayidx299, align 4, !tbaa !3
  %arrayidx302 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv936
  store i32 %89, i32* %arrayidx302, align 4, !tbaa !3
  %indvars.iv.next935 = add i64 %indvars.iv934, 1
  %indvars.iv.next937 = add i64 %indvars.iv936, 1
  %inc305 = add nsw i32 %k.3864, 1
  %90 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %91 = add nsw i32 %90, 3
  %92 = trunc i64 %indvars.iv934 to i32
  %cmp286 = icmp slt i32 %92, %91
  br i1 %cmp286, label %for.body288, label %for.inc307

for.inc307:                                       ; preds = %for.body288
  %.pre1005 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %indvars.iv.next939 = add i64 %indvars.iv938, 1
  %93 = add nsw i32 %.pre1005, 3
  %94 = trunc i64 %indvars.iv938 to i32
  %cmp279 = icmp slt i32 %94, %93
  br i1 %cmp279, label %for.body288.lr.ph, label %if.end390

for.body322.lr.ph:                                ; preds = %for.end270
  %95 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %.pre1001 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  br label %for.body329.lr.ph

for.body329.lr.ph:                                ; preds = %for.inc342, %for.body322.lr.ph
  %97 = phi i32 [ %.pre1001, %for.body322.lr.ph ], [ %101, %for.inc342 ]
  %indvars.iv932 = phi i64 [ %96, %for.body322.lr.ph ], [ %indvars.iv.next933, %for.inc342 ]
  %k.4859 = phi i32 [ 0, %for.body322.lr.ph ], [ %inc340, %for.inc342 ]
  %98 = sext i32 %97 to i64
  %99 = sext i32 %k.4859 to i64
  %ipredmode332.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1003 = load i32*** %ipredmode332.phi.trans.insert, align 8, !tbaa !0
  br label %for.body329

for.body329:                                      ; preds = %for.body329.lr.ph, %for.body329
  %indvars.iv930 = phi i64 [ %99, %for.body329.lr.ph ], [ %indvars.iv.next931, %for.body329 ]
  %indvars.iv928 = phi i64 [ %98, %for.body329.lr.ph ], [ %indvars.iv.next929, %for.body329 ]
  %k.5854 = phi i32 [ %k.4859, %for.body329.lr.ph ], [ %inc340, %for.body329 ]
  %arrayidx333 = getelementptr inbounds i32** %.pre1003, i64 %indvars.iv928
  %100 = load i32** %arrayidx333, align 8, !tbaa !0
  %arrayidx334 = getelementptr inbounds i32* %100, i64 %indvars.iv932
  store i32 2, i32* %arrayidx334, align 4, !tbaa !3
  %arrayidx337 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv930
  store i32 2, i32* %arrayidx337, align 4, !tbaa !3
  %indvars.iv.next929 = add i64 %indvars.iv928, 1
  %indvars.iv.next931 = add i64 %indvars.iv930, 1
  %inc340 = add nsw i32 %k.5854, 1
  %101 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %102 = add nsw i32 %101, 3
  %103 = trunc i64 %indvars.iv928 to i32
  %cmp327 = icmp slt i32 %103, %102
  br i1 %cmp327, label %for.body329, label %for.inc342

for.inc342:                                       ; preds = %for.body329
  %.pre1002 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %indvars.iv.next933 = add i64 %indvars.iv932, 1
  %104 = add nsw i32 %.pre1002, 3
  %105 = trunc i64 %indvars.iv932 to i32
  %cmp320 = icmp slt i32 %105, %104
  br i1 %cmp320, label %for.body329.lr.ph, label %if.end390

if.else345:                                       ; preds = %for.end270, %for.end270
  %106 = and i32 %9, -5
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %for.body357.lr.ph, label %if.end390

for.body357.lr.ph:                                ; preds = %if.else345
  %108 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %ipredmode367 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 10
  %109 = sext i32 %108 to i64
  %.pre1007 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  br label %for.body364.lr.ph

for.body364.lr.ph:                                ; preds = %for.inc385, %for.body357.lr.ph
  %110 = phi i32 [ %.pre1007, %for.body357.lr.ph ], [ %118, %for.inc385 ]
  %indvars.iv944 = phi i64 [ %109, %for.body357.lr.ph ], [ %indvars.iv.next945, %for.inc385 ]
  %k.6883 = phi i32 [ 0, %for.body357.lr.ph ], [ %inc383, %for.inc385 ]
  %111 = load i32*** %ipredmode367, align 8, !tbaa !0
  %112 = sext i32 %110 to i64
  %113 = sext i32 %k.6883 to i64
  %ipredmode372.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1009 = load i32*** %ipredmode372.phi.trans.insert, align 8, !tbaa !0
  br label %for.body364

for.body364:                                      ; preds = %for.body364.lr.ph, %for.body364
  %indvars.iv942 = phi i64 [ %113, %for.body364.lr.ph ], [ %indvars.iv.next943, %for.body364 ]
  %indvars.iv940 = phi i64 [ %112, %for.body364.lr.ph ], [ %indvars.iv.next941, %for.body364 ]
  %k.7876 = phi i32 [ %k.6883, %for.body364.lr.ph ], [ %inc383, %for.body364 ]
  %arrayidx368 = getelementptr inbounds i32** %111, i64 %indvars.iv940
  %114 = load i32** %arrayidx368, align 8, !tbaa !0
  %arrayidx369 = getelementptr inbounds i32* %114, i64 %indvars.iv944
  %115 = load i32* %arrayidx369, align 4, !tbaa !3
  %arrayidx373 = getelementptr inbounds i32** %.pre1009, i64 %indvars.iv940
  %116 = load i32** %arrayidx373, align 8, !tbaa !0
  %arrayidx374 = getelementptr inbounds i32* %116, i64 %indvars.iv944
  store i32 %115, i32* %arrayidx374, align 4, !tbaa !3
  %arrayidx377 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 11, i64 %indvars.iv942
  %117 = load i32* %arrayidx377, align 4, !tbaa !3
  %arrayidx380 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv942
  store i32 %117, i32* %arrayidx380, align 4, !tbaa !3
  %indvars.iv.next941 = add i64 %indvars.iv940, 1
  %indvars.iv.next943 = add i64 %indvars.iv942, 1
  %inc383 = add nsw i32 %k.7876, 1
  %118 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %119 = add nsw i32 %118, 3
  %120 = trunc i64 %indvars.iv940 to i32
  %cmp362 = icmp slt i32 %120, %119
  br i1 %cmp362, label %for.body364, label %for.inc385

for.inc385:                                       ; preds = %for.body364
  %.pre1008 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %indvars.iv.next945 = add i64 %indvars.iv944, 1
  %121 = add nsw i32 %.pre1008, 3
  %122 = trunc i64 %indvars.iv944 to i32
  %cmp355 = icmp slt i32 %122, %121
  br i1 %cmp355, label %for.body364.lr.ph, label %if.end390

if.end390:                                        ; preds = %for.inc385, %for.inc307, %for.inc342, %if.else345
  %123 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool392 = icmp eq i32 %123, 0
  br i1 %tobool392, label %if.end662, label %if.then393

if.then393:                                       ; preds = %if.end390
  %max_num_references502.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %124 = load i32* %max_num_references502.i, align 4, !tbaa !3
  %cmp5503.i = icmp sgt i32 %124, 0
  %all_mv.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 16
  %all_mv22.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %125 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMotionEstimation.i = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 39
  %bipred_mv1.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 17
  %bipred_mv1112.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72
  %bipred_mv2.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 18
  %bipred_mv2199.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73
  %pred_mv.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 15
  %pred_mv286.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc365.i, %if.then393
  %indvars.iv513.i = phi i64 [ 0, %if.then393 ], [ %indvars.iv.next514.i, %for.inc365.i ]
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc362.i, %for.cond1.preheader.i
  %indvars.iv509.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next510.i, %for.inc362.i ]
  br i1 %cmp5503.i, label %for.cond7.preheader.lr.ph.i, label %for.inc362.i

for.cond7.preheader.lr.ph.i:                      ; preds = %for.cond4.preheader.i
  %126 = load i16******* %all_mv.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i16****** %126, i64 %indvars.iv513.i
  %127 = load i16****** %arrayidx.i, align 8, !tbaa !0
  %arrayidx13.i = getelementptr inbounds i16***** %127, i64 %indvars.iv509.i
  %128 = load i16***** %arrayidx13.i, align 8, !tbaa !0
  %129 = load i16**** %128, align 8, !tbaa !0
  %130 = load i16******* %all_mv22.i, align 8, !tbaa !0
  %arrayidx23.i = getelementptr inbounds i16****** %130, i64 %indvars.iv513.i
  %131 = load i16****** %arrayidx23.i, align 8, !tbaa !0
  %arrayidx24.i = getelementptr inbounds i16***** %131, i64 %indvars.iv509.i
  %132 = load i16***** %arrayidx24.i, align 8, !tbaa !0
  %133 = load i16**** %132, align 8, !tbaa !0
  %arrayidx58.i = getelementptr inbounds i16**** %128, i64 1
  %134 = load i16**** %arrayidx58.i, align 8, !tbaa !0
  %arrayidx69.i = getelementptr inbounds i16**** %132, i64 1
  %135 = load i16**** %arrayidx69.i, align 8, !tbaa !0
  %136 = load i32* %BiPredMotionEstimation.i, align 4, !tbaa !3
  %tobool.i = icmp ne i32 %136, 0
  %137 = load i16******* %pred_mv.i, align 8, !tbaa !0
  %arrayidx276.i = getelementptr inbounds i16****** %137, i64 %indvars.iv513.i
  %138 = load i16****** %arrayidx276.i, align 8, !tbaa !0
  %arrayidx277.i = getelementptr inbounds i16***** %138, i64 %indvars.iv509.i
  %139 = load i16***** %arrayidx277.i, align 8, !tbaa !0
  %140 = load i16**** %139, align 8, !tbaa !0
  %141 = load i16******* %pred_mv286.i, align 8, !tbaa !0
  %arrayidx287.i = getelementptr inbounds i16****** %141, i64 %indvars.iv513.i
  %142 = load i16****** %arrayidx287.i, align 8, !tbaa !0
  %arrayidx288.i = getelementptr inbounds i16***** %142, i64 %indvars.iv509.i
  %143 = load i16***** %arrayidx288.i, align 8, !tbaa !0
  %144 = load i16**** %143, align 8, !tbaa !0
  %arrayidx322.i = getelementptr inbounds i16**** %139, i64 1
  %145 = load i16**** %arrayidx322.i, align 8, !tbaa !0
  %arrayidx333.i = getelementptr inbounds i16**** %143, i64 1
  %146 = load i16**** %arrayidx333.i, align 8, !tbaa !0
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.inc359.i, %for.cond7.preheader.lr.ph.i
  %indvars.iv507.i = phi i64 [ 0, %for.cond7.preheader.lr.ph.i ], [ %indvars.iv.next508.i, %for.inc359.i ]
  %arrayidx15.i = getelementptr inbounds i16*** %129, i64 %indvars.iv507.i
  %147 = load i16*** %arrayidx15.i, align 8, !tbaa !0
  %arrayidx26.i = getelementptr inbounds i16*** %133, i64 %indvars.iv507.i
  %148 = load i16*** %arrayidx26.i, align 8, !tbaa !0
  %arrayidx59.i = getelementptr inbounds i16*** %134, i64 %indvars.iv507.i
  %149 = load i16*** %arrayidx59.i, align 8, !tbaa !0
  %arrayidx70.i = getelementptr inbounds i16*** %135, i64 %indvars.iv507.i
  %150 = load i16*** %arrayidx70.i, align 8, !tbaa !0
  %151 = trunc i64 %indvars.iv507.i to i32
  %cmp95.i = icmp eq i32 %151, 1
  %or.cond.i = and i1 %tobool.i, %cmp95.i
  %arrayidx279.i = getelementptr inbounds i16*** %140, i64 %indvars.iv507.i
  %152 = load i16*** %arrayidx279.i, align 8, !tbaa !0
  %arrayidx290.i = getelementptr inbounds i16*** %144, i64 %indvars.iv507.i
  %153 = load i16*** %arrayidx290.i, align 8, !tbaa !0
  %arrayidx323.i = getelementptr inbounds i16*** %145, i64 %indvars.iv507.i
  %154 = load i16*** %arrayidx323.i, align 8, !tbaa !0
  %arrayidx334.i = getelementptr inbounds i16*** %146, i64 %indvars.iv507.i
  %155 = load i16*** %arrayidx334.i, align 8, !tbaa !0
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end.i, %for.cond7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond7.preheader.i ], [ %indvars.iv.next.i, %if.end.i ]
  %arrayidx16.i = getelementptr inbounds i16** %147, i64 %indvars.iv.i
  %156 = load i16** %arrayidx16.i, align 8, !tbaa !0
  %157 = load i16* %156, align 2, !tbaa !4
  %arrayidx27.i = getelementptr inbounds i16** %148, i64 %indvars.iv.i
  %158 = load i16** %arrayidx27.i, align 8, !tbaa !0
  store i16 %157, i16* %158, align 2, !tbaa !4
  %arrayidx39.i = getelementptr inbounds i16* %156, i64 1
  %159 = load i16* %arrayidx39.i, align 2, !tbaa !4
  %arrayidx50.i = getelementptr inbounds i16* %158, i64 1
  store i16 %159, i16* %arrayidx50.i, align 2, !tbaa !4
  %arrayidx60.i = getelementptr inbounds i16** %149, i64 %indvars.iv.i
  %160 = load i16** %arrayidx60.i, align 8, !tbaa !0
  %161 = load i16* %160, align 2, !tbaa !4
  %arrayidx71.i = getelementptr inbounds i16** %150, i64 %indvars.iv.i
  %162 = load i16** %arrayidx71.i, align 8, !tbaa !0
  store i16 %161, i16* %162, align 2, !tbaa !4
  %arrayidx83.i = getelementptr inbounds i16* %160, i64 1
  %163 = load i16* %arrayidx83.i, align 2, !tbaa !4
  %arrayidx94.i = getelementptr inbounds i16* %162, i64 1
  store i16 %163, i16* %arrayidx94.i, align 2, !tbaa !4
  br i1 %or.cond.i, label %land.lhs.true96.i, label %if.end.i

land.lhs.true96.i:                                ; preds = %for.body9.i
  %164 = load i32* %type, align 4, !tbaa !3
  %cmp97.i = icmp eq i32 %164, 1
  br i1 %cmp97.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true96.i
  %165 = load i16******* %bipred_mv1.i, align 8, !tbaa !0
  %arrayidx102.i = getelementptr inbounds i16****** %165, i64 %indvars.iv513.i
  %166 = load i16****** %arrayidx102.i, align 8, !tbaa !0
  %arrayidx103.i = getelementptr inbounds i16***** %166, i64 %indvars.iv509.i
  %167 = load i16***** %arrayidx103.i, align 8, !tbaa !0
  %168 = load i16**** %167, align 8, !tbaa !0
  %arrayidx105.i = getelementptr inbounds i16*** %168, i64 %indvars.iv507.i
  %169 = load i16*** %arrayidx105.i, align 8, !tbaa !0
  %arrayidx106.i = getelementptr inbounds i16** %169, i64 %indvars.iv.i
  %170 = load i16** %arrayidx106.i, align 8, !tbaa !0
  %171 = load i16* %170, align 2, !tbaa !4
  %172 = load i16******* %bipred_mv1112.i, align 8, !tbaa !0
  %arrayidx113.i = getelementptr inbounds i16****** %172, i64 %indvars.iv513.i
  %173 = load i16****** %arrayidx113.i, align 8, !tbaa !0
  %arrayidx114.i = getelementptr inbounds i16***** %173, i64 %indvars.iv509.i
  %174 = load i16***** %arrayidx114.i, align 8, !tbaa !0
  %175 = load i16**** %174, align 8, !tbaa !0
  %arrayidx116.i = getelementptr inbounds i16*** %175, i64 %indvars.iv507.i
  %176 = load i16*** %arrayidx116.i, align 8, !tbaa !0
  %arrayidx117.i = getelementptr inbounds i16** %176, i64 %indvars.iv.i
  %177 = load i16** %arrayidx117.i, align 8, !tbaa !0
  store i16 %171, i16* %177, align 2, !tbaa !4
  %arrayidx129.i = getelementptr inbounds i16* %170, i64 1
  %178 = load i16* %arrayidx129.i, align 2, !tbaa !4
  %arrayidx140.i = getelementptr inbounds i16* %177, i64 1
  store i16 %178, i16* %arrayidx140.i, align 2, !tbaa !4
  %arrayidx148.i = getelementptr inbounds i16**** %167, i64 1
  %179 = load i16**** %arrayidx148.i, align 8, !tbaa !0
  %arrayidx149.i = getelementptr inbounds i16*** %179, i64 %indvars.iv507.i
  %180 = load i16*** %arrayidx149.i, align 8, !tbaa !0
  %arrayidx150.i = getelementptr inbounds i16** %180, i64 %indvars.iv.i
  %181 = load i16** %arrayidx150.i, align 8, !tbaa !0
  %182 = load i16* %181, align 2, !tbaa !4
  %arrayidx159.i = getelementptr inbounds i16**** %174, i64 1
  %183 = load i16**** %arrayidx159.i, align 8, !tbaa !0
  %arrayidx160.i = getelementptr inbounds i16*** %183, i64 %indvars.iv507.i
  %184 = load i16*** %arrayidx160.i, align 8, !tbaa !0
  %arrayidx161.i = getelementptr inbounds i16** %184, i64 %indvars.iv.i
  %185 = load i16** %arrayidx161.i, align 8, !tbaa !0
  store i16 %182, i16* %185, align 2, !tbaa !4
  %arrayidx173.i = getelementptr inbounds i16* %181, i64 1
  %186 = load i16* %arrayidx173.i, align 2, !tbaa !4
  %arrayidx184.i = getelementptr inbounds i16* %185, i64 1
  store i16 %186, i16* %arrayidx184.i, align 2, !tbaa !4
  %187 = load i16******* %bipred_mv2.i, align 8, !tbaa !0
  %arrayidx189.i = getelementptr inbounds i16****** %187, i64 %indvars.iv513.i
  %188 = load i16****** %arrayidx189.i, align 8, !tbaa !0
  %arrayidx190.i = getelementptr inbounds i16***** %188, i64 %indvars.iv509.i
  %189 = load i16***** %arrayidx190.i, align 8, !tbaa !0
  %190 = load i16**** %189, align 8, !tbaa !0
  %arrayidx192.i = getelementptr inbounds i16*** %190, i64 %indvars.iv507.i
  %191 = load i16*** %arrayidx192.i, align 8, !tbaa !0
  %arrayidx193.i = getelementptr inbounds i16** %191, i64 %indvars.iv.i
  %192 = load i16** %arrayidx193.i, align 8, !tbaa !0
  %193 = load i16* %192, align 2, !tbaa !4
  %194 = load i16******* %bipred_mv2199.i, align 8, !tbaa !0
  %arrayidx200.i = getelementptr inbounds i16****** %194, i64 %indvars.iv513.i
  %195 = load i16****** %arrayidx200.i, align 8, !tbaa !0
  %arrayidx201.i = getelementptr inbounds i16***** %195, i64 %indvars.iv509.i
  %196 = load i16***** %arrayidx201.i, align 8, !tbaa !0
  %197 = load i16**** %196, align 8, !tbaa !0
  %arrayidx203.i = getelementptr inbounds i16*** %197, i64 %indvars.iv507.i
  %198 = load i16*** %arrayidx203.i, align 8, !tbaa !0
  %arrayidx204.i = getelementptr inbounds i16** %198, i64 %indvars.iv.i
  %199 = load i16** %arrayidx204.i, align 8, !tbaa !0
  store i16 %193, i16* %199, align 2, !tbaa !4
  %arrayidx216.i = getelementptr inbounds i16* %192, i64 1
  %200 = load i16* %arrayidx216.i, align 2, !tbaa !4
  %arrayidx227.i = getelementptr inbounds i16* %199, i64 1
  store i16 %200, i16* %arrayidx227.i, align 2, !tbaa !4
  %arrayidx235.i = getelementptr inbounds i16**** %189, i64 1
  %201 = load i16**** %arrayidx235.i, align 8, !tbaa !0
  %arrayidx236.i = getelementptr inbounds i16*** %201, i64 %indvars.iv507.i
  %202 = load i16*** %arrayidx236.i, align 8, !tbaa !0
  %arrayidx237.i = getelementptr inbounds i16** %202, i64 %indvars.iv.i
  %203 = load i16** %arrayidx237.i, align 8, !tbaa !0
  %204 = load i16* %203, align 2, !tbaa !4
  %arrayidx246.i = getelementptr inbounds i16**** %196, i64 1
  %205 = load i16**** %arrayidx246.i, align 8, !tbaa !0
  %arrayidx247.i = getelementptr inbounds i16*** %205, i64 %indvars.iv507.i
  %206 = load i16*** %arrayidx247.i, align 8, !tbaa !0
  %arrayidx248.i = getelementptr inbounds i16** %206, i64 %indvars.iv.i
  %207 = load i16** %arrayidx248.i, align 8, !tbaa !0
  store i16 %204, i16* %207, align 2, !tbaa !4
  %arrayidx260.i = getelementptr inbounds i16* %203, i64 1
  %208 = load i16* %arrayidx260.i, align 2, !tbaa !4
  %arrayidx271.i = getelementptr inbounds i16* %207, i64 1
  store i16 %208, i16* %arrayidx271.i, align 2, !tbaa !4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true96.i, %for.body9.i
  %arrayidx280.i = getelementptr inbounds i16** %152, i64 %indvars.iv.i
  %209 = load i16** %arrayidx280.i, align 8, !tbaa !0
  %210 = load i16* %209, align 2, !tbaa !4
  %arrayidx291.i = getelementptr inbounds i16** %153, i64 %indvars.iv.i
  %211 = load i16** %arrayidx291.i, align 8, !tbaa !0
  store i16 %210, i16* %211, align 2, !tbaa !4
  %arrayidx303.i = getelementptr inbounds i16* %209, i64 1
  %212 = load i16* %arrayidx303.i, align 2, !tbaa !4
  %arrayidx314.i = getelementptr inbounds i16* %211, i64 1
  store i16 %212, i16* %arrayidx314.i, align 2, !tbaa !4
  %arrayidx324.i = getelementptr inbounds i16** %154, i64 %indvars.iv.i
  %213 = load i16** %arrayidx324.i, align 8, !tbaa !0
  %214 = load i16* %213, align 2, !tbaa !4
  %arrayidx335.i = getelementptr inbounds i16** %155, i64 %indvars.iv.i
  %215 = load i16** %arrayidx335.i, align 8, !tbaa !0
  store i16 %214, i16* %215, align 2, !tbaa !4
  %arrayidx347.i = getelementptr inbounds i16* %213, i64 1
  %216 = load i16* %arrayidx347.i, align 2, !tbaa !4
  %arrayidx358.i = getelementptr inbounds i16* %215, i64 1
  store i16 %216, i16* %arrayidx358.i, align 2, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv922 = trunc i64 %indvars.iv.next.i to i32
  %exitcond923 = icmp eq i32 %lftr.wideiv922, 9
  br i1 %exitcond923, label %for.inc359.i, label %for.body9.i

for.inc359.i:                                     ; preds = %if.end.i
  %indvars.iv.next508.i = add i64 %indvars.iv507.i, 1
  %217 = trunc i64 %indvars.iv.next508.i to i32
  %cmp5.i = icmp slt i32 %217, %124
  br i1 %cmp5.i, label %for.cond7.preheader.i, label %for.inc362.i

for.inc362.i:                                     ; preds = %for.inc359.i, %for.cond4.preheader.i
  %indvars.iv.next510.i = add i64 %indvars.iv509.i, 1
  %lftr.wideiv924 = trunc i64 %indvars.iv.next510.i to i32
  %exitcond925 = icmp eq i32 %lftr.wideiv924, 4
  br i1 %exitcond925, label %for.inc365.i, label %for.cond4.preheader.i

for.inc365.i:                                     ; preds = %for.inc362.i
  %indvars.iv.next514.i = add i64 %indvars.iv513.i, 1
  %lftr.wideiv926 = trunc i64 %indvars.iv.next514.i to i32
  %exitcond927 = icmp eq i32 %lftr.wideiv926, 4
  br i1 %exitcond927, label %copy_motion_vectors_MB.exit, label %for.cond1.preheader.i

copy_motion_vectors_MB.exit:                      ; preds = %for.inc365.i
  %218 = load i32* %mb_type6, align 4, !tbaa !3
  switch i32 %218, label %for.cond410.preheader [
    i32 9, label %for.cond600.preheader
    i32 10, label %for.cond600.preheader
    i32 13, label %for.cond600.preheader
  ]

for.cond600.preheader:                            ; preds = %copy_motion_vectors_MB.exit, %copy_motion_vectors_MB.exit, %copy_motion_vectors_MB.exit
  %219 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %220 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %mv614 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35
  %221 = load i16***** %mv614, align 8, !tbaa !0
  %222 = load i16**** %221, align 8, !tbaa !0
  %223 = sext i32 %220 to i64
  %224 = sext i32 %219 to i64
  br label %for.cond604.preheader

for.cond410.preheader:                            ; preds = %copy_motion_vectors_MB.exit, %for.inc596
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %for.inc596 ], [ 0, %copy_motion_vectors_MB.exit ]
  %225 = trunc i64 %indvars.iv906 to i32
  %div414 = sdiv i32 %225, 2
  %mul = shl i32 %div414, 1
  br label %for.body413

for.body413:                                      ; preds = %for.inc593, %for.cond410.preheader
  %indvars.iv = phi i64 [ 0, %for.cond410.preheader ], [ %indvars.iv.next, %for.inc593 ]
  %226 = trunc i64 %indvars.iv to i32
  %div = sdiv i32 %226, 2
  %add415 = add nsw i32 %mul, %div
  %idxprom416 = sext i32 %add415 to i64
  %arrayidx418 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom416
  %227 = load i32* %arrayidx418, align 4, !tbaa !3
  %arrayidx425 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom416
  %228 = load i32* %arrayidx425, align 4, !tbaa !3
  %cmp426 = icmp eq i32 %228, 1
  br i1 %cmp426, label %if.else483, label %if.then428

if.then428:                                       ; preds = %for.body413
  %idxprom429 = sext i32 %227 to i64
  %arrayidx435 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 0, i64 %indvars.iv906, i64 %indvars.iv
  %229 = load i16* %arrayidx435, align 2, !tbaa !4
  %idxprom436 = sext i16 %229 to i64
  %230 = load i16******* %all_mv.i, align 8, !tbaa !0
  %arrayidx439 = getelementptr inbounds i16****** %230, i64 %indvars.iv
  %231 = load i16****** %arrayidx439, align 8, !tbaa !0
  %arrayidx440 = getelementptr inbounds i16***** %231, i64 %indvars.iv906
  %232 = load i16***** %arrayidx440, align 8, !tbaa !0
  %233 = load i16**** %232, align 8, !tbaa !0
  %arrayidx442 = getelementptr inbounds i16*** %233, i64 %idxprom436
  %234 = load i16*** %arrayidx442, align 8, !tbaa !0
  %arrayidx443 = getelementptr inbounds i16** %234, i64 %idxprom429
  %235 = load i16** %arrayidx443, align 8, !tbaa !0
  %236 = load i16* %235, align 2, !tbaa !4
  %237 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %add446 = add nsw i32 %237, %225
  %idxprom447 = sext i32 %add446 to i64
  %238 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %add449 = add nsw i32 %238, %226
  %idxprom450 = sext i32 %add449 to i64
  %mv = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35
  %239 = load i16***** %mv, align 8, !tbaa !0
  %240 = load i16**** %239, align 8, !tbaa !0
  %arrayidx452 = getelementptr inbounds i16*** %240, i64 %idxprom450
  %241 = load i16*** %arrayidx452, align 8, !tbaa !0
  %arrayidx453 = getelementptr inbounds i16** %241, i64 %idxprom447
  %242 = load i16** %arrayidx453, align 8, !tbaa !0
  store i16 %236, i16* %242, align 2, !tbaa !4
  %243 = load i16* %arrayidx435, align 2, !tbaa !4
  %idxprom462 = sext i16 %243 to i64
  %arrayidx469 = getelementptr inbounds i16*** %233, i64 %idxprom462
  %244 = load i16*** %arrayidx469, align 8, !tbaa !0
  %arrayidx470 = getelementptr inbounds i16** %244, i64 %idxprom429
  %245 = load i16** %arrayidx470, align 8, !tbaa !0
  %arrayidx471 = getelementptr inbounds i16* %245, i64 1
  %246 = load i16* %arrayidx471, align 2, !tbaa !4
  %arrayidx482 = getelementptr inbounds i16* %242, i64 1
  store i16 %246, i16* %arrayidx482, align 2, !tbaa !4
  br label %if.end506

if.else483:                                       ; preds = %for.body413
  %247 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %add485 = add nsw i32 %247, %225
  %idxprom486 = sext i32 %add485 to i64
  %248 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %add488 = add nsw i32 %248, %226
  %idxprom489 = sext i32 %add488 to i64
  %mv490 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35
  %249 = load i16***** %mv490, align 8, !tbaa !0
  %250 = load i16**** %249, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i16*** %250, i64 %idxprom489
  %251 = load i16*** %arrayidx492, align 8, !tbaa !0
  %arrayidx493 = getelementptr inbounds i16** %251, i64 %idxprom486
  %252 = load i16** %arrayidx493, align 8, !tbaa !0
  store i16 0, i16* %252, align 2, !tbaa !4
  %arrayidx505 = getelementptr inbounds i16* %252, i64 1
  store i16 0, i16* %arrayidx505, align 2, !tbaa !4
  br label %if.end506

if.end506:                                        ; preds = %if.else483, %if.then428
  %253 = phi i16**** [ %249, %if.else483 ], [ %239, %if.then428 ]
  %254 = phi i32 [ %248, %if.else483 ], [ %238, %if.then428 ]
  %255 = phi i32 [ %247, %if.else483 ], [ %237, %if.then428 ]
  br i1 %cmp, label %if.then508, label %for.inc593

if.then508:                                       ; preds = %if.end506
  %cmp509 = icmp eq i32 %228, 0
  br i1 %cmp509, label %if.else568, label %if.then511

if.then511:                                       ; preds = %if.then508
  %idxprom512 = sext i32 %227 to i64
  %arrayidx518 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 1, i64 %indvars.iv906, i64 %indvars.iv
  %256 = load i16* %arrayidx518, align 2, !tbaa !4
  %idxprom519 = sext i16 %256 to i64
  %257 = load i16******* %all_mv.i, align 8, !tbaa !0
  %arrayidx523 = getelementptr inbounds i16****** %257, i64 %indvars.iv
  %258 = load i16****** %arrayidx523, align 8, !tbaa !0
  %arrayidx524 = getelementptr inbounds i16***** %258, i64 %indvars.iv906
  %259 = load i16***** %arrayidx524, align 8, !tbaa !0
  %arrayidx525 = getelementptr inbounds i16**** %259, i64 1
  %260 = load i16**** %arrayidx525, align 8, !tbaa !0
  %arrayidx526 = getelementptr inbounds i16*** %260, i64 %idxprom519
  %261 = load i16*** %arrayidx526, align 8, !tbaa !0
  %arrayidx527 = getelementptr inbounds i16** %261, i64 %idxprom512
  %262 = load i16** %arrayidx527, align 8, !tbaa !0
  %263 = load i16* %262, align 2, !tbaa !4
  %add530 = add nsw i32 %255, %225
  %idxprom531 = sext i32 %add530 to i64
  %add533 = add nsw i32 %254, %226
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx536 = getelementptr inbounds i16**** %253, i64 1
  %264 = load i16**** %arrayidx536, align 8, !tbaa !0
  %arrayidx537 = getelementptr inbounds i16*** %264, i64 %idxprom534
  %265 = load i16*** %arrayidx537, align 8, !tbaa !0
  %arrayidx538 = getelementptr inbounds i16** %265, i64 %idxprom531
  %266 = load i16** %arrayidx538, align 8, !tbaa !0
  store i16 %263, i16* %266, align 2, !tbaa !4
  %267 = load i16* %arrayidx518, align 2, !tbaa !4
  %idxprom547 = sext i16 %267 to i64
  %arrayidx554 = getelementptr inbounds i16*** %260, i64 %idxprom547
  %268 = load i16*** %arrayidx554, align 8, !tbaa !0
  %arrayidx555 = getelementptr inbounds i16** %268, i64 %idxprom512
  %269 = load i16** %arrayidx555, align 8, !tbaa !0
  %arrayidx556 = getelementptr inbounds i16* %269, i64 1
  %270 = load i16* %arrayidx556, align 2, !tbaa !4
  %arrayidx567 = getelementptr inbounds i16* %266, i64 1
  store i16 %270, i16* %arrayidx567, align 2, !tbaa !4
  br label %for.inc593

if.else568:                                       ; preds = %if.then508
  %add570 = add nsw i32 %255, %225
  %idxprom571 = sext i32 %add570 to i64
  %add573 = add nsw i32 %254, %226
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx576 = getelementptr inbounds i16**** %253, i64 1
  %271 = load i16**** %arrayidx576, align 8, !tbaa !0
  %arrayidx577 = getelementptr inbounds i16*** %271, i64 %idxprom574
  %272 = load i16*** %arrayidx577, align 8, !tbaa !0
  %arrayidx578 = getelementptr inbounds i16** %272, i64 %idxprom571
  %273 = load i16** %arrayidx578, align 8, !tbaa !0
  store i16 0, i16* %273, align 2, !tbaa !4
  %arrayidx590 = getelementptr inbounds i16* %273, i64 1
  store i16 0, i16* %arrayidx590, align 2, !tbaa !4
  br label %for.inc593

for.inc593:                                       ; preds = %if.end506, %if.else568, %if.then511
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc596, label %for.body413

for.inc596:                                       ; preds = %for.inc593
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %lftr.wideiv908 = trunc i64 %indvars.iv.next907 to i32
  %exitcond909 = icmp eq i32 %lftr.wideiv908, 4
  br i1 %exitcond909, label %if.end662, label %for.cond410.preheader

for.cond604.preheader:                            ; preds = %for.inc658, %for.cond600.preheader
  %indvars.iv916 = phi i64 [ 0, %for.cond600.preheader ], [ %indvars.iv.next917, %for.inc658 ]
  %274 = add nsw i64 %224, %indvars.iv916
  br label %for.body607

for.body607:                                      ; preds = %for.inc655, %for.cond604.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond604.preheader ], [ %indvars.iv.next911, %for.inc655 ]
  %275 = add nsw i64 %223, %indvars.iv910
  %arrayidx616 = getelementptr inbounds i16*** %222, i64 %275
  %276 = load i16*** %arrayidx616, align 8, !tbaa !0
  %arrayidx617 = getelementptr inbounds i16** %276, i64 %274
  %277 = load i16** %arrayidx617, align 8, !tbaa !0
  store i16 0, i16* %277, align 2, !tbaa !4
  %arrayidx629 = getelementptr inbounds i16* %277, i64 1
  store i16 0, i16* %arrayidx629, align 2, !tbaa !4
  br i1 %cmp, label %if.then631, label %for.inc655

if.then631:                                       ; preds = %for.body607
  %278 = trunc i64 %indvars.iv916 to i32
  %add633 = add nsw i32 %219, %278
  %idxprom634 = sext i32 %add633 to i64
  %279 = trunc i64 %indvars.iv910 to i32
  %add636 = add nsw i32 %220, %279
  %idxprom637 = sext i32 %add636 to i64
  %arrayidx639 = getelementptr inbounds i16**** %221, i64 1
  %280 = load i16**** %arrayidx639, align 8, !tbaa !0
  %arrayidx640 = getelementptr inbounds i16*** %280, i64 %idxprom637
  %281 = load i16*** %arrayidx640, align 8, !tbaa !0
  %arrayidx641 = getelementptr inbounds i16** %281, i64 %idxprom634
  %282 = load i16** %arrayidx641, align 8, !tbaa !0
  store i16 0, i16* %282, align 2, !tbaa !4
  %arrayidx653 = getelementptr inbounds i16* %282, i64 1
  store i16 0, i16* %arrayidx653, align 2, !tbaa !4
  br label %for.inc655

for.inc655:                                       ; preds = %for.body607, %if.then631
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  %lftr.wideiv914 = trunc i64 %indvars.iv.next911 to i32
  %exitcond915 = icmp eq i32 %lftr.wideiv914, 4
  br i1 %exitcond915, label %for.inc658, label %for.body607

for.inc658:                                       ; preds = %for.inc655
  %indvars.iv.next917 = add i64 %indvars.iv916, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv.next917 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, 4
  br i1 %exitcond921, label %if.end662, label %for.cond604.preheader

if.end662:                                        ; preds = %for.inc658, %for.inc596, %if.end390
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @buf2img(i16** nocapture %imgX, i8* nocapture %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes) #0 {
entry:
  %conv = sext i32 %symbol_size_in_bytes to i64
  %cmp = icmp ugt i32 %symbol_size_in_bytes, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([110 x i8]* @.str3, i64 0, i64 0), i32 500) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 (...)* @testEndian() #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %for.cond78.preheader, label %if.then2

for.cond78.preheader:                             ; preds = %if.end
  %cmp79166 = icmp sgt i32 %size_y, 0
  br i1 %cmp79166, label %for.cond82.preheader.lr.ph, label %if.end106

for.cond82.preheader.lr.ph:                       ; preds = %for.cond78.preheader
  %cmp83164 = icmp sgt i32 %size_x, 0
  br label %for.cond82.preheader

if.then2:                                         ; preds = %if.end
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond18.preheader
    i32 4, label %for.cond43.preheader
  ]

for.cond43.preheader:                             ; preds = %if.then2
  %cmp44181 = icmp sgt i32 %size_y, 0
  br i1 %cmp44181, label %for.cond47.preheader.lr.ph, label %sw.default

for.cond47.preheader.lr.ph:                       ; preds = %for.cond43.preheader
  %cmp48178 = icmp sgt i32 %size_x, 0
  br label %for.cond47.preheader

for.cond18.preheader:                             ; preds = %if.then2
  %cmp19176 = icmp sgt i32 %size_y, 0
  br i1 %cmp19176, label %for.cond22.preheader.lr.ph, label %if.end106

for.cond22.preheader.lr.ph:                       ; preds = %for.cond18.preheader
  %cmp23173 = icmp sgt i32 %size_x, 0
  br label %for.cond22.preheader

for.cond.preheader:                               ; preds = %if.then2
  %cmp3171 = icmp sgt i32 %size_y, 0
  br i1 %cmp3171, label %for.cond5.preheader.lr.ph, label %if.end106

for.cond5.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp6168 = icmp sgt i32 %size_x, 0
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc14, %for.cond5.preheader.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.cond5.preheader.lr.ph ], [ %indvars.iv.next195, %for.inc14 ]
  br i1 %cmp6168, label %for.body8.lr.ph, label %for.inc14

for.body8.lr.ph:                                  ; preds = %for.cond5.preheader
  %0 = trunc i64 %indvars.iv194 to i32
  %mul = mul nsw i32 %0, %size_x
  %arrayidx12 = getelementptr inbounds i16** %imgX, i64 %indvars.iv194
  %1 = sext i32 %mul to i64
  %.pre = load i16** %arrayidx12, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %indvars.iv189 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next190, %for.body8 ]
  %2 = add nsw i64 %indvars.iv189, %1
  %arrayidx = getelementptr inbounds i8* %buf, i64 %2
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %conv9 = zext i8 %3 to i16
  %arrayidx13 = getelementptr inbounds i16* %.pre, i64 %indvars.iv189
  store i16 %conv9, i16* %arrayidx13, align 2, !tbaa !4
  %indvars.iv.next190 = add i64 %indvars.iv189, 1
  %lftr.wideiv192 = trunc i64 %indvars.iv.next190 to i32
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %size_x
  br i1 %exitcond193, label %for.inc14, label %for.body8

for.inc14:                                        ; preds = %for.body8, %for.cond5.preheader
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %size_y
  br i1 %exitcond197, label %if.end106, label %for.cond5.preheader

for.cond22.preheader:                             ; preds = %for.inc39, %for.cond22.preheader.lr.ph
  %indvars.iv203 = phi i64 [ 0, %for.cond22.preheader.lr.ph ], [ %indvars.iv.next204, %for.inc39 ]
  br i1 %cmp23173, label %for.body25.lr.ph, label %for.inc39

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %4 = trunc i64 %indvars.iv203 to i32
  %mul26 = mul nsw i32 %4, %size_x
  %arrayidx34 = getelementptr inbounds i16** %imgX, i64 %indvars.iv203
  %5 = zext i32 %mul26 to i64
  %.pre216 = load i16** %arrayidx34, align 8, !tbaa !0
  br label %for.body25

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv198 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next199, %for.body25 ]
  %6 = add nsw i64 %indvars.iv198, %5
  %7 = trunc i64 %6 to i32
  %mul28 = shl nsw i32 %7, 1
  %idx.ext = sext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds i8* %buf, i64 %idx.ext
  %tmp16.0.cast = bitcast i8* %add.ptr to i16*
  %tmp16.0.copyload = load i16* %tmp16.0.cast, align 1
  %or = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload)
  %arrayidx35 = getelementptr inbounds i16* %.pre216, i64 %indvars.iv198
  store i16 %or, i16* %arrayidx35, align 2, !tbaa !4
  %indvars.iv.next199 = add i64 %indvars.iv198, 1
  %lftr.wideiv201 = trunc i64 %indvars.iv.next199 to i32
  %exitcond202 = icmp eq i32 %lftr.wideiv201, %size_x
  br i1 %exitcond202, label %for.inc39, label %for.body25

for.inc39:                                        ; preds = %for.body25, %for.cond22.preheader
  %indvars.iv.next204 = add i64 %indvars.iv203, 1
  %lftr.wideiv205 = trunc i64 %indvars.iv.next204 to i32
  %exitcond206 = icmp eq i32 %lftr.wideiv205, %size_y
  br i1 %exitcond206, label %if.end106, label %for.cond22.preheader

for.cond47.preheader:                             ; preds = %for.inc75, %for.cond47.preheader.lr.ph
  %indvars.iv212 = phi i64 [ 0, %for.cond47.preheader.lr.ph ], [ %indvars.iv.next213, %for.inc75 ]
  br i1 %cmp48178, label %for.body50.lr.ph, label %for.inc75

for.body50.lr.ph:                                 ; preds = %for.cond47.preheader
  %8 = trunc i64 %indvars.iv212 to i32
  %mul51 = mul nsw i32 %8, %size_x
  %arrayidx70 = getelementptr inbounds i16** %imgX, i64 %indvars.iv212
  %9 = zext i32 %mul51 to i64
  %.pre217 = load i16** %arrayidx70, align 8, !tbaa !0
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %for.body50.lr.ph
  %indvars.iv207 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next208, %for.body50 ]
  %10 = add nsw i64 %indvars.iv207, %9
  %11 = trunc i64 %10 to i32
  %mul53 = shl nsw i32 %11, 2
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8* %buf, i64 %idx.ext54
  %tmp32.0.cast = bitcast i8* %add.ptr55 to i32*
  %tmp32.0.copyload = load i32* %tmp32.0.cast, align 1
  %tmp32.0.insert.ext = zext i32 %tmp32.0.copyload to i64
  %and61 = lshr i64 %tmp32.0.insert.ext, 8
  %shr62 = and i64 %and61, 65280
  %shr65 = lshr i64 %tmp32.0.insert.ext, 24
  %or66 = or i64 %shr62, %shr65
  %conv67 = trunc i64 %or66 to i16
  %arrayidx71 = getelementptr inbounds i16* %.pre217, i64 %indvars.iv207
  store i16 %conv67, i16* %arrayidx71, align 2, !tbaa !4
  %indvars.iv.next208 = add i64 %indvars.iv207, 1
  %lftr.wideiv210 = trunc i64 %indvars.iv.next208 to i32
  %exitcond211 = icmp eq i32 %lftr.wideiv210, %size_x
  br i1 %exitcond211, label %for.inc75, label %for.body50

for.inc75:                                        ; preds = %for.body50, %for.cond47.preheader
  %indvars.iv.next213 = add i64 %indvars.iv212, 1
  %lftr.wideiv214 = trunc i64 %indvars.iv.next213 to i32
  %exitcond215 = icmp eq i32 %lftr.wideiv214, %size_y
  br i1 %exitcond215, label %sw.default, label %for.cond47.preheader

sw.default:                                       ; preds = %for.cond43.preheader, %for.inc75, %if.then2
  tail call void @error(i8* getelementptr inbounds ([80 x i8]* @.str4, i64 0, i64 0), i32 500) #7
  br label %if.end106

for.cond82.preheader:                             ; preds = %for.inc103, %for.cond82.preheader.lr.ph
  %indvars.iv185 = phi i64 [ 0, %for.cond82.preheader.lr.ph ], [ %indvars.iv.next186, %for.inc103 ]
  br i1 %cmp83164, label %for.body85.lr.ph, label %for.inc103

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %arrayidx88 = getelementptr inbounds i16** %imgX, i64 %indvars.iv185
  %12 = trunc i64 %indvars.iv185 to i32
  %mul94 = mul nsw i32 %12, %size_x
  %13 = zext i32 %mul94 to i64
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %14 = load i16** %arrayidx88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i16* %14, i64 %indvars.iv
  store i16 0, i16* %arrayidx89, align 2, !tbaa !4
  %15 = bitcast i16* %arrayidx89 to i8*
  %16 = add nsw i64 %indvars.iv, %13
  %17 = trunc i64 %16 to i32
  %mul96 = mul nsw i32 %17, %symbol_size_in_bytes
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i8* %buf, i64 %idx.ext97
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %add.ptr98, i64 %conv, i32 1, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size_x
  br i1 %exitcond, label %for.inc103, label %for.body85

for.inc103:                                       ; preds = %for.body85, %for.cond82.preheader
  %indvars.iv.next186 = add i64 %indvars.iv185, 1
  %lftr.wideiv187 = trunc i64 %indvars.iv.next186 to i32
  %exitcond188 = icmp eq i32 %lftr.wideiv187, %size_y
  br i1 %exitcond188, label %if.end106, label %for.cond82.preheader

if.end106:                                        ; preds = %for.cond18.preheader, %for.inc39, %for.cond.preheader, %for.inc14, %for.cond78.preheader, %for.inc103, %sw.default
  ret void
}

; Function Attrs: optsize
declare i32 @testEndian(...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare i32 @test_wp_P_slice(i32) #2

; Function Attrs: optsize
declare i32 @picture_coding_decision(%struct.Picture*, %struct.Picture*, i32) #2

; Function Attrs: optsize
declare i32 @test_wp_B_slice(i32) #2

; Function Attrs: nounwind optsize
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @report_stats_on_error(...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal void @find_distortion() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %structure = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 7
  %1 = load i32* %structure, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_width1265 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 16
  %3 = load i32* %img_width1265, align 4, !tbaa !3
  %cmp2266 = icmp sgt i32 %3, 0
  br i1 %cmp2266, label %for.cond3.preheader.lr.ph, label %for.end19

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %img_height4260 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 17
  %4 = load i32* %img_height4260, align 4, !tbaa !3
  %cmp5261 = icmp sgt i32 %4, 0
  %5 = load i16*** @imgY_org, align 8, !tbaa !0
  %6 = load i16*** @imgY_com, align 8, !tbaa !0
  %quad = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc17
  %indvars.iv282 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next283, %for.inc17 ]
  %diff_y.0267 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %diff_y.1.lcssa, %for.inc17 ]
  br i1 %cmp5261, label %for.body6.lr.ph, label %for.inc17

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %7 = load i32** %quad, align 8, !tbaa !0
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv280 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next281, %for.body6 ]
  %diff_y.1263 = phi i64 [ %diff_y.0267, %for.body6.lr.ph ], [ %add, %for.body6 ]
  %arrayidx = getelementptr inbounds i16** %5, i64 %indvars.iv280
  %8 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i16* %8, i64 %indvars.iv282
  %9 = load i16* %arrayidx8, align 2, !tbaa !4
  %conv = zext i16 %9 to i32
  %arrayidx11 = getelementptr inbounds i16** %6, i64 %indvars.iv280
  %10 = load i16** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i16* %10, i64 %indvars.iv282
  %11 = load i16* %arrayidx12, align 2, !tbaa !4
  %conv13 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv, %conv13
  %ispos220 = icmp sgt i32 %sub, -1
  %neg221 = sub i32 0, %sub
  %12 = select i1 %ispos220, i32 %sub, i32 %neg221
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds i32* %7, i64 %idxprom14
  %13 = load i32* %arrayidx15, align 4, !tbaa !3
  %conv16 = sext i32 %13 to i64
  %add = add nsw i64 %conv16, %diff_y.1263
  %indvars.iv.next281 = add i64 %indvars.iv280, 1
  %14 = trunc i64 %indvars.iv.next281 to i32
  %cmp5 = icmp slt i32 %14, %4
  br i1 %cmp5, label %for.body6, label %for.inc17

for.inc17:                                        ; preds = %for.body6, %for.cond3.preheader
  %diff_y.1.lcssa = phi i64 [ %diff_y.0267, %for.cond3.preheader ], [ %add, %for.body6 ]
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %15 = trunc i64 %indvars.iv.next283 to i32
  %cmp2 = icmp slt i32 %15, %3
  br i1 %cmp2, label %for.cond3.preheader, label %for.end19

for.end19:                                        ; preds = %for.inc17, %for.cond.preheader
  %diff_y.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %diff_y.1.lcssa, %for.inc17 ]
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %16 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.end168, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end19
  %img_width_cr253 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 138
  %17 = load i32* %img_width_cr253, align 4, !tbaa !3
  %cmp24254 = icmp sgt i32 %17, 0
  br i1 %cmp24254, label %for.cond27.preheader.lr.ph, label %if.end168

for.cond27.preheader.lr.ph:                       ; preds = %for.cond23.preheader
  %img_height_cr245 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 137
  %18 = load i32* %img_height_cr245, align 4, !tbaa !3
  %cmp28246 = icmp sgt i32 %18, 0
  %19 = load i16**** @imgUV_org, align 8, !tbaa !0
  %20 = load i16**** @imgUV_com, align 8, !tbaa !0
  %quad46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53
  %arrayidx52 = getelementptr inbounds i16*** %19, i64 1
  %arrayidx58 = getelementptr inbounds i16*** %20, i64 1
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %for.inc72
  %indvars.iv278 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %indvars.iv.next279, %for.inc72 ]
  %diff_v.0256 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %diff_v.1.lcssa, %for.inc72 ]
  %diff_u.0255 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %diff_u.1.lcssa, %for.inc72 ]
  br i1 %cmp28246, label %for.body30.lr.ph, label %for.inc72

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %21 = load i16*** %19, align 8, !tbaa !0
  %22 = load i16*** %20, align 8, !tbaa !0
  %23 = load i32** %quad46, align 8, !tbaa !0
  %24 = load i16*** %arrayidx52, align 8, !tbaa !0
  %25 = load i16*** %arrayidx58, align 8, !tbaa !0
  br label %for.body30

for.body30:                                       ; preds = %for.body30.lr.ph, %for.body30
  %indvars.iv276 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next277, %for.body30 ]
  %diff_v.1249 = phi i64 [ %diff_v.0256, %for.body30.lr.ph ], [ %add68, %for.body30 ]
  %diff_u.1248 = phi i64 [ %diff_u.0255, %for.body30.lr.ph ], [ %add49, %for.body30 ]
  %arrayidx34 = getelementptr inbounds i16** %21, i64 %indvars.iv276
  %26 = load i16** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i16* %26, i64 %indvars.iv278
  %27 = load i16* %arrayidx35, align 2, !tbaa !4
  %conv36 = zext i16 %27 to i32
  %arrayidx40 = getelementptr inbounds i16** %22, i64 %indvars.iv276
  %28 = load i16** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i16* %28, i64 %indvars.iv278
  %29 = load i16* %arrayidx41, align 2, !tbaa !4
  %conv42 = zext i16 %29 to i32
  %sub43 = sub nsw i32 %conv36, %conv42
  %ispos216 = icmp sgt i32 %sub43, -1
  %neg217 = sub i32 0, %sub43
  %30 = select i1 %ispos216, i32 %sub43, i32 %neg217
  %idxprom45 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds i32* %23, i64 %idxprom45
  %31 = load i32* %arrayidx47, align 4, !tbaa !3
  %conv48 = sext i32 %31 to i64
  %add49 = add nsw i64 %conv48, %diff_u.1248
  %arrayidx53 = getelementptr inbounds i16** %24, i64 %indvars.iv276
  %32 = load i16** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i16* %32, i64 %indvars.iv278
  %33 = load i16* %arrayidx54, align 2, !tbaa !4
  %conv55 = zext i16 %33 to i32
  %arrayidx59 = getelementptr inbounds i16** %25, i64 %indvars.iv276
  %34 = load i16** %arrayidx59, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i16* %34, i64 %indvars.iv278
  %35 = load i16* %arrayidx60, align 2, !tbaa !4
  %conv61 = zext i16 %35 to i32
  %sub62 = sub nsw i32 %conv55, %conv61
  %ispos218 = icmp sgt i32 %sub62, -1
  %neg219 = sub i32 0, %sub62
  %36 = select i1 %ispos218, i32 %sub62, i32 %neg219
  %idxprom64 = sext i32 %36 to i64
  %arrayidx66 = getelementptr inbounds i32* %23, i64 %idxprom64
  %37 = load i32* %arrayidx66, align 4, !tbaa !3
  %conv67 = sext i32 %37 to i64
  %add68 = add nsw i64 %conv67, %diff_v.1249
  %indvars.iv.next277 = add i64 %indvars.iv276, 1
  %38 = trunc i64 %indvars.iv.next277 to i32
  %cmp28 = icmp slt i32 %38, %18
  br i1 %cmp28, label %for.body30, label %for.inc72

for.inc72:                                        ; preds = %for.body30, %for.cond27.preheader
  %diff_v.1.lcssa = phi i64 [ %diff_v.0256, %for.cond27.preheader ], [ %add68, %for.body30 ]
  %diff_u.1.lcssa = phi i64 [ %diff_u.0255, %for.cond27.preheader ], [ %add49, %for.body30 ]
  %indvars.iv.next279 = add i64 %indvars.iv278, 1
  %39 = trunc i64 %indvars.iv.next279 to i32
  %cmp24 = icmp slt i32 %39, %17
  br i1 %cmp24, label %for.cond27.preheader, label %if.end168

if.else:                                          ; preds = %entry
  %40 = load i16*** @imgY_org_frm, align 8, !tbaa !0
  store i16** %40, i16*** @imgY_org, align 8, !tbaa !0
  %41 = load i16**** @imgUV_org_frm, align 8, !tbaa !0
  store i16*** %41, i16**** @imgUV_org, align 8, !tbaa !0
  %42 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_width76240 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 16
  %43 = load i32* %img_width76240, align 4, !tbaa !3
  %cmp77241 = icmp sgt i32 %43, 0
  br i1 %cmp77241, label %for.cond80.preheader.lr.ph, label %for.end107

for.cond80.preheader.lr.ph:                       ; preds = %if.else
  %img_height81235 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 17
  %44 = load i32* %img_height81235, align 4, !tbaa !3
  %cmp82236 = icmp sgt i32 %44, 0
  %45 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgY = getelementptr inbounds %struct.storable_picture* %45, i64 0, i32 25
  %quad98 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.cond80.preheader.lr.ph, %for.inc105
  %indvars.iv274 = phi i64 [ 0, %for.cond80.preheader.lr.ph ], [ %indvars.iv.next275, %for.inc105 ]
  %diff_y.2242 = phi i64 [ 0, %for.cond80.preheader.lr.ph ], [ %diff_y.3.lcssa, %for.inc105 ]
  br i1 %cmp82236, label %for.body84.lr.ph, label %for.inc105

for.body84.lr.ph:                                 ; preds = %for.cond80.preheader
  %46 = load i16*** %imgY, align 8, !tbaa !0
  %47 = load i32** %quad98, align 8, !tbaa !0
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv272 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next273, %for.body84 ]
  %diff_y.3238 = phi i64 [ %diff_y.2242, %for.body84.lr.ph ], [ %add101, %for.body84 ]
  %arrayidx87 = getelementptr inbounds i16** %40, i64 %indvars.iv272
  %48 = load i16** %arrayidx87, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i16* %48, i64 %indvars.iv274
  %49 = load i16* %arrayidx88, align 2, !tbaa !4
  %conv89 = zext i16 %49 to i32
  %arrayidx92 = getelementptr inbounds i16** %46, i64 %indvars.iv272
  %50 = load i16** %arrayidx92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i16* %50, i64 %indvars.iv274
  %51 = load i16* %arrayidx93, align 2, !tbaa !4
  %conv94 = zext i16 %51 to i32
  %sub95 = sub nsw i32 %conv89, %conv94
  %ispos214 = icmp sgt i32 %sub95, -1
  %neg215 = sub i32 0, %sub95
  %52 = select i1 %ispos214, i32 %sub95, i32 %neg215
  %idxprom97 = sext i32 %52 to i64
  %arrayidx99 = getelementptr inbounds i32* %47, i64 %idxprom97
  %53 = load i32* %arrayidx99, align 4, !tbaa !3
  %conv100 = sext i32 %53 to i64
  %add101 = add nsw i64 %conv100, %diff_y.3238
  %indvars.iv.next273 = add i64 %indvars.iv272, 1
  %54 = trunc i64 %indvars.iv.next273 to i32
  %cmp82 = icmp slt i32 %54, %44
  br i1 %cmp82, label %for.body84, label %for.inc105

for.inc105:                                       ; preds = %for.body84, %for.cond80.preheader
  %diff_y.3.lcssa = phi i64 [ %diff_y.2242, %for.cond80.preheader ], [ %add101, %for.body84 ]
  %indvars.iv.next275 = add i64 %indvars.iv274, 1
  %55 = trunc i64 %indvars.iv.next275 to i32
  %cmp77 = icmp slt i32 %55, %43
  br i1 %cmp77, label %for.cond80.preheader, label %for.end107

for.end107:                                       ; preds = %for.inc105, %if.else
  %diff_y.2.lcssa = phi i64 [ 0, %if.else ], [ %diff_y.3.lcssa, %for.inc105 ]
  %yuv_format108 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %56 = load i32* %yuv_format108, align 4, !tbaa !3
  %cmp109 = icmp eq i32 %56, 0
  br i1 %cmp109, label %if.end168, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %for.end107
  %img_width_cr113228 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 138
  %57 = load i32* %img_width_cr113228, align 4, !tbaa !3
  %cmp114229 = icmp sgt i32 %57, 0
  br i1 %cmp114229, label %for.cond117.preheader.lr.ph, label %if.end168

for.cond117.preheader.lr.ph:                      ; preds = %for.cond112.preheader
  %img_height_cr118222 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 137
  %58 = load i32* %img_height_cr118222, align 4, !tbaa !3
  %cmp119223 = icmp sgt i32 %58, 0
  %59 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %imgUV = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 30
  %quad137 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53
  %arrayidx143 = getelementptr inbounds i16*** %41, i64 1
  br label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond117.preheader.lr.ph, %for.inc164
  %indvars.iv270 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %indvars.iv.next271, %for.inc164 ]
  %diff_v.2231 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %diff_v.3.lcssa, %for.inc164 ]
  %diff_u.2230 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %diff_u.3.lcssa, %for.inc164 ]
  br i1 %cmp119223, label %for.body121.lr.ph, label %for.inc164

for.body121.lr.ph:                                ; preds = %for.cond117.preheader
  %60 = load i16*** %41, align 8, !tbaa !0
  %61 = load i16**** %imgUV, align 8, !tbaa !0
  %62 = load i16*** %61, align 8, !tbaa !0
  %63 = load i32** %quad137, align 8, !tbaa !0
  %64 = load i16*** %arrayidx143, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i16*** %61, i64 1
  %65 = load i16*** %arrayidx150, align 8, !tbaa !0
  br label %for.body121

for.body121:                                      ; preds = %for.body121.lr.ph, %for.body121
  %indvars.iv = phi i64 [ 0, %for.body121.lr.ph ], [ %indvars.iv.next, %for.body121 ]
  %diff_v.3226 = phi i64 [ %diff_v.2231, %for.body121.lr.ph ], [ %add160, %for.body121 ]
  %diff_u.3225 = phi i64 [ %diff_u.2230, %for.body121.lr.ph ], [ %add140, %for.body121 ]
  %arrayidx125 = getelementptr inbounds i16** %60, i64 %indvars.iv
  %66 = load i16** %arrayidx125, align 8, !tbaa !0
  %arrayidx126 = getelementptr inbounds i16* %66, i64 %indvars.iv270
  %67 = load i16* %arrayidx126, align 2, !tbaa !4
  %conv127 = zext i16 %67 to i32
  %arrayidx131 = getelementptr inbounds i16** %62, i64 %indvars.iv
  %68 = load i16** %arrayidx131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i16* %68, i64 %indvars.iv270
  %69 = load i16* %arrayidx132, align 2, !tbaa !4
  %conv133 = zext i16 %69 to i32
  %sub134 = sub nsw i32 %conv127, %conv133
  %ispos = icmp sgt i32 %sub134, -1
  %neg = sub i32 0, %sub134
  %70 = select i1 %ispos, i32 %sub134, i32 %neg
  %idxprom136 = sext i32 %70 to i64
  %arrayidx138 = getelementptr inbounds i32* %63, i64 %idxprom136
  %71 = load i32* %arrayidx138, align 4, !tbaa !3
  %conv139 = sext i32 %71 to i64
  %add140 = add nsw i64 %conv139, %diff_u.3225
  %arrayidx144 = getelementptr inbounds i16** %64, i64 %indvars.iv
  %72 = load i16** %arrayidx144, align 8, !tbaa !0
  %arrayidx145 = getelementptr inbounds i16* %72, i64 %indvars.iv270
  %73 = load i16* %arrayidx145, align 2, !tbaa !4
  %conv146 = zext i16 %73 to i32
  %arrayidx151 = getelementptr inbounds i16** %65, i64 %indvars.iv
  %74 = load i16** %arrayidx151, align 8, !tbaa !0
  %arrayidx152 = getelementptr inbounds i16* %74, i64 %indvars.iv270
  %75 = load i16* %arrayidx152, align 2, !tbaa !4
  %conv153 = zext i16 %75 to i32
  %sub154 = sub nsw i32 %conv146, %conv153
  %ispos212 = icmp sgt i32 %sub154, -1
  %neg213 = sub i32 0, %sub154
  %76 = select i1 %ispos212, i32 %sub154, i32 %neg213
  %idxprom156 = sext i32 %76 to i64
  %arrayidx158 = getelementptr inbounds i32* %63, i64 %idxprom156
  %77 = load i32* %arrayidx158, align 4, !tbaa !3
  %conv159 = sext i32 %77 to i64
  %add160 = add nsw i64 %conv159, %diff_v.3226
  %indvars.iv.next = add i64 %indvars.iv, 1
  %78 = trunc i64 %indvars.iv.next to i32
  %cmp119 = icmp slt i32 %78, %58
  br i1 %cmp119, label %for.body121, label %for.inc164

for.inc164:                                       ; preds = %for.body121, %for.cond117.preheader
  %diff_v.3.lcssa = phi i64 [ %diff_v.2231, %for.cond117.preheader ], [ %add160, %for.body121 ]
  %diff_u.3.lcssa = phi i64 [ %diff_u.2230, %for.cond117.preheader ], [ %add140, %for.body121 ]
  %indvars.iv.next271 = add i64 %indvars.iv270, 1
  %79 = trunc i64 %indvars.iv.next271 to i32
  %cmp114 = icmp slt i32 %79, %57
  br i1 %cmp114, label %for.cond117.preheader, label %if.end168

if.end168:                                        ; preds = %for.cond23.preheader, %for.inc72, %for.cond112.preheader, %for.inc164, %for.end19, %for.end107
  %diff_y.4 = phi i64 [ %diff_y.0.lcssa, %for.end19 ], [ %diff_y.2.lcssa, %for.end107 ], [ %diff_y.2.lcssa, %for.inc164 ], [ %diff_y.2.lcssa, %for.cond112.preheader ], [ %diff_y.0.lcssa, %for.inc72 ], [ %diff_y.0.lcssa, %for.cond23.preheader ]
  %diff_u.4 = phi i64 [ 0, %for.end19 ], [ 0, %for.end107 ], [ %diff_u.3.lcssa, %for.inc164 ], [ 0, %for.cond112.preheader ], [ %diff_u.1.lcssa, %for.inc72 ], [ 0, %for.cond23.preheader ]
  %diff_v.4 = phi i64 [ 0, %for.end19 ], [ 0, %for.end107 ], [ %diff_v.3.lcssa, %for.inc164 ], [ 0, %for.cond112.preheader ], [ %diff_v.1.lcssa, %for.inc72 ], [ 0, %for.cond23.preheader ]
  %conv169 = sitofp i64 %diff_y.4 to float
  %80 = load %struct.SNRParameters** @snr, align 8, !tbaa !0
  %snr_y = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 0
  store float %conv169, float* %snr_y, align 4, !tbaa !5
  %conv170 = sitofp i64 %diff_u.4 to float
  %snr_u = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 1
  store float %conv170, float* %snr_u, align 4, !tbaa !5
  %conv171 = sitofp i64 %diff_v.4 to float
  %snr_v = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 2
  store float %conv171, float* %snr_v, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind optsize
declare double @log10(double) #3

; Function Attrs: optsize
declare void @PutPel_11(i16*, i32, i32, i16 zeroext, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_field() #0 {
entry:
  %0 = load i32** @last_P_no_fld, align 8, !tbaa !0
  store i32* %0, i32** @last_P_no, align 8, !tbaa !0
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3
  store i32 0, i32* %current_mb_nr, align 4, !tbaa !3
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 5
  store i32 0, i32* %current_slice_nr, align 4, !tbaa !3
  %2 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_slice = getelementptr inbounds %struct.StatParameters* %2, i64 0, i32 6
  store i32 0, i32* %bit_slice, align 4, !tbaa !3
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 5
  %4 = load i32* %jumpd, align 4, !tbaa !3
  %mul = shl nsw i32 %4, 1
  store i32 %mul, i32* %jumpd, align 4, !tbaa !3
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 34
  %5 = load i32* %successive_Bframe, align 4, !tbaa !3
  %mul1 = shl nsw i32 %5, 1
  store i32 %mul1, i32* %successive_Bframe, align 4, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0
  %6 = load i32* %number, align 4, !tbaa !3
  %div = sdiv i32 %6, 2
  store i32 %div, i32* %number, align 4, !tbaa !3
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 84
  %7 = load i32* %buf_cycle, align 4, !tbaa !3
  %div2 = sdiv i32 %7, 2
  store i32 %div2, i32* %buf_cycle, align 4, !tbaa !3
  %mb_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 29
  %block_c_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 24
  store i32 0, i32* %block_c_x, align 4, !tbaa !3
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 67
  %8 = bitcast i32* %mb_x to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 4, i1 false)
  %9 = load i32* %b_frame_to_code, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  %10 = load i32* %jumpd, align 4, !tbaa !3
  %add = add nsw i32 %10, 2
  br i1 %tobool, label %if.then, label %if.else67

if.then:                                          ; preds = %entry
  %mul5 = mul nsw i32 %add, %div
  %fld_type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56
  %11 = load i32* %fld_type, align 4, !tbaa !3
  %add6 = add nsw i32 %mul5, %11
  %tr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55
  store i32 %add6, i32* %tr, align 4, !tbaa !3
  %tobool8 = icmp eq i32 %11, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %imgtr_next_P_fld = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 63
  %12 = load i32* %imgtr_next_P_fld, align 4, !tbaa !3
  %imgtr_last_P_fld = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 64
  store i32 %12, i32* %imgtr_last_P_fld, align 4, !tbaa !3
  store i32 %add6, i32* %imgtr_next_P_fld, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9
  %last_frame = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 79
  %13 = load i32* %last_frame, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %13, 0
  br i1 %tobool12, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %add14 = add nsw i32 %div, 1
  %no_frames = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2
  %14 = load i32* %no_frames, align 4, !tbaa !3
  %cmp = icmp eq i32 %add14, %14
  br i1 %cmp, label %if.then15, label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  store i32 %13, i32* %tr, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then15, %land.lhs.true
  %15 = phi i32 [ %add6, %if.end ], [ %13, %if.then15 ], [ %add6, %land.lhs.true ]
  %.off = add i32 %6, 1
  %16 = icmp ult i32 %.off, 3
  br i1 %16, label %if.end26, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end18
  %17 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %17, 0
  br i1 %cmp23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  store i32 %15, i32* @nextP_tr_fld, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true21, %if.end18, %if.then24
  %RCEnable = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 127
  %18 = load i32* %RCEnable, align 4, !tbaa !3
  %tobool27 = icmp eq i32 %18, 0
  br i1 %tobool27, label %if.then28, label %if.end58

if.then28:                                        ; preds = %if.end26
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %19 = load i32* %type, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %19, 2
  %qp2start = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 82
  %20 = load i32* %qp2start, align 4, !tbaa !3
  %cmp31 = icmp sgt i32 %20, 0
  br i1 %cmp29, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.then28
  br i1 %cmp31, label %land.lhs.true32, label %if.else

land.lhs.true32:                                  ; preds = %if.then30
  %21 = load i32* %tr, align 4, !tbaa !3
  %cmp35 = icmp slt i32 %21, %20
  br i1 %cmp35, label %if.else, label %if.then36

if.then36:                                        ; preds = %land.lhs.true32
  %qp02 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 83
  %22 = load i32* %qp02, align 4, !tbaa !3
  %qp = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %22, i32* %qp, align 4, !tbaa !3
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true32, %if.then30
  %qp0 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 3
  %23 = load i32* %qp0, align 4, !tbaa !3
  %qp37 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %23, i32* %qp37, align 4, !tbaa !3
  br label %if.end58

if.else39:                                        ; preds = %if.then28
  br i1 %cmp31, label %land.lhs.true42, label %if.else48

land.lhs.true42:                                  ; preds = %if.else39
  %24 = load i32* %tr, align 4, !tbaa !3
  %cmp45 = icmp slt i32 %24, %20
  br i1 %cmp45, label %if.else48, label %if.then46

if.then46:                                        ; preds = %land.lhs.true42
  %qpN2 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 80
  %25 = load i32* %qpN2, align 4, !tbaa !3
  %qp47 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %25, i32* %qp47, align 4, !tbaa !3
  br label %if.end50

if.else48:                                        ; preds = %land.lhs.true42, %if.else39
  %qpN = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 4
  %26 = load i32* %qpN, align 4, !tbaa !3
  %qp49 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %26, i32* %qp49, align 4, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  %cmp52 = icmp eq i32 %19, 3
  br i1 %cmp52, label %if.then53, label %if.end58

if.then53:                                        ; preds = %if.end50
  %qpsp = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 44
  %27 = load i32* %qpsp, align 4, !tbaa !3
  %qp54 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %27, i32* %qp54, align 4, !tbaa !3
  %qpsp_pred = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 45
  %28 = load i32* %qpsp_pred, align 4, !tbaa !3
  %qpsp55 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 11
  store i32 %28, i32* %qpsp55, align 4, !tbaa !3
  br label %if.end58

if.end58:                                         ; preds = %if.end26, %if.else, %if.then36, %if.then53, %if.end50
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 22
  %29 = load i32* %mb_y_upd, align 4, !tbaa !3
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 23
  store i32 %29, i32* %mb_y_intra, align 4, !tbaa !3
  %intra_upd = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 19
  %30 = load i32* %intra_upd, align 4, !tbaa !3
  %cmp59 = icmp sgt i32 %30, 0
  br i1 %cmp59, label %if.then60, label %if.end275

if.then60:                                        ; preds = %if.end58
  %31 = load i32* %number, align 4, !tbaa !3
  %div63 = sdiv i32 %31, %30
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13
  %32 = load i32* %width, align 4, !tbaa !3
  %div64 = sdiv i32 %32, 16
  %rem = srem i32 %div63, %div64
  store i32 %rem, i32* %mb_y_upd, align 4, !tbaa !3
  br label %if.end275

if.else67:                                        ; preds = %entry
  %p_interval = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 66
  store i32 %add, i32* %p_interval, align 4, !tbaa !3
  %sub = add nsw i32 %div, -1
  %mul72 = mul nsw i32 %sub, %add
  %fld_type73 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56
  %33 = load i32* %fld_type73, align 4, !tbaa !3
  %add74 = add nsw i32 %mul72, %33
  %mul77 = mul nsw i32 %add, %div
  %add79 = add nsw i32 %mul77, %33
  %tobool81 = icmp eq i32 %33, 0
  br i1 %tobool81, label %if.then82, label %if.else105

if.then82:                                        ; preds = %if.else67
  %add83 = add nsw i32 %add74, 1
  store i32 %add83, i32* %0, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds i32* %0, i64 1
  store i32 %add74, i32* %arrayidx84, align 4, !tbaa !3
  %34 = load i32* %buf_cycle, align 4, !tbaa !3
  %cmp86311 = icmp slt i32 %34, 1
  br i1 %cmp86311, label %if.end135, label %for.body

for.body:                                         ; preds = %if.then82, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.then82 ]
  %35 = trunc i64 %indvars.iv to i32
  %mul87 = shl nsw i32 %35, 1
  %sub88 = add nsw i32 %mul87, -2
  %idxprom = sext i32 %sub88 to i64
  %arrayidx89 = getelementptr inbounds i32* %0, i64 %idxprom
  %36 = load i32* %arrayidx89, align 4, !tbaa !3
  %37 = load i32* %p_interval, align 4, !tbaa !3
  %sub91 = sub nsw i32 %36, %37
  %idxprom93 = sext i32 %mul87 to i64
  %arrayidx94 = getelementptr inbounds i32* %0, i64 %idxprom93
  store i32 %sub91, i32* %arrayidx94, align 4, !tbaa !3
  %sub96 = add nsw i32 %mul87, -1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds i32* %0, i64 %idxprom97
  %38 = load i32* %arrayidx98, align 4, !tbaa !3
  %39 = load i32* %p_interval, align 4, !tbaa !3
  %sub100 = sub nsw i32 %38, %39
  %add102308 = or i32 %mul87, 1
  %idxprom103 = sext i32 %add102308 to i64
  %arrayidx104 = getelementptr inbounds i32* %0, i64 %idxprom103
  store i32 %sub100, i32* %arrayidx104, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %40 = load i32* %buf_cycle, align 4, !tbaa !3
  %cmp86 = icmp slt i32 %35, %40
  br i1 %cmp86, label %for.body, label %if.end135

if.else105:                                       ; preds = %if.else67
  %sub106 = add nsw i32 %add79, -1
  store i32 %sub106, i32* %0, align 4, !tbaa !3
  %arrayidx108 = getelementptr inbounds i32* %0, i64 1
  store i32 %add74, i32* %arrayidx108, align 4, !tbaa !3
  %41 = load i32* %buf_cycle, align 4, !tbaa !3
  %cmp111315 = icmp slt i32 %41, 1
  br i1 %cmp111315, label %if.end135, label %for.body112

for.body112:                                      ; preds = %if.else105, %for.body112
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %for.body112 ], [ 1, %if.else105 ]
  %42 = trunc i64 %indvars.iv317 to i32
  %mul113 = shl nsw i32 %42, 1
  %sub114 = add nsw i32 %mul113, -2
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds i32* %0, i64 %idxprom115
  %43 = load i32* %arrayidx116, align 4, !tbaa !3
  %44 = load i32* %p_interval, align 4, !tbaa !3
  %sub118 = sub nsw i32 %43, %44
  %idxprom120 = sext i32 %mul113 to i64
  %arrayidx121 = getelementptr inbounds i32* %0, i64 %idxprom120
  store i32 %sub118, i32* %arrayidx121, align 4, !tbaa !3
  %sub123 = add nsw i32 %mul113, -1
  %idxprom124 = sext i32 %sub123 to i64
  %arrayidx125 = getelementptr inbounds i32* %0, i64 %idxprom124
  %45 = load i32* %arrayidx125, align 4, !tbaa !3
  %46 = load i32* %p_interval, align 4, !tbaa !3
  %sub127 = sub nsw i32 %45, %46
  %add129309 = or i32 %mul113, 1
  %idxprom130 = sext i32 %add129309 to i64
  %arrayidx131 = getelementptr inbounds i32* %0, i64 %idxprom130
  store i32 %sub127, i32* %arrayidx131, align 4, !tbaa !3
  %indvars.iv.next318 = add i64 %indvars.iv317, 1
  %47 = load i32* %buf_cycle, align 4, !tbaa !3
  %cmp111 = icmp slt i32 %42, %47
  br i1 %cmp111, label %for.body112, label %if.end135

if.end135:                                        ; preds = %if.else105, %for.body112, %if.then82, %for.body
  %last_frame136 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 79
  %48 = load i32* %last_frame136, align 4, !tbaa !3
  %tobool137 = icmp eq i32 %48, 0
  br i1 %tobool137, label %if.end147, label %land.lhs.true138

land.lhs.true138:                                 ; preds = %if.end135
  %49 = load i32* %number, align 4, !tbaa !3
  %add140 = add nsw i32 %49, 1
  %no_frames141 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2
  %50 = load i32* %no_frames141, align 4, !tbaa !3
  %cmp142 = icmp eq i32 %add140, %50
  br i1 %cmp142, label %if.then143, label %if.end147

if.then143:                                       ; preds = %land.lhs.true138
  %sub145 = sub nsw i32 %48, %add74
  store i32 %sub145, i32* %p_interval, align 4, !tbaa !3
  br label %if.end147

if.end147:                                        ; preds = %if.end135, %if.then143, %land.lhs.true138
  %nextP_no.0 = phi i32 [ %48, %if.then143 ], [ %add79, %land.lhs.true138 ], [ %add79, %if.end135 ]
  %51 = load i32* %jumpd, align 4, !tbaa !3
  %add149 = add nsw i32 %51, 1
  %conv = sitofp i32 %add149 to double
  %52 = load i32* %successive_Bframe, align 4, !tbaa !3
  %conv151 = sitofp i32 %52 to double
  %add152 = fadd double %conv151, 1.000000e+00
  %div153 = fdiv double %conv, %add152
  %b_interval = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 65
  store double %div153, double* %b_interval, align 8, !tbaa !6
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 55
  %53 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp154 = icmp eq i32 %53, 3
  br i1 %cmp154, label %if.end158.thread, label %if.end158

if.end158.thread:                                 ; preds = %if.end147
  store double 1.000000e+00, double* %b_interval, align 8, !tbaa !6
  %54 = load i32* %b_frame_to_code, align 4, !tbaa !3
  br label %if.then161

if.end158:                                        ; preds = %if.end147
  %tobool160 = icmp eq i32 %53, 0
  %add163 = fadd double %div153, 1.000000e+00
  %55 = load i32* %b_frame_to_code, align 4, !tbaa !3
  br i1 %tobool160, label %if.else174, label %if.then161

if.then161:                                       ; preds = %if.end158.thread, %if.end158
  %56 = phi i32 [ %54, %if.end158.thread ], [ %55, %if.end158 ]
  %add163321 = phi double [ 2.000000e+00, %if.end158.thread ], [ %add163, %if.end158 ]
  %sub165 = add nsw i32 %56, -1
  %idxprom166 = sext i32 %sub165 to i64
  %57 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %display_no = getelementptr inbounds %struct.GOP_DATA* %57, i64 %idxprom166, i32 1
  %58 = load i32* %display_no, align 4, !tbaa !3
  %add168 = add nsw i32 %58, 1
  %conv169 = sitofp i32 %add168 to double
  %mul170 = fmul double %add163321, %conv169
  %conv171 = fptosi double %mul170 to i32
  %add172 = add nsw i32 %conv171, %add74
  %tr173 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55
  store i32 %add172, i32* %tr173, align 4, !tbaa !3
  br label %if.end183

if.else174:                                       ; preds = %if.end158
  %conv178 = sitofp i32 %55 to double
  %mul179 = fmul double %add163, %conv178
  %conv180 = fptosi double %mul179 to i32
  %add181 = add nsw i32 %conv180, %add74
  %tr182 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55
  store i32 %add181, i32* %tr182, align 4, !tbaa !3
  br label %if.end183

if.end183:                                        ; preds = %if.else174, %if.then161
  %59 = phi i32 [ %55, %if.else174 ], [ %56, %if.then161 ]
  %60 = phi i32 [ %add181, %if.else174 ], [ %add172, %if.then161 ]
  %cmp185 = icmp slt i32 %60, %nextP_no.0
  br i1 %cmp185, label %if.end190, label %if.then187

if.then187:                                       ; preds = %if.end183
  %tr184 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55
  %sub188 = add nsw i32 %nextP_no.0, -1
  store i32 %sub188, i32* %tr184, align 4, !tbaa !3
  br label %if.end190

if.end190:                                        ; preds = %if.end183, %if.then187
  %61 = phi i32 [ %60, %if.end183 ], [ %sub188, %if.then187 ]
  %RCEnable191 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 127
  %62 = load i32* %RCEnable191, align 4, !tbaa !3
  %tobool192 = icmp eq i32 %62, 0
  %63 = load i32* %PyramidCoding, align 4, !tbaa !3
  %cmp195 = icmp eq i32 %63, 3
  br i1 %tobool192, label %land.lhs.true193, label %if.else263

land.lhs.true193:                                 ; preds = %if.end190
  br i1 %cmp195, label %if.then267, label %if.then197

if.then197:                                       ; preds = %land.lhs.true193
  %qp2start198 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 82
  %64 = load i32* %qp2start198, align 4, !tbaa !3
  %cmp199 = icmp slt i32 %64, 1
  %cmp204 = icmp slt i32 %61, %64
  %or.cond = or i1 %cmp199, %cmp204
  br i1 %or.cond, label %if.else208, label %if.then206

if.then206:                                       ; preds = %if.then197
  %qpB2 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 81
  %65 = load i32* %qpB2, align 4, !tbaa !3
  %qp207 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %65, i32* %qp207, align 4, !tbaa !3
  br label %if.end210

if.else208:                                       ; preds = %if.then197
  %qpB = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 35
  %66 = load i32* %qpB, align 4, !tbaa !3
  %qp209 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %66, i32* %qp209, align 4, !tbaa !3
  br label %if.end210

if.end210:                                        ; preds = %if.else208, %if.then206
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 113
  %67 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %tobool211 = icmp eq i32 %67, 0
  br i1 %tobool211, label %if.end275, label %if.then212

if.then212:                                       ; preds = %if.end210
  %68 = load i32* %qp2start198, align 4, !tbaa !3
  %cmp214 = icmp slt i32 %68, 1
  %cmp219 = icmp slt i32 %61, %68
  %or.cond322 = or i1 %cmp214, %cmp219
  br i1 %or.cond322, label %if.else239, label %if.then221

if.then221:                                       ; preds = %if.then212
  %qpB2222 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 81
  %69 = load i32* %qpB2222, align 4, !tbaa !3
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 84
  %70 = load i32* %qpBRS2Offset, align 4, !tbaa !3
  %add223 = add nsw i32 %70, %69
  %cmp224 = icmp slt i32 %add223, 0
  br i1 %cmp224, label %cond.end236, label %cond.false

cond.false:                                       ; preds = %if.then221
  %cmp229 = icmp sgt i32 %add223, 51
  %.add223 = select i1 %cmp229, i32 51, i32 %add223
  br label %cond.end236

cond.end236:                                      ; preds = %cond.false, %if.then221
  %cond237 = phi i32 [ 0, %if.then221 ], [ %.add223, %cond.false ]
  %qp238 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %cond237, i32* %qp238, align 4, !tbaa !3
  br label %if.end275

if.else239:                                       ; preds = %if.then212
  %qpB240 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 35
  %71 = load i32* %qpB240, align 4, !tbaa !3
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 36
  %72 = load i32* %qpBRSOffset, align 4, !tbaa !3
  %add241 = add nsw i32 %72, %71
  %cmp242 = icmp slt i32 %add241, 0
  br i1 %cmp242, label %cond.end258, label %cond.false245

cond.false245:                                    ; preds = %if.else239
  %cmp249 = icmp sgt i32 %add241, 51
  %.add241 = select i1 %cmp249, i32 51, i32 %add241
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false245, %if.else239
  %cond259 = phi i32 [ 0, %if.else239 ], [ %.add241, %cond.false245 ]
  %qp260 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %cond259, i32* %qp260, align 4, !tbaa !3
  br label %if.end275

if.else263:                                       ; preds = %if.end190
  br i1 %cmp195, label %if.then267, label %if.end275

if.then267:                                       ; preds = %land.lhs.true193, %if.else263
  %sub269 = add nsw i32 %59, -1
  %idxprom270 = sext i32 %sub269 to i64
  %73 = load %struct.GOP_DATA** @gop_structure, align 8, !tbaa !0
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %73, i64 %idxprom270, i32 3
  %74 = load i32* %slice_qp, align 4, !tbaa !3
  %qp272 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10
  store i32 %74, i32* %qp272, align 4, !tbaa !3
  br label %if.end275

if.end275:                                        ; preds = %if.end210, %cond.end236, %cond.end258, %if.then267, %if.else263, %if.end58, %if.then60
  %75 = load i32* %jumpd, align 4, !tbaa !3
  %div277 = sdiv i32 %75, 2
  store i32 %div277, i32* %jumpd, align 4, !tbaa !3
  %76 = load i32* %successive_Bframe, align 4, !tbaa !3
  %div279 = sdiv i32 %76, 2
  store i32 %div279, i32* %successive_Bframe, align 4, !tbaa !3
  %77 = load i32* %buf_cycle, align 4, !tbaa !3
  %mul281 = shl nsw i32 %77, 1
  store i32 %mul281, i32* %buf_cycle, align 4, !tbaa !3
  %78 = load i32* %number, align 4, !tbaa !3
  %mul283 = shl i32 %78, 1
  %fld_type284 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56
  %79 = load i32* %fld_type284, align 4, !tbaa !3
  %add285 = add nsw i32 %mul283, %79
  store i32 %add285, i32* %number, align 4, !tbaa !3
  %width287 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13
  %80 = load i32* %width287, align 4, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15
  %81 = load i32* %height, align 4, !tbaa !3
  %mul288 = mul nsw i32 %81, %80
  %div289 = sdiv i32 %mul288, 256
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 4
  store i32 %div289, i32* %total_number_mb, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @UpdateSubseqInfo(i32) #2

; Function Attrs: optsize
declare void @UpdateSceneInformation(i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @decide_fld_frame(float, float, i32, i32, double) #2

; Function Attrs: optsize
declare void @combine_field(...) #2

; Function Attrs: optsize
declare %struct.NALU_t* @AllocNALU(...) #2

; Function Attrs: optsize
declare void @FreeNALU(%struct.NALU_t*) #2

declare double @exp2(double)

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
