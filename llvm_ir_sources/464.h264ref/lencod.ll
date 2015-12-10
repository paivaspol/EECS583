; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.user_data_unregistered_information_struct = type { i8*, i32, %struct.Bitstream*, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { i8*, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.randomaccess_information_struct = type { i8, i8, i8, %struct.Bitstream*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@inputs = common global %struct.InputParameters zeroinitializer, align 8
@input = global %struct.InputParameters* @inputs, align 8
@images = common global %struct.ImageParameters zeroinitializer, align 8
@img = global %struct.ImageParameters* @images, align 8
@statistics = common global %struct.StatParameters zeroinitializer, align 8
@stats = global %struct.StatParameters* @statistics, align 8
@snrs = common global %struct.SNRParameters zeroinitializer, align 4
@snr = global %struct.SNRParameters* @snrs, align 8
@decoders = common global %struct.Decoders zeroinitializer, align 8
@decs = global %struct.Decoders* @decoders, align 8
@initial_Bframes = global i32 0, align 4
@In2ndIGOP = global i32 0, align 4
@start_frame_no_in_this_IGOP = global i32 0, align 4
@start_tr_in_this_IGOP = global i32 0, align 4
@FirstFrameIn2ndIGOP = global i32 0, align 4
@cabac_encoding = global i32 0, align 4
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@p_trace = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@frame_statistic_start = common global i32 0, align 4
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@enc_bottom_picture = external global %struct.storable_picture*
@enc_top_picture = external global %struct.storable_picture*
@enc_frame_picture = external global %struct.storable_picture*
@enc_picture = external global %struct.storable_picture*
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@tot_time = common global i32 0, align 4
@log2_max_frame_num_minus4 = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*
@init_img.mb_width_cr = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 16
@init_img.mb_height_cr = internal unnamed_addr constant [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"init_img: img->quad\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"init_img: img->mb_data\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"init_img: img->intra_block\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"malloc_picture: Picture structure\00", align 1
@report_frame_statistic.last_mode_use.0 = internal unnamed_addr global [15 x i32] zeroinitializer, align 16
@report_frame_statistic.last_mode_use.1 = internal unnamed_addr global [15 x i32] zeroinitializer
@report_frame_statistic.last_mode_use.2.9 = internal unnamed_addr global i32 0
@report_frame_statistic.last_mode_use.2.10 = internal unnamed_addr global i32 0, align 8
@report_frame_statistic.last_mode_use.2.13 = internal unnamed_addr global i32 0
@report_frame_statistic.last_b8_mode_0.1.0 = internal unnamed_addr global i32 0, align 8
@report_frame_statistic.last_b8_mode_0.1.1 = internal unnamed_addr global i32 0
@report_frame_statistic.last_mode_chroma_use = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@report_frame_statistic.last_bit_ctr_n = internal unnamed_addr global i32 0, align 4
@.str4 = private unnamed_addr constant [15 x i8] c"stat_frame.dat\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str7 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"stat_frame.dat.dat\00", align 1
@.str9 = private unnamed_addr constant [469 x i8] c" --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str10 = private unnamed_addr constant [469 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                                                                                                                                                                                                                              |\0A\00", align 1
@.str11 = private unnamed_addr constant [469 x i8] c"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/MbInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I16  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |  P1  |  P2  |  P3  | P1*8*| P1*4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\0A\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"|%4s/%s\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"9.3\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"%d-%b-%Y\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"| %1.5s |\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c" %1.5s |\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"%20.20s|\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"%3d |\00", align 1
@frame_no = common global i32 0, align 4
@.str21 = private unnamed_addr constant [11 x i8] c"  %d/%d  |\00", align 1
@.str22 = private unnamed_addr constant [6 x i8] c" %9d|\00", align 1
@.str23 = private unnamed_addr constant [22 x i8] c" %2.4f| %2.4f| %2.4f|\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c" %5d|\00", align 1
@stdout = external global %struct._IO_FILE*
@.str26 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str27 = private unnamed_addr constant [44 x i8] c" Freq. for encoded bitstream       : %1.0f\0A\00", align 1
@.str28 = private unnamed_addr constant [52 x i8] c" Hadamard transform                : Used for QPel\0A\00", align 1
@.str29 = private unnamed_addr constant [43 x i8] c" Hadamard transform                : Used\0A\00", align 1
@.str30 = private unnamed_addr constant [47 x i8] c" Hadamard transform                : Not used\0A\00", align 1
@.str31 = private unnamed_addr constant [44 x i8] c" Image format                      : %dx%d\0A\00", align 1
@.str32 = private unnamed_addr constant [41 x i8] c" Error robustness                  : On\0A\00", align 1
@.str33 = private unnamed_addr constant [42 x i8] c" Error robustness                  : Off\0A\00", align 1
@.str34 = private unnamed_addr constant [41 x i8] c" Search range                      : %d\0A\00", align 1
@.str35 = private unnamed_addr constant [41 x i8] c" Total number of references        : %d\0A\00", align 1
@.str36 = private unnamed_addr constant [41 x i8] c" References for P slices           : %d\0A\00", align 1
@.str37 = private unnamed_addr constant [41 x i8] c" List0 references for B slices     : %d\0A\00", align 1
@.str38 = private unnamed_addr constant [41 x i8] c" List1 references for B slices     : %d\0A\00", align 1
@.str39 = private unnamed_addr constant [48 x i8] c" Total encoding time for the seq.  : %.3f sec \0A\00", align 1
@.str40 = private unnamed_addr constant [48 x i8] c" Total ME time for sequence        : %.3f sec \0A\00", align 1
@me_tot_time = common global i32 0, align 4
@.str41 = private unnamed_addr constant [37 x i8] c" Sequence type                     :\00", align 1
@.str42 = private unnamed_addr constant [34 x i8] c" Pyramid (QP: I %d, P %d, B %d) \0A\00", align 1
@.str44 = private unnamed_addr constant [4 x i8] c"-RB\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str47 = private unnamed_addr constant [30 x i8] c" %s (QP: I %d, P %d, RB %d) \0A\00", align 1
@.str48 = private unnamed_addr constant [29 x i8] c" %s (QP: I %d, P %d, B %d) \0A\00", align 1
@.str49 = private unnamed_addr constant [25 x i8] c" IPPP (QP: I %d, P %d) \0A\00", align 1
@.str50 = private unnamed_addr constant [44 x i8] c" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \0A\00", align 1
@.str51 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CAVLC\0A\00", align 1
@.str52 = private unnamed_addr constant [44 x i8] c" Entropy coding method             : CABAC\0A\00", align 1
@.str53 = private unnamed_addr constant [46 x i8] c" Profile/Level IDC                 : (%d,%d)\0A\00", align 1
@.str54 = private unnamed_addr constant [43 x i8] c" Search range restrictions         : none\0A\00", align 1
@.str55 = private unnamed_addr constant [61 x i8] c" Search range restrictions         : older reference frames\0A\00", align 1
@.str56 = private unnamed_addr constant [80 x i8] c" Search range restrictions         : smaller blocks and older reference frames\0A\00", align 1
@.str57 = private unnamed_addr constant [43 x i8] c" RD-optimized mode decision        : used\0A\00", align 1
@.str58 = private unnamed_addr constant [47 x i8] c" RD-optimized mode decision        : not used\0A\00", align 1
@.str59 = private unnamed_addr constant [51 x i8] c" Data Partitioning Mode            : 1 partition \0A\00", align 1
@.str60 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : 3 partitions \0A\00", align 1
@.str61 = private unnamed_addr constant [52 x i8] c" Data Partitioning Mode            : not supported\0A\00", align 1
@.str62 = private unnamed_addr constant [68 x i8] c" Output File Format                : H.264 Bit Stream File Format \0A\00", align 1
@.str63 = private unnamed_addr constant [62 x i8] c" Output File Format                : RTP Packet File Format \0A\00", align 1
@.str64 = private unnamed_addr constant [52 x i8] c" Output File Format                : not supported\0A\00", align 1
@.str65 = private unnamed_addr constant [43 x i8] c" Residue Color Transform           : used\0A\00", align 1
@.str66 = private unnamed_addr constant [47 x i8] c" Residue Color Transform           : not used\0A\00", align 1
@.str67 = private unnamed_addr constant [81 x i8] c"------------------ Average data all frames  -----------------------------------\0A\00", align 1
@.str68 = private unnamed_addr constant [44 x i8] c" SNR Y(dB)                         : %5.2f\0A\00", align 1
@.str69 = private unnamed_addr constant [44 x i8] c" SNR U(dB)                         : %5.2f\0A\00", align 1
@.str70 = private unnamed_addr constant [44 x i8] c" SNR V(dB)                         : %5.2f\0A\00", align 1
@.str71 = private unnamed_addr constant [70 x i8] c" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \0A\00", align 1
@.str72 = private unnamed_addr constant [44 x i8] c" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\0A\00", align 1
@.str73 = private unnamed_addr constant [65 x i8] c" Total bits                        : %d (I %5d, P %5d, NVB %d) \0A\00", align 1
@.str74 = private unnamed_addr constant [42 x i8] c" Bits to avoid Startcode Emulation : %d \0A\00", align 1
@.str75 = private unnamed_addr constant [42 x i8] c" Bits for parameter sets           : %d \0A\00", align 1
@.str76 = private unnamed_addr constant [27 x i8] c"Exit JM %s encoder ver %s \00", align 1
@.str77 = private unnamed_addr constant [10 x i8] c"9 (FRExt)\00", align 1
@.str78 = private unnamed_addr constant [10 x i8] c"stats.dat\00", align 1
@.str79 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str80 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@.str81 = private unnamed_addr constant [66 x i8] c" -------------------------------------------------------------- \0A\00", align 1
@.str82 = private unnamed_addr constant [66 x i8] c"  This file contains statistics for the last encoded sequence   \0A\00", align 1
@.str83 = private unnamed_addr constant [36 x i8] c" Sequence                     : %s\0A\00", align 1
@.str84 = private unnamed_addr constant [37 x i8] c" No.of coded pictures         : %4d\0A\00", align 1
@.str85 = private unnamed_addr constant [39 x i8] c" Freq. for encoded bitstream  : %4.0f\0A\00", align 1
@.str86 = private unnamed_addr constant [39 x i8] c" I Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str87 = private unnamed_addr constant [39 x i8] c" P Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str88 = private unnamed_addr constant [39 x i8] c" B Slice Bitrate(kb/s)        : %6.2f\0A\00", align 1
@.str89 = private unnamed_addr constant [39 x i8] c" Total Bitrate(kb/s)          : %6.2f\0A\00", align 1
@.str90 = private unnamed_addr constant [47 x i8] c" Hadamard transform           : Used for QPel\0A\00", align 1
@.str91 = private unnamed_addr constant [38 x i8] c" Hadamard transform           : Used\0A\00", align 1
@.str92 = private unnamed_addr constant [42 x i8] c" Hadamard transform           : Not used\0A\00", align 1
@.str93 = private unnamed_addr constant [39 x i8] c" Image format                 : %dx%d\0A\00", align 1
@.str94 = private unnamed_addr constant [36 x i8] c" Error robustness             : On\0A\00", align 1
@.str95 = private unnamed_addr constant [37 x i8] c" Error robustness             : Off\0A\00", align 1
@.str96 = private unnamed_addr constant [36 x i8] c" Search range                 : %d\0A\00", align 1
@.str97 = private unnamed_addr constant [36 x i8] c" Total number of references   : %d\0A\00", align 1
@.str98 = private unnamed_addr constant [36 x i8] c" References for P slices      : %d\0A\00", align 1
@.str99 = private unnamed_addr constant [36 x i8] c" List0 refs for B slices      : %d\0A\00", align 1
@.str100 = private unnamed_addr constant [36 x i8] c" List1 refs for B slices      : %d\0A\00", align 1
@.str101 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CAVLC\0A\00", align 1
@.str102 = private unnamed_addr constant [39 x i8] c" Entropy coding method        : CABAC\0A\00", align 1
@.str103 = private unnamed_addr constant [41 x i8] c" Profile/Level IDC            : (%d,%d)\0A\00", align 1
@.str104 = private unnamed_addr constant [24 x i8] c" MB Field Coding : On \0A\00", align 1
@.str105 = private unnamed_addr constant [38 x i8] c" Search range restrictions    : none\0A\00", align 1
@.str106 = private unnamed_addr constant [56 x i8] c" Search range restrictions    : older reference frames\0A\00", align 1
@.str107 = private unnamed_addr constant [75 x i8] c" Search range restrictions    : smaller blocks and older reference frames\0A\00", align 1
@.str108 = private unnamed_addr constant [38 x i8] c" RD-optimized mode decision   : used\0A\00", align 1
@.str109 = private unnamed_addr constant [42 x i8] c" RD-optimized mode decision   : not used\0A\00", align 1
@.str110 = private unnamed_addr constant [58 x i8] c" ---------------------|----------------|---------------|\0A\00", align 1
@.str111 = private unnamed_addr constant [58 x i8] c"     Item             |     Intra      |   All frames  |\0A\00", align 1
@.str112 = private unnamed_addr constant [24 x i8] c" SNR Y(dB)            |\00", align 1
@.str113 = private unnamed_addr constant [18 x i8] c" %5.2f          |\00", align 1
@.str114 = private unnamed_addr constant [18 x i8] c" %5.2f         |\0A\00", align 1
@.str115 = private unnamed_addr constant [24 x i8] c" SNR U/V (dB)         |\00", align 1
@.str116 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f    |\00", align 1
@.str117 = private unnamed_addr constant [18 x i8] c" %5.2f/%5.2f   |\0A\00", align 1
@.str118 = private unnamed_addr constant [24 x i8] c" Average quant        |\00", align 1
@.str119 = private unnamed_addr constant [16 x i8] c" %5d          |\00", align 1
@.str120 = private unnamed_addr constant [75 x i8] c"\0A ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str121 = private unnamed_addr constant [74 x i8] c"     SNR              |        I       |       P       |       B       |\0A\00", align 1
@.str122 = private unnamed_addr constant [74 x i8] c" ---------------------|----------------|---------------|---------------|\0A\00", align 1
@.str123 = private unnamed_addr constant [71 x i8] c" SNR Y(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str124 = private unnamed_addr constant [71 x i8] c" SNR U(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str125 = private unnamed_addr constant [71 x i8] c" SNR V(dB)            |      %5.3f    |     %5.3f    |     %5.3f    |\0A\00", align 1
@.str126 = private unnamed_addr constant [43 x i8] c"\0A ---------------------|----------------|\0A\00", align 1
@.str127 = private unnamed_addr constant [42 x i8] c"   Intra              |   Mode used    |\0A\00", align 1
@.str128 = private unnamed_addr constant [42 x i8] c" ---------------------|----------------|\0A\00", align 1
@.str129 = private unnamed_addr constant [40 x i8] c" Mode 0  intra 4x4    |  %5d         |\0A\00", align 1
@.str130 = private unnamed_addr constant [40 x i8] c" Mode 1  intra 8x8    |  %5d         |\0A\00", align 1
@.str131 = private unnamed_addr constant [40 x i8] c" Mode 2+ intra 16x16  |  %5d         |\0A\00", align 1
@.str132 = private unnamed_addr constant [61 x i8] c"\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str133 = private unnamed_addr constant [60 x i8] c"   Inter              |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str134 = private unnamed_addr constant [59 x i8] c" ---------------------|----------------|-----------------|\00", align 1
@.str135 = private unnamed_addr constant [55 x i8] c"\0A Mode  0  (copy)      |  %5d         |    %8.2f     |\00", align 1
@.str136 = private unnamed_addr constant [55 x i8] c"\0A Mode  1  (16x16)     |  %5d         |    %8.2f     |\00", align 1
@.str137 = private unnamed_addr constant [55 x i8] c"\0A Mode  2  (16x8)      |  %5d         |    %8.2f     |\00", align 1
@.str138 = private unnamed_addr constant [55 x i8] c"\0A Mode  3  (8x16)      |  %5d         |    %8.2f     |\00", align 1
@.str139 = private unnamed_addr constant [55 x i8] c"\0A Mode  4  (8x8)       |  %5d         |    %8.2f     |\00", align 1
@.str140 = private unnamed_addr constant [58 x i8] c"\0A Mode  5  intra 4x4   |  %5d         |-----------------|\00", align 1
@.str141 = private unnamed_addr constant [40 x i8] c"\0A Mode  6  intra 8x8   |  %5d         |\00", align 1
@.str142 = private unnamed_addr constant [40 x i8] c"\0A Mode  7+ intra 16x16 |  %5d         |\00", align 1
@.str143 = private unnamed_addr constant [62 x i8] c"\0A\0A ---------------------|----------------|-----------------|\0A\00", align 1
@.str144 = private unnamed_addr constant [60 x i8] c"   B frame            |   Mode used    | MotionInfo bits |\0A\00", align 1
@.str145 = private unnamed_addr constant [78 x i8] c"\0A\0A ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str146 = private unnamed_addr constant [76 x i8] c"  Bit usage:          |      Intra     |      Inter     |    B frame     |\0A\00", align 1
@.str147 = private unnamed_addr constant [76 x i8] c" ---------------------|----------------|----------------|----------------|\0A\00", align 1
@.str148 = private unnamed_addr constant [24 x i8] c" Header               |\00", align 1
@.str149 = private unnamed_addr constant [14 x i8] c" %10.2f     |\00", align 1
@.str150 = private unnamed_addr constant [24 x i8] c" Mode                 |\00", align 1
@.str151 = private unnamed_addr constant [24 x i8] c" Motion Info          |\00", align 1
@.str152 = private unnamed_addr constant [18 x i8] c"        ./.     |\00", align 1
@.str153 = private unnamed_addr constant [24 x i8] c" CBP Y/C              |\00", align 1
@.str154 = private unnamed_addr constant [64 x i8] c" Coeffs. Y            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str155 = private unnamed_addr constant [64 x i8] c" Coeffs. C            | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str156 = private unnamed_addr constant [64 x i8] c" Delta quant          | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str157 = private unnamed_addr constant [64 x i8] c" Stuffing Bits        | %10.2f     | %10.2f     | %10.2f     |\0A\00", align 1
@.str158 = private unnamed_addr constant [24 x i8] c" average bits/frame   |\00", align 1
@.str159 = private unnamed_addr constant [8 x i8] c"log.dat\00", align 1
@.str160 = private unnamed_addr constant [275 x i8] c" ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \0A\00", align 1
@.str161 = private unnamed_addr constant [275 x i8] c"|            Encoder statistics. This file is generated during first encoding session, new sessions will be appended                                                                                                                                                            |\0A\00", align 1
@.str162 = private unnamed_addr constant [275 x i8] c"|    ver    | Date  | Time  |    Sequence        | #Img |P/MbInt| QPI| QPP| QPB| Format  |Iperiod| #B | Hdmd | S.R |#Ref | Freq |Coding|RD-opt|Intra upd|8x8Tr|SNRY 1|SNRU 1|SNRV 1|SNRY N|SNRU N|SNRV N|#Bitr I|#Bitr P|#Bitr B|#Bitr IPB|     Total Time   |      Me Time     |\0A\00", align 1
@.str163 = private unnamed_addr constant [9 x i8] c"|%s/%-4s\00", align 1
@.str164 = private unnamed_addr constant [6 x i8] c"%5d |\00", align 1
@.str165 = private unnamed_addr constant [7 x i8] c" %-3d|\00", align 1
@.str166 = private unnamed_addr constant [10 x i8] c"%4dx%-4d|\00", align 1
@.str167 = private unnamed_addr constant [9 x i8] c"  %3d  |\00", align 1
@.str168 = private unnamed_addr constant [8 x i8] c"  ON  |\00", align 1
@.str169 = private unnamed_addr constant [8 x i8] c"  OFF |\00", align 1
@.str170 = private unnamed_addr constant [7 x i8] c" %3d |\00", align 1
@.str171 = private unnamed_addr constant [8 x i8] c" %2d  |\00", align 1
@.str172 = private unnamed_addr constant [8 x i8] c" %3.2f|\00", align 1
@.str173 = private unnamed_addr constant [8 x i8] c" CAVLC|\00", align 1
@.str174 = private unnamed_addr constant [8 x i8] c" CABAC|\00", align 1
@.str175 = private unnamed_addr constant [9 x i8] c"   %d  |\00", align 1
@.str176 = private unnamed_addr constant [11 x i8] c"   ON    |\00", align 1
@.str177 = private unnamed_addr constant [11 x i8] c"   OFF   |\00", align 1
@.str178 = private unnamed_addr constant [8 x i8] c"  %d  |\00", align 1
@.str179 = private unnamed_addr constant [8 x i8] c"%-5.3f|\00", align 1
@.str180 = private unnamed_addr constant [7 x i8] c"%7.0f|\00", align 1
@.str181 = private unnamed_addr constant [7 x i8] c"%9.0f|\00", align 1
@.str182 = private unnamed_addr constant [12 x i8] c"   %12d   |\00", align 1
@.str183 = private unnamed_addr constant [13 x i8] c"   %12d   |\0A\00", align 1
@.str184 = private unnamed_addr constant [9 x i8] c"data.txt\00", align 1
@.str185 = private unnamed_addr constant [88 x i8] c"%3d %2d %2d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %2.2f %2.2f %2.2f %5d %5d %.3f\0A\00", align 1
@information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 16
@.str186 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str187 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str188 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str189 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str190 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str191 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str192 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str193 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@.str195 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = common global i16*** null, align 8
@.str196 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external global i32*
@.str197 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external global i32*
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@img4Y_tmp = common global i32** null, align 8
@.str198 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@.str199 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str200 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str201 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_time = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@intras = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
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
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@Bytes_After_Header = common global i32 0, align 4
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4
@configinput = common global %struct.InputParameters zeroinitializer, align 8
@seiHasUser_data_unregistered_info = common global i32 0, align 4
@seiUser_data_unregistered = common global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@seiHasUser_data_registered_itu_t_t35_info = common global i32 0, align 4
@seiUser_data_registered_itu_t_t35 = common global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@seiHasRandomAccess_info = common global i32 0, align 4
@seiRandomAccess = common global %struct.randomaccess_information_struct zeroinitializer, align 8
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@McostState = common global i32** null, align 8
@all_mincost = common global i32***** null, align 8
@all_bwmincost = common global i32***** null, align 8
@pred_SAD_space = common global i32 0, align 4
@pred_SAD_time = common global i32 0, align 4
@pred_SAD_ref = common global i32 0, align 4
@pred_SAD_uplayer = common global i32 0, align 4
@FME_blocktype = common global i32 0, align 4
@pred_MV_time = common global [2 x i32] zeroinitializer, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@Quantize_step = common global float 0.000000e+00, align 4
@Bsize = common global [8 x float] zeroinitializer, align 16
@Thresh4x4 = common global i32 0, align 4
@AlphaSec = common global [8 x float] zeroinitializer, align 16
@AlphaThird = common global [8 x float] zeroinitializer, align 16
@flag_intra = common global i32* null, align 8
@flag_intra_SAD = common global i32 0, align 4
@SearchState = common global i8** null, align 8
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@BufferSize = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@TargetBufferLevel = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@MyInitialQp = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Qc = common global i32 0, align 4
@m_Qstep = common global double 0.000000e+00, align 8
@m_Qp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@PPreHeader = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits2 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@TotalNumberofBasicUnit = common global i32 0, align 4
@CodedBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@TotalBUMAD = common global double 0.000000e+00, align 8
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@TotalBasicUnitBits = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@Pm_Hp = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@BUPFMAD = common global double* null, align 8
@BUCFMAD = common global double* null, align 8
@FCBUCFMAD = common global double* null, align 8
@FCBUPFMAD = common global double* null, align 8
@GOPOverdue = common global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@str202 = private unnamed_addr constant [80 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D\00"
@str203 = private unnamed_addr constant [80 x i8] c"-------------------------------------------------------------------------------\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !41), !dbg !1422
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !42), !dbg !1422
  store i32 -1, i32* @p_in, align 4, !dbg !1423, !tbaa !1424
  store i32 -1, i32* @p_dec, align 4, !dbg !1423, !tbaa !1424
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_trace, align 8, !dbg !1427, !tbaa !1428
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_log, align 8, !dbg !1427, !tbaa !1428
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_stat, align 8, !dbg !1427, !tbaa !1428
  store i32 1, i32* @frame_statistic_start, align 4, !dbg !1429, !tbaa !1424
  tail call void @Configure(i32 %argc, i8** %argv) #7, !dbg !1430
  tail call void @Init_QMatrix() #7, !dbg !1431
  tail call void (...)* @Init_QOffsetMatrix() #7, !dbg !1432
  tail call void (...)* @AllocNalPayloadBuffer() #7, !dbg !1433
  tail call void @init_poc() #8, !dbg !1434
  tail call void (...)* @GenerateParameterSets() #7, !dbg !1435
  tail call void @init_img() #8, !dbg !1436
  %call = tail call %struct.Picture* @malloc_picture() #8, !dbg !1437
  store %struct.Picture* %call, %struct.Picture** @frame_pic, align 8, !dbg !1437, !tbaa !1428
  %0 = load %struct.InputParameters** @input, align 8, !dbg !1438, !tbaa !1428
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 49, !dbg !1438
  %1 = load i32* %RDPictureDecision, align 4, !dbg !1438, !tbaa !1424
  %tobool = icmp eq i32 %1, 0, !dbg !1438
  br i1 %tobool, label %if.end, label %if.then, !dbg !1438

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.Picture* @malloc_picture() #8, !dbg !1439
  store %struct.Picture* %call1, %struct.Picture** @frame_pic2, align 8, !dbg !1439, !tbaa !1428
  %call2 = tail call %struct.Picture* @malloc_picture() #8, !dbg !1441
  store %struct.Picture* %call2, %struct.Picture** @frame_pic3, align 8, !dbg !1441, !tbaa !1428
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !1442, !tbaa !1428
  br label %if.end, !dbg !1443

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.InputParameters* [ %0, %entry ], [ %.pre, %if.then ]
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 91, !dbg !1442
  %3 = load i32* %PicInterlace, align 4, !dbg !1442, !tbaa !1424
  %cmp = icmp eq i32 %3, 0, !dbg !1442
  br i1 %cmp, label %if.end6, label %if.then3, !dbg !1442

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.Picture* @malloc_picture() #8, !dbg !1444
  store %struct.Picture* %call4, %struct.Picture** @top_pic, align 8, !dbg !1444, !tbaa !1428
  %call5 = tail call %struct.Picture* @malloc_picture() #8, !dbg !1446
  store %struct.Picture* %call5, %struct.Picture** @bottom_pic, align 8, !dbg !1446, !tbaa !1428
  br label %if.end6, !dbg !1447

if.end6:                                          ; preds = %if.end, %if.then3
  tail call void (...)* @init_rdopt() #7, !dbg !1448
  %4 = load %struct.InputParameters** @input, align 8, !dbg !1449, !tbaa !1428
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 55, !dbg !1449
  %5 = load i32* %PyramidCoding, align 4, !dbg !1449, !tbaa !1424
  %tobool7 = icmp eq i32 %5, 0, !dbg !1449
  br i1 %tobool7, label %if.end13, label %if.then8, !dbg !1449

if.then8:                                         ; preds = %if.end6
  tail call void (...)* @init_gop_structure() #7, !dbg !1450
  %6 = load %struct.InputParameters** @input, align 8, !dbg !1452, !tbaa !1428
  %PyramidCoding9 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 55, !dbg !1452
  %7 = load i32* %PyramidCoding9, align 4, !dbg !1452, !tbaa !1424
  %cmp10 = icmp eq i32 %7, 3, !dbg !1452
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !1452

if.then11:                                        ; preds = %if.then8
  tail call void (...)* @interpret_gop_structure() #7, !dbg !1453
  br label %if.end13, !dbg !1455

if.else:                                          ; preds = %if.then8
  tail call void (...)* @create_pyramid() #7, !dbg !1456
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then11, %if.else
  %8 = load %struct.InputParameters** @input, align 8, !dbg !1458, !tbaa !1428
  tail call void (%struct.InputParameters*, ...)* bitcast (void (...)* @init_dpb to void (%struct.InputParameters*, ...)*)(%struct.InputParameters* %8) #7, !dbg !1458
  tail call void (...)* @init_out_buffer() #7, !dbg !1459
  store %struct.storable_picture* null, %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !1460, !tbaa !1428
  store %struct.storable_picture* null, %struct.storable_picture** @enc_top_picture, align 8, !dbg !1460, !tbaa !1428
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1460, !tbaa !1428
  store %struct.storable_picture* null, %struct.storable_picture** @enc_picture, align 8, !dbg !1460, !tbaa !1428
  %call14 = tail call i32 @init_global_buffers() #8, !dbg !1461
  tail call void (...)* @create_context_memory() #7, !dbg !1462
  tail call void (...)* @Init_Motion_Search_Module() #7, !dbg !1463
  tail call void @information_init() #8, !dbg !1464
  %9 = load %struct.InputParameters** @input, align 8, !dbg !1465, !tbaa !1428
  %RCEnable = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 127, !dbg !1465
  %10 = load i32* %RCEnable, align 4, !dbg !1465, !tbaa !1424
  %tobool15 = icmp eq i32 %10, 0, !dbg !1465
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1465

if.then16:                                        ; preds = %if.end13
  tail call void (...)* @rc_init_seq() #7, !dbg !1466
  %.pre322 = load %struct.InputParameters** @input, align 8, !dbg !1467, !tbaa !1428
  br label %if.end17, !dbg !1466

if.end17:                                         ; preds = %if.end13, %if.then16
  %11 = phi %struct.InputParameters* [ %9, %if.end13 ], [ %.pre322, %if.then16 ]
  %FMEnable = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 134, !dbg !1467
  %12 = load i32* %FMEnable, align 4, !dbg !1467, !tbaa !1424
  %tobool18 = icmp eq i32 %12, 0, !dbg !1467
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1467

if.then19:                                        ; preds = %if.end17
  tail call void (...)* @DefineThreshold() #7, !dbg !1468
  %.pre323 = load %struct.InputParameters** @input, align 8, !dbg !1469, !tbaa !1428
  br label %if.end20, !dbg !1468

if.end20:                                         ; preds = %if.end17, %if.then19
  %13 = phi %struct.InputParameters* [ %11, %if.end17 ], [ %.pre323, %if.then19 ]
  store i32 0, i32* @Iframe_ctr, align 4, !dbg !1470, !tbaa !1424
  store i32 0, i32* @Pframe_ctr, align 4, !dbg !1471, !tbaa !1424
  store i32 0, i32* @Bframe_ctr, align 4, !dbg !1472, !tbaa !1424
  store i32 0, i32* @tot_time, align 4, !dbg !1473, !tbaa !1424
  %last_frame = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 79, !dbg !1469
  %14 = load i32* %last_frame, align 4, !dbg !1469, !tbaa !1424
  %cmp21 = icmp sgt i32 %14, 0, !dbg !1469
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !1469

if.then22:                                        ; preds = %if.end20
  %jumpd = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 5, !dbg !1474
  %15 = load i32* %jumpd, align 4, !dbg !1474, !tbaa !1424
  %add = add nsw i32 %15, %14, !dbg !1474
  %add25 = add nsw i32 %15, 1, !dbg !1474
  %div = sdiv i32 %add, %add25, !dbg !1474
  %add26 = add nsw i32 %div, 1, !dbg !1474
  %no_frames = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 2, !dbg !1474
  store i32 %add26, i32* %no_frames, align 4, !dbg !1474, !tbaa !1424
  br label %if.end27, !dbg !1474

if.end27:                                         ; preds = %if.then22, %if.end20
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 34, !dbg !1475
  %16 = load i32* %successive_Bframe, align 4, !dbg !1475, !tbaa !1424
  store i32 %16, i32* @initial_Bframes, align 4, !dbg !1475, !tbaa !1424
  tail call void (...)* @PatchInputNoFrames() #7, !dbg !1476
  %17 = load %struct.StatParameters** @stats, align 8, !dbg !1477, !tbaa !1428
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %17, i64 0, i32 32, !dbg !1477
  store i32 0, i32* %bit_ctr_parametersets, align 4, !dbg !1477, !tbaa !1424
  %call28 = tail call i32 (...)* @start_sequence() #7, !dbg !1478
  %18 = load %struct.StatParameters** @stats, align 8, !dbg !1478, !tbaa !1428
  %bit_slice = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 6, !dbg !1478
  store i32 %call28, i32* %bit_slice, align 4, !dbg !1478, !tbaa !1424
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 33, !dbg !1479
  %19 = load i32* %bit_ctr_parametersets_n, align 4, !dbg !1479, !tbaa !1424
  %bit_ctr_parametersets29 = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 32, !dbg !1479
  %20 = load i32* %bit_ctr_parametersets29, align 4, !dbg !1479, !tbaa !1424
  %add30 = add nsw i32 %20, %19, !dbg !1479
  store i32 %add30, i32* %bit_ctr_parametersets29, align 4, !dbg !1479, !tbaa !1424
  store i32 0, i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1480, !tbaa !1424
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !1481, !tbaa !1428
  %number = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 0, !dbg !1481
  store i32 0, i32* %number, align 4, !dbg !1481, !tbaa !1424
  %22 = load %struct.InputParameters** @input, align 8, !dbg !1481, !tbaa !1428
  %no_frames32320 = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 2, !dbg !1481
  %23 = load i32* %no_frames32320, align 4, !dbg !1481, !tbaa !1424
  %cmp33321 = icmp sgt i32 %23, 0, !dbg !1481
  br i1 %cmp33321, label %for.body, label %for.end, !dbg !1481

for.body:                                         ; preds = %if.end27, %if.end273
  %24 = phi i32 [ %inc286, %if.end273 ], [ 0, %if.end27 ]
  %25 = phi %struct.InputParameters* [ %83, %if.end273 ], [ %22, %if.end27 ]
  %26 = phi %struct.ImageParameters* [ %81, %if.end273 ], [ %21, %if.end27 ]
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 113, !dbg !1482
  store i32 1, i32* %nal_reference_idc, align 4, !dbg !1482, !tbaa !1424
  %intra_period = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 31, !dbg !1483
  %27 = load i32* %intra_period, align 4, !dbg !1483, !tbaa !1424
  %tobool34 = icmp eq i32 %27, 0, !dbg !1483
  br i1 %tobool34, label %cond.false, label %land.lhs.true, !dbg !1483

land.lhs.true:                                    ; preds = %for.body
  %idr_enable = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32, !dbg !1483
  %28 = load i32* %idr_enable, align 4, !dbg !1483, !tbaa !1424
  %tobool35 = icmp eq i32 %28, 0, !dbg !1483
  br i1 %tobool35, label %cond.false, label %cond.true, !dbg !1483

cond.true:                                        ; preds = %land.lhs.true
  %29 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1483, !tbaa !1424
  %sub = sub nsw i32 %24, %29, !dbg !1483
  %rem = srem i32 %sub, %27, !dbg !1483
  br label %cond.end, !dbg !1483

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %30 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1483, !tbaa !1424
  %sub39 = sub nsw i32 %24, %30, !dbg !1483
  br label %cond.end, !dbg !1483

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem, %cond.true ], [ %sub39, %cond.false ], !dbg !1483
  %jumpd40 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 5, !dbg !1483
  %31 = load i32* %jumpd40, align 4, !dbg !1483, !tbaa !1424
  %add41 = shl i32 %31, 1, !dbg !1483
  %mul = add i32 %add41, 2, !dbg !1483
  %mul42 = mul nsw i32 %mul, %cond, !dbg !1483
  %toppoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 101, !dbg !1483
  store i32 %mul42, i32* %toppoc, align 4, !dbg !1483, !tbaa !1424
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 91, !dbg !1484
  %32 = load i32* %PicInterlace43, align 4, !dbg !1484, !tbaa !1424
  %cmp44 = icmp eq i32 %32, 0, !dbg !1484
  br i1 %cmp44, label %land.lhs.true45, label %if.else49, !dbg !1484

land.lhs.true45:                                  ; preds = %cond.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 92, !dbg !1484
  %33 = load i32* %MbInterlace, align 4, !dbg !1484, !tbaa !1424
  %cmp46 = icmp eq i32 %33, 0, !dbg !1484
  br i1 %cmp46, label %if.then47, label %if.else49, !dbg !1484

if.then47:                                        ; preds = %land.lhs.true45
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 102, !dbg !1485
  store i32 %mul42, i32* %bottompoc, align 4, !dbg !1485, !tbaa !1424
  br label %if.end53, !dbg !1485

if.else49:                                        ; preds = %land.lhs.true45, %cond.end
  %add51326 = or i32 %mul42, 1, !dbg !1486
  %bottompoc52 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 102, !dbg !1486
  store i32 %add51326, i32* %bottompoc52, align 4, !dbg !1486, !tbaa !1424
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then47
  %34 = phi i32 [ %add51326, %if.else49 ], [ %mul42, %if.then47 ]
  %cmp56 = icmp slt i32 %mul42, %34, !dbg !1487
  %. = select i1 %cmp56, i32 %mul42, i32 %34, !dbg !1487
  %framepoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 103, !dbg !1487
  store i32 %., i32* %framepoc, align 4, !dbg !1487, !tbaa !1424
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 54, !dbg !1488
  %35 = load i32* %BRefPictures, align 4, !dbg !1488, !tbaa !1424
  %cmp63 = icmp eq i32 %35, 0, !dbg !1488
  br i1 %cmp63, label %land.lhs.true64, label %lor.lhs.false, !dbg !1488

land.lhs.true64:                                  ; preds = %if.end53
  %PyramidCoding65 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 55, !dbg !1488
  %36 = load i32* %PyramidCoding65, align 4, !dbg !1488, !tbaa !1424
  %cmp66 = icmp eq i32 %36, 0, !dbg !1488
  br i1 %cmp66, label %if.then72, label %lor.lhs.false, !dbg !1488

lor.lhs.false:                                    ; preds = %land.lhs.true64, %if.end53
  %successive_Bframe67 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 34, !dbg !1488
  %37 = load i32* %successive_Bframe67, align 4, !dbg !1488, !tbaa !1424
  %cmp68 = icmp eq i32 %37, 0, !dbg !1488
  %cmp71 = icmp slt i32 %24, 2, !dbg !1488
  %or.cond = or i1 %cmp68, %cmp71, !dbg !1488
  br i1 %or.cond, label %if.then72, label %if.else90, !dbg !1488

if.then72:                                        ; preds = %lor.lhs.false, %land.lhs.true64
  %38 = load i32* %intra_period, align 4, !dbg !1489, !tbaa !1424
  %tobool74 = icmp eq i32 %38, 0, !dbg !1489
  br i1 %tobool74, label %cond.false83, label %land.lhs.true75, !dbg !1489

land.lhs.true75:                                  ; preds = %if.then72
  %idr_enable76 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32, !dbg !1489
  %39 = load i32* %idr_enable76, align 4, !dbg !1489, !tbaa !1424
  %tobool77 = icmp eq i32 %39, 0, !dbg !1489
  br i1 %tobool77, label %cond.false83, label %cond.true78, !dbg !1489

cond.true78:                                      ; preds = %land.lhs.true75
  %40 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1489, !tbaa !1424
  %sub80 = sub nsw i32 %24, %40, !dbg !1489
  %rem82 = srem i32 %sub80, %38, !dbg !1489
  br label %cond.end86, !dbg !1489

cond.false83:                                     ; preds = %land.lhs.true75, %if.then72
  %41 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1489, !tbaa !1424
  %sub85 = sub nsw i32 %24, %41, !dbg !1489
  br label %cond.end86, !dbg !1489

cond.end86:                                       ; preds = %cond.false83, %cond.true78
  %cond87 = phi i32 [ %rem82, %cond.true78 ], [ %sub85, %cond.false83 ], !dbg !1489
  %42 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1489, !tbaa !1424
  %add88 = add i32 %42, 4, !dbg !1489
  %shl = shl nuw i32 1, %add88, !dbg !1489
  %rem89 = srem i32 %cond87, %shl, !dbg !1489
  %frame_num = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 105, !dbg !1489
  store i32 %rem89, i32* %frame_num, align 4, !dbg !1489, !tbaa !1424
  br label %if.end110, !dbg !1489

if.else90:                                        ; preds = %lor.lhs.false
  %frame_num91 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 105, !dbg !1490
  %43 = load i32* %frame_num91, align 4, !dbg !1490, !tbaa !1424
  %inc = add i32 %43, 1, !dbg !1490
  store i32 %inc, i32* %frame_num91, align 4, !dbg !1490, !tbaa !1424
  %44 = load i32* %intra_period, align 4, !dbg !1492, !tbaa !1424
  %tobool93 = icmp eq i32 %44, 0, !dbg !1492
  br i1 %tobool93, label %if.end105, label %land.lhs.true94, !dbg !1492

land.lhs.true94:                                  ; preds = %if.else90
  %idr_enable95 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32, !dbg !1492
  %45 = load i32* %idr_enable95, align 4, !dbg !1492, !tbaa !1424
  %tobool96 = icmp eq i32 %45, 0, !dbg !1492
  br i1 %tobool96, label %if.end105, label %if.then97, !dbg !1492

if.then97:                                        ; preds = %land.lhs.true94
  %rem100 = srem i32 %24, %44, !dbg !1493
  %cmp101 = icmp eq i32 %rem100, 0, !dbg !1493
  br i1 %cmp101, label %if.then102, label %if.end105, !dbg !1493

if.then102:                                       ; preds = %if.then97
  store i32 0, i32* %frame_num91, align 4, !dbg !1495, !tbaa !1424
  br label %if.end105, !dbg !1497

if.end105:                                        ; preds = %if.then97, %land.lhs.true94, %if.else90, %if.then102
  %46 = phi i32 [ %inc, %land.lhs.true94 ], [ %inc, %if.else90 ], [ 0, %if.then102 ], [ %inc, %if.then97 ]
  %47 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1498, !tbaa !1424
  %add106 = add i32 %47, 4, !dbg !1498
  %shl107 = shl nuw i32 1, %add106, !dbg !1498
  %48 = add i32 %shl107, -1, !dbg !1498
  %rem109 = and i32 %48, %46, !dbg !1498
  store i32 %rem109, i32* %frame_num91, align 4, !dbg !1498, !tbaa !1424
  br label %if.end110

if.end110:                                        ; preds = %if.end105, %cond.end86
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 99, i64 0, !dbg !1499
  store i32 0, i32* %arrayidx, align 4, !dbg !1499, !tbaa !1424
  %49 = load i32* %BRefPictures, align 4, !dbg !1500, !tbaa !1424
  %tobool112 = icmp eq i32 %49, 0, !dbg !1500
  %tobool115 = icmp eq i32 %24, 0, !dbg !1501
  %or.cond327 = or i1 %tobool112, %tobool115, !dbg !1500
  br i1 %or.cond327, label %if.end122, label %if.then116, !dbg !1500

if.then116:                                       ; preds = %if.end110
  %successive_Bframe117 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 34, !dbg !1503
  %50 = load i32* %successive_Bframe117, align 4, !dbg !1503, !tbaa !1424
  %mul118 = shl nsw i32 %50, 1, !dbg !1503
  store i32 %mul118, i32* %arrayidx, align 4, !dbg !1503, !tbaa !1424
  br label %if.end122, !dbg !1505

if.end122:                                        ; preds = %if.end110, %if.then116
  tail call void @SetImgType() #8, !dbg !1506
  %51 = load %struct.InputParameters** @input, align 8, !dbg !1507, !tbaa !1428
  %successive_Bframe123 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 34, !dbg !1507
  %52 = load i32* %successive_Bframe123, align 4, !dbg !1507, !tbaa !1424
  %tobool124 = icmp eq i32 %52, 0, !dbg !1507
  br i1 %tobool124, label %if.end167, label %land.lhs.true125, !dbg !1507

land.lhs.true125:                                 ; preds = %if.end122
  %last_frame126 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 79, !dbg !1507
  %53 = load i32* %last_frame126, align 4, !dbg !1507, !tbaa !1424
  %tobool127 = icmp eq i32 %53, 0, !dbg !1507
  br i1 %tobool127, label %if.end167, label %land.lhs.true128, !dbg !1507

land.lhs.true128:                                 ; preds = %land.lhs.true125
  %54 = load %struct.ImageParameters** @img, align 8, !dbg !1507, !tbaa !1428
  %number129 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 0, !dbg !1507
  %55 = load i32* %number129, align 4, !dbg !1507, !tbaa !1424
  %56 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1507, !tbaa !1424
  %sub130 = add i32 %55, 1, !dbg !1507
  %add131 = sub i32 %sub130, %56, !dbg !1507
  %no_frames132 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2, !dbg !1507
  %57 = load i32* %no_frames132, align 4, !dbg !1507, !tbaa !1424
  %cmp133 = icmp eq i32 %add131, %57, !dbg !1507
  br i1 %cmp133, label %if.then134, label %if.end167, !dbg !1507

if.then134:                                       ; preds = %land.lhs.true128
  %jumpd135 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 5, !dbg !1508
  %58 = load i32* %jumpd135, align 4, !dbg !1508, !tbaa !1424
  %add136 = add nsw i32 %58, 1, !dbg !1508
  %conv = sitofp i32 %add136 to float, !dbg !1508
  %conv137 = fpext float %conv to double, !dbg !1508
  %conv139 = sitofp i32 %52 to double, !dbg !1508
  %add140 = fadd double %conv139, 1.000000e+00, !dbg !1508
  %div141 = fdiv double %conv137, %add140, !dbg !1508
  %add142 = fadd double %div141, 4.999990e-01, !dbg !1508
  %conv143 = fptosi double %add142 to i32, !dbg !1508
  tail call void @llvm.dbg.value(metadata !{i32 %conv143}, i64 0, metadata !48), !dbg !1508
  %sub146 = add nsw i32 %55, -1, !dbg !1509
  %mul149 = mul nsw i32 %add136, %sub146, !dbg !1509
  %sub150 = sub nsw i32 %53, %mul149, !dbg !1509
  %div151 = sdiv i32 %sub150, %conv143, !dbg !1509
  %sub152 = add nsw i32 %div151, -1, !dbg !1509
  store i32 %sub152, i32* %successive_Bframe123, align 4, !dbg !1509, !tbaa !1424
  %59 = load i32* @initial_Bframes, align 4, !dbg !1510, !tbaa !1424
  %suba = sub i32 %sub152, %59, !dbg !1510
  %mul156 = shl i32 %suba, 1, !dbg !1510
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 99, i64 0, !dbg !1510
  store i32 %mul156, i32* %arrayidx158, align 4, !dbg !1510, !tbaa !1424
  %toppoc161 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 101, !dbg !1511
  %60 = load i32* %toppoc161, align 4, !dbg !1511, !tbaa !1424
  %add162 = add nsw i32 %60, %mul156, !dbg !1511
  store i32 %add162, i32* %toppoc161, align 4, !dbg !1511, !tbaa !1424
  %bottompoc165 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 102, !dbg !1512
  %61 = load i32* %bottompoc165, align 4, !dbg !1512, !tbaa !1424
  %add166 = add nsw i32 %61, %mul156, !dbg !1512
  store i32 %add166, i32* %bottompoc165, align 4, !dbg !1512, !tbaa !1424
  br label %if.end167, !dbg !1513

if.end167:                                        ; preds = %land.lhs.true125, %if.end122, %if.then134, %land.lhs.true128
  %62 = load %struct.ImageParameters** @img, align 8, !dbg !1514, !tbaa !1428
  %type = getelementptr inbounds %struct.ImageParameters* %62, i64 0, i32 6, !dbg !1514
  %63 = load i32* %type, align 4, !dbg !1514, !tbaa !1424
  %cmp168 = icmp eq i32 %63, 2, !dbg !1514
  br i1 %cmp168, label %if.then170, label %if.end259, !dbg !1514

if.then170:                                       ; preds = %if.end167
  %RCEnable171 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 127, !dbg !1515
  %64 = load i32* %RCEnable171, align 4, !dbg !1515, !tbaa !1424
  %tobool172 = icmp eq i32 %64, 0, !dbg !1515
  br i1 %tobool172, label %if.end259, label %if.then173, !dbg !1515

if.then173:                                       ; preds = %if.then170
  %intra_period174 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 31, !dbg !1517
  %65 = load i32* %intra_period174, align 4, !dbg !1517, !tbaa !1424
  %cmp175 = icmp eq i32 %65, 0, !dbg !1517
  br i1 %cmp175, label %if.then177, label %if.else190, !dbg !1517

if.then177:                                       ; preds = %if.then173
  %no_frames178 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2, !dbg !1519
  %66 = load i32* %no_frames178, align 4, !dbg !1519, !tbaa !1424
  %sub180 = add nsw i32 %66, -1, !dbg !1519
  %67 = load i32* %successive_Bframe123, align 4, !dbg !1519, !tbaa !1424
  %mul182 = mul nsw i32 %sub180, %67, !dbg !1519
  tail call void @llvm.dbg.value(metadata !{i32 %sub180}, i64 0, metadata !46), !dbg !1521
  tail call void @llvm.dbg.value(metadata !{i32 %mul182}, i64 0, metadata !47), !dbg !1522
  br label %if.end257, !dbg !1523

if.else190:                                       ; preds = %if.then173
  %68 = load i32* %successive_Bframe123, align 4, !dbg !1524, !tbaa !1424
  %add193 = add nsw i32 %68, 1, !dbg !1524
  %mul194 = mul nsw i32 %add193, %65, !dbg !1524
  tail call void @llvm.dbg.value(metadata !{i32 %mul194}, i64 0, metadata !44), !dbg !1524
  tail call void @llvm.dbg.value(metadata !{i32 %add193}, i64 0, metadata !43), !dbg !1526
  %number197 = getelementptr inbounds %struct.ImageParameters* %62, i64 0, i32 0, !dbg !1527
  %69 = load i32* %number197, align 4, !dbg !1527, !tbaa !1424
  %cmp198 = icmp eq i32 %69, 0, !dbg !1527
  %sub202 = select i1 %cmp198, i32 %68, i32 0, !dbg !1527
  %sub202.mul194 = sub nsw i32 %mul194, %sub202, !dbg !1527
  tail call void @llvm.dbg.value(metadata !{i32 %sub202.mul194}, i64 0, metadata !45), !dbg !1527
  %div208 = sdiv i32 %69, %65, !dbg !1528
  %no_frames209 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2, !dbg !1528
  %70 = load i32* %no_frames209, align 4, !dbg !1528, !tbaa !1424
  %div211 = sdiv i32 %70, %65, !dbg !1528
  %cmp212 = icmp slt i32 %div208, %div211, !dbg !1528
  br i1 %cmp212, label %if.end239, label %if.then214, !dbg !1528

if.then214:                                       ; preds = %if.else190
  br i1 %cmp198, label %if.else231, label %if.then218, !dbg !1529

if.then218:                                       ; preds = %if.then214
  %sub221 = sub nsw i32 %70, %69, !dbg !1531
  %sub225 = add nsw i32 %sub221, -1, !dbg !1531
  %mul227 = mul nsw i32 %sub225, %68, !dbg !1531
  %add228 = add i32 %sub221, %68, !dbg !1531
  %add230 = add i32 %add228, %mul227, !dbg !1531
  tail call void @llvm.dbg.value(metadata !{i32 %add230}, i64 0, metadata !45), !dbg !1531
  br label %if.end239, !dbg !1531

if.else231:                                       ; preds = %if.then214
  %sub234 = add nsw i32 %70, -1, !dbg !1532
  %mul236 = mul nsw i32 %sub234, %68, !dbg !1532
  %add237 = add nsw i32 %mul236, %70, !dbg !1532
  tail call void @llvm.dbg.value(metadata !{i32 %add237}, i64 0, metadata !45), !dbg !1532
  br label %if.end239

if.end239:                                        ; preds = %if.else190, %if.then218, %if.else231
  %n.0 = phi i32 [ %add230, %if.then218 ], [ %add237, %if.else231 ], [ %sub202.mul194, %if.else190 ]
  %mul245 = zext i1 %cmp198 to i32, !dbg !1533
  %mul245.pn = shl nsw i32 %68, %mul245, !dbg !1533
  %add246.pn = add nsw i32 %mul245.pn, %n.0, !dbg !1534
  %np.0.in = sdiv i32 %add246.pn, %add193, !dbg !1534
  %np.0 = add nsw i32 %np.0.in, -1, !dbg !1534
  %np.0.neg = sub i32 1, %np.0.in
  %sub255 = add i32 %n.0, -1, !dbg !1535
  %sub256 = add i32 %sub255, %np.0.neg, !dbg !1535
  tail call void @llvm.dbg.value(metadata !{i32 %sub256}, i64 0, metadata !47), !dbg !1535
  br label %if.end257

if.end257:                                        ; preds = %if.end239, %if.then177
  %np.1 = phi i32 [ %sub180, %if.then177 ], [ %np.0, %if.end239 ]
  %nb.0 = phi i32 [ %mul182, %if.then177 ], [ %sub256, %if.end239 ]
  tail call void @rc_init_GOP(i32 %np.1, i32 %nb.0) #7, !dbg !1536
  %.pre324 = load %struct.ImageParameters** @img, align 8, !dbg !1537, !tbaa !1428
  %.pre325 = load %struct.InputParameters** @input, align 8, !dbg !1537, !tbaa !1428
  br label %if.end259, !dbg !1538

if.end259:                                        ; preds = %if.then170, %if.end167, %if.end257
  %71 = phi %struct.InputParameters* [ %.pre325, %if.end257 ], [ %51, %if.end167 ], [ %51, %if.then170 ]
  %72 = phi %struct.ImageParameters* [ %.pre324, %if.end257 ], [ %62, %if.end167 ], [ %62, %if.then170 ]
  %number260 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 0, !dbg !1537
  %73 = load i32* %number260, align 4, !dbg !1537, !tbaa !1424
  %74 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1537, !tbaa !1424
  %sub261 = sub nsw i32 %73, %74, !dbg !1537
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 99, !dbg !1537
  %75 = load i32* %NumFramesInELSubSeq, align 4, !dbg !1537, !tbaa !1424
  %add262 = add nsw i32 %75, 1, !dbg !1537
  %rem263 = srem i32 %sub261, %add262, !dbg !1537
  %layer = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 86, !dbg !1539
  %not.cmp264 = icmp ne i32 %rem263, 0, !dbg !1539
  %.317 = zext i1 %not.cmp264 to i32, !dbg !1539
  store i32 %.317, i32* %layer, align 4, !dbg !1539, !tbaa !1424
  %call270 = tail call i32 (...)* @encode_one_frame() #7, !dbg !1540
  %76 = load %struct.InputParameters** @input, align 8, !dbg !1541, !tbaa !1428
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %76, i64 0, i32 125, !dbg !1541
  %77 = load i32* %ReportFrameStats, align 4, !dbg !1541, !tbaa !1424
  %tobool271 = icmp eq i32 %77, 0, !dbg !1541
  br i1 %tobool271, label %if.end273, label %if.then272, !dbg !1541

if.then272:                                       ; preds = %if.end259
  tail call void @report_frame_statistic() #8, !dbg !1542
  br label %if.end273, !dbg !1542

if.end273:                                        ; preds = %if.end259, %if.then272
  %78 = load %struct.ImageParameters** @img, align 8, !dbg !1543, !tbaa !1428
  %nb_references = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 2, !dbg !1543
  %79 = load i32* %nb_references, align 4, !dbg !1543, !tbaa !1424
  %add274 = add nsw i32 %79, 1, !dbg !1543
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 84, !dbg !1544
  %80 = load i32* %buf_cycle, align 4, !dbg !1544, !tbaa !1424
  %cmp276 = icmp slt i32 %add274, %80, !dbg !1544
  %.318 = select i1 %cmp276, i32 %add274, i32 %80, !dbg !1544
  store i32 %.318, i32* %nb_references, align 4, !dbg !1544, !tbaa !1424
  tail call void (...)* @encode_enhancement_layer() #7, !dbg !1545
  tail call void @process_2nd_IGOP() #8, !dbg !1546
  %81 = load %struct.ImageParameters** @img, align 8, !dbg !1481, !tbaa !1428
  %number285 = getelementptr inbounds %struct.ImageParameters* %81, i64 0, i32 0, !dbg !1481
  %82 = load i32* %number285, align 4, !dbg !1481, !tbaa !1424
  %inc286 = add nsw i32 %82, 1, !dbg !1481
  store i32 %inc286, i32* %number285, align 4, !dbg !1481, !tbaa !1424
  %83 = load %struct.InputParameters** @input, align 8, !dbg !1481, !tbaa !1428
  %no_frames32 = getelementptr inbounds %struct.InputParameters* %83, i64 0, i32 2, !dbg !1481
  %84 = load i32* %no_frames32, align 4, !dbg !1481, !tbaa !1424
  %cmp33 = icmp slt i32 %inc286, %84, !dbg !1481
  br i1 %cmp33, label %for.body, label %for.end, !dbg !1481

for.end:                                          ; preds = %if.end273, %if.end27
  %call287 = tail call i32 (...)* @terminate_sequence() #7, !dbg !1547
  tail call void (...)* @flush_dpb() #7, !dbg !1548
  %85 = load i32* @p_in, align 4, !dbg !1549, !tbaa !1424
  %call288 = tail call i32 @close(i32 %85) #7, !dbg !1549
  %86 = load i32* @p_dec, align 4, !dbg !1550, !tbaa !1424
  %cmp289 = icmp eq i32 %86, -1, !dbg !1550
  br i1 %cmp289, label %if.end293, label %if.then291, !dbg !1550

if.then291:                                       ; preds = %for.end
  %call292 = tail call i32 @close(i32 %86) #7, !dbg !1551
  br label %if.end293, !dbg !1551

if.end293:                                        ; preds = %for.end, %if.then291
  %87 = load %struct._IO_FILE** @p_trace, align 8, !dbg !1552, !tbaa !1428
  %tobool294 = icmp eq %struct._IO_FILE* %87, null, !dbg !1552
  br i1 %tobool294, label %if.end297, label %if.then295, !dbg !1552

if.then295:                                       ; preds = %if.end293
  %call296 = tail call i32 @fclose(%struct._IO_FILE* %87) #7, !dbg !1553
  br label %if.end297, !dbg !1553

if.end297:                                        ; preds = %if.end293, %if.then295
  tail call void (...)* @Clear_Motion_Search_Module() #7, !dbg !1554
  tail call void (...)* @RandomIntraUninit() #7, !dbg !1555
  tail call void (...)* @FmoUninit() #7, !dbg !1556
  %88 = load %struct.InputParameters** @input, align 8, !dbg !1557, !tbaa !1428
  %PyramidCoding298 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 55, !dbg !1557
  %89 = load i32* %PyramidCoding298, align 4, !dbg !1557, !tbaa !1424
  %tobool299 = icmp eq i32 %89, 0, !dbg !1557
  br i1 %tobool299, label %if.end301, label %if.then300, !dbg !1557

if.then300:                                       ; preds = %if.end297
  tail call void (...)* @clear_gop_structure() #7, !dbg !1558
  br label %if.end301, !dbg !1558

if.end301:                                        ; preds = %if.end297, %if.then300
  tail call void (...)* @clear_rdopt() #7, !dbg !1559
  tail call void (...)* @calc_buffer() #7, !dbg !1560
  tail call void @report() #8, !dbg !1561
  %90 = load %struct.Picture** @frame_pic, align 8, !dbg !1562, !tbaa !1428
  tail call void @free_picture(%struct.Picture* %90) #8, !dbg !1562
  %91 = load %struct.InputParameters** @input, align 8, !dbg !1563, !tbaa !1428
  %RDPictureDecision302 = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 49, !dbg !1563
  %92 = load i32* %RDPictureDecision302, align 4, !dbg !1563, !tbaa !1424
  %tobool303 = icmp eq i32 %92, 0, !dbg !1563
  br i1 %tobool303, label %if.end305, label %if.then304, !dbg !1563

if.then304:                                       ; preds = %if.end301
  %93 = load %struct.Picture** @frame_pic2, align 8, !dbg !1564, !tbaa !1428
  tail call void @free_picture(%struct.Picture* %93) #8, !dbg !1564
  %94 = load %struct.Picture** @frame_pic3, align 8, !dbg !1566, !tbaa !1428
  tail call void @free_picture(%struct.Picture* %94) #8, !dbg !1566
  br label %if.end305, !dbg !1567

if.end305:                                        ; preds = %if.end301, %if.then304
  %95 = load %struct.Picture** @top_pic, align 8, !dbg !1568, !tbaa !1428
  %tobool306 = icmp eq %struct.Picture* %95, null, !dbg !1568
  br i1 %tobool306, label %if.end308, label %if.then307, !dbg !1568

if.then307:                                       ; preds = %if.end305
  tail call void @free_picture(%struct.Picture* %95) #8, !dbg !1569
  br label %if.end308, !dbg !1569

if.end308:                                        ; preds = %if.end305, %if.then307
  %96 = load %struct.Picture** @bottom_pic, align 8, !dbg !1570, !tbaa !1428
  %tobool309 = icmp eq %struct.Picture* %96, null, !dbg !1570
  br i1 %tobool309, label %if.end311, label %if.then310, !dbg !1570

if.then310:                                       ; preds = %if.end308
  tail call void @free_picture(%struct.Picture* %96) #8, !dbg !1571
  br label %if.end311, !dbg !1571

if.end311:                                        ; preds = %if.end308, %if.then310
  tail call void (...)* @free_dpb() #7, !dbg !1572
  %97 = load %struct.colocated_params** @Co_located, align 8, !dbg !1573, !tbaa !1428
  tail call void @free_colocated(%struct.colocated_params* %97) #7, !dbg !1573
  tail call void (...)* @uninit_out_buffer() #7, !dbg !1574
  tail call void @free_global_buffers() #8, !dbg !1575
  tail call void @free_img() #8, !dbg !1576
  tail call void (...)* @free_context_memory() #7, !dbg !1577
  tail call void (...)* @FreeNalPayloadBuffer() #7, !dbg !1578
  tail call void (...)* @FreeParameterSets() #7, !dbg !1579
  ret i32 0, !dbg !1580
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @Configure(i32, i8**) #2

; Function Attrs: optsize
declare void @Init_QMatrix() #2

; Function Attrs: optsize
declare void @Init_QOffsetMatrix(...) #2

; Function Attrs: optsize
declare void @AllocNalPayloadBuffer(...) #2

; Function Attrs: optsize
declare void @GenerateParameterSets(...) #2

; Function Attrs: optsize
declare void @init_rdopt(...) #2

; Function Attrs: optsize
declare void @init_gop_structure(...) #2

; Function Attrs: optsize
declare void @interpret_gop_structure(...) #2

; Function Attrs: optsize
declare void @create_pyramid(...) #2

; Function Attrs: optsize
declare void @init_dpb(...) #2

; Function Attrs: optsize
declare void @init_out_buffer(...) #2

; Function Attrs: optsize
declare void @create_context_memory(...) #2

; Function Attrs: optsize
declare void @Init_Motion_Search_Module(...) #2

; Function Attrs: optsize
declare void @rc_init_seq(...) #2

; Function Attrs: optsize
declare void @DefineThreshold(...) #2

; Function Attrs: optsize
declare void @PatchInputNoFrames(...) #2

; Function Attrs: optsize
declare i32 @start_sequence(...) #2

; Function Attrs: optsize
declare void @rc_init_GOP(i32, i32) #2

; Function Attrs: optsize
declare i32 @encode_one_frame(...) #2

; Function Attrs: optsize
declare void @encode_enhancement_layer(...) #2

; Function Attrs: optsize
declare i32 @terminate_sequence(...) #2

; Function Attrs: optsize
declare void @flush_dpb(...) #2

; Function Attrs: optsize
declare i32 @close(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @Clear_Motion_Search_Module(...) #2

; Function Attrs: optsize
declare void @RandomIntraUninit(...) #2

; Function Attrs: optsize
declare void @FmoUninit(...) #2

; Function Attrs: optsize
declare void @clear_gop_structure(...) #2

; Function Attrs: optsize
declare void @clear_rdopt(...) #2

; Function Attrs: optsize
declare void @calc_buffer(...) #2

; Function Attrs: nounwind optsize uwtable
define void @free_picture(%struct.Picture* %pic) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %pic}, i64 0, metadata !270), !dbg !1581
  %cmp = icmp eq %struct.Picture* %pic, null, !dbg !1582
  br i1 %cmp, label %if.end, label %if.then, !dbg !1582

if.then:                                          ; preds = %entry
  tail call void @free_slice_list(%struct.Picture* %pic) #7, !dbg !1583
  %0 = bitcast %struct.Picture* %pic to i8*, !dbg !1585
  tail call void @free(i8* %0) #7, !dbg !1585
  br label %if.end, !dbg !1586

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1587
}

; Function Attrs: optsize
declare void @free_dpb(...) #2

; Function Attrs: optsize
declare void @free_colocated(%struct.colocated_params*) #2

; Function Attrs: optsize
declare void @uninit_out_buffer(...) #2

; Function Attrs: optsize
declare void @free_context_memory(...) #2

; Function Attrs: optsize
declare void @FreeNalPayloadBuffer(...) #2

; Function Attrs: optsize
declare void @FreeParameterSets(...) #2

; Function Attrs: nounwind optsize uwtable
define void @report_stats_on_error() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1588, !tbaa !1428
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1588
  %1 = load i32* %number, align 4, !dbg !1588, !tbaa !1424
  %sub = add nsw i32 %1, -1, !dbg !1588
  %2 = load %struct.InputParameters** @input, align 8, !dbg !1588, !tbaa !1428
  %no_frames = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 2, !dbg !1588
  store i32 %sub, i32* %no_frames, align 4, !dbg !1588, !tbaa !1424
  %call = tail call i32 (...)* @terminate_sequence() #7, !dbg !1589
  tail call void (...)* @flush_dpb() #7, !dbg !1590
  %3 = load i32* @p_in, align 4, !dbg !1591, !tbaa !1424
  %call1 = tail call i32 @close(i32 %3) #7, !dbg !1591
  %4 = load i32* @p_dec, align 4, !dbg !1592, !tbaa !1424
  %cmp = icmp eq i32 %4, -1, !dbg !1592
  br i1 %cmp, label %if.end, label %if.then, !dbg !1592

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @close(i32 %4) #7, !dbg !1593
  br label %if.end, !dbg !1593

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct._IO_FILE** @p_trace, align 8, !dbg !1594, !tbaa !1428
  %tobool = icmp eq %struct._IO_FILE* %5, null, !dbg !1594
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !1594

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fclose(%struct._IO_FILE* %5) #7, !dbg !1595
  br label %if.end5, !dbg !1595

if.end5:                                          ; preds = %if.end, %if.then3
  tail call void (...)* @Clear_Motion_Search_Module() #7, !dbg !1596
  tail call void (...)* @RandomIntraUninit() #7, !dbg !1597
  tail call void (...)* @FmoUninit() #7, !dbg !1598
  %6 = load %struct.InputParameters** @input, align 8, !dbg !1599, !tbaa !1428
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 55, !dbg !1599
  %7 = load i32* %PyramidCoding, align 4, !dbg !1599, !tbaa !1424
  %tobool6 = icmp eq i32 %7, 0, !dbg !1599
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1599

if.then7:                                         ; preds = %if.end5
  tail call void (...)* @clear_gop_structure() #7, !dbg !1600
  br label %if.end8, !dbg !1600

if.end8:                                          ; preds = %if.end5, %if.then7
  tail call void (...)* @clear_rdopt() #7, !dbg !1601
  tail call void (...)* @calc_buffer() #7, !dbg !1602
  %8 = load %struct.InputParameters** @input, align 8, !dbg !1603, !tbaa !1428
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 125, !dbg !1603
  %9 = load i32* %ReportFrameStats, align 4, !dbg !1603, !tbaa !1424
  %tobool9 = icmp eq i32 %9, 0, !dbg !1603
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1603

if.then10:                                        ; preds = %if.end8
  tail call void @report_frame_statistic() #8, !dbg !1604
  br label %if.end11, !dbg !1604

if.end11:                                         ; preds = %if.end8, %if.then10
  tail call void @report() #8, !dbg !1605
  %10 = load %struct.Picture** @frame_pic, align 8, !dbg !1606, !tbaa !1428
  tail call void @free_picture(%struct.Picture* %10) #8, !dbg !1606
  %11 = load %struct.Picture** @top_pic, align 8, !dbg !1607, !tbaa !1428
  %tobool12 = icmp eq %struct.Picture* %11, null, !dbg !1607
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1607

if.then13:                                        ; preds = %if.end11
  tail call void @free_picture(%struct.Picture* %11) #8, !dbg !1608
  br label %if.end14, !dbg !1608

if.end14:                                         ; preds = %if.end11, %if.then13
  %12 = load %struct.Picture** @bottom_pic, align 8, !dbg !1609, !tbaa !1428
  %tobool15 = icmp eq %struct.Picture* %12, null, !dbg !1609
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1609

if.then16:                                        ; preds = %if.end14
  tail call void @free_picture(%struct.Picture* %12) #8, !dbg !1610
  br label %if.end17, !dbg !1610

if.end17:                                         ; preds = %if.end14, %if.then16
  tail call void (...)* @free_dpb() #7, !dbg !1611
  %13 = load %struct.colocated_params** @Co_located, align 8, !dbg !1612, !tbaa !1428
  tail call void @free_colocated(%struct.colocated_params* %13) #7, !dbg !1612
  tail call void (...)* @uninit_out_buffer() #7, !dbg !1613
  tail call void @free_global_buffers() #8, !dbg !1614
  tail call void @free_img() #8, !dbg !1615
  tail call void (...)* @free_context_memory() #7, !dbg !1616
  tail call void (...)* @FreeNalPayloadBuffer() #7, !dbg !1617
  tail call void (...)* @FreeParameterSets() #7, !dbg !1618
  ret void, !dbg !1619
}

; Function Attrs: nounwind optsize uwtable
define void @init_poc() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !1620, !tbaa !1428
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 120, !dbg !1620
  %1 = load i32* %pic_order_cnt_type, align 4, !dbg !1620, !tbaa !1424
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1620, !tbaa !1428
  %pic_order_cnt_type1 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 91, !dbg !1620
  store i32 %1, i32* %pic_order_cnt_type1, align 4, !dbg !1620, !tbaa !1424
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 92, !dbg !1621
  store i32 0, i32* %delta_pic_order_always_zero_flag, align 4, !dbg !1621, !tbaa !1424
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 95, !dbg !1622
  store i32 1, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !1622, !tbaa !1424
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 54, !dbg !1623
  %3 = load i32* %BRefPictures, align 4, !dbg !1623, !tbaa !1424
  %tobool = icmp eq i32 %3, 0, !dbg !1623
  br i1 %tobool, label %if.else, label %if.then, !dbg !1623

if.then:                                          ; preds = %entry
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 93, !dbg !1624
  store i32 0, i32* %offset_for_non_ref_pic, align 4, !dbg !1624, !tbaa !1424
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 96, i64 0, !dbg !1626
  store i32 2, i32* %arrayidx, align 4, !dbg !1626, !tbaa !1424
  br label %if.end, !dbg !1627

if.else:                                          ; preds = %entry
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !1628
  %4 = load i32* %successive_Bframe, align 4, !dbg !1628, !tbaa !1424
  %mul = mul nsw i32 %4, -2, !dbg !1628
  %offset_for_non_ref_pic2 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 93, !dbg !1628
  store i32 %mul, i32* %offset_for_non_ref_pic2, align 4, !dbg !1628, !tbaa !1424
  %5 = load i32* %successive_Bframe, align 4, !dbg !1630, !tbaa !1424
  %add = shl i32 %5, 1, !dbg !1630
  %mul4 = add i32 %add, 2, !dbg !1630
  %arrayidx6 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 96, i64 0, !dbg !1630
  store i32 %mul4, i32* %arrayidx6, align 4, !dbg !1630, !tbaa !1424
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91, !dbg !1631
  %6 = load i32* %PicInterlace, align 4, !dbg !1631, !tbaa !1424
  %cmp = icmp eq i32 %6, 0, !dbg !1631
  br i1 %cmp, label %land.lhs.true, label %if.else9, !dbg !1631

land.lhs.true:                                    ; preds = %if.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92, !dbg !1631
  %7 = load i32* %MbInterlace, align 4, !dbg !1631, !tbaa !1424
  %cmp7 = icmp eq i32 %7, 0, !dbg !1631
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !1631

if.then8:                                         ; preds = %land.lhs.true
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 94, !dbg !1632
  store i32 0, i32* %offset_for_top_to_bottom_field, align 4, !dbg !1632, !tbaa !1424
  br label %if.end11, !dbg !1632

if.else9:                                         ; preds = %land.lhs.true, %if.end
  %offset_for_top_to_bottom_field10 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 94, !dbg !1633
  store i32 1, i32* %offset_for_top_to_bottom_field10, align 4, !dbg !1633, !tbaa !1424
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %8 = load i32* %PicInterlace, align 4, !dbg !1634, !tbaa !1424
  %cmp13 = icmp eq i32 %8, 0, !dbg !1634
  br i1 %cmp13, label %land.lhs.true14, label %if.else18, !dbg !1634

land.lhs.true14:                                  ; preds = %if.end11
  %MbInterlace15 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92, !dbg !1634
  %9 = load i32* %MbInterlace15, align 4, !dbg !1634, !tbaa !1424
  %cmp16 = icmp eq i32 %9, 0, !dbg !1634
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !1634

if.then17:                                        ; preds = %land.lhs.true14
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 112, !dbg !1635
  store i32 0, i32* %pic_order_present_flag, align 4, !dbg !1635, !tbaa !1424
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 98, !dbg !1637
  store i32 0, i32* %delta_pic_order_cnt_bottom, align 4, !dbg !1637, !tbaa !1424
  br label %if.end21, !dbg !1638

if.else18:                                        ; preds = %land.lhs.true14, %if.end11
  %pic_order_present_flag19 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 112, !dbg !1639
  store i32 1, i32* %pic_order_present_flag19, align 4, !dbg !1639, !tbaa !1424
  %delta_pic_order_cnt_bottom20 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 98, !dbg !1641
  store i32 1, i32* %delta_pic_order_cnt_bottom20, align 4, !dbg !1641, !tbaa !1424
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  ret void, !dbg !1642
}

; Function Attrs: nounwind optsize uwtable
define void @CAVLC_init() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !58), !dbg !1643
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1643, !tbaa !1428
  %PicSizeInMbs28 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110, !dbg !1643
  %1 = load i32* %PicSizeInMbs28, align 4, !dbg !1643, !tbaa !1424
  %cmp29 = icmp eq i32 %1, 0, !dbg !1643
  br i1 %cmp29, label %for.end16, label %for.cond1.preheader.lr.ph, !dbg !1643

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_blk8x8_uv23 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157, !dbg !1645
  %.pre.pre = load i32* %num_blk8x8_uv23, align 4, !dbg !1645, !tbaa !1424
  br label %for.cond1.preheader, !dbg !1643

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc14
  %.pre = phi i32 [ %.pre.pre, %for.cond1.preheader.lr.ph ], [ %.pre35, %for.inc14 ], !dbg !1648
  %i.030 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc15, %for.inc14 ]
  %idxprom8 = zext i32 %i.030 to i64, !dbg !1648
  br label %for.cond4.preheader, !dbg !1649

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond1.preheader
  %.pre34 = phi i32 [ %.pre, %for.cond1.preheader ], [ %.pre35, %for.inc11 ]
  %2 = phi i32 [ %.pre, %for.cond1.preheader ], [ %4, %for.inc11 ], !dbg !1645
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc11 ]
  %cmp525 = icmp eq i32 %2, -4, !dbg !1645
  br i1 %cmp525, label %for.inc11, label %for.body6.lr.ph, !dbg !1645

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %nz_coeff.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 28
  %.pre31 = load i32**** %nz_coeff.phi.trans.insert, align 8, !dbg !1648, !tbaa !1428
  %arrayidx.phi.trans.insert = getelementptr inbounds i32*** %.pre31, i64 %idxprom8
  %.pre32 = load i32*** %arrayidx.phi.trans.insert, align 8, !dbg !1648, !tbaa !1428
  %arrayidx9.phi.trans.insert = getelementptr inbounds i32** %.pre32, i64 %indvars.iv
  %.pre33 = load i32** %arrayidx9.phi.trans.insert, align 8, !dbg !1648, !tbaa !1428
  br label %for.body6, !dbg !1645

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %l.026 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.body6 ]
  %idxprom = zext i32 %l.026 to i64, !dbg !1648
  %arrayidx10 = getelementptr inbounds i32* %.pre33, i64 %idxprom, !dbg !1648
  store i32 0, i32* %arrayidx10, align 4, !dbg !1648, !tbaa !1424
  %inc = add i32 %l.026, 1, !dbg !1645
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !61), !dbg !1645
  %3 = load i32* %num_blk8x8_uv23, align 4, !dbg !1645, !tbaa !1424
  %add = add i32 %3, 4, !dbg !1645
  %cmp5 = icmp ult i32 %inc, %add, !dbg !1645
  br i1 %cmp5, label %for.body6, label %for.inc11, !dbg !1645

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader
  %.pre35 = phi i32 [ %.pre34, %for.cond4.preheader ], [ %3, %for.body6 ]
  %4 = phi i32 [ -4, %for.cond4.preheader ], [ %3, %for.body6 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1649
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1649
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1649
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader, !dbg !1649

for.inc14:                                        ; preds = %for.inc11
  %inc15 = add i32 %i.030, 1, !dbg !1643
  tail call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !58), !dbg !1643
  %5 = load i32* %PicSizeInMbs28, align 4, !dbg !1643, !tbaa !1424
  %cmp = icmp ult i32 %inc15, %5, !dbg !1643
  br i1 %cmp, label %for.cond1.preheader, label %for.end16, !dbg !1643

for.end16:                                        ; preds = %for.inc14, %entry
  ret void, !dbg !1650
}

; Function Attrs: nounwind optsize uwtable
define void @init_img() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !1651, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 18, !dbg !1651
  %1 = load i32* %yuv_format, align 4, !dbg !1651, !tbaa !1424
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1651, !tbaa !1428
  %yuv_format1 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 159, !dbg !1651
  store i32 %1, i32* %yuv_format1, align 4, !dbg !1651, !tbaa !1424
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 135, !dbg !1652
  %3 = load i32* %BitDepthLuma, align 4, !dbg !1652, !tbaa !1424
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 149, !dbg !1652
  store i32 %3, i32* %bitdepth_luma, align 4, !dbg !1652, !tbaa !1424
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 150, !dbg !1653
  %4 = load i32* %bitdepth_chroma, align 4, !dbg !1653, !tbaa !1424
  %cmp = icmp sgt i32 %3, %4, !dbg !1653
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1653

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %1, 0, !dbg !1653
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1653

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = phi i32 [ 0, %lor.lhs.false ], [ %1, %entry ]
  %cmp6 = icmp sgt i32 %3, 8, !dbg !1654
  %cond = select i1 %cmp6, i32 16, i32 8, !dbg !1654
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 148, !dbg !1654
  store i32 %cond, i32* %pic_unit_size_on_disk, align 4, !dbg !1654, !tbaa !1424
  br label %if.end, !dbg !1654

if.else:                                          ; preds = %lor.lhs.false
  %cmp8 = icmp sgt i32 %4, 8, !dbg !1655
  %cond9 = select i1 %cmp8, i32 16, i32 8, !dbg !1655
  %pic_unit_size_on_disk10 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 148, !dbg !1655
  store i32 %cond9, i32* %pic_unit_size_on_disk10, align 4, !dbg !1655, !tbaa !1424
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = phi i32 [ %1, %if.else ], [ %5, %if.then ]
  %7 = mul i32 %3, 6, !dbg !1656
  %mul = add i32 %7, -48, !dbg !1656
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 151, !dbg !1656
  store i32 %mul, i32* %bitdepth_luma_qp_scale, align 4, !dbg !1656, !tbaa !1424
  %sub13 = shl i32 %3, 1, !dbg !1657
  %mul14 = add i32 %sub13, -16, !dbg !1657
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 153, !dbg !1657
  store i32 %mul14, i32* %bitdepth_lambda_scale, align 4, !dbg !1657, !tbaa !1424
  %sub16 = add nsw i32 %3, -1, !dbg !1658
  %shl = shl i32 1, %sub16, !dbg !1658
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 154, !dbg !1658
  store i32 %shl, i32* %dc_pred_value, align 4, !dbg !1658, !tbaa !1424
  %shl18 = shl i32 1, %3, !dbg !1659
  %sub19 = add nsw i32 %shl18, -1, !dbg !1659
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 155, !dbg !1659
  store i32 %sub19, i32* %max_imgpel_value, align 4, !dbg !1659, !tbaa !1424
  %cmp21 = icmp eq i32 %6, 0, !dbg !1660
  br i1 %cmp21, label %if.else51, label %if.then22, !dbg !1660

if.then22:                                        ; preds = %if.end
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 136, !dbg !1661
  %8 = load i32* %BitDepthChroma, align 4, !dbg !1661, !tbaa !1424
  store i32 %8, i32* %bitdepth_chroma, align 4, !dbg !1661, !tbaa !1424
  %shl25 = shl i32 1, %8, !dbg !1663
  %sub26 = add nsw i32 %shl25, -1, !dbg !1663
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 156, !dbg !1663
  store i32 %sub26, i32* %max_imgpel_value_uv, align 4, !dbg !1663, !tbaa !1424
  %shl28 = shl i32 1, %6, !dbg !1664
  %and = and i32 %shl28, -2, !dbg !1664
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 157, !dbg !1664
  store i32 %and, i32* %num_blk8x8_uv, align 4, !dbg !1664, !tbaa !1424
  %shl30 = shl i32 %and, 1, !dbg !1665
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 158, !dbg !1665
  store i32 %shl30, i32* %num_cdc_coeff, align 4, !dbg !1665, !tbaa !1424
  %cmp32 = icmp eq i32 %6, 1, !dbg !1666
  br i1 %cmp32, label %lor.end.thread, label %lor.end, !dbg !1666

lor.end.thread:                                   ; preds = %if.then22
  %mb_cr_size_x328 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161, !dbg !1666
  store i32 8, i32* %mb_cr_size_x328, align 4, !dbg !1666, !tbaa !1424
  br label %lor.rhs38, !dbg !1667

lor.end:                                          ; preds = %if.then22
  %cmp34 = icmp eq i32 %6, 2, !dbg !1666
  %phitmp = select i1 %cmp34, i32 8, i32 16, !dbg !1666
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161, !dbg !1666
  store i32 %phitmp, i32* %mb_cr_size_x, align 4, !dbg !1666, !tbaa !1424
  %cmp37 = icmp eq i32 %6, 3, !dbg !1667
  br i1 %cmp37, label %lor.end41, label %lor.rhs38, !dbg !1667

lor.rhs38:                                        ; preds = %lor.end.thread, %lor.end
  %cmp40 = icmp eq i32 %6, 2, !dbg !1667
  %phitmp307 = select i1 %cmp40, i32 16, i32 8, !dbg !1667
  br label %lor.end41, !dbg !1667

lor.end41:                                        ; preds = %lor.rhs38, %lor.end
  %9 = phi i32 [ 16, %lor.end ], [ %phitmp307, %lor.rhs38 ]
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 162, !dbg !1667
  store i32 %9, i32* %mb_cr_size_y, align 4, !dbg !1667, !tbaa !1424
  %10 = mul i32 %8, 6, !dbg !1668
  %mul45 = add i32 %10, -48, !dbg !1668
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 152, !dbg !1668
  store i32 %mul45, i32* %bitdepth_chroma_qp_scale, align 4, !dbg !1668, !tbaa !1424
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 164, !dbg !1669
  %11 = load i32* %residue_transform_flag, align 4, !dbg !1669, !tbaa !1424
  %tobool = icmp eq i32 %11, 0, !dbg !1669
  br i1 %tobool, label %if.end48, label %if.then46, !dbg !1669

if.then46:                                        ; preds = %lor.end41
  %add = add i32 %10, -42, !dbg !1670
  store i32 %add, i32* %bitdepth_chroma_qp_scale, align 4, !dbg !1670, !tbaa !1424
  br label %if.end48, !dbg !1670

if.end48:                                         ; preds = %lor.end41, %if.then46
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1671, !tbaa !1428
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 24, !dbg !1671
  %13 = load i32* %cb_qp_index_offset, align 4, !dbg !1671, !tbaa !1424
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 163, i64 0, !dbg !1671
  store i32 %13, i32* %arrayidx, align 4, !dbg !1671, !tbaa !1424
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 25, !dbg !1672
  %14 = load i32* %cr_qp_index_offset, align 4, !dbg !1672, !tbaa !1424
  %arrayidx50 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 163, i64 1, !dbg !1672
  store i32 %14, i32* %arrayidx50, align 4, !dbg !1672, !tbaa !1424
  br label %if.end64, !dbg !1673

if.else51:                                        ; preds = %if.end
  store i32 0, i32* %bitdepth_chroma, align 4, !dbg !1674, !tbaa !1424
  %max_imgpel_value_uv53 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 156, !dbg !1676
  store i32 0, i32* %max_imgpel_value_uv53, align 4, !dbg !1676, !tbaa !1424
  %num_blk8x8_uv54 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 157, !dbg !1677
  store i32 0, i32* %num_blk8x8_uv54, align 4, !dbg !1677, !tbaa !1424
  %num_cdc_coeff55 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 158, !dbg !1678
  store i32 0, i32* %num_cdc_coeff55, align 4, !dbg !1678, !tbaa !1424
  %mb_cr_size_x56 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161, !dbg !1679
  %bitdepth_chroma_qp_scale58 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 152, !dbg !1680
  store i32 0, i32* %bitdepth_chroma_qp_scale58, align 4, !dbg !1681, !tbaa !1424
  %15 = bitcast i32* %mb_cr_size_x56 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 16, i32 4, i1 false), !dbg !1679
  br label %if.end64

if.end64:                                         ; preds = %if.else51, %if.end48
  %16 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1682, !tbaa !1428
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %16, i64 0, i32 21, !dbg !1682
  %17 = load i32* %num_ref_frames, align 4, !dbg !1682, !tbaa !1424
  %num_ref_frames65 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 8, !dbg !1682
  store i32 %17, i32* %num_ref_frames65, align 4, !dbg !1682, !tbaa !1424
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %16, i64 0, i32 25, !dbg !1683
  %18 = load i32* %frame_mbs_only_flag, align 4, !dbg !1683, !tbaa !1425
  %tobool66 = icmp eq i32 %18, 0, !dbg !1683
  %19 = load i32* %num_ref_frames, align 4, !dbg !1683, !tbaa !1424
  %mul69 = zext i1 %tobool66 to i32, !dbg !1683
  %mul69. = shl i32 %19, %mul69, !dbg !1683
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 9, !dbg !1683
  store i32 %mul69., i32* %max_num_references, align 4, !dbg !1683, !tbaa !1424
  %num_ref_frames71 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 9, !dbg !1684
  %20 = load i32* %num_ref_frames71, align 4, !dbg !1684, !tbaa !1424
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 84, !dbg !1684
  store i32 %20, i32* %buf_cycle, align 4, !dbg !1684, !tbaa !1424
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 143, !dbg !1685
  store i32 0, i32* %DeblockCall, align 4, !dbg !1685, !tbaa !1424
  %FrameRate = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 76, !dbg !1686
  %21 = load double* %FrameRate, align 8, !dbg !1686, !tbaa !1687
  %conv = fptrunc double %21 to float, !dbg !1686
  %framerate = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 12, !dbg !1686
  store float %conv, float* %framerate, align 4, !dbg !1686, !tbaa !1688
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 70, !dbg !1689
  %call = tail call i32 @get_mem_mv(i16******* %pred_mv) #8, !dbg !1689
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !1690, !tbaa !1428
  %all_mv = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 71, !dbg !1690
  %call72 = tail call i32 @get_mem_mv(i16******* %all_mv) #8, !dbg !1690
  %23 = load %struct.InputParameters** @input, align 8, !dbg !1691, !tbaa !1428
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 39, !dbg !1691
  %24 = load i32* %BiPredMotionEstimation, align 4, !dbg !1691, !tbaa !1424
  %tobool73 = icmp eq i32 %24, 0, !dbg !1691
  br i1 %tobool73, label %if.end77, label %if.then74, !dbg !1691

if.then74:                                        ; preds = %if.end64
  %25 = load %struct.ImageParameters** @img, align 8, !dbg !1692, !tbaa !1428
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 72, !dbg !1692
  %call75 = tail call i32 @get_mem_mv(i16******* %bipred_mv1) #8, !dbg !1692
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !1694, !tbaa !1428
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 73, !dbg !1694
  %call76 = tail call i32 @get_mem_mv(i16******* %bipred_mv2) #8, !dbg !1694
  br label %if.end77, !dbg !1695

if.end77:                                         ; preds = %if.end64, %if.then74
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !1696, !tbaa !1428
  %cofAC = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 47, !dbg !1696
  %call78 = tail call i32 @get_mem_ACcoeff(i32***** %cofAC) #8, !dbg !1696
  %28 = load %struct.ImageParameters** @img, align 8, !dbg !1697, !tbaa !1428
  %cofDC = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 48, !dbg !1697
  %call79 = tail call i32 @get_mem_DCcoeff(i32**** %cofDC) #8, !dbg !1697
  %29 = load %struct.InputParameters** @input, align 8, !dbg !1698, !tbaa !1428
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %29, i64 0, i32 92, !dbg !1698
  %30 = load i32* %MbInterlace, align 4, !dbg !1698, !tbaa !1424
  %tobool80 = icmp eq i32 %30, 0, !dbg !1698
  br i1 %tobool80, label %if.end110, label %if.then81, !dbg !1698

if.then81:                                        ; preds = %if.end77
  %call82 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 15)) #8, !dbg !1699
  %call83 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 16)) #8, !dbg !1701
  %call84 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 15)) #8, !dbg !1702
  %call85 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 16)) #8, !dbg !1703
  %call86 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 15)) #8, !dbg !1704
  %call87 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 16)) #8, !dbg !1705
  %call88 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 15)) #8, !dbg !1706
  %call89 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 16)) #8, !dbg !1707
  %31 = load %struct.InputParameters** @input, align 8, !dbg !1708, !tbaa !1428
  %BiPredMotionEstimation90 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 39, !dbg !1708
  %32 = load i32* %BiPredMotionEstimation90, align 4, !dbg !1708, !tbaa !1424
  %tobool91 = icmp eq i32 %32, 0, !dbg !1708
  br i1 %tobool91, label %if.end101, label %if.then92, !dbg !1708

if.then92:                                        ; preds = %if.then81
  %call93 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 17)) #8, !dbg !1709
  %call94 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 18)) #8, !dbg !1711
  %call95 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 17)) #8, !dbg !1712
  %call96 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 18)) #8, !dbg !1713
  %call97 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 17)) #8, !dbg !1714
  %call98 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 18)) #8, !dbg !1715
  %call99 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 17)) #8, !dbg !1716
  %call100 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 18)) #8, !dbg !1717
  br label %if.end101, !dbg !1718

if.end101:                                        ; preds = %if.then81, %if.then92
  %call102 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 4)) #8, !dbg !1719
  %call103 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 5)) #8, !dbg !1720
  %call104 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 4)) #8, !dbg !1721
  %call105 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 5)) #8, !dbg !1722
  %call106 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 4)) #8, !dbg !1723
  %call107 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 5)) #8, !dbg !1724
  %call108 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 4)) #8, !dbg !1725
  %call109 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 5)) #8, !dbg !1726
  br label %if.end110, !dbg !1727

if.end110:                                        ; preds = %if.end77, %if.end101
  %33 = load %struct.ImageParameters** @img, align 8, !dbg !1728, !tbaa !1428
  %max_imgpel_value111 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 155, !dbg !1728
  %34 = load i32* %max_imgpel_value111, align 4, !dbg !1728, !tbaa !1424
  %max_imgpel_value_uv112 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 156, !dbg !1728
  %35 = load i32* %max_imgpel_value_uv112, align 4, !dbg !1728, !tbaa !1424
  %cmp113 = icmp sgt i32 %34, %35, !dbg !1728
  %. = select i1 %cmp113, i32 %34, i32 %35, !dbg !1729
  %byte_abs_range.0.in = shl i32 %., 1, !dbg !1729
  %byte_abs_range.0 = add i32 %byte_abs_range.0.in, 2, !dbg !1729
  %conv124 = sext i32 %byte_abs_range.0 to i64, !dbg !1730
  %call125 = tail call noalias i8* @calloc(i64 %conv124, i64 4) #7, !dbg !1730
  %36 = bitcast i8* %call125 to i32*, !dbg !1730
  %quad = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 53, !dbg !1730
  store i32* %36, i32** %quad, align 8, !dbg !1730, !tbaa !1428
  %cmp126 = icmp eq i8* %call125, null, !dbg !1730
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !1730

if.then128:                                       ; preds = %if.end110
  tail call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1731
  br label %if.end129, !dbg !1731

if.end129:                                        ; preds = %if.then128, %if.end110
  %div = sdiv i32 %byte_abs_range.0, 2, !dbg !1732
  %37 = load %struct.ImageParameters** @img, align 8, !dbg !1732, !tbaa !1428
  %quad130 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 53, !dbg !1732
  %38 = load i32** %quad130, align 8, !dbg !1732, !tbaa !1428
  %idx.ext = sext i32 %div to i64, !dbg !1732
  %add.ptr = getelementptr inbounds i32* %38, i64 %idx.ext, !dbg !1732
  store i32* %add.ptr, i32** %quad130, align 8, !dbg !1732, !tbaa !1428
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !64), !dbg !1733
  %cmp132316 = icmp sgt i32 %byte_abs_range.0, 1, !dbg !1733
  %39 = load %struct.ImageParameters** @img, align 8, !dbg !1735, !tbaa !1428
  br i1 %cmp132316, label %for.body.lr.ph, label %for.end, !dbg !1733

for.body.lr.ph:                                   ; preds = %if.end129
  %quad136 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 53, !dbg !1735
  %40 = load i32** %quad136, align 8, !dbg !1735, !tbaa !1428
  br label %for.body, !dbg !1733

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv320 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next321, %for.body ]
  %41 = trunc i64 %indvars.iv320 to i32, !dbg !1735
  %mul134 = mul nsw i32 %41, %41, !dbg !1735
  %42 = sub nsw i64 0, %indvars.iv320, !dbg !1735
  %arrayidx137 = getelementptr inbounds i32* %40, i64 %42, !dbg !1735
  store i32 %mul134, i32* %arrayidx137, align 4, !dbg !1735, !tbaa !1424
  %arrayidx140 = getelementptr inbounds i32* %40, i64 %indvars.iv320, !dbg !1735
  store i32 %mul134, i32* %arrayidx140, align 4, !dbg !1735, !tbaa !1424
  %indvars.iv.next321 = add i64 %indvars.iv320, 1, !dbg !1733
  %43 = trunc i64 %indvars.iv.next321 to i32, !dbg !1733
  %cmp132 = icmp slt i32 %43, %div, !dbg !1733
  br i1 %cmp132, label %for.body, label %for.end, !dbg !1733

for.end:                                          ; preds = %if.end129, %for.body
  %44 = load %struct.InputParameters** @input, align 8, !dbg !1737, !tbaa !1428
  %img_width = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 16, !dbg !1737
  %45 = load i32* %img_width, align 4, !dbg !1737, !tbaa !1424
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 165, !dbg !1737
  %46 = load i32* %auto_crop_right, align 4, !dbg !1737, !tbaa !1424
  %add141 = add nsw i32 %46, %45, !dbg !1737
  %width = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 13, !dbg !1737
  store i32 %add141, i32* %width, align 4, !dbg !1737, !tbaa !1424
  %img_height = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 17, !dbg !1738
  %47 = load i32* %img_height, align 4, !dbg !1738, !tbaa !1424
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 166, !dbg !1738
  %48 = load i32* %auto_crop_bottom, align 4, !dbg !1738, !tbaa !1424
  %add142 = add nsw i32 %48, %47, !dbg !1738
  %height = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 15, !dbg !1738
  store i32 %add142, i32* %height, align 4, !dbg !1738, !tbaa !1424
  %yuv_format143 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 159, !dbg !1739
  %49 = load i32* %yuv_format143, align 4, !dbg !1739, !tbaa !1424
  %cmp144 = icmp eq i32 %49, 0, !dbg !1739
  br i1 %cmp144, label %if.else171, label %if.then146, !dbg !1739

if.then146:                                       ; preds = %for.end
  %idxprom149 = sext i32 %49 to i64, !dbg !1740
  %arrayidx150 = getelementptr inbounds [4 x i32]* @init_img.mb_width_cr, i64 0, i64 %idxprom149, !dbg !1740
  %50 = load i32* %arrayidx150, align 4, !dbg !1740, !tbaa !1424
  %div151 = sdiv i32 16, %50, !dbg !1740
  %div152 = sdiv i32 %add141, %div151, !dbg !1740
  %width_cr = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 14, !dbg !1740
  store i32 %div152, i32* %width_cr, align 4, !dbg !1740, !tbaa !1424
  %arrayidx156 = getelementptr inbounds [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %idxprom149, !dbg !1742
  %51 = load i32* %arrayidx156, align 4, !dbg !1742, !tbaa !1424
  %div157 = sdiv i32 16, %51, !dbg !1742
  %div158 = sdiv i32 %add142, %div157, !dbg !1742
  %height_cr = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16, !dbg !1742
  store i32 %div158, i32* %height_cr, align 4, !dbg !1742, !tbaa !1424
  %52 = load i32* %img_width, align 4, !dbg !1743, !tbaa !1424
  %div164 = sdiv i32 %52, %div151, !dbg !1743
  %img_width_cr = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 138, !dbg !1743
  store i32 %div164, i32* %img_width_cr, align 4, !dbg !1743, !tbaa !1424
  %53 = load i32* %img_height, align 4, !dbg !1744, !tbaa !1424
  %54 = load i32* %yuv_format143, align 4, !dbg !1744, !tbaa !1424
  %idxprom167 = sext i32 %54 to i64, !dbg !1744
  %arrayidx168 = getelementptr inbounds [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %idxprom167, !dbg !1744
  %55 = load i32* %arrayidx168, align 4, !dbg !1744, !tbaa !1424
  %div169 = sdiv i32 16, %55, !dbg !1744
  %div170 = sdiv i32 %53, %div169, !dbg !1744
  %img_height_cr = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 137, !dbg !1744
  store i32 %div170, i32* %img_height_cr, align 4, !dbg !1744, !tbaa !1424
  br label %if.end176, !dbg !1745

if.else171:                                       ; preds = %for.end
  %width_cr172 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 14, !dbg !1746
  store i32 0, i32* %width_cr172, align 4, !dbg !1746, !tbaa !1424
  %height_cr173 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16, !dbg !1748
  store i32 0, i32* %height_cr173, align 4, !dbg !1748, !tbaa !1424
  %img_width_cr174 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 138, !dbg !1749
  store i32 0, i32* %img_width_cr174, align 4, !dbg !1749, !tbaa !1424
  %img_height_cr175 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 137, !dbg !1750
  store i32 0, i32* %img_height_cr175, align 4, !dbg !1750, !tbaa !1424
  br label %if.end176

if.end176:                                        ; preds = %if.else171, %if.then146
  %height_cr177 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16, !dbg !1751
  %56 = load i32* %height_cr177, align 4, !dbg !1751, !tbaa !1424
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 17, !dbg !1751
  store i32 %56, i32* %height_cr_frame, align 4, !dbg !1751, !tbaa !1424
  %57 = load i32* %img_width, align 4, !dbg !1752, !tbaa !1424
  %58 = load i32* %auto_crop_right, align 4, !dbg !1752, !tbaa !1424
  %add180 = add nsw i32 %58, %57, !dbg !1752
  %div181 = sdiv i32 %add180, 16, !dbg !1752
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 106, !dbg !1752
  store i32 %div181, i32* %PicWidthInMbs, align 4, !dbg !1752, !tbaa !1424
  %59 = load i32* %img_height, align 4, !dbg !1753, !tbaa !1424
  %60 = load i32* %auto_crop_bottom, align 4, !dbg !1753, !tbaa !1424
  %add184 = add nsw i32 %60, %59, !dbg !1753
  %div185 = sdiv i32 %add184, 16, !dbg !1753
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 108, !dbg !1753
  store i32 %div185, i32* %FrameHeightInMbs, align 4, !dbg !1753, !tbaa !1424
  %mul188 = mul i32 %div185, %div181, !dbg !1754
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 111, !dbg !1754
  store i32 %mul188, i32* %FrameSizeInMbs, align 4, !dbg !1754, !tbaa !1424
  %61 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1755, !tbaa !1428
  %frame_mbs_only_flag189 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %61, i64 0, i32 25, !dbg !1755
  %62 = load i32* %frame_mbs_only_flag189, align 4, !dbg !1755, !tbaa !1425
  %tobool190 = icmp eq i32 %62, 0, !dbg !1755
  %div195 = zext i1 %tobool190 to i32, !dbg !1755
  %div195. = lshr i32 %div185, %div195, !dbg !1755
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 107, !dbg !1755
  store i32 %div195., i32* %PicHeightInMapUnits, align 4, !dbg !1755, !tbaa !1424
  %conv199 = zext i32 %mul188 to i64, !dbg !1756
  %call200 = tail call noalias i8* @calloc(i64 %conv199, i64 632) #7, !dbg !1756
  %63 = bitcast i8* %call200 to %struct.macroblock*, !dbg !1756
  %mb_data = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 51, !dbg !1756
  store %struct.macroblock* %63, %struct.macroblock** %mb_data, align 8, !dbg !1756, !tbaa !1428
  %cmp201 = icmp eq i8* %call200, null, !dbg !1756
  br i1 %cmp201, label %if.then203, label %if.end204, !dbg !1756

if.then203:                                       ; preds = %if.end176
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !1757
  br label %if.end204, !dbg !1757

if.end204:                                        ; preds = %if.then203, %if.end176
  %64 = load %struct.InputParameters** @input, align 8, !dbg !1758, !tbaa !1428
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %64, i64 0, i32 24, !dbg !1758
  %65 = load i32* %UseConstrainedIntraPred, align 4, !dbg !1758, !tbaa !1424
  %tobool205 = icmp eq i32 %65, 0, !dbg !1758
  br i1 %tobool205, label %if.end214, label %if.then206, !dbg !1758

if.then206:                                       ; preds = %if.end204
  %66 = load %struct.ImageParameters** @img, align 8, !dbg !1759, !tbaa !1428
  %FrameSizeInMbs207 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 111, !dbg !1759
  %67 = load i32* %FrameSizeInMbs207, align 4, !dbg !1759, !tbaa !1424
  %conv208 = zext i32 %67 to i64, !dbg !1759
  %call209 = tail call noalias i8* @calloc(i64 %conv208, i64 4) #7, !dbg !1759
  %68 = bitcast i8* %call209 to i32*, !dbg !1759
  %intra_block = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 54, !dbg !1759
  store i32* %68, i32** %intra_block, align 8, !dbg !1759, !tbaa !1428
  %cmp210 = icmp eq i8* %call209, null, !dbg !1759
  br i1 %cmp210, label %if.then212, label %if.end214, !dbg !1759

if.then212:                                       ; preds = %if.then206
  tail call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !1761
  br label %if.end214, !dbg !1761

if.end214:                                        ; preds = %if.end204, %if.then206, %if.then212
  %69 = load %struct.ImageParameters** @img, align 8, !dbg !1762, !tbaa !1428
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 25, !dbg !1762
  %width215 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 13, !dbg !1762
  %70 = load i32* %width215, align 4, !dbg !1762, !tbaa !1424
  %div216 = sdiv i32 %70, 4, !dbg !1762
  %height217 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 15, !dbg !1762
  %71 = load i32* %height217, align 4, !dbg !1762, !tbaa !1424
  %div218 = sdiv i32 %71, 4, !dbg !1762
  %call219 = tail call i32 @get_mem2Dint(i32*** %ipredmode, i32 %div216, i32 %div218) #7, !dbg !1762
  %72 = load %struct.ImageParameters** @img, align 8, !dbg !1763, !tbaa !1428
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 26, !dbg !1763
  %width220 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 13, !dbg !1763
  %73 = load i32* %width220, align 4, !dbg !1763, !tbaa !1424
  %div221 = sdiv i32 %73, 4, !dbg !1763
  %height222 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 15, !dbg !1763
  %74 = load i32* %height222, align 4, !dbg !1763, !tbaa !1424
  %div223 = sdiv i32 %74, 4, !dbg !1763
  %call224 = tail call i32 @get_mem2Dint(i32*** %ipredmode8x8, i32 %div221, i32 %div223) #7, !dbg !1763
  %75 = load %struct.ImageParameters** @img, align 8, !dbg !1764, !tbaa !1428
  %width225 = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 13, !dbg !1764
  %76 = load i32* %width225, align 4, !dbg !1764, !tbaa !1424
  %div226 = sdiv i32 %76, 4, !dbg !1764
  %height227 = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 15, !dbg !1764
  %77 = load i32* %height227, align 4, !dbg !1764, !tbaa !1424
  %div228 = sdiv i32 %77, 4, !dbg !1764
  %call229 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 10), i32 %div226, i32 %div228) #7, !dbg !1764
  %78 = load %struct.InputParameters** @input, align 8, !dbg !1765, !tbaa !1428
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters* %78, i64 0, i32 92, !dbg !1765
  %79 = load i32* %MbInterlace230, align 4, !dbg !1765, !tbaa !1424
  %tobool231 = icmp eq i32 %79, 0, !dbg !1765
  br i1 %tobool231, label %if.end248, label %if.then232, !dbg !1765

if.then232:                                       ; preds = %if.end214
  %80 = load %struct.ImageParameters** @img, align 8, !dbg !1766, !tbaa !1428
  %width233 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 13, !dbg !1766
  %81 = load i32* %width233, align 4, !dbg !1766, !tbaa !1424
  %div234 = sdiv i32 %81, 4, !dbg !1766
  %height235 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 15, !dbg !1766
  %82 = load i32* %height235, align 4, !dbg !1766, !tbaa !1424
  %div236 = sdiv i32 %82, 4, !dbg !1766
  %call237 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 10), i32 %div234, i32 %div236) #7, !dbg !1766
  %83 = load %struct.ImageParameters** @img, align 8, !dbg !1768, !tbaa !1428
  %width238 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 13, !dbg !1768
  %84 = load i32* %width238, align 4, !dbg !1768, !tbaa !1424
  %div239 = sdiv i32 %84, 4, !dbg !1768
  %height240 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 15, !dbg !1768
  %85 = load i32* %height240, align 4, !dbg !1768, !tbaa !1424
  %div241 = sdiv i32 %85, 4, !dbg !1768
  %call242 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 10), i32 %div239, i32 %div241) #7, !dbg !1768
  %86 = load %struct.ImageParameters** @img, align 8, !dbg !1769, !tbaa !1428
  %width243 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 13, !dbg !1769
  %87 = load i32* %width243, align 4, !dbg !1769, !tbaa !1424
  %div244 = sdiv i32 %87, 4, !dbg !1769
  %height245 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 15, !dbg !1769
  %88 = load i32* %height245, align 4, !dbg !1769, !tbaa !1424
  %div246 = sdiv i32 %88, 4, !dbg !1769
  %call247 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 10), i32 %div244, i32 %div246) #7, !dbg !1769
  br label %if.end248, !dbg !1770

if.end248:                                        ; preds = %if.end214, %if.then232
  %89 = load %struct.ImageParameters** @img, align 8, !dbg !1771, !tbaa !1428
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 28, !dbg !1771
  %FrameSizeInMbs249 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 111, !dbg !1771
  %90 = load i32* %FrameSizeInMbs249, align 4, !dbg !1771, !tbaa !1424
  %num_blk8x8_uv250 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 157, !dbg !1771
  %91 = load i32* %num_blk8x8_uv250, align 4, !dbg !1771, !tbaa !1424
  %add251 = add nsw i32 %91, 4, !dbg !1771
  %call252 = tail call i32 @get_mem3Dint(i32**** %nz_coeff, i32 %90, i32 4, i32 %add251) #7, !dbg !1771
  tail call void @CAVLC_init() #8, !dbg !1772
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !64), !dbg !1773
  %92 = load %struct.ImageParameters** @img, align 8, !dbg !1773, !tbaa !1428
  %width254312 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 13, !dbg !1773
  %93 = load i32* %width254312, align 4, !dbg !1773, !tbaa !1424
  %cmp256314 = icmp sgt i32 %93, 3, !dbg !1773
  %height260308 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 15, !dbg !1775
  br i1 %cmp256314, label %for.cond259.preheader.lr.ph, label %if.end248.for.end280_crit_edge, !dbg !1773

if.end248.for.end280_crit_edge:                   ; preds = %if.end248
  %.pre327 = load i32* %height260308, align 4, !dbg !1777, !tbaa !1424
  br label %for.end280, !dbg !1773

for.cond259.preheader.lr.ph:                      ; preds = %if.end248
  %ipredmode8x8272 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 26, !dbg !1778
  %.pre = load i32* %height260308, align 4, !dbg !1775, !tbaa !1424
  br label %for.cond259.preheader, !dbg !1773

for.cond259.preheader:                            ; preds = %for.cond259.preheader.lr.ph, %for.inc278
  %94 = phi i32 [ %93, %for.cond259.preheader.lr.ph ], [ %100, %for.inc278 ]
  %95 = phi i32 [ %.pre, %for.cond259.preheader.lr.ph ], [ %101, %for.inc278 ], !dbg !1775
  %indvars.iv318 = phi i64 [ 0, %for.cond259.preheader.lr.ph ], [ %indvars.iv.next319, %for.inc278 ]
  %cmp262310 = icmp sgt i32 %95, 3, !dbg !1775
  br i1 %cmp262310, label %for.body264.lr.ph, label %for.inc278, !dbg !1775

for.body264.lr.ph:                                ; preds = %for.cond259.preheader
  %96 = load i32*** %ipredmode8x8272, align 8, !dbg !1778, !tbaa !1428
  %arrayidx273 = getelementptr inbounds i32** %96, i64 %indvars.iv318, !dbg !1778
  %97 = load i32** %arrayidx273, align 8, !dbg !1778, !tbaa !1428
  %ipredmode267.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 25
  %.pre324 = load i32*** %ipredmode267.phi.trans.insert, align 8, !dbg !1780, !tbaa !1428
  %arrayidx268.phi.trans.insert = getelementptr inbounds i32** %.pre324, i64 %indvars.iv318
  %.pre325 = load i32** %arrayidx268.phi.trans.insert, align 8, !dbg !1780, !tbaa !1428
  br label %for.body264, !dbg !1775

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next, %for.body264 ]
  %arrayidx269 = getelementptr inbounds i32* %.pre325, i64 %indvars.iv, !dbg !1780
  store i32 -1, i32* %arrayidx269, align 4, !dbg !1780, !tbaa !1424
  %arrayidx274 = getelementptr inbounds i32* %97, i64 %indvars.iv, !dbg !1778
  store i32 -1, i32* %arrayidx274, align 4, !dbg !1778, !tbaa !1424
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1775
  %98 = load i32* %height260308, align 4, !dbg !1775, !tbaa !1424
  %div261 = sdiv i32 %98, 4, !dbg !1775
  %99 = trunc i64 %indvars.iv.next to i32, !dbg !1775
  %cmp262 = icmp slt i32 %99, %div261, !dbg !1775
  br i1 %cmp262, label %for.body264, label %for.cond259.for.inc278_crit_edge, !dbg !1775

for.cond259.for.inc278_crit_edge:                 ; preds = %for.body264
  %.pre323 = load i32* %width254312, align 4, !dbg !1773, !tbaa !1424
  br label %for.inc278, !dbg !1775

for.inc278:                                       ; preds = %for.cond259.for.inc278_crit_edge, %for.cond259.preheader
  %100 = phi i32 [ %.pre323, %for.cond259.for.inc278_crit_edge ], [ %94, %for.cond259.preheader ], !dbg !1773
  %101 = phi i32 [ %98, %for.cond259.for.inc278_crit_edge ], [ %95, %for.cond259.preheader ]
  %indvars.iv.next319 = add i64 %indvars.iv318, 1, !dbg !1773
  %div255 = sdiv i32 %100, 4, !dbg !1773
  %102 = trunc i64 %indvars.iv.next319 to i32, !dbg !1773
  %cmp256 = icmp slt i32 %102, %div255, !dbg !1773
  br i1 %cmp256, label %for.cond259.preheader, label %for.end280, !dbg !1773

for.end280:                                       ; preds = %for.inc278, %if.end248.for.end280_crit_edge
  %103 = phi i32 [ %.pre327, %if.end248.for.end280_crit_edge ], [ %101, %for.inc278 ]
  %104 = phi i32 [ %93, %if.end248.for.end280_crit_edge ], [ %100, %for.inc278 ]
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 22, !dbg !1781
  store i32 0, i32* %mb_y_upd, align 4, !dbg !1781, !tbaa !1424
  %div282 = sdiv i32 %104, 16, !dbg !1777
  %div284 = sdiv i32 %103, 16, !dbg !1777
  %105 = load %struct.InputParameters** @input, align 8, !dbg !1777, !tbaa !1428
  %RandomIntraMBRefresh = getelementptr inbounds %struct.InputParameters* %105, i64 0, i32 101, !dbg !1777
  %106 = load i32* %RandomIntraMBRefresh, align 4, !dbg !1777, !tbaa !1424
  tail call void @RandomIntraInit(i32 %div282, i32 %div284, i32 %106) #7, !dbg !1777
  tail call void (...)* @InitSEIMessages() #7, !dbg !1782
  %107 = load %struct.InputParameters** @input, align 8, !dbg !1783, !tbaa !1428
  %LFSendParameters = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 102, !dbg !1783
  %108 = load i32* %LFSendParameters, align 4, !dbg !1783, !tbaa !1424
  %tobool285 = icmp eq i32 %108, 0, !dbg !1783
  br i1 %tobool285, label %if.else289, label %if.then286, !dbg !1783

if.then286:                                       ; preds = %for.end280
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 104, !dbg !1784
  %109 = load i32* %LFAlphaC0Offset, align 4, !dbg !1784, !tbaa !1424
  %shl287 = shl i32 %109, 1, !dbg !1784
  store i32 %shl287, i32* %LFAlphaC0Offset, align 4, !dbg !1784, !tbaa !1424
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 105, !dbg !1786
  %110 = load i32* %LFBetaOffset, align 4, !dbg !1786, !tbaa !1424
  %shl288 = shl i32 %110, 1, !dbg !1786
  store i32 %shl288, i32* %LFBetaOffset, align 4, !dbg !1786, !tbaa !1424
  br label %if.end292, !dbg !1787

if.else289:                                       ; preds = %for.end280
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 103, !dbg !1788
  store i32 0, i32* %LFDisableIdc, align 4, !dbg !1788, !tbaa !1424
  %LFAlphaC0Offset290 = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 104, !dbg !1790
  store i32 0, i32* %LFAlphaC0Offset290, align 4, !dbg !1790, !tbaa !1424
  %LFBetaOffset291 = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 105, !dbg !1791
  store i32 0, i32* %LFBetaOffset291, align 4, !dbg !1791, !tbaa !1424
  br label %if.end292

if.end292:                                        ; preds = %if.else289, %if.then286
  ret void, !dbg !1792
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_mv(i16******* nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16******* %mv}, i64 0, metadata !408), !dbg !1793
  %call = tail call noalias i8* @calloc(i64 4, i64 8) #7, !dbg !1794
  %0 = bitcast i8* %call to i16******, !dbg !1794
  store i16****** %0, i16******* %mv, align 8, !dbg !1794, !tbaa !1428
  %cmp = icmp eq i8* %call, null, !dbg !1794
  br i1 %cmp, label %if.then, label %for.body, !dbg !1794

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1795
  br label %for.body, !dbg !1795

for.body:                                         ; preds = %for.inc77, %entry, %if.then
  %indvars.iv128 = phi i64 [ 0, %if.then ], [ 0, %entry ], [ %indvars.iv.next129, %for.inc77 ]
  %call2 = tail call noalias i8* @calloc(i64 4, i64 8) #7, !dbg !1796
  %1 = bitcast i8* %call2 to i16*****, !dbg !1796
  %2 = load i16******* %mv, align 8, !dbg !1796, !tbaa !1428
  %arrayidx = getelementptr inbounds i16****** %2, i64 %indvars.iv128, !dbg !1796
  store i16***** %1, i16****** %arrayidx, align 8, !dbg !1796, !tbaa !1428
  %cmp3 = icmp eq i8* %call2, null, !dbg !1796
  br i1 %cmp3, label %if.then4, label %for.body8, !dbg !1796

if.then4:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1799
  br label %for.body8, !dbg !1799

for.body8:                                        ; preds = %for.body, %if.then4, %for.inc74
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc74 ], [ 0, %if.then4 ], [ 0, %for.body ]
  %call9 = tail call noalias i8* @calloc(i64 2, i64 8) #7, !dbg !1800
  %3 = bitcast i8* %call9 to i16****, !dbg !1800
  %4 = load i16******* %mv, align 8, !dbg !1800, !tbaa !1428
  %arrayidx12 = getelementptr inbounds i16****** %4, i64 %indvars.iv128, !dbg !1800
  %5 = load i16****** %arrayidx12, align 8, !dbg !1800, !tbaa !1428
  %arrayidx13 = getelementptr inbounds i16***** %5, i64 %indvars.iv124, !dbg !1800
  store i16**** %3, i16***** %arrayidx13, align 8, !dbg !1800, !tbaa !1428
  %cmp14 = icmp eq i8* %call9, null, !dbg !1800
  br i1 %cmp14, label %if.then15, label %for.cond17.preheader, !dbg !1800

if.then15:                                        ; preds = %for.body8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1803
  br label %for.cond17.preheader, !dbg !1803

for.cond17.preheader:                             ; preds = %if.then15, %for.body8
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1804, !tbaa !1428
  %max_num_references.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 9
  %.pre132 = load i32* %max_num_references.phi.trans.insert, align 4, !dbg !1804, !tbaa !1424
  br label %for.body19, !dbg !1807

for.body19:                                       ; preds = %for.inc71, %for.cond17.preheader
  %6 = phi i32 [ %.pre132, %for.cond17.preheader ], [ %27, %for.inc71 ]
  %indvars.iv120 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next121, %for.inc71 ]
  %conv = sext i32 %6 to i64, !dbg !1804
  %call20 = tail call noalias i8* @calloc(i64 %conv, i64 8) #7, !dbg !1804
  %7 = bitcast i8* %call20 to i16***, !dbg !1804
  %8 = load i16******* %mv, align 8, !dbg !1804, !tbaa !1428
  %arrayidx24 = getelementptr inbounds i16****** %8, i64 %indvars.iv128, !dbg !1804
  %9 = load i16****** %arrayidx24, align 8, !dbg !1804, !tbaa !1428
  %arrayidx25 = getelementptr inbounds i16***** %9, i64 %indvars.iv124, !dbg !1804
  %10 = load i16***** %arrayidx25, align 8, !dbg !1804, !tbaa !1428
  %arrayidx26 = getelementptr inbounds i16**** %10, i64 %indvars.iv120, !dbg !1804
  store i16*** %7, i16**** %arrayidx26, align 8, !dbg !1804, !tbaa !1428
  %cmp27 = icmp eq i8* %call20, null, !dbg !1804
  br i1 %cmp27, label %if.then29, label %for.cond31.preheader, !dbg !1804

if.then29:                                        ; preds = %for.body19
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1808
  br label %for.cond31.preheader, !dbg !1808

for.cond31.preheader:                             ; preds = %if.then29, %for.body19
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !1809, !tbaa !1428
  %max_num_references32112 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9, !dbg !1809
  %12 = load i32* %max_num_references32112, align 4, !dbg !1809, !tbaa !1424
  %cmp33113 = icmp sgt i32 %12, 0, !dbg !1809
  br i1 %cmp33113, label %for.body35, label %for.inc71, !dbg !1809

for.body35:                                       ; preds = %for.cond31.preheader, %for.inc68
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc68 ], [ 0, %for.cond31.preheader ]
  %call36 = tail call noalias i8* @calloc(i64 9, i64 8) #7, !dbg !1811
  %13 = bitcast i8* %call36 to i16**, !dbg !1811
  %14 = load i16******* %mv, align 8, !dbg !1811, !tbaa !1428
  %arrayidx41 = getelementptr inbounds i16****** %14, i64 %indvars.iv128, !dbg !1811
  %15 = load i16****** %arrayidx41, align 8, !dbg !1811, !tbaa !1428
  %arrayidx42 = getelementptr inbounds i16***** %15, i64 %indvars.iv124, !dbg !1811
  %16 = load i16***** %arrayidx42, align 8, !dbg !1811, !tbaa !1428
  %arrayidx43 = getelementptr inbounds i16**** %16, i64 %indvars.iv120, !dbg !1811
  %17 = load i16**** %arrayidx43, align 8, !dbg !1811, !tbaa !1428
  %arrayidx44 = getelementptr inbounds i16*** %17, i64 %indvars.iv118, !dbg !1811
  store i16** %13, i16*** %arrayidx44, align 8, !dbg !1811, !tbaa !1428
  %cmp45 = icmp eq i8* %call36, null, !dbg !1811
  br i1 %cmp45, label %if.then47, label %for.body52, !dbg !1811

if.then47:                                        ; preds = %for.body35
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1813
  br label %for.body52, !dbg !1813

for.body52:                                       ; preds = %for.body35, %if.then47, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then47 ], [ 0, %for.body35 ]
  %call53 = tail call noalias i8* @calloc(i64 2, i64 2) #7, !dbg !1814
  %18 = bitcast i8* %call53 to i16*, !dbg !1814
  %19 = load i16******* %mv, align 8, !dbg !1814, !tbaa !1428
  %arrayidx59 = getelementptr inbounds i16****** %19, i64 %indvars.iv128, !dbg !1814
  %20 = load i16****** %arrayidx59, align 8, !dbg !1814, !tbaa !1428
  %arrayidx60 = getelementptr inbounds i16***** %20, i64 %indvars.iv124, !dbg !1814
  %21 = load i16***** %arrayidx60, align 8, !dbg !1814, !tbaa !1428
  %arrayidx61 = getelementptr inbounds i16**** %21, i64 %indvars.iv120, !dbg !1814
  %22 = load i16**** %arrayidx61, align 8, !dbg !1814, !tbaa !1428
  %arrayidx62 = getelementptr inbounds i16*** %22, i64 %indvars.iv118, !dbg !1814
  %23 = load i16*** %arrayidx62, align 8, !dbg !1814, !tbaa !1428
  %arrayidx63 = getelementptr inbounds i16** %23, i64 %indvars.iv, !dbg !1814
  store i16* %18, i16** %arrayidx63, align 8, !dbg !1814, !tbaa !1428
  %cmp64 = icmp eq i8* %call53, null, !dbg !1814
  br i1 %cmp64, label %if.then66, label %for.inc, !dbg !1814

if.then66:                                        ; preds = %for.body52
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str199, i64 0, i64 0)) #7, !dbg !1816
  br label %for.inc, !dbg !1816

for.inc:                                          ; preds = %for.body52, %if.then66
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1817
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1817
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !1817
  br i1 %exitcond, label %for.inc68, label %for.body52, !dbg !1817

for.inc68:                                        ; preds = %for.inc
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !1809
  %24 = load %struct.ImageParameters** @img, align 8, !dbg !1809, !tbaa !1428
  %max_num_references32 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 9, !dbg !1809
  %25 = load i32* %max_num_references32, align 4, !dbg !1809, !tbaa !1424
  %26 = trunc i64 %indvars.iv.next119 to i32, !dbg !1809
  %cmp33 = icmp slt i32 %26, %25, !dbg !1809
  br i1 %cmp33, label %for.body35, label %for.inc71, !dbg !1809

for.inc71:                                        ; preds = %for.inc68, %for.cond31.preheader
  %27 = phi i32 [ %12, %for.cond31.preheader ], [ %25, %for.inc68 ]
  %indvars.iv.next121 = add i64 %indvars.iv120, 1, !dbg !1807
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32, !dbg !1807
  %exitcond123 = icmp eq i32 %lftr.wideiv122, 2, !dbg !1807
  br i1 %exitcond123, label %for.inc74, label %for.body19, !dbg !1807

for.inc74:                                        ; preds = %for.inc71
  %indvars.iv.next125 = add i64 %indvars.iv124, 1, !dbg !1818
  %lftr.wideiv126 = trunc i64 %indvars.iv.next125 to i32, !dbg !1818
  %exitcond127 = icmp eq i32 %lftr.wideiv126, 4, !dbg !1818
  br i1 %exitcond127, label %for.inc77, label %for.body8, !dbg !1818

for.inc77:                                        ; preds = %for.inc74
  %indvars.iv.next129 = add i64 %indvars.iv128, 1, !dbg !1819
  %lftr.wideiv130 = trunc i64 %indvars.iv.next129 to i32, !dbg !1819
  %exitcond131 = icmp eq i32 %lftr.wideiv130, 4, !dbg !1819
  br i1 %exitcond131, label %for.end79, label %for.body, !dbg !1819

for.end79:                                        ; preds = %for.inc77
  %mul84 = mul i32 %27, 576, !dbg !1820
  ret i32 %mul84, !dbg !1820
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_ACcoeff(i32***** nocapture %cofAC) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32***** %cofAC}, i64 0, metadata !432), !dbg !1821
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1822, !tbaa !1428
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157, !dbg !1822
  %1 = load i32* %num_blk8x8_uv, align 4, !dbg !1822, !tbaa !1424
  %add = add i32 %1, 4, !dbg !1822
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !436), !dbg !1822
  %conv = sext i32 %add to i64, !dbg !1823
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #7, !dbg !1823
  %2 = bitcast i8* %call to i32****, !dbg !1823
  store i32**** %2, i32***** %cofAC, align 8, !dbg !1823, !tbaa !1428
  %cmp = icmp eq i8* %call, null, !dbg !1823
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1823

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str200, i64 0, i64 0)) #7, !dbg !1823
  br label %for.cond.preheader, !dbg !1823

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp264 = icmp sgt i32 %add, 0, !dbg !1824
  br i1 %cmp264, label %for.body, label %for.end42, !dbg !1824

for.body:                                         ; preds = %for.inc40, %for.cond.preheader
  %indvars.iv70 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next71, %for.inc40 ]
  %call4 = tail call noalias i8* @calloc(i64 4, i64 8) #7, !dbg !1826
  %3 = bitcast i8* %call4 to i32***, !dbg !1826
  %4 = load i32***** %cofAC, align 8, !dbg !1826, !tbaa !1428
  %arrayidx = getelementptr inbounds i32**** %4, i64 %indvars.iv70, !dbg !1826
  store i32*** %3, i32**** %arrayidx, align 8, !dbg !1826, !tbaa !1428
  %cmp5 = icmp eq i8* %call4, null, !dbg !1826
  br i1 %cmp5, label %if.then7, label %for.body12, !dbg !1826

if.then7:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str200, i64 0, i64 0)) #7, !dbg !1826
  br label %for.body12, !dbg !1826

for.body12:                                       ; preds = %for.body, %if.then7, %for.inc37
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc37 ], [ 0, %if.then7 ], [ 0, %for.body ]
  %call13 = tail call noalias i8* @calloc(i64 2, i64 8) #7, !dbg !1828
  %5 = bitcast i8* %call13 to i32**, !dbg !1828
  %6 = load i32***** %cofAC, align 8, !dbg !1828, !tbaa !1428
  %arrayidx16 = getelementptr inbounds i32**** %6, i64 %indvars.iv70, !dbg !1828
  %7 = load i32**** %arrayidx16, align 8, !dbg !1828, !tbaa !1428
  %arrayidx17 = getelementptr inbounds i32*** %7, i64 %indvars.iv66, !dbg !1828
  store i32** %5, i32*** %arrayidx17, align 8, !dbg !1828, !tbaa !1428
  %cmp18 = icmp eq i8* %call13, null, !dbg !1828
  br i1 %cmp18, label %if.then20, label %for.body25, !dbg !1828

if.then20:                                        ; preds = %for.body12
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str200, i64 0, i64 0)) #7, !dbg !1828
  br label %for.body25, !dbg !1828

for.body25:                                       ; preds = %for.body12, %if.then20, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then20 ], [ 0, %for.body12 ]
  %call26 = tail call noalias i8* @calloc(i64 65, i64 4) #7, !dbg !1831
  %8 = bitcast i8* %call26 to i32*, !dbg !1831
  %9 = load i32***** %cofAC, align 8, !dbg !1831, !tbaa !1428
  %arrayidx30 = getelementptr inbounds i32**** %9, i64 %indvars.iv70, !dbg !1831
  %10 = load i32**** %arrayidx30, align 8, !dbg !1831, !tbaa !1428
  %arrayidx31 = getelementptr inbounds i32*** %10, i64 %indvars.iv66, !dbg !1831
  %11 = load i32*** %arrayidx31, align 8, !dbg !1831, !tbaa !1428
  %arrayidx32 = getelementptr inbounds i32** %11, i64 %indvars.iv, !dbg !1831
  store i32* %8, i32** %arrayidx32, align 8, !dbg !1831, !tbaa !1428
  %cmp33 = icmp eq i8* %call26, null, !dbg !1831
  br i1 %cmp33, label %if.then35, label %for.inc, !dbg !1831

if.then35:                                        ; preds = %for.body25
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str200, i64 0, i64 0)) #7, !dbg !1831
  br label %for.inc, !dbg !1831

for.inc:                                          ; preds = %for.body25, %if.then35
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1834
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1834
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1834
  br i1 %exitcond, label %for.inc37, label %for.body25, !dbg !1834

for.inc37:                                        ; preds = %for.inc
  %indvars.iv.next67 = add i64 %indvars.iv66, 1, !dbg !1835
  %lftr.wideiv68 = trunc i64 %indvars.iv.next67 to i32, !dbg !1835
  %exitcond69 = icmp eq i32 %lftr.wideiv68, 4, !dbg !1835
  br i1 %exitcond69, label %for.inc40, label %for.body12, !dbg !1835

for.inc40:                                        ; preds = %for.inc37
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !1824
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32, !dbg !1824
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %add, !dbg !1824
  br i1 %exitcond73, label %for.end42, label %for.body, !dbg !1824

for.end42:                                        ; preds = %for.inc40, %for.cond.preheader
  %mul46 = mul i32 %add, 2080, !dbg !1836
  ret i32 %mul46, !dbg !1836
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_DCcoeff(i32**** nocapture %cofDC) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32**** %cofDC}, i64 0, metadata !441), !dbg !1837
  %call = tail call noalias i8* @calloc(i64 3, i64 8) #7, !dbg !1838
  %0 = bitcast i8* %call to i32***, !dbg !1838
  store i32*** %0, i32**** %cofDC, align 8, !dbg !1838, !tbaa !1428
  %cmp = icmp eq i8* %call, null, !dbg !1838
  br i1 %cmp, label %if.then, label %for.body, !dbg !1838

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str201, i64 0, i64 0)) #7, !dbg !1838
  br label %for.body, !dbg !1838

for.body:                                         ; preds = %for.inc17, %entry, %if.then
  %indvars.iv29 = phi i64 [ 0, %if.then ], [ 0, %entry ], [ %indvars.iv.next30, %for.inc17 ]
  %call2 = tail call noalias i8* @calloc(i64 2, i64 8) #7, !dbg !1839
  %1 = bitcast i8* %call2 to i32**, !dbg !1839
  %2 = load i32**** %cofDC, align 8, !dbg !1839, !tbaa !1428
  %arrayidx = getelementptr inbounds i32*** %2, i64 %indvars.iv29, !dbg !1839
  store i32** %1, i32*** %arrayidx, align 8, !dbg !1839, !tbaa !1428
  %cmp3 = icmp eq i8* %call2, null, !dbg !1839
  br i1 %cmp3, label %if.then4, label %for.body8, !dbg !1839

if.then4:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str201, i64 0, i64 0)) #7, !dbg !1839
  br label %for.body8, !dbg !1839

for.body8:                                        ; preds = %for.body, %if.then4, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then4 ], [ 0, %for.body ]
  %call9 = tail call noalias i8* @calloc(i64 65, i64 4) #7, !dbg !1842
  %3 = bitcast i8* %call9 to i32*, !dbg !1842
  %4 = load i32**** %cofDC, align 8, !dbg !1842, !tbaa !1428
  %arrayidx12 = getelementptr inbounds i32*** %4, i64 %indvars.iv29, !dbg !1842
  %5 = load i32*** %arrayidx12, align 8, !dbg !1842, !tbaa !1428
  %arrayidx13 = getelementptr inbounds i32** %5, i64 %indvars.iv, !dbg !1842
  store i32* %3, i32** %arrayidx13, align 8, !dbg !1842, !tbaa !1428
  %cmp14 = icmp eq i8* %call9, null, !dbg !1842
  br i1 %cmp14, label %if.then15, label %for.inc, !dbg !1842

if.then15:                                        ; preds = %for.body8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str201, i64 0, i64 0)) #7, !dbg !1842
  br label %for.inc, !dbg !1842

for.inc:                                          ; preds = %for.body8, %if.then15
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1845
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1845
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1845
  br i1 %exitcond, label %for.inc17, label %for.body8, !dbg !1845

for.inc17:                                        ; preds = %for.inc
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !1846
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32, !dbg !1846
  %exitcond32 = icmp eq i32 %lftr.wideiv31, 3, !dbg !1846
  br i1 %exitcond32, label %for.end19, label %for.body, !dbg !1846

for.end19:                                        ; preds = %for.inc17
  ret i32 1560, !dbg !1847
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare i32 @get_mem2Dint(i32***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dint(i32****, i32, i32, i32) #2

; Function Attrs: optsize
declare void @RandomIntraInit(i32, i32, i32) #2

; Function Attrs: optsize
declare void @InitSEIMessages(...) #2

; Function Attrs: nounwind optsize uwtable
define void @free_img() #0 {
entry:
  tail call void (...)* @CloseSEIMessages() #7, !dbg !1848
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1849, !tbaa !1428
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70, !dbg !1849
  %1 = load i16******* %pred_mv, align 8, !dbg !1849, !tbaa !1428
  tail call void @free_mem_mv(i16****** %1) #8, !dbg !1849
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1850, !tbaa !1428
  %all_mv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 71, !dbg !1850
  %3 = load i16******* %all_mv, align 8, !dbg !1850, !tbaa !1428
  tail call void @free_mem_mv(i16****** %3) #8, !dbg !1850
  %4 = load %struct.InputParameters** @input, align 8, !dbg !1851, !tbaa !1428
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 39, !dbg !1851
  %5 = load i32* %BiPredMotionEstimation, align 4, !dbg !1851, !tbaa !1424
  %tobool = icmp eq i32 %5, 0, !dbg !1851
  br i1 %tobool, label %if.end, label %if.then, !dbg !1851

if.then:                                          ; preds = %entry
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !1852, !tbaa !1428
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 72, !dbg !1852
  %7 = load i16******* %bipred_mv1, align 8, !dbg !1852, !tbaa !1428
  tail call void @free_mem_mv(i16****** %7) #8, !dbg !1852
  %8 = load %struct.ImageParameters** @img, align 8, !dbg !1854, !tbaa !1428
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 73, !dbg !1854
  %9 = load i16******* %bipred_mv2, align 8, !dbg !1854, !tbaa !1428
  tail call void @free_mem_mv(i16****** %9) #8, !dbg !1854
  br label %if.end, !dbg !1855

if.end:                                           ; preds = %entry, %if.then
  %10 = load %struct.ImageParameters** @img, align 8, !dbg !1856, !tbaa !1428
  %cofAC = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 47, !dbg !1856
  %11 = load i32***** %cofAC, align 8, !dbg !1856, !tbaa !1428
  tail call void @free_mem_ACcoeff(i32**** %11) #8, !dbg !1856
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1857, !tbaa !1428
  %cofDC = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 48, !dbg !1857
  %13 = load i32**** %cofDC, align 8, !dbg !1857, !tbaa !1428
  tail call void @free_mem_DCcoeff(i32*** %13) #8, !dbg !1857
  %14 = load %struct.InputParameters** @input, align 8, !dbg !1858, !tbaa !1428
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 92, !dbg !1858
  %15 = load i32* %MbInterlace, align 4, !dbg !1858, !tbaa !1424
  %tobool1 = icmp eq i32 %15, 0, !dbg !1858
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !1858

if.then2:                                         ; preds = %if.end
  %16 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 15), align 8, !dbg !1859, !tbaa !1428
  tail call void @free_mem_mv(i16****** %16) #8, !dbg !1859
  %17 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 16), align 8, !dbg !1861, !tbaa !1428
  tail call void @free_mem_mv(i16****** %17) #8, !dbg !1861
  %18 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 15), align 8, !dbg !1862, !tbaa !1428
  tail call void @free_mem_mv(i16****** %18) #8, !dbg !1862
  %19 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 16), align 8, !dbg !1863, !tbaa !1428
  tail call void @free_mem_mv(i16****** %19) #8, !dbg !1863
  %20 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 15), align 8, !dbg !1864, !tbaa !1428
  tail call void @free_mem_mv(i16****** %20) #8, !dbg !1864
  %21 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 16), align 8, !dbg !1865, !tbaa !1428
  tail call void @free_mem_mv(i16****** %21) #8, !dbg !1865
  %22 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 15), align 8, !dbg !1866, !tbaa !1428
  tail call void @free_mem_mv(i16****** %22) #8, !dbg !1866
  %23 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 16), align 8, !dbg !1867, !tbaa !1428
  tail call void @free_mem_mv(i16****** %23) #8, !dbg !1867
  %24 = load %struct.InputParameters** @input, align 8, !dbg !1868, !tbaa !1428
  %BiPredMotionEstimation3 = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 39, !dbg !1868
  %25 = load i32* %BiPredMotionEstimation3, align 4, !dbg !1868, !tbaa !1424
  %tobool4 = icmp eq i32 %25, 0, !dbg !1868
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1868

if.then5:                                         ; preds = %if.then2
  %26 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 17), align 8, !dbg !1869, !tbaa !1428
  tail call void @free_mem_mv(i16****** %26) #8, !dbg !1869
  %27 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 18), align 8, !dbg !1871, !tbaa !1428
  tail call void @free_mem_mv(i16****** %27) #8, !dbg !1871
  %28 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 17), align 8, !dbg !1872, !tbaa !1428
  tail call void @free_mem_mv(i16****** %28) #8, !dbg !1872
  %29 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 18), align 8, !dbg !1873, !tbaa !1428
  tail call void @free_mem_mv(i16****** %29) #8, !dbg !1873
  %30 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 17), align 8, !dbg !1874, !tbaa !1428
  tail call void @free_mem_mv(i16****** %30) #8, !dbg !1874
  %31 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 18), align 8, !dbg !1875, !tbaa !1428
  tail call void @free_mem_mv(i16****** %31) #8, !dbg !1875
  %32 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 17), align 8, !dbg !1876, !tbaa !1428
  tail call void @free_mem_mv(i16****** %32) #8, !dbg !1876
  %33 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 18), align 8, !dbg !1877, !tbaa !1428
  tail call void @free_mem_mv(i16****** %33) #8, !dbg !1877
  br label %if.end6, !dbg !1878

if.end6:                                          ; preds = %if.then2, %if.then5
  %34 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 4), align 8, !dbg !1879, !tbaa !1428
  tail call void @free_mem_ACcoeff(i32**** %34) #8, !dbg !1879
  %35 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 5), align 8, !dbg !1880, !tbaa !1428
  tail call void @free_mem_DCcoeff(i32*** %35) #8, !dbg !1880
  %36 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 4), align 8, !dbg !1881, !tbaa !1428
  tail call void @free_mem_ACcoeff(i32**** %36) #8, !dbg !1881
  %37 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 5), align 8, !dbg !1882, !tbaa !1428
  tail call void @free_mem_DCcoeff(i32*** %37) #8, !dbg !1882
  %38 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 4), align 8, !dbg !1883, !tbaa !1428
  tail call void @free_mem_ACcoeff(i32**** %38) #8, !dbg !1883
  %39 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 5), align 8, !dbg !1884, !tbaa !1428
  tail call void @free_mem_DCcoeff(i32*** %39) #8, !dbg !1884
  %40 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 4), align 8, !dbg !1885, !tbaa !1428
  tail call void @free_mem_ACcoeff(i32**** %40) #8, !dbg !1885
  %41 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 5), align 8, !dbg !1886, !tbaa !1428
  tail call void @free_mem_DCcoeff(i32*** %41) #8, !dbg !1886
  br label %if.end7, !dbg !1887

if.end7:                                          ; preds = %if.end, %if.end6
  %42 = load %struct.ImageParameters** @img, align 8, !dbg !1888, !tbaa !1428
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 155, !dbg !1888
  %43 = load i32* %max_imgpel_value, align 4, !dbg !1888, !tbaa !1424
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 156, !dbg !1888
  %44 = load i32* %max_imgpel_value_uv, align 4, !dbg !1888, !tbaa !1424
  %cmp = icmp sgt i32 %43, %44, !dbg !1888
  %quad = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 53, !dbg !1889
  %45 = load i32** %quad, align 8, !dbg !1889, !tbaa !1428
  br i1 %cmp, label %if.then8, label %if.else, !dbg !1888

if.then8:                                         ; preds = %if.end7
  %add = add nsw i32 %43, 1, !dbg !1889
  %idx.ext = sext i32 %add to i64, !dbg !1889
  %idx.neg = sub i64 0, %idx.ext, !dbg !1889
  %add.ptr = getelementptr inbounds i32* %45, i64 %idx.neg, !dbg !1889
  %46 = bitcast i32* %add.ptr to i8*, !dbg !1889
  tail call void @free(i8* %46) #7, !dbg !1889
  br label %if.end16, !dbg !1889

if.else:                                          ; preds = %if.end7
  %add12 = add nsw i32 %44, 1, !dbg !1890
  %idx.ext13 = sext i32 %add12 to i64, !dbg !1890
  %idx.neg14 = sub i64 0, %idx.ext13, !dbg !1890
  %add.ptr15 = getelementptr inbounds i32* %45, i64 %idx.neg14, !dbg !1890
  %47 = bitcast i32* %add.ptr15 to i8*, !dbg !1890
  tail call void @free(i8* %47) #7, !dbg !1890
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  %48 = load %struct.InputParameters** @input, align 8, !dbg !1891, !tbaa !1428
  %MbInterlace17 = getelementptr inbounds %struct.InputParameters* %48, i64 0, i32 92, !dbg !1891
  %49 = load i32* %MbInterlace17, align 4, !dbg !1891, !tbaa !1424
  %tobool18 = icmp eq i32 %49, 0, !dbg !1891
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1891

if.then19:                                        ; preds = %if.end16
  %50 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 10), align 8, !dbg !1892, !tbaa !1428
  tail call void @free_mem2Dint(i32** %50) #7, !dbg !1892
  %51 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 10), align 8, !dbg !1894, !tbaa !1428
  tail call void @free_mem2Dint(i32** %51) #7, !dbg !1894
  %52 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 10), align 8, !dbg !1895, !tbaa !1428
  tail call void @free_mem2Dint(i32** %52) #7, !dbg !1895
  br label %if.end20, !dbg !1896

if.end20:                                         ; preds = %if.end16, %if.then19
  ret void, !dbg !1897
}

; Function Attrs: optsize
declare void @CloseSEIMessages(...) #2

; Function Attrs: nounwind optsize uwtable
define void @free_mem_mv(i16****** nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16****** %mv}, i64 0, metadata !418), !dbg !1898
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !419), !dbg !1899
  br label %for.cond1.preheader, !dbg !1899

for.cond1.preheader:                              ; preds = %for.end47, %entry
  %indvars.iv95 = phi i64 [ 0, %entry ], [ %indvars.iv.next96, %for.end47 ]
  %arrayidx35 = getelementptr inbounds i16****** %mv, i64 %indvars.iv95, !dbg !1901
  br label %for.cond4.preheader, !dbg !1907

for.cond4.preheader:                              ; preds = %for.end40, %for.cond1.preheader
  %indvars.iv91 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next92, %for.end40 ]
  br label %for.cond7.preheader, !dbg !1908

for.cond7.preheader:                              ; preds = %for.end31, %for.cond4.preheader
  %indvars.iv87 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next88, %for.end31 ]
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1909, !tbaa !1428
  %max_num_references79 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9, !dbg !1909
  %1 = load i32* %max_num_references79, align 4, !dbg !1909, !tbaa !1424
  %cmp880 = icmp sgt i32 %1, 0, !dbg !1909
  br i1 %cmp880, label %for.cond10.preheader, label %for.end31, !dbg !1909

for.cond10.preheader:                             ; preds = %for.cond7.preheader, %for.end
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.end ], [ 0, %for.cond7.preheader ]
  br label %for.body12, !dbg !1911

for.body12:                                       ; preds = %for.body12, %for.cond10.preheader
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next, %for.body12 ]
  %2 = load i16****** %arrayidx35, align 8, !dbg !1914, !tbaa !1428
  %arrayidx17 = getelementptr inbounds i16***** %2, i64 %indvars.iv91, !dbg !1914
  %3 = load i16***** %arrayidx17, align 8, !dbg !1914, !tbaa !1428
  %arrayidx18 = getelementptr inbounds i16**** %3, i64 %indvars.iv87, !dbg !1914
  %4 = load i16**** %arrayidx18, align 8, !dbg !1914, !tbaa !1428
  %arrayidx19 = getelementptr inbounds i16*** %4, i64 %indvars.iv85, !dbg !1914
  %5 = load i16*** %arrayidx19, align 8, !dbg !1914, !tbaa !1428
  %arrayidx20 = getelementptr inbounds i16** %5, i64 %indvars.iv, !dbg !1914
  %6 = load i16** %arrayidx20, align 8, !dbg !1914, !tbaa !1428
  %7 = bitcast i16* %6 to i8*, !dbg !1914
  tail call void @free(i8* %7) #7, !dbg !1914
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1911
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1911
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !1911
  br i1 %exitcond, label %for.end, label %for.body12, !dbg !1911

for.end:                                          ; preds = %for.body12
  %8 = load i16****** %arrayidx35, align 8, !dbg !1916, !tbaa !1428
  %arrayidx26 = getelementptr inbounds i16***** %8, i64 %indvars.iv91, !dbg !1916
  %9 = load i16***** %arrayidx26, align 8, !dbg !1916, !tbaa !1428
  %arrayidx27 = getelementptr inbounds i16**** %9, i64 %indvars.iv87, !dbg !1916
  %10 = load i16**** %arrayidx27, align 8, !dbg !1916, !tbaa !1428
  %arrayidx28 = getelementptr inbounds i16*** %10, i64 %indvars.iv85, !dbg !1916
  %11 = load i16*** %arrayidx28, align 8, !dbg !1916, !tbaa !1428
  %12 = bitcast i16** %11 to i8*, !dbg !1916
  tail call void @free(i8* %12) #7, !dbg !1916
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !1909
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1909, !tbaa !1428
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 9, !dbg !1909
  %14 = load i32* %max_num_references, align 4, !dbg !1909, !tbaa !1424
  %15 = trunc i64 %indvars.iv.next86 to i32, !dbg !1909
  %cmp8 = icmp slt i32 %15, %14, !dbg !1909
  br i1 %cmp8, label %for.cond10.preheader, label %for.end31, !dbg !1909

for.end31:                                        ; preds = %for.end, %for.cond7.preheader
  %16 = load i16****** %arrayidx35, align 8, !dbg !1901, !tbaa !1428
  %arrayidx36 = getelementptr inbounds i16***** %16, i64 %indvars.iv91, !dbg !1901
  %17 = load i16***** %arrayidx36, align 8, !dbg !1901, !tbaa !1428
  %arrayidx37 = getelementptr inbounds i16**** %17, i64 %indvars.iv87, !dbg !1901
  %18 = load i16**** %arrayidx37, align 8, !dbg !1901, !tbaa !1428
  %19 = bitcast i16*** %18 to i8*, !dbg !1901
  tail call void @free(i8* %19) #7, !dbg !1901
  %indvars.iv.next88 = add i64 %indvars.iv87, 1, !dbg !1908
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32, !dbg !1908
  %exitcond90 = icmp eq i32 %lftr.wideiv89, 2, !dbg !1908
  br i1 %exitcond90, label %for.end40, label %for.cond7.preheader, !dbg !1908

for.end40:                                        ; preds = %for.end31
  %20 = load i16****** %arrayidx35, align 8, !dbg !1917, !tbaa !1428
  %arrayidx44 = getelementptr inbounds i16***** %20, i64 %indvars.iv91, !dbg !1917
  %21 = load i16***** %arrayidx44, align 8, !dbg !1917, !tbaa !1428
  %22 = bitcast i16**** %21 to i8*, !dbg !1917
  tail call void @free(i8* %22) #7, !dbg !1917
  %indvars.iv.next92 = add i64 %indvars.iv91, 1, !dbg !1907
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32, !dbg !1907
  %exitcond94 = icmp eq i32 %lftr.wideiv93, 4, !dbg !1907
  br i1 %exitcond94, label %for.end47, label %for.cond4.preheader, !dbg !1907

for.end47:                                        ; preds = %for.end40
  %23 = load i16****** %arrayidx35, align 8, !dbg !1918, !tbaa !1428
  %24 = bitcast i16***** %23 to i8*, !dbg !1918
  tail call void @free(i8* %24) #7, !dbg !1918
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !1899
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32, !dbg !1899
  %exitcond98 = icmp eq i32 %lftr.wideiv97, 4, !dbg !1899
  br i1 %exitcond98, label %for.end52, label %for.cond1.preheader, !dbg !1899

for.end52:                                        ; preds = %for.end47
  %25 = bitcast i16****** %mv to i8*, !dbg !1919
  tail call void @free(i8* %25) #7, !dbg !1919
  ret void, !dbg !1920
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_ACcoeff(i32**** nocapture %cofAC) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32**** %cofAC}, i64 0, metadata !448), !dbg !1921
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !451), !dbg !1922
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1922, !tbaa !1428
  %num_blk8x8_uv37 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157, !dbg !1922
  %1 = load i32* %num_blk8x8_uv37, align 4, !dbg !1922, !tbaa !1424
  %add38 = add nsw i32 %1, 4, !dbg !1922
  %cmp39 = icmp sgt i32 %add38, 0, !dbg !1922
  br i1 %cmp39, label %for.cond1.preheader, label %for.end22, !dbg !1922

for.cond1.preheader:                              ; preds = %entry, %for.end17
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.end17 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32**** %cofAC, i64 %indvars.iv45, !dbg !1924
  br label %for.cond4.preheader, !dbg !1930

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv41 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next42, %for.end ]
  br label %for.body6, !dbg !1931

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %2 = load i32**** %arrayidx, align 8, !dbg !1924, !tbaa !1428
  %arrayidx9 = getelementptr inbounds i32*** %2, i64 %indvars.iv41, !dbg !1924
  %3 = load i32*** %arrayidx9, align 8, !dbg !1924, !tbaa !1428
  %arrayidx10 = getelementptr inbounds i32** %3, i64 %indvars.iv, !dbg !1924
  %4 = load i32** %arrayidx10, align 8, !dbg !1924, !tbaa !1428
  %5 = bitcast i32* %4 to i8*, !dbg !1924
  tail call void @free(i8* %5) #7, !dbg !1924
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1931
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1931
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1931
  br i1 %exitcond, label %for.end, label %for.body6, !dbg !1931

for.end:                                          ; preds = %for.body6
  %6 = load i32**** %arrayidx, align 8, !dbg !1932, !tbaa !1428
  %arrayidx14 = getelementptr inbounds i32*** %6, i64 %indvars.iv41, !dbg !1932
  %7 = load i32*** %arrayidx14, align 8, !dbg !1932, !tbaa !1428
  %8 = bitcast i32** %7 to i8*, !dbg !1932
  tail call void @free(i8* %8) #7, !dbg !1932
  %indvars.iv.next42 = add i64 %indvars.iv41, 1, !dbg !1930
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32, !dbg !1930
  %exitcond44 = icmp eq i32 %lftr.wideiv43, 4, !dbg !1930
  br i1 %exitcond44, label %for.end17, label %for.cond4.preheader, !dbg !1930

for.end17:                                        ; preds = %for.end
  %9 = load i32**** %arrayidx, align 8, !dbg !1933, !tbaa !1428
  %10 = bitcast i32*** %9 to i8*, !dbg !1933
  tail call void @free(i8* %10) #7, !dbg !1933
  %indvars.iv.next46 = add i64 %indvars.iv45, 1, !dbg !1922
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !1922, !tbaa !1428
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 157, !dbg !1922
  %12 = load i32* %num_blk8x8_uv, align 4, !dbg !1922, !tbaa !1424
  %13 = add nsw i32 %12, 3, !dbg !1922
  %14 = trunc i64 %indvars.iv45 to i32, !dbg !1922
  %cmp = icmp slt i32 %14, %13, !dbg !1922
  br i1 %cmp, label %for.cond1.preheader, label %for.end22, !dbg !1922

for.end22:                                        ; preds = %for.end17, %entry
  %15 = bitcast i32**** %cofAC to i8*, !dbg !1934
  tail call void @free(i8* %15) #7, !dbg !1934
  ret void, !dbg !1935
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_DCcoeff(i32*** nocapture %cofDC) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32*** %cofDC}, i64 0, metadata !456), !dbg !1936
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !458), !dbg !1937
  br label %for.cond1.preheader, !dbg !1937

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv20 = phi i64 [ 0, %entry ], [ %indvars.iv.next21, %for.end ]
  %arrayidx = getelementptr inbounds i32*** %cofDC, i64 %indvars.iv20, !dbg !1939
  br label %for.body3, !dbg !1943

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = load i32*** %arrayidx, align 8, !dbg !1939, !tbaa !1428
  %arrayidx5 = getelementptr inbounds i32** %0, i64 %indvars.iv, !dbg !1939
  %1 = load i32** %arrayidx5, align 8, !dbg !1939, !tbaa !1428
  %2 = bitcast i32* %1 to i8*, !dbg !1939
  tail call void @free(i8* %2) #7, !dbg !1939
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1943
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1943
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1943
  br i1 %exitcond, label %for.end, label %for.body3, !dbg !1943

for.end:                                          ; preds = %for.body3
  %3 = load i32*** %arrayidx, align 8, !dbg !1944, !tbaa !1428
  %4 = bitcast i32** %3 to i8*, !dbg !1944
  tail call void @free(i8* %4) #7, !dbg !1944
  %indvars.iv.next21 = add i64 %indvars.iv20, 1, !dbg !1937
  %lftr.wideiv22 = trunc i64 %indvars.iv.next21 to i32, !dbg !1937
  %exitcond23 = icmp eq i32 %lftr.wideiv22, 3, !dbg !1937
  br i1 %exitcond23, label %for.end10, label %for.cond1.preheader, !dbg !1937

for.end10:                                        ; preds = %for.end
  %5 = bitcast i32*** %cofDC to i8*, !dbg !1945
  tail call void @free(i8* %5) #7, !dbg !1945
  ret void, !dbg !1946
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @free_mem2Dint(i32**) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.Picture* @malloc_picture() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 824) #7, !dbg !1947
  %0 = bitcast i8* %call to %struct.Picture*, !dbg !1947
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %0}, i64 0, metadata !265), !dbg !1947
  %cmp = icmp eq i8* %call, null, !dbg !1947
  br i1 %cmp, label %if.then, label %if.end, !dbg !1947

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !1947
  br label %if.end, !dbg !1947

if.end:                                           ; preds = %if.then, %entry
  ret %struct.Picture* %0, !dbg !1948
}

; Function Attrs: optsize
declare void @free_slice_list(%struct.Picture*) #2

; Function Attrs: nounwind optsize uwtable
define void @report_frame_statistic() #0 {
entry:
  %name = alloca [20 x i8], align 16
  %now = alloca i64, align 8
  %string = alloca [1000 x i8], align 16
  call void @llvm.dbg.value(metadata !1949, i64 0, metadata !273), !dbg !1950
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %name}, metadata !328), !dbg !1951
  call void @llvm.dbg.declare(metadata !{i64* %now}, metadata !330), !dbg !1952
  %0 = getelementptr inbounds [1000 x i8]* %string, i64 0, i64 0, !dbg !1953
  call void @llvm.lifetime.start(i64 1000, i8* %0) #4, !dbg !1953
  call void @llvm.dbg.declare(metadata !{[1000 x i8]* %string}, metadata !351), !dbg !1953
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !1954
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !273), !dbg !1954
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1954
  br i1 %cmp, label %if.then, label %if.else8, !dbg !1954

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !1955
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !273), !dbg !1955
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !1955
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1955

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !1957
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #7, !dbg !1959
  br label %if.end15, !dbg !1960

if.else:                                          ; preds = %if.then
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1), !dbg !1961
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str10, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1), !dbg !1963
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1), !dbg !1964
  br label %if.end15

if.else8:                                         ; preds = %entry
  %call9 = call i32 @fclose(%struct._IO_FILE* %call) #7, !dbg !1965
  %call10 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !1967
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call10}, i64 0, metadata !273), !dbg !1967
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null, !dbg !1967
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !1967

if.then12:                                        ; preds = %if.else8
  %call13 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !1968
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #7, !dbg !1970
  br label %if.end15, !dbg !1971

if.end15:                                         ; preds = %if.else8, %if.then12, %if.then3, %if.else
  %p_stat_frm.0 = phi %struct._IO_FILE* [ null, %if.then3 ], [ %call1, %if.else ], [ null, %if.then12 ], [ %call10, %if.else8 ]
  %4 = load i32* @frame_statistic_start, align 4, !dbg !1972, !tbaa !1424
  %tobool = icmp eq i32 %4, 0, !dbg !1972
  br i1 %tobool, label %if.end19, label %if.then16, !dbg !1972

if.then16:                                        ; preds = %if.end15
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str11, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %p_stat_frm.0), !dbg !1973
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %p_stat_frm.0), !dbg !1975
  br label %if.end19, !dbg !1976

if.end19:                                         ; preds = %if.end15, %if.then16
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !1977
  %call21 = call i64 @time(i64* null) #7, !dbg !1978
  call void @llvm.dbg.value(metadata !{i64 %call21}, i64 0, metadata !330), !dbg !1978
  store i64 %call21, i64* %now, align 8, !dbg !1978, !tbaa !1979
  %call22 = call i64 @time(i64* %now) #7, !dbg !1980
  %call23 = call %struct.tm* @localtime(i64* %now) #7, !dbg !1981
  call void @llvm.dbg.value(metadata !{%struct.tm* %call23}, i64 0, metadata !333), !dbg !1981
  %call24 = call i64 @strftime(i8* %0, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), %struct.tm* %call23) #7, !dbg !1982
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* %0) #7, !dbg !1983
  %call28 = call i64 @strftime(i8* %0, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), %struct.tm* %call23) #7, !dbg !1984
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* %0) #7, !dbg !1985
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !327), !dbg !1986
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !1988, !tbaa !1428
  br label %for.body, !dbg !1986

for.body:                                         ; preds = %for.body, %if.end19
  %indvars.iv461 = phi i64 [ 0, %if.end19 ], [ %indvars.iv.next462, %for.body ]
  %arraydecay32 = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 26, i64 0, !dbg !1988
  %call33 = call i64 @strlen(i8* %arraydecay32) #9, !dbg !1988
  %sub = add i64 %call33, 4294967276, !dbg !1988
  %conv = trunc i64 %sub to i32, !dbg !1988
  %cmp34 = icmp slt i32 %conv, 0, !dbg !1988
  %.conv = select i1 %cmp34, i64 0, i64 %sub, !dbg !1988
  %add = add i64 %.conv, %indvars.iv461, !dbg !1988
  %sext = shl i64 %add, 32, !dbg !1988
  %idxprom = ashr exact i64 %sext, 32, !dbg !1988
  %arrayidx = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 26, i64 %idxprom, !dbg !1988
  %7 = load i8* %arrayidx, align 1, !dbg !1988, !tbaa !1425
  %arrayidx43 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 %indvars.iv461, !dbg !1988
  store i8 %7, i8* %arrayidx43, align 1, !dbg !1988, !tbaa !1425
  %indvars.iv.next462 = add i64 %indvars.iv461, 1, !dbg !1986
  %lftr.wideiv463 = trunc i64 %indvars.iv.next462 to i32, !dbg !1986
  %exitcond464 = icmp eq i32 %lftr.wideiv463, 20, !dbg !1986
  br i1 %exitcond464, label %for.end, label %for.body, !dbg !1986

for.end:                                          ; preds = %for.body
  %arraydecay44 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 0, !dbg !1989
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* %arraydecay44) #7, !dbg !1989
  %8 = load i32* @frame_no, align 4, !dbg !1990, !tbaa !1424
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 %8) #7, !dbg !1990
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !1991, !tbaa !1428
  %qp = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 10, !dbg !1991
  %10 = load i32* %qp, align 4, !dbg !1991, !tbaa !1424
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 %10) #7, !dbg !1991
  %11 = load %struct.InputParameters** @input, align 8, !dbg !1992, !tbaa !1428
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 91, !dbg !1992
  %12 = load i32* %PicInterlace, align 4, !dbg !1992, !tbaa !1424
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 92, !dbg !1992
  %13 = load i32* %MbInterlace, align 4, !dbg !1992, !tbaa !1424
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %12, i32 %13) #7, !dbg !1992
  %14 = load %struct.ImageParameters** @img, align 8, !dbg !1993, !tbaa !1428
  %frame_num = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 105, !dbg !1993
  %15 = load i32* %frame_num, align 4, !dbg !1993, !tbaa !1424
  %cmp49 = icmp eq i32 %15, 0, !dbg !1993
  %16 = load %struct.StatParameters** @stats, align 8, !dbg !1994, !tbaa !1428
  br i1 %cmp49, label %if.then51, label %if.else52, !dbg !1993

if.then51:                                        ; preds = %for.end
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %16, i64 0, i32 14, !dbg !1994
  %17 = load i32* %bit_ctr_I, align 4, !dbg !1994, !tbaa !1424
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !329), !dbg !1994
  br label %if.end55, !dbg !1996

if.else52:                                        ; preds = %for.end
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters* %16, i64 0, i32 5, !dbg !1997
  %18 = load i32* %bit_ctr_n, align 4, !dbg !1997, !tbaa !1424
  %19 = load i32* @report_frame_statistic.last_bit_ctr_n, align 4, !dbg !1997, !tbaa !1424
  %sub53 = sub nsw i32 %18, %19, !dbg !1997
  call void @llvm.dbg.value(metadata !{i32 %sub53}, i64 0, metadata !329), !dbg !1997
  store i32 %18, i32* @report_frame_statistic.last_bit_ctr_n, align 4, !dbg !1999, !tbaa !1424
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then51
  %bitcounter.0 = phi i32 [ %17, %if.then51 ], [ %sub53, %if.else52 ]
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0), i32 %bitcounter.0) #7, !dbg !2000
  %20 = load %struct.SNRParameters** @snr, align 8, !dbg !2001, !tbaa !1428
  %snr_y = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 0, !dbg !2001
  %21 = load float* %snr_y, align 4, !dbg !2001, !tbaa !1688
  %conv57 = fpext float %21 to double, !dbg !2001
  %snr_u = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 1, !dbg !2001
  %22 = load float* %snr_u, align 4, !dbg !2001, !tbaa !1688
  %conv58 = fpext float %22 to double, !dbg !2001
  %snr_v = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 2, !dbg !2001
  %23 = load float* %snr_v, align 4, !dbg !2001, !tbaa !1688
  %conv59 = fpext float %23 to double, !dbg !2001
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([22 x i8]* @.str23, i64 0, i64 0), double %conv57, double %conv58, double %conv59) #7, !dbg !2001
  %24 = load %struct.StatParameters** @stats, align 8, !dbg !2002, !tbaa !1428
  %arrayidx62 = getelementptr inbounds %struct.StatParameters* %24, i64 0, i32 20, i64 2, i64 9, !dbg !2002
  %25 = load i32* %arrayidx62, align 4, !dbg !2002, !tbaa !1424
  %26 = load i32* @report_frame_statistic.last_mode_use.2.9, align 4, !dbg !2002, !tbaa !1424
  %sub63 = sub nsw i32 %25, %26, !dbg !2002
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub63) #7, !dbg !2002
  %27 = load %struct.StatParameters** @stats, align 8, !dbg !2003, !tbaa !1428
  %arrayidx67 = getelementptr inbounds %struct.StatParameters* %27, i64 0, i32 20, i64 2, i64 13, !dbg !2003
  %28 = load i32* %arrayidx67, align 4, !dbg !2003, !tbaa !1424
  %29 = load i32* @report_frame_statistic.last_mode_use.2.13, align 4, !dbg !2003, !tbaa !1424
  %sub68 = sub nsw i32 %28, %29, !dbg !2003
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub68) #7, !dbg !2003
  %30 = load %struct.StatParameters** @stats, align 8, !dbg !2004, !tbaa !1428
  %arrayidx72 = getelementptr inbounds %struct.StatParameters* %30, i64 0, i32 20, i64 2, i64 10, !dbg !2004
  %31 = load i32* %arrayidx72, align 4, !dbg !2004, !tbaa !1424
  %32 = load i32* @report_frame_statistic.last_mode_use.2.10, align 8, !dbg !2004, !tbaa !1424
  %sub73 = sub nsw i32 %31, %32, !dbg !2004
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub73) #7, !dbg !2004
  %33 = load %struct.StatParameters** @stats, align 8, !dbg !2005, !tbaa !1428
  %arrayidx75 = getelementptr inbounds %struct.StatParameters* %33, i64 0, i32 11, i64 0, !dbg !2005
  %34 = load i32* %arrayidx75, align 4, !dbg !2005, !tbaa !1424
  %35 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 0), align 16, !dbg !2005, !tbaa !1424
  %sub76 = sub nsw i32 %34, %35, !dbg !2005
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub76) #7, !dbg !2005
  %36 = load %struct.StatParameters** @stats, align 8, !dbg !2006, !tbaa !1428
  %arrayidx79 = getelementptr inbounds %struct.StatParameters* %36, i64 0, i32 11, i64 1, !dbg !2006
  %37 = load i32* %arrayidx79, align 4, !dbg !2006, !tbaa !1424
  %38 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 1), align 4, !dbg !2006, !tbaa !1424
  %sub80 = sub nsw i32 %37, %38, !dbg !2006
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub80) #7, !dbg !2006
  %39 = load %struct.StatParameters** @stats, align 8, !dbg !2007, !tbaa !1428
  %arrayidx83 = getelementptr inbounds %struct.StatParameters* %39, i64 0, i32 11, i64 2, !dbg !2007
  %40 = load i32* %arrayidx83, align 4, !dbg !2007, !tbaa !1424
  %41 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 2), align 8, !dbg !2007, !tbaa !1424
  %sub84 = sub nsw i32 %40, %41, !dbg !2007
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub84) #7, !dbg !2007
  %42 = load %struct.StatParameters** @stats, align 8, !dbg !2008, !tbaa !1428
  %arrayidx87 = getelementptr inbounds %struct.StatParameters* %42, i64 0, i32 11, i64 3, !dbg !2008
  %43 = load i32* %arrayidx87, align 4, !dbg !2008, !tbaa !1424
  %44 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 3), align 4, !dbg !2008, !tbaa !1424
  %sub88 = sub nsw i32 %43, %44, !dbg !2008
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub88) #7, !dbg !2008
  %45 = load %struct.StatParameters** @stats, align 8, !dbg !2009, !tbaa !1428
  %arrayidx92 = getelementptr inbounds %struct.StatParameters* %45, i64 0, i32 20, i64 0, i64 9, !dbg !2009
  %46 = load i32* %arrayidx92, align 4, !dbg !2009, !tbaa !1424
  %47 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 9), align 4, !dbg !2009, !tbaa !1424
  %sub93 = sub nsw i32 %46, %47, !dbg !2009
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub93) #7, !dbg !2009
  %48 = load %struct.StatParameters** @stats, align 8, !dbg !2010, !tbaa !1428
  %arrayidx97 = getelementptr inbounds %struct.StatParameters* %48, i64 0, i32 20, i64 0, i64 13, !dbg !2010
  %49 = load i32* %arrayidx97, align 4, !dbg !2010, !tbaa !1424
  %50 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 13), align 4, !dbg !2010, !tbaa !1424
  %sub98 = sub nsw i32 %49, %50, !dbg !2010
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub98) #7, !dbg !2010
  %51 = load %struct.StatParameters** @stats, align 8, !dbg !2011, !tbaa !1428
  %arrayidx102 = getelementptr inbounds %struct.StatParameters* %51, i64 0, i32 20, i64 0, i64 10, !dbg !2011
  %52 = load i32* %arrayidx102, align 4, !dbg !2011, !tbaa !1424
  %53 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 10), align 8, !dbg !2011, !tbaa !1424
  %sub103 = sub nsw i32 %52, %53, !dbg !2011
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub103) #7, !dbg !2011
  %54 = load %struct.StatParameters** @stats, align 8, !dbg !2012, !tbaa !1428
  %arrayidx107 = getelementptr inbounds %struct.StatParameters* %54, i64 0, i32 20, i64 0, i64 0, !dbg !2012
  %55 = load i32* %arrayidx107, align 4, !dbg !2012, !tbaa !1424
  %56 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 0), align 16, !dbg !2012, !tbaa !1424
  %sub108 = sub nsw i32 %55, %56, !dbg !2012
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub108) #7, !dbg !2012
  %57 = load %struct.StatParameters** @stats, align 8, !dbg !2013, !tbaa !1428
  %arrayidx112 = getelementptr inbounds %struct.StatParameters* %57, i64 0, i32 20, i64 0, i64 1, !dbg !2013
  %58 = load i32* %arrayidx112, align 4, !dbg !2013, !tbaa !1424
  %59 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 1), align 4, !dbg !2013, !tbaa !1424
  %sub113 = sub nsw i32 %58, %59, !dbg !2013
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub113) #7, !dbg !2013
  %60 = load %struct.StatParameters** @stats, align 8, !dbg !2014, !tbaa !1428
  %arrayidx117 = getelementptr inbounds %struct.StatParameters* %60, i64 0, i32 20, i64 0, i64 2, !dbg !2014
  %61 = load i32* %arrayidx117, align 4, !dbg !2014, !tbaa !1424
  %62 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 2), align 8, !dbg !2014, !tbaa !1424
  %sub118 = sub nsw i32 %61, %62, !dbg !2014
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub118) #7, !dbg !2014
  %63 = load %struct.StatParameters** @stats, align 8, !dbg !2015, !tbaa !1428
  %arrayidx122 = getelementptr inbounds %struct.StatParameters* %63, i64 0, i32 20, i64 0, i64 3, !dbg !2015
  %64 = load i32* %arrayidx122, align 4, !dbg !2015, !tbaa !1424
  %65 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 3), align 4, !dbg !2015, !tbaa !1424
  %sub123 = sub nsw i32 %64, %65, !dbg !2015
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub123) #7, !dbg !2015
  %66 = load %struct.StatParameters** @stats, align 8, !dbg !2016, !tbaa !1428
  %arrayidx126 = getelementptr inbounds %struct.StatParameters* %66, i64 0, i32 9, i64 0, i64 1, !dbg !2016
  %67 = load i32* %arrayidx126, align 4, !dbg !2016, !tbaa !1424
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %67) #7, !dbg !2016
  %68 = load %struct.StatParameters** @stats, align 8, !dbg !2017, !tbaa !1428
  %arrayidx129 = getelementptr inbounds %struct.StatParameters* %68, i64 0, i32 10, i64 0, i64 1, !dbg !2017
  %69 = load i32* %arrayidx129, align 4, !dbg !2017, !tbaa !1424
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %69) #7, !dbg !2017
  %70 = load %struct.StatParameters** @stats, align 8, !dbg !2018, !tbaa !1428
  %arrayidx133 = getelementptr inbounds %struct.StatParameters* %70, i64 0, i32 9, i64 0, i64 2, !dbg !2018
  %71 = load i32* %arrayidx133, align 4, !dbg !2018, !tbaa !1424
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %71) #7, !dbg !2018
  %72 = load %struct.StatParameters** @stats, align 8, !dbg !2019, !tbaa !1428
  %arrayidx137 = getelementptr inbounds %struct.StatParameters* %72, i64 0, i32 10, i64 0, i64 2, !dbg !2019
  %73 = load i32* %arrayidx137, align 4, !dbg !2019, !tbaa !1424
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %73) #7, !dbg !2019
  %74 = load %struct.StatParameters** @stats, align 8, !dbg !2020, !tbaa !1428
  %arrayidx141 = getelementptr inbounds %struct.StatParameters* %74, i64 0, i32 9, i64 0, i64 3, !dbg !2020
  %75 = load i32* %arrayidx141, align 4, !dbg !2020, !tbaa !1424
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %75) #7, !dbg !2020
  %76 = load %struct.StatParameters** @stats, align 8, !dbg !2021, !tbaa !1428
  %arrayidx145 = getelementptr inbounds %struct.StatParameters* %76, i64 0, i32 10, i64 0, i64 3, !dbg !2021
  %77 = load i32* %arrayidx145, align 4, !dbg !2021, !tbaa !1424
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %77) #7, !dbg !2021
  %78 = load %struct.StatParameters** @stats, align 8, !dbg !2022, !tbaa !1428
  %arrayidx149 = getelementptr inbounds %struct.StatParameters* %78, i64 0, i32 20, i64 0, i64 8, !dbg !2022
  %79 = load i32* %arrayidx149, align 4, !dbg !2022, !tbaa !1424
  %80 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 8), align 16, !dbg !2022, !tbaa !1424
  %sub150 = sub nsw i32 %79, %80, !dbg !2022
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub150) #7, !dbg !2022
  %81 = load %struct.StatParameters** @stats, align 8, !dbg !2023, !tbaa !1428
  %arrayidx154 = getelementptr inbounds %struct.StatParameters* %81, i64 0, i32 20, i64 0, i64 4, !dbg !2023
  %82 = load i32* %arrayidx154, align 4, !dbg !2023, !tbaa !1424
  %83 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 4), align 16, !dbg !2023, !tbaa !1424
  %sub155 = sub nsw i32 %82, %83, !dbg !2023
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub155) #7, !dbg !2023
  %84 = load %struct.StatParameters** @stats, align 8, !dbg !2024, !tbaa !1428
  %arrayidx159 = getelementptr inbounds %struct.StatParameters* %84, i64 0, i32 9, i64 0, i64 4, !dbg !2024
  %85 = load i32* %arrayidx159, align 4, !dbg !2024, !tbaa !1424
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %85) #7, !dbg !2024
  %86 = load %struct.StatParameters** @stats, align 8, !dbg !2025, !tbaa !1428
  %arrayidx163 = getelementptr inbounds %struct.StatParameters* %86, i64 0, i32 10, i64 0, i64 4, !dbg !2025
  %87 = load i32* %arrayidx163, align 4, !dbg !2025, !tbaa !1424
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %87) #7, !dbg !2025
  %88 = load %struct.StatParameters** @stats, align 8, !dbg !2026, !tbaa !1428
  %arrayidx167 = getelementptr inbounds %struct.StatParameters* %88, i64 0, i32 20, i64 0, i64 5, !dbg !2026
  %89 = load i32* %arrayidx167, align 4, !dbg !2026, !tbaa !1424
  %90 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 5), align 4, !dbg !2026, !tbaa !1424
  %sub168 = sub nsw i32 %89, %90, !dbg !2026
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub168) #7, !dbg !2026
  %91 = load %struct.StatParameters** @stats, align 8, !dbg !2027, !tbaa !1428
  %arrayidx172 = getelementptr inbounds %struct.StatParameters* %91, i64 0, i32 20, i64 0, i64 6, !dbg !2027
  %92 = load i32* %arrayidx172, align 4, !dbg !2027, !tbaa !1424
  %93 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 6), align 8, !dbg !2027, !tbaa !1424
  %sub173 = sub nsw i32 %92, %93, !dbg !2027
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub173) #7, !dbg !2027
  %94 = load %struct.StatParameters** @stats, align 8, !dbg !2028, !tbaa !1428
  %arrayidx177 = getelementptr inbounds %struct.StatParameters* %94, i64 0, i32 20, i64 0, i64 7, !dbg !2028
  %95 = load i32* %arrayidx177, align 4, !dbg !2028, !tbaa !1424
  %96 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 7), align 4, !dbg !2028, !tbaa !1424
  %sub178 = sub nsw i32 %95, %96, !dbg !2028
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub178) #7, !dbg !2028
  %97 = load %struct.StatParameters** @stats, align 8, !dbg !2029, !tbaa !1428
  %arrayidx182 = getelementptr inbounds %struct.StatParameters* %97, i64 0, i32 20, i64 1, i64 9, !dbg !2029
  %98 = load i32* %arrayidx182, align 4, !dbg !2029, !tbaa !1424
  %99 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 9), align 4, !dbg !2029, !tbaa !1424
  %sub183 = sub nsw i32 %98, %99, !dbg !2029
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub183) #7, !dbg !2029
  %100 = load %struct.StatParameters** @stats, align 8, !dbg !2030, !tbaa !1428
  %arrayidx187 = getelementptr inbounds %struct.StatParameters* %100, i64 0, i32 20, i64 1, i64 13, !dbg !2030
  %101 = load i32* %arrayidx187, align 4, !dbg !2030, !tbaa !1424
  %102 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 13), align 4, !dbg !2030, !tbaa !1424
  %sub188 = sub nsw i32 %101, %102, !dbg !2030
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub188) #7, !dbg !2030
  %103 = load %struct.StatParameters** @stats, align 8, !dbg !2031, !tbaa !1428
  %arrayidx192 = getelementptr inbounds %struct.StatParameters* %103, i64 0, i32 20, i64 1, i64 10, !dbg !2031
  %104 = load i32* %arrayidx192, align 4, !dbg !2031, !tbaa !1424
  %105 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 10), align 8, !dbg !2031, !tbaa !1424
  %sub193 = sub nsw i32 %104, %105, !dbg !2031
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub193) #7, !dbg !2031
  %106 = load %struct.StatParameters** @stats, align 8, !dbg !2032, !tbaa !1428
  %arrayidx197 = getelementptr inbounds %struct.StatParameters* %106, i64 0, i32 20, i64 1, i64 0, !dbg !2032
  %107 = load i32* %arrayidx197, align 4, !dbg !2032, !tbaa !1424
  %108 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 0), align 16, !dbg !2032, !tbaa !1424
  %sub198 = sub nsw i32 %107, %108, !dbg !2032
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub198) #7, !dbg !2032
  %109 = load %struct.StatParameters** @stats, align 8, !dbg !2033, !tbaa !1428
  %arrayidx202 = getelementptr inbounds %struct.StatParameters* %109, i64 0, i32 20, i64 1, i64 1, !dbg !2033
  %110 = load i32* %arrayidx202, align 4, !dbg !2033, !tbaa !1424
  %111 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 1), align 4, !dbg !2033, !tbaa !1424
  %sub203 = sub nsw i32 %110, %111, !dbg !2033
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub203) #7, !dbg !2033
  %112 = load %struct.StatParameters** @stats, align 8, !dbg !2034, !tbaa !1428
  %arrayidx207 = getelementptr inbounds %struct.StatParameters* %112, i64 0, i32 20, i64 1, i64 2, !dbg !2034
  %113 = load i32* %arrayidx207, align 4, !dbg !2034, !tbaa !1424
  %114 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 2), align 8, !dbg !2034, !tbaa !1424
  %sub208 = sub nsw i32 %113, %114, !dbg !2034
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub208) #7, !dbg !2034
  %115 = load %struct.StatParameters** @stats, align 8, !dbg !2035, !tbaa !1428
  %arrayidx212 = getelementptr inbounds %struct.StatParameters* %115, i64 0, i32 20, i64 1, i64 3, !dbg !2035
  %116 = load i32* %arrayidx212, align 4, !dbg !2035, !tbaa !1424
  %117 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 3), align 4, !dbg !2035, !tbaa !1424
  %sub213 = sub nsw i32 %116, %117, !dbg !2035
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub213) #7, !dbg !2035
  %118 = load %struct.StatParameters** @stats, align 8, !dbg !2036, !tbaa !1428
  %arrayidx217 = getelementptr inbounds %struct.StatParameters* %118, i64 0, i32 9, i64 1, i64 0, !dbg !2036
  %119 = load i32* %arrayidx217, align 4, !dbg !2036, !tbaa !1424
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %119) #7, !dbg !2036
  %120 = load %struct.StatParameters** @stats, align 8, !dbg !2037, !tbaa !1428
  %arrayidx221 = getelementptr inbounds %struct.StatParameters* %120, i64 0, i32 10, i64 1, i64 0, !dbg !2037
  %121 = load i32* %arrayidx221, align 4, !dbg !2037, !tbaa !1424
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %121) #7, !dbg !2037
  %122 = load %struct.StatParameters** @stats, align 8, !dbg !2038, !tbaa !1428
  %arrayidx225 = getelementptr inbounds %struct.StatParameters* %122, i64 0, i32 9, i64 1, i64 1, !dbg !2038
  %123 = load i32* %arrayidx225, align 4, !dbg !2038, !tbaa !1424
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %123) #7, !dbg !2038
  %124 = load %struct.StatParameters** @stats, align 8, !dbg !2039, !tbaa !1428
  %arrayidx229 = getelementptr inbounds %struct.StatParameters* %124, i64 0, i32 10, i64 1, i64 1, !dbg !2039
  %125 = load i32* %arrayidx229, align 4, !dbg !2039, !tbaa !1424
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %125) #7, !dbg !2039
  %126 = load %struct.StatParameters** @stats, align 8, !dbg !2040, !tbaa !1428
  %arrayidx233 = getelementptr inbounds %struct.StatParameters* %126, i64 0, i32 9, i64 1, i64 2, !dbg !2040
  %127 = load i32* %arrayidx233, align 4, !dbg !2040, !tbaa !1424
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %127) #7, !dbg !2040
  %128 = load %struct.StatParameters** @stats, align 8, !dbg !2041, !tbaa !1428
  %arrayidx237 = getelementptr inbounds %struct.StatParameters* %128, i64 0, i32 10, i64 1, i64 2, !dbg !2041
  %129 = load i32* %arrayidx237, align 4, !dbg !2041, !tbaa !1424
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %129) #7, !dbg !2041
  %130 = load %struct.StatParameters** @stats, align 8, !dbg !2042, !tbaa !1428
  %arrayidx241 = getelementptr inbounds %struct.StatParameters* %130, i64 0, i32 9, i64 1, i64 3, !dbg !2042
  %131 = load i32* %arrayidx241, align 4, !dbg !2042, !tbaa !1424
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %131) #7, !dbg !2042
  %132 = load %struct.StatParameters** @stats, align 8, !dbg !2043, !tbaa !1428
  %arrayidx245 = getelementptr inbounds %struct.StatParameters* %132, i64 0, i32 10, i64 1, i64 3, !dbg !2043
  %133 = load i32* %arrayidx245, align 4, !dbg !2043, !tbaa !1424
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %133) #7, !dbg !2043
  %134 = load %struct.StatParameters** @stats, align 8, !dbg !2044, !tbaa !1428
  %arrayidx249 = getelementptr inbounds %struct.StatParameters* %134, i64 0, i32 20, i64 1, i64 8, !dbg !2044
  %135 = load i32* %arrayidx249, align 4, !dbg !2044, !tbaa !1424
  %136 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 8), align 16, !dbg !2044, !tbaa !1424
  %sub250 = sub nsw i32 %135, %136, !dbg !2044
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub250) #7, !dbg !2044
  %137 = load %struct.StatParameters** @stats, align 8, !dbg !2045, !tbaa !1428
  %arrayidx253 = getelementptr inbounds %struct.StatParameters* %137, i64 0, i32 8, i64 1, i64 0, !dbg !2045
  %138 = load i32* %arrayidx253, align 4, !dbg !2045, !tbaa !1424
  %arrayidx256 = getelementptr inbounds %struct.StatParameters* %137, i64 0, i32 8, i64 1, i64 1, !dbg !2045
  %139 = load i32* %arrayidx256, align 4, !dbg !2045, !tbaa !1424
  %140 = load i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !dbg !2045, !tbaa !1424
  %141 = load i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !dbg !2045, !tbaa !1424
  %add258.neg = add i32 %139, %138, !dbg !2045
  %add257 = sub i32 %add258.neg, %140, !dbg !2045
  %sub259 = sub i32 %add257, %141, !dbg !2045
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub259) #7, !dbg !2045
  %142 = load %struct.StatParameters** @stats, align 8, !dbg !2046, !tbaa !1428
  %arrayidx263 = getelementptr inbounds %struct.StatParameters* %142, i64 0, i32 8, i64 1, i64 1, !dbg !2046
  %143 = load i32* %arrayidx263, align 4, !dbg !2046, !tbaa !1424
  %144 = load i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !dbg !2046, !tbaa !1424
  %sub264 = sub nsw i32 %143, %144, !dbg !2046
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub264) #7, !dbg !2046
  %145 = load %struct.StatParameters** @stats, align 8, !dbg !2047, !tbaa !1428
  %arrayidx268 = getelementptr inbounds %struct.StatParameters* %145, i64 0, i32 8, i64 1, i64 0, !dbg !2047
  %146 = load i32* %arrayidx268, align 4, !dbg !2047, !tbaa !1424
  %147 = load i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !dbg !2047, !tbaa !1424
  %sub269 = sub nsw i32 %146, %147, !dbg !2047
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub269) #7, !dbg !2047
  %148 = load %struct.StatParameters** @stats, align 8, !dbg !2048, !tbaa !1428
  %arrayidx273 = getelementptr inbounds %struct.StatParameters* %148, i64 0, i32 20, i64 1, i64 4, !dbg !2048
  %149 = load i32* %arrayidx273, align 4, !dbg !2048, !tbaa !1424
  %150 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 4), align 16, !dbg !2048, !tbaa !1424
  %sub274 = sub nsw i32 %149, %150, !dbg !2048
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub274) #7, !dbg !2048
  %151 = load %struct.StatParameters** @stats, align 8, !dbg !2049, !tbaa !1428
  %arrayidx278 = getelementptr inbounds %struct.StatParameters* %151, i64 0, i32 9, i64 1, i64 4, !dbg !2049
  %152 = load i32* %arrayidx278, align 4, !dbg !2049, !tbaa !1424
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %152) #7, !dbg !2049
  %153 = load %struct.StatParameters** @stats, align 8, !dbg !2050, !tbaa !1428
  %arrayidx282 = getelementptr inbounds %struct.StatParameters* %153, i64 0, i32 10, i64 1, i64 4, !dbg !2050
  %154 = load i32* %arrayidx282, align 4, !dbg !2050, !tbaa !1424
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %154) #7, !dbg !2050
  %155 = load %struct.StatParameters** @stats, align 8, !dbg !2051, !tbaa !1428
  %arrayidx286 = getelementptr inbounds %struct.StatParameters* %155, i64 0, i32 20, i64 1, i64 5, !dbg !2051
  %156 = load i32* %arrayidx286, align 4, !dbg !2051, !tbaa !1424
  %157 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 5), align 4, !dbg !2051, !tbaa !1424
  %sub287 = sub nsw i32 %156, %157, !dbg !2051
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub287) #7, !dbg !2051
  %158 = load %struct.StatParameters** @stats, align 8, !dbg !2052, !tbaa !1428
  %arrayidx291 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 20, i64 1, i64 6, !dbg !2052
  %159 = load i32* %arrayidx291, align 4, !dbg !2052, !tbaa !1424
  %160 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 6), align 8, !dbg !2052, !tbaa !1424
  %sub292 = sub nsw i32 %159, %160, !dbg !2052
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub292) #7, !dbg !2052
  %161 = load %struct.StatParameters** @stats, align 8, !dbg !2053, !tbaa !1428
  %arrayidx296 = getelementptr inbounds %struct.StatParameters* %161, i64 0, i32 20, i64 1, i64 7, !dbg !2053
  %162 = load i32* %arrayidx296, align 4, !dbg !2053, !tbaa !1424
  %163 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 7), align 4, !dbg !2053, !tbaa !1424
  %sub297 = sub nsw i32 %162, %163, !dbg !2053
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub297) #7, !dbg !2053
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %p_stat_frm.0), !dbg !2054
  %164 = load %struct.StatParameters** @stats, align 8, !dbg !2055, !tbaa !1428
  %arrayidx302 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 9, !dbg !2055
  %165 = load i32* %arrayidx302, align 4, !dbg !2055, !tbaa !1424
  store i32 %165, i32* @report_frame_statistic.last_mode_use.2.9, align 4, !dbg !2055, !tbaa !1424
  %arrayidx305 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 13, !dbg !2056
  %166 = load i32* %arrayidx305, align 4, !dbg !2056, !tbaa !1424
  store i32 %166, i32* @report_frame_statistic.last_mode_use.2.13, align 4, !dbg !2056, !tbaa !1424
  %arrayidx308 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 10, !dbg !2057
  %167 = load i32* %arrayidx308, align 4, !dbg !2057, !tbaa !1424
  store i32 %167, i32* @report_frame_statistic.last_mode_use.2.10, align 8, !dbg !2057, !tbaa !1424
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !327), !dbg !2058
  br label %for.body312, !dbg !2058

for.body312:                                      ; preds = %for.body312, %if.end55
  %indvars.iv453 = phi i64 [ 0, %if.end55 ], [ %indvars.iv.next454, %for.body312 ]
  %arrayidx316 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 0, i64 %indvars.iv453, !dbg !2060
  %168 = load i32* %arrayidx316, align 4, !dbg !2060, !tbaa !1424
  %arrayidx318 = getelementptr inbounds [15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 %indvars.iv453, !dbg !2060
  store i32 %168, i32* %arrayidx318, align 4, !dbg !2060, !tbaa !1424
  %arrayidx322 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 1, i64 %indvars.iv453, !dbg !2062
  %169 = load i32* %arrayidx322, align 4, !dbg !2062, !tbaa !1424
  %arrayidx324 = getelementptr inbounds [15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 %indvars.iv453, !dbg !2062
  store i32 %169, i32* %arrayidx324, align 4, !dbg !2062, !tbaa !1424
  %arrayidx328 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 9, i64 0, i64 %indvars.iv453, !dbg !2063
  store i32 0, i32* %arrayidx328, align 4, !dbg !2063, !tbaa !1424
  %arrayidx332 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 9, i64 1, i64 %indvars.iv453, !dbg !2064
  store i32 0, i32* %arrayidx332, align 4, !dbg !2064, !tbaa !1424
  %arrayidx336 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 10, i64 0, i64 %indvars.iv453, !dbg !2065
  store i32 0, i32* %arrayidx336, align 4, !dbg !2065, !tbaa !1424
  %arrayidx340 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 10, i64 1, i64 %indvars.iv453, !dbg !2066
  store i32 0, i32* %arrayidx340, align 4, !dbg !2066, !tbaa !1424
  %indvars.iv.next454 = add i64 %indvars.iv453, 1, !dbg !2058
  %lftr.wideiv455 = trunc i64 %indvars.iv.next454 to i32, !dbg !2058
  %exitcond456 = icmp eq i32 %lftr.wideiv455, 15, !dbg !2058
  br i1 %exitcond456, label %for.end343, label %for.body312, !dbg !2058

for.end343:                                       ; preds = %for.body312
  %arrayidx346 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 8, i64 1, i64 0, !dbg !2067
  %170 = load i32* %arrayidx346, align 4, !dbg !2067, !tbaa !1424
  store i32 %170, i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !dbg !2067, !tbaa !1424
  %arrayidx349 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 8, i64 1, i64 1, !dbg !2068
  %171 = load i32* %arrayidx349, align 4, !dbg !2068, !tbaa !1424
  store i32 %171, i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !dbg !2068, !tbaa !1424
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !327), !dbg !2069
  br label %for.body353, !dbg !2069

for.body353:                                      ; preds = %for.body353, %for.end343
  %indvars.iv = phi i64 [ 0, %for.end343 ], [ %indvars.iv.next, %for.body353 ]
  %arrayidx356 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 11, i64 %indvars.iv, !dbg !2071
  %172 = load i32* %arrayidx356, align 4, !dbg !2071, !tbaa !1424
  %arrayidx358 = getelementptr inbounds [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 %indvars.iv, !dbg !2071
  store i32 %172, i32* %arrayidx358, align 4, !dbg !2071, !tbaa !1424
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2069
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2069
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2069
  br i1 %exitcond, label %for.end361, label %for.body353, !dbg !2069

for.end361:                                       ; preds = %for.body353
  store i32 0, i32* @frame_statistic_start, align 4, !dbg !2072, !tbaa !1424
  %call362 = call i32 @fclose(%struct._IO_FILE* %p_stat_frm.0) #7, !dbg !2073
  call void @llvm.lifetime.end(i64 1000, i8* %0) #4, !dbg !2074
  ret void, !dbg !2074
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind optsize
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @report() #0 {
entry:
  %bit_use = alloca [5 x [2 x i32]], align 16
  %name = alloca [20 x i8], align 16
  %now = alloca i64, align 8
  %string = alloca [1000 x i8], align 16
  %seqtype = alloca [80 x i8], align 16
  %0 = bitcast [5 x [2 x i32]]* %bit_use to i8*, !dbg !2075
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !2075
  call void @llvm.dbg.declare(metadata !{[5 x [2 x i32]]* %bit_use}, metadata !357), !dbg !2075
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %name}, metadata !362), !dbg !2076
  call void @llvm.dbg.declare(metadata !2077, metadata !365), !dbg !2078
  call void @llvm.dbg.declare(metadata !{i64* %now}, metadata !367), !dbg !2079
  %1 = getelementptr inbounds [1000 x i8]* %string, i64 0, i64 0, !dbg !2080
  call void @llvm.lifetime.start(i64 1000, i8* %1) #4, !dbg !2080
  call void @llvm.dbg.declare(metadata !{[1000 x i8]* %string}, metadata !369), !dbg !2080
  %2 = load i32* @Iframe_ctr, align 4, !dbg !2081, !tbaa !1424
  %arrayidx1 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 2, i64 0, !dbg !2081
  store i32 %2, i32* %arrayidx1, align 16, !dbg !2081, !tbaa !1424
  %3 = load i32* @Pframe_ctr, align 4, !dbg !2082, !tbaa !1424
  %cmp = icmp sgt i32 %3, 1, !dbg !2082
  %cond = select i1 %cmp, i32 %3, i32 1, !dbg !2082
  %arrayidx3 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 0, i64 0, !dbg !2082
  store i32 %cond, i32* %arrayidx3, align 16, !dbg !2082, !tbaa !1424
  %4 = load i32* @Bframe_ctr, align 4, !dbg !2083, !tbaa !1424
  %arrayidx5 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 1, i64 0, !dbg !2083
  store i32 %4, i32* %arrayidx5, align 8, !dbg !2083, !tbaa !1424
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !361), !dbg !2084
  br label %for.body, !dbg !2084

for.cond9.preheader:                              ; preds = %for.body
  %5 = load %struct.StatParameters** @stats, align 8, !dbg !2086, !tbaa !1428
  br label %for.cond12.preheader, !dbg !2090

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv1562 = phi i64 [ 0, %entry ], [ %indvars.iv.next1563, %for.body ]
  %arrayidx8 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 %indvars.iv1562, i64 1, !dbg !2091
  store i32 0, i32* %arrayidx8, align 4, !dbg !2091, !tbaa !1424
  %indvars.iv.next1563 = add i64 %indvars.iv1562, 1, !dbg !2084
  %lftr.wideiv1564 = trunc i64 %indvars.iv.next1563 to i32, !dbg !2084
  %exitcond1565 = icmp eq i32 %lftr.wideiv1564, 5, !dbg !2084
  br i1 %exitcond1565, label %for.cond9.preheader, label %for.body, !dbg !2084

for.cond12.preheader:                             ; preds = %for.end24, %for.cond9.preheader
  %indvars.iv1558 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next1559, %for.end24 ]
  %arrayidx21 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 %indvars.iv1558, i64 1, !dbg !2086
  %arrayidx21.promoted = load i32* %arrayidx21, align 4, !dbg !2086, !tbaa !1424
  br label %for.body14, !dbg !2093

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %indvars.iv1554 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next1555, %for.body14 ]
  %6 = phi i32 [ %arrayidx21.promoted, %for.cond12.preheader ], [ %add, %for.body14 ], !dbg !2086
  %arrayidx18 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 21, i64 %indvars.iv1558, i64 %indvars.iv1554, !dbg !2086
  %7 = load i32* %arrayidx18, align 4, !dbg !2086, !tbaa !1424
  %add = add nsw i32 %6, %7, !dbg !2086
  %indvars.iv.next1555 = add i64 %indvars.iv1554, 1, !dbg !2093
  %lftr.wideiv1556 = trunc i64 %indvars.iv.next1555 to i32, !dbg !2093
  %exitcond1557 = icmp eq i32 %lftr.wideiv1556, 15, !dbg !2093
  br i1 %exitcond1557, label %for.end24, label %for.body14, !dbg !2093

for.end24:                                        ; preds = %for.body14
  %arrayidx26 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 24, i64 %indvars.iv1558, !dbg !2094
  %8 = load i32* %arrayidx26, align 4, !dbg !2094, !tbaa !1424
  %add30 = add nsw i32 %add, %8, !dbg !2094
  %arrayidx32 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 23, i64 %indvars.iv1558, !dbg !2095
  %9 = load i32* %arrayidx32, align 4, !dbg !2095, !tbaa !1424
  %add36 = add nsw i32 %9, %add30, !dbg !2095
  %arrayidx38 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 25, i64 %indvars.iv1558, !dbg !2096
  %10 = load i32* %arrayidx38, align 4, !dbg !2096, !tbaa !1424
  %add42 = add nsw i32 %10, %add36, !dbg !2096
  %arrayidx44 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 26, i64 %indvars.iv1558, !dbg !2097
  %11 = load i32* %arrayidx44, align 4, !dbg !2097, !tbaa !1424
  %add48 = add nsw i32 %11, %add42, !dbg !2097
  %arrayidx50 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 27, i64 %indvars.iv1558, !dbg !2098
  %12 = load i32* %arrayidx50, align 4, !dbg !2098, !tbaa !1424
  %add54 = add nsw i32 %12, %add48, !dbg !2098
  %arrayidx56 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 28, i64 %indvars.iv1558, !dbg !2099
  %13 = load i32* %arrayidx56, align 4, !dbg !2099, !tbaa !1424
  %add60 = add nsw i32 %13, %add54, !dbg !2099
  %arrayidx62 = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 22, i64 %indvars.iv1558, !dbg !2100
  %14 = load i32* %arrayidx62, align 4, !dbg !2100, !tbaa !1424
  %add66 = add nsw i32 %14, %add60, !dbg !2100
  store i32 %add66, i32* %arrayidx21, align 4, !dbg !2100, !tbaa !1424
  %indvars.iv.next1559 = add i64 %indvars.iv1558, 1, !dbg !2090
  %lftr.wideiv1560 = trunc i64 %indvars.iv.next1559 to i32, !dbg !2090
  %exitcond1561 = icmp eq i32 %lftr.wideiv1560, 5, !dbg !2090
  br i1 %exitcond1561, label %for.end69, label %for.cond12.preheader, !dbg !2090

for.end69:                                        ; preds = %for.end24
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !2101, !tbaa !1428
  %framerate = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 12, !dbg !2101
  %16 = load float* %framerate, align 4, !dbg !2101, !tbaa !1688
  %17 = load %struct.InputParameters** @input, align 8, !dbg !2101, !tbaa !1428
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 34, !dbg !2101
  %18 = load i32* %successive_Bframe, align 4, !dbg !2101, !tbaa !1424
  %add70 = add nsw i32 %18, 1, !dbg !2101
  %conv = sitofp i32 %add70 to float, !dbg !2101
  %mul = fmul float %16, %conv, !dbg !2101
  %jumpd = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 5, !dbg !2101
  %19 = load i32* %jumpd, align 4, !dbg !2101, !tbaa !1424
  %add71 = add nsw i32 %19, 1, !dbg !2101
  %conv72 = sitofp i32 %add71 to float, !dbg !2101
  %div = fdiv float %mul, %conv72, !dbg !2101
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !364), !dbg !2101
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 14, !dbg !2102
  %20 = load i32* %bit_ctr_I, align 4, !dbg !2102, !tbaa !1424
  %conv73 = sitofp i32 %20 to float, !dbg !2102
  %mul74 = fmul float %div, %conv73, !dbg !2102
  %no_frames = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 2, !dbg !2102
  %21 = load i32* %no_frames, align 4, !dbg !2102, !tbaa !1424
  %add75 = add nsw i32 %4, %21, !dbg !2102
  %conv76 = sitofp i32 %add75 to float, !dbg !2102
  %div77 = fdiv float %mul74, %conv76, !dbg !2102
  %bitrate_I = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 17, !dbg !2102
  store float %div77, float* %bitrate_I, align 4, !dbg !2102, !tbaa !1688
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 15, !dbg !2103
  %22 = load i32* %bit_ctr_P, align 4, !dbg !2103, !tbaa !1424
  %conv78 = sitofp i32 %22 to float, !dbg !2103
  %mul79 = fmul float %div, %conv78, !dbg !2103
  %div83 = fdiv float %mul79, %conv76, !dbg !2103
  %bitrate_P = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 18, !dbg !2103
  store float %div83, float* %bitrate_P, align 4, !dbg !2103, !tbaa !1688
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 16, !dbg !2104
  %23 = load i32* %bit_ctr_B, align 4, !dbg !2104, !tbaa !1424
  %conv84 = sitofp i32 %23 to float, !dbg !2104
  %mul85 = fmul float %div, %conv84, !dbg !2104
  %div89 = fdiv float %mul85, %conv76, !dbg !2104
  %bitrate_B = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 19, !dbg !2104
  store float %div89, float* %bitrate_B, align 4, !dbg !2104, !tbaa !1688
  %24 = load %struct._IO_FILE** @stdout, align 8, !dbg !2105, !tbaa !1428
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str26, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %24), !dbg !2105
  %26 = load %struct._IO_FILE** @stdout, align 8, !dbg !2106, !tbaa !1428
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !2106, !tbaa !1428
  %framerate90 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 12, !dbg !2106
  %28 = load float* %framerate90, align 4, !dbg !2106, !tbaa !1688
  %29 = load %struct.InputParameters** @input, align 8, !dbg !2106, !tbaa !1428
  %jumpd91 = getelementptr inbounds %struct.InputParameters* %29, i64 0, i32 5, !dbg !2106
  %30 = load i32* %jumpd91, align 4, !dbg !2106, !tbaa !1424
  %add92 = add nsw i32 %30, 1, !dbg !2106
  %conv93 = sitofp i32 %add92 to float, !dbg !2106
  %div94 = fdiv float %28, %conv93, !dbg !2106
  %conv95 = fpext float %div94 to double, !dbg !2106
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([44 x i8]* @.str27, i64 0, i64 0), double %conv95) #7, !dbg !2106
  %31 = load %struct.InputParameters** @input, align 8, !dbg !2107, !tbaa !1428
  %hadamard = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 6, !dbg !2107
  %32 = load i32* %hadamard, align 4, !dbg !2107, !tbaa !1424
  %tobool = icmp eq i32 %32, 0, !dbg !2107
  br i1 %tobool, label %if.else101, label %if.then, !dbg !2107

if.then:                                          ; preds = %for.end69
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 7, !dbg !2108
  %33 = load i32* %hadamardqpel, align 4, !dbg !2108, !tbaa !1424
  %tobool97 = icmp eq i32 %33, 0, !dbg !2108
  %34 = load %struct._IO_FILE** @stdout, align 8, !dbg !2110, !tbaa !1428
  br i1 %tobool97, label %if.else, label %if.then98, !dbg !2108

if.then98:                                        ; preds = %if.then
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str28, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %34), !dbg !2110
  br label %if.end103, !dbg !2110

if.else:                                          ; preds = %if.then
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %34), !dbg !2111
  br label %if.end103

if.else101:                                       ; preds = %for.end69
  %37 = load %struct._IO_FILE** @stdout, align 8, !dbg !2112, !tbaa !1428
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str30, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %37), !dbg !2112
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.else, %if.else101
  %39 = load %struct._IO_FILE** @stdout, align 8, !dbg !2113, !tbaa !1428
  %40 = load %struct.InputParameters** @input, align 8, !dbg !2113, !tbaa !1428
  %img_width = getelementptr inbounds %struct.InputParameters* %40, i64 0, i32 16, !dbg !2113
  %41 = load i32* %img_width, align 4, !dbg !2113, !tbaa !1424
  %img_height = getelementptr inbounds %struct.InputParameters* %40, i64 0, i32 17, !dbg !2113
  %42 = load i32* %img_height, align 4, !dbg !2113, !tbaa !1424
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([44 x i8]* @.str31, i64 0, i64 0), i32 %41, i32 %42) #7, !dbg !2113
  %43 = load %struct.InputParameters** @input, align 8, !dbg !2114, !tbaa !1428
  %intra_upd = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 19, !dbg !2114
  %44 = load i32* %intra_upd, align 4, !dbg !2114, !tbaa !1424
  %tobool105 = icmp eq i32 %44, 0, !dbg !2114
  %45 = load %struct._IO_FILE** @stdout, align 8, !dbg !2115, !tbaa !1428
  br i1 %tobool105, label %if.else108, label %if.then106, !dbg !2114

if.then106:                                       ; preds = %if.end103
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str32, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %45), !dbg !2115
  br label %if.end110, !dbg !2115

if.else108:                                       ; preds = %if.end103
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str33, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %45), !dbg !2116
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then106
  %48 = load %struct._IO_FILE** @stdout, align 8, !dbg !2117, !tbaa !1428
  %49 = load %struct.InputParameters** @input, align 8, !dbg !2117, !tbaa !1428
  %search_range = getelementptr inbounds %struct.InputParameters* %49, i64 0, i32 8, !dbg !2117
  %50 = load i32* %search_range, align 4, !dbg !2117, !tbaa !1424
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([41 x i8]* @.str34, i64 0, i64 0), i32 %50) #7, !dbg !2117
  %51 = load %struct._IO_FILE** @stdout, align 8, !dbg !2118, !tbaa !1428
  %52 = load %struct.InputParameters** @input, align 8, !dbg !2118, !tbaa !1428
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 9, !dbg !2118
  %53 = load i32* %num_ref_frames, align 4, !dbg !2118, !tbaa !1424
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([41 x i8]* @.str35, i64 0, i64 0), i32 %53) #7, !dbg !2118
  %54 = load %struct._IO_FILE** @stdout, align 8, !dbg !2119, !tbaa !1428
  %55 = load %struct.InputParameters** @input, align 8, !dbg !2119, !tbaa !1428
  %P_List0_refs = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 10, !dbg !2119
  %56 = load i32* %P_List0_refs, align 4, !dbg !2119, !tbaa !1424
  %tobool113 = icmp eq i32 %56, 0, !dbg !2119
  br i1 %tobool113, label %cond.false116, label %cond.end118, !dbg !2119

cond.false116:                                    ; preds = %if.end110
  %num_ref_frames117 = getelementptr inbounds %struct.InputParameters* %55, i64 0, i32 9, !dbg !2119
  %57 = load i32* %num_ref_frames117, align 4, !dbg !2119, !tbaa !1424
  br label %cond.end118, !dbg !2119

cond.end118:                                      ; preds = %if.end110, %cond.false116
  %cond119 = phi i32 [ %57, %cond.false116 ], [ %56, %if.end110 ], !dbg !2119
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([41 x i8]* @.str36, i64 0, i64 0), i32 %cond119) #7, !dbg !2119
  %58 = load %struct.InputParameters** @input, align 8, !dbg !2120, !tbaa !1428
  %successive_Bframe121 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 34, !dbg !2120
  %59 = load i32* %successive_Bframe121, align 4, !dbg !2120, !tbaa !1424
  %cmp122 = icmp eq i32 %59, 0, !dbg !2120
  br i1 %cmp122, label %if.end141, label %if.then124, !dbg !2120

if.then124:                                       ; preds = %cond.end118
  %60 = load %struct._IO_FILE** @stdout, align 8, !dbg !2121, !tbaa !1428
  %B_List0_refs = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 11, !dbg !2121
  %61 = load i32* %B_List0_refs, align 4, !dbg !2121, !tbaa !1424
  %tobool125 = icmp eq i32 %61, 0, !dbg !2121
  br i1 %tobool125, label %cond.false128, label %cond.end130, !dbg !2121

cond.false128:                                    ; preds = %if.then124
  %num_ref_frames129 = getelementptr inbounds %struct.InputParameters* %58, i64 0, i32 9, !dbg !2121
  %62 = load i32* %num_ref_frames129, align 4, !dbg !2121, !tbaa !1424
  br label %cond.end130, !dbg !2121

cond.end130:                                      ; preds = %if.then124, %cond.false128
  %cond131 = phi i32 [ %62, %cond.false128 ], [ %61, %if.then124 ], !dbg !2121
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([41 x i8]* @.str37, i64 0, i64 0), i32 %cond131) #7, !dbg !2121
  %63 = load %struct._IO_FILE** @stdout, align 8, !dbg !2123, !tbaa !1428
  %64 = load %struct.InputParameters** @input, align 8, !dbg !2123, !tbaa !1428
  %B_List1_refs = getelementptr inbounds %struct.InputParameters* %64, i64 0, i32 12, !dbg !2123
  %65 = load i32* %B_List1_refs, align 4, !dbg !2123, !tbaa !1424
  %tobool133 = icmp eq i32 %65, 0, !dbg !2123
  br i1 %tobool133, label %cond.false136, label %cond.end138, !dbg !2123

cond.false136:                                    ; preds = %cond.end130
  %num_ref_frames137 = getelementptr inbounds %struct.InputParameters* %64, i64 0, i32 9, !dbg !2123
  %66 = load i32* %num_ref_frames137, align 4, !dbg !2123, !tbaa !1424
  br label %cond.end138, !dbg !2123

cond.end138:                                      ; preds = %cond.end130, %cond.false136
  %cond139 = phi i32 [ %66, %cond.false136 ], [ %65, %cond.end130 ], !dbg !2123
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([41 x i8]* @.str38, i64 0, i64 0), i32 %cond139) #7, !dbg !2123
  br label %if.end141, !dbg !2124

if.end141:                                        ; preds = %cond.end118, %cond.end138
  %67 = load %struct._IO_FILE** @stdout, align 8, !dbg !2125, !tbaa !1428
  %68 = load i32* @tot_time, align 4, !dbg !2125, !tbaa !1424
  %conv142 = sitofp i32 %68 to double, !dbg !2125
  %mul143 = fmul double %conv142, 1.000000e-03, !dbg !2125
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([48 x i8]* @.str39, i64 0, i64 0), double %mul143) #7, !dbg !2125
  %69 = load %struct._IO_FILE** @stdout, align 8, !dbg !2126, !tbaa !1428
  %70 = load i32* @me_tot_time, align 4, !dbg !2126, !tbaa !1424
  %conv145 = sitofp i32 %70 to double, !dbg !2126
  %mul146 = fmul double %conv145, 1.000000e-03, !dbg !2126
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([48 x i8]* @.str40, i64 0, i64 0), double %mul146) #7, !dbg !2126
  %71 = load %struct._IO_FILE** @stdout, align 8, !dbg !2127, !tbaa !1428
  %72 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str41, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %71), !dbg !2127
  %73 = load %struct.InputParameters** @input, align 8, !dbg !2128, !tbaa !1428
  %successive_Bframe149 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 34, !dbg !2128
  %74 = load i32* %successive_Bframe149, align 4, !dbg !2128, !tbaa !1424
  %cmp150 = icmp sgt i32 %74, 0, !dbg !2128
  br i1 %cmp150, label %land.lhs.true, label %if.else266, !dbg !2128

land.lhs.true:                                    ; preds = %if.end141
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 55, !dbg !2128
  %75 = load i32* %PyramidCoding, align 4, !dbg !2128, !tbaa !1424
  %tobool152 = icmp eq i32 %75, 0, !dbg !2128
  br i1 %tobool152, label %if.then159, label %if.then153, !dbg !2128

if.then153:                                       ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE** @stdout, align 8, !dbg !2129, !tbaa !1428
  %qp0 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 3, !dbg !2129
  %77 = load i32* %qp0, align 4, !dbg !2129, !tbaa !1424
  %qpN = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 4, !dbg !2129
  %78 = load i32* %qpN, align 4, !dbg !2129, !tbaa !1424
  %qpB = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 35, !dbg !2129
  %79 = load i32* %qpB, align 4, !dbg !2129, !tbaa !1424
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i32 %77, i32 %78, i32 %79) #7, !dbg !2129
  br label %if.end283, !dbg !2131

if.then159:                                       ; preds = %land.lhs.true
  %80 = getelementptr inbounds [80 x i8]* %seqtype, i64 0, i64 0, !dbg !2132
  call void @llvm.lifetime.start(i64 80, i8* %80) #4, !dbg !2132
  call void @llvm.dbg.declare(metadata !{[80 x i8]* %seqtype}, metadata !370), !dbg !2132
  %81 = bitcast [80 x i8]* %seqtype to i16*, !dbg !2133
  store i16 73, i16* %81, align 16, !dbg !2133
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !376), !dbg !2134
  br label %for.cond167.preheader, !dbg !2134

for.cond167.preheader:                            ; preds = %cond.end225.for.cond167.preheader_crit_edge, %if.then159
  %82 = phi %struct.InputParameters* [ %73, %if.then159 ], [ %88, %cond.end225.for.cond167.preheader_crit_edge ]
  %j161.01549 = phi i32 [ 1, %if.then159 ], [ %phitmp1571, %cond.end225.for.cond167.preheader_crit_edge ]
  %successive_Bframe1681546 = getelementptr inbounds %struct.InputParameters* %82, i64 0, i32 34, !dbg !2136
  %83 = load i32* %successive_Bframe1681546, align 4, !dbg !2136, !tbaa !1424
  %cmp1691547 = icmp sgt i32 %83, 0, !dbg !2136
  br i1 %cmp1691547, label %for.body171, label %for.end211, !dbg !2136

for.body171:                                      ; preds = %for.cond167.preheader, %for.inc209
  %84 = phi %struct.InputParameters* [ %86, %for.inc209 ], [ %82, %for.cond167.preheader ]
  %i160.01548 = phi i32 [ %inc210, %for.inc209 ], [ 0, %for.cond167.preheader ]
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %84, i64 0, i32 54, !dbg !2139
  %85 = load i32* %BRefPictures, align 4, !dbg !2139, !tbaa !1424
  %tobool172 = icmp eq i32 %85, 0, !dbg !2139
  %call176 = call i64 @strlen(i8* %80) #9, !dbg !2141
  %sub = sub i64 79, %call176, !dbg !2141
  %conv177 = trunc i64 %sub to i32, !dbg !2141
  %cmp178 = icmp slt i32 %conv177, 0, !dbg !2141
  br i1 %tobool172, label %if.else190, label %if.then173, !dbg !2139

if.then173:                                       ; preds = %for.body171
  br i1 %cmp178, label %cond.end186, label %cond.false181, !dbg !2141

cond.false181:                                    ; preds = %if.then173
  %sext1529 = shl i64 %sub, 32, !dbg !2141
  %phitmp1528 = ashr exact i64 %sext1529, 32, !dbg !2141
  br label %cond.end186, !dbg !2141

cond.end186:                                      ; preds = %if.then173, %cond.false181
  %cond187 = phi i64 [ %phitmp1528, %cond.false181 ], [ 0, %if.then173 ]
  %call189 = call i8* @strncat(i8* %80, i8* getelementptr inbounds ([4 x i8]* @.str44, i64 0, i64 0), i64 %cond187) #7, !dbg !2141
  br label %for.inc209, !dbg !2141

if.else190:                                       ; preds = %for.body171
  br i1 %cmp178, label %cond.end204, label %cond.false199, !dbg !2142

cond.false199:                                    ; preds = %if.else190
  %sext1527 = shl i64 %sub, 32, !dbg !2142
  %phitmp1526 = ashr exact i64 %sext1527, 32, !dbg !2142
  br label %cond.end204, !dbg !2142

cond.end204:                                      ; preds = %if.else190, %cond.false199
  %cond205 = phi i64 [ %phitmp1526, %cond.false199 ], [ 0, %if.else190 ]
  %call207 = call i8* @strncat(i8* %80, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i64 %cond205) #7, !dbg !2142
  br label %for.inc209

for.inc209:                                       ; preds = %cond.end186, %cond.end204
  %inc210 = add nsw i32 %i160.01548, 1, !dbg !2136
  call void @llvm.dbg.value(metadata !{i32 %inc210}, i64 0, metadata !375), !dbg !2136
  %86 = load %struct.InputParameters** @input, align 8, !dbg !2136, !tbaa !1428
  %successive_Bframe168 = getelementptr inbounds %struct.InputParameters* %86, i64 0, i32 34, !dbg !2136
  %87 = load i32* %successive_Bframe168, align 4, !dbg !2136, !tbaa !1424
  %cmp169 = icmp slt i32 %inc210, %87, !dbg !2136
  br i1 %cmp169, label %for.body171, label %for.end211, !dbg !2136

for.end211:                                       ; preds = %for.inc209, %for.cond167.preheader
  %call214 = call i64 @strlen(i8* %80) #9, !dbg !2143
  %sub215 = sub i64 79, %call214, !dbg !2143
  %conv216 = trunc i64 %sub215 to i32, !dbg !2143
  %cmp217 = icmp slt i32 %conv216, 0, !dbg !2143
  br i1 %cmp217, label %cond.end225, label %cond.false220, !dbg !2143

cond.false220:                                    ; preds = %for.end211
  %sext = shl i64 %sub215, 32, !dbg !2143
  %phitmp1525 = ashr exact i64 %sext, 32, !dbg !2143
  br label %cond.end225, !dbg !2143

cond.end225:                                      ; preds = %for.end211, %cond.false220
  %cond226 = phi i64 [ %phitmp1525, %cond.false220 ], [ 0, %for.end211 ]
  %call228 = call i8* @strncat(i8* %80, i8* getelementptr inbounds ([3 x i8]* @.str46, i64 0, i64 0), i64 %cond226) #7, !dbg !2143
  call void @llvm.dbg.value(metadata !{i32 %j161.01549}, i64 0, metadata !376), !dbg !2134
  %exitcond1553 = icmp eq i32 %j161.01549, 2, !dbg !2134
  %88 = load %struct.InputParameters** @input, align 8, !dbg !2144, !tbaa !1428
  br i1 %exitcond1553, label %for.end231, label %cond.end225.for.cond167.preheader_crit_edge, !dbg !2134

cond.end225.for.cond167.preheader_crit_edge:      ; preds = %cond.end225
  %phitmp1571 = add i32 %j161.01549, 1, !dbg !2134
  br label %for.cond167.preheader, !dbg !2134

for.end231:                                       ; preds = %cond.end225
  %BRefPictures232 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 54, !dbg !2144
  %89 = load i32* %BRefPictures232, align 4, !dbg !2144, !tbaa !1424
  %tobool233 = icmp eq i32 %89, 0, !dbg !2144
  %90 = load %struct._IO_FILE** @stdout, align 8, !dbg !2145, !tbaa !1428
  %qp0236 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 3, !dbg !2145
  %91 = load i32* %qp0236, align 4, !dbg !2145, !tbaa !1424
  %qpN237 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 4, !dbg !2145
  %92 = load i32* %qpN237, align 4, !dbg !2145, !tbaa !1424
  %qpB238 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 35, !dbg !2145
  %93 = load i32* %qpB238, align 4, !dbg !2145, !tbaa !1424
  br i1 %tobool233, label %if.else259, label %if.then234, !dbg !2144

if.then234:                                       ; preds = %for.end231
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 36, !dbg !2145
  %94 = load i32* %qpBRSOffset, align 4, !dbg !2145, !tbaa !1424
  %add239 = add nsw i32 %94, %93, !dbg !2145
  %cmp240 = icmp slt i32 %add239, 0, !dbg !2145
  br i1 %cmp240, label %cond.end256, label %cond.false243, !dbg !2145

cond.false243:                                    ; preds = %if.then234
  %cmp247 = icmp sgt i32 %add239, 51, !dbg !2145
  %.add239 = select i1 %cmp247, i32 51, i32 %add239, !dbg !2145
  br label %cond.end256, !dbg !2145

cond.end256:                                      ; preds = %cond.false243, %if.then234
  %cond257 = phi i32 [ 0, %if.then234 ], [ %.add239, %cond.false243 ], !dbg !2145
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0), i8* %80, i32 %91, i32 %92, i32 %cond257) #7, !dbg !2145
  br label %if.end283, !dbg !2145

if.else259:                                       ; preds = %for.end231
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([29 x i8]* @.str48, i64 0, i64 0), i8* %80, i32 %91, i32 %92, i32 %93) #7, !dbg !2146
  br label %if.end283

if.else266:                                       ; preds = %if.end141
  %cmp268 = icmp eq i32 %74, 0, !dbg !2147
  br i1 %cmp268, label %land.lhs.true270, label %if.else277, !dbg !2147

land.lhs.true270:                                 ; preds = %if.else266
  %sp_periodicity = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 43, !dbg !2147
  %95 = load i32* %sp_periodicity, align 4, !dbg !2147, !tbaa !1424
  %cmp271 = icmp eq i32 %95, 0, !dbg !2147
  br i1 %cmp271, label %if.then273, label %if.else277, !dbg !2147

if.then273:                                       ; preds = %land.lhs.true270
  %96 = load %struct._IO_FILE** @stdout, align 8, !dbg !2147, !tbaa !1428
  %qp0274 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 3, !dbg !2147
  %97 = load i32* %qp0274, align 4, !dbg !2147, !tbaa !1424
  %qpN275 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 4, !dbg !2147
  %98 = load i32* %qpN275, align 4, !dbg !2147, !tbaa !1424
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([25 x i8]* @.str49, i64 0, i64 0), i32 %97, i32 %98) #7, !dbg !2147
  br label %if.end283, !dbg !2147

if.else277:                                       ; preds = %land.lhs.true270, %if.else266
  %99 = load %struct._IO_FILE** @stdout, align 8, !dbg !2148, !tbaa !1428
  %qp0278 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 3, !dbg !2148
  %100 = load i32* %qp0278, align 4, !dbg !2148, !tbaa !1424
  %qpN279 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 4, !dbg !2148
  %101 = load i32* %qpN279, align 4, !dbg !2148, !tbaa !1424
  %qpsp = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 44, !dbg !2148
  %102 = load i32* %qpsp, align 4, !dbg !2148, !tbaa !1424
  %qpsp_pred = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 45, !dbg !2148
  %103 = load i32* %qpsp_pred, align 4, !dbg !2148, !tbaa !1424
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([44 x i8]* @.str50, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103) #7, !dbg !2148
  br label %if.end283

if.end283:                                        ; preds = %cond.end256, %if.else259, %if.else277, %if.then273, %if.then153
  %104 = load %struct.InputParameters** @input, align 8, !dbg !2149, !tbaa !1428
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %104, i64 0, i32 59, !dbg !2149
  %105 = load i32* %symbol_mode, align 4, !dbg !2149, !tbaa !1424
  %cmp284 = icmp eq i32 %105, 0, !dbg !2149
  %106 = load %struct._IO_FILE** @stdout, align 8, !dbg !2150, !tbaa !1428
  br i1 %cmp284, label %if.then286, label %if.else288, !dbg !2149

if.then286:                                       ; preds = %if.end283
  %107 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str51, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %106), !dbg !2150
  br label %if.end290, !dbg !2150

if.else288:                                       ; preds = %if.end283
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str52, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %106), !dbg !2151
  br label %if.end290

if.end290:                                        ; preds = %if.else288, %if.then286
  %109 = load %struct._IO_FILE** @stdout, align 8, !dbg !2152, !tbaa !1428
  %110 = load %struct.InputParameters** @input, align 8, !dbg !2152, !tbaa !1428
  %ProfileIDC = getelementptr inbounds %struct.InputParameters* %110, i64 0, i32 0, !dbg !2152
  %111 = load i32* %ProfileIDC, align 4, !dbg !2152, !tbaa !1424
  %LevelIDC = getelementptr inbounds %struct.InputParameters* %110, i64 0, i32 1, !dbg !2152
  %112 = load i32* %LevelIDC, align 4, !dbg !2152, !tbaa !1424
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([46 x i8]* @.str53, i64 0, i64 0), i32 %111, i32 %112) #7, !dbg !2152
  %113 = load %struct.InputParameters** @input, align 8, !dbg !2153, !tbaa !1428
  %full_search = getelementptr inbounds %struct.InputParameters* %113, i64 0, i32 78, !dbg !2153
  %114 = load i32* %full_search, align 4, !dbg !2153, !tbaa !1424
  %cmp292 = icmp eq i32 %114, 2, !dbg !2153
  br i1 %cmp292, label %if.then294, label %if.else296, !dbg !2153

if.then294:                                       ; preds = %if.end290
  %115 = load %struct._IO_FILE** @stdout, align 8, !dbg !2154, !tbaa !1428
  %116 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str54, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %115), !dbg !2154
  br label %if.end305, !dbg !2154

if.else296:                                       ; preds = %if.end290
  %cmp298 = icmp eq i32 %114, 1, !dbg !2155
  %117 = load %struct._IO_FILE** @stdout, align 8, !dbg !2156, !tbaa !1428
  br i1 %cmp298, label %if.then300, label %if.else302, !dbg !2155

if.then300:                                       ; preds = %if.else296
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str55, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %117), !dbg !2156
  br label %if.end305, !dbg !2156

if.else302:                                       ; preds = %if.else296
  %119 = call i64 @fwrite(i8* getelementptr inbounds ([80 x i8]* @.str56, i64 0, i64 0), i64 79, i64 1, %struct._IO_FILE* %117), !dbg !2157
  br label %if.end305

if.end305:                                        ; preds = %if.then300, %if.else302, %if.then294
  %120 = load %struct.InputParameters** @input, align 8, !dbg !2158, !tbaa !1428
  %rdopt = getelementptr inbounds %struct.InputParameters* %120, i64 0, i32 85, !dbg !2158
  %121 = load i32* %rdopt, align 4, !dbg !2158, !tbaa !1424
  %tobool306 = icmp eq i32 %121, 0, !dbg !2158
  %122 = load %struct._IO_FILE** @stdout, align 8, !dbg !2159, !tbaa !1428
  br i1 %tobool306, label %if.else309, label %if.then307, !dbg !2158

if.then307:                                       ; preds = %if.end305
  %123 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str57, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %122), !dbg !2159
  br label %if.end311, !dbg !2159

if.else309:                                       ; preds = %if.end305
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str58, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %122), !dbg !2160
  br label %if.end311

if.end311:                                        ; preds = %if.else309, %if.then307
  %125 = load %struct.InputParameters** @input, align 8, !dbg !2161, !tbaa !1428
  %partition_mode = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 61, !dbg !2161
  %126 = load i32* %partition_mode, align 4, !dbg !2161, !tbaa !1424
  switch i32 %126, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb313
  ], !dbg !2161

sw.bb:                                            ; preds = %if.end311
  %127 = load %struct._IO_FILE** @stdout, align 8, !dbg !2162, !tbaa !1428
  %128 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str59, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %127), !dbg !2162
  br label %sw.epilog, !dbg !2164

sw.bb313:                                         ; preds = %if.end311
  %129 = load %struct._IO_FILE** @stdout, align 8, !dbg !2165, !tbaa !1428
  %130 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str60, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %129), !dbg !2165
  br label %sw.epilog, !dbg !2166

sw.default:                                       ; preds = %if.end311
  %131 = load %struct._IO_FILE** @stdout, align 8, !dbg !2167, !tbaa !1428
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str61, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %131), !dbg !2167
  br label %sw.epilog, !dbg !2168

sw.epilog:                                        ; preds = %sw.default, %sw.bb313, %sw.bb
  %133 = load %struct.InputParameters** @input, align 8, !dbg !2169, !tbaa !1428
  %of_mode = getelementptr inbounds %struct.InputParameters* %133, i64 0, i32 60, !dbg !2169
  %134 = load i32* %of_mode, align 4, !dbg !2169, !tbaa !1424
  switch i32 %134, label %sw.default320 [
    i32 0, label %sw.bb316
    i32 1, label %sw.bb318
  ], !dbg !2169

sw.bb316:                                         ; preds = %sw.epilog
  %135 = load %struct._IO_FILE** @stdout, align 8, !dbg !2170, !tbaa !1428
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str62, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %135), !dbg !2170
  br label %sw.epilog322, !dbg !2172

sw.bb318:                                         ; preds = %sw.epilog
  %137 = load %struct._IO_FILE** @stdout, align 8, !dbg !2173, !tbaa !1428
  %138 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str63, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %137), !dbg !2173
  br label %sw.epilog322, !dbg !2174

sw.default320:                                    ; preds = %sw.epilog
  %139 = load %struct._IO_FILE** @stdout, align 8, !dbg !2175, !tbaa !1428
  %140 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str64, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %139), !dbg !2175
  br label %sw.epilog322, !dbg !2176

sw.epilog322:                                     ; preds = %sw.default320, %sw.bb318, %sw.bb316
  %141 = load %struct.InputParameters** @input, align 8, !dbg !2177, !tbaa !1428
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters* %141, i64 0, i32 143, !dbg !2177
  %142 = load i32* %residue_transform_flag, align 4, !dbg !2177, !tbaa !1424
  %tobool323 = icmp eq i32 %142, 0, !dbg !2177
  %143 = load %struct._IO_FILE** @stdout, align 8, !dbg !2178, !tbaa !1428
  br i1 %tobool323, label %if.else326, label %if.then324, !dbg !2177

if.then324:                                       ; preds = %sw.epilog322
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str65, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %143), !dbg !2178
  br label %if.end328, !dbg !2178

if.else326:                                       ; preds = %sw.epilog322
  %145 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str66, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %143), !dbg !2179
  br label %if.end328

if.end328:                                        ; preds = %if.else326, %if.then324
  %146 = load %struct._IO_FILE** @stdout, align 8, !dbg !2180, !tbaa !1428
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str67, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %146), !dbg !2180
  %148 = load %struct._IO_FILE** @stdout, align 8, !dbg !2181, !tbaa !1428
  %149 = load %struct.SNRParameters** @snr, align 8, !dbg !2181, !tbaa !1428
  %snr_ya = getelementptr inbounds %struct.SNRParameters* %149, i64 0, i32 9, !dbg !2181
  %150 = load float* %snr_ya, align 4, !dbg !2181, !tbaa !1688
  %conv330 = fpext float %150 to double, !dbg !2181
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([44 x i8]* @.str68, i64 0, i64 0), double %conv330) #7, !dbg !2181
  %151 = load %struct._IO_FILE** @stdout, align 8, !dbg !2182, !tbaa !1428
  %152 = load %struct.SNRParameters** @snr, align 8, !dbg !2182, !tbaa !1428
  %snr_ua = getelementptr inbounds %struct.SNRParameters* %152, i64 0, i32 10, !dbg !2182
  %153 = load float* %snr_ua, align 4, !dbg !2182, !tbaa !1688
  %conv332 = fpext float %153 to double, !dbg !2182
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([44 x i8]* @.str69, i64 0, i64 0), double %conv332) #7, !dbg !2182
  %154 = load %struct._IO_FILE** @stdout, align 8, !dbg !2183, !tbaa !1428
  %155 = load %struct.SNRParameters** @snr, align 8, !dbg !2183, !tbaa !1428
  %snr_va = getelementptr inbounds %struct.SNRParameters* %155, i64 0, i32 11, !dbg !2183
  %156 = load float* %snr_va, align 4, !dbg !2183, !tbaa !1688
  %conv334 = fpext float %156 to double, !dbg !2183
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([44 x i8]* @.str70, i64 0, i64 0), double %conv334) #7, !dbg !2183
  %157 = load i32* @Bframe_ctr, align 4, !dbg !2184, !tbaa !1424
  %cmp336 = icmp eq i32 %157, 0, !dbg !2184
  %158 = load %struct._IO_FILE** @stdout, align 8, !dbg !2185, !tbaa !1428
  %159 = load %struct.StatParameters** @stats, align 8, !dbg !2185, !tbaa !1428
  %bit_ctr_P339 = getelementptr inbounds %struct.StatParameters* %159, i64 0, i32 15, !dbg !2185
  %160 = load i32* %bit_ctr_P339, align 4, !dbg !2185, !tbaa !1424
  %bit_ctr_I340 = getelementptr inbounds %struct.StatParameters* %159, i64 0, i32 14, !dbg !2185
  %161 = load i32* %bit_ctr_I340, align 4, !dbg !2185, !tbaa !1424
  %add341 = add nsw i32 %161, %160, !dbg !2185
  br i1 %cmp336, label %if.else370, label %if.then338, !dbg !2184

if.then338:                                       ; preds = %if.end328
  %bit_ctr_B342 = getelementptr inbounds %struct.StatParameters* %159, i64 0, i32 16, !dbg !2185
  %162 = load i32* %bit_ctr_B342, align 4, !dbg !2185, !tbaa !1424
  %add343 = add nsw i32 %162, %add341, !dbg !2185
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %159, i64 0, i32 32, !dbg !2185
  %163 = load i32* %bit_ctr_parametersets, align 4, !dbg !2185, !tbaa !1424
  %add344 = add nsw i32 %add343, %163, !dbg !2185
  call void @llvm.dbg.value(metadata !{i32 %add344}, i64 0, metadata !363), !dbg !2185
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([70 x i8]* @.str71, i64 0, i64 0), i32 %add344, i32 %161, i32 %160, i32 %162, i32 %163) #7, !dbg !2185
  %164 = load %struct.ImageParameters** @img, align 8, !dbg !2187, !tbaa !1428
  %framerate350 = getelementptr inbounds %struct.ImageParameters* %164, i64 0, i32 12, !dbg !2187
  %165 = load float* %framerate350, align 4, !dbg !2187, !tbaa !1688
  %166 = load %struct.InputParameters** @input, align 8, !dbg !2187, !tbaa !1428
  %successive_Bframe351 = getelementptr inbounds %struct.InputParameters* %166, i64 0, i32 34, !dbg !2187
  %167 = load i32* %successive_Bframe351, align 4, !dbg !2187, !tbaa !1424
  %add352 = add nsw i32 %167, 1, !dbg !2187
  %conv353 = sitofp i32 %add352 to float, !dbg !2187
  %mul354 = fmul float %165, %conv353, !dbg !2187
  %jumpd355 = getelementptr inbounds %struct.InputParameters* %166, i64 0, i32 5, !dbg !2187
  %168 = load i32* %jumpd355, align 4, !dbg !2187, !tbaa !1424
  %add356 = add nsw i32 %168, 1, !dbg !2187
  %conv357 = sitofp i32 %add356 to float, !dbg !2187
  %div358 = fdiv float %mul354, %conv357, !dbg !2187
  call void @llvm.dbg.value(metadata !{float %div358}, i64 0, metadata !364), !dbg !2187
  %conv359 = sitofp i32 %add344 to float, !dbg !2188
  %mul360 = fmul float %conv359, %div358, !dbg !2188
  %no_frames361 = getelementptr inbounds %struct.InputParameters* %166, i64 0, i32 2, !dbg !2188
  %169 = load i32* %no_frames361, align 4, !dbg !2188, !tbaa !1424
  %170 = load i32* @Bframe_ctr, align 4, !dbg !2188, !tbaa !1424
  %add362 = add nsw i32 %170, %169, !dbg !2188
  %conv363 = sitofp i32 %add362 to float, !dbg !2188
  %div364 = fdiv float %mul360, %conv363, !dbg !2188
  %171 = load %struct.StatParameters** @stats, align 8, !dbg !2188, !tbaa !1428
  %bitrate = getelementptr inbounds %struct.StatParameters* %171, i64 0, i32 3, !dbg !2188
  store float %div364, float* %bitrate, align 4, !dbg !2188, !tbaa !1688
  %172 = load %struct._IO_FILE** @stdout, align 8, !dbg !2189, !tbaa !1428
  %conv365 = fpext float %div358 to double, !dbg !2189
  %div367 = fdiv float %div364, 1.000000e+03, !dbg !2189
  %conv368 = fpext float %div367 to double, !dbg !2189
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), double %conv365, double %conv368) #7, !dbg !2189
  br label %if.end427, !dbg !2190

if.else370:                                       ; preds = %if.end328
  %bit_ctr_parametersets378 = getelementptr inbounds %struct.StatParameters* %159, i64 0, i32 32, !dbg !2191
  %173 = load i32* %bit_ctr_parametersets378, align 4, !dbg !2191, !tbaa !1424
  %add379 = add nsw i32 %173, %add341, !dbg !2191
  call void @llvm.dbg.value(metadata !{i32 %add379}, i64 0, metadata !363), !dbg !2191
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([65 x i8]* @.str73, i64 0, i64 0), i32 %add379, i32 %161, i32 %160, i32 %173) #7, !dbg !2191
  %174 = load %struct.ImageParameters** @img, align 8, !dbg !2193, !tbaa !1428
  %framerate384 = getelementptr inbounds %struct.ImageParameters* %174, i64 0, i32 12, !dbg !2193
  %175 = load float* %framerate384, align 4, !dbg !2193, !tbaa !1688
  %176 = load %struct.InputParameters** @input, align 8, !dbg !2193, !tbaa !1428
  %jumpd385 = getelementptr inbounds %struct.InputParameters* %176, i64 0, i32 5, !dbg !2193
  %177 = load i32* %jumpd385, align 4, !dbg !2193, !tbaa !1424
  %add386 = add nsw i32 %177, 1, !dbg !2193
  %conv387 = sitofp i32 %add386 to float, !dbg !2193
  %div388 = fdiv float %175, %conv387, !dbg !2193
  call void @llvm.dbg.value(metadata !{float %div388}, i64 0, metadata !364), !dbg !2193
  %conv389 = sitofp i32 %add379 to float, !dbg !2194
  %mul390 = fmul float %conv389, %div388, !dbg !2194
  %no_frames391 = getelementptr inbounds %struct.InputParameters* %176, i64 0, i32 2, !dbg !2194
  %178 = load i32* %no_frames391, align 4, !dbg !2194, !tbaa !1424
  %conv392 = sitofp i32 %178 to float, !dbg !2194
  %div393 = fdiv float %mul390, %conv392, !dbg !2194
  %179 = load %struct.StatParameters** @stats, align 8, !dbg !2194, !tbaa !1428
  %bitrate394 = getelementptr inbounds %struct.StatParameters* %179, i64 0, i32 3, !dbg !2194
  store float %div393, float* %bitrate394, align 4, !dbg !2194, !tbaa !1688
  %180 = load %struct._IO_FILE** @stdout, align 8, !dbg !2195, !tbaa !1428
  %conv395 = fpext float %div388 to double, !dbg !2195
  %div397 = fdiv float %div393, 1.000000e+03, !dbg !2195
  %conv398 = fpext float %div397 to double, !dbg !2195
  %call399 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), double %conv395, double %conv398) #7, !dbg !2195
  br label %if.end427

if.end427:                                        ; preds = %if.else370, %if.then338
  %frame_rate.0 = phi float [ %div358, %if.then338 ], [ %div388, %if.else370 ]
  %181 = load %struct._IO_FILE** @stdout, align 8, !dbg !2196, !tbaa !1428
  %182 = load %struct.StatParameters** @stats, align 8, !dbg !2196, !tbaa !1428
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters* %182, i64 0, i32 7, !dbg !2196
  %183 = load i32* %bit_ctr_emulationprevention, align 4, !dbg !2196, !tbaa !1424
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([42 x i8]* @.str74, i64 0, i64 0), i32 %183) #7, !dbg !2196
  %184 = load %struct._IO_FILE** @stdout, align 8, !dbg !2197, !tbaa !1428
  %185 = load %struct.StatParameters** @stats, align 8, !dbg !2197, !tbaa !1428
  %bit_ctr_parametersets429 = getelementptr inbounds %struct.StatParameters* %185, i64 0, i32 32, !dbg !2197
  %186 = load i32* %bit_ctr_parametersets429, align 4, !dbg !2197, !tbaa !1424
  %call430 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([42 x i8]* @.str75, i64 0, i64 0), i32 %186) #7, !dbg !2197
  %187 = load %struct._IO_FILE** @stdout, align 8, !dbg !2198, !tbaa !1428
  %188 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str26, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %187), !dbg !2198
  %189 = load %struct._IO_FILE** @stdout, align 8, !dbg !2199, !tbaa !1428
  %call432 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([27 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !2199
  %190 = load %struct._IO_FILE** @stdout, align 8, !dbg !2200, !tbaa !1428
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %190), !dbg !2200
  %call434 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str79, i64 0, i64 0)) #7, !dbg !2201
  store %struct._IO_FILE* %call434, %struct._IO_FILE** @p_stat, align 8, !dbg !2201, !tbaa !1428
  %cmp435 = icmp eq %struct._IO_FILE* %call434, null, !dbg !2201
  br i1 %cmp435, label %if.then437, label %if.end439, !dbg !2201

if.then437:                                       ; preds = %if.end427
  %call438 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str78, i64 0, i64 0)) #7, !dbg !2202
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #7, !dbg !2204
  %.pre = load %struct._IO_FILE** @p_stat, align 8, !dbg !2205, !tbaa !1428
  br label %if.end439, !dbg !2206

if.end439:                                        ; preds = %if.then437, %if.end427
  %191 = phi %struct._IO_FILE* [ %.pre, %if.then437 ], [ %call434, %if.end427 ]
  %192 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str81, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %191), !dbg !2205
  %193 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2207, !tbaa !1428
  %194 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str82, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %193), !dbg !2207
  %195 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2208, !tbaa !1428
  %196 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str81, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %195), !dbg !2208
  %197 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2209, !tbaa !1428
  %198 = load %struct.InputParameters** @input, align 8, !dbg !2209, !tbaa !1428
  %arraydecay443 = getelementptr inbounds %struct.InputParameters* %198, i64 0, i32 26, i64 0, !dbg !2209
  %call444 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([36 x i8]* @.str83, i64 0, i64 0), i8* %arraydecay443) #7, !dbg !2209
  %199 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2210, !tbaa !1428
  %200 = load %struct.InputParameters** @input, align 8, !dbg !2210, !tbaa !1428
  %no_frames445 = getelementptr inbounds %struct.InputParameters* %200, i64 0, i32 2, !dbg !2210
  %201 = load i32* %no_frames445, align 4, !dbg !2210, !tbaa !1424
  %202 = load i32* @Bframe_ctr, align 4, !dbg !2210, !tbaa !1424
  %add446 = add nsw i32 %202, %201, !dbg !2210
  %call447 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([37 x i8]* @.str84, i64 0, i64 0), i32 %add446) #7, !dbg !2210
  %203 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2211, !tbaa !1428
  %conv448 = fpext float %frame_rate.0 to double, !dbg !2211
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([39 x i8]* @.str85, i64 0, i64 0), double %conv448) #7, !dbg !2211
  %204 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2212, !tbaa !1428
  %205 = load %struct.StatParameters** @stats, align 8, !dbg !2212, !tbaa !1428
  %bitrate_I450 = getelementptr inbounds %struct.StatParameters* %205, i64 0, i32 17, !dbg !2212
  %206 = load float* %bitrate_I450, align 4, !dbg !2212, !tbaa !1688
  %div451 = fdiv float %206, 1.000000e+03, !dbg !2212
  %conv452 = fpext float %div451 to double, !dbg !2212
  %call453 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([39 x i8]* @.str86, i64 0, i64 0), double %conv452) #7, !dbg !2212
  %207 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2213, !tbaa !1428
  %208 = load %struct.StatParameters** @stats, align 8, !dbg !2213, !tbaa !1428
  %bitrate_P454 = getelementptr inbounds %struct.StatParameters* %208, i64 0, i32 18, !dbg !2213
  %209 = load float* %bitrate_P454, align 4, !dbg !2213, !tbaa !1688
  %div455 = fdiv float %209, 1.000000e+03, !dbg !2213
  %conv456 = fpext float %div455 to double, !dbg !2213
  %call457 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([39 x i8]* @.str87, i64 0, i64 0), double %conv456) #7, !dbg !2213
  %210 = load %struct.InputParameters** @input, align 8, !dbg !2214, !tbaa !1428
  %successive_Bframe458 = getelementptr inbounds %struct.InputParameters* %210, i64 0, i32 34, !dbg !2214
  %211 = load i32* %successive_Bframe458, align 4, !dbg !2214, !tbaa !1424
  %cmp459 = icmp eq i32 %211, 0, !dbg !2214
  br i1 %cmp459, label %if.end466, label %if.then461, !dbg !2214

if.then461:                                       ; preds = %if.end439
  %212 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2215, !tbaa !1428
  %213 = load %struct.StatParameters** @stats, align 8, !dbg !2215, !tbaa !1428
  %bitrate_B462 = getelementptr inbounds %struct.StatParameters* %213, i64 0, i32 19, !dbg !2215
  %214 = load float* %bitrate_B462, align 4, !dbg !2215, !tbaa !1688
  %div463 = fdiv float %214, 1.000000e+03, !dbg !2215
  %conv464 = fpext float %div463 to double, !dbg !2215
  %call465 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([39 x i8]* @.str88, i64 0, i64 0), double %conv464) #7, !dbg !2215
  br label %if.end466, !dbg !2215

if.end466:                                        ; preds = %if.end439, %if.then461
  %215 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2216, !tbaa !1428
  %216 = load %struct.StatParameters** @stats, align 8, !dbg !2216, !tbaa !1428
  %bitrate467 = getelementptr inbounds %struct.StatParameters* %216, i64 0, i32 3, !dbg !2216
  %217 = load float* %bitrate467, align 4, !dbg !2216, !tbaa !1688
  %div468 = fdiv float %217, 1.000000e+03, !dbg !2216
  %conv469 = fpext float %div468 to double, !dbg !2216
  %call470 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([39 x i8]* @.str89, i64 0, i64 0), double %conv469) #7, !dbg !2216
  %218 = load %struct.InputParameters** @input, align 8, !dbg !2217, !tbaa !1428
  %hadamard471 = getelementptr inbounds %struct.InputParameters* %218, i64 0, i32 6, !dbg !2217
  %219 = load i32* %hadamard471, align 4, !dbg !2217, !tbaa !1424
  %tobool472 = icmp eq i32 %219, 0, !dbg !2217
  br i1 %tobool472, label %if.else481, label %if.then473, !dbg !2217

if.then473:                                       ; preds = %if.end466
  %hadamardqpel474 = getelementptr inbounds %struct.InputParameters* %218, i64 0, i32 7, !dbg !2218
  %220 = load i32* %hadamardqpel474, align 4, !dbg !2218, !tbaa !1424
  %tobool475 = icmp eq i32 %220, 0, !dbg !2218
  %221 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2220, !tbaa !1428
  br i1 %tobool475, label %if.else478, label %if.then476, !dbg !2218

if.then476:                                       ; preds = %if.then473
  %222 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str90, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %221), !dbg !2220
  br label %if.end483, !dbg !2220

if.else478:                                       ; preds = %if.then473
  %223 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str91, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %221), !dbg !2221
  br label %if.end483

if.else481:                                       ; preds = %if.end466
  %224 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2222, !tbaa !1428
  %225 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str92, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %224), !dbg !2222
  br label %if.end483

if.end483:                                        ; preds = %if.then476, %if.else478, %if.else481
  %226 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2223, !tbaa !1428
  %227 = load %struct.InputParameters** @input, align 8, !dbg !2223, !tbaa !1428
  %img_width484 = getelementptr inbounds %struct.InputParameters* %227, i64 0, i32 16, !dbg !2223
  %228 = load i32* %img_width484, align 4, !dbg !2223, !tbaa !1424
  %img_height485 = getelementptr inbounds %struct.InputParameters* %227, i64 0, i32 17, !dbg !2223
  %229 = load i32* %img_height485, align 4, !dbg !2223, !tbaa !1424
  %call486 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([39 x i8]* @.str93, i64 0, i64 0), i32 %228, i32 %229) #7, !dbg !2223
  %230 = load %struct.InputParameters** @input, align 8, !dbg !2224, !tbaa !1428
  %intra_upd487 = getelementptr inbounds %struct.InputParameters* %230, i64 0, i32 19, !dbg !2224
  %231 = load i32* %intra_upd487, align 4, !dbg !2224, !tbaa !1424
  %tobool488 = icmp eq i32 %231, 0, !dbg !2224
  %232 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2225, !tbaa !1428
  br i1 %tobool488, label %if.else491, label %if.then489, !dbg !2224

if.then489:                                       ; preds = %if.end483
  %233 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str94, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %232), !dbg !2225
  br label %if.end493, !dbg !2225

if.else491:                                       ; preds = %if.end483
  %234 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str95, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %232), !dbg !2226
  br label %if.end493

if.end493:                                        ; preds = %if.else491, %if.then489
  %235 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2227, !tbaa !1428
  %236 = load %struct.InputParameters** @input, align 8, !dbg !2227, !tbaa !1428
  %search_range494 = getelementptr inbounds %struct.InputParameters* %236, i64 0, i32 8, !dbg !2227
  %237 = load i32* %search_range494, align 4, !dbg !2227, !tbaa !1424
  %call495 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([36 x i8]* @.str96, i64 0, i64 0), i32 %237) #7, !dbg !2227
  %238 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2228, !tbaa !1428
  %239 = load %struct.InputParameters** @input, align 8, !dbg !2228, !tbaa !1428
  %num_ref_frames496 = getelementptr inbounds %struct.InputParameters* %239, i64 0, i32 9, !dbg !2228
  %240 = load i32* %num_ref_frames496, align 4, !dbg !2228, !tbaa !1424
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([36 x i8]* @.str97, i64 0, i64 0), i32 %240) #7, !dbg !2228
  %241 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2229, !tbaa !1428
  %242 = load %struct.InputParameters** @input, align 8, !dbg !2229, !tbaa !1428
  %P_List0_refs498 = getelementptr inbounds %struct.InputParameters* %242, i64 0, i32 10, !dbg !2229
  %243 = load i32* %P_List0_refs498, align 4, !dbg !2229, !tbaa !1424
  %tobool499 = icmp eq i32 %243, 0, !dbg !2229
  br i1 %tobool499, label %cond.false502, label %cond.end504, !dbg !2229

cond.false502:                                    ; preds = %if.end493
  %num_ref_frames503 = getelementptr inbounds %struct.InputParameters* %242, i64 0, i32 9, !dbg !2229
  %244 = load i32* %num_ref_frames503, align 4, !dbg !2229, !tbaa !1424
  br label %cond.end504, !dbg !2229

cond.end504:                                      ; preds = %if.end493, %cond.false502
  %cond505 = phi i32 [ %244, %cond.false502 ], [ %243, %if.end493 ], !dbg !2229
  %call506 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([36 x i8]* @.str98, i64 0, i64 0), i32 %cond505) #7, !dbg !2229
  %245 = load %struct.InputParameters** @input, align 8, !dbg !2230, !tbaa !1428
  %successive_Bframe507 = getelementptr inbounds %struct.InputParameters* %245, i64 0, i32 34, !dbg !2230
  %246 = load i32* %successive_Bframe507, align 4, !dbg !2230, !tbaa !1424
  %cmp508 = icmp eq i32 %246, 0, !dbg !2230
  br i1 %cmp508, label %if.end529, label %if.then510, !dbg !2230

if.then510:                                       ; preds = %cond.end504
  %247 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2231, !tbaa !1428
  %B_List0_refs511 = getelementptr inbounds %struct.InputParameters* %245, i64 0, i32 11, !dbg !2231
  %248 = load i32* %B_List0_refs511, align 4, !dbg !2231, !tbaa !1424
  %tobool512 = icmp eq i32 %248, 0, !dbg !2231
  br i1 %tobool512, label %cond.false515, label %cond.end517, !dbg !2231

cond.false515:                                    ; preds = %if.then510
  %num_ref_frames516 = getelementptr inbounds %struct.InputParameters* %245, i64 0, i32 9, !dbg !2231
  %249 = load i32* %num_ref_frames516, align 4, !dbg !2231, !tbaa !1424
  br label %cond.end517, !dbg !2231

cond.end517:                                      ; preds = %if.then510, %cond.false515
  %cond518 = phi i32 [ %249, %cond.false515 ], [ %248, %if.then510 ], !dbg !2231
  %call519 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([36 x i8]* @.str99, i64 0, i64 0), i32 %cond518) #7, !dbg !2231
  %250 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2233, !tbaa !1428
  %251 = load %struct.InputParameters** @input, align 8, !dbg !2233, !tbaa !1428
  %B_List1_refs520 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 12, !dbg !2233
  %252 = load i32* %B_List1_refs520, align 4, !dbg !2233, !tbaa !1424
  %tobool521 = icmp eq i32 %252, 0, !dbg !2233
  br i1 %tobool521, label %cond.false524, label %cond.end526, !dbg !2233

cond.false524:                                    ; preds = %cond.end517
  %num_ref_frames525 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 9, !dbg !2233
  %253 = load i32* %num_ref_frames525, align 4, !dbg !2233, !tbaa !1424
  br label %cond.end526, !dbg !2233

cond.end526:                                      ; preds = %cond.end517, %cond.false524
  %cond527 = phi i32 [ %253, %cond.false524 ], [ %252, %cond.end517 ], !dbg !2233
  %call528 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([36 x i8]* @.str100, i64 0, i64 0), i32 %cond527) #7, !dbg !2233
  %.pre1566 = load %struct.InputParameters** @input, align 8, !dbg !2234, !tbaa !1428
  br label %if.end529, !dbg !2235

if.end529:                                        ; preds = %cond.end504, %cond.end526
  %254 = phi %struct.InputParameters* [ %245, %cond.end504 ], [ %.pre1566, %cond.end526 ]
  %symbol_mode530 = getelementptr inbounds %struct.InputParameters* %254, i64 0, i32 59, !dbg !2234
  %255 = load i32* %symbol_mode530, align 4, !dbg !2234, !tbaa !1424
  %cmp531 = icmp eq i32 %255, 0, !dbg !2234
  %256 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2236, !tbaa !1428
  br i1 %cmp531, label %if.then533, label %if.else535, !dbg !2234

if.then533:                                       ; preds = %if.end529
  %257 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str101, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %256), !dbg !2236
  br label %if.end537, !dbg !2236

if.else535:                                       ; preds = %if.end529
  %258 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str102, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %256), !dbg !2237
  br label %if.end537

if.end537:                                        ; preds = %if.else535, %if.then533
  %259 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2238, !tbaa !1428
  %260 = load %struct.InputParameters** @input, align 8, !dbg !2238, !tbaa !1428
  %ProfileIDC538 = getelementptr inbounds %struct.InputParameters* %260, i64 0, i32 0, !dbg !2238
  %261 = load i32* %ProfileIDC538, align 4, !dbg !2238, !tbaa !1424
  %LevelIDC539 = getelementptr inbounds %struct.InputParameters* %260, i64 0, i32 1, !dbg !2238
  %262 = load i32* %LevelIDC539, align 4, !dbg !2238, !tbaa !1424
  %call540 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %259, i8* getelementptr inbounds ([41 x i8]* @.str103, i64 0, i64 0), i32 %261, i32 %262) #7, !dbg !2238
  %263 = load %struct.InputParameters** @input, align 8, !dbg !2239, !tbaa !1428
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %263, i64 0, i32 92, !dbg !2239
  %264 = load i32* %MbInterlace, align 4, !dbg !2239, !tbaa !1424
  %tobool541 = icmp eq i32 %264, 0, !dbg !2239
  br i1 %tobool541, label %if.end544, label %if.then542, !dbg !2239

if.then542:                                       ; preds = %if.end537
  %265 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2240, !tbaa !1428
  %266 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str104, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %265), !dbg !2240
  %.pre1567 = load %struct.InputParameters** @input, align 8, !dbg !2241, !tbaa !1428
  br label %if.end544, !dbg !2240

if.end544:                                        ; preds = %if.end537, %if.then542
  %267 = phi %struct.InputParameters* [ %263, %if.end537 ], [ %.pre1567, %if.then542 ]
  %full_search545 = getelementptr inbounds %struct.InputParameters* %267, i64 0, i32 78, !dbg !2241
  %268 = load i32* %full_search545, align 4, !dbg !2241, !tbaa !1424
  %cmp546 = icmp eq i32 %268, 2, !dbg !2241
  br i1 %cmp546, label %if.then548, label %if.else550, !dbg !2241

if.then548:                                       ; preds = %if.end544
  %269 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2242, !tbaa !1428
  %270 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str105, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %269), !dbg !2242
  br label %if.end559, !dbg !2242

if.else550:                                       ; preds = %if.end544
  %cmp552 = icmp eq i32 %268, 1, !dbg !2243
  %271 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2244, !tbaa !1428
  br i1 %cmp552, label %if.then554, label %if.else556, !dbg !2243

if.then554:                                       ; preds = %if.else550
  %272 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str106, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %271), !dbg !2244
  br label %if.end559, !dbg !2244

if.else556:                                       ; preds = %if.else550
  %273 = call i64 @fwrite(i8* getelementptr inbounds ([75 x i8]* @.str107, i64 0, i64 0), i64 74, i64 1, %struct._IO_FILE* %271), !dbg !2245
  br label %if.end559

if.end559:                                        ; preds = %if.then554, %if.else556, %if.then548
  %274 = load %struct.InputParameters** @input, align 8, !dbg !2246, !tbaa !1428
  %rdopt560 = getelementptr inbounds %struct.InputParameters* %274, i64 0, i32 85, !dbg !2246
  %275 = load i32* %rdopt560, align 4, !dbg !2246, !tbaa !1424
  %tobool561 = icmp eq i32 %275, 0, !dbg !2246
  %276 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2247, !tbaa !1428
  br i1 %tobool561, label %if.else564, label %if.then562, !dbg !2246

if.then562:                                       ; preds = %if.end559
  %277 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str108, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %276), !dbg !2247
  br label %if.end566, !dbg !2247

if.else564:                                       ; preds = %if.end559
  %278 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str109, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %276), !dbg !2248
  br label %if.end566

if.end566:                                        ; preds = %if.else564, %if.then562
  %279 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2249, !tbaa !1428
  %280 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str110, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %279), !dbg !2249
  %281 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2250, !tbaa !1428
  %282 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str111, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %281), !dbg !2250
  %283 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2251, !tbaa !1428
  %284 = call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str110, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %283), !dbg !2251
  %285 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2252, !tbaa !1428
  %286 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str112, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %285), !dbg !2252
  %287 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2253, !tbaa !1428
  %288 = load %struct.SNRParameters** @snr, align 8, !dbg !2253, !tbaa !1428
  %snr_y1 = getelementptr inbounds %struct.SNRParameters* %288, i64 0, i32 3, !dbg !2253
  %289 = load float* %snr_y1, align 4, !dbg !2253, !tbaa !1688
  %conv571 = fpext float %289 to double, !dbg !2253
  %call572 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([18 x i8]* @.str113, i64 0, i64 0), double %conv571) #7, !dbg !2253
  %290 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2254, !tbaa !1428
  %291 = load %struct.SNRParameters** @snr, align 8, !dbg !2254, !tbaa !1428
  %snr_ya573 = getelementptr inbounds %struct.SNRParameters* %291, i64 0, i32 9, !dbg !2254
  %292 = load float* %snr_ya573, align 4, !dbg !2254, !tbaa !1688
  %conv574 = fpext float %292 to double, !dbg !2254
  %call575 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([18 x i8]* @.str114, i64 0, i64 0), double %conv574) #7, !dbg !2254
  %293 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2255, !tbaa !1428
  %294 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str115, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %293), !dbg !2255
  %295 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2256, !tbaa !1428
  %296 = load %struct.SNRParameters** @snr, align 8, !dbg !2256, !tbaa !1428
  %snr_u1 = getelementptr inbounds %struct.SNRParameters* %296, i64 0, i32 4, !dbg !2256
  %297 = load float* %snr_u1, align 4, !dbg !2256, !tbaa !1688
  %conv577 = fpext float %297 to double, !dbg !2256
  %snr_v1 = getelementptr inbounds %struct.SNRParameters* %296, i64 0, i32 5, !dbg !2256
  %298 = load float* %snr_v1, align 4, !dbg !2256, !tbaa !1688
  %conv578 = fpext float %298 to double, !dbg !2256
  %call579 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([18 x i8]* @.str116, i64 0, i64 0), double %conv577, double %conv578) #7, !dbg !2256
  %299 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2257, !tbaa !1428
  %300 = load %struct.SNRParameters** @snr, align 8, !dbg !2257, !tbaa !1428
  %snr_ua580 = getelementptr inbounds %struct.SNRParameters* %300, i64 0, i32 10, !dbg !2257
  %301 = load float* %snr_ua580, align 4, !dbg !2257, !tbaa !1688
  %conv581 = fpext float %301 to double, !dbg !2257
  %snr_va582 = getelementptr inbounds %struct.SNRParameters* %300, i64 0, i32 11, !dbg !2257
  %302 = load float* %snr_va582, align 4, !dbg !2257, !tbaa !1688
  %conv583 = fpext float %302 to double, !dbg !2257
  %call584 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([18 x i8]* @.str117, i64 0, i64 0), double %conv581, double %conv583) #7, !dbg !2257
  %303 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2258, !tbaa !1428
  %304 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str118, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %303), !dbg !2258
  %305 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2259, !tbaa !1428
  %306 = load %struct.InputParameters** @input, align 8, !dbg !2259, !tbaa !1428
  %qp0586 = getelementptr inbounds %struct.InputParameters* %306, i64 0, i32 3, !dbg !2259
  %307 = load i32* %qp0586, align 4, !dbg !2259, !tbaa !1424
  %cmp587 = icmp slt i32 %307, 0, !dbg !2259
  %sub591 = sub nsw i32 0, %307, !dbg !2259
  %cond595 = select i1 %cmp587, i32 %sub591, i32 %307, !dbg !2259
  %call596 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %305, i8* getelementptr inbounds ([16 x i8]* @.str119, i64 0, i64 0), i32 %cond595) #7, !dbg !2259
  %308 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2260, !tbaa !1428
  %309 = load %struct.StatParameters** @stats, align 8, !dbg !2260, !tbaa !1428
  %quant1 = getelementptr inbounds %struct.StatParameters* %309, i64 0, i32 1, !dbg !2260
  %310 = load i32* %quant1, align 4, !dbg !2260, !tbaa !1424
  %conv597 = sitofp i32 %310 to float, !dbg !2260
  %conv598 = fpext float %conv597 to double, !dbg !2260
  %quant0 = getelementptr inbounds %struct.StatParameters* %309, i64 0, i32 0, !dbg !2260
  %311 = load i32* %quant0, align 4, !dbg !2260, !tbaa !1424
  %conv599 = sitofp i32 %311 to float, !dbg !2260
  %cmp601 = fcmp olt float %conv599, 1.000000e+00, !dbg !2260
  br i1 %cmp601, label %cond.end608, label %cond.false604, !dbg !2260

cond.false604:                                    ; preds = %if.end566
  %conv600 = fpext float %conv599 to double, !dbg !2260
  br label %cond.end608, !dbg !2260

cond.end608:                                      ; preds = %if.end566, %cond.false604
  %cond609 = phi double [ %conv600, %cond.false604 ], [ 1.000000e+00, %if.end566 ], !dbg !2260
  %div610 = fdiv double %conv598, %cond609, !dbg !2260
  %call611 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %308, i8* getelementptr inbounds ([18 x i8]* @.str114, i64 0, i64 0), double %div610) #7, !dbg !2260
  %312 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2261, !tbaa !1428
  %313 = call i64 @fwrite(i8* getelementptr inbounds ([75 x i8]* @.str120, i64 0, i64 0), i64 74, i64 1, %struct._IO_FILE* %312), !dbg !2261
  %314 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2262, !tbaa !1428
  %315 = call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str121, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %314), !dbg !2262
  %316 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2263, !tbaa !1428
  %317 = call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str122, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %316), !dbg !2263
  %318 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2264, !tbaa !1428
  %319 = load %struct.SNRParameters** @snr, align 8, !dbg !2264, !tbaa !1428
  %arrayidx615 = getelementptr inbounds %struct.SNRParameters* %319, i64 0, i32 6, i64 2, !dbg !2264
  %320 = load float* %arrayidx615, align 4, !dbg !2264, !tbaa !1688
  %conv616 = fpext float %320 to double, !dbg !2264
  %arrayidx618 = getelementptr inbounds %struct.SNRParameters* %319, i64 0, i32 6, i64 0, !dbg !2264
  %321 = load float* %arrayidx618, align 4, !dbg !2264, !tbaa !1688
  %conv619 = fpext float %321 to double, !dbg !2264
  %arrayidx621 = getelementptr inbounds %struct.SNRParameters* %319, i64 0, i32 6, i64 1, !dbg !2264
  %322 = load float* %arrayidx621, align 4, !dbg !2264, !tbaa !1688
  %conv622 = fpext float %322 to double, !dbg !2264
  %call623 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([71 x i8]* @.str123, i64 0, i64 0), double %conv616, double %conv619, double %conv622) #7, !dbg !2264
  %323 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2265, !tbaa !1428
  %324 = load %struct.SNRParameters** @snr, align 8, !dbg !2265, !tbaa !1428
  %arrayidx624 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 7, i64 2, !dbg !2265
  %325 = load float* %arrayidx624, align 4, !dbg !2265, !tbaa !1688
  %conv625 = fpext float %325 to double, !dbg !2265
  %arrayidx627 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 7, i64 0, !dbg !2265
  %326 = load float* %arrayidx627, align 4, !dbg !2265, !tbaa !1688
  %conv628 = fpext float %326 to double, !dbg !2265
  %arrayidx630 = getelementptr inbounds %struct.SNRParameters* %324, i64 0, i32 7, i64 1, !dbg !2265
  %327 = load float* %arrayidx630, align 4, !dbg !2265, !tbaa !1688
  %conv631 = fpext float %327 to double, !dbg !2265
  %call632 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %323, i8* getelementptr inbounds ([71 x i8]* @.str124, i64 0, i64 0), double %conv625, double %conv628, double %conv631) #7, !dbg !2265
  %328 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2266, !tbaa !1428
  %329 = load %struct.SNRParameters** @snr, align 8, !dbg !2266, !tbaa !1428
  %arrayidx633 = getelementptr inbounds %struct.SNRParameters* %329, i64 0, i32 8, i64 2, !dbg !2266
  %330 = load float* %arrayidx633, align 4, !dbg !2266, !tbaa !1688
  %conv634 = fpext float %330 to double, !dbg !2266
  %arrayidx636 = getelementptr inbounds %struct.SNRParameters* %329, i64 0, i32 8, i64 0, !dbg !2266
  %331 = load float* %arrayidx636, align 4, !dbg !2266, !tbaa !1688
  %conv637 = fpext float %331 to double, !dbg !2266
  %arrayidx639 = getelementptr inbounds %struct.SNRParameters* %329, i64 0, i32 8, i64 1, !dbg !2266
  %332 = load float* %arrayidx639, align 4, !dbg !2266, !tbaa !1688
  %conv640 = fpext float %332 to double, !dbg !2266
  %call641 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([71 x i8]* @.str125, i64 0, i64 0), double %conv634, double %conv637, double %conv640) #7, !dbg !2266
  %333 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2267, !tbaa !1428
  %334 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str126, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %333), !dbg !2267
  %335 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2268, !tbaa !1428
  %336 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str127, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %335), !dbg !2268
  %337 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2269, !tbaa !1428
  %338 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str128, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %337), !dbg !2269
  %339 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2270, !tbaa !1428
  %340 = load %struct.StatParameters** @stats, align 8, !dbg !2270, !tbaa !1428
  %arrayidx646 = getelementptr inbounds %struct.StatParameters* %340, i64 0, i32 20, i64 2, i64 9, !dbg !2270
  %341 = load i32* %arrayidx646, align 4, !dbg !2270, !tbaa !1424
  %call647 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([40 x i8]* @.str129, i64 0, i64 0), i32 %341) #7, !dbg !2270
  %342 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2271, !tbaa !1428
  %343 = load %struct.StatParameters** @stats, align 8, !dbg !2271, !tbaa !1428
  %arrayidx650 = getelementptr inbounds %struct.StatParameters* %343, i64 0, i32 20, i64 2, i64 13, !dbg !2271
  %344 = load i32* %arrayidx650, align 4, !dbg !2271, !tbaa !1424
  %call651 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %342, i8* getelementptr inbounds ([40 x i8]* @.str130, i64 0, i64 0), i32 %344) #7, !dbg !2271
  %345 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2272, !tbaa !1428
  %346 = load %struct.StatParameters** @stats, align 8, !dbg !2272, !tbaa !1428
  %arrayidx654 = getelementptr inbounds %struct.StatParameters* %346, i64 0, i32 20, i64 2, i64 10, !dbg !2272
  %347 = load i32* %arrayidx654, align 4, !dbg !2272, !tbaa !1424
  %call655 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %345, i8* getelementptr inbounds ([40 x i8]* @.str131, i64 0, i64 0), i32 %347) #7, !dbg !2272
  %348 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2273, !tbaa !1428
  %349 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str132, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %348), !dbg !2273
  %350 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2274, !tbaa !1428
  %351 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str133, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %350), !dbg !2274
  %352 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2275, !tbaa !1428
  %353 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str134, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %352), !dbg !2275
  %354 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2276, !tbaa !1428
  %355 = load %struct.StatParameters** @stats, align 8, !dbg !2276, !tbaa !1428
  %arrayidx661 = getelementptr inbounds %struct.StatParameters* %355, i64 0, i32 20, i64 0, i64 0, !dbg !2276
  %356 = load i32* %arrayidx661, align 4, !dbg !2276, !tbaa !1424
  %arrayidx664 = getelementptr inbounds %struct.StatParameters* %355, i64 0, i32 21, i64 0, i64 0, !dbg !2276
  %357 = load i32* %arrayidx664, align 4, !dbg !2276, !tbaa !1424
  %conv665 = sitofp i32 %357 to float, !dbg !2276
  %conv668 = sitofp i32 %cond to float, !dbg !2276
  %div669 = fdiv float %conv665, %conv668, !dbg !2276
  %conv670 = fpext float %div669 to double, !dbg !2276
  %call671 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %354, i8* getelementptr inbounds ([55 x i8]* @.str135, i64 0, i64 0), i32 %356, double %conv670) #7, !dbg !2276
  %358 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2277, !tbaa !1428
  %359 = load %struct.StatParameters** @stats, align 8, !dbg !2277, !tbaa !1428
  %arrayidx674 = getelementptr inbounds %struct.StatParameters* %359, i64 0, i32 20, i64 0, i64 1, !dbg !2277
  %360 = load i32* %arrayidx674, align 4, !dbg !2277, !tbaa !1424
  %arrayidx677 = getelementptr inbounds %struct.StatParameters* %359, i64 0, i32 21, i64 0, i64 1, !dbg !2277
  %361 = load i32* %arrayidx677, align 4, !dbg !2277, !tbaa !1424
  %conv678 = sitofp i32 %361 to float, !dbg !2277
  %div682 = fdiv float %conv678, %conv668, !dbg !2277
  %conv683 = fpext float %div682 to double, !dbg !2277
  %call684 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %358, i8* getelementptr inbounds ([55 x i8]* @.str136, i64 0, i64 0), i32 %360, double %conv683) #7, !dbg !2277
  %362 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2278, !tbaa !1428
  %363 = load %struct.StatParameters** @stats, align 8, !dbg !2278, !tbaa !1428
  %arrayidx687 = getelementptr inbounds %struct.StatParameters* %363, i64 0, i32 20, i64 0, i64 2, !dbg !2278
  %364 = load i32* %arrayidx687, align 4, !dbg !2278, !tbaa !1424
  %arrayidx690 = getelementptr inbounds %struct.StatParameters* %363, i64 0, i32 21, i64 0, i64 2, !dbg !2278
  %365 = load i32* %arrayidx690, align 4, !dbg !2278, !tbaa !1424
  %conv691 = sitofp i32 %365 to float, !dbg !2278
  %366 = load i32* %arrayidx3, align 16, !dbg !2278, !tbaa !1424
  %367 = bitcast [5 x [2 x i32]]* %bit_use to i64*, !dbg !2278
  %368 = load i64* %367, align 16, !dbg !2278
  %369 = trunc i64 %368 to i32, !dbg !2278
  %conv694 = sitofp i32 %369 to float, !dbg !2278
  %div695 = fdiv float %conv691, %conv694, !dbg !2278
  %conv696 = fpext float %div695 to double, !dbg !2278
  %call697 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %362, i8* getelementptr inbounds ([55 x i8]* @.str137, i64 0, i64 0), i32 %364, double %conv696) #7, !dbg !2278
  %370 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2279, !tbaa !1428
  %371 = load %struct.StatParameters** @stats, align 8, !dbg !2279, !tbaa !1428
  %arrayidx700 = getelementptr inbounds %struct.StatParameters* %371, i64 0, i32 20, i64 0, i64 3, !dbg !2279
  %372 = load i32* %arrayidx700, align 4, !dbg !2279, !tbaa !1424
  %arrayidx703 = getelementptr inbounds %struct.StatParameters* %371, i64 0, i32 21, i64 0, i64 3, !dbg !2279
  %373 = load i32* %arrayidx703, align 4, !dbg !2279, !tbaa !1424
  %conv704 = sitofp i32 %373 to float, !dbg !2279
  %div708 = fdiv float %conv704, %conv694, !dbg !2279
  %conv709 = fpext float %div708 to double, !dbg !2279
  %call710 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %370, i8* getelementptr inbounds ([55 x i8]* @.str138, i64 0, i64 0), i32 %372, double %conv709) #7, !dbg !2279
  %374 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2280, !tbaa !1428
  %375 = load %struct.StatParameters** @stats, align 8, !dbg !2280, !tbaa !1428
  %arrayidx713 = getelementptr inbounds %struct.StatParameters* %375, i64 0, i32 20, i64 0, i64 8, !dbg !2280
  %376 = load i32* %arrayidx713, align 4, !dbg !2280, !tbaa !1424
  %arrayidx716 = getelementptr inbounds %struct.StatParameters* %375, i64 0, i32 21, i64 0, i64 8, !dbg !2280
  %377 = load i32* %arrayidx716, align 4, !dbg !2280, !tbaa !1424
  %conv717 = sitofp i32 %377 to float, !dbg !2280
  %div721 = fdiv float %conv717, %conv694, !dbg !2280
  %conv722 = fpext float %div721 to double, !dbg !2280
  %call723 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %374, i8* getelementptr inbounds ([55 x i8]* @.str139, i64 0, i64 0), i32 %376, double %conv722) #7, !dbg !2280
  %378 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2281, !tbaa !1428
  %379 = load %struct.StatParameters** @stats, align 8, !dbg !2281, !tbaa !1428
  %arrayidx726 = getelementptr inbounds %struct.StatParameters* %379, i64 0, i32 20, i64 0, i64 9, !dbg !2281
  %380 = load i32* %arrayidx726, align 4, !dbg !2281, !tbaa !1424
  %call727 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %378, i8* getelementptr inbounds ([58 x i8]* @.str140, i64 0, i64 0), i32 %380) #7, !dbg !2281
  %381 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2282, !tbaa !1428
  %382 = load %struct.StatParameters** @stats, align 8, !dbg !2282, !tbaa !1428
  %arrayidx730 = getelementptr inbounds %struct.StatParameters* %382, i64 0, i32 20, i64 0, i64 13, !dbg !2282
  %383 = load i32* %arrayidx730, align 4, !dbg !2282, !tbaa !1424
  %call731 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %381, i8* getelementptr inbounds ([40 x i8]* @.str141, i64 0, i64 0), i32 %383) #7, !dbg !2282
  %384 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2283, !tbaa !1428
  %385 = load %struct.StatParameters** @stats, align 8, !dbg !2283, !tbaa !1428
  %arrayidx734 = getelementptr inbounds %struct.StatParameters* %385, i64 0, i32 20, i64 0, i64 10, !dbg !2283
  %386 = load i32* %arrayidx734, align 4, !dbg !2283, !tbaa !1424
  %call735 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %384, i8* getelementptr inbounds ([40 x i8]* @.str142, i64 0, i64 0), i32 %386) #7, !dbg !2283
  %387 = load %struct.StatParameters** @stats, align 8, !dbg !2284, !tbaa !1428
  %arrayidx738 = getelementptr inbounds %struct.StatParameters* %387, i64 0, i32 21, i64 0, i64 0, !dbg !2284
  %388 = load i32* %arrayidx738, align 4, !dbg !2284, !tbaa !1424
  %arrayidx741 = getelementptr inbounds %struct.StatParameters* %387, i64 0, i32 21, i64 0, i64 1, !dbg !2284
  %389 = load i32* %arrayidx741, align 4, !dbg !2284, !tbaa !1424
  %add742 = add nsw i32 %389, %388, !dbg !2284
  %arrayidx745 = getelementptr inbounds %struct.StatParameters* %387, i64 0, i32 21, i64 0, i64 2, !dbg !2284
  %390 = load i32* %arrayidx745, align 4, !dbg !2284, !tbaa !1424
  %add746 = add nsw i32 %add742, %390, !dbg !2284
  %arrayidx749 = getelementptr inbounds %struct.StatParameters* %387, i64 0, i32 21, i64 0, i64 3, !dbg !2284
  %391 = load i32* %arrayidx749, align 4, !dbg !2284, !tbaa !1424
  %add750 = add nsw i32 %add746, %391, !dbg !2284
  %arrayidx753 = getelementptr inbounds %struct.StatParameters* %387, i64 0, i32 21, i64 0, i64 8, !dbg !2284
  %392 = load i32* %arrayidx753, align 4, !dbg !2284, !tbaa !1424
  %add754 = add nsw i32 %add750, %392, !dbg !2284
  %conv755 = sitofp i32 %add754 to float, !dbg !2284
  %div759 = fdiv float %conv755, %conv694, !dbg !2284
  %393 = load %struct.InputParameters** @input, align 8, !dbg !2285, !tbaa !1428
  %successive_Bframe761 = getelementptr inbounds %struct.InputParameters* %393, i64 0, i32 34, !dbg !2285
  %394 = load i32* %successive_Bframe761, align 4, !dbg !2285, !tbaa !1424
  %cmp762 = icmp ne i32 %394, 0, !dbg !2285
  %395 = load i32* @Bframe_ctr, align 4, !dbg !2285, !tbaa !1424
  %cmp765 = icmp ne i32 %395, 0, !dbg !2285
  %or.cond = and i1 %cmp762, %cmp765, !dbg !2285
  br i1 %or.cond, label %if.then767, label %if.end861, !dbg !2285

if.then767:                                       ; preds = %cond.end608
  %396 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2286, !tbaa !1428
  %397 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str143, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %396), !dbg !2286
  %398 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2288, !tbaa !1428
  %399 = call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str144, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %398), !dbg !2288
  %400 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2289, !tbaa !1428
  %401 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str134, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %400), !dbg !2289
  %402 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2290, !tbaa !1428
  %403 = load %struct.StatParameters** @stats, align 8, !dbg !2290, !tbaa !1428
  %arrayidx773 = getelementptr inbounds %struct.StatParameters* %403, i64 0, i32 20, i64 1, i64 0, !dbg !2290
  %404 = load i32* %arrayidx773, align 4, !dbg !2290, !tbaa !1424
  %arrayidx776 = getelementptr inbounds %struct.StatParameters* %403, i64 0, i32 21, i64 1, i64 0, !dbg !2290
  %405 = load i32* %arrayidx776, align 4, !dbg !2290, !tbaa !1424
  %conv777 = sitofp i32 %405 to float, !dbg !2290
  %406 = load i32* @Bframe_ctr, align 4, !dbg !2290, !tbaa !1424
  %conv778 = sitofp i32 %406 to float, !dbg !2290
  %div779 = fdiv float %conv777, %conv778, !dbg !2290
  %conv780 = fpext float %div779 to double, !dbg !2290
  %call781 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([55 x i8]* @.str135, i64 0, i64 0), i32 %404, double %conv780) #7, !dbg !2290
  %407 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2291, !tbaa !1428
  %408 = load %struct.StatParameters** @stats, align 8, !dbg !2291, !tbaa !1428
  %arrayidx784 = getelementptr inbounds %struct.StatParameters* %408, i64 0, i32 20, i64 1, i64 1, !dbg !2291
  %409 = load i32* %arrayidx784, align 4, !dbg !2291, !tbaa !1424
  %arrayidx787 = getelementptr inbounds %struct.StatParameters* %408, i64 0, i32 21, i64 1, i64 1, !dbg !2291
  %410 = load i32* %arrayidx787, align 4, !dbg !2291, !tbaa !1424
  %conv788 = sitofp i32 %410 to float, !dbg !2291
  %411 = load i32* @Bframe_ctr, align 4, !dbg !2291, !tbaa !1424
  %conv789 = sitofp i32 %411 to float, !dbg !2291
  %div790 = fdiv float %conv788, %conv789, !dbg !2291
  %conv791 = fpext float %div790 to double, !dbg !2291
  %call792 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([55 x i8]* @.str136, i64 0, i64 0), i32 %409, double %conv791) #7, !dbg !2291
  %412 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2292, !tbaa !1428
  %413 = load %struct.StatParameters** @stats, align 8, !dbg !2292, !tbaa !1428
  %arrayidx795 = getelementptr inbounds %struct.StatParameters* %413, i64 0, i32 20, i64 1, i64 2, !dbg !2292
  %414 = load i32* %arrayidx795, align 4, !dbg !2292, !tbaa !1424
  %arrayidx798 = getelementptr inbounds %struct.StatParameters* %413, i64 0, i32 21, i64 1, i64 2, !dbg !2292
  %415 = load i32* %arrayidx798, align 4, !dbg !2292, !tbaa !1424
  %conv799 = sitofp i32 %415 to float, !dbg !2292
  %416 = load i32* @Bframe_ctr, align 4, !dbg !2292, !tbaa !1424
  %conv800 = sitofp i32 %416 to float, !dbg !2292
  %div801 = fdiv float %conv799, %conv800, !dbg !2292
  %conv802 = fpext float %div801 to double, !dbg !2292
  %call803 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %412, i8* getelementptr inbounds ([55 x i8]* @.str137, i64 0, i64 0), i32 %414, double %conv802) #7, !dbg !2292
  %417 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2293, !tbaa !1428
  %418 = load %struct.StatParameters** @stats, align 8, !dbg !2293, !tbaa !1428
  %arrayidx806 = getelementptr inbounds %struct.StatParameters* %418, i64 0, i32 20, i64 1, i64 3, !dbg !2293
  %419 = load i32* %arrayidx806, align 4, !dbg !2293, !tbaa !1424
  %arrayidx809 = getelementptr inbounds %struct.StatParameters* %418, i64 0, i32 21, i64 1, i64 3, !dbg !2293
  %420 = load i32* %arrayidx809, align 4, !dbg !2293, !tbaa !1424
  %conv810 = sitofp i32 %420 to float, !dbg !2293
  %421 = load i32* @Bframe_ctr, align 4, !dbg !2293, !tbaa !1424
  %conv811 = sitofp i32 %421 to float, !dbg !2293
  %div812 = fdiv float %conv810, %conv811, !dbg !2293
  %conv813 = fpext float %div812 to double, !dbg !2293
  %call814 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %417, i8* getelementptr inbounds ([55 x i8]* @.str138, i64 0, i64 0), i32 %419, double %conv813) #7, !dbg !2293
  %422 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2294, !tbaa !1428
  %423 = load %struct.StatParameters** @stats, align 8, !dbg !2294, !tbaa !1428
  %arrayidx817 = getelementptr inbounds %struct.StatParameters* %423, i64 0, i32 20, i64 1, i64 8, !dbg !2294
  %424 = load i32* %arrayidx817, align 4, !dbg !2294, !tbaa !1424
  %arrayidx820 = getelementptr inbounds %struct.StatParameters* %423, i64 0, i32 21, i64 1, i64 8, !dbg !2294
  %425 = load i32* %arrayidx820, align 4, !dbg !2294, !tbaa !1424
  %conv821 = sitofp i32 %425 to float, !dbg !2294
  %426 = load i32* @Bframe_ctr, align 4, !dbg !2294, !tbaa !1424
  %conv822 = sitofp i32 %426 to float, !dbg !2294
  %div823 = fdiv float %conv821, %conv822, !dbg !2294
  %conv824 = fpext float %div823 to double, !dbg !2294
  %call825 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %422, i8* getelementptr inbounds ([55 x i8]* @.str139, i64 0, i64 0), i32 %424, double %conv824) #7, !dbg !2294
  %427 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2295, !tbaa !1428
  %428 = load %struct.StatParameters** @stats, align 8, !dbg !2295, !tbaa !1428
  %arrayidx828 = getelementptr inbounds %struct.StatParameters* %428, i64 0, i32 20, i64 1, i64 9, !dbg !2295
  %429 = load i32* %arrayidx828, align 4, !dbg !2295, !tbaa !1424
  %call829 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %427, i8* getelementptr inbounds ([58 x i8]* @.str140, i64 0, i64 0), i32 %429) #7, !dbg !2295
  %430 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2296, !tbaa !1428
  %431 = load %struct.StatParameters** @stats, align 8, !dbg !2296, !tbaa !1428
  %arrayidx832 = getelementptr inbounds %struct.StatParameters* %431, i64 0, i32 20, i64 1, i64 13, !dbg !2296
  %432 = load i32* %arrayidx832, align 4, !dbg !2296, !tbaa !1424
  %call833 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %430, i8* getelementptr inbounds ([40 x i8]* @.str141, i64 0, i64 0), i32 %432) #7, !dbg !2296
  %433 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2297, !tbaa !1428
  %434 = load %struct.StatParameters** @stats, align 8, !dbg !2297, !tbaa !1428
  %arrayidx836 = getelementptr inbounds %struct.StatParameters* %434, i64 0, i32 20, i64 1, i64 10, !dbg !2297
  %435 = load i32* %arrayidx836, align 4, !dbg !2297, !tbaa !1424
  %call837 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([40 x i8]* @.str142, i64 0, i64 0), i32 %435) #7, !dbg !2297
  %436 = load %struct.StatParameters** @stats, align 8, !dbg !2298, !tbaa !1428
  %arrayidx840 = getelementptr inbounds %struct.StatParameters* %436, i64 0, i32 21, i64 1, i64 0, !dbg !2298
  %437 = load i32* %arrayidx840, align 4, !dbg !2298, !tbaa !1424
  %arrayidx843 = getelementptr inbounds %struct.StatParameters* %436, i64 0, i32 21, i64 1, i64 1, !dbg !2298
  %438 = load i32* %arrayidx843, align 4, !dbg !2298, !tbaa !1424
  %add844 = add nsw i32 %438, %437, !dbg !2298
  %arrayidx847 = getelementptr inbounds %struct.StatParameters* %436, i64 0, i32 21, i64 1, i64 2, !dbg !2298
  %439 = load i32* %arrayidx847, align 4, !dbg !2298, !tbaa !1424
  %add848 = add nsw i32 %add844, %439, !dbg !2298
  %arrayidx851 = getelementptr inbounds %struct.StatParameters* %436, i64 0, i32 21, i64 1, i64 3, !dbg !2298
  %440 = load i32* %arrayidx851, align 4, !dbg !2298, !tbaa !1424
  %add852 = add nsw i32 %add848, %440, !dbg !2298
  %arrayidx855 = getelementptr inbounds %struct.StatParameters* %436, i64 0, i32 21, i64 1, i64 8, !dbg !2298
  %441 = load i32* %arrayidx855, align 4, !dbg !2298, !tbaa !1424
  %add856 = add nsw i32 %add852, %441, !dbg !2298
  %conv857 = sitofp i32 %add856 to float, !dbg !2298
  %442 = load i32* @Bframe_ctr, align 4, !dbg !2298, !tbaa !1424
  %conv858 = sitofp i32 %442 to float, !dbg !2298
  %div859 = fdiv float %conv857, %conv858, !dbg !2298
  %phitmp = fpext float %div859 to double, !dbg !2299
  %443 = load i32* %arrayidx3, align 16, !dbg !2300, !tbaa !1424
  %.pre1568 = load i64* %367, align 16, !dbg !2300
  %444 = trunc i64 %.pre1568 to i32, !dbg !2300
  br label %if.end861, !dbg !2299

if.end861:                                        ; preds = %if.then767, %cond.end608
  %445 = phi i32 [ %443, %if.then767 ], [ %366, %cond.end608 ]
  %.in.in = phi i64 [ %.pre1568, %if.then767 ], [ %368, %cond.end608 ]
  %446 = phi i32 [ %444, %if.then767 ], [ %369, %cond.end608 ]
  %mean_motion_info_bit_use.sroa.1.0 = phi double [ %phitmp, %if.then767 ], [ undef, %cond.end608 ]
  %.in = lshr i64 %.in.in, 32
  %447 = trunc i64 %.in to i32
  %448 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2301, !tbaa !1428
  %449 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str145, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %448), !dbg !2301
  %450 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2302, !tbaa !1428
  %451 = call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str146, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %450), !dbg !2302
  %452 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2303, !tbaa !1428
  %453 = call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str147, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %452), !dbg !2303
  %454 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2304, !tbaa !1428
  %455 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str148, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %454), !dbg !2304
  %456 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2305, !tbaa !1428
  %457 = load %struct.StatParameters** @stats, align 8, !dbg !2305, !tbaa !1428
  %arrayidx867 = getelementptr inbounds %struct.StatParameters* %457, i64 0, i32 24, i64 2, !dbg !2305
  %458 = load i32* %arrayidx867, align 4, !dbg !2305, !tbaa !1424
  %conv868 = sitofp i32 %458 to float, !dbg !2305
  %459 = bitcast i32* %arrayidx1 to i64*, !dbg !2305
  %460 = load i64* %459, align 16, !dbg !2305
  %461 = trunc i64 %460 to i32, !dbg !2305
  %conv871 = sitofp i32 %461 to float, !dbg !2305
  %div872 = fdiv float %conv868, %conv871, !dbg !2305
  %conv873 = fpext float %div872 to double, !dbg !2305
  %call874 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %456, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv873) #7, !dbg !2305
  %462 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2300, !tbaa !1428
  %463 = load %struct.StatParameters** @stats, align 8, !dbg !2300, !tbaa !1428
  %arrayidx876 = getelementptr inbounds %struct.StatParameters* %463, i64 0, i32 24, i64 0, !dbg !2300
  %464 = load i32* %arrayidx876, align 4, !dbg !2300, !tbaa !1424
  %conv877 = sitofp i32 %464 to float, !dbg !2300
  %conv880 = sitofp i32 %446 to float, !dbg !2300
  %div881 = fdiv float %conv877, %conv880, !dbg !2300
  %conv882 = fpext float %div881 to double, !dbg !2300
  %call883 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv882) #7, !dbg !2300
  %465 = load %struct.InputParameters** @input, align 8, !dbg !2306, !tbaa !1428
  %successive_Bframe884 = getelementptr inbounds %struct.InputParameters* %465, i64 0, i32 34, !dbg !2306
  %466 = load i32* %successive_Bframe884, align 4, !dbg !2306, !tbaa !1424
  %cmp885 = icmp ne i32 %466, 0, !dbg !2306
  %467 = load i32* @Bframe_ctr, align 4, !dbg !2306, !tbaa !1424
  %cmp888 = icmp ne i32 %467, 0, !dbg !2306
  %or.cond1479 = and i1 %cmp885, %cmp888, !dbg !2306
  %468 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2307, !tbaa !1428
  %469 = lshr i64 %460, 32
  %470 = trunc i64 %469 to i32
  br i1 %or.cond1479, label %if.then890, label %if.else898, !dbg !2306

if.then890:                                       ; preds = %if.end861
  %471 = load %struct.StatParameters** @stats, align 8, !dbg !2307, !tbaa !1428
  %arrayidx892 = getelementptr inbounds %struct.StatParameters* %471, i64 0, i32 24, i64 1, !dbg !2307
  %472 = load i32* %arrayidx892, align 4, !dbg !2307, !tbaa !1424
  %conv893 = sitofp i32 %472 to float, !dbg !2307
  %conv894 = sitofp i32 %467 to float, !dbg !2307
  %div895 = fdiv float %conv893, %conv894, !dbg !2307
  %conv896 = fpext float %div895 to double, !dbg !2307
  %call897 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %468, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv896) #7, !dbg !2307
  br label %if.end900, !dbg !2307

if.else898:                                       ; preds = %if.end861
  %call899 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %468, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double 0.000000e+00) #7, !dbg !2308
  br label %if.end900

if.end900:                                        ; preds = %if.else898, %if.then890
  %473 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2309, !tbaa !1428
  %fputc1532 = call i32 @fputc(i32 10, %struct._IO_FILE* %473), !dbg !2309
  %474 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2310, !tbaa !1428
  %475 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str150, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %474), !dbg !2310
  %476 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2311, !tbaa !1428
  %477 = load %struct.StatParameters** @stats, align 8, !dbg !2311, !tbaa !1428
  %arrayidx904 = getelementptr inbounds %struct.StatParameters* %477, i64 0, i32 23, i64 2, !dbg !2311
  %478 = load i32* %arrayidx904, align 4, !dbg !2311, !tbaa !1424
  %conv905 = sitofp i32 %478 to float, !dbg !2311
  %div909 = fdiv float %conv905, %conv871, !dbg !2311
  %conv910 = fpext float %div909 to double, !dbg !2311
  %call911 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %476, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv910) #7, !dbg !2311
  %479 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2312, !tbaa !1428
  %480 = load %struct.StatParameters** @stats, align 8, !dbg !2312, !tbaa !1428
  %arrayidx913 = getelementptr inbounds %struct.StatParameters* %480, i64 0, i32 23, i64 0, !dbg !2312
  %481 = load i32* %arrayidx913, align 4, !dbg !2312, !tbaa !1424
  %conv914 = sitofp i32 %481 to float, !dbg !2312
  %div918 = fdiv float %conv914, %conv880, !dbg !2312
  %conv919 = fpext float %div918 to double, !dbg !2312
  %call920 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %479, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv919) #7, !dbg !2312
  %482 = load %struct.InputParameters** @input, align 8, !dbg !2313, !tbaa !1428
  %successive_Bframe921 = getelementptr inbounds %struct.InputParameters* %482, i64 0, i32 34, !dbg !2313
  %483 = load i32* %successive_Bframe921, align 4, !dbg !2313, !tbaa !1424
  %cmp922 = icmp ne i32 %483, 0, !dbg !2313
  %484 = load i32* @Bframe_ctr, align 4, !dbg !2313, !tbaa !1424
  %cmp925 = icmp ne i32 %484, 0, !dbg !2313
  %or.cond1480 = and i1 %cmp922, %cmp925, !dbg !2313
  %485 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2314, !tbaa !1428
  br i1 %or.cond1480, label %if.then927, label %if.else935, !dbg !2313

if.then927:                                       ; preds = %if.end900
  %486 = load %struct.StatParameters** @stats, align 8, !dbg !2314, !tbaa !1428
  %arrayidx929 = getelementptr inbounds %struct.StatParameters* %486, i64 0, i32 23, i64 1, !dbg !2314
  %487 = load i32* %arrayidx929, align 4, !dbg !2314, !tbaa !1424
  %conv930 = sitofp i32 %487 to float, !dbg !2314
  %conv931 = sitofp i32 %484 to float, !dbg !2314
  %div932 = fdiv float %conv930, %conv931, !dbg !2314
  %conv933 = fpext float %div932 to double, !dbg !2314
  %call934 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %485, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv933) #7, !dbg !2314
  br label %if.end937, !dbg !2314

if.else935:                                       ; preds = %if.end900
  %call936 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %485, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double 0.000000e+00) #7, !dbg !2315
  br label %if.end937

if.end937:                                        ; preds = %if.else935, %if.then927
  %488 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2316, !tbaa !1428
  %fputc1535 = call i32 @fputc(i32 10, %struct._IO_FILE* %488), !dbg !2316
  %489 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2317, !tbaa !1428
  %490 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str151, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %489), !dbg !2317
  %491 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2318, !tbaa !1428
  %492 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str152, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %491), !dbg !2318
  %493 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2319, !tbaa !1428
  %conv942 = fpext float %div759 to double, !dbg !2319
  %call943 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %493, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv942) #7, !dbg !2319
  %494 = load %struct.InputParameters** @input, align 8, !dbg !2320, !tbaa !1428
  %successive_Bframe944 = getelementptr inbounds %struct.InputParameters* %494, i64 0, i32 34, !dbg !2320
  %495 = load i32* %successive_Bframe944, align 4, !dbg !2320, !tbaa !1424
  %cmp945 = icmp ne i32 %495, 0, !dbg !2320
  %496 = load i32* @Bframe_ctr, align 4, !dbg !2320, !tbaa !1424
  %cmp948 = icmp ne i32 %496, 0, !dbg !2320
  %or.cond1481 = and i1 %cmp945, %cmp948, !dbg !2320
  %497 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2321, !tbaa !1428
  br i1 %or.cond1481, label %if.then950, label %if.else954, !dbg !2320

if.then950:                                       ; preds = %if.end937
  %call953 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %497, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %mean_motion_info_bit_use.sroa.1.0) #7, !dbg !2321
  br label %if.end956, !dbg !2321

if.else954:                                       ; preds = %if.end937
  %call955 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %497, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double 0.000000e+00) #7, !dbg !2322
  br label %if.end956

if.end956:                                        ; preds = %if.else954, %if.then950
  %498 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2323, !tbaa !1428
  %fputc1538 = call i32 @fputc(i32 10, %struct._IO_FILE* %498), !dbg !2323
  %499 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2324, !tbaa !1428
  %500 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str153, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %499), !dbg !2324
  %501 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2325, !tbaa !1428
  %502 = load %struct.StatParameters** @stats, align 8, !dbg !2325, !tbaa !1428
  %arrayidx960 = getelementptr inbounds %struct.StatParameters* %502, i64 0, i32 25, i64 2, !dbg !2325
  %503 = load i32* %arrayidx960, align 4, !dbg !2325, !tbaa !1424
  %conv961 = sitofp i32 %503 to float, !dbg !2325
  %div965 = fdiv float %conv961, %conv871, !dbg !2325
  %conv966 = fpext float %div965 to double, !dbg !2325
  %call967 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %501, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv966) #7, !dbg !2325
  %504 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2326, !tbaa !1428
  %505 = load %struct.StatParameters** @stats, align 8, !dbg !2326, !tbaa !1428
  %arrayidx969 = getelementptr inbounds %struct.StatParameters* %505, i64 0, i32 25, i64 0, !dbg !2326
  %506 = load i32* %arrayidx969, align 4, !dbg !2326, !tbaa !1424
  %conv970 = sitofp i32 %506 to float, !dbg !2326
  %div974 = fdiv float %conv970, %conv880, !dbg !2326
  %conv975 = fpext float %div974 to double, !dbg !2326
  %call976 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %504, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv975) #7, !dbg !2326
  %507 = load %struct.InputParameters** @input, align 8, !dbg !2327, !tbaa !1428
  %successive_Bframe977 = getelementptr inbounds %struct.InputParameters* %507, i64 0, i32 34, !dbg !2327
  %508 = load i32* %successive_Bframe977, align 4, !dbg !2327, !tbaa !1424
  %cmp978 = icmp eq i32 %508, 0, !dbg !2327
  br i1 %cmp978, label %if.else995, label %land.lhs.true980, !dbg !2327

land.lhs.true980:                                 ; preds = %if.end956
  %509 = load i32* %arrayidx5, align 8, !dbg !2327, !tbaa !1424
  %cmp983 = icmp eq i32 %509, 0, !dbg !2327
  br i1 %cmp983, label %if.else995, label %if.then985, !dbg !2327

if.then985:                                       ; preds = %land.lhs.true980
  %510 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2328, !tbaa !1428
  %511 = load %struct.StatParameters** @stats, align 8, !dbg !2328, !tbaa !1428
  %arrayidx987 = getelementptr inbounds %struct.StatParameters* %511, i64 0, i32 25, i64 1, !dbg !2328
  %512 = load i32* %arrayidx987, align 4, !dbg !2328, !tbaa !1424
  %conv988 = sitofp i32 %512 to float, !dbg !2328
  %conv991 = sitofp i32 %509 to float, !dbg !2328
  %div992 = fdiv float %conv988, %conv991, !dbg !2328
  %conv993 = fpext float %div992 to double, !dbg !2328
  %call994 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %510, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv993) #7, !dbg !2328
  br label %if.end997, !dbg !2328

if.else995:                                       ; preds = %land.lhs.true980, %if.end956
  %513 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2329, !tbaa !1428
  %call996 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %513, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double 0.000000e+00) #7, !dbg !2329
  br label %if.end997

if.end997:                                        ; preds = %if.else995, %if.then985
  %514 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2330, !tbaa !1428
  %fputc1541 = call i32 @fputc(i32 10, %struct._IO_FILE* %514), !dbg !2330
  %515 = load %struct.InputParameters** @input, align 8, !dbg !2331, !tbaa !1428
  %successive_Bframe999 = getelementptr inbounds %struct.InputParameters* %515, i64 0, i32 34, !dbg !2331
  %516 = load i32* %successive_Bframe999, align 4, !dbg !2331, !tbaa !1424
  %cmp1000 = icmp ne i32 %516, 0, !dbg !2331
  %517 = load i32* @Bframe_ctr, align 4, !dbg !2331, !tbaa !1424
  %cmp1003 = icmp ne i32 %517, 0, !dbg !2331
  %or.cond1482 = and i1 %cmp1000, %cmp1003, !dbg !2331
  %518 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2332, !tbaa !1428
  %519 = load %struct.StatParameters** @stats, align 8, !dbg !2332, !tbaa !1428
  %arrayidx1007 = getelementptr inbounds %struct.StatParameters* %519, i64 0, i32 26, i64 2, !dbg !2332
  %520 = load i32* %arrayidx1007, align 4, !dbg !2332, !tbaa !1424
  %conv1008 = sitofp i32 %520 to float, !dbg !2332
  %div1012 = fdiv float %conv1008, %conv871, !dbg !2332
  %conv1013 = fpext float %div1012 to double, !dbg !2332
  %arrayidx1015 = getelementptr inbounds %struct.StatParameters* %519, i64 0, i32 26, i64 0, !dbg !2332
  %521 = load i32* %arrayidx1015, align 4, !dbg !2332, !tbaa !1424
  %conv1016 = sitofp i32 %521 to float, !dbg !2332
  %div1020 = fdiv float %conv1016, %conv880, !dbg !2332
  %conv1021 = fpext float %div1020 to double, !dbg !2332
  br i1 %or.cond1482, label %if.then1005, label %if.else1029, !dbg !2331

if.then1005:                                      ; preds = %if.end997
  %arrayidx1023 = getelementptr inbounds %struct.StatParameters* %519, i64 0, i32 26, i64 1, !dbg !2332
  %522 = load i32* %arrayidx1023, align 4, !dbg !2332, !tbaa !1424
  %conv1024 = sitofp i32 %522 to float, !dbg !2332
  %conv1025 = sitofp i32 %517 to float, !dbg !2332
  %div1026 = fdiv float %conv1024, %conv1025, !dbg !2332
  %conv1027 = fpext float %div1026 to double, !dbg !2332
  %call1028 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %518, i8* getelementptr inbounds ([64 x i8]* @.str154, i64 0, i64 0), double %conv1013, double %conv1021, double %conv1027) #7, !dbg !2332
  br label %if.end1047, !dbg !2332

if.else1029:                                      ; preds = %if.end997
  %call1046 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %518, i8* getelementptr inbounds ([64 x i8]* @.str154, i64 0, i64 0), double %conv1013, double %conv1021, double 0.000000e+00) #7, !dbg !2333
  br label %if.end1047

if.end1047:                                       ; preds = %if.else1029, %if.then1005
  %523 = load %struct.InputParameters** @input, align 8, !dbg !2334, !tbaa !1428
  %successive_Bframe1048 = getelementptr inbounds %struct.InputParameters* %523, i64 0, i32 34, !dbg !2334
  %524 = load i32* %successive_Bframe1048, align 4, !dbg !2334, !tbaa !1424
  %cmp1049 = icmp ne i32 %524, 0, !dbg !2334
  %525 = load i32* @Bframe_ctr, align 4, !dbg !2334, !tbaa !1424
  %cmp1052 = icmp ne i32 %525, 0, !dbg !2334
  %or.cond1483 = and i1 %cmp1049, %cmp1052, !dbg !2334
  %526 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2335, !tbaa !1428
  %527 = load %struct.StatParameters** @stats, align 8, !dbg !2335, !tbaa !1428
  %arrayidx1056 = getelementptr inbounds %struct.StatParameters* %527, i64 0, i32 27, i64 2, !dbg !2335
  %528 = load i32* %arrayidx1056, align 4, !dbg !2335, !tbaa !1424
  %conv1057 = sitofp i32 %528 to float, !dbg !2335
  %div1061 = fdiv float %conv1057, %conv871, !dbg !2335
  %conv1062 = fpext float %div1061 to double, !dbg !2335
  %arrayidx1064 = getelementptr inbounds %struct.StatParameters* %527, i64 0, i32 27, i64 0, !dbg !2335
  %529 = load i32* %arrayidx1064, align 4, !dbg !2335, !tbaa !1424
  %conv1065 = sitofp i32 %529 to float, !dbg !2335
  %div1069 = fdiv float %conv1065, %conv880, !dbg !2335
  %conv1070 = fpext float %div1069 to double, !dbg !2335
  br i1 %or.cond1483, label %if.then1054, label %if.else1078, !dbg !2334

if.then1054:                                      ; preds = %if.end1047
  %arrayidx1072 = getelementptr inbounds %struct.StatParameters* %527, i64 0, i32 27, i64 1, !dbg !2335
  %530 = load i32* %arrayidx1072, align 4, !dbg !2335, !tbaa !1424
  %conv1073 = sitofp i32 %530 to float, !dbg !2335
  %conv1074 = sitofp i32 %525 to float, !dbg !2335
  %div1075 = fdiv float %conv1073, %conv1074, !dbg !2335
  %conv1076 = fpext float %div1075 to double, !dbg !2335
  %call1077 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %526, i8* getelementptr inbounds ([64 x i8]* @.str155, i64 0, i64 0), double %conv1062, double %conv1070, double %conv1076) #7, !dbg !2335
  br label %if.end1096, !dbg !2335

if.else1078:                                      ; preds = %if.end1047
  %call1095 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %526, i8* getelementptr inbounds ([64 x i8]* @.str155, i64 0, i64 0), double %conv1062, double %conv1070, double 0.000000e+00) #7, !dbg !2336
  br label %if.end1096

if.end1096:                                       ; preds = %if.else1078, %if.then1054
  %531 = load %struct.InputParameters** @input, align 8, !dbg !2337, !tbaa !1428
  %successive_Bframe1097 = getelementptr inbounds %struct.InputParameters* %531, i64 0, i32 34, !dbg !2337
  %532 = load i32* %successive_Bframe1097, align 4, !dbg !2337, !tbaa !1424
  %cmp1098 = icmp ne i32 %532, 0, !dbg !2337
  %533 = load i32* @Bframe_ctr, align 4, !dbg !2337, !tbaa !1424
  %cmp1101 = icmp ne i32 %533, 0, !dbg !2337
  %or.cond1484 = and i1 %cmp1098, %cmp1101, !dbg !2337
  %534 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2338, !tbaa !1428
  %535 = load %struct.StatParameters** @stats, align 8, !dbg !2338, !tbaa !1428
  %arrayidx1105 = getelementptr inbounds %struct.StatParameters* %535, i64 0, i32 28, i64 2, !dbg !2338
  %536 = load i32* %arrayidx1105, align 4, !dbg !2338, !tbaa !1424
  %conv1106 = sitofp i32 %536 to float, !dbg !2338
  %div1110 = fdiv float %conv1106, %conv871, !dbg !2338
  %conv1111 = fpext float %div1110 to double, !dbg !2338
  %arrayidx1113 = getelementptr inbounds %struct.StatParameters* %535, i64 0, i32 28, i64 0, !dbg !2338
  %537 = load i32* %arrayidx1113, align 4, !dbg !2338, !tbaa !1424
  %conv1114 = sitofp i32 %537 to float, !dbg !2338
  %div1118 = fdiv float %conv1114, %conv880, !dbg !2338
  %conv1119 = fpext float %div1118 to double, !dbg !2338
  br i1 %or.cond1484, label %if.then1103, label %if.else1127, !dbg !2337

if.then1103:                                      ; preds = %if.end1096
  %arrayidx1121 = getelementptr inbounds %struct.StatParameters* %535, i64 0, i32 28, i64 1, !dbg !2338
  %538 = load i32* %arrayidx1121, align 4, !dbg !2338, !tbaa !1424
  %conv1122 = sitofp i32 %538 to float, !dbg !2338
  %conv1123 = sitofp i32 %533 to float, !dbg !2338
  %div1124 = fdiv float %conv1122, %conv1123, !dbg !2338
  %conv1125 = fpext float %div1124 to double, !dbg !2338
  %call1126 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %534, i8* getelementptr inbounds ([64 x i8]* @.str156, i64 0, i64 0), double %conv1111, double %conv1119, double %conv1125) #7, !dbg !2338
  br label %if.end1145, !dbg !2338

if.else1127:                                      ; preds = %if.end1096
  %call1144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %534, i8* getelementptr inbounds ([64 x i8]* @.str156, i64 0, i64 0), double %conv1111, double %conv1119, double 0.000000e+00) #7, !dbg !2339
  br label %if.end1145

if.end1145:                                       ; preds = %if.else1127, %if.then1103
  %539 = load %struct.InputParameters** @input, align 8, !dbg !2340, !tbaa !1428
  %successive_Bframe1146 = getelementptr inbounds %struct.InputParameters* %539, i64 0, i32 34, !dbg !2340
  %540 = load i32* %successive_Bframe1146, align 4, !dbg !2340, !tbaa !1424
  %cmp1147 = icmp ne i32 %540, 0, !dbg !2340
  %541 = load i32* @Bframe_ctr, align 4, !dbg !2340, !tbaa !1424
  %cmp1150 = icmp ne i32 %541, 0, !dbg !2340
  %or.cond1485 = and i1 %cmp1147, %cmp1150, !dbg !2340
  %542 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2341, !tbaa !1428
  %543 = load %struct.StatParameters** @stats, align 8, !dbg !2341, !tbaa !1428
  %arrayidx1154 = getelementptr inbounds %struct.StatParameters* %543, i64 0, i32 22, i64 2, !dbg !2341
  %544 = load i32* %arrayidx1154, align 4, !dbg !2341, !tbaa !1424
  %conv1155 = sitofp i32 %544 to float, !dbg !2341
  %div1159 = fdiv float %conv1155, %conv871, !dbg !2341
  %conv1160 = fpext float %div1159 to double, !dbg !2341
  %arrayidx1162 = getelementptr inbounds %struct.StatParameters* %543, i64 0, i32 22, i64 0, !dbg !2341
  %545 = load i32* %arrayidx1162, align 4, !dbg !2341, !tbaa !1424
  %conv1163 = sitofp i32 %545 to float, !dbg !2341
  %div1167 = fdiv float %conv1163, %conv880, !dbg !2341
  %conv1168 = fpext float %div1167 to double, !dbg !2341
  br i1 %or.cond1485, label %if.then1152, label %if.else1176, !dbg !2340

if.then1152:                                      ; preds = %if.end1145
  %arrayidx1170 = getelementptr inbounds %struct.StatParameters* %543, i64 0, i32 22, i64 1, !dbg !2341
  %546 = load i32* %arrayidx1170, align 4, !dbg !2341, !tbaa !1424
  %conv1171 = sitofp i32 %546 to float, !dbg !2341
  %conv1172 = sitofp i32 %541 to float, !dbg !2341
  %div1173 = fdiv float %conv1171, %conv1172, !dbg !2341
  %conv1174 = fpext float %div1173 to double, !dbg !2341
  %call1175 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %542, i8* getelementptr inbounds ([64 x i8]* @.str157, i64 0, i64 0), double %conv1160, double %conv1168, double %conv1174) #7, !dbg !2341
  br label %if.end1194, !dbg !2341

if.else1176:                                      ; preds = %if.end1145
  %call1193 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %542, i8* getelementptr inbounds ([64 x i8]* @.str157, i64 0, i64 0), double %conv1160, double %conv1168, double 0.000000e+00) #7, !dbg !2342
  br label %if.end1194

if.end1194:                                       ; preds = %if.else1176, %if.then1152
  %547 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2343, !tbaa !1428
  %548 = call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str147, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %547), !dbg !2343
  %549 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2344, !tbaa !1428
  %550 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str158, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %549), !dbg !2344
  %551 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2345, !tbaa !1428
  %conv1199 = sitofp i32 %470 to float, !dbg !2345
  %div1203 = fdiv float %conv1199, %conv871, !dbg !2345
  %conv1204 = fpext float %div1203 to double, !dbg !2345
  %call1205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %551, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv1204) #7, !dbg !2345
  %552 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2346, !tbaa !1428
  %conv1208 = sitofp i32 %447 to float, !dbg !2346
  %conv1211 = sitofp i32 %445 to float, !dbg !2346
  %div1212 = fdiv float %conv1208, %conv1211, !dbg !2346
  %conv1213 = fpext float %div1212 to double, !dbg !2346
  %call1214 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv1213) #7, !dbg !2346
  %553 = load %struct.InputParameters** @input, align 8, !dbg !2347, !tbaa !1428
  %successive_Bframe1215 = getelementptr inbounds %struct.InputParameters* %553, i64 0, i32 34, !dbg !2347
  %554 = load i32* %successive_Bframe1215, align 4, !dbg !2347, !tbaa !1424
  %cmp1216 = icmp ne i32 %554, 0, !dbg !2347
  %555 = load i32* @Bframe_ctr, align 4, !dbg !2347, !tbaa !1424
  %cmp1219 = icmp ne i32 %555, 0, !dbg !2347
  %or.cond1486 = and i1 %cmp1216, %cmp1219, !dbg !2347
  %556 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2348, !tbaa !1428
  br i1 %or.cond1486, label %if.then1221, label %if.else1229, !dbg !2347

if.then1221:                                      ; preds = %if.end1194
  %arrayidx1223 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 1, i64 1, !dbg !2348
  %557 = load i32* %arrayidx1223, align 4, !dbg !2348, !tbaa !1424
  %conv1224 = sitofp i32 %557 to float, !dbg !2348
  %conv1225 = sitofp i32 %555 to float, !dbg !2348
  %div1226 = fdiv float %conv1224, %conv1225, !dbg !2348
  %conv1227 = fpext float %div1226 to double, !dbg !2348
  %call1228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %556, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double %conv1227) #7, !dbg !2348
  br label %if.end1231, !dbg !2348

if.else1229:                                      ; preds = %if.end1194
  %call1230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %556, i8* getelementptr inbounds ([14 x i8]* @.str149, i64 0, i64 0), double 0.000000e+00) #7, !dbg !2349
  br label %if.end1231

if.end1231:                                       ; preds = %if.else1229, %if.then1221
  %558 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2350, !tbaa !1428
  %fputc1544 = call i32 @fputc(i32 10, %struct._IO_FILE* %558), !dbg !2350
  %559 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2351, !tbaa !1428
  %560 = call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str147, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %559), !dbg !2351
  %561 = load %struct._IO_FILE** @p_stat, align 8, !dbg !2352, !tbaa !1428
  %call1234 = call i32 @fclose(%struct._IO_FILE* %561) #7, !dbg !2352
  %call1235 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !2353
  store %struct._IO_FILE* %call1235, %struct._IO_FILE** @p_log, align 8, !dbg !2353, !tbaa !1428
  %cmp1236 = icmp eq %struct._IO_FILE* %call1235, null, !dbg !2353
  br i1 %cmp1236, label %if.then1238, label %if.else1251, !dbg !2353

if.then1238:                                      ; preds = %if.end1231
  %call1239 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !2354
  store %struct._IO_FILE* %call1239, %struct._IO_FILE** @p_log, align 8, !dbg !2354, !tbaa !1428
  %cmp1240 = icmp eq %struct._IO_FILE* %call1239, null, !dbg !2354
  br i1 %cmp1240, label %if.then1242, label %if.else1244, !dbg !2354

if.then1242:                                      ; preds = %if.then1238
  %call1243 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str159, i64 0, i64 0)) #7, !dbg !2356
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #7, !dbg !2358
  br label %if.end1259, !dbg !2359

if.else1244:                                      ; preds = %if.then1238
  %562 = call i64 @fwrite(i8* getelementptr inbounds ([275 x i8]* @.str160, i64 0, i64 0), i64 274, i64 1, %struct._IO_FILE* %call1239), !dbg !2360
  %563 = load %struct._IO_FILE** @p_log, align 8, !dbg !2362, !tbaa !1428
  %564 = call i64 @fwrite(i8* getelementptr inbounds ([275 x i8]* @.str161, i64 0, i64 0), i64 274, i64 1, %struct._IO_FILE* %563), !dbg !2362
  %565 = load %struct._IO_FILE** @p_log, align 8, !dbg !2363, !tbaa !1428
  %566 = call i64 @fwrite(i8* getelementptr inbounds ([275 x i8]* @.str160, i64 0, i64 0), i64 274, i64 1, %struct._IO_FILE* %565), !dbg !2363
  %567 = load %struct._IO_FILE** @p_log, align 8, !dbg !2364, !tbaa !1428
  %568 = call i64 @fwrite(i8* getelementptr inbounds ([275 x i8]* @.str162, i64 0, i64 0), i64 274, i64 1, %struct._IO_FILE* %567), !dbg !2364
  %569 = load %struct._IO_FILE** @p_log, align 8, !dbg !2365, !tbaa !1428
  %570 = call i64 @fwrite(i8* getelementptr inbounds ([275 x i8]* @.str160, i64 0, i64 0), i64 274, i64 1, %struct._IO_FILE* %569), !dbg !2365
  br label %if.end1259

if.else1251:                                      ; preds = %if.end1231
  %call1252 = call i32 @fclose(%struct._IO_FILE* %call1235) #7, !dbg !2366
  %call1253 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !2368
  store %struct._IO_FILE* %call1253, %struct._IO_FILE** @p_log, align 8, !dbg !2368, !tbaa !1428
  %cmp1254 = icmp eq %struct._IO_FILE* %call1253, null, !dbg !2368
  br i1 %cmp1254, label %if.then1256, label %if.end1259, !dbg !2368

if.then1256:                                      ; preds = %if.else1251
  %call1257 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str159, i64 0, i64 0)) #7, !dbg !2369
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #7, !dbg !2371
  br label %if.end1259, !dbg !2372

if.end1259:                                       ; preds = %if.else1251, %if.then1256, %if.then1242, %if.else1244
  %571 = load %struct._IO_FILE** @p_log, align 8, !dbg !2373, !tbaa !1428
  %call1260 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %571, i8* getelementptr inbounds ([9 x i8]* @.str163, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !2373
  %call1261 = call i64 @time(i64* null) #7, !dbg !2374
  call void @llvm.dbg.value(metadata !{i64 %call1261}, i64 0, metadata !367), !dbg !2374
  store i64 %call1261, i64* %now, align 8, !dbg !2374, !tbaa !1979
  %call1262 = call i64 @time(i64* %now) #7, !dbg !2375
  %call1263 = call %struct.tm* @localtime(i64* %now) #7, !dbg !2376
  call void @llvm.dbg.value(metadata !{%struct.tm* %call1263}, i64 0, metadata !368), !dbg !2376
  %call1265 = call i64 @strftime(i8* %1, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), %struct.tm* %call1263) #7, !dbg !2377
  %572 = load %struct._IO_FILE** @p_log, align 8, !dbg !2378, !tbaa !1428
  %call1267 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* %1) #7, !dbg !2378
  %call1269 = call i64 @strftime(i8* %1, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), %struct.tm* %call1263) #7, !dbg !2379
  %573 = load %struct._IO_FILE** @p_log, align 8, !dbg !2380, !tbaa !1428
  %call1271 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %573, i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* %1) #7, !dbg !2380
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !360), !dbg !2381
  %.pre1569 = load %struct.InputParameters** @input, align 8, !dbg !2383, !tbaa !1428
  br label %for.body1275, !dbg !2381

for.body1275:                                     ; preds = %for.body1275, %if.end1259
  %indvars.iv = phi i64 [ 0, %if.end1259 ], [ %indvars.iv.next, %for.body1275 ]
  %arraydecay1277 = getelementptr inbounds %struct.InputParameters* %.pre1569, i64 0, i32 26, i64 0, !dbg !2383
  %call1278 = call i64 @strlen(i8* %arraydecay1277) #9, !dbg !2383
  %conv1279 = trunc i64 %call1278 to i32, !dbg !2383
  %sub1280 = add nsw i32 %conv1279, -20, !dbg !2383
  %cmp1281 = icmp slt i32 %sub1280, 0, !dbg !2383
  %.sub1280 = select i1 %cmp1281, i32 0, i32 %sub1280, !dbg !2383
  %574 = trunc i64 %indvars.iv to i32, !dbg !2383
  %add1292 = add nsw i32 %.sub1280, %574, !dbg !2383
  %idxprom1293 = sext i32 %add1292 to i64, !dbg !2383
  %arrayidx1295 = getelementptr inbounds %struct.InputParameters* %.pre1569, i64 0, i32 26, i64 %idxprom1293, !dbg !2383
  %575 = load i8* %arrayidx1295, align 1, !dbg !2383, !tbaa !1425
  %arrayidx1297 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 %indvars.iv, !dbg !2383
  store i8 %575, i8* %arrayidx1297, align 1, !dbg !2383, !tbaa !1425
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2381
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2381
  %exitcond = icmp eq i32 %lftr.wideiv, 20, !dbg !2381
  br i1 %exitcond, label %for.end1300, label %for.body1275, !dbg !2381

for.end1300:                                      ; preds = %for.body1275
  %576 = load %struct._IO_FILE** @p_log, align 8, !dbg !2384, !tbaa !1428
  %arraydecay1301 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 0, !dbg !2384
  %call1302 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %576, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* %arraydecay1301) #7, !dbg !2384
  %577 = load %struct._IO_FILE** @p_log, align 8, !dbg !2385, !tbaa !1428
  %578 = load %struct.InputParameters** @input, align 8, !dbg !2385, !tbaa !1428
  %no_frames1303 = getelementptr inbounds %struct.InputParameters* %578, i64 0, i32 2, !dbg !2385
  %579 = load i32* %no_frames1303, align 4, !dbg !2385, !tbaa !1424
  %call1304 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %577, i8* getelementptr inbounds ([6 x i8]* @.str164, i64 0, i64 0), i32 %579) #7, !dbg !2385
  %580 = load %struct._IO_FILE** @p_log, align 8, !dbg !2386, !tbaa !1428
  %581 = load %struct.InputParameters** @input, align 8, !dbg !2386, !tbaa !1428
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %581, i64 0, i32 91, !dbg !2386
  %582 = load i32* %PicInterlace, align 4, !dbg !2386, !tbaa !1424
  %MbInterlace1305 = getelementptr inbounds %struct.InputParameters* %581, i64 0, i32 92, !dbg !2386
  %583 = load i32* %MbInterlace1305, align 4, !dbg !2386, !tbaa !1424
  %call1306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %580, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %582, i32 %583) #7, !dbg !2386
  %584 = load %struct._IO_FILE** @p_log, align 8, !dbg !2387, !tbaa !1428
  %585 = load %struct.InputParameters** @input, align 8, !dbg !2387, !tbaa !1428
  %qp01307 = getelementptr inbounds %struct.InputParameters* %585, i64 0, i32 3, !dbg !2387
  %586 = load i32* %qp01307, align 4, !dbg !2387, !tbaa !1424
  %call1308 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %584, i8* getelementptr inbounds ([7 x i8]* @.str165, i64 0, i64 0), i32 %586) #7, !dbg !2387
  %587 = load %struct._IO_FILE** @p_log, align 8, !dbg !2388, !tbaa !1428
  %588 = load %struct.InputParameters** @input, align 8, !dbg !2388, !tbaa !1428
  %qpN1309 = getelementptr inbounds %struct.InputParameters* %588, i64 0, i32 4, !dbg !2388
  %589 = load i32* %qpN1309, align 4, !dbg !2388, !tbaa !1424
  %call1310 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %587, i8* getelementptr inbounds ([7 x i8]* @.str165, i64 0, i64 0), i32 %589) #7, !dbg !2388
  %590 = load %struct._IO_FILE** @p_log, align 8, !dbg !2389, !tbaa !1428
  %591 = load %struct.InputParameters** @input, align 8, !dbg !2389, !tbaa !1428
  %qpB1311 = getelementptr inbounds %struct.InputParameters* %591, i64 0, i32 35, !dbg !2389
  %592 = load i32* %qpB1311, align 4, !dbg !2389, !tbaa !1424
  %call1312 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %590, i8* getelementptr inbounds ([7 x i8]* @.str165, i64 0, i64 0), i32 %592) #7, !dbg !2389
  %593 = load %struct._IO_FILE** @p_log, align 8, !dbg !2390, !tbaa !1428
  %594 = load %struct.InputParameters** @input, align 8, !dbg !2390, !tbaa !1428
  %img_width1313 = getelementptr inbounds %struct.InputParameters* %594, i64 0, i32 16, !dbg !2390
  %595 = load i32* %img_width1313, align 4, !dbg !2390, !tbaa !1424
  %img_height1314 = getelementptr inbounds %struct.InputParameters* %594, i64 0, i32 17, !dbg !2390
  %596 = load i32* %img_height1314, align 4, !dbg !2390, !tbaa !1424
  %call1315 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %593, i8* getelementptr inbounds ([10 x i8]* @.str166, i64 0, i64 0), i32 %595, i32 %596) #7, !dbg !2390
  %597 = load %struct._IO_FILE** @p_log, align 8, !dbg !2391, !tbaa !1428
  %598 = load %struct.InputParameters** @input, align 8, !dbg !2391, !tbaa !1428
  %intra_period = getelementptr inbounds %struct.InputParameters* %598, i64 0, i32 31, !dbg !2391
  %599 = load i32* %intra_period, align 4, !dbg !2391, !tbaa !1424
  %call1316 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %597, i8* getelementptr inbounds ([9 x i8]* @.str167, i64 0, i64 0), i32 %599) #7, !dbg !2391
  %600 = load %struct._IO_FILE** @p_log, align 8, !dbg !2392, !tbaa !1428
  %601 = load %struct.InputParameters** @input, align 8, !dbg !2392, !tbaa !1428
  %successive_Bframe1317 = getelementptr inbounds %struct.InputParameters* %601, i64 0, i32 34, !dbg !2392
  %602 = load i32* %successive_Bframe1317, align 4, !dbg !2392, !tbaa !1424
  %call1318 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %600, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 %602) #7, !dbg !2392
  %603 = load %struct.InputParameters** @input, align 8, !dbg !2393, !tbaa !1428
  %hadamard1319 = getelementptr inbounds %struct.InputParameters* %603, i64 0, i32 6, !dbg !2393
  %604 = load i32* %hadamard1319, align 4, !dbg !2393, !tbaa !1424
  %cmp1320 = icmp eq i32 %604, 1, !dbg !2393
  %605 = load %struct._IO_FILE** @p_log, align 8, !dbg !2394, !tbaa !1428
  br i1 %cmp1320, label %if.then1322, label %if.else1324, !dbg !2393

if.then1322:                                      ; preds = %for.end1300
  %606 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str168, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %605), !dbg !2394
  br label %if.end1326, !dbg !2394

if.else1324:                                      ; preds = %for.end1300
  %607 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str169, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %605), !dbg !2395
  br label %if.end1326

if.end1326:                                       ; preds = %if.else1324, %if.then1322
  %608 = load %struct._IO_FILE** @p_log, align 8, !dbg !2396, !tbaa !1428
  %609 = load %struct.InputParameters** @input, align 8, !dbg !2396, !tbaa !1428
  %search_range1327 = getelementptr inbounds %struct.InputParameters* %609, i64 0, i32 8, !dbg !2396
  %610 = load i32* %search_range1327, align 4, !dbg !2396, !tbaa !1424
  %call1328 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %608, i8* getelementptr inbounds ([7 x i8]* @.str170, i64 0, i64 0), i32 %610) #7, !dbg !2396
  %611 = load %struct._IO_FILE** @p_log, align 8, !dbg !2397, !tbaa !1428
  %612 = load %struct.InputParameters** @input, align 8, !dbg !2397, !tbaa !1428
  %num_ref_frames1329 = getelementptr inbounds %struct.InputParameters* %612, i64 0, i32 9, !dbg !2397
  %613 = load i32* %num_ref_frames1329, align 4, !dbg !2397, !tbaa !1424
  %call1330 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([8 x i8]* @.str171, i64 0, i64 0), i32 %613) #7, !dbg !2397
  %614 = load %struct._IO_FILE** @p_log, align 8, !dbg !2398, !tbaa !1428
  %615 = load %struct.ImageParameters** @img, align 8, !dbg !2398, !tbaa !1428
  %framerate1331 = getelementptr inbounds %struct.ImageParameters* %615, i64 0, i32 12, !dbg !2398
  %616 = load float* %framerate1331, align 4, !dbg !2398, !tbaa !1688
  %617 = load %struct.InputParameters** @input, align 8, !dbg !2398, !tbaa !1428
  %successive_Bframe1332 = getelementptr inbounds %struct.InputParameters* %617, i64 0, i32 34, !dbg !2398
  %618 = load i32* %successive_Bframe1332, align 4, !dbg !2398, !tbaa !1424
  %add1333 = add nsw i32 %618, 1, !dbg !2398
  %conv1334 = sitofp i32 %add1333 to float, !dbg !2398
  %mul1335 = fmul float %616, %conv1334, !dbg !2398
  %jumpd1336 = getelementptr inbounds %struct.InputParameters* %617, i64 0, i32 5, !dbg !2398
  %619 = load i32* %jumpd1336, align 4, !dbg !2398, !tbaa !1424
  %add1337 = add nsw i32 %619, 1, !dbg !2398
  %conv1338 = sitofp i32 %add1337 to float, !dbg !2398
  %div1339 = fdiv float %mul1335, %conv1338, !dbg !2398
  %conv1340 = fpext float %div1339 to double, !dbg !2398
  %call1341 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %614, i8* getelementptr inbounds ([8 x i8]* @.str172, i64 0, i64 0), double %conv1340) #7, !dbg !2398
  %620 = load %struct.InputParameters** @input, align 8, !dbg !2399, !tbaa !1428
  %symbol_mode1342 = getelementptr inbounds %struct.InputParameters* %620, i64 0, i32 59, !dbg !2399
  %621 = load i32* %symbol_mode1342, align 4, !dbg !2399, !tbaa !1424
  %cmp1343 = icmp eq i32 %621, 0, !dbg !2399
  %622 = load %struct._IO_FILE** @p_log, align 8, !dbg !2400, !tbaa !1428
  br i1 %cmp1343, label %if.then1345, label %if.else1347, !dbg !2399

if.then1345:                                      ; preds = %if.end1326
  %623 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str173, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %622), !dbg !2400
  br label %if.end1349, !dbg !2400

if.else1347:                                      ; preds = %if.end1326
  %624 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str174, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %622), !dbg !2401
  br label %if.end1349

if.end1349:                                       ; preds = %if.else1347, %if.then1345
  %625 = load %struct._IO_FILE** @p_log, align 8, !dbg !2402, !tbaa !1428
  %626 = load %struct.InputParameters** @input, align 8, !dbg !2402, !tbaa !1428
  %rdopt1350 = getelementptr inbounds %struct.InputParameters* %626, i64 0, i32 85, !dbg !2402
  %627 = load i32* %rdopt1350, align 4, !dbg !2402, !tbaa !1424
  %call1351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %625, i8* getelementptr inbounds ([9 x i8]* @.str175, i64 0, i64 0), i32 %627) #7, !dbg !2402
  %628 = load %struct.InputParameters** @input, align 8, !dbg !2403, !tbaa !1428
  %intra_upd1352 = getelementptr inbounds %struct.InputParameters* %628, i64 0, i32 19, !dbg !2403
  %629 = load i32* %intra_upd1352, align 4, !dbg !2403, !tbaa !1424
  %cmp1353 = icmp eq i32 %629, 1, !dbg !2403
  %630 = load %struct._IO_FILE** @p_log, align 8, !dbg !2404, !tbaa !1428
  br i1 %cmp1353, label %if.then1355, label %if.else1357, !dbg !2403

if.then1355:                                      ; preds = %if.end1349
  %631 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str176, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %630), !dbg !2404
  br label %if.end1359, !dbg !2404

if.else1357:                                      ; preds = %if.end1349
  %632 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str177, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %630), !dbg !2405
  br label %if.end1359

if.end1359:                                       ; preds = %if.else1357, %if.then1355
  %633 = load %struct._IO_FILE** @p_log, align 8, !dbg !2406, !tbaa !1428
  %634 = load %struct.InputParameters** @input, align 8, !dbg !2406, !tbaa !1428
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %634, i64 0, i32 123, !dbg !2406
  %635 = load i32* %AllowTransform8x8, align 4, !dbg !2406, !tbaa !1424
  %call1360 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %633, i8* getelementptr inbounds ([8 x i8]* @.str178, i64 0, i64 0), i32 %635) #7, !dbg !2406
  %636 = load %struct._IO_FILE** @p_log, align 8, !dbg !2407, !tbaa !1428
  %637 = load %struct.SNRParameters** @snr, align 8, !dbg !2407, !tbaa !1428
  %snr_y11361 = getelementptr inbounds %struct.SNRParameters* %637, i64 0, i32 3, !dbg !2407
  %638 = load float* %snr_y11361, align 4, !dbg !2407, !tbaa !1688
  %conv1362 = fpext float %638 to double, !dbg !2407
  %call1363 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %636, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1362) #7, !dbg !2407
  %639 = load %struct._IO_FILE** @p_log, align 8, !dbg !2408, !tbaa !1428
  %640 = load %struct.SNRParameters** @snr, align 8, !dbg !2408, !tbaa !1428
  %snr_u11364 = getelementptr inbounds %struct.SNRParameters* %640, i64 0, i32 4, !dbg !2408
  %641 = load float* %snr_u11364, align 4, !dbg !2408, !tbaa !1688
  %conv1365 = fpext float %641 to double, !dbg !2408
  %call1366 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %639, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1365) #7, !dbg !2408
  %642 = load %struct._IO_FILE** @p_log, align 8, !dbg !2409, !tbaa !1428
  %643 = load %struct.SNRParameters** @snr, align 8, !dbg !2409, !tbaa !1428
  %snr_v11367 = getelementptr inbounds %struct.SNRParameters* %643, i64 0, i32 5, !dbg !2409
  %644 = load float* %snr_v11367, align 4, !dbg !2409, !tbaa !1688
  %conv1368 = fpext float %644 to double, !dbg !2409
  %call1369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %642, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1368) #7, !dbg !2409
  %645 = load %struct._IO_FILE** @p_log, align 8, !dbg !2410, !tbaa !1428
  %646 = load %struct.SNRParameters** @snr, align 8, !dbg !2410, !tbaa !1428
  %snr_ya1370 = getelementptr inbounds %struct.SNRParameters* %646, i64 0, i32 9, !dbg !2410
  %647 = load float* %snr_ya1370, align 4, !dbg !2410, !tbaa !1688
  %conv1371 = fpext float %647 to double, !dbg !2410
  %call1372 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %645, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1371) #7, !dbg !2410
  %648 = load %struct._IO_FILE** @p_log, align 8, !dbg !2411, !tbaa !1428
  %649 = load %struct.SNRParameters** @snr, align 8, !dbg !2411, !tbaa !1428
  %snr_ua1373 = getelementptr inbounds %struct.SNRParameters* %649, i64 0, i32 10, !dbg !2411
  %650 = load float* %snr_ua1373, align 4, !dbg !2411, !tbaa !1688
  %conv1374 = fpext float %650 to double, !dbg !2411
  %call1375 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %648, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1374) #7, !dbg !2411
  %651 = load %struct._IO_FILE** @p_log, align 8, !dbg !2412, !tbaa !1428
  %652 = load %struct.SNRParameters** @snr, align 8, !dbg !2412, !tbaa !1428
  %snr_va1376 = getelementptr inbounds %struct.SNRParameters* %652, i64 0, i32 11, !dbg !2412
  %653 = load float* %snr_va1376, align 4, !dbg !2412, !tbaa !1688
  %conv1377 = fpext float %653 to double, !dbg !2412
  %call1378 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %651, i8* getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), double %conv1377) #7, !dbg !2412
  %654 = load %struct._IO_FILE** @p_log, align 8, !dbg !2413, !tbaa !1428
  %655 = load %struct.StatParameters** @stats, align 8, !dbg !2413, !tbaa !1428
  %bitrate_I1379 = getelementptr inbounds %struct.StatParameters* %655, i64 0, i32 17, !dbg !2413
  %656 = load float* %bitrate_I1379, align 4, !dbg !2413, !tbaa !1688
  %conv1380 = fpext float %656 to double, !dbg !2413
  %call1381 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %654, i8* getelementptr inbounds ([7 x i8]* @.str180, i64 0, i64 0), double %conv1380) #7, !dbg !2413
  %657 = load %struct._IO_FILE** @p_log, align 8, !dbg !2414, !tbaa !1428
  %658 = load %struct.StatParameters** @stats, align 8, !dbg !2414, !tbaa !1428
  %bitrate_P1382 = getelementptr inbounds %struct.StatParameters* %658, i64 0, i32 18, !dbg !2414
  %659 = load float* %bitrate_P1382, align 4, !dbg !2414, !tbaa !1688
  %conv1383 = fpext float %659 to double, !dbg !2414
  %call1384 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %657, i8* getelementptr inbounds ([7 x i8]* @.str180, i64 0, i64 0), double %conv1383) #7, !dbg !2414
  %660 = load %struct._IO_FILE** @p_log, align 8, !dbg !2415, !tbaa !1428
  %661 = load %struct.StatParameters** @stats, align 8, !dbg !2415, !tbaa !1428
  %bitrate_B1385 = getelementptr inbounds %struct.StatParameters* %661, i64 0, i32 19, !dbg !2415
  %662 = load float* %bitrate_B1385, align 4, !dbg !2415, !tbaa !1688
  %conv1386 = fpext float %662 to double, !dbg !2415
  %call1387 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %660, i8* getelementptr inbounds ([7 x i8]* @.str180, i64 0, i64 0), double %conv1386) #7, !dbg !2415
  %663 = load %struct._IO_FILE** @p_log, align 8, !dbg !2416, !tbaa !1428
  %664 = load %struct.StatParameters** @stats, align 8, !dbg !2416, !tbaa !1428
  %bitrate1388 = getelementptr inbounds %struct.StatParameters* %664, i64 0, i32 3, !dbg !2416
  %665 = load float* %bitrate1388, align 4, !dbg !2416, !tbaa !1688
  %conv1389 = fpext float %665 to double, !dbg !2416
  %call1390 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %663, i8* getelementptr inbounds ([7 x i8]* @.str181, i64 0, i64 0), double %conv1389) #7, !dbg !2416
  %666 = load %struct._IO_FILE** @p_log, align 8, !dbg !2417, !tbaa !1428
  %667 = load i32* @tot_time, align 4, !dbg !2417, !tbaa !1424
  %call1391 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %666, i8* getelementptr inbounds ([12 x i8]* @.str182, i64 0, i64 0), i32 %667) #7, !dbg !2417
  %668 = load %struct._IO_FILE** @p_log, align 8, !dbg !2418, !tbaa !1428
  %669 = load i32* @me_tot_time, align 4, !dbg !2418, !tbaa !1424
  %call1392 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %668, i8* getelementptr inbounds ([13 x i8]* @.str183, i64 0, i64 0), i32 %669) #7, !dbg !2418
  %670 = load %struct._IO_FILE** @p_log, align 8, !dbg !2419, !tbaa !1428
  %call1393 = call i32 @fclose(%struct._IO_FILE* %670) #7, !dbg !2419
  %call1394 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8]* @.str184, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !2420
  store %struct._IO_FILE* %call1394, %struct._IO_FILE** @p_log, align 8, !dbg !2420, !tbaa !1428
  %671 = load %struct.InputParameters** @input, align 8, !dbg !2421, !tbaa !1428
  %successive_Bframe1395 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 34, !dbg !2421
  %672 = load i32* %successive_Bframe1395, align 4, !dbg !2421, !tbaa !1424
  %cmp1396 = icmp ne i32 %672, 0, !dbg !2421
  %673 = load i32* @Bframe_ctr, align 4, !dbg !2421, !tbaa !1424
  %cmp1399 = icmp ne i32 %673, 0, !dbg !2421
  %or.cond1487 = and i1 %cmp1396, %cmp1399, !dbg !2421
  %no_frames1402 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 2, !dbg !2422
  %674 = load i32* %no_frames1402, align 4, !dbg !2422, !tbaa !1424
  br i1 %or.cond1487, label %if.then1401, label %if.else1432, !dbg !2421

if.then1401:                                      ; preds = %if.end1359
  %qp01403 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 3, !dbg !2422
  %675 = load i32* %qp01403, align 4, !dbg !2422, !tbaa !1424
  %qpN1404 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 4, !dbg !2422
  %676 = load i32* %qpN1404, align 4, !dbg !2422, !tbaa !1424
  %677 = load %struct.SNRParameters** @snr, align 8, !dbg !2422, !tbaa !1428
  %snr_y11405 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 3, !dbg !2422
  %678 = load float* %snr_y11405, align 4, !dbg !2422, !tbaa !1688
  %conv1406 = fpext float %678 to double, !dbg !2422
  %snr_u11407 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 4, !dbg !2422
  %679 = load float* %snr_u11407, align 4, !dbg !2422, !tbaa !1688
  %conv1408 = fpext float %679 to double, !dbg !2422
  %snr_v11409 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 5, !dbg !2422
  %680 = load float* %snr_v11409, align 4, !dbg !2422, !tbaa !1688
  %conv1410 = fpext float %680 to double, !dbg !2422
  %681 = load %struct.StatParameters** @stats, align 8, !dbg !2422, !tbaa !1428
  %bit_ctr_I1411 = getelementptr inbounds %struct.StatParameters* %681, i64 0, i32 14, !dbg !2422
  %682 = load i32* %bit_ctr_I1411, align 4, !dbg !2422, !tbaa !1424
  %snr_ya1412 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 9, !dbg !2422
  %683 = load float* %snr_ya1412, align 4, !dbg !2422, !tbaa !1688
  %conv1413 = fpext float %683 to double, !dbg !2422
  %snr_ua1414 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 10, !dbg !2422
  %684 = load float* %snr_ua1414, align 4, !dbg !2422, !tbaa !1688
  %conv1415 = fpext float %684 to double, !dbg !2422
  %snr_va1416 = getelementptr inbounds %struct.SNRParameters* %677, i64 0, i32 11, !dbg !2422
  %685 = load float* %snr_va1416, align 4, !dbg !2422, !tbaa !1688
  %conv1417 = fpext float %685 to double, !dbg !2422
  %bit_ctr = getelementptr inbounds %struct.StatParameters* %681, i64 0, i32 4, !dbg !2422
  %686 = load i32* %bit_ctr, align 4, !dbg !2422, !tbaa !1424
  %add1419 = add nsw i32 %686, %682, !dbg !2422
  %add1421 = add nsw i32 %674, %673, !dbg !2422
  %div1422 = sdiv i32 %add1419, %add1421, !dbg !2422
  %bit_ctr_B1423 = getelementptr inbounds %struct.StatParameters* %681, i64 0, i32 16, !dbg !2422
  %687 = load i32* %bit_ctr_B1423, align 4, !dbg !2422, !tbaa !1424
  %div1424 = sdiv i32 %687, %673, !dbg !2422
  %688 = load i32* @tot_time, align 4, !dbg !2422, !tbaa !1424
  %conv1425 = sitofp i32 %688 to double, !dbg !2422
  %mul1426 = fmul double %conv1425, 1.000000e-03, !dbg !2422
  %conv1429 = sitofp i32 %add1421 to double, !dbg !2422
  %div1430 = fdiv double %mul1426, %conv1429, !dbg !2422
  %call1431 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1394, i8* getelementptr inbounds ([88 x i8]* @.str185, i64 0, i64 0), i32 %674, i32 %675, i32 %676, double %conv1406, double %conv1408, double %conv1410, i32 %682, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv1413, double %conv1415, double %conv1417, i32 %div1422, i32 %div1424, double %div1430) #7, !dbg !2422
  br label %if.end1465, !dbg !2424

if.else1432:                                      ; preds = %if.end1359
  %cmp1434 = icmp eq i32 %674, 0, !dbg !2425
  br i1 %cmp1434, label %if.end1465, label %if.then1436, !dbg !2425

if.then1436:                                      ; preds = %if.else1432
  %qp01438 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 3, !dbg !2427
  %689 = load i32* %qp01438, align 4, !dbg !2427, !tbaa !1424
  %qpN1439 = getelementptr inbounds %struct.InputParameters* %671, i64 0, i32 4, !dbg !2427
  %690 = load i32* %qpN1439, align 4, !dbg !2427, !tbaa !1424
  %691 = load %struct.SNRParameters** @snr, align 8, !dbg !2427, !tbaa !1428
  %snr_y11440 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 3, !dbg !2427
  %692 = load float* %snr_y11440, align 4, !dbg !2427, !tbaa !1688
  %conv1441 = fpext float %692 to double, !dbg !2427
  %snr_u11442 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 4, !dbg !2427
  %693 = load float* %snr_u11442, align 4, !dbg !2427, !tbaa !1688
  %conv1443 = fpext float %693 to double, !dbg !2427
  %snr_v11444 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 5, !dbg !2427
  %694 = load float* %snr_v11444, align 4, !dbg !2427, !tbaa !1688
  %conv1445 = fpext float %694 to double, !dbg !2427
  %695 = load %struct.StatParameters** @stats, align 8, !dbg !2427, !tbaa !1428
  %bit_ctr_I1446 = getelementptr inbounds %struct.StatParameters* %695, i64 0, i32 14, !dbg !2427
  %696 = load i32* %bit_ctr_I1446, align 4, !dbg !2427, !tbaa !1424
  %snr_ya1447 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 9, !dbg !2427
  %697 = load float* %snr_ya1447, align 4, !dbg !2427, !tbaa !1688
  %conv1448 = fpext float %697 to double, !dbg !2427
  %snr_ua1449 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 10, !dbg !2427
  %698 = load float* %snr_ua1449, align 4, !dbg !2427, !tbaa !1688
  %conv1450 = fpext float %698 to double, !dbg !2427
  %snr_va1451 = getelementptr inbounds %struct.SNRParameters* %691, i64 0, i32 11, !dbg !2427
  %699 = load float* %snr_va1451, align 4, !dbg !2427, !tbaa !1688
  %conv1452 = fpext float %699 to double, !dbg !2427
  %bit_ctr1454 = getelementptr inbounds %struct.StatParameters* %695, i64 0, i32 4, !dbg !2427
  %700 = load i32* %bit_ctr1454, align 4, !dbg !2427, !tbaa !1424
  %add1455 = add nsw i32 %700, %696, !dbg !2427
  %div1457 = sdiv i32 %add1455, %674, !dbg !2427
  %701 = load i32* @tot_time, align 4, !dbg !2427, !tbaa !1424
  %conv1458 = sitofp i32 %701 to double, !dbg !2427
  %mul1459 = fmul double %conv1458, 1.000000e-03, !dbg !2427
  %conv1461 = sitofp i32 %674 to double, !dbg !2427
  %div1462 = fdiv double %mul1459, %conv1461, !dbg !2427
  %call1463 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1394, i8* getelementptr inbounds ([88 x i8]* @.str185, i64 0, i64 0), i32 %674, i32 %689, i32 %690, double %conv1441, double %conv1443, double %conv1445, i32 %696, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 0, double %conv1448, double %conv1450, double %conv1452, i32 %div1457, i32 0, double %div1462) #7, !dbg !2427
  br label %if.end1465, !dbg !2427

if.end1465:                                       ; preds = %if.else1432, %if.then1436, %if.then1401
  %702 = load %struct._IO_FILE** @p_log, align 8, !dbg !2428, !tbaa !1428
  %call1466 = call i32 @fclose(%struct._IO_FILE* %702) #7, !dbg !2428
  %703 = load %struct.InputParameters** @input, align 8, !dbg !2429, !tbaa !1428
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %703, i64 0, i32 125, !dbg !2429
  %704 = load i32* %ReportFrameStats, align 4, !dbg !2429, !tbaa !1424
  %tobool1467 = icmp eq i32 %704, 0, !dbg !2429
  br i1 %tobool1467, label %if.end1478, label %if.then1468, !dbg !2429

if.then1468:                                      ; preds = %if.end1465
  %call1469 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !2430
  store %struct._IO_FILE* %call1469, %struct._IO_FILE** @p_log, align 8, !dbg !2430, !tbaa !1428
  %cmp1470 = icmp eq %struct._IO_FILE* %call1469, null, !dbg !2430
  br i1 %cmp1470, label %if.then1472, label %if.else1474, !dbg !2430

if.then1472:                                      ; preds = %if.then1468
  %call1473 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !2432
  br label %if.end1478, !dbg !2434

if.else1474:                                      ; preds = %if.then1468
  %705 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1469), !dbg !2435
  %706 = load %struct._IO_FILE** @p_log, align 8, !dbg !2437, !tbaa !1428
  %call1476 = call i32 @fclose(%struct._IO_FILE* %706) #7, !dbg !2437
  br label %if.end1478

if.end1478:                                       ; preds = %if.end1465, %if.then1472, %if.else1474
  call void @llvm.lifetime.end(i64 1000, i8* %1) #4, !dbg !2438
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !2438
  ret void, !dbg !2438
}

; Function Attrs: nounwind optsize
declare i8* @strncat(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define void @information_init() #0 {
entry:
  %yuv_types = alloca [4 x [10 x i8]], align 16
  %0 = getelementptr inbounds [4 x [10 x i8]]* %yuv_types, i64 0, i64 0, i64 0, !dbg !2439
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !2439
  call void @llvm.dbg.declare(metadata !{[4 x [10 x i8]]* %yuv_types}, metadata !379), !dbg !2439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [10 x i8]]* @information_init.yuv_types, i64 0, i64 0, i64 0), i64 40, i32 16, i1 false), !dbg !2439
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str186, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !2440
  %1 = load %struct.InputParameters** @input, align 8, !dbg !2441, !tbaa !1428
  %arraydecay = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 26, i64 0, !dbg !2441
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str187, i64 0, i64 0), i8* %arraydecay) #7, !dbg !2441
  %2 = load %struct.InputParameters** @input, align 8, !dbg !2442, !tbaa !1428
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 27, i64 0, !dbg !2442
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str188, i64 0, i64 0), i8* %arraydecay2) #7, !dbg !2442
  %3 = load i32* @p_dec, align 4, !dbg !2443, !tbaa !1424
  %cmp = icmp eq i32 %3, -1, !dbg !2443
  br i1 %cmp, label %if.end, label %if.then, !dbg !2443

if.then:                                          ; preds = %entry
  %4 = load %struct.InputParameters** @input, align 8, !dbg !2444, !tbaa !1428
  %arraydecay4 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 28, i64 0, !dbg !2444
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str189, i64 0, i64 0), i8* %arraydecay4) #7, !dbg !2444
  br label %if.end, !dbg !2444

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !2445, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 159, !dbg !2445
  %6 = load i32* %yuv_format, align 4, !dbg !2445, !tbaa !1424
  %idxprom = sext i32 %6 to i64, !dbg !2445
  %arrayidx6 = getelementptr inbounds [4 x [10 x i8]]* %yuv_types, i64 0, i64 %idxprom, i64 0, !dbg !2445
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str190, i64 0, i64 0), i8* %arrayidx6) #7, !dbg !2445
  %7 = load %struct.InputParameters** @input, align 8, !dbg !2446, !tbaa !1428
  %no_frames = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 2, !dbg !2446
  %8 = load i32* %no_frames, align 4, !dbg !2446, !tbaa !1424
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 34, !dbg !2446
  %9 = load i32* %successive_Bframe, align 4, !dbg !2446, !tbaa !1424
  %sub = add nsw i32 %8, -1, !dbg !2446
  %mul = mul nsw i32 %9, %sub, !dbg !2446
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str191, i64 0, i64 0), i32 %8, i32 %mul) #7, !dbg !2446
  %10 = load %struct.InputParameters** @input, align 8, !dbg !2447, !tbaa !1428
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 91, !dbg !2447
  %11 = load i32* %PicInterlace, align 4, !dbg !2447, !tbaa !1424
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 92, !dbg !2447
  %12 = load i32* %MbInterlace, align 4, !dbg !2447, !tbaa !1424
  %call10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str192, i64 0, i64 0), i32 %11, i32 %12) #7, !dbg !2447
  %13 = load %struct.InputParameters** @input, align 8, !dbg !2448, !tbaa !1428
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 123, !dbg !2448
  %14 = load i32* %AllowTransform8x8, align 4, !dbg !2448, !tbaa !1424
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str193, i64 0, i64 0), i32 %14) #7, !dbg !2448
  %puts = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str203, i64 0, i64 0)), !dbg !2449
  %puts15 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str202, i64 0, i64 0)), !dbg !2450
  %puts16 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str203, i64 0, i64 0)), !dbg !2451
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !2452
  ret void, !dbg !2452
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @init_orig_buffers() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !386), !dbg !2453
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2454, !tbaa !1428
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !2454
  %1 = load i32* %height, align 4, !dbg !2454, !tbaa !1424
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !2454
  %2 = load i32* %width, align 4, !dbg !2454, !tbaa !1424
  %call = tail call i32 @get_mem2Dpel(i16*** @imgY_org_frm, i32 %1, i32 %2) #7, !dbg !2454
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !386), !dbg !2454
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !2455, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 159, !dbg !2455
  %4 = load i32* %yuv_format, align 4, !dbg !2455, !tbaa !1424
  %cmp = icmp eq i32 %4, 0, !dbg !2455
  br i1 %cmp, label %if.end, label %if.then, !dbg !2455

if.then:                                          ; preds = %entry
  %height_cr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 16, !dbg !2456
  %5 = load i32* %height_cr, align 4, !dbg !2456, !tbaa !1424
  %width_cr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 14, !dbg !2456
  %6 = load i32* %width_cr, align 4, !dbg !2456, !tbaa !1424
  %call1 = tail call i32 @get_mem3Dpel(i16**** @imgUV_org_frm, i32 2, i32 %5, i32 %6) #7, !dbg !2456
  %add2 = add nsw i32 %call1, %call, !dbg !2456
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !386), !dbg !2456
  br label %if.end, !dbg !2456

if.end:                                           ; preds = %entry, %if.then
  %memory_size.0 = phi i32 [ %add2, %if.then ], [ %call, %entry ]
  %7 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2457, !tbaa !1428
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %7, i64 0, i32 25, !dbg !2457
  %8 = load i32* %frame_mbs_only_flag, align 4, !dbg !2457, !tbaa !1425
  %tobool = icmp eq i32 %8, 0, !dbg !2457
  br i1 %tobool, label %if.then3, label %if.end34, !dbg !2457

if.then3:                                         ; preds = %if.end
  %9 = load i16*** @imgY_org_frm, align 8, !dbg !2458, !tbaa !1428
  %10 = load %struct.ImageParameters** @img, align 8, !dbg !2458, !tbaa !1428
  %height4 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 15, !dbg !2458
  %11 = load i32* %height4, align 4, !dbg !2458, !tbaa !1424
  %width5 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 13, !dbg !2458
  %12 = load i32* %width5, align 4, !dbg !2458, !tbaa !1424
  %call6 = tail call i32 @init_top_bot_planes(i16** %9, i32 %11, i32 %12, i16*** @imgY_org_top, i16*** @imgY_org_bot) #7, !dbg !2458
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !2460, !tbaa !1428
  %yuv_format7 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 159, !dbg !2460
  %14 = load i32* %yuv_format7, align 4, !dbg !2460, !tbaa !1424
  %cmp8 = icmp eq i32 %14, 0, !dbg !2460
  br i1 %cmp8, label %if.end34, label %if.then9, !dbg !2460

if.then9:                                         ; preds = %if.then3
  %call10 = tail call noalias i8* @calloc(i64 2, i64 8) #7, !dbg !2461
  %15 = bitcast i8* %call10 to i16***, !dbg !2461
  store i16*** %15, i16**** @imgUV_org_top, align 8, !dbg !2461, !tbaa !1428
  %cmp11 = icmp eq i8* %call10, null, !dbg !2461
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2461

if.then12:                                        ; preds = %if.then9
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str195, i64 0, i64 0)) #7, !dbg !2463
  br label %if.end13, !dbg !2463

if.end13:                                         ; preds = %if.then12, %if.then9
  %call14 = tail call noalias i8* @calloc(i64 2, i64 8) #7, !dbg !2464
  %16 = bitcast i8* %call14 to i16***, !dbg !2464
  store i16*** %16, i16**** @imgUV_org_bot, align 8, !dbg !2464, !tbaa !1428
  %cmp15 = icmp eq i8* %call14, null, !dbg !2464
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2464

if.then16:                                        ; preds = %if.end13
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str196, i64 0, i64 0)) #7, !dbg !2465
  %.pre = load i16**** @imgUV_org_bot, align 8, !dbg !2466, !tbaa !1428
  br label %if.end17, !dbg !2465

if.end17:                                         ; preds = %if.end13, %if.then16
  %17 = phi i16*** [ %.pre, %if.then16 ], [ %16, %if.end13 ]
  %add18 = add i32 %memory_size.0, 32, !dbg !2467
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !386), !dbg !2467
  %18 = load i16**** @imgUV_org_frm, align 8, !dbg !2466, !tbaa !1428
  %19 = load i16*** %18, align 8, !dbg !2466, !tbaa !1428
  %20 = load %struct.ImageParameters** @img, align 8, !dbg !2466, !tbaa !1428
  %height_cr20 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 16, !dbg !2466
  %21 = load i32* %height_cr20, align 4, !dbg !2466, !tbaa !1424
  %width_cr21 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 14, !dbg !2466
  %22 = load i32* %width_cr21, align 4, !dbg !2466, !tbaa !1424
  %23 = load i16**** @imgUV_org_top, align 8, !dbg !2466, !tbaa !1428
  %call24 = tail call i32 @init_top_bot_planes(i16** %19, i32 %21, i32 %22, i16*** %23, i16*** %17) #7, !dbg !2466
  %add25 = add nsw i32 %add18, %call24, !dbg !2466
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !386), !dbg !2466
  %24 = load i16**** @imgUV_org_frm, align 8, !dbg !2468, !tbaa !1428
  %arrayidx26 = getelementptr inbounds i16*** %24, i64 1, !dbg !2468
  %25 = load i16*** %arrayidx26, align 8, !dbg !2468, !tbaa !1428
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !2468, !tbaa !1428
  %height_cr27 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 16, !dbg !2468
  %27 = load i32* %height_cr27, align 4, !dbg !2468, !tbaa !1424
  %width_cr28 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 14, !dbg !2468
  %28 = load i32* %width_cr28, align 4, !dbg !2468, !tbaa !1424
  %29 = load i16**** @imgUV_org_top, align 8, !dbg !2468, !tbaa !1428
  %arrayidx29 = getelementptr inbounds i16*** %29, i64 1, !dbg !2468
  %30 = load i16**** @imgUV_org_bot, align 8, !dbg !2468, !tbaa !1428
  %arrayidx30 = getelementptr inbounds i16*** %30, i64 1, !dbg !2468
  %call31 = tail call i32 @init_top_bot_planes(i16** %25, i32 %27, i32 %28, i16*** %arrayidx29, i16*** %arrayidx30) #7, !dbg !2468
  %add32 = add nsw i32 %add25, %call31, !dbg !2468
  tail call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !386), !dbg !2468
  br label %if.end34, !dbg !2469

if.end34:                                         ; preds = %if.then3, %if.end, %if.end17
  %memory_size.1 = phi i32 [ %memory_size.0, %if.end ], [ %add32, %if.end17 ], [ %memory_size.0, %if.then3 ]
  ret i32 %memory_size.1, !dbg !2470
}

; Function Attrs: optsize
declare i32 @get_mem2Dpel(i16***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @init_top_bot_planes(i16**, i32, i32, i16***, i16***) #2

; Function Attrs: nounwind optsize uwtable
define i32 @init_global_buffers() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !390), !dbg !2471
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2472, !tbaa !1428
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9, !dbg !2472
  %1 = load i32* %max_num_references, align 4, !dbg !2472, !tbaa !1424
  %mul = shl nsw i32 %1, 1, !dbg !2472
  %conv = sext i32 %mul to i64, !dbg !2472
  %mul1 = shl nsw i64 %conv, 2, !dbg !2472
  %call = tail call noalias i8* @malloc(i64 %mul1) #7, !dbg !2472
  %2 = bitcast i8* %call to i32*, !dbg !2472
  store i32* %2, i32** @last_P_no_frm, align 8, !dbg !2472, !tbaa !1428
  %cmp = icmp eq i8* %call, null, !dbg !2472
  br i1 %cmp, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str197, i64 0, i64 0)) #7, !dbg !2473
  br label %if.end, !dbg !2473

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2474, !tbaa !1428
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %3, i64 0, i32 25, !dbg !2474
  %4 = load i32* %frame_mbs_only_flag, align 4, !dbg !2474, !tbaa !1425
  %tobool = icmp eq i32 %4, 0, !dbg !2474
  br i1 %tobool, label %if.then3, label %if.end13, !dbg !2474

if.then3:                                         ; preds = %if.end
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !2475, !tbaa !1428
  %max_num_references4 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 9, !dbg !2475
  %6 = load i32* %max_num_references4, align 4, !dbg !2475, !tbaa !1424
  %mul5 = shl nsw i32 %6, 2, !dbg !2475
  %conv6 = sext i32 %mul5 to i64, !dbg !2475
  %mul7 = shl nsw i64 %conv6, 2, !dbg !2475
  %call8 = tail call noalias i8* @malloc(i64 %mul7) #7, !dbg !2475
  %7 = bitcast i8* %call8 to i32*, !dbg !2475
  store i32* %7, i32** @last_P_no_fld, align 8, !dbg !2475, !tbaa !1428
  %cmp9 = icmp eq i8* %call8, null, !dbg !2475
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !2475

if.then11:                                        ; preds = %if.then3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str197, i64 0, i64 0)) #7, !dbg !2476
  br label %if.end13, !dbg !2476

if.end13:                                         ; preds = %if.end, %if.then3, %if.then11
  %call14 = tail call i32 @init_orig_buffers() #8, !dbg !2477
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !390), !dbg !2477
  %8 = load %struct.InputParameters** @input, align 8, !dbg !2478, !tbaa !1428
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 46, !dbg !2478
  %9 = load i32* %WeightedPrediction, align 4, !dbg !2478, !tbaa !1424
  %tobool15 = icmp eq i32 %9, 0, !dbg !2478
  br i1 %tobool15, label %lor.lhs.false, label %if.then19, !dbg !2478

lor.lhs.false:                                    ; preds = %if.end13
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 47, !dbg !2478
  %10 = load i32* %WeightedBiprediction, align 4, !dbg !2478, !tbaa !1424
  %tobool16 = icmp eq i32 %10, 0, !dbg !2478
  br i1 %tobool16, label %lor.lhs.false17, label %if.then19, !dbg !2478

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 15, !dbg !2478
  %11 = load i32* %GenerateMultiplePPS, align 4, !dbg !2478, !tbaa !1424
  %tobool18 = icmp eq i32 %11, 0, !dbg !2478
  br i1 %tobool18, label %if.end26, label %if.then19, !dbg !2478

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.end13
  %call20 = tail call i32 @get_mem3Dint(i32**** @wp_weight, i32 6, i32 15, i32 3) #7, !dbg !2479
  %add21 = add nsw i32 %call20, %call14, !dbg !2479
  tail call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !390), !dbg !2479
  %call22 = tail call i32 @get_mem3Dint(i32**** @wp_offset, i32 6, i32 15, i32 3) #7, !dbg !2481
  %add23 = add nsw i32 %add21, %call22, !dbg !2481
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !390), !dbg !2481
  %call24 = tail call i32 @get_mem4Dint(i32***** @wbp_weight, i32 6, i32 15, i32 15, i32 3) #7, !dbg !2482
  %add25 = add nsw i32 %add23, %call24, !dbg !2482
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !390), !dbg !2482
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !2483, !tbaa !1428
  br label %if.end26, !dbg !2484

if.end26:                                         ; preds = %lor.lhs.false17, %if.then19
  %12 = phi %struct.InputParameters* [ %.pre, %if.then19 ], [ %8, %lor.lhs.false17 ]
  %memory_size.0 = phi i32 [ %add25, %if.then19 ], [ %call14, %lor.lhs.false17 ]
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 34, !dbg !2483
  %13 = load i32* %successive_Bframe, align 4, !dbg !2483, !tbaa !1424
  %cmp27 = icmp eq i32 %13, 0, !dbg !2483
  br i1 %cmp27, label %lor.lhs.false29, label %if.then32, !dbg !2483

lor.lhs.false29:                                  ; preds = %if.end26
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 54, !dbg !2483
  %14 = load i32* %BRefPictures, align 4, !dbg !2483, !tbaa !1424
  %cmp30 = icmp sgt i32 %14, 0, !dbg !2483
  br i1 %cmp30, label %if.then32, label %if.end42, !dbg !2483

if.then32:                                        ; preds = %if.end26, %lor.lhs.false29
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !2485, !tbaa !1428
  %width = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 13, !dbg !2485
  %16 = load i32* %width, align 4, !dbg !2485, !tbaa !1424
  %div = sdiv i32 %16, 4, !dbg !2485
  %height = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 15, !dbg !2485
  %17 = load i32* %height, align 4, !dbg !2485, !tbaa !1424
  %div33 = sdiv i32 %17, 4, !dbg !2485
  %call34 = tail call i32 @get_mem3Dshort(i16**** @direct_ref_idx, i32 2, i32 %div, i32 %div33) #7, !dbg !2485
  %add35 = add nsw i32 %call34, %memory_size.0, !dbg !2485
  tail call void @llvm.dbg.value(metadata !{i32 %add35}, i64 0, metadata !390), !dbg !2485
  %18 = load %struct.ImageParameters** @img, align 8, !dbg !2487, !tbaa !1428
  %width36 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 13, !dbg !2487
  %19 = load i32* %width36, align 4, !dbg !2487, !tbaa !1424
  %div37 = sdiv i32 %19, 4, !dbg !2487
  %height38 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 15, !dbg !2487
  %20 = load i32* %height38, align 4, !dbg !2487, !tbaa !1424
  %div39 = sdiv i32 %20, 4, !dbg !2487
  %call40 = tail call i32 @get_mem2Dshort(i16*** @direct_pdir, i32 %div37, i32 %div39) #7, !dbg !2487
  %add41 = add nsw i32 %add35, %call40, !dbg !2487
  tail call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !390), !dbg !2487
  br label %if.end42, !dbg !2488

if.end42:                                         ; preds = %if.then32, %lor.lhs.false29
  %memory_size.1 = phi i32 [ %add41, %if.then32 ], [ %memory_size.0, %lor.lhs.false29 ]
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !2489, !tbaa !1428
  %height43 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15, !dbg !2489
  %22 = load i32* %height43, align 4, !dbg !2489, !tbaa !1424
  %add44 = add nsw i32 %22, 8, !dbg !2489
  %width45 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 13, !dbg !2489
  %23 = load i32* %width45, align 4, !dbg !2489, !tbaa !1424
  %add46 = shl i32 %23, 2, !dbg !2489
  %mul47 = add i32 %add46, 32, !dbg !2489
  %call48 = tail call i32 @get_mem2Dint(i32*** @img4Y_tmp, i32 %add44, i32 %mul47) #7, !dbg !2489
  %add49 = add nsw i32 %call48, %memory_size.1, !dbg !2489
  tail call void @llvm.dbg.value(metadata !{i32 %add49}, i64 0, metadata !390), !dbg !2489
  %24 = load %struct.InputParameters** @input, align 8, !dbg !2490, !tbaa !1428
  %rdopt = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 85, !dbg !2490
  %25 = load i32* %rdopt, align 4, !dbg !2490, !tbaa !1424
  %cmp50 = icmp eq i32 %25, 2, !dbg !2490
  br i1 %cmp50, label %if.then52, label %if.end95, !dbg !2490

if.then52:                                        ; preds = %if.end42
  %26 = load %struct.Decoders** @decs, align 8, !dbg !2491, !tbaa !1428
  %resY = getelementptr inbounds %struct.Decoders* %26, i64 0, i32 0, !dbg !2491
  %call53 = tail call i32 @get_mem2Dint(i32*** %resY, i32 16, i32 16) #7, !dbg !2491
  %add54 = add nsw i32 %call53, %add49, !dbg !2491
  tail call void @llvm.dbg.value(metadata !{i32 %add54}, i64 0, metadata !390), !dbg !2491
  %27 = load %struct.InputParameters** @input, align 8, !dbg !2493, !tbaa !1428
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 97, !dbg !2493
  %28 = load i32* %NoOfDecoders, align 4, !dbg !2493, !tbaa !1424
  %conv55 = sext i32 %28 to i64, !dbg !2493
  %call56 = tail call noalias i8* @calloc(i64 %conv55, i64 8) #7, !dbg !2493
  %29 = bitcast i8* %call56 to i16****, !dbg !2493
  %30 = load %struct.Decoders** @decs, align 8, !dbg !2493, !tbaa !1428
  %decref = getelementptr inbounds %struct.Decoders* %30, i64 0, i32 2, !dbg !2493
  store i16**** %29, i16***** %decref, align 8, !dbg !2493, !tbaa !1428
  %cmp57 = icmp eq i8* %call56, null, !dbg !2493
  br i1 %cmp57, label %if.then59, label %for.cond.preheader, !dbg !2493

if.then59:                                        ; preds = %if.then52
  tail call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8]* @.str198, i64 0, i64 0)) #7, !dbg !2494
  br label %for.cond.preheader, !dbg !2494

for.cond.preheader:                               ; preds = %if.then59, %if.then52
  %31 = load %struct.InputParameters** @input, align 8, !dbg !2495, !tbaa !1428
  %NoOfDecoders61152 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 97, !dbg !2495
  %32 = load i32* %NoOfDecoders61152, align 4, !dbg !2495, !tbaa !1424
  %cmp62153 = icmp sgt i32 %32, 0, !dbg !2495
  br i1 %cmp62153, label %for.body, label %for.end, !dbg !2495

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %memory_size.2155 = phi i32 [ %add70, %for.body ], [ %add54, %for.cond.preheader ]
  %33 = load %struct.Decoders** @decs, align 8, !dbg !2497, !tbaa !1428
  %decref64 = getelementptr inbounds %struct.Decoders* %33, i64 0, i32 2, !dbg !2497
  %34 = load i16***** %decref64, align 8, !dbg !2497, !tbaa !1428
  %arrayidx = getelementptr inbounds i16**** %34, i64 %indvars.iv, !dbg !2497
  %35 = load %struct.ImageParameters** @img, align 8, !dbg !2497, !tbaa !1428
  %max_num_references65 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 9, !dbg !2497
  %36 = load i32* %max_num_references65, align 4, !dbg !2497, !tbaa !1424
  %add66 = add nsw i32 %36, 1, !dbg !2497
  %height67 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 15, !dbg !2497
  %37 = load i32* %height67, align 4, !dbg !2497, !tbaa !1424
  %width68 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 13, !dbg !2497
  %38 = load i32* %width68, align 4, !dbg !2497, !tbaa !1424
  %call69 = tail call i32 @get_mem3Dpel(i16**** %arrayidx, i32 %add66, i32 %37, i32 %38) #7, !dbg !2497
  %add70 = add nsw i32 %call69, %memory_size.2155, !dbg !2497
  tail call void @llvm.dbg.value(metadata !{i32 %add70}, i64 0, metadata !390), !dbg !2497
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2495
  %39 = load %struct.InputParameters** @input, align 8, !dbg !2495, !tbaa !1428
  %NoOfDecoders61 = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 97, !dbg !2495
  %40 = load i32* %NoOfDecoders61, align 4, !dbg !2495, !tbaa !1424
  %41 = trunc i64 %indvars.iv.next to i32, !dbg !2495
  %cmp62 = icmp slt i32 %41, %40, !dbg !2495
  br i1 %cmp62, label %for.body, label %for.end, !dbg !2495

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %memory_size.2.lcssa = phi i32 [ %add54, %for.cond.preheader ], [ %add70, %for.body ]
  %42 = load %struct.Decoders** @decs, align 8, !dbg !2499, !tbaa !1428
  %RefBlock = getelementptr inbounds %struct.Decoders* %42, i64 0, i32 4, !dbg !2499
  %call71 = tail call i32 @get_mem2Dpel(i16*** %RefBlock, i32 4, i32 4) #7, !dbg !2499
  %add72 = add nsw i32 %call71, %memory_size.2.lcssa, !dbg !2499
  tail call void @llvm.dbg.value(metadata !{i32 %add72}, i64 0, metadata !390), !dbg !2499
  %43 = load %struct.Decoders** @decs, align 8, !dbg !2500, !tbaa !1428
  %decY = getelementptr inbounds %struct.Decoders* %43, i64 0, i32 1, !dbg !2500
  %44 = load %struct.InputParameters** @input, align 8, !dbg !2500, !tbaa !1428
  %NoOfDecoders73 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 97, !dbg !2500
  %45 = load i32* %NoOfDecoders73, align 4, !dbg !2500, !tbaa !1424
  %46 = load %struct.ImageParameters** @img, align 8, !dbg !2500, !tbaa !1428
  %height74 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 15, !dbg !2500
  %47 = load i32* %height74, align 4, !dbg !2500, !tbaa !1424
  %width75 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 13, !dbg !2500
  %48 = load i32* %width75, align 4, !dbg !2500, !tbaa !1424
  %call76 = tail call i32 @get_mem3Dpel(i16**** %decY, i32 %45, i32 %47, i32 %48) #7, !dbg !2500
  %add77 = add nsw i32 %add72, %call76, !dbg !2500
  tail call void @llvm.dbg.value(metadata !{i32 %add77}, i64 0, metadata !390), !dbg !2500
  %49 = load %struct.Decoders** @decs, align 8, !dbg !2501, !tbaa !1428
  %decY_best = getelementptr inbounds %struct.Decoders* %49, i64 0, i32 3, !dbg !2501
  %50 = load %struct.InputParameters** @input, align 8, !dbg !2501, !tbaa !1428
  %NoOfDecoders78 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 97, !dbg !2501
  %51 = load i32* %NoOfDecoders78, align 4, !dbg !2501, !tbaa !1424
  %52 = load %struct.ImageParameters** @img, align 8, !dbg !2501, !tbaa !1428
  %height79 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 15, !dbg !2501
  %53 = load i32* %height79, align 4, !dbg !2501, !tbaa !1424
  %width80 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 13, !dbg !2501
  %54 = load i32* %width80, align 4, !dbg !2501, !tbaa !1424
  %call81 = tail call i32 @get_mem3Dpel(i16**** %decY_best, i32 %51, i32 %53, i32 %54) #7, !dbg !2501
  %add82 = add nsw i32 %add77, %call81, !dbg !2501
  tail call void @llvm.dbg.value(metadata !{i32 %add82}, i64 0, metadata !390), !dbg !2501
  %55 = load %struct.Decoders** @decs, align 8, !dbg !2502, !tbaa !1428
  %status_map = getelementptr inbounds %struct.Decoders* %55, i64 0, i32 5, !dbg !2502
  %56 = load %struct.ImageParameters** @img, align 8, !dbg !2502, !tbaa !1428
  %height83 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 15, !dbg !2502
  %57 = load i32* %height83, align 4, !dbg !2502, !tbaa !1424
  %div84 = sdiv i32 %57, 16, !dbg !2502
  %width85 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 13, !dbg !2502
  %58 = load i32* %width85, align 4, !dbg !2502, !tbaa !1424
  %div86 = sdiv i32 %58, 16, !dbg !2502
  %call87 = tail call i32 @get_mem2D(i8*** %status_map, i32 %div84, i32 %div86) #7, !dbg !2502
  %add88 = add nsw i32 %add82, %call87, !dbg !2502
  tail call void @llvm.dbg.value(metadata !{i32 %add88}, i64 0, metadata !390), !dbg !2502
  %59 = load %struct.Decoders** @decs, align 8, !dbg !2503, !tbaa !1428
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %59, i64 0, i32 6, !dbg !2503
  %60 = load %struct.ImageParameters** @img, align 8, !dbg !2503, !tbaa !1428
  %width89 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 13, !dbg !2503
  %61 = load i32* %width89, align 4, !dbg !2503, !tbaa !1424
  %div90 = sdiv i32 %61, 16, !dbg !2503
  %height91 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 15, !dbg !2503
  %62 = load i32* %height91, align 4, !dbg !2503, !tbaa !1424
  %div92 = sdiv i32 %62, 16, !dbg !2503
  %call93 = tail call i32 @get_mem2D(i8*** %dec_mb_mode, i32 %div90, i32 %div92) #7, !dbg !2503
  %add94 = add nsw i32 %add88, %call93, !dbg !2503
  tail call void @llvm.dbg.value(metadata !{i32 %add94}, i64 0, metadata !390), !dbg !2503
  %.pre156 = load %struct.InputParameters** @input, align 8, !dbg !2504, !tbaa !1428
  br label %if.end95, !dbg !2505

if.end95:                                         ; preds = %for.end, %if.end42
  %63 = phi %struct.InputParameters* [ %.pre156, %for.end ], [ %24, %if.end42 ]
  %memory_size.3 = phi i32 [ %add94, %for.end ], [ %add49, %if.end42 ]
  %RestrictRef = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 98, !dbg !2504
  %64 = load i32* %RestrictRef, align 4, !dbg !2504, !tbaa !1424
  %tobool96 = icmp eq i32 %64, 0, !dbg !2504
  br i1 %tobool96, label %if.end108, label %if.then97, !dbg !2504

if.then97:                                        ; preds = %if.end95
  %65 = load %struct.ImageParameters** @img, align 8, !dbg !2506, !tbaa !1428
  %height98 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 15, !dbg !2506
  %66 = load i32* %height98, align 4, !dbg !2506, !tbaa !1424
  %width99 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 13, !dbg !2506
  %67 = load i32* %width99, align 4, !dbg !2506, !tbaa !1424
  %call100 = tail call i32 @get_mem2D(i8*** @pixel_map, i32 %66, i32 %67) #7, !dbg !2506
  %add101 = add nsw i32 %call100, %memory_size.3, !dbg !2506
  tail call void @llvm.dbg.value(metadata !{i32 %add101}, i64 0, metadata !390), !dbg !2506
  %68 = load %struct.ImageParameters** @img, align 8, !dbg !2508, !tbaa !1428
  %height102 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 15, !dbg !2508
  %69 = load i32* %height102, align 4, !dbg !2508, !tbaa !1424
  %div103 = sdiv i32 %69, 8, !dbg !2508
  %width104 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 13, !dbg !2508
  %70 = load i32* %width104, align 4, !dbg !2508, !tbaa !1424
  %div105 = sdiv i32 %70, 8, !dbg !2508
  %call106 = tail call i32 @get_mem2D(i8*** @refresh_map, i32 %div103, i32 %div105) #7, !dbg !2508
  %add107 = add nsw i32 %add101, %call106, !dbg !2508
  tail call void @llvm.dbg.value(metadata !{i32 %add107}, i64 0, metadata !390), !dbg !2508
  br label %if.end108, !dbg !2509

if.end108:                                        ; preds = %if.end95, %if.then97
  %memory_size.4 = phi i32 [ %add107, %if.then97 ], [ %memory_size.3, %if.end95 ]
  %71 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2510, !tbaa !1428
  %frame_mbs_only_flag109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %71, i64 0, i32 25, !dbg !2510
  %72 = load i32* %frame_mbs_only_flag109, align 4, !dbg !2510, !tbaa !1425
  %tobool110 = icmp eq i32 %72, 0, !dbg !2510
  br i1 %tobool110, label %if.then111, label %if.end122, !dbg !2510

if.then111:                                       ; preds = %if.end108
  %73 = load %struct.ImageParameters** @img, align 8, !dbg !2511, !tbaa !1428
  %height112 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 15, !dbg !2511
  %74 = load i32* %height112, align 4, !dbg !2511, !tbaa !1424
  %width113 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 13, !dbg !2511
  %75 = load i32* %width113, align 4, !dbg !2511, !tbaa !1424
  %call114 = tail call i32 @get_mem2Dpel(i16*** @imgY_com, i32 %74, i32 %75) #7, !dbg !2511
  %add115 = add nsw i32 %call114, %memory_size.4, !dbg !2511
  tail call void @llvm.dbg.value(metadata !{i32 %add115}, i64 0, metadata !390), !dbg !2511
  %76 = load %struct.ImageParameters** @img, align 8, !dbg !2513, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 159, !dbg !2513
  %77 = load i32* %yuv_format, align 4, !dbg !2513, !tbaa !1424
  %cmp116 = icmp eq i32 %77, 0, !dbg !2513
  br i1 %cmp116, label %if.end122, label %if.then118, !dbg !2513

if.then118:                                       ; preds = %if.then111
  %height_cr = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 16, !dbg !2514
  %78 = load i32* %height_cr, align 4, !dbg !2514, !tbaa !1424
  %width_cr = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 14, !dbg !2514
  %79 = load i32* %width_cr, align 4, !dbg !2514, !tbaa !1424
  %call119 = tail call i32 @get_mem3Dpel(i16**** @imgUV_com, i32 2, i32 %78, i32 %79) #7, !dbg !2514
  %add120 = add nsw i32 %call119, %add115, !dbg !2514
  tail call void @llvm.dbg.value(metadata !{i32 %add120}, i64 0, metadata !390), !dbg !2514
  br label %if.end122, !dbg !2516

if.end122:                                        ; preds = %if.then111, %if.end108, %if.then118
  %memory_size.5 = phi i32 [ %add120, %if.then118 ], [ %memory_size.4, %if.end108 ], [ %add115, %if.then111 ]
  %80 = load %struct.InputParameters** @input, align 8, !dbg !2517, !tbaa !1428
  %FMEnable = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 134, !dbg !2517
  %81 = load i32* %FMEnable, align 4, !dbg !2517, !tbaa !1424
  %tobool123 = icmp eq i32 %81, 0, !dbg !2517
  br i1 %tobool123, label %if.end127, label %if.then124, !dbg !2517

if.then124:                                       ; preds = %if.end122
  %call125 = tail call i32 (...)* @get_mem_FME() #7, !dbg !2518
  %add126 = add nsw i32 %call125, %memory_size.5, !dbg !2518
  tail call void @llvm.dbg.value(metadata !{i32 %add126}, i64 0, metadata !390), !dbg !2518
  %.pre157 = load %struct.InputParameters** @input, align 8, !dbg !2519, !tbaa !1428
  br label %if.end127, !dbg !2518

if.end127:                                        ; preds = %if.end122, %if.then124
  %82 = phi %struct.InputParameters* [ %.pre157, %if.then124 ], [ %80, %if.end122 ]
  %memory_size.6 = phi i32 [ %add126, %if.then124 ], [ %memory_size.5, %if.end122 ]
  %RCEnable = getelementptr inbounds %struct.InputParameters* %82, i64 0, i32 127, !dbg !2519
  %83 = load i32* %RCEnable, align 4, !dbg !2519, !tbaa !1424
  %tobool128 = icmp eq i32 %83, 0, !dbg !2519
  br i1 %tobool128, label %if.end130, label %if.then129, !dbg !2519

if.then129:                                       ; preds = %if.end127
  tail call void (...)* @rc_alloc() #7, !dbg !2520
  br label %if.end130, !dbg !2522

if.end130:                                        ; preds = %if.end127, %if.then129
  ret i32 %memory_size.6, !dbg !2523
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem3Dshort(i16****, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem2Dshort(i16***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem2D(i8***, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_mem_FME(...) #2

; Function Attrs: optsize
declare void @rc_alloc(...) #2

; Function Attrs: nounwind optsize uwtable
define void @free_orig_planes() #0 {
entry:
  %0 = load i16*** @imgY_org_frm, align 8, !dbg !2524, !tbaa !1428
  tail call void @free_mem2Dpel(i16** %0) #7, !dbg !2524
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2525, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 159, !dbg !2525
  %2 = load i32* %yuv_format, align 4, !dbg !2525, !tbaa !1424
  %cmp = icmp eq i32 %2, 0, !dbg !2525
  br i1 %cmp, label %if.end, label %if.then, !dbg !2525

if.then:                                          ; preds = %entry
  %3 = load i16**** @imgUV_org_frm, align 8, !dbg !2526, !tbaa !1428
  tail call void @free_mem3Dpel(i16*** %3, i32 2) #7, !dbg !2526
  br label %if.end, !dbg !2526

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2527, !tbaa !1428
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %4, i64 0, i32 25, !dbg !2527
  %5 = load i32* %frame_mbs_only_flag, align 4, !dbg !2527, !tbaa !1425
  %tobool = icmp eq i32 %5, 0, !dbg !2527
  br i1 %tobool, label %if.then1, label %if.end9, !dbg !2527

if.then1:                                         ; preds = %if.end
  %6 = load i16*** @imgY_org_top, align 8, !dbg !2528, !tbaa !1428
  %7 = load i16*** @imgY_org_bot, align 8, !dbg !2528, !tbaa !1428
  tail call void @free_top_bot_planes(i16** %6, i16** %7) #7, !dbg !2528
  %8 = load %struct.ImageParameters** @img, align 8, !dbg !2530, !tbaa !1428
  %yuv_format2 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 159, !dbg !2530
  %9 = load i32* %yuv_format2, align 4, !dbg !2530, !tbaa !1424
  %cmp3 = icmp eq i32 %9, 0, !dbg !2530
  br i1 %cmp3, label %if.end9, label %if.then4, !dbg !2530

if.then4:                                         ; preds = %if.then1
  %10 = load i16**** @imgUV_org_top, align 8, !dbg !2531, !tbaa !1428
  %11 = load i16*** %10, align 8, !dbg !2531, !tbaa !1428
  %12 = load i16**** @imgUV_org_bot, align 8, !dbg !2531, !tbaa !1428
  %13 = load i16*** %12, align 8, !dbg !2531, !tbaa !1428
  tail call void @free_top_bot_planes(i16** %11, i16** %13) #7, !dbg !2531
  %14 = load i16**** @imgUV_org_top, align 8, !dbg !2533, !tbaa !1428
  %arrayidx6 = getelementptr inbounds i16*** %14, i64 1, !dbg !2533
  %15 = load i16*** %arrayidx6, align 8, !dbg !2533, !tbaa !1428
  %16 = load i16**** @imgUV_org_bot, align 8, !dbg !2533, !tbaa !1428
  %arrayidx7 = getelementptr inbounds i16*** %16, i64 1, !dbg !2533
  %17 = load i16*** %arrayidx7, align 8, !dbg !2533, !tbaa !1428
  tail call void @free_top_bot_planes(i16** %15, i16** %17) #7, !dbg !2533
  %18 = load i16**** @imgUV_org_top, align 8, !dbg !2534, !tbaa !1428
  %19 = bitcast i16*** %18 to i8*, !dbg !2534
  tail call void @free(i8* %19) #7, !dbg !2534
  %20 = load i16**** @imgUV_org_bot, align 8, !dbg !2535, !tbaa !1428
  %21 = bitcast i16*** %20 to i8*, !dbg !2535
  tail call void @free(i8* %21) #7, !dbg !2535
  br label %if.end9, !dbg !2536

if.end9:                                          ; preds = %if.then1, %if.end, %if.then4
  ret void, !dbg !2537
}

; Function Attrs: optsize
declare void @free_mem2Dpel(i16**) #2

; Function Attrs: optsize
declare void @free_mem3Dpel(i16***, i32) #2

; Function Attrs: optsize
declare void @free_top_bot_planes(i16**, i16**) #2

; Function Attrs: nounwind optsize uwtable
define void @free_global_buffers() #0 {
entry:
  %0 = load i32** @last_P_no_frm, align 8, !dbg !2538, !tbaa !1428
  %1 = bitcast i32* %0 to i8*, !dbg !2538
  tail call void @free(i8* %1) #7, !dbg !2538
  %2 = load i32** @last_P_no_fld, align 8, !dbg !2539, !tbaa !1428
  %3 = bitcast i32* %2 to i8*, !dbg !2539
  tail call void @free(i8* %3) #7, !dbg !2539
  tail call void @free_orig_planes() #8, !dbg !2540
  %4 = load %struct.InputParameters** @input, align 8, !dbg !2541, !tbaa !1428
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 46, !dbg !2541
  %5 = load i32* %WeightedPrediction, align 4, !dbg !2541, !tbaa !1424
  %tobool = icmp eq i32 %5, 0, !dbg !2541
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2541

lor.lhs.false:                                    ; preds = %entry
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 47, !dbg !2541
  %6 = load i32* %WeightedBiprediction, align 4, !dbg !2541, !tbaa !1424
  %tobool1 = icmp eq i32 %6, 0, !dbg !2541
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2541

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 15, !dbg !2541
  %7 = load i32* %GenerateMultiplePPS, align 4, !dbg !2541, !tbaa !1424
  %tobool3 = icmp eq i32 %7, 0, !dbg !2541
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2541

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %8 = load i32**** @wp_weight, align 8, !dbg !2542, !tbaa !1428
  tail call void @free_mem3Dint(i32*** %8, i32 6) #7, !dbg !2542
  %9 = load i32**** @wp_offset, align 8, !dbg !2544, !tbaa !1428
  tail call void @free_mem3Dint(i32*** %9, i32 6) #7, !dbg !2544
  %10 = load i32***** @wbp_weight, align 8, !dbg !2545, !tbaa !1428
  tail call void @free_mem4Dint(i32**** %10, i32 6, i32 15) #7, !dbg !2545
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !2546, !tbaa !1428
  br label %if.end, !dbg !2547

if.end:                                           ; preds = %lor.lhs.false2, %if.then
  %11 = phi %struct.InputParameters* [ %4, %lor.lhs.false2 ], [ %.pre, %if.then ]
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 34, !dbg !2546
  %12 = load i32* %successive_Bframe, align 4, !dbg !2546, !tbaa !1424
  %cmp = icmp eq i32 %12, 0, !dbg !2546
  br i1 %cmp, label %lor.lhs.false4, label %if.then6, !dbg !2546

lor.lhs.false4:                                   ; preds = %if.end
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 54, !dbg !2546
  %13 = load i32* %BRefPictures, align 4, !dbg !2546, !tbaa !1424
  %cmp5 = icmp sgt i32 %13, 0, !dbg !2546
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2546

if.then6:                                         ; preds = %if.end, %lor.lhs.false4
  %14 = load i16**** @direct_ref_idx, align 8, !dbg !2548, !tbaa !1428
  tail call void @free_mem3Dshort(i16*** %14, i32 2) #7, !dbg !2548
  %15 = load i16*** @direct_pdir, align 8, !dbg !2550, !tbaa !1428
  tail call void @free_mem2Dshort(i16** %15) #7, !dbg !2550
  br label %if.end7, !dbg !2551

if.end7:                                          ; preds = %if.then6, %lor.lhs.false4
  %16 = load i32*** @img4Y_tmp, align 8, !dbg !2552, !tbaa !1428
  tail call void @free_mem2Dint(i32** %16) #7, !dbg !2552
  %17 = load %struct.ImageParameters** @img, align 8, !dbg !2553, !tbaa !1428
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 25, !dbg !2553
  %18 = load i32*** %ipredmode, align 8, !dbg !2553, !tbaa !1428
  tail call void @free_mem2Dint(i32** %18) #7, !dbg !2553
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !2554, !tbaa !1428
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 26, !dbg !2554
  %20 = load i32*** %ipredmode8x8, align 8, !dbg !2554, !tbaa !1428
  tail call void @free_mem2Dint(i32** %20) #7, !dbg !2554
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !2555, !tbaa !1428
  %mb_data = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 51, !dbg !2555
  %22 = load %struct.macroblock** %mb_data, align 8, !dbg !2555, !tbaa !1428
  %23 = bitcast %struct.macroblock* %22 to i8*, !dbg !2555
  tail call void @free(i8* %23) #7, !dbg !2555
  %24 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 10), align 8, !dbg !2556, !tbaa !1428
  tail call void @free_mem2Dint(i32** %24) #7, !dbg !2556
  %25 = load %struct.InputParameters** @input, align 8, !dbg !2557, !tbaa !1428
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 24, !dbg !2557
  %26 = load i32* %UseConstrainedIntraPred, align 4, !dbg !2557, !tbaa !1424
  %tobool8 = icmp eq i32 %26, 0, !dbg !2557
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2557

if.then9:                                         ; preds = %if.end7
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !2558, !tbaa !1428
  %intra_block = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 54, !dbg !2558
  %28 = load i32** %intra_block, align 8, !dbg !2558, !tbaa !1428
  %29 = bitcast i32* %28 to i8*, !dbg !2558
  tail call void @free(i8* %29) #7, !dbg !2558
  %.pre92 = load %struct.InputParameters** @input, align 8, !dbg !2560, !tbaa !1428
  br label %if.end10, !dbg !2561

if.end10:                                         ; preds = %if.end7, %if.then9
  %30 = phi %struct.InputParameters* [ %25, %if.end7 ], [ %.pre92, %if.then9 ]
  %rdopt = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 85, !dbg !2560
  %31 = load i32* %rdopt, align 4, !dbg !2560, !tbaa !1424
  %cmp11 = icmp eq i32 %31, 2, !dbg !2560
  br i1 %cmp11, label %if.then12, label %if.end54, !dbg !2560

if.then12:                                        ; preds = %if.end10
  %32 = load %struct.Decoders** @decs, align 8, !dbg !2562, !tbaa !1428
  %resY = getelementptr inbounds %struct.Decoders* %32, i64 0, i32 0, !dbg !2562
  %33 = load i32*** %resY, align 8, !dbg !2562, !tbaa !1428
  %34 = load i32** %33, align 8, !dbg !2562, !tbaa !1428
  %35 = bitcast i32* %34 to i8*, !dbg !2562
  tail call void @free(i8* %35) #7, !dbg !2562
  %36 = load %struct.Decoders** @decs, align 8, !dbg !2564, !tbaa !1428
  %resY13 = getelementptr inbounds %struct.Decoders* %36, i64 0, i32 0, !dbg !2564
  %37 = load i32*** %resY13, align 8, !dbg !2564, !tbaa !1428
  %38 = bitcast i32** %37 to i8*, !dbg !2564
  tail call void @free(i8* %38) #7, !dbg !2564
  %39 = load %struct.Decoders** @decs, align 8, !dbg !2565, !tbaa !1428
  %RefBlock = getelementptr inbounds %struct.Decoders* %39, i64 0, i32 4, !dbg !2565
  %40 = load i16*** %RefBlock, align 8, !dbg !2565, !tbaa !1428
  %41 = load i16** %40, align 8, !dbg !2565, !tbaa !1428
  %42 = bitcast i16* %41 to i8*, !dbg !2565
  tail call void @free(i8* %42) #7, !dbg !2565
  %43 = load %struct.Decoders** @decs, align 8, !dbg !2566, !tbaa !1428
  %RefBlock15 = getelementptr inbounds %struct.Decoders* %43, i64 0, i32 4, !dbg !2566
  %44 = load i16*** %RefBlock15, align 8, !dbg !2566, !tbaa !1428
  %45 = bitcast i16** %44 to i8*, !dbg !2566
  tail call void @free(i8* %45) #7, !dbg !2566
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !395), !dbg !2567
  %46 = load %struct.InputParameters** @input, align 8, !dbg !2567, !tbaa !1428
  %NoOfDecoders87 = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 97, !dbg !2567
  %47 = load i32* %NoOfDecoders87, align 4, !dbg !2567, !tbaa !1424
  %cmp1688 = icmp sgt i32 %47, 0, !dbg !2567
  br i1 %cmp1688, label %for.body, label %for.end46, !dbg !2567

for.body:                                         ; preds = %if.then12, %for.end
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.end ], [ 0, %if.then12 ]
  %48 = load %struct.Decoders** @decs, align 8, !dbg !2569, !tbaa !1428
  %decY = getelementptr inbounds %struct.Decoders* %48, i64 0, i32 1, !dbg !2569
  %49 = load i16**** %decY, align 8, !dbg !2569, !tbaa !1428
  %arrayidx17 = getelementptr inbounds i16*** %49, i64 %indvars.iv90, !dbg !2569
  %50 = load i16*** %arrayidx17, align 8, !dbg !2569, !tbaa !1428
  %51 = load i16** %50, align 8, !dbg !2569, !tbaa !1428
  %52 = bitcast i16* %51 to i8*, !dbg !2569
  tail call void @free(i8* %52) #7, !dbg !2569
  %53 = load %struct.Decoders** @decs, align 8, !dbg !2571, !tbaa !1428
  %decY20 = getelementptr inbounds %struct.Decoders* %53, i64 0, i32 1, !dbg !2571
  %54 = load i16**** %decY20, align 8, !dbg !2571, !tbaa !1428
  %arrayidx21 = getelementptr inbounds i16*** %54, i64 %indvars.iv90, !dbg !2571
  %55 = load i16*** %arrayidx21, align 8, !dbg !2571, !tbaa !1428
  %56 = bitcast i16** %55 to i8*, !dbg !2571
  tail call void @free(i8* %56) #7, !dbg !2571
  %57 = load %struct.Decoders** @decs, align 8, !dbg !2572, !tbaa !1428
  %decY_best = getelementptr inbounds %struct.Decoders* %57, i64 0, i32 3, !dbg !2572
  %58 = load i16**** %decY_best, align 8, !dbg !2572, !tbaa !1428
  %arrayidx23 = getelementptr inbounds i16*** %58, i64 %indvars.iv90, !dbg !2572
  %59 = load i16*** %arrayidx23, align 8, !dbg !2572, !tbaa !1428
  %60 = load i16** %59, align 8, !dbg !2572, !tbaa !1428
  %61 = bitcast i16* %60 to i8*, !dbg !2572
  tail call void @free(i8* %61) #7, !dbg !2572
  %62 = load %struct.Decoders** @decs, align 8, !dbg !2573, !tbaa !1428
  %decY_best26 = getelementptr inbounds %struct.Decoders* %62, i64 0, i32 3, !dbg !2573
  %63 = load i16**** %decY_best26, align 8, !dbg !2573, !tbaa !1428
  %arrayidx27 = getelementptr inbounds i16*** %63, i64 %indvars.iv90, !dbg !2573
  %64 = load i16*** %arrayidx27, align 8, !dbg !2573, !tbaa !1428
  %65 = bitcast i16** %64 to i8*, !dbg !2573
  tail call void @free(i8* %65) #7, !dbg !2573
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !394), !dbg !2574
  %66 = load %struct.ImageParameters** @img, align 8, !dbg !2574, !tbaa !1428
  %max_num_references83 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 9, !dbg !2574
  %67 = load i32* %max_num_references83, align 4, !dbg !2574, !tbaa !1424
  %cmp2985 = icmp sgt i32 %67, -1, !dbg !2574
  br i1 %cmp2985, label %for.body30, label %for.end, !dbg !2574

for.body30:                                       ; preds = %for.body, %for.body30
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body30 ], [ 0, %for.body ]
  %68 = load %struct.Decoders** @decs, align 8, !dbg !2576, !tbaa !1428
  %decref = getelementptr inbounds %struct.Decoders* %68, i64 0, i32 2, !dbg !2576
  %69 = load i16***** %decref, align 8, !dbg !2576, !tbaa !1428
  %arrayidx33 = getelementptr inbounds i16**** %69, i64 %indvars.iv90, !dbg !2576
  %70 = load i16**** %arrayidx33, align 8, !dbg !2576, !tbaa !1428
  %arrayidx34 = getelementptr inbounds i16*** %70, i64 %indvars.iv, !dbg !2576
  %71 = load i16*** %arrayidx34, align 8, !dbg !2576, !tbaa !1428
  %72 = load i16** %71, align 8, !dbg !2576, !tbaa !1428
  %73 = bitcast i16* %72 to i8*, !dbg !2576
  tail call void @free(i8* %73) #7, !dbg !2576
  %74 = load %struct.Decoders** @decs, align 8, !dbg !2578, !tbaa !1428
  %decref38 = getelementptr inbounds %struct.Decoders* %74, i64 0, i32 2, !dbg !2578
  %75 = load i16***** %decref38, align 8, !dbg !2578, !tbaa !1428
  %arrayidx39 = getelementptr inbounds i16**** %75, i64 %indvars.iv90, !dbg !2578
  %76 = load i16**** %arrayidx39, align 8, !dbg !2578, !tbaa !1428
  %arrayidx40 = getelementptr inbounds i16*** %76, i64 %indvars.iv, !dbg !2578
  %77 = load i16*** %arrayidx40, align 8, !dbg !2578, !tbaa !1428
  %78 = bitcast i16** %77 to i8*, !dbg !2578
  tail call void @free(i8* %78) #7, !dbg !2578
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2574
  %79 = load %struct.ImageParameters** @img, align 8, !dbg !2574, !tbaa !1428
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %79, i64 0, i32 9, !dbg !2574
  %80 = load i32* %max_num_references, align 4, !dbg !2574, !tbaa !1424
  %81 = trunc i64 %indvars.iv to i32, !dbg !2574
  %cmp29 = icmp slt i32 %81, %80, !dbg !2574
  br i1 %cmp29, label %for.body30, label %for.end, !dbg !2574

for.end:                                          ; preds = %for.body30, %for.body
  %82 = load %struct.Decoders** @decs, align 8, !dbg !2579, !tbaa !1428
  %decref42 = getelementptr inbounds %struct.Decoders* %82, i64 0, i32 2, !dbg !2579
  %83 = load i16***** %decref42, align 8, !dbg !2579, !tbaa !1428
  %arrayidx43 = getelementptr inbounds i16**** %83, i64 %indvars.iv90, !dbg !2579
  %84 = load i16**** %arrayidx43, align 8, !dbg !2579, !tbaa !1428
  %85 = bitcast i16*** %84 to i8*, !dbg !2579
  tail call void @free(i8* %85) #7, !dbg !2579
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !2567
  %86 = load %struct.InputParameters** @input, align 8, !dbg !2567, !tbaa !1428
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %86, i64 0, i32 97, !dbg !2567
  %87 = load i32* %NoOfDecoders, align 4, !dbg !2567, !tbaa !1424
  %88 = trunc i64 %indvars.iv.next91 to i32, !dbg !2567
  %cmp16 = icmp slt i32 %88, %87, !dbg !2567
  br i1 %cmp16, label %for.body, label %for.end46, !dbg !2567

for.end46:                                        ; preds = %for.end, %if.then12
  %89 = load %struct.Decoders** @decs, align 8, !dbg !2580, !tbaa !1428
  %decY47 = getelementptr inbounds %struct.Decoders* %89, i64 0, i32 1, !dbg !2580
  %90 = load i16**** %decY47, align 8, !dbg !2580, !tbaa !1428
  %91 = bitcast i16*** %90 to i8*, !dbg !2580
  tail call void @free(i8* %91) #7, !dbg !2580
  %92 = load %struct.Decoders** @decs, align 8, !dbg !2581, !tbaa !1428
  %decY_best48 = getelementptr inbounds %struct.Decoders* %92, i64 0, i32 3, !dbg !2581
  %93 = load i16**** %decY_best48, align 8, !dbg !2581, !tbaa !1428
  %94 = bitcast i16*** %93 to i8*, !dbg !2581
  tail call void @free(i8* %94) #7, !dbg !2581
  %95 = load %struct.Decoders** @decs, align 8, !dbg !2582, !tbaa !1428
  %decref49 = getelementptr inbounds %struct.Decoders* %95, i64 0, i32 2, !dbg !2582
  %96 = load i16***** %decref49, align 8, !dbg !2582, !tbaa !1428
  %97 = bitcast i16**** %96 to i8*, !dbg !2582
  tail call void @free(i8* %97) #7, !dbg !2582
  %98 = load %struct.Decoders** @decs, align 8, !dbg !2583, !tbaa !1428
  %status_map = getelementptr inbounds %struct.Decoders* %98, i64 0, i32 5, !dbg !2583
  %99 = load i8*** %status_map, align 8, !dbg !2583, !tbaa !1428
  %100 = load i8** %99, align 8, !dbg !2583, !tbaa !1428
  tail call void @free(i8* %100) #7, !dbg !2583
  %101 = load %struct.Decoders** @decs, align 8, !dbg !2584, !tbaa !1428
  %status_map51 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 5, !dbg !2584
  %102 = load i8*** %status_map51, align 8, !dbg !2584, !tbaa !1428
  %103 = bitcast i8** %102 to i8*, !dbg !2584
  tail call void @free(i8* %103) #7, !dbg !2584
  %104 = load %struct.Decoders** @decs, align 8, !dbg !2585, !tbaa !1428
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %104, i64 0, i32 6, !dbg !2585
  %105 = load i8*** %dec_mb_mode, align 8, !dbg !2585, !tbaa !1428
  %106 = load i8** %105, align 8, !dbg !2585, !tbaa !1428
  tail call void @free(i8* %106) #7, !dbg !2585
  %107 = load %struct.Decoders** @decs, align 8, !dbg !2586, !tbaa !1428
  %dec_mb_mode53 = getelementptr inbounds %struct.Decoders* %107, i64 0, i32 6, !dbg !2586
  %108 = load i8*** %dec_mb_mode53, align 8, !dbg !2586, !tbaa !1428
  %109 = bitcast i8** %108 to i8*, !dbg !2586
  tail call void @free(i8* %109) #7, !dbg !2586
  %.pre93 = load %struct.InputParameters** @input, align 8, !dbg !2587, !tbaa !1428
  br label %if.end54, !dbg !2588

if.end54:                                         ; preds = %for.end46, %if.end10
  %110 = phi %struct.InputParameters* [ %.pre93, %for.end46 ], [ %30, %if.end10 ]
  %RestrictRef = getelementptr inbounds %struct.InputParameters* %110, i64 0, i32 98, !dbg !2587
  %111 = load i32* %RestrictRef, align 4, !dbg !2587, !tbaa !1424
  %tobool55 = icmp eq i32 %111, 0, !dbg !2587
  br i1 %tobool55, label %if.end59, label %if.then56, !dbg !2587

if.then56:                                        ; preds = %if.end54
  %112 = load i8*** @pixel_map, align 8, !dbg !2589, !tbaa !1428
  %113 = load i8** %112, align 8, !dbg !2589, !tbaa !1428
  tail call void @free(i8* %113) #7, !dbg !2589
  %114 = load i8*** @pixel_map, align 8, !dbg !2591, !tbaa !1428
  %115 = bitcast i8** %114 to i8*, !dbg !2591
  tail call void @free(i8* %115) #7, !dbg !2591
  %116 = load i8*** @refresh_map, align 8, !dbg !2592, !tbaa !1428
  %117 = load i8** %116, align 8, !dbg !2592, !tbaa !1428
  tail call void @free(i8* %117) #7, !dbg !2592
  %118 = load i8*** @refresh_map, align 8, !dbg !2593, !tbaa !1428
  %119 = bitcast i8** %118 to i8*, !dbg !2593
  tail call void @free(i8* %119) #7, !dbg !2593
  br label %if.end59, !dbg !2594

if.end59:                                         ; preds = %if.end54, %if.then56
  %120 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2595, !tbaa !1428
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %120, i64 0, i32 25, !dbg !2595
  %121 = load i32* %frame_mbs_only_flag, align 4, !dbg !2595, !tbaa !1425
  %tobool60 = icmp eq i32 %121, 0, !dbg !2595
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !2595

if.then61:                                        ; preds = %if.end59
  %122 = load i16*** @imgY_com, align 8, !dbg !2596, !tbaa !1428
  tail call void @free_mem2Dpel(i16** %122) #7, !dbg !2596
  %123 = load %struct.ImageParameters** @img, align 8, !dbg !2598, !tbaa !1428
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 159, !dbg !2598
  %124 = load i32* %yuv_format, align 4, !dbg !2598, !tbaa !1424
  %cmp62 = icmp eq i32 %124, 0, !dbg !2598
  br i1 %cmp62, label %if.end65, label %if.then63, !dbg !2598

if.then63:                                        ; preds = %if.then61
  %125 = load i16**** @imgUV_com, align 8, !dbg !2599, !tbaa !1428
  tail call void @free_mem3Dpel(i16*** %125, i32 2) #7, !dbg !2599
  br label %if.end65, !dbg !2601

if.end65:                                         ; preds = %if.end59, %if.then61, %if.then63
  %126 = load %struct.ImageParameters** @img, align 8, !dbg !2602, !tbaa !1428
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 28, !dbg !2602
  %127 = load i32**** %nz_coeff, align 8, !dbg !2602, !tbaa !1428
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 111, !dbg !2602
  %128 = load i32* %FrameSizeInMbs, align 4, !dbg !2602, !tbaa !1424
  tail call void @free_mem3Dint(i32*** %127, i32 %128) #7, !dbg !2602
  %129 = load %struct.InputParameters** @input, align 8, !dbg !2603, !tbaa !1428
  %FMEnable = getelementptr inbounds %struct.InputParameters* %129, i64 0, i32 134, !dbg !2603
  %130 = load i32* %FMEnable, align 4, !dbg !2603, !tbaa !1424
  %tobool66 = icmp eq i32 %130, 0, !dbg !2603
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !2603

if.then67:                                        ; preds = %if.end65
  tail call void (...)* @free_mem_FME() #7, !dbg !2604
  %.pre94 = load %struct.InputParameters** @input, align 8, !dbg !2606, !tbaa !1428
  br label %if.end68, !dbg !2607

if.end68:                                         ; preds = %if.end65, %if.then67
  %131 = phi %struct.InputParameters* [ %129, %if.end65 ], [ %.pre94, %if.then67 ]
  %RCEnable = getelementptr inbounds %struct.InputParameters* %131, i64 0, i32 127, !dbg !2606
  %132 = load i32* %RCEnable, align 4, !dbg !2606, !tbaa !1424
  %tobool69 = icmp eq i32 %132, 0, !dbg !2606
  br i1 %tobool69, label %if.end71, label %if.then70, !dbg !2606

if.then70:                                        ; preds = %if.end68
  tail call void (...)* @rc_free() #7, !dbg !2608
  br label %if.end71, !dbg !2610

if.end71:                                         ; preds = %if.end68, %if.then70
  ret void, !dbg !2611
}

; Function Attrs: optsize
declare void @free_mem3Dint(i32***, i32) #2

; Function Attrs: optsize
declare void @free_mem4Dint(i32****, i32, i32) #2

; Function Attrs: optsize
declare void @free_mem3Dshort(i16***, i32) #2

; Function Attrs: optsize
declare void @free_mem2Dshort(i16**) #2

; Function Attrs: optsize
declare void @free_mem_FME(...) #2

; Function Attrs: optsize
declare void @rc_free(...) #2

; Function Attrs: nounwind optsize uwtable
define void @combine_field() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !461), !dbg !2612
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2612, !tbaa !1428
  %height88 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !2612
  %1 = load i32* %height88, align 4, !dbg !2612, !tbaa !1424
  %cmp90 = icmp sgt i32 %1, 1, !dbg !2612
  br i1 %cmp90, label %for.body, label %for.end, !dbg !2612

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body ], [ 0, %entry ]
  %2 = phi %struct.ImageParameters* [ %21, %for.body ], [ %0, %entry ]
  %3 = trunc i64 %indvars.iv93 to i32, !dbg !2614
  %mul = shl nsw i32 %3, 1, !dbg !2614
  %idxprom = sext i32 %mul to i64, !dbg !2614
  %4 = load i16*** @imgY_com, align 8, !dbg !2614, !tbaa !1428
  %arrayidx = getelementptr inbounds i16** %4, i64 %idxprom, !dbg !2614
  %5 = load i16** %arrayidx, align 8, !dbg !2614, !tbaa !1428
  %6 = bitcast i16* %5 to i8*, !dbg !2614
  %7 = load %struct.storable_picture** @enc_top_picture, align 8, !dbg !2614, !tbaa !1428
  %imgY = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 25, !dbg !2614
  %8 = load i16*** %imgY, align 8, !dbg !2614, !tbaa !1428
  %arrayidx2 = getelementptr inbounds i16** %8, i64 %indvars.iv93, !dbg !2614
  %9 = load i16** %arrayidx2, align 8, !dbg !2614, !tbaa !1428
  %10 = bitcast i16* %9 to i8*, !dbg !2614
  %width = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 13, !dbg !2614
  %11 = load i32* %width, align 4, !dbg !2614, !tbaa !1424
  %conv = sext i32 %11 to i64, !dbg !2614
  %mul3 = shl nsw i64 %conv, 1, !dbg !2614
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %10, i64 %mul3, i32 2, i1 false), !dbg !2614
  %add83 = or i32 %mul, 1, !dbg !2616
  %idxprom5 = sext i32 %add83 to i64, !dbg !2616
  %12 = load i16*** @imgY_com, align 8, !dbg !2616, !tbaa !1428
  %arrayidx6 = getelementptr inbounds i16** %12, i64 %idxprom5, !dbg !2616
  %13 = load i16** %arrayidx6, align 8, !dbg !2616, !tbaa !1428
  %14 = bitcast i16* %13 to i8*, !dbg !2616
  %15 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !2616, !tbaa !1428
  %imgY8 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 25, !dbg !2616
  %16 = load i16*** %imgY8, align 8, !dbg !2616, !tbaa !1428
  %arrayidx9 = getelementptr inbounds i16** %16, i64 %indvars.iv93, !dbg !2616
  %17 = load i16** %arrayidx9, align 8, !dbg !2616, !tbaa !1428
  %18 = bitcast i16* %17 to i8*, !dbg !2616
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !2616, !tbaa !1428
  %width10 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 13, !dbg !2616
  %20 = load i32* %width10, align 4, !dbg !2616, !tbaa !1424
  %conv11 = sext i32 %20 to i64, !dbg !2616
  %mul12 = shl nsw i64 %conv11, 1, !dbg !2616
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %18, i64 %mul12, i32 2, i1 false), !dbg !2616
  %indvars.iv.next94 = add i64 %indvars.iv93, 1, !dbg !2612
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !2612, !tbaa !1428
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15, !dbg !2612
  %22 = load i32* %height, align 4, !dbg !2612, !tbaa !1424
  %div = sdiv i32 %22, 2, !dbg !2612
  %23 = trunc i64 %indvars.iv.next94 to i32, !dbg !2612
  %cmp = icmp slt i32 %23, %div, !dbg !2612
  br i1 %cmp, label %for.body, label %for.end, !dbg !2612

for.end:                                          ; preds = %for.body, %entry
  %24 = phi %struct.ImageParameters* [ %0, %entry ], [ %21, %for.body ]
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 159, !dbg !2617
  %25 = load i32* %yuv_format, align 4, !dbg !2617, !tbaa !1424
  %cmp13 = icmp eq i32 %25, 0, !dbg !2617
  br i1 %cmp13, label %if.end, label %for.cond15.preheader, !dbg !2617

for.cond15.preheader:                             ; preds = %for.end
  %height_cr84 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 16, !dbg !2618
  %26 = load i32* %height_cr84, align 4, !dbg !2618, !tbaa !1424
  %cmp1786 = icmp sgt i32 %26, 1, !dbg !2618
  br i1 %cmp1786, label %for.body19, label %if.end, !dbg !2618

for.body19:                                       ; preds = %for.cond15.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond15.preheader ]
  %27 = phi %struct.ImageParameters* [ %72, %for.body19 ], [ %24, %for.cond15.preheader ]
  %28 = trunc i64 %indvars.iv to i32, !dbg !2621
  %mul20 = shl nsw i32 %28, 1, !dbg !2621
  %idxprom21 = sext i32 %mul20 to i64, !dbg !2621
  %29 = load i16**** @imgUV_com, align 8, !dbg !2621, !tbaa !1428
  %30 = load i16*** %29, align 8, !dbg !2621, !tbaa !1428
  %arrayidx23 = getelementptr inbounds i16** %30, i64 %idxprom21, !dbg !2621
  %31 = load i16** %arrayidx23, align 8, !dbg !2621, !tbaa !1428
  %32 = bitcast i16* %31 to i8*, !dbg !2621
  %33 = load %struct.storable_picture** @enc_top_picture, align 8, !dbg !2621, !tbaa !1428
  %imgUV = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 30, !dbg !2621
  %34 = load i16**** %imgUV, align 8, !dbg !2621, !tbaa !1428
  %35 = load i16*** %34, align 8, !dbg !2621, !tbaa !1428
  %arrayidx26 = getelementptr inbounds i16** %35, i64 %indvars.iv, !dbg !2621
  %36 = load i16** %arrayidx26, align 8, !dbg !2621, !tbaa !1428
  %37 = bitcast i16* %36 to i8*, !dbg !2621
  %width_cr = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 14, !dbg !2621
  %38 = load i32* %width_cr, align 4, !dbg !2621, !tbaa !1424
  %conv27 = sext i32 %38 to i64, !dbg !2621
  %mul28 = shl nsw i64 %conv27, 1, !dbg !2621
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %37, i64 %mul28, i32 2, i1 false), !dbg !2621
  %add3082 = or i32 %mul20, 1, !dbg !2623
  %idxprom31 = sext i32 %add3082 to i64, !dbg !2623
  %39 = load i16**** @imgUV_com, align 8, !dbg !2623, !tbaa !1428
  %40 = load i16*** %39, align 8, !dbg !2623, !tbaa !1428
  %arrayidx33 = getelementptr inbounds i16** %40, i64 %idxprom31, !dbg !2623
  %41 = load i16** %arrayidx33, align 8, !dbg !2623, !tbaa !1428
  %42 = bitcast i16* %41 to i8*, !dbg !2623
  %43 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !2623, !tbaa !1428
  %imgUV35 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 30, !dbg !2623
  %44 = load i16**** %imgUV35, align 8, !dbg !2623, !tbaa !1428
  %45 = load i16*** %44, align 8, !dbg !2623, !tbaa !1428
  %arrayidx37 = getelementptr inbounds i16** %45, i64 %indvars.iv, !dbg !2623
  %46 = load i16** %arrayidx37, align 8, !dbg !2623, !tbaa !1428
  %47 = bitcast i16* %46 to i8*, !dbg !2623
  %48 = load %struct.ImageParameters** @img, align 8, !dbg !2623, !tbaa !1428
  %width_cr38 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 14, !dbg !2623
  %49 = load i32* %width_cr38, align 4, !dbg !2623, !tbaa !1424
  %conv39 = sext i32 %49 to i64, !dbg !2623
  %mul40 = shl nsw i64 %conv39, 1, !dbg !2623
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %47, i64 %mul40, i32 2, i1 false), !dbg !2623
  %50 = load i16**** @imgUV_com, align 8, !dbg !2624, !tbaa !1428
  %arrayidx43 = getelementptr inbounds i16*** %50, i64 1, !dbg !2624
  %51 = load i16*** %arrayidx43, align 8, !dbg !2624, !tbaa !1428
  %arrayidx44 = getelementptr inbounds i16** %51, i64 %idxprom21, !dbg !2624
  %52 = load i16** %arrayidx44, align 8, !dbg !2624, !tbaa !1428
  %53 = bitcast i16* %52 to i8*, !dbg !2624
  %54 = load %struct.storable_picture** @enc_top_picture, align 8, !dbg !2624, !tbaa !1428
  %imgUV46 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 30, !dbg !2624
  %55 = load i16**** %imgUV46, align 8, !dbg !2624, !tbaa !1428
  %arrayidx47 = getelementptr inbounds i16*** %55, i64 1, !dbg !2624
  %56 = load i16*** %arrayidx47, align 8, !dbg !2624, !tbaa !1428
  %arrayidx48 = getelementptr inbounds i16** %56, i64 %indvars.iv, !dbg !2624
  %57 = load i16** %arrayidx48, align 8, !dbg !2624, !tbaa !1428
  %58 = bitcast i16* %57 to i8*, !dbg !2624
  %59 = load %struct.ImageParameters** @img, align 8, !dbg !2624, !tbaa !1428
  %width_cr49 = getelementptr inbounds %struct.ImageParameters* %59, i64 0, i32 14, !dbg !2624
  %60 = load i32* %width_cr49, align 4, !dbg !2624, !tbaa !1424
  %conv50 = sext i32 %60 to i64, !dbg !2624
  %mul51 = shl nsw i64 %conv50, 1, !dbg !2624
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %58, i64 %mul51, i32 2, i1 false), !dbg !2624
  %61 = load i16**** @imgUV_com, align 8, !dbg !2625, !tbaa !1428
  %arrayidx55 = getelementptr inbounds i16*** %61, i64 1, !dbg !2625
  %62 = load i16*** %arrayidx55, align 8, !dbg !2625, !tbaa !1428
  %arrayidx56 = getelementptr inbounds i16** %62, i64 %idxprom31, !dbg !2625
  %63 = load i16** %arrayidx56, align 8, !dbg !2625, !tbaa !1428
  %64 = bitcast i16* %63 to i8*, !dbg !2625
  %65 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !2625, !tbaa !1428
  %imgUV58 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 30, !dbg !2625
  %66 = load i16**** %imgUV58, align 8, !dbg !2625, !tbaa !1428
  %arrayidx59 = getelementptr inbounds i16*** %66, i64 1, !dbg !2625
  %67 = load i16*** %arrayidx59, align 8, !dbg !2625, !tbaa !1428
  %arrayidx60 = getelementptr inbounds i16** %67, i64 %indvars.iv, !dbg !2625
  %68 = load i16** %arrayidx60, align 8, !dbg !2625, !tbaa !1428
  %69 = bitcast i16* %68 to i8*, !dbg !2625
  %70 = load %struct.ImageParameters** @img, align 8, !dbg !2625, !tbaa !1428
  %width_cr61 = getelementptr inbounds %struct.ImageParameters* %70, i64 0, i32 14, !dbg !2625
  %71 = load i32* %width_cr61, align 4, !dbg !2625, !tbaa !1424
  %conv62 = sext i32 %71 to i64, !dbg !2625
  %mul63 = shl nsw i64 %conv62, 1, !dbg !2625
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %69, i64 %mul63, i32 2, i1 false), !dbg !2625
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2618
  %72 = load %struct.ImageParameters** @img, align 8, !dbg !2618, !tbaa !1428
  %height_cr = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 16, !dbg !2618
  %73 = load i32* %height_cr, align 4, !dbg !2618, !tbaa !1424
  %div16 = sdiv i32 %73, 2, !dbg !2618
  %74 = trunc i64 %indvars.iv.next to i32, !dbg !2618
  %cmp17 = icmp slt i32 %74, %div16, !dbg !2618
  br i1 %cmp17, label %for.body19, label %if.end, !dbg !2618

if.end:                                           ; preds = %for.cond15.preheader, %for.body19, %for.end
  ret void, !dbg !2626
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @decide_fld_frame(float %snr_frame_Y, float %snr_field_Y, i32 %bit_field, i32 %bit_frame, double %lambda_picture) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %snr_frame_Y}, i64 0, metadata !467), !dbg !2627
  tail call void @llvm.dbg.value(metadata !{float %snr_field_Y}, i64 0, metadata !468), !dbg !2627
  tail call void @llvm.dbg.value(metadata !{i32 %bit_field}, i64 0, metadata !469), !dbg !2627
  tail call void @llvm.dbg.value(metadata !{i32 %bit_frame}, i64 0, metadata !470), !dbg !2627
  tail call void @llvm.dbg.value(metadata !{double %lambda_picture}, i64 0, metadata !471), !dbg !2627
  %conv = sitofp i32 %bit_frame to double, !dbg !2628
  %mul = fmul double %conv, %lambda_picture, !dbg !2628
  %conv1 = fpext float %snr_frame_Y to double, !dbg !2628
  %add = fadd double %conv1, %mul, !dbg !2628
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !472), !dbg !2628
  %conv2 = sitofp i32 %bit_field to double, !dbg !2629
  %mul3 = fmul double %conv2, %lambda_picture, !dbg !2629
  %conv4 = fpext float %snr_field_Y to double, !dbg !2629
  %add5 = fadd double %conv4, %mul3, !dbg !2629
  tail call void @llvm.dbg.value(metadata !{double %add5}, i64 0, metadata !473), !dbg !2629
  %not.cmp = fcmp ule double %add5, %add, !dbg !2630
  %. = zext i1 %not.cmp to i32, !dbg !2630
  ret i32 %., !dbg !2631
}

; Function Attrs: nounwind optsize uwtable
define void @process_2nd_IGOP() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !30, i64 0, metadata !476), !dbg !2632
  %0 = load %struct.InputParameters** @input, align 8, !dbg !2633, !tbaa !1428
  tail call void @llvm.dbg.value(metadata !2634, i64 0, metadata !476), !dbg !2635
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 100, !dbg !2636
  %1 = load i32* %NumFrameIn2ndIGOP, align 4, !dbg !2636, !tbaa !1424
  %cmp1 = icmp eq i32 %1, 0, !dbg !2636
  br i1 %cmp1, label %return, label %if.end3, !dbg !2636

if.end3:                                          ; preds = %entry
  %no_frames = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 2, !dbg !2633
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !2633, !tbaa !1428
  %3 = load i32* %no_frames, align 4, !dbg !2633, !tbaa !1424
  %number = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 0, !dbg !2633
  %sub = add nsw i32 %3, -1, !dbg !2633
  %4 = load i32* %number, align 4, !dbg !2633, !tbaa !1424
  %tobool = icmp ne i32 %4, %sub, !dbg !2637
  %5 = load i32* @In2ndIGOP, align 4, !dbg !2637, !tbaa !1425
  %tobool4 = icmp ne i32 %5, 0, !dbg !2637
  %or.cond = or i1 %tobool4, %tobool, !dbg !2637
  br i1 %or.cond, label %return, label %if.end6, !dbg !2637

if.end6:                                          ; preds = %if.end3
  store i32 1, i32* @In2ndIGOP, align 4, !dbg !2638, !tbaa !1425
  %6 = load i32* %no_frames, align 4, !dbg !2639, !tbaa !1424
  store i32 %6, i32* @start_frame_no_in_this_IGOP, align 4, !dbg !2639, !tbaa !1424
  %7 = load i32* %no_frames, align 4, !dbg !2640, !tbaa !1424
  %sub9 = add nsw i32 %7, -1, !dbg !2640
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5, !dbg !2640
  %8 = load i32* %jumpd, align 4, !dbg !2640, !tbaa !1424
  %add = add nsw i32 %8, 1, !dbg !2640
  %mul = mul nsw i32 %add, %sub9, !dbg !2640
  %add10 = add nsw i32 %mul, 1, !dbg !2640
  store i32 %add10, i32* @start_tr_in_this_IGOP, align 4, !dbg !2640, !tbaa !1424
  %9 = load i32* %no_frames, align 4, !dbg !2641, !tbaa !1424
  %10 = load i32* %NumFrameIn2ndIGOP, align 4, !dbg !2641, !tbaa !1424
  %add13 = add nsw i32 %10, %9, !dbg !2641
  store i32 %add13, i32* %no_frames, align 4, !dbg !2641, !tbaa !1424
  %nb_references = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 2, !dbg !2642
  store i32 0, i32* %nb_references, align 4, !dbg !2642, !tbaa !1424
  br label %return, !dbg !2642

return:                                           ; preds = %if.end3, %entry, %if.end6
  ret void, !dbg !2642
}

; Function Attrs: nounwind optsize uwtable
define void @SetImgType() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !2643, !tbaa !1428
  %intra_period = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 31, !dbg !2643
  %1 = load i32* %intra_period, align 4, !dbg !2643, !tbaa !1424
  %cmp = icmp eq i32 %1, 0, !dbg !2643
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !2644, !tbaa !1428
  %number = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 0, !dbg !2644
  %3 = load i32* %number, align 4, !dbg !2644, !tbaa !1424
  %4 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !2644, !tbaa !1424
  br i1 %cmp, label %if.then, label %if.else13, !dbg !2643

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %3, %4, !dbg !2644
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !2646
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2644

if.then2:                                         ; preds = %if.then
  store i32 2, i32* %type, align 4, !dbg !2646, !tbaa !1424
  br label %if.end36, !dbg !2648

if.else:                                          ; preds = %if.then
  store i32 0, i32* %type, align 4, !dbg !2649, !tbaa !1424
  %sp_periodicity = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 43, !dbg !2651
  %5 = load i32* %sp_periodicity, align 4, !dbg !2651, !tbaa !1424
  %tobool = icmp eq i32 %5, 0, !dbg !2651
  br i1 %tobool, label %if.end36, label %if.then4, !dbg !2651

if.then4:                                         ; preds = %if.else
  %6 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !2652, !tbaa !1424
  %sub6 = sub nsw i32 %3, %6, !dbg !2652
  %rem = srem i32 %sub6, %5, !dbg !2652
  %cmp8 = icmp eq i32 %rem, 0, !dbg !2652
  br i1 %cmp8, label %if.then9, label %if.end36, !dbg !2652

if.then9:                                         ; preds = %if.then4
  store i32 3, i32* %type, align 4, !dbg !2654, !tbaa !1424
  br label %if.end36, !dbg !2656

if.else13:                                        ; preds = %entry
  %sub = sub nsw i32 %3, %4, !dbg !2644
  %rem17 = srem i32 %sub, %1, !dbg !2657
  %cmp18 = icmp eq i32 %rem17, 0, !dbg !2657
  %type20 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !2659
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !2657

if.then19:                                        ; preds = %if.else13
  store i32 2, i32* %type20, align 4, !dbg !2659, !tbaa !1424
  br label %if.end36, !dbg !2661

if.else21:                                        ; preds = %if.else13
  store i32 0, i32* %type20, align 4, !dbg !2662, !tbaa !1424
  %sp_periodicity23 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 43, !dbg !2664
  %7 = load i32* %sp_periodicity23, align 4, !dbg !2664, !tbaa !1424
  %tobool24 = icmp eq i32 %7, 0, !dbg !2664
  br i1 %tobool24, label %if.end36, label %if.then25, !dbg !2664

if.then25:                                        ; preds = %if.else21
  %8 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !2665, !tbaa !1424
  %sub27 = sub nsw i32 %3, %8, !dbg !2665
  %rem29 = srem i32 %sub27, %7, !dbg !2665
  %cmp30 = icmp eq i32 %rem29, 0, !dbg !2665
  br i1 %cmp30, label %if.then31, label %if.end36, !dbg !2665

if.then31:                                        ; preds = %if.then25
  store i32 3, i32* %type20, align 4, !dbg !2667, !tbaa !1424
  br label %if.end36, !dbg !2667

if.end36:                                         ; preds = %if.else, %if.else21, %if.then19, %if.then25, %if.then31, %if.then2, %if.then4, %if.then9
  ret void, !dbg !2668
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !30, metadata !31, metadata !478, metadata !30, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !14, metadata !21, metadata !25}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!12 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!13 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!14 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!17 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!18 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!19 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!20 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!21 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!24 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!25 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !28, metadata !29}
!27 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!28 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!29 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!30 = metadata !{i32 0}
!31 = metadata !{metadata !32, metadata !52, metadata !55, metadata !56, metadata !62, metadata !67, metadata !68, metadata !266, metadata !271, metadata !355, metadata !377, metadata !382, metadata !387, metadata !391, metadata !392, metadata !396, metadata !414, metadata !424, metadata !437, metadata !444, metadata !452, metadata !459, metadata !462, metadata !474, metadata !477}
!32 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"main", metadata !"main", metadata !"", i32 212, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !40, i32 213} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 213] [main]
!33 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !36, metadata !37}
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!39 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!41 = metadata !{i32 786689, metadata !32, metadata !"argc", metadata !33, i32 16777428, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 212]
!42 = metadata !{i32 786689, metadata !32, metadata !"argv", metadata !33, i32 33554644, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 212]
!43 = metadata !{i32 786688, metadata !32, metadata !"M", metadata !33, i32 214, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 214]
!44 = metadata !{i32 786688, metadata !32, metadata !"N", metadata !33, i32 214, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 214]
!45 = metadata !{i32 786688, metadata !32, metadata !"n", metadata !33, i32 214, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 214]
!46 = metadata !{i32 786688, metadata !32, metadata !"np", metadata !33, i32 214, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 214]
!47 = metadata !{i32 786688, metadata !32, metadata !"nb", metadata !33, i32 214, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 214]
!48 = metadata !{i32 786688, metadata !49, metadata !"bi", metadata !33, i32 353, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bi] [line 353]
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 352, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 306, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!51 = metadata !{i32 786443, metadata !1, metadata !32, i32 305, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!52 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"report_stats_on_error", metadata !"report_stats_on_error", metadata !"", i32 487, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @report_stats_on_error, null, null, metadata !30, i32 488} ; [ DW_TAG_subprogram ] [line 487] [def] [scope 488] [report_stats_on_error]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null}
!55 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"init_poc", metadata !"init_poc", metadata !"", i32 548, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_poc, null, null, metadata !30, i32 549} ; [ DW_TAG_subprogram ] [line 548] [def] [scope 549] [init_poc]
!56 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"CAVLC_init", metadata !"CAVLC_init", metadata !"", i32 599, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CAVLC_init, null, null, metadata !57, i32 600} ; [ DW_TAG_subprogram ] [line 599] [def] [scope 600] [CAVLC_init]
!57 = metadata !{metadata !58, metadata !60, metadata !61}
!58 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !33, i32 601, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 601]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786688, metadata !56, metadata !"k", metadata !33, i32 601, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 601]
!61 = metadata !{i32 786688, metadata !56, metadata !"l", metadata !33, i32 601, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 601]
!62 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"init_img", metadata !"init_img", metadata !"", i32 622, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_img, null, null, metadata !63, i32 623} ; [ DW_TAG_subprogram ] [line 622] [def] [scope 623] [init_img]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !33, i32 624, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 624]
!65 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !33, i32 624, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 624]
!66 = metadata !{i32 786688, metadata !62, metadata !"byte_abs_range", metadata !33, i32 625, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [byte_abs_range] [line 625]
!67 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_img", metadata !"free_img", metadata !"", i32 846, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @free_img, null, null, metadata !30, i32 847} ; [ DW_TAG_subprogram ] [line 846] [def] [scope 847] [free_img]
!68 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"malloc_picture", metadata !"malloc_picture", metadata !"", i32 930, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, %struct.Picture* ()* @malloc_picture, null, null, metadata !264, i32 931} ; [ DW_TAG_subprogram ] [line 930] [def] [scope 931] [malloc_picture]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!72 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!73 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !259, metadata !260, metadata !262, metadata !263}
!75 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!77 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !79, metadata !257, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!80 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !166, metadata !205, metadata !232, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !254}
!83 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!85 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!86 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!87 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!88 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!89 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !90} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!91 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!92 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !93, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !113, metadata !138}
!94 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!96 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!97 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !98, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !112}
!99 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!101 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!102 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!103 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!104 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!105 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!106 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !102} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!107 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !102} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!108 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!109 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!110 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !111} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!112 = metadata !{i32 786445, metadata !9, metadata !97, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!113 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!114 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!117 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!118 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!119 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!120 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!121 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!122 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !111} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!123 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !124} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!126 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !59} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!127 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!128 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !59} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!129 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!130 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !111} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!131 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !124} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!132 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!133 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !36} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!134 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!135 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !36} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!136 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!137 = metadata !{i32 786445, metadata !9, metadata !115, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!138 = metadata !{i32 786445, metadata !9, metadata !92, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !139} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !36, metadata !142, metadata !165}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!143 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!144 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !158}
!146 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!147 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!148 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!149 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!150 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!151 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!152 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!153 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!154 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !155} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{null, metadata !36, metadata !36, metadata !124, metadata !124}
!158 = metadata !{i32 786445, metadata !9, metadata !144, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !159} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{null, metadata !162, metadata !163}
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!163 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!166 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !167} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!168 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!169 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !184, metadata !189, metadata !193, metadata !197, metadata !201, metadata !202}
!171 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!172 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !173, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!173 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!174 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!175 = metadata !{metadata !176, metadata !178, metadata !179}
!176 = metadata !{i32 786445, metadata !9, metadata !174, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !177} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!177 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!178 = metadata !{i32 786445, metadata !9, metadata !174, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !103} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!179 = metadata !{i32 786445, metadata !9, metadata !174, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !180} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!180 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!181 = metadata !{metadata !182, metadata !183}
!182 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!183 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!184 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !185} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!185 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !173, metadata !186, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!186 = metadata !{metadata !187, metadata !188}
!187 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!188 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!189 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !190} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!190 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !173, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!191 = metadata !{metadata !187, metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!193 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !194} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !173, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!195 = metadata !{metadata !187, metadata !196}
!196 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!197 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !198} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!198 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !173, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!201 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !198} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!202 = metadata !{i32 786445, metadata !9, metadata !169, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !203} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!203 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !173, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!204 = metadata !{metadata !182}
!205 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !206} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!207 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !213, metadata !214, metadata !217, metadata !220, metadata !224, metadata !225, metadata !229, metadata !230, metadata !231}
!210 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!211 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !173, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!212 = metadata !{metadata !187}
!213 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !198} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!214 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !215} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!215 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !173, metadata !216, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!216 = metadata !{metadata !182, metadata !200}
!217 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !218} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!218 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !173, metadata !219, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!219 = metadata !{metadata !192, metadata !200}
!220 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !221} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!221 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !173, metadata !222, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!222 = metadata !{metadata !192, metadata !223}
!223 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!224 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !221} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!225 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !226} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!226 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !173, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!227 = metadata !{metadata !192, metadata !228}
!228 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!229 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !226} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!230 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !221} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!231 = metadata !{i32 786445, metadata !9, metadata !208, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !221} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!232 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !233} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!234 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!235 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!236 = metadata !{metadata !237, metadata !238, metadata !239}
!237 = metadata !{i32 786445, metadata !9, metadata !235, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !9, metadata !235, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!239 = metadata !{i32 786445, metadata !9, metadata !235, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!241 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!242 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !124} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!243 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !124} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!244 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !124} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!245 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!246 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !124} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!247 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !124} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!248 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !124} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!249 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !250} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{metadata !253, metadata !36}
!253 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!254 = metadata !{i32 786445, metadata !9, metadata !81, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !255} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!255 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !256, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!256 = metadata !{metadata !182, metadata !187}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!259 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!260 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !261} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!261 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!262 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !261} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!263 = metadata !{i32 786445, metadata !9, metadata !73, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !261} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!264 = metadata !{metadata !265}
!265 = metadata !{i32 786688, metadata !68, metadata !"pic", metadata !33, i32 932, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic] [line 932]
!266 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_picture", metadata !"free_picture", metadata !"", i32 948, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*)* @free_picture, null, null, metadata !269, i32 949} ; [ DW_TAG_subprogram ] [line 948] [def] [scope 949] [free_picture]
!267 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!268 = metadata !{null, metadata !71}
!269 = metadata !{metadata !270}
!270 = metadata !{i32 786689, metadata !266, metadata !"pic", metadata !33, i32 16778164, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic] [line 948]
!271 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"report_frame_statistic", metadata !"report_frame_statistic", metadata !"", i32 964, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @report_frame_statistic, null, null, metadata !272, i32 965} ; [ DW_TAG_subprogram ] [line 964] [def] [scope 965] [report_frame_statistic]
!272 = metadata !{metadata !273, metadata !327, metadata !328, metadata !329, metadata !330, metadata !333, metadata !351}
!273 = metadata !{i32 786688, metadata !271, metadata !"p_stat_frm", metadata !33, i32 966, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_stat_frm] [line 966]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!275 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!276 = metadata !{i32 786451, metadata !277, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !278, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!277 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !299, metadata !300, metadata !301, metadata !302, metadata !305, metadata !306, metadata !308, metadata !312, metadata !314, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !322, metadata !323}
!279 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!280 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!281 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!282 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!283 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!284 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!285 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!286 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!287 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!288 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!289 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!290 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!291 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !292} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!293 = metadata !{i32 786451, metadata !277, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !294, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!294 = metadata !{metadata !295, metadata !296, metadata !298}
!295 = metadata !{i32 786445, metadata !277, metadata !293, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !292} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!296 = metadata !{i32 786445, metadata !277, metadata !293, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !297} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!298 = metadata !{i32 786445, metadata !277, metadata !293, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!299 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !297} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!300 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!301 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!302 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !303} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!303 = metadata !{i32 786454, metadata !277, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!304 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!305 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !177} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!306 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !307} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!307 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!308 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !309} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!309 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !39, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!310 = metadata !{metadata !311}
!311 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!312 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !313} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!314 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !315} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!315 = metadata !{i32 786454, metadata !277, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!316 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !313} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!317 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !313} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!318 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !313} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!319 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !313} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!320 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !321} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!321 = metadata !{i32 786454, metadata !277, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!322 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!323 = metadata !{i32 786445, metadata !277, metadata !276, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !324} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !39, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!327 = metadata !{i32 786688, metadata !271, metadata !"i", metadata !33, i32 971, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 971]
!328 = metadata !{i32 786688, metadata !271, metadata !"name", metadata !33, i32 972, metadata !324, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 972]
!329 = metadata !{i32 786688, metadata !271, metadata !"bitcounter", metadata !33, i32 973, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitcounter] [line 973]
!330 = metadata !{i32 786688, metadata !271, metadata !"now", metadata !33, i32 976, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 976]
!331 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!332 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!333 = metadata !{i32 786688, metadata !271, metadata !"l_time", metadata !33, i32 977, metadata !334, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l_time] [line 977]
!334 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tm]
!335 = metadata !{i32 786451, metadata !336, null, metadata !"tm", i32 133, i64 448, i64 64, i32 0, i32 0, null, metadata !337, i32 0, null, null} ; [ DW_TAG_structure_type ] [tm] [line 133, size 448, align 64, offset 0] [from ]
!336 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348}
!338 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_sec", i32 135, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!339 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_min", i32 136, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!340 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_hour", i32 137, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!341 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_mday", i32 138, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!342 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_mon", i32 139, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!343 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_year", i32 140, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!344 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_wday", i32 141, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!345 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_yday", i32 142, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!346 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_isdst", i32 143, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!347 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_gmtoff", i32 146, i64 64, i64 64, i64 320, i32 0, metadata !304} ; [ DW_TAG_member ] [tm_gmtoff] [line 146, size 64, align 64, offset 320] [from long int]
!348 = metadata !{i32 786445, metadata !336, metadata !335, metadata !"tm_zone", i32 147, i64 64, i64 64, i64 384, i32 0, metadata !349} ; [ DW_TAG_member ] [tm_zone] [line 147, size 64, align 64, offset 384] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!350 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!351 = metadata !{i32 786688, metadata !271, metadata !"string", metadata !33, i32 978, metadata !352, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string] [line 978]
!352 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8000, i64 8, i32 0, i32 0, metadata !39, metadata !353, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8000, align 8, offset 0] [from char]
!353 = metadata !{metadata !354}
!354 = metadata !{i32 786465, i64 0, i64 1000}    ; [ DW_TAG_subrange_type ] [0, 999]
!355 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"report", metadata !"report", metadata !"", i32 1175, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @report, null, null, metadata !356, i32 1176} ; [ DW_TAG_subprogram ] [line 1175] [def] [scope 1176] [report]
!356 = metadata !{metadata !357, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !367, metadata !368, metadata !369, metadata !370, metadata !375, metadata !376}
!357 = metadata !{i32 786688, metadata !355, metadata !"bit_use", metadata !33, i32 1177, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit_use] [line 1177]
!358 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !36, metadata !359, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!359 = metadata !{metadata !228, metadata !187}
!360 = metadata !{i32 786688, metadata !355, metadata !"i", metadata !33, i32 1178, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1178]
!361 = metadata !{i32 786688, metadata !355, metadata !"j", metadata !33, i32 1178, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1178]
!362 = metadata !{i32 786688, metadata !355, metadata !"name", metadata !33, i32 1179, metadata !324, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1179]
!363 = metadata !{i32 786688, metadata !355, metadata !"total_bits", metadata !33, i32 1180, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_bits] [line 1180]
!364 = metadata !{i32 786688, metadata !355, metadata !"frame_rate", metadata !33, i32 1181, metadata !261, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frame_rate] [line 1181]
!365 = metadata !{i32 786688, metadata !355, metadata !"mean_motion_info_bit_use", metadata !33, i32 1182, metadata !366, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mean_motion_info_bit_use] [line 1182]
!366 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !261, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from float]
!367 = metadata !{i32 786688, metadata !355, metadata !"now", metadata !33, i32 1185, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 1185]
!368 = metadata !{i32 786688, metadata !355, metadata !"l_time", metadata !33, i32 1186, metadata !334, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l_time] [line 1186]
!369 = metadata !{i32 786688, metadata !355, metadata !"string", metadata !33, i32 1187, metadata !352, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string] [line 1187]
!370 = metadata !{i32 786688, metadata !371, metadata !"seqtype", metadata !33, i32 1263, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqtype] [line 1263]
!371 = metadata !{i32 786443, metadata !1, metadata !355, i32 1262, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!372 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 8, i32 0, i32 0, metadata !39, metadata !373, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 8, offset 0] [from char]
!373 = metadata !{metadata !374}
!374 = metadata !{i32 786465, i64 0, i64 80}      ; [ DW_TAG_subrange_type ] [0, 79]
!375 = metadata !{i32 786688, metadata !371, metadata !"i", metadata !33, i32 1264, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1264]
!376 = metadata !{i32 786688, metadata !371, metadata !"j", metadata !33, i32 1264, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1264]
!377 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"information_init", metadata !"information_init", metadata !"", i32 1803, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @information_init, null, null, metadata !378, i32 1804} ; [ DW_TAG_subprogram ] [line 1803] [def] [scope 1804] [information_init]
!378 = metadata !{metadata !379}
!379 = metadata !{i32 786688, metadata !377, metadata !"yuv_types", metadata !33, i32 1805, metadata !380, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yuv_types] [line 1805]
!380 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !39, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!381 = metadata !{metadata !200, metadata !192}
!382 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"init_orig_buffers", metadata !"init_orig_buffers", metadata !"", i32 1827, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @init_orig_buffers, null, null, metadata !385, i32 1828} ; [ DW_TAG_subprogram ] [line 1827] [def] [scope 1828] [init_orig_buffers]
!383 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!384 = metadata !{metadata !36}
!385 = metadata !{metadata !386}
!386 = metadata !{i32 786688, metadata !382, metadata !"memory_size", metadata !33, i32 1829, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memory_size] [line 1829]
!387 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"init_global_buffers", metadata !"init_global_buffers", metadata !"", i32 1871, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @init_global_buffers, null, null, metadata !388, i32 1872} ; [ DW_TAG_subprogram ] [line 1871] [def] [scope 1872] [init_global_buffers]
!388 = metadata !{metadata !389, metadata !390}
!389 = metadata !{i32 786688, metadata !387, metadata !"j", metadata !33, i32 1873, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1873]
!390 = metadata !{i32 786688, metadata !387, metadata !"memory_size", metadata !33, i32 1873, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memory_size] [line 1873]
!391 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_orig_planes", metadata !"free_orig_planes", metadata !"", i32 1958, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @free_orig_planes, null, null, metadata !30, i32 1959} ; [ DW_TAG_subprogram ] [line 1958] [def] [scope 1959] [free_orig_planes]
!392 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_global_buffers", metadata !"free_global_buffers", metadata !"", i32 1994, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @free_global_buffers, null, null, metadata !393, i32 1995} ; [ DW_TAG_subprogram ] [line 1994] [def] [scope 1995] [free_global_buffers]
!393 = metadata !{metadata !394, metadata !395}
!394 = metadata !{i32 786688, metadata !392, metadata !"i", metadata !33, i32 1996, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1996]
!395 = metadata !{i32 786688, metadata !392, metadata !"j", metadata !33, i32 1996, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1996]
!396 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"get_mem_mv", metadata !"get_mem_mv", metadata !"", i32 2104, metadata !397, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16*******)* @get_mem_mv, null, null, metadata !407, i32 2105} ; [ DW_TAG_subprogram ] [line 2104] [def] [scope 2105] [get_mem_mv]
!397 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!398 = metadata !{metadata !36, metadata !399}
!399 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !400} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!400 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !401} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!401 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !402} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!402 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !403} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!403 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!404 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!405 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !406} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!406 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!407 = metadata !{metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413}
!408 = metadata !{i32 786689, metadata !396, metadata !"mv", metadata !33, i32 16779320, metadata !399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 2104]
!409 = metadata !{i32 786688, metadata !396, metadata !"i", metadata !33, i32 2106, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2106]
!410 = metadata !{i32 786688, metadata !396, metadata !"j", metadata !33, i32 2106, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2106]
!411 = metadata !{i32 786688, metadata !396, metadata !"k", metadata !33, i32 2106, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2106]
!412 = metadata !{i32 786688, metadata !396, metadata !"l", metadata !33, i32 2106, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 2106]
!413 = metadata !{i32 786688, metadata !396, metadata !"m", metadata !33, i32 2106, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 2106]
!414 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_mem_mv", metadata !"free_mem_mv", metadata !"", i32 2145, metadata !415, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16******)* @free_mem_mv, null, null, metadata !417, i32 2146} ; [ DW_TAG_subprogram ] [line 2145] [def] [scope 2146] [free_mem_mv]
!415 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!416 = metadata !{null, metadata !400}
!417 = metadata !{metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423}
!418 = metadata !{i32 786689, metadata !414, metadata !"mv", metadata !33, i32 16779361, metadata !400, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 2145]
!419 = metadata !{i32 786688, metadata !414, metadata !"i", metadata !33, i32 2147, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2147]
!420 = metadata !{i32 786688, metadata !414, metadata !"j", metadata !33, i32 2147, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2147]
!421 = metadata !{i32 786688, metadata !414, metadata !"k", metadata !33, i32 2147, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2147]
!422 = metadata !{i32 786688, metadata !414, metadata !"l", metadata !33, i32 2147, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 2147]
!423 = metadata !{i32 786688, metadata !414, metadata !"m", metadata !33, i32 2147, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 2147]
!424 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"get_mem_ACcoeff", metadata !"get_mem_ACcoeff", metadata !"", i32 2182, metadata !425, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*****)* @get_mem_ACcoeff, null, null, metadata !431, i32 2183} ; [ DW_TAG_subprogram ] [line 2182] [def] [scope 2183] [get_mem_ACcoeff]
!425 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!426 = metadata !{metadata !36, metadata !427}
!427 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !428} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !429} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!429 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!431 = metadata !{metadata !432, metadata !433, metadata !434, metadata !435, metadata !436}
!432 = metadata !{i32 786689, metadata !424, metadata !"cofAC", metadata !33, i32 16779398, metadata !427, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cofAC] [line 2182]
!433 = metadata !{i32 786688, metadata !424, metadata !"i", metadata !33, i32 2184, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2184]
!434 = metadata !{i32 786688, metadata !424, metadata !"j", metadata !33, i32 2184, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2184]
!435 = metadata !{i32 786688, metadata !424, metadata !"k", metadata !33, i32 2184, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2184]
!436 = metadata !{i32 786688, metadata !424, metadata !"num_blk8x8", metadata !33, i32 2185, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_blk8x8] [line 2185]
!437 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"get_mem_DCcoeff", metadata !"get_mem_DCcoeff", metadata !"", i32 2209, metadata !438, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32****)* @get_mem_DCcoeff, null, null, metadata !440, i32 2210} ; [ DW_TAG_subprogram ] [line 2209] [def] [scope 2210] [get_mem_DCcoeff]
!438 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{metadata !36, metadata !428}
!440 = metadata !{metadata !441, metadata !442, metadata !443}
!441 = metadata !{i32 786689, metadata !437, metadata !"cofDC", metadata !33, i32 16779425, metadata !428, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cofDC] [line 2209]
!442 = metadata !{i32 786688, metadata !437, metadata !"j", metadata !33, i32 2211, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2211]
!443 = metadata !{i32 786688, metadata !437, metadata !"k", metadata !33, i32 2211, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2211]
!444 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_mem_ACcoeff", metadata !"free_mem_ACcoeff", metadata !"", i32 2232, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32****)* @free_mem_ACcoeff, null, null, metadata !447, i32 2233} ; [ DW_TAG_subprogram ] [line 2232] [def] [scope 2233] [free_mem_ACcoeff]
!445 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!446 = metadata !{null, metadata !428}
!447 = metadata !{metadata !448, metadata !449, metadata !450, metadata !451}
!448 = metadata !{i32 786689, metadata !444, metadata !"cofAC", metadata !33, i32 16779448, metadata !428, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cofAC] [line 2232]
!449 = metadata !{i32 786688, metadata !444, metadata !"i", metadata !33, i32 2234, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2234]
!450 = metadata !{i32 786688, metadata !444, metadata !"j", metadata !33, i32 2234, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2234]
!451 = metadata !{i32 786688, metadata !444, metadata !"k", metadata !33, i32 2234, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 2234]
!452 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"free_mem_DCcoeff", metadata !"free_mem_DCcoeff", metadata !"", i32 2257, metadata !453, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32***)* @free_mem_DCcoeff, null, null, metadata !455, i32 2258} ; [ DW_TAG_subprogram ] [line 2257] [def] [scope 2258] [free_mem_DCcoeff]
!453 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!454 = metadata !{null, metadata !429}
!455 = metadata !{metadata !456, metadata !457, metadata !458}
!456 = metadata !{i32 786689, metadata !452, metadata !"cofDC", metadata !33, i32 16779473, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cofDC] [line 2257]
!457 = metadata !{i32 786688, metadata !452, metadata !"i", metadata !33, i32 2259, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2259]
!458 = metadata !{i32 786688, metadata !452, metadata !"j", metadata !33, i32 2259, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2259]
!459 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"combine_field", metadata !"combine_field", metadata !"", i32 2279, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @combine_field, null, null, metadata !460, i32 2280} ; [ DW_TAG_subprogram ] [line 2279] [def] [scope 2280] [combine_field]
!460 = metadata !{metadata !461}
!461 = metadata !{i32 786688, metadata !459, metadata !"i", metadata !33, i32 2281, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2281]
!462 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"decide_fld_frame", metadata !"decide_fld_frame", metadata !"", i32 2307, metadata !463, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float, float, i32, i32, double)* @decide_fld_frame, null, null, metadata !466, i32 2308} ; [ DW_TAG_subprogram ] [line 2307] [def] [scope 2308] [decide_fld_frame]
!463 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{metadata !36, metadata !261, metadata !261, metadata !36, metadata !36, metadata !465}
!465 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!466 = metadata !{metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473}
!467 = metadata !{i32 786689, metadata !462, metadata !"snr_frame_Y", metadata !33, i32 16779523, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_frame_Y] [line 2307]
!468 = metadata !{i32 786689, metadata !462, metadata !"snr_field_Y", metadata !33, i32 33556739, metadata !261, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_field_Y] [line 2307]
!469 = metadata !{i32 786689, metadata !462, metadata !"bit_field", metadata !33, i32 50333955, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bit_field] [line 2307]
!470 = metadata !{i32 786689, metadata !462, metadata !"bit_frame", metadata !33, i32 67111171, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bit_frame] [line 2307]
!471 = metadata !{i32 786689, metadata !462, metadata !"lambda_picture", metadata !33, i32 83888387, metadata !465, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda_picture] [line 2307]
!472 = metadata !{i32 786688, metadata !462, metadata !"cost_frame", metadata !33, i32 2309, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost_frame] [line 2309]
!473 = metadata !{i32 786688, metadata !462, metadata !"cost_field", metadata !33, i32 2309, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost_field] [line 2309]
!474 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"process_2nd_IGOP", metadata !"process_2nd_IGOP", metadata !"", i32 2326, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @process_2nd_IGOP, null, null, metadata !475, i32 2327} ; [ DW_TAG_subprogram ] [line 2326] [def] [scope 2327] [process_2nd_IGOP]
!475 = metadata !{metadata !476}
!476 = metadata !{i32 786688, metadata !474, metadata !"FirstIGOPFinished", metadata !33, i32 2328, metadata !253, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FirstIGOPFinished] [line 2328]
!477 = metadata !{i32 786478, metadata !1, metadata !33, metadata !"SetImgType", metadata !"SetImgType", metadata !"", i32 2356, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @SetImgType, null, null, metadata !30, i32 2357} ; [ DW_TAG_subprogram ] [line 2356] [def] [scope 2357] [SetImgType]
!478 = metadata !{metadata !479, metadata !645, metadata !909, metadata !952, metadata !970, metadata !987, metadata !988, metadata !989, metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1048, metadata !1143, metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162, metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1176, metadata !1177, metadata !1178, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1185, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1193, metadata !1204, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1259, metadata !1262, metadata !1270, metadata !1271, metadata !1281, metadata !1282, metadata !1291, metadata !1309, metadata !1312, metadata !1313, metadata !1314, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1331, metadata !1334, metadata !1335, metadata !1336, metadata !1337, metadata !1338, metadata !1339, metadata !1340, metadata !1341, metadata !1342, metadata !1343, metadata !1344, metadata !1345, metadata !1346, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1357, metadata !1359, metadata !1360, metadata !1361, metadata !1362, metadata !1363, metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1370, metadata !1371, metadata !1372, metadata !1373, metadata !1374, metadata !1375, metadata !1376, metadata !1377, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1383, metadata !1384, metadata !1385, metadata !1386, metadata !1387, metadata !1388, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1400, metadata !1401, metadata !1402, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421}
!479 = metadata !{i32 786484, i32 0, null, metadata !"input", metadata !"input", metadata !"", metadata !33, i32 177, metadata !480, i32 0, i32 1, %struct.InputParameters** @input, null} ; [ DW_TAG_variable ] [input] [line 177] [def]
!480 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InputParameters]
!481 = metadata !{i32 786454, metadata !1, null, metadata !"InputParameters", i32 865, i64 0, i64 0, i64 0, i32 0, metadata !482} ; [ DW_TAG_typedef ] [InputParameters] [line 865, size 0, align 0, offset 0] [from ]
!482 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 661, i64 28736, i64 64, i32 0, i32 0, null, metadata !483, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 661, size 28736, align 64, offset 0] [from ]
!483 = metadata !{metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !643, metadata !644}
!484 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ProfileIDC", i32 663, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [ProfileIDC] [line 663, size 32, align 32, offset 0] [from int]
!485 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LevelIDC", i32 664, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [LevelIDC] [line 664, size 32, align 32, offset 32] [from int]
!486 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"no_frames", i32 666, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [no_frames] [line 666, size 32, align 32, offset 64] [from int]
!487 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qp0", i32 667, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [qp0] [line 667, size 32, align 32, offset 96] [from int]
!488 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpN", i32 668, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [qpN] [line 668, size 32, align 32, offset 128] [from int]
!489 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"jumpd", i32 669, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [jumpd] [line 669, size 32, align 32, offset 160] [from int]
!490 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"hadamard", i32 670, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [hadamard] [line 670, size 32, align 32, offset 192] [from int]
!491 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"hadamardqpel", i32 672, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [hadamardqpel] [line 672, size 32, align 32, offset 224] [from int]
!492 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"search_range", i32 673, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [search_range] [line 673, size 32, align 32, offset 256] [from int]
!493 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"num_ref_frames", i32 676, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_frames] [line 676, size 32, align 32, offset 288] [from int]
!494 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"P_List0_refs", i32 677, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [P_List0_refs] [line 677, size 32, align 32, offset 320] [from int]
!495 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"B_List0_refs", i32 678, i64 32, i64 32, i64 352, i32 0, metadata !36} ; [ DW_TAG_member ] [B_List0_refs] [line 678, size 32, align 32, offset 352] [from int]
!496 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"B_List1_refs", i32 679, i64 32, i64 32, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [B_List1_refs] [line 679, size 32, align 32, offset 384] [from int]
!497 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Log2MaxFrameNum", i32 680, i64 32, i64 32, i64 416, i32 0, metadata !36} ; [ DW_TAG_member ] [Log2MaxFrameNum] [line 680, size 32, align 32, offset 416] [from int]
!498 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ResendPPS", i32 681, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [ResendPPS] [line 681, size 32, align 32, offset 448] [from int]
!499 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"GenerateMultiplePPS", i32 682, i64 32, i64 32, i64 480, i32 0, metadata !36} ; [ DW_TAG_member ] [GenerateMultiplePPS] [line 682, size 32, align 32, offset 480] [from int]
!500 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"img_width", i32 684, i64 32, i64 32, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [img_width] [line 684, size 32, align 32, offset 512] [from int]
!501 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"img_height", i32 685, i64 32, i64 32, i64 544, i32 0, metadata !36} ; [ DW_TAG_member ] [img_height] [line 685, size 32, align 32, offset 544] [from int]
!502 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"yuv_format", i32 686, i64 32, i64 32, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [yuv_format] [line 686, size 32, align 32, offset 576] [from int]
!503 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"intra_upd", i32 687, i64 32, i64 32, i64 608, i32 0, metadata !36} ; [ DW_TAG_member ] [intra_upd] [line 687, size 32, align 32, offset 608] [from int]
!504 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"blc_size", i32 691, i64 512, i64 32, i64 640, i32 0, metadata !505} ; [ DW_TAG_member ] [blc_size] [line 691, size 512, align 32, offset 640] [from ]
!505 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !506, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!506 = metadata !{metadata !507, metadata !187}
!507 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!508 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"part_size", i32 692, i64 512, i64 32, i64 1152, i32 0, metadata !505} ; [ DW_TAG_member ] [part_size] [line 692, size 512, align 32, offset 1152] [from ]
!509 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_mode", i32 693, i64 32, i64 32, i64 1664, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_mode] [line 693, size 32, align 32, offset 1664] [from int]
!510 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_argument", i32 694, i64 32, i64 32, i64 1696, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_argument] [line 694, size 32, align 32, offset 1696] [from int]
!511 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"UseConstrainedIntraPred", i32 695, i64 32, i64 32, i64 1728, i32 0, metadata !36} ; [ DW_TAG_member ] [UseConstrainedIntraPred] [line 695, size 32, align 32, offset 1728] [from int]
!512 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"infile_header", i32 696, i64 32, i64 32, i64 1760, i32 0, metadata !36} ; [ DW_TAG_member ] [infile_header] [line 696, size 32, align 32, offset 1760] [from int]
!513 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"infile", i32 697, i64 1600, i64 8, i64 1792, i32 0, metadata !514} ; [ DW_TAG_member ] [infile] [line 697, size 1600, align 8, offset 1792] [from ]
!514 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 8, i32 0, i32 0, metadata !39, metadata !515, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1600, align 8, offset 0] [from char]
!515 = metadata !{metadata !516}
!516 = metadata !{i32 786465, i64 0, i64 200}     ; [ DW_TAG_subrange_type ] [0, 199]
!517 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"outfile", i32 698, i64 1600, i64 8, i64 3392, i32 0, metadata !514} ; [ DW_TAG_member ] [outfile] [line 698, size 1600, align 8, offset 3392] [from ]
!518 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ReconFile", i32 699, i64 1600, i64 8, i64 4992, i32 0, metadata !514} ; [ DW_TAG_member ] [ReconFile] [line 699, size 1600, align 8, offset 4992] [from ]
!519 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"TraceFile", i32 700, i64 1600, i64 8, i64 6592, i32 0, metadata !514} ; [ DW_TAG_member ] [TraceFile] [line 700, size 1600, align 8, offset 6592] [from ]
!520 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"QmatrixFile", i32 701, i64 1600, i64 8, i64 8192, i32 0, metadata !514} ; [ DW_TAG_member ] [QmatrixFile] [line 701, size 1600, align 8, offset 8192] [from ]
!521 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"intra_period", i32 702, i64 32, i64 32, i64 9792, i32 0, metadata !36} ; [ DW_TAG_member ] [intra_period] [line 702, size 32, align 32, offset 9792] [from int]
!522 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"idr_enable", i32 704, i64 32, i64 32, i64 9824, i32 0, metadata !36} ; [ DW_TAG_member ] [idr_enable] [line 704, size 32, align 32, offset 9824] [from int]
!523 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"start_frame", i32 705, i64 32, i64 32, i64 9856, i32 0, metadata !36} ; [ DW_TAG_member ] [start_frame] [line 705, size 32, align 32, offset 9856] [from int]
!524 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"successive_Bframe", i32 708, i64 32, i64 32, i64 9888, i32 0, metadata !36} ; [ DW_TAG_member ] [successive_Bframe] [line 708, size 32, align 32, offset 9888] [from int]
!525 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpB", i32 709, i64 32, i64 32, i64 9920, i32 0, metadata !36} ; [ DW_TAG_member ] [qpB] [line 709, size 32, align 32, offset 9920] [from int]
!526 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpBRSOffset", i32 710, i64 32, i64 32, i64 9952, i32 0, metadata !36} ; [ DW_TAG_member ] [qpBRSOffset] [line 710, size 32, align 32, offset 9952] [from int]
!527 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"direct_spatial_mv_pred_flag", i32 711, i64 32, i64 32, i64 9984, i32 0, metadata !36} ; [ DW_TAG_member ] [direct_spatial_mv_pred_flag] [line 711, size 32, align 32, offset 9984] [from int]
!528 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"directInferenceFlag", i32 712, i64 32, i64 32, i64 10016, i32 0, metadata !36} ; [ DW_TAG_member ] [directInferenceFlag] [line 712, size 32, align 32, offset 10016] [from int]
!529 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BiPredMotionEstimation", i32 714, i64 32, i64 32, i64 10048, i32 0, metadata !36} ; [ DW_TAG_member ] [BiPredMotionEstimation] [line 714, size 32, align 32, offset 10048] [from int]
!530 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BiPredMERefinements", i32 715, i64 32, i64 32, i64 10080, i32 0, metadata !36} ; [ DW_TAG_member ] [BiPredMERefinements] [line 715, size 32, align 32, offset 10080] [from int]
!531 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BiPredMESearchRange", i32 716, i64 32, i64 32, i64 10112, i32 0, metadata !36} ; [ DW_TAG_member ] [BiPredMESearchRange] [line 716, size 32, align 32, offset 10112] [from int]
!532 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BiPredMESubPel", i32 717, i64 32, i64 32, i64 10144, i32 0, metadata !36} ; [ DW_TAG_member ] [BiPredMESubPel] [line 717, size 32, align 32, offset 10144] [from int]
!533 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"sp_periodicity", i32 721, i64 32, i64 32, i64 10176, i32 0, metadata !36} ; [ DW_TAG_member ] [sp_periodicity] [line 721, size 32, align 32, offset 10176] [from int]
!534 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpsp", i32 722, i64 32, i64 32, i64 10208, i32 0, metadata !36} ; [ DW_TAG_member ] [qpsp] [line 722, size 32, align 32, offset 10208] [from int]
!535 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpsp_pred", i32 723, i64 32, i64 32, i64 10240, i32 0, metadata !36} ; [ DW_TAG_member ] [qpsp_pred] [line 723, size 32, align 32, offset 10240] [from int]
!536 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"WeightedPrediction", i32 725, i64 32, i64 32, i64 10272, i32 0, metadata !36} ; [ DW_TAG_member ] [WeightedPrediction] [line 725, size 32, align 32, offset 10272] [from int]
!537 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"WeightedBiprediction", i32 726, i64 32, i64 32, i64 10304, i32 0, metadata !36} ; [ DW_TAG_member ] [WeightedBiprediction] [line 726, size 32, align 32, offset 10304] [from int]
!538 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"UseWeightedReferenceME", i32 727, i64 32, i64 32, i64 10336, i32 0, metadata !36} ; [ DW_TAG_member ] [UseWeightedReferenceME] [line 727, size 32, align 32, offset 10336] [from int]
!539 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RDPictureDecision", i32 728, i64 32, i64 32, i64 10368, i32 0, metadata !36} ; [ DW_TAG_member ] [RDPictureDecision] [line 728, size 32, align 32, offset 10368] [from int]
!540 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RDPictureIntra", i32 729, i64 32, i64 32, i64 10400, i32 0, metadata !36} ; [ DW_TAG_member ] [RDPictureIntra] [line 729, size 32, align 32, offset 10400] [from int]
!541 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RDPSliceWeightOnly", i32 730, i64 32, i64 32, i64 10432, i32 0, metadata !36} ; [ DW_TAG_member ] [RDPSliceWeightOnly] [line 730, size 32, align 32, offset 10432] [from int]
!542 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RDBSliceWeightOnly", i32 731, i64 32, i64 32, i64 10464, i32 0, metadata !36} ; [ DW_TAG_member ] [RDBSliceWeightOnly] [line 731, size 32, align 32, offset 10464] [from int]
!543 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SkipIntraInInterSlices", i32 732, i64 32, i64 32, i64 10496, i32 0, metadata !36} ; [ DW_TAG_member ] [SkipIntraInInterSlices] [line 732, size 32, align 32, offset 10496] [from int]
!544 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BRefPictures", i32 733, i64 32, i64 32, i64 10528, i32 0, metadata !36} ; [ DW_TAG_member ] [BRefPictures] [line 733, size 32, align 32, offset 10528] [from int]
!545 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"PyramidCoding", i32 734, i64 32, i64 32, i64 10560, i32 0, metadata !36} ; [ DW_TAG_member ] [PyramidCoding] [line 734, size 32, align 32, offset 10560] [from int]
!546 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ExplicitPyramidFormat", i32 735, i64 8192, i64 8, i64 10592, i32 0, metadata !547} ; [ DW_TAG_member ] [ExplicitPyramidFormat] [line 735, size 8192, align 8, offset 10592] [from ]
!547 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !39, metadata !548, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!548 = metadata !{metadata !549}
!549 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!550 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"PyramidRefReorder", i32 736, i64 32, i64 32, i64 18784, i32 0, metadata !36} ; [ DW_TAG_member ] [PyramidRefReorder] [line 736, size 32, align 32, offset 18784] [from int]
!551 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"PocMemoryManagement", i32 737, i64 32, i64 32, i64 18816, i32 0, metadata !36} ; [ DW_TAG_member ] [PocMemoryManagement] [line 737, size 32, align 32, offset 18816] [from int]
!552 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"symbol_mode", i32 739, i64 32, i64 32, i64 18848, i32 0, metadata !36} ; [ DW_TAG_member ] [symbol_mode] [line 739, size 32, align 32, offset 18848] [from int]
!553 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"of_mode", i32 740, i64 32, i64 32, i64 18880, i32 0, metadata !36} ; [ DW_TAG_member ] [of_mode] [line 740, size 32, align 32, offset 18880] [from int]
!554 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"partition_mode", i32 741, i64 32, i64 32, i64 18912, i32 0, metadata !36} ; [ DW_TAG_member ] [partition_mode] [line 741, size 32, align 32, offset 18912] [from int]
!555 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch16x16", i32 743, i64 32, i64 32, i64 18944, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch16x16] [line 743, size 32, align 32, offset 18944] [from int]
!556 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch16x8", i32 744, i64 32, i64 32, i64 18976, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch16x8] [line 744, size 32, align 32, offset 18976] [from int]
!557 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch8x16", i32 745, i64 32, i64 32, i64 19008, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch8x16] [line 745, size 32, align 32, offset 19008] [from int]
!558 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch8x8", i32 746, i64 32, i64 32, i64 19040, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch8x8] [line 746, size 32, align 32, offset 19040] [from int]
!559 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch8x4", i32 747, i64 32, i64 32, i64 19072, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch8x4] [line 747, size 32, align 32, offset 19072] [from int]
!560 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch4x8", i32 748, i64 32, i64 32, i64 19104, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch4x8] [line 748, size 32, align 32, offset 19104] [from int]
!561 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"InterSearch4x4", i32 749, i64 32, i64 32, i64 19136, i32 0, metadata !36} ; [ DW_TAG_member ] [InterSearch4x4] [line 749, size 32, align 32, offset 19136] [from int]
!562 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"IntraDisableInterOnly", i32 751, i64 32, i64 32, i64 19168, i32 0, metadata !36} ; [ DW_TAG_member ] [IntraDisableInterOnly] [line 751, size 32, align 32, offset 19168] [from int]
!563 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Intra4x4ParDisable", i32 752, i64 32, i64 32, i64 19200, i32 0, metadata !36} ; [ DW_TAG_member ] [Intra4x4ParDisable] [line 752, size 32, align 32, offset 19200] [from int]
!564 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Intra4x4DiagDisable", i32 753, i64 32, i64 32, i64 19232, i32 0, metadata !36} ; [ DW_TAG_member ] [Intra4x4DiagDisable] [line 753, size 32, align 32, offset 19232] [from int]
!565 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Intra4x4DirDisable", i32 754, i64 32, i64 32, i64 19264, i32 0, metadata !36} ; [ DW_TAG_member ] [Intra4x4DirDisable] [line 754, size 32, align 32, offset 19264] [from int]
!566 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Intra16x16ParDisable", i32 755, i64 32, i64 32, i64 19296, i32 0, metadata !36} ; [ DW_TAG_member ] [Intra16x16ParDisable] [line 755, size 32, align 32, offset 19296] [from int]
!567 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"Intra16x16PlaneDisable", i32 756, i64 32, i64 32, i64 19328, i32 0, metadata !36} ; [ DW_TAG_member ] [Intra16x16PlaneDisable] [line 756, size 32, align 32, offset 19328] [from int]
!568 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ChromaIntraDisable", i32 757, i64 32, i64 32, i64 19360, i32 0, metadata !36} ; [ DW_TAG_member ] [ChromaIntraDisable] [line 757, size 32, align 32, offset 19360] [from int]
!569 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"FrameRate", i32 759, i64 64, i64 64, i64 19392, i32 0, metadata !465} ; [ DW_TAG_member ] [FrameRate] [line 759, size 64, align 64, offset 19392] [from double]
!570 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"chroma_qp_index_offset", i32 761, i64 32, i64 32, i64 19456, i32 0, metadata !36} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 761, size 32, align 32, offset 19456] [from int]
!571 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"full_search", i32 763, i64 32, i64 32, i64 19488, i32 0, metadata !36} ; [ DW_TAG_member ] [full_search] [line 763, size 32, align 32, offset 19488] [from int]
!572 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"last_frame", i32 766, i64 32, i64 32, i64 19520, i32 0, metadata !36} ; [ DW_TAG_member ] [last_frame] [line 766, size 32, align 32, offset 19520] [from int]
!573 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpN2", i32 769, i64 32, i64 32, i64 19552, i32 0, metadata !36} ; [ DW_TAG_member ] [qpN2] [line 769, size 32, align 32, offset 19552] [from int]
!574 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpB2", i32 769, i64 32, i64 32, i64 19584, i32 0, metadata !36} ; [ DW_TAG_member ] [qpB2] [line 769, size 32, align 32, offset 19584] [from int]
!575 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qp2start", i32 769, i64 32, i64 32, i64 19616, i32 0, metadata !36} ; [ DW_TAG_member ] [qp2start] [line 769, size 32, align 32, offset 19616] [from int]
!576 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qp02", i32 770, i64 32, i64 32, i64 19648, i32 0, metadata !36} ; [ DW_TAG_member ] [qp02] [line 770, size 32, align 32, offset 19648] [from int]
!577 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"qpBRS2Offset", i32 770, i64 32, i64 32, i64 19680, i32 0, metadata !36} ; [ DW_TAG_member ] [qpBRS2Offset] [line 770, size 32, align 32, offset 19680] [from int]
!578 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"rdopt", i32 772, i64 32, i64 32, i64 19712, i32 0, metadata !36} ; [ DW_TAG_member ] [rdopt] [line 772, size 32, align 32, offset 19712] [from int]
!579 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"disthres", i32 773, i64 32, i64 32, i64 19744, i32 0, metadata !36} ; [ DW_TAG_member ] [disthres] [line 773, size 32, align 32, offset 19744] [from int]
!580 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"nobskip", i32 774, i64 32, i64 32, i64 19776, i32 0, metadata !36} ; [ DW_TAG_member ] [nobskip] [line 774, size 32, align 32, offset 19776] [from int]
!581 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"NumberLeakyBuckets", i32 777, i64 32, i64 32, i64 19808, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberLeakyBuckets] [line 777, size 32, align 32, offset 19808] [from int]
!582 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LeakyBucketRateFile", i32 778, i64 1600, i64 8, i64 19840, i32 0, metadata !514} ; [ DW_TAG_member ] [LeakyBucketRateFile] [line 778, size 1600, align 8, offset 19840] [from ]
!583 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LeakyBucketParamFile", i32 779, i64 1600, i64 8, i64 21440, i32 0, metadata !514} ; [ DW_TAG_member ] [LeakyBucketParamFile] [line 779, size 1600, align 8, offset 21440] [from ]
!584 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"PicInterlace", i32 782, i64 32, i64 32, i64 23040, i32 0, metadata !36} ; [ DW_TAG_member ] [PicInterlace] [line 782, size 32, align 32, offset 23040] [from int]
!585 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"MbInterlace", i32 783, i64 32, i64 32, i64 23072, i32 0, metadata !36} ; [ DW_TAG_member ] [MbInterlace] [line 783, size 32, align 32, offset 23072] [from int]
!586 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"IntraBottom", i32 785, i64 32, i64 32, i64 23104, i32 0, metadata !36} ; [ DW_TAG_member ] [IntraBottom] [line 785, size 32, align 32, offset 23104] [from int]
!587 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LossRateA", i32 787, i64 32, i64 32, i64 23136, i32 0, metadata !36} ; [ DW_TAG_member ] [LossRateA] [line 787, size 32, align 32, offset 23136] [from int]
!588 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LossRateB", i32 788, i64 32, i64 32, i64 23168, i32 0, metadata !36} ; [ DW_TAG_member ] [LossRateB] [line 788, size 32, align 32, offset 23168] [from int]
!589 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LossRateC", i32 789, i64 32, i64 32, i64 23200, i32 0, metadata !36} ; [ DW_TAG_member ] [LossRateC] [line 789, size 32, align 32, offset 23200] [from int]
!590 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"NoOfDecoders", i32 790, i64 32, i64 32, i64 23232, i32 0, metadata !36} ; [ DW_TAG_member ] [NoOfDecoders] [line 790, size 32, align 32, offset 23232] [from int]
!591 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RestrictRef", i32 791, i64 32, i64 32, i64 23264, i32 0, metadata !36} ; [ DW_TAG_member ] [RestrictRef] [line 791, size 32, align 32, offset 23264] [from int]
!592 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"NumFramesInELSubSeq", i32 792, i64 32, i64 32, i64 23296, i32 0, metadata !36} ; [ DW_TAG_member ] [NumFramesInELSubSeq] [line 792, size 32, align 32, offset 23296] [from int]
!593 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"NumFrameIn2ndIGOP", i32 793, i64 32, i64 32, i64 23328, i32 0, metadata !36} ; [ DW_TAG_member ] [NumFrameIn2ndIGOP] [line 793, size 32, align 32, offset 23328] [from int]
!594 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RandomIntraMBRefresh", i32 795, i64 32, i64 32, i64 23360, i32 0, metadata !36} ; [ DW_TAG_member ] [RandomIntraMBRefresh] [line 795, size 32, align 32, offset 23360] [from int]
!595 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LFSendParameters", i32 797, i64 32, i64 32, i64 23392, i32 0, metadata !36} ; [ DW_TAG_member ] [LFSendParameters] [line 797, size 32, align 32, offset 23392] [from int]
!596 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LFDisableIdc", i32 798, i64 32, i64 32, i64 23424, i32 0, metadata !36} ; [ DW_TAG_member ] [LFDisableIdc] [line 798, size 32, align 32, offset 23424] [from int]
!597 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LFAlphaC0Offset", i32 799, i64 32, i64 32, i64 23456, i32 0, metadata !36} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 799, size 32, align 32, offset 23456] [from int]
!598 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LFBetaOffset", i32 800, i64 32, i64 32, i64 23488, i32 0, metadata !36} ; [ DW_TAG_member ] [LFBetaOffset] [line 800, size 32, align 32, offset 23488] [from int]
!599 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SparePictureOption", i32 802, i64 32, i64 32, i64 23520, i32 0, metadata !36} ; [ DW_TAG_member ] [SparePictureOption] [line 802, size 32, align 32, offset 23520] [from int]
!600 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SPDetectionThreshold", i32 803, i64 32, i64 32, i64 23552, i32 0, metadata !36} ; [ DW_TAG_member ] [SPDetectionThreshold] [line 803, size 32, align 32, offset 23552] [from int]
!601 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SPPercentageThreshold", i32 804, i64 32, i64 32, i64 23584, i32 0, metadata !36} ; [ DW_TAG_member ] [SPPercentageThreshold] [line 804, size 32, align 32, offset 23584] [from int]
!602 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SliceGroupConfigFileName", i32 807, i64 1600, i64 8, i64 23616, i32 0, metadata !514} ; [ DW_TAG_member ] [SliceGroupConfigFileName] [line 807, size 1600, align 8, offset 23616] [from ]
!603 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"num_slice_groups_minus1", i32 808, i64 32, i64 32, i64 25216, i32 0, metadata !36} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 808, size 32, align 32, offset 25216] [from int]
!604 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_group_map_type", i32 809, i64 32, i64 32, i64 25248, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_group_map_type] [line 809, size 32, align 32, offset 25248] [from int]
!605 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"top_left", i32 811, i64 64, i64 64, i64 25280, i32 0, metadata !124} ; [ DW_TAG_member ] [top_left] [line 811, size 64, align 64, offset 25280] [from ]
!606 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"bottom_right", i32 812, i64 64, i64 64, i64 25344, i32 0, metadata !124} ; [ DW_TAG_member ] [bottom_right] [line 812, size 64, align 64, offset 25344] [from ]
!607 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_group_id", i32 813, i64 64, i64 64, i64 25408, i32 0, metadata !111} ; [ DW_TAG_member ] [slice_group_id] [line 813, size 64, align 64, offset 25408] [from ]
!608 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"run_length_minus1", i32 814, i64 64, i64 64, i64 25472, i32 0, metadata !124} ; [ DW_TAG_member ] [run_length_minus1] [line 814, size 64, align 64, offset 25472] [from ]
!609 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_group_change_direction_flag", i32 816, i64 32, i64 32, i64 25536, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 816, size 32, align 32, offset 25536] [from int]
!610 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_group_change_rate_minus1", i32 817, i64 32, i64 32, i64 25568, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 817, size 32, align 32, offset 25568] [from int]
!611 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"slice_group_change_cycle", i32 818, i64 32, i64 32, i64 25600, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_group_change_cycle] [line 818, size 32, align 32, offset 25600] [from int]
!612 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"redundant_slice_flag", i32 820, i64 32, i64 32, i64 25632, i32 0, metadata !36} ; [ DW_TAG_member ] [redundant_slice_flag] [line 820, size 32, align 32, offset 25632] [from int]
!613 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"pic_order_cnt_type", i32 821, i64 32, i64 32, i64 25664, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 821, size 32, align 32, offset 25664] [from int]
!614 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"context_init_method", i32 823, i64 32, i64 32, i64 25696, i32 0, metadata !36} ; [ DW_TAG_member ] [context_init_method] [line 823, size 32, align 32, offset 25696] [from int]
!615 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"model_number", i32 824, i64 32, i64 32, i64 25728, i32 0, metadata !36} ; [ DW_TAG_member ] [model_number] [line 824, size 32, align 32, offset 25728] [from int]
!616 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"AllowTransform8x8", i32 825, i64 32, i64 32, i64 25760, i32 0, metadata !36} ; [ DW_TAG_member ] [AllowTransform8x8] [line 825, size 32, align 32, offset 25760] [from int]
!617 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LowPassForIntra8x8", i32 826, i64 32, i64 32, i64 25792, i32 0, metadata !36} ; [ DW_TAG_member ] [LowPassForIntra8x8] [line 826, size 32, align 32, offset 25792] [from int]
!618 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ReportFrameStats", i32 827, i64 32, i64 32, i64 25824, i32 0, metadata !36} ; [ DW_TAG_member ] [ReportFrameStats] [line 827, size 32, align 32, offset 25824] [from int]
!619 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"DisplayEncParams", i32 828, i64 32, i64 32, i64 25856, i32 0, metadata !36} ; [ DW_TAG_member ] [DisplayEncParams] [line 828, size 32, align 32, offset 25856] [from int]
!620 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"RCEnable", i32 831, i64 32, i64 32, i64 25888, i32 0, metadata !36} ; [ DW_TAG_member ] [RCEnable] [line 831, size 32, align 32, offset 25888] [from int]
!621 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"bit_rate", i32 832, i64 32, i64 32, i64 25920, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_rate] [line 832, size 32, align 32, offset 25920] [from int]
!622 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"SeinitialQP", i32 833, i64 32, i64 32, i64 25952, i32 0, metadata !36} ; [ DW_TAG_member ] [SeinitialQP] [line 833, size 32, align 32, offset 25952] [from int]
!623 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"basicunit", i32 834, i64 32, i64 32, i64 25984, i32 0, metadata !36} ; [ DW_TAG_member ] [basicunit] [line 834, size 32, align 32, offset 25984] [from int]
!624 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"channel_type", i32 835, i64 32, i64 32, i64 26016, i32 0, metadata !36} ; [ DW_TAG_member ] [channel_type] [line 835, size 32, align 32, offset 26016] [from int]
!625 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ScalingMatrixPresentFlag", i32 837, i64 32, i64 32, i64 26048, i32 0, metadata !36} ; [ DW_TAG_member ] [ScalingMatrixPresentFlag] [line 837, size 32, align 32, offset 26048] [from int]
!626 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"ScalingListPresentFlag", i32 838, i64 256, i64 32, i64 26080, i32 0, metadata !627} ; [ DW_TAG_member ] [ScalingListPresentFlag] [line 838, size 256, align 32, offset 26080] [from ]
!627 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !36, metadata !628, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!628 = metadata !{metadata !507}
!629 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"FMEnable", i32 841, i64 32, i64 32, i64 26336, i32 0, metadata !36} ; [ DW_TAG_member ] [FMEnable] [line 841, size 32, align 32, offset 26336] [from int]
!630 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BitDepthLuma", i32 844, i64 32, i64 32, i64 26368, i32 0, metadata !36} ; [ DW_TAG_member ] [BitDepthLuma] [line 844, size 32, align 32, offset 26368] [from int]
!631 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"BitDepthChroma", i32 845, i64 32, i64 32, i64 26400, i32 0, metadata !36} ; [ DW_TAG_member ] [BitDepthChroma] [line 845, size 32, align 32, offset 26400] [from int]
!632 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"img_height_cr", i32 846, i64 32, i64 32, i64 26432, i32 0, metadata !36} ; [ DW_TAG_member ] [img_height_cr] [line 846, size 32, align 32, offset 26432] [from int]
!633 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"img_width_cr", i32 847, i64 32, i64 32, i64 26464, i32 0, metadata !36} ; [ DW_TAG_member ] [img_width_cr] [line 847, size 32, align 32, offset 26464] [from int]
!634 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"rgb_input_flag", i32 848, i64 32, i64 32, i64 26496, i32 0, metadata !36} ; [ DW_TAG_member ] [rgb_input_flag] [line 848, size 32, align 32, offset 26496] [from int]
!635 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"cb_qp_index_offset", i32 849, i64 32, i64 32, i64 26528, i32 0, metadata !36} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 849, size 32, align 32, offset 26528] [from int]
!636 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"cr_qp_index_offset", i32 850, i64 32, i64 32, i64 26560, i32 0, metadata !36} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 850, size 32, align 32, offset 26560] [from int]
!637 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"lossless_qpprime_y_zero_flag", i32 853, i64 32, i64 32, i64 26592, i32 0, metadata !36} ; [ DW_TAG_member ] [lossless_qpprime_y_zero_flag] [line 853, size 32, align 32, offset 26592] [from int]
!638 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"residue_transform_flag", i32 856, i64 32, i64 32, i64 26624, i32 0, metadata !36} ; [ DW_TAG_member ] [residue_transform_flag] [line 856, size 32, align 32, offset 26624] [from int]
!639 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"UseExplicitLambdaParams", i32 859, i64 32, i64 32, i64 26656, i32 0, metadata !36} ; [ DW_TAG_member ] [UseExplicitLambdaParams] [line 859, size 32, align 32, offset 26656] [from int]
!640 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"LambdaWeight", i32 860, i64 384, i64 64, i64 26688, i32 0, metadata !641} ; [ DW_TAG_member ] [LambdaWeight] [line 860, size 384, align 64, offset 26688] [from ]
!641 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !465, metadata !642, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from double]
!642 = metadata !{metadata !196}
!643 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"QOffsetMatrixFile", i32 862, i64 1600, i64 8, i64 27072, i32 0, metadata !514} ; [ DW_TAG_member ] [QOffsetMatrixFile] [line 862, size 1600, align 8, offset 27072] [from ]
!644 = metadata !{i32 786445, metadata !9, metadata !482, metadata !"OffsetMatrixPresentFlag", i32 863, i64 32, i64 32, i64 28672, i32 0, metadata !36} ; [ DW_TAG_member ] [OffsetMatrixPresentFlag] [line 863, size 32, align 32, offset 28672] [from int]
!645 = metadata !{i32 786484, i32 0, null, metadata !"img", metadata !"img", metadata !"", metadata !33, i32 178, metadata !646, i32 0, i32 1, %struct.ImageParameters** @img, null} ; [ DW_TAG_variable ] [img] [line 178] [def]
!646 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !647} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ImageParameters]
!647 = metadata !{i32 786454, metadata !1, null, metadata !"ImageParameters", i32 1097, i64 0, i64 0, i64 0, i32 0, metadata !648} ; [ DW_TAG_typedef ] [ImageParameters] [line 1097, size 0, align 0, offset 0] [from ]
!648 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 868, i64 581888, i64 64, i32 0, i32 0, null, metadata !649, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 868, size 581888, align 64, offset 0] [from ]
!649 = metadata !{metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !695, metadata !698, metadata !701, metadata !704, metadata !707, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !771, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !826, metadata !827, metadata !828, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !907, metadata !908}
!650 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"number", i32 870, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [number] [line 870, size 32, align 32, offset 0] [from int]
!651 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pn", i32 871, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [pn] [line 871, size 32, align 32, offset 32] [from int]
!652 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"nb_references", i32 872, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [nb_references] [line 872, size 32, align 32, offset 64] [from int]
!653 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"current_mb_nr", i32 873, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [current_mb_nr] [line 873, size 32, align 32, offset 96] [from int]
!654 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"total_number_mb", i32 874, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [total_number_mb] [line 874, size 32, align 32, offset 128] [from int]
!655 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"current_slice_nr", i32 875, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [current_slice_nr] [line 875, size 32, align 32, offset 160] [from int]
!656 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"type", i32 876, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 876, size 32, align 32, offset 192] [from int]
!657 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"structure", i32 877, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [structure] [line 877, size 32, align 32, offset 224] [from int]
!658 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_ref_frames", i32 878, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_frames] [line 878, size 32, align 32, offset 256] [from int]
!659 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"max_num_references", i32 879, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [max_num_references] [line 879, size 32, align 32, offset 288] [from int]
!660 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"qp", i32 880, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 880, size 32, align 32, offset 320] [from int]
!661 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"qpsp", i32 881, i64 32, i64 32, i64 352, i32 0, metadata !36} ; [ DW_TAG_member ] [qpsp] [line 881, size 32, align 32, offset 352] [from int]
!662 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"framerate", i32 882, i64 32, i64 32, i64 384, i32 0, metadata !261} ; [ DW_TAG_member ] [framerate] [line 882, size 32, align 32, offset 384] [from float]
!663 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"width", i32 883, i64 32, i64 32, i64 416, i32 0, metadata !36} ; [ DW_TAG_member ] [width] [line 883, size 32, align 32, offset 416] [from int]
!664 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"width_cr", i32 884, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [width_cr] [line 884, size 32, align 32, offset 448] [from int]
!665 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"height", i32 885, i64 32, i64 32, i64 480, i32 0, metadata !36} ; [ DW_TAG_member ] [height] [line 885, size 32, align 32, offset 480] [from int]
!666 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"height_cr", i32 886, i64 32, i64 32, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [height_cr] [line 886, size 32, align 32, offset 512] [from int]
!667 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"height_cr_frame", i32 887, i64 32, i64 32, i64 544, i32 0, metadata !36} ; [ DW_TAG_member ] [height_cr_frame] [line 887, size 32, align 32, offset 544] [from int]
!668 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"subblock_x", i32 888, i64 32, i64 32, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [subblock_x] [line 888, size 32, align 32, offset 576] [from int]
!669 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"subblock_y", i32 889, i64 32, i64 32, i64 608, i32 0, metadata !36} ; [ DW_TAG_member ] [subblock_y] [line 889, size 32, align 32, offset 608] [from int]
!670 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"is_intra_block", i32 890, i64 32, i64 32, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [is_intra_block] [line 890, size 32, align 32, offset 640] [from int]
!671 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"is_v_block", i32 891, i64 32, i64 32, i64 672, i32 0, metadata !36} ; [ DW_TAG_member ] [is_v_block] [line 891, size 32, align 32, offset 672] [from int]
!672 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_y_upd", i32 892, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_y_upd] [line 892, size 32, align 32, offset 704] [from int]
!673 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_y_intra", i32 893, i64 32, i64 32, i64 736, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_y_intra] [line 893, size 32, align 32, offset 736] [from int]
!674 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"block_c_x", i32 894, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [block_c_x] [line 894, size 32, align 32, offset 768] [from int]
!675 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"ipredmode", i32 895, i64 64, i64 64, i64 832, i32 0, metadata !430} ; [ DW_TAG_member ] [ipredmode] [line 895, size 64, align 64, offset 832] [from ]
!676 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"ipredmode8x8", i32 896, i64 64, i64 64, i64 896, i32 0, metadata !430} ; [ DW_TAG_member ] [ipredmode8x8] [line 896, size 64, align 64, offset 896] [from ]
!677 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"cod_counter", i32 898, i64 32, i64 32, i64 960, i32 0, metadata !36} ; [ DW_TAG_member ] [cod_counter] [line 898, size 32, align 32, offset 960] [from int]
!678 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"nz_coeff", i32 899, i64 64, i64 64, i64 1024, i32 0, metadata !429} ; [ DW_TAG_member ] [nz_coeff] [line 899, size 64, align 64, offset 1024] [from ]
!679 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_x", i32 901, i64 32, i64 32, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_x] [line 901, size 32, align 32, offset 1088] [from int]
!680 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_y", i32 902, i64 32, i64 32, i64 1120, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_y] [line 902, size 32, align 32, offset 1120] [from int]
!681 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"block_x", i32 903, i64 32, i64 32, i64 1152, i32 0, metadata !36} ; [ DW_TAG_member ] [block_x] [line 903, size 32, align 32, offset 1152] [from int]
!682 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"block_y", i32 904, i64 32, i64 32, i64 1184, i32 0, metadata !36} ; [ DW_TAG_member ] [block_y] [line 904, size 32, align 32, offset 1184] [from int]
!683 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pix_x", i32 905, i64 32, i64 32, i64 1216, i32 0, metadata !36} ; [ DW_TAG_member ] [pix_x] [line 905, size 32, align 32, offset 1216] [from int]
!684 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pix_y", i32 906, i64 32, i64 32, i64 1248, i32 0, metadata !36} ; [ DW_TAG_member ] [pix_y] [line 906, size 32, align 32, offset 1248] [from int]
!685 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pix_c_x", i32 907, i64 32, i64 32, i64 1280, i32 0, metadata !36} ; [ DW_TAG_member ] [pix_c_x] [line 907, size 32, align 32, offset 1280] [from int]
!686 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pix_c_y", i32 908, i64 32, i64 32, i64 1312, i32 0, metadata !36} ; [ DW_TAG_member ] [pix_c_y] [line 908, size 32, align 32, offset 1312] [from int]
!687 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"opix_x", i32 910, i64 32, i64 32, i64 1344, i32 0, metadata !36} ; [ DW_TAG_member ] [opix_x] [line 910, size 32, align 32, offset 1344] [from int]
!688 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"opix_y", i32 911, i64 32, i64 32, i64 1376, i32 0, metadata !36} ; [ DW_TAG_member ] [opix_y] [line 911, size 32, align 32, offset 1376] [from int]
!689 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"opix_c_x", i32 912, i64 32, i64 32, i64 1408, i32 0, metadata !36} ; [ DW_TAG_member ] [opix_c_x] [line 912, size 32, align 32, offset 1408] [from int]
!690 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"opix_c_y", i32 913, i64 32, i64 32, i64 1440, i32 0, metadata !36} ; [ DW_TAG_member ] [opix_c_y] [line 913, size 32, align 32, offset 1440] [from int]
!691 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mprr", i32 917, i64 36864, i64 16, i64 1472, i32 0, metadata !692} ; [ DW_TAG_member ] [mprr] [line 917, size 36864, align 16, offset 1472] [from ]
!692 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 36864, i64 16, i32 0, i32 0, metadata !177, metadata !693, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 36864, align 16, offset 0] [from unsigned short]
!693 = metadata !{metadata !188, metadata !694, metadata !694}
!694 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!695 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mprr_2", i32 919, i64 20480, i64 16, i64 38336, i32 0, metadata !696} ; [ DW_TAG_member ] [mprr_2] [line 919, size 20480, align 16, offset 38336] [from ]
!696 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 20480, i64 16, i32 0, i32 0, metadata !177, metadata !697, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 20480, align 16, offset 0] [from unsigned short]
!697 = metadata !{metadata !228, metadata !694, metadata !694}
!698 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mprr_3", i32 920, i64 9216, i64 16, i64 58816, i32 0, metadata !699} ; [ DW_TAG_member ] [mprr_3] [line 920, size 9216, align 16, offset 58816] [from ]
!699 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9216, i64 16, i32 0, i32 0, metadata !177, metadata !700, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9216, align 16, offset 0] [from unsigned short]
!700 = metadata !{metadata !188, metadata !507, metadata !507}
!701 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mprr_c", i32 921, i64 32768, i64 16, i64 68032, i32 0, metadata !702} ; [ DW_TAG_member ] [mprr_c] [line 921, size 32768, align 16, offset 68032] [from ]
!702 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 16, i32 0, i32 0, metadata !177, metadata !703, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 16, offset 0] [from unsigned short]
!703 = metadata !{metadata !187, metadata !200, metadata !694, metadata !694}
!704 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mpr", i32 922, i64 4096, i64 16, i64 100800, i32 0, metadata !705} ; [ DW_TAG_member ] [mpr] [line 922, size 4096, align 16, offset 100800] [from ]
!705 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 16, i32 0, i32 0, metadata !177, metadata !706, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 16, offset 0] [from unsigned short]
!706 = metadata !{metadata !694, metadata !694}
!707 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"m7", i32 923, i64 8192, i64 32, i64 104896, i32 0, metadata !708} ; [ DW_TAG_member ] [m7] [line 923, size 8192, align 32, offset 104896] [from ]
!708 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !36, metadata !706, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!709 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"cofAC", i32 925, i64 64, i64 64, i64 113088, i32 0, metadata !428} ; [ DW_TAG_member ] [cofAC] [line 925, size 64, align 64, offset 113088] [from ]
!710 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"cofDC", i32 926, i64 64, i64 64, i64 113152, i32 0, metadata !429} ; [ DW_TAG_member ] [cofDC] [line 926, size 64, align 64, offset 113152] [from ]
!711 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"currentPicture", i32 928, i64 64, i64 64, i64 113216, i32 0, metadata !71} ; [ DW_TAG_member ] [currentPicture] [line 928, size 64, align 64, offset 113216] [from ]
!712 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"currentSlice", i32 929, i64 64, i64 64, i64 113280, i32 0, metadata !79} ; [ DW_TAG_member ] [currentSlice] [line 929, size 64, align 64, offset 113280] [from ]
!713 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_data", i32 930, i64 64, i64 64, i64 113344, i32 0, metadata !714} ; [ DW_TAG_member ] [mb_data] [line 930, size 64, align 64, offset 113344] [from ]
!714 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !715} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!715 = metadata !{i32 786454, metadata !9, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !716} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!716 = metadata !{i32 786451, metadata !9, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !717, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!717 = metadata !{metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !726, metadata !727, metadata !728, metadata !731, metadata !734, metadata !735, metadata !736, metadata !739, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770}
!718 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!719 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!720 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!721 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!722 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!723 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !627} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!724 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !725} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!725 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !716} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!726 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !725} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!727 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!728 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !729} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!729 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !36, metadata !730, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!730 = metadata !{metadata !187, metadata !200, metadata !200, metadata !187}
!731 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !732} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!732 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !733, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!733 = metadata !{metadata !694}
!734 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !732} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!735 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !36} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!736 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !737} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!737 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !738} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!738 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!739 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !740} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!740 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !36, metadata !199, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!741 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !740} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!742 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !180} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!743 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !36} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!744 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !36} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!745 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !36} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!746 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !36} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!747 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !36} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!748 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!749 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!750 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!751 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!752 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!753 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!754 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!755 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!756 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !36} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!757 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !36} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!758 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !36} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!759 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !36} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!760 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !36} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!761 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !465} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!762 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!763 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!764 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!765 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !36} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!766 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !36} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!767 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !36} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!768 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !36} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!769 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !36} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!770 = metadata !{i32 786445, metadata !9, metadata !716, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !36} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!771 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"MB_SyntaxElements", i32 931, i64 460800, i64 64, i64 113408, i32 0, metadata !772} ; [ DW_TAG_member ] [MB_SyntaxElements] [line 931, size 460800, align 64, offset 113408] [from ]
!772 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 460800, i64 64, i32 0, i32 0, metadata !143, metadata !773, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 460800, align 64, offset 0] [from SyntaxElement]
!773 = metadata !{metadata !774}
!774 = metadata !{i32 786465, i64 0, i64 1200}    ; [ DW_TAG_subrange_type ] [0, 1199]
!775 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"quad", i32 933, i64 64, i64 64, i64 574208, i32 0, metadata !124} ; [ DW_TAG_member ] [quad] [line 933, size 64, align 64, offset 574208] [from ]
!776 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"intra_block", i32 934, i64 64, i64 64, i64 574272, i32 0, metadata !124} ; [ DW_TAG_member ] [intra_block] [line 934, size 64, align 64, offset 574272] [from ]
!777 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"tr", i32 936, i64 32, i64 32, i64 574336, i32 0, metadata !36} ; [ DW_TAG_member ] [tr] [line 936, size 32, align 32, offset 574336] [from int]
!778 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"fld_type", i32 937, i64 32, i64 32, i64 574368, i32 0, metadata !36} ; [ DW_TAG_member ] [fld_type] [line 937, size 32, align 32, offset 574368] [from int]
!779 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"fld_flag", i32 938, i64 32, i64 32, i64 574400, i32 0, metadata !59} ; [ DW_TAG_member ] [fld_flag] [line 938, size 32, align 32, offset 574400] [from unsigned int]
!780 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"rd_pass", i32 939, i64 32, i64 32, i64 574432, i32 0, metadata !59} ; [ DW_TAG_member ] [rd_pass] [line 939, size 32, align 32, offset 574432] [from unsigned int]
!781 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"direct_intraP_ref", i32 940, i64 512, i64 32, i64 574464, i32 0, metadata !782} ; [ DW_TAG_member ] [direct_intraP_ref] [line 940, size 512, align 32, offset 574464] [from ]
!782 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !783, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!783 = metadata !{metadata !200, metadata !200}
!784 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pstruct_next_P", i32 941, i64 32, i64 32, i64 574976, i32 0, metadata !36} ; [ DW_TAG_member ] [pstruct_next_P] [line 941, size 32, align 32, offset 574976] [from int]
!785 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"imgtr_next_P_frm", i32 942, i64 32, i64 32, i64 575008, i32 0, metadata !36} ; [ DW_TAG_member ] [imgtr_next_P_frm] [line 942, size 32, align 32, offset 575008] [from int]
!786 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"imgtr_last_P_frm", i32 943, i64 32, i64 32, i64 575040, i32 0, metadata !36} ; [ DW_TAG_member ] [imgtr_last_P_frm] [line 943, size 32, align 32, offset 575040] [from int]
!787 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"imgtr_next_P_fld", i32 944, i64 32, i64 32, i64 575072, i32 0, metadata !36} ; [ DW_TAG_member ] [imgtr_next_P_fld] [line 944, size 32, align 32, offset 575072] [from int]
!788 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"imgtr_last_P_fld", i32 945, i64 32, i64 32, i64 575104, i32 0, metadata !36} ; [ DW_TAG_member ] [imgtr_last_P_fld] [line 945, size 32, align 32, offset 575104] [from int]
!789 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"b_interval", i32 948, i64 64, i64 64, i64 575168, i32 0, metadata !465} ; [ DW_TAG_member ] [b_interval] [line 948, size 64, align 64, offset 575168] [from double]
!790 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"p_interval", i32 949, i64 32, i64 32, i64 575232, i32 0, metadata !36} ; [ DW_TAG_member ] [p_interval] [line 949, size 32, align 32, offset 575232] [from int]
!791 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"b_frame_to_code", i32 950, i64 32, i64 32, i64 575264, i32 0, metadata !36} ; [ DW_TAG_member ] [b_frame_to_code] [line 950, size 32, align 32, offset 575264] [from int]
!792 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"fw_mb_mode", i32 951, i64 32, i64 32, i64 575296, i32 0, metadata !36} ; [ DW_TAG_member ] [fw_mb_mode] [line 951, size 32, align 32, offset 575296] [from int]
!793 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bw_mb_mode", i32 952, i64 32, i64 32, i64 575328, i32 0, metadata !36} ; [ DW_TAG_member ] [bw_mb_mode] [line 952, size 32, align 32, offset 575328] [from int]
!794 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pred_mv", i32 954, i64 64, i64 64, i64 575360, i32 0, metadata !400} ; [ DW_TAG_member ] [pred_mv] [line 954, size 64, align 64, offset 575360] [from ]
!795 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"all_mv", i32 955, i64 64, i64 64, i64 575424, i32 0, metadata !400} ; [ DW_TAG_member ] [all_mv] [line 955, size 64, align 64, offset 575424] [from ]
!796 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bipred_mv1", i32 957, i64 64, i64 64, i64 575488, i32 0, metadata !400} ; [ DW_TAG_member ] [bipred_mv1] [line 957, size 64, align 64, offset 575488] [from ]
!797 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bipred_mv2", i32 958, i64 64, i64 64, i64 575552, i32 0, metadata !400} ; [ DW_TAG_member ] [bipred_mv2] [line 958, size 64, align 64, offset 575552] [from ]
!798 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bi_pred_me", i32 959, i64 240, i64 16, i64 575616, i32 0, metadata !799} ; [ DW_TAG_member ] [bi_pred_me] [line 959, size 240, align 16, offset 575616] [from ]
!799 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 240, i64 16, i32 0, i32 0, metadata !406, metadata !800, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 240, align 16, offset 0] [from short]
!800 = metadata !{metadata !223}
!801 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"LFDisableIdc", i32 963, i64 32, i64 32, i64 575872, i32 0, metadata !36} ; [ DW_TAG_member ] [LFDisableIdc] [line 963, size 32, align 32, offset 575872] [from int]
!802 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"LFAlphaC0Offset", i32 964, i64 32, i64 32, i64 575904, i32 0, metadata !36} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 964, size 32, align 32, offset 575904] [from int]
!803 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"LFBetaOffset", i32 965, i64 32, i64 32, i64 575936, i32 0, metadata !36} ; [ DW_TAG_member ] [LFBetaOffset] [line 965, size 32, align 32, offset 575936] [from int]
!804 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"direct_spatial_mv_pred_flag", i32 967, i64 32, i64 32, i64 575968, i32 0, metadata !36} ; [ DW_TAG_member ] [direct_spatial_mv_pred_flag] [line 967, size 32, align 32, offset 575968] [from int]
!805 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_ref_idx_l0_active", i32 969, i64 32, i64 32, i64 576000, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l0_active] [line 969, size 32, align 32, offset 576000] [from int]
!806 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_ref_idx_l1_active", i32 970, i64 32, i64 32, i64 576032, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l1_active] [line 970, size 32, align 32, offset 576032] [from int]
!807 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"field_mode", i32 972, i64 32, i64 32, i64 576064, i32 0, metadata !36} ; [ DW_TAG_member ] [field_mode] [line 972, size 32, align 32, offset 576064] [from int]
!808 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"top_field", i32 973, i64 32, i64 32, i64 576096, i32 0, metadata !36} ; [ DW_TAG_member ] [top_field] [line 973, size 32, align 32, offset 576096] [from int]
!809 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mvscale", i32 974, i64 2880, i64 32, i64 576128, i32 0, metadata !810} ; [ DW_TAG_member ] [mvscale] [line 974, size 2880, align 32, offset 576128] [from ]
!810 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2880, i64 32, i32 0, i32 0, metadata !36, metadata !811, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2880, align 32, offset 0] [from int]
!811 = metadata !{metadata !196, metadata !223}
!812 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"buf_cycle", i32 975, i64 32, i64 32, i64 579008, i32 0, metadata !36} ; [ DW_TAG_member ] [buf_cycle] [line 975, size 32, align 32, offset 579008] [from int]
!813 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"i16offset", i32 976, i64 32, i64 32, i64 579040, i32 0, metadata !36} ; [ DW_TAG_member ] [i16offset] [line 976, size 32, align 32, offset 579040] [from int]
!814 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"layer", i32 978, i64 32, i64 32, i64 579072, i32 0, metadata !36} ; [ DW_TAG_member ] [layer] [line 978, size 32, align 32, offset 579072] [from int]
!815 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"old_layer", i32 979, i64 32, i64 32, i64 579104, i32 0, metadata !36} ; [ DW_TAG_member ] [old_layer] [line 979, size 32, align 32, offset 579104] [from int]
!816 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NoResidueDirect", i32 980, i64 32, i64 32, i64 579136, i32 0, metadata !36} ; [ DW_TAG_member ] [NoResidueDirect] [line 980, size 32, align 32, offset 579136] [from int]
!817 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"redundant_pic_cnt", i32 982, i64 32, i64 32, i64 579168, i32 0, metadata !36} ; [ DW_TAG_member ] [redundant_pic_cnt] [line 982, size 32, align 32, offset 579168] [from int]
!818 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"MbaffFrameFlag", i32 984, i64 32, i64 32, i64 579200, i32 0, metadata !36} ; [ DW_TAG_member ] [MbaffFrameFlag] [line 984, size 32, align 32, offset 579200] [from int]
!819 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pic_order_cnt_type", i32 988, i64 32, i64 32, i64 579232, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 988, size 32, align 32, offset 579232] [from unsigned int]
!820 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"delta_pic_order_always_zero_flag", i32 992, i64 32, i64 32, i64 579264, i32 0, metadata !59} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 992, size 32, align 32, offset 579264] [from unsigned int]
!821 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"offset_for_non_ref_pic", i32 993, i64 32, i64 32, i64 579296, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 993, size 32, align 32, offset 579296] [from int]
!822 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"offset_for_top_to_bottom_field", i32 994, i64 32, i64 32, i64 579328, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 994, size 32, align 32, offset 579328] [from int]
!823 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 995, i64 32, i64 32, i64 579360, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 995, size 32, align 32, offset 579360] [from unsigned int]
!824 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"offset_for_ref_frame", i32 996, i64 32, i64 32, i64 579392, i32 0, metadata !825} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 996, size 32, align 32, offset 579392] [from ]
!825 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !36, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from int]
!826 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pic_order_cnt_lsb", i32 1001, i64 32, i64 32, i64 579424, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_order_cnt_lsb] [line 1001, size 32, align 32, offset 579424] [from unsigned int]
!827 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"delta_pic_order_cnt_bottom", i32 1002, i64 32, i64 32, i64 579456, i32 0, metadata !36} ; [ DW_TAG_member ] [delta_pic_order_cnt_bottom] [line 1002, size 32, align 32, offset 579456] [from int]
!828 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"delta_pic_order_cnt", i32 1004, i64 64, i64 32, i64 579488, i32 0, metadata !829} ; [ DW_TAG_member ] [delta_pic_order_cnt] [line 1004, size 64, align 32, offset 579488] [from ]
!829 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !36, metadata !212, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!830 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"field_picture", i32 1008, i64 32, i64 32, i64 579552, i32 0, metadata !59} ; [ DW_TAG_member ] [field_picture] [line 1008, size 32, align 32, offset 579552] [from unsigned int]
!831 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"toppoc", i32 1009, i64 32, i64 32, i64 579584, i32 0, metadata !36} ; [ DW_TAG_member ] [toppoc] [line 1009, size 32, align 32, offset 579584] [from int]
!832 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bottompoc", i32 1010, i64 32, i64 32, i64 579616, i32 0, metadata !36} ; [ DW_TAG_member ] [bottompoc] [line 1010, size 32, align 32, offset 579616] [from int]
!833 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"framepoc", i32 1011, i64 32, i64 32, i64 579648, i32 0, metadata !36} ; [ DW_TAG_member ] [framepoc] [line 1011, size 32, align 32, offset 579648] [from int]
!834 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"ThisPOC", i32 1012, i64 32, i64 32, i64 579680, i32 0, metadata !36} ; [ DW_TAG_member ] [ThisPOC] [line 1012, size 32, align 32, offset 579680] [from int]
!835 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"frame_num", i32 1013, i64 32, i64 32, i64 579712, i32 0, metadata !59} ; [ DW_TAG_member ] [frame_num] [line 1013, size 32, align 32, offset 579712] [from unsigned int]
!836 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"PicWidthInMbs", i32 1015, i64 32, i64 32, i64 579744, i32 0, metadata !59} ; [ DW_TAG_member ] [PicWidthInMbs] [line 1015, size 32, align 32, offset 579744] [from unsigned int]
!837 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"PicHeightInMapUnits", i32 1016, i64 32, i64 32, i64 579776, i32 0, metadata !59} ; [ DW_TAG_member ] [PicHeightInMapUnits] [line 1016, size 32, align 32, offset 579776] [from unsigned int]
!838 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"FrameHeightInMbs", i32 1017, i64 32, i64 32, i64 579808, i32 0, metadata !59} ; [ DW_TAG_member ] [FrameHeightInMbs] [line 1017, size 32, align 32, offset 579808] [from unsigned int]
!839 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"PicHeightInMbs", i32 1018, i64 32, i64 32, i64 579840, i32 0, metadata !59} ; [ DW_TAG_member ] [PicHeightInMbs] [line 1018, size 32, align 32, offset 579840] [from unsigned int]
!840 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"PicSizeInMbs", i32 1019, i64 32, i64 32, i64 579872, i32 0, metadata !59} ; [ DW_TAG_member ] [PicSizeInMbs] [line 1019, size 32, align 32, offset 579872] [from unsigned int]
!841 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"FrameSizeInMbs", i32 1020, i64 32, i64 32, i64 579904, i32 0, metadata !59} ; [ DW_TAG_member ] [FrameSizeInMbs] [line 1020, size 32, align 32, offset 579904] [from unsigned int]
!842 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pic_order_present_flag", i32 1023, i64 32, i64 32, i64 579936, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_order_present_flag] [line 1023, size 32, align 32, offset 579936] [from unsigned int]
!843 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"nal_reference_idc", i32 1027, i64 32, i64 32, i64 579968, i32 0, metadata !36} ; [ DW_TAG_member ] [nal_reference_idc] [line 1027, size 32, align 32, offset 579968] [from int]
!844 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"adaptive_ref_pic_buffering_flag", i32 1029, i64 32, i64 32, i64 580000, i32 0, metadata !36} ; [ DW_TAG_member ] [adaptive_ref_pic_buffering_flag] [line 1029, size 32, align 32, offset 580000] [from int]
!845 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"no_output_of_prior_pics_flag", i32 1030, i64 32, i64 32, i64 580032, i32 0, metadata !36} ; [ DW_TAG_member ] [no_output_of_prior_pics_flag] [line 1030, size 32, align 32, offset 580032] [from int]
!846 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"long_term_reference_flag", i32 1031, i64 32, i64 32, i64 580064, i32 0, metadata !36} ; [ DW_TAG_member ] [long_term_reference_flag] [line 1031, size 32, align 32, offset 580064] [from int]
!847 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"dec_ref_pic_marking_buffer", i32 1033, i64 64, i64 64, i64 580096, i32 0, metadata !848} ; [ DW_TAG_member ] [dec_ref_pic_marking_buffer] [line 1033, size 64, align 64, offset 580096] [from ]
!848 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !849} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_t]
!849 = metadata !{i32 786454, metadata !9, null, metadata !"DecRefPicMarking_t", i32 324, i64 0, i64 0, i64 0, i32 0, metadata !850} ; [ DW_TAG_typedef ] [DecRefPicMarking_t] [line 324, size 0, align 0, offset 0] [from DecRefPicMarking_s]
!850 = metadata !{i32 786451, metadata !9, null, metadata !"DecRefPicMarking_s", i32 316, i64 256, i64 64, i32 0, i32 0, null, metadata !851, i32 0, null, null} ; [ DW_TAG_structure_type ] [DecRefPicMarking_s] [line 316, size 256, align 64, offset 0] [from ]
!851 = metadata !{metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857}
!852 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"memory_management_control_operation", i32 318, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [memory_management_control_operation] [line 318, size 32, align 32, offset 0] [from int]
!853 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"difference_of_pic_nums_minus1", i32 319, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [difference_of_pic_nums_minus1] [line 319, size 32, align 32, offset 32] [from int]
!854 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"long_term_pic_num", i32 320, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [long_term_pic_num] [line 320, size 32, align 32, offset 64] [from int]
!855 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"long_term_frame_idx", i32 321, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [long_term_frame_idx] [line 321, size 32, align 32, offset 96] [from int]
!856 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"max_long_term_frame_idx_plus1", i32 322, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [max_long_term_frame_idx_plus1] [line 322, size 32, align 32, offset 128] [from int]
!857 = metadata !{i32 786445, metadata !9, metadata !850, metadata !"Next", i32 323, i64 64, i64 64, i64 192, i32 0, metadata !858} ; [ DW_TAG_member ] [Next] [line 323, size 64, align 64, offset 192] [from ]
!858 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !850} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_s]
!859 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"model_number", i32 1035, i64 32, i64 32, i64 580160, i32 0, metadata !36} ; [ DW_TAG_member ] [model_number] [line 1035, size 32, align 32, offset 580160] [from int]
!860 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofHeaderBits", i32 1039, i64 32, i64 32, i64 580192, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofHeaderBits] [line 1039, size 32, align 32, offset 580192] [from int]
!861 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofTextureBits", i32 1040, i64 32, i64 32, i64 580224, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofTextureBits] [line 1040, size 32, align 32, offset 580224] [from int]
!862 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofBasicUnitHeaderBits", i32 1041, i64 32, i64 32, i64 580256, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofBasicUnitHeaderBits] [line 1041, size 32, align 32, offset 580256] [from int]
!863 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofBasicUnitTextureBits", i32 1042, i64 32, i64 32, i64 580288, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofBasicUnitTextureBits] [line 1042, size 32, align 32, offset 580288] [from int]
!864 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"TotalMADBasicUnit", i32 1043, i64 64, i64 64, i64 580352, i32 0, metadata !465} ; [ DW_TAG_member ] [TotalMADBasicUnit] [line 1043, size 64, align 64, offset 580352] [from double]
!865 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofMBTextureBits", i32 1044, i64 32, i64 32, i64 580416, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofMBTextureBits] [line 1044, size 32, align 32, offset 580416] [from int]
!866 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofMBHeaderBits", i32 1045, i64 32, i64 32, i64 580448, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofMBHeaderBits] [line 1045, size 32, align 32, offset 580448] [from int]
!867 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofCodedBFrame", i32 1046, i64 32, i64 32, i64 580480, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofCodedBFrame] [line 1046, size 32, align 32, offset 580480] [from int]
!868 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofCodedPFrame", i32 1047, i64 32, i64 32, i64 580512, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofCodedPFrame] [line 1047, size 32, align 32, offset 580512] [from int]
!869 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofGOP", i32 1048, i64 32, i64 32, i64 580544, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofGOP] [line 1048, size 32, align 32, offset 580544] [from int]
!870 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"TotalQpforPPicture", i32 1049, i64 32, i64 32, i64 580576, i32 0, metadata !36} ; [ DW_TAG_member ] [TotalQpforPPicture] [line 1049, size 32, align 32, offset 580576] [from int]
!871 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofPPicture", i32 1050, i64 32, i64 32, i64 580608, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofPPicture] [line 1050, size 32, align 32, offset 580608] [from int]
!872 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"MADofMB", i32 1051, i64 64, i64 64, i64 580672, i32 0, metadata !873} ; [ DW_TAG_member ] [MADofMB] [line 1051, size 64, align 64, offset 580672] [from ]
!873 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!874 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"BasicUnitQP", i32 1052, i64 32, i64 32, i64 580736, i32 0, metadata !36} ; [ DW_TAG_member ] [BasicUnitQP] [line 1052, size 32, align 32, offset 580736] [from int]
!875 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"TopFieldFlag", i32 1053, i64 32, i64 32, i64 580768, i32 0, metadata !36} ; [ DW_TAG_member ] [TopFieldFlag] [line 1053, size 32, align 32, offset 580768] [from int]
!876 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"FieldControl", i32 1054, i64 32, i64 32, i64 580800, i32 0, metadata !36} ; [ DW_TAG_member ] [FieldControl] [line 1054, size 32, align 32, offset 580800] [from int]
!877 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"FieldFrame", i32 1055, i64 32, i64 32, i64 580832, i32 0, metadata !36} ; [ DW_TAG_member ] [FieldFrame] [line 1055, size 32, align 32, offset 580832] [from int]
!878 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"Frame_Total_Number_MB", i32 1056, i64 32, i64 32, i64 580864, i32 0, metadata !36} ; [ DW_TAG_member ] [Frame_Total_Number_MB] [line 1056, size 32, align 32, offset 580864] [from int]
!879 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"IFLAG", i32 1057, i64 32, i64 32, i64 580896, i32 0, metadata !36} ; [ DW_TAG_member ] [IFLAG] [line 1057, size 32, align 32, offset 580896] [from int]
!880 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"NumberofCodedMacroBlocks", i32 1058, i64 32, i64 32, i64 580928, i32 0, metadata !36} ; [ DW_TAG_member ] [NumberofCodedMacroBlocks] [line 1058, size 32, align 32, offset 580928] [from int]
!881 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"BasicUnit", i32 1059, i64 32, i64 32, i64 580960, i32 0, metadata !36} ; [ DW_TAG_member ] [BasicUnit] [line 1059, size 32, align 32, offset 580960] [from int]
!882 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"write_macroblock", i32 1060, i64 32, i64 32, i64 580992, i32 0, metadata !36} ; [ DW_TAG_member ] [write_macroblock] [line 1060, size 32, align 32, offset 580992] [from int]
!883 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bot_MB", i32 1061, i64 32, i64 32, i64 581024, i32 0, metadata !36} ; [ DW_TAG_member ] [bot_MB] [line 1061, size 32, align 32, offset 581024] [from int]
!884 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"write_macroblock_frame", i32 1062, i64 32, i64 32, i64 581056, i32 0, metadata !36} ; [ DW_TAG_member ] [write_macroblock_frame] [line 1062, size 32, align 32, offset 581056] [from int]
!885 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"DeblockCall", i32 1064, i64 32, i64 32, i64 581088, i32 0, metadata !36} ; [ DW_TAG_member ] [DeblockCall] [line 1064, size 32, align 32, offset 581088] [from int]
!886 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"last_pic_bottom_field", i32 1066, i64 32, i64 32, i64 581120, i32 0, metadata !36} ; [ DW_TAG_member ] [last_pic_bottom_field] [line 1066, size 32, align 32, offset 581120] [from int]
!887 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"last_has_mmco_5", i32 1067, i64 32, i64 32, i64 581152, i32 0, metadata !36} ; [ DW_TAG_member ] [last_has_mmco_5] [line 1067, size 32, align 32, offset 581152] [from int]
!888 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pre_frame_num", i32 1068, i64 32, i64 32, i64 581184, i32 0, metadata !36} ; [ DW_TAG_member ] [pre_frame_num] [line 1068, size 32, align 32, offset 581184] [from int]
!889 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"slice_group_change_cycle", i32 1070, i64 32, i64 32, i64 581216, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_group_change_cycle] [line 1070, size 32, align 32, offset 581216] [from int]
!890 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"pic_unit_size_on_disk", i32 1072, i64 32, i64 32, i64 581248, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_unit_size_on_disk] [line 1072, size 32, align 32, offset 581248] [from int]
!891 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bitdepth_luma", i32 1073, i64 32, i64 32, i64 581280, i32 0, metadata !36} ; [ DW_TAG_member ] [bitdepth_luma] [line 1073, size 32, align 32, offset 581280] [from int]
!892 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bitdepth_chroma", i32 1074, i64 32, i64 32, i64 581312, i32 0, metadata !36} ; [ DW_TAG_member ] [bitdepth_chroma] [line 1074, size 32, align 32, offset 581312] [from int]
!893 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bitdepth_luma_qp_scale", i32 1075, i64 32, i64 32, i64 581344, i32 0, metadata !36} ; [ DW_TAG_member ] [bitdepth_luma_qp_scale] [line 1075, size 32, align 32, offset 581344] [from int]
!894 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bitdepth_chroma_qp_scale", i32 1076, i64 32, i64 32, i64 581376, i32 0, metadata !36} ; [ DW_TAG_member ] [bitdepth_chroma_qp_scale] [line 1076, size 32, align 32, offset 581376] [from int]
!895 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"bitdepth_lambda_scale", i32 1077, i64 32, i64 32, i64 581408, i32 0, metadata !36} ; [ DW_TAG_member ] [bitdepth_lambda_scale] [line 1077, size 32, align 32, offset 581408] [from int]
!896 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"dc_pred_value", i32 1078, i64 32, i64 32, i64 581440, i32 0, metadata !59} ; [ DW_TAG_member ] [dc_pred_value] [line 1078, size 32, align 32, offset 581440] [from unsigned int]
!897 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"max_imgpel_value", i32 1079, i64 32, i64 32, i64 581472, i32 0, metadata !36} ; [ DW_TAG_member ] [max_imgpel_value] [line 1079, size 32, align 32, offset 581472] [from int]
!898 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"max_imgpel_value_uv", i32 1080, i64 32, i64 32, i64 581504, i32 0, metadata !36} ; [ DW_TAG_member ] [max_imgpel_value_uv] [line 1080, size 32, align 32, offset 581504] [from int]
!899 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_blk8x8_uv", i32 1082, i64 32, i64 32, i64 581536, i32 0, metadata !36} ; [ DW_TAG_member ] [num_blk8x8_uv] [line 1082, size 32, align 32, offset 581536] [from int]
!900 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"num_cdc_coeff", i32 1083, i64 32, i64 32, i64 581568, i32 0, metadata !36} ; [ DW_TAG_member ] [num_cdc_coeff] [line 1083, size 32, align 32, offset 581568] [from int]
!901 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"yuv_format", i32 1084, i64 32, i64 32, i64 581600, i32 0, metadata !36} ; [ DW_TAG_member ] [yuv_format] [line 1084, size 32, align 32, offset 581600] [from int]
!902 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"lossless_qpprime_flag", i32 1085, i64 32, i64 32, i64 581632, i32 0, metadata !36} ; [ DW_TAG_member ] [lossless_qpprime_flag] [line 1085, size 32, align 32, offset 581632] [from int]
!903 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_cr_size_x", i32 1086, i64 32, i64 32, i64 581664, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_cr_size_x] [line 1086, size 32, align 32, offset 581664] [from int]
!904 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"mb_cr_size_y", i32 1087, i64 32, i64 32, i64 581696, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_cr_size_y] [line 1087, size 32, align 32, offset 581696] [from int]
!905 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"chroma_qp_offset", i32 1089, i64 64, i64 32, i64 581728, i32 0, metadata !829} ; [ DW_TAG_member ] [chroma_qp_offset] [line 1089, size 64, align 32, offset 581728] [from ]
!906 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"residue_transform_flag", i32 1092, i64 32, i64 32, i64 581792, i32 0, metadata !36} ; [ DW_TAG_member ] [residue_transform_flag] [line 1092, size 32, align 32, offset 581792] [from int]
!907 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"auto_crop_right", i32 1094, i64 32, i64 32, i64 581824, i32 0, metadata !36} ; [ DW_TAG_member ] [auto_crop_right] [line 1094, size 32, align 32, offset 581824] [from int]
!908 = metadata !{i32 786445, metadata !9, metadata !648, metadata !"auto_crop_bottom", i32 1095, i64 32, i64 32, i64 581856, i32 0, metadata !36} ; [ DW_TAG_member ] [auto_crop_bottom] [line 1095, size 32, align 32, offset 581856] [from int]
!909 = metadata !{i32 786484, i32 0, null, metadata !"stats", metadata !"stats", metadata !"", metadata !33, i32 179, metadata !910, i32 0, i32 1, %struct.StatParameters** @stats, null} ; [ DW_TAG_variable ] [stats] [line 179] [def]
!910 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !911} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from StatParameters]
!911 = metadata !{i32 786454, metadata !1, null, metadata !"StatParameters", i32 1141, i64 0, i64 0, i64 0, i32 0, metadata !912} ; [ DW_TAG_typedef ] [StatParameters] [line 1141, size 0, align 0, offset 0] [from ]
!912 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1101, i64 11968, i64 64, i32 0, i32 0, null, metadata !913, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1101, size 11968, align 64, offset 0] [from ]
!913 = metadata !{metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951}
!914 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"quant0", i32 1103, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [quant0] [line 1103, size 32, align 32, offset 0] [from int]
!915 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"quant1", i32 1104, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [quant1] [line 1104, size 32, align 32, offset 32] [from int]
!916 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bitr", i32 1105, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [bitr] [line 1105, size 32, align 32, offset 64] [from float]
!917 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bitrate", i32 1106, i64 32, i64 32, i64 96, i32 0, metadata !261} ; [ DW_TAG_member ] [bitrate] [line 1106, size 32, align 32, offset 96] [from float]
!918 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr", i32 1107, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr] [line 1107, size 32, align 32, offset 128] [from int]
!919 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_n", i32 1108, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_n] [line 1108, size 32, align 32, offset 160] [from int]
!920 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_slice", i32 1109, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_slice] [line 1109, size 32, align 32, offset 192] [from int]
!921 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_emulationprevention", i32 1110, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_emulationprevention] [line 1110, size 32, align 32, offset 224] [from int]
!922 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"b8_mode_0_use", i32 1111, i64 320, i64 32, i64 256, i32 0, metadata !358} ; [ DW_TAG_member ] [b8_mode_0_use] [line 1111, size 320, align 32, offset 256] [from ]
!923 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"mode_use_transform_8x8", i32 1112, i64 2400, i64 32, i64 576, i32 0, metadata !924} ; [ DW_TAG_member ] [mode_use_transform_8x8] [line 1112, size 2400, align 32, offset 576] [from ]
!924 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 32, i32 0, i32 0, metadata !36, metadata !925, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 32, offset 0] [from int]
!925 = metadata !{metadata !228, metadata !223}
!926 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"mode_use_transform_4x4", i32 1113, i64 2400, i64 32, i64 2976, i32 0, metadata !924} ; [ DW_TAG_member ] [mode_use_transform_4x4] [line 1113, size 2400, align 32, offset 2976] [from ]
!927 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"intra_chroma_mode", i32 1114, i64 128, i64 32, i64 5376, i32 0, metadata !740} ; [ DW_TAG_member ] [intra_chroma_mode] [line 1114, size 128, align 32, offset 5376] [from ]
!928 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"mode_use_Bframe", i32 1117, i64 64, i64 64, i64 5504, i32 0, metadata !124} ; [ DW_TAG_member ] [mode_use_Bframe] [line 1117, size 64, align 64, offset 5504] [from ]
!929 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_mode_Bframe", i32 1118, i64 64, i64 64, i64 5568, i32 0, metadata !124} ; [ DW_TAG_member ] [bit_use_mode_Bframe] [line 1118, size 64, align 64, offset 5568] [from ]
!930 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_I", i32 1119, i64 32, i64 32, i64 5632, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_I] [line 1119, size 32, align 32, offset 5632] [from int]
!931 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_P", i32 1120, i64 32, i64 32, i64 5664, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_P] [line 1120, size 32, align 32, offset 5664] [from int]
!932 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_B", i32 1121, i64 32, i64 32, i64 5696, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_B] [line 1121, size 32, align 32, offset 5696] [from int]
!933 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bitrate_I", i32 1122, i64 32, i64 32, i64 5728, i32 0, metadata !261} ; [ DW_TAG_member ] [bitrate_I] [line 1122, size 32, align 32, offset 5728] [from float]
!934 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bitrate_P", i32 1123, i64 32, i64 32, i64 5760, i32 0, metadata !261} ; [ DW_TAG_member ] [bitrate_P] [line 1123, size 32, align 32, offset 5760] [from float]
!935 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bitrate_B", i32 1124, i64 32, i64 32, i64 5792, i32 0, metadata !261} ; [ DW_TAG_member ] [bitrate_B] [line 1124, size 32, align 32, offset 5792] [from float]
!936 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"mode_use", i32 1126, i64 2400, i64 32, i64 5824, i32 0, metadata !924} ; [ DW_TAG_member ] [mode_use] [line 1126, size 2400, align 32, offset 5824] [from ]
!937 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_mode", i32 1127, i64 2400, i64 32, i64 8224, i32 0, metadata !924} ; [ DW_TAG_member ] [bit_use_mode] [line 1127, size 2400, align 32, offset 8224] [from ]
!938 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_stuffingBits", i32 1128, i64 160, i64 32, i64 10624, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_stuffingBits] [line 1128, size 160, align 32, offset 10624] [from ]
!939 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !36, metadata !940, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!940 = metadata !{metadata !228}
!941 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_mb_type", i32 1129, i64 160, i64 32, i64 10784, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_mb_type] [line 1129, size 160, align 32, offset 10784] [from ]
!942 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_header", i32 1130, i64 160, i64 32, i64 10944, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_header] [line 1130, size 160, align 32, offset 10944] [from ]
!943 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"tmp_bit_use_cbp", i32 1131, i64 160, i64 32, i64 11104, i32 0, metadata !939} ; [ DW_TAG_member ] [tmp_bit_use_cbp] [line 1131, size 160, align 32, offset 11104] [from ]
!944 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_coeffY", i32 1132, i64 160, i64 32, i64 11264, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_coeffY] [line 1132, size 160, align 32, offset 11264] [from ]
!945 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_coeffC", i32 1133, i64 160, i64 32, i64 11424, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_coeffC] [line 1133, size 160, align 32, offset 11424] [from ]
!946 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_use_delta_quant", i32 1134, i64 160, i64 32, i64 11584, i32 0, metadata !939} ; [ DW_TAG_member ] [bit_use_delta_quant] [line 1134, size 160, align 32, offset 11584] [from ]
!947 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"em_prev_bits_frm", i32 1136, i64 32, i64 32, i64 11744, i32 0, metadata !36} ; [ DW_TAG_member ] [em_prev_bits_frm] [line 1136, size 32, align 32, offset 11744] [from int]
!948 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"em_prev_bits_fld", i32 1137, i64 32, i64 32, i64 11776, i32 0, metadata !36} ; [ DW_TAG_member ] [em_prev_bits_fld] [line 1137, size 32, align 32, offset 11776] [from int]
!949 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"em_prev_bits", i32 1138, i64 64, i64 64, i64 11840, i32 0, metadata !124} ; [ DW_TAG_member ] [em_prev_bits] [line 1138, size 64, align 64, offset 11840] [from ]
!950 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_parametersets", i32 1139, i64 32, i64 32, i64 11904, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_parametersets] [line 1139, size 32, align 32, offset 11904] [from int]
!951 = metadata !{i32 786445, metadata !9, metadata !912, metadata !"bit_ctr_parametersets_n", i32 1140, i64 32, i64 32, i64 11936, i32 0, metadata !36} ; [ DW_TAG_member ] [bit_ctr_parametersets_n] [line 1140, size 32, align 32, offset 11936] [from int]
!952 = metadata !{i32 786484, i32 0, null, metadata !"snr", metadata !"snr", metadata !"", metadata !33, i32 180, metadata !953, i32 0, i32 1, %struct.SNRParameters** @snr, null} ; [ DW_TAG_variable ] [snr] [line 180] [def]
!953 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !954} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SNRParameters]
!954 = metadata !{i32 786454, metadata !1, null, metadata !"SNRParameters", i32 657, i64 0, i64 0, i64 0, i32 0, metadata !955} ; [ DW_TAG_typedef ] [SNRParameters] [line 657, size 0, align 0, offset 0] [from ]
!955 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 643, i64 576, i64 32, i32 0, i32 0, null, metadata !956, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 643, size 576, align 32, offset 0] [from ]
!956 = metadata !{metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969}
!957 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_y", i32 645, i64 32, i64 32, i64 0, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_y] [line 645, size 32, align 32, offset 0] [from float]
!958 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_u", i32 646, i64 32, i64 32, i64 32, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_u] [line 646, size 32, align 32, offset 32] [from float]
!959 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_v", i32 647, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_v] [line 647, size 32, align 32, offset 64] [from float]
!960 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_y1", i32 648, i64 32, i64 32, i64 96, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_y1] [line 648, size 32, align 32, offset 96] [from float]
!961 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_u1", i32 649, i64 32, i64 32, i64 128, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_u1] [line 649, size 32, align 32, offset 128] [from float]
!962 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_v1", i32 650, i64 32, i64 32, i64 160, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_v1] [line 650, size 32, align 32, offset 160] [from float]
!963 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_yt", i32 651, i64 96, i64 32, i64 192, i32 0, metadata !964} ; [ DW_TAG_member ] [snr_yt] [line 651, size 96, align 32, offset 192] [from ]
!964 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !261, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!965 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_ut", i32 652, i64 96, i64 32, i64 288, i32 0, metadata !964} ; [ DW_TAG_member ] [snr_ut] [line 652, size 96, align 32, offset 288] [from ]
!966 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_vt", i32 653, i64 96, i64 32, i64 384, i32 0, metadata !964} ; [ DW_TAG_member ] [snr_vt] [line 653, size 96, align 32, offset 384] [from ]
!967 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_ya", i32 654, i64 32, i64 32, i64 480, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_ya] [line 654, size 32, align 32, offset 480] [from float]
!968 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_ua", i32 655, i64 32, i64 32, i64 512, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_ua] [line 655, size 32, align 32, offset 512] [from float]
!969 = metadata !{i32 786445, metadata !9, metadata !955, metadata !"snr_va", i32 656, i64 32, i64 32, i64 544, i32 0, metadata !261} ; [ DW_TAG_member ] [snr_va] [line 656, size 32, align 32, offset 544] [from float]
!970 = metadata !{i32 786484, i32 0, null, metadata !"decs", metadata !"decs", metadata !"", metadata !33, i32 181, metadata !971, i32 0, i32 1, %struct.Decoders** @decs, null} ; [ DW_TAG_variable ] [decs] [line 181] [def]
!971 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !972} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Decoders]
!972 = metadata !{i32 786454, metadata !1, null, metadata !"Decoders", i32 639, i64 0, i64 0, i64 0, i32 0, metadata !973} ; [ DW_TAG_typedef ] [Decoders] [line 639, size 0, align 0, offset 0] [from ]
!973 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 630, i64 448, i64 64, i32 0, i32 0, null, metadata !974, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 630, size 448, align 64, offset 0] [from ]
!974 = metadata !{metadata !975, metadata !976, metadata !980, metadata !982, metadata !983, metadata !984, metadata !986}
!975 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"resY", i32 632, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [resY] [line 632, size 64, align 64, offset 0] [from ]
!976 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"decY", i32 633, i64 64, i64 64, i64 64, i32 0, metadata !977} ; [ DW_TAG_member ] [decY] [line 633, size 64, align 64, offset 64] [from ]
!977 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !978} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!978 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !979} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!979 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!980 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"decref", i32 634, i64 64, i64 64, i64 128, i32 0, metadata !981} ; [ DW_TAG_member ] [decref] [line 634, size 64, align 64, offset 128] [from ]
!981 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !977} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!982 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"decY_best", i32 635, i64 64, i64 64, i64 192, i32 0, metadata !977} ; [ DW_TAG_member ] [decY_best] [line 635, size 64, align 64, offset 192] [from ]
!983 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"RefBlock", i32 636, i64 64, i64 64, i64 256, i32 0, metadata !978} ; [ DW_TAG_member ] [RefBlock] [line 636, size 64, align 64, offset 256] [from ]
!984 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"status_map", i32 637, i64 64, i64 64, i64 320, i32 0, metadata !985} ; [ DW_TAG_member ] [status_map] [line 637, size 64, align 64, offset 320] [from ]
!985 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!986 = metadata !{i32 786445, metadata !9, metadata !973, metadata !"dec_mb_mode", i32 638, i64 64, i64 64, i64 384, i32 0, metadata !985} ; [ DW_TAG_member ] [dec_mb_mode] [line 638, size 64, align 64, offset 384] [from ]
!987 = metadata !{i32 786484, i32 0, null, metadata !"initial_Bframes", metadata !"initial_Bframes", metadata !"", metadata !33, i32 185, metadata !36, i32 0, i32 1, i32* @initial_Bframes, null} ; [ DW_TAG_variable ] [initial_Bframes] [line 185] [def]
!988 = metadata !{i32 786484, i32 0, null, metadata !"In2ndIGOP", metadata !"In2ndIGOP", metadata !"", metadata !33, i32 188, metadata !253, i32 0, i32 1, i32* @In2ndIGOP, null} ; [ DW_TAG_variable ] [In2ndIGOP] [line 188] [def]
!989 = metadata !{i32 786484, i32 0, null, metadata !"start_frame_no_in_this_IGOP", metadata !"start_frame_no_in_this_IGOP", metadata !"", metadata !33, i32 189, metadata !36, i32 0, i32 1, i32* @start_frame_no_in_this_IGOP, null} ; [ DW_TAG_variable ] [start_frame_no_in_this_IGOP] [line 189] [def]
!990 = metadata !{i32 786484, i32 0, null, metadata !"start_tr_in_this_IGOP", metadata !"start_tr_in_this_IGOP", metadata !"", metadata !33, i32 190, metadata !36, i32 0, i32 1, i32* @start_tr_in_this_IGOP, null} ; [ DW_TAG_variable ] [start_tr_in_this_IGOP] [line 190] [def]
!991 = metadata !{i32 786484, i32 0, null, metadata !"FirstFrameIn2ndIGOP", metadata !"FirstFrameIn2ndIGOP", metadata !"", metadata !33, i32 191, metadata !36, i32 0, i32 1, i32* @FirstFrameIn2ndIGOP, null} ; [ DW_TAG_variable ] [FirstFrameIn2ndIGOP] [line 191] [def]
!992 = metadata !{i32 786484, i32 0, null, metadata !"cabac_encoding", metadata !"cabac_encoding", metadata !"", metadata !33, i32 192, metadata !36, i32 0, i32 1, i32* @cabac_encoding, null} ; [ DW_TAG_variable ] [cabac_encoding] [line 192] [def]
!993 = metadata !{i32 786484, i32 0, metadata !62, metadata !"mb_width_cr", metadata !"mb_width_cr", metadata !"", metadata !33, i32 627, metadata !740, i32 1, i32 1, [4 x i32]* @init_img.mb_width_cr, null} ; [ DW_TAG_variable ] [mb_width_cr] [line 627] [local] [def]
!994 = metadata !{i32 786484, i32 0, metadata !62, metadata !"mb_height_cr", metadata !"mb_height_cr", metadata !"", metadata !33, i32 628, metadata !740, i32 1, i32 1, [4 x i32]* @init_img.mb_height_cr, null} ; [ DW_TAG_variable ] [mb_height_cr] [line 628] [local] [def]
!995 = metadata !{i32 786484, i32 0, metadata !271, metadata !"last_mode_use", metadata !"last_mode_use", metadata !"", metadata !33, i32 967, metadata !924, i32 1, i32 1, null, null}
!996 = metadata !{i32 786484, i32 0, metadata !271, metadata !"last_b8_mode_0", metadata !"last_b8_mode_0", metadata !"", metadata !33, i32 968, metadata !358, i32 1, i32 1, null, null}
!997 = metadata !{i32 786484, i32 0, metadata !271, metadata !"last_mode_chroma_use", metadata !"last_mode_chroma_use", metadata !"", metadata !33, i32 969, metadata !740, i32 1, i32 1, [4 x i32]* @report_frame_statistic.last_mode_chroma_use, null} ; [ DW_TAG_variable ] [last_mode_chroma_use] [line 969] [local] [def]
!998 = metadata !{i32 786484, i32 0, metadata !271, metadata !"last_bit_ctr_n", metadata !"last_bit_ctr_n", metadata !"", metadata !33, i32 970, metadata !36, i32 1, i32 1, i32* @report_frame_statistic.last_bit_ctr_n, null} ; [ DW_TAG_variable ] [last_bit_ctr_n] [line 970] [local] [def]
!999 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !1000, i32 558, metadata !71, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!1000 = metadata !{i32 786473, metadata !9}       ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!1001 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !1000, i32 559, metadata !71, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!1002 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !1000, i32 560, metadata !71, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!1003 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !1000, i32 561, metadata !71, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!1004 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !1000, i32 562, metadata !71, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!1005 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !1000, i32 565, metadata !978, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!1006 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !1000, i32 566, metadata !977, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!1007 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !1000, i32 567, metadata !430, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!1008 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !1000, i32 569, metadata !59, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!1009 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !1000, i32 570, metadata !59, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!1010 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !1000, i32 572, metadata !36, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!1011 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !1000, i32 572, metadata !36, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!1012 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !1000, i32 573, metadata !1013, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!1013 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1014} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!1014 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !1015} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!1015 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !1016, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!1016 = metadata !{metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047}
!1017 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!1018 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!1019 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!1020 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !253} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!1021 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !253} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!1022 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !253} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!1023 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !627} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!1024 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !253} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!1025 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !59} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!1026 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!1027 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !1028} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!1028 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !59, metadata !628, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!1029 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !1028} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!1030 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !1028} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!1031 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !253} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!1032 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!1033 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!1034 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !111} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!1035 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!1036 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!1037 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !253} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!1038 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !59} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!1039 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!1040 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!1041 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !36} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!1042 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !36} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!1043 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !36} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!1044 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !253} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!1045 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !253} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!1046 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !253} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!1047 = metadata !{i32 786445, metadata !4, metadata !1015, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !253} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!1048 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !1000, i32 574, metadata !1049, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!1049 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1050} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!1050 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !1051} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!1051 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !1052, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!1052 = metadata !{metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1072, metadata !1073, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090}
!1053 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!1054 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!1055 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !253} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!1056 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !253} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!1057 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !253} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!1058 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !253} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!1059 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!1060 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!1061 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!1062 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !253} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!1063 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !627} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!1064 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!1065 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !59} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!1066 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!1067 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!1068 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!1069 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !253} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!1070 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!1071 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!1072 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!1073 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !1074} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!1074 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !36, metadata !1075, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!1075 = metadata !{metadata !1076}
!1076 = metadata !{i32 786465, i64 0, i64 256}    ; [ DW_TAG_subrange_type ] [0, 255]
!1077 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!1078 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !253} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!1079 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!1080 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!1081 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !253} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!1082 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !253} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!1083 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !253} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!1084 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !253} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!1085 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !59} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!1086 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !59} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!1087 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !59} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!1088 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !59} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!1089 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !253} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!1090 = metadata !{i32 786445, metadata !4, metadata !1051, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !1091} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!1091 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1092} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!1092 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !1093, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!1093 = metadata !{metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1132, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1142}
!1094 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!1095 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!1096 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!1097 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!1098 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !253} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!1099 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !253} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!1100 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !253} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!1101 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!1102 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !253} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!1103 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !253} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!1104 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!1105 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !59} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!1106 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!1107 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !253} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!1108 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!1109 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !59} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!1110 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !253} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!1111 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !59} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!1112 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!1113 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !253} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!1114 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !253} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!1115 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !1116} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!1116 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !1117} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!1117 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !1118, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!1118 = metadata !{metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131}
!1119 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!1120 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!1121 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!1122 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !1123} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!1123 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !59, metadata !1124, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!1124 = metadata !{metadata !1125}
!1125 = metadata !{i32 786465, i64 0, i64 32}     ; [ DW_TAG_subrange_type ] [0, 31]
!1126 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !1123} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!1127 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !1123} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!1128 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !59} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!1129 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !59} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!1130 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !59} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!1131 = metadata !{i32 786445, metadata !4, metadata !1117, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !59} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!1132 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !253} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!1133 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !1116} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!1134 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !253} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!1135 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !253} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!1136 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !253} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!1137 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !59} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!1138 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !59} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!1139 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !59} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!1140 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !59} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!1141 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !59} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!1142 = metadata !{i32 786445, metadata !4, metadata !1092, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !59} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!1143 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !1000, i32 578, metadata !36, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!1144 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !1000, i32 579, metadata !36, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!1145 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !1000, i32 583, metadata !429, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!1146 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !1000, i32 584, metadata !429, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!1147 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !1000, i32 585, metadata !428, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!1148 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !1000, i32 586, metadata !36, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!1149 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !1000, i32 587, metadata !36, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!1150 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !1000, i32 588, metadata !36, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!1151 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !1000, i32 589, metadata !36, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!1152 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !1000, i32 592, metadata !978, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!1153 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !1000, i32 593, metadata !978, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!1154 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !1000, i32 595, metadata !977, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!1155 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !1000, i32 596, metadata !977, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!1156 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !1000, i32 598, metadata !978, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!1157 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !1000, i32 599, metadata !977, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!1158 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !1000, i32 601, metadata !978, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!1159 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !1000, i32 602, metadata !977, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!1160 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !1000, i32 604, metadata !403, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!1161 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !1000, i32 605, metadata !404, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!1162 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !1000, i32 608, metadata !985, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!1163 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !1000, i32 609, metadata !985, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!1164 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !1000, i32 610, metadata !36, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!1165 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !1000, i32 612, metadata !36, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!1166 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !1000, i32 612, metadata !36, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!1167 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !1000, i32 612, metadata !36, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!1168 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !1000, i32 613, metadata !36, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!1169 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !1000, i32 613, metadata !36, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!1170 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !1000, i32 613, metadata !36, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!1171 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !1000, i32 614, metadata !36, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!1172 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !1000, i32 617, metadata !1173, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!1173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !39, metadata !1174, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!1174 = metadata !{metadata !1175}
!1175 = metadata !{i32 786465, i64 0, i64 300}    ; [ DW_TAG_subrange_type ] [0, 299]
!1176 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !1000, i32 620, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!1177 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !1000, i32 620, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!1178 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !1000, i32 620, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!1179 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !1000, i32 621, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!1180 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !1000, i32 621, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!1181 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !1000, i32 621, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!1182 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !1000, i32 622, metadata !1183, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!1183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !36, metadata !1184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!1184 = metadata !{metadata !182, metadata !694, metadata !694}
!1185 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !1000, i32 623, metadata !1186, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!1186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !36, metadata !1187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!1187 = metadata !{metadata !187, metadata !200, metadata !200}
!1188 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !1000, i32 623, metadata !1186, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!1189 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !1000, i32 624, metadata !1186, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!1190 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !1000, i32 624, metadata !1186, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!1191 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !1000, i32 625, metadata !782, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!1192 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !1000, i32 625, metadata !732, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!1193 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !1000, i32 1201, metadata !1194, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!1194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1195} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!1195 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !1196} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!1196 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !1197, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!1197 = metadata !{metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1202, metadata !1203}
!1198 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!1199 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!1200 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!1201 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!1202 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!1203 = metadata !{i32 786445, metadata !9, metadata !1196, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!1204 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !1000, i32 1202, metadata !1205, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!1205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1206} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!1206 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !1207} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!1207 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !1208, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!1208 = metadata !{metadata !1209, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227, metadata !1228, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234, metadata !1235, metadata !1236}
!1209 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !465} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!1210 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !708} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!1211 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !708} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!1212 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !708} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!1213 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !428} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!1214 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !429} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!1215 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!1216 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !36} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!1217 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !740} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!1218 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !740} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!1219 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !430} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!1220 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !732} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!1221 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !36} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!1222 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !737} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!1223 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !36} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!1224 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !400} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!1225 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !400} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!1226 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !400} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!1227 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !400} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!1228 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !1229} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!1229 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !406, metadata !1187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!1230 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !36} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!1231 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !36} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!1232 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !36} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!1233 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !36} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!1234 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!1235 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!1236 = metadata !{i32 786445, metadata !9, metadata !1207, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!1237 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !1000, i32 1203, metadata !1206, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!1238 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !1000, i32 1203, metadata !1206, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!1239 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !1000, i32 1204, metadata !1206, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!1240 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !1000, i32 1204, metadata !1206, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!1241 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !1000, i32 1230, metadata !274, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!1242 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !1000, i32 1231, metadata !274, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!1243 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !1000, i32 1232, metadata !274, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!1244 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !1000, i32 1233, metadata !36, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!1245 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !1000, i32 1234, metadata !36, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!1246 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !1000, i32 1237, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!1247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !36, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!1248 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !1000, i32 1238, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!1249 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !1000, i32 1239, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!1250 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !1000, i32 1240, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!1251 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !1000, i32 1241, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!1252 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !1000, i32 1242, metadata !1247, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!1253 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !1000, i32 1456, metadata !36, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!1254 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !1000, i32 1465, metadata !36, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!1255 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !1000, i32 1466, metadata !36, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!1256 = metadata !{i32 786484, i32 0, null, metadata !"configinput", metadata !"configinput", metadata !"", metadata !1257, i32 37, metadata !481, i32 0, i32 1, %struct.InputParameters* @configinput, null} ; [ DW_TAG_variable ] [configinput] [line 37] [def]
!1257 = metadata !{i32 786473, metadata !1258}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.h]
!1258 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1259 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_unregistered_info", metadata !"seiHasUser_data_unregistered_info", metadata !"", metadata !1260, i32 216, metadata !253, i32 0, i32 1, i32* @seiHasUser_data_unregistered_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_unregistered_info] [line 216] [def]
!1260 = metadata !{i32 786473, metadata !1261}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.h]
!1261 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1262 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_unregistered", metadata !"seiUser_data_unregistered", metadata !"", metadata !1260, i32 217, metadata !1263, i32 0, i32 1, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, null} ; [ DW_TAG_variable ] [seiUser_data_unregistered] [line 217] [def]
!1263 = metadata !{i32 786454, metadata !1261, null, metadata !"user_data_unregistered_information_struct", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !1264} ; [ DW_TAG_typedef ] [user_data_unregistered_information_struct] [line 211, size 0, align 0, offset 0] [from ]
!1264 = metadata !{i32 786451, metadata !1261, null, metadata !"", i32 205, i64 256, i64 64, i32 0, i32 0, null, metadata !1265, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 205, size 256, align 64, offset 0] [from ]
!1265 = metadata !{metadata !1266, metadata !1267, metadata !1268, metadata !1269}
!1266 = metadata !{i32 786445, metadata !1261, metadata !1264, metadata !"byte", i32 207, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [byte] [line 207, size 64, align 64, offset 0] [from ]
!1267 = metadata !{i32 786445, metadata !1261, metadata !1264, metadata !"total_byte", i32 208, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [total_byte] [line 208, size 32, align 32, offset 64] [from int]
!1268 = metadata !{i32 786445, metadata !1261, metadata !1264, metadata !"data", i32 209, i64 64, i64 64, i64 128, i32 0, metadata !95} ; [ DW_TAG_member ] [data] [line 209, size 64, align 64, offset 128] [from ]
!1269 = metadata !{i32 786445, metadata !1261, metadata !1264, metadata !"payloadSize", i32 210, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [payloadSize] [line 210, size 32, align 32, offset 192] [from int]
!1270 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"", metadata !1260, i32 240, metadata !253, i32 0, i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_registered_itu_t_t35_info] [line 240] [def]
!1271 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_registered_itu_t_t35", metadata !"seiUser_data_registered_itu_t_t35", metadata !"", metadata !1260, i32 241, metadata !1272, i32 0, i32 1, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, null} ; [ DW_TAG_variable ] [seiUser_data_registered_itu_t_t35] [line 241] [def]
!1272 = metadata !{i32 786454, metadata !1261, null, metadata !"user_data_registered_itu_t_t35_information_struct", i32 235, i64 0, i64 0, i64 0, i32 0, metadata !1273} ; [ DW_TAG_typedef ] [user_data_registered_itu_t_t35_information_struct] [line 235, size 0, align 0, offset 0] [from ]
!1273 = metadata !{i32 786451, metadata !1261, null, metadata !"", i32 227, i64 320, i64 64, i32 0, i32 0, null, metadata !1274, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 227, size 320, align 64, offset 0] [from ]
!1274 = metadata !{metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280}
!1275 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"byte", i32 229, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [byte] [line 229, size 64, align 64, offset 0] [from ]
!1276 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"total_byte", i32 230, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [total_byte] [line 230, size 32, align 32, offset 64] [from int]
!1277 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"itu_t_t35_country_code", i32 231, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [itu_t_t35_country_code] [line 231, size 32, align 32, offset 96] [from int]
!1278 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"itu_t_t35_country_code_extension_byte", i32 232, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [itu_t_t35_country_code_extension_byte] [line 232, size 32, align 32, offset 128] [from int]
!1279 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"data", i32 233, i64 64, i64 64, i64 192, i32 0, metadata !95} ; [ DW_TAG_member ] [data] [line 233, size 64, align 64, offset 192] [from ]
!1280 = metadata !{i32 786445, metadata !1261, metadata !1273, metadata !"payloadSize", i32 234, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [payloadSize] [line 234, size 32, align 32, offset 256] [from int]
!1281 = metadata !{i32 786484, i32 0, null, metadata !"seiHasRandomAccess_info", metadata !"seiHasRandomAccess_info", metadata !"", metadata !1260, i32 264, metadata !253, i32 0, i32 1, i32* @seiHasRandomAccess_info, null} ; [ DW_TAG_variable ] [seiHasRandomAccess_info] [line 264] [def]
!1282 = metadata !{i32 786484, i32 0, null, metadata !"seiRandomAccess", metadata !"seiRandomAccess", metadata !"", metadata !1260, i32 265, metadata !1283, i32 0, i32 1, %struct.randomaccess_information_struct* @seiRandomAccess, null} ; [ DW_TAG_variable ] [seiRandomAccess] [line 265] [def]
!1283 = metadata !{i32 786454, metadata !1261, null, metadata !"randomaccess_information_struct", i32 259, i64 0, i64 0, i64 0, i32 0, metadata !1284} ; [ DW_TAG_typedef ] [randomaccess_information_struct] [line 259, size 0, align 0, offset 0] [from ]
!1284 = metadata !{i32 786451, metadata !1261, null, metadata !"", i32 251, i64 192, i64 64, i32 0, i32 0, null, metadata !1285, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 251, size 192, align 64, offset 0] [from ]
!1285 = metadata !{metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290}
!1286 = metadata !{i32 786445, metadata !1261, metadata !1284, metadata !"recovery_point_flag", i32 253, i64 8, i64 8, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [recovery_point_flag] [line 253, size 8, align 8, offset 0] [from unsigned char]
!1287 = metadata !{i32 786445, metadata !1261, metadata !1284, metadata !"exact_match_flag", i32 254, i64 8, i64 8, i64 8, i32 0, metadata !103} ; [ DW_TAG_member ] [exact_match_flag] [line 254, size 8, align 8, offset 8] [from unsigned char]
!1288 = metadata !{i32 786445, metadata !1261, metadata !1284, metadata !"broken_link_flag", i32 255, i64 8, i64 8, i64 16, i32 0, metadata !103} ; [ DW_TAG_member ] [broken_link_flag] [line 255, size 8, align 8, offset 16] [from unsigned char]
!1289 = metadata !{i32 786445, metadata !1261, metadata !1284, metadata !"data", i32 257, i64 64, i64 64, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [data] [line 257, size 64, align 64, offset 64] [from ]
!1290 = metadata !{i32 786445, metadata !1261, metadata !1284, metadata !"payloadSize", i32 258, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [payloadSize] [line 258, size 32, align 32, offset 128] [from int]
!1291 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !1292, i32 28, metadata !1294, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!1292 = metadata !{i32 786473, metadata !1293}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!1293 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1294 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1295} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1295 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1296 = metadata !{metadata !36, metadata !1297}
!1297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1298} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!1298 = metadata !{i32 786454, metadata !1293, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1299} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!1299 = metadata !{i32 786451, metadata !1300, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !1301, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!1300 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1301 = metadata !{metadata !1302, metadata !1303, metadata !1304, metadata !1305, metadata !1306, metadata !1307, metadata !1308}
!1302 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!1303 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!1304 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!1305 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!1306 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!1307 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!1308 = metadata !{i32 786445, metadata !1300, metadata !1299, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !111} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!1309 = metadata !{i32 786484, i32 0, null, metadata !"McostState", metadata !"McostState", metadata !"", metadata !1310, i32 107, metadata !430, i32 0, i32 1, i32*** @McostState, null} ; [ DW_TAG_variable ] [McostState] [line 107] [def]
!1310 = metadata !{i32 786473, metadata !1311}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.h]
!1311 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1312 = metadata !{i32 786484, i32 0, null, metadata !"all_mincost", metadata !"all_mincost", metadata !"", metadata !1310, i32 109, metadata !427, i32 0, i32 1, i32****** @all_mincost, null} ; [ DW_TAG_variable ] [all_mincost] [line 109] [def]
!1313 = metadata !{i32 786484, i32 0, null, metadata !"all_bwmincost", metadata !"all_bwmincost", metadata !"", metadata !1310, i32 110, metadata !427, i32 0, i32 1, i32****** @all_bwmincost, null} ; [ DW_TAG_variable ] [all_bwmincost] [line 110] [def]
!1314 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_space", metadata !"pred_SAD_space", metadata !"", metadata !1310, i32 111, metadata !36, i32 0, i32 1, i32* @pred_SAD_space, null} ; [ DW_TAG_variable ] [pred_SAD_space] [line 111] [def]
!1315 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_time", metadata !"pred_SAD_time", metadata !"", metadata !1310, i32 111, metadata !36, i32 0, i32 1, i32* @pred_SAD_time, null} ; [ DW_TAG_variable ] [pred_SAD_time] [line 111] [def]
!1316 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_ref", metadata !"pred_SAD_ref", metadata !"", metadata !1310, i32 111, metadata !36, i32 0, i32 1, i32* @pred_SAD_ref, null} ; [ DW_TAG_variable ] [pred_SAD_ref] [line 111] [def]
!1317 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_uplayer", metadata !"pred_SAD_uplayer", metadata !"", metadata !1310, i32 111, metadata !36, i32 0, i32 1, i32* @pred_SAD_uplayer, null} ; [ DW_TAG_variable ] [pred_SAD_uplayer] [line 111] [def]
!1318 = metadata !{i32 786484, i32 0, null, metadata !"FME_blocktype", metadata !"FME_blocktype", metadata !"", metadata !1310, i32 112, metadata !36, i32 0, i32 1, i32* @FME_blocktype, null} ; [ DW_TAG_variable ] [FME_blocktype] [line 112] [def]
!1319 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_time", metadata !"pred_MV_time", metadata !"", metadata !1310, i32 113, metadata !829, i32 0, i32 1, [2 x i32]* @pred_MV_time, null} ; [ DW_TAG_variable ] [pred_MV_time] [line 113] [def]
!1320 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_ref", metadata !"pred_MV_ref", metadata !"", metadata !1310, i32 113, metadata !829, i32 0, i32 1, [2 x i32]* @pred_MV_ref, null} ; [ DW_TAG_variable ] [pred_MV_ref] [line 113] [def]
!1321 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_uplayer", metadata !"pred_MV_uplayer", metadata !"", metadata !1310, i32 113, metadata !829, i32 0, i32 1, [2 x i32]* @pred_MV_uplayer, null} ; [ DW_TAG_variable ] [pred_MV_uplayer] [line 113] [def]
!1322 = metadata !{i32 786484, i32 0, null, metadata !"Quantize_step", metadata !"Quantize_step", metadata !"", metadata !1310, i32 116, metadata !261, i32 0, i32 1, float* @Quantize_step, null} ; [ DW_TAG_variable ] [Quantize_step] [line 116] [def]
!1323 = metadata !{i32 786484, i32 0, null, metadata !"Bsize", metadata !"Bsize", metadata !"", metadata !1310, i32 117, metadata !1324, i32 0, i32 1, [8 x float]* @Bsize, null} ; [ DW_TAG_variable ] [Bsize] [line 117] [def]
!1324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !261, metadata !628, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!1325 = metadata !{i32 786484, i32 0, null, metadata !"Thresh4x4", metadata !"Thresh4x4", metadata !"", metadata !1310, i32 118, metadata !36, i32 0, i32 1, i32* @Thresh4x4, null} ; [ DW_TAG_variable ] [Thresh4x4] [line 118] [def]
!1326 = metadata !{i32 786484, i32 0, null, metadata !"AlphaSec", metadata !"AlphaSec", metadata !"", metadata !1310, i32 119, metadata !1324, i32 0, i32 1, [8 x float]* @AlphaSec, null} ; [ DW_TAG_variable ] [AlphaSec] [line 119] [def]
!1327 = metadata !{i32 786484, i32 0, null, metadata !"AlphaThird", metadata !"AlphaThird", metadata !"", metadata !1310, i32 120, metadata !1324, i32 0, i32 1, [8 x float]* @AlphaThird, null} ; [ DW_TAG_variable ] [AlphaThird] [line 120] [def]
!1328 = metadata !{i32 786484, i32 0, null, metadata !"flag_intra", metadata !"flag_intra", metadata !"", metadata !1310, i32 121, metadata !124, i32 0, i32 1, i32** @flag_intra, null} ; [ DW_TAG_variable ] [flag_intra] [line 121] [def]
!1329 = metadata !{i32 786484, i32 0, null, metadata !"flag_intra_SAD", metadata !"flag_intra_SAD", metadata !"", metadata !1310, i32 122, metadata !36, i32 0, i32 1, i32* @flag_intra_SAD, null} ; [ DW_TAG_variable ] [flag_intra_SAD] [line 122] [def]
!1330 = metadata !{i32 786484, i32 0, null, metadata !"SearchState", metadata !"SearchState", metadata !"", metadata !1310, i32 124, metadata !985, i32 0, i32 1, i8*** @SearchState, null} ; [ DW_TAG_variable ] [SearchState] [line 124] [def]
!1331 = metadata !{i32 786484, i32 0, null, metadata !"bit_rate", metadata !"bit_rate", metadata !"", metadata !1332, i32 124, metadata !465, i32 0, i32 1, double* @bit_rate, null} ; [ DW_TAG_variable ] [bit_rate] [line 124] [def]
!1332 = metadata !{i32 786473, metadata !1333}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h]
!1333 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1334 = metadata !{i32 786484, i32 0, null, metadata !"frame_rate", metadata !"frame_rate", metadata !"", metadata !1332, i32 125, metadata !465, i32 0, i32 1, double* @frame_rate, null} ; [ DW_TAG_variable ] [frame_rate] [line 125] [def]
!1335 = metadata !{i32 786484, i32 0, null, metadata !"GAMMAP", metadata !"GAMMAP", metadata !"", metadata !1332, i32 126, metadata !465, i32 0, i32 1, double* @GAMMAP, null} ; [ DW_TAG_variable ] [GAMMAP] [line 126] [def]
!1336 = metadata !{i32 786484, i32 0, null, metadata !"BETAP", metadata !"BETAP", metadata !"", metadata !1332, i32 127, metadata !465, i32 0, i32 1, double* @BETAP, null} ; [ DW_TAG_variable ] [BETAP] [line 127] [def]
!1337 = metadata !{i32 786484, i32 0, null, metadata !"RC_MAX_QUANT", metadata !"RC_MAX_QUANT", metadata !"", metadata !1332, i32 129, metadata !36, i32 0, i32 1, i32* @RC_MAX_QUANT, null} ; [ DW_TAG_variable ] [RC_MAX_QUANT] [line 129] [def]
!1338 = metadata !{i32 786484, i32 0, null, metadata !"RC_MIN_QUANT", metadata !"RC_MIN_QUANT", metadata !"", metadata !1332, i32 130, metadata !36, i32 0, i32 1, i32* @RC_MIN_QUANT, null} ; [ DW_TAG_variable ] [RC_MIN_QUANT] [line 130] [def]
!1339 = metadata !{i32 786484, i32 0, null, metadata !"BufferSize", metadata !"BufferSize", metadata !"", metadata !1332, i32 132, metadata !465, i32 0, i32 1, double* @BufferSize, null} ; [ DW_TAG_variable ] [BufferSize] [line 132] [def]
!1340 = metadata !{i32 786484, i32 0, null, metadata !"GOPTargetBufferLevel", metadata !"GOPTargetBufferLevel", metadata !"", metadata !1332, i32 133, metadata !465, i32 0, i32 1, double* @GOPTargetBufferLevel, null} ; [ DW_TAG_variable ] [GOPTargetBufferLevel] [line 133] [def]
!1341 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBufferFullness", metadata !"CurrentBufferFullness", metadata !"", metadata !1332, i32 134, metadata !465, i32 0, i32 1, double* @CurrentBufferFullness, null} ; [ DW_TAG_variable ] [CurrentBufferFullness] [line 134] [def]
!1342 = metadata !{i32 786484, i32 0, null, metadata !"TargetBufferLevel", metadata !"TargetBufferLevel", metadata !"", metadata !1332, i32 135, metadata !465, i32 0, i32 1, double* @TargetBufferLevel, null} ; [ DW_TAG_variable ] [TargetBufferLevel] [line 135] [def]
!1343 = metadata !{i32 786484, i32 0, null, metadata !"PreviousBit_Rate", metadata !"PreviousBit_Rate", metadata !"", metadata !1332, i32 136, metadata !465, i32 0, i32 1, double* @PreviousBit_Rate, null} ; [ DW_TAG_variable ] [PreviousBit_Rate] [line 136] [def]
!1344 = metadata !{i32 786484, i32 0, null, metadata !"AWp", metadata !"AWp", metadata !"", metadata !1332, i32 137, metadata !465, i32 0, i32 1, double* @AWp, null} ; [ DW_TAG_variable ] [AWp] [line 137] [def]
!1345 = metadata !{i32 786484, i32 0, null, metadata !"AWb", metadata !"AWb", metadata !"", metadata !1332, i32 138, metadata !465, i32 0, i32 1, double* @AWb, null} ; [ DW_TAG_variable ] [AWb] [line 138] [def]
!1346 = metadata !{i32 786484, i32 0, null, metadata !"MyInitialQp", metadata !"MyInitialQp", metadata !"", metadata !1332, i32 139, metadata !36, i32 0, i32 1, i32* @MyInitialQp, null} ; [ DW_TAG_variable ] [MyInitialQp] [line 139] [def]
!1347 = metadata !{i32 786484, i32 0, null, metadata !"PAverageQp", metadata !"PAverageQp", metadata !"", metadata !1332, i32 140, metadata !36, i32 0, i32 1, i32* @PAverageQp, null} ; [ DW_TAG_variable ] [PAverageQp] [line 140] [def]
!1348 = metadata !{i32 786484, i32 0, null, metadata !"PreviousPictureMAD", metadata !"PreviousPictureMAD", metadata !"", metadata !1332, i32 144, metadata !465, i32 0, i32 1, double* @PreviousPictureMAD, null} ; [ DW_TAG_variable ] [PreviousPictureMAD] [line 144] [def]
!1349 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC1", metadata !"MADPictureC1", metadata !"", metadata !1332, i32 145, metadata !465, i32 0, i32 1, double* @MADPictureC1, null} ; [ DW_TAG_variable ] [MADPictureC1] [line 145] [def]
!1350 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC2", metadata !"MADPictureC2", metadata !"", metadata !1332, i32 146, metadata !465, i32 0, i32 1, double* @MADPictureC2, null} ; [ DW_TAG_variable ] [MADPictureC2] [line 146] [def]
!1351 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC1", metadata !"PMADPictureC1", metadata !"", metadata !1332, i32 147, metadata !465, i32 0, i32 1, double* @PMADPictureC1, null} ; [ DW_TAG_variable ] [PMADPictureC1] [line 147] [def]
!1352 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC2", metadata !"PMADPictureC2", metadata !"", metadata !1332, i32 148, metadata !465, i32 0, i32 1, double* @PMADPictureC2, null} ; [ DW_TAG_variable ] [PMADPictureC2] [line 148] [def]
!1353 = metadata !{i32 786484, i32 0, null, metadata !"PictureRejected", metadata !"PictureRejected", metadata !"", metadata !1332, i32 150, metadata !1354, i32 0, i32 1, [21 x i32]* @PictureRejected, null} ; [ DW_TAG_variable ] [PictureRejected] [line 150] [def]
!1354 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 672, i64 32, i32 0, i32 0, metadata !253, metadata !1355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 672, align 32, offset 0] [from Boolean]
!1355 = metadata !{metadata !1356}
!1356 = metadata !{i32 786465, i64 0, i64 21}     ; [ DW_TAG_subrange_type ] [0, 20]
!1357 = metadata !{i32 786484, i32 0, null, metadata !"PPictureMAD", metadata !"PPictureMAD", metadata !"", metadata !1332, i32 151, metadata !1358, i32 0, i32 1, [21 x double]* @PPictureMAD, null} ; [ DW_TAG_variable ] [PPictureMAD] [line 151] [def]
!1358 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1344, i64 64, i32 0, i32 0, metadata !465, metadata !1355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1344, align 64, offset 0] [from double]
!1359 = metadata !{i32 786484, i32 0, null, metadata !"PictureMAD", metadata !"PictureMAD", metadata !"", metadata !1332, i32 152, metadata !1358, i32 0, i32 1, [21 x double]* @PictureMAD, null} ; [ DW_TAG_variable ] [PictureMAD] [line 152] [def]
!1360 = metadata !{i32 786484, i32 0, null, metadata !"ReferenceMAD", metadata !"ReferenceMAD", metadata !"", metadata !1332, i32 153, metadata !1358, i32 0, i32 1, [21 x double]* @ReferenceMAD, null} ; [ DW_TAG_variable ] [ReferenceMAD] [line 153] [def]
!1361 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRejected", metadata !"m_rgRejected", metadata !"", metadata !1332, i32 156, metadata !1354, i32 0, i32 1, [21 x i32]* @m_rgRejected, null} ; [ DW_TAG_variable ] [m_rgRejected] [line 156] [def]
!1362 = metadata !{i32 786484, i32 0, null, metadata !"m_rgQp", metadata !"m_rgQp", metadata !"", metadata !1332, i32 157, metadata !1358, i32 0, i32 1, [21 x double]* @m_rgQp, null} ; [ DW_TAG_variable ] [m_rgQp] [line 157] [def]
!1363 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRp", metadata !"m_rgRp", metadata !"", metadata !1332, i32 158, metadata !1358, i32 0, i32 1, [21 x double]* @m_rgRp, null} ; [ DW_TAG_variable ] [m_rgRp] [line 158] [def]
!1364 = metadata !{i32 786484, i32 0, null, metadata !"m_X1", metadata !"m_X1", metadata !"", metadata !1332, i32 159, metadata !465, i32 0, i32 1, double* @m_X1, null} ; [ DW_TAG_variable ] [m_X1] [line 159] [def]
!1365 = metadata !{i32 786484, i32 0, null, metadata !"m_X2", metadata !"m_X2", metadata !"", metadata !1332, i32 160, metadata !465, i32 0, i32 1, double* @m_X2, null} ; [ DW_TAG_variable ] [m_X2] [line 160] [def]
!1366 = metadata !{i32 786484, i32 0, null, metadata !"m_Qc", metadata !"m_Qc", metadata !"", metadata !1332, i32 161, metadata !36, i32 0, i32 1, i32* @m_Qc, null} ; [ DW_TAG_variable ] [m_Qc] [line 161] [def]
!1367 = metadata !{i32 786484, i32 0, null, metadata !"m_Qstep", metadata !"m_Qstep", metadata !"", metadata !1332, i32 162, metadata !465, i32 0, i32 1, double* @m_Qstep, null} ; [ DW_TAG_variable ] [m_Qstep] [line 162] [def]
!1368 = metadata !{i32 786484, i32 0, null, metadata !"m_Qp", metadata !"m_Qp", metadata !"", metadata !1332, i32 163, metadata !36, i32 0, i32 1, i32* @m_Qp, null} ; [ DW_TAG_variable ] [m_Qp] [line 163] [def]
!1369 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Qp", metadata !"Pm_Qp", metadata !"", metadata !1332, i32 164, metadata !36, i32 0, i32 1, i32* @Pm_Qp, null} ; [ DW_TAG_variable ] [Pm_Qp] [line 164] [def]
!1370 = metadata !{i32 786484, i32 0, null, metadata !"PreAveMBHeader", metadata !"PreAveMBHeader", metadata !"", metadata !1332, i32 165, metadata !36, i32 0, i32 1, i32* @PreAveMBHeader, null} ; [ DW_TAG_variable ] [PreAveMBHeader] [line 165] [def]
!1371 = metadata !{i32 786484, i32 0, null, metadata !"CurAveMBHeader", metadata !"CurAveMBHeader", metadata !"", metadata !1332, i32 166, metadata !36, i32 0, i32 1, i32* @CurAveMBHeader, null} ; [ DW_TAG_variable ] [CurAveMBHeader] [line 166] [def]
!1372 = metadata !{i32 786484, i32 0, null, metadata !"PPreHeader", metadata !"PPreHeader", metadata !"", metadata !1332, i32 167, metadata !36, i32 0, i32 1, i32* @PPreHeader, null} ; [ DW_TAG_variable ] [PPreHeader] [line 167] [def]
!1373 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp1", metadata !"PreviousQp1", metadata !"", metadata !1332, i32 168, metadata !36, i32 0, i32 1, i32* @PreviousQp1, null} ; [ DW_TAG_variable ] [PreviousQp1] [line 168] [def]
!1374 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp2", metadata !"PreviousQp2", metadata !"", metadata !1332, i32 169, metadata !36, i32 0, i32 1, i32* @PreviousQp2, null} ; [ DW_TAG_variable ] [PreviousQp2] [line 169] [def]
!1375 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBFrames", metadata !"NumberofBFrames", metadata !"", metadata !1332, i32 170, metadata !36, i32 0, i32 1, i32* @NumberofBFrames, null} ; [ DW_TAG_variable ] [NumberofBFrames] [line 170] [def]
!1376 = metadata !{i32 786484, i32 0, null, metadata !"TotalFrameQP", metadata !"TotalFrameQP", metadata !"", metadata !1332, i32 172, metadata !36, i32 0, i32 1, i32* @TotalFrameQP, null} ; [ DW_TAG_variable ] [TotalFrameQP] [line 172] [def]
!1377 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBasicUnit", metadata !"NumberofBasicUnit", metadata !"", metadata !1332, i32 173, metadata !36, i32 0, i32 1, i32* @NumberofBasicUnit, null} ; [ DW_TAG_variable ] [NumberofBasicUnit] [line 173] [def]
!1378 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits1", metadata !"PAveHeaderBits1", metadata !"", metadata !1332, i32 174, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits1, null} ; [ DW_TAG_variable ] [PAveHeaderBits1] [line 174] [def]
!1379 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits2", metadata !"PAveHeaderBits2", metadata !"", metadata !1332, i32 175, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits2, null} ; [ DW_TAG_variable ] [PAveHeaderBits2] [line 175] [def]
!1380 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits3", metadata !"PAveHeaderBits3", metadata !"", metadata !1332, i32 176, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits3, null} ; [ DW_TAG_variable ] [PAveHeaderBits3] [line 176] [def]
!1381 = metadata !{i32 786484, i32 0, null, metadata !"PAveFrameQP", metadata !"PAveFrameQP", metadata !"", metadata !1332, i32 177, metadata !36, i32 0, i32 1, i32* @PAveFrameQP, null} ; [ DW_TAG_variable ] [PAveFrameQP] [line 177] [def]
!1382 = metadata !{i32 786484, i32 0, null, metadata !"TotalNumberofBasicUnit", metadata !"TotalNumberofBasicUnit", metadata !"", metadata !1332, i32 178, metadata !36, i32 0, i32 1, i32* @TotalNumberofBasicUnit, null} ; [ DW_TAG_variable ] [TotalNumberofBasicUnit] [line 178] [def]
!1383 = metadata !{i32 786484, i32 0, null, metadata !"CodedBasicUnit", metadata !"CodedBasicUnit", metadata !"", metadata !1332, i32 179, metadata !36, i32 0, i32 1, i32* @CodedBasicUnit, null} ; [ DW_TAG_variable ] [CodedBasicUnit] [line 179] [def]
!1384 = metadata !{i32 786484, i32 0, null, metadata !"MINVALUE", metadata !"MINVALUE", metadata !"", metadata !1332, i32 180, metadata !465, i32 0, i32 1, double* @MINVALUE, null} ; [ DW_TAG_variable ] [MINVALUE] [line 180] [def]
!1385 = metadata !{i32 786484, i32 0, null, metadata !"CurrentFrameMAD", metadata !"CurrentFrameMAD", metadata !"", metadata !1332, i32 181, metadata !465, i32 0, i32 1, double* @CurrentFrameMAD, null} ; [ DW_TAG_variable ] [CurrentFrameMAD] [line 181] [def]
!1386 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBUMAD", metadata !"CurrentBUMAD", metadata !"", metadata !1332, i32 182, metadata !465, i32 0, i32 1, double* @CurrentBUMAD, null} ; [ DW_TAG_variable ] [CurrentBUMAD] [line 182] [def]
!1387 = metadata !{i32 786484, i32 0, null, metadata !"TotalBUMAD", metadata !"TotalBUMAD", metadata !"", metadata !1332, i32 183, metadata !465, i32 0, i32 1, double* @TotalBUMAD, null} ; [ DW_TAG_variable ] [TotalBUMAD] [line 183] [def]
!1388 = metadata !{i32 786484, i32 0, null, metadata !"PreviousFrameMAD", metadata !"PreviousFrameMAD", metadata !"", metadata !1332, i32 184, metadata !465, i32 0, i32 1, double* @PreviousFrameMAD, null} ; [ DW_TAG_variable ] [PreviousFrameMAD] [line 184] [def]
!1389 = metadata !{i32 786484, i32 0, null, metadata !"m_Hp", metadata !"m_Hp", metadata !"", metadata !1332, i32 185, metadata !36, i32 0, i32 1, i32* @m_Hp, null} ; [ DW_TAG_variable ] [m_Hp] [line 185] [def]
!1390 = metadata !{i32 786484, i32 0, null, metadata !"m_windowSize", metadata !"m_windowSize", metadata !"", metadata !1332, i32 186, metadata !36, i32 0, i32 1, i32* @m_windowSize, null} ; [ DW_TAG_variable ] [m_windowSize] [line 186] [def]
!1391 = metadata !{i32 786484, i32 0, null, metadata !"MADm_windowSize", metadata !"MADm_windowSize", metadata !"", metadata !1332, i32 187, metadata !36, i32 0, i32 1, i32* @MADm_windowSize, null} ; [ DW_TAG_variable ] [MADm_windowSize] [line 187] [def]
!1392 = metadata !{i32 786484, i32 0, null, metadata !"DDquant", metadata !"DDquant", metadata !"", metadata !1332, i32 188, metadata !36, i32 0, i32 1, i32* @DDquant, null} ; [ DW_TAG_variable ] [DDquant] [line 188] [def]
!1393 = metadata !{i32 786484, i32 0, null, metadata !"MBPerRow", metadata !"MBPerRow", metadata !"", metadata !1332, i32 189, metadata !36, i32 0, i32 1, i32* @MBPerRow, null} ; [ DW_TAG_variable ] [MBPerRow] [line 189] [def]
!1394 = metadata !{i32 786484, i32 0, null, metadata !"AverageMADPreviousFrame", metadata !"AverageMADPreviousFrame", metadata !"", metadata !1332, i32 190, metadata !465, i32 0, i32 1, double* @AverageMADPreviousFrame, null} ; [ DW_TAG_variable ] [AverageMADPreviousFrame] [line 190] [def]
!1395 = metadata !{i32 786484, i32 0, null, metadata !"TotalBasicUnitBits", metadata !"TotalBasicUnitBits", metadata !"", metadata !1332, i32 191, metadata !36, i32 0, i32 1, i32* @TotalBasicUnitBits, null} ; [ DW_TAG_variable ] [TotalBasicUnitBits] [line 191] [def]
!1396 = metadata !{i32 786484, i32 0, null, metadata !"QPLastPFrame", metadata !"QPLastPFrame", metadata !"", metadata !1332, i32 192, metadata !36, i32 0, i32 1, i32* @QPLastPFrame, null} ; [ DW_TAG_variable ] [QPLastPFrame] [line 192] [def]
!1397 = metadata !{i32 786484, i32 0, null, metadata !"QPLastGOP", metadata !"QPLastGOP", metadata !"", metadata !1332, i32 193, metadata !36, i32 0, i32 1, i32* @QPLastGOP, null} ; [ DW_TAG_variable ] [QPLastGOP] [line 193] [def]
!1398 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgQp", metadata !"Pm_rgQp", metadata !"", metadata !1332, i32 197, metadata !1399, i32 0, i32 1, [20 x double]* @Pm_rgQp, null} ; [ DW_TAG_variable ] [Pm_rgQp] [line 197] [def]
!1399 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !465, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from double]
!1400 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgRp", metadata !"Pm_rgRp", metadata !"", metadata !1332, i32 198, metadata !1399, i32 0, i32 1, [20 x double]* @Pm_rgRp, null} ; [ DW_TAG_variable ] [Pm_rgRp] [line 198] [def]
!1401 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X1", metadata !"Pm_X1", metadata !"", metadata !1332, i32 199, metadata !465, i32 0, i32 1, double* @Pm_X1, null} ; [ DW_TAG_variable ] [Pm_X1] [line 199] [def]
!1402 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X2", metadata !"Pm_X2", metadata !"", metadata !1332, i32 200, metadata !465, i32 0, i32 1, double* @Pm_X2, null} ; [ DW_TAG_variable ] [Pm_X2] [line 200] [def]
!1403 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Hp", metadata !"Pm_Hp", metadata !"", metadata !1332, i32 201, metadata !36, i32 0, i32 1, i32* @Pm_Hp, null} ; [ DW_TAG_variable ] [Pm_Hp] [line 201] [def]
!1404 = metadata !{i32 786484, i32 0, null, metadata !"FieldQPBuffer", metadata !"FieldQPBuffer", metadata !"", metadata !1332, i32 203, metadata !36, i32 0, i32 1, i32* @FieldQPBuffer, null} ; [ DW_TAG_variable ] [FieldQPBuffer] [line 203] [def]
!1405 = metadata !{i32 786484, i32 0, null, metadata !"FrameQPBuffer", metadata !"FrameQPBuffer", metadata !"", metadata !1332, i32 204, metadata !36, i32 0, i32 1, i32* @FrameQPBuffer, null} ; [ DW_TAG_variable ] [FrameQPBuffer] [line 204] [def]
!1406 = metadata !{i32 786484, i32 0, null, metadata !"FrameAveHeaderBits", metadata !"FrameAveHeaderBits", metadata !"", metadata !1332, i32 205, metadata !36, i32 0, i32 1, i32* @FrameAveHeaderBits, null} ; [ DW_TAG_variable ] [FrameAveHeaderBits] [line 205] [def]
!1407 = metadata !{i32 786484, i32 0, null, metadata !"FieldAveHeaderBits", metadata !"FieldAveHeaderBits", metadata !"", metadata !1332, i32 206, metadata !36, i32 0, i32 1, i32* @FieldAveHeaderBits, null} ; [ DW_TAG_variable ] [FieldAveHeaderBits] [line 206] [def]
!1408 = metadata !{i32 786484, i32 0, null, metadata !"BUPFMAD", metadata !"BUPFMAD", metadata !"", metadata !1332, i32 207, metadata !873, i32 0, i32 1, double** @BUPFMAD, null} ; [ DW_TAG_variable ] [BUPFMAD] [line 207] [def]
!1409 = metadata !{i32 786484, i32 0, null, metadata !"BUCFMAD", metadata !"BUCFMAD", metadata !"", metadata !1332, i32 208, metadata !873, i32 0, i32 1, double** @BUCFMAD, null} ; [ DW_TAG_variable ] [BUCFMAD] [line 208] [def]
!1410 = metadata !{i32 786484, i32 0, null, metadata !"FCBUCFMAD", metadata !"FCBUCFMAD", metadata !"", metadata !1332, i32 209, metadata !873, i32 0, i32 1, double** @FCBUCFMAD, null} ; [ DW_TAG_variable ] [FCBUCFMAD] [line 209] [def]
!1411 = metadata !{i32 786484, i32 0, null, metadata !"FCBUPFMAD", metadata !"FCBUPFMAD", metadata !"", metadata !1332, i32 210, metadata !873, i32 0, i32 1, double** @FCBUPFMAD, null} ; [ DW_TAG_variable ] [FCBUPFMAD] [line 210] [def]
!1412 = metadata !{i32 786484, i32 0, null, metadata !"GOPOverdue", metadata !"GOPOverdue", metadata !"", metadata !1332, i32 212, metadata !253, i32 0, i32 1, i32* @GOPOverdue, null} ; [ DW_TAG_variable ] [GOPOverdue] [line 212] [def]
!1413 = metadata !{i32 786484, i32 0, null, metadata !"diffy", metadata !"diffy", metadata !"", metadata !1332, i32 216, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @diffy, null} ; [ DW_TAG_variable ] [diffy] [line 216] [def]
!1414 = metadata !{i32 786484, i32 0, null, metadata !"diffyy", metadata !"diffyy", metadata !"", metadata !1332, i32 217, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @diffyy, null} ; [ DW_TAG_variable ] [diffyy] [line 217] [def]
!1415 = metadata !{i32 786484, i32 0, null, metadata !"diffy8", metadata !"diffy8", metadata !"", metadata !1332, i32 218, metadata !708, i32 0, i32 1, [16 x [16 x i32]]* @diffy8, null} ; [ DW_TAG_variable ] [diffy8] [line 218] [def]
!1416 = metadata !{i32 786484, i32 0, null, metadata !"inputs", metadata !"inputs", metadata !"", metadata !33, i32 177, metadata !481, i32 0, i32 1, %struct.InputParameters* @inputs, null} ; [ DW_TAG_variable ] [inputs] [line 177] [def]
!1417 = metadata !{i32 786484, i32 0, null, metadata !"images", metadata !"images", metadata !"", metadata !33, i32 178, metadata !647, i32 0, i32 1, %struct.ImageParameters* @images, null} ; [ DW_TAG_variable ] [images] [line 178] [def]
!1418 = metadata !{i32 786484, i32 0, null, metadata !"statistics", metadata !"statistics", metadata !"", metadata !33, i32 179, metadata !911, i32 0, i32 1, %struct.StatParameters* @statistics, null} ; [ DW_TAG_variable ] [statistics] [line 179] [def]
!1419 = metadata !{i32 786484, i32 0, null, metadata !"snrs", metadata !"snrs", metadata !"", metadata !33, i32 180, metadata !954, i32 0, i32 1, %struct.SNRParameters* @snrs, null} ; [ DW_TAG_variable ] [snrs] [line 180] [def]
!1420 = metadata !{i32 786484, i32 0, null, metadata !"decoders", metadata !"decoders", metadata !"", metadata !33, i32 181, metadata !972, i32 0, i32 1, %struct.Decoders* @decoders, null} ; [ DW_TAG_variable ] [decoders] [line 181] [def]
!1421 = metadata !{i32 786484, i32 0, null, metadata !"frame_statistic_start", metadata !"frame_statistic_start", metadata !"", metadata !33, i32 193, metadata !36, i32 0, i32 1, i32* @frame_statistic_start, null} ; [ DW_TAG_variable ] [frame_statistic_start] [line 193] [def]
!1422 = metadata !{i32 212, i32 0, metadata !32, null}
!1423 = metadata !{i32 216, i32 0, metadata !32, null}
!1424 = metadata !{metadata !"int", metadata !1425}
!1425 = metadata !{metadata !"omnipotent char", metadata !1426}
!1426 = metadata !{metadata !"Simple C/C++ TBAA"}
!1427 = metadata !{i32 218, i32 0, metadata !32, null}
!1428 = metadata !{metadata !"any pointer", metadata !1425}
!1429 = metadata !{i32 220, i32 0, metadata !32, null}
!1430 = metadata !{i32 222, i32 0, metadata !32, null}
!1431 = metadata !{i32 224, i32 0, metadata !32, null}
!1432 = metadata !{i32 226, i32 0, metadata !32, null}
!1433 = metadata !{i32 228, i32 0, metadata !32, null}
!1434 = metadata !{i32 230, i32 0, metadata !32, null}
!1435 = metadata !{i32 231, i32 0, metadata !32, null}
!1436 = metadata !{i32 233, i32 0, metadata !32, null}
!1437 = metadata !{i32 235, i32 0, metadata !32, null}
!1438 = metadata !{i32 237, i32 0, metadata !32, null}
!1439 = metadata !{i32 239, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !1, metadata !32, i32 238, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1441 = metadata !{i32 240, i32 0, metadata !1440, null}
!1442 = metadata !{i32 243, i32 0, metadata !32, null}
!1443 = metadata !{i32 241, i32 0, metadata !1440, null}
!1444 = metadata !{i32 245, i32 0, metadata !1445, null}
!1445 = metadata !{i32 786443, metadata !1, metadata !32, i32 244, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1446 = metadata !{i32 246, i32 0, metadata !1445, null}
!1447 = metadata !{i32 247, i32 0, metadata !1445, null}
!1448 = metadata !{i32 248, i32 0, metadata !32, null}
!1449 = metadata !{i32 250, i32 0, metadata !32, null}
!1450 = metadata !{i32 252, i32 0, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !1, metadata !32, i32 251, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1452 = metadata !{i32 253, i32 0, metadata !1451, null}
!1453 = metadata !{i32 255, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1451, i32 254, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1455 = metadata !{i32 256, i32 0, metadata !1454, null}
!1456 = metadata !{i32 259, i32 0, metadata !1457, null}
!1457 = metadata !{i32 786443, metadata !1, metadata !1451, i32 258, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1458 = metadata !{i32 263, i32 0, metadata !32, null}
!1459 = metadata !{i32 264, i32 0, metadata !32, null}
!1460 = metadata !{i32 266, i32 0, metadata !32, null}
!1461 = metadata !{i32 268, i32 0, metadata !32, null}
!1462 = metadata !{i32 270, i32 0, metadata !32, null}
!1463 = metadata !{i32 272, i32 0, metadata !32, null}
!1464 = metadata !{i32 274, i32 0, metadata !32, null}
!1465 = metadata !{i32 277, i32 0, metadata !32, null}
!1466 = metadata !{i32 278, i32 0, metadata !32, null}
!1467 = metadata !{i32 280, i32 0, metadata !32, null}
!1468 = metadata !{i32 281, i32 0, metadata !32, null}
!1469 = metadata !{i32 292, i32 0, metadata !32, null}
!1470 = metadata !{i32 284, i32 0, metadata !32, null}
!1471 = metadata !{i32 285, i32 0, metadata !32, null}
!1472 = metadata !{i32 288, i32 0, metadata !32, null}
!1473 = metadata !{i32 289, i32 0, metadata !32, null}
!1474 = metadata !{i32 293, i32 0, metadata !32, null}
!1475 = metadata !{i32 294, i32 0, metadata !32, null}
!1476 = metadata !{i32 297, i32 0, metadata !32, null}
!1477 = metadata !{i32 300, i32 0, metadata !32, null}
!1478 = metadata !{i32 301, i32 0, metadata !32, null}
!1479 = metadata !{i32 302, i32 0, metadata !32, null}
!1480 = metadata !{i32 303, i32 0, metadata !32, null}
!1481 = metadata !{i32 305, i32 0, metadata !51, null}
!1482 = metadata !{i32 307, i32 0, metadata !50, null}
!1483 = metadata !{i32 311, i32 0, metadata !50, null}
!1484 = metadata !{i32 313, i32 0, metadata !50, null}
!1485 = metadata !{i32 314, i32 0, metadata !50, null}
!1486 = metadata !{i32 316, i32 0, metadata !50, null}
!1487 = metadata !{i32 318, i32 0, metadata !50, null}
!1488 = metadata !{i32 322, i32 0, metadata !50, null}
!1489 = metadata !{i32 323, i32 0, metadata !50, null}
!1490 = metadata !{i32 326, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !1, metadata !50, i32 325, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1492 = metadata !{i32 327, i32 0, metadata !1491, null}
!1493 = metadata !{i32 329, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !1, metadata !1491, i32 328, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1495 = metadata !{i32 331, i32 0, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !1, metadata !1494, i32 330, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1497 = metadata !{i32 332, i32 0, metadata !1496, null}
!1498 = metadata !{i32 334, i32 0, metadata !1491, null}
!1499 = metadata !{i32 338, i32 0, metadata !50, null}
!1500 = metadata !{i32 340, i32 0, metadata !50, null}
!1501 = metadata !{i32 342, i32 0, metadata !1502, null}
!1502 = metadata !{i32 786443, metadata !1, metadata !50, i32 341, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1503 = metadata !{i32 344, i32 0, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !1, metadata !1502, i32 343, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1505 = metadata !{i32 345, i32 0, metadata !1504, null}
!1506 = metadata !{i32 348, i32 0, metadata !50, null}
!1507 = metadata !{i32 351, i32 0, metadata !50, null}
!1508 = metadata !{i32 353, i32 0, metadata !49, null}
!1509 = metadata !{i32 355, i32 0, metadata !49, null}
!1510 = metadata !{i32 358, i32 0, metadata !49, null}
!1511 = metadata !{i32 359, i32 0, metadata !49, null}
!1512 = metadata !{i32 360, i32 0, metadata !49, null}
!1513 = metadata !{i32 361, i32 0, metadata !49, null}
!1514 = metadata !{i32 365, i32 0, metadata !50, null}
!1515 = metadata !{i32 367, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !1, metadata !50, i32 366, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1517 = metadata !{i32 369, i32 0, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !1, metadata !1516, i32 368, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1519 = metadata !{i32 371, i32 0, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !1, metadata !1518, i32 370, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1521 = metadata !{i32 374, i32 0, metadata !1520, null}
!1522 = metadata !{i32 377, i32 0, metadata !1520, null}
!1523 = metadata !{i32 378, i32 0, metadata !1520, null}
!1524 = metadata !{i32 380, i32 0, metadata !1525, null}
!1525 = metadata !{i32 786443, metadata !1, metadata !1518, i32 379, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1526 = metadata !{i32 381, i32 0, metadata !1525, null}
!1527 = metadata !{i32 382, i32 0, metadata !1525, null}
!1528 = metadata !{i32 385, i32 0, metadata !1525, null}
!1529 = metadata !{i32 387, i32 0, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !1, metadata !1525, i32 386, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1531 = metadata !{i32 388, i32 0, metadata !1530, null}
!1532 = metadata !{i32 390, i32 0, metadata !1530, null}
!1533 = metadata !{i32 394, i32 0, metadata !1525, null}
!1534 = metadata !{i32 395, i32 0, metadata !1525, null}
!1535 = metadata !{i32 400, i32 0, metadata !1525, null}
!1536 = metadata !{i32 402, i32 0, metadata !1518, null}
!1537 = metadata !{i32 408, i32 0, metadata !50, null}
!1538 = metadata !{i32 403, i32 0, metadata !1518, null}
!1539 = metadata !{i32 409, i32 0, metadata !50, null}
!1540 = metadata !{i32 413, i32 0, metadata !50, null}
!1541 = metadata !{i32 415, i32 0, metadata !50, null}
!1542 = metadata !{i32 416, i32 0, metadata !50, null}
!1543 = metadata !{i32 418, i32 0, metadata !50, null}
!1544 = metadata !{i32 419, i32 0, metadata !50, null}
!1545 = metadata !{i32 421, i32 0, metadata !50, null}
!1546 = metadata !{i32 423, i32 0, metadata !50, null}
!1547 = metadata !{i32 426, i32 0, metadata !32, null}
!1548 = metadata !{i32 428, i32 0, metadata !32, null}
!1549 = metadata !{i32 430, i32 0, metadata !32, null}
!1550 = metadata !{i32 431, i32 0, metadata !32, null}
!1551 = metadata !{i32 432, i32 0, metadata !32, null}
!1552 = metadata !{i32 433, i32 0, metadata !32, null}
!1553 = metadata !{i32 434, i32 0, metadata !32, null}
!1554 = metadata !{i32 436, i32 0, metadata !32, null}
!1555 = metadata !{i32 438, i32 0, metadata !32, null}
!1556 = metadata !{i32 439, i32 0, metadata !32, null}
!1557 = metadata !{i32 441, i32 0, metadata !32, null}
!1558 = metadata !{i32 442, i32 0, metadata !32, null}
!1559 = metadata !{i32 445, i32 0, metadata !32, null}
!1560 = metadata !{i32 448, i32 0, metadata !32, null}
!1561 = metadata !{i32 452, i32 0, metadata !32, null}
!1562 = metadata !{i32 454, i32 0, metadata !32, null}
!1563 = metadata !{i32 456, i32 0, metadata !32, null}
!1564 = metadata !{i32 458, i32 0, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !1, metadata !32, i32 457, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1566 = metadata !{i32 459, i32 0, metadata !1565, null}
!1567 = metadata !{i32 460, i32 0, metadata !1565, null}
!1568 = metadata !{i32 462, i32 0, metadata !32, null}
!1569 = metadata !{i32 463, i32 0, metadata !32, null}
!1570 = metadata !{i32 464, i32 0, metadata !32, null}
!1571 = metadata !{i32 465, i32 0, metadata !32, null}
!1572 = metadata !{i32 467, i32 0, metadata !32, null}
!1573 = metadata !{i32 468, i32 0, metadata !32, null}
!1574 = metadata !{i32 469, i32 0, metadata !32, null}
!1575 = metadata !{i32 471, i32 0, metadata !32, null}
!1576 = metadata !{i32 474, i32 0, metadata !32, null}
!1577 = metadata !{i32 475, i32 0, metadata !32, null}
!1578 = metadata !{i32 476, i32 0, metadata !32, null}
!1579 = metadata !{i32 477, i32 0, metadata !32, null}
!1580 = metadata !{i32 478, i32 0, metadata !32, null}
!1581 = metadata !{i32 948, i32 0, metadata !266, null}
!1582 = metadata !{i32 950, i32 0, metadata !266, null}
!1583 = metadata !{i32 952, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !1, metadata !266, i32 951, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1585 = metadata !{i32 953, i32 0, metadata !1584, null}
!1586 = metadata !{i32 954, i32 0, metadata !1584, null}
!1587 = metadata !{i32 955, i32 0, metadata !266, null}
!1588 = metadata !{i32 489, i32 0, metadata !52, null}
!1589 = metadata !{i32 490, i32 0, metadata !52, null}
!1590 = metadata !{i32 492, i32 0, metadata !52, null}
!1591 = metadata !{i32 494, i32 0, metadata !52, null}
!1592 = metadata !{i32 495, i32 0, metadata !52, null}
!1593 = metadata !{i32 496, i32 0, metadata !52, null}
!1594 = metadata !{i32 498, i32 0, metadata !52, null}
!1595 = metadata !{i32 499, i32 0, metadata !52, null}
!1596 = metadata !{i32 501, i32 0, metadata !52, null}
!1597 = metadata !{i32 503, i32 0, metadata !52, null}
!1598 = metadata !{i32 504, i32 0, metadata !52, null}
!1599 = metadata !{i32 506, i32 0, metadata !52, null}
!1600 = metadata !{i32 507, i32 0, metadata !52, null}
!1601 = metadata !{i32 510, i32 0, metadata !52, null}
!1602 = metadata !{i32 513, i32 0, metadata !52, null}
!1603 = metadata !{i32 516, i32 0, metadata !52, null}
!1604 = metadata !{i32 517, i32 0, metadata !52, null}
!1605 = metadata !{i32 520, i32 0, metadata !52, null}
!1606 = metadata !{i32 522, i32 0, metadata !52, null}
!1607 = metadata !{i32 523, i32 0, metadata !52, null}
!1608 = metadata !{i32 524, i32 0, metadata !52, null}
!1609 = metadata !{i32 525, i32 0, metadata !52, null}
!1610 = metadata !{i32 526, i32 0, metadata !52, null}
!1611 = metadata !{i32 528, i32 0, metadata !52, null}
!1612 = metadata !{i32 529, i32 0, metadata !52, null}
!1613 = metadata !{i32 530, i32 0, metadata !52, null}
!1614 = metadata !{i32 532, i32 0, metadata !52, null}
!1615 = metadata !{i32 535, i32 0, metadata !52, null}
!1616 = metadata !{i32 536, i32 0, metadata !52, null}
!1617 = metadata !{i32 537, i32 0, metadata !52, null}
!1618 = metadata !{i32 538, i32 0, metadata !52, null}
!1619 = metadata !{i32 539, i32 0, metadata !52, null}
!1620 = metadata !{i32 553, i32 0, metadata !55, null}
!1621 = metadata !{i32 555, i32 0, metadata !55, null}
!1622 = metadata !{i32 556, i32 0, metadata !55, null}
!1623 = metadata !{i32 558, i32 0, metadata !55, null}
!1624 = metadata !{i32 560, i32 0, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !1, metadata !55, i32 559, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1626 = metadata !{i32 561, i32 0, metadata !1625, null}
!1627 = metadata !{i32 562, i32 0, metadata !1625, null}
!1628 = metadata !{i32 565, i32 0, metadata !1629, null}
!1629 = metadata !{i32 786443, metadata !1, metadata !55, i32 564, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1630 = metadata !{i32 566, i32 0, metadata !1629, null}
!1631 = metadata !{i32 569, i32 0, metadata !55, null}
!1632 = metadata !{i32 570, i32 0, metadata !55, null}
!1633 = metadata !{i32 572, i32 0, metadata !55, null}
!1634 = metadata !{i32 574, i32 0, metadata !55, null}
!1635 = metadata !{i32 576, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1, metadata !55, i32 575, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1637 = metadata !{i32 577, i32 0, metadata !1636, null}
!1638 = metadata !{i32 578, i32 0, metadata !1636, null}
!1639 = metadata !{i32 581, i32 0, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !1, metadata !55, i32 580, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1641 = metadata !{i32 582, i32 0, metadata !1640, null}
!1642 = metadata !{i32 584, i32 0, metadata !55, null}
!1643 = metadata !{i32 603, i32 0, metadata !1644, null}
!1644 = metadata !{i32 786443, metadata !1, metadata !56, i32 603, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1645 = metadata !{i32 605, i32 0, metadata !1646, null}
!1646 = metadata !{i32 786443, metadata !1, metadata !1647, i32 605, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1647 = metadata !{i32 786443, metadata !1, metadata !1644, i32 604, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1648 = metadata !{i32 606, i32 0, metadata !1646, null}
!1649 = metadata !{i32 604, i32 0, metadata !1647, null}
!1650 = metadata !{i32 609, i32 0, metadata !56, null}
!1651 = metadata !{i32 630, i32 0, metadata !62, null}
!1652 = metadata !{i32 633, i32 0, metadata !62, null}
!1653 = metadata !{i32 635, i32 0, metadata !62, null}
!1654 = metadata !{i32 636, i32 0, metadata !62, null}
!1655 = metadata !{i32 638, i32 0, metadata !62, null}
!1656 = metadata !{i32 640, i32 0, metadata !62, null}
!1657 = metadata !{i32 641, i32 0, metadata !62, null}
!1658 = metadata !{i32 643, i32 0, metadata !62, null}
!1659 = metadata !{i32 644, i32 0, metadata !62, null}
!1660 = metadata !{i32 646, i32 0, metadata !62, null}
!1661 = metadata !{i32 648, i32 0, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !1, metadata !62, i32 647, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1663 = metadata !{i32 649, i32 0, metadata !1662, null}
!1664 = metadata !{i32 650, i32 0, metadata !1662, null}
!1665 = metadata !{i32 651, i32 0, metadata !1662, null}
!1666 = metadata !{i32 652, i32 0, metadata !1662, null}
!1667 = metadata !{i32 653, i32 0, metadata !1662, null}
!1668 = metadata !{i32 655, i32 0, metadata !1662, null}
!1669 = metadata !{i32 656, i32 0, metadata !1662, null}
!1670 = metadata !{i32 657, i32 0, metadata !1662, null}
!1671 = metadata !{i32 659, i32 0, metadata !1662, null}
!1672 = metadata !{i32 660, i32 0, metadata !1662, null}
!1673 = metadata !{i32 661, i32 0, metadata !1662, null}
!1674 = metadata !{i32 664, i32 0, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !1, metadata !62, i32 663, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1676 = metadata !{i32 665, i32 0, metadata !1675, null}
!1677 = metadata !{i32 666, i32 0, metadata !1675, null}
!1678 = metadata !{i32 667, i32 0, metadata !1675, null}
!1679 = metadata !{i32 668, i32 0, metadata !1675, null}
!1680 = metadata !{i32 671, i32 0, metadata !1675, null}
!1681 = metadata !{i32 672, i32 0, metadata !1675, null}
!1682 = metadata !{i32 678, i32 0, metadata !62, null}
!1683 = metadata !{i32 679, i32 0, metadata !62, null}
!1684 = metadata !{i32 682, i32 0, metadata !62, null}
!1685 = metadata !{i32 684, i32 0, metadata !62, null}
!1686 = metadata !{i32 687, i32 0, metadata !62, null}
!1687 = metadata !{metadata !"double", metadata !1425}
!1688 = metadata !{metadata !"float", metadata !1425}
!1689 = metadata !{i32 690, i32 0, metadata !62, null}
!1690 = metadata !{i32 691, i32 0, metadata !62, null}
!1691 = metadata !{i32 694, i32 0, metadata !62, null}
!1692 = metadata !{i32 696, i32 0, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !1, metadata !62, i32 695, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1694 = metadata !{i32 697, i32 0, metadata !1693, null}
!1695 = metadata !{i32 698, i32 0, metadata !1693, null}
!1696 = metadata !{i32 701, i32 0, metadata !62, null}
!1697 = metadata !{i32 702, i32 0, metadata !62, null}
!1698 = metadata !{i32 705, i32 0, metadata !62, null}
!1699 = metadata !{i32 707, i32 0, metadata !1700, null}
!1700 = metadata !{i32 786443, metadata !1, metadata !62, i32 706, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1701 = metadata !{i32 708, i32 0, metadata !1700, null}
!1702 = metadata !{i32 710, i32 0, metadata !1700, null}
!1703 = metadata !{i32 711, i32 0, metadata !1700, null}
!1704 = metadata !{i32 713, i32 0, metadata !1700, null}
!1705 = metadata !{i32 714, i32 0, metadata !1700, null}
!1706 = metadata !{i32 716, i32 0, metadata !1700, null}
!1707 = metadata !{i32 717, i32 0, metadata !1700, null}
!1708 = metadata !{i32 719, i32 0, metadata !1700, null}
!1709 = metadata !{i32 721, i32 0, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !1, metadata !1700, i32 720, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1711 = metadata !{i32 722, i32 0, metadata !1710, null}
!1712 = metadata !{i32 723, i32 0, metadata !1710, null}
!1713 = metadata !{i32 724, i32 0, metadata !1710, null}
!1714 = metadata !{i32 725, i32 0, metadata !1710, null}
!1715 = metadata !{i32 726, i32 0, metadata !1710, null}
!1716 = metadata !{i32 727, i32 0, metadata !1710, null}
!1717 = metadata !{i32 728, i32 0, metadata !1710, null}
!1718 = metadata !{i32 729, i32 0, metadata !1710, null}
!1719 = metadata !{i32 732, i32 0, metadata !1700, null}
!1720 = metadata !{i32 733, i32 0, metadata !1700, null}
!1721 = metadata !{i32 735, i32 0, metadata !1700, null}
!1722 = metadata !{i32 736, i32 0, metadata !1700, null}
!1723 = metadata !{i32 738, i32 0, metadata !1700, null}
!1724 = metadata !{i32 739, i32 0, metadata !1700, null}
!1725 = metadata !{i32 741, i32 0, metadata !1700, null}
!1726 = metadata !{i32 742, i32 0, metadata !1700, null}
!1727 = metadata !{i32 743, i32 0, metadata !1700, null}
!1728 = metadata !{i32 745, i32 0, metadata !62, null}
!1729 = metadata !{i32 746, i32 0, metadata !62, null}
!1730 = metadata !{i32 750, i32 0, metadata !62, null}
!1731 = metadata !{i32 751, i32 0, metadata !62, null}
!1732 = metadata !{i32 752, i32 0, metadata !62, null}
!1733 = metadata !{i32 753, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !1, metadata !62, i32 753, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1735 = metadata !{i32 755, i32 0, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !1, metadata !1734, i32 754, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1737 = metadata !{i32 758, i32 0, metadata !62, null}
!1738 = metadata !{i32 759, i32 0, metadata !62, null}
!1739 = metadata !{i32 760, i32 0, metadata !62, null}
!1740 = metadata !{i32 762, i32 0, metadata !1741, null}
!1741 = metadata !{i32 786443, metadata !1, metadata !62, i32 761, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1742 = metadata !{i32 763, i32 0, metadata !1741, null}
!1743 = metadata !{i32 765, i32 0, metadata !1741, null}
!1744 = metadata !{i32 766, i32 0, metadata !1741, null}
!1745 = metadata !{i32 767, i32 0, metadata !1741, null}
!1746 = metadata !{i32 770, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !1, metadata !62, i32 769, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1748 = metadata !{i32 771, i32 0, metadata !1747, null}
!1749 = metadata !{i32 773, i32 0, metadata !1747, null}
!1750 = metadata !{i32 774, i32 0, metadata !1747, null}
!1751 = metadata !{i32 776, i32 0, metadata !62, null}
!1752 = metadata !{i32 778, i32 0, metadata !62, null}
!1753 = metadata !{i32 779, i32 0, metadata !62, null}
!1754 = metadata !{i32 780, i32 0, metadata !62, null}
!1755 = metadata !{i32 782, i32 0, metadata !62, null}
!1756 = metadata !{i32 784, i32 0, metadata !62, null}
!1757 = metadata !{i32 785, i32 0, metadata !62, null}
!1758 = metadata !{i32 787, i32 0, metadata !62, null}
!1759 = metadata !{i32 789, i32 0, metadata !1760, null}
!1760 = metadata !{i32 786443, metadata !1, metadata !62, i32 788, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1761 = metadata !{i32 790, i32 0, metadata !1760, null}
!1762 = metadata !{i32 793, i32 0, metadata !62, null}
!1763 = metadata !{i32 794, i32 0, metadata !62, null}
!1764 = metadata !{i32 796, i32 0, metadata !62, null}
!1765 = metadata !{i32 798, i32 0, metadata !62, null}
!1766 = metadata !{i32 800, i32 0, metadata !1767, null}
!1767 = metadata !{i32 786443, metadata !1, metadata !62, i32 799, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1768 = metadata !{i32 801, i32 0, metadata !1767, null}
!1769 = metadata !{i32 802, i32 0, metadata !1767, null}
!1770 = metadata !{i32 803, i32 0, metadata !1767, null}
!1771 = metadata !{i32 805, i32 0, metadata !62, null}
!1772 = metadata !{i32 807, i32 0, metadata !62, null}
!1773 = metadata !{i32 809, i32 0, metadata !1774, null}
!1774 = metadata !{i32 786443, metadata !1, metadata !62, i32 809, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1775 = metadata !{i32 810, i32 0, metadata !1776, null}
!1776 = metadata !{i32 786443, metadata !1, metadata !1774, i32 810, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1777 = metadata !{i32 818, i32 0, metadata !62, null}
!1778 = metadata !{i32 813, i32 0, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !1, metadata !1776, i32 811, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1780 = metadata !{i32 812, i32 0, metadata !1779, null}
!1781 = metadata !{i32 816, i32 0, metadata !62, null}
!1782 = metadata !{i32 820, i32 0, metadata !62, null}
!1783 = metadata !{i32 825, i32 0, metadata !62, null}
!1784 = metadata !{i32 827, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !1, metadata !62, i32 826, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1786 = metadata !{i32 828, i32 0, metadata !1785, null}
!1787 = metadata !{i32 829, i32 0, metadata !1785, null}
!1788 = metadata !{i32 832, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1, metadata !62, i32 831, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1790 = metadata !{i32 833, i32 0, metadata !1789, null}
!1791 = metadata !{i32 834, i32 0, metadata !1789, null}
!1792 = metadata !{i32 836, i32 0, metadata !62, null}
!1793 = metadata !{i32 2104, i32 0, metadata !396, null}
!1794 = metadata !{i32 2108, i32 0, metadata !396, null}
!1795 = metadata !{i32 2109, i32 0, metadata !396, null}
!1796 = metadata !{i32 2112, i32 0, metadata !1797, null}
!1797 = metadata !{i32 786443, metadata !1, metadata !1798, i32 2111, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1798 = metadata !{i32 786443, metadata !1, metadata !396, i32 2110, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1799 = metadata !{i32 2113, i32 0, metadata !1797, null}
!1800 = metadata !{i32 2116, i32 0, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !1, metadata !1802, i32 2115, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1802 = metadata !{i32 786443, metadata !1, metadata !1797, i32 2114, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1803 = metadata !{i32 2117, i32 0, metadata !1801, null}
!1804 = metadata !{i32 2120, i32 0, metadata !1805, null}
!1805 = metadata !{i32 786443, metadata !1, metadata !1806, i32 2119, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1806 = metadata !{i32 786443, metadata !1, metadata !1801, i32 2118, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1807 = metadata !{i32 2118, i32 0, metadata !1806, null}
!1808 = metadata !{i32 2121, i32 0, metadata !1805, null}
!1809 = metadata !{i32 2122, i32 0, metadata !1810, null}
!1810 = metadata !{i32 786443, metadata !1, metadata !1805, i32 2122, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1811 = metadata !{i32 2124, i32 0, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !1, metadata !1810, i32 2123, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1813 = metadata !{i32 2125, i32 0, metadata !1812, null}
!1814 = metadata !{i32 2127, i32 0, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !1, metadata !1812, i32 2126, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1816 = metadata !{i32 2128, i32 0, metadata !1815, null}
!1817 = metadata !{i32 2126, i32 0, metadata !1815, null}
!1818 = metadata !{i32 2114, i32 0, metadata !1802, null}
!1819 = metadata !{i32 2110, i32 0, metadata !1798, null}
!1820 = metadata !{i32 2133, i32 0, metadata !396, null}
!1821 = metadata !{i32 2182, i32 0, metadata !424, null}
!1822 = metadata !{i32 2185, i32 0, metadata !424, null}
!1823 = metadata !{i32 2187, i32 0, metadata !424, null}
!1824 = metadata !{i32 2188, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1, metadata !424, i32 2188, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1826 = metadata !{i32 2190, i32 0, metadata !1827, null}
!1827 = metadata !{i32 786443, metadata !1, metadata !1825, i32 2189, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1828 = metadata !{i32 2193, i32 0, metadata !1829, null}
!1829 = metadata !{i32 786443, metadata !1, metadata !1830, i32 2192, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1830 = metadata !{i32 786443, metadata !1, metadata !1827, i32 2191, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1831 = metadata !{i32 2196, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !1, metadata !1833, i32 2195, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1833 = metadata !{i32 786443, metadata !1, metadata !1829, i32 2194, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1834 = metadata !{i32 2194, i32 0, metadata !1833, null}
!1835 = metadata !{i32 2191, i32 0, metadata !1830, null}
!1836 = metadata !{i32 2200, i32 0, metadata !424, null}
!1837 = metadata !{i32 2209, i32 0, metadata !437, null}
!1838 = metadata !{i32 2213, i32 0, metadata !437, null}
!1839 = metadata !{i32 2216, i32 0, metadata !1840, null}
!1840 = metadata !{i32 786443, metadata !1, metadata !1841, i32 2215, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1841 = metadata !{i32 786443, metadata !1, metadata !437, i32 2214, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1842 = metadata !{i32 2219, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !1, metadata !1844, i32 2218, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1844 = metadata !{i32 786443, metadata !1, metadata !1840, i32 2217, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1845 = metadata !{i32 2217, i32 0, metadata !1844, null}
!1846 = metadata !{i32 2214, i32 0, metadata !1841, null}
!1847 = metadata !{i32 2222, i32 0, metadata !437, null}
!1848 = metadata !{i32 848, i32 0, metadata !67, null}
!1849 = metadata !{i32 849, i32 0, metadata !67, null}
!1850 = metadata !{i32 850, i32 0, metadata !67, null}
!1851 = metadata !{i32 853, i32 0, metadata !67, null}
!1852 = metadata !{i32 855, i32 0, metadata !1853, null}
!1853 = metadata !{i32 786443, metadata !1, metadata !67, i32 854, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1854 = metadata !{i32 856, i32 0, metadata !1853, null}
!1855 = metadata !{i32 857, i32 0, metadata !1853, null}
!1856 = metadata !{i32 860, i32 0, metadata !67, null}
!1857 = metadata !{i32 861, i32 0, metadata !67, null}
!1858 = metadata !{i32 863, i32 0, metadata !67, null}
!1859 = metadata !{i32 865, i32 0, metadata !1860, null}
!1860 = metadata !{i32 786443, metadata !1, metadata !67, i32 864, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1861 = metadata !{i32 866, i32 0, metadata !1860, null}
!1862 = metadata !{i32 868, i32 0, metadata !1860, null}
!1863 = metadata !{i32 869, i32 0, metadata !1860, null}
!1864 = metadata !{i32 871, i32 0, metadata !1860, null}
!1865 = metadata !{i32 872, i32 0, metadata !1860, null}
!1866 = metadata !{i32 874, i32 0, metadata !1860, null}
!1867 = metadata !{i32 875, i32 0, metadata !1860, null}
!1868 = metadata !{i32 878, i32 0, metadata !1860, null}
!1869 = metadata !{i32 880, i32 0, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !1, metadata !1860, i32 879, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1871 = metadata !{i32 881, i32 0, metadata !1870, null}
!1872 = metadata !{i32 882, i32 0, metadata !1870, null}
!1873 = metadata !{i32 883, i32 0, metadata !1870, null}
!1874 = metadata !{i32 884, i32 0, metadata !1870, null}
!1875 = metadata !{i32 885, i32 0, metadata !1870, null}
!1876 = metadata !{i32 886, i32 0, metadata !1870, null}
!1877 = metadata !{i32 887, i32 0, metadata !1870, null}
!1878 = metadata !{i32 888, i32 0, metadata !1870, null}
!1879 = metadata !{i32 891, i32 0, metadata !1860, null}
!1880 = metadata !{i32 892, i32 0, metadata !1860, null}
!1881 = metadata !{i32 894, i32 0, metadata !1860, null}
!1882 = metadata !{i32 895, i32 0, metadata !1860, null}
!1883 = metadata !{i32 897, i32 0, metadata !1860, null}
!1884 = metadata !{i32 898, i32 0, metadata !1860, null}
!1885 = metadata !{i32 900, i32 0, metadata !1860, null}
!1886 = metadata !{i32 901, i32 0, metadata !1860, null}
!1887 = metadata !{i32 902, i32 0, metadata !1860, null}
!1888 = metadata !{i32 904, i32 0, metadata !67, null}
!1889 = metadata !{i32 905, i32 0, metadata !67, null}
!1890 = metadata !{i32 907, i32 0, metadata !67, null}
!1891 = metadata !{i32 909, i32 0, metadata !67, null}
!1892 = metadata !{i32 911, i32 0, metadata !1893, null}
!1893 = metadata !{i32 786443, metadata !1, metadata !67, i32 910, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1894 = metadata !{i32 912, i32 0, metadata !1893, null}
!1895 = metadata !{i32 913, i32 0, metadata !1893, null}
!1896 = metadata !{i32 914, i32 0, metadata !1893, null}
!1897 = metadata !{i32 916, i32 0, metadata !67, null}
!1898 = metadata !{i32 2145, i32 0, metadata !414, null}
!1899 = metadata !{i32 2149, i32 0, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !1, metadata !414, i32 2149, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1901 = metadata !{i32 2163, i32 0, metadata !1902, null}
!1902 = metadata !{i32 786443, metadata !1, metadata !1903, i32 2154, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1903 = metadata !{i32 786443, metadata !1, metadata !1904, i32 2153, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1904 = metadata !{i32 786443, metadata !1, metadata !1905, i32 2152, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1905 = metadata !{i32 786443, metadata !1, metadata !1906, i32 2151, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1906 = metadata !{i32 786443, metadata !1, metadata !1900, i32 2150, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1907 = metadata !{i32 2151, i32 0, metadata !1905, null}
!1908 = metadata !{i32 2153, i32 0, metadata !1903, null}
!1909 = metadata !{i32 2155, i32 0, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !1, metadata !1902, i32 2155, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1911 = metadata !{i32 2157, i32 0, metadata !1912, null}
!1912 = metadata !{i32 786443, metadata !1, metadata !1913, i32 2157, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1913 = metadata !{i32 786443, metadata !1, metadata !1910, i32 2156, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1914 = metadata !{i32 2159, i32 0, metadata !1915, null}
!1915 = metadata !{i32 786443, metadata !1, metadata !1912, i32 2158, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1916 = metadata !{i32 2161, i32 0, metadata !1913, null}
!1917 = metadata !{i32 2165, i32 0, metadata !1904, null}
!1918 = metadata !{i32 2167, i32 0, metadata !1906, null}
!1919 = metadata !{i32 2169, i32 0, metadata !414, null}
!1920 = metadata !{i32 2170, i32 0, metadata !414, null}
!1921 = metadata !{i32 2232, i32 0, metadata !444, null}
!1922 = metadata !{i32 2236, i32 0, metadata !1923, null}
!1923 = metadata !{i32 786443, metadata !1, metadata !444, i32 2236, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1924 = metadata !{i32 2242, i32 0, metadata !1925, null}
!1925 = metadata !{i32 786443, metadata !1, metadata !1926, i32 2241, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1926 = metadata !{i32 786443, metadata !1, metadata !1927, i32 2240, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1927 = metadata !{i32 786443, metadata !1, metadata !1928, i32 2239, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1928 = metadata !{i32 786443, metadata !1, metadata !1929, i32 2238, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1929 = metadata !{i32 786443, metadata !1, metadata !1923, i32 2237, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1930 = metadata !{i32 2238, i32 0, metadata !1928, null}
!1931 = metadata !{i32 2240, i32 0, metadata !1926, null}
!1932 = metadata !{i32 2244, i32 0, metadata !1927, null}
!1933 = metadata !{i32 2246, i32 0, metadata !1929, null}
!1934 = metadata !{i32 2248, i32 0, metadata !444, null}
!1935 = metadata !{i32 2249, i32 0, metadata !444, null}
!1936 = metadata !{i32 2257, i32 0, metadata !452, null}
!1937 = metadata !{i32 2261, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !1, metadata !452, i32 2261, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1939 = metadata !{i32 2265, i32 0, metadata !1940, null}
!1940 = metadata !{i32 786443, metadata !1, metadata !1941, i32 2264, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1941 = metadata !{i32 786443, metadata !1, metadata !1942, i32 2263, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1942 = metadata !{i32 786443, metadata !1, metadata !1938, i32 2262, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1943 = metadata !{i32 2263, i32 0, metadata !1941, null}
!1944 = metadata !{i32 2267, i32 0, metadata !1942, null}
!1945 = metadata !{i32 2269, i32 0, metadata !452, null}
!1946 = metadata !{i32 2270, i32 0, metadata !452, null}
!1947 = metadata !{i32 933, i32 0, metadata !68, null}
!1948 = metadata !{i32 935, i32 0, metadata !68, null}
!1949 = metadata !{%struct._IO_FILE* null}
!1950 = metadata !{i32 966, i32 0, metadata !271, null}
!1951 = metadata !{i32 972, i32 0, metadata !271, null}
!1952 = metadata !{i32 976, i32 0, metadata !271, null}
!1953 = metadata !{i32 978, i32 0, metadata !271, null}
!1954 = metadata !{i32 985, i32 0, metadata !271, null}
!1955 = metadata !{i32 987, i32 0, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !1, metadata !271, i32 986, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1957 = metadata !{i32 989, i32 0, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !1, metadata !1956, i32 988, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1959 = metadata !{i32 990, i32 0, metadata !1958, null}
!1960 = metadata !{i32 991, i32 0, metadata !1958, null}
!1961 = metadata !{i32 994, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !1, metadata !1956, i32 993, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1963 = metadata !{i32 995, i32 0, metadata !1962, null}
!1964 = metadata !{i32 996, i32 0, metadata !1962, null}
!1965 = metadata !{i32 1001, i32 0, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !1, metadata !271, i32 1000, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1967 = metadata !{i32 1002, i32 0, metadata !1966, null}
!1968 = metadata !{i32 1004, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !1, metadata !1966, i32 1003, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1970 = metadata !{i32 1005, i32 0, metadata !1969, null}
!1971 = metadata !{i32 1006, i32 0, metadata !1969, null}
!1972 = metadata !{i32 1009, i32 0, metadata !271, null}
!1973 = metadata !{i32 1011, i32 0, metadata !1974, null}
!1974 = metadata !{i32 786443, metadata !1, metadata !271, i32 1010, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1975 = metadata !{i32 1012, i32 0, metadata !1974, null}
!1976 = metadata !{i32 1013, i32 0, metadata !1974, null}
!1977 = metadata !{i32 1017, i32 0, metadata !271, null}
!1978 = metadata !{i32 1026, i32 0, metadata !271, null}
!1979 = metadata !{metadata !"long", metadata !1425}
!1980 = metadata !{i32 1027, i32 0, metadata !271, null}
!1981 = metadata !{i32 1028, i32 0, metadata !271, null}
!1982 = metadata !{i32 1029, i32 0, metadata !271, null}
!1983 = metadata !{i32 1030, i32 0, metadata !271, null}
!1984 = metadata !{i32 1032, i32 0, metadata !271, null}
!1985 = metadata !{i32 1033, i32 0, metadata !271, null}
!1986 = metadata !{i32 1036, i32 0, metadata !1987, null}
!1987 = metadata !{i32 786443, metadata !1, metadata !271, i32 1036, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1988 = metadata !{i32 1037, i32 0, metadata !1987, null}
!1989 = metadata !{i32 1038, i32 0, metadata !271, null}
!1990 = metadata !{i32 1040, i32 0, metadata !271, null}
!1991 = metadata !{i32 1042, i32 0, metadata !271, null}
!1992 = metadata !{i32 1044, i32 0, metadata !271, null}
!1993 = metadata !{i32 1047, i32 0, metadata !271, null}
!1994 = metadata !{i32 1049, i32 0, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !1, metadata !271, i32 1048, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1996 = metadata !{i32 1050, i32 0, metadata !1995, null}
!1997 = metadata !{i32 1053, i32 0, metadata !1998, null}
!1998 = metadata !{i32 786443, metadata !1, metadata !271, i32 1052, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!1999 = metadata !{i32 1054, i32 0, metadata !1998, null}
!2000 = metadata !{i32 1059, i32 0, metadata !271, null}
!2001 = metadata !{i32 1062, i32 0, metadata !271, null}
!2002 = metadata !{i32 1066, i32 0, metadata !271, null}
!2003 = metadata !{i32 1067, i32 0, metadata !271, null}
!2004 = metadata !{i32 1068, i32 0, metadata !271, null}
!2005 = metadata !{i32 1071, i32 0, metadata !271, null}
!2006 = metadata !{i32 1072, i32 0, metadata !271, null}
!2007 = metadata !{i32 1073, i32 0, metadata !271, null}
!2008 = metadata !{i32 1074, i32 0, metadata !271, null}
!2009 = metadata !{i32 1077, i32 0, metadata !271, null}
!2010 = metadata !{i32 1078, i32 0, metadata !271, null}
!2011 = metadata !{i32 1079, i32 0, metadata !271, null}
!2012 = metadata !{i32 1080, i32 0, metadata !271, null}
!2013 = metadata !{i32 1082, i32 0, metadata !271, null}
!2014 = metadata !{i32 1083, i32 0, metadata !271, null}
!2015 = metadata !{i32 1084, i32 0, metadata !271, null}
!2016 = metadata !{i32 1085, i32 0, metadata !271, null}
!2017 = metadata !{i32 1086, i32 0, metadata !271, null}
!2018 = metadata !{i32 1087, i32 0, metadata !271, null}
!2019 = metadata !{i32 1088, i32 0, metadata !271, null}
!2020 = metadata !{i32 1089, i32 0, metadata !271, null}
!2021 = metadata !{i32 1090, i32 0, metadata !271, null}
!2022 = metadata !{i32 1092, i32 0, metadata !271, null}
!2023 = metadata !{i32 1094, i32 0, metadata !271, null}
!2024 = metadata !{i32 1095, i32 0, metadata !271, null}
!2025 = metadata !{i32 1096, i32 0, metadata !271, null}
!2026 = metadata !{i32 1097, i32 0, metadata !271, null}
!2027 = metadata !{i32 1098, i32 0, metadata !271, null}
!2028 = metadata !{i32 1099, i32 0, metadata !271, null}
!2029 = metadata !{i32 1102, i32 0, metadata !271, null}
!2030 = metadata !{i32 1103, i32 0, metadata !271, null}
!2031 = metadata !{i32 1104, i32 0, metadata !271, null}
!2032 = metadata !{i32 1105, i32 0, metadata !271, null}
!2033 = metadata !{i32 1111, i32 0, metadata !271, null}
!2034 = metadata !{i32 1112, i32 0, metadata !271, null}
!2035 = metadata !{i32 1113, i32 0, metadata !271, null}
!2036 = metadata !{i32 1114, i32 0, metadata !271, null}
!2037 = metadata !{i32 1115, i32 0, metadata !271, null}
!2038 = metadata !{i32 1116, i32 0, metadata !271, null}
!2039 = metadata !{i32 1117, i32 0, metadata !271, null}
!2040 = metadata !{i32 1118, i32 0, metadata !271, null}
!2041 = metadata !{i32 1119, i32 0, metadata !271, null}
!2042 = metadata !{i32 1120, i32 0, metadata !271, null}
!2043 = metadata !{i32 1121, i32 0, metadata !271, null}
!2044 = metadata !{i32 1123, i32 0, metadata !271, null}
!2045 = metadata !{i32 1124, i32 0, metadata !271, null}
!2046 = metadata !{i32 1125, i32 0, metadata !271, null}
!2047 = metadata !{i32 1126, i32 0, metadata !271, null}
!2048 = metadata !{i32 1127, i32 0, metadata !271, null}
!2049 = metadata !{i32 1128, i32 0, metadata !271, null}
!2050 = metadata !{i32 1129, i32 0, metadata !271, null}
!2051 = metadata !{i32 1130, i32 0, metadata !271, null}
!2052 = metadata !{i32 1131, i32 0, metadata !271, null}
!2053 = metadata !{i32 1132, i32 0, metadata !271, null}
!2054 = metadata !{i32 1134, i32 0, metadata !271, null}
!2055 = metadata !{i32 1137, i32 0, metadata !271, null}
!2056 = metadata !{i32 1138, i32 0, metadata !271, null}
!2057 = metadata !{i32 1139, i32 0, metadata !271, null}
!2058 = metadata !{i32 1140, i32 0, metadata !2059, null}
!2059 = metadata !{i32 786443, metadata !1, metadata !271, i32 1140, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2060 = metadata !{i32 1142, i32 0, metadata !2061, null}
!2061 = metadata !{i32 786443, metadata !1, metadata !2059, i32 1141, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2062 = metadata !{i32 1143, i32 0, metadata !2061, null}
!2063 = metadata !{i32 1144, i32 0, metadata !2061, null}
!2064 = metadata !{i32 1145, i32 0, metadata !2061, null}
!2065 = metadata !{i32 1146, i32 0, metadata !2061, null}
!2066 = metadata !{i32 1147, i32 0, metadata !2061, null}
!2067 = metadata !{i32 1150, i32 0, metadata !271, null}
!2068 = metadata !{i32 1151, i32 0, metadata !271, null}
!2069 = metadata !{i32 1153, i32 0, metadata !2070, null}
!2070 = metadata !{i32 786443, metadata !1, metadata !271, i32 1153, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2071 = metadata !{i32 1154, i32 0, metadata !2070, null}
!2072 = metadata !{i32 1156, i32 0, metadata !271, null}
!2073 = metadata !{i32 1157, i32 0, metadata !271, null}
!2074 = metadata !{i32 1158, i32 0, metadata !271, null}
!2075 = metadata !{i32 1177, i32 0, metadata !355, null}
!2076 = metadata !{i32 1179, i32 0, metadata !355, null}
!2077 = metadata !{[2 x float]* undef}
!2078 = metadata !{i32 1182, i32 0, metadata !355, null}
!2079 = metadata !{i32 1185, i32 0, metadata !355, null}
!2080 = metadata !{i32 1187, i32 0, metadata !355, null}
!2081 = metadata !{i32 1191, i32 0, metadata !355, null}
!2082 = metadata !{i32 1192, i32 0, metadata !355, null}
!2083 = metadata !{i32 1193, i32 0, metadata !355, null}
!2084 = metadata !{i32 1196, i32 0, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !1, metadata !355, i32 1196, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2086 = metadata !{i32 1204, i32 0, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !1, metadata !2088, i32 1203, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2088 = metadata !{i32 786443, metadata !1, metadata !2089, i32 1202, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2089 = metadata !{i32 786443, metadata !1, metadata !355, i32 1201, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2090 = metadata !{i32 1201, i32 0, metadata !2089, null}
!2091 = metadata !{i32 1198, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !1, metadata !2085, i32 1197, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2093 = metadata !{i32 1203, i32 0, metadata !2087, null}
!2094 = metadata !{i32 1206, i32 0, metadata !2088, null}
!2095 = metadata !{i32 1207, i32 0, metadata !2088, null}
!2096 = metadata !{i32 1208, i32 0, metadata !2088, null}
!2097 = metadata !{i32 1209, i32 0, metadata !2088, null}
!2098 = metadata !{i32 1210, i32 0, metadata !2088, null}
!2099 = metadata !{i32 1211, i32 0, metadata !2088, null}
!2100 = metadata !{i32 1212, i32 0, metadata !2088, null}
!2101 = metadata !{i32 1215, i32 0, metadata !355, null}
!2102 = metadata !{i32 1218, i32 0, metadata !355, null}
!2103 = metadata !{i32 1219, i32 0, metadata !355, null}
!2104 = metadata !{i32 1220, i32 0, metadata !355, null}
!2105 = metadata !{i32 1222, i32 0, metadata !355, null}
!2106 = metadata !{i32 1223, i32 0, metadata !355, null}
!2107 = metadata !{i32 1224, i32 0, metadata !355, null}
!2108 = metadata !{i32 1226, i32 0, metadata !2109, null}
!2109 = metadata !{i32 786443, metadata !1, metadata !355, i32 1225, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2110 = metadata !{i32 1227, i32 0, metadata !2109, null}
!2111 = metadata !{i32 1229, i32 0, metadata !2109, null}
!2112 = metadata !{i32 1232, i32 0, metadata !355, null}
!2113 = metadata !{i32 1234, i32 0, metadata !355, null}
!2114 = metadata !{i32 1236, i32 0, metadata !355, null}
!2115 = metadata !{i32 1237, i32 0, metadata !355, null}
!2116 = metadata !{i32 1239, i32 0, metadata !355, null}
!2117 = metadata !{i32 1240, i32 0, metadata !355, null}
!2118 = metadata !{i32 1242, i32 0, metadata !355, null}
!2119 = metadata !{i32 1243, i32 0, metadata !355, null}
!2120 = metadata !{i32 1244, i32 0, metadata !355, null}
!2121 = metadata !{i32 1246, i32 0, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !1, metadata !355, i32 1245, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2123 = metadata !{i32 1247, i32 0, metadata !2122, null}
!2124 = metadata !{i32 1248, i32 0, metadata !2122, null}
!2125 = metadata !{i32 1250, i32 0, metadata !355, null}
!2126 = metadata !{i32 1251, i32 0, metadata !355, null}
!2127 = metadata !{i32 1254, i32 0, metadata !355, null}
!2128 = metadata !{i32 1256, i32 0, metadata !355, null}
!2129 = metadata !{i32 1258, i32 0, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !1, metadata !355, i32 1257, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2131 = metadata !{i32 1260, i32 0, metadata !2130, null}
!2132 = metadata !{i32 1263, i32 0, metadata !371, null}
!2133 = metadata !{i32 1266, i32 0, metadata !371, null}
!2134 = metadata !{i32 1268, i32 0, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !1, metadata !371, i32 1268, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2136 = metadata !{i32 1270, i32 0, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !1, metadata !2138, i32 1270, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2138 = metadata !{i32 786443, metadata !1, metadata !2135, i32 1269, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2139 = metadata !{i32 1272, i32 0, metadata !2140, null}
!2140 = metadata !{i32 786443, metadata !1, metadata !2137, i32 1271, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2141 = metadata !{i32 1273, i32 0, metadata !2140, null}
!2142 = metadata !{i32 1275, i32 0, metadata !2140, null}
!2143 = metadata !{i32 1277, i32 0, metadata !2138, null}
!2144 = metadata !{i32 1279, i32 0, metadata !371, null}
!2145 = metadata !{i32 1280, i32 0, metadata !371, null}
!2146 = metadata !{i32 1282, i32 0, metadata !371, null}
!2147 = metadata !{i32 1284, i32 0, metadata !355, null}
!2148 = metadata !{i32 1286, i32 0, metadata !355, null}
!2149 = metadata !{i32 1289, i32 0, metadata !355, null}
!2150 = metadata !{i32 1290, i32 0, metadata !355, null}
!2151 = metadata !{i32 1292, i32 0, metadata !355, null}
!2152 = metadata !{i32 1294, i32 0, metadata !355, null}
!2153 = metadata !{i32 1296, i32 0, metadata !355, null}
!2154 = metadata !{i32 1297, i32 0, metadata !355, null}
!2155 = metadata !{i32 1298, i32 0, metadata !355, null}
!2156 = metadata !{i32 1299, i32 0, metadata !355, null}
!2157 = metadata !{i32 1301, i32 0, metadata !355, null}
!2158 = metadata !{i32 1304, i32 0, metadata !355, null}
!2159 = metadata !{i32 1305, i32 0, metadata !355, null}
!2160 = metadata !{i32 1307, i32 0, metadata !355, null}
!2161 = metadata !{i32 1309, i32 0, metadata !355, null}
!2162 = metadata !{i32 1312, i32 0, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !1, metadata !355, i32 1310, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2164 = metadata !{i32 1313, i32 0, metadata !2163, null}
!2165 = metadata !{i32 1315, i32 0, metadata !2163, null}
!2166 = metadata !{i32 1316, i32 0, metadata !2163, null}
!2167 = metadata !{i32 1318, i32 0, metadata !2163, null}
!2168 = metadata !{i32 1319, i32 0, metadata !2163, null}
!2169 = metadata !{i32 1322, i32 0, metadata !355, null}
!2170 = metadata !{i32 1325, i32 0, metadata !2171, null}
!2171 = metadata !{i32 786443, metadata !1, metadata !355, i32 1323, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2172 = metadata !{i32 1326, i32 0, metadata !2171, null}
!2173 = metadata !{i32 1328, i32 0, metadata !2171, null}
!2174 = metadata !{i32 1329, i32 0, metadata !2171, null}
!2175 = metadata !{i32 1331, i32 0, metadata !2171, null}
!2176 = metadata !{i32 1332, i32 0, metadata !2171, null}
!2177 = metadata !{i32 1335, i32 0, metadata !355, null}
!2178 = metadata !{i32 1336, i32 0, metadata !355, null}
!2179 = metadata !{i32 1338, i32 0, metadata !355, null}
!2180 = metadata !{i32 1341, i32 0, metadata !355, null}
!2181 = metadata !{i32 1342, i32 0, metadata !355, null}
!2182 = metadata !{i32 1343, i32 0, metadata !355, null}
!2183 = metadata !{i32 1344, i32 0, metadata !355, null}
!2184 = metadata !{i32 1346, i32 0, metadata !355, null}
!2185 = metadata !{i32 1348, i32 0, metadata !2186, null}
!2186 = metadata !{i32 786443, metadata !1, metadata !355, i32 1347, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2187 = metadata !{i32 1351, i32 0, metadata !2186, null}
!2188 = metadata !{i32 1352, i32 0, metadata !2186, null}
!2189 = metadata !{i32 1354, i32 0, metadata !2186, null}
!2190 = metadata !{i32 1356, i32 0, metadata !2186, null}
!2191 = metadata !{i32 1359, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !1, metadata !355, i32 1358, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2193 = metadata !{i32 1363, i32 0, metadata !2192, null}
!2194 = metadata !{i32 1364, i32 0, metadata !2192, null}
!2195 = metadata !{i32 1366, i32 0, metadata !2192, null}
!2196 = metadata !{i32 1380, i32 0, metadata !355, null}
!2197 = metadata !{i32 1381, i32 0, metadata !355, null}
!2198 = metadata !{i32 1383, i32 0, metadata !355, null}
!2199 = metadata !{i32 1384, i32 0, metadata !355, null}
!2200 = metadata !{i32 1385, i32 0, metadata !355, null}
!2201 = metadata !{i32 1389, i32 0, metadata !355, null}
!2202 = metadata !{i32 1391, i32 0, metadata !2203, null}
!2203 = metadata !{i32 786443, metadata !1, metadata !355, i32 1390, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2204 = metadata !{i32 1392, i32 0, metadata !2203, null}
!2205 = metadata !{i32 1394, i32 0, metadata !355, null}
!2206 = metadata !{i32 1393, i32 0, metadata !2203, null}
!2207 = metadata !{i32 1395, i32 0, metadata !355, null}
!2208 = metadata !{i32 1396, i32 0, metadata !355, null}
!2209 = metadata !{i32 1397, i32 0, metadata !355, null}
!2210 = metadata !{i32 1398, i32 0, metadata !355, null}
!2211 = metadata !{i32 1399, i32 0, metadata !355, null}
!2212 = metadata !{i32 1401, i32 0, metadata !355, null}
!2213 = metadata !{i32 1402, i32 0, metadata !355, null}
!2214 = metadata !{i32 1404, i32 0, metadata !355, null}
!2215 = metadata !{i32 1405, i32 0, metadata !355, null}
!2216 = metadata !{i32 1406, i32 0, metadata !355, null}
!2217 = metadata !{i32 1408, i32 0, metadata !355, null}
!2218 = metadata !{i32 1410, i32 0, metadata !2219, null}
!2219 = metadata !{i32 786443, metadata !1, metadata !355, i32 1409, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2220 = metadata !{i32 1411, i32 0, metadata !2219, null}
!2221 = metadata !{i32 1413, i32 0, metadata !2219, null}
!2222 = metadata !{i32 1416, i32 0, metadata !355, null}
!2223 = metadata !{i32 1418, i32 0, metadata !355, null}
!2224 = metadata !{i32 1420, i32 0, metadata !355, null}
!2225 = metadata !{i32 1421, i32 0, metadata !355, null}
!2226 = metadata !{i32 1423, i32 0, metadata !355, null}
!2227 = metadata !{i32 1425, i32 0, metadata !355, null}
!2228 = metadata !{i32 1427, i32 0, metadata !355, null}
!2229 = metadata !{i32 1428, i32 0, metadata !355, null}
!2230 = metadata !{i32 1429, i32 0, metadata !355, null}
!2231 = metadata !{i32 1431, i32 0, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !1, metadata !355, i32 1430, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2233 = metadata !{i32 1432, i32 0, metadata !2232, null}
!2234 = metadata !{i32 1435, i32 0, metadata !355, null}
!2235 = metadata !{i32 1433, i32 0, metadata !2232, null}
!2236 = metadata !{i32 1436, i32 0, metadata !355, null}
!2237 = metadata !{i32 1438, i32 0, metadata !355, null}
!2238 = metadata !{i32 1440, i32 0, metadata !355, null}
!2239 = metadata !{i32 1441, i32 0, metadata !355, null}
!2240 = metadata !{i32 1442, i32 0, metadata !355, null}
!2241 = metadata !{i32 1445, i32 0, metadata !355, null}
!2242 = metadata !{i32 1446, i32 0, metadata !355, null}
!2243 = metadata !{i32 1447, i32 0, metadata !355, null}
!2244 = metadata !{i32 1448, i32 0, metadata !355, null}
!2245 = metadata !{i32 1450, i32 0, metadata !355, null}
!2246 = metadata !{i32 1452, i32 0, metadata !355, null}
!2247 = metadata !{i32 1453, i32 0, metadata !355, null}
!2248 = metadata !{i32 1455, i32 0, metadata !355, null}
!2249 = metadata !{i32 1457, i32 0, metadata !355, null}
!2250 = metadata !{i32 1458, i32 0, metadata !355, null}
!2251 = metadata !{i32 1459, i32 0, metadata !355, null}
!2252 = metadata !{i32 1460, i32 0, metadata !355, null}
!2253 = metadata !{i32 1461, i32 0, metadata !355, null}
!2254 = metadata !{i32 1462, i32 0, metadata !355, null}
!2255 = metadata !{i32 1463, i32 0, metadata !355, null}
!2256 = metadata !{i32 1464, i32 0, metadata !355, null}
!2257 = metadata !{i32 1465, i32 0, metadata !355, null}
!2258 = metadata !{i32 1468, i32 0, metadata !355, null}
!2259 = metadata !{i32 1469, i32 0, metadata !355, null}
!2260 = metadata !{i32 1470, i32 0, metadata !355, null}
!2261 = metadata !{i32 1472, i32 0, metadata !355, null}
!2262 = metadata !{i32 1473, i32 0, metadata !355, null}
!2263 = metadata !{i32 1474, i32 0, metadata !355, null}
!2264 = metadata !{i32 1475, i32 0, metadata !355, null}
!2265 = metadata !{i32 1477, i32 0, metadata !355, null}
!2266 = metadata !{i32 1479, i32 0, metadata !355, null}
!2267 = metadata !{i32 1484, i32 0, metadata !355, null}
!2268 = metadata !{i32 1485, i32 0, metadata !355, null}
!2269 = metadata !{i32 1486, i32 0, metadata !355, null}
!2270 = metadata !{i32 1488, i32 0, metadata !355, null}
!2271 = metadata !{i32 1489, i32 0, metadata !355, null}
!2272 = metadata !{i32 1490, i32 0, metadata !355, null}
!2273 = metadata !{i32 1493, i32 0, metadata !355, null}
!2274 = metadata !{i32 1494, i32 0, metadata !355, null}
!2275 = metadata !{i32 1495, i32 0, metadata !355, null}
!2276 = metadata !{i32 1496, i32 0, metadata !355, null}
!2277 = metadata !{i32 1497, i32 0, metadata !355, null}
!2278 = metadata !{i32 1498, i32 0, metadata !355, null}
!2279 = metadata !{i32 1499, i32 0, metadata !355, null}
!2280 = metadata !{i32 1500, i32 0, metadata !355, null}
!2281 = metadata !{i32 1501, i32 0, metadata !355, null}
!2282 = metadata !{i32 1502, i32 0, metadata !355, null}
!2283 = metadata !{i32 1503, i32 0, metadata !355, null}
!2284 = metadata !{i32 1504, i32 0, metadata !355, null}
!2285 = metadata !{i32 1508, i32 0, metadata !355, null}
!2286 = metadata !{i32 1511, i32 0, metadata !2287, null}
!2287 = metadata !{i32 786443, metadata !1, metadata !355, i32 1509, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2288 = metadata !{i32 1512, i32 0, metadata !2287, null}
!2289 = metadata !{i32 1513, i32 0, metadata !2287, null}
!2290 = metadata !{i32 1514, i32 0, metadata !2287, null}
!2291 = metadata !{i32 1515, i32 0, metadata !2287, null}
!2292 = metadata !{i32 1516, i32 0, metadata !2287, null}
!2293 = metadata !{i32 1517, i32 0, metadata !2287, null}
!2294 = metadata !{i32 1518, i32 0, metadata !2287, null}
!2295 = metadata !{i32 1519, i32 0, metadata !2287, null}
!2296 = metadata !{i32 1520, i32 0, metadata !2287, null}
!2297 = metadata !{i32 1521, i32 0, metadata !2287, null}
!2298 = metadata !{i32 1522, i32 0, metadata !2287, null}
!2299 = metadata !{i32 1525, i32 0, metadata !2287, null}
!2300 = metadata !{i32 1533, i32 0, metadata !355, null}
!2301 = metadata !{i32 1527, i32 0, metadata !355, null}
!2302 = metadata !{i32 1528, i32 0, metadata !355, null}
!2303 = metadata !{i32 1529, i32 0, metadata !355, null}
!2304 = metadata !{i32 1531, i32 0, metadata !355, null}
!2305 = metadata !{i32 1532, i32 0, metadata !355, null}
!2306 = metadata !{i32 1534, i32 0, metadata !355, null}
!2307 = metadata !{i32 1535, i32 0, metadata !355, null}
!2308 = metadata !{i32 1536, i32 0, metadata !355, null}
!2309 = metadata !{i32 1537, i32 0, metadata !355, null}
!2310 = metadata !{i32 1539, i32 0, metadata !355, null}
!2311 = metadata !{i32 1540, i32 0, metadata !355, null}
!2312 = metadata !{i32 1541, i32 0, metadata !355, null}
!2313 = metadata !{i32 1542, i32 0, metadata !355, null}
!2314 = metadata !{i32 1543, i32 0, metadata !355, null}
!2315 = metadata !{i32 1544, i32 0, metadata !355, null}
!2316 = metadata !{i32 1545, i32 0, metadata !355, null}
!2317 = metadata !{i32 1547, i32 0, metadata !355, null}
!2318 = metadata !{i32 1548, i32 0, metadata !355, null}
!2319 = metadata !{i32 1549, i32 0, metadata !355, null}
!2320 = metadata !{i32 1550, i32 0, metadata !355, null}
!2321 = metadata !{i32 1551, i32 0, metadata !355, null}
!2322 = metadata !{i32 1552, i32 0, metadata !355, null}
!2323 = metadata !{i32 1553, i32 0, metadata !355, null}
!2324 = metadata !{i32 1555, i32 0, metadata !355, null}
!2325 = metadata !{i32 1556, i32 0, metadata !355, null}
!2326 = metadata !{i32 1557, i32 0, metadata !355, null}
!2327 = metadata !{i32 1558, i32 0, metadata !355, null}
!2328 = metadata !{i32 1559, i32 0, metadata !355, null}
!2329 = metadata !{i32 1560, i32 0, metadata !355, null}
!2330 = metadata !{i32 1561, i32 0, metadata !355, null}
!2331 = metadata !{i32 1563, i32 0, metadata !355, null}
!2332 = metadata !{i32 1564, i32 0, metadata !355, null}
!2333 = metadata !{i32 1567, i32 0, metadata !355, null}
!2334 = metadata !{i32 1570, i32 0, metadata !355, null}
!2335 = metadata !{i32 1571, i32 0, metadata !355, null}
!2336 = metadata !{i32 1574, i32 0, metadata !355, null}
!2337 = metadata !{i32 1577, i32 0, metadata !355, null}
!2338 = metadata !{i32 1578, i32 0, metadata !355, null}
!2339 = metadata !{i32 1581, i32 0, metadata !355, null}
!2340 = metadata !{i32 1584, i32 0, metadata !355, null}
!2341 = metadata !{i32 1585, i32 0, metadata !355, null}
!2342 = metadata !{i32 1588, i32 0, metadata !355, null}
!2343 = metadata !{i32 1593, i32 0, metadata !355, null}
!2344 = metadata !{i32 1595, i32 0, metadata !355, null}
!2345 = metadata !{i32 1597, i32 0, metadata !355, null}
!2346 = metadata !{i32 1598, i32 0, metadata !355, null}
!2347 = metadata !{i32 1600, i32 0, metadata !355, null}
!2348 = metadata !{i32 1601, i32 0, metadata !355, null}
!2349 = metadata !{i32 1602, i32 0, metadata !355, null}
!2350 = metadata !{i32 1604, i32 0, metadata !355, null}
!2351 = metadata !{i32 1605, i32 0, metadata !355, null}
!2352 = metadata !{i32 1607, i32 0, metadata !355, null}
!2353 = metadata !{i32 1612, i32 0, metadata !355, null}
!2354 = metadata !{i32 1614, i32 0, metadata !2355, null}
!2355 = metadata !{i32 786443, metadata !1, metadata !355, i32 1613, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2356 = metadata !{i32 1616, i32 0, metadata !2357, null}
!2357 = metadata !{i32 786443, metadata !1, metadata !2355, i32 1615, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2358 = metadata !{i32 1617, i32 0, metadata !2357, null}
!2359 = metadata !{i32 1618, i32 0, metadata !2357, null}
!2360 = metadata !{i32 1621, i32 0, metadata !2361, null}
!2361 = metadata !{i32 786443, metadata !1, metadata !2355, i32 1620, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2362 = metadata !{i32 1622, i32 0, metadata !2361, null}
!2363 = metadata !{i32 1623, i32 0, metadata !2361, null}
!2364 = metadata !{i32 1624, i32 0, metadata !2361, null}
!2365 = metadata !{i32 1625, i32 0, metadata !2361, null}
!2366 = metadata !{i32 1630, i32 0, metadata !2367, null}
!2367 = metadata !{i32 786443, metadata !1, metadata !355, i32 1629, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2368 = metadata !{i32 1631, i32 0, metadata !2367, null}
!2369 = metadata !{i32 1633, i32 0, metadata !2370, null}
!2370 = metadata !{i32 786443, metadata !1, metadata !2367, i32 1632, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2371 = metadata !{i32 1634, i32 0, metadata !2370, null}
!2372 = metadata !{i32 1635, i32 0, metadata !2370, null}
!2373 = metadata !{i32 1637, i32 0, metadata !355, null}
!2374 = metadata !{i32 1646, i32 0, metadata !355, null}
!2375 = metadata !{i32 1647, i32 0, metadata !355, null}
!2376 = metadata !{i32 1648, i32 0, metadata !355, null}
!2377 = metadata !{i32 1649, i32 0, metadata !355, null}
!2378 = metadata !{i32 1650, i32 0, metadata !355, null}
!2379 = metadata !{i32 1652, i32 0, metadata !355, null}
!2380 = metadata !{i32 1653, i32 0, metadata !355, null}
!2381 = metadata !{i32 1656, i32 0, metadata !2382, null}
!2382 = metadata !{i32 786443, metadata !1, metadata !355, i32 1656, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2383 = metadata !{i32 1657, i32 0, metadata !2382, null}
!2384 = metadata !{i32 1658, i32 0, metadata !355, null}
!2385 = metadata !{i32 1660, i32 0, metadata !355, null}
!2386 = metadata !{i32 1661, i32 0, metadata !355, null}
!2387 = metadata !{i32 1662, i32 0, metadata !355, null}
!2388 = metadata !{i32 1663, i32 0, metadata !355, null}
!2389 = metadata !{i32 1664, i32 0, metadata !355, null}
!2390 = metadata !{i32 1666, i32 0, metadata !355, null}
!2391 = metadata !{i32 1668, i32 0, metadata !355, null}
!2392 = metadata !{i32 1669, i32 0, metadata !355, null}
!2393 = metadata !{i32 1672, i32 0, metadata !355, null}
!2394 = metadata !{i32 1673, i32 0, metadata !355, null}
!2395 = metadata !{i32 1675, i32 0, metadata !355, null}
!2396 = metadata !{i32 1677, i32 0, metadata !355, null}
!2397 = metadata !{i32 1679, i32 0, metadata !355, null}
!2398 = metadata !{i32 1683, i32 0, metadata !355, null}
!2399 = metadata !{i32 1685, i32 0, metadata !355, null}
!2400 = metadata !{i32 1686, i32 0, metadata !355, null}
!2401 = metadata !{i32 1688, i32 0, metadata !355, null}
!2402 = metadata !{i32 1690, i32 0, metadata !355, null}
!2403 = metadata !{i32 1692, i32 0, metadata !355, null}
!2404 = metadata !{i32 1693, i32 0, metadata !355, null}
!2405 = metadata !{i32 1695, i32 0, metadata !355, null}
!2406 = metadata !{i32 1697, i32 0, metadata !355, null}
!2407 = metadata !{i32 1699, i32 0, metadata !355, null}
!2408 = metadata !{i32 1700, i32 0, metadata !355, null}
!2409 = metadata !{i32 1701, i32 0, metadata !355, null}
!2410 = metadata !{i32 1702, i32 0, metadata !355, null}
!2411 = metadata !{i32 1703, i32 0, metadata !355, null}
!2412 = metadata !{i32 1704, i32 0, metadata !355, null}
!2413 = metadata !{i32 1716, i32 0, metadata !355, null}
!2414 = metadata !{i32 1717, i32 0, metadata !355, null}
!2415 = metadata !{i32 1718, i32 0, metadata !355, null}
!2416 = metadata !{i32 1719, i32 0, metadata !355, null}
!2417 = metadata !{i32 1721, i32 0, metadata !355, null}
!2418 = metadata !{i32 1722, i32 0, metadata !355, null}
!2419 = metadata !{i32 1724, i32 0, metadata !355, null}
!2420 = metadata !{i32 1728, i32 0, metadata !355, null}
!2421 = metadata !{i32 1730, i32 0, metadata !355, null}
!2422 = metadata !{i32 1732, i32 0, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !1, metadata !355, i32 1731, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2424 = metadata !{i32 1750, i32 0, metadata !2423, null}
!2425 = metadata !{i32 1753, i32 0, metadata !2426, null}
!2426 = metadata !{i32 786443, metadata !1, metadata !355, i32 1752, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2427 = metadata !{i32 1754, i32 0, metadata !2426, null}
!2428 = metadata !{i32 1774, i32 0, metadata !355, null}
!2429 = metadata !{i32 1777, i32 0, metadata !355, null}
!2430 = metadata !{i32 1779, i32 0, metadata !2431, null}
!2431 = metadata !{i32 786443, metadata !1, metadata !355, i32 1778, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2432 = metadata !{i32 1781, i32 0, metadata !2433, null}
!2433 = metadata !{i32 786443, metadata !1, metadata !2431, i32 1780, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2434 = metadata !{i32 1783, i32 0, metadata !2433, null}
!2435 = metadata !{i32 1786, i32 0, metadata !2436, null}
!2436 = metadata !{i32 786443, metadata !1, metadata !2431, i32 1785, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2437 = metadata !{i32 1787, i32 0, metadata !2436, null}
!2438 = metadata !{i32 1790, i32 0, metadata !355, null}
!2439 = metadata !{i32 1805, i32 0, metadata !377, null}
!2440 = metadata !{i32 1807, i32 0, metadata !377, null}
!2441 = metadata !{i32 1808, i32 0, metadata !377, null}
!2442 = metadata !{i32 1809, i32 0, metadata !377, null}
!2443 = metadata !{i32 1810, i32 0, metadata !377, null}
!2444 = metadata !{i32 1811, i32 0, metadata !377, null}
!2445 = metadata !{i32 1812, i32 0, metadata !377, null}
!2446 = metadata !{i32 1813, i32 0, metadata !377, null}
!2447 = metadata !{i32 1814, i32 0, metadata !377, null}
!2448 = metadata !{i32 1815, i32 0, metadata !377, null}
!2449 = metadata !{i32 1816, i32 0, metadata !377, null}
!2450 = metadata !{i32 1817, i32 0, metadata !377, null}
!2451 = metadata !{i32 1818, i32 0, metadata !377, null}
!2452 = metadata !{i32 1819, i32 0, metadata !377, null}
!2453 = metadata !{i32 1829, i32 0, metadata !382, null}
!2454 = metadata !{i32 1832, i32 0, metadata !382, null}
!2455 = metadata !{i32 1834, i32 0, metadata !382, null}
!2456 = metadata !{i32 1835, i32 0, metadata !382, null}
!2457 = metadata !{i32 1838, i32 0, metadata !382, null}
!2458 = metadata !{i32 1841, i32 0, metadata !2459, null}
!2459 = metadata !{i32 786443, metadata !1, metadata !382, i32 1839, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2460 = metadata !{i32 1843, i32 0, metadata !2459, null}
!2461 = metadata !{i32 1845, i32 0, metadata !2462, null}
!2462 = metadata !{i32 786443, metadata !1, metadata !2459, i32 1844, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2463 = metadata !{i32 1846, i32 0, metadata !2462, null}
!2464 = metadata !{i32 1847, i32 0, metadata !2462, null}
!2465 = metadata !{i32 1848, i32 0, metadata !2462, null}
!2466 = metadata !{i32 1852, i32 0, metadata !2462, null}
!2467 = metadata !{i32 1850, i32 0, metadata !2462, null}
!2468 = metadata !{i32 1853, i32 0, metadata !2462, null}
!2469 = metadata !{i32 1854, i32 0, metadata !2462, null}
!2470 = metadata !{i32 1856, i32 0, metadata !382, null}
!2471 = metadata !{i32 1873, i32 0, metadata !387, null}
!2472 = metadata !{i32 1878, i32 0, metadata !387, null}
!2473 = metadata !{i32 1879, i32 0, metadata !387, null}
!2474 = metadata !{i32 1880, i32 0, metadata !387, null}
!2475 = metadata !{i32 1881, i32 0, metadata !387, null}
!2476 = metadata !{i32 1882, i32 0, metadata !387, null}
!2477 = metadata !{i32 1885, i32 0, metadata !387, null}
!2478 = metadata !{i32 1888, i32 0, metadata !387, null}
!2479 = metadata !{i32 1891, i32 0, metadata !2480, null}
!2480 = metadata !{i32 786443, metadata !1, metadata !387, i32 1889, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2481 = metadata !{i32 1892, i32 0, metadata !2480, null}
!2482 = metadata !{i32 1894, i32 0, metadata !2480, null}
!2483 = metadata !{i32 1899, i32 0, metadata !387, null}
!2484 = metadata !{i32 1895, i32 0, metadata !2480, null}
!2485 = metadata !{i32 1901, i32 0, metadata !2486, null}
!2486 = metadata !{i32 786443, metadata !1, metadata !387, i32 1900, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2487 = metadata !{i32 1902, i32 0, metadata !2486, null}
!2488 = metadata !{i32 1903, i32 0, metadata !2486, null}
!2489 = metadata !{i32 1907, i32 0, metadata !387, null}
!2490 = metadata !{i32 1909, i32 0, metadata !387, null}
!2491 = metadata !{i32 1911, i32 0, metadata !2492, null}
!2492 = metadata !{i32 786443, metadata !1, metadata !387, i32 1910, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2493 = metadata !{i32 1912, i32 0, metadata !2492, null}
!2494 = metadata !{i32 1913, i32 0, metadata !2492, null}
!2495 = metadata !{i32 1914, i32 0, metadata !2496, null}
!2496 = metadata !{i32 786443, metadata !1, metadata !2492, i32 1914, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2497 = metadata !{i32 1916, i32 0, metadata !2498, null}
!2498 = metadata !{i32 786443, metadata !1, metadata !2496, i32 1915, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2499 = metadata !{i32 1918, i32 0, metadata !2492, null}
!2500 = metadata !{i32 1919, i32 0, metadata !2492, null}
!2501 = metadata !{i32 1920, i32 0, metadata !2492, null}
!2502 = metadata !{i32 1921, i32 0, metadata !2492, null}
!2503 = metadata !{i32 1922, i32 0, metadata !2492, null}
!2504 = metadata !{i32 1924, i32 0, metadata !387, null}
!2505 = metadata !{i32 1923, i32 0, metadata !2492, null}
!2506 = metadata !{i32 1926, i32 0, metadata !2507, null}
!2507 = metadata !{i32 786443, metadata !1, metadata !387, i32 1925, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2508 = metadata !{i32 1927, i32 0, metadata !2507, null}
!2509 = metadata !{i32 1928, i32 0, metadata !2507, null}
!2510 = metadata !{i32 1930, i32 0, metadata !387, null}
!2511 = metadata !{i32 1932, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !1, metadata !387, i32 1931, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2513 = metadata !{i32 1934, i32 0, metadata !2512, null}
!2514 = metadata !{i32 1936, i32 0, metadata !2515, null}
!2515 = metadata !{i32 786443, metadata !1, metadata !2512, i32 1935, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2516 = metadata !{i32 1937, i32 0, metadata !2515, null}
!2517 = metadata !{i32 1940, i32 0, metadata !387, null}
!2518 = metadata !{i32 1941, i32 0, metadata !387, null}
!2519 = metadata !{i32 1943, i32 0, metadata !387, null}
!2520 = metadata !{i32 1945, i32 0, metadata !2521, null}
!2521 = metadata !{i32 786443, metadata !1, metadata !387, i32 1944, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2522 = metadata !{i32 1946, i32 0, metadata !2521, null}
!2523 = metadata !{i32 1948, i32 0, metadata !387, null}
!2524 = metadata !{i32 1960, i32 0, metadata !391, null}
!2525 = metadata !{i32 1962, i32 0, metadata !391, null}
!2526 = metadata !{i32 1963, i32 0, metadata !391, null}
!2527 = metadata !{i32 1966, i32 0, metadata !391, null}
!2528 = metadata !{i32 1968, i32 0, metadata !2529, null}
!2529 = metadata !{i32 786443, metadata !1, metadata !391, i32 1967, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2530 = metadata !{i32 1970, i32 0, metadata !2529, null}
!2531 = metadata !{i32 1972, i32 0, metadata !2532, null}
!2532 = metadata !{i32 786443, metadata !1, metadata !2529, i32 1971, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2533 = metadata !{i32 1973, i32 0, metadata !2532, null}
!2534 = metadata !{i32 1974, i32 0, metadata !2532, null}
!2535 = metadata !{i32 1975, i32 0, metadata !2532, null}
!2536 = metadata !{i32 1976, i32 0, metadata !2532, null}
!2537 = metadata !{i32 1978, i32 0, metadata !391, null}
!2538 = metadata !{i32 2001, i32 0, metadata !392, null}
!2539 = metadata !{i32 2002, i32 0, metadata !392, null}
!2540 = metadata !{i32 2005, i32 0, metadata !392, null}
!2541 = metadata !{i32 2007, i32 0, metadata !392, null}
!2542 = metadata !{i32 2009, i32 0, metadata !2543, null}
!2543 = metadata !{i32 786443, metadata !1, metadata !392, i32 2008, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2544 = metadata !{i32 2010, i32 0, metadata !2543, null}
!2545 = metadata !{i32 2011, i32 0, metadata !2543, null}
!2546 = metadata !{i32 2014, i32 0, metadata !392, null}
!2547 = metadata !{i32 2012, i32 0, metadata !2543, null}
!2548 = metadata !{i32 2016, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !1, metadata !392, i32 2015, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2550 = metadata !{i32 2017, i32 0, metadata !2549, null}
!2551 = metadata !{i32 2018, i32 0, metadata !2549, null}
!2552 = metadata !{i32 2021, i32 0, metadata !392, null}
!2553 = metadata !{i32 2025, i32 0, metadata !392, null}
!2554 = metadata !{i32 2026, i32 0, metadata !392, null}
!2555 = metadata !{i32 2027, i32 0, metadata !392, null}
!2556 = metadata !{i32 2029, i32 0, metadata !392, null}
!2557 = metadata !{i32 2031, i32 0, metadata !392, null}
!2558 = metadata !{i32 2033, i32 0, metadata !2559, null}
!2559 = metadata !{i32 786443, metadata !1, metadata !392, i32 2032, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2560 = metadata !{i32 2036, i32 0, metadata !392, null}
!2561 = metadata !{i32 2034, i32 0, metadata !2559, null}
!2562 = metadata !{i32 2038, i32 0, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !1, metadata !392, i32 2037, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2564 = metadata !{i32 2039, i32 0, metadata !2563, null}
!2565 = metadata !{i32 2040, i32 0, metadata !2563, null}
!2566 = metadata !{i32 2041, i32 0, metadata !2563, null}
!2567 = metadata !{i32 2042, i32 0, metadata !2568, null}
!2568 = metadata !{i32 786443, metadata !1, metadata !2563, i32 2042, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2569 = metadata !{i32 2044, i32 0, metadata !2570, null}
!2570 = metadata !{i32 786443, metadata !1, metadata !2568, i32 2043, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2571 = metadata !{i32 2045, i32 0, metadata !2570, null}
!2572 = metadata !{i32 2046, i32 0, metadata !2570, null}
!2573 = metadata !{i32 2047, i32 0, metadata !2570, null}
!2574 = metadata !{i32 2048, i32 0, metadata !2575, null}
!2575 = metadata !{i32 786443, metadata !1, metadata !2570, i32 2048, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2576 = metadata !{i32 2050, i32 0, metadata !2577, null}
!2577 = metadata !{i32 786443, metadata !1, metadata !2575, i32 2049, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2578 = metadata !{i32 2051, i32 0, metadata !2577, null}
!2579 = metadata !{i32 2053, i32 0, metadata !2570, null}
!2580 = metadata !{i32 2055, i32 0, metadata !2563, null}
!2581 = metadata !{i32 2056, i32 0, metadata !2563, null}
!2582 = metadata !{i32 2057, i32 0, metadata !2563, null}
!2583 = metadata !{i32 2058, i32 0, metadata !2563, null}
!2584 = metadata !{i32 2059, i32 0, metadata !2563, null}
!2585 = metadata !{i32 2060, i32 0, metadata !2563, null}
!2586 = metadata !{i32 2061, i32 0, metadata !2563, null}
!2587 = metadata !{i32 2063, i32 0, metadata !392, null}
!2588 = metadata !{i32 2062, i32 0, metadata !2563, null}
!2589 = metadata !{i32 2065, i32 0, metadata !2590, null}
!2590 = metadata !{i32 786443, metadata !1, metadata !392, i32 2064, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2591 = metadata !{i32 2066, i32 0, metadata !2590, null}
!2592 = metadata !{i32 2067, i32 0, metadata !2590, null}
!2593 = metadata !{i32 2068, i32 0, metadata !2590, null}
!2594 = metadata !{i32 2069, i32 0, metadata !2590, null}
!2595 = metadata !{i32 2071, i32 0, metadata !392, null}
!2596 = metadata !{i32 2073, i32 0, metadata !2597, null}
!2597 = metadata !{i32 786443, metadata !1, metadata !392, i32 2072, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2598 = metadata !{i32 2074, i32 0, metadata !2597, null}
!2599 = metadata !{i32 2076, i32 0, metadata !2600, null}
!2600 = metadata !{i32 786443, metadata !1, metadata !2597, i32 2075, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2601 = metadata !{i32 2077, i32 0, metadata !2600, null}
!2602 = metadata !{i32 2080, i32 0, metadata !392, null}
!2603 = metadata !{i32 2082, i32 0, metadata !392, null}
!2604 = metadata !{i32 2084, i32 0, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !1, metadata !392, i32 2083, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2606 = metadata !{i32 2087, i32 0, metadata !392, null}
!2607 = metadata !{i32 2085, i32 0, metadata !2605, null}
!2608 = metadata !{i32 2089, i32 0, metadata !2609, null}
!2609 = metadata !{i32 786443, metadata !1, metadata !392, i32 2088, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2610 = metadata !{i32 2090, i32 0, metadata !2609, null}
!2611 = metadata !{i32 2092, i32 0, metadata !392, null}
!2612 = metadata !{i32 2283, i32 0, metadata !2613, null}
!2613 = metadata !{i32 786443, metadata !1, metadata !459, i32 2283, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2614 = metadata !{i32 2285, i32 0, metadata !2615, null}
!2615 = metadata !{i32 786443, metadata !1, metadata !2613, i32 2284, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2616 = metadata !{i32 2286, i32 0, metadata !2615, null}
!2617 = metadata !{i32 2289, i32 0, metadata !459, null}
!2618 = metadata !{i32 2291, i32 0, metadata !2619, null}
!2619 = metadata !{i32 786443, metadata !1, metadata !2620, i32 2291, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2620 = metadata !{i32 786443, metadata !1, metadata !459, i32 2290, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2621 = metadata !{i32 2293, i32 0, metadata !2622, null}
!2622 = metadata !{i32 786443, metadata !1, metadata !2619, i32 2292, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2623 = metadata !{i32 2294, i32 0, metadata !2622, null}
!2624 = metadata !{i32 2295, i32 0, metadata !2622, null}
!2625 = metadata !{i32 2296, i32 0, metadata !2622, null}
!2626 = metadata !{i32 2299, i32 0, metadata !459, null}
!2627 = metadata !{i32 2307, i32 0, metadata !462, null}
!2628 = metadata !{i32 2311, i32 0, metadata !462, null}
!2629 = metadata !{i32 2312, i32 0, metadata !462, null}
!2630 = metadata !{i32 2315, i32 0, metadata !462, null}
!2631 = metadata !{i32 2317, i32 0, metadata !462, null}
!2632 = metadata !{i32 2328, i32 0, metadata !474, null}
!2633 = metadata !{i32 2329, i32 0, metadata !474, null}
!2634 = metadata !{i32 1}
!2635 = metadata !{i32 2330, i32 0, metadata !474, null}
!2636 = metadata !{i32 2331, i32 0, metadata !474, null}
!2637 = metadata !{i32 2332, i32 0, metadata !474, null}
!2638 = metadata !{i32 2333, i32 0, metadata !474, null}
!2639 = metadata !{i32 2336, i32 0, metadata !474, null}
!2640 = metadata !{i32 2337, i32 0, metadata !474, null}
!2641 = metadata !{i32 2338, i32 0, metadata !474, null}
!2642 = metadata !{i32 2346, i32 0, metadata !474, null}
!2643 = metadata !{i32 2358, i32 0, metadata !477, null}
!2644 = metadata !{i32 2360, i32 0, metadata !2645, null}
!2645 = metadata !{i32 786443, metadata !1, metadata !477, i32 2359, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2646 = metadata !{i32 2362, i32 0, metadata !2647, null}
!2647 = metadata !{i32 786443, metadata !1, metadata !2645, i32 2361, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2648 = metadata !{i32 2363, i32 0, metadata !2647, null}
!2649 = metadata !{i32 2366, i32 0, metadata !2650, null}
!2650 = metadata !{i32 786443, metadata !1, metadata !2645, i32 2365, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2651 = metadata !{i32 2368, i32 0, metadata !2650, null}
!2652 = metadata !{i32 2370, i32 0, metadata !2653, null}
!2653 = metadata !{i32 786443, metadata !1, metadata !2650, i32 2369, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2654 = metadata !{i32 2372, i32 0, metadata !2655, null}
!2655 = metadata !{i32 786443, metadata !1, metadata !2653, i32 2371, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2656 = metadata !{i32 2373, i32 0, metadata !2655, null}
!2657 = metadata !{i32 2379, i32 0, metadata !2658, null}
!2658 = metadata !{i32 786443, metadata !1, metadata !477, i32 2378, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2659 = metadata !{i32 2381, i32 0, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !1, metadata !2658, i32 2380, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2661 = metadata !{i32 2382, i32 0, metadata !2660, null}
!2662 = metadata !{i32 2385, i32 0, metadata !2663, null}
!2663 = metadata !{i32 786443, metadata !1, metadata !2658, i32 2384, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2664 = metadata !{i32 2386, i32 0, metadata !2663, null}
!2665 = metadata !{i32 2388, i32 0, metadata !2666, null}
!2666 = metadata !{i32 786443, metadata !1, metadata !2663, i32 2387, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/lencod.c]
!2667 = metadata !{i32 2389, i32 0, metadata !2666, null}
!2668 = metadata !{i32 2393, i32 0, metadata !477, null}
