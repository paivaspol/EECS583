; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/io_lat4.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.QCDheader = type { i32, i8**, i8** }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_check = type { i32, i32 }
%struct.anon = type { i32, [200 x i8], i32, [2 x double] }
%struct.anon.0 = type { i16, i16, i16, i16, [4 x %struct.su3_matrix] }
%struct.anon.1 = type { i16, i16, i16, i16, [4 x %struct.su3_matrix] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"END_HEADER\0A\00", align 1
@.str7 = private unnamed_addr constant [31 x i8] c"%s: Node %d %s write error %d\0A\00", align 1
@this_node = external global i32
@stdout = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [39 x i8] c"%s: Node %d %s descrip,write error %d\0A\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"%s: Node %d %s read error %d\0A\00", align 1
@pwrite_gauge_hdr.myname = private unnamed_addr constant [17 x i8] c"pwrite_gauge_hdr\00", align 16
@.str10 = private unnamed_addr constant [13 x i8] c"magic_number\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str12 = private unnamed_addr constant [11 x i8] c"time_stamp\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@swrite_gauge_hdr.myname = private unnamed_addr constant [17 x i8] c"swrite_gauge_hdr\00", align 16
@gauge_info_keyword = external global [0 x i8*]
@.str14 = private unnamed_addr constant [57 x i8] c"write_gauge_info_item: WARNING: keyword %s not in table\0A\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str23 = private unnamed_addr constant [50 x i8] c"write_gauge_info_item: Unrecognized data type %s\0A\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c".info\00", align 1
@.str26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str27 = private unnamed_addr constant [54 x i8] c"write_gauge_info_file: Can't open ascii info file %s\0A\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@.str30 = private unnamed_addr constant [10 x i8] c"checksums\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@nx = external global i32
@.str32 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@ny = external global i32
@.str33 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@nz = external global i32
@.str34 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@nt = external global i32
@.str35 = private unnamed_addr constant [20 x i8] c"Wrote info file %s\0A\00", align 1
@setup_input_gauge_file.myname = private unnamed_addr constant [23 x i8] c"setup_input_gauge_file\00", align 16
@.str36 = private unnamed_addr constant [21 x i8] c"%s: Can't malloc gf\0A\00", align 1
@.str37 = private unnamed_addr constant [21 x i8] c"%s: Can't malloc gh\0A\00", align 1
@setup_output_gauge_file.myname = private unnamed_addr constant [24 x i8] c"setup_output_gauge_file\00", align 16
@w_serial_i.myname = private unnamed_addr constant [11 x i8] c"w_serial_i\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str39 = private unnamed_addr constant [42 x i8] c"%s: Node %d can't open file %s, error %d\0A\00", align 1
@read_checksum.myname = private unnamed_addr constant [14 x i8] c"read_checksum\00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str41 = private unnamed_addr constant [54 x i8] c"%s: Checksum violation. Computed %x %x.  Read %x %x.\0A\00", align 1
@.str42 = private unnamed_addr constant [20 x i8] c"Checksums %x %x OK\0A\00", align 1
@write_checksum.myname = private unnamed_addr constant [15 x i8] c"write_checksum\00", align 1
@.str43 = private unnamed_addr constant [17 x i8] c"Checksums %x %x\0A\00", align 1
@.str46 = private unnamed_addr constant [50 x i8] c"w_serial: Node %d fseeko failed error %d file %s\0A\00", align 1
@sites_on_node = external global i32
@lattice = external global %struct.site*
@volume = external global i32
@.str47 = private unnamed_addr constant [62 x i8] c"w_serial: Node %d gauge configuration write error %d file %s\0A\00", align 1
@.str48 = private unnamed_addr constant [54 x i8] c"Saved gauge configuration serially to binary file %s\0A\00", align 1
@.str49 = private unnamed_addr constant [15 x i8] c"Time stamp %s\0A\00", align 1
@.str52 = private unnamed_addr constant [49 x i8] c"read_site_list: Node %d site list read error %d\0A\00", align 1
@read_v3_gauge_hdr.myname = private unnamed_addr constant [18 x i8] c"read_v3_gauge_hdr\00", align 16
@.str54 = private unnamed_addr constant [13 x i8] c"magic number\00", align 1
@.str58 = private unnamed_addr constant [53 x i8] c"requires size of int32type(%d) = size of double(%d)\0A\00", align 1
@.str59 = private unnamed_addr constant [49 x i8] c"read_v3_gauge_hdr: Incorrect lattice dimensions \00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str61 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str62 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str63 = private unnamed_addr constant [40 x i8] c"Old format header parameters are %f %f\0A\00", align 1
@read_1996_gauge_hdr.myname = private unnamed_addr constant [20 x i8] c"read_1996_gauge_hdr\00", align 16
@.str67 = private unnamed_addr constant [51 x i8] c"read_1996_gauge_hdr: Incorrect lattice dimensions \00", align 1
@.str68 = private unnamed_addr constant [12 x i8] c"header size\00", align 1
@.str69 = private unnamed_addr constant [11 x i8] c"n_descript\00", align 1
@.str70 = private unnamed_addr constant [55 x i8] c"read_1996_gauge_hdr: gauge field descriptor length %d\0A\00", align 1
@.str71 = private unnamed_addr constant [29 x i8] c" exceeds allocated space %d\0A\00", align 1
@.str72 = private unnamed_addr constant [8 x i8] c"descrip\00", align 1
@.str73 = private unnamed_addr constant [26 x i8] c"gauge_field.descript: %s\0A\00", align 1
@.str74 = private unnamed_addr constant [8 x i8] c"n_param\00", align 1
@.str75 = private unnamed_addr constant [61 x i8] c"read_1996_gauge_hdr: gauge field parameter vector length %d\0A\00", align 1
@.str76 = private unnamed_addr constant [12 x i8] c"gauge param\00", align 1
@.str77 = private unnamed_addr constant [28 x i8] c"gauge_field.param[%d] = %f\0A\00", align 1
@read_gauge_hdr.myname = private unnamed_addr constant [15 x i8] c"read_gauge_hdr\00", align 1
@.str80 = private unnamed_addr constant [24 x i8] c"%s: Can't byte reverse\0A\00", align 1
@.str82 = private unnamed_addr constant [67 x i8] c"%s: Unrecognized magic number in gauge configuration file header.\0A\00", align 1
@.str83 = private unnamed_addr constant [25 x i8] c"Expected %x but read %x\0A\00", align 1
@.str84 = private unnamed_addr constant [25 x i8] c"Expected %s but read %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str85 = private unnamed_addr constant [56 x i8] c"%s: Must use reload_serial with archive files for now.\0A\00", align 1
@.str86 = private unnamed_addr constant [12 x i8] c"DIMENSION_1\00", align 1
@.str87 = private unnamed_addr constant [24 x i8] c"DIMENSION_1 not present\00", align 1
@.str88 = private unnamed_addr constant [12 x i8] c"DIMENSION_2\00", align 1
@.str89 = private unnamed_addr constant [24 x i8] c"DIMENSION_2 not present\00", align 1
@.str90 = private unnamed_addr constant [12 x i8] c"DIMENSION_3\00", align 1
@.str91 = private unnamed_addr constant [24 x i8] c"DIMENSION_3 not present\00", align 1
@.str92 = private unnamed_addr constant [12 x i8] c"DIMENSION_4\00", align 1
@.str93 = private unnamed_addr constant [24 x i8] c"DIMENSION_4 not present\00", align 1
@.str94 = private unnamed_addr constant [9 x i8] c"CHECKSUM\00", align 1
@.str95 = private unnamed_addr constant [21 x i8] c"CHECKSUM not present\00", align 1
@.str96 = private unnamed_addr constant [34 x i8] c"%s: Incorrect lattice dimensions \00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c"time stamp\00", align 1
@.str98 = private unnamed_addr constant [16 x i8] c"order parameter\00", align 1
@.str99 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str100 = private unnamed_addr constant [50 x i8] c"r_serial_i: Node %d can't open file %s, error %d\0A\00", align 1
@r_serial.myname = private unnamed_addr constant [9 x i8] c"r_serial\00", align 1
@.str101 = private unnamed_addr constant [48 x i8] c"%s: Attempting serial read from parallel file \0A\00", align 1
@.str102 = private unnamed_addr constant [31 x i8] c"%s: Node %d can't malloc lbuf\0A\00", align 1
@.str103 = private unnamed_addr constant [43 x i8] c"%s: Node 0 fseeko failed error %d file %s\0A\00", align 1
@.str104 = private unnamed_addr constant [55 x i8] c"%s: node %d gauge configuration read error %d file %s\0A\00", align 1
@.str105 = private unnamed_addr constant [59 x i8] c"Restored binary gauge configuration serially from file %s\0A\00", align 1
@r_serial_arch.myname = private unnamed_addr constant [14 x i8] c"r_serial_arch\00", align 1
@.str106 = private unnamed_addr constant [55 x i8] c"%s: Node %d can't malloc uin buffer to read timeslice\0A\00", align 1
@.str108 = private unnamed_addr constant [60 x i8] c"Restored archive gauge configuration serially from file %s\0A\00", align 1
@.str109 = private unnamed_addr constant [56 x i8] c"Archive style checksum violation: computed %x, read %x\0A\00", align 1
@.str110 = private unnamed_addr constant [32 x i8] c"Archive style checksum = %x OK\0A\00", align 1
@.str112 = private unnamed_addr constant [44 x i8] c"write_site_list: node %d can't malloc cbuf\0A\00", align 1
@.str113 = private unnamed_addr constant [53 x i8] c"write_site_list: node %d g_seek %ld failed errno %d\0A\00", align 1
@.str114 = private unnamed_addr constant [48 x i8] c"write_site_list: Node %d coords write error %d\0A\00", align 1
@.str115 = private unnamed_addr constant [53 x i8] c"parallel_open: Node %d can't open file %s, error %d\0A\00", align 1
@w_parallel_setup.myname = private unnamed_addr constant [17 x i8] c"w_parallel_setup\00", align 16
@.str116 = private unnamed_addr constant [47 x i8] c"%s: Attempting parallel write to serial file.\0A\00", align 1
@.str117 = private unnamed_addr constant [48 x i8] c"%s: Node %d g_seek %ld failed error %d file %s\0A\00", align 1
@w_parallel.myname = private unnamed_addr constant [11 x i8] c"w_parallel\00", align 1
@number_of_nodes = external global i32
@.str119 = private unnamed_addr constant [56 x i8] c"%s: Node %d gauge configuration write error %d file %s\0A\00", align 1
@.str120 = private unnamed_addr constant [61 x i8] c"%s: Node %d g_seek %ld for checksum failed error %d file %s\0A\00", align 1
@.str121 = private unnamed_addr constant [57 x i8] c"Saved gauge configuration in parallel to binary file %s\0A\00", align 1
@w_checkpoint.myname = private unnamed_addr constant [13 x i8] c"w_checkpoint\00", align 1
@.str122 = private unnamed_addr constant [46 x i8] c"Saved gauge configuration checkpoint file %s\0A\00", align 1
@.str124 = private unnamed_addr constant [52 x i8] c"r_parallel_i: Node %d can't open file %s, error %d\0A\00", align 1
@r_parallel.myname = private unnamed_addr constant [11 x i8] c"r_parallel\00", align 1
@.str125 = private unnamed_addr constant [48 x i8] c"%s: Attempting parallel read from serial file.\0A\00", align 1
@.str126 = private unnamed_addr constant [37 x i8] c"BOTCH. Node %d received %d %d %d %d\0A\00", align 1
@.str127 = private unnamed_addr constant [62 x i8] c"Restored binary gauge configuration in parallel from file %s\0A\00", align 1
@.str128 = private unnamed_addr constant [60 x i8] c"%s: Node 0 g_seek %ld for checksum failed error %d file %s\0A\00", align 1
@.str130 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str131 = private unnamed_addr constant [30 x i8] c"Can't open file %s, error %d\0A\00", align 1
@.str134 = private unnamed_addr constant [27 x i8] c"  read %d but expected %d\0A\00", align 1
@.str135 = private unnamed_addr constant [26 x i8] c"%*[ \0C\0A\0D\09\0B]%*[\22]%[^\22]%*[\22]\00", align 1
@.str137 = private unnamed_addr constant [24 x i8] c"count %d time_stamp %s\0A\00", align 1
@.str138 = private unnamed_addr constant [9 x i8] c"%d%d%d%d\00", align 1
@.str140 = private unnamed_addr constant [51 x i8] c"restore_ascii: Incorrect lattice size %d,%d,%d,%d\0A\00", align 1
@.str141 = private unnamed_addr constant [8 x i8] c"%lf%lf\0A\00", align 1
@.str143 = private unnamed_addr constant [50 x i8] c"Restored gauge configuration from ascii file  %s\0A\00", align 1
@.str144 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str146 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str148 = private unnamed_addr constant [13 x i8] c"%d\09%d\09%d\09%d\0A\00", align 1
@.str150 = private unnamed_addr constant [11 x i8] c"%.7e\09%.7e\0A\00", align 1
@.str152 = private unnamed_addr constant [44 x i8] c"Saved gauge configuration to ascii file %s\0A\00", align 1
@.str153 = private unnamed_addr constant [12 x i8] c"trace = %f\0A\00", align 1
@.str154 = private unnamed_addr constant [15 x i8] c"chksum_x = %x\0A\00", align 1
@.str155 = private unnamed_addr constant [17 x i8] c"chksum_u = %12u\0A\00", align 1
@.str156 = private unnamed_addr constant [16 x i8] c"plaquette = %f\0A\00", align 1
@.str157 = private unnamed_addr constant [38 x i8] c"Writing archive format lattice to %s\0A\00", align 1
@.str158 = private unnamed_addr constant [31 x i8] c"error opening output file: %s\0A\00", align 1
@.str159 = private unnamed_addr constant [14 x i8] c"BEGIN_HEADER\0A\00", align 1
@.str160 = private unnamed_addr constant [25 x i8] c"DATATYPE = 4D_SU3_GAUGE\0A\00", align 1
@.str161 = private unnamed_addr constant [18 x i8] c"DIMENSION_1 = %d\0A\00", align 1
@.str162 = private unnamed_addr constant [18 x i8] c"DIMENSION_2 = %d\0A\00", align 1
@.str163 = private unnamed_addr constant [18 x i8] c"DIMENSION_3 = %d\0A\00", align 1
@.str164 = private unnamed_addr constant [18 x i8] c"DIMENSION_4 = %d\0A\00", align 1
@.str165 = private unnamed_addr constant [15 x i8] c"CHECKSUM = %x\0A\00", align 1
@.str166 = private unnamed_addr constant [20 x i8] c"LINK_TRACE = %.10f\0A\00", align 1
@.str167 = private unnamed_addr constant [19 x i8] c"PLAQUETTE = %.10f\0A\00", align 1
@.str168 = private unnamed_addr constant [18 x i8] c"ENSEMBLE_ID = %s\0A\00", align 1
@ensemble_id = external global [256 x i8]
@.str169 = private unnamed_addr constant [22 x i8] c"SEQUENCE_NUMBER = %d\0A\00", align 1
@sequence_number = external global i32
@.str170 = private unnamed_addr constant [33 x i8] c"MILC_INFO = -------BEGIN-------\0A\00", align 1
@.str171 = private unnamed_addr constant [33 x i8] c"MILC_INFO = --------END--------\0A\00", align 1
@.str174 = private unnamed_addr constant [29 x i8] c"Wrote archive gauge file %s\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"reading Archive header:\00"
@str176 = private unnamed_addr constant [35 x i8] c"w_serial: Node 0 can't malloc lbuf\00"
@str177 = private unnamed_addr constant [52 x i8] c"w_serial: Attempting serial write to parallel file \00"
@str178 = private unnamed_addr constant [54 x i8] c"w_serial_f: Attempting serial close on parallel file \00"
@str179 = private unnamed_addr constant [44 x i8] c"read_site_list: Can't malloc rank2rcv table\00"
@str180 = private unnamed_addr constant [66 x i8] c"Reading as old-style gauge field configuration with byte reversal\00"
@str181 = private unnamed_addr constant [38 x i8] c"read_v3_gauge_hdr: Can't byte reverse\00"
@str182 = private unnamed_addr constant [48 x i8] c"Reading as old-style gauge field configuration.\00"
@str183 = private unnamed_addr constant [73 x i8] c"First 4 bytes were zero. Trying to interpret with 64 bit integer format.\00"
@str184 = private unnamed_addr constant [67 x i8] c"Reading as 1996-style gauge field configuration with byte reversal\00"
@str185 = private unnamed_addr constant [40 x i8] c"read_1996_gauge_hdr: Can't byte reverse\00"
@str186 = private unnamed_addr constant [49 x i8] c"Reading as 1996-style gauge field configuration.\00"
@str187 = private unnamed_addr constant [27 x i8] c"Reading with byte reversal\00"
@str188 = private unnamed_addr constant [45 x i8] c"reading as archive format with byte reversal\00"
@str189 = private unnamed_addr constant [26 x i8] c"reading as archive format\00"
@str190 = private unnamed_addr constant [40 x i8] c"recompile with smaller read buffer: uin\00"
@str191 = private unnamed_addr constant [54 x i8] c"r_serial_f: Attempting serial close on parallel file \00"
@str192 = private unnamed_addr constant [56 x i8] c"w_parallel_f: Attempting parallel close on serial file.\00"
@str193 = private unnamed_addr constant [56 x i8] c"r_parallel_f: Attempting parallel close on serial file.\00"
@str194 = private unnamed_addr constant [37 x i8] c"restore_ascii: gauge link read error\00"
@str195 = private unnamed_addr constant [43 x i8] c"restore_ascii: Error in reading dimensions\00"
@str196 = private unnamed_addr constant [40 x i8] c"restore_ascii: Error reading time stamp\00"
@str197 = private unnamed_addr constant [58 x i8] c"restore_ascii: Incorrect version number in lattice header\00"
@str198 = private unnamed_addr constant [44 x i8] c"restore_ascii: Error reading version number\00"
@str199 = private unnamed_addr constant [26 x i8] c"Write error in save_ascii\00"
@str200 = private unnamed_addr constant [28 x i8] c"Error in writing dimensions\00"
@str201 = private unnamed_addr constant [28 x i8] c"Error in writing time stamp\00"
@str202 = private unnamed_addr constant [32 x i8] c"Error in writing version number\00"
@str203 = private unnamed_addr constant [17 x i8] c"fwrite bombed...\00"
@str204 = private unnamed_addr constant [28 x i8] c"can't malloc uout timeslice\00"
@str205 = private unnamed_addr constant [48 x i8] c"Parallel archive saves are not implemented, yet\00"

; Function Attrs: nounwind optsize uwtable
define i32 @qcdhdr_get_str(i8* nocapture %s, %struct.QCDheader* nocapture %hdr, i8** nocapture %q) #0 {
entry:
  %ntoken = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 0
  %0 = load i32* %ntoken, align 4, !tbaa !0
  %1 = trunc i32 %0 to i8
  %cmp14 = icmp sgt i8 %1, 0
  br i1 %cmp14, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %token = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 1
  %2 = load i8*** %token, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %sext = shl i32 %0, 24
  %conv1 = ashr exact i32 %sext, 24
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %conv1
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8** %2, i64 %indvars.iv
  %4 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* %s, i8* %4) #7
  %cmp3 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %value = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 2
  %5 = load i8*** %value, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds i8** %5, i64 %indvars.iv
  %6 = load i8** %arrayidx6, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %for.cond, %if.then
  %storemerge = phi i8* [ %6, %if.then ], [ null, %for.cond ], [ null, %entry ]
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %for.cond ], [ -1, %entry ]
  store i8* %storemerge, i8** %q, align 8, !tbaa !3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @qcdhdr_get_int(i8* nocapture %s, %struct.QCDheader* nocapture %hdr, i32* %q) #0 {
entry:
  %p = alloca i8*, align 8
  %call = call i32 @qcdhdr_get_str(i8* %s, %struct.QCDheader* %hdr, i8** %p) #8
  %0 = load i8** %p, align 8, !tbaa !3
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %q) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @qcdhdr_get_int32x(i8* nocapture %s, %struct.QCDheader* nocapture %hdr, i32* nocapture %q) #0 {
entry:
  %p = alloca i8*, align 8
  %r = alloca i32, align 4
  %call = call i32 @qcdhdr_get_str(i8* %s, %struct.QCDheader* %hdr, i8** %p) #8
  %0 = load i8** %p, align 8, !tbaa !3
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i32* %r) #9
  %1 = load i32* %r, align 4, !tbaa !0
  store i32 %1, i32* %q, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @qcdhdr_get_double(i8* nocapture %s, %struct.QCDheader* nocapture %hdr, double* %q) #0 {
entry:
  %p = alloca i8*, align 8
  %call = call i32 @qcdhdr_get_str(i8* %s, %struct.QCDheader* %hdr, i8** %p) #8
  %0 = load i8** %p, align 8, !tbaa !3
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %q) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @error_exit(i8* nocapture %s) #0 {
entry:
  %puts = tail call i32 @puts(i8* %s)
  tail call void @terminate(i32 1) #9
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @terminate(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @complete_U(double* %u) #0 {
entry:
  %arrayidx = getelementptr inbounds double* %u, i64 2
  %0 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double* %u, i64 10
  %1 = load double* %arrayidx1, align 8, !tbaa !4
  %mul = fmul double %0, %1
  %arrayidx2 = getelementptr inbounds double* %u, i64 4
  %2 = load double* %arrayidx2, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds double* %u, i64 8
  %3 = load double* %arrayidx3, align 8, !tbaa !4
  %mul4 = fmul double %2, %3
  %sub = fsub double %mul, %mul4
  %arrayidx5 = getelementptr inbounds double* %u, i64 3
  %4 = load double* %arrayidx5, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds double* %u, i64 11
  %5 = load double* %arrayidx6, align 8, !tbaa !4
  %mul7 = fmul double %4, %5
  %sub8 = fsub double %sub, %mul7
  %arrayidx9 = getelementptr inbounds double* %u, i64 5
  %6 = load double* %arrayidx9, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds double* %u, i64 9
  %7 = load double* %arrayidx10, align 8, !tbaa !4
  %mul11 = fmul double %6, %7
  %add = fadd double %sub8, %mul11
  %arrayidx12 = getelementptr inbounds double* %u, i64 12
  store double %add, double* %arrayidx12, align 8, !tbaa !4
  %mul15 = fmul double %2, %7
  %mul18 = fmul double %0, %5
  %sub19 = fsub double %mul15, %mul18
  %mul22 = fmul double %6, %3
  %add23 = fadd double %sub19, %mul22
  %mul26 = fmul double %4, %1
  %sub27 = fsub double %add23, %mul26
  %arrayidx28 = getelementptr inbounds double* %u, i64 13
  store double %sub27, double* %arrayidx28, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds double* %u, i64 6
  %8 = load double* %arrayidx30, align 8, !tbaa !4
  %mul31 = fmul double %2, %8
  %9 = load double* %u, align 8, !tbaa !4
  %mul34 = fmul double %9, %1
  %sub35 = fsub double %mul31, %mul34
  %arrayidx37 = getelementptr inbounds double* %u, i64 7
  %10 = load double* %arrayidx37, align 8, !tbaa !4
  %mul38 = fmul double %6, %10
  %sub39 = fsub double %sub35, %mul38
  %arrayidx40 = getelementptr inbounds double* %u, i64 1
  %11 = load double* %arrayidx40, align 8, !tbaa !4
  %mul42 = fmul double %11, %5
  %add43 = fadd double %sub39, %mul42
  %arrayidx44 = getelementptr inbounds double* %u, i64 14
  store double %add43, double* %arrayidx44, align 8, !tbaa !4
  %mul47 = fmul double %9, %5
  %mul50 = fmul double %2, %10
  %sub51 = fsub double %mul47, %mul50
  %mul54 = fmul double %11, %1
  %add55 = fadd double %sub51, %mul54
  %mul58 = fmul double %6, %8
  %sub59 = fsub double %add55, %mul58
  %arrayidx60 = getelementptr inbounds double* %u, i64 15
  store double %sub59, double* %arrayidx60, align 8, !tbaa !4
  %mul63 = fmul double %9, %3
  %mul66 = fmul double %0, %8
  %sub67 = fsub double %mul63, %mul66
  %mul70 = fmul double %11, %7
  %sub71 = fsub double %sub67, %mul70
  %mul74 = fmul double %4, %10
  %add75 = fadd double %sub71, %mul74
  %arrayidx76 = getelementptr inbounds double* %u, i64 16
  store double %add75, double* %arrayidx76, align 8, !tbaa !4
  %mul79 = fmul double %0, %10
  %mul82 = fmul double %9, %7
  %sub83 = fsub double %mul79, %mul82
  %mul86 = fmul double %4, %8
  %add87 = fadd double %sub83, %mul86
  %mul90 = fmul double %11, %3
  %sub91 = fsub double %add87, %mul90
  %arrayidx92 = getelementptr inbounds double* %u, i64 17
  store double %sub91, double* %arrayidx92, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @big_endian() #4 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.QCDheader* @qcdhdr_get_hdr(%struct._IO_FILE* nocapture %in) #0 {
entry:
  %line = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #5
  %call = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %in) #9
  %call1 = call noalias i8* @calloc(i64 512, i64 8) #9
  %1 = bitcast i8* %call1 to i8**
  %call2 = call noalias i8* @calloc(i64 512, i64 8) #9
  %2 = bitcast i8* %call2 to i8**
  %call3 = call noalias i8* @calloc(i64 1, i64 24) #9
  %3 = bitcast i8* %call3 to %struct.QCDheader*
  %token = getelementptr inbounds i8* %call3, i64 8
  %4 = bitcast i8* %token to i8***
  store i8** %1, i8*** %4, align 8, !tbaa !3
  %value = getelementptr inbounds i8* %call3, i64 16
  %5 = bitcast i8* %value to i8***
  store i8** %2, i8*** %5, align 8, !tbaa !3
  %puts = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str, i64 0, i64 0))
  %call653 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %in) #9
  %call854 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* %0) #9
  %call1055 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #7
  %cmp56 = icmp eq i32 %call1055, 0
  br i1 %cmp56, label %while.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %6 = ptrtoint [1024 x i8]* %line to i64
  %7 = trunc i64 %6 to i32
  %.neg = sub i32 0, %7
  %sub58 = or i32 %.neg, 1
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %if.end.lr.ph ], [ %indvars.iv.next, %if.end ]
  %n.057 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %if.end ]
  %call12 = call i8* @strchr(i8* %0, i32 32) #7
  store i8 0, i8* %call12, align 1, !tbaa !1
  %8 = ptrtoint i8* %call12 to i64
  %9 = trunc i64 %8 to i32
  %add = add i32 %sub58, %9
  %div = sdiv i32 %add, 8
  %add14 = add nsw i32 %div, 1
  %conv = sext i32 %add14 to i64
  %call15 = call noalias i8* @calloc(i64 %conv, i64 8) #9
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  store i8* %call15, i8** %arrayidx, align 8, !tbaa !3
  %call18 = call i8* @strcpy(i8* %call15, i8* %0) #9
  %incdec.ptr = getelementptr inbounds i8* %call12, i64 1
  %call19 = call i8* @strchr(i8* %incdec.ptr, i32 61) #7
  %incdec.ptr20 = getelementptr inbounds i8* %call19, i64 1
  %call21 = call i64 @strlen(i8* %incdec.ptr20) #7
  %sub23 = shl i64 %call21, 32
  %sext = add i64 %sub23, -4294967296
  %idxprom24 = ashr exact i64 %sext, 32
  %incdec.ptr20.sum = add i64 %idxprom24, 1
  %arrayidx25 = getelementptr inbounds i8* %call19, i64 %incdec.ptr20.sum
  store i8 0, i8* %arrayidx25, align 1, !tbaa !1
  %conv26 = ashr exact i64 %sub23, 32
  %call27 = call noalias i8* @calloc(i64 %conv26, i64 1) #9
  %arrayidx30 = getelementptr inbounds i8** %2, i64 %indvars.iv
  store i8* %call27, i8** %arrayidx30, align 8, !tbaa !3
  %call31 = call i8* @strcpy(i8* %call27, i8* %incdec.ptr20) #9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %n.057, 1
  %call6 = call i8* @fgets(i8* %0, i32 1024, %struct._IO_FILE* %in) #9
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* %0) #9
  %call10 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %while.end, label %if.end

while.end:                                        ; preds = %if.end, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %ntoken = bitcast i8* %call3 to i32*
  store i32 %n.0.lcssa, i32* %ntoken, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 1024, i8* %0) #5
  ret %struct.QCDheader* %3
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @qcdhdr_destroy_hdr(%struct.QCDheader* %hdr) #0 {
entry:
  %cmp = icmp eq %struct.QCDheader* %hdr, null
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ntoken = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 0
  %0 = load i32* %ntoken, align 4, !tbaa !0
  %cmp115 = icmp sgt i32 %0, 0
  br i1 %cmp115, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %token4.pre = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 1
  %value5.pre = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 2
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 2
  %token = getelementptr inbounds %struct.QCDheader* %hdr, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load i8*** %value, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv
  %2 = load i8** %arrayidx, align 8, !tbaa !3
  tail call void @free(i8* %2) #9
  %3 = load i8*** %token, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i8** %3, i64 %indvars.iv
  %4 = load i8** %arrayidx3, align 8, !tbaa !3
  tail call void @free(i8* %4) #9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %ntoken, align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %6, %5
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader.for.end_crit_edge
  %value5.pre-phi = phi i8*** [ %value5.pre, %for.cond.preheader.for.end_crit_edge ], [ %value, %for.body ]
  %token4.pre-phi = phi i8*** [ %token4.pre, %for.cond.preheader.for.end_crit_edge ], [ %token, %for.body ]
  %7 = load i8*** %token4.pre-phi, align 8, !tbaa !3
  %8 = bitcast i8** %7 to i8*
  tail call void @free(i8* %8) #9
  %9 = load i8*** %value5.pre-phi, align 8, !tbaa !3
  %10 = bitcast i8** %9 to i8*
  tail call void @free(i8* %10) #9
  %11 = bitcast %struct.QCDheader* %hdr to i8*
  tail call void @free(i8* %11) #9
  br label %return

return:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @swrite_data(%struct._IO_FILE* nocapture %fp, i8* nocapture %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i64 @fwrite(i8* %src, i64 %size, i64 1, %struct._IO_FILE* %fp) #9
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @this_node, align 4, !tbaa !0
  %call1 = tail call i32* @__errno_location() #10
  %1 = load i32* %call1, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0), i8* %myname, i32 %0, i8* %descrip, i32 %1) #9
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  tail call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @pwrite_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i64 @g_write(i8* %src, i64 %size, i64 1, %struct._IO_FILE* %fp) #9
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @this_node, align 4, !tbaa !0
  %call1 = tail call i32* @__errno_location() #10
  %1 = load i32* %call1, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str8, i64 0, i64 0), i8* %myname, i32 %0, i8* %descrip, i32 %1) #9
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  tail call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare i64 @g_write(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define void @pswrite_data(i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %tobool = icmp eq i32 %parallel, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @pwrite_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @swrite_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @sread_data(%struct._IO_FILE* nocapture %fp, i8* nocapture %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i64 @fread(i8* %src, i64 %size, i64 1, %struct._IO_FILE* %fp) #9
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @this_node, align 4, !tbaa !0
  %call1 = tail call i32* @__errno_location() #10
  %1 = load i32* %call1, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %myname, i32 %0, i8* %descrip, i32 %1) #9
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @pread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i64 @g_read(i8* %src, i64 %size, i64 1, %struct._IO_FILE* %fp) #9
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* @this_node, align 4, !tbaa !0
  %call1 = tail call i32* @__errno_location() #10
  %1 = load i32* %call1, align 4, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %myname, i32 %0, i8* %descrip, i32 %1) #9
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i64 @g_read(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @pread_byteorder(i32 %byterevflag, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i32 @pread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  %cmp = icmp eq i32 %byterevflag, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %src to i32*
  %div = lshr i64 %size, 2
  %conv = trunc i64 %div to i32
  tail call void @byterevn(i32* %0, i32 %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: optsize
declare void @byterevn(i32*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @sread_byteorder(i32 %byterevflag, %struct._IO_FILE* nocapture %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %call = tail call i32 @sread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  %cmp = icmp eq i32 %byterevflag, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %src to i32*
  %div = lshr i64 %size, 2
  %conv = trunc i64 %div to i32
  tail call void @byterevn(i32* %0, i32 %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @psread_data(i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %tobool = icmp eq i32 %parallel, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @pread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @sread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @psread_byteorder(i32 %byterevflag, i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %tobool = icmp eq i32 %parallel, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @pread_byteorder(i32 %byterevflag, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @sread_byteorder(i32 %byterevflag, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @pwrite_gauge_hdr(%struct._IO_FILE* %fp, %struct.gauge_header* %gh) #0 {
entry:
  %myname = alloca [17 x i8], align 16
  %0 = getelementptr inbounds [17 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8]* @pwrite_gauge_hdr.myname, i64 0, i64 0), i64 17, i32 16, i1 false)
  %1 = bitcast %struct.gauge_header* %gh to i8*
  call void @pwrite_data(%struct._IO_FILE* %fp, i8* %1, i64 4, i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #8
  %arraydecay1 = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 2, i64 0
  %2 = bitcast i32* %arraydecay1 to i8*
  call void @pwrite_data(%struct._IO_FILE* %fp, i8* %2, i64 16, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %arraydecay3 = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 1, i64 0
  call void @pwrite_data(%struct._IO_FILE* %fp, i8* %arraydecay3, i64 64, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) #8
  %order = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 4
  %3 = bitcast i32* %order to i8*
  call void @pwrite_data(%struct._IO_FILE* %fp, i8* %3, i64 4, i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #8
  %header_bytes = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 3
  store i32 88, i32* %header_bytes, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize uwtable
define void @swrite_gauge_hdr(%struct._IO_FILE* nocapture %fp, %struct.gauge_header* nocapture %gh) #0 {
entry:
  %myname = alloca [17 x i8], align 16
  %0 = getelementptr inbounds [17 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8]* @swrite_gauge_hdr.myname, i64 0, i64 0), i64 17, i32 16, i1 false)
  %1 = bitcast %struct.gauge_header* %gh to i8*
  call void @swrite_data(%struct._IO_FILE* %fp, i8* %1, i64 4, i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #8
  %arraydecay1 = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 2, i64 0
  %2 = bitcast i32* %arraydecay1 to i8*
  call void @swrite_data(%struct._IO_FILE* %fp, i8* %2, i64 16, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %arraydecay3 = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 1, i64 0
  call void @swrite_data(%struct._IO_FILE* %fp, i8* %arraydecay3, i64 64, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0)) #8
  %order = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 4
  %3 = bitcast i32* %order to i8*
  call void @swrite_data(%struct._IO_FILE* %fp, i8* %3, i64 4, i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #8
  %header_bytes = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 3
  store i32 88, i32* %header_bytes, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @write_gauge_info_item(%struct._IO_FILE* nocapture %fpout, i8* %keyword, i8* %fmt, i8* %src, i32 %count, i32 %stride) #0 {
entry:
  %0 = load i8** getelementptr inbounds ([0 x i8*]* @gauge_info_keyword, i64 0, i64 0), align 8, !tbaa !3
  %strlenfirst98 = load i8* %0, align 1
  %cmp99 = icmp eq i8 %strlenfirst98, 0
  br i1 %cmp99, label %if.then, label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %arrayidx = getelementptr inbounds [0 x i8*]* @gauge_info_keyword, i64 0, i64 %indvars.iv.next
  %1 = load i8** %arrayidx, align 8, !tbaa !3
  %strlenfirst = load i8* %1, align 1
  %cmp = icmp eq i8 %strlenfirst, 0
  br i1 %cmp, label %if.then, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %2 = phi i8* [ %1, %for.cond ], [ %0, %entry ]
  %call3 = tail call i32 @strcmp(i8* %2, i8* %keyword) #7
  %cmp4 = icmp eq i32 %call3, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp4, label %if.end, label %for.cond

if.then:                                          ; preds = %entry, %for.cond
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), i8* %keyword) #9
  br label %if.end

if.end:                                           ; preds = %land.rhs, %if.then
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* %keyword) #9
  %cmp11 = icmp sgt i32 %count, 1
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), i32 %count) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %cmp15 = icmp eq i32 %count, 0
  %. = select i1 %cmp15, i32 1, i32 %count
  %cmp1995 = icmp sgt i32 %., 0
  br i1 %cmp1995, label %for.body20.lr.ph, label %for.end54

for.body20.lr.ph:                                 ; preds = %if.end14
  %idx.ext = sext i32 %stride to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc52
  %data.097 = phi i8* [ %src, %for.body20.lr.ph ], [ %add.ptr, %for.inc52 ]
  %k.096 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc53, %for.inc52 ]
  %fputc94 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %fpout)
  %strchr = tail call i8* @strchr(i8* %fmt, i32 115)
  %cmp23 = icmp eq i8* %strchr, null
  br i1 %cmp23, label %if.else, label %if.then24

if.then24:                                        ; preds = %for.body20
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* %fmt, i8* %data.097) #9
  br label %for.inc52

if.else:                                          ; preds = %for.body20
  %strchr88 = tail call i8* @strchr(i8* %fmt, i32 100)
  %cmp27 = icmp eq i8* %strchr88, null
  br i1 %cmp27, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.else
  %3 = bitcast i8* %data.097 to i32*
  %4 = load i32* %3, align 4, !tbaa !0
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* %fmt, i32 %4) #9
  br label %for.inc52

if.else30:                                        ; preds = %if.else
  %strchr89 = tail call i8* @strchr(i8* %fmt, i32 101)
  %cmp32 = icmp eq i8* %strchr89, null
  br i1 %cmp32, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.else30
  %5 = bitcast i8* %data.097 to double*
  %6 = load double* %5, align 8, !tbaa !4
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* %fmt, double %6) #9
  br label %for.inc52

if.else35:                                        ; preds = %if.else30
  %strchr90 = tail call i8* @strchr(i8* %fmt, i32 102)
  %cmp37 = icmp eq i8* %strchr90, null
  br i1 %cmp37, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.else35
  %7 = bitcast i8* %data.097 to double*
  %8 = load double* %7, align 8, !tbaa !4
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* %fmt, double %8) #9
  br label %for.inc52

if.else40:                                        ; preds = %if.else35
  %strchr91 = tail call i8* @strchr(i8* %fmt, i32 103)
  %cmp42 = icmp eq i8* %strchr91, null
  br i1 %cmp42, label %if.else45, label %if.then43

if.then43:                                        ; preds = %if.else40
  %9 = bitcast i8* %data.097 to double*
  %10 = load double* %9, align 8, !tbaa !4
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fpout, i8* %fmt, double %10) #9
  br label %for.inc52

if.else45:                                        ; preds = %if.else40
  %call46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str23, i64 0, i64 0), i8* %fmt) #9
  br label %return

for.inc52:                                        ; preds = %if.then24, %if.then33, %if.then43, %if.then38, %if.then28
  %inc53 = add nsw i32 %k.096, 1
  %add.ptr = getelementptr inbounds i8* %data.097, i64 %idx.ext
  %cmp19 = icmp slt i32 %inc53, %.
  br i1 %cmp19, label %for.body20, label %for.end54

for.end54:                                        ; preds = %for.inc52, %if.end14
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fpout)
  br label %return

return:                                           ; preds = %for.end54, %if.else45
  %retval.0 = phi i32 [ 1, %if.else45 ], [ 0, %for.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @write_gauge_info_file(%struct.gauge_file* nocapture %gf) #0 {
entry:
  %info_filename = alloca [256 x i8], align 16
  %sums = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [256 x i8]* %info_filename, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #5
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %1 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %filename = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %2 = load i8** %filename, align 8, !tbaa !3
  %call = call i8* @strcpy(i8* %0, i8* %2) #9
  %strlen = call i64 @strlen(i8* %0)
  %endptr = getelementptr [256 x i8]* %info_filename, i64 0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i64 6, i32 1, i1 false)
  %call4 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str26, i64 0, i64 0)) #9
  %cmp = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str27, i64 0, i64 0), i8* %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.gauge_header* %1 to i8*
  %call7 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3, i32 0, i32 0) #8
  %arraydecay8 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call9 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i8* %arraydecay8, i32 0, i32 0) #8
  %arraydecay10 = getelementptr inbounds [20 x i8]* %sums, i64 0, i64 0
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  %4 = load i32* %sum29, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  %5 = load i32* %sum31, align 4, !tbaa !0
  %call12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i32 %4, i32 %5) #9
  %call14 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i8* %arraydecay10, i32 0, i32 0) #8
  %call15 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nx to i8*), i32 0, i32 0) #8
  %call16 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @ny to i8*), i32 0, i32 0) #8
  %call17 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nz to i8*), i32 0, i32 0) #8
  %call18 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call4, i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nt to i8*), i32 0, i32 0) #8
  call void @write_appl_gauge_info(%struct._IO_FILE* %call4) #9
  %call19 = call i32 @fclose(%struct._IO_FILE* %call4) #9
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str35, i64 0, i64 0), i8* %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end(i64 256, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @write_appl_gauge_info(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @setup_input_gauge_file(i8* %filename) #0 {
entry:
  %myname = alloca [23 x i8], align 16
  %0 = getelementptr inbounds [23 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([23 x i8]* @setup_input_gauge_file.myname, i64 0, i64 0), i64 23, i32 16, i1 false)
  %call = call noalias i8* @calloc(i64 1, i64 56) #9
  %1 = bitcast i8* %call to %struct.gauge_file*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0), i8* %0) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %filename2 = getelementptr inbounds i8* %call, i64 16
  %2 = bitcast i8* %filename2 to i8**
  store i8* %filename, i8** %2, align 8, !tbaa !3
  %call3 = call noalias i8* @calloc(i64 1, i64 92) #9
  %3 = bitcast i8* %call3 to %struct.gauge_header*
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str37, i64 0, i64 0), i8* %0) #9
  call void @terminate(i32 1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %header = getelementptr inbounds i8* %call, i64 8
  %4 = bitcast i8* %header to %struct.gauge_header**
  store %struct.gauge_header* %3, %struct.gauge_header** %4, align 8, !tbaa !3
  %check = getelementptr inbounds i8* %call, i64 44
  %sum29 = getelementptr inbounds i8* %call, i64 48
  %5 = bitcast i8* %sum29 to i32*
  store i32 0, i32* %5, align 4, !tbaa !0
  %sum31 = bitcast i8* %check to i32*
  store i32 0, i32* %sum31, align 4, !tbaa !0
  ret %struct.gauge_file* %1
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @setup_output_gauge_file() #0 {
entry:
  %myname = alloca [24 x i8], align 16
  %time_stamp = alloca i64, align 8
  %0 = getelementptr inbounds [24 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([24 x i8]* @setup_output_gauge_file.myname, i64 0, i64 0), i64 24, i32 16, i1 false)
  %call = call noalias i8* @calloc(i64 1, i64 56) #9
  %1 = bitcast i8* %call to %struct.gauge_file*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str36, i64 0, i64 0), i8* %0) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call noalias i8* @calloc(i64 1, i64 92) #9
  %2 = bitcast i8* %call2 to %struct.gauge_header*
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str37, i64 0, i64 0), i8* %0) #9
  call void @terminate(i32 1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %header = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %header to %struct.gauge_header**
  store %struct.gauge_header* %2, %struct.gauge_header** %3, align 8, !tbaa !3
  %check = getelementptr inbounds i8* %call, i64 44
  %sum29 = getelementptr inbounds i8* %call, i64 48
  %4 = bitcast i8* %sum29 to i32*
  store i32 0, i32* %4, align 4, !tbaa !0
  %sum31 = bitcast i8* %check to i32*
  store i32 0, i32* %sum31, align 4, !tbaa !0
  %magic_number = bitcast i8* %call2 to i32*
  store i32 20103, i32* %magic_number, align 4, !tbaa !0
  %5 = load i32* @nx, align 4, !tbaa !0
  %dims = getelementptr inbounds i8* %call2, i64 68
  %arrayidx = bitcast i8* %dims to i32*
  store i32 %5, i32* %arrayidx, align 4, !tbaa !0
  %6 = load i32* @ny, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i8* %call2, i64 72
  %7 = bitcast i8* %arrayidx10 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !0
  %8 = load i32* @nz, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds i8* %call2, i64 76
  %9 = bitcast i8* %arrayidx12 to i32*
  store i32 %8, i32* %9, align 4, !tbaa !0
  %10 = load i32* @nt, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds i8* %call2, i64 80
  %11 = bitcast i8* %arrayidx14 to i32*
  store i32 %10, i32* %11, align 4, !tbaa !0
  %12 = load i32* @this_node, align 4, !tbaa !0
  %cmp15 = icmp eq i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end7.if.end45_crit_edge

if.end7.if.end45_crit_edge:                       ; preds = %if.end7
  %time_stamp46.pre = getelementptr inbounds i8* %call2, i64 4
  br label %if.end45

if.then16:                                        ; preds = %if.end7
  %call17 = call i64 @time(i64* %time_stamp) #9
  %time_stamp18 = getelementptr inbounds i8* %call2, i64 4
  %call20 = call i8* @ctime(i64* %time_stamp) #9
  %call21 = call i8* @strcpy(i8* %time_stamp18, i8* %call20) #9
  %call24 = call i64 @strlen(i8* %time_stamp18) #7
  %add = add i64 %call24, 1
  %conv = trunc i64 %add to i32
  %cmp2569 = icmp slt i32 %conv, 64
  br i1 %cmp2569, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then16
  %sext = shl i64 %add, 32
  %13 = ashr exact i64 %sext, 32
  %14 = add i64 %13, 4
  %scevgep = getelementptr i8* %call2, i64 %14
  %15 = sub i64 62, %call24
  %16 = and i64 %15, 4294967295
  %17 = add i64 %16, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %17, i32 1, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %if.then16
  %call31 = call i64 @strlen(i8* %time_stamp18) #7
  %time_stamp18.sum = add i64 %call31, 3
  %arrayidx33 = getelementptr inbounds i8* %call2, i64 %time_stamp18.sum
  %18 = load i8* %arrayidx33, align 1, !tbaa !1
  %cmp35 = icmp eq i8 %18, 10
  br i1 %cmp35, label %if.then37, label %if.end45

if.then37:                                        ; preds = %for.end
  store i8 0, i8* %arrayidx33, align 1, !tbaa !1
  br label %if.end45

if.end45:                                         ; preds = %if.end7.if.end45_crit_edge, %for.end, %if.then37
  %time_stamp46.pre-phi = phi i8* [ %time_stamp46.pre, %if.end7.if.end45_crit_edge ], [ %time_stamp18, %for.end ], [ %time_stamp18, %if.then37 ]
  call void @broadcast_bytes(i8* %time_stamp46.pre-phi, i32 64) #9
  ret %struct.gauge_file* %1
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i8* @ctime(i64*) #2

; Function Attrs: optsize
declare void @broadcast_bytes(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @w_serial_i(i8* %filename) #0 {
entry:
  %myname = alloca [11 x i8], align 1
  %0 = getelementptr inbounds [11 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8]* @w_serial_i.myname, i64 0, i64 0), i64 11, i32 1, i1 false)
  %call = call %struct.gauge_file* @setup_output_gauge_file() #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %1 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 4
  store i32 0, i32* %order, align 4, !tbaa !0
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end7.thread

if.end7.thread:                                   ; preds = %entry
  %fp1027 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  br label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #9
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %3 = load i32* @this_node, align 4, !tbaa !0
  %call4 = call i32* @__errno_location() #10
  %4 = load i32* %call4, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str39, i64 0, i64 0), i8* %0, i32 %3, i8* %filename, i32 %4) #9
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call6 = call i32 @fflush(%struct._IO_FILE* %5) #9
  call void @terminate(i32 1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then3
  call void @swrite_gauge_hdr(%struct._IO_FILE* %call1, %struct.gauge_header* %1) #8
  %.pr = load i32* @this_node, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %.pr, 0
  %fp10 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp10, align 8, !tbaa !3
  br label %if.end12

if.else:                                          ; preds = %if.end7.thread, %if.end7
  %fp1028 = phi %struct._IO_FILE** [ %fp1027, %if.end7.thread ], [ %fp10, %if.end7 ]
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp1028, align 8, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %filename13 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 2
  store i8* %filename, i8** %filename13, align 8, !tbaa !3
  %byterevflag = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  %rank2rcv = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 4
  store i32* null, i32** %rank2rcv, align 8, !tbaa !3
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 0, i32* %parallel, align 4, !tbaa !0
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define void @read_checksum(i32 %parallel, %struct.gauge_file* %gf, %struct.gauge_check* nocapture %test_gc) #0 {
entry:
  %myname = alloca [14 x i8], align 1
  %0 = getelementptr inbounds [14 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([14 x i8]* @read_checksum.myname, i64 0, i64 0), i64 14, i32 1, i1 false)
  %byterevflag = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 3
  %1 = load i32* %byterevflag, align 4, !tbaa !0
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  %3 = bitcast i32* %sum29 to i8*
  %call = call i32 @psread_byteorder(i32 %1, i32 %parallel, %struct._IO_FILE* %2, i8* %3, i64 4, i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load i32* %byterevflag, align 4, !tbaa !0
  %5 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  %6 = bitcast i32* %sum31 to i8*
  %call5 = call i32 @psread_byteorder(i32 %4, i32 %parallel, %struct._IO_FILE* %5, i8* %6, i64 4, i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @terminate(i32 1) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then7
  %7 = load i32* %sum29, align 4, !tbaa !0
  %sum2911 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 1
  %8 = load i32* %sum2911, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %7, %8
  br i1 %cmp12, label %lor.lhs.false, label %if.end8.if.then17_crit_edge

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  %sum3120.phi.trans.insert = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 0
  %.pre = load i32* %sum3120.phi.trans.insert, align 4, !tbaa !0
  %.pre48 = load i32* %sum31, align 4, !tbaa !0
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end8
  %9 = load i32* %sum31, align 4, !tbaa !0
  %sum3115 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 0
  %10 = load i32* %sum3115, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %9, %10
  br i1 %cmp16, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end8.if.then17_crit_edge, %lor.lhs.false
  %11 = phi i32 [ %.pre48, %if.end8.if.then17_crit_edge ], [ %9, %lor.lhs.false ]
  %12 = phi i32 [ %.pre, %if.end8.if.then17_crit_edge ], [ %10, %lor.lhs.false ]
  %call25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str41, i64 0, i64 0), i8* %0, i32 %8, i32 %12, i32 %7, i32 %11) #9
  br label %if.end32

if.else:                                          ; preds = %lor.lhs.false
  %call30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str42, i64 0, i64 0), i32 %7, i32 %9) #9
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call31 = call i32 @fflush(%struct._IO_FILE* %13) #9
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_checksum(i32 %parallel, %struct.gauge_file* %gf) #0 {
entry:
  %myname = alloca [15 x i8], align 1
  %0 = getelementptr inbounds [15 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([15 x i8]* @write_checksum.myname, i64 0, i64 0), i64 15, i32 1, i1 false)
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %1 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  %2 = bitcast i32* %sum29 to i8*
  call void @pswrite_data(i32 %parallel, %struct._IO_FILE* %1, i8* %2, i64 4, i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0)) #8
  %3 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  %4 = bitcast i32* %sum31 to i8*
  call void @pswrite_data(i32 %parallel, %struct._IO_FILE* %3, i8* %4, i64 4, i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0)) #8
  %5 = load i32* %sum29, align 4, !tbaa !0
  %6 = load i32* %sum31, align 4, !tbaa !0
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0), i32 %5, i32 %6) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @w_serial(%struct.gauge_file* %gf) #0 {
entry:
  %tbuf = alloca [4 x %struct.su3_matrix], align 16
  %0 = bitcast [4 x %struct.su3_matrix]* %tbuf to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #5
  %1 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %2 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %puts237 = call i32 @puts(i8* getelementptr inbounds ([52 x i8]* @str177, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %call2 = call noalias i8* @calloc(i64 16384, i64 144) #9
  %3 = bitcast i8* %call2 to %struct.su3_matrix*
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %puts = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str176, i64 0, i64 0))
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call6 = call i32 @fflush(%struct._IO_FILE* %4) #9
  call void @terminate(i32 1) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %fp8 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %5 = load %struct._IO_FILE** %fp8, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %6 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %header_bytes = getelementptr inbounds %struct.gauge_header* %6, i64 0, i32 3
  %7 = load i32* %header_bytes, align 4, !tbaa !0
  %conv = sext i32 %7 to i64
  %add9 = add nsw i64 %conv, 8
  %call10 = call i32 @fseek(%struct._IO_FILE* %5, i64 %add9, i32 0) #9
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end7
  %8 = load i32* @this_node, align 4, !tbaa !0
  %call14 = call i32* @__errno_location() #10
  %9 = load i32* %call14, align 4, !tbaa !0
  %filename = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %10 = load i8** %filename, align 8, !tbaa !3
  %call15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str46, i64 0, i64 0), i32 %8, i32 %9, i8* %10) #9
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call16 = call i32 @fflush(%struct._IO_FILE* %11) #9
  call void @terminate(i32 1) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end7, %if.then13, %entry
  %lbuf.0 = phi %struct.su3_matrix* [ %3, %if.then13 ], [ %3, %if.end7 ], [ undef, %entry ]
  %checksum_offset.0 = phi i64 [ %conv, %if.then13 ], [ %conv, %if.end7 ], [ undef, %entry ]
  %gh.0 = phi %struct.gauge_header* [ %6, %if.then13 ], [ %6, %if.end7 ], [ undef, %entry ]
  %fp.0 = phi %struct._IO_FILE* [ %5, %if.then13 ], [ %5, %if.end7 ], [ undef, %entry ]
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  %12 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv20 = sext i32 %12 to i64
  %mul = mul i64 %conv20, 144
  %13 = load i32* @this_node, align 4, !tbaa !0
  %conv21 = sext i32 %13 to i64
  %mul22 = mul i64 %mul, %conv21
  call void (...)* @g_sync() #9
  %14 = load i32* @nt, align 4, !tbaa !0
  %cmp30280 = icmp sgt i32 %14, 0
  br i1 %cmp30280, label %for.cond32.preheader.lr.ph, label %for.end155

for.cond32.preheader.lr.ph:                       ; preds = %if.end18
  %rem28 = urem i64 %mul22, 31
  %rem = urem i64 %mul22, 29
  %conv29 = trunc i64 %rem28 to i32
  %conv23 = trunc i64 %rem to i32
  %15 = bitcast %struct.su3_matrix* %lbuf.0 to i8*
  %filename127 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %.pre = load i32* @nz, align 4, !tbaa !0
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond32.preheader.lr.ph, %for.inc153
  %16 = phi i32 [ %14, %for.cond32.preheader.lr.ph ], [ %45, %for.inc153 ]
  %17 = phi i32 [ %.pre, %for.cond32.preheader.lr.ph ], [ %46, %for.inc153 ]
  %t.0286 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %inc154, %for.inc153 ]
  %currentnode.0285 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %currentnode.1.lcssa, %for.inc153 ]
  %rank29.0284 = phi i32 [ %conv23, %for.cond32.preheader.lr.ph ], [ %rank29.1.lcssa, %for.inc153 ]
  %rank31.0283 = phi i32 [ %conv29, %for.cond32.preheader.lr.ph ], [ %rank31.1.lcssa, %for.inc153 ]
  %j.0282 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %j.1.lcssa, %for.inc153 ]
  %buf_length.0281 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %buf_length.1.lcssa, %for.inc153 ]
  %cmp33268 = icmp sgt i32 %17, 0
  br i1 %cmp33268, label %for.cond36.preheader.lr.ph, label %for.inc153

for.cond36.preheader.lr.ph:                       ; preds = %for.cond32.preheader
  %.pre289 = load i32* @ny, align 4, !tbaa !0
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond36.preheader.lr.ph, %for.inc150
  %18 = phi i32 [ %17, %for.cond36.preheader.lr.ph ], [ %43, %for.inc150 ]
  %19 = phi i32 [ %.pre289, %for.cond36.preheader.lr.ph ], [ %44, %for.inc150 ]
  %z.0274 = phi i32 [ 0, %for.cond36.preheader.lr.ph ], [ %inc151, %for.inc150 ]
  %currentnode.1273 = phi i32 [ %currentnode.0285, %for.cond36.preheader.lr.ph ], [ %currentnode.2.lcssa, %for.inc150 ]
  %rank29.1272 = phi i32 [ %rank29.0284, %for.cond36.preheader.lr.ph ], [ %rank29.2.lcssa, %for.inc150 ]
  %rank31.1271 = phi i32 [ %rank31.0283, %for.cond36.preheader.lr.ph ], [ %rank31.2.lcssa, %for.inc150 ]
  %j.1270 = phi i32 [ %j.0282, %for.cond36.preheader.lr.ph ], [ %j.2.lcssa, %for.inc150 ]
  %buf_length.1269 = phi i32 [ %buf_length.0281, %for.cond36.preheader.lr.ph ], [ %buf_length.2.lcssa, %for.inc150 ]
  %cmp37256 = icmp sgt i32 %19, 0
  br i1 %cmp37256, label %for.cond40.preheader.lr.ph, label %for.inc150

for.cond40.preheader.lr.ph:                       ; preds = %for.cond36.preheader
  %.pre291 = load i32* @nx, align 4, !tbaa !0
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %for.inc147
  %20 = phi i32 [ %19, %for.cond40.preheader.lr.ph ], [ %41, %for.inc147 ]
  %21 = phi i32 [ %.pre291, %for.cond40.preheader.lr.ph ], [ %42, %for.inc147 ]
  %y.0262 = phi i32 [ 0, %for.cond40.preheader.lr.ph ], [ %inc148, %for.inc147 ]
  %currentnode.2261 = phi i32 [ %currentnode.1273, %for.cond40.preheader.lr.ph ], [ %currentnode.3.lcssa, %for.inc147 ]
  %rank29.2260 = phi i32 [ %rank29.1272, %for.cond40.preheader.lr.ph ], [ %rank29.3.lcssa, %for.inc147 ]
  %rank31.2259 = phi i32 [ %rank31.1271, %for.cond40.preheader.lr.ph ], [ %rank31.3.lcssa, %for.inc147 ]
  %j.2258 = phi i32 [ %j.1270, %for.cond40.preheader.lr.ph ], [ %j.3.lcssa, %for.inc147 ]
  %buf_length.2257 = phi i32 [ %buf_length.1269, %for.cond40.preheader.lr.ph ], [ %buf_length.3.lcssa, %for.inc147 ]
  %cmp41244 = icmp sgt i32 %21, 0
  br i1 %cmp41244, label %for.body43, label %for.inc147

for.body43:                                       ; preds = %for.cond40.preheader, %for.inc143
  %x.0251 = phi i32 [ %inc144, %for.inc143 ], [ 0, %for.cond40.preheader ]
  %currentnode.3250 = phi i32 [ %currentnode.4, %for.inc143 ], [ %currentnode.2261, %for.cond40.preheader ]
  %rank29.3249 = phi i32 [ %rank29.5, %for.inc143 ], [ %rank29.2260, %for.cond40.preheader ]
  %rank31.3248 = phi i32 [ %rank31.5, %for.inc143 ], [ %rank31.2259, %for.cond40.preheader ]
  %j.3246 = phi i32 [ %inc145, %for.inc143 ], [ %j.2258, %for.cond40.preheader ]
  %buf_length.3245 = phi i32 [ %buf_length.4, %for.inc143 ], [ %buf_length.2257, %for.cond40.preheader ]
  %call44 = call i32 @node_number(i32 %x.0251, i32 %y.0262, i32 %z.0274, i32 %t.0286) #9
  %cmp45 = icmp eq i32 %call44, %currentnode.3250
  br i1 %cmp45, label %if.end62thread-pre-split, label %if.then47

if.then47:                                        ; preds = %for.body43
  %22 = load i32* @this_node, align 4, !tbaa !0
  %cmp48 = icmp ne i32 %22, 0
  %cmp50 = icmp eq i32 %call44, 0
  %or.cond238 = or i1 %cmp48, %cmp50
  br i1 %or.cond238, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.then47
  call void @send_field(i8* %0, i32 4, i32 %call44) #9
  %.pre296 = load i32* @this_node, align 4, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.then52
  %23 = phi i32 [ %22, %if.then47 ], [ %.pre296, %if.then52 ]
  %cmp54 = icmp eq i32 %23, %call44
  %cmp57 = icmp ne i32 %call44, 0
  %or.cond = and i1 %cmp54, %cmp57
  br i1 %or.cond, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end53
  call void @get_field(i8* %0, i32 4) #9
  br label %if.end62thread-pre-split

if.end62thread-pre-split:                         ; preds = %for.body43, %if.then59
  %currentnode.4.ph = phi i32 [ %call44, %if.then59 ], [ %currentnode.3250, %for.body43 ]
  %.pr = load i32* @this_node, align 4, !tbaa !0
  br label %if.end62

if.end62:                                         ; preds = %if.end62thread-pre-split, %if.end53
  %24 = phi i32 [ %.pr, %if.end62thread-pre-split ], [ %23, %if.end53 ]
  %currentnode.4 = phi i32 [ %currentnode.4.ph, %if.end62thread-pre-split ], [ %call44, %if.end53 ]
  %cmp63 = icmp eq i32 %24, 0
  br i1 %cmp63, label %if.then65, label %if.else132

if.then65:                                        ; preds = %if.end62
  %cmp66 = icmp eq i32 %currentnode.4, 0
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.then65
  %call69 = call i32 @node_index(i32 %x.0251, i32 %y.0262, i32 %z.0274, i32 %t.0286) #9
  %idxprom75 = sext i32 %call69 to i64
  %.pre293 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %if.then68
  %indvars.iv = phi i64 [ 0, %if.then68 ], [ %indvars.iv.next, %for.body73 ]
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix]* %tbuf, i64 0, i64 %indvars.iv
  %arrayidx77 = getelementptr inbounds %struct.site* %.pre293, i64 %idxprom75, i32 8, i64 %indvars.iv
  %25 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %26 = bitcast %struct.su3_matrix* %arrayidx77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %if.end79, label %for.body73

if.else:                                          ; preds = %if.then65
  call void @get_field(i8* %0, i32 576) #9
  br label %if.end79

if.end79:                                         ; preds = %for.body73, %if.else
  %mul80 = shl nsw i32 %buf_length.3245, 2
  %idxprom81 = sext i32 %mul80 to i64
  %arrayidx82 = getelementptr inbounds %struct.su3_matrix* %lbuf.0, i64 %idxprom81
  %27 = bitcast %struct.su3_matrix* %arrayidx82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %0, i64 576, i32 1, i1 false)
  %28 = bitcast %struct.su3_matrix* %arrayidx82 to i32*
  %.pre294 = load i32* %sum29, align 4, !tbaa !0
  %.pre295 = load i32* %sum31, align 4, !tbaa !0
  br label %for.body90

for.body90:                                       ; preds = %for.body90, %if.end79
  %29 = phi i32 [ %.pre295, %if.end79 ], [ %xor99, %for.body90 ]
  %30 = phi i32 [ %.pre294, %if.end79 ], [ %xor, %for.body90 ]
  %val.0243 = phi i32* [ %28, %if.end79 ], [ %incdec.ptr, %for.body90 ]
  %rank29.4242 = phi i32 [ %rank29.3249, %if.end79 ], [ %.inc100, %for.body90 ]
  %rank31.4241 = phi i32 [ %rank31.3248, %if.end79 ], [ %.inc105, %for.body90 ]
  %k.1240 = phi i32 [ 0, %if.end79 ], [ %inc111, %for.body90 ]
  %31 = load i32* %val.0243, align 4, !tbaa !0
  %shl = shl i32 %31, %rank29.4242
  %sub = sub nsw i32 32, %rank29.4242
  %shr = lshr i32 %31, %sub
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %30
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %32 = load i32* %val.0243, align 4, !tbaa !0
  %shl93 = shl i32 %32, %rank31.4241
  %sub94 = sub nsw i32 32, %rank31.4241
  %shr95 = lshr i32 %32, %sub94
  %or96 = or i32 %shl93, %shr95
  %xor99 = xor i32 %or96, %29
  store i32 %xor99, i32* %sum31, align 4, !tbaa !0
  %inc100 = add nsw i32 %rank29.4242, 1
  %cmp101 = icmp sgt i32 %rank29.4242, 27
  %.inc100 = select i1 %cmp101, i32 0, i32 %inc100
  %inc105 = add nsw i32 %rank31.4241, 1
  %cmp106 = icmp sgt i32 %rank31.4241, 29
  %.inc105 = select i1 %cmp106, i32 0, i32 %inc105
  %inc111 = add nsw i32 %k.1240, 1
  %incdec.ptr = getelementptr inbounds i32* %val.0243, i64 1
  %exitcond287 = icmp eq i32 %inc111, 144
  br i1 %exitcond287, label %for.end112, label %for.body90

for.end112:                                       ; preds = %for.body90
  %inc113 = add nsw i32 %buf_length.3245, 1
  %cmp114 = icmp eq i32 %inc113, 4096
  br i1 %cmp114, label %if.then119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end112
  %33 = load i32* @volume, align 4, !tbaa !0
  %sub116 = add nsw i32 %33, -1
  %cmp117 = icmp eq i32 %j.3246, %sub116
  br i1 %cmp117, label %if.then119, label %for.inc143

if.then119:                                       ; preds = %lor.lhs.false, %for.end112
  %conv120 = sext i32 %inc113 to i64
  %call121 = call i64 @fwrite(i8* %15, i64 576, i64 %conv120, %struct._IO_FILE* %fp.0) #9
  %conv122 = trunc i64 %call121 to i32
  %cmp123 = icmp eq i32 %conv122, %inc113
  br i1 %cmp123, label %for.inc143, label %if.then125

if.then125:                                       ; preds = %if.then119
  %34 = load i32* @this_node, align 4, !tbaa !0
  %call126 = call i32* @__errno_location() #10
  %35 = load i32* %call126, align 4, !tbaa !0
  %36 = load i8** %filename127, align 8, !tbaa !3
  %call128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str47, i64 0, i64 0), i32 %34, i32 %35, i8* %36) #9
  %37 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call129 = call i32 @fflush(%struct._IO_FILE* %37) #9
  call void @terminate(i32 1) #9
  br label %for.inc143

if.else132:                                       ; preds = %if.end62
  %cmp133 = icmp eq i32 %24, %currentnode.4
  br i1 %cmp133, label %if.then135, label %for.inc143

if.then135:                                       ; preds = %if.else132
  %call136 = call i32 @node_index(i32 %x.0251, i32 %y.0262, i32 %z.0274, i32 %t.0286) #9
  %idxprom137 = sext i32 %call136 to i64
  %38 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay140 = getelementptr inbounds %struct.site* %38, i64 %idxprom137, i32 8, i64 0
  %39 = bitcast %struct.su3_matrix* %arraydecay140 to i8*
  call void @send_field(i8* %39, i32 576, i32 0) #9
  br label %for.inc143

for.inc143:                                       ; preds = %if.then125, %if.then119, %lor.lhs.false, %if.then135, %if.else132
  %buf_length.4 = phi i32 [ %inc113, %lor.lhs.false ], [ %buf_length.3245, %if.then135 ], [ %buf_length.3245, %if.else132 ], [ 0, %if.then119 ], [ 0, %if.then125 ]
  %rank31.5 = phi i32 [ %.inc105, %lor.lhs.false ], [ %rank31.3248, %if.then135 ], [ %rank31.3248, %if.else132 ], [ %.inc105, %if.then119 ], [ %.inc105, %if.then125 ]
  %rank29.5 = phi i32 [ %.inc100, %lor.lhs.false ], [ %rank29.3249, %if.then135 ], [ %rank29.3249, %if.else132 ], [ %.inc100, %if.then119 ], [ %.inc100, %if.then125 ]
  %inc144 = add nsw i32 %x.0251, 1
  %inc145 = add nsw i32 %j.3246, 1
  %40 = load i32* @nx, align 4, !tbaa !0
  %cmp41 = icmp slt i32 %inc144, %40
  br i1 %cmp41, label %for.body43, label %for.cond40.for.inc147_crit_edge

for.cond40.for.inc147_crit_edge:                  ; preds = %for.inc143
  %.pre292 = load i32* @ny, align 4, !tbaa !0
  br label %for.inc147

for.inc147:                                       ; preds = %for.cond40.for.inc147_crit_edge, %for.cond40.preheader
  %41 = phi i32 [ %.pre292, %for.cond40.for.inc147_crit_edge ], [ %20, %for.cond40.preheader ]
  %42 = phi i32 [ %40, %for.cond40.for.inc147_crit_edge ], [ %21, %for.cond40.preheader ]
  %currentnode.3.lcssa = phi i32 [ %currentnode.4, %for.cond40.for.inc147_crit_edge ], [ %currentnode.2261, %for.cond40.preheader ]
  %rank29.3.lcssa = phi i32 [ %rank29.5, %for.cond40.for.inc147_crit_edge ], [ %rank29.2260, %for.cond40.preheader ]
  %rank31.3.lcssa = phi i32 [ %rank31.5, %for.cond40.for.inc147_crit_edge ], [ %rank31.2259, %for.cond40.preheader ]
  %j.3.lcssa = phi i32 [ %inc145, %for.cond40.for.inc147_crit_edge ], [ %j.2258, %for.cond40.preheader ]
  %buf_length.3.lcssa = phi i32 [ %buf_length.4, %for.cond40.for.inc147_crit_edge ], [ %buf_length.2257, %for.cond40.preheader ]
  %inc148 = add nsw i32 %y.0262, 1
  %cmp37 = icmp slt i32 %inc148, %41
  br i1 %cmp37, label %for.cond40.preheader, label %for.cond36.for.inc150_crit_edge

for.cond36.for.inc150_crit_edge:                  ; preds = %for.inc147
  %.pre290 = load i32* @nz, align 4, !tbaa !0
  br label %for.inc150

for.inc150:                                       ; preds = %for.cond36.for.inc150_crit_edge, %for.cond36.preheader
  %43 = phi i32 [ %.pre290, %for.cond36.for.inc150_crit_edge ], [ %18, %for.cond36.preheader ]
  %44 = phi i32 [ %41, %for.cond36.for.inc150_crit_edge ], [ %19, %for.cond36.preheader ]
  %currentnode.2.lcssa = phi i32 [ %currentnode.3.lcssa, %for.cond36.for.inc150_crit_edge ], [ %currentnode.1273, %for.cond36.preheader ]
  %rank29.2.lcssa = phi i32 [ %rank29.3.lcssa, %for.cond36.for.inc150_crit_edge ], [ %rank29.1272, %for.cond36.preheader ]
  %rank31.2.lcssa = phi i32 [ %rank31.3.lcssa, %for.cond36.for.inc150_crit_edge ], [ %rank31.1271, %for.cond36.preheader ]
  %j.2.lcssa = phi i32 [ %j.3.lcssa, %for.cond36.for.inc150_crit_edge ], [ %j.1270, %for.cond36.preheader ]
  %buf_length.2.lcssa = phi i32 [ %buf_length.3.lcssa, %for.cond36.for.inc150_crit_edge ], [ %buf_length.1269, %for.cond36.preheader ]
  %inc151 = add nsw i32 %z.0274, 1
  %cmp33 = icmp slt i32 %inc151, %43
  br i1 %cmp33, label %for.cond36.preheader, label %for.cond32.for.inc153_crit_edge

for.cond32.for.inc153_crit_edge:                  ; preds = %for.inc150
  %.pre288 = load i32* @nt, align 4, !tbaa !0
  br label %for.inc153

for.inc153:                                       ; preds = %for.cond32.for.inc153_crit_edge, %for.cond32.preheader
  %45 = phi i32 [ %.pre288, %for.cond32.for.inc153_crit_edge ], [ %16, %for.cond32.preheader ]
  %46 = phi i32 [ %43, %for.cond32.for.inc153_crit_edge ], [ %17, %for.cond32.preheader ]
  %currentnode.1.lcssa = phi i32 [ %currentnode.2.lcssa, %for.cond32.for.inc153_crit_edge ], [ %currentnode.0285, %for.cond32.preheader ]
  %rank29.1.lcssa = phi i32 [ %rank29.2.lcssa, %for.cond32.for.inc153_crit_edge ], [ %rank29.0284, %for.cond32.preheader ]
  %rank31.1.lcssa = phi i32 [ %rank31.2.lcssa, %for.cond32.for.inc153_crit_edge ], [ %rank31.0283, %for.cond32.preheader ]
  %j.1.lcssa = phi i32 [ %j.2.lcssa, %for.cond32.for.inc153_crit_edge ], [ %j.0282, %for.cond32.preheader ]
  %buf_length.1.lcssa = phi i32 [ %buf_length.2.lcssa, %for.cond32.for.inc153_crit_edge ], [ %buf_length.0281, %for.cond32.preheader ]
  %inc154 = add nsw i32 %t.0286, 1
  %cmp30 = icmp slt i32 %inc154, %45
  br i1 %cmp30, label %for.cond32.preheader, label %for.end155

for.end155:                                       ; preds = %for.inc153, %if.end18
  call void (...)* @g_sync() #9
  %47 = load i32* @this_node, align 4, !tbaa !0
  %cmp156 = icmp eq i32 %47, 0
  br i1 %cmp156, label %if.then158, label %if.end172

if.then158:                                       ; preds = %for.end155
  %48 = bitcast %struct.su3_matrix* %lbuf.0 to i8*
  call void @free(i8* %48) #9
  %filename159 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %49 = load i8** %filename159, align 8, !tbaa !3
  %call160 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str48, i64 0, i64 0), i8* %49) #9
  %arraydecay161 = getelementptr inbounds %struct.gauge_header* %gh.0, i64 0, i32 1, i64 0
  %call162 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay161) #9
  %call163 = call i32 @fseek(%struct._IO_FILE* %fp.0, i64 %checksum_offset.0, i32 0) #9
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.then158
  %50 = load i32* @this_node, align 4, !tbaa !0
  %call167 = call i32* @__errno_location() #10
  %51 = load i32* %call167, align 4, !tbaa !0
  %52 = load i8** %filename159, align 8, !tbaa !3
  %call169 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str46, i64 0, i64 0), i32 %50, i32 %51, i8* %52) #9
  %53 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call170 = call i32 @fflush(%struct._IO_FILE* %53) #9
  call void @terminate(i32 1) #9
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.then158
  call void @write_checksum(i32 0, %struct.gauge_file* %gf) #8
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %for.end155
  call void @llvm.lifetime.end(i64 576, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #2

; Function Attrs: optsize
declare void @g_sync(...) #3

; Function Attrs: optsize
declare i32 @node_number(i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @send_field(i8*, i32, i32) #3

; Function Attrs: optsize
declare void @get_field(i8*, i32) #3

; Function Attrs: optsize
declare i32 @node_index(i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @w_serial_f(%struct.gauge_file* nocapture %gf) #0 {
entry:
  tail call void (...)* @g_sync() #9
  %0 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %1 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str178, i64 0, i64 0))
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %call2 = tail call i32 @fclose(%struct._IO_FILE* %2) #9
  %.pr = load i32* @this_node, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %.pr, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @write_gauge_info_file(%struct.gauge_file* %gf) #8
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then5, %if.end3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @read_site_list(i32 %parallel, %struct.gauge_file* nocapture %gf) #0 {
entry:
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %0 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order = getelementptr inbounds %struct.gauge_header* %0, i64 0, i32 4
  %1 = load i32* %order, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.else41, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32* @volume, align 4, !tbaa !0
  %conv = sext i32 %2 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #9
  %3 = bitcast i8* %call to i32*
  %rank2rcv = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 4
  store i32* %3, i32** %rank2rcv, align 8, !tbaa !3
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str179, i64 0, i64 0))
  tail call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %4 = load i32* @this_node, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then8, label %if.end37

if.then8:                                         ; preds = %if.end
  %tobool = icmp eq i32 %parallel, 0
  %5 = load i32** %rank2rcv, align 8, !tbaa !3
  %6 = bitcast i32* %5 to i8*
  %7 = load i32* @volume, align 4, !tbaa !0
  %conv11 = sext i32 %7 to i64
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %8 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  br i1 %tobool, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then8
  %call12 = tail call i64 @g_read(i8* %6, i64 4, i64 %conv11, %struct._IO_FILE* %8) #9
  %conv13 = trunc i64 %call12 to i32
  %9 = load i32* @volume, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %conv13, %9
  br i1 %cmp14, label %if.end31, label %if.then16

if.then16:                                        ; preds = %if.then9
  %10 = load i32* @this_node, align 4, !tbaa !0
  %call17 = tail call i32* @__errno_location() #10
  %11 = load i32* %call17, align 4, !tbaa !0
  %call18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str52, i64 0, i64 0), i32 %10, i32 %11) #9
  tail call void @terminate(i32 1) #9
  br label %if.end31

if.else:                                          ; preds = %if.then8
  %call23 = tail call i64 @fread(i8* %6, i64 4, i64 %conv11, %struct._IO_FILE* %8) #9
  %conv24 = trunc i64 %call23 to i32
  %12 = load i32* @volume, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %conv24, %12
  br i1 %cmp25, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.else
  %13 = load i32* @this_node, align 4, !tbaa !0
  %call28 = tail call i32* @__errno_location() #10
  %14 = load i32* %call28, align 4, !tbaa !0
  %call29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str52, i64 0, i64 0), i32 %13, i32 %14) #9
  tail call void @terminate(i32 1) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then9, %if.else, %if.then27, %if.then16
  %byterevflag = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 3
  %15 = load i32* %byterevflag, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %15, 1
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %16 = load i32** %rank2rcv, align 8, !tbaa !3
  %17 = load i32* @volume, align 4, !tbaa !0
  tail call void @byterevn(i32* %16, i32 %17) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.end, %if.then34
  %18 = load i32** %rank2rcv, align 8, !tbaa !3
  %19 = bitcast i32* %18 to i8*
  %20 = load i32* @volume, align 4, !tbaa !0
  %mul = shl i32 %20, 2
  tail call void @broadcast_bytes(i8* %19, i32 %mul) #9
  br label %if.end43

if.else41:                                        ; preds = %entry
  %rank2rcv42 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 4
  store i32* null, i32** %rank2rcv42, align 8, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.end37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_v3_gauge_hdr(%struct.gauge_file* nocapture %gf, i32 %parallel, i32* nocapture %byterevflag) #0 {
entry:
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %myname = alloca [18 x i8], align 16
  %0 = getelementptr inbounds [18 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([18 x i8]* @read_v3_gauge_hdr.myname, i64 0, i64 0), i64 18, i32 16, i1 false)
  %fp6 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %1 = load %struct._IO_FILE** %fp6, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %2 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %magic_number = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 0
  %3 = load i32* %magic_number, align 4, !tbaa !0
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %puts154 = call i32 @puts(i8* getelementptr inbounds ([73 x i8]* @str183, i64 0, i64 0))
  %4 = bitcast %struct.gauge_header* %2 to i8*
  %call8 = call i32 @psread_data(i32 %parallel, %struct._IO_FILE* %1, i8* %4, i64 4, i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str54, i64 0, i64 0)) #8
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end11thread-pre-split, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @terminate(i32 1) #9
  br label %if.end11thread-pre-split

if.end11thread-pre-split:                         ; preds = %if.then10, %if.then
  %.pr = load i32* %magic_number, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %entry
  %5 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %3, %entry ]
  %sixtyfourbits.0 = phi i32 [ 1, %if.end11thread-pre-split ], [ 0, %entry ]
  %cmp14 = icmp eq i32 %5, 59354
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end11
  %puts153 = call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str182, i64 0, i64 0))
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then21, %if.then15
  %tobool = icmp eq i32 %sixtyfourbits.0, 0
  br label %for.body

if.else17:                                        ; preds = %if.end11
  call void @byterevn(i32* %magic_number, i32 1) #9
  %6 = load i32* %magic_number, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %6, 59354
  br i1 %cmp20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.else17
  store i32 1, i32* %byterevflag, align 4, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([66 x i8]* @str180, i64 0, i64 0))
  %puts152 = call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str181, i64 0, i64 0))
  %call24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i32 4, i32 8) #9
  call void @terminate(i32 1) #9
  br label %for.cond.preheader

if.else25:                                        ; preds = %if.else17
  store i32 %5, i32* %magic_number, align 4, !tbaa !0
  br label %return

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv157 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next158, %for.inc ]
  %7 = load i32* %byterevflag, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 %indvars.iv157
  %8 = bitcast i32* %arrayidx to i8*
  %call31 = call i32 @psread_byteorder(i32 %7, i32 %parallel, %struct._IO_FILE* %1, i8* %8, i64 4, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %for.body
  call void @terminate(i32 1) #9
  br label %if.end34

if.end34:                                         ; preds = %for.body, %if.then33
  br i1 %tobool, label %for.inc, label %if.then35

if.then35:                                        ; preds = %if.end34
  %9 = load i32* %byterevflag, align 4, !tbaa !0
  %call40 = call i32 @psread_byteorder(i32 %9, i32 %parallel, %struct._IO_FILE* %1, i8* %8, i64 4, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %for.inc, label %if.then42

if.then42:                                        ; preds = %if.then35
  call void @terminate(i32 1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %if.end34, %if.then42
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %lftr.wideiv159 = trunc i64 %indvars.iv.next158 to i32
  %exitcond160 = icmp eq i32 %lftr.wideiv159, 4
  br i1 %exitcond160, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx46 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 0
  %10 = load i32* %arrayidx46, align 4, !tbaa !0
  %11 = load i32* @nx, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %10, %11
  br i1 %cmp47, label %lor.lhs.false, label %for.end.if.then59_crit_edge

for.end.if.then59_crit_edge:                      ; preds = %for.end
  %.pre = load i32* @ny, align 4, !tbaa !0
  br label %if.then59

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx49 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 1
  %12 = load i32* %arrayidx49, align 4, !tbaa !0
  %13 = load i32* @ny, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %12, %13
  br i1 %cmp50, label %lor.lhs.false51, label %if.then59

lor.lhs.false51:                                  ; preds = %lor.lhs.false
  %arrayidx53 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 2
  %14 = load i32* %arrayidx53, align 4, !tbaa !0
  %15 = load i32* @nz, align 4, !tbaa !0
  %cmp54 = icmp eq i32 %14, %15
  br i1 %cmp54, label %lor.lhs.false55, label %if.then59

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %arrayidx57 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 3
  %16 = load i32* %arrayidx57, align 4, !tbaa !0
  %17 = load i32* @nt, align 4, !tbaa !0
  %cmp58 = icmp eq i32 %16, %17
  br i1 %cmp58, label %if.end93, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false51, %lor.lhs.false, %for.end.if.then59_crit_edge, %lor.lhs.false55
  %18 = phi i32 [ %.pre, %for.end.if.then59_crit_edge ], [ %12, %lor.lhs.false55 ], [ %13, %lor.lhs.false ], [ %12, %lor.lhs.false51 ]
  %cmp60 = icmp ne i32 %11, -1
  %cmp62 = icmp ne i32 %18, -1
  %or.cond = or i1 %cmp60, %cmp62
  %19 = load i32* @nz, align 4, !tbaa !0
  %cmp64 = icmp ne i32 %19, -1
  %or.cond110 = or i1 %or.cond, %cmp64
  %20 = load i32* @nt, align 4, !tbaa !0
  %cmp66 = icmp ne i32 %20, -1
  %or.cond111 = or i1 %or.cond110, %cmp66
  br i1 %or.cond111, label %if.then67, label %if.else81

if.then67:                                        ; preds = %if.then59
  %call68 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str59, i64 0, i64 0)) #9
  br label %for.body71

for.body71:                                       ; preds = %for.body71, %if.then67
  %indvars.iv = phi i64 [ 0, %if.then67 ], [ %indvars.iv.next, %for.body71 ]
  %arrayidx74 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 %indvars.iv
  %21 = load i32* %arrayidx74, align 4, !tbaa !0
  %call75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i32 %21) #9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end78, label %for.body71

for.end78:                                        ; preds = %for.body71
  %putchar = call i32 @putchar(i32 10) #5
  %22 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call80 = call i32 @fflush(%struct._IO_FILE* %22) #9
  call void @terminate(i32 1) #9
  br label %if.end93

if.else81:                                        ; preds = %if.then59
  store i32 %10, i32* @nx, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 1
  %23 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %23, i32* @ny, align 4, !tbaa !0
  %arrayidx87 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 2
  %24 = load i32* %arrayidx87, align 4, !tbaa !0
  store i32 %24, i32* @nz, align 4, !tbaa !0
  %arrayidx89 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 3
  %25 = load i32* %arrayidx89, align 4, !tbaa !0
  store i32 %25, i32* @nt, align 4, !tbaa !0
  %mul = mul i32 %10, %25
  %mul90 = mul i32 %mul, %23
  %mul91 = mul i32 %mul90, %24
  store i32 %mul91, i32* @volume, align 4, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false55, %for.end78, %if.else81
  %header_bytes = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 3
  %. = select i1 %tobool, i32 28, i32 48
  store i32 %., i32* %header_bytes, align 4, !tbaa !0
  %order = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 4
  store i32 0, i32* %order, align 4, !tbaa !0
  %26 = load i32* %byterevflag, align 4, !tbaa !0
  %27 = bitcast double* %c1 to i8*
  %call100 = call i32 @psread_byteorder(i32 %26, i32 %parallel, %struct._IO_FILE* %1, i8* %27, i64 8, i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str61, i64 0, i64 0)) #8
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end93
  call void @terminate(i32 1) #9
  br label %if.end103

if.end103:                                        ; preds = %if.end93, %if.then102
  %28 = load i32* %byterevflag, align 4, !tbaa !0
  %29 = bitcast double* %c2 to i8*
  %call105 = call i32 @psread_byteorder(i32 %28, i32 %parallel, %struct._IO_FILE* %1, i8* %29, i64 8, i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str62, i64 0, i64 0)) #8
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end103
  call void @terminate(i32 1) #9
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.then107
  %30 = load double* %c1, align 8, !tbaa !4
  %31 = load double* %c2, align 8, !tbaa !4
  %call109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str63, i64 0, i64 0), double %30, double %31) #9
  br label %return

return:                                           ; preds = %if.end108, %if.else25
  %retval.0 = phi i32 [ 0, %if.end108 ], [ 1, %if.else25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_1996_gauge_hdr(%struct.gauge_file* nocapture %gf, i32 %parallel, i32* nocapture %byterevflag) #0 {
entry:
  %gauge_field = alloca %struct.anon, align 8
  %myname = alloca [20 x i8], align 16
  %0 = bitcast %struct.anon* %gauge_field to i8*
  call void @llvm.lifetime.start(i64 224, i8* %0) #5
  %1 = getelementptr inbounds [20 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([20 x i8]* @read_1996_gauge_hdr.myname, i64 0, i64 0), i64 20, i32 16, i1 false)
  %fp4 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp4, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %3 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %magic_number = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 0
  %4 = load i32* %magic_number, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 53546
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts174 = call i32 @puts(i8* getelementptr inbounds ([49 x i8]* @str186, i64 0, i64 0))
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @byterevn(i32* %magic_number, i32 1) #9
  %5 = load i32* %magic_number, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %5, 53546
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  store i32 1, i32* %byterevflag, align 4, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([67 x i8]* @str184, i64 0, i64 0))
  %puts173 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str185, i64 0, i64 0))
  %call12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i32 4, i32 8) #9
  call void @terminate(i32 1) #9
  %.pre = load i32* %byterevflag, align 4, !tbaa !0
  br label %if.end15

if.else13:                                        ; preds = %if.else
  store i32 %4, i32* %magic_number, align 4, !tbaa !0
  br label %cleanup

if.end15:                                         ; preds = %if.then9, %if.then
  %6 = phi i32 [ %.pre, %if.then9 ], [ 0, %if.then ]
  %dims = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2
  %7 = bitcast [4 x i32]* %dims to i8*
  %call17 = call i32 @psread_byteorder(i32 %6, i32 %parallel, %struct._IO_FILE* %2, i8* %7, i64 16, i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @terminate(i32 1) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.then19
  %arrayidx = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 0
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %9 = load i32* @nx, align 4, !tbaa !0
  %cmp22 = icmp eq i32 %8, %9
  br i1 %cmp22, label %lor.lhs.false, label %if.end20.if.then34_crit_edge

if.end20.if.then34_crit_edge:                     ; preds = %if.end20
  %.pre181 = load i32* @ny, align 4, !tbaa !0
  br label %if.then34

lor.lhs.false:                                    ; preds = %if.end20
  %arrayidx24 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 1
  %10 = load i32* %arrayidx24, align 4, !tbaa !0
  %11 = load i32* @ny, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %10, %11
  br i1 %cmp25, label %lor.lhs.false26, label %if.then34

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %arrayidx28 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 2
  %12 = load i32* %arrayidx28, align 4, !tbaa !0
  %13 = load i32* @nz, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %12, %13
  br i1 %cmp29, label %lor.lhs.false30, label %if.then34

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %arrayidx32 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 3
  %14 = load i32* %arrayidx32, align 4, !tbaa !0
  %15 = load i32* @nt, align 4, !tbaa !0
  %cmp33 = icmp eq i32 %14, %15
  br i1 %cmp33, label %if.end62, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %if.end20.if.then34_crit_edge, %lor.lhs.false30
  %16 = phi i32 [ %.pre181, %if.end20.if.then34_crit_edge ], [ %10, %lor.lhs.false30 ], [ %11, %lor.lhs.false ], [ %10, %lor.lhs.false26 ]
  %cmp35 = icmp ne i32 %9, -1
  %cmp37 = icmp ne i32 %16, -1
  %or.cond = or i1 %cmp35, %cmp37
  %17 = load i32* @nz, align 4, !tbaa !0
  %cmp39 = icmp ne i32 %17, -1
  %or.cond128 = or i1 %or.cond, %cmp39
  %18 = load i32* @nt, align 4, !tbaa !0
  %cmp41 = icmp ne i32 %18, -1
  %or.cond129 = or i1 %or.cond128, %cmp41
  br i1 %or.cond129, label %if.then42, label %if.else50

if.then42:                                        ; preds = %if.then34
  %call43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str67, i64 0, i64 0)) #9
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then42
  %indvars.iv178 = phi i64 [ 0, %if.then42 ], [ %indvars.iv.next179, %for.body ]
  %arrayidx46 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 %indvars.iv178
  %19 = load i32* %arrayidx46, align 4, !tbaa !0
  %call47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i32 %19) #9
  %indvars.iv.next179 = add i64 %indvars.iv178, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next179 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %putchar = call i32 @putchar(i32 10) #5
  %20 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call49 = call i32 @fflush(%struct._IO_FILE* %20) #9
  call void @terminate(i32 1) #9
  br label %if.end62

if.else50:                                        ; preds = %if.then34
  store i32 %8, i32* @nx, align 4, !tbaa !0
  %arrayidx54 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 1
  %21 = load i32* %arrayidx54, align 4, !tbaa !0
  store i32 %21, i32* @ny, align 4, !tbaa !0
  %arrayidx56 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 2
  %22 = load i32* %arrayidx56, align 4, !tbaa !0
  store i32 %22, i32* @nz, align 4, !tbaa !0
  %arrayidx58 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 2, i64 3
  %23 = load i32* %arrayidx58, align 4, !tbaa !0
  store i32 %23, i32* @nt, align 4, !tbaa !0
  %mul = mul i32 %8, %23
  %mul59 = mul i32 %mul, %21
  %mul60 = mul i32 %mul59, %22
  store i32 %mul60, i32* @volume, align 4, !tbaa !0
  br label %if.end62

if.end62:                                         ; preds = %lor.lhs.false30, %for.end, %if.else50
  %24 = load i32* %byterevflag, align 4, !tbaa !0
  %header_bytes = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 3
  %25 = bitcast i32* %header_bytes to i8*
  %call64 = call i32 @psread_byteorder(i32 %24, i32 %parallel, %struct._IO_FILE* %2, i8* %25, i64 4, i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str68, i64 0, i64 0)) #8
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void @terminate(i32 1) #9
  br label %if.end67

if.end67:                                         ; preds = %if.end62, %if.then66
  %26 = load i32* %byterevflag, align 4, !tbaa !0
  %order = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 4
  %27 = bitcast i32* %order to i8*
  %call69 = call i32 @psread_byteorder(i32 %26, i32 %parallel, %struct._IO_FILE* %2, i8* %27, i64 4, i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #8
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @terminate(i32 1) #9
  br label %if.end72

if.end72:                                         ; preds = %if.end67, %if.then71
  %28 = load i32* %byterevflag, align 4, !tbaa !0
  %n_descript = getelementptr inbounds %struct.anon* %gauge_field, i64 0, i32 0
  %call74 = call i32 @psread_byteorder(i32 %28, i32 %parallel, %struct._IO_FILE* %2, i8* %0, i64 4, i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str69, i64 0, i64 0)) #8
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end72
  call void @terminate(i32 1) #9
  br label %if.end77

if.end77:                                         ; preds = %if.end72, %if.then76
  %29 = load i32* %n_descript, align 8, !tbaa !0
  %cmp79 = icmp sgt i32 %29, 200
  br i1 %cmp79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end77
  %call82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str70, i64 0, i64 0), i32 %29) #9
  %call83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i32 200) #9
  call void @terminate(i32 1) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end77
  %arraydecay85 = getelementptr inbounds %struct.anon* %gauge_field, i64 0, i32 1, i64 0
  %call87 = call i32 @psread_data(i32 %parallel, %struct._IO_FILE* %2, i8* %arraydecay85, i64 200, i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str72, i64 0, i64 0)) #8
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end84
  call void @terminate(i32 1) #9
  br label %if.end90

if.end90:                                         ; preds = %if.end84, %if.then89
  %30 = load i32* %n_descript, align 8, !tbaa !0
  %sub = add nsw i32 %30, -1
  %idxprom92 = sext i32 %sub to i64
  %arrayidx94 = getelementptr inbounds %struct.anon* %gauge_field, i64 0, i32 1, i64 %idxprom92
  store i8 0, i8* %arrayidx94, align 1, !tbaa !1
  %call97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str73, i64 0, i64 0), i8* %arraydecay85) #9
  %31 = load i32* %byterevflag, align 4, !tbaa !0
  %n_param = getelementptr inbounds %struct.anon* %gauge_field, i64 0, i32 2
  %32 = bitcast i32* %n_param to i8*
  %call99 = call i32 @psread_byteorder(i32 %31, i32 %parallel, %struct._IO_FILE* %2, i8* %32, i64 4, i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str74, i64 0, i64 0)) #8
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end90
  call void @terminate(i32 1) #9
  br label %if.end102

if.end102:                                        ; preds = %if.end90, %if.then101
  %33 = load i32* %n_param, align 4, !tbaa !0
  %cmp104 = icmp sgt i32 %33, 2
  br i1 %cmp104, label %if.then105, label %for.cond110.preheader

if.then105:                                       ; preds = %if.end102
  %call107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str75, i64 0, i64 0), i32 %33) #9
  %call108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i32 2) #9
  call void @terminate(i32 1) #9
  %.pre180 = load i32* %n_param, align 4, !tbaa !0
  br label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %if.then105, %if.end102
  %34 = phi i32 [ %.pre180, %if.then105 ], [ %33, %if.end102 ]
  %cmp112175 = icmp sgt i32 %34, 0
  br i1 %cmp112175, label %for.body113, label %cleanup

for.body113:                                      ; preds = %for.cond110.preheader, %if.end120
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end120 ], [ 0, %for.cond110.preheader ]
  %35 = load i32* %byterevflag, align 4, !tbaa !0
  %arrayidx115 = getelementptr inbounds %struct.anon* %gauge_field, i64 0, i32 3, i64 %indvars.iv
  %36 = bitcast double* %arrayidx115 to i8*
  %call117 = call i32 @psread_byteorder(i32 %35, i32 %parallel, %struct._IO_FILE* %2, i8* %36, i64 8, i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str76, i64 0, i64 0)) #8
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.end120, label %if.then119

if.then119:                                       ; preds = %for.body113
  call void @terminate(i32 1) #9
  br label %if.end120

if.end120:                                        ; preds = %for.body113, %if.then119
  %37 = load double* %arrayidx115, align 8, !tbaa !4
  %38 = trunc i64 %indvars.iv to i32
  %call124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str77, i64 0, i64 0), i32 %38, double %37) #9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %39 = load i32* %n_param, align 4, !tbaa !0
  %40 = trunc i64 %indvars.iv.next to i32
  %cmp112 = icmp slt i32 %40, %39
  br i1 %cmp112, label %for.body113, label %cleanup

cleanup:                                          ; preds = %for.cond110.preheader, %if.end120, %if.else13
  %retval.0 = phi i32 [ 1, %if.else13 ], [ 0, %if.end120 ], [ 0, %for.cond110.preheader ]
  call void @llvm.lifetime.end(i64 224, i8* %0) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_gauge_hdr(%struct.gauge_file* nocapture %gf, i32 %parallel) #0 {
entry:
  %btmp = alloca i32, align 4
  %byterevflag = alloca i32, align 4
  %myname = alloca [15 x i8], align 1
  %dims = alloca [4 x i32], align 16
  %chksum = alloca i32, align 4
  %0 = getelementptr inbounds [15 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([15 x i8]* @read_gauge_hdr.myname, i64 0, i64 0), i64 15, i32 1, i1 false)
  %fp10 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %1 = load %struct._IO_FILE** %fp10, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %2 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %magic_number = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 0
  %3 = bitcast %struct.gauge_header* %2 to i8*
  %call = call i32 @psread_data(i32 %parallel, %struct._IO_FILE* %1, i8* %3, i64 4, i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str54, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load i32* %magic_number, align 4, !tbaa !0
  store i32 %4, i32* %btmp, align 4, !tbaa !0
  call void @byterevn(i32* %btmp, i32 1) #9
  %cmp13 = icmp eq i32 %4, 1111836489
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %puts232 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str189, i64 0, i64 0))
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  br label %if.then51

if.else:                                          ; preds = %if.end
  %5 = load i32* %btmp, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %5, 1111836489
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %puts231 = call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str188, i64 0, i64 0))
  store i32 1, i32* %byterevflag, align 4, !tbaa !0
  %6 = load i32* %btmp, align 4, !tbaa !0
  store i32 %6, i32* %magic_number, align 4, !tbaa !0
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str80, i64 0, i64 0), i8* %0) #9
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i32 4, i32 8) #9
  call void @terminate(i32 1) #9
  br label %if.then51

if.else23:                                        ; preds = %if.else
  %cmp24 = icmp eq i32 %4, 20103
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else23
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  br label %if.else95

if.else26:                                        ; preds = %if.else23
  %cmp27 = icmp eq i32 %5, 20103
  br i1 %cmp27, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.else26
  store i32 1, i32* %byterevflag, align 4, !tbaa !0
  store i32 20103, i32* %magic_number, align 4, !tbaa !0
  %puts = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str187, i64 0, i64 0))
  %call32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str80, i64 0, i64 0), i8* %0) #9
  %call33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i32 4, i32 8) #9
  call void @terminate(i32 1) #9
  br label %if.else95

if.else34:                                        ; preds = %if.else26
  %call35 = call i32 @read_v3_gauge_hdr(%struct.gauge_file* %gf, i32 %parallel, i32* %byterevflag) #8
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else34
  %call37 = call i32 @read_1996_gauge_hdr(%struct.gauge_file* %gf, i32 %parallel, i32* %byterevflag) #8
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %return, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([67 x i8]* @.str82, i64 0, i64 0), i8* %0) #9
  %call42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str83, i64 0, i64 0), i32 20103, i32 %4) #9
  %conv = sext i32 %4 to i64
  %7 = inttoptr i64 %conv to i8*
  %call43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str84, i64 0, i64 0), i8* inttoptr (i64 20103 to i8*), i8* %7) #9
  call void @terminate(i32 1) #9
  br label %return

if.then51:                                        ; preds = %if.then14, %if.then17
  %8 = phi i32 [ 0, %if.then14 ], [ 1, %if.then17 ]
  %9 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order = getelementptr inbounds %struct.gauge_header* %9, i64 0, i32 4
  store i32 0, i32* %order, align 4, !tbaa !0
  %tobool = icmp eq i32 %parallel, 0
  br i1 %tobool, label %if.end56, label %if.then53

if.then53:                                        ; preds = %if.then51
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([56 x i8]* @.str85, i64 0, i64 0), i8* %0) #9
  call void @terminate(i32 1) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then53
  %call57 = call %struct.QCDheader* @qcdhdr_get_hdr(%struct._IO_FILE* %1) #8
  %arraydecay58 = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 0
  %call59 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8]* @.str86, i64 0, i64 0), %struct.QCDheader* %call57, i32* %arraydecay58) #8
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end56
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @.str87, i64 0, i64 0)) #5
  call void @terminate(i32 1) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end56
  %add.ptr65 = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 1
  %call66 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8]* @.str88, i64 0, i64 0), %struct.QCDheader* %call57, i32* %add.ptr65) #8
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  %puts.i233 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @.str89, i64 0, i64 0)) #5
  call void @terminate(i32 1) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end63
  %add.ptr72 = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 2
  %call73 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8]* @.str90, i64 0, i64 0), %struct.QCDheader* %call57, i32* %add.ptr72) #8
  %cmp74 = icmp eq i32 %call73, -1
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  %puts.i234 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @.str91, i64 0, i64 0)) #5
  call void @terminate(i32 1) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end70
  %add.ptr79 = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 3
  %call80 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8]* @.str92, i64 0, i64 0), %struct.QCDheader* %call57, i32* %add.ptr79) #8
  %cmp81 = icmp eq i32 %call80, -1
  br i1 %cmp81, label %if.then83, label %for.body

if.then83:                                        ; preds = %if.end77
  %puts.i235 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @.str93, i64 0, i64 0)) #5
  call void @terminate(i32 1) #9
  br label %for.body

for.body:                                         ; preds = %if.end77, %if.then83, %for.body
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.body ], [ 0, %if.then83 ], [ 0, %if.end77 ]
  %arrayidx = getelementptr inbounds [4 x i32]* %dims, i64 0, i64 %indvars.iv246
  %11 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx89 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 %indvars.iv246
  store i32 %11, i32* %arrayidx89, align 4, !tbaa !0
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  %lftr.wideiv248 = trunc i64 %indvars.iv.next247 to i32
  %exitcond249 = icmp eq i32 %lftr.wideiv248, 4
  br i1 %exitcond249, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call90 = call i32 @qcdhdr_get_int32x(i8* getelementptr inbounds ([9 x i8]* @.str94, i64 0, i64 0), %struct.QCDheader* %call57, i32* %chksum) #8
  %cmp91 = icmp eq i32 %call90, -1
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %for.end
  %puts.i236 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @.str95, i64 0, i64 0)) #5
  call void @terminate(i32 1) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %for.end
  %12 = load i32* %chksum, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  store i32 %12, i32* %sum31, align 4, !tbaa !0
  %arrayidx106.pre = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 0
  br label %if.end104

if.else95:                                        ; preds = %if.then25, %if.then28
  %13 = phi i32 [ 0, %if.then25 ], [ 1, %if.then28 ]
  %arraydecay97 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 0
  %14 = bitcast i32* %arraydecay97 to i8*
  %call99 = call i32 @psread_byteorder(i32 %13, i32 %parallel, %struct._IO_FILE* %1, i8* %14, i64 16, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #8
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.end104, label %if.then102

if.then102:                                       ; preds = %if.else95
  call void @terminate(i32 1) #9
  br label %if.end104

if.end104:                                        ; preds = %if.else95, %if.then102, %if.end94
  %arrayidx106.pre-phi = phi i32* [ %arraydecay97, %if.else95 ], [ %arraydecay97, %if.then102 ], [ %arrayidx106.pre, %if.end94 ]
  %15 = phi i32 [ %13, %if.else95 ], [ %13, %if.then102 ], [ %8, %if.end94 ]
  %ARCHYES.0238 = phi i32 [ 0, %if.else95 ], [ 0, %if.then102 ], [ 1, %if.end94 ]
  %hdr.0 = phi %struct.QCDheader* [ undef, %if.else95 ], [ undef, %if.then102 ], [ %call57, %if.end94 ]
  %16 = load i32* %arrayidx106.pre-phi, align 4, !tbaa !0
  %17 = load i32* @nx, align 4, !tbaa !0
  %cmp107 = icmp eq i32 %16, %17
  br i1 %cmp107, label %lor.lhs.false, label %if.end104.if.then123_crit_edge

if.end104.if.then123_crit_edge:                   ; preds = %if.end104
  %.pre = load i32* @ny, align 4, !tbaa !0
  br label %if.then123

lor.lhs.false:                                    ; preds = %if.end104
  %arrayidx110 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 1
  %18 = load i32* %arrayidx110, align 4, !tbaa !0
  %19 = load i32* @ny, align 4, !tbaa !0
  %cmp111 = icmp eq i32 %18, %19
  br i1 %cmp111, label %lor.lhs.false113, label %if.then123

lor.lhs.false113:                                 ; preds = %lor.lhs.false
  %arrayidx115 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 2
  %20 = load i32* %arrayidx115, align 4, !tbaa !0
  %21 = load i32* @nz, align 4, !tbaa !0
  %cmp116 = icmp eq i32 %20, %21
  br i1 %cmp116, label %lor.lhs.false118, label %if.then123

lor.lhs.false118:                                 ; preds = %lor.lhs.false113
  %arrayidx120 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 3
  %22 = load i32* %arrayidx120, align 4, !tbaa !0
  %23 = load i32* @nt, align 4, !tbaa !0
  %cmp121 = icmp eq i32 %22, %23
  br i1 %cmp121, label %if.end163, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false113, %lor.lhs.false, %if.end104.if.then123_crit_edge, %lor.lhs.false118
  %24 = phi i32 [ %.pre, %if.end104.if.then123_crit_edge ], [ %18, %lor.lhs.false118 ], [ %19, %lor.lhs.false ], [ %18, %lor.lhs.false113 ]
  %cmp124 = icmp ne i32 %17, -1
  %cmp127 = icmp ne i32 %24, -1
  %or.cond = or i1 %cmp124, %cmp127
  %25 = load i32* @nz, align 4, !tbaa !0
  %cmp130 = icmp ne i32 %25, -1
  %or.cond182 = or i1 %or.cond, %cmp130
  %26 = load i32* @nt, align 4, !tbaa !0
  %cmp133 = icmp ne i32 %26, -1
  %or.cond183 = or i1 %or.cond182, %cmp133
  br i1 %or.cond183, label %if.then135, label %if.else151

if.then135:                                       ; preds = %if.then123
  %call137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str96, i64 0, i64 0), i8* %0) #9
  br label %for.body141

for.body141:                                      ; preds = %for.body141, %if.then135
  %indvars.iv = phi i64 [ 0, %if.then135 ], [ %indvars.iv.next, %for.body141 ]
  %arrayidx144 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 %indvars.iv
  %27 = load i32* %arrayidx144, align 4, !tbaa !0
  %call145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0), i32 %27) #9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end148, label %for.body141

for.end148:                                       ; preds = %for.body141
  %putchar = call i32 @putchar(i32 10) #5
  %28 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call150 = call i32 @fflush(%struct._IO_FILE* %28) #9
  call void @terminate(i32 1) #9
  br label %if.end163

if.else151:                                       ; preds = %if.then123
  store i32 %16, i32* @nx, align 4, !tbaa !0
  %arrayidx155 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 1
  %29 = load i32* %arrayidx155, align 4, !tbaa !0
  store i32 %29, i32* @ny, align 4, !tbaa !0
  %arrayidx157 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 2
  %30 = load i32* %arrayidx157, align 4, !tbaa !0
  store i32 %30, i32* @nz, align 4, !tbaa !0
  %arrayidx159 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 2, i64 3
  %31 = load i32* %arrayidx159, align 4, !tbaa !0
  store i32 %31, i32* @nt, align 4, !tbaa !0
  %mul = mul i32 %16, %31
  %mul160 = mul i32 %mul, %29
  %mul161 = mul i32 %mul160, %30
  store i32 %mul161, i32* @volume, align 4, !tbaa !0
  br label %if.end163

if.end163:                                        ; preds = %lor.lhs.false118, %for.end148, %if.else151
  %tobool164 = icmp eq i32 %ARCHYES.0238, 0
  br i1 %tobool164, label %if.else166, label %if.then165

if.then165:                                       ; preds = %if.end163
  call void @qcdhdr_destroy_hdr(%struct.QCDheader* %hdr.0) #8
  br label %return

if.else166:                                       ; preds = %if.end163
  %arraydecay167 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 1, i64 0
  %call169 = call i32 @psread_data(i32 %parallel, %struct._IO_FILE* %1, i8* %arraydecay167, i64 64, i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0)) #8
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.end173, label %if.then172

if.then172:                                       ; preds = %if.else166
  call void @terminate(i32 1) #9
  br label %if.end173

if.end173:                                        ; preds = %if.else166, %if.then172
  %header_bytes = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 3
  store i32 88, i32* %header_bytes, align 4, !tbaa !0
  %order174 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 4
  %32 = bitcast i32* %order174 to i8*
  %call176 = call i32 @psread_byteorder(i32 %15, i32 %parallel, %struct._IO_FILE* %1, i8* %32, i64 4, i8* %0, i8* getelementptr inbounds ([16 x i8]* @.str98, i64 0, i64 0)) #8
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %return, label %if.then179

if.then179:                                       ; preds = %if.end173
  call void @terminate(i32 1) #9
  br label %return

return:                                           ; preds = %land.lhs.true, %if.else34, %if.then165, %if.then179, %if.end173, %if.then39
  %retval.0 = load i32* %byterevflag, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @r_serial_i(i8* %filename) #0 {
entry:
  %byterevflag = alloca i32, align 4
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %filename) #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %0 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 0, i32* %parallel, align 4, !tbaa !0
  %1 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str99, i64 0, i64 0)) #9
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = load i32* @this_node, align 4, !tbaa !0
  %call4 = call i32* @__errno_location() #10
  %3 = load i32* %call4, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str100, i64 0, i64 0), i32 %2, i8* %filename, i32 %3) #9
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call6 = call i32 @fflush(%struct._IO_FILE* %4) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %fp7 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp7, align 8, !tbaa !3
  %call8 = call i32 @read_gauge_hdr(%struct.gauge_file* %call, i32 0) #8
  store i32 %call8, i32* %byterevflag, align 4, !tbaa !0
  br label %if.end10

if.else:                                          ; preds = %entry
  %fp9 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp9, align 8, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  %5 = bitcast i32* %byterevflag to i8*
  call void @broadcast_bytes(i8* %5, i32 4) #9
  %6 = load i32* %byterevflag, align 4, !tbaa !0
  %byterevflag11 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 %6, i32* %byterevflag11, align 4, !tbaa !0
  %7 = bitcast %struct.gauge_header* %0 to i8*
  call void @broadcast_bytes(i8* %7, i32 92) #9
  call void @read_site_list(i32 0, %struct.gauge_file* %call) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define void @r_serial(%struct.gauge_file* %gf) #0 {
entry:
  %test_gc = alloca %struct.gauge_check, align 4
  %myname = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [9 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([9 x i8]* @r_serial.myname, i64 0, i64 0), i64 9, i32 1, i1 false)
  %fp1 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %1 = load %struct._IO_FILE** %fp1, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %2 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %filename2 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %3 = load i8** %filename2, align 8, !tbaa !3
  %byterevflag3 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 3
  %4 = load i32* %byterevflag3, align 4, !tbaa !0
  %5 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end38

if.then:                                          ; preds = %entry
  %magic_number = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 0
  %6 = load i32* %magic_number, align 4, !tbaa !0
  switch i32 %6, label %if.else9 [
    i32 20103, label %if.end10
    i32 53546, label %if.then8
  ]

if.then8:                                         ; preds = %if.then
  br label %if.end10

if.else9:                                         ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then8, %if.else9
  %gauge_check_size.0 = phi i64 [ 4, %if.then8 ], [ 0, %if.else9 ], [ 8, %if.then ]
  %order = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 4
  %7 = load i32* %order, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.end15, label %if.else14

if.else14:                                        ; preds = %if.end10
  %8 = load i32* @volume, align 4, !tbaa !0
  %conv = sext i32 %8 to i64
  %mul = shl nsw i64 %conv, 2
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.else14
  %coord_list_size.0 = phi i64 [ %mul, %if.else14 ], [ 0, %if.end10 ]
  %header_bytes = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 3
  %9 = load i32* %header_bytes, align 4, !tbaa !0
  %conv17 = sext i32 %9 to i64
  %add = add nsw i64 %conv17, %coord_list_size.0
  %add18 = add nsw i64 %add, %gauge_check_size.0
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %10 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %10, 0
  br i1 %tobool, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str101, i64 0, i64 0), i8* %0) #9
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.then19
  %call21 = call noalias i8* @calloc(i64 16384, i64 144) #9
  %11 = bitcast i8* %call21 to %struct.su3_matrix*
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end20
  %12 = load i32* @this_node, align 4, !tbaa !0
  %call26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str102, i64 0, i64 0), i8* %0, i32 %12) #9
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call27 = call i32 @fflush(%struct._IO_FILE* %13) #9
  call void @terminate(i32 1) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end20
  %call29 = call i32 @fseek(%struct._IO_FILE* %1, i64 %add18, i32 0) #9
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end28
  %call34 = call i32* @__errno_location() #10
  %14 = load i32* %call34, align 4, !tbaa !0
  %call35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str103, i64 0, i64 0), i8* %0, i32 %14, i8* %3) #9
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call36 = call i32 @fflush(%struct._IO_FILE* %15) #9
  call void @terminate(i32 1) #9
  br label %if.end38

if.end38:                                         ; preds = %if.end28, %if.then32, %entry
  %checksum_offset.0 = phi i64 [ undef, %entry ], [ %add, %if.then32 ], [ %add, %if.end28 ]
  %lbuf.0 = phi %struct.su3_matrix* [ undef, %entry ], [ %11, %if.then32 ], [ %11, %if.end28 ]
  %sum29 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  call void (...)* @g_sync() #9
  %16 = load i32* @volume, align 4, !tbaa !0
  %cmp39249 = icmp sgt i32 %16, 0
  br i1 %cmp39249, label %for.body.lr.ph, label %for.end152

for.body.lr.ph:                                   ; preds = %if.end38
  %17 = bitcast %struct.su3_matrix* %lbuf.0 to i8*
  %cmp105 = icmp eq i32 %4, 1
  %rank2rcv = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc150
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc150 ]
  %rank31.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %rank31.2, %for.inc150 ]
  %rank29.0254 = phi i32 [ 0, %for.body.lr.ph ], [ %rank29.2, %for.inc150 ]
  %where_in_buf.1253 = phi i32 [ 0, %for.body.lr.ph ], [ %where_in_buf.3, %for.inc150 ]
  %buf_length.1252 = phi i32 [ 0, %for.body.lr.ph ], [ %buf_length.3, %for.inc150 ]
  %i.0250 = phi i32 [ undef, %for.body.lr.ph ], [ %i.2, %for.inc150 ]
  %18 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order42 = getelementptr inbounds %struct.gauge_header* %18, i64 0, i32 4
  %19 = load i32* %order42, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %19, 0
  %20 = trunc i64 %indvars.iv to i32
  br i1 %cmp43, label %if.end47, label %if.else46

if.else46:                                        ; preds = %for.body
  %21 = load i32** %rank2rcv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %21, i64 %indvars.iv
  %22 = load i32* %arrayidx, align 4, !tbaa !0
  br label %if.end47

if.end47:                                         ; preds = %for.body, %if.else46
  %rcv_coords.0 = phi i32 [ %22, %if.else46 ], [ %20, %for.body ]
  %23 = load i32* @nx, align 4, !tbaa !0
  %rem = srem i32 %rcv_coords.0, %23
  %div = sdiv i32 %rcv_coords.0, %23
  %24 = load i32* @ny, align 4, !tbaa !0
  %rem48 = srem i32 %div, %24
  %div49 = sdiv i32 %div, %24
  %25 = load i32* @nz, align 4, !tbaa !0
  %rem50 = srem i32 %div49, %25
  %div51 = sdiv i32 %div49, %25
  %26 = load i32* @nt, align 4, !tbaa !0
  %rem52 = srem i32 %div51, %26
  %call53 = call i32 @node_number(i32 %rem, i32 %rem48, i32 %rem50, i32 %rem52) #9
  %27 = load i32* @this_node, align 4, !tbaa !0
  %cmp54 = icmp eq i32 %27, 0
  br i1 %cmp54, label %if.then56, label %if.else91

if.then56:                                        ; preds = %if.end47
  %cmp57 = icmp eq i32 %where_in_buf.1253, %buf_length.1252
  br i1 %cmp57, label %if.then59, label %if.end75

if.then59:                                        ; preds = %if.then56
  %28 = load i32* @volume, align 4, !tbaa !0
  %sub = sub nsw i32 %28, %20
  %cmp60 = icmp sgt i32 %sub, 4096
  %.sub = select i1 %cmp60, i32 4096, i32 %sub
  %conv64 = sext i32 %.sub to i64
  %call65 = call i64 @fread(i8* %17, i64 576, i64 %conv64, %struct._IO_FILE* %1) #9
  %conv66 = trunc i64 %call65 to i32
  %cmp67 = icmp eq i32 %conv66, %.sub
  br i1 %cmp67, label %if.end75, label %if.then69

if.then69:                                        ; preds = %if.then59
  %29 = load i32* @this_node, align 4, !tbaa !0
  %call71 = call i32* @__errno_location() #10
  %30 = load i32* %call71, align 4, !tbaa !0
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str104, i64 0, i64 0), i8* %0, i32 %29, i32 %30, i8* %3) #9
  %31 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call73 = call i32 @fflush(%struct._IO_FILE* %31) #9
  call void @terminate(i32 1) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.then59, %if.then56
  %buf_length.2 = phi i32 [ %buf_length.1252, %if.then56 ], [ %.sub, %if.then59 ], [ %.sub, %if.then69 ]
  %where_in_buf.2 = phi i32 [ %where_in_buf.1253, %if.then56 ], [ 0, %if.then59 ], [ 0, %if.then69 ]
  %cmp76 = icmp eq i32 %call53, 0
  br i1 %cmp76, label %if.then78, label %if.else86

if.then78:                                        ; preds = %if.end75
  %call79 = call i32 @node_index(i32 %rem, i32 %rem48, i32 %rem50, i32 %rem52) #9
  %idxprom80 = sext i32 %call79 to i64
  %32 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx82 = getelementptr inbounds %struct.site* %32, i64 %idxprom80, i32 8, i64 0
  %33 = bitcast %struct.su3_matrix* %arrayidx82 to i8*
  %mul83 = shl nsw i32 %where_in_buf.2, 2
  %idxprom84 = sext i32 %mul83 to i64
  %arrayidx85 = getelementptr inbounds %struct.su3_matrix* %lbuf.0, i64 %idxprom84
  %34 = bitcast %struct.su3_matrix* %arrayidx85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 576, i32 1, i1 false)
  br label %if.end90

if.else86:                                        ; preds = %if.end75
  %mul87 = shl nsw i32 %where_in_buf.2, 2
  %idxprom88 = sext i32 %mul87 to i64
  %arrayidx89 = getelementptr inbounds %struct.su3_matrix* %lbuf.0, i64 %idxprom88
  %35 = bitcast %struct.su3_matrix* %arrayidx89 to i8*
  call void @send_field(i8* %35, i32 576, i32 %call53) #9
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then78
  %i.1 = phi i32 [ %call79, %if.then78 ], [ %i.0250, %if.else86 ]
  %inc = add nsw i32 %where_in_buf.2, 1
  br label %if.end101

if.else91:                                        ; preds = %if.end47
  %cmp92 = icmp eq i32 %27, %call53
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.else91
  %call95 = call i32 @node_index(i32 %rem, i32 %rem48, i32 %rem50, i32 %rem52) #9
  %idxprom96 = sext i32 %call95 to i64
  %36 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx99 = getelementptr inbounds %struct.site* %36, i64 %idxprom96, i32 8, i64 0
  %37 = bitcast %struct.su3_matrix* %arrayidx99 to i8*
  call void @get_field(i8* %37, i32 576) #9
  br label %if.end101

if.end101:                                        ; preds = %if.else91, %if.then94, %if.end90
  %i.2 = phi i32 [ %i.1, %if.end90 ], [ %call95, %if.then94 ], [ %i.0250, %if.else91 ]
  %buf_length.3 = phi i32 [ %buf_length.2, %if.end90 ], [ %buf_length.1252, %if.then94 ], [ %buf_length.1252, %if.else91 ]
  %where_in_buf.3 = phi i32 [ %inc, %if.end90 ], [ %where_in_buf.1253, %if.then94 ], [ %where_in_buf.1253, %if.else91 ]
  %38 = load i32* @this_node, align 4, !tbaa !0
  %cmp102 = icmp eq i32 %38, %call53
  br i1 %cmp102, label %if.then104, label %if.else140

if.then104:                                       ; preds = %if.end101
  %idxprom108 = sext i32 %i.2 to i64
  br i1 %cmp105, label %if.then107, label %if.end112

if.then107:                                       ; preds = %if.then104
  %39 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx111 = getelementptr inbounds %struct.site* %39, i64 %idxprom108, i32 8, i64 0
  %40 = bitcast %struct.su3_matrix* %arrayidx111 to i32*
  call void @byterevn(i32* %40, i32 144) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %if.then107
  %41 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx116 = getelementptr inbounds %struct.site* %41, i64 %idxprom108, i32 8, i64 0
  %42 = bitcast %struct.su3_matrix* %arrayidx116 to i32*
  %.pre = load i32* %sum29, align 4, !tbaa !0
  %.pre256 = load i32* %sum31, align 4, !tbaa !0
  br label %for.body120

for.body120:                                      ; preds = %for.body120, %if.end112
  %43 = phi i32 [ %.pre256, %if.end112 ], [ %xor128, %for.body120 ]
  %44 = phi i32 [ %.pre, %if.end112 ], [ %xor, %for.body120 ]
  %rank31.1248 = phi i32 [ %rank31.0255, %if.end112 ], [ %.inc134, %for.body120 ]
  %rank29.1247 = phi i32 [ %rank29.0254, %if.end112 ], [ %.inc129, %for.body120 ]
  %val.0246 = phi i32* [ %42, %if.end112 ], [ %incdec.ptr, %for.body120 ]
  %k.0245 = phi i32 [ 0, %if.end112 ], [ %inc139, %for.body120 ]
  %45 = load i32* %val.0246, align 4, !tbaa !0
  %shl = shl i32 %45, %rank29.1247
  %sub121 = sub nsw i32 32, %rank29.1247
  %shr = lshr i32 %45, %sub121
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %44
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %46 = load i32* %val.0246, align 4, !tbaa !0
  %shl123 = shl i32 %46, %rank31.1248
  %sub124 = sub nsw i32 32, %rank31.1248
  %shr125 = lshr i32 %46, %sub124
  %or126 = or i32 %shl123, %shr125
  %xor128 = xor i32 %or126, %43
  store i32 %xor128, i32* %sum31, align 4, !tbaa !0
  %inc129 = add nsw i32 %rank29.1247, 1
  %cmp130 = icmp sgt i32 %rank29.1247, 27
  %.inc129 = select i1 %cmp130, i32 0, i32 %inc129
  %inc134 = add nsw i32 %rank31.1248, 1
  %cmp135 = icmp sgt i32 %rank31.1248, 29
  %.inc134 = select i1 %cmp135, i32 0, i32 %inc134
  %inc139 = add nsw i32 %k.0245, 1
  %incdec.ptr = getelementptr inbounds i32* %val.0246, i64 1
  %exitcond = icmp eq i32 %inc139, 144
  br i1 %exitcond, label %for.inc150, label %for.body120

if.else140:                                       ; preds = %if.end101
  %add142 = add i32 %rank29.0254, 144
  %add145 = add i32 %rank31.0255, 144
  %rem147 = srem i32 %add142, 29
  %rem148 = srem i32 %add145, 31
  br label %for.inc150

for.inc150:                                       ; preds = %for.body120, %if.else140
  %rank29.2 = phi i32 [ %rem147, %if.else140 ], [ %.inc129, %for.body120 ]
  %rank31.2 = phi i32 [ %rem148, %if.else140 ], [ %.inc134, %for.body120 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %47 = load i32* @volume, align 4, !tbaa !0
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp39 = icmp slt i32 %48, %47
  br i1 %cmp39, label %for.body, label %for.end152

for.end152:                                       ; preds = %for.inc150, %if.end38
  call void @g_xor32(i32* %sum29) #9
  call void @g_xor32(i32* %sum31) #9
  %49 = load i32* @this_node, align 4, !tbaa !0
  %cmp155 = icmp eq i32 %49, 0
  br i1 %cmp155, label %if.then157, label %if.end176

if.then157:                                       ; preds = %for.end152
  %call158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str105, i64 0, i64 0), i8* %3) #9
  %magic_number159 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 0
  %50 = load i32* %magic_number159, align 4, !tbaa !0
  %cmp160 = icmp eq i32 %50, 20103
  br i1 %cmp160, label %if.then162, label %if.end174

if.then162:                                       ; preds = %if.then157
  %arraydecay163 = getelementptr inbounds %struct.gauge_header* %2, i64 0, i32 1, i64 0
  %call164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay163) #9
  %call165 = call i32 @fseek(%struct._IO_FILE* %1, i64 %checksum_offset.0, i32 0) #9
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end173

if.then168:                                       ; preds = %if.then162
  %call170 = call i32* @__errno_location() #10
  %51 = load i32* %call170, align 4, !tbaa !0
  %call171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str103, i64 0, i64 0), i8* %0, i32 %51, i8* %3) #9
  %52 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call172 = call i32 @fflush(%struct._IO_FILE* %52) #9
  call void @terminate(i32 1) #9
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %if.then162
  call void @read_checksum(i32 0, %struct.gauge_file* %gf, %struct.gauge_check* %test_gc) #8
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then157
  %53 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call175 = call i32 @fflush(%struct._IO_FILE* %53) #9
  %54 = bitcast %struct.su3_matrix* %lbuf.0 to i8*
  call void @free(i8* %54) #9
  br label %if.end176

if.end176:                                        ; preds = %if.end174, %for.end152
  ret void
}

; Function Attrs: optsize
declare void @g_xor32(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @r_serial_arch(%struct.gauge_file* nocapture %gf) #0 {
entry:
  %test_gc = alloca %struct.gauge_check, align 4
  %tmpsu3 = alloca [4 x %struct.su3_matrix], align 16
  %myname = alloca [14 x i8], align 1
  %U = alloca [4 x [18 x double]], align 16
  %0 = bitcast [4 x %struct.su3_matrix]* %tmpsu3 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #5
  %1 = getelementptr inbounds [14 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([14 x i8]* @r_serial_arch.myname, i64 0, i64 0), i64 14, i32 1, i1 false)
  %2 = bitcast [4 x [18 x double]]* %U to i8*
  call void @llvm.lifetime.start(i64 576, i8* %2) #5
  %fp1 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %3 = load %struct._IO_FILE** %fp1, align 8, !tbaa !3
  %filename2 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %4 = load i8** %filename2, align 8, !tbaa !3
  %5 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %6 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str101, i64 0, i64 0), i8* %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then4
  %7 = load i32* @nx, align 4, !tbaa !0
  %8 = load i32* @ny, align 4, !tbaa !0
  %9 = load i32* @nz, align 4, !tbaa !0
  %mul = mul i32 %7, 48
  %mul6 = mul i32 %mul, %8
  %mul7 = mul i32 %mul6, %9
  %conv = sext i32 %mul7 to i64
  %call8 = call noalias i8* @calloc(i64 %conv, i64 8) #9
  %10 = bitcast i8* %call8 to double*
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end
  %11 = load i32* @this_node, align 4, !tbaa !0
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str106, i64 0, i64 0), i8* %1, i32 %11) #9
  %puts = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str190, i64 0, i64 0))
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call15 = call i32 @fflush(%struct._IO_FILE* %12) #9
  call void @terminate(i32 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then11, %entry
  %uin.0 = phi double* [ %10, %if.then11 ], [ %10, %if.end ], [ undef, %entry ]
  %sum29 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  call void (...)* @g_sync() #9
  %13 = load i32* @volume, align 4, !tbaa !0
  %cmp18274 = icmp sgt i32 %13, 0
  br i1 %cmp18274, label %for.body.lr.ph, label %for.end164

for.body.lr.ph:                                   ; preds = %if.end17
  %14 = bitcast double* %uin.0 to i8*
  %15 = bitcast double* %uin.0 to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc162
  %chksum.0279 = phi i32 [ 0, %for.body.lr.ph ], [ %chksum.3, %for.inc162 ]
  %rank31.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %rank31.2, %for.inc162 ]
  %rank29.0277 = phi i32 [ 0, %for.body.lr.ph ], [ %rank29.2, %for.inc162 ]
  %rcv_rank.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc163, %for.inc162 ]
  %i.0275 = phi i32 [ undef, %for.body.lr.ph ], [ %i.1, %for.inc162 ]
  %16 = load i32* @nx, align 4, !tbaa !0
  %rem = srem i32 %rcv_rank.0276, %16
  %div = sdiv i32 %rcv_rank.0276, %16
  %17 = load i32* @ny, align 4, !tbaa !0
  %rem20 = srem i32 %div, %17
  %div21 = sdiv i32 %div, %17
  %18 = load i32* @nz, align 4, !tbaa !0
  %rem22 = srem i32 %div21, %18
  %div23 = sdiv i32 %div21, %18
  %19 = load i32* @nt, align 4, !tbaa !0
  %rem24 = srem i32 %div23, %19
  %call25 = call i32 @node_number(i32 %rem, i32 %rem20, i32 %rem22, i32 %rem24) #9
  %20 = load i32* @this_node, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %if.then28, label %if.else109

if.then28:                                        ; preds = %for.body
  %call29 = call i64 @fread(i8* %14, i64 384, i64 1, %struct._IO_FILE* %3) #9
  %conv30 = trunc i64 %call29 to i32
  %cmp31 = icmp eq i32 %conv30, 1
  br i1 %cmp31, label %if.then40, label %if.then33

if.then33:                                        ; preds = %if.then28
  %21 = load i32* @this_node, align 4, !tbaa !0
  %call35 = call i32* @__errno_location() #10
  %22 = load i32* %call35, align 4, !tbaa !0
  %call36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str104, i64 0, i64 0), i8* %1, i32 %21, i32 %22, i8* %4) #9
  %23 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call37 = call i32 @fflush(%struct._IO_FILE* %23) #9
  call void @terminate(i32 1) #9
  br label %if.then40

if.then40:                                        ; preds = %if.then33, %if.then28
  call void @byterevn(i32* %15, i32 48) #9
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.inc97, %if.then40
  %indvars.iv294 = phi i64 [ 0, %if.then40 ], [ %indvars.iv.next295, %for.inc97 ]
  %chksum.1269 = phi i32 [ %chksum.0279, %if.then40 ], [ %add, %for.inc97 ]
  %q.0268 = phi double* [ %uin.0, %if.then40 ], [ %scevgep, %for.inc97 ]
  br label %for.body49

for.body49:                                       ; preds = %for.body49, %for.cond46.preheader
  %indvars.iv = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next, %for.body49 ]
  %chksum.2264 = phi i32 [ %chksum.1269, %for.cond46.preheader ], [ %add, %for.body49 ]
  %q.1263 = phi double* [ %q.0268, %for.cond46.preheader ], [ %incdec.ptr, %for.body49 ]
  %24 = bitcast double* %q.1263 to i32*
  %25 = load i32* %24, align 4, !tbaa !0
  %add = add i32 %25, %chksum.2264
  %incdec.ptr = getelementptr inbounds double* %q.1263, i64 1
  %26 = load double* %q.1263, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds [4 x [18 x double]]* %U, i64 0, i64 %indvars.iv294, i64 %indvars.iv
  store double %26, double* %arrayidx51, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 12
  br i1 %exitcond, label %for.end, label %for.body49

for.end:                                          ; preds = %for.body49
  %arraydecay54 = getelementptr inbounds [4 x [18 x double]]* %U, i64 0, i64 %indvars.iv294, i64 0
  call void @complete_U(double* %arraydecay54) #8
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.inc94, %for.end
  %indvars.iv289 = phi i64 [ 0, %for.end ], [ %indvars.iv.next290, %for.inc94 ]
  %27 = mul nsw i64 %indvars.iv289, 3
  br label %for.body62

for.body62:                                       ; preds = %for.body62, %for.cond59.preheader
  %indvars.iv282 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next283, %for.body62 ]
  %28 = add nsw i64 %indvars.iv282, %27
  %29 = shl nsw i64 %28, 1
  %arrayidx69 = getelementptr inbounds [4 x [18 x double]]* %U, i64 0, i64 %indvars.iv294, i64 %29
  %30 = load double* %arrayidx69, align 16, !tbaa !4
  %real = getelementptr inbounds [4 x %struct.su3_matrix]* %tmpsu3, i64 0, i64 %indvars.iv294, i32 0, i64 %indvars.iv289, i64 %indvars.iv282, i32 0
  store double %30, double* %real, align 16, !tbaa !4
  %31 = or i64 %29, 1
  %arrayidx83 = getelementptr inbounds [4 x [18 x double]]* %U, i64 0, i64 %indvars.iv294, i64 %31
  %32 = load double* %arrayidx83, align 8, !tbaa !4
  %imag = getelementptr inbounds [4 x %struct.su3_matrix]* %tmpsu3, i64 0, i64 %indvars.iv294, i32 0, i64 %indvars.iv289, i64 %indvars.iv282, i32 1
  store double %32, double* %imag, align 8, !tbaa !4
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %lftr.wideiv287 = trunc i64 %indvars.iv.next283 to i32
  %exitcond288 = icmp eq i32 %lftr.wideiv287, 3
  br i1 %exitcond288, label %for.inc94, label %for.body62

for.inc94:                                        ; preds = %for.body62
  %indvars.iv.next290 = add i64 %indvars.iv289, 1
  %lftr.wideiv292 = trunc i64 %indvars.iv.next290 to i32
  %exitcond293 = icmp eq i32 %lftr.wideiv292, 3
  br i1 %exitcond293, label %for.inc97, label %for.cond59.preheader

for.inc97:                                        ; preds = %for.inc94
  %scevgep = getelementptr double* %q.0268, i64 12
  %indvars.iv.next295 = add i64 %indvars.iv294, 1
  %lftr.wideiv296 = trunc i64 %indvars.iv.next295 to i32
  %exitcond297 = icmp eq i32 %lftr.wideiv296, 4
  br i1 %exitcond297, label %for.end99, label %for.cond46.preheader

for.end99:                                        ; preds = %for.inc97
  %cmp100 = icmp eq i32 %call25, 0
  br i1 %cmp100, label %if.then102, label %if.else

if.then102:                                       ; preds = %for.end99
  %call103 = call i32 @node_index(i32 %rem, i32 %rem20, i32 %rem22, i32 %rem24) #9
  %idxprom104 = sext i32 %call103 to i64
  %33 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds %struct.site* %33, i64 %idxprom104, i32 8, i64 0
  %34 = bitcast %struct.su3_matrix* %arrayidx106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %0, i64 576, i32 1, i1 false)
  br label %if.end119

if.else:                                          ; preds = %for.end99
  call void @send_field(i8* %0, i32 576, i32 %call25) #9
  br label %if.end119

if.else109:                                       ; preds = %for.body
  %cmp110 = icmp eq i32 %20, %call25
  br i1 %cmp110, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.else109
  %call113 = call i32 @node_index(i32 %rem, i32 %rem20, i32 %rem22, i32 %rem24) #9
  %idxprom114 = sext i32 %call113 to i64
  %35 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx117 = getelementptr inbounds %struct.site* %35, i64 %idxprom114, i32 8, i64 0
  %36 = bitcast %struct.su3_matrix* %arrayidx117 to i8*
  call void @get_field(i8* %36, i32 576) #9
  br label %if.end119

if.end119:                                        ; preds = %if.else109, %if.then112, %if.then102, %if.else
  %i.1 = phi i32 [ %call103, %if.then102 ], [ %i.0275, %if.else ], [ %call113, %if.then112 ], [ %i.0275, %if.else109 ]
  %chksum.3 = phi i32 [ %add, %if.then102 ], [ %add, %if.else ], [ %chksum.0279, %if.then112 ], [ %chksum.0279, %if.else109 ]
  %37 = load i32* @this_node, align 4, !tbaa !0
  %cmp120 = icmp eq i32 %37, %call25
  br i1 %cmp120, label %if.then122, label %if.else152

if.then122:                                       ; preds = %if.end119
  %idxprom123 = sext i32 %i.1 to i64
  %38 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx126 = getelementptr inbounds %struct.site* %38, i64 %idxprom123, i32 8, i64 0
  %39 = bitcast %struct.su3_matrix* %arrayidx126 to i32*
  %.pre = load i32* %sum29, align 4, !tbaa !0
  %.pre299 = load i32* %sum31, align 4, !tbaa !0
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %if.then122
  %40 = phi i32 [ %.pre299, %if.then122 ], [ %xor137, %for.body130 ]
  %41 = phi i32 [ %.pre, %if.then122 ], [ %xor, %for.body130 ]
  %rank31.1273 = phi i32 [ %rank31.0278, %if.then122 ], [ %.inc143, %for.body130 ]
  %rank29.1272 = phi i32 [ %rank29.0277, %if.then122 ], [ %.inc138, %for.body130 ]
  %val.0271 = phi i32* [ %39, %if.then122 ], [ %incdec.ptr150, %for.body130 ]
  %k.0270 = phi i32 [ 0, %if.then122 ], [ %inc149, %for.body130 ]
  %42 = load i32* %val.0271, align 4, !tbaa !0
  %shl = shl i32 %42, %rank29.1272
  %sub = sub nsw i32 32, %rank29.1272
  %shr = lshr i32 %42, %sub
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %41
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %43 = load i32* %val.0271, align 4, !tbaa !0
  %shl132 = shl i32 %43, %rank31.1273
  %sub133 = sub nsw i32 32, %rank31.1273
  %shr134 = lshr i32 %43, %sub133
  %or135 = or i32 %shl132, %shr134
  %xor137 = xor i32 %or135, %40
  store i32 %xor137, i32* %sum31, align 4, !tbaa !0
  %inc138 = add nsw i32 %rank29.1272, 1
  %cmp139 = icmp sgt i32 %rank29.1272, 27
  %.inc138 = select i1 %cmp139, i32 0, i32 %inc138
  %inc143 = add nsw i32 %rank31.1273, 1
  %cmp144 = icmp sgt i32 %rank31.1273, 29
  %.inc143 = select i1 %cmp144, i32 0, i32 %inc143
  %inc149 = add nsw i32 %k.0270, 1
  %incdec.ptr150 = getelementptr inbounds i32* %val.0271, i64 1
  %exitcond298 = icmp eq i32 %inc149, 144
  br i1 %exitcond298, label %for.inc162, label %for.body130

if.else152:                                       ; preds = %if.end119
  %add154 = add i32 %rank29.0277, 144
  %add157 = add i32 %rank31.0278, 144
  %rem159 = srem i32 %add154, 29
  %rem160 = srem i32 %add157, 31
  br label %for.inc162

for.inc162:                                       ; preds = %for.body130, %if.else152
  %rank29.2 = phi i32 [ %rem159, %if.else152 ], [ %.inc138, %for.body130 ]
  %rank31.2 = phi i32 [ %rem160, %if.else152 ], [ %.inc143, %for.body130 ]
  %inc163 = add nsw i32 %rcv_rank.0276, 1
  %44 = load i32* @volume, align 4, !tbaa !0
  %cmp18 = icmp slt i32 %inc163, %44
  br i1 %cmp18, label %for.body, label %for.end164

for.end164:                                       ; preds = %for.inc162, %if.end17
  %chksum.0.lcssa = phi i32 [ 0, %if.end17 ], [ %chksum.3, %for.inc162 ]
  call void @g_xor32(i32* %sum29) #9
  call void @g_xor32(i32* %sum31) #9
  %45 = load i32* @this_node, align 4, !tbaa !0
  %cmp167 = icmp eq i32 %45, 0
  br i1 %cmp167, label %if.then169, label %if.end188

if.then169:                                       ; preds = %for.end164
  %call170 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str108, i64 0, i64 0), i8* %4) #9
  %sum31171 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  %46 = load i32* %sum31171, align 4, !tbaa !0
  %cmp172 = icmp eq i32 %chksum.0.lcssa, %46
  br i1 %cmp172, label %if.else178, label %if.then174

if.then174:                                       ; preds = %if.then169
  %call177 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str109, i64 0, i64 0), i32 %chksum.0.lcssa, i32 %46) #9
  br label %if.end180

if.else178:                                       ; preds = %if.then169
  %call179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str110, i64 0, i64 0), i32 %chksum.0.lcssa) #9
  br label %if.end180

if.end180:                                        ; preds = %if.else178, %if.then174
  %47 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call181 = call i32 @fflush(%struct._IO_FILE* %47) #9
  %48 = bitcast double* %uin.0 to i8*
  call void @free(i8* %48) #9
  %49 = load i32* %sum29, align 4, !tbaa !0
  %sum29184 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  store i32 %49, i32* %sum29184, align 4, !tbaa !0
  %50 = load i32* %sum31, align 4, !tbaa !0
  store i32 %50, i32* %sum31171, align 4, !tbaa !0
  br label %if.end188

if.end188:                                        ; preds = %if.end180, %for.end164
  call void @llvm.lifetime.end(i64 576, i8* %2) #5
  call void @llvm.lifetime.end(i64 576, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @r_serial_f(%struct.gauge_file* nocapture %gf) #0 {
entry:
  tail call void (...)* @g_sync() #9
  %0 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %1 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str191, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %call2 = tail call i32 @fclose(%struct._IO_FILE* %2) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %rank2rcv = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 4
  %3 = load i32** %rank2rcv, align 8, !tbaa !3
  %cmp4 = icmp eq i32* %3, null
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %4 = bitcast i32* %3 to i8*
  tail call void @free(i8* %4) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_site_list(%struct._IO_FILE* %fp, %struct.gauge_header* nocapture %gh) #0 {
entry:
  %header_bytes = getelementptr inbounds %struct.gauge_header* %gh, i64 0, i32 3
  %0 = load i32* %header_bytes, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %1 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv1 = sext i32 %1 to i64
  %mul = shl nsw i64 %conv1, 2
  %2 = load i32* @this_node, align 4, !tbaa !0
  %conv2 = sext i32 %2 to i64
  %mul3 = mul i64 %mul, %conv2
  %add = add i64 %mul3, %conv
  %call = tail call noalias i8* @calloc(i64 %conv1, i64 4) #9
  %3 = bitcast i8* %call to i32*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str112, i64 0, i64 0), i32 %2) #9
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %4) #9
  tail call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @g_seek(%struct._IO_FILE* %fp, i64 %add, i32 0) #9
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end
  %5 = load i32* @this_node, align 4, !tbaa !0
  %call12 = tail call i32* @__errno_location() #10
  %6 = load i32* %call12, align 4, !tbaa !0
  %call13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str113, i64 0, i64 0), i32 %5, i64 %add, i32 %6) #9
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %7) #9
  tail call void @terminate(i32 1) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end
  %8 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp1650 = icmp sgt i32 %8, 0
  br i1 %cmp1650, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %9 = load %struct.site** @lattice, align 8, !tbaa !3
  %10 = load i32* @nx, align 4, !tbaa !0
  %11 = load i32* @ny, align 4, !tbaa !0
  %12 = load i32* @nz, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.body ]
  %s.051 = phi %struct.site* [ %9, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %t = getelementptr inbounds %struct.site* %s.051, i64 0, i32 3
  %13 = load i16* %t, align 2, !tbaa !6
  %conv18 = sext i16 %13 to i32
  %mul19 = mul nsw i32 %conv18, %12
  %z = getelementptr inbounds %struct.site* %s.051, i64 0, i32 2
  %14 = load i16* %z, align 2, !tbaa !6
  %conv20 = sext i16 %14 to i32
  %add21 = add nsw i32 %mul19, %conv20
  %mul22 = mul nsw i32 %add21, %11
  %y = getelementptr inbounds %struct.site* %s.051, i64 0, i32 1
  %15 = load i16* %y, align 2, !tbaa !6
  %conv23 = sext i16 %15 to i32
  %add24 = add nsw i32 %mul22, %conv23
  %mul25 = mul nsw i32 %add24, %10
  %x = getelementptr inbounds %struct.site* %s.051, i64 0, i32 0
  %16 = load i16* %x, align 2, !tbaa !6
  %conv26 = sext i16 %16 to i32
  %add27 = add nsw i32 %mul25, %conv26
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 %add27, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc28 = add nsw i32 %i.053, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.051, i64 1
  %cmp16 = icmp slt i32 %inc28, %8
  br i1 %cmp16, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end15
  %conv29 = sext i32 %8 to i64
  %call30 = tail call i64 @g_write(i8* %call, i64 4, i64 %conv29, %struct._IO_FILE* %fp) #9
  %conv31 = trunc i64 %call30 to i32
  %17 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %conv31, %17
  br i1 %cmp32, label %if.end38, label %if.then34

if.then34:                                        ; preds = %for.end
  %18 = load i32* @this_node, align 4, !tbaa !0
  %call35 = tail call i32* @__errno_location() #10
  %19 = load i32* %call35, align 4, !tbaa !0
  %call36 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str114, i64 0, i64 0), i32 %18, i32 %19) #9
  %20 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call37 = tail call i32 @fflush(%struct._IO_FILE* %20) #9
  tail call void @terminate(i32 1) #9
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.then34
  tail call void @free(i8* %call) #9
  ret void
}

; Function Attrs: optsize
declare i32 @g_seek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @parallel_open(i32 %order, i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @setup_output_gauge_file() #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %0 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order1 = getelementptr inbounds %struct.gauge_header* %0, i64 0, i32 4
  store i32 %order, i32* %order1, align 4, !tbaa !0
  %call2 = tail call %struct._IO_FILE* @g_open(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #9
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @this_node, align 4, !tbaa !0
  %call3 = tail call i32* @__errno_location() #10
  %2 = load i32* %call3, align 4, !tbaa !0
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([53 x i8]* @.str115, i64 0, i64 0), i32 %1, i8* %filename, i32 %2) #9
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call5 = tail call i32 @fflush(%struct._IO_FILE* %3) #9
  tail call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* @this_node, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @pwrite_gauge_hdr(%struct._IO_FILE* %call2, %struct.gauge_header* %0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %header_bytes = getelementptr inbounds %struct.gauge_header* %0, i64 0, i32 3
  %5 = bitcast i32* %header_bytes to i8*
  tail call void @broadcast_bytes(i8* %5, i32 4) #9
  %cmp9 = icmp eq i32 %order, 0
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @write_site_list(%struct._IO_FILE* %call2, %struct.gauge_header* %0) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then10
  %fp12 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp12, align 8, !tbaa !3
  %filename13 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 2
  store i8* %filename, i8** %filename13, align 8, !tbaa !3
  %byterevflag = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 1, i32* %parallel, align 4, !tbaa !0
  ret %struct.gauge_file* %call
}

; Function Attrs: optsize
declare %struct._IO_FILE* @g_open(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @w_parallel_i(i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @parallel_open(i32 0, i8* %filename) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @w_checkpoint_i(i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @parallel_open(i32 1, i8* %filename) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* nocapture %gf, i64* nocapture %checksum_offset) #0 {
entry:
  %myname = alloca [17 x i8], align 16
  %0 = getelementptr inbounds [17 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8]* @w_parallel_setup.myname, i64 0, i64 0), i64 17, i32 16, i1 false)
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %1 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str116, i64 0, i64 0), i8* %0) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call1 = call noalias i8* @calloc(i64 16384, i64 144) #9
  %2 = bitcast i8* %call1 to %struct.su3_matrix*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = load i32* @this_node, align 4, !tbaa !0
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str102, i64 0, i64 0), i8* %0, i32 %3) #9
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call5 = call i32 @fflush(%struct._IO_FILE* %4) #9
  call void @terminate(i32 1) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %fp7 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %5 = load %struct._IO_FILE** %fp7, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %6 = load i32* @sites_on_node, align 4, !tbaa !0
  %mul = shl nsw i32 %6, 2
  %conv = sext i32 %mul to i64
  %mul8 = mul i64 %conv, 144
  %7 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order = getelementptr inbounds %struct.gauge_header* %7, i64 0, i32 4
  %8 = load i32* %order, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.end15, label %if.else

if.else:                                          ; preds = %if.end6
  %9 = load i32* @volume, align 4, !tbaa !0
  %conv13 = sext i32 %9 to i64
  %mul14 = shl nsw i64 %conv13, 2
  br label %if.end15

if.end15:                                         ; preds = %if.end6, %if.else
  %coord_list_size.0 = phi i64 [ %mul14, %if.else ], [ 0, %if.end6 ]
  %header_bytes = getelementptr inbounds %struct.gauge_header* %7, i64 0, i32 3
  %10 = load i32* %header_bytes, align 4, !tbaa !0
  %conv17 = sext i32 %10 to i64
  %add = add nsw i64 %conv17, %coord_list_size.0
  store i64 %add, i64* %checksum_offset, align 8, !tbaa !7
  %add18 = add nsw i64 %add, 8
  %11 = load i32* @this_node, align 4, !tbaa !0
  %conv19 = sext i32 %11 to i64
  %mul20 = mul nsw i64 %mul8, %conv19
  %add21 = add nsw i64 %add18, %mul20
  %call22 = call i32 @g_seek(%struct._IO_FILE* %5, i64 %add21, i32 0) #9
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end15
  %12 = load i32* @this_node, align 4, !tbaa !0
  %call27 = call i32* @__errno_location() #10
  %13 = load i32* %call27, align 4, !tbaa !0
  %filename = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %14 = load i8** %filename, align 8, !tbaa !3
  %call28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str117, i64 0, i64 0), i8* %0, i32 %12, i64 %add21, i32 %13, i8* %14) #9
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call29 = call i32 @fflush(%struct._IO_FILE* %15) #9
  call void @terminate(i32 1) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end15
  ret %struct.su3_matrix* %2
}

; Function Attrs: nounwind optsize uwtable
define void @w_parallel(%struct.gauge_file* %gf) #0 {
entry:
  %checksum_offset = alloca i64, align 8
  %msg = alloca %struct.anon.0, align 8
  %myname = alloca [11 x i8], align 1
  %0 = bitcast %struct.anon.0* %msg to i8*
  call void @llvm.lifetime.start(i64 584, i8* %0) #5
  %1 = getelementptr inbounds [11 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([11 x i8]* @w_parallel.myname, i64 0, i64 0), i64 11, i32 1, i1 false)
  %fp1 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp1, align 8, !tbaa !3
  %call = call %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* %gf, i64* %checksum_offset) #8
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  call void (...)* @g_sync() #9
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv369 = phi i64 [ 0, %entry ], [ %indvars.iv.next370, %for.inc23 ]
  br label %for.cond6.preheader

for.cond29.preheader:                             ; preds = %for.inc23
  %3 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp30345 = icmp sgt i32 %3, 0
  %4 = bitcast %struct.su3_matrix* %call to i8*
  br i1 %cmp30345, label %for.cond32.preheader.lr.ph, label %for.end203

for.cond32.preheader.lr.ph:                       ; preds = %for.cond29.preheader
  %filename = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %x81 = getelementptr inbounds %struct.anon.0* %msg, i64 0, i32 0
  %y83 = getelementptr inbounds %struct.anon.0* %msg, i64 0, i32 1
  %z85 = getelementptr inbounds %struct.anon.0* %msg, i64 0, i32 2
  %t87 = getelementptr inbounds %struct.anon.0* %msg, i64 0, i32 3
  %arraydecay101 = getelementptr inbounds %struct.anon.0* %msg, i64 0, i32 4, i64 0
  %5 = bitcast %struct.su3_matrix* %arraydecay101 to i8*
  br label %for.cond32.preheader

for.cond6.preheader:                              ; preds = %for.inc20, %for.cond3.preheader
  %indvars.iv365 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next366, %for.inc20 ]
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.cond6.preheader
  %indvars.iv361 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next362, %for.body8 ]
  %real = getelementptr inbounds %struct.su3_matrix* %call, i64 %indvars.iv369, i32 0, i64 %indvars.iv365, i64 %indvars.iv361, i32 0
  %indvars.iv.next362 = add i64 %indvars.iv361, 1
  %lftr.wideiv363 = trunc i64 %indvars.iv.next362 to i32
  %exitcond364 = icmp eq i32 %lftr.wideiv363, 3
  %6 = bitcast double* %real to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond364, label %for.inc20, label %for.body8

for.inc20:                                        ; preds = %for.body8
  %indvars.iv.next366 = add i64 %indvars.iv365, 1
  %lftr.wideiv367 = trunc i64 %indvars.iv.next366 to i32
  %exitcond368 = icmp eq i32 %lftr.wideiv367, 3
  br i1 %exitcond368, label %for.inc23, label %for.cond6.preheader

for.inc23:                                        ; preds = %for.inc20
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %lftr.wideiv371 = trunc i64 %indvars.iv.next370 to i32
  %exitcond372 = icmp eq i32 %lftr.wideiv371, 4096
  br i1 %exitcond372, label %for.cond29.preheader, label %for.cond3.preheader

for.cond32.preheader:                             ; preds = %for.cond32.preheader.lr.ph, %for.end200
  %7 = phi i32 [ %3, %for.cond32.preheader.lr.ph ], [ %48, %for.end200 ]
  %buf_length.0348 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %buf_length.1.lcssa, %for.end200 ]
  %ksite.0346 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %add202, %for.end200 ]
  %8 = load i32* @number_of_nodes, align 4, !tbaa !0
  %cmp33340 = icmp sgt i32 %8, 0
  br i1 %cmp33340, label %for.cond35.preheader, label %for.end200

for.cond35.preheader:                             ; preds = %for.cond32.preheader, %for.inc198
  %9 = phi i32 [ %46, %for.inc198 ], [ %8, %for.cond32.preheader ]
  %10 = phi i32 [ %47, %for.inc198 ], [ %7, %for.cond32.preheader ]
  %buf_length.1343 = phi i32 [ %buf_length.2.lcssa, %for.inc198 ], [ %buf_length.0348, %for.cond32.preheader ]
  %destnode.0341 = phi i32 [ %inc199, %for.inc198 ], [ 0, %for.cond32.preheader ]
  %cmp36335 = icmp slt i32 %ksite.0346, %10
  br i1 %cmp36335, label %for.body38, label %for.inc198

for.body38:                                       ; preds = %for.cond35.preheader, %for.inc195
  %11 = phi i32 [ %44, %for.inc195 ], [ %10, %for.cond35.preheader ]
  %buf_length.2339 = phi i32 [ %buf_length.3, %for.inc195 ], [ %buf_length.1343, %for.cond35.preheader ]
  %isite.0337 = phi i32 [ %inc196, %for.inc195 ], [ %ksite.0346, %for.cond35.preheader ]
  %mul = mul nsw i32 %11, %destnode.0341
  %add39 = add nsw i32 %mul, %isite.0337
  %12 = load i32* @nx, align 4, !tbaa !0
  %rem40 = srem i32 %add39, %12
  %div = sdiv i32 %add39, %12
  %13 = load i32* @ny, align 4, !tbaa !0
  %rem41 = srem i32 %div, %13
  %div42 = sdiv i32 %div, %13
  %14 = load i32* @nz, align 4, !tbaa !0
  %rem43 = srem i32 %div42, %14
  %div44 = sdiv i32 %div42, %14
  %15 = load i32* @nt, align 4, !tbaa !0
  %rem45 = srem i32 %div44, %15
  %call46 = call i32 @node_number(i32 %rem40, i32 %rem41, i32 %rem43, i32 %rem45) #9
  %16 = load i32* @this_node, align 4, !tbaa !0
  %cmp47 = icmp ne i32 %16, %call46
  %cmp48 = icmp eq i32 %destnode.0341, %call46
  %or.cond327 = or i1 %cmp47, %cmp48
  br i1 %or.cond327, label %if.else, label %if.then49

if.then49:                                        ; preds = %for.body38
  %conv = trunc i32 %rem40 to i16
  store i16 %conv, i16* %x81, align 8, !tbaa !6
  %conv51 = trunc i32 %rem41 to i16
  store i16 %conv51, i16* %y83, align 2, !tbaa !6
  %conv53 = trunc i32 %rem43 to i16
  store i16 %conv53, i16* %z85, align 4, !tbaa !6
  %conv55 = trunc i32 %rem45 to i16
  store i16 %conv55, i16* %t87, align 2, !tbaa !6
  %call57 = call i32 @node_index(i32 %rem40, i32 %rem41, i32 %rem43, i32 %rem45) #9
  %idxprom59 = sext i32 %call57 to i64
  %17 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay62 = getelementptr inbounds %struct.site* %17, i64 %idxprom59, i32 8, i64 0
  %18 = bitcast %struct.su3_matrix* %arraydecay62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %18, i64 576, i32 1, i1 false)
  call void @send_field(i8* %0, i32 584, i32 %destnode.0341) #9
  br label %for.inc195

if.else:                                          ; preds = %for.body38
  %cmp63 = icmp eq i32 %16, %destnode.0341
  br i1 %cmp63, label %if.then65, label %for.inc195

if.then65:                                        ; preds = %if.else
  br i1 %cmp48, label %if.then68, label %if.else80

if.then68:                                        ; preds = %if.then65
  %call69 = call i32 @node_index(i32 %rem40, i32 %rem41, i32 %rem43, i32 %rem45) #9
  %mul70 = shl nsw i32 %buf_length.2339, 2
  %idxprom71 = sext i32 %mul70 to i64
  %arrayidx72 = getelementptr inbounds %struct.su3_matrix* %call, i64 %idxprom71
  %19 = bitcast %struct.su3_matrix* %arrayidx72 to i8*
  %idxprom73 = sext i32 %call69 to i64
  %20 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay76 = getelementptr inbounds %struct.site* %20, i64 %idxprom73, i32 8, i64 0
  %21 = bitcast %struct.su3_matrix* %arraydecay76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 576, i32 1, i1 false)
  br label %if.end105

if.else80:                                        ; preds = %if.then65
  call void @get_field(i8* %0, i32 584) #9
  %22 = bitcast %struct.anon.0* %msg to i64*
  %23 = load i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = trunc i64 %23 to i32
  %sext = shl i32 %25, 16
  %conv82 = ashr exact i32 %sext, 16
  %26 = load i32* @nx, align 4, !tbaa !0
  %conv84 = ashr i32 %24, 16
  %27 = load i32* @ny, align 4, !tbaa !0
  %28 = lshr i64 %23, 32
  %sext377378 = shl nuw nsw i64 %28, 16
  %sext377 = trunc i64 %sext377378 to i32
  %conv86 = ashr exact i32 %sext377, 16
  %29 = load i32* @nz, align 4, !tbaa !0
  %30 = lshr i64 %23, 48
  %sext379380 = shl nuw nsw i64 %30, 16
  %sext379 = trunc i64 %sext379380 to i32
  %conv88 = ashr exact i32 %sext379, 16
  %mul89 = mul nsw i32 %conv88, %29
  %add90 = add nsw i32 %mul89, %conv86
  %mul91 = mul nsw i32 %add90, %27
  %add92 = add nsw i32 %mul91, %conv84
  %mul93 = mul nsw i32 %add92, %26
  %add94 = add nsw i32 %mul93, %conv82
  %31 = load i32* @sites_on_node, align 4, !tbaa !0
  %rem95 = srem i32 %add94, %31
  %rem96 = srem i32 %rem95, 4096
  %mul97 = shl nsw i32 %rem96, 2
  %idxprom98 = sext i32 %mul97 to i64
  %arrayidx99 = getelementptr inbounds %struct.su3_matrix* %call, i64 %idxprom98
  %32 = bitcast %struct.su3_matrix* %arrayidx99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %5, i64 576, i32 1, i1 false)
  br label %if.end105

if.end105:                                        ; preds = %if.else80, %if.then68
  %add39.sink = phi i32 [ %add39, %if.then68 ], [ %add94, %if.else80 ]
  %where_in_buf.0 = phi i32 [ %buf_length.2339, %if.then68 ], [ %rem96, %if.else80 ]
  %mul78 = mul i32 %add39.sink, 144
  %rem106 = srem i32 %mul78, 29
  %rem107 = srem i32 %mul78, 31
  %mul108 = shl nsw i32 %where_in_buf.0, 2
  %idxprom109 = sext i32 %mul108 to i64
  %arrayidx110 = getelementptr inbounds %struct.su3_matrix* %call, i64 %idxprom109
  %33 = bitcast %struct.su3_matrix* %arrayidx110 to i32*
  %.pre373 = load i32* %sum29, align 4, !tbaa !0
  %.pre374 = load i32* %sum31, align 4, !tbaa !0
  br label %for.body114

for.body114:                                      ; preds = %for.body114, %if.end105
  %34 = phi i32 [ %.pre374, %if.end105 ], [ %xor123, %for.body114 ]
  %35 = phi i32 [ %.pre373, %if.end105 ], [ %xor, %for.body114 ]
  %val.0331 = phi i32* [ %33, %if.end105 ], [ %incdec.ptr, %for.body114 ]
  %rank29.1330 = phi i32 [ %rem106, %if.end105 ], [ %.inc124, %for.body114 ]
  %rank31.1329 = phi i32 [ %rem107, %if.end105 ], [ %.inc129, %for.body114 ]
  %k.1328 = phi i32 [ 0, %if.end105 ], [ %inc135, %for.body114 ]
  %36 = load i32* %val.0331, align 4, !tbaa !0
  %shl = shl i32 %36, %rank29.1330
  %sub = sub nsw i32 32, %rank29.1330
  %shr = lshr i32 %36, %sub
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %35
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %37 = load i32* %val.0331, align 4, !tbaa !0
  %shl117 = shl i32 %37, %rank31.1329
  %sub118 = sub nsw i32 32, %rank31.1329
  %shr119 = lshr i32 %37, %sub118
  %or120 = or i32 %shl117, %shr119
  %xor123 = xor i32 %or120, %34
  store i32 %xor123, i32* %sum31, align 4, !tbaa !0
  %inc124 = add nsw i32 %rank29.1330, 1
  %cmp125 = icmp sgt i32 %rank29.1330, 27
  %.inc124 = select i1 %cmp125, i32 0, i32 %inc124
  %inc129 = add nsw i32 %rank31.1329, 1
  %cmp130 = icmp sgt i32 %rank31.1329, 29
  %.inc129 = select i1 %cmp130, i32 0, i32 %inc129
  %inc135 = add nsw i32 %k.1328, 1
  %incdec.ptr = getelementptr inbounds i32* %val.0331, i64 1
  %exitcond = icmp eq i32 %inc135, 144
  br i1 %exitcond, label %for.end136, label %for.body114

for.end136:                                       ; preds = %for.body114
  %inc137 = add nsw i32 %buf_length.2339, 1
  %cmp138 = icmp eq i32 %inc137, 4096
  br i1 %cmp138, label %if.then143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end136
  %38 = load i32* @sites_on_node, align 4, !tbaa !0
  %sub140 = add nsw i32 %38, -1
  %cmp141 = icmp eq i32 %isite.0337, %sub140
  br i1 %cmp141, label %if.then143, label %for.inc195

if.then143:                                       ; preds = %lor.lhs.false, %for.end136
  %conv144 = sext i32 %inc137 to i64
  %call145 = call i64 @g_write(i8* %4, i64 576, i64 %conv144, %struct._IO_FILE* %2) #9
  %conv146 = trunc i64 %call145 to i32
  %cmp147 = icmp eq i32 %conv146, %inc137
  br i1 %cmp147, label %for.cond159.preheader, label %if.then149

if.then149:                                       ; preds = %if.then143
  %39 = load i32* @this_node, align 4, !tbaa !0
  %call151 = call i32* @__errno_location() #10
  %40 = load i32* %call151, align 4, !tbaa !0
  %41 = load i8** %filename, align 8, !tbaa !3
  %call152 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str119, i64 0, i64 0), i8* %1, i32 %39, i32 %40, i8* %41) #9
  %42 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call153 = call i32 @fflush(%struct._IO_FILE* %42) #9
  call void @terminate(i32 1) #9
  br label %for.cond159.preheader

for.cond159.preheader:                            ; preds = %if.then149, %if.then143, %for.inc189
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %for.inc189 ], [ 0, %if.then143 ], [ 0, %if.then149 ]
  br label %for.cond163.preheader

for.cond163.preheader:                            ; preds = %for.inc186, %for.cond159.preheader
  %indvars.iv353 = phi i64 [ 0, %for.cond159.preheader ], [ %indvars.iv.next354, %for.inc186 ]
  br label %for.body166

for.body166:                                      ; preds = %for.body166, %for.cond163.preheader
  %indvars.iv = phi i64 [ 0, %for.cond163.preheader ], [ %indvars.iv.next, %for.body166 ]
  %real182 = getelementptr inbounds %struct.su3_matrix* %call, i64 %indvars.iv357, i32 0, i64 %indvars.iv353, i64 %indvars.iv, i32 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond352 = icmp eq i32 %lftr.wideiv, 3
  %43 = bitcast double* %real182 to i8*
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond352, label %for.inc186, label %for.body166

for.inc186:                                       ; preds = %for.body166
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  %lftr.wideiv355 = trunc i64 %indvars.iv.next354 to i32
  %exitcond356 = icmp eq i32 %lftr.wideiv355, 3
  br i1 %exitcond356, label %for.inc189, label %for.cond163.preheader

for.inc189:                                       ; preds = %for.inc186
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  %lftr.wideiv359 = trunc i64 %indvars.iv.next358 to i32
  %exitcond360 = icmp eq i32 %lftr.wideiv359, 4096
  br i1 %exitcond360, label %for.inc195, label %for.cond159.preheader

for.inc195:                                       ; preds = %for.inc189, %if.else, %if.then49, %lor.lhs.false
  %buf_length.3 = phi i32 [ %buf_length.2339, %if.then49 ], [ %inc137, %lor.lhs.false ], [ %buf_length.2339, %if.else ], [ 0, %for.inc189 ]
  %inc196 = add nsw i32 %isite.0337, 1
  %44 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp36 = icmp slt i32 %inc196, %44
  %45 = or i32 %ksite.0346, 4095
  %cmp37 = icmp slt i32 %isite.0337, %45
  %or.cond = and i1 %cmp36, %cmp37
  br i1 %or.cond, label %for.body38, label %for.cond35.for.inc198_crit_edge

for.cond35.for.inc198_crit_edge:                  ; preds = %for.inc195
  %.pre = load i32* @number_of_nodes, align 4, !tbaa !0
  br label %for.inc198

for.inc198:                                       ; preds = %for.cond35.for.inc198_crit_edge, %for.cond35.preheader
  %46 = phi i32 [ %.pre, %for.cond35.for.inc198_crit_edge ], [ %9, %for.cond35.preheader ]
  %47 = phi i32 [ %44, %for.cond35.for.inc198_crit_edge ], [ %10, %for.cond35.preheader ]
  %buf_length.2.lcssa = phi i32 [ %buf_length.3, %for.cond35.for.inc198_crit_edge ], [ %buf_length.1343, %for.cond35.preheader ]
  %inc199 = add nsw i32 %destnode.0341, 1
  %cmp33 = icmp slt i32 %inc199, %46
  br i1 %cmp33, label %for.cond35.preheader, label %for.end200

for.end200:                                       ; preds = %for.inc198, %for.cond32.preheader
  %buf_length.1.lcssa = phi i32 [ %buf_length.0348, %for.cond32.preheader ], [ %buf_length.2.lcssa, %for.inc198 ]
  call void (...)* @g_sync() #9
  %add202 = add nsw i32 %ksite.0346, 4096
  %48 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp30 = icmp slt i32 %add202, %48
  br i1 %cmp30, label %for.cond32.preheader, label %for.end203

for.end203:                                       ; preds = %for.cond29.preheader, %for.end200
  call void @free(i8* %4) #9
  call void @g_xor32(i32* %sum29) #9
  call void @g_xor32(i32* %sum31) #9
  %49 = load i32* @this_node, align 4, !tbaa !0
  %cmp208 = icmp eq i32 %49, 0
  br i1 %cmp208, label %if.then210, label %if.end225

if.then210:                                       ; preds = %for.end203
  %50 = load i64* %checksum_offset, align 8, !tbaa !7
  %call211 = call i32 @g_seek(%struct._IO_FILE* %2, i64 %50, i32 0) #9
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.then210.if.end220_crit_edge

if.then210.if.end220_crit_edge:                   ; preds = %if.then210
  %filename221.pre = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  br label %if.end220

if.then214:                                       ; preds = %if.then210
  %51 = load i32* @this_node, align 4, !tbaa !0
  %call216 = call i32* @__errno_location() #10
  %52 = load i32* %call216, align 4, !tbaa !0
  %filename217 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %53 = load i8** %filename217, align 8, !tbaa !3
  %call218 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str120, i64 0, i64 0), i8* %1, i32 %51, i64 %50, i32 %52, i8* %53) #9
  %54 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call219 = call i32 @fflush(%struct._IO_FILE* %54) #9
  call void @terminate(i32 1) #9
  br label %if.end220

if.end220:                                        ; preds = %if.then210.if.end220_crit_edge, %if.then214
  %filename221.pre-phi = phi i8** [ %filename221.pre, %if.then210.if.end220_crit_edge ], [ %filename217, %if.then214 ]
  call void @write_checksum(i32 1, %struct.gauge_file* %gf) #8
  %55 = load i8** %filename221.pre-phi, align 8, !tbaa !3
  %call222 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str121, i64 0, i64 0), i8* %55) #9
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %56 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %arraydecay223 = getelementptr inbounds %struct.gauge_header* %56, i64 0, i32 1, i64 0
  %call224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay223) #9
  br label %if.end225

if.end225:                                        ; preds = %if.end220, %for.end203
  call void @llvm.lifetime.end(i64 584, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @w_checkpoint(%struct.gauge_file* %gf) #0 {
entry:
  %checksum_offset = alloca i64, align 8
  %myname = alloca [13 x i8], align 1
  %0 = getelementptr inbounds [13 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([13 x i8]* @w_checkpoint.myname, i64 0, i64 0), i64 13, i32 1, i1 false)
  %fp1 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %1 = load %struct._IO_FILE** %fp1, align 8, !tbaa !3
  %call = call %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* %gf, i64* %checksum_offset) #8
  %sum31 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  %sum29 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 6, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  %2 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 144
  %3 = load i32* @this_node, align 4, !tbaa !0
  %conv3 = sext i32 %3 to i64
  %mul4 = mul i64 %mul, %conv3
  %cmp125 = icmp sgt i32 %2, 0
  br i1 %cmp125, label %for.body.lr.ph, label %entry.for.end63_crit_edge

entry.for.end63_crit_edge:                        ; preds = %entry
  %.pre133 = bitcast %struct.su3_matrix* %call to i8*
  br label %for.end63

for.body.lr.ph:                                   ; preds = %entry
  %rem10 = urem i64 %mul4, 31
  %rem = urem i64 %mul4, 29
  %conv11 = trunc i64 %rem10 to i32
  %conv5 = trunc i64 %rem to i32
  %4 = bitcast %struct.su3_matrix* %call to i8*
  %filename = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %.pre130 = phi i32 [ 0, %for.body.lr.ph ], [ %.pre130.pre, %for.inc60.for.body_crit_edge ]
  %.pre = phi i32 [ 0, %for.body.lr.ph ], [ %.pre.pre, %for.inc60.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc60.for.body_crit_edge ]
  %buf_length.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %buf_length.1, %for.inc60.for.body_crit_edge ]
  %rank31.0127 = phi i32 [ %conv11, %for.body.lr.ph ], [ %.inc34, %for.inc60.for.body_crit_edge ]
  %rank29.0126 = phi i32 [ %conv5, %for.body.lr.ph ], [ %.inc, %for.inc60.for.body_crit_edge ]
  %mul13 = shl nsw i32 %buf_length.0128, 2
  %idxprom = sext i32 %mul13 to i64
  %arrayidx = getelementptr inbounds %struct.su3_matrix* %call, i64 %idxprom
  %5 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %6 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.site* %6, i64 %indvars.iv, i32 8, i64 0
  %7 = bitcast %struct.su3_matrix* %arraydecay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 576, i32 1, i1 false)
  %8 = bitcast %struct.su3_matrix* %arrayidx to i32*
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body
  %9 = phi i32 [ %.pre130, %for.body ], [ %xor31, %for.body22 ]
  %10 = phi i32 [ %.pre, %for.body ], [ %xor, %for.body22 ]
  %rank31.1124 = phi i32 [ %rank31.0127, %for.body ], [ %.inc34, %for.body22 ]
  %rank29.1123 = phi i32 [ %rank29.0126, %for.body ], [ %.inc, %for.body22 ]
  %k.0122 = phi i32 [ 0, %for.body ], [ %inc39, %for.body22 ]
  %val.0121 = phi i32* [ %8, %for.body ], [ %incdec.ptr, %for.body22 ]
  %11 = load i32* %val.0121, align 4, !tbaa !0
  %shl = shl i32 %11, %rank29.1123
  %sub = sub nsw i32 32, %rank29.1123
  %shr = lshr i32 %11, %sub
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %10
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %12 = load i32* %val.0121, align 4, !tbaa !0
  %shl25 = shl i32 %12, %rank31.1124
  %sub26 = sub nsw i32 32, %rank31.1124
  %shr27 = lshr i32 %12, %sub26
  %or28 = or i32 %shl25, %shr27
  %xor31 = xor i32 %or28, %9
  store i32 %xor31, i32* %sum31, align 4, !tbaa !0
  %inc = add nsw i32 %rank29.1123, 1
  %cmp32 = icmp sgt i32 %rank29.1123, 27
  %.inc = select i1 %cmp32, i32 0, i32 %inc
  %inc34 = add nsw i32 %rank31.1124, 1
  %cmp35 = icmp sgt i32 %rank31.1124, 29
  %.inc34 = select i1 %cmp35, i32 0, i32 %inc34
  %inc39 = add nsw i32 %k.0122, 1
  %incdec.ptr = getelementptr inbounds i32* %val.0121, i64 1
  %exitcond = icmp eq i32 %inc39, 144
  br i1 %exitcond, label %for.end, label %for.body22

for.end:                                          ; preds = %for.body22
  %inc40 = add nsw i32 %buf_length.0128, 1
  %cmp41 = icmp eq i32 %inc40, 4096
  br i1 %cmp41, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load i32* @sites_on_node, align 4, !tbaa !0
  %sub43 = add nsw i32 %13, -1
  %14 = trunc i64 %indvars.iv to i32
  %cmp44 = icmp eq i32 %14, %sub43
  br i1 %cmp44, label %if.then46, label %for.inc60

if.then46:                                        ; preds = %lor.lhs.false, %for.end
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call47 = call i32 @fflush(%struct._IO_FILE* %15) #9
  %conv48 = sext i32 %inc40 to i64
  %call49 = call i64 @g_write(i8* %4, i64 576, i64 %conv48, %struct._IO_FILE* %1) #9
  %conv50 = trunc i64 %call49 to i32
  %cmp51 = icmp eq i32 %conv50, %inc40
  br i1 %cmp51, label %for.inc60, label %if.then53

if.then53:                                        ; preds = %if.then46
  %16 = load i32* @this_node, align 4, !tbaa !0
  %call55 = call i32* @__errno_location() #10
  %17 = load i32* %call55, align 4, !tbaa !0
  %18 = load i8** %filename, align 8, !tbaa !3
  %call56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str119, i64 0, i64 0), i8* %0, i32 %16, i32 %17, i8* %18) #9
  %19 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call57 = call i32 @fflush(%struct._IO_FILE* %19) #9
  call void @terminate(i32 1) #9
  br label %for.inc60

for.inc60:                                        ; preds = %if.then46, %if.then53, %lor.lhs.false
  %buf_length.1 = phi i32 [ %inc40, %lor.lhs.false ], [ 0, %if.then53 ], [ 0, %if.then46 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = load i32* @sites_on_node, align 4, !tbaa !0
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %21, %20
  br i1 %cmp, label %for.inc60.for.body_crit_edge, label %for.end63

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  %.pre.pre = load i32* %sum29, align 4, !tbaa !0
  %.pre130.pre = load i32* %sum31, align 4, !tbaa !0
  br label %for.body

for.end63:                                        ; preds = %for.inc60, %entry.for.end63_crit_edge
  %.pre-phi = phi i8* [ %.pre133, %entry.for.end63_crit_edge ], [ %4, %for.inc60 ]
  call void @free(i8* %.pre-phi) #9
  call void @g_xor32(i32* %sum29) #9
  call void @g_xor32(i32* %sum31) #9
  %22 = load i32* @this_node, align 4, !tbaa !0
  %cmp68 = icmp eq i32 %22, 0
  br i1 %cmp68, label %if.then70, label %if.end85

if.then70:                                        ; preds = %for.end63
  %23 = load i64* %checksum_offset, align 8, !tbaa !7
  %call71 = call i32 @g_seek(%struct._IO_FILE* %1, i64 %23, i32 0) #9
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.then70.if.end80_crit_edge

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  %filename81.pre = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  br label %if.end80

if.then74:                                        ; preds = %if.then70
  %24 = load i32* @this_node, align 4, !tbaa !0
  %call76 = call i32* @__errno_location() #10
  %25 = load i32* %call76, align 4, !tbaa !0
  %filename77 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %26 = load i8** %filename77, align 8, !tbaa !3
  %call78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str120, i64 0, i64 0), i8* %0, i32 %24, i64 %23, i32 %25, i8* %26) #9
  %27 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call79 = call i32 @fflush(%struct._IO_FILE* %27) #9
  call void @terminate(i32 1) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then70.if.end80_crit_edge, %if.then74
  %filename81.pre-phi = phi i8** [ %filename81.pre, %if.then70.if.end80_crit_edge ], [ %filename77, %if.then74 ]
  call void @write_checksum(i32 1, %struct.gauge_file* %gf) #8
  %28 = load i8** %filename81.pre-phi, align 8, !tbaa !3
  %call82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str122, i64 0, i64 0), i8* %28) #9
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %29 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %arraydecay83 = getelementptr inbounds %struct.gauge_header* %29, i64 0, i32 1, i64 0
  %call84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay83) #9
  br label %if.end85

if.end85:                                         ; preds = %if.end80, %for.end63
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @w_parallel_f(%struct.gauge_file* nocapture %gf) #0 {
entry:
  tail call void (...)* @g_sync() #9
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %0 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %1 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str192, i64 0, i64 0))
  %.pre = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %2 = phi %struct._IO_FILE* [ %0, %if.then ], [ %.pre, %if.then1 ]
  %call3 = tail call i32 @g_close(%struct._IO_FILE* %2) #9
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %3 = load i32* @this_node, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  tail call void @write_gauge_info_file(%struct.gauge_file* %gf) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  ret void
}

; Function Attrs: optsize
declare i32 @g_close(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @r_parallel_i(i8* %filename) #0 {
entry:
  %byterevflag = alloca i32, align 4
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %filename) #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %0 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 1, i32* %parallel, align 4, !tbaa !0
  %call1 = call %struct._IO_FILE* @g_open(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str99, i64 0, i64 0)) #9
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* @this_node, align 4, !tbaa !0
  %call2 = call i32* @__errno_location() #10
  %2 = load i32* %call2, align 4, !tbaa !0
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str124, i64 0, i64 0), i32 %1, i8* %filename, i32 %2) #9
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call4 = call i32 @fflush(%struct._IO_FILE* %3) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fp5 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp5, align 8, !tbaa !3
  %4 = load i32* @this_node, align 4, !tbaa !0
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @read_gauge_hdr(%struct.gauge_file* %call, i32 1) #8
  store i32 %call8, i32* %byterevflag, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %5 = bitcast i32* %byterevflag to i8*
  call void @broadcast_bytes(i8* %5, i32 4) #9
  %6 = load i32* %byterevflag, align 4, !tbaa !0
  %byterevflag10 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 %6, i32* %byterevflag10, align 4, !tbaa !0
  %7 = bitcast %struct.gauge_header* %0 to i8*
  call void @broadcast_bytes(i8* %7, i32 92) #9
  call void @read_site_list(i32 1, %struct.gauge_file* %call) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define void @r_parallel(%struct.gauge_file* %gf) #0 {
entry:
  %msg = alloca %struct.anon.1, align 8
  %test_gc = alloca %struct.gauge_check, align 4
  %myname = alloca [11 x i8], align 1
  %0 = bitcast %struct.anon.1* %msg to i8*
  call void @llvm.lifetime.start(i64 584, i8* %0) #5
  %1 = getelementptr inbounds [11 x i8]* %myname, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([11 x i8]* @r_parallel.myname, i64 0, i64 0), i64 11, i32 1, i1 false)
  %fp1 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %2 = load %struct._IO_FILE** %fp1, align 8, !tbaa !3
  %header = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 1
  %3 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %filename2 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 2
  %4 = load i8** %filename2, align 8, !tbaa !3
  %byterevflag3 = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 3
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %5 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str125, i64 0, i64 0), i8* %1) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call4 = call noalias i8* @calloc(i64 16384, i64 144) #9
  %6 = bitcast i8* %call4 to %struct.su3_matrix*
  %cmp = icmp eq i8* %call4, null
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %7 = load i32* @this_node, align 4, !tbaa !0
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str102, i64 0, i64 0), i8* %1, i32 %7) #9
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call8 = call i32 @fflush(%struct._IO_FILE* %8) #9
  call void @terminate(i32 1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %9 = load i32* @sites_on_node, align 4, !tbaa !0
  %mul = shl nsw i32 %9, 2
  %conv = sext i32 %mul to i64
  %mul10 = mul i64 %conv, 144
  %magic_number = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 0
  %10 = load i32* %magic_number, align 4, !tbaa !0
  switch i32 %10, label %if.else18 [
    i32 20103, label %if.end20
    i32 53546, label %if.then17
  ]

if.then17:                                        ; preds = %if.end9
  br label %if.end20

if.else18:                                        ; preds = %if.end9
  br label %if.end20

if.end20:                                         ; preds = %if.end9, %if.then17, %if.else18
  %gauge_check_size.0 = phi i64 [ 4, %if.then17 ], [ 0, %if.else18 ], [ 8, %if.end9 ]
  %11 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order = getelementptr inbounds %struct.gauge_header* %11, i64 0, i32 4
  %12 = load i32* %order, align 4, !tbaa !0
  %cmp22 = icmp eq i32 %12, 0
  br i1 %cmp22, label %if.end28, label %if.else25

if.else25:                                        ; preds = %if.end20
  %13 = load i32* @volume, align 4, !tbaa !0
  %conv26 = sext i32 %13 to i64
  %mul27 = shl nsw i64 %conv26, 2
  br label %if.end28

if.end28:                                         ; preds = %if.end20, %if.else25
  %coord_list_size.0 = phi i64 [ %mul27, %if.else25 ], [ 0, %if.end20 ]
  %header_bytes = getelementptr inbounds %struct.gauge_header* %11, i64 0, i32 3
  %14 = load i32* %header_bytes, align 4, !tbaa !0
  %conv30 = sext i32 %14 to i64
  %add = add nsw i64 %conv30, %coord_list_size.0
  %add31 = add nsw i64 %add, %gauge_check_size.0
  %15 = load i32* @this_node, align 4, !tbaa !0
  %conv32 = sext i32 %15 to i64
  %mul33 = mul nsw i64 %mul10, %conv32
  %add34 = add nsw i64 %add31, %mul33
  %call35 = call i32 @g_seek(%struct._IO_FILE* %2, i64 %add34, i32 0) #9
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end28
  %16 = load i32* @this_node, align 4, !tbaa !0
  %call40 = call i32* @__errno_location() #10
  %17 = load i32* %call40, align 4, !tbaa !0
  %call41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str117, i64 0, i64 0), i8* %1, i32 %16, i64 %add34, i32 %17, i8* %4) #9
  %18 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call42 = call i32 @fflush(%struct._IO_FILE* %18) #9
  call void @terminate(i32 1) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end28
  %sum29 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 1
  store i32 0, i32* %sum29, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_check* %test_gc, i64 0, i32 0
  store i32 0, i32* %sum31, align 4, !tbaa !0
  %19 = load i32* @sites_on_node, align 4, !tbaa !0
  %conv44 = sext i32 %19 to i64
  %mul45 = mul i64 %conv44, 144
  %20 = load i32* @this_node, align 4, !tbaa !0
  %conv46 = sext i32 %20 to i64
  %mul47 = mul i64 %mul45, %conv46
  call void (...)* @g_sync() #9
  %21 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp55342 = icmp sgt i32 %21, 0
  br i1 %cmp55342, label %for.cond57.preheader.lr.ph, label %for.end218

for.cond57.preheader.lr.ph:                       ; preds = %if.end43
  %rem53 = urem i64 %mul47, 31
  %rem = urem i64 %mul47, 29
  %conv54 = trunc i64 %rem53 to i32
  %conv48 = trunc i64 %rem to i32
  %x152 = getelementptr inbounds %struct.anon.1* %msg, i64 0, i32 0
  %y154 = getelementptr inbounds %struct.anon.1* %msg, i64 0, i32 1
  %z156 = getelementptr inbounds %struct.anon.1* %msg, i64 0, i32 2
  %t158 = getelementptr inbounds %struct.anon.1* %msg, i64 0, i32 3
  %arraydecay160 = getelementptr inbounds %struct.anon.1* %msg, i64 0, i32 4, i64 0
  %22 = bitcast %struct.su3_matrix* %arraydecay160 to i8*
  %rank2rcv = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 4
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.cond57.preheader.lr.ph, %for.end215
  %23 = phi i32 [ %21, %for.cond57.preheader.lr.ph ], [ %76, %for.end215 ]
  %buf_length.0348 = phi i32 [ 0, %for.cond57.preheader.lr.ph ], [ %buf_length.1.lcssa, %for.end215 ]
  %where_in_buf.0347 = phi i32 [ 0, %for.cond57.preheader.lr.ph ], [ %where_in_buf.1.lcssa, %for.end215 ]
  %rank29.0346 = phi i32 [ %conv48, %for.cond57.preheader.lr.ph ], [ %rank29.1.lcssa, %for.end215 ]
  %rank31.0345 = phi i32 [ %conv54, %for.cond57.preheader.lr.ph ], [ %rank31.1.lcssa, %for.end215 ]
  %ksite.0343 = phi i32 [ 0, %for.cond57.preheader.lr.ph ], [ %add217, %for.end215 ]
  %24 = load i32* @number_of_nodes, align 4, !tbaa !0
  %cmp58331 = icmp sgt i32 %24, 0
  br i1 %cmp58331, label %for.cond61.preheader, label %for.end215

for.cond61.preheader:                             ; preds = %for.cond57.preheader, %for.inc213
  %25 = phi i32 [ %74, %for.inc213 ], [ %24, %for.cond57.preheader ]
  %26 = phi i32 [ %75, %for.inc213 ], [ %23, %for.cond57.preheader ]
  %buf_length.1337 = phi i32 [ %buf_length.2.lcssa, %for.inc213 ], [ %buf_length.0348, %for.cond57.preheader ]
  %where_in_buf.1336 = phi i32 [ %where_in_buf.2.lcssa, %for.inc213 ], [ %where_in_buf.0347, %for.cond57.preheader ]
  %rank29.1335 = phi i32 [ %rank29.2.lcssa, %for.inc213 ], [ %rank29.0346, %for.cond57.preheader ]
  %rank31.1334 = phi i32 [ %rank31.2.lcssa, %for.inc213 ], [ %rank31.0345, %for.cond57.preheader ]
  %sendnode.0332 = phi i32 [ %inc214, %for.inc213 ], [ 0, %for.cond57.preheader ]
  %cmp62321 = icmp slt i32 %ksite.0343, %26
  br i1 %cmp62321, label %for.body67, label %for.inc213

for.body67:                                       ; preds = %for.cond61.preheader, %for.inc210
  %27 = phi i32 [ %72, %for.inc210 ], [ %26, %for.cond61.preheader ]
  %buf_length.2327 = phi i32 [ %buf_length.4, %for.inc210 ], [ %buf_length.1337, %for.cond61.preheader ]
  %where_in_buf.2326 = phi i32 [ %where_in_buf.4, %for.inc210 ], [ %where_in_buf.1336, %for.cond61.preheader ]
  %rank29.2325 = phi i32 [ %rank29.4, %for.inc210 ], [ %rank29.1335, %for.cond61.preheader ]
  %rank31.2324 = phi i32 [ %rank31.4, %for.inc210 ], [ %rank31.1334, %for.cond61.preheader ]
  %isite.0323 = phi i32 [ %inc211, %for.inc210 ], [ %ksite.0343, %for.cond61.preheader ]
  %mul68 = mul nsw i32 %27, %sendnode.0332
  %add69 = add nsw i32 %mul68, %isite.0323
  %28 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %order71 = getelementptr inbounds %struct.gauge_header* %28, i64 0, i32 4
  %29 = load i32* %order71, align 4, !tbaa !0
  %cmp72 = icmp eq i32 %29, 0
  br i1 %cmp72, label %if.end76, label %if.else75

if.else75:                                        ; preds = %for.body67
  %idxprom = sext i32 %add69 to i64
  %30 = load i32** %rank2rcv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %30, i64 %idxprom
  %31 = load i32* %arrayidx, align 4, !tbaa !0
  br label %if.end76

if.end76:                                         ; preds = %for.body67, %if.else75
  %rcv_coords.0 = phi i32 [ %31, %if.else75 ], [ %add69, %for.body67 ]
  %32 = load i32* @nx, align 4, !tbaa !0
  %rem77 = srem i32 %rcv_coords.0, %32
  %div = sdiv i32 %rcv_coords.0, %32
  %33 = load i32* @ny, align 4, !tbaa !0
  %rem78 = srem i32 %div, %33
  %div79 = sdiv i32 %div, %33
  %34 = load i32* @nz, align 4, !tbaa !0
  %rem80 = srem i32 %div79, %34
  %div81 = sdiv i32 %div79, %34
  %35 = load i32* @nt, align 4, !tbaa !0
  %rem82 = srem i32 %div81, %35
  %call83 = call i32 @node_number(i32 %rem77, i32 %rem78, i32 %rem80, i32 %rem82) #9
  %36 = load i32* @this_node, align 4, !tbaa !0
  %cmp84 = icmp eq i32 %36, %sendnode.0332
  br i1 %cmp84, label %if.then86, label %if.else166

if.then86:                                        ; preds = %if.end76
  %cmp87 = icmp eq i32 %where_in_buf.2326, %buf_length.2327
  br i1 %cmp87, label %if.then89, label %if.end106

if.then89:                                        ; preds = %if.then86
  %37 = load i32* @sites_on_node, align 4, !tbaa !0
  %sub = sub nsw i32 %37, %isite.0323
  %cmp90 = icmp sgt i32 %sub, 4096
  %.sub = select i1 %cmp90, i32 4096, i32 %sub
  %mul94 = shl nsw i32 %.sub, 2
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul i64 %conv95, 144
  %call97 = call i64 @g_read(i8* %call4, i64 %mul96, i64 1, %struct._IO_FILE* %2) #9
  %cmp98 = icmp eq i64 %call97, 1
  br i1 %cmp98, label %if.end106, label %if.then100

if.then100:                                       ; preds = %if.then89
  %38 = load i32* @this_node, align 4, !tbaa !0
  %call102 = call i32* @__errno_location() #10
  %39 = load i32* %call102, align 4, !tbaa !0
  %call103 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str104, i64 0, i64 0), i8* %1, i32 %38, i32 %39, i8* %4) #9
  %40 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call104 = call i32 @fflush(%struct._IO_FILE* %40) #9
  call void @terminate(i32 1) #9
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %if.then89, %if.then86
  %where_in_buf.3 = phi i32 [ %where_in_buf.2326, %if.then86 ], [ 0, %if.then89 ], [ 0, %if.then100 ]
  %buf_length.3 = phi i32 [ %buf_length.2327, %if.then86 ], [ %.sub, %if.then89 ], [ %.sub, %if.then100 ]
  %41 = load i32* %byterevflag3, align 4, !tbaa !0
  %cmp108 = icmp eq i32 %41, 1
  %mul111 = shl nsw i32 %where_in_buf.3, 2
  %idxprom112 = sext i32 %mul111 to i64
  %arrayidx113 = getelementptr inbounds %struct.su3_matrix* %6, i64 %idxprom112
  %42 = bitcast %struct.su3_matrix* %arrayidx113 to i32*
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %if.end106
  call void @byterevn(i32* %42, i32 144) #9
  br label %if.end114

if.end114:                                        ; preds = %if.end106, %if.then110
  %.pre349 = load i32* %sum29, align 4, !tbaa !0
  %.pre350 = load i32* %sum31, align 4, !tbaa !0
  br label %for.body121

for.body121:                                      ; preds = %for.body121, %if.end114
  %43 = phi i32 [ %.pre350, %if.end114 ], [ %xor129, %for.body121 ]
  %44 = phi i32 [ %.pre349, %if.end114 ], [ %xor, %for.body121 ]
  %val.0320 = phi i32* [ %42, %if.end114 ], [ %incdec.ptr, %for.body121 ]
  %k.0319 = phi i32 [ 0, %if.end114 ], [ %inc139, %for.body121 ]
  %rank29.3318 = phi i32 [ %rank29.2325, %if.end114 ], [ %.inc, %for.body121 ]
  %rank31.3317 = phi i32 [ %rank31.2324, %if.end114 ], [ %.inc134, %for.body121 ]
  %45 = load i32* %val.0320, align 4, !tbaa !0
  %shl = shl i32 %45, %rank29.3318
  %sub122 = sub nsw i32 32, %rank29.3318
  %shr = lshr i32 %45, %sub122
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %44
  store i32 %xor, i32* %sum29, align 4, !tbaa !0
  %46 = load i32* %val.0320, align 4, !tbaa !0
  %shl124 = shl i32 %46, %rank31.3317
  %sub125 = sub nsw i32 32, %rank31.3317
  %shr126 = lshr i32 %46, %sub125
  %or127 = or i32 %shl124, %shr126
  %xor129 = xor i32 %or127, %43
  store i32 %xor129, i32* %sum31, align 4, !tbaa !0
  %inc = add nsw i32 %rank29.3318, 1
  %cmp130 = icmp sgt i32 %rank29.3318, 27
  %.inc = select i1 %cmp130, i32 0, i32 %inc
  %inc134 = add nsw i32 %rank31.3317, 1
  %cmp135 = icmp sgt i32 %rank31.3317, 29
  %.inc134 = select i1 %cmp135, i32 0, i32 %inc134
  %inc139 = add nsw i32 %k.0319, 1
  %incdec.ptr = getelementptr inbounds i32* %val.0320, i64 1
  %exitcond = icmp eq i32 %inc139, 144
  br i1 %exitcond, label %for.end, label %for.body121

for.end:                                          ; preds = %for.body121
  %cmp140 = icmp eq i32 %call83, %sendnode.0332
  br i1 %cmp140, label %if.then142, label %if.else150

if.then142:                                       ; preds = %for.end
  %call143 = call i32 @node_index(i32 %rem77, i32 %rem78, i32 %rem80, i32 %rem82) #9
  %idxprom144 = sext i32 %call143 to i64
  %47 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay146 = getelementptr inbounds %struct.site* %47, i64 %idxprom144, i32 8, i64 0
  %48 = bitcast %struct.su3_matrix* %arraydecay146 to i8*
  %49 = bitcast %struct.su3_matrix* %arrayidx113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 576, i32 1, i1 false)
  br label %if.end164

if.else150:                                       ; preds = %for.end
  %conv151 = trunc i32 %rem77 to i16
  store i16 %conv151, i16* %x152, align 8, !tbaa !6
  %conv153 = trunc i32 %rem78 to i16
  store i16 %conv153, i16* %y154, align 2, !tbaa !6
  %conv155 = trunc i32 %rem80 to i16
  store i16 %conv155, i16* %z156, align 4, !tbaa !6
  %conv157 = trunc i32 %rem82 to i16
  store i16 %conv157, i16* %t158, align 2, !tbaa !6
  %50 = bitcast %struct.su3_matrix* %arrayidx113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %50, i64 576, i32 1, i1 false)
  call void @send_field(i8* %0, i32 584, i32 %call83) #9
  br label %if.end164

if.end164:                                        ; preds = %if.else150, %if.then142
  %inc165 = add nsw i32 %where_in_buf.3, 1
  br label %for.inc210

if.else166:                                       ; preds = %if.end76
  %cmp167 = icmp eq i32 %36, %call83
  br i1 %cmp167, label %if.then169, label %for.inc210

if.then169:                                       ; preds = %if.else166
  call void @get_field(i8* %0, i32 584) #9
  %51 = bitcast %struct.anon.1* %msg to i64*
  %52 = load i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = trunc i64 %52 to i32
  %sext = shl i32 %54, 16
  %conv171 = ashr exact i32 %sext, 16
  %conv173 = ashr i32 %53, 16
  %55 = lshr i64 %52, 32
  %sext353354 = shl nuw nsw i64 %55, 16
  %sext353 = trunc i64 %sext353354 to i32
  %conv175 = ashr exact i32 %sext353, 16
  %56 = lshr i64 %52, 48
  %sext355356 = shl nuw nsw i64 %56, 16
  %sext355 = trunc i64 %sext355356 to i32
  %conv177 = ashr exact i32 %sext355, 16
  %call178 = call i32 @node_index(i32 %conv171, i32 %conv173, i32 %conv175, i32 %conv177) #9
  %57 = load i32* @this_node, align 4, !tbaa !0
  %58 = load i64* %51, align 8
  %59 = trunc i64 %58 to i32
  %60 = trunc i64 %58 to i32
  %sext357 = shl i32 %60, 16
  %conv180 = ashr exact i32 %sext357, 16
  %conv182 = ashr i32 %59, 16
  %61 = lshr i64 %58, 32
  %sext359360 = shl nuw nsw i64 %61, 16
  %sext359 = trunc i64 %sext359360 to i32
  %conv184 = ashr exact i32 %sext359, 16
  %62 = lshr i64 %58, 48
  %sext361362 = shl nuw nsw i64 %62, 16
  %sext361 = trunc i64 %sext361362 to i32
  %conv186 = ashr exact i32 %sext361, 16
  %call187 = call i32 @node_number(i32 %conv180, i32 %conv182, i32 %conv184, i32 %conv186) #9
  %cmp188 = icmp eq i32 %57, %call187
  br i1 %cmp188, label %if.end201, label %if.then190

if.then190:                                       ; preds = %if.then169
  %63 = load i32* @this_node, align 4, !tbaa !0
  %64 = load i64* %51, align 8
  %65 = trunc i64 %64 to i32
  %66 = trunc i64 %64 to i32
  %sext363 = shl i32 %66, 16
  %conv192 = ashr exact i32 %sext363, 16
  %conv194 = ashr i32 %65, 16
  %67 = lshr i64 %64, 32
  %sext365366 = shl nuw nsw i64 %67, 16
  %sext365 = trunc i64 %sext365366 to i32
  %conv196 = ashr exact i32 %sext365, 16
  %68 = lshr i64 %64, 48
  %sext367368 = shl nuw nsw i64 %68, 16
  %sext367 = trunc i64 %sext367368 to i32
  %conv198 = ashr exact i32 %sext367, 16
  %call199 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str126, i64 0, i64 0), i32 %63, i32 %conv192, i32 %conv194, i32 %conv196, i32 %conv198) #9
  %69 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call200 = call i32 @fflush(%struct._IO_FILE* %69) #9
  call void @terminate(i32 1) #9
  br label %if.end201

if.end201:                                        ; preds = %if.then169, %if.then190
  %idxprom202 = sext i32 %call178 to i64
  %70 = load %struct.site** @lattice, align 8, !tbaa !3
  %arraydecay205 = getelementptr inbounds %struct.site* %70, i64 %idxprom202, i32 8, i64 0
  %71 = bitcast %struct.su3_matrix* %arraydecay205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %22, i64 576, i32 1, i1 false)
  br label %for.inc210

for.inc210:                                       ; preds = %if.end164, %if.end201, %if.else166
  %rank31.4 = phi i32 [ %.inc134, %if.end164 ], [ %rank31.2324, %if.end201 ], [ %rank31.2324, %if.else166 ]
  %rank29.4 = phi i32 [ %.inc, %if.end164 ], [ %rank29.2325, %if.end201 ], [ %rank29.2325, %if.else166 ]
  %where_in_buf.4 = phi i32 [ %inc165, %if.end164 ], [ %where_in_buf.2326, %if.end201 ], [ %where_in_buf.2326, %if.else166 ]
  %buf_length.4 = phi i32 [ %buf_length.3, %if.end164 ], [ %buf_length.2327, %if.end201 ], [ %buf_length.2327, %if.else166 ]
  %inc211 = add nsw i32 %isite.0323, 1
  %72 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp62 = icmp slt i32 %inc211, %72
  %73 = or i32 %ksite.0343, 3
  %cmp65 = icmp slt i32 %isite.0323, %73
  %or.cond = and i1 %cmp62, %cmp65
  br i1 %or.cond, label %for.body67, label %for.cond61.for.inc213_crit_edge

for.cond61.for.inc213_crit_edge:                  ; preds = %for.inc210
  %.pre = load i32* @number_of_nodes, align 4, !tbaa !0
  br label %for.inc213

for.inc213:                                       ; preds = %for.cond61.for.inc213_crit_edge, %for.cond61.preheader
  %74 = phi i32 [ %.pre, %for.cond61.for.inc213_crit_edge ], [ %25, %for.cond61.preheader ]
  %75 = phi i32 [ %72, %for.cond61.for.inc213_crit_edge ], [ %26, %for.cond61.preheader ]
  %buf_length.2.lcssa = phi i32 [ %buf_length.4, %for.cond61.for.inc213_crit_edge ], [ %buf_length.1337, %for.cond61.preheader ]
  %where_in_buf.2.lcssa = phi i32 [ %where_in_buf.4, %for.cond61.for.inc213_crit_edge ], [ %where_in_buf.1336, %for.cond61.preheader ]
  %rank29.2.lcssa = phi i32 [ %rank29.4, %for.cond61.for.inc213_crit_edge ], [ %rank29.1335, %for.cond61.preheader ]
  %rank31.2.lcssa = phi i32 [ %rank31.4, %for.cond61.for.inc213_crit_edge ], [ %rank31.1334, %for.cond61.preheader ]
  %inc214 = add nsw i32 %sendnode.0332, 1
  %cmp58 = icmp slt i32 %inc214, %74
  br i1 %cmp58, label %for.cond61.preheader, label %for.end215

for.end215:                                       ; preds = %for.inc213, %for.cond57.preheader
  %buf_length.1.lcssa = phi i32 [ %buf_length.0348, %for.cond57.preheader ], [ %buf_length.2.lcssa, %for.inc213 ]
  %where_in_buf.1.lcssa = phi i32 [ %where_in_buf.0347, %for.cond57.preheader ], [ %where_in_buf.2.lcssa, %for.inc213 ]
  %rank29.1.lcssa = phi i32 [ %rank29.0346, %for.cond57.preheader ], [ %rank29.2.lcssa, %for.inc213 ]
  %rank31.1.lcssa = phi i32 [ %rank31.0345, %for.cond57.preheader ], [ %rank31.2.lcssa, %for.inc213 ]
  call void (...)* @g_sync() #9
  %add217 = add nsw i32 %ksite.0343, 4
  %76 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp55 = icmp slt i32 %add217, %76
  br i1 %cmp55, label %for.cond57.preheader, label %for.end218

for.end218:                                       ; preds = %for.end215, %if.end43
  call void @free(i8* %call4) #9
  call void @g_xor32(i32* %sum29) #9
  call void @g_xor32(i32* %sum31) #9
  %77 = load i32* @this_node, align 4, !tbaa !0
  %cmp221 = icmp eq i32 %77, 0
  br i1 %cmp221, label %if.then223, label %if.end242

if.then223:                                       ; preds = %for.end218
  %call224 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([62 x i8]* @.str127, i64 0, i64 0), i8* %4) #9
  %78 = load i32* %magic_number, align 4, !tbaa !0
  %cmp226 = icmp eq i32 %78, 20103
  br i1 %cmp226, label %if.then228, label %if.end240

if.then228:                                       ; preds = %if.then223
  %arraydecay229 = getelementptr inbounds %struct.gauge_header* %3, i64 0, i32 1, i64 0
  %call230 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay229) #9
  %call231 = call i32 @g_seek(%struct._IO_FILE* %2, i64 %add, i32 0) #9
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %if.end239

if.then234:                                       ; preds = %if.then228
  %call236 = call i32* @__errno_location() #10
  %79 = load i32* %call236, align 4, !tbaa !0
  %call237 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str128, i64 0, i64 0), i8* %1, i64 %add34, i32 %79, i8* %4) #9
  %80 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call238 = call i32 @fflush(%struct._IO_FILE* %80) #9
  call void @terminate(i32 1) #9
  br label %if.end239

if.end239:                                        ; preds = %if.then234, %if.then228
  call void @read_checksum(i32 1, %struct.gauge_file* %gf, %struct.gauge_check* %test_gc) #8
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.then223
  %81 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call241 = call i32 @fflush(%struct._IO_FILE* %81) #9
  br label %if.end242

if.end242:                                        ; preds = %if.end240, %for.end218
  call void @llvm.lifetime.end(i64 584, i8* %0) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @r_parallel_f(%struct.gauge_file* nocapture %gf) #0 {
entry:
  tail call void (...)* @g_sync() #9
  %fp = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 0
  %0 = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %parallel = getelementptr inbounds %struct.gauge_file* %gf, i64 0, i32 5
  %1 = load i32* %parallel, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str193, i64 0, i64 0))
  %.pre = load %struct._IO_FILE** %fp, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %2 = phi %struct._IO_FILE* [ %0, %if.then ], [ %.pre, %if.then1 ]
  %call3 = tail call i32 @g_close(%struct._IO_FILE* %2) #9
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @restore_ascii(i8* %filename) #0 {
entry:
  %version_number = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  %0 = bitcast [4 x %struct.su3_matrix]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #5
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %filename) #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %1 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 0, i32* %parallel, align 4, !tbaa !0
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else82

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str130, i64 0, i64 0)) #9
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32* @__errno_location() #10
  %3 = load i32* %call4, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str131, i64 0, i64 0), i8* %filename, i32 %3) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %fp6 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp6, align 8, !tbaa !3
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %version_number) #9
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %puts257 = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str198, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then9
  %4 = load i32* %version_number, align 4, !tbaa !0
  %magic_number = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 0
  store i32 %4, i32* %magic_number, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %4, 20103
  br i1 %cmp13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end11
  %puts256 = call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str197, i64 0, i64 0))
  %5 = load i32* %magic_number, align 4, !tbaa !0
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str134, i64 0, i64 0), i32 %5, i32 20103) #9
  call void @terminate(i32 1) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end11, %if.then14
  %arraydecay = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([26 x i8]* @.str135, i64 0, i64 0), i8* %arraydecay) #9
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end18
  %puts255 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str196, i64 0, i64 0))
  %call25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str137, i64 0, i64 0), i32 %call19, i8* %arraydecay) #9
  call void @terminate(i32 1) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end18, %if.then21
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([9 x i8]* @.str138, i64 0, i64 0), i32* %x, i32* %y, i32* %z, i32* %t) #9
  %cmp28 = icmp eq i32 %call27, 4
  br i1 %cmp28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  %puts254 = call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @str195, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.then29
  %6 = load i32* %x, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 2, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !0
  %7 = load i32* %y, align 4, !tbaa !0
  %arrayidx33 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 2, i64 1
  store i32 %7, i32* %arrayidx33, align 4, !tbaa !0
  %8 = load i32* %z, align 4, !tbaa !0
  %arrayidx35 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 2, i64 2
  store i32 %8, i32* %arrayidx35, align 4, !tbaa !0
  %9 = load i32* %t, align 4, !tbaa !0
  %arrayidx37 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 2, i64 3
  store i32 %9, i32* %arrayidx37, align 4, !tbaa !0
  %10 = load i32* @nx, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %6, %10
  %11 = load i32* @ny, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %7, %11
  %or.cond295 = and i1 %cmp40, %cmp43
  br i1 %or.cond295, label %lor.lhs.false44, label %if.then52

lor.lhs.false44:                                  ; preds = %if.end31
  %12 = load i32* @nz, align 4, !tbaa !0
  %cmp47 = icmp eq i32 %8, %12
  %13 = load i32* @nt, align 4, !tbaa !0
  %cmp51 = icmp eq i32 %9, %13
  %or.cond258 = and i1 %cmp47, %cmp51
  br i1 %or.cond258, label %if.end81, label %if.then52

if.then52:                                        ; preds = %if.end31, %lor.lhs.false44
  %14 = phi i32 [ %7, %lor.lhs.false44 ], [ %11, %if.end31 ]
  %cmp53 = icmp ne i32 %10, -1
  %cmp55 = icmp ne i32 %14, -1
  %or.cond = or i1 %cmp53, %cmp55
  %15 = load i32* @nz, align 4, !tbaa !0
  %cmp57 = icmp ne i32 %15, -1
  %or.cond190 = or i1 %or.cond, %cmp57
  %16 = load i32* @nt, align 4, !tbaa !0
  %cmp59 = icmp ne i32 %16, -1
  %or.cond191 = or i1 %or.cond190, %cmp59
  br i1 %or.cond191, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.then52
  %call69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str140, i64 0, i64 0), i32 %6, i32 %7, i32 %8, i32 %9) #9
  call void @terminate(i32 1) #9
  br label %if.end81

if.else:                                          ; preds = %if.then52
  store i32 %6, i32* @nx, align 4, !tbaa !0
  %17 = load i32* %arrayidx33, align 4, !tbaa !0
  store i32 %17, i32* @ny, align 4, !tbaa !0
  %18 = load i32* %arrayidx35, align 4, !tbaa !0
  store i32 %18, i32* @nz, align 4, !tbaa !0
  %19 = load i32* %arrayidx37, align 4, !tbaa !0
  store i32 %19, i32* @nt, align 4, !tbaa !0
  %mul = mul i32 %18, %17
  %mul78 = mul i32 %mul, %19
  %mul79 = mul i32 %mul78, %6
  store i32 %mul79, i32* @volume, align 4, !tbaa !0
  br label %if.end81

if.end81:                                         ; preds = %lor.lhs.false44, %if.then60, %if.else
  %order = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 4
  store i32 0, i32* %order, align 4, !tbaa !0
  br label %if.end84

if.else82:                                        ; preds = %entry
  %fp83 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp83, align 8, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.end81
  %fp.0 = phi %struct._IO_FILE* [ %call1, %if.end81 ], [ undef, %if.else82 ]
  %byterevflag = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  %20 = bitcast %struct.gauge_header* %1 to i8*
  call void @broadcast_bytes(i8* %20, i32 92) #9
  call void (...)* @g_sync() #9
  store i32 0, i32* %t, align 4, !tbaa !0
  %21 = load i32* @nt, align 4, !tbaa !0
  %cmp85269 = icmp sgt i32 %21, 0
  br i1 %cmp85269, label %for.cond86.preheader.lr.ph, label %for.end179

for.cond86.preheader.lr.ph:                       ; preds = %if.end84
  %.pre = load i32* @nz, align 4, !tbaa !0
  br label %for.cond86.preheader

for.cond86.preheader:                             ; preds = %for.cond86.preheader.lr.ph, %for.inc177
  %22 = phi i32 [ %21, %for.cond86.preheader.lr.ph ], [ %57, %for.inc177 ]
  %23 = phi i32 [ 0, %for.cond86.preheader.lr.ph ], [ %inc178, %for.inc177 ]
  %24 = phi i32 [ %.pre, %for.cond86.preheader.lr.ph ], [ %59, %for.inc177 ]
  store i32 0, i32* %z, align 4, !tbaa !0
  %cmp87268 = icmp sgt i32 %24, 0
  br i1 %cmp87268, label %for.cond89.preheader.lr.ph, label %for.inc177

for.cond89.preheader.lr.ph:                       ; preds = %for.cond86.preheader
  %.pre289 = load i32* @ny, align 4, !tbaa !0
  br label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.cond89.preheader.lr.ph, %for.inc174
  %25 = phi i32 [ %24, %for.cond89.preheader.lr.ph ], [ %54, %for.inc174 ]
  %26 = phi i32 [ 0, %for.cond89.preheader.lr.ph ], [ %inc175, %for.inc174 ]
  %27 = phi i32 [ %.pre289, %for.cond89.preheader.lr.ph ], [ %56, %for.inc174 ]
  store i32 0, i32* %y, align 4, !tbaa !0
  %cmp90267 = icmp sgt i32 %27, 0
  br i1 %cmp90267, label %for.cond92.preheader.lr.ph, label %for.inc174

for.cond92.preheader.lr.ph:                       ; preds = %for.cond89.preheader
  %.pre292 = load i32* @nx, align 4, !tbaa !0
  br label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond92.preheader.lr.ph, %for.inc171
  %28 = phi i32 [ %27, %for.cond92.preheader.lr.ph ], [ %52, %for.inc171 ]
  %29 = phi i32 [ 0, %for.cond92.preheader.lr.ph ], [ %inc172, %for.inc171 ]
  %30 = phi i32 [ %.pre292, %for.cond92.preheader.lr.ph ], [ %53, %for.inc171 ]
  store i32 0, i32* %x, align 4, !tbaa !0
  %cmp93265 = icmp sgt i32 %30, 0
  br i1 %cmp93265, label %for.body94, label %for.inc171

for.body94:                                       ; preds = %for.inc168, %for.cond92.preheader
  %31 = phi i32 [ %29, %for.cond92.preheader ], [ %51, %for.inc168 ]
  %storemerge253266 = phi i32 [ 0, %for.cond92.preheader ], [ %inc169, %for.inc168 ]
  %32 = load i32* %z, align 4, !tbaa !0
  %33 = load i32* %t, align 4, !tbaa !0
  %call95 = call i32 @node_number(i32 %storemerge253266, i32 %31, i32 %32, i32 %33) #9
  %34 = load i32* @this_node, align 4, !tbaa !0
  %cmp96 = icmp eq i32 %34, 0
  br i1 %cmp96, label %for.cond101.preheader, label %if.else148

for.cond101.preheader:                            ; preds = %for.body94, %for.inc127
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %for.inc127 ], [ 0, %for.body94 ]
  br label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %for.inc124, %for.cond101.preheader
  %indvars.iv274 = phi i64 [ 0, %for.cond101.preheader ], [ %indvars.iv.next275, %for.inc124 ]
  br label %for.body106

for.body106:                                      ; preds = %for.inc, %for.cond104.preheader
  %indvars.iv270 = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next271, %for.inc ]
  %real = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv278, i32 0, i64 %indvars.iv274, i64 %indvars.iv270, i32 0
  %imag = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv278, i32 0, i64 %indvars.iv274, i64 %indvars.iv270, i32 1
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp.0, i8* getelementptr inbounds ([8 x i8]* @.str141, i64 0, i64 0), double* %real, double* %imag) #9
  %cmp120 = icmp eq i32 %call119, 2
  br i1 %cmp120, label %for.inc, label %if.then121

if.then121:                                       ; preds = %for.body106
  %puts = call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str194, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body106, %if.then121
  %indvars.iv.next271 = add i64 %indvars.iv270, 1
  %lftr.wideiv272 = trunc i64 %indvars.iv.next271 to i32
  %exitcond273 = icmp eq i32 %lftr.wideiv272, 3
  br i1 %exitcond273, label %for.inc124, label %for.body106

for.inc124:                                       ; preds = %for.inc
  %indvars.iv.next275 = add i64 %indvars.iv274, 1
  %lftr.wideiv276 = trunc i64 %indvars.iv.next275 to i32
  %exitcond277 = icmp eq i32 %lftr.wideiv276, 3
  br i1 %exitcond277, label %for.inc127, label %for.cond104.preheader

for.inc127:                                       ; preds = %for.inc124
  %indvars.iv.next279 = add i64 %indvars.iv278, 1
  %lftr.wideiv280 = trunc i64 %indvars.iv.next279 to i32
  %exitcond281 = icmp eq i32 %lftr.wideiv280, 4
  br i1 %exitcond281, label %for.end129, label %for.cond101.preheader

for.end129:                                       ; preds = %for.inc127
  %cmp130 = icmp eq i32 %call95, 0
  br i1 %cmp130, label %if.then131, label %if.else145

if.then131:                                       ; preds = %for.end129
  %35 = load i32* %x, align 4, !tbaa !0
  %36 = load i32* %y, align 4, !tbaa !0
  %37 = load i32* %z, align 4, !tbaa !0
  %38 = load i32* %t, align 4, !tbaa !0
  %call132 = call i32 @node_index(i32 %35, i32 %36, i32 %37, i32 %38) #9
  %idxprom137 = sext i32 %call132 to i64
  br label %for.body135

for.body135:                                      ; preds = %for.body135, %if.then131
  %indvars.iv282 = phi i64 [ 0, %if.then131 ], [ %indvars.iv.next283, %for.body135 ]
  %39 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds %struct.site* %39, i64 %idxprom137, i32 8, i64 %indvars.iv282
  %arrayidx141 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv282
  %40 = bitcast %struct.su3_matrix* %arrayidx139 to i8*
  %41 = bitcast %struct.su3_matrix* %arrayidx141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %lftr.wideiv284 = trunc i64 %indvars.iv.next283 to i32
  %exitcond285 = icmp eq i32 %lftr.wideiv284, 4
  br i1 %exitcond285, label %for.inc168, label %for.body135

if.else145:                                       ; preds = %for.end129
  call void @send_field(i8* %0, i32 576, i32 %call95) #9
  br label %for.inc168

if.else148:                                       ; preds = %for.body94
  %cmp149 = icmp eq i32 %34, %call95
  br i1 %cmp149, label %if.then150, label %for.inc168

if.then150:                                       ; preds = %if.else148
  call void @get_field(i8* %0, i32 576) #9
  %42 = load i32* %x, align 4, !tbaa !0
  %43 = load i32* %y, align 4, !tbaa !0
  %44 = load i32* %z, align 4, !tbaa !0
  %45 = load i32* %t, align 4, !tbaa !0
  %call152 = call i32 @node_index(i32 %42, i32 %43, i32 %44, i32 %45) #9
  %idxprom157 = sext i32 %call152 to i64
  br label %for.body155

for.body155:                                      ; preds = %for.body155, %if.then150
  %indvars.iv = phi i64 [ 0, %if.then150 ], [ %indvars.iv.next, %for.body155 ]
  %46 = load %struct.site** @lattice, align 8, !tbaa !3
  %arrayidx160 = getelementptr inbounds %struct.site* %46, i64 %idxprom157, i32 8, i64 %indvars.iv
  %arrayidx162 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv
  %47 = bitcast %struct.su3_matrix* %arrayidx160 to i8*
  %48 = bitcast %struct.su3_matrix* %arrayidx162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc168, label %for.body155

for.inc168:                                       ; preds = %for.body135, %for.body155, %if.else145, %if.else148
  %49 = load i32* %x, align 4, !tbaa !0
  %inc169 = add nsw i32 %49, 1
  store i32 %inc169, i32* %x, align 4, !tbaa !0
  %50 = load i32* @nx, align 4, !tbaa !0
  %cmp93 = icmp slt i32 %inc169, %50
  %51 = load i32* %y, align 4, !tbaa !0
  br i1 %cmp93, label %for.body94, label %for.cond92.for.inc171_crit_edge

for.cond92.for.inc171_crit_edge:                  ; preds = %for.inc168
  %.pre293 = load i32* @ny, align 4, !tbaa !0
  br label %for.inc171

for.inc171:                                       ; preds = %for.cond92.for.inc171_crit_edge, %for.cond92.preheader
  %52 = phi i32 [ %.pre293, %for.cond92.for.inc171_crit_edge ], [ %28, %for.cond92.preheader ]
  %53 = phi i32 [ %50, %for.cond92.for.inc171_crit_edge ], [ %30, %for.cond92.preheader ]
  %.lcssa = phi i32 [ %51, %for.cond92.for.inc171_crit_edge ], [ %29, %for.cond92.preheader ]
  %inc172 = add nsw i32 %.lcssa, 1
  store i32 %inc172, i32* %y, align 4, !tbaa !0
  %cmp90 = icmp slt i32 %inc172, %52
  br i1 %cmp90, label %for.cond92.preheader, label %for.cond89.for.inc174_crit_edge

for.cond89.for.inc174_crit_edge:                  ; preds = %for.inc171
  %.pre290 = load i32* %z, align 4, !tbaa !0
  %.pre291 = load i32* @nz, align 4, !tbaa !0
  br label %for.inc174

for.inc174:                                       ; preds = %for.cond89.for.inc174_crit_edge, %for.cond89.preheader
  %54 = phi i32 [ %.pre291, %for.cond89.for.inc174_crit_edge ], [ %25, %for.cond89.preheader ]
  %55 = phi i32 [ %.pre290, %for.cond89.for.inc174_crit_edge ], [ %26, %for.cond89.preheader ]
  %56 = phi i32 [ %52, %for.cond89.for.inc174_crit_edge ], [ %27, %for.cond89.preheader ]
  %inc175 = add nsw i32 %55, 1
  store i32 %inc175, i32* %z, align 4, !tbaa !0
  %cmp87 = icmp slt i32 %inc175, %54
  br i1 %cmp87, label %for.cond89.preheader, label %for.cond86.for.inc177_crit_edge

for.cond86.for.inc177_crit_edge:                  ; preds = %for.inc174
  %.pre287 = load i32* %t, align 4, !tbaa !0
  %.pre288 = load i32* @nt, align 4, !tbaa !0
  br label %for.inc177

for.inc177:                                       ; preds = %for.cond86.for.inc177_crit_edge, %for.cond86.preheader
  %57 = phi i32 [ %.pre288, %for.cond86.for.inc177_crit_edge ], [ %22, %for.cond86.preheader ]
  %58 = phi i32 [ %.pre287, %for.cond86.for.inc177_crit_edge ], [ %23, %for.cond86.preheader ]
  %59 = phi i32 [ %54, %for.cond86.for.inc177_crit_edge ], [ %24, %for.cond86.preheader ]
  %inc178 = add nsw i32 %58, 1
  store i32 %inc178, i32* %t, align 4, !tbaa !0
  %cmp85 = icmp slt i32 %inc178, %57
  br i1 %cmp85, label %for.cond86.preheader, label %for.end179

for.end179:                                       ; preds = %for.inc177, %if.end84
  call void (...)* @g_sync() #9
  %60 = load i32* @this_node, align 4, !tbaa !0
  %cmp180 = icmp eq i32 %60, 0
  br i1 %cmp180, label %if.then181, label %if.end189

if.then181:                                       ; preds = %for.end179
  %call182 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str143, i64 0, i64 0), i8* %filename) #9
  %arraydecay184 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call185 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay184) #9
  %call186 = call i32 @fclose(%struct._IO_FILE* %fp.0) #9
  %fp187 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp187, align 8, !tbaa !3
  %61 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call188 = call i32 @fflush(%struct._IO_FILE* %61) #9
  br label %if.end189

if.end189:                                        ; preds = %if.then181, %for.end179
  call void @llvm.lifetime.end(i64 576, i8* %0) #5
  ret %struct.gauge_file* %call
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @save_ascii(i8* %filename) #0 {
entry:
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  %0 = bitcast [4 x %struct.su3_matrix]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #5
  %call = call %struct.gauge_file* @setup_output_gauge_file() #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %1 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %2 = load i32* @this_node, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str26, i64 0, i64 0)) #9
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32* @__errno_location() #10
  %3 = load i32* %call4, align 4, !tbaa !0
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str131, i64 0, i64 0), i8* %filename, i32 %3) #9
  call void @terminate(i32 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %fp6 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 0
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp6, align 8, !tbaa !3
  %parallel = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 5
  store i32 0, i32* %parallel, align 4, !tbaa !0
  %filename7 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 2
  store i8* %filename, i8** %filename7, align 8, !tbaa !3
  %byterevflag = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 3
  store i32 0, i32* %byterevflag, align 4, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([4 x i8]* @.str144, i64 0, i64 0), i32 20103) #9
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %puts203 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str202, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %arraydecay = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([6 x i8]* @.str146, i64 0, i64 0), i8* %arraydecay) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %puts202 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str201, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %4 = load i32* @nx, align 4, !tbaa !0
  %5 = load i32* @ny, align 4, !tbaa !0
  %6 = load i32* @nz, align 4, !tbaa !0
  %7 = load i32* @nt, align 4, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call1, i8* getelementptr inbounds ([13 x i8]* @.str148, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7) #9
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %puts201 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str200, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  call void @write_gauge_info_file(%struct.gauge_file* %call) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %fp.0 = phi %struct._IO_FILE* [ %call1, %if.end22 ], [ undef, %entry ]
  call void (...)* @g_sync() #9
  %8 = load i32* @nt, align 4, !tbaa !0
  %cmp24221 = icmp sgt i32 %8, 0
  br i1 %cmp24221, label %for.cond25.preheader.lr.ph, label %for.end130

for.cond25.preheader.lr.ph:                       ; preds = %if.end23
  %.pre = load i32* @nz, align 4, !tbaa !0
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader.lr.ph, %for.inc128
  %9 = phi i32 [ %8, %for.cond25.preheader.lr.ph ], [ %29, %for.inc128 ]
  %10 = phi i32 [ %.pre, %for.cond25.preheader.lr.ph ], [ %30, %for.inc128 ]
  %currentnode.0223 = phi i32 [ 0, %for.cond25.preheader.lr.ph ], [ %currentnode.1.lcssa, %for.inc128 ]
  %t.0222 = phi i32 [ 0, %for.cond25.preheader.lr.ph ], [ %inc129, %for.inc128 ]
  %cmp26217 = icmp sgt i32 %10, 0
  br i1 %cmp26217, label %for.cond28.preheader.lr.ph, label %for.inc128

for.cond28.preheader.lr.ph:                       ; preds = %for.cond25.preheader
  %.pre241 = load i32* @ny, align 4, !tbaa !0
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond28.preheader.lr.ph, %for.inc125
  %11 = phi i32 [ %10, %for.cond28.preheader.lr.ph ], [ %27, %for.inc125 ]
  %12 = phi i32 [ %.pre241, %for.cond28.preheader.lr.ph ], [ %28, %for.inc125 ]
  %currentnode.1219 = phi i32 [ %currentnode.0223, %for.cond28.preheader.lr.ph ], [ %currentnode.2.lcssa, %for.inc125 ]
  %z.0218 = phi i32 [ 0, %for.cond28.preheader.lr.ph ], [ %inc126, %for.inc125 ]
  %cmp29213 = icmp sgt i32 %12, 0
  br i1 %cmp29213, label %for.cond31.preheader.lr.ph, label %for.inc125

for.cond31.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %.pre243 = load i32* @nx, align 4, !tbaa !0
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond31.preheader.lr.ph, %for.inc122
  %13 = phi i32 [ %12, %for.cond31.preheader.lr.ph ], [ %25, %for.inc122 ]
  %14 = phi i32 [ %.pre243, %for.cond31.preheader.lr.ph ], [ %26, %for.inc122 ]
  %currentnode.2215 = phi i32 [ %currentnode.1219, %for.cond31.preheader.lr.ph ], [ %currentnode.3.lcssa, %for.inc122 ]
  %y.0214 = phi i32 [ 0, %for.cond31.preheader.lr.ph ], [ %inc123, %for.inc122 ]
  %cmp32210 = icmp sgt i32 %14, 0
  br i1 %cmp32210, label %for.body33, label %for.inc122

for.body33:                                       ; preds = %for.cond31.preheader, %for.inc119
  %currentnode.3212 = phi i32 [ %currentnode.4, %for.inc119 ], [ %currentnode.2215, %for.cond31.preheader ]
  %x.0211 = phi i32 [ %inc120, %for.inc119 ], [ 0, %for.cond31.preheader ]
  %call34 = call i32 @node_number(i32 %x.0211, i32 %y.0214, i32 %z.0218, i32 %t.0222) #9
  %cmp35 = icmp eq i32 %call34, %currentnode.3212
  br i1 %cmp35, label %if.end48thread-pre-split, label %if.then36

if.then36:                                        ; preds = %for.body33
  %15 = load i32* @this_node, align 4, !tbaa !0
  %cmp37 = icmp ne i32 %15, 0
  %cmp38 = icmp eq i32 %call34, 0
  %or.cond204 = or i1 %cmp37, %cmp38
  br i1 %or.cond204, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @send_field(i8* %0, i32 4, i32 %call34) #9
  %.pre247 = load i32* @this_node, align 4, !tbaa !0
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then39
  %16 = phi i32 [ %15, %if.then36 ], [ %.pre247, %if.then39 ]
  %cmp42 = icmp eq i32 %16, %call34
  %cmp44 = icmp ne i32 %call34, 0
  %or.cond = and i1 %cmp42, %cmp44
  br i1 %or.cond, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @get_field(i8* %0, i32 4) #9
  br label %if.end48thread-pre-split

if.end48thread-pre-split:                         ; preds = %for.body33, %if.then45
  %currentnode.4.ph = phi i32 [ %call34, %if.then45 ], [ %currentnode.3212, %for.body33 ]
  %.pr = load i32* @this_node, align 4, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.end48thread-pre-split, %if.end41
  %17 = phi i32 [ %.pr, %if.end48thread-pre-split ], [ %16, %if.end41 ]
  %currentnode.4 = phi i32 [ %currentnode.4.ph, %if.end48thread-pre-split ], [ %call34, %if.end41 ]
  %cmp49 = icmp eq i32 %17, 0
  br i1 %cmp49, label %if.then50, label %if.else99

if.then50:                                        ; preds = %if.end48
  %cmp51 = icmp eq i32 %currentnode.4, 0
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then50
  %call53 = call i32 @node_index(i32 %x.0211, i32 %y.0214, i32 %z.0218, i32 %t.0222) #9
  %idxprom58 = sext i32 %call53 to i64
  %.pre245 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body56

for.body56:                                       ; preds = %for.body56, %if.then52
  %indvars.iv224 = phi i64 [ 0, %if.then52 ], [ %indvars.iv.next225, %for.body56 ]
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv224
  %arrayidx60 = getelementptr inbounds %struct.site* %.pre245, i64 %idxprom58, i32 8, i64 %indvars.iv224
  %18 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %19 = bitcast %struct.su3_matrix* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32
  %exitcond227 = icmp eq i32 %lftr.wideiv226, 4
  br i1 %exitcond227, label %for.cond66.preheader, label %for.body56

if.else:                                          ; preds = %if.then50
  call void @get_field(i8* %0, i32 576) #9
  br label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %if.else, %for.body56, %for.inc96
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc96 ], [ 0, %for.body56 ], [ 0, %if.else ]
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.inc93, %for.cond66.preheader
  %indvars.iv232 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next233, %for.inc93 ]
  br label %for.body71

for.body71:                                       ; preds = %for.inc90, %for.cond69.preheader
  %indvars.iv228 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next229, %for.inc90 ]
  %real = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv236, i32 0, i64 %indvars.iv232, i64 %indvars.iv228, i32 0
  %20 = load double* %real, align 16, !tbaa !4
  %imag = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv236, i32 0, i64 %indvars.iv232, i64 %indvars.iv228, i32 1
  %21 = load double* %imag, align 8, !tbaa !4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp.0, i8* getelementptr inbounds ([11 x i8]* @.str150, i64 0, i64 0), double %20, double %21) #9
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then87, label %for.inc90

if.then87:                                        ; preds = %for.body71
  %puts = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str199, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %for.inc90

for.inc90:                                        ; preds = %for.body71, %if.then87
  %indvars.iv.next229 = add i64 %indvars.iv228, 1
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32
  %exitcond231 = icmp eq i32 %lftr.wideiv230, 3
  br i1 %exitcond231, label %for.inc93, label %for.body71

for.inc93:                                        ; preds = %for.inc90
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, 3
  br i1 %exitcond235, label %for.inc96, label %for.cond69.preheader

for.inc96:                                        ; preds = %for.inc93
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32
  %exitcond239 = icmp eq i32 %lftr.wideiv238, 4
  br i1 %exitcond239, label %for.inc119, label %for.cond66.preheader

if.else99:                                        ; preds = %if.end48
  %cmp100 = icmp eq i32 %17, %currentnode.4
  br i1 %cmp100, label %if.then101, label %for.inc119

if.then101:                                       ; preds = %if.else99
  %call102 = call i32 @node_index(i32 %x.0211, i32 %y.0214, i32 %z.0218, i32 %t.0222) #9
  %idxprom109 = sext i32 %call102 to i64
  %.pre246 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body105

for.body105:                                      ; preds = %for.body105, %if.then101
  %indvars.iv = phi i64 [ 0, %if.then101 ], [ %indvars.iv.next, %for.body105 ]
  %arrayidx107 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv
  %arrayidx112 = getelementptr inbounds %struct.site* %.pre246, i64 %idxprom109, i32 8, i64 %indvars.iv
  %22 = bitcast %struct.su3_matrix* %arrayidx107 to i8*
  %23 = bitcast %struct.su3_matrix* %arrayidx112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end115, label %for.body105

for.end115:                                       ; preds = %for.body105
  call void @send_field(i8* %0, i32 576, i32 0) #9
  br label %for.inc119

for.inc119:                                       ; preds = %for.inc96, %for.end115, %if.else99
  %inc120 = add nsw i32 %x.0211, 1
  %24 = load i32* @nx, align 4, !tbaa !0
  %cmp32 = icmp slt i32 %inc120, %24
  br i1 %cmp32, label %for.body33, label %for.cond31.for.inc122_crit_edge

for.cond31.for.inc122_crit_edge:                  ; preds = %for.inc119
  %.pre244 = load i32* @ny, align 4, !tbaa !0
  br label %for.inc122

for.inc122:                                       ; preds = %for.cond31.for.inc122_crit_edge, %for.cond31.preheader
  %25 = phi i32 [ %.pre244, %for.cond31.for.inc122_crit_edge ], [ %13, %for.cond31.preheader ]
  %26 = phi i32 [ %24, %for.cond31.for.inc122_crit_edge ], [ %14, %for.cond31.preheader ]
  %currentnode.3.lcssa = phi i32 [ %currentnode.4, %for.cond31.for.inc122_crit_edge ], [ %currentnode.2215, %for.cond31.preheader ]
  %inc123 = add nsw i32 %y.0214, 1
  %cmp29 = icmp slt i32 %inc123, %25
  br i1 %cmp29, label %for.cond31.preheader, label %for.cond28.for.inc125_crit_edge

for.cond28.for.inc125_crit_edge:                  ; preds = %for.inc122
  %.pre242 = load i32* @nz, align 4, !tbaa !0
  br label %for.inc125

for.inc125:                                       ; preds = %for.cond28.for.inc125_crit_edge, %for.cond28.preheader
  %27 = phi i32 [ %.pre242, %for.cond28.for.inc125_crit_edge ], [ %11, %for.cond28.preheader ]
  %28 = phi i32 [ %25, %for.cond28.for.inc125_crit_edge ], [ %12, %for.cond28.preheader ]
  %currentnode.2.lcssa = phi i32 [ %currentnode.3.lcssa, %for.cond28.for.inc125_crit_edge ], [ %currentnode.1219, %for.cond28.preheader ]
  %inc126 = add nsw i32 %z.0218, 1
  %cmp26 = icmp slt i32 %inc126, %27
  br i1 %cmp26, label %for.cond28.preheader, label %for.cond25.for.inc128_crit_edge

for.cond25.for.inc128_crit_edge:                  ; preds = %for.inc125
  %.pre240 = load i32* @nt, align 4, !tbaa !0
  br label %for.inc128

for.inc128:                                       ; preds = %for.cond25.for.inc128_crit_edge, %for.cond25.preheader
  %29 = phi i32 [ %.pre240, %for.cond25.for.inc128_crit_edge ], [ %9, %for.cond25.preheader ]
  %30 = phi i32 [ %27, %for.cond25.for.inc128_crit_edge ], [ %10, %for.cond25.preheader ]
  %currentnode.1.lcssa = phi i32 [ %currentnode.2.lcssa, %for.cond25.for.inc128_crit_edge ], [ %currentnode.0223, %for.cond25.preheader ]
  %inc129 = add nsw i32 %t.0222, 1
  %cmp24 = icmp slt i32 %inc129, %29
  br i1 %cmp24, label %for.cond25.preheader, label %for.end130

for.end130:                                       ; preds = %for.inc128, %if.end23
  call void (...)* @g_sync() #9
  %31 = load i32* @this_node, align 4, !tbaa !0
  %cmp131 = icmp eq i32 %31, 0
  br i1 %cmp131, label %if.then132, label %if.end141

if.then132:                                       ; preds = %for.end130
  %call133 = call i32 @fflush(%struct._IO_FILE* %fp.0) #9
  %filename134 = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 2
  %32 = load i8** %filename134, align 8, !tbaa !3
  %call135 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str152, i64 0, i64 0), i8* %32) #9
  %arraydecay137 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call138 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i8* %arraydecay137) #9
  %call139 = call i32 @fclose(%struct._IO_FILE* %fp.0) #9
  %33 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call140 = call i32 @fflush(%struct._IO_FILE* %33) #9
  br label %if.end141

if.end141:                                        ; preds = %if.then132, %for.end130
  call void @llvm.lifetime.end(i64 576, i8* %0) #5
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @restore_serial(i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @r_serial_i(i8* %filename) #8
  %header = getelementptr inbounds %struct.gauge_file* %call, i64 0, i32 1
  %0 = load %struct.gauge_header** %header, align 8, !tbaa !3
  %magic_number = getelementptr inbounds %struct.gauge_header* %0, i64 0, i32 0
  %1 = load i32* %magic_number, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 1111836489
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @r_serial_arch(%struct.gauge_file* %call) #8
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @r_serial(%struct.gauge_file* %call) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @r_serial_f(%struct.gauge_file* %call) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @restore_parallel(i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @r_parallel_i(i8* %filename) #8
  tail call void @r_parallel(%struct.gauge_file* %call) #8
  tail call void @r_parallel_f(%struct.gauge_file* %call) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @save_serial(i8* %filename) #0 {
entry:
  %call = tail call %struct.gauge_file* @w_serial_i(i8* %filename) #8
  tail call void @w_serial(%struct.gauge_file* %call) #8
  tail call void @w_serial_f(%struct.gauge_file* %call) #8
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @save_parallel(i8* %filename) #0 {
entry:
  %call.i = tail call %struct.gauge_file* @parallel_open(i32 0, i8* %filename) #9
  tail call void @w_parallel(%struct.gauge_file* %call.i) #8
  tail call void @w_parallel_f(%struct.gauge_file* %call.i) #8
  ret %struct.gauge_file* %call.i
}

; Function Attrs: nounwind optsize uwtable
define %struct.gauge_file* @save_checkpoint(i8* %filename) #0 {
entry:
  %call.i = tail call %struct.gauge_file* @parallel_open(i32 1, i8* %filename) #9
  tail call void @w_checkpoint(%struct.gauge_file* %call.i) #8
  tail call void @w_parallel_f(%struct.gauge_file* %call.i) #8
  ret %struct.gauge_file* %call.i
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @save_serial_archive(i8* %filename) #0 {
entry:
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  %chksum = alloca i32, align 4
  %utmp = alloca i32, align 4
  %sums = alloca [30 x i8], align 16
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  %trace = alloca double, align 8
  %0 = bitcast [4 x %struct.su3_matrix]* %lbuf to i8*
  call void @llvm.lifetime.start(i64 576, i8* %0) #5
  %call1 = call %struct.gauge_file* @setup_output_gauge_file() #8
  %header = getelementptr inbounds %struct.gauge_file* %call1, i64 0, i32 1
  %1 = load %struct.gauge_header** %header, align 8, !tbaa !3
  call void @d_plaquette(double* %ssplaq, double* %stplaq) #9
  %2 = load double* %ssplaq, align 8, !tbaa !4
  %3 = load double* %stplaq, align 8, !tbaa !4
  %add = fadd double %2, %3
  %div = fdiv double %add, 6.000000e+00
  store double 0.000000e+00, double* %trace, align 8, !tbaa !4
  store i32 0, i32* %chksum, align 4, !tbaa !0
  %4 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp505 = icmp sgt i32 %4, 0
  br i1 %cmp505, label %for.cond2.preheader.lr.ph, label %for.end39

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %5 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc37
  %i.0507 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc38, %for.inc37 ]
  %s.0506 = phi %struct.site* [ %5, %for.cond2.preheader.lr.ph ], [ %incdec.ptr, %for.inc37 ]
  br label %for.body4

for.body4:                                        ; preds = %for.inc34, %for.cond2.preheader
  %indvars.iv551 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next552, %for.inc34 ]
  %arrayidx = getelementptr inbounds %struct.site* %s.0506, i64 0, i32 8, i64 %indvars.iv551
  %call5 = call { double, double } @trace_su3(%struct.su3_matrix* %arrayidx) #9
  %6 = extractvalue { double, double } %call5, 0
  %7 = load double* %trace, align 8, !tbaa !4
  %add6 = fadd double %7, %6
  store double %add6, double* %trace, align 8, !tbaa !4
  %chksum.promoted502 = load i32* %chksum, align 4, !tbaa !0
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.inc31, %for.body4
  %indvars.iv547 = phi i64 [ 0, %for.body4 ], [ %indvars.iv.next548, %for.inc31 ]
  %add30.lcssa503 = phi i32 [ %chksum.promoted502, %for.body4 ], [ %add30, %for.inc31 ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.cond10.preheader
  %indvars.iv543 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next544, %for.body12 ]
  %add30500 = phi i32 [ %add30.lcssa503, %for.cond10.preheader ], [ %add30, %for.body12 ]
  %real20 = getelementptr inbounds %struct.site* %s.0506, i64 0, i32 8, i64 %indvars.iv551, i32 0, i64 %indvars.iv547, i64 %indvars.iv543, i32 0
  %8 = load double* %real20, align 8, !tbaa !4
  %9 = bitcast double %8 to i64
  %tmpflt.0.extract.trunc = trunc i64 %9 to i32
  %add21 = add i32 %tmpflt.0.extract.trunc, %add30500
  %imag = getelementptr inbounds %struct.site* %s.0506, i64 0, i32 8, i64 %indvars.iv551, i32 0, i64 %indvars.iv547, i64 %indvars.iv543, i32 1
  %10 = load double* %imag, align 8, !tbaa !4
  %11 = bitcast double %10 to i64
  %tmpflt.0.extract.trunc460 = trunc i64 %11 to i32
  %add30 = add i32 %tmpflt.0.extract.trunc460, %add21
  %indvars.iv.next544 = add i64 %indvars.iv543, 1
  %lftr.wideiv545 = trunc i64 %indvars.iv.next544 to i32
  %exitcond546 = icmp eq i32 %lftr.wideiv545, 3
  br i1 %exitcond546, label %for.inc31, label %for.body12

for.inc31:                                        ; preds = %for.body12
  %indvars.iv.next548 = add i64 %indvars.iv547, 1
  %lftr.wideiv549 = trunc i64 %indvars.iv.next548 to i32
  %exitcond550 = icmp eq i32 %lftr.wideiv549, 2
  br i1 %exitcond550, label %for.inc34, label %for.cond10.preheader

for.inc34:                                        ; preds = %for.inc31
  store i32 %add30, i32* %chksum, align 4, !tbaa !0
  %indvars.iv.next552 = add i64 %indvars.iv551, 1
  %lftr.wideiv553 = trunc i64 %indvars.iv.next552 to i32
  %exitcond554 = icmp eq i32 %lftr.wideiv553, 4
  br i1 %exitcond554, label %for.inc37, label %for.body4

for.inc37:                                        ; preds = %for.inc34
  %inc38 = add nsw i32 %i.0507, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0506, i64 1
  %12 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc38, %12
  br i1 %cmp, label %for.cond2.preheader, label %for.end39

for.end39:                                        ; preds = %for.inc37, %entry
  call void @g_doublesum(double* %trace) #9
  %13 = load double* %trace, align 8, !tbaa !4
  %14 = load i32* @volume, align 4, !tbaa !0
  %mul = mul nsw i32 %14, 12
  %conv = sitofp i32 %mul to double
  %div40 = fdiv double %13, %conv
  %call42493 = call i32 (...)* @numnodes() #9
  %cmp43494 = icmp sgt i32 %call42493, 1
  %15 = load i32* @this_node, align 4, !tbaa !0
  %cmp46495 = icmp eq i32 %15, 0
  br i1 %cmp43494, label %for.body45, label %for.end60

for.body45:                                       ; preds = %for.end39, %for.inc58
  %16 = phi i32 [ %21, %for.inc58 ], [ %15, %for.end39 ]
  %cmp46497 = phi i1 [ %cmp46, %for.inc58 ], [ %cmp46495, %for.end39 ]
  %j.0496 = phi i32 [ %inc59, %for.inc58 ], [ 1, %for.end39 ]
  br i1 %cmp46497, label %if.then, label %if.end

if.then:                                          ; preds = %for.body45
  call void @send_field(i8* %0, i32 4, i32 %j.0496) #9
  %.pre560 = load i32* @this_node, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body45
  %17 = phi i32 [ %.pre560, %if.then ], [ %16, %for.body45 ]
  %cmp48 = icmp eq i32 %17, %j.0496
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end
  call void @get_field(i8* %0, i32 4) #9
  call void @send_integer(i32 0, i32* %chksum) #9
  %.pr = load i32* @this_node, align 4, !tbaa !0
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end
  %18 = phi i32 [ %.pr, %if.then50 ], [ %17, %if.end ]
  %cmp53 = icmp eq i32 %18, 0
  br i1 %cmp53, label %if.then55, label %for.inc58

if.then55:                                        ; preds = %if.end52
  call void @receive_integer(i32* %utmp) #9
  %19 = load i32* %utmp, align 4, !tbaa !0
  %20 = load i32* %chksum, align 4, !tbaa !0
  %add56 = add i32 %20, %19
  store i32 %add56, i32* %chksum, align 4, !tbaa !0
  br label %for.inc58

for.inc58:                                        ; preds = %if.end52, %if.then55
  %inc59 = add nsw i32 %j.0496, 1
  %call42 = call i32 (...)* @numnodes() #9
  %cmp43 = icmp slt i32 %inc59, %call42
  %21 = load i32* @this_node, align 4, !tbaa !0
  %cmp46 = icmp eq i32 %21, 0
  br i1 %cmp43, label %for.body45, label %for.end60

for.end60:                                        ; preds = %for.inc58, %for.end39
  %cmp46.lcssa = phi i1 [ %cmp46495, %for.end39 ], [ %cmp46, %for.inc58 ]
  br i1 %cmp46.lcssa, label %if.then63, label %if.end110

if.then63:                                        ; preds = %for.end60
  %call64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str153, i64 0, i64 0), double %div40) #9
  %22 = load i32* %chksum, align 4, !tbaa !0
  %call65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str154, i64 0, i64 0), i32 %22) #9
  %23 = load i32* %chksum, align 4, !tbaa !0
  %call66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str155, i64 0, i64 0), i32 %23) #9
  %call67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str156, i64 0, i64 0), double %div) #9
  %call68 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str157, i64 0, i64 0), i8* %filename) #9
  %call69 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str26, i64 0, i64 0)) #9
  %cmp70 = icmp eq %struct._IO_FILE* %call69, null
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then63
  %call73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str158, i64 0, i64 0), i8* %filename) #9
  call void @terminate(i32 1) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.then63
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str159, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %call69) #5
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str160, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %call69) #5
  %26 = load i32* @nx, align 4, !tbaa !0
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([18 x i8]* @.str161, i64 0, i64 0), i32 %26) #9
  %27 = load i32* @ny, align 4, !tbaa !0
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([18 x i8]* @.str162, i64 0, i64 0), i32 %27) #9
  %28 = load i32* @nz, align 4, !tbaa !0
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([18 x i8]* @.str163, i64 0, i64 0), i32 %28) #9
  %29 = load i32* @nt, align 4, !tbaa !0
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([18 x i8]* @.str164, i64 0, i64 0), i32 %29) #9
  %30 = load i32* %chksum, align 4, !tbaa !0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([15 x i8]* @.str165, i64 0, i64 0), i32 %30) #9
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([20 x i8]* @.str166, i64 0, i64 0), double %div40) #9
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([19 x i8]* @.str167, i64 0, i64 0), double %div) #9
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([18 x i8]* @.str168, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8]* @ensemble_id, i64 0, i64 0)) #9
  %31 = load i32* @sequence_number, align 4, !tbaa !0
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([22 x i8]* @.str169, i64 0, i64 0), i32 %31) #9
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str170, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %call69) #5
  %arraydecay87 = getelementptr inbounds %struct.gauge_header* %1, i64 0, i32 1, i64 0
  %call88 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([11 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i8* %arraydecay87, i32 0, i32 0) #8
  %arraydecay89 = getelementptr inbounds [30 x i8]* %sums, i64 0, i64 0
  %sum29 = getelementptr inbounds %struct.gauge_file* %call1, i64 0, i32 6, i32 1
  %33 = load i32* %sum29, align 4, !tbaa !0
  %sum31 = getelementptr inbounds %struct.gauge_file* %call1, i64 0, i32 6, i32 0
  %34 = load i32* %sum31, align 4, !tbaa !0
  %call91 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay89, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i32 %33, i32 %34) #9
  %call93 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([10 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i8* %arraydecay89, i32 0, i32 0) #8
  %call94 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nx to i8*), i32 0, i32 0) #8
  %call95 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @ny to i8*), i32 0, i32 0) #8
  %call96 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nz to i8*), i32 0, i32 0) #8
  %call97 = call i32 @write_gauge_info_item(%struct._IO_FILE* %call69, i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* bitcast (i32* @nt to i8*), i32 0, i32 0) #8
  call void @write_appl_gauge_info(%struct._IO_FILE* %call69) #9
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str171, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %call69) #5
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %call69) #5
  %37 = load i32* @nx, align 4, !tbaa !0
  %38 = load i32* @ny, align 4, !tbaa !0
  %mul100 = mul nsw i32 %38, %37
  %39 = load i32* @nz, align 4, !tbaa !0
  %mul101 = mul nsw i32 %mul100, %39
  %mul102 = mul nsw i32 %mul101, 48
  %conv103 = sext i32 %mul102 to i64
  %call104 = call noalias i8* @calloc(i64 %conv103, i64 8) #9
  %40 = bitcast i8* %call104 to double*
  %cmp105 = icmp eq i8* %call104, null
  br i1 %cmp105, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end74
  %puts463 = call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str204, i64 0, i64 0))
  call void @terminate(i32 1) #9
  br label %if.end110

if.end110:                                        ; preds = %if.end74, %if.then107, %for.end60
  %outfile.0 = phi %struct._IO_FILE* [ %call69, %if.then107 ], [ %call69, %if.end74 ], [ undef, %for.end60 ]
  %uout.0 = phi double* [ %40, %if.then107 ], [ %40, %if.end74 ], [ undef, %for.end60 ]
  %vol3.0 = phi i32 [ %mul101, %if.then107 ], [ %mul101, %if.end74 ], [ undef, %for.end60 ]
  call void (...)* @g_sync() #9
  %41 = load i32* @nt, align 4, !tbaa !0
  %cmp112490 = icmp sgt i32 %41, 0
  br i1 %cmp112490, label %for.cond115.preheader.lr.ph, label %for.end323

for.cond115.preheader.lr.ph:                      ; preds = %if.end110
  %42 = bitcast double* %uout.0 to i32*
  %mul308 = mul nsw i32 %vol3.0, 48
  %43 = bitcast double* %uout.0 to i8*
  %conv311 = sext i32 %mul308 to i64
  %mul312 = shl nsw i64 %conv311, 3
  br label %for.cond115.preheader

for.cond115.preheader:                            ; preds = %for.inc321, %for.cond115.preheader.lr.ph
  %currentnode.0492 = phi i32 [ 0, %for.cond115.preheader.lr.ph ], [ %currentnode.1.lcssa, %for.inc321 ]
  %tslice.0491 = phi i32 [ 0, %for.cond115.preheader.lr.ph ], [ %inc322, %for.inc321 ]
  %44 = load i32* @nz, align 4, !tbaa !0
  %cmp116485 = icmp sgt i32 %44, 0
  br i1 %cmp116485, label %for.cond119.preheader.lr.ph, label %for.end303

for.cond119.preheader.lr.ph:                      ; preds = %for.cond115.preheader
  %.pre = load i32* @ny, align 4, !tbaa !0
  br label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond119.preheader.lr.ph, %for.inc301
  %45 = phi i32 [ %44, %for.cond119.preheader.lr.ph ], [ %78, %for.inc301 ]
  %46 = phi i32 [ %.pre, %for.cond119.preheader.lr.ph ], [ %79, %for.inc301 ]
  %currentnode.1488 = phi i32 [ %currentnode.0492, %for.cond119.preheader.lr.ph ], [ %currentnode.2.lcssa, %for.inc301 ]
  %j.1487 = phi i32 [ 0, %for.cond119.preheader.lr.ph ], [ %j.2.lcssa, %for.inc301 ]
  %z.0486 = phi i32 [ 0, %for.cond119.preheader.lr.ph ], [ %inc302, %for.inc301 ]
  %cmp120479 = icmp sgt i32 %46, 0
  br i1 %cmp120479, label %for.cond123.preheader.lr.ph, label %for.inc301

for.cond123.preheader.lr.ph:                      ; preds = %for.cond119.preheader
  %.pre556 = load i32* @nx, align 4, !tbaa !0
  br label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond123.preheader.lr.ph, %for.inc298
  %47 = phi i32 [ %46, %for.cond123.preheader.lr.ph ], [ %76, %for.inc298 ]
  %48 = phi i32 [ %.pre556, %for.cond123.preheader.lr.ph ], [ %77, %for.inc298 ]
  %currentnode.2482 = phi i32 [ %currentnode.1488, %for.cond123.preheader.lr.ph ], [ %currentnode.3.lcssa, %for.inc298 ]
  %j.2481 = phi i32 [ %j.1487, %for.cond123.preheader.lr.ph ], [ %j.3.lcssa, %for.inc298 ]
  %y.0480 = phi i32 [ 0, %for.cond123.preheader.lr.ph ], [ %inc299, %for.inc298 ]
  %cmp124474 = icmp sgt i32 %48, 0
  br i1 %cmp124474, label %for.body126, label %for.inc298

for.body126:                                      ; preds = %for.cond123.preheader, %for.inc295
  %currentnode.3477 = phi i32 [ %currentnode.4, %for.inc295 ], [ %currentnode.2482, %for.cond123.preheader ]
  %j.3476 = phi i32 [ %j.4, %for.inc295 ], [ %j.2481, %for.cond123.preheader ]
  %x.0475 = phi i32 [ %inc296, %for.inc295 ], [ 0, %for.cond123.preheader ]
  %call127 = call i32 @node_number(i32 %x.0475, i32 %y.0480, i32 %z.0486, i32 %tslice.0491) #9
  %cmp128 = icmp eq i32 %call127, %currentnode.3477
  br i1 %cmp128, label %if.end146thread-pre-split, label %if.then130

if.then130:                                       ; preds = %for.body126
  %49 = load i32* @this_node, align 4, !tbaa !0
  %cmp131 = icmp ne i32 %49, 0
  %cmp133 = icmp eq i32 %call127, 0
  %or.cond464 = or i1 %cmp131, %cmp133
  br i1 %or.cond464, label %if.end137, label %if.then135

if.then135:                                       ; preds = %if.then130
  call void @send_field(i8* %0, i32 4, i32 %call127) #9
  %.pre559 = load i32* @this_node, align 4, !tbaa !0
  br label %if.end137

if.end137:                                        ; preds = %if.then130, %if.then135
  %50 = phi i32 [ %49, %if.then130 ], [ %.pre559, %if.then135 ]
  %cmp138 = icmp eq i32 %50, %call127
  %cmp141 = icmp ne i32 %call127, 0
  %or.cond = and i1 %cmp138, %cmp141
  br i1 %or.cond, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.end137
  call void @get_field(i8* %0, i32 4) #9
  br label %if.end146thread-pre-split

if.end146thread-pre-split:                        ; preds = %for.body126, %if.then143
  %currentnode.4.ph = phi i32 [ %call127, %if.then143 ], [ %currentnode.3477, %for.body126 ]
  %.pr465 = load i32* @this_node, align 4, !tbaa !0
  br label %if.end146

if.end146:                                        ; preds = %if.end146thread-pre-split, %if.end137
  %51 = phi i32 [ %.pr465, %if.end146thread-pre-split ], [ %50, %if.end137 ]
  %currentnode.4 = phi i32 [ %currentnode.4.ph, %if.end146thread-pre-split ], [ %call127, %if.end137 ]
  %cmp147 = icmp eq i32 %51, 0
  br i1 %cmp147, label %if.then149, label %if.else273

if.then149:                                       ; preds = %if.end146
  %cmp150 = icmp eq i32 %currentnode.4, 0
  br i1 %cmp150, label %if.then152, label %if.else

if.then152:                                       ; preds = %if.then149
  %call153 = call i32 @node_index(i32 %x.0475, i32 %y.0480, i32 %z.0486, i32 %tslice.0491) #9
  %idxprom154 = sext i32 %call153 to i64
  %52 = load %struct.site** @lattice, align 8, !tbaa !3
  %mul182 = mul nsw i32 %j.3476, 48
  br label %for.cond160.preheader

for.cond160.preheader:                            ; preds = %for.inc211, %if.then152
  %indvars.iv537 = phi i64 [ 0, %if.then152 ], [ %indvars.iv.next538, %for.inc211 ]
  %53 = mul nsw i64 %indvars.iv537, 12
  %54 = trunc i64 %53 to i32
  %add181 = add i32 %54, %mul182
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %for.inc208, %for.cond160.preheader
  %indvars.iv532 = phi i64 [ 0, %for.cond160.preheader ], [ %indvars.iv.next533, %for.inc208 ]
  %55 = mul nsw i64 %indvars.iv532, 3
  br label %for.body167

for.body167:                                      ; preds = %for.body167, %for.cond164.preheader
  %indvars.iv525 = phi i64 [ 0, %for.cond164.preheader ], [ %indvars.iv.next526, %for.body167 ]
  %real176 = getelementptr inbounds %struct.site* %52, i64 %idxprom154, i32 8, i64 %indvars.iv537, i32 0, i64 %indvars.iv532, i64 %indvars.iv525, i32 0
  %56 = load double* %real176, align 8, !tbaa !4
  %57 = add nsw i64 %indvars.iv525, %55
  %58 = shl nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %add183 = add i32 %add181, %59
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double* %uout.0, i64 %idxprom184
  store double %56, double* %arrayidx185, align 8, !tbaa !4
  %imag194 = getelementptr inbounds %struct.site* %52, i64 %idxprom154, i32 8, i64 %indvars.iv537, i32 0, i64 %indvars.iv532, i64 %indvars.iv525, i32 1
  %60 = load double* %imag194, align 8, !tbaa !4
  %61 = or i64 %58, 1
  %62 = trunc i64 %61 to i32
  %add202 = add i32 %add181, %62
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds double* %uout.0, i64 %idxprom203
  store double %60, double* %arrayidx204, align 8, !tbaa !4
  %indvars.iv.next526 = add i64 %indvars.iv525, 1
  %lftr.wideiv530 = trunc i64 %indvars.iv.next526 to i32
  %exitcond531 = icmp eq i32 %lftr.wideiv530, 3
  br i1 %exitcond531, label %for.inc208, label %for.body167

for.inc208:                                       ; preds = %for.body167
  %indvars.iv.next533 = add i64 %indvars.iv532, 1
  %lftr.wideiv535 = trunc i64 %indvars.iv.next533 to i32
  %exitcond536 = icmp eq i32 %lftr.wideiv535, 2
  br i1 %exitcond536, label %for.inc211, label %for.cond164.preheader

for.inc211:                                       ; preds = %for.inc208
  %indvars.iv.next538 = add i64 %indvars.iv537, 1
  %lftr.wideiv540 = trunc i64 %indvars.iv.next538 to i32
  %exitcond541 = icmp eq i32 %lftr.wideiv540, 4
  br i1 %exitcond541, label %if.end271, label %for.cond160.preheader

if.else:                                          ; preds = %if.then149
  call void @get_field(i8* %0, i32 576) #9
  %mul240 = mul nsw i32 %j.3476, 48
  br label %for.cond219.preheader

for.cond219.preheader:                            ; preds = %for.inc268, %if.else
  %indvars.iv520 = phi i64 [ 0, %if.else ], [ %indvars.iv.next521, %for.inc268 ]
  %63 = mul nsw i64 %indvars.iv520, 12
  %64 = trunc i64 %63 to i32
  %add239 = add i32 %64, %mul240
  br label %for.cond223.preheader

for.cond223.preheader:                            ; preds = %for.inc265, %for.cond219.preheader
  %indvars.iv515 = phi i64 [ 0, %for.cond219.preheader ], [ %indvars.iv.next516, %for.inc265 ]
  %65 = mul nsw i64 %indvars.iv515, 3
  br label %for.body226

for.body226:                                      ; preds = %for.body226, %for.cond223.preheader
  %indvars.iv508 = phi i64 [ 0, %for.cond223.preheader ], [ %indvars.iv.next509, %for.body226 ]
  %real234 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv520, i32 0, i64 %indvars.iv515, i64 %indvars.iv508, i32 0
  %66 = load double* %real234, align 16, !tbaa !4
  %67 = add nsw i64 %indvars.iv508, %65
  %68 = shl nsw i64 %67, 1
  %69 = trunc i64 %68 to i32
  %add241 = add i32 %add239, %69
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds double* %uout.0, i64 %idxprom242
  store double %66, double* %arrayidx243, align 8, !tbaa !4
  %imag251 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv520, i32 0, i64 %indvars.iv515, i64 %indvars.iv508, i32 1
  %70 = load double* %imag251, align 8, !tbaa !4
  %71 = or i64 %68, 1
  %72 = trunc i64 %71 to i32
  %add259 = add i32 %add239, %72
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds double* %uout.0, i64 %idxprom260
  store double %70, double* %arrayidx261, align 8, !tbaa !4
  %indvars.iv.next509 = add i64 %indvars.iv508, 1
  %lftr.wideiv513 = trunc i64 %indvars.iv.next509 to i32
  %exitcond514 = icmp eq i32 %lftr.wideiv513, 3
  br i1 %exitcond514, label %for.inc265, label %for.body226

for.inc265:                                       ; preds = %for.body226
  %indvars.iv.next516 = add i64 %indvars.iv515, 1
  %lftr.wideiv518 = trunc i64 %indvars.iv.next516 to i32
  %exitcond519 = icmp eq i32 %lftr.wideiv518, 2
  br i1 %exitcond519, label %for.inc268, label %for.cond223.preheader

for.inc268:                                       ; preds = %for.inc265
  %indvars.iv.next521 = add i64 %indvars.iv520, 1
  %lftr.wideiv523 = trunc i64 %indvars.iv.next521 to i32
  %exitcond524 = icmp eq i32 %lftr.wideiv523, 4
  br i1 %exitcond524, label %if.end271, label %for.cond219.preheader

if.end271:                                        ; preds = %for.inc211, %for.inc268
  %inc272 = add nsw i32 %j.3476, 1
  br label %for.inc295

if.else273:                                       ; preds = %if.end146
  %cmp274 = icmp eq i32 %51, %currentnode.4
  br i1 %cmp274, label %if.then276, label %for.inc295

if.then276:                                       ; preds = %if.else273
  %call277 = call i32 @node_index(i32 %x.0475, i32 %y.0480, i32 %z.0486, i32 %tslice.0491) #9
  %idxprom285 = sext i32 %call277 to i64
  %.pre558 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.body281

for.body281:                                      ; preds = %for.body281, %if.then276
  %indvars.iv = phi i64 [ 0, %if.then276 ], [ %indvars.iv.next, %for.body281 ]
  %arrayidx283 = getelementptr inbounds [4 x %struct.su3_matrix]* %lbuf, i64 0, i64 %indvars.iv
  %arrayidx288 = getelementptr inbounds %struct.site* %.pre558, i64 %idxprom285, i32 8, i64 %indvars.iv
  %73 = bitcast %struct.su3_matrix* %arrayidx283 to i8*
  %74 = bitcast %struct.su3_matrix* %arrayidx288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 144, i32 8, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end291, label %for.body281

for.end291:                                       ; preds = %for.body281
  call void @send_field(i8* %0, i32 576, i32 0) #9
  br label %for.inc295

for.inc295:                                       ; preds = %if.end271, %for.end291, %if.else273
  %j.4 = phi i32 [ %inc272, %if.end271 ], [ %j.3476, %for.end291 ], [ %j.3476, %if.else273 ]
  %inc296 = add nsw i32 %x.0475, 1
  %75 = load i32* @nx, align 4, !tbaa !0
  %cmp124 = icmp slt i32 %inc296, %75
  br i1 %cmp124, label %for.body126, label %for.cond123.for.inc298_crit_edge

for.cond123.for.inc298_crit_edge:                 ; preds = %for.inc295
  %.pre557 = load i32* @ny, align 4, !tbaa !0
  br label %for.inc298

for.inc298:                                       ; preds = %for.cond123.for.inc298_crit_edge, %for.cond123.preheader
  %76 = phi i32 [ %.pre557, %for.cond123.for.inc298_crit_edge ], [ %47, %for.cond123.preheader ]
  %77 = phi i32 [ %75, %for.cond123.for.inc298_crit_edge ], [ %48, %for.cond123.preheader ]
  %currentnode.3.lcssa = phi i32 [ %currentnode.4, %for.cond123.for.inc298_crit_edge ], [ %currentnode.2482, %for.cond123.preheader ]
  %j.3.lcssa = phi i32 [ %j.4, %for.cond123.for.inc298_crit_edge ], [ %j.2481, %for.cond123.preheader ]
  %inc299 = add nsw i32 %y.0480, 1
  %cmp120 = icmp slt i32 %inc299, %76
  br i1 %cmp120, label %for.cond123.preheader, label %for.cond119.for.inc301_crit_edge

for.cond119.for.inc301_crit_edge:                 ; preds = %for.inc298
  %.pre555 = load i32* @nz, align 4, !tbaa !0
  br label %for.inc301

for.inc301:                                       ; preds = %for.cond119.for.inc301_crit_edge, %for.cond119.preheader
  %78 = phi i32 [ %.pre555, %for.cond119.for.inc301_crit_edge ], [ %45, %for.cond119.preheader ]
  %79 = phi i32 [ %76, %for.cond119.for.inc301_crit_edge ], [ %46, %for.cond119.preheader ]
  %currentnode.2.lcssa = phi i32 [ %currentnode.3.lcssa, %for.cond119.for.inc301_crit_edge ], [ %currentnode.1488, %for.cond119.preheader ]
  %j.2.lcssa = phi i32 [ %j.3.lcssa, %for.cond119.for.inc301_crit_edge ], [ %j.1487, %for.cond119.preheader ]
  %inc302 = add nsw i32 %z.0486, 1
  %cmp116 = icmp slt i32 %inc302, %78
  br i1 %cmp116, label %for.cond119.preheader, label %for.end303

for.end303:                                       ; preds = %for.inc301, %for.cond115.preheader
  %currentnode.1.lcssa = phi i32 [ %currentnode.0492, %for.cond115.preheader ], [ %currentnode.2.lcssa, %for.inc301 ]
  %80 = load i32* @this_node, align 4, !tbaa !0
  %cmp304 = icmp eq i32 %80, 0
  br i1 %cmp304, label %if.then307, label %for.inc321

if.then307:                                       ; preds = %for.end303
  call void @byterevn(i32* %42, i32 %mul308) #9
  %call313 = call i64 @fwrite(i8* %43, i64 %mul312, i64 1, %struct._IO_FILE* %outfile.0) #9
  %cmp314 = icmp eq i64 %call313, 1
  br i1 %cmp314, label %if.end318, label %if.then316

if.then316:                                       ; preds = %if.then307
  %puts = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str203, i64 0, i64 0))
  br label %if.end318

if.end318:                                        ; preds = %if.then307, %if.then316
  %call319 = call i32 @fflush(%struct._IO_FILE* %outfile.0) #9
  br label %for.inc321

for.inc321:                                       ; preds = %for.end303, %if.end318
  %inc322 = add nsw i32 %tslice.0491, 1
  %81 = load i32* @nt, align 4, !tbaa !0
  %cmp112 = icmp slt i32 %inc322, %81
  br i1 %cmp112, label %for.cond115.preheader, label %for.end323

for.end323:                                       ; preds = %for.inc321, %if.end110
  %82 = load i32* @this_node, align 4, !tbaa !0
  %cmp324 = icmp eq i32 %82, 0
  br i1 %cmp324, label %if.then326, label %if.end329

if.then326:                                       ; preds = %for.end323
  %call327 = call i32 @fclose(%struct._IO_FILE* %outfile.0) #9
  %call328 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str174, i64 0, i64 0), i8* %filename) #9
  %83 = bitcast double* %uout.0 to i8*
  call void @free(i8* %83) #9
  br label %if.end329

if.end329:                                        ; preds = %if.then326, %for.end323
  call void (...)* @g_sync() #9
  call void @llvm.lifetime.end(i64 576, i8* %0) #5
  ret %struct.gauge_file* %call1
}

; Function Attrs: optsize
declare void @d_plaquette(double*, double*) #3

; Function Attrs: optsize
declare { double, double } @trace_su3(%struct.su3_matrix*) #3

; Function Attrs: optsize
declare void @g_doublesum(double*) #3

; Function Attrs: optsize
declare i32 @numnodes(...) #3

; Function Attrs: optsize
declare void @send_integer(i32, i32*) #3

; Function Attrs: optsize
declare void @receive_integer(i32*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct.gauge_file* @save_parallel_archive(i8* nocapture %filename) #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str205, i64 0, i64 0))
  ret %struct.gauge_file* null
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @putchar(i32) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{i64 0, i64 144, metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
