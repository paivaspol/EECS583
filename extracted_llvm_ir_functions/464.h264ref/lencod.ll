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
@information_init.yuv_types = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"YUV 4:0:0\00", [10 x i8] c"YUV 4:2:0\00", [10 x i8] c"YUV 4:2:2\00", [10 x i8] c"YUV 4:4:4\00"], align 16
@.str78 = private unnamed_addr constant [75 x i8] c"------------------------------- JM %s %s --------------------------------\0A\00", align 1
@.str79 = private unnamed_addr constant [42 x i8] c" Input YUV file                    : %s \0A\00", align 1
@.str80 = private unnamed_addr constant [42 x i8] c" Output H.264 bitstream            : %s \0A\00", align 1
@.str81 = private unnamed_addr constant [42 x i8] c" Output YUV file                   : %s \0A\00", align 1
@.str82 = private unnamed_addr constant [42 x i8] c" YUV Format                        : %s \0A\00", align 1
@.str83 = private unnamed_addr constant [44 x i8] c" Frames to be encoded I-P/B        : %d/%d\0A\00", align 1
@.str84 = private unnamed_addr constant [44 x i8] c" PicInterlace / MbInterlace        : %d/%d\0A\00", align 1
@.str85 = private unnamed_addr constant [41 x i8] c" Transform8x8Mode                  : %d\0A\00", align 1
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@.str87 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_top\00", align 1
@imgUV_org_bot = common global i16*** null, align 8
@.str88 = private unnamed_addr constant [35 x i8] c"init_global_buffers: imgUV_org_bot\00", align 1
@last_P_no_frm = external global i32*
@.str89 = private unnamed_addr constant [31 x i8] c"init_global_buffers: last_P_no\00", align 1
@last_P_no_fld = external global i32*
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@img4Y_tmp = common global i32** null, align 8
@.str90 = private unnamed_addr constant [28 x i8] c"init_global_buffers: decref\00", align 1
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@.str91 = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@.str92 = private unnamed_addr constant [23 x i8] c"get_mem_ACcoeff: cofAC\00", align 1
@.str93 = private unnamed_addr constant [23 x i8] c"get_mem_DCcoeff: cofDC\00", align 1
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
@Bytes_After_Header = common global i32 0, align 4
@QP = common global i32 0, align 4
@QP2 = common global i32 0, align 4
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4
@str94 = private unnamed_addr constant [80 x i8] c"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D\00"
@str95 = private unnamed_addr constant [80 x i8] c"-------------------------------------------------------------------------------\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  store i32 -1, i32* @p_in, align 4, !tbaa !0
  store i32 -1, i32* @p_dec, align 4, !tbaa !0
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_trace, align 8, !tbaa !3
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_log, align 8, !tbaa !3
  store %struct._IO_FILE* null, %struct._IO_FILE** @p_stat, align 8, !tbaa !3
  store i32 1, i32* @frame_statistic_start, align 4, !tbaa !0
  tail call void @Configure(i32 %argc, i8** %argv) #6
  tail call void @Init_QMatrix() #6
  tail call void (...)* @Init_QOffsetMatrix() #6
  tail call void (...)* @AllocNalPayloadBuffer() #6
  tail call void @init_poc() #7
  tail call void (...)* @GenerateParameterSets() #6
  tail call void @init_img() #7
  %call = tail call %struct.Picture* @malloc_picture() #7
  store %struct.Picture* %call, %struct.Picture** @frame_pic, align 8, !tbaa !3
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 49
  %1 = load i32* %RDPictureDecision, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.Picture* @malloc_picture() #7
  store %struct.Picture* %call1, %struct.Picture** @frame_pic2, align 8, !tbaa !3
  %call2 = tail call %struct.Picture* @malloc_picture() #7
  store %struct.Picture* %call2, %struct.Picture** @frame_pic3, align 8, !tbaa !3
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.InputParameters* [ %0, %entry ], [ %.pre, %if.then ]
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 91
  %3 = load i32* %PicInterlace, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.Picture* @malloc_picture() #7
  store %struct.Picture* %call4, %struct.Picture** @top_pic, align 8, !tbaa !3
  %call5 = tail call %struct.Picture* @malloc_picture() #7
  store %struct.Picture* %call5, %struct.Picture** @bottom_pic, align 8, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then3
  tail call void (...)* @init_rdopt() #6
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 55
  %5 = load i32* %PyramidCoding, align 4, !tbaa !0
  %tobool7 = icmp eq i32 %5, 0
  br i1 %tobool7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void (...)* @init_gop_structure() #6
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PyramidCoding9 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 55
  %7 = load i32* %PyramidCoding9, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %7, 3
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  tail call void (...)* @interpret_gop_structure() #6
  br label %if.end13

if.else:                                          ; preds = %if.then8
  tail call void (...)* @create_pyramid() #6
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %if.then11, %if.else
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !3
  tail call void (%struct.InputParameters*, ...)* bitcast (void (...)* @init_dpb to void (%struct.InputParameters*, ...)*)(%struct.InputParameters* %8) #6
  tail call void (...)* @init_out_buffer() #6
  store %struct.storable_picture* null, %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !3
  store %struct.storable_picture* null, %struct.storable_picture** @enc_top_picture, align 8, !tbaa !3
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8, !tbaa !3
  store %struct.storable_picture* null, %struct.storable_picture** @enc_picture, align 8, !tbaa !3
  %call14 = tail call i32 @init_global_buffers() #7
  tail call void (...)* @create_context_memory() #6
  tail call void (...)* @Init_Motion_Search_Module() #6
  tail call void @information_init() #7
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %RCEnable = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 127
  %10 = load i32* %RCEnable, align 4, !tbaa !0
  %tobool15 = icmp eq i32 %10, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call void (...)* @rc_init_seq() #6
  %.pre322 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then16
  %11 = phi %struct.InputParameters* [ %9, %if.end13 ], [ %.pre322, %if.then16 ]
  %FMEnable = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 134
  %12 = load i32* %FMEnable, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %12, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  tail call void (...)* @DefineThreshold() #6
  %.pre323 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.then19
  %13 = phi %struct.InputParameters* [ %11, %if.end17 ], [ %.pre323, %if.then19 ]
  store i32 0, i32* @Iframe_ctr, align 4, !tbaa !0
  store i32 0, i32* @Pframe_ctr, align 4, !tbaa !0
  store i32 0, i32* @Bframe_ctr, align 4, !tbaa !0
  store i32 0, i32* @tot_time, align 4, !tbaa !0
  %last_frame = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 79
  %14 = load i32* %last_frame, align 4, !tbaa !0
  %cmp21 = icmp sgt i32 %14, 0
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end20
  %jumpd = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 5
  %15 = load i32* %jumpd, align 4, !tbaa !0
  %add = add nsw i32 %15, %14
  %add25 = add nsw i32 %15, 1
  %div = sdiv i32 %add, %add25
  %add26 = add nsw i32 %div, 1
  %no_frames = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 2
  store i32 %add26, i32* %no_frames, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 34
  %16 = load i32* %successive_Bframe, align 4, !tbaa !0
  store i32 %16, i32* @initial_Bframes, align 4, !tbaa !0
  tail call void (...)* @PatchInputNoFrames() #6
  %17 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %17, i64 0, i32 32
  store i32 0, i32* %bit_ctr_parametersets, align 4, !tbaa !0
  %call28 = tail call i32 (...)* @start_sequence() #6
  %18 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bit_slice = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 6
  store i32 %call28, i32* %bit_slice, align 4, !tbaa !0
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 33
  %19 = load i32* %bit_ctr_parametersets_n, align 4, !tbaa !0
  %bit_ctr_parametersets29 = getelementptr inbounds %struct.StatParameters* %18, i64 0, i32 32
  %20 = load i32* %bit_ctr_parametersets29, align 4, !tbaa !0
  %add30 = add nsw i32 %20, %19
  store i32 %add30, i32* %bit_ctr_parametersets29, align 4, !tbaa !0
  store i32 0, i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 0
  store i32 0, i32* %number, align 4, !tbaa !0
  %22 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %no_frames32320 = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 2
  %23 = load i32* %no_frames32320, align 4, !tbaa !0
  %cmp33321 = icmp sgt i32 %23, 0
  br i1 %cmp33321, label %for.body, label %for.end

for.body:                                         ; preds = %if.end27, %if.end273
  %24 = phi i32 [ %inc286, %if.end273 ], [ 0, %if.end27 ]
  %25 = phi %struct.InputParameters* [ %83, %if.end273 ], [ %22, %if.end27 ]
  %26 = phi %struct.ImageParameters* [ %81, %if.end273 ], [ %21, %if.end27 ]
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 113
  store i32 1, i32* %nal_reference_idc, align 4, !tbaa !0
  %intra_period = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 31
  %27 = load i32* %intra_period, align 4, !tbaa !0
  %tobool34 = icmp eq i32 %27, 0
  br i1 %tobool34, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %idr_enable = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32
  %28 = load i32* %idr_enable, align 4, !tbaa !0
  %tobool35 = icmp eq i32 %28, 0
  br i1 %tobool35, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %29 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub = sub nsw i32 %24, %29
  %rem = srem i32 %sub, %27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %30 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub39 = sub nsw i32 %24, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem, %cond.true ], [ %sub39, %cond.false ]
  %jumpd40 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 5
  %31 = load i32* %jumpd40, align 4, !tbaa !0
  %add41 = shl i32 %31, 1
  %mul = add i32 %add41, 2
  %mul42 = mul nsw i32 %mul, %cond
  %toppoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 101
  store i32 %mul42, i32* %toppoc, align 4, !tbaa !0
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 91
  %32 = load i32* %PicInterlace43, align 4, !tbaa !0
  %cmp44 = icmp eq i32 %32, 0
  br i1 %cmp44, label %land.lhs.true45, label %if.else49

land.lhs.true45:                                  ; preds = %cond.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 92
  %33 = load i32* %MbInterlace, align 4, !tbaa !0
  %cmp46 = icmp eq i32 %33, 0
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %land.lhs.true45
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 102
  store i32 %mul42, i32* %bottompoc, align 4, !tbaa !0
  br label %if.end53

if.else49:                                        ; preds = %land.lhs.true45, %cond.end
  %add51326 = or i32 %mul42, 1
  %bottompoc52 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 102
  store i32 %add51326, i32* %bottompoc52, align 4, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then47
  %34 = phi i32 [ %add51326, %if.else49 ], [ %mul42, %if.then47 ]
  %cmp56 = icmp slt i32 %mul42, %34
  %. = select i1 %cmp56, i32 %mul42, i32 %34
  %framepoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 103
  store i32 %., i32* %framepoc, align 4, !tbaa !0
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 54
  %35 = load i32* %BRefPictures, align 4, !tbaa !0
  %cmp63 = icmp eq i32 %35, 0
  br i1 %cmp63, label %land.lhs.true64, label %lor.lhs.false

land.lhs.true64:                                  ; preds = %if.end53
  %PyramidCoding65 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 55
  %36 = load i32* %PyramidCoding65, align 4, !tbaa !0
  %cmp66 = icmp eq i32 %36, 0
  br i1 %cmp66, label %if.then72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true64, %if.end53
  %successive_Bframe67 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 34
  %37 = load i32* %successive_Bframe67, align 4, !tbaa !0
  %cmp68 = icmp eq i32 %37, 0
  %cmp71 = icmp slt i32 %24, 2
  %or.cond = or i1 %cmp68, %cmp71
  br i1 %or.cond, label %if.then72, label %if.else90

if.then72:                                        ; preds = %lor.lhs.false, %land.lhs.true64
  %38 = load i32* %intra_period, align 4, !tbaa !0
  %tobool74 = icmp eq i32 %38, 0
  br i1 %tobool74, label %cond.false83, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %if.then72
  %idr_enable76 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32
  %39 = load i32* %idr_enable76, align 4, !tbaa !0
  %tobool77 = icmp eq i32 %39, 0
  br i1 %tobool77, label %cond.false83, label %cond.true78

cond.true78:                                      ; preds = %land.lhs.true75
  %40 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub80 = sub nsw i32 %24, %40
  %rem82 = srem i32 %sub80, %38
  br label %cond.end86

cond.false83:                                     ; preds = %land.lhs.true75, %if.then72
  %41 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub85 = sub nsw i32 %24, %41
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false83, %cond.true78
  %cond87 = phi i32 [ %rem82, %cond.true78 ], [ %sub85, %cond.false83 ]
  %42 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !0
  %add88 = add i32 %42, 4
  %shl = shl nuw i32 1, %add88
  %rem89 = srem i32 %cond87, %shl
  %frame_num = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 105
  store i32 %rem89, i32* %frame_num, align 4, !tbaa !0
  br label %if.end110

if.else90:                                        ; preds = %lor.lhs.false
  %frame_num91 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 105
  %43 = load i32* %frame_num91, align 4, !tbaa !0
  %inc = add i32 %43, 1
  store i32 %inc, i32* %frame_num91, align 4, !tbaa !0
  %44 = load i32* %intra_period, align 4, !tbaa !0
  %tobool93 = icmp eq i32 %44, 0
  br i1 %tobool93, label %if.end105, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.else90
  %idr_enable95 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 32
  %45 = load i32* %idr_enable95, align 4, !tbaa !0
  %tobool96 = icmp eq i32 %45, 0
  br i1 %tobool96, label %if.end105, label %if.then97

if.then97:                                        ; preds = %land.lhs.true94
  %rem100 = srem i32 %24, %44
  %cmp101 = icmp eq i32 %rem100, 0
  br i1 %cmp101, label %if.then102, label %if.end105

if.then102:                                       ; preds = %if.then97
  store i32 0, i32* %frame_num91, align 4, !tbaa !0
  br label %if.end105

if.end105:                                        ; preds = %if.then97, %land.lhs.true94, %if.else90, %if.then102
  %46 = phi i32 [ %inc, %land.lhs.true94 ], [ %inc, %if.else90 ], [ 0, %if.then102 ], [ %inc, %if.then97 ]
  %47 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !0
  %add106 = add i32 %47, 4
  %shl107 = shl nuw i32 1, %add106
  %48 = add i32 %shl107, -1
  %rem109 = and i32 %48, %46
  store i32 %rem109, i32* %frame_num91, align 4, !tbaa !0
  br label %if.end110

if.end110:                                        ; preds = %if.end105, %cond.end86
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 99, i64 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  %49 = load i32* %BRefPictures, align 4, !tbaa !0
  %tobool112 = icmp eq i32 %49, 0
  %tobool115 = icmp eq i32 %24, 0
  %or.cond327 = or i1 %tobool112, %tobool115
  br i1 %or.cond327, label %if.end122, label %if.then116

if.then116:                                       ; preds = %if.end110
  %successive_Bframe117 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 34
  %50 = load i32* %successive_Bframe117, align 4, !tbaa !0
  %mul118 = shl nsw i32 %50, 1
  store i32 %mul118, i32* %arrayidx, align 4, !tbaa !0
  br label %if.end122

if.end122:                                        ; preds = %if.end110, %if.then116
  tail call void @SetImgType() #7
  %51 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe123 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 34
  %52 = load i32* %successive_Bframe123, align 4, !tbaa !0
  %tobool124 = icmp eq i32 %52, 0
  br i1 %tobool124, label %if.end167, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %if.end122
  %last_frame126 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 79
  %53 = load i32* %last_frame126, align 4, !tbaa !0
  %tobool127 = icmp eq i32 %53, 0
  br i1 %tobool127, label %if.end167, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %land.lhs.true125
  %54 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number129 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 0
  %55 = load i32* %number129, align 4, !tbaa !0
  %56 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub130 = add i32 %55, 1
  %add131 = sub i32 %sub130, %56
  %no_frames132 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2
  %57 = load i32* %no_frames132, align 4, !tbaa !0
  %cmp133 = icmp eq i32 %add131, %57
  br i1 %cmp133, label %if.then134, label %if.end167

if.then134:                                       ; preds = %land.lhs.true128
  %jumpd135 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 5
  %58 = load i32* %jumpd135, align 4, !tbaa !0
  %add136 = add nsw i32 %58, 1
  %conv = sitofp i32 %add136 to float
  %conv137 = fpext float %conv to double
  %conv139 = sitofp i32 %52 to double
  %add140 = fadd double %conv139, 1.000000e+00
  %div141 = fdiv double %conv137, %add140
  %add142 = fadd double %div141, 4.999990e-01
  %conv143 = fptosi double %add142 to i32
  %sub146 = add nsw i32 %55, -1
  %mul149 = mul nsw i32 %add136, %sub146
  %sub150 = sub nsw i32 %53, %mul149
  %div151 = sdiv i32 %sub150, %conv143
  %sub152 = add nsw i32 %div151, -1
  store i32 %sub152, i32* %successive_Bframe123, align 4, !tbaa !0
  %59 = load i32* @initial_Bframes, align 4, !tbaa !0
  %suba = sub i32 %sub152, %59
  %mul156 = shl i32 %suba, 1
  %arrayidx158 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 99, i64 0
  store i32 %mul156, i32* %arrayidx158, align 4, !tbaa !0
  %toppoc161 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 101
  %60 = load i32* %toppoc161, align 4, !tbaa !0
  %add162 = add nsw i32 %60, %mul156
  store i32 %add162, i32* %toppoc161, align 4, !tbaa !0
  %bottompoc165 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 102
  %61 = load i32* %bottompoc165, align 4, !tbaa !0
  %add166 = add nsw i32 %61, %mul156
  store i32 %add166, i32* %bottompoc165, align 4, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %land.lhs.true125, %if.end122, %if.then134, %land.lhs.true128
  %62 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %62, i64 0, i32 6
  %63 = load i32* %type, align 4, !tbaa !0
  %cmp168 = icmp eq i32 %63, 2
  br i1 %cmp168, label %if.then170, label %if.end259

if.then170:                                       ; preds = %if.end167
  %RCEnable171 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 127
  %64 = load i32* %RCEnable171, align 4, !tbaa !0
  %tobool172 = icmp eq i32 %64, 0
  br i1 %tobool172, label %if.end259, label %if.then173

if.then173:                                       ; preds = %if.then170
  %intra_period174 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 31
  %65 = load i32* %intra_period174, align 4, !tbaa !0
  %cmp175 = icmp eq i32 %65, 0
  br i1 %cmp175, label %if.then177, label %if.else190

if.then177:                                       ; preds = %if.then173
  %no_frames178 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2
  %66 = load i32* %no_frames178, align 4, !tbaa !0
  %sub180 = add nsw i32 %66, -1
  %67 = load i32* %successive_Bframe123, align 4, !tbaa !0
  %mul182 = mul nsw i32 %sub180, %67
  br label %if.end257

if.else190:                                       ; preds = %if.then173
  %68 = load i32* %successive_Bframe123, align 4, !tbaa !0
  %add193 = add nsw i32 %68, 1
  %mul194 = mul nsw i32 %add193, %65
  %number197 = getelementptr inbounds %struct.ImageParameters* %62, i64 0, i32 0
  %69 = load i32* %number197, align 4, !tbaa !0
  %cmp198 = icmp eq i32 %69, 0
  %sub202 = select i1 %cmp198, i32 %68, i32 0
  %sub202.mul194 = sub nsw i32 %mul194, %sub202
  %div208 = sdiv i32 %69, %65
  %no_frames209 = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 2
  %70 = load i32* %no_frames209, align 4, !tbaa !0
  %div211 = sdiv i32 %70, %65
  %cmp212 = icmp slt i32 %div208, %div211
  br i1 %cmp212, label %if.end239, label %if.then214

if.then214:                                       ; preds = %if.else190
  br i1 %cmp198, label %if.else231, label %if.then218

if.then218:                                       ; preds = %if.then214
  %sub221 = sub nsw i32 %70, %69
  %sub225 = add nsw i32 %sub221, -1
  %mul227 = mul nsw i32 %sub225, %68
  %add228 = add i32 %sub221, %68
  %add230 = add i32 %add228, %mul227
  br label %if.end239

if.else231:                                       ; preds = %if.then214
  %sub234 = add nsw i32 %70, -1
  %mul236 = mul nsw i32 %sub234, %68
  %add237 = add nsw i32 %mul236, %70
  br label %if.end239

if.end239:                                        ; preds = %if.else190, %if.then218, %if.else231
  %n.0 = phi i32 [ %add230, %if.then218 ], [ %add237, %if.else231 ], [ %sub202.mul194, %if.else190 ]
  %mul245 = zext i1 %cmp198 to i32
  %mul245.pn = shl nsw i32 %68, %mul245
  %add246.pn = add nsw i32 %mul245.pn, %n.0
  %np.0.in = sdiv i32 %add246.pn, %add193
  %np.0 = add nsw i32 %np.0.in, -1
  %np.0.neg = sub i32 1, %np.0.in
  %sub255 = add i32 %n.0, -1
  %sub256 = add i32 %sub255, %np.0.neg
  br label %if.end257

if.end257:                                        ; preds = %if.end239, %if.then177
  %np.1 = phi i32 [ %sub180, %if.then177 ], [ %np.0, %if.end239 ]
  %nb.0 = phi i32 [ %mul182, %if.then177 ], [ %sub256, %if.end239 ]
  tail call void @rc_init_GOP(i32 %np.1, i32 %nb.0) #6
  %.pre324 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %.pre325 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end259

if.end259:                                        ; preds = %if.then170, %if.end167, %if.end257
  %71 = phi %struct.InputParameters* [ %.pre325, %if.end257 ], [ %51, %if.end167 ], [ %51, %if.then170 ]
  %72 = phi %struct.ImageParameters* [ %.pre324, %if.end257 ], [ %62, %if.end167 ], [ %62, %if.then170 ]
  %number260 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 0
  %73 = load i32* %number260, align 4, !tbaa !0
  %74 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub261 = sub nsw i32 %73, %74
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 99
  %75 = load i32* %NumFramesInELSubSeq, align 4, !tbaa !0
  %add262 = add nsw i32 %75, 1
  %rem263 = srem i32 %sub261, %add262
  %layer = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 86
  %not.cmp264 = icmp ne i32 %rem263, 0
  %.317 = zext i1 %not.cmp264 to i32
  store i32 %.317, i32* %layer, align 4, !tbaa !0
  %call270 = tail call i32 (...)* @encode_one_frame() #6
  %76 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %76, i64 0, i32 125
  %77 = load i32* %ReportFrameStats, align 4, !tbaa !0
  %tobool271 = icmp eq i32 %77, 0
  br i1 %tobool271, label %if.end273, label %if.then272

if.then272:                                       ; preds = %if.end259
  tail call void @report_frame_statistic() #7
  br label %if.end273

if.end273:                                        ; preds = %if.end259, %if.then272
  %78 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %nb_references = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 2
  %79 = load i32* %nb_references, align 4, !tbaa !0
  %add274 = add nsw i32 %79, 1
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 84
  %80 = load i32* %buf_cycle, align 4, !tbaa !0
  %cmp276 = icmp slt i32 %add274, %80
  %.318 = select i1 %cmp276, i32 %add274, i32 %80
  store i32 %.318, i32* %nb_references, align 4, !tbaa !0
  tail call void (...)* @encode_enhancement_layer() #6
  tail call void @process_2nd_IGOP() #7
  %81 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number285 = getelementptr inbounds %struct.ImageParameters* %81, i64 0, i32 0
  %82 = load i32* %number285, align 4, !tbaa !0
  %inc286 = add nsw i32 %82, 1
  store i32 %inc286, i32* %number285, align 4, !tbaa !0
  %83 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %no_frames32 = getelementptr inbounds %struct.InputParameters* %83, i64 0, i32 2
  %84 = load i32* %no_frames32, align 4, !tbaa !0
  %cmp33 = icmp slt i32 %inc286, %84
  br i1 %cmp33, label %for.body, label %for.end

for.end:                                          ; preds = %if.end273, %if.end27
  %call287 = tail call i32 (...)* @terminate_sequence() #6
  tail call void (...)* @flush_dpb() #6
  %85 = load i32* @p_in, align 4, !tbaa !0
  %call288 = tail call i32 @close(i32 %85) #6
  %86 = load i32* @p_dec, align 4, !tbaa !0
  %cmp289 = icmp eq i32 %86, -1
  br i1 %cmp289, label %if.end293, label %if.then291

if.then291:                                       ; preds = %for.end
  %call292 = tail call i32 @close(i32 %86) #6
  br label %if.end293

if.end293:                                        ; preds = %for.end, %if.then291
  %87 = load %struct._IO_FILE** @p_trace, align 8, !tbaa !3
  %tobool294 = icmp eq %struct._IO_FILE* %87, null
  br i1 %tobool294, label %if.end297, label %if.then295

if.then295:                                       ; preds = %if.end293
  %call296 = tail call i32 @fclose(%struct._IO_FILE* %87) #6
  br label %if.end297

if.end297:                                        ; preds = %if.end293, %if.then295
  tail call void (...)* @Clear_Motion_Search_Module() #6
  tail call void (...)* @RandomIntraUninit() #6
  tail call void (...)* @FmoUninit() #6
  %88 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PyramidCoding298 = getelementptr inbounds %struct.InputParameters* %88, i64 0, i32 55
  %89 = load i32* %PyramidCoding298, align 4, !tbaa !0
  %tobool299 = icmp eq i32 %89, 0
  br i1 %tobool299, label %if.end301, label %if.then300

if.then300:                                       ; preds = %if.end297
  tail call void (...)* @clear_gop_structure() #6
  br label %if.end301

if.end301:                                        ; preds = %if.end297, %if.then300
  tail call void (...)* @clear_rdopt() #6
  tail call void (...)* @calc_buffer() #6
  tail call void @report() #7
  %90 = load %struct.Picture** @frame_pic, align 8, !tbaa !3
  tail call void @free_picture(%struct.Picture* %90) #7
  %91 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %RDPictureDecision302 = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 49
  %92 = load i32* %RDPictureDecision302, align 4, !tbaa !0
  %tobool303 = icmp eq i32 %92, 0
  br i1 %tobool303, label %if.end305, label %if.then304

if.then304:                                       ; preds = %if.end301
  %93 = load %struct.Picture** @frame_pic2, align 8, !tbaa !3
  tail call void @free_picture(%struct.Picture* %93) #7
  %94 = load %struct.Picture** @frame_pic3, align 8, !tbaa !3
  tail call void @free_picture(%struct.Picture* %94) #7
  br label %if.end305

if.end305:                                        ; preds = %if.end301, %if.then304
  %95 = load %struct.Picture** @top_pic, align 8, !tbaa !3
  %tobool306 = icmp eq %struct.Picture* %95, null
  br i1 %tobool306, label %if.end308, label %if.then307

if.then307:                                       ; preds = %if.end305
  tail call void @free_picture(%struct.Picture* %95) #7
  br label %if.end308

if.end308:                                        ; preds = %if.end305, %if.then307
  %96 = load %struct.Picture** @bottom_pic, align 8, !tbaa !3
  %tobool309 = icmp eq %struct.Picture* %96, null
  br i1 %tobool309, label %if.end311, label %if.then310

if.then310:                                       ; preds = %if.end308
  tail call void @free_picture(%struct.Picture* %96) #7
  br label %if.end311

if.end311:                                        ; preds = %if.end308, %if.then310
  tail call void (...)* @free_dpb() #6
  %97 = load %struct.colocated_params** @Co_located, align 8, !tbaa !3
  tail call void @free_colocated(%struct.colocated_params* %97) #6
  tail call void (...)* @uninit_out_buffer() #6
  tail call void @free_global_buffers() #7
  tail call void @free_img() #7
  tail call void (...)* @free_context_memory() #6
  tail call void (...)* @FreeNalPayloadBuffer() #6
  tail call void (...)* @FreeParameterSets() #6
  ret i32 0
}

; Function Attrs: optsize
declare void @Configure(i32, i8**) #1

; Function Attrs: optsize
declare void @Init_QMatrix() #1

; Function Attrs: optsize
declare void @Init_QOffsetMatrix(...) #1

; Function Attrs: optsize
declare void @AllocNalPayloadBuffer(...) #1

; Function Attrs: optsize
declare void @GenerateParameterSets(...) #1

; Function Attrs: optsize
declare void @init_rdopt(...) #1

; Function Attrs: optsize
declare void @init_gop_structure(...) #1

; Function Attrs: optsize
declare void @interpret_gop_structure(...) #1

; Function Attrs: optsize
declare void @create_pyramid(...) #1

; Function Attrs: optsize
declare void @init_dpb(...) #1

; Function Attrs: optsize
declare void @init_out_buffer(...) #1

; Function Attrs: optsize
declare void @create_context_memory(...) #1

; Function Attrs: optsize
declare void @Init_Motion_Search_Module(...) #1

; Function Attrs: optsize
declare void @rc_init_seq(...) #1

; Function Attrs: optsize
declare void @DefineThreshold(...) #1

; Function Attrs: optsize
declare void @PatchInputNoFrames(...) #1

; Function Attrs: optsize
declare i32 @start_sequence(...) #1

; Function Attrs: optsize
declare void @rc_init_GOP(i32, i32) #1

; Function Attrs: optsize
declare i32 @encode_one_frame(...) #1

; Function Attrs: optsize
declare void @encode_enhancement_layer(...) #1

; Function Attrs: optsize
declare i32 @terminate_sequence(...) #1

; Function Attrs: optsize
declare void @flush_dpb(...) #1

; Function Attrs: optsize
declare i32 @close(i32) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Clear_Motion_Search_Module(...) #1

; Function Attrs: optsize
declare void @RandomIntraUninit(...) #1

; Function Attrs: optsize
declare void @FmoUninit(...) #1

; Function Attrs: optsize
declare void @clear_gop_structure(...) #1

; Function Attrs: optsize
declare void @clear_rdopt(...) #1

; Function Attrs: optsize
declare void @calc_buffer(...) #1

; Function Attrs: nounwind optsize uwtable
define void @free_picture(%struct.Picture* %pic) #0 {
entry:
  %cmp = icmp eq %struct.Picture* %pic, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free_slice_list(%struct.Picture* %pic) #6
  %0 = bitcast %struct.Picture* %pic to i8*
  tail call void @free(i8* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @free_dpb(...) #1

; Function Attrs: optsize
declare void @free_colocated(%struct.colocated_params*) #1

; Function Attrs: optsize
declare void @uninit_out_buffer(...) #1

; Function Attrs: optsize
declare void @free_context_memory(...) #1

; Function Attrs: optsize
declare void @FreeNalPayloadBuffer(...) #1

; Function Attrs: optsize
declare void @FreeParameterSets(...) #1

; Function Attrs: nounwind optsize uwtable
define void @report_stats_on_error() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0
  %1 = load i32* %number, align 4, !tbaa !0
  %sub = add nsw i32 %1, -1
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %no_frames = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 2
  store i32 %sub, i32* %no_frames, align 4, !tbaa !0
  %call = tail call i32 (...)* @terminate_sequence() #6
  tail call void (...)* @flush_dpb() #6
  %3 = load i32* @p_in, align 4, !tbaa !0
  %call1 = tail call i32 @close(i32 %3) #6
  %4 = load i32* @p_dec, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @close(i32 %4) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct._IO_FILE** @p_trace, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fclose(%struct._IO_FILE* %5) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  tail call void (...)* @Clear_Motion_Search_Module() #6
  tail call void (...)* @RandomIntraUninit() #6
  tail call void (...)* @FmoUninit() #6
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 55
  %7 = load i32* %PyramidCoding, align 4, !tbaa !0
  %tobool6 = icmp eq i32 %7, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void (...)* @clear_gop_structure() #6
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %if.then7
  tail call void (...)* @clear_rdopt() #6
  tail call void (...)* @calc_buffer() #6
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 125
  %9 = load i32* %ReportFrameStats, align 4, !tbaa !0
  %tobool9 = icmp eq i32 %9, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @report_frame_statistic() #7
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then10
  tail call void @report() #7
  %10 = load %struct.Picture** @frame_pic, align 8, !tbaa !3
  tail call void @free_picture(%struct.Picture* %10) #7
  %11 = load %struct.Picture** @top_pic, align 8, !tbaa !3
  %tobool12 = icmp eq %struct.Picture* %11, null
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  tail call void @free_picture(%struct.Picture* %11) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.then13
  %12 = load %struct.Picture** @bottom_pic, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.Picture* %12, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  tail call void @free_picture(%struct.Picture* %12) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.then16
  tail call void (...)* @free_dpb() #6
  %13 = load %struct.colocated_params** @Co_located, align 8, !tbaa !3
  tail call void @free_colocated(%struct.colocated_params* %13) #6
  tail call void (...)* @uninit_out_buffer() #6
  tail call void @free_global_buffers() #7
  tail call void @free_img() #7
  tail call void (...)* @free_context_memory() #6
  tail call void (...)* @FreeNalPayloadBuffer() #6
  tail call void (...)* @FreeParameterSets() #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_poc() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 120
  %1 = load i32* %pic_order_cnt_type, align 4, !tbaa !0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %pic_order_cnt_type1 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 91
  store i32 %1, i32* %pic_order_cnt_type1, align 4, !tbaa !0
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 92
  store i32 0, i32* %delta_pic_order_always_zero_flag, align 4, !tbaa !0
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 95
  store i32 1, i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !tbaa !0
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 54
  %3 = load i32* %BRefPictures, align 4, !tbaa !0
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 93
  store i32 0, i32* %offset_for_non_ref_pic, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 96, i64 0
  store i32 2, i32* %arrayidx, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %4 = load i32* %successive_Bframe, align 4, !tbaa !0
  %mul = mul nsw i32 %4, -2
  %offset_for_non_ref_pic2 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 93
  store i32 %mul, i32* %offset_for_non_ref_pic2, align 4, !tbaa !0
  %5 = load i32* %successive_Bframe, align 4, !tbaa !0
  %add = shl i32 %5, 1
  %mul4 = add i32 %add, 2
  %arrayidx6 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 96, i64 0
  store i32 %mul4, i32* %arrayidx6, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91
  %6 = load i32* %PicInterlace, align 4, !tbaa !0
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.else9

land.lhs.true:                                    ; preds = %if.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92
  %7 = load i32* %MbInterlace, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %land.lhs.true
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 94
  store i32 0, i32* %offset_for_top_to_bottom_field, align 4, !tbaa !0
  br label %if.end11

if.else9:                                         ; preds = %land.lhs.true, %if.end
  %offset_for_top_to_bottom_field10 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 94
  store i32 1, i32* %offset_for_top_to_bottom_field10, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %8 = load i32* %PicInterlace, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.else18

land.lhs.true14:                                  ; preds = %if.end11
  %MbInterlace15 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92
  %9 = load i32* %MbInterlace15, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %land.lhs.true14
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 112
  store i32 0, i32* %pic_order_present_flag, align 4, !tbaa !0
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 98
  store i32 0, i32* %delta_pic_order_cnt_bottom, align 4, !tbaa !0
  br label %if.end21

if.else18:                                        ; preds = %land.lhs.true14, %if.end11
  %pic_order_present_flag19 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 112
  store i32 1, i32* %pic_order_present_flag19, align 4, !tbaa !0
  %delta_pic_order_cnt_bottom20 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 98
  store i32 1, i32* %delta_pic_order_cnt_bottom20, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CAVLC_init() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %PicSizeInMbs28 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110
  %1 = load i32* %PicSizeInMbs28, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %1, 0
  br i1 %cmp29, label %for.end16, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %num_blk8x8_uv23 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %.pre.pre = load i32* %num_blk8x8_uv23, align 4, !tbaa !0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc14
  %.pre = phi i32 [ %.pre.pre, %for.cond1.preheader.lr.ph ], [ %.pre35, %for.inc14 ]
  %i.030 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc15, %for.inc14 ]
  %idxprom8 = zext i32 %i.030 to i64
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond1.preheader
  %.pre34 = phi i32 [ %.pre, %for.cond1.preheader ], [ %.pre35, %for.inc11 ]
  %2 = phi i32 [ %.pre, %for.cond1.preheader ], [ %4, %for.inc11 ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc11 ]
  %cmp525 = icmp eq i32 %2, -4
  br i1 %cmp525, label %for.inc11, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %nz_coeff.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 28
  %.pre31 = load i32**** %nz_coeff.phi.trans.insert, align 8, !tbaa !3
  %arrayidx.phi.trans.insert = getelementptr inbounds i32*** %.pre31, i64 %idxprom8
  %.pre32 = load i32*** %arrayidx.phi.trans.insert, align 8, !tbaa !3
  %arrayidx9.phi.trans.insert = getelementptr inbounds i32** %.pre32, i64 %indvars.iv
  %.pre33 = load i32** %arrayidx9.phi.trans.insert, align 8, !tbaa !3
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %l.026 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.body6 ]
  %idxprom = zext i32 %l.026 to i64
  %arrayidx10 = getelementptr inbounds i32* %.pre33, i64 %idxprom
  store i32 0, i32* %arrayidx10, align 4, !tbaa !0
  %inc = add i32 %l.026, 1
  %3 = load i32* %num_blk8x8_uv23, align 4, !tbaa !0
  %add = add i32 %3, 4
  %cmp5 = icmp ult i32 %inc, %add
  br i1 %cmp5, label %for.body6, label %for.inc11

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader
  %.pre35 = phi i32 [ %.pre34, %for.cond4.preheader ], [ %3, %for.body6 ]
  %4 = phi i32 [ -4, %for.cond4.preheader ], [ %3, %for.body6 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader

for.inc14:                                        ; preds = %for.inc11
  %inc15 = add i32 %i.030, 1
  %5 = load i32* %PicSizeInMbs28, align 4, !tbaa !0
  %cmp = icmp ult i32 %inc15, %5
  br i1 %cmp, label %for.cond1.preheader, label %for.end16

for.end16:                                        ; preds = %for.inc14, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_img() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 18
  %1 = load i32* %yuv_format, align 4, !tbaa !0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format1 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 159
  store i32 %1, i32* %yuv_format1, align 4, !tbaa !0
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 135
  %3 = load i32* %BitDepthLuma, align 4, !tbaa !0
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 149
  store i32 %3, i32* %bitdepth_luma, align 4, !tbaa !0
  %bitdepth_chroma = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 150
  %4 = load i32* %bitdepth_chroma, align 4, !tbaa !0
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = phi i32 [ 0, %lor.lhs.false ], [ %1, %entry ]
  %cmp6 = icmp sgt i32 %3, 8
  %cond = select i1 %cmp6, i32 16, i32 8
  %pic_unit_size_on_disk = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 148
  store i32 %cond, i32* %pic_unit_size_on_disk, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %cmp8 = icmp sgt i32 %4, 8
  %cond9 = select i1 %cmp8, i32 16, i32 8
  %pic_unit_size_on_disk10 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 148
  store i32 %cond9, i32* %pic_unit_size_on_disk10, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = phi i32 [ %1, %if.else ], [ %5, %if.then ]
  %7 = mul i32 %3, 6
  %mul = add i32 %7, -48
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 151
  store i32 %mul, i32* %bitdepth_luma_qp_scale, align 4, !tbaa !0
  %sub13 = shl i32 %3, 1
  %mul14 = add i32 %sub13, -16
  %bitdepth_lambda_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 153
  store i32 %mul14, i32* %bitdepth_lambda_scale, align 4, !tbaa !0
  %sub16 = add nsw i32 %3, -1
  %shl = shl i32 1, %sub16
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 154
  store i32 %shl, i32* %dc_pred_value, align 4, !tbaa !0
  %shl18 = shl i32 1, %3
  %sub19 = add nsw i32 %shl18, -1
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 155
  store i32 %sub19, i32* %max_imgpel_value, align 4, !tbaa !0
  %cmp21 = icmp eq i32 %6, 0
  br i1 %cmp21, label %if.else51, label %if.then22

if.then22:                                        ; preds = %if.end
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 136
  %8 = load i32* %BitDepthChroma, align 4, !tbaa !0
  store i32 %8, i32* %bitdepth_chroma, align 4, !tbaa !0
  %shl25 = shl i32 1, %8
  %sub26 = add nsw i32 %shl25, -1
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 156
  store i32 %sub26, i32* %max_imgpel_value_uv, align 4, !tbaa !0
  %shl28 = shl i32 1, %6
  %and = and i32 %shl28, -2
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 157
  store i32 %and, i32* %num_blk8x8_uv, align 4, !tbaa !0
  %shl30 = shl i32 %and, 1
  %num_cdc_coeff = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 158
  store i32 %shl30, i32* %num_cdc_coeff, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %6, 1
  br i1 %cmp32, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %if.then22
  %mb_cr_size_x328 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161
  store i32 8, i32* %mb_cr_size_x328, align 4, !tbaa !0
  br label %lor.rhs38

lor.end:                                          ; preds = %if.then22
  %cmp34 = icmp eq i32 %6, 2
  %phitmp = select i1 %cmp34, i32 8, i32 16
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161
  store i32 %phitmp, i32* %mb_cr_size_x, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %6, 3
  br i1 %cmp37, label %lor.end41, label %lor.rhs38

lor.rhs38:                                        ; preds = %lor.end.thread, %lor.end
  %cmp40 = icmp eq i32 %6, 2
  %phitmp307 = select i1 %cmp40, i32 16, i32 8
  br label %lor.end41

lor.end41:                                        ; preds = %lor.rhs38, %lor.end
  %9 = phi i32 [ 16, %lor.end ], [ %phitmp307, %lor.rhs38 ]
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 162
  store i32 %9, i32* %mb_cr_size_y, align 4, !tbaa !0
  %10 = mul i32 %8, 6
  %mul45 = add i32 %10, -48
  %bitdepth_chroma_qp_scale = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 152
  store i32 %mul45, i32* %bitdepth_chroma_qp_scale, align 4, !tbaa !0
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 164
  %11 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool = icmp eq i32 %11, 0
  br i1 %tobool, label %if.end48, label %if.then46

if.then46:                                        ; preds = %lor.end41
  %add = add i32 %10, -42
  store i32 %add, i32* %bitdepth_chroma_qp_scale, align 4, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %lor.end41, %if.then46
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !3
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 24
  %13 = load i32* %cb_qp_index_offset, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 163, i64 0
  store i32 %13, i32* %arrayidx, align 4, !tbaa !0
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 25
  %14 = load i32* %cr_qp_index_offset, align 4, !tbaa !0
  %arrayidx50 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 163, i64 1
  store i32 %14, i32* %arrayidx50, align 4, !tbaa !0
  br label %if.end64

if.else51:                                        ; preds = %if.end
  store i32 0, i32* %bitdepth_chroma, align 4, !tbaa !0
  %max_imgpel_value_uv53 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 156
  store i32 0, i32* %max_imgpel_value_uv53, align 4, !tbaa !0
  %num_blk8x8_uv54 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 157
  store i32 0, i32* %num_blk8x8_uv54, align 4, !tbaa !0
  %num_cdc_coeff55 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 158
  store i32 0, i32* %num_cdc_coeff55, align 4, !tbaa !0
  %mb_cr_size_x56 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 161
  %bitdepth_chroma_qp_scale58 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 152
  store i32 0, i32* %bitdepth_chroma_qp_scale58, align 4, !tbaa !0
  %15 = bitcast i32* %mb_cr_size_x56 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 16, i32 4, i1 false)
  br label %if.end64

if.end64:                                         ; preds = %if.else51, %if.end48
  %16 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %16, i64 0, i32 21
  %17 = load i32* %num_ref_frames, align 4, !tbaa !0
  %num_ref_frames65 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 8
  store i32 %17, i32* %num_ref_frames65, align 4, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %16, i64 0, i32 25
  %18 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool66 = icmp eq i32 %18, 0
  %19 = load i32* %num_ref_frames, align 4, !tbaa !0
  %mul69 = zext i1 %tobool66 to i32
  %mul69. = shl i32 %19, %mul69
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 9
  store i32 %mul69., i32* %max_num_references, align 4, !tbaa !0
  %num_ref_frames71 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 9
  %20 = load i32* %num_ref_frames71, align 4, !tbaa !0
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 84
  store i32 %20, i32* %buf_cycle, align 4, !tbaa !0
  %DeblockCall = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 143
  store i32 0, i32* %DeblockCall, align 4, !tbaa !0
  %FrameRate = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 76
  %21 = load double* %FrameRate, align 8, !tbaa !4
  %conv = fptrunc double %21 to float
  %framerate = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 12
  store float %conv, float* %framerate, align 4, !tbaa !5
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 70
  %call = tail call i32 @get_mem_mv(i16******* %pred_mv) #7
  %22 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %all_mv = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 71
  %call72 = tail call i32 @get_mem_mv(i16******* %all_mv) #7
  %23 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %23, i64 0, i32 39
  %24 = load i32* %BiPredMotionEstimation, align 4, !tbaa !0
  %tobool73 = icmp eq i32 %24, 0
  br i1 %tobool73, label %if.end77, label %if.then74

if.then74:                                        ; preds = %if.end64
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 72
  %call75 = tail call i32 @get_mem_mv(i16******* %bipred_mv1) #7
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 73
  %call76 = tail call i32 @get_mem_mv(i16******* %bipred_mv2) #7
  br label %if.end77

if.end77:                                         ; preds = %if.end64, %if.then74
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 47
  %call78 = tail call i32 @get_mem_ACcoeff(i32***** %cofAC) #7
  %28 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofDC = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 48
  %call79 = tail call i32 @get_mem_DCcoeff(i32**** %cofDC) #7
  %29 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %29, i64 0, i32 92
  %30 = load i32* %MbInterlace, align 4, !tbaa !0
  %tobool80 = icmp eq i32 %30, 0
  br i1 %tobool80, label %if.end110, label %if.then81

if.then81:                                        ; preds = %if.end77
  %call82 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 15)) #7
  %call83 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 16)) #7
  %call84 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 15)) #7
  %call85 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 16)) #7
  %call86 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 15)) #7
  %call87 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 16)) #7
  %call88 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 15)) #7
  %call89 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 16)) #7
  %31 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %BiPredMotionEstimation90 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 39
  %32 = load i32* %BiPredMotionEstimation90, align 4, !tbaa !0
  %tobool91 = icmp eq i32 %32, 0
  br i1 %tobool91, label %if.end101, label %if.then92

if.then92:                                        ; preds = %if.then81
  %call93 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 17)) #7
  %call94 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 18)) #7
  %call95 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 17)) #7
  %call96 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 18)) #7
  %call97 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 17)) #7
  %call98 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 18)) #7
  %call99 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 17)) #7
  %call100 = tail call i32 @get_mem_mv(i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 18)) #7
  br label %if.end101

if.end101:                                        ; preds = %if.then81, %if.then92
  %call102 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 4)) #7
  %call103 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 5)) #7
  %call104 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 4)) #7
  %call105 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 5)) #7
  %call106 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 4)) #7
  %call107 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 5)) #7
  %call108 = tail call i32 @get_mem_ACcoeff(i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 4)) #7
  %call109 = tail call i32 @get_mem_DCcoeff(i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 5)) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end77, %if.end101
  %33 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_imgpel_value111 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 155
  %34 = load i32* %max_imgpel_value111, align 4, !tbaa !0
  %max_imgpel_value_uv112 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 156
  %35 = load i32* %max_imgpel_value_uv112, align 4, !tbaa !0
  %cmp113 = icmp sgt i32 %34, %35
  %. = select i1 %cmp113, i32 %34, i32 %35
  %byte_abs_range.0.in = shl i32 %., 1
  %byte_abs_range.0 = add i32 %byte_abs_range.0.in, 2
  %conv124 = sext i32 %byte_abs_range.0 to i64
  %call125 = tail call noalias i8* @calloc(i64 %conv124, i64 4) #6
  %36 = bitcast i8* %call125 to i32*
  %quad = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 53
  store i32* %36, i32** %quad, align 8, !tbaa !3
  %cmp126 = icmp eq i8* %call125, null
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end110
  tail call void @no_mem_exit(i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end110
  %div = sdiv i32 %byte_abs_range.0, 2
  %37 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %quad130 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 53
  %38 = load i32** %quad130, align 8, !tbaa !3
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i32* %38, i64 %idx.ext
  store i32* %add.ptr, i32** %quad130, align 8, !tbaa !3
  %cmp132316 = icmp sgt i32 %byte_abs_range.0, 1
  %39 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  br i1 %cmp132316, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end129
  %quad136 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 53
  %40 = load i32** %quad136, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv320 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next321, %for.body ]
  %41 = trunc i64 %indvars.iv320 to i32
  %mul134 = mul nsw i32 %41, %41
  %42 = sub nsw i64 0, %indvars.iv320
  %arrayidx137 = getelementptr inbounds i32* %40, i64 %42
  store i32 %mul134, i32* %arrayidx137, align 4, !tbaa !0
  %arrayidx140 = getelementptr inbounds i32* %40, i64 %indvars.iv320
  store i32 %mul134, i32* %arrayidx140, align 4, !tbaa !0
  %indvars.iv.next321 = add i64 %indvars.iv320, 1
  %43 = trunc i64 %indvars.iv.next321 to i32
  %cmp132 = icmp slt i32 %43, %div
  br i1 %cmp132, label %for.body, label %for.end

for.end:                                          ; preds = %if.end129, %for.body
  %44 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %img_width = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 16
  %45 = load i32* %img_width, align 4, !tbaa !0
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 165
  %46 = load i32* %auto_crop_right, align 4, !tbaa !0
  %add141 = add nsw i32 %46, %45
  %width = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 13
  store i32 %add141, i32* %width, align 4, !tbaa !0
  %img_height = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 17
  %47 = load i32* %img_height, align 4, !tbaa !0
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 166
  %48 = load i32* %auto_crop_bottom, align 4, !tbaa !0
  %add142 = add nsw i32 %48, %47
  %height = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 15
  store i32 %add142, i32* %height, align 4, !tbaa !0
  %yuv_format143 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 159
  %49 = load i32* %yuv_format143, align 4, !tbaa !0
  %cmp144 = icmp eq i32 %49, 0
  br i1 %cmp144, label %if.else171, label %if.then146

if.then146:                                       ; preds = %for.end
  %idxprom149 = sext i32 %49 to i64
  %arrayidx150 = getelementptr inbounds [4 x i32]* @init_img.mb_width_cr, i64 0, i64 %idxprom149
  %50 = load i32* %arrayidx150, align 4, !tbaa !0
  %div151 = sdiv i32 16, %50
  %div152 = sdiv i32 %add141, %div151
  %width_cr = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 14
  store i32 %div152, i32* %width_cr, align 4, !tbaa !0
  %arrayidx156 = getelementptr inbounds [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %idxprom149
  %51 = load i32* %arrayidx156, align 4, !tbaa !0
  %div157 = sdiv i32 16, %51
  %div158 = sdiv i32 %add142, %div157
  %height_cr = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16
  store i32 %div158, i32* %height_cr, align 4, !tbaa !0
  %52 = load i32* %img_width, align 4, !tbaa !0
  %div164 = sdiv i32 %52, %div151
  %img_width_cr = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 138
  store i32 %div164, i32* %img_width_cr, align 4, !tbaa !0
  %53 = load i32* %img_height, align 4, !tbaa !0
  %54 = load i32* %yuv_format143, align 4, !tbaa !0
  %idxprom167 = sext i32 %54 to i64
  %arrayidx168 = getelementptr inbounds [4 x i32]* @init_img.mb_height_cr, i64 0, i64 %idxprom167
  %55 = load i32* %arrayidx168, align 4, !tbaa !0
  %div169 = sdiv i32 16, %55
  %div170 = sdiv i32 %53, %div169
  %img_height_cr = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 137
  store i32 %div170, i32* %img_height_cr, align 4, !tbaa !0
  br label %if.end176

if.else171:                                       ; preds = %for.end
  %width_cr172 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 14
  store i32 0, i32* %width_cr172, align 4, !tbaa !0
  %height_cr173 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16
  store i32 0, i32* %height_cr173, align 4, !tbaa !0
  %img_width_cr174 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 138
  store i32 0, i32* %img_width_cr174, align 4, !tbaa !0
  %img_height_cr175 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 137
  store i32 0, i32* %img_height_cr175, align 4, !tbaa !0
  br label %if.end176

if.end176:                                        ; preds = %if.else171, %if.then146
  %height_cr177 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 16
  %56 = load i32* %height_cr177, align 4, !tbaa !0
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 17
  store i32 %56, i32* %height_cr_frame, align 4, !tbaa !0
  %57 = load i32* %img_width, align 4, !tbaa !0
  %58 = load i32* %auto_crop_right, align 4, !tbaa !0
  %add180 = add nsw i32 %58, %57
  %div181 = sdiv i32 %add180, 16
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 106
  store i32 %div181, i32* %PicWidthInMbs, align 4, !tbaa !0
  %59 = load i32* %img_height, align 4, !tbaa !0
  %60 = load i32* %auto_crop_bottom, align 4, !tbaa !0
  %add184 = add nsw i32 %60, %59
  %div185 = sdiv i32 %add184, 16
  %FrameHeightInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 108
  store i32 %div185, i32* %FrameHeightInMbs, align 4, !tbaa !0
  %mul188 = mul i32 %div185, %div181
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 111
  store i32 %mul188, i32* %FrameSizeInMbs, align 4, !tbaa !0
  %61 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag189 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %61, i64 0, i32 25
  %62 = load i32* %frame_mbs_only_flag189, align 4, !tbaa !1
  %tobool190 = icmp eq i32 %62, 0
  %div195 = zext i1 %tobool190 to i32
  %div195. = lshr i32 %div185, %div195
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 107
  store i32 %div195., i32* %PicHeightInMapUnits, align 4, !tbaa !0
  %conv199 = zext i32 %mul188 to i64
  %call200 = tail call noalias i8* @calloc(i64 %conv199, i64 632) #6
  %63 = bitcast i8* %call200 to %struct.macroblock*
  %mb_data = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 51
  store %struct.macroblock* %63, %struct.macroblock** %mb_data, align 8, !tbaa !3
  %cmp201 = icmp eq i8* %call200, null
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.end176
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #6
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %if.end176
  %64 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %64, i64 0, i32 24
  %65 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !0
  %tobool205 = icmp eq i32 %65, 0
  br i1 %tobool205, label %if.end214, label %if.then206

if.then206:                                       ; preds = %if.end204
  %66 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %FrameSizeInMbs207 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 111
  %67 = load i32* %FrameSizeInMbs207, align 4, !tbaa !0
  %conv208 = zext i32 %67 to i64
  %call209 = tail call noalias i8* @calloc(i64 %conv208, i64 4) #6
  %68 = bitcast i8* %call209 to i32*
  %intra_block = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 54
  store i32* %68, i32** %intra_block, align 8, !tbaa !3
  %cmp210 = icmp eq i8* %call209, null
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.then206
  tail call void @no_mem_exit(i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0)) #6
  br label %if.end214

if.end214:                                        ; preds = %if.end204, %if.then206, %if.then212
  %69 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 25
  %width215 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 13
  %70 = load i32* %width215, align 4, !tbaa !0
  %div216 = sdiv i32 %70, 4
  %height217 = getelementptr inbounds %struct.ImageParameters* %69, i64 0, i32 15
  %71 = load i32* %height217, align 4, !tbaa !0
  %div218 = sdiv i32 %71, 4
  %call219 = tail call i32 @get_mem2Dint(i32*** %ipredmode, i32 %div216, i32 %div218) #6
  %72 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 26
  %width220 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 13
  %73 = load i32* %width220, align 4, !tbaa !0
  %div221 = sdiv i32 %73, 4
  %height222 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 15
  %74 = load i32* %height222, align 4, !tbaa !0
  %div223 = sdiv i32 %74, 4
  %call224 = tail call i32 @get_mem2Dint(i32*** %ipredmode8x8, i32 %div221, i32 %div223) #6
  %75 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width225 = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 13
  %76 = load i32* %width225, align 4, !tbaa !0
  %div226 = sdiv i32 %76, 4
  %height227 = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 15
  %77 = load i32* %height227, align 4, !tbaa !0
  %div228 = sdiv i32 %77, 4
  %call229 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 10), i32 %div226, i32 %div228) #6
  %78 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters* %78, i64 0, i32 92
  %79 = load i32* %MbInterlace230, align 4, !tbaa !0
  %tobool231 = icmp eq i32 %79, 0
  br i1 %tobool231, label %if.end248, label %if.then232

if.then232:                                       ; preds = %if.end214
  %80 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width233 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 13
  %81 = load i32* %width233, align 4, !tbaa !0
  %div234 = sdiv i32 %81, 4
  %height235 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 15
  %82 = load i32* %height235, align 4, !tbaa !0
  %div236 = sdiv i32 %82, 4
  %call237 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 10), i32 %div234, i32 %div236) #6
  %83 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width238 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 13
  %84 = load i32* %width238, align 4, !tbaa !0
  %div239 = sdiv i32 %84, 4
  %height240 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 15
  %85 = load i32* %height240, align 4, !tbaa !0
  %div241 = sdiv i32 %85, 4
  %call242 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 10), i32 %div239, i32 %div241) #6
  %86 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width243 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 13
  %87 = load i32* %width243, align 4, !tbaa !0
  %div244 = sdiv i32 %87, 4
  %height245 = getelementptr inbounds %struct.ImageParameters* %86, i64 0, i32 15
  %88 = load i32* %height245, align 4, !tbaa !0
  %div246 = sdiv i32 %88, 4
  %call247 = tail call i32 @get_mem2Dint(i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 10), i32 %div244, i32 %div246) #6
  br label %if.end248

if.end248:                                        ; preds = %if.end214, %if.then232
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 28
  %FrameSizeInMbs249 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 111
  %90 = load i32* %FrameSizeInMbs249, align 4, !tbaa !0
  %num_blk8x8_uv250 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 157
  %91 = load i32* %num_blk8x8_uv250, align 4, !tbaa !0
  %add251 = add nsw i32 %91, 4
  %call252 = tail call i32 @get_mem3Dint(i32**** %nz_coeff, i32 %90, i32 4, i32 %add251) #6
  tail call void @CAVLC_init() #7
  %92 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width254312 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 13
  %93 = load i32* %width254312, align 4, !tbaa !0
  %cmp256314 = icmp sgt i32 %93, 3
  %height260308 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 15
  br i1 %cmp256314, label %for.cond259.preheader.lr.ph, label %if.end248.for.end280_crit_edge

if.end248.for.end280_crit_edge:                   ; preds = %if.end248
  %.pre327 = load i32* %height260308, align 4, !tbaa !0
  br label %for.end280

for.cond259.preheader.lr.ph:                      ; preds = %if.end248
  %ipredmode8x8272 = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 26
  %.pre = load i32* %height260308, align 4, !tbaa !0
  br label %for.cond259.preheader

for.cond259.preheader:                            ; preds = %for.cond259.preheader.lr.ph, %for.inc278
  %94 = phi i32 [ %93, %for.cond259.preheader.lr.ph ], [ %100, %for.inc278 ]
  %95 = phi i32 [ %.pre, %for.cond259.preheader.lr.ph ], [ %101, %for.inc278 ]
  %indvars.iv318 = phi i64 [ 0, %for.cond259.preheader.lr.ph ], [ %indvars.iv.next319, %for.inc278 ]
  %cmp262310 = icmp sgt i32 %95, 3
  br i1 %cmp262310, label %for.body264.lr.ph, label %for.inc278

for.body264.lr.ph:                                ; preds = %for.cond259.preheader
  %96 = load i32*** %ipredmode8x8272, align 8, !tbaa !3
  %arrayidx273 = getelementptr inbounds i32** %96, i64 %indvars.iv318
  %97 = load i32** %arrayidx273, align 8, !tbaa !3
  %ipredmode267.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 25
  %.pre324 = load i32*** %ipredmode267.phi.trans.insert, align 8, !tbaa !3
  %arrayidx268.phi.trans.insert = getelementptr inbounds i32** %.pre324, i64 %indvars.iv318
  %.pre325 = load i32** %arrayidx268.phi.trans.insert, align 8, !tbaa !3
  br label %for.body264

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next, %for.body264 ]
  %arrayidx269 = getelementptr inbounds i32* %.pre325, i64 %indvars.iv
  store i32 -1, i32* %arrayidx269, align 4, !tbaa !0
  %arrayidx274 = getelementptr inbounds i32* %97, i64 %indvars.iv
  store i32 -1, i32* %arrayidx274, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %98 = load i32* %height260308, align 4, !tbaa !0
  %div261 = sdiv i32 %98, 4
  %99 = trunc i64 %indvars.iv.next to i32
  %cmp262 = icmp slt i32 %99, %div261
  br i1 %cmp262, label %for.body264, label %for.cond259.for.inc278_crit_edge

for.cond259.for.inc278_crit_edge:                 ; preds = %for.body264
  %.pre323 = load i32* %width254312, align 4, !tbaa !0
  br label %for.inc278

for.inc278:                                       ; preds = %for.cond259.for.inc278_crit_edge, %for.cond259.preheader
  %100 = phi i32 [ %.pre323, %for.cond259.for.inc278_crit_edge ], [ %94, %for.cond259.preheader ]
  %101 = phi i32 [ %98, %for.cond259.for.inc278_crit_edge ], [ %95, %for.cond259.preheader ]
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %div255 = sdiv i32 %100, 4
  %102 = trunc i64 %indvars.iv.next319 to i32
  %cmp256 = icmp slt i32 %102, %div255
  br i1 %cmp256, label %for.cond259.preheader, label %for.end280

for.end280:                                       ; preds = %for.inc278, %if.end248.for.end280_crit_edge
  %103 = phi i32 [ %.pre327, %if.end248.for.end280_crit_edge ], [ %101, %for.inc278 ]
  %104 = phi i32 [ %93, %if.end248.for.end280_crit_edge ], [ %100, %for.inc278 ]
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters* %92, i64 0, i32 22
  store i32 0, i32* %mb_y_upd, align 4, !tbaa !0
  %div282 = sdiv i32 %104, 16
  %div284 = sdiv i32 %103, 16
  %105 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %RandomIntraMBRefresh = getelementptr inbounds %struct.InputParameters* %105, i64 0, i32 101
  %106 = load i32* %RandomIntraMBRefresh, align 4, !tbaa !0
  tail call void @RandomIntraInit(i32 %div282, i32 %div284, i32 %106) #6
  tail call void (...)* @InitSEIMessages() #6
  %107 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %LFSendParameters = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 102
  %108 = load i32* %LFSendParameters, align 4, !tbaa !0
  %tobool285 = icmp eq i32 %108, 0
  br i1 %tobool285, label %if.else289, label %if.then286

if.then286:                                       ; preds = %for.end280
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 104
  %109 = load i32* %LFAlphaC0Offset, align 4, !tbaa !0
  %shl287 = shl i32 %109, 1
  store i32 %shl287, i32* %LFAlphaC0Offset, align 4, !tbaa !0
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 105
  %110 = load i32* %LFBetaOffset, align 4, !tbaa !0
  %shl288 = shl i32 %110, 1
  store i32 %shl288, i32* %LFBetaOffset, align 4, !tbaa !0
  br label %if.end292

if.else289:                                       ; preds = %for.end280
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 103
  store i32 0, i32* %LFDisableIdc, align 4, !tbaa !0
  %LFAlphaC0Offset290 = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 104
  store i32 0, i32* %LFAlphaC0Offset290, align 4, !tbaa !0
  %LFBetaOffset291 = getelementptr inbounds %struct.InputParameters* %107, i64 0, i32 105
  store i32 0, i32* %LFBetaOffset291, align 4, !tbaa !0
  br label %if.end292

if.end292:                                        ; preds = %if.else289, %if.then286
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_mv(i16******* nocapture %mv) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 4, i64 8) #6
  %0 = bitcast i8* %call to i16******
  store i16****** %0, i16******* %mv, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.body

for.body:                                         ; preds = %for.inc77, %entry, %if.then
  %indvars.iv128 = phi i64 [ 0, %if.then ], [ 0, %entry ], [ %indvars.iv.next129, %for.inc77 ]
  %call2 = tail call noalias i8* @calloc(i64 4, i64 8) #6
  %1 = bitcast i8* %call2 to i16*****
  %2 = load i16******* %mv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16****** %2, i64 %indvars.iv128
  store i16***** %1, i16****** %arrayidx, align 8, !tbaa !3
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %for.body8

if.then4:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.body8

for.body8:                                        ; preds = %for.body, %if.then4, %for.inc74
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc74 ], [ 0, %if.then4 ], [ 0, %for.body ]
  %call9 = tail call noalias i8* @calloc(i64 2, i64 8) #6
  %3 = bitcast i8* %call9 to i16****
  %4 = load i16******* %mv, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i16****** %4, i64 %indvars.iv128
  %5 = load i16****** %arrayidx12, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i16***** %5, i64 %indvars.iv124
  store i16**** %3, i16***** %arrayidx13, align 8, !tbaa !3
  %cmp14 = icmp eq i8* %call9, null
  br i1 %cmp14, label %if.then15, label %for.cond17.preheader

if.then15:                                        ; preds = %for.body8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.then15, %for.body8
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 9
  %.pre132 = load i32* %max_num_references.phi.trans.insert, align 4, !tbaa !0
  br label %for.body19

for.body19:                                       ; preds = %for.inc71, %for.cond17.preheader
  %6 = phi i32 [ %.pre132, %for.cond17.preheader ], [ %27, %for.inc71 ]
  %indvars.iv120 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next121, %for.inc71 ]
  %conv = sext i32 %6 to i64
  %call20 = tail call noalias i8* @calloc(i64 %conv, i64 8) #6
  %7 = bitcast i8* %call20 to i16***
  %8 = load i16******* %mv, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i16****** %8, i64 %indvars.iv128
  %9 = load i16****** %arrayidx24, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds i16***** %9, i64 %indvars.iv124
  %10 = load i16***** %arrayidx25, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16**** %10, i64 %indvars.iv120
  store i16*** %7, i16**** %arrayidx26, align 8, !tbaa !3
  %cmp27 = icmp eq i8* %call20, null
  br i1 %cmp27, label %if.then29, label %for.cond31.preheader

if.then29:                                        ; preds = %for.body19
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %if.then29, %for.body19
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references32112 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9
  %12 = load i32* %max_num_references32112, align 4, !tbaa !0
  %cmp33113 = icmp sgt i32 %12, 0
  br i1 %cmp33113, label %for.body35, label %for.inc71

for.body35:                                       ; preds = %for.cond31.preheader, %for.inc68
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc68 ], [ 0, %for.cond31.preheader ]
  %call36 = tail call noalias i8* @calloc(i64 9, i64 8) #6
  %13 = bitcast i8* %call36 to i16**
  %14 = load i16******* %mv, align 8, !tbaa !3
  %arrayidx41 = getelementptr inbounds i16****** %14, i64 %indvars.iv128
  %15 = load i16****** %arrayidx41, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i16***** %15, i64 %indvars.iv124
  %16 = load i16***** %arrayidx42, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds i16**** %16, i64 %indvars.iv120
  %17 = load i16**** %arrayidx43, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i16*** %17, i64 %indvars.iv118
  store i16** %13, i16*** %arrayidx44, align 8, !tbaa !3
  %cmp45 = icmp eq i8* %call36, null
  br i1 %cmp45, label %if.then47, label %for.body52

if.then47:                                        ; preds = %for.body35
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.body52

for.body52:                                       ; preds = %for.body35, %if.then47, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then47 ], [ 0, %for.body35 ]
  %call53 = tail call noalias i8* @calloc(i64 2, i64 2) #6
  %18 = bitcast i8* %call53 to i16*
  %19 = load i16******* %mv, align 8, !tbaa !3
  %arrayidx59 = getelementptr inbounds i16****** %19, i64 %indvars.iv128
  %20 = load i16****** %arrayidx59, align 8, !tbaa !3
  %arrayidx60 = getelementptr inbounds i16***** %20, i64 %indvars.iv124
  %21 = load i16***** %arrayidx60, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds i16**** %21, i64 %indvars.iv120
  %22 = load i16**** %arrayidx61, align 8, !tbaa !3
  %arrayidx62 = getelementptr inbounds i16*** %22, i64 %indvars.iv118
  %23 = load i16*** %arrayidx62, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds i16** %23, i64 %indvars.iv
  store i16* %18, i16** %arrayidx63, align 8, !tbaa !3
  %cmp64 = icmp eq i8* %call53, null
  br i1 %cmp64, label %if.then66, label %for.inc

if.then66:                                        ; preds = %for.body52
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str91, i64 0, i64 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body52, %if.then66
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.inc68, label %for.body52

for.inc68:                                        ; preds = %for.inc
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %24 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references32 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 9
  %25 = load i32* %max_num_references32, align 4, !tbaa !0
  %26 = trunc i64 %indvars.iv.next119 to i32
  %cmp33 = icmp slt i32 %26, %25
  br i1 %cmp33, label %for.body35, label %for.inc71

for.inc71:                                        ; preds = %for.inc68, %for.cond31.preheader
  %27 = phi i32 [ %12, %for.cond31.preheader ], [ %25, %for.inc68 ]
  %indvars.iv.next121 = add i64 %indvars.iv120, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, 2
  br i1 %exitcond123, label %for.inc74, label %for.body19

for.inc74:                                        ; preds = %for.inc71
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  %lftr.wideiv126 = trunc i64 %indvars.iv.next125 to i32
  %exitcond127 = icmp eq i32 %lftr.wideiv126, 4
  br i1 %exitcond127, label %for.inc77, label %for.body8

for.inc77:                                        ; preds = %for.inc74
  %indvars.iv.next129 = add i64 %indvars.iv128, 1
  %lftr.wideiv130 = trunc i64 %indvars.iv.next129 to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv130, 4
  br i1 %exitcond131, label %for.end79, label %for.body

for.end79:                                        ; preds = %for.inc77
  %mul84 = mul i32 %27, 576
  ret i32 %mul84
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_ACcoeff(i32***** nocapture %cofAC) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %1 = load i32* %num_blk8x8_uv, align 4, !tbaa !0
  %add = add i32 %1, 4
  %conv = sext i32 %add to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #6
  %2 = bitcast i8* %call to i32****
  store i32**** %2, i32***** %cofAC, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str92, i64 0, i64 0)) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp264 = icmp sgt i32 %add, 0
  br i1 %cmp264, label %for.body, label %for.end42

for.body:                                         ; preds = %for.inc40, %for.cond.preheader
  %indvars.iv70 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next71, %for.inc40 ]
  %call4 = tail call noalias i8* @calloc(i64 4, i64 8) #6
  %3 = bitcast i8* %call4 to i32***
  %4 = load i32***** %cofAC, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32**** %4, i64 %indvars.iv70
  store i32*** %3, i32**** %arrayidx, align 8, !tbaa !3
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then7, label %for.body12

if.then7:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str92, i64 0, i64 0)) #6
  br label %for.body12

for.body12:                                       ; preds = %for.body, %if.then7, %for.inc37
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc37 ], [ 0, %if.then7 ], [ 0, %for.body ]
  %call13 = tail call noalias i8* @calloc(i64 2, i64 8) #6
  %5 = bitcast i8* %call13 to i32**
  %6 = load i32***** %cofAC, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32**** %6, i64 %indvars.iv70
  %7 = load i32**** %arrayidx16, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32*** %7, i64 %indvars.iv66
  store i32** %5, i32*** %arrayidx17, align 8, !tbaa !3
  %cmp18 = icmp eq i8* %call13, null
  br i1 %cmp18, label %if.then20, label %for.body25

if.then20:                                        ; preds = %for.body12
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str92, i64 0, i64 0)) #6
  br label %for.body25

for.body25:                                       ; preds = %for.body12, %if.then20, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then20 ], [ 0, %for.body12 ]
  %call26 = tail call noalias i8* @calloc(i64 65, i64 4) #6
  %8 = bitcast i8* %call26 to i32*
  %9 = load i32***** %cofAC, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds i32**** %9, i64 %indvars.iv70
  %10 = load i32**** %arrayidx30, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32*** %10, i64 %indvars.iv66
  %11 = load i32*** %arrayidx31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i32** %11, i64 %indvars.iv
  store i32* %8, i32** %arrayidx32, align 8, !tbaa !3
  %cmp33 = icmp eq i8* %call26, null
  br i1 %cmp33, label %if.then35, label %for.inc

if.then35:                                        ; preds = %for.body25
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str92, i64 0, i64 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body25, %if.then35
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.inc37, label %for.body25

for.inc37:                                        ; preds = %for.inc
  %indvars.iv.next67 = add i64 %indvars.iv66, 1
  %lftr.wideiv68 = trunc i64 %indvars.iv.next67 to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, 4
  br i1 %exitcond69, label %for.inc40, label %for.body12

for.inc40:                                        ; preds = %for.inc37
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %add
  br i1 %exitcond73, label %for.end42, label %for.body

for.end42:                                        ; preds = %for.inc40, %for.cond.preheader
  %mul46 = mul i32 %add, 2080
  ret i32 %mul46
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_DCcoeff(i32**** nocapture %cofDC) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 3, i64 8) #6
  %0 = bitcast i8* %call to i32***
  store i32*** %0, i32**** %cofDC, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str93, i64 0, i64 0)) #6
  br label %for.body

for.body:                                         ; preds = %for.inc17, %entry, %if.then
  %indvars.iv29 = phi i64 [ 0, %if.then ], [ 0, %entry ], [ %indvars.iv.next30, %for.inc17 ]
  %call2 = tail call noalias i8* @calloc(i64 2, i64 8) #6
  %1 = bitcast i8* %call2 to i32**
  %2 = load i32**** %cofDC, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32*** %2, i64 %indvars.iv29
  store i32** %1, i32*** %arrayidx, align 8, !tbaa !3
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %for.body8

if.then4:                                         ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str93, i64 0, i64 0)) #6
  br label %for.body8

for.body8:                                        ; preds = %for.body, %if.then4, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then4 ], [ 0, %for.body ]
  %call9 = tail call noalias i8* @calloc(i64 65, i64 4) #6
  %3 = bitcast i8* %call9 to i32*
  %4 = load i32**** %cofDC, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32*** %4, i64 %indvars.iv29
  %5 = load i32*** %arrayidx12, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32** %5, i64 %indvars.iv
  store i32* %3, i32** %arrayidx13, align 8, !tbaa !3
  %cmp14 = icmp eq i8* %call9, null
  br i1 %cmp14, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str93, i64 0, i64 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %if.then15
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.inc17, label %for.body8

for.inc17:                                        ; preds = %for.inc
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, 3
  br i1 %exitcond32, label %for.end19, label %for.body

for.end19:                                        ; preds = %for.inc17
  ret i32 1560
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: optsize
declare i32 @get_mem2Dint(i32***, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem3Dint(i32****, i32, i32, i32) #1

; Function Attrs: optsize
declare void @RandomIntraInit(i32, i32, i32) #1

; Function Attrs: optsize
declare void @InitSEIMessages(...) #1

; Function Attrs: nounwind optsize uwtable
define void @free_img() #0 {
entry:
  tail call void (...)* @CloseSEIMessages() #6
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70
  %1 = load i16******* %pred_mv, align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %1) #7
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %all_mv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 71
  %3 = load i16******* %all_mv, align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %3) #7
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 39
  %5 = load i32* %BiPredMotionEstimation, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 72
  %7 = load i16******* %bipred_mv1, align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %7) #7
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 73
  %9 = load i16******* %bipred_mv2, align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %9) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofAC = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 47
  %11 = load i32***** %cofAC, align 8, !tbaa !3
  tail call void @free_mem_ACcoeff(i32**** %11) #7
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %cofDC = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 48
  %13 = load i32**** %cofDC, align 8, !tbaa !3
  tail call void @free_mem_DCcoeff(i32*** %13) #7
  %14 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 92
  %15 = load i32* %MbInterlace, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %15, 0
  br i1 %tobool1, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %16 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 15), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %16) #7
  %17 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 16), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %17) #7
  %18 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 15), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %18) #7
  %19 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 16), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %19) #7
  %20 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 15), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %20) #7
  %21 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 16), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %21) #7
  %22 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 15), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %22) #7
  %23 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 16), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %23) #7
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %BiPredMotionEstimation3 = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 39
  %25 = load i32* %BiPredMotionEstimation3, align 4, !tbaa !0
  %tobool4 = icmp eq i32 %25, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  %26 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 17), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %26) #7
  %27 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 18), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %27) #7
  %28 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 17), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %28) #7
  %29 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 18), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %29) #7
  %30 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 17), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %30) #7
  %31 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 18), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %31) #7
  %32 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 17), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %32) #7
  %33 = load i16******* getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 18), align 8, !tbaa !3
  tail call void @free_mem_mv(i16****** %33) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then5
  %34 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 4), align 8, !tbaa !3
  tail call void @free_mem_ACcoeff(i32**** %34) #7
  %35 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 5), align 8, !tbaa !3
  tail call void @free_mem_DCcoeff(i32*** %35) #7
  %36 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 4), align 8, !tbaa !3
  tail call void @free_mem_ACcoeff(i32**** %36) #7
  %37 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 5), align 8, !tbaa !3
  tail call void @free_mem_DCcoeff(i32*** %37) #7
  %38 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 4), align 8, !tbaa !3
  tail call void @free_mem_ACcoeff(i32**** %38) #7
  %39 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 5), align 8, !tbaa !3
  tail call void @free_mem_DCcoeff(i32*** %39) #7
  %40 = load i32***** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 4), align 8, !tbaa !3
  tail call void @free_mem_ACcoeff(i32**** %40) #7
  %41 = load i32**** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 5), align 8, !tbaa !3
  tail call void @free_mem_DCcoeff(i32*** %41) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.end6
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 155
  %43 = load i32* %max_imgpel_value, align 4, !tbaa !0
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 156
  %44 = load i32* %max_imgpel_value_uv, align 4, !tbaa !0
  %cmp = icmp sgt i32 %43, %44
  %quad = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 53
  %45 = load i32** %quad, align 8, !tbaa !3
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  %add = add nsw i32 %43, 1
  %idx.ext = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32* %45, i64 %idx.neg
  %46 = bitcast i32* %add.ptr to i8*
  tail call void @free(i8* %46) #6
  br label %if.end16

if.else:                                          ; preds = %if.end7
  %add12 = add nsw i32 %44, 1
  %idx.ext13 = sext i32 %add12 to i64
  %idx.neg14 = sub i64 0, %idx.ext13
  %add.ptr15 = getelementptr inbounds i32* %45, i64 %idx.neg14
  %47 = bitcast i32* %add.ptr15 to i8*
  tail call void @free(i8* %47) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  %48 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %MbInterlace17 = getelementptr inbounds %struct.InputParameters* %48, i64 0, i32 92
  %49 = load i32* %MbInterlace17, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %49, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  %50 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_frame_mb, i64 0, i32 10), align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %50) #6
  %51 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_field_mb, i64 0, i32 10), align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %51) #6
  %52 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_bot_field_mb, i64 0, i32 10), align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %52) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end16, %if.then19
  ret void
}

; Function Attrs: optsize
declare void @CloseSEIMessages(...) #1

; Function Attrs: nounwind optsize uwtable
define void @free_mem_mv(i16****** nocapture %mv) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end47, %entry
  %indvars.iv95 = phi i64 [ 0, %entry ], [ %indvars.iv.next96, %for.end47 ]
  %arrayidx35 = getelementptr inbounds i16****** %mv, i64 %indvars.iv95
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end40, %for.cond1.preheader
  %indvars.iv91 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next92, %for.end40 ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.end31, %for.cond4.preheader
  %indvars.iv87 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next88, %for.end31 ]
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references79 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %1 = load i32* %max_num_references79, align 4, !tbaa !0
  %cmp880 = icmp sgt i32 %1, 0
  br i1 %cmp880, label %for.cond10.preheader, label %for.end31

for.cond10.preheader:                             ; preds = %for.cond7.preheader, %for.end
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.end ], [ 0, %for.cond7.preheader ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.cond10.preheader
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next, %for.body12 ]
  %2 = load i16****** %arrayidx35, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i16***** %2, i64 %indvars.iv91
  %3 = load i16***** %arrayidx17, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds i16**** %3, i64 %indvars.iv87
  %4 = load i16**** %arrayidx18, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i16*** %4, i64 %indvars.iv85
  %5 = load i16*** %arrayidx19, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i16** %5, i64 %indvars.iv
  %6 = load i16** %arrayidx20, align 8, !tbaa !3
  %7 = bitcast i16* %6 to i8*
  tail call void @free(i8* %7) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond, label %for.end, label %for.body12

for.end:                                          ; preds = %for.body12
  %8 = load i16****** %arrayidx35, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16***** %8, i64 %indvars.iv91
  %9 = load i16***** %arrayidx26, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i16**** %9, i64 %indvars.iv87
  %10 = load i16**** %arrayidx27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i16*** %10, i64 %indvars.iv85
  %11 = load i16*** %arrayidx28, align 8, !tbaa !3
  %12 = bitcast i16** %11 to i8*
  tail call void @free(i8* %12) #6
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 9
  %14 = load i32* %max_num_references, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next86 to i32
  %cmp8 = icmp slt i32 %15, %14
  br i1 %cmp8, label %for.cond10.preheader, label %for.end31

for.end31:                                        ; preds = %for.end, %for.cond7.preheader
  %16 = load i16****** %arrayidx35, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i16***** %16, i64 %indvars.iv91
  %17 = load i16***** %arrayidx36, align 8, !tbaa !3
  %arrayidx37 = getelementptr inbounds i16**** %17, i64 %indvars.iv87
  %18 = load i16**** %arrayidx37, align 8, !tbaa !3
  %19 = bitcast i16*** %18 to i8*
  tail call void @free(i8* %19) #6
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, 2
  br i1 %exitcond90, label %for.end40, label %for.cond7.preheader

for.end40:                                        ; preds = %for.end31
  %20 = load i16****** %arrayidx35, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i16***** %20, i64 %indvars.iv91
  %21 = load i16***** %arrayidx44, align 8, !tbaa !3
  %22 = bitcast i16**** %21 to i8*
  tail call void @free(i8* %22) #6
  %indvars.iv.next92 = add i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, 4
  br i1 %exitcond94, label %for.end47, label %for.cond4.preheader

for.end47:                                        ; preds = %for.end40
  %23 = load i16****** %arrayidx35, align 8, !tbaa !3
  %24 = bitcast i16***** %23 to i8*
  tail call void @free(i8* %24) #6
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, 4
  br i1 %exitcond98, label %for.end52, label %for.cond1.preheader

for.end52:                                        ; preds = %for.end47
  %25 = bitcast i16****** %mv to i8*
  tail call void @free(i8* %25) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_ACcoeff(i32**** nocapture %cofAC) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %num_blk8x8_uv37 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157
  %1 = load i32* %num_blk8x8_uv37, align 4, !tbaa !0
  %add38 = add nsw i32 %1, 4
  %cmp39 = icmp sgt i32 %add38, 0
  br i1 %cmp39, label %for.cond1.preheader, label %for.end22

for.cond1.preheader:                              ; preds = %entry, %for.end17
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.end17 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32**** %cofAC, i64 %indvars.iv45
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv41 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next42, %for.end ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %2 = load i32**** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32*** %2, i64 %indvars.iv41
  %3 = load i32*** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32** %3, i64 %indvars.iv
  %4 = load i32** %arrayidx10, align 8, !tbaa !3
  %5 = bitcast i32* %4 to i8*
  tail call void @free(i8* %5) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body6

for.end:                                          ; preds = %for.body6
  %6 = load i32**** %arrayidx, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32*** %6, i64 %indvars.iv41
  %7 = load i32*** %arrayidx14, align 8, !tbaa !3
  %8 = bitcast i32** %7 to i8*
  tail call void @free(i8* %8) #6
  %indvars.iv.next42 = add i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, 4
  br i1 %exitcond44, label %for.end17, label %for.cond4.preheader

for.end17:                                        ; preds = %for.end
  %9 = load i32**** %arrayidx, align 8, !tbaa !3
  %10 = bitcast i32*** %9 to i8*
  tail call void @free(i8* %10) #6
  %indvars.iv.next46 = add i64 %indvars.iv45, 1
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %num_blk8x8_uv = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 157
  %12 = load i32* %num_blk8x8_uv, align 4, !tbaa !0
  %13 = add nsw i32 %12, 3
  %14 = trunc i64 %indvars.iv45 to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.cond1.preheader, label %for.end22

for.end22:                                        ; preds = %for.end17, %entry
  %15 = bitcast i32**** %cofAC to i8*
  tail call void @free(i8* %15) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_DCcoeff(i32*** nocapture %cofDC) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %indvars.iv20 = phi i64 [ 0, %entry ], [ %indvars.iv.next21, %for.end ]
  %arrayidx = getelementptr inbounds i32*** %cofDC, i64 %indvars.iv20
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = load i32*** %arrayidx, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds i32** %0, i64 %indvars.iv
  %1 = load i32** %arrayidx5, align 8, !tbaa !3
  %2 = bitcast i32* %1 to i8*
  tail call void @free(i8* %2) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %3 = load i32*** %arrayidx, align 8, !tbaa !3
  %4 = bitcast i32** %3 to i8*
  tail call void @free(i8* %4) #6
  %indvars.iv.next21 = add i64 %indvars.iv20, 1
  %lftr.wideiv22 = trunc i64 %indvars.iv.next21 to i32
  %exitcond23 = icmp eq i32 %lftr.wideiv22, 3
  br i1 %exitcond23, label %for.end10, label %for.cond1.preheader

for.end10:                                        ; preds = %for.end
  %5 = bitcast i32*** %cofDC to i8*
  tail call void @free(i8* %5) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @free_mem2Dint(i32**) #1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.Picture* @malloc_picture() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 824) #6
  %0 = bitcast i8* %call to %struct.Picture*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.Picture* %0
}

; Function Attrs: optsize
declare void @free_slice_list(%struct.Picture*) #1

; Function Attrs: nounwind optsize uwtable
define void @report_frame_statistic() #0 {
entry:
  %name = alloca [20 x i8], align 16
  %now = alloca i64, align 8
  %string = alloca [1000 x i8], align 16
  %0 = getelementptr inbounds [1000 x i8]* %string, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1000, i8* %0) #3
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)) #6
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #6
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #6
  br label %if.end15

if.else:                                          ; preds = %if.then
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1)
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str10, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1)
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call1)
  br label %if.end15

if.else8:                                         ; preds = %entry
  %call9 = call i32 @fclose(%struct._IO_FILE* %call) #6
  %call10 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp11 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.else8
  %call13 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #6
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #6
  br label %if.end15

if.end15:                                         ; preds = %if.else8, %if.then12, %if.then3, %if.else
  %p_stat_frm.0 = phi %struct._IO_FILE* [ null, %if.then3 ], [ %call1, %if.else ], [ null, %if.then12 ], [ %call10, %if.else8 ]
  %4 = load i32* @frame_statistic_start, align 4, !tbaa !0
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end15
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str11, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %p_stat_frm.0)
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %p_stat_frm.0)
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.then16
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0)) #6
  %call21 = call i64 @time(i64* null) #6
  store i64 %call21, i64* %now, align 8, !tbaa !6
  %call22 = call i64 @time(i64* %now) #6
  %call23 = call %struct.tm* @localtime(i64* %now) #6
  %call24 = call i64 @strftime(i8* %0, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), %struct.tm* %call23) #6
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* %0) #6
  %call28 = call i64 @strftime(i8* %0, i64 1000, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), %struct.tm* %call23) #6
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* %0) #6
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end19
  %indvars.iv461 = phi i64 [ 0, %if.end19 ], [ %indvars.iv.next462, %for.body ]
  %arraydecay32 = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 26, i64 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #8
  %sub = add i64 %call33, 4294967276
  %conv = trunc i64 %sub to i32
  %cmp34 = icmp slt i32 %conv, 0
  %.conv = select i1 %cmp34, i64 0, i64 %sub
  %add = add i64 %.conv, %indvars.iv461
  %sext = shl i64 %add, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 26, i64 %idxprom
  %7 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx43 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 %indvars.iv461
  store i8 %7, i8* %arrayidx43, align 1, !tbaa !1
  %indvars.iv.next462 = add i64 %indvars.iv461, 1
  %lftr.wideiv463 = trunc i64 %indvars.iv.next462 to i32
  %exitcond464 = icmp eq i32 %lftr.wideiv463, 20
  br i1 %exitcond464, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arraydecay44 = getelementptr inbounds [20 x i8]* %name, i64 0, i64 0
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* %arraydecay44) #6
  %8 = load i32* @frame_no, align 4, !tbaa !0
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 %8) #6
  %9 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %qp = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 10
  %10 = load i32* %qp, align 4, !tbaa !0
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32 %10) #6
  %11 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 91
  %12 = load i32* %PicInterlace, align 4, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 92
  %13 = load i32* %MbInterlace, align 4, !tbaa !0
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %12, i32 %13) #6
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %frame_num = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 105
  %15 = load i32* %frame_num, align 4, !tbaa !0
  %cmp49 = icmp eq i32 %15, 0
  %16 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %for.end
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %16, i64 0, i32 14
  %17 = load i32* %bit_ctr_I, align 4, !tbaa !0
  br label %if.end55

if.else52:                                        ; preds = %for.end
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters* %16, i64 0, i32 5
  %18 = load i32* %bit_ctr_n, align 4, !tbaa !0
  %19 = load i32* @report_frame_statistic.last_bit_ctr_n, align 4, !tbaa !0
  %sub53 = sub nsw i32 %18, %19
  store i32 %18, i32* @report_frame_statistic.last_bit_ctr_n, align 4, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then51
  %bitcounter.0 = phi i32 [ %17, %if.then51 ], [ %sub53, %if.else52 ]
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str22, i64 0, i64 0), i32 %bitcounter.0) #6
  %20 = load %struct.SNRParameters** @snr, align 8, !tbaa !3
  %snr_y = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 0
  %21 = load float* %snr_y, align 4, !tbaa !5
  %conv57 = fpext float %21 to double
  %snr_u = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 1
  %22 = load float* %snr_u, align 4, !tbaa !5
  %conv58 = fpext float %22 to double
  %snr_v = getelementptr inbounds %struct.SNRParameters* %20, i64 0, i32 2
  %23 = load float* %snr_v, align 4, !tbaa !5
  %conv59 = fpext float %23 to double
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([22 x i8]* @.str23, i64 0, i64 0), double %conv57, double %conv58, double %conv59) #6
  %24 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx62 = getelementptr inbounds %struct.StatParameters* %24, i64 0, i32 20, i64 2, i64 9
  %25 = load i32* %arrayidx62, align 4, !tbaa !0
  %26 = load i32* @report_frame_statistic.last_mode_use.2.9, align 4, !tbaa !0
  %sub63 = sub nsw i32 %25, %26
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub63) #6
  %27 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds %struct.StatParameters* %27, i64 0, i32 20, i64 2, i64 13
  %28 = load i32* %arrayidx67, align 4, !tbaa !0
  %29 = load i32* @report_frame_statistic.last_mode_use.2.13, align 4, !tbaa !0
  %sub68 = sub nsw i32 %28, %29
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub68) #6
  %30 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx72 = getelementptr inbounds %struct.StatParameters* %30, i64 0, i32 20, i64 2, i64 10
  %31 = load i32* %arrayidx72, align 4, !tbaa !0
  %32 = load i32* @report_frame_statistic.last_mode_use.2.10, align 8, !tbaa !0
  %sub73 = sub nsw i32 %31, %32
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub73) #6
  %33 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx75 = getelementptr inbounds %struct.StatParameters* %33, i64 0, i32 11, i64 0
  %34 = load i32* %arrayidx75, align 4, !tbaa !0
  %35 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 0), align 16, !tbaa !0
  %sub76 = sub nsw i32 %34, %35
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub76) #6
  %36 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx79 = getelementptr inbounds %struct.StatParameters* %36, i64 0, i32 11, i64 1
  %37 = load i32* %arrayidx79, align 4, !tbaa !0
  %38 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 1), align 4, !tbaa !0
  %sub80 = sub nsw i32 %37, %38
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub80) #6
  %39 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx83 = getelementptr inbounds %struct.StatParameters* %39, i64 0, i32 11, i64 2
  %40 = load i32* %arrayidx83, align 4, !tbaa !0
  %41 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 2), align 8, !tbaa !0
  %sub84 = sub nsw i32 %40, %41
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub84) #6
  %42 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx87 = getelementptr inbounds %struct.StatParameters* %42, i64 0, i32 11, i64 3
  %43 = load i32* %arrayidx87, align 4, !tbaa !0
  %44 = load i32* getelementptr inbounds ([4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 3), align 4, !tbaa !0
  %sub88 = sub nsw i32 %43, %44
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub88) #6
  %45 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds %struct.StatParameters* %45, i64 0, i32 20, i64 0, i64 9
  %46 = load i32* %arrayidx92, align 4, !tbaa !0
  %47 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 9), align 4, !tbaa !0
  %sub93 = sub nsw i32 %46, %47
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub93) #6
  %48 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx97 = getelementptr inbounds %struct.StatParameters* %48, i64 0, i32 20, i64 0, i64 13
  %49 = load i32* %arrayidx97, align 4, !tbaa !0
  %50 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 13), align 4, !tbaa !0
  %sub98 = sub nsw i32 %49, %50
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub98) #6
  %51 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx102 = getelementptr inbounds %struct.StatParameters* %51, i64 0, i32 20, i64 0, i64 10
  %52 = load i32* %arrayidx102, align 4, !tbaa !0
  %53 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 10), align 8, !tbaa !0
  %sub103 = sub nsw i32 %52, %53
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub103) #6
  %54 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx107 = getelementptr inbounds %struct.StatParameters* %54, i64 0, i32 20, i64 0, i64 0
  %55 = load i32* %arrayidx107, align 4, !tbaa !0
  %56 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 0), align 16, !tbaa !0
  %sub108 = sub nsw i32 %55, %56
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub108) #6
  %57 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx112 = getelementptr inbounds %struct.StatParameters* %57, i64 0, i32 20, i64 0, i64 1
  %58 = load i32* %arrayidx112, align 4, !tbaa !0
  %59 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 1), align 4, !tbaa !0
  %sub113 = sub nsw i32 %58, %59
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub113) #6
  %60 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx117 = getelementptr inbounds %struct.StatParameters* %60, i64 0, i32 20, i64 0, i64 2
  %61 = load i32* %arrayidx117, align 4, !tbaa !0
  %62 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 2), align 8, !tbaa !0
  %sub118 = sub nsw i32 %61, %62
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub118) #6
  %63 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx122 = getelementptr inbounds %struct.StatParameters* %63, i64 0, i32 20, i64 0, i64 3
  %64 = load i32* %arrayidx122, align 4, !tbaa !0
  %65 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 3), align 4, !tbaa !0
  %sub123 = sub nsw i32 %64, %65
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub123) #6
  %66 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx126 = getelementptr inbounds %struct.StatParameters* %66, i64 0, i32 9, i64 0, i64 1
  %67 = load i32* %arrayidx126, align 4, !tbaa !0
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %67) #6
  %68 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx129 = getelementptr inbounds %struct.StatParameters* %68, i64 0, i32 10, i64 0, i64 1
  %69 = load i32* %arrayidx129, align 4, !tbaa !0
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %69) #6
  %70 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx133 = getelementptr inbounds %struct.StatParameters* %70, i64 0, i32 9, i64 0, i64 2
  %71 = load i32* %arrayidx133, align 4, !tbaa !0
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %71) #6
  %72 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx137 = getelementptr inbounds %struct.StatParameters* %72, i64 0, i32 10, i64 0, i64 2
  %73 = load i32* %arrayidx137, align 4, !tbaa !0
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %73) #6
  %74 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx141 = getelementptr inbounds %struct.StatParameters* %74, i64 0, i32 9, i64 0, i64 3
  %75 = load i32* %arrayidx141, align 4, !tbaa !0
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %75) #6
  %76 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx145 = getelementptr inbounds %struct.StatParameters* %76, i64 0, i32 10, i64 0, i64 3
  %77 = load i32* %arrayidx145, align 4, !tbaa !0
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %77) #6
  %78 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx149 = getelementptr inbounds %struct.StatParameters* %78, i64 0, i32 20, i64 0, i64 8
  %79 = load i32* %arrayidx149, align 4, !tbaa !0
  %80 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 8), align 16, !tbaa !0
  %sub150 = sub nsw i32 %79, %80
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub150) #6
  %81 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx154 = getelementptr inbounds %struct.StatParameters* %81, i64 0, i32 20, i64 0, i64 4
  %82 = load i32* %arrayidx154, align 4, !tbaa !0
  %83 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 4), align 16, !tbaa !0
  %sub155 = sub nsw i32 %82, %83
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub155) #6
  %84 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds %struct.StatParameters* %84, i64 0, i32 9, i64 0, i64 4
  %85 = load i32* %arrayidx159, align 4, !tbaa !0
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %85) #6
  %86 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx163 = getelementptr inbounds %struct.StatParameters* %86, i64 0, i32 10, i64 0, i64 4
  %87 = load i32* %arrayidx163, align 4, !tbaa !0
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %87) #6
  %88 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx167 = getelementptr inbounds %struct.StatParameters* %88, i64 0, i32 20, i64 0, i64 5
  %89 = load i32* %arrayidx167, align 4, !tbaa !0
  %90 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 5), align 4, !tbaa !0
  %sub168 = sub nsw i32 %89, %90
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub168) #6
  %91 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx172 = getelementptr inbounds %struct.StatParameters* %91, i64 0, i32 20, i64 0, i64 6
  %92 = load i32* %arrayidx172, align 4, !tbaa !0
  %93 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 6), align 8, !tbaa !0
  %sub173 = sub nsw i32 %92, %93
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub173) #6
  %94 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx177 = getelementptr inbounds %struct.StatParameters* %94, i64 0, i32 20, i64 0, i64 7
  %95 = load i32* %arrayidx177, align 4, !tbaa !0
  %96 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 7), align 4, !tbaa !0
  %sub178 = sub nsw i32 %95, %96
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub178) #6
  %97 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds %struct.StatParameters* %97, i64 0, i32 20, i64 1, i64 9
  %98 = load i32* %arrayidx182, align 4, !tbaa !0
  %99 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 9), align 4, !tbaa !0
  %sub183 = sub nsw i32 %98, %99
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub183) #6
  %100 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx187 = getelementptr inbounds %struct.StatParameters* %100, i64 0, i32 20, i64 1, i64 13
  %101 = load i32* %arrayidx187, align 4, !tbaa !0
  %102 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 13), align 4, !tbaa !0
  %sub188 = sub nsw i32 %101, %102
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub188) #6
  %103 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx192 = getelementptr inbounds %struct.StatParameters* %103, i64 0, i32 20, i64 1, i64 10
  %104 = load i32* %arrayidx192, align 4, !tbaa !0
  %105 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 10), align 8, !tbaa !0
  %sub193 = sub nsw i32 %104, %105
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub193) #6
  %106 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx197 = getelementptr inbounds %struct.StatParameters* %106, i64 0, i32 20, i64 1, i64 0
  %107 = load i32* %arrayidx197, align 4, !tbaa !0
  %108 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 0), align 16, !tbaa !0
  %sub198 = sub nsw i32 %107, %108
  %call199 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub198) #6
  %109 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx202 = getelementptr inbounds %struct.StatParameters* %109, i64 0, i32 20, i64 1, i64 1
  %110 = load i32* %arrayidx202, align 4, !tbaa !0
  %111 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 1), align 4, !tbaa !0
  %sub203 = sub nsw i32 %110, %111
  %call204 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub203) #6
  %112 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx207 = getelementptr inbounds %struct.StatParameters* %112, i64 0, i32 20, i64 1, i64 2
  %113 = load i32* %arrayidx207, align 4, !tbaa !0
  %114 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 2), align 8, !tbaa !0
  %sub208 = sub nsw i32 %113, %114
  %call209 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub208) #6
  %115 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx212 = getelementptr inbounds %struct.StatParameters* %115, i64 0, i32 20, i64 1, i64 3
  %116 = load i32* %arrayidx212, align 4, !tbaa !0
  %117 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 3), align 4, !tbaa !0
  %sub213 = sub nsw i32 %116, %117
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub213) #6
  %118 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx217 = getelementptr inbounds %struct.StatParameters* %118, i64 0, i32 9, i64 1, i64 0
  %119 = load i32* %arrayidx217, align 4, !tbaa !0
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %119) #6
  %120 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx221 = getelementptr inbounds %struct.StatParameters* %120, i64 0, i32 10, i64 1, i64 0
  %121 = load i32* %arrayidx221, align 4, !tbaa !0
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %121) #6
  %122 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx225 = getelementptr inbounds %struct.StatParameters* %122, i64 0, i32 9, i64 1, i64 1
  %123 = load i32* %arrayidx225, align 4, !tbaa !0
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %123) #6
  %124 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx229 = getelementptr inbounds %struct.StatParameters* %124, i64 0, i32 10, i64 1, i64 1
  %125 = load i32* %arrayidx229, align 4, !tbaa !0
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %125) #6
  %126 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx233 = getelementptr inbounds %struct.StatParameters* %126, i64 0, i32 9, i64 1, i64 2
  %127 = load i32* %arrayidx233, align 4, !tbaa !0
  %call234 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %127) #6
  %128 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx237 = getelementptr inbounds %struct.StatParameters* %128, i64 0, i32 10, i64 1, i64 2
  %129 = load i32* %arrayidx237, align 4, !tbaa !0
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %129) #6
  %130 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx241 = getelementptr inbounds %struct.StatParameters* %130, i64 0, i32 9, i64 1, i64 3
  %131 = load i32* %arrayidx241, align 4, !tbaa !0
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %131) #6
  %132 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx245 = getelementptr inbounds %struct.StatParameters* %132, i64 0, i32 10, i64 1, i64 3
  %133 = load i32* %arrayidx245, align 4, !tbaa !0
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %133) #6
  %134 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx249 = getelementptr inbounds %struct.StatParameters* %134, i64 0, i32 20, i64 1, i64 8
  %135 = load i32* %arrayidx249, align 4, !tbaa !0
  %136 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 8), align 16, !tbaa !0
  %sub250 = sub nsw i32 %135, %136
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub250) #6
  %137 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx253 = getelementptr inbounds %struct.StatParameters* %137, i64 0, i32 8, i64 1, i64 0
  %138 = load i32* %arrayidx253, align 4, !tbaa !0
  %arrayidx256 = getelementptr inbounds %struct.StatParameters* %137, i64 0, i32 8, i64 1, i64 1
  %139 = load i32* %arrayidx256, align 4, !tbaa !0
  %140 = load i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !tbaa !0
  %141 = load i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !tbaa !0
  %add258.neg = add i32 %139, %138
  %add257 = sub i32 %add258.neg, %140
  %sub259 = sub i32 %add257, %141
  %call260 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub259) #6
  %142 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx263 = getelementptr inbounds %struct.StatParameters* %142, i64 0, i32 8, i64 1, i64 1
  %143 = load i32* %arrayidx263, align 4, !tbaa !0
  %144 = load i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !tbaa !0
  %sub264 = sub nsw i32 %143, %144
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub264) #6
  %145 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx268 = getelementptr inbounds %struct.StatParameters* %145, i64 0, i32 8, i64 1, i64 0
  %146 = load i32* %arrayidx268, align 4, !tbaa !0
  %147 = load i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !tbaa !0
  %sub269 = sub nsw i32 %146, %147
  %call270 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub269) #6
  %148 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx273 = getelementptr inbounds %struct.StatParameters* %148, i64 0, i32 20, i64 1, i64 4
  %149 = load i32* %arrayidx273, align 4, !tbaa !0
  %150 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 4), align 16, !tbaa !0
  %sub274 = sub nsw i32 %149, %150
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub274) #6
  %151 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx278 = getelementptr inbounds %struct.StatParameters* %151, i64 0, i32 9, i64 1, i64 4
  %152 = load i32* %arrayidx278, align 4, !tbaa !0
  %call279 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %152) #6
  %153 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx282 = getelementptr inbounds %struct.StatParameters* %153, i64 0, i32 10, i64 1, i64 4
  %154 = load i32* %arrayidx282, align 4, !tbaa !0
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %154) #6
  %155 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx286 = getelementptr inbounds %struct.StatParameters* %155, i64 0, i32 20, i64 1, i64 5
  %156 = load i32* %arrayidx286, align 4, !tbaa !0
  %157 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 5), align 4, !tbaa !0
  %sub287 = sub nsw i32 %156, %157
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub287) #6
  %158 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx291 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 20, i64 1, i64 6
  %159 = load i32* %arrayidx291, align 4, !tbaa !0
  %160 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 6), align 8, !tbaa !0
  %sub292 = sub nsw i32 %159, %160
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub292) #6
  %161 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx296 = getelementptr inbounds %struct.StatParameters* %161, i64 0, i32 20, i64 1, i64 7
  %162 = load i32* %arrayidx296, align 4, !tbaa !0
  %163 = load i32* getelementptr inbounds ([15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 7), align 4, !tbaa !0
  %sub297 = sub nsw i32 %162, %163
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %p_stat_frm.0, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %sub297) #6
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %p_stat_frm.0)
  %164 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx302 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 9
  %165 = load i32* %arrayidx302, align 4, !tbaa !0
  store i32 %165, i32* @report_frame_statistic.last_mode_use.2.9, align 4, !tbaa !0
  %arrayidx305 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 13
  %166 = load i32* %arrayidx305, align 4, !tbaa !0
  store i32 %166, i32* @report_frame_statistic.last_mode_use.2.13, align 4, !tbaa !0
  %arrayidx308 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 2, i64 10
  %167 = load i32* %arrayidx308, align 4, !tbaa !0
  store i32 %167, i32* @report_frame_statistic.last_mode_use.2.10, align 8, !tbaa !0
  br label %for.body312

for.body312:                                      ; preds = %for.body312, %if.end55
  %indvars.iv453 = phi i64 [ 0, %if.end55 ], [ %indvars.iv.next454, %for.body312 ]
  %arrayidx316 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 0, i64 %indvars.iv453
  %168 = load i32* %arrayidx316, align 4, !tbaa !0
  %arrayidx318 = getelementptr inbounds [15 x i32]* @report_frame_statistic.last_mode_use.0, i64 0, i64 %indvars.iv453
  store i32 %168, i32* %arrayidx318, align 4, !tbaa !0
  %arrayidx322 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 20, i64 1, i64 %indvars.iv453
  %169 = load i32* %arrayidx322, align 4, !tbaa !0
  %arrayidx324 = getelementptr inbounds [15 x i32]* @report_frame_statistic.last_mode_use.1, i64 0, i64 %indvars.iv453
  store i32 %169, i32* %arrayidx324, align 4, !tbaa !0
  %arrayidx328 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 9, i64 0, i64 %indvars.iv453
  store i32 0, i32* %arrayidx328, align 4, !tbaa !0
  %arrayidx332 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 9, i64 1, i64 %indvars.iv453
  store i32 0, i32* %arrayidx332, align 4, !tbaa !0
  %arrayidx336 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 10, i64 0, i64 %indvars.iv453
  store i32 0, i32* %arrayidx336, align 4, !tbaa !0
  %arrayidx340 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 10, i64 1, i64 %indvars.iv453
  store i32 0, i32* %arrayidx340, align 4, !tbaa !0
  %indvars.iv.next454 = add i64 %indvars.iv453, 1
  %lftr.wideiv455 = trunc i64 %indvars.iv.next454 to i32
  %exitcond456 = icmp eq i32 %lftr.wideiv455, 15
  br i1 %exitcond456, label %for.end343, label %for.body312

for.end343:                                       ; preds = %for.body312
  %arrayidx346 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 8, i64 1, i64 0
  %170 = load i32* %arrayidx346, align 4, !tbaa !0
  store i32 %170, i32* @report_frame_statistic.last_b8_mode_0.1.0, align 8, !tbaa !0
  %arrayidx349 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 8, i64 1, i64 1
  %171 = load i32* %arrayidx349, align 4, !tbaa !0
  store i32 %171, i32* @report_frame_statistic.last_b8_mode_0.1.1, align 4, !tbaa !0
  br label %for.body353

for.body353:                                      ; preds = %for.body353, %for.end343
  %indvars.iv = phi i64 [ 0, %for.end343 ], [ %indvars.iv.next, %for.body353 ]
  %arrayidx356 = getelementptr inbounds %struct.StatParameters* %164, i64 0, i32 11, i64 %indvars.iv
  %172 = load i32* %arrayidx356, align 4, !tbaa !0
  %arrayidx358 = getelementptr inbounds [4 x i32]* @report_frame_statistic.last_mode_chroma_use, i64 0, i64 %indvars.iv
  store i32 %172, i32* %arrayidx358, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end361, label %for.body353

for.end361:                                       ; preds = %for.body353
  store i32 0, i32* @frame_statistic_start, align 4, !tbaa !0
  %call362 = call i32 @fclose(%struct._IO_FILE* %p_stat_frm.0) #6
  call void @llvm.lifetime.end(i64 1000, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind optsize
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @report() #0 {
entry:
  %bit_use = alloca [5 x [2 x i32]], align 16
  %seqtype = alloca [80 x i8], align 16
  %0 = bitcast [5 x [2 x i32]]* %bit_use to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  %1 = load i32* @Iframe_ctr, align 4, !tbaa !0
  %arrayidx1 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 2, i64 0
  store i32 %1, i32* %arrayidx1, align 16, !tbaa !0
  %2 = load i32* @Pframe_ctr, align 4, !tbaa !0
  %cmp = icmp sgt i32 %2, 1
  %cond = select i1 %cmp, i32 %2, i32 1
  %arrayidx3 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 0, i64 0
  store i32 %cond, i32* %arrayidx3, align 16, !tbaa !0
  %3 = load i32* @Bframe_ctr, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 1, i64 0
  store i32 %3, i32* %arrayidx5, align 8, !tbaa !0
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body
  %4 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  br label %for.cond12.preheader

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv494 = phi i64 [ 0, %entry ], [ %indvars.iv.next495, %for.body ]
  %arrayidx8 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 %indvars.iv494, i64 1
  store i32 0, i32* %arrayidx8, align 4, !tbaa !0
  %indvars.iv.next495 = add i64 %indvars.iv494, 1
  %lftr.wideiv496 = trunc i64 %indvars.iv.next495 to i32
  %exitcond497 = icmp eq i32 %lftr.wideiv496, 5
  br i1 %exitcond497, label %for.cond9.preheader, label %for.body

for.cond12.preheader:                             ; preds = %for.end24, %for.cond9.preheader
  %indvars.iv490 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next491, %for.end24 ]
  %arrayidx21 = getelementptr inbounds [5 x [2 x i32]]* %bit_use, i64 0, i64 %indvars.iv490, i64 1
  %arrayidx21.promoted = load i32* %arrayidx21, align 4, !tbaa !0
  br label %for.body14

for.body14:                                       ; preds = %for.body14, %for.cond12.preheader
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.body14 ]
  %5 = phi i32 [ %arrayidx21.promoted, %for.cond12.preheader ], [ %add, %for.body14 ]
  %arrayidx18 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 21, i64 %indvars.iv490, i64 %indvars.iv
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  %add = add nsw i32 %5, %6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond489 = icmp eq i32 %lftr.wideiv, 15
  br i1 %exitcond489, label %for.end24, label %for.body14

for.end24:                                        ; preds = %for.body14
  %arrayidx26 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 24, i64 %indvars.iv490
  %7 = load i32* %arrayidx26, align 4, !tbaa !0
  %add30 = add nsw i32 %add, %7
  %arrayidx32 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 23, i64 %indvars.iv490
  %8 = load i32* %arrayidx32, align 4, !tbaa !0
  %add36 = add nsw i32 %8, %add30
  %arrayidx38 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 25, i64 %indvars.iv490
  %9 = load i32* %arrayidx38, align 4, !tbaa !0
  %add42 = add nsw i32 %9, %add36
  %arrayidx44 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 26, i64 %indvars.iv490
  %10 = load i32* %arrayidx44, align 4, !tbaa !0
  %add48 = add nsw i32 %10, %add42
  %arrayidx50 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 27, i64 %indvars.iv490
  %11 = load i32* %arrayidx50, align 4, !tbaa !0
  %add54 = add nsw i32 %11, %add48
  %arrayidx56 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 28, i64 %indvars.iv490
  %12 = load i32* %arrayidx56, align 4, !tbaa !0
  %add60 = add nsw i32 %12, %add54
  %arrayidx62 = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 22, i64 %indvars.iv490
  %13 = load i32* %arrayidx62, align 4, !tbaa !0
  %add66 = add nsw i32 %13, %add60
  store i32 %add66, i32* %arrayidx21, align 4, !tbaa !0
  %indvars.iv.next491 = add i64 %indvars.iv490, 1
  %lftr.wideiv492 = trunc i64 %indvars.iv.next491 to i32
  %exitcond493 = icmp eq i32 %lftr.wideiv492, 5
  br i1 %exitcond493, label %for.end69, label %for.cond12.preheader

for.end69:                                        ; preds = %for.end24
  %14 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %framerate = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 12
  %15 = load float* %framerate, align 4, !tbaa !5
  %16 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %16, i64 0, i32 34
  %17 = load i32* %successive_Bframe, align 4, !tbaa !0
  %add70 = add nsw i32 %17, 1
  %conv = sitofp i32 %add70 to float
  %mul = fmul float %15, %conv
  %jumpd = getelementptr inbounds %struct.InputParameters* %16, i64 0, i32 5
  %18 = load i32* %jumpd, align 4, !tbaa !0
  %add71 = add nsw i32 %18, 1
  %conv72 = sitofp i32 %add71 to float
  %div = fdiv float %mul, %conv72
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 14
  %19 = load i32* %bit_ctr_I, align 4, !tbaa !0
  %conv73 = sitofp i32 %19 to float
  %mul74 = fmul float %div, %conv73
  %no_frames = getelementptr inbounds %struct.InputParameters* %16, i64 0, i32 2
  %20 = load i32* %no_frames, align 4, !tbaa !0
  %add75 = add nsw i32 %3, %20
  %conv76 = sitofp i32 %add75 to float
  %div77 = fdiv float %mul74, %conv76
  %bitrate_I = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 17
  store float %div77, float* %bitrate_I, align 4, !tbaa !5
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 15
  %21 = load i32* %bit_ctr_P, align 4, !tbaa !0
  %conv78 = sitofp i32 %21 to float
  %mul79 = fmul float %div, %conv78
  %div83 = fdiv float %mul79, %conv76
  %bitrate_P = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 18
  store float %div83, float* %bitrate_P, align 4, !tbaa !5
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 16
  %22 = load i32* %bit_ctr_B, align 4, !tbaa !0
  %conv84 = sitofp i32 %22 to float
  %mul85 = fmul float %div, %conv84
  %div89 = fdiv float %mul85, %conv76
  %bitrate_B = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 19
  store float %div89, float* %bitrate_B, align 4, !tbaa !5
  %23 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str26, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %framerate90 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 12
  %27 = load float* %framerate90, align 4, !tbaa !5
  %28 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %jumpd91 = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 5
  %29 = load i32* %jumpd91, align 4, !tbaa !0
  %add92 = add nsw i32 %29, 1
  %conv93 = sitofp i32 %add92 to float
  %div94 = fdiv float %27, %conv93
  %conv95 = fpext float %div94 to double
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8]* @.str27, i64 0, i64 0), double %conv95) #6
  %30 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %hadamard = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 6
  %31 = load i32* %hadamard, align 4, !tbaa !0
  %tobool = icmp eq i32 %31, 0
  br i1 %tobool, label %if.else101, label %if.then

if.then:                                          ; preds = %for.end69
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 7
  %32 = load i32* %hadamardqpel, align 4, !tbaa !0
  %tobool97 = icmp eq i32 %32, 0
  %33 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %tobool97, label %if.else, label %if.then98

if.then98:                                        ; preds = %if.then
  %34 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str28, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %33)
  br label %if.end103

if.else:                                          ; preds = %if.then
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %33)
  br label %if.end103

if.else101:                                       ; preds = %for.end69
  %36 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str30, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %36)
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.else, %if.else101
  %38 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %39 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %img_width = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 16
  %40 = load i32* %img_width, align 4, !tbaa !0
  %img_height = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 17
  %41 = load i32* %img_height, align 4, !tbaa !0
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([44 x i8]* @.str31, i64 0, i64 0), i32 %40, i32 %41) #6
  %42 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %intra_upd = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 19
  %43 = load i32* %intra_upd, align 4, !tbaa !0
  %tobool105 = icmp eq i32 %43, 0
  %44 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %tobool105, label %if.else108, label %if.then106

if.then106:                                       ; preds = %if.end103
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str32, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %44)
  br label %if.end110

if.else108:                                       ; preds = %if.end103
  %46 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str33, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %44)
  br label %if.end110

if.end110:                                        ; preds = %if.else108, %if.then106
  %47 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %48 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %search_range = getelementptr inbounds %struct.InputParameters* %48, i64 0, i32 8
  %49 = load i32* %search_range, align 4, !tbaa !0
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([41 x i8]* @.str34, i64 0, i64 0), i32 %49) #6
  %50 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %51 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %51, i64 0, i32 9
  %52 = load i32* %num_ref_frames, align 4, !tbaa !0
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([41 x i8]* @.str35, i64 0, i64 0), i32 %52) #6
  %53 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %54 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %P_List0_refs = getelementptr inbounds %struct.InputParameters* %54, i64 0, i32 10
  %55 = load i32* %P_List0_refs, align 4, !tbaa !0
  %tobool113 = icmp eq i32 %55, 0
  br i1 %tobool113, label %cond.false116, label %cond.end118

cond.false116:                                    ; preds = %if.end110
  %num_ref_frames117 = getelementptr inbounds %struct.InputParameters* %54, i64 0, i32 9
  %56 = load i32* %num_ref_frames117, align 4, !tbaa !0
  br label %cond.end118

cond.end118:                                      ; preds = %if.end110, %cond.false116
  %cond119 = phi i32 [ %56, %cond.false116 ], [ %55, %if.end110 ]
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([41 x i8]* @.str36, i64 0, i64 0), i32 %cond119) #6
  %57 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe121 = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 34
  %58 = load i32* %successive_Bframe121, align 4, !tbaa !0
  %cmp122 = icmp eq i32 %58, 0
  br i1 %cmp122, label %if.end141, label %if.then124

if.then124:                                       ; preds = %cond.end118
  %59 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %B_List0_refs = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 11
  %60 = load i32* %B_List0_refs, align 4, !tbaa !0
  %tobool125 = icmp eq i32 %60, 0
  br i1 %tobool125, label %cond.false128, label %cond.end130

cond.false128:                                    ; preds = %if.then124
  %num_ref_frames129 = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 9
  %61 = load i32* %num_ref_frames129, align 4, !tbaa !0
  br label %cond.end130

cond.end130:                                      ; preds = %if.then124, %cond.false128
  %cond131 = phi i32 [ %61, %cond.false128 ], [ %60, %if.then124 ]
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([41 x i8]* @.str37, i64 0, i64 0), i32 %cond131) #6
  %62 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %63 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %B_List1_refs = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 12
  %64 = load i32* %B_List1_refs, align 4, !tbaa !0
  %tobool133 = icmp eq i32 %64, 0
  br i1 %tobool133, label %cond.false136, label %cond.end138

cond.false136:                                    ; preds = %cond.end130
  %num_ref_frames137 = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 9
  %65 = load i32* %num_ref_frames137, align 4, !tbaa !0
  br label %cond.end138

cond.end138:                                      ; preds = %cond.end130, %cond.false136
  %cond139 = phi i32 [ %65, %cond.false136 ], [ %64, %cond.end130 ]
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([41 x i8]* @.str38, i64 0, i64 0), i32 %cond139) #6
  br label %if.end141

if.end141:                                        ; preds = %cond.end118, %cond.end138
  %66 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %67 = load i32* @tot_time, align 4, !tbaa !0
  %conv142 = sitofp i32 %67 to double
  %mul143 = fmul double %conv142, 1.000000e-03
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([48 x i8]* @.str39, i64 0, i64 0), double %mul143) #6
  %68 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %69 = load i32* @me_tot_time, align 4, !tbaa !0
  %conv145 = sitofp i32 %69 to double
  %mul146 = fmul double %conv145, 1.000000e-03
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([48 x i8]* @.str40, i64 0, i64 0), double %mul146) #6
  %70 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str41, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %70)
  %72 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe149 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 34
  %73 = load i32* %successive_Bframe149, align 4, !tbaa !0
  %cmp150 = icmp sgt i32 %73, 0
  br i1 %cmp150, label %land.lhs.true, label %if.else266

land.lhs.true:                                    ; preds = %if.end141
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 55
  %74 = load i32* %PyramidCoding, align 4, !tbaa !0
  %tobool152 = icmp eq i32 %74, 0
  br i1 %tobool152, label %if.then159, label %if.then153

if.then153:                                       ; preds = %land.lhs.true
  %75 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %qp0 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 3
  %76 = load i32* %qp0, align 4, !tbaa !0
  %qpN = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 4
  %77 = load i32* %qpN, align 4, !tbaa !0
  %qpB = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 35
  %78 = load i32* %qpB, align 4, !tbaa !0
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i32 %76, i32 %77, i32 %78) #6
  br label %if.end283

if.then159:                                       ; preds = %land.lhs.true
  %79 = getelementptr inbounds [80 x i8]* %seqtype, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %79) #3
  %80 = bitcast [80 x i8]* %seqtype to i16*
  store i16 73, i16* %80, align 16
  br label %for.cond167.preheader

for.cond167.preheader:                            ; preds = %cond.end225.for.cond167.preheader_crit_edge, %if.then159
  %81 = phi %struct.InputParameters* [ %72, %if.then159 ], [ %87, %cond.end225.for.cond167.preheader_crit_edge ]
  %j161.0485 = phi i32 [ 1, %if.then159 ], [ %phitmp498, %cond.end225.for.cond167.preheader_crit_edge ]
  %successive_Bframe168482 = getelementptr inbounds %struct.InputParameters* %81, i64 0, i32 34
  %82 = load i32* %successive_Bframe168482, align 4, !tbaa !0
  %cmp169483 = icmp sgt i32 %82, 0
  br i1 %cmp169483, label %for.body171, label %for.end211

for.body171:                                      ; preds = %for.cond167.preheader, %for.inc209
  %83 = phi %struct.InputParameters* [ %85, %for.inc209 ], [ %81, %for.cond167.preheader ]
  %i160.0484 = phi i32 [ %inc210, %for.inc209 ], [ 0, %for.cond167.preheader ]
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %83, i64 0, i32 54
  %84 = load i32* %BRefPictures, align 4, !tbaa !0
  %tobool172 = icmp eq i32 %84, 0
  %call176 = call i64 @strlen(i8* %79) #8
  %sub = sub i64 79, %call176
  %conv177 = trunc i64 %sub to i32
  %cmp178 = icmp slt i32 %conv177, 0
  br i1 %tobool172, label %if.else190, label %if.then173

if.then173:                                       ; preds = %for.body171
  br i1 %cmp178, label %cond.end186, label %cond.false181

cond.false181:                                    ; preds = %if.then173
  %sext481 = shl i64 %sub, 32
  %phitmp480 = ashr exact i64 %sext481, 32
  br label %cond.end186

cond.end186:                                      ; preds = %if.then173, %cond.false181
  %cond187 = phi i64 [ %phitmp480, %cond.false181 ], [ 0, %if.then173 ]
  %call189 = call i8* @strncat(i8* %79, i8* getelementptr inbounds ([4 x i8]* @.str44, i64 0, i64 0), i64 %cond187) #6
  br label %for.inc209

if.else190:                                       ; preds = %for.body171
  br i1 %cmp178, label %cond.end204, label %cond.false199

cond.false199:                                    ; preds = %if.else190
  %sext479 = shl i64 %sub, 32
  %phitmp478 = ashr exact i64 %sext479, 32
  br label %cond.end204

cond.end204:                                      ; preds = %if.else190, %cond.false199
  %cond205 = phi i64 [ %phitmp478, %cond.false199 ], [ 0, %if.else190 ]
  %call207 = call i8* @strncat(i8* %79, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i64 %cond205) #6
  br label %for.inc209

for.inc209:                                       ; preds = %cond.end186, %cond.end204
  %inc210 = add nsw i32 %i160.0484, 1
  %85 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe168 = getelementptr inbounds %struct.InputParameters* %85, i64 0, i32 34
  %86 = load i32* %successive_Bframe168, align 4, !tbaa !0
  %cmp169 = icmp slt i32 %inc210, %86
  br i1 %cmp169, label %for.body171, label %for.end211

for.end211:                                       ; preds = %for.inc209, %for.cond167.preheader
  %call214 = call i64 @strlen(i8* %79) #8
  %sub215 = sub i64 79, %call214
  %conv216 = trunc i64 %sub215 to i32
  %cmp217 = icmp slt i32 %conv216, 0
  br i1 %cmp217, label %cond.end225, label %cond.false220

cond.false220:                                    ; preds = %for.end211
  %sext = shl i64 %sub215, 32
  %phitmp = ashr exact i64 %sext, 32
  br label %cond.end225

cond.end225:                                      ; preds = %for.end211, %cond.false220
  %cond226 = phi i64 [ %phitmp, %cond.false220 ], [ 0, %for.end211 ]
  %call228 = call i8* @strncat(i8* %79, i8* getelementptr inbounds ([3 x i8]* @.str46, i64 0, i64 0), i64 %cond226) #6
  %exitcond = icmp eq i32 %j161.0485, 2
  %87 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br i1 %exitcond, label %for.end231, label %cond.end225.for.cond167.preheader_crit_edge

cond.end225.for.cond167.preheader_crit_edge:      ; preds = %cond.end225
  %phitmp498 = add i32 %j161.0485, 1
  br label %for.cond167.preheader

for.end231:                                       ; preds = %cond.end225
  %BRefPictures232 = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 54
  %88 = load i32* %BRefPictures232, align 4, !tbaa !0
  %tobool233 = icmp eq i32 %88, 0
  %89 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %qp0236 = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 3
  %90 = load i32* %qp0236, align 4, !tbaa !0
  %qpN237 = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 4
  %91 = load i32* %qpN237, align 4, !tbaa !0
  %qpB238 = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 35
  %92 = load i32* %qpB238, align 4, !tbaa !0
  br i1 %tobool233, label %if.else259, label %if.then234

if.then234:                                       ; preds = %for.end231
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters* %87, i64 0, i32 36
  %93 = load i32* %qpBRSOffset, align 4, !tbaa !0
  %add239 = add nsw i32 %93, %92
  %cmp240 = icmp slt i32 %add239, 0
  br i1 %cmp240, label %cond.end256, label %cond.false243

cond.false243:                                    ; preds = %if.then234
  %cmp247 = icmp sgt i32 %add239, 51
  %.add239 = select i1 %cmp247, i32 51, i32 %add239
  br label %cond.end256

cond.end256:                                      ; preds = %cond.false243, %if.then234
  %cond257 = phi i32 [ 0, %if.then234 ], [ %.add239, %cond.false243 ]
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0), i8* %79, i32 %90, i32 %91, i32 %cond257) #6
  br label %if.end283

if.else259:                                       ; preds = %for.end231
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([29 x i8]* @.str48, i64 0, i64 0), i8* %79, i32 %90, i32 %91, i32 %92) #6
  br label %if.end283

if.else266:                                       ; preds = %if.end141
  %cmp268 = icmp eq i32 %73, 0
  br i1 %cmp268, label %land.lhs.true270, label %if.else277

land.lhs.true270:                                 ; preds = %if.else266
  %sp_periodicity = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 43
  %94 = load i32* %sp_periodicity, align 4, !tbaa !0
  %cmp271 = icmp eq i32 %94, 0
  br i1 %cmp271, label %if.then273, label %if.else277

if.then273:                                       ; preds = %land.lhs.true270
  %95 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %qp0274 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 3
  %96 = load i32* %qp0274, align 4, !tbaa !0
  %qpN275 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 4
  %97 = load i32* %qpN275, align 4, !tbaa !0
  %call276 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([25 x i8]* @.str49, i64 0, i64 0), i32 %96, i32 %97) #6
  br label %if.end283

if.else277:                                       ; preds = %land.lhs.true270, %if.else266
  %98 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %qp0278 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 3
  %99 = load i32* %qp0278, align 4, !tbaa !0
  %qpN279 = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 4
  %100 = load i32* %qpN279, align 4, !tbaa !0
  %qpsp = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 44
  %101 = load i32* %qpsp, align 4, !tbaa !0
  %qpsp_pred = getelementptr inbounds %struct.InputParameters* %72, i64 0, i32 45
  %102 = load i32* %qpsp_pred, align 4, !tbaa !0
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([44 x i8]* @.str50, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102) #6
  br label %if.end283

if.end283:                                        ; preds = %cond.end256, %if.else259, %if.else277, %if.then273, %if.then153
  %103 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 59
  %104 = load i32* %symbol_mode, align 4, !tbaa !0
  %cmp284 = icmp eq i32 %104, 0
  %105 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp284, label %if.then286, label %if.else288

if.then286:                                       ; preds = %if.end283
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str51, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %105)
  br label %if.end290

if.else288:                                       ; preds = %if.end283
  %107 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str52, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %105)
  br label %if.end290

if.end290:                                        ; preds = %if.else288, %if.then286
  %108 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %109 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %ProfileIDC = getelementptr inbounds %struct.InputParameters* %109, i64 0, i32 0
  %110 = load i32* %ProfileIDC, align 4, !tbaa !0
  %LevelIDC = getelementptr inbounds %struct.InputParameters* %109, i64 0, i32 1
  %111 = load i32* %LevelIDC, align 4, !tbaa !0
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([46 x i8]* @.str53, i64 0, i64 0), i32 %110, i32 %111) #6
  %112 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %full_search = getelementptr inbounds %struct.InputParameters* %112, i64 0, i32 78
  %113 = load i32* %full_search, align 4, !tbaa !0
  %cmp292 = icmp eq i32 %113, 2
  br i1 %cmp292, label %if.then294, label %if.else296

if.then294:                                       ; preds = %if.end290
  %114 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %115 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str54, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %114)
  br label %if.end305

if.else296:                                       ; preds = %if.end290
  %cmp298 = icmp eq i32 %113, 1
  %116 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %cmp298, label %if.then300, label %if.else302

if.then300:                                       ; preds = %if.else296
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str55, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %116)
  br label %if.end305

if.else302:                                       ; preds = %if.else296
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([80 x i8]* @.str56, i64 0, i64 0), i64 79, i64 1, %struct._IO_FILE* %116)
  br label %if.end305

if.end305:                                        ; preds = %if.then300, %if.else302, %if.then294
  %119 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %rdopt = getelementptr inbounds %struct.InputParameters* %119, i64 0, i32 85
  %120 = load i32* %rdopt, align 4, !tbaa !0
  %tobool306 = icmp eq i32 %120, 0
  %121 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %tobool306, label %if.else309, label %if.then307

if.then307:                                       ; preds = %if.end305
  %122 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str57, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %121)
  br label %if.end311

if.else309:                                       ; preds = %if.end305
  %123 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str58, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %121)
  br label %if.end311

if.end311:                                        ; preds = %if.else309, %if.then307
  %124 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %partition_mode = getelementptr inbounds %struct.InputParameters* %124, i64 0, i32 61
  %125 = load i32* %partition_mode, align 4, !tbaa !0
  switch i32 %125, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb313
  ]

sw.bb:                                            ; preds = %if.end311
  %126 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %127 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str59, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %126)
  br label %sw.epilog

sw.bb313:                                         ; preds = %if.end311
  %128 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str60, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %128)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end311
  %130 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %131 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str61, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %130)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb313, %sw.bb
  %132 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %of_mode = getelementptr inbounds %struct.InputParameters* %132, i64 0, i32 60
  %133 = load i32* %of_mode, align 4, !tbaa !0
  switch i32 %133, label %sw.default320 [
    i32 0, label %sw.bb316
    i32 1, label %sw.bb318
  ]

sw.bb316:                                         ; preds = %sw.epilog
  %134 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %135 = call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str62, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %134)
  br label %sw.epilog322

sw.bb318:                                         ; preds = %sw.epilog
  %136 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %137 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str63, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %136)
  br label %sw.epilog322

sw.default320:                                    ; preds = %sw.epilog
  %138 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %139 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str64, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %138)
  br label %sw.epilog322

sw.epilog322:                                     ; preds = %sw.default320, %sw.bb318, %sw.bb316
  %140 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters* %140, i64 0, i32 143
  %141 = load i32* %residue_transform_flag, align 4, !tbaa !0
  %tobool323 = icmp eq i32 %141, 0
  %142 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br i1 %tobool323, label %if.else326, label %if.then324

if.then324:                                       ; preds = %sw.epilog322
  %143 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str65, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %142)
  br label %if.end328

if.else326:                                       ; preds = %sw.epilog322
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str66, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %142)
  br label %if.end328

if.end328:                                        ; preds = %if.else326, %if.then324
  %145 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %146 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str67, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %145)
  %147 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %148 = load %struct.SNRParameters** @snr, align 8, !tbaa !3
  %snr_ya = getelementptr inbounds %struct.SNRParameters* %148, i64 0, i32 9
  %149 = load float* %snr_ya, align 4, !tbaa !5
  %conv330 = fpext float %149 to double
  %call331 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([44 x i8]* @.str68, i64 0, i64 0), double %conv330) #6
  %150 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %151 = load %struct.SNRParameters** @snr, align 8, !tbaa !3
  %snr_ua = getelementptr inbounds %struct.SNRParameters* %151, i64 0, i32 10
  %152 = load float* %snr_ua, align 4, !tbaa !5
  %conv332 = fpext float %152 to double
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([44 x i8]* @.str69, i64 0, i64 0), double %conv332) #6
  %153 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %154 = load %struct.SNRParameters** @snr, align 8, !tbaa !3
  %snr_va = getelementptr inbounds %struct.SNRParameters* %154, i64 0, i32 11
  %155 = load float* %snr_va, align 4, !tbaa !5
  %conv334 = fpext float %155 to double
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([44 x i8]* @.str70, i64 0, i64 0), double %conv334) #6
  %156 = load i32* @Bframe_ctr, align 4, !tbaa !0
  %cmp336 = icmp eq i32 %156, 0
  %157 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %158 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bit_ctr_P339 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 15
  %159 = load i32* %bit_ctr_P339, align 4, !tbaa !0
  %bit_ctr_I340 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 14
  %160 = load i32* %bit_ctr_I340, align 4, !tbaa !0
  %add341 = add nsw i32 %160, %159
  br i1 %cmp336, label %if.else370, label %if.then338

if.then338:                                       ; preds = %if.end328
  %bit_ctr_B342 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 16
  %161 = load i32* %bit_ctr_B342, align 4, !tbaa !0
  %add343 = add nsw i32 %161, %add341
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 32
  %162 = load i32* %bit_ctr_parametersets, align 4, !tbaa !0
  %add344 = add nsw i32 %add343, %162
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([70 x i8]* @.str71, i64 0, i64 0), i32 %add344, i32 %160, i32 %159, i32 %161, i32 %162) #6
  %163 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %framerate350 = getelementptr inbounds %struct.ImageParameters* %163, i64 0, i32 12
  %164 = load float* %framerate350, align 4, !tbaa !5
  %165 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %successive_Bframe351 = getelementptr inbounds %struct.InputParameters* %165, i64 0, i32 34
  %166 = load i32* %successive_Bframe351, align 4, !tbaa !0
  %add352 = add nsw i32 %166, 1
  %conv353 = sitofp i32 %add352 to float
  %mul354 = fmul float %164, %conv353
  %jumpd355 = getelementptr inbounds %struct.InputParameters* %165, i64 0, i32 5
  %167 = load i32* %jumpd355, align 4, !tbaa !0
  %add356 = add nsw i32 %167, 1
  %conv357 = sitofp i32 %add356 to float
  %div358 = fdiv float %mul354, %conv357
  %conv359 = sitofp i32 %add344 to float
  %mul360 = fmul float %conv359, %div358
  %no_frames361 = getelementptr inbounds %struct.InputParameters* %165, i64 0, i32 2
  %168 = load i32* %no_frames361, align 4, !tbaa !0
  %169 = load i32* @Bframe_ctr, align 4, !tbaa !0
  %add362 = add nsw i32 %169, %168
  %conv363 = sitofp i32 %add362 to float
  %div364 = fdiv float %mul360, %conv363
  %170 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bitrate = getelementptr inbounds %struct.StatParameters* %170, i64 0, i32 3
  store float %div364, float* %bitrate, align 4, !tbaa !5
  %171 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %conv365 = fpext float %div358 to double
  %div367 = fdiv float %div364, 1.000000e+03
  %conv368 = fpext float %div367 to double
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), double %conv365, double %conv368) #6
  br label %if.end427

if.else370:                                       ; preds = %if.end328
  %bit_ctr_parametersets378 = getelementptr inbounds %struct.StatParameters* %158, i64 0, i32 32
  %172 = load i32* %bit_ctr_parametersets378, align 4, !tbaa !0
  %add379 = add nsw i32 %172, %add341
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([65 x i8]* @.str73, i64 0, i64 0), i32 %add379, i32 %160, i32 %159, i32 %172) #6
  %173 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %framerate384 = getelementptr inbounds %struct.ImageParameters* %173, i64 0, i32 12
  %174 = load float* %framerate384, align 4, !tbaa !5
  %175 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %jumpd385 = getelementptr inbounds %struct.InputParameters* %175, i64 0, i32 5
  %176 = load i32* %jumpd385, align 4, !tbaa !0
  %add386 = add nsw i32 %176, 1
  %conv387 = sitofp i32 %add386 to float
  %div388 = fdiv float %174, %conv387
  %conv389 = sitofp i32 %add379 to float
  %mul390 = fmul float %conv389, %div388
  %no_frames391 = getelementptr inbounds %struct.InputParameters* %175, i64 0, i32 2
  %177 = load i32* %no_frames391, align 4, !tbaa !0
  %conv392 = sitofp i32 %177 to float
  %div393 = fdiv float %mul390, %conv392
  %178 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bitrate394 = getelementptr inbounds %struct.StatParameters* %178, i64 0, i32 3
  store float %div393, float* %bitrate394, align 4, !tbaa !5
  %179 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %conv395 = fpext float %div388 to double
  %div397 = fdiv float %div393, 1.000000e+03
  %conv398 = fpext float %div397 to double
  %call399 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), double %conv395, double %conv398) #6
  br label %if.end427

if.end427:                                        ; preds = %if.else370, %if.then338
  %180 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %181 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters* %181, i64 0, i32 7
  %182 = load i32* %bit_ctr_emulationprevention, align 4, !tbaa !0
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([42 x i8]* @.str74, i64 0, i64 0), i32 %182) #6
  %183 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %184 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %bit_ctr_parametersets429 = getelementptr inbounds %struct.StatParameters* %184, i64 0, i32 32
  %185 = load i32* %bit_ctr_parametersets429, align 4, !tbaa !0
  %call430 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([42 x i8]* @.str75, i64 0, i64 0), i32 %185) #6
  %186 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %187 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str26, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %186)
  %188 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call432 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([27 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #6
  %189 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %189)
  %190 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters* %190, i64 0, i32 125
  %191 = load i32* %ReportFrameStats, align 4, !tbaa !0
  %tobool434 = icmp eq i32 %191, 0
  br i1 %tobool434, label %if.end445, label %if.then435

if.then435:                                       ; preds = %if.end427
  %call436 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call436, %struct._IO_FILE** @p_log, align 8, !tbaa !3
  %cmp437 = icmp eq %struct._IO_FILE* %call436, null
  br i1 %cmp437, label %if.then439, label %if.else441

if.then439:                                       ; preds = %if.then435
  %call440 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #6
  br label %if.end445

if.else441:                                       ; preds = %if.then435
  %192 = call i64 @fwrite(i8* getelementptr inbounds ([469 x i8]* @.str9, i64 0, i64 0), i64 468, i64 1, %struct._IO_FILE* %call436)
  %193 = load %struct._IO_FILE** @p_log, align 8, !tbaa !3
  %call443 = call i32 @fclose(%struct._IO_FILE* %193) #6
  br label %if.end445

if.end445:                                        ; preds = %if.end427, %if.then439, %if.else441
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strncat(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @information_init() #0 {
entry:
  %yuv_types = alloca [4 x [10 x i8]], align 16
  %0 = getelementptr inbounds [4 x [10 x i8]]* %yuv_types, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x [10 x i8]]* @information_init.yuv_types, i64 0, i64 0, i64 0), i64 40, i32 16, i1 false)
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0)) #6
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 26, i64 0
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str79, i64 0, i64 0), i8* %arraydecay) #6
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 27, i64 0
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str80, i64 0, i64 0), i8* %arraydecay2) #6
  %3 = load i32* @p_dec, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %arraydecay4 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 28, i64 0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str81, i64 0, i64 0), i8* %arraydecay4) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 159
  %6 = load i32* %yuv_format, align 4, !tbaa !0
  %idxprom = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [4 x [10 x i8]]* %yuv_types, i64 0, i64 %idxprom, i64 0
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str82, i64 0, i64 0), i8* %arrayidx6) #6
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %no_frames = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 2
  %8 = load i32* %no_frames, align 4, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 34
  %9 = load i32* %successive_Bframe, align 4, !tbaa !0
  %sub = add nsw i32 %8, -1
  %mul = mul nsw i32 %9, %sub
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str83, i64 0, i64 0), i32 %8, i32 %mul) #6
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 91
  %11 = load i32* %PicInterlace, align 4, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 92
  %12 = load i32* %MbInterlace, align 4, !tbaa !0
  %call10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str84, i64 0, i64 0), i32 %11, i32 %12) #6
  %13 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 123
  %14 = load i32* %AllowTransform8x8, align 4, !tbaa !0
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str85, i64 0, i64 0), i32 %14) #6
  %puts = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str95, i64 0, i64 0))
  %puts15 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str94, i64 0, i64 0))
  %puts16 = call i32 @puts(i8* getelementptr inbounds ([80 x i8]* @str95, i64 0, i64 0))
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @init_orig_buffers() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %1 = load i32* %height, align 4, !tbaa !0
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %2 = load i32* %width, align 4, !tbaa !0
  %call = tail call i32 @get_mem2Dpel(i16*** @imgY_org_frm, i32 %1, i32 %2) #6
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 159
  %4 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %height_cr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 16
  %5 = load i32* %height_cr, align 4, !tbaa !0
  %width_cr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 14
  %6 = load i32* %width_cr, align 4, !tbaa !0
  %call1 = tail call i32 @get_mem3Dpel(i16**** @imgUV_org_frm, i32 2, i32 %5, i32 %6) #6
  %add2 = add nsw i32 %call1, %call
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %memory_size.0 = phi i32 [ %add2, %if.then ], [ %call, %entry ]
  %7 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %7, i64 0, i32 25
  %8 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %if.then3, label %if.end34

if.then3:                                         ; preds = %if.end
  %9 = load i16*** @imgY_org_frm, align 8, !tbaa !3
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height4 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 15
  %11 = load i32* %height4, align 4, !tbaa !0
  %width5 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 13
  %12 = load i32* %width5, align 4, !tbaa !0
  %call6 = tail call i32 @init_top_bot_planes(i16** %9, i32 %11, i32 %12, i16*** @imgY_org_top, i16*** @imgY_org_bot) #6
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format7 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 159
  %14 = load i32* %yuv_format7, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %14, 0
  br i1 %cmp8, label %if.end34, label %if.then9

if.then9:                                         ; preds = %if.then3
  %call10 = tail call noalias i8* @calloc(i64 2, i64 8) #6
  %15 = bitcast i8* %call10 to i16***
  store i16*** %15, i16**** @imgUV_org_top, align 8, !tbaa !3
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str87, i64 0, i64 0)) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  %call14 = tail call noalias i8* @calloc(i64 2, i64 8) #6
  %16 = bitcast i8* %call14 to i16***
  store i16*** %16, i16**** @imgUV_org_bot, align 8, !tbaa !3
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str88, i64 0, i64 0)) #6
  %.pre = load i16**** @imgUV_org_bot, align 8, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then16
  %17 = phi i16*** [ %.pre, %if.then16 ], [ %16, %if.end13 ]
  %add18 = add i32 %memory_size.0, 32
  %18 = load i16**** @imgUV_org_frm, align 8, !tbaa !3
  %19 = load i16*** %18, align 8, !tbaa !3
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height_cr20 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 16
  %21 = load i32* %height_cr20, align 4, !tbaa !0
  %width_cr21 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 14
  %22 = load i32* %width_cr21, align 4, !tbaa !0
  %23 = load i16**** @imgUV_org_top, align 8, !tbaa !3
  %call24 = tail call i32 @init_top_bot_planes(i16** %19, i32 %21, i32 %22, i16*** %23, i16*** %17) #6
  %add25 = add nsw i32 %add18, %call24
  %24 = load i16**** @imgUV_org_frm, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16*** %24, i64 1
  %25 = load i16*** %arrayidx26, align 8, !tbaa !3
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height_cr27 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 16
  %27 = load i32* %height_cr27, align 4, !tbaa !0
  %width_cr28 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 14
  %28 = load i32* %width_cr28, align 4, !tbaa !0
  %29 = load i16**** @imgUV_org_top, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i16*** %29, i64 1
  %30 = load i16**** @imgUV_org_bot, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds i16*** %30, i64 1
  %call31 = tail call i32 @init_top_bot_planes(i16** %25, i32 %27, i32 %28, i16*** %arrayidx29, i16*** %arrayidx30) #6
  %add32 = add nsw i32 %add25, %call31
  br label %if.end34

if.end34:                                         ; preds = %if.then3, %if.end, %if.end17
  %memory_size.1 = phi i32 [ %memory_size.0, %if.end ], [ %add32, %if.end17 ], [ %memory_size.0, %if.then3 ]
  ret i32 %memory_size.1
}

; Function Attrs: optsize
declare i32 @get_mem2Dpel(i16***, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem3Dpel(i16****, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @init_top_bot_planes(i16**, i32, i32, i16***, i16***) #1

; Function Attrs: nounwind optsize uwtable
define i32 @init_global_buffers() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %1 = load i32* %max_num_references, align 4, !tbaa !0
  %mul = shl nsw i32 %1, 1
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul1) #6
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** @last_P_no_frm, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str89, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %3, i64 0, i32 25
  %4 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %5 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references4 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 9
  %6 = load i32* %max_num_references4, align 4, !tbaa !0
  %mul5 = shl nsw i32 %6, 2
  %conv6 = sext i32 %mul5 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call8 = tail call noalias i8* @malloc(i64 %mul7) #6
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** @last_P_no_fld, align 8, !tbaa !3
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str89, i64 0, i64 0)) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then3, %if.then11
  %call14 = tail call i32 @init_orig_buffers() #7
  %8 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 46
  %9 = load i32* %WeightedPrediction, align 4, !tbaa !0
  %tobool15 = icmp eq i32 %9, 0
  br i1 %tobool15, label %lor.lhs.false, label %if.then19

lor.lhs.false:                                    ; preds = %if.end13
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 47
  %10 = load i32* %WeightedBiprediction, align 4, !tbaa !0
  %tobool16 = icmp eq i32 %10, 0
  br i1 %tobool16, label %lor.lhs.false17, label %if.then19

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 15
  %11 = load i32* %GenerateMultiplePPS, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %11, 0
  br i1 %tobool18, label %if.end26, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %if.end13
  %call20 = tail call i32 @get_mem3Dint(i32**** @wp_weight, i32 6, i32 15, i32 3) #6
  %add21 = add nsw i32 %call20, %call14
  %call22 = tail call i32 @get_mem3Dint(i32**** @wp_offset, i32 6, i32 15, i32 3) #6
  %add23 = add nsw i32 %add21, %call22
  %call24 = tail call i32 @get_mem4Dint(i32***** @wbp_weight, i32 6, i32 15, i32 15, i32 3) #6
  %add25 = add nsw i32 %add23, %call24
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false17, %if.then19
  %12 = phi %struct.InputParameters* [ %.pre, %if.then19 ], [ %8, %lor.lhs.false17 ]
  %memory_size.0 = phi i32 [ %add25, %if.then19 ], [ %call14, %lor.lhs.false17 ]
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 34
  %13 = load i32* %successive_Bframe, align 4, !tbaa !0
  %cmp27 = icmp eq i32 %13, 0
  br i1 %cmp27, label %lor.lhs.false29, label %if.then32

lor.lhs.false29:                                  ; preds = %if.end26
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 54
  %14 = load i32* %BRefPictures, align 4, !tbaa !0
  %cmp30 = icmp sgt i32 %14, 0
  br i1 %cmp30, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.end26, %lor.lhs.false29
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 13
  %16 = load i32* %width, align 4, !tbaa !0
  %div = sdiv i32 %16, 4
  %height = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 15
  %17 = load i32* %height, align 4, !tbaa !0
  %div33 = sdiv i32 %17, 4
  %call34 = tail call i32 @get_mem3Dshort(i16**** @direct_ref_idx, i32 2, i32 %div, i32 %div33) #6
  %add35 = add nsw i32 %call34, %memory_size.0
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width36 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 13
  %19 = load i32* %width36, align 4, !tbaa !0
  %div37 = sdiv i32 %19, 4
  %height38 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 15
  %20 = load i32* %height38, align 4, !tbaa !0
  %div39 = sdiv i32 %20, 4
  %call40 = tail call i32 @get_mem2Dshort(i16*** @direct_pdir, i32 %div37, i32 %div39) #6
  %add41 = add nsw i32 %add35, %call40
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %lor.lhs.false29
  %memory_size.1 = phi i32 [ %add41, %if.then32 ], [ %memory_size.0, %lor.lhs.false29 ]
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height43 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15
  %22 = load i32* %height43, align 4, !tbaa !0
  %add44 = add nsw i32 %22, 8
  %width45 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 13
  %23 = load i32* %width45, align 4, !tbaa !0
  %add46 = shl i32 %23, 2
  %mul47 = add i32 %add46, 32
  %call48 = tail call i32 @get_mem2Dint(i32*** @img4Y_tmp, i32 %add44, i32 %mul47) #6
  %add49 = add nsw i32 %call48, %memory_size.1
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %rdopt = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 85
  %25 = load i32* %rdopt, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %25, 2
  br i1 %cmp50, label %if.then52, label %if.end95

if.then52:                                        ; preds = %if.end42
  %26 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %resY = getelementptr inbounds %struct.Decoders* %26, i64 0, i32 0
  %call53 = tail call i32 @get_mem2Dint(i32*** %resY, i32 16, i32 16) #6
  %add54 = add nsw i32 %call53, %add49
  %27 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 97
  %28 = load i32* %NoOfDecoders, align 4, !tbaa !0
  %conv55 = sext i32 %28 to i64
  %call56 = tail call noalias i8* @calloc(i64 %conv55, i64 8) #6
  %29 = bitcast i8* %call56 to i16****
  %30 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref = getelementptr inbounds %struct.Decoders* %30, i64 0, i32 2
  store i16**** %29, i16***** %decref, align 8, !tbaa !3
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then59, label %for.cond.preheader

if.then59:                                        ; preds = %if.then52
  tail call void @no_mem_exit(i8* getelementptr inbounds ([28 x i8]* @.str90, i64 0, i64 0)) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then59, %if.then52
  %31 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders61152 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 97
  %32 = load i32* %NoOfDecoders61152, align 4, !tbaa !0
  %cmp62153 = icmp sgt i32 %32, 0
  br i1 %cmp62153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %memory_size.2155 = phi i32 [ %add70, %for.body ], [ %add54, %for.cond.preheader ]
  %33 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref64 = getelementptr inbounds %struct.Decoders* %33, i64 0, i32 2
  %34 = load i16***** %decref64, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16**** %34, i64 %indvars.iv
  %35 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references65 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 9
  %36 = load i32* %max_num_references65, align 4, !tbaa !0
  %add66 = add nsw i32 %36, 1
  %height67 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 15
  %37 = load i32* %height67, align 4, !tbaa !0
  %width68 = getelementptr inbounds %struct.ImageParameters* %35, i64 0, i32 13
  %38 = load i32* %width68, align 4, !tbaa !0
  %call69 = tail call i32 @get_mem3Dpel(i16**** %arrayidx, i32 %add66, i32 %37, i32 %38) #6
  %add70 = add nsw i32 %call69, %memory_size.2155
  %indvars.iv.next = add i64 %indvars.iv, 1
  %39 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders61 = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 97
  %40 = load i32* %NoOfDecoders61, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp62 = icmp slt i32 %41, %40
  br i1 %cmp62, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %memory_size.2.lcssa = phi i32 [ %add54, %for.cond.preheader ], [ %add70, %for.body ]
  %42 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %RefBlock = getelementptr inbounds %struct.Decoders* %42, i64 0, i32 4
  %call71 = tail call i32 @get_mem2Dpel(i16*** %RefBlock, i32 4, i32 4) #6
  %add72 = add nsw i32 %call71, %memory_size.2.lcssa
  %43 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY = getelementptr inbounds %struct.Decoders* %43, i64 0, i32 1
  %44 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders73 = getelementptr inbounds %struct.InputParameters* %44, i64 0, i32 97
  %45 = load i32* %NoOfDecoders73, align 4, !tbaa !0
  %46 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height74 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 15
  %47 = load i32* %height74, align 4, !tbaa !0
  %width75 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 13
  %48 = load i32* %width75, align 4, !tbaa !0
  %call76 = tail call i32 @get_mem3Dpel(i16**** %decY, i32 %45, i32 %47, i32 %48) #6
  %add77 = add nsw i32 %add72, %call76
  %49 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY_best = getelementptr inbounds %struct.Decoders* %49, i64 0, i32 3
  %50 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders78 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 97
  %51 = load i32* %NoOfDecoders78, align 4, !tbaa !0
  %52 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height79 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 15
  %53 = load i32* %height79, align 4, !tbaa !0
  %width80 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 13
  %54 = load i32* %width80, align 4, !tbaa !0
  %call81 = tail call i32 @get_mem3Dpel(i16**** %decY_best, i32 %51, i32 %53, i32 %54) #6
  %add82 = add nsw i32 %add77, %call81
  %55 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %status_map = getelementptr inbounds %struct.Decoders* %55, i64 0, i32 5
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height83 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 15
  %57 = load i32* %height83, align 4, !tbaa !0
  %div84 = sdiv i32 %57, 16
  %width85 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 13
  %58 = load i32* %width85, align 4, !tbaa !0
  %div86 = sdiv i32 %58, 16
  %call87 = tail call i32 @get_mem2D(i8*** %status_map, i32 %div84, i32 %div86) #6
  %add88 = add nsw i32 %add82, %call87
  %59 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %59, i64 0, i32 6
  %60 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width89 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 13
  %61 = load i32* %width89, align 4, !tbaa !0
  %div90 = sdiv i32 %61, 16
  %height91 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 15
  %62 = load i32* %height91, align 4, !tbaa !0
  %div92 = sdiv i32 %62, 16
  %call93 = tail call i32 @get_mem2D(i8*** %dec_mb_mode, i32 %div90, i32 %div92) #6
  %add94 = add nsw i32 %add88, %call93
  %.pre156 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end95

if.end95:                                         ; preds = %for.end, %if.end42
  %63 = phi %struct.InputParameters* [ %.pre156, %for.end ], [ %24, %if.end42 ]
  %memory_size.3 = phi i32 [ %add94, %for.end ], [ %add49, %if.end42 ]
  %RestrictRef = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 98
  %64 = load i32* %RestrictRef, align 4, !tbaa !0
  %tobool96 = icmp eq i32 %64, 0
  br i1 %tobool96, label %if.end108, label %if.then97

if.then97:                                        ; preds = %if.end95
  %65 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height98 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 15
  %66 = load i32* %height98, align 4, !tbaa !0
  %width99 = getelementptr inbounds %struct.ImageParameters* %65, i64 0, i32 13
  %67 = load i32* %width99, align 4, !tbaa !0
  %call100 = tail call i32 @get_mem2D(i8*** @pixel_map, i32 %66, i32 %67) #6
  %add101 = add nsw i32 %call100, %memory_size.3
  %68 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height102 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 15
  %69 = load i32* %height102, align 4, !tbaa !0
  %div103 = sdiv i32 %69, 8
  %width104 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 13
  %70 = load i32* %width104, align 4, !tbaa !0
  %div105 = sdiv i32 %70, 8
  %call106 = tail call i32 @get_mem2D(i8*** @refresh_map, i32 %div103, i32 %div105) #6
  %add107 = add nsw i32 %add101, %call106
  br label %if.end108

if.end108:                                        ; preds = %if.end95, %if.then97
  %memory_size.4 = phi i32 [ %add107, %if.then97 ], [ %memory_size.3, %if.end95 ]
  %71 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %71, i64 0, i32 25
  %72 = load i32* %frame_mbs_only_flag109, align 4, !tbaa !1
  %tobool110 = icmp eq i32 %72, 0
  br i1 %tobool110, label %if.then111, label %if.end122

if.then111:                                       ; preds = %if.end108
  %73 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height112 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 15
  %74 = load i32* %height112, align 4, !tbaa !0
  %width113 = getelementptr inbounds %struct.ImageParameters* %73, i64 0, i32 13
  %75 = load i32* %width113, align 4, !tbaa !0
  %call114 = tail call i32 @get_mem2Dpel(i16*** @imgY_com, i32 %74, i32 %75) #6
  %add115 = add nsw i32 %call114, %memory_size.4
  %76 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 159
  %77 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp116 = icmp eq i32 %77, 0
  br i1 %cmp116, label %if.end122, label %if.then118

if.then118:                                       ; preds = %if.then111
  %height_cr = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 16
  %78 = load i32* %height_cr, align 4, !tbaa !0
  %width_cr = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 14
  %79 = load i32* %width_cr, align 4, !tbaa !0
  %call119 = tail call i32 @get_mem3Dpel(i16**** @imgUV_com, i32 2, i32 %78, i32 %79) #6
  %add120 = add nsw i32 %call119, %add115
  br label %if.end122

if.end122:                                        ; preds = %if.then111, %if.end108, %if.then118
  %memory_size.5 = phi i32 [ %add120, %if.then118 ], [ %memory_size.4, %if.end108 ], [ %add115, %if.then111 ]
  %80 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %FMEnable = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 134
  %81 = load i32* %FMEnable, align 4, !tbaa !0
  %tobool123 = icmp eq i32 %81, 0
  br i1 %tobool123, label %if.end127, label %if.then124

if.then124:                                       ; preds = %if.end122
  %call125 = tail call i32 (...)* @get_mem_FME() #6
  %add126 = add nsw i32 %call125, %memory_size.5
  %.pre157 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end127

if.end127:                                        ; preds = %if.end122, %if.then124
  %82 = phi %struct.InputParameters* [ %.pre157, %if.then124 ], [ %80, %if.end122 ]
  %memory_size.6 = phi i32 [ %add126, %if.then124 ], [ %memory_size.5, %if.end122 ]
  %RCEnable = getelementptr inbounds %struct.InputParameters* %82, i64 0, i32 127
  %83 = load i32* %RCEnable, align 4, !tbaa !0
  %tobool128 = icmp eq i32 %83, 0
  br i1 %tobool128, label %if.end130, label %if.then129

if.then129:                                       ; preds = %if.end127
  tail call void (...)* @rc_alloc() #6
  br label %if.end130

if.end130:                                        ; preds = %if.end127, %if.then129
  ret i32 %memory_size.6
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem3Dshort(i16****, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem2Dshort(i16***, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem2D(i8***, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_mem_FME(...) #1

; Function Attrs: optsize
declare void @rc_alloc(...) #1

; Function Attrs: nounwind optsize uwtable
define void @free_orig_planes() #0 {
entry:
  %0 = load i16*** @imgY_org_frm, align 8, !tbaa !3
  tail call void @free_mem2Dpel(i16** %0) #6
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 159
  %2 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i16**** @imgUV_org_frm, align 8, !tbaa !3
  tail call void @free_mem3Dpel(i16*** %3, i32 2) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %4, i64 0, i32 25
  %5 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %6 = load i16*** @imgY_org_top, align 8, !tbaa !3
  %7 = load i16*** @imgY_org_bot, align 8, !tbaa !3
  tail call void @free_top_bot_planes(i16** %6, i16** %7) #6
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format2 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 159
  %9 = load i32* %yuv_format2, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.then1
  %10 = load i16**** @imgUV_org_top, align 8, !tbaa !3
  %11 = load i16*** %10, align 8, !tbaa !3
  %12 = load i16**** @imgUV_org_bot, align 8, !tbaa !3
  %13 = load i16*** %12, align 8, !tbaa !3
  tail call void @free_top_bot_planes(i16** %11, i16** %13) #6
  %14 = load i16**** @imgUV_org_top, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds i16*** %14, i64 1
  %15 = load i16*** %arrayidx6, align 8, !tbaa !3
  %16 = load i16**** @imgUV_org_bot, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds i16*** %16, i64 1
  %17 = load i16*** %arrayidx7, align 8, !tbaa !3
  tail call void @free_top_bot_planes(i16** %15, i16** %17) #6
  %18 = load i16**** @imgUV_org_top, align 8, !tbaa !3
  %19 = bitcast i16*** %18 to i8*
  tail call void @free(i8* %19) #6
  %20 = load i16**** @imgUV_org_bot, align 8, !tbaa !3
  %21 = bitcast i16*** %20 to i8*
  tail call void @free(i8* %21) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then1, %if.end, %if.then4
  ret void
}

; Function Attrs: optsize
declare void @free_mem2Dpel(i16**) #1

; Function Attrs: optsize
declare void @free_mem3Dpel(i16***, i32) #1

; Function Attrs: optsize
declare void @free_top_bot_planes(i16**, i16**) #1

; Function Attrs: nounwind optsize uwtable
define void @free_global_buffers() #0 {
entry:
  %0 = load i32** @last_P_no_frm, align 8, !tbaa !3
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #6
  %2 = load i32** @last_P_no_fld, align 8, !tbaa !3
  %3 = bitcast i32* %2 to i8*
  tail call void @free(i8* %3) #6
  tail call void @free_orig_planes() #7
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 46
  %5 = load i32* %WeightedPrediction, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 47
  %6 = load i32* %WeightedBiprediction, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %6, 0
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 15
  %7 = load i32* %GenerateMultiplePPS, align 4, !tbaa !0
  %tobool3 = icmp eq i32 %7, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %8 = load i32**** @wp_weight, align 8, !tbaa !3
  tail call void @free_mem3Dint(i32*** %8, i32 6) #6
  %9 = load i32**** @wp_offset, align 8, !tbaa !3
  tail call void @free_mem3Dint(i32*** %9, i32 6) #6
  %10 = load i32***** @wbp_weight, align 8, !tbaa !3
  tail call void @free_mem4Dint(i32**** %10, i32 6, i32 15) #6
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2, %if.then
  %11 = phi %struct.InputParameters* [ %4, %lor.lhs.false2 ], [ %.pre, %if.then ]
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 34
  %12 = load i32* %successive_Bframe, align 4, !tbaa !0
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %lor.lhs.false4, label %if.then6

lor.lhs.false4:                                   ; preds = %if.end
  %BRefPictures = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 54
  %13 = load i32* %BRefPictures, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %13, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end, %lor.lhs.false4
  %14 = load i16**** @direct_ref_idx, align 8, !tbaa !3
  tail call void @free_mem3Dshort(i16*** %14, i32 2) #6
  %15 = load i16*** @direct_pdir, align 8, !tbaa !3
  tail call void @free_mem2Dshort(i16** %15) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %lor.lhs.false4
  %16 = load i32*** @img4Y_tmp, align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %16) #6
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 25
  %18 = load i32*** %ipredmode, align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %18) #6
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 26
  %20 = load i32*** %ipredmode8x8, align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %20) #6
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %mb_data = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 51
  %22 = load %struct.macroblock** %mb_data, align 8, !tbaa !3
  %23 = bitcast %struct.macroblock* %22 to i8*
  tail call void @free(i8* %23) #6
  %24 = load i32*** getelementptr inbounds (%struct.RD_DATA* @rddata_top_frame_mb, i64 0, i32 10), align 8, !tbaa !3
  tail call void @free_mem2Dint(i32** %24) #6
  %25 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 24
  %26 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !0
  %tobool8 = icmp eq i32 %26, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %intra_block = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 54
  %28 = load i32** %intra_block, align 8, !tbaa !3
  %29 = bitcast i32* %28 to i8*
  tail call void @free(i8* %29) #6
  %.pre92 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %if.then9
  %30 = phi %struct.InputParameters* [ %25, %if.end7 ], [ %.pre92, %if.then9 ]
  %rdopt = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 85
  %31 = load i32* %rdopt, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %31, 2
  br i1 %cmp11, label %if.then12, label %if.end54

if.then12:                                        ; preds = %if.end10
  %32 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %resY = getelementptr inbounds %struct.Decoders* %32, i64 0, i32 0
  %33 = load i32*** %resY, align 8, !tbaa !3
  %34 = load i32** %33, align 8, !tbaa !3
  %35 = bitcast i32* %34 to i8*
  tail call void @free(i8* %35) #6
  %36 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %resY13 = getelementptr inbounds %struct.Decoders* %36, i64 0, i32 0
  %37 = load i32*** %resY13, align 8, !tbaa !3
  %38 = bitcast i32** %37 to i8*
  tail call void @free(i8* %38) #6
  %39 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %RefBlock = getelementptr inbounds %struct.Decoders* %39, i64 0, i32 4
  %40 = load i16*** %RefBlock, align 8, !tbaa !3
  %41 = load i16** %40, align 8, !tbaa !3
  %42 = bitcast i16* %41 to i8*
  tail call void @free(i8* %42) #6
  %43 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %RefBlock15 = getelementptr inbounds %struct.Decoders* %43, i64 0, i32 4
  %44 = load i16*** %RefBlock15, align 8, !tbaa !3
  %45 = bitcast i16** %44 to i8*
  tail call void @free(i8* %45) #6
  %46 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders87 = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 97
  %47 = load i32* %NoOfDecoders87, align 4, !tbaa !0
  %cmp1688 = icmp sgt i32 %47, 0
  br i1 %cmp1688, label %for.body, label %for.end46

for.body:                                         ; preds = %if.then12, %for.end
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.end ], [ 0, %if.then12 ]
  %48 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY = getelementptr inbounds %struct.Decoders* %48, i64 0, i32 1
  %49 = load i16**** %decY, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i16*** %49, i64 %indvars.iv90
  %50 = load i16*** %arrayidx17, align 8, !tbaa !3
  %51 = load i16** %50, align 8, !tbaa !3
  %52 = bitcast i16* %51 to i8*
  tail call void @free(i8* %52) #6
  %53 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY20 = getelementptr inbounds %struct.Decoders* %53, i64 0, i32 1
  %54 = load i16**** %decY20, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i16*** %54, i64 %indvars.iv90
  %55 = load i16*** %arrayidx21, align 8, !tbaa !3
  %56 = bitcast i16** %55 to i8*
  tail call void @free(i8* %56) #6
  %57 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY_best = getelementptr inbounds %struct.Decoders* %57, i64 0, i32 3
  %58 = load i16**** %decY_best, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i16*** %58, i64 %indvars.iv90
  %59 = load i16*** %arrayidx23, align 8, !tbaa !3
  %60 = load i16** %59, align 8, !tbaa !3
  %61 = bitcast i16* %60 to i8*
  tail call void @free(i8* %61) #6
  %62 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY_best26 = getelementptr inbounds %struct.Decoders* %62, i64 0, i32 3
  %63 = load i16**** %decY_best26, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i16*** %63, i64 %indvars.iv90
  %64 = load i16*** %arrayidx27, align 8, !tbaa !3
  %65 = bitcast i16** %64 to i8*
  tail call void @free(i8* %65) #6
  %66 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references83 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 9
  %67 = load i32* %max_num_references83, align 4, !tbaa !0
  %cmp2985 = icmp sgt i32 %67, -1
  br i1 %cmp2985, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.body, %for.body30
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body30 ], [ 0, %for.body ]
  %68 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref = getelementptr inbounds %struct.Decoders* %68, i64 0, i32 2
  %69 = load i16***** %decref, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i16**** %69, i64 %indvars.iv90
  %70 = load i16**** %arrayidx33, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds i16*** %70, i64 %indvars.iv
  %71 = load i16*** %arrayidx34, align 8, !tbaa !3
  %72 = load i16** %71, align 8, !tbaa !3
  %73 = bitcast i16* %72 to i8*
  tail call void @free(i8* %73) #6
  %74 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref38 = getelementptr inbounds %struct.Decoders* %74, i64 0, i32 2
  %75 = load i16***** %decref38, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds i16**** %75, i64 %indvars.iv90
  %76 = load i16**** %arrayidx39, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i16*** %76, i64 %indvars.iv
  %77 = load i16*** %arrayidx40, align 8, !tbaa !3
  %78 = bitcast i16** %77 to i8*
  tail call void @free(i8* %78) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %79 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %79, i64 0, i32 9
  %80 = load i32* %max_num_references, align 4, !tbaa !0
  %81 = trunc i64 %indvars.iv to i32
  %cmp29 = icmp slt i32 %81, %80
  br i1 %cmp29, label %for.body30, label %for.end

for.end:                                          ; preds = %for.body30, %for.body
  %82 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref42 = getelementptr inbounds %struct.Decoders* %82, i64 0, i32 2
  %83 = load i16***** %decref42, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds i16**** %83, i64 %indvars.iv90
  %84 = load i16**** %arrayidx43, align 8, !tbaa !3
  %85 = bitcast i16*** %84 to i8*
  tail call void @free(i8* %85) #6
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %86 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %86, i64 0, i32 97
  %87 = load i32* %NoOfDecoders, align 4, !tbaa !0
  %88 = trunc i64 %indvars.iv.next91 to i32
  %cmp16 = icmp slt i32 %88, %87
  br i1 %cmp16, label %for.body, label %for.end46

for.end46:                                        ; preds = %for.end, %if.then12
  %89 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY47 = getelementptr inbounds %struct.Decoders* %89, i64 0, i32 1
  %90 = load i16**** %decY47, align 8, !tbaa !3
  %91 = bitcast i16*** %90 to i8*
  tail call void @free(i8* %91) #6
  %92 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decY_best48 = getelementptr inbounds %struct.Decoders* %92, i64 0, i32 3
  %93 = load i16**** %decY_best48, align 8, !tbaa !3
  %94 = bitcast i16*** %93 to i8*
  tail call void @free(i8* %94) #6
  %95 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %decref49 = getelementptr inbounds %struct.Decoders* %95, i64 0, i32 2
  %96 = load i16***** %decref49, align 8, !tbaa !3
  %97 = bitcast i16**** %96 to i8*
  tail call void @free(i8* %97) #6
  %98 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %status_map = getelementptr inbounds %struct.Decoders* %98, i64 0, i32 5
  %99 = load i8*** %status_map, align 8, !tbaa !3
  %100 = load i8** %99, align 8, !tbaa !3
  tail call void @free(i8* %100) #6
  %101 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %status_map51 = getelementptr inbounds %struct.Decoders* %101, i64 0, i32 5
  %102 = load i8*** %status_map51, align 8, !tbaa !3
  %103 = bitcast i8** %102 to i8*
  tail call void @free(i8* %103) #6
  %104 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %dec_mb_mode = getelementptr inbounds %struct.Decoders* %104, i64 0, i32 6
  %105 = load i8*** %dec_mb_mode, align 8, !tbaa !3
  %106 = load i8** %105, align 8, !tbaa !3
  tail call void @free(i8* %106) #6
  %107 = load %struct.Decoders** @decs, align 8, !tbaa !3
  %dec_mb_mode53 = getelementptr inbounds %struct.Decoders* %107, i64 0, i32 6
  %108 = load i8*** %dec_mb_mode53, align 8, !tbaa !3
  %109 = bitcast i8** %108 to i8*
  tail call void @free(i8* %109) #6
  %.pre93 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %for.end46, %if.end10
  %110 = phi %struct.InputParameters* [ %.pre93, %for.end46 ], [ %30, %if.end10 ]
  %RestrictRef = getelementptr inbounds %struct.InputParameters* %110, i64 0, i32 98
  %111 = load i32* %RestrictRef, align 4, !tbaa !0
  %tobool55 = icmp eq i32 %111, 0
  br i1 %tobool55, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end54
  %112 = load i8*** @pixel_map, align 8, !tbaa !3
  %113 = load i8** %112, align 8, !tbaa !3
  tail call void @free(i8* %113) #6
  %114 = load i8*** @pixel_map, align 8, !tbaa !3
  %115 = bitcast i8** %114 to i8*
  tail call void @free(i8* %115) #6
  %116 = load i8*** @refresh_map, align 8, !tbaa !3
  %117 = load i8** %116, align 8, !tbaa !3
  tail call void @free(i8* %117) #6
  %118 = load i8*** @refresh_map, align 8, !tbaa !3
  %119 = bitcast i8** %118 to i8*
  tail call void @free(i8* %119) #6
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.then56
  %120 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !3
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %120, i64 0, i32 25
  %121 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool60 = icmp eq i32 %121, 0
  br i1 %tobool60, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end59
  %122 = load i16*** @imgY_com, align 8, !tbaa !3
  tail call void @free_mem2Dpel(i16** %122) #6
  %123 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %123, i64 0, i32 159
  %124 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp62 = icmp eq i32 %124, 0
  br i1 %cmp62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.then61
  %125 = load i16**** @imgUV_com, align 8, !tbaa !3
  tail call void @free_mem3Dpel(i16*** %125, i32 2) #6
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.then61, %if.then63
  %126 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %nz_coeff = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 28
  %127 = load i32**** %nz_coeff, align 8, !tbaa !3
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %126, i64 0, i32 111
  %128 = load i32* %FrameSizeInMbs, align 4, !tbaa !0
  tail call void @free_mem3Dint(i32*** %127, i32 %128) #6
  %129 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %FMEnable = getelementptr inbounds %struct.InputParameters* %129, i64 0, i32 134
  %130 = load i32* %FMEnable, align 4, !tbaa !0
  %tobool66 = icmp eq i32 %130, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end65
  tail call void (...)* @free_mem_FME() #6
  %.pre94 = load %struct.InputParameters** @input, align 8, !tbaa !3
  br label %if.end68

if.end68:                                         ; preds = %if.end65, %if.then67
  %131 = phi %struct.InputParameters* [ %129, %if.end65 ], [ %.pre94, %if.then67 ]
  %RCEnable = getelementptr inbounds %struct.InputParameters* %131, i64 0, i32 127
  %132 = load i32* %RCEnable, align 4, !tbaa !0
  %tobool69 = icmp eq i32 %132, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end68
  tail call void (...)* @rc_free() #6
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.then70
  ret void
}

; Function Attrs: optsize
declare void @free_mem3Dint(i32***, i32) #1

; Function Attrs: optsize
declare void @free_mem4Dint(i32****, i32, i32) #1

; Function Attrs: optsize
declare void @free_mem3Dshort(i16***, i32) #1

; Function Attrs: optsize
declare void @free_mem2Dshort(i16**) #1

; Function Attrs: optsize
declare void @free_mem_FME(...) #1

; Function Attrs: optsize
declare void @rc_free(...) #1

; Function Attrs: nounwind optsize uwtable
define void @combine_field() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height88 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %1 = load i32* %height88, align 4, !tbaa !0
  %cmp90 = icmp sgt i32 %1, 1
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body ], [ 0, %entry ]
  %2 = phi %struct.ImageParameters* [ %21, %for.body ], [ %0, %entry ]
  %3 = trunc i64 %indvars.iv93 to i32
  %mul = shl nsw i32 %3, 1
  %idxprom = sext i32 %mul to i64
  %4 = load i16*** @imgY_com, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16** %4, i64 %idxprom
  %5 = load i16** %arrayidx, align 8, !tbaa !3
  %6 = bitcast i16* %5 to i8*
  %7 = load %struct.storable_picture** @enc_top_picture, align 8, !tbaa !3
  %imgY = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 25
  %8 = load i16*** %imgY, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds i16** %8, i64 %indvars.iv93
  %9 = load i16** %arrayidx2, align 8, !tbaa !3
  %10 = bitcast i16* %9 to i8*
  %width = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 13
  %11 = load i32* %width, align 4, !tbaa !0
  %conv = sext i32 %11 to i64
  %mul3 = shl nsw i64 %conv, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %10, i64 %mul3, i32 2, i1 false)
  %add83 = or i32 %mul, 1
  %idxprom5 = sext i32 %add83 to i64
  %12 = load i16*** @imgY_com, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds i16** %12, i64 %idxprom5
  %13 = load i16** %arrayidx6, align 8, !tbaa !3
  %14 = bitcast i16* %13 to i8*
  %15 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !3
  %imgY8 = getelementptr inbounds %struct.storable_picture* %15, i64 0, i32 25
  %16 = load i16*** %imgY8, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i16** %16, i64 %indvars.iv93
  %17 = load i16** %arrayidx9, align 8, !tbaa !3
  %18 = bitcast i16* %17 to i8*
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width10 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 13
  %20 = load i32* %width10, align 4, !tbaa !0
  %conv11 = sext i32 %20 to i64
  %mul12 = shl nsw i64 %conv11, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %18, i64 %mul12, i32 2, i1 false)
  %indvars.iv.next94 = add i64 %indvars.iv93, 1
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15
  %22 = load i32* %height, align 4, !tbaa !0
  %div = sdiv i32 %22, 2
  %23 = trunc i64 %indvars.iv.next94 to i32
  %cmp = icmp slt i32 %23, %div
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %24 = phi %struct.ImageParameters* [ %0, %entry ], [ %21, %for.body ]
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 159
  %25 = load i32* %yuv_format, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.end, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.end
  %height_cr84 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 16
  %26 = load i32* %height_cr84, align 4, !tbaa !0
  %cmp1786 = icmp sgt i32 %26, 1
  br i1 %cmp1786, label %for.body19, label %if.end

for.body19:                                       ; preds = %for.cond15.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond15.preheader ]
  %27 = phi %struct.ImageParameters* [ %72, %for.body19 ], [ %24, %for.cond15.preheader ]
  %28 = trunc i64 %indvars.iv to i32
  %mul20 = shl nsw i32 %28, 1
  %idxprom21 = sext i32 %mul20 to i64
  %29 = load i16**** @imgUV_com, align 8, !tbaa !3
  %30 = load i16*** %29, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i16** %30, i64 %idxprom21
  %31 = load i16** %arrayidx23, align 8, !tbaa !3
  %32 = bitcast i16* %31 to i8*
  %33 = load %struct.storable_picture** @enc_top_picture, align 8, !tbaa !3
  %imgUV = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 30
  %34 = load i16**** %imgUV, align 8, !tbaa !3
  %35 = load i16*** %34, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16** %35, i64 %indvars.iv
  %36 = load i16** %arrayidx26, align 8, !tbaa !3
  %37 = bitcast i16* %36 to i8*
  %width_cr = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 14
  %38 = load i32* %width_cr, align 4, !tbaa !0
  %conv27 = sext i32 %38 to i64
  %mul28 = shl nsw i64 %conv27, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %37, i64 %mul28, i32 2, i1 false)
  %add3082 = or i32 %mul20, 1
  %idxprom31 = sext i32 %add3082 to i64
  %39 = load i16**** @imgUV_com, align 8, !tbaa !3
  %40 = load i16*** %39, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i16** %40, i64 %idxprom31
  %41 = load i16** %arrayidx33, align 8, !tbaa !3
  %42 = bitcast i16* %41 to i8*
  %43 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !3
  %imgUV35 = getelementptr inbounds %struct.storable_picture* %43, i64 0, i32 30
  %44 = load i16**** %imgUV35, align 8, !tbaa !3
  %45 = load i16*** %44, align 8, !tbaa !3
  %arrayidx37 = getelementptr inbounds i16** %45, i64 %indvars.iv
  %46 = load i16** %arrayidx37, align 8, !tbaa !3
  %47 = bitcast i16* %46 to i8*
  %48 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width_cr38 = getelementptr inbounds %struct.ImageParameters* %48, i64 0, i32 14
  %49 = load i32* %width_cr38, align 4, !tbaa !0
  %conv39 = sext i32 %49 to i64
  %mul40 = shl nsw i64 %conv39, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %47, i64 %mul40, i32 2, i1 false)
  %50 = load i16**** @imgUV_com, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds i16*** %50, i64 1
  %51 = load i16*** %arrayidx43, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i16** %51, i64 %idxprom21
  %52 = load i16** %arrayidx44, align 8, !tbaa !3
  %53 = bitcast i16* %52 to i8*
  %54 = load %struct.storable_picture** @enc_top_picture, align 8, !tbaa !3
  %imgUV46 = getelementptr inbounds %struct.storable_picture* %54, i64 0, i32 30
  %55 = load i16**** %imgUV46, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds i16*** %55, i64 1
  %56 = load i16*** %arrayidx47, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds i16** %56, i64 %indvars.iv
  %57 = load i16** %arrayidx48, align 8, !tbaa !3
  %58 = bitcast i16* %57 to i8*
  %59 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width_cr49 = getelementptr inbounds %struct.ImageParameters* %59, i64 0, i32 14
  %60 = load i32* %width_cr49, align 4, !tbaa !0
  %conv50 = sext i32 %60 to i64
  %mul51 = shl nsw i64 %conv50, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %58, i64 %mul51, i32 2, i1 false)
  %61 = load i16**** @imgUV_com, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds i16*** %61, i64 1
  %62 = load i16*** %arrayidx55, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds i16** %62, i64 %idxprom31
  %63 = load i16** %arrayidx56, align 8, !tbaa !3
  %64 = bitcast i16* %63 to i8*
  %65 = load %struct.storable_picture** @enc_bottom_picture, align 8, !tbaa !3
  %imgUV58 = getelementptr inbounds %struct.storable_picture* %65, i64 0, i32 30
  %66 = load i16**** %imgUV58, align 8, !tbaa !3
  %arrayidx59 = getelementptr inbounds i16*** %66, i64 1
  %67 = load i16*** %arrayidx59, align 8, !tbaa !3
  %arrayidx60 = getelementptr inbounds i16** %67, i64 %indvars.iv
  %68 = load i16** %arrayidx60, align 8, !tbaa !3
  %69 = bitcast i16* %68 to i8*
  %70 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %width_cr61 = getelementptr inbounds %struct.ImageParameters* %70, i64 0, i32 14
  %71 = load i32* %width_cr61, align 4, !tbaa !0
  %conv62 = sext i32 %71 to i64
  %mul63 = shl nsw i64 %conv62, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %69, i64 %mul63, i32 2, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %72 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %height_cr = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 16
  %73 = load i32* %height_cr, align 4, !tbaa !0
  %div16 = sdiv i32 %73, 2
  %74 = trunc i64 %indvars.iv.next to i32
  %cmp17 = icmp slt i32 %74, %div16
  br i1 %cmp17, label %for.body19, label %if.end

if.end:                                           ; preds = %for.cond15.preheader, %for.body19, %for.end
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @decide_fld_frame(float %snr_frame_Y, float %snr_field_Y, i32 %bit_field, i32 %bit_frame, double %lambda_picture) #5 {
entry:
  %conv = sitofp i32 %bit_frame to double
  %mul = fmul double %conv, %lambda_picture
  %conv1 = fpext float %snr_frame_Y to double
  %add = fadd double %conv1, %mul
  %conv2 = sitofp i32 %bit_field to double
  %mul3 = fmul double %conv2, %lambda_picture
  %conv4 = fpext float %snr_field_Y to double
  %add5 = fadd double %conv4, %mul3
  %not.cmp = fcmp ule double %add5, %add
  %. = zext i1 %not.cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize uwtable
define void @process_2nd_IGOP() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 100
  %1 = load i32* %NumFrameIn2ndIGOP, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %no_frames = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 2
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %3 = load i32* %no_frames, align 4, !tbaa !0
  %number = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 0
  %sub = add nsw i32 %3, -1
  %4 = load i32* %number, align 4, !tbaa !0
  %tobool = icmp ne i32 %4, %sub
  %5 = load i32* @In2ndIGOP, align 4, !tbaa !1
  %tobool4 = icmp ne i32 %5, 0
  %or.cond = or i1 %tobool4, %tobool
  br i1 %or.cond, label %return, label %if.end6

if.end6:                                          ; preds = %if.end3
  store i32 1, i32* @In2ndIGOP, align 4, !tbaa !1
  %6 = load i32* %no_frames, align 4, !tbaa !0
  store i32 %6, i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %7 = load i32* %no_frames, align 4, !tbaa !0
  %sub9 = add nsw i32 %7, -1
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5
  %8 = load i32* %jumpd, align 4, !tbaa !0
  %add = add nsw i32 %8, 1
  %mul = mul nsw i32 %add, %sub9
  %add10 = add nsw i32 %mul, 1
  store i32 %add10, i32* @start_tr_in_this_IGOP, align 4, !tbaa !0
  %9 = load i32* %no_frames, align 4, !tbaa !0
  %10 = load i32* %NumFrameIn2ndIGOP, align 4, !tbaa !0
  %add13 = add nsw i32 %10, %9
  store i32 %add13, i32* %no_frames, align 4, !tbaa !0
  %nb_references = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 2
  store i32 0, i32* %nb_references, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end3, %entry, %if.end6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SetImgType() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !3
  %intra_period = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 31
  %1 = load i32* %intra_period, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 0
  %3 = load i32* %number, align 4, !tbaa !0
  %4 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %3, %4
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i32 2, i32* %type, align 4, !tbaa !0
  br label %if.end36

if.else:                                          ; preds = %if.then
  store i32 0, i32* %type, align 4, !tbaa !0
  %sp_periodicity = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 43
  %5 = load i32* %sp_periodicity, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.end36, label %if.then4

if.then4:                                         ; preds = %if.else
  %6 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub6 = sub nsw i32 %3, %6
  %rem = srem i32 %sub6, %5
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then9, label %if.end36

if.then9:                                         ; preds = %if.then4
  store i32 3, i32* %type, align 4, !tbaa !0
  br label %if.end36

if.else13:                                        ; preds = %entry
  %sub = sub nsw i32 %3, %4
  %rem17 = srem i32 %sub, %1
  %cmp18 = icmp eq i32 %rem17, 0
  %type20 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else13
  store i32 2, i32* %type20, align 4, !tbaa !0
  br label %if.end36

if.else21:                                        ; preds = %if.else13
  store i32 0, i32* %type20, align 4, !tbaa !0
  %sp_periodicity23 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 43
  %7 = load i32* %sp_periodicity23, align 4, !tbaa !0
  %tobool24 = icmp eq i32 %7, 0
  br i1 %tobool24, label %if.end36, label %if.then25

if.then25:                                        ; preds = %if.else21
  %8 = load i32* @start_frame_no_in_this_IGOP, align 4, !tbaa !0
  %sub27 = sub nsw i32 %3, %8
  %rem29 = srem i32 %sub27, %7
  %cmp30 = icmp eq i32 %rem29, 0
  br i1 %cmp30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then25
  store i32 3, i32* %type20, align 4, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.else21, %if.then19, %if.then25, %if.then31, %if.then2, %if.then4, %if.then9
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
