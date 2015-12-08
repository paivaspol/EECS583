; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/dump.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type { [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i32, i32, %struct.sv*, %struct.sv* }
%struct.reg_data = type { i32, i8*, [1 x i8*] }
%struct.anon = type { i8, i8* }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@PL_dumpindent = external global i32
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_main_root = external global %struct.op*
@PL_defstash = external global %struct.hv*
@.str2 = private unnamed_addr constant [11 x i8] c"\0ASUB %s = \00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"(xsub 0x%lx %d)\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"<undef>\0A\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"\0AFORMAT %s = \00", align 1
@PL_eval_root = external global %struct.op*
@.str6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"\5C%o\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"WILD\00", align 1
@PL_sv_undef = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_sv_yes = external global %struct.sv
@PL_sv_placeholder = external global %struct.sv
@.str19 = private unnamed_addr constant [9 x i8] c"SV_UNDEF\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"SV_NO\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"SV_YES\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"SV_PLACEHOLDER\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PL_debug = external global i32
@PL_tmps_ix = external global i32
@PL_tmps_stack = external global %struct.sv**
@.str25 = private unnamed_addr constant [8 x i8] c"<%lu%s>\00", align 1
@.str26 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"<T>\00", align 1
@.str28 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"FREED\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"RV\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"PVIV\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"PVNV\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"PVMG\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"PVLV\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"CV(%s)\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"CV()\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str49 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str50 = private unnamed_addr constant [13 x i8] c" [UTF8 \22%s\22]\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"(%g)\00", align 1
@.str52 = private unnamed_addr constant [6 x i8] c"(%lu)\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"(%ld)\00", align 1
@.str54 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str55 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"{}\0A\00", align 1
@.str57 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str58 = private unnamed_addr constant [18 x i8] c"PMf_PRE %c%s%c%s\0A\00", align 1
@.str59 = private unnamed_addr constant [11 x i8] c" (RUNTIME)\00", align 1
@.str60 = private unnamed_addr constant [19 x i8] c"PMf_PRE (RUNTIME)\0A\00", align 1
@.str61 = private unnamed_addr constant [12 x i8] c"PMf_REPL = \00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c",USED\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c",TAINTED\00", align 1
@.str64 = private unnamed_addr constant [6 x i8] c",ONCE\00", align 1
@.str65 = private unnamed_addr constant [11 x i8] c",SCANFIRST\00", align 1
@.str66 = private unnamed_addr constant [5 x i8] c",ALL\00", align 1
@.str67 = private unnamed_addr constant [11 x i8] c",SKIPWHITE\00", align 1
@.str68 = private unnamed_addr constant [7 x i8] c",CONST\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c",KEEP\00", align 1
@.str70 = private unnamed_addr constant [8 x i8] c",GLOBAL\00", align 1
@.str71 = private unnamed_addr constant [10 x i8] c",CONTINUE\00", align 1
@.str72 = private unnamed_addr constant [9 x i8] c",RETAINT\00", align 1
@.str73 = private unnamed_addr constant [6 x i8] c",EVAL\00", align 1
@.str74 = private unnamed_addr constant [16 x i8] c"PMFLAGS = (%s)\0A\00", align 1
@.str75 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str76 = private unnamed_addr constant [5 x i8] c"%-4d\00", align 1
@.str77 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str78 = private unnamed_addr constant [20 x i8] c"%*sTYPE = %s  ===> \00", align 1
@PL_op_name = external global [0 x i8*]
@.str79 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str82 = private unnamed_addr constant [12 x i8] c"  (was %s)\0A\00", align 1
@.str83 = private unnamed_addr constant [12 x i8] c"LINE = %lu\0A\00", align 1
@.str84 = private unnamed_addr constant [16 x i8] c"PACKAGE = \22%s\22\0A\00", align 1
@.str85 = private unnamed_addr constant [14 x i8] c"LABEL = \22%s\22\0A\00", align 1
@.str86 = private unnamed_addr constant [12 x i8] c"TARG = %ld\0A\00", align 1
@.str87 = private unnamed_addr constant [6 x i8] c",VOID\00", align 1
@.str88 = private unnamed_addr constant [8 x i8] c",SCALAR\00", align 1
@.str89 = private unnamed_addr constant [6 x i8] c",LIST\00", align 1
@.str90 = private unnamed_addr constant [9 x i8] c",UNKNOWN\00", align 1
@.str91 = private unnamed_addr constant [6 x i8] c",KIDS\00", align 1
@.str92 = private unnamed_addr constant [8 x i8] c",PARENS\00", align 1
@.str93 = private unnamed_addr constant [9 x i8] c",STACKED\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c",REF\00", align 1
@.str95 = private unnamed_addr constant [5 x i8] c",MOD\00", align 1
@.str96 = private unnamed_addr constant [9 x i8] c",SPECIAL\00", align 1
@.str97 = private unnamed_addr constant [14 x i8] c"FLAGS = (%s)\0A\00", align 1
@PL_opargs = external global [0 x i32]
@.str98 = private unnamed_addr constant [11 x i8] c",TARGET_MY\00", align 1
@.str99 = private unnamed_addr constant [12 x i8] c",REFCOUNTED\00", align 1
@.str100 = private unnamed_addr constant [8 x i8] c",COMMON\00", align 1
@.str101 = private unnamed_addr constant [6 x i8] c",HASH\00", align 1
@.str102 = private unnamed_addr constant [11 x i8] c",BACKWARDS\00", align 1
@.str103 = private unnamed_addr constant [8 x i8] c",SQUASH\00", align 1
@.str104 = private unnamed_addr constant [8 x i8] c",DELETE\00", align 1
@.str105 = private unnamed_addr constant [12 x i8] c",COMPLEMENT\00", align 1
@.str106 = private unnamed_addr constant [11 x i8] c",IDENTICAL\00", align 1
@.str107 = private unnamed_addr constant [7 x i8] c",GROWS\00", align 1
@.str108 = private unnamed_addr constant [8 x i8] c",DOLIST\00", align 1
@.str109 = private unnamed_addr constant [7 x i8] c",AMPER\00", align 1
@.str110 = private unnamed_addr constant [4 x i8] c",DB\00", align 1
@.str111 = private unnamed_addr constant [9 x i8] c",HASTARG\00", align 1
@.str112 = private unnamed_addr constant [9 x i8] c",NOPAREN\00", align 1
@.str113 = private unnamed_addr constant [8 x i8] c",INARGS\00", align 1
@.str114 = private unnamed_addr constant [7 x i8] c",NOMOD\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c",SV\00", align 1
@.str116 = private unnamed_addr constant [4 x i8] c",AV\00", align 1
@.str117 = private unnamed_addr constant [4 x i8] c",HV\00", align 1
@.str118 = private unnamed_addr constant [13 x i8] c",MAYBE_LVSUB\00", align 1
@.str119 = private unnamed_addr constant [12 x i8] c",LVAL_DEFER\00", align 1
@.str120 = private unnamed_addr constant [13 x i8] c",STRICT_REFS\00", align 1
@.str121 = private unnamed_addr constant [11 x i8] c",OUR_INTRO\00", align 1
@.str122 = private unnamed_addr constant [6 x i8] c",BARE\00", align 1
@.str123 = private unnamed_addr constant [8 x i8] c",STRICT\00", align 1
@.str124 = private unnamed_addr constant [9 x i8] c",ARYBASE\00", align 1
@.str125 = private unnamed_addr constant [9 x i8] c",WARNING\00", align 1
@.str126 = private unnamed_addr constant [9 x i8] c",ENTERED\00", align 1
@.str127 = private unnamed_addr constant [9 x i8] c",LINENUM\00", align 1
@.str128 = private unnamed_addr constant [7 x i8] c",INTRO\00", align 1
@.str129 = private unnamed_addr constant [10 x i8] c",EARLY_CV\00", align 1
@.str130 = private unnamed_addr constant [9 x i8] c",GUESSED\00", align 1
@.str131 = private unnamed_addr constant [7 x i8] c",SLICE\00", align 1
@.str132 = private unnamed_addr constant [12 x i8] c",EXISTS_SUB\00", align 1
@.str133 = private unnamed_addr constant [9 x i8] c",NUMERIC\00", align 1
@.str134 = private unnamed_addr constant [9 x i8] c",INTEGER\00", align 1
@.str135 = private unnamed_addr constant [9 x i8] c",REVERSE\00", align 1
@.str136 = private unnamed_addr constant [7 x i8] c",SVREF\00", align 1
@.str137 = private unnamed_addr constant [8 x i8] c",IN_RAW\00", align 1
@.str138 = private unnamed_addr constant [9 x i8] c",IN_CRLF\00", align 1
@.str139 = private unnamed_addr constant [9 x i8] c",OUT_RAW\00", align 1
@.str140 = private unnamed_addr constant [10 x i8] c",OUT_CRLF\00", align 1
@.str141 = private unnamed_addr constant [13 x i8] c",EXIT_VMSISH\00", align 1
@.str142 = private unnamed_addr constant [13 x i8] c",HUSH_VMSISH\00", align 1
@.str143 = private unnamed_addr constant [11 x i8] c",FT_ACCESS\00", align 1
@.str144 = private unnamed_addr constant [16 x i8] c"PRIVATE = (%s)\0A\00", align 1
@PL_op = external global %struct.op*
@.str147 = private unnamed_addr constant [9 x i8] c"SV = %s\0A\00", align 1
@.str148 = private unnamed_addr constant [11 x i8] c"REDO ===> \00", align 1
@.str149 = private unnamed_addr constant [11 x i8] c"NEXT ===> \00", align 1
@.str150 = private unnamed_addr constant [11 x i8] c"LAST ===> \00", align 1
@.str151 = private unnamed_addr constant [12 x i8] c"OTHER ===> \00", align 1
@.str152 = private unnamed_addr constant [14 x i8] c"REFCNT = %lu\0A\00", align 1
@.str153 = private unnamed_addr constant [13 x i8] c"GV_NAME = %s\00", align 1
@.str154 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@.str155 = private unnamed_addr constant [17 x i8] c"  MAGIC = 0x%lx\0A\00", align 1
@PL_vtbl_sv = external global %struct.mgvtbl
@.str156 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_vtbl_env = external global %struct.mgvtbl
@.str157 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@PL_vtbl_envelem = external global %struct.mgvtbl
@.str158 = private unnamed_addr constant [8 x i8] c"envelem\00", align 1
@PL_vtbl_sig = external global %struct.mgvtbl
@.str159 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@PL_vtbl_sigelem = external global %struct.mgvtbl
@.str160 = private unnamed_addr constant [8 x i8] c"sigelem\00", align 1
@PL_vtbl_pack = external global %struct.mgvtbl
@.str161 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@PL_vtbl_packelem = external global %struct.mgvtbl
@.str162 = private unnamed_addr constant [9 x i8] c"packelem\00", align 1
@PL_vtbl_dbline = external global %struct.mgvtbl
@.str163 = private unnamed_addr constant [7 x i8] c"dbline\00", align 1
@PL_vtbl_isa = external global %struct.mgvtbl
@.str164 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@PL_vtbl_arylen = external global %struct.mgvtbl
@.str165 = private unnamed_addr constant [7 x i8] c"arylen\00", align 1
@PL_vtbl_glob = external global %struct.mgvtbl
@.str166 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_vtbl_mglob = external global %struct.mgvtbl
@.str167 = private unnamed_addr constant [6 x i8] c"mglob\00", align 1
@PL_vtbl_nkeys = external global %struct.mgvtbl
@.str168 = private unnamed_addr constant [6 x i8] c"nkeys\00", align 1
@PL_vtbl_taint = external global %struct.mgvtbl
@.str169 = private unnamed_addr constant [6 x i8] c"taint\00", align 1
@PL_vtbl_substr = external global %struct.mgvtbl
@.str170 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@PL_vtbl_vec = external global %struct.mgvtbl
@.str171 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@PL_vtbl_pos = external global %struct.mgvtbl
@.str172 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@PL_vtbl_bm = external global %struct.mgvtbl
@.str173 = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@PL_vtbl_fm = external global %struct.mgvtbl
@.str174 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@PL_vtbl_uvar = external global %struct.mgvtbl
@.str175 = private unnamed_addr constant [5 x i8] c"uvar\00", align 1
@PL_vtbl_defelem = external global %struct.mgvtbl
@.str176 = private unnamed_addr constant [8 x i8] c"defelem\00", align 1
@PL_vtbl_amagic = external global %struct.mgvtbl
@.str177 = private unnamed_addr constant [7 x i8] c"amagic\00", align 1
@PL_vtbl_amagicelem = external global %struct.mgvtbl
@.str178 = private unnamed_addr constant [11 x i8] c"amagicelem\00", align 1
@PL_vtbl_backref = external global %struct.mgvtbl
@.str179 = private unnamed_addr constant [8 x i8] c"backref\00", align 1
@PL_vtbl_utf8 = external global %struct.mgvtbl
@.str180 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str181 = private unnamed_addr constant [30 x i8] c"    MG_VIRTUAL = &PL_vtbl_%s\0A\00", align 1
@.str182 = private unnamed_addr constant [24 x i8] c"    MG_VIRTUAL = 0x%lx\0A\00", align 1
@.str183 = private unnamed_addr constant [20 x i8] c"    MG_VIRTUAL = 0\0A\00", align 1
@.str184 = private unnamed_addr constant [21 x i8] c"    MG_PRIVATE = %d\0A\00", align 1
@magic_names = internal unnamed_addr constant [40 x %struct.anon] [%struct.anon { i8 0, i8* getelementptr inbounds ([7 x i8]* @.str378, i32 0, i32 0) }, %struct.anon { i8 35, i8* getelementptr inbounds ([10 x i8]* @.str379, i32 0, i32 0) }, %struct.anon { i8 42, i8* getelementptr inbounds ([8 x i8]* @.str380, i32 0, i32 0) }, %struct.anon { i8 46, i8* getelementptr inbounds ([7 x i8]* @.str381, i32 0, i32 0) }, %struct.anon { i8 60, i8* getelementptr inbounds ([11 x i8]* @.str382, i32 0, i32 0) }, %struct.anon { i8 65, i8* getelementptr inbounds ([12 x i8]* @.str383, i32 0, i32 0) }, %struct.anon { i8 66, i8* getelementptr inbounds ([6 x i8]* @.str384, i32 0, i32 0) }, %struct.anon { i8 68, i8* getelementptr inbounds ([11 x i8]* @.str385, i32 0, i32 0) }, %struct.anon { i8 69, i8* getelementptr inbounds ([7 x i8]* @.str386, i32 0, i32 0) }, %struct.anon { i8 73, i8* getelementptr inbounds ([7 x i8]* @.str387, i32 0, i32 0) }, %struct.anon { i8 76, i8* getelementptr inbounds ([10 x i8]* @.str388, i32 0, i32 0) }, %struct.anon { i8 78, i8* getelementptr inbounds ([10 x i8]* @.str389, i32 0, i32 0) }, %struct.anon { i8 80, i8* getelementptr inbounds ([8 x i8]* @.str390, i32 0, i32 0) }, %struct.anon { i8 83, i8* getelementptr inbounds ([7 x i8]* @.str391, i32 0, i32 0) }, %struct.anon { i8 85, i8* getelementptr inbounds ([8 x i8]* @.str392, i32 0, i32 0) }, %struct.anon { i8 97, i8* getelementptr inbounds ([17 x i8]* @.str393, i32 0, i32 0) }, %struct.anon { i8 99, i8* getelementptr inbounds ([18 x i8]* @.str394, i32 0, i32 0) }, %struct.anon { i8 100, i8* getelementptr inbounds ([12 x i8]* @.str395, i32 0, i32 0) }, %struct.anon { i8 101, i8* getelementptr inbounds ([11 x i8]* @.str396, i32 0, i32 0) }, %struct.anon { i8 102, i8* getelementptr inbounds ([6 x i8]* @.str397, i32 0, i32 0) }, %struct.anon { i8 103, i8* getelementptr inbounds ([16 x i8]* @.str398, i32 0, i32 0) }, %struct.anon { i8 105, i8* getelementptr inbounds ([11 x i8]* @.str399, i32 0, i32 0) }, %struct.anon { i8 107, i8* getelementptr inbounds ([9 x i8]* @.str400, i32 0, i32 0) }, %struct.anon { i8 108, i8* getelementptr inbounds ([10 x i8]* @.str401, i32 0, i32 0) }, %struct.anon { i8 109, i8* getelementptr inbounds ([9 x i8]* @.str402, i32 0, i32 0) }, %struct.anon { i8 110, i8* getelementptr inbounds ([17 x i8]* @.str403, i32 0, i32 0) }, %struct.anon { i8 111, i8* getelementptr inbounds ([12 x i8]* @.str404, i32 0, i32 0) }, %struct.anon { i8 112, i8* getelementptr inbounds ([12 x i8]* @.str405, i32 0, i32 0) }, %struct.anon { i8 113, i8* getelementptr inbounds ([14 x i8]* @.str406, i32 0, i32 0) }, %struct.anon { i8 114, i8* getelementptr inbounds ([6 x i8]* @.str407, i32 0, i32 0) }, %struct.anon { i8 115, i8* getelementptr inbounds ([11 x i8]* @.str408, i32 0, i32 0) }, %struct.anon { i8 116, i8* getelementptr inbounds ([9 x i8]* @.str409, i32 0, i32 0) }, %struct.anon { i8 117, i8* getelementptr inbounds ([13 x i8]* @.str410, i32 0, i32 0) }, %struct.anon { i8 118, i8* getelementptr inbounds ([7 x i8]* @.str411, i32 0, i32 0) }, %struct.anon { i8 86, i8* getelementptr inbounds ([12 x i8]* @.str412, i32 0, i32 0) }, %struct.anon { i8 119, i8* getelementptr inbounds ([8 x i8]* @.str413, i32 0, i32 0) }, %struct.anon { i8 120, i8* getelementptr inbounds ([10 x i8]* @.str414, i32 0, i32 0) }, %struct.anon { i8 121, i8* getelementptr inbounds ([11 x i8]* @.str415, i32 0, i32 0) }, %struct.anon { i8 126, i8* getelementptr inbounds ([7 x i8]* @.str416, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str185 = private unnamed_addr constant [29 x i8] c"    MG_TYPE = PERL_MAGIC_%s\0A\00", align 1
@.str186 = private unnamed_addr constant [28 x i8] c"    MG_TYPE = UNKNOWN(\5C%o)\0A\00", align 1
@.str187 = private unnamed_addr constant [23 x i8] c"    MG_FLAGS = 0x%02X\0A\00", align 1
@.str188 = private unnamed_addr constant [18 x i8] c"      TAINTEDDIR\0A\00", align 1
@.str189 = private unnamed_addr constant [18 x i8] c"      REFCOUNTED\0A\00", align 1
@.str190 = private unnamed_addr constant [13 x i8] c"      GSKIP\0A\00", align 1
@.str191 = private unnamed_addr constant [16 x i8] c"      MINMATCH\0A\00", align 1
@.str192 = private unnamed_addr constant [20 x i8] c"    MG_OBJ = 0x%lx\0A\00", align 1
@.str193 = private unnamed_addr constant [18 x i8] c"    MG_LEN = %ld\0A\00", align 1
@.str194 = private unnamed_addr constant [19 x i8] c"    MG_PTR = 0x%lx\00", align 1
@.str195 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str196 = private unnamed_addr constant [15 x i8] c" => HEf_SVKEY\0A\00", align 1
@.str197 = private unnamed_addr constant [25 x i8] c" ???? - please notify IZ\00", align 1
@.str198 = private unnamed_addr constant [24 x i8] c"      %2ld: %lu -> %lu\0A\00", align 1
@.str199 = private unnamed_addr constant [11 x i8] c"%s = 0x%lx\00", align 1
@.str200 = private unnamed_addr constant [7 x i8] c"\09\22%s\22\0A\00", align 1
@.str201 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@.str202 = private unnamed_addr constant [9 x i8] c"%s\22 :: \22\00", align 1
@.str203 = private unnamed_addr constant [5 x i8] c"%s\22\0A\00", align 1
@.str204 = private unnamed_addr constant [8 x i8] c"SV = 0\0A\00", align 1
@.str205 = private unnamed_addr constant [50 x i8] c"(0x%lx) at 0x%lx\0A%*s  REFCNT = %ld\0A%*s  FLAGS = (\00", align 1
@.str206 = private unnamed_addr constant [9 x i8] c"PADBUSY,\00", align 1
@.str207 = private unnamed_addr constant [8 x i8] c"PADTMP,\00", align 1
@.str208 = private unnamed_addr constant [7 x i8] c"PADMY,\00", align 1
@.str209 = private unnamed_addr constant [6 x i8] c"TEMP,\00", align 1
@.str210 = private unnamed_addr constant [8 x i8] c"OBJECT,\00", align 1
@.str211 = private unnamed_addr constant [5 x i8] c"GMG,\00", align 1
@.str212 = private unnamed_addr constant [5 x i8] c"SMG,\00", align 1
@.str213 = private unnamed_addr constant [5 x i8] c"RMG,\00", align 1
@.str214 = private unnamed_addr constant [5 x i8] c"IOK,\00", align 1
@.str215 = private unnamed_addr constant [5 x i8] c"NOK,\00", align 1
@.str216 = private unnamed_addr constant [5 x i8] c"POK,\00", align 1
@.str217 = private unnamed_addr constant [5 x i8] c"ROK,\00", align 1
@.str218 = private unnamed_addr constant [9 x i8] c"WEAKREF,\00", align 1
@.str219 = private unnamed_addr constant [5 x i8] c"OOK,\00", align 1
@.str220 = private unnamed_addr constant [6 x i8] c"FAKE,\00", align 1
@.str221 = private unnamed_addr constant [10 x i8] c"READONLY,\00", align 1
@.str222 = private unnamed_addr constant [10 x i8] c"OVERLOAD,\00", align 1
@.str223 = private unnamed_addr constant [6 x i8] c"pIOK,\00", align 1
@.str224 = private unnamed_addr constant [6 x i8] c"pNOK,\00", align 1
@.str225 = private unnamed_addr constant [6 x i8] c"pPOK,\00", align 1
@.str226 = private unnamed_addr constant [8 x i8] c"SCREAM,\00", align 1
@.str227 = private unnamed_addr constant [6 x i8] c"ANON,\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"UNIQUE,\00", align 1
@.str229 = private unnamed_addr constant [7 x i8] c"CLONE,\00", align 1
@.str230 = private unnamed_addr constant [8 x i8] c"CLONED,\00", align 1
@.str231 = private unnamed_addr constant [7 x i8] c"CONST,\00", align 1
@.str232 = private unnamed_addr constant [9 x i8] c"NODEBUG,\00", align 1
@.str233 = private unnamed_addr constant [10 x i8] c"COMPILED,\00", align 1
@.str234 = private unnamed_addr constant [8 x i8] c"LVALUE,\00", align 1
@.str235 = private unnamed_addr constant [8 x i8] c"METHOD,\00", align 1
@.str236 = private unnamed_addr constant [8 x i8] c"LOCKED,\00", align 1
@.str237 = private unnamed_addr constant [13 x i8] c"WEAKOUTSIDE,\00", align 1
@.str238 = private unnamed_addr constant [11 x i8] c"SHAREKEYS,\00", align 1
@.str239 = private unnamed_addr constant [9 x i8] c"LAZYDEL,\00", align 1
@.str240 = private unnamed_addr constant [11 x i8] c"HASKFLAGS,\00", align 1
@.str241 = private unnamed_addr constant [8 x i8] c"REHASH,\00", align 1
@.str242 = private unnamed_addr constant [11 x i8] c"CLONEABLE,\00", align 1
@.str243 = private unnamed_addr constant [7 x i8] c"INTRO,\00", align 1
@.str244 = private unnamed_addr constant [7 x i8] c"MULTI,\00", align 1
@.str245 = private unnamed_addr constant [10 x i8] c"ASSUMECV,\00", align 1
@.str246 = private unnamed_addr constant [8 x i8] c"IN_PAD,\00", align 1
@.str247 = private unnamed_addr constant [5 x i8] c"OUR,\00", align 1
@.str248 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str249 = private unnamed_addr constant [5 x i8] c"ALL,\00", align 1
@.str250 = private unnamed_addr constant [4 x i8] c" SV\00", align 1
@.str251 = private unnamed_addr constant [4 x i8] c" AV\00", align 1
@.str252 = private unnamed_addr constant [4 x i8] c" HV\00", align 1
@.str253 = private unnamed_addr constant [4 x i8] c" CV\00", align 1
@.str254 = private unnamed_addr constant [4 x i8] c" ),\00", align 1
@.str255 = private unnamed_addr constant [8 x i8] c"EVALED,\00", align 1
@.str256 = private unnamed_addr constant [6 x i8] c"IsUV,\00", align 1
@.str257 = private unnamed_addr constant [6 x i8] c"TAIL,\00", align 1
@.str258 = private unnamed_addr constant [7 x i8] c"VALID,\00", align 1
@.str259 = private unnamed_addr constant [7 x i8] c"TYPED,\00", align 1
@.str260 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str261 = private unnamed_addr constant [6 x i8] c"SV = \00", align 1
@.str262 = private unnamed_addr constant [8 x i8] c"NULL%s\0A\00", align 1
@.str263 = private unnamed_addr constant [6 x i8] c"IV%s\0A\00", align 1
@.str264 = private unnamed_addr constant [6 x i8] c"NV%s\0A\00", align 1
@.str265 = private unnamed_addr constant [6 x i8] c"RV%s\0A\00", align 1
@.str266 = private unnamed_addr constant [6 x i8] c"PV%s\0A\00", align 1
@.str267 = private unnamed_addr constant [8 x i8] c"PVIV%s\0A\00", align 1
@.str268 = private unnamed_addr constant [8 x i8] c"PVNV%s\0A\00", align 1
@.str269 = private unnamed_addr constant [8 x i8] c"PVBM%s\0A\00", align 1
@.str270 = private unnamed_addr constant [8 x i8] c"PVMG%s\0A\00", align 1
@.str271 = private unnamed_addr constant [8 x i8] c"PVLV%s\0A\00", align 1
@.str272 = private unnamed_addr constant [8 x i8] c"PVAV%s\0A\00", align 1
@.str273 = private unnamed_addr constant [8 x i8] c"PVHV%s\0A\00", align 1
@.str274 = private unnamed_addr constant [8 x i8] c"PVCV%s\0A\00", align 1
@.str275 = private unnamed_addr constant [8 x i8] c"PVGV%s\0A\00", align 1
@.str276 = private unnamed_addr constant [8 x i8] c"PVFM%s\0A\00", align 1
@.str277 = private unnamed_addr constant [8 x i8] c"PVIO%s\0A\00", align 1
@.str278 = private unnamed_addr constant [19 x i8] c"UNKNOWN(0x%lx) %s\0A\00", align 1
@.str279 = private unnamed_addr constant [11 x i8] c"  UV = %lu\00", align 1
@.str280 = private unnamed_addr constant [11 x i8] c"  IV = %ld\00", align 1
@.str281 = private unnamed_addr constant [11 x i8] c"  (OFFSET)\00", align 1
@.str282 = private unnamed_addr constant [13 x i8] c"  NV = %.*g\0A\00", align 1
@.str283 = private unnamed_addr constant [14 x i8] c"  RV = 0x%lx\0A\00", align 1
@.str284 = private unnamed_addr constant [14 x i8] c"  PV = 0x%lx \00", align 1
@.str285 = private unnamed_addr constant [10 x i8] c"( %s . ) \00", align 1
@.str286 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str287 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str288 = private unnamed_addr constant [13 x i8] c"  CUR = %ld\0A\00", align 1
@.str289 = private unnamed_addr constant [13 x i8] c"  LEN = %ld\0A\00", align 1
@.str290 = private unnamed_addr constant [10 x i8] c"  PV = 0\0A\00", align 1
@.str291 = private unnamed_addr constant [8 x i8] c"  STASH\00", align 1
@.str292 = private unnamed_addr constant [13 x i8] c"  TYPE = %c\0A\00", align 1
@.str293 = private unnamed_addr constant [17 x i8] c"  TARGOFF = %ld\0A\00", align 1
@.str294 = private unnamed_addr constant [17 x i8] c"  TARGLEN = %ld\0A\00", align 1
@.str295 = private unnamed_addr constant [16 x i8] c"  TARG = 0x%lx\0A\00", align 1
@.str296 = private unnamed_addr constant [16 x i8] c"  ARRAY = 0x%lx\00", align 1
@.str297 = private unnamed_addr constant [15 x i8] c" (offset=%ld)\0A\00", align 1
@.str298 = private unnamed_addr constant [17 x i8] c"  ALLOC = 0x%lx\0A\00", align 1
@.str299 = private unnamed_addr constant [14 x i8] c"  FILL = %ld\0A\00", align 1
@.str300 = private unnamed_addr constant [13 x i8] c"  MAX = %ld\0A\00", align 1
@.str301 = private unnamed_addr constant [18 x i8] c"  ARYLEN = 0x%lx\0A\00", align 1
@.str302 = private unnamed_addr constant [6 x i8] c",REAL\00", align 1
@.str303 = private unnamed_addr constant [7 x i8] c",REIFY\00", align 1
@.str304 = private unnamed_addr constant [8 x i8] c",REUSED\00", align 1
@.str305 = private unnamed_addr constant [16 x i8] c"  FLAGS = (%s)\0A\00", align 1
@.str306 = private unnamed_addr constant [13 x i8] c"Elt No. %ld\0A\00", align 1
@.str307 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str308 = private unnamed_addr constant [8 x i8] c"%d%s:%d\00", align 1
@.str309 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str310 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str311 = private unnamed_addr constant [24 x i8] c"  hash quality = %.1f%%\00", align 1
@.str312 = private unnamed_addr constant [14 x i8] c"  KEYS = %ld\0A\00", align 1
@.str313 = private unnamed_addr constant [15 x i8] c"  RITER = %ld\0A\00", align 1
@.str314 = private unnamed_addr constant [17 x i8] c"  EITER = 0x%lx\0A\00", align 1
@.str315 = private unnamed_addr constant [18 x i8] c"  PMROOT = 0x%lx\0A\00", align 1
@.str316 = private unnamed_addr constant [15 x i8] c"  NAME = \22%s\22\0A\00", align 1
@.str317 = private unnamed_addr constant [8 x i8] c"Elt %s \00", align 1
@.str318 = private unnamed_addr constant [13 x i8] c"[UTF8 \22%s\22] \00", align 1
@.str319 = private unnamed_addr constant [10 x i8] c"[REHASH] \00", align 1
@.str320 = private unnamed_addr constant [14 x i8] c"HASH = 0x%lx\0A\00", align 1
@.str321 = private unnamed_addr constant [20 x i8] c"  PROTOTYPE = \22%s\22\0A\00", align 1
@.str322 = private unnamed_addr constant [13 x i8] c"  COMP_STASH\00", align 1
@.str323 = private unnamed_addr constant [26 x i8] c"  START = 0x%lx ===> %ld\0A\00", align 1
@.str324 = private unnamed_addr constant [16 x i8] c"  ROOT = 0x%lx\0A\00", align 1
@.str325 = private unnamed_addr constant [16 x i8] c"  XSUB = 0x%lx\0A\00", align 1
@.str326 = private unnamed_addr constant [17 x i8] c"  XSUBANY = %ld\0A\00", align 1
@.str327 = private unnamed_addr constant [11 x i8] c"  GVGV::GV\00", align 1
@.str328 = private unnamed_addr constant [15 x i8] c"  FILE = \22%s\22\0A\00", align 1
@.str329 = private unnamed_addr constant [15 x i8] c"  DEPTH = %ld\0A\00", align 1
@.str330 = private unnamed_addr constant [17 x i8] c"  FLAGS = 0x%lx\0A\00", align 1
@.str331 = private unnamed_addr constant [21 x i8] c"  OUTSIDE_SEQ = %lu\0A\00", align 1
@.str332 = private unnamed_addr constant [15 x i8] c"  LINES = %ld\0A\00", align 1
@.str333 = private unnamed_addr constant [19 x i8] c"  PADLIST = 0x%lx\0A\00", align 1
@.str334 = private unnamed_addr constant [24 x i8] c"  OUTSIDE = 0x%lx (%s)\0A\00", align 1
@.str335 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str336 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@PL_main_cv = external global %struct.cv*
@.str337 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str338 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str339 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str340 = private unnamed_addr constant [17 x i8] c"  NAMELEN = %ld\0A\00", align 1
@.str341 = private unnamed_addr constant [10 x i8] c"  GvSTASH\00", align 1
@.str342 = private unnamed_addr constant [14 x i8] c"  GP = 0x%lx\0A\00", align 1
@.str343 = private unnamed_addr constant [16 x i8] c"    SV = 0x%lx\0A\00", align 1
@.str344 = private unnamed_addr constant [18 x i8] c"    REFCNT = %ld\0A\00", align 1
@.str345 = private unnamed_addr constant [16 x i8] c"    IO = 0x%lx\0A\00", align 1
@.str346 = private unnamed_addr constant [20 x i8] c"    FORM = 0x%lx  \0A\00", align 1
@.str347 = private unnamed_addr constant [16 x i8] c"    AV = 0x%lx\0A\00", align 1
@.str348 = private unnamed_addr constant [16 x i8] c"    HV = 0x%lx\0A\00", align 1
@.str349 = private unnamed_addr constant [16 x i8] c"    CV = 0x%lx\0A\00", align 1
@.str350 = private unnamed_addr constant [19 x i8] c"    CVGEN = 0x%lx\0A\00", align 1
@.str351 = private unnamed_addr constant [21 x i8] c"    GPFLAGS = 0x%lx\0A\00", align 1
@.str352 = private unnamed_addr constant [16 x i8] c"    LINE = %ld\0A\00", align 1
@.str353 = private unnamed_addr constant [17 x i8] c"    FILE = \22%s\22\0A\00", align 1
@.str354 = private unnamed_addr constant [19 x i8] c"    FLAGS = 0x%lx\0A\00", align 1
@.str355 = private unnamed_addr constant [8 x i8] c"    EGV\00", align 1
@.str356 = private unnamed_addr constant [15 x i8] c"  IFP = 0x%lx\0A\00", align 1
@.str357 = private unnamed_addr constant [15 x i8] c"  OFP = 0x%lx\0A\00", align 1
@.str358 = private unnamed_addr constant [16 x i8] c"  DIRP = 0x%lx\0A\00", align 1
@.str359 = private unnamed_addr constant [14 x i8] c"  PAGE = %ld\0A\00", align 1
@.str360 = private unnamed_addr constant [18 x i8] c"  PAGE_LEN = %ld\0A\00", align 1
@.str361 = private unnamed_addr constant [20 x i8] c"  LINES_LEFT = %ld\0A\00", align 1
@.str362 = private unnamed_addr constant [19 x i8] c"  TOP_NAME = \22%s\22\0A\00", align 1
@.str363 = private unnamed_addr constant [9 x i8] c"  TOP_GV\00", align 1
@.str364 = private unnamed_addr constant [19 x i8] c"  FMT_NAME = \22%s\22\0A\00", align 1
@.str365 = private unnamed_addr constant [9 x i8] c"  FMT_GV\00", align 1
@.str366 = private unnamed_addr constant [22 x i8] c"  BOTTOM_NAME = \22%s\22\0A\00", align 1
@.str367 = private unnamed_addr constant [12 x i8] c"  BOTTOM_GV\00", align 1
@.str368 = private unnamed_addr constant [20 x i8] c"  SUBPROCESS = %ld\0A\00", align 1
@.str369 = private unnamed_addr constant [15 x i8] c"  TYPE = '%c'\0A\00", align 1
@.str370 = private unnamed_addr constant [16 x i8] c"  TYPE = '\5C%o'\0A\00", align 1
@PL_curcop = external global %struct.cop*
@.str371 = private unnamed_addr constant [15 x i8] c"NULL OP IN RUN\00", align 1
@PL_sig_pending = external global i32
@PL_watchaddr = external global i8**
@PL_watchok = external global i8*
@.str372 = private unnamed_addr constant [38 x i8] c"WARNING: %lx changed from %lx to %lx\0A\00", align 1
@PL_tainted = external global i8
@PL_debstash = external global %struct.hv*
@.str373 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str374 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*
@.str375 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str376 = private unnamed_addr constant [32 x i8] c"WATCHING, %lx is currently %lx\0A\00", align 1
@PL_profiledata = external global i32*
@.str377 = private unnamed_addr constant [9 x i8] c"%5lu %s\0A\00", align 1
@PL_compcv = external global %struct.cv*
@.str378 = private unnamed_addr constant [7 x i8] c"sv(\5C0)\00", align 1
@.str379 = private unnamed_addr constant [10 x i8] c"arylen(#)\00", align 1
@.str380 = private unnamed_addr constant [8 x i8] c"glob(*)\00", align 1
@.str381 = private unnamed_addr constant [7 x i8] c"pos(.)\00", align 1
@.str382 = private unnamed_addr constant [11 x i8] c"backref(<)\00", align 1
@.str383 = private unnamed_addr constant [12 x i8] c"overload(A)\00", align 1
@.str384 = private unnamed_addr constant [6 x i8] c"bm(B)\00", align 1
@.str385 = private unnamed_addr constant [11 x i8] c"regdata(D)\00", align 1
@.str386 = private unnamed_addr constant [7 x i8] c"env(E)\00", align 1
@.str387 = private unnamed_addr constant [7 x i8] c"isa(I)\00", align 1
@.str388 = private unnamed_addr constant [10 x i8] c"dbfile(L)\00", align 1
@.str389 = private unnamed_addr constant [10 x i8] c"shared(N)\00", align 1
@.str390 = private unnamed_addr constant [8 x i8] c"tied(P)\00", align 1
@.str391 = private unnamed_addr constant [7 x i8] c"sig(S)\00", align 1
@.str392 = private unnamed_addr constant [8 x i8] c"uvar(U)\00", align 1
@.str393 = private unnamed_addr constant [17 x i8] c"overload_elem(a)\00", align 1
@.str394 = private unnamed_addr constant [18 x i8] c"overload_table(c)\00", align 1
@.str395 = private unnamed_addr constant [12 x i8] c"regdatum(d)\00", align 1
@.str396 = private unnamed_addr constant [11 x i8] c"envelem(e)\00", align 1
@.str397 = private unnamed_addr constant [6 x i8] c"fm(f)\00", align 1
@.str398 = private unnamed_addr constant [16 x i8] c"regex_global(g)\00", align 1
@.str399 = private unnamed_addr constant [11 x i8] c"isaelem(i)\00", align 1
@.str400 = private unnamed_addr constant [9 x i8] c"nkeys(k)\00", align 1
@.str401 = private unnamed_addr constant [10 x i8] c"dbline(l)\00", align 1
@.str402 = private unnamed_addr constant [9 x i8] c"mutex(m)\00", align 1
@.str403 = private unnamed_addr constant [17 x i8] c"shared_scalar(n)\00", align 1
@.str404 = private unnamed_addr constant [12 x i8] c"collxfrm(o)\00", align 1
@.str405 = private unnamed_addr constant [12 x i8] c"tiedelem(p)\00", align 1
@.str406 = private unnamed_addr constant [14 x i8] c"tiedscalar(q)\00", align 1
@.str407 = private unnamed_addr constant [6 x i8] c"qr(r)\00", align 1
@.str408 = private unnamed_addr constant [11 x i8] c"sigelem(s)\00", align 1
@.str409 = private unnamed_addr constant [9 x i8] c"taint(t)\00", align 1
@.str410 = private unnamed_addr constant [13 x i8] c"uvar_elem(v)\00", align 1
@.str411 = private unnamed_addr constant [7 x i8] c"vec(v)\00", align 1
@.str412 = private unnamed_addr constant [12 x i8] c"v-string(V)\00", align 1
@.str413 = private unnamed_addr constant [8 x i8] c"utf8(w)\00", align 1
@.str414 = private unnamed_addr constant [10 x i8] c"substr(x)\00", align 1
@.str415 = private unnamed_addr constant [11 x i8] c"defelem(y)\00", align 1
@.str416 = private unnamed_addr constant [7 x i8] c"ext(~)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* %pat, ...) #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32* @PL_dumpindent, align 4, !tbaa !0
  %mul.i = mul nsw i32 %0, %level
  %call.i = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %mul.i, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #3
  %arraydecay.i = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call1.i = call i32 @PerlIO_vprintf(%struct._PerlIO** %file, i8* %pat, %struct.__va_list_tag* %arraydecay.i) #3
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_vindent(i32 %level, %struct._PerlIO** %file, i8* %pat, [1 x %struct.__va_list_tag]* %args) #0 {
entry:
  %0 = load i32* @PL_dumpindent, align 4, !tbaa !0
  %mul = mul nsw i32 %0, %level
  %call = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %mul, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #3
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %call1 = tail call i32 @PerlIO_vprintf(%struct._PerlIO** %file, i8* %pat, %struct.__va_list_tag* %arraydecay) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @PerlIO_vprintf(%struct._PerlIO**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_all() #0 {
entry:
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_PerlIO_setlinebuf(%struct._PerlIO** %call) #3
  %0 = load %struct.op** @PL_main_root, align 8, !tbaa !3
  %tobool = icmp eq %struct.op* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call.i, %struct.op* %0) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  tail call void @Perl_dump_packsubs(%struct.hv* %1) #4
  ret void
}

; Function Attrs: optsize
declare void @Perl_PerlIO_setlinebuf(%struct._PerlIO**) #2

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_op_dump(%struct.op* %o) #0 {
entry:
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call, %struct.op* %o) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_packsubs(%struct.hv* nocapture %stash) #0 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %stash, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %1 = bitcast %struct.xpvhv* %0 to %struct.he***
  %2 = load %struct.he*** %1, align 8, !tbaa !3
  %tobool = icmp eq %struct.he** %2, null
  br i1 %tobool, label %for.end43, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %xhv_max63 = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 2
  %3 = load i64* %xhv_max63, align 8, !tbaa !4
  %conv64 = trunc i64 %3 to i32
  %cmp65 = icmp slt i32 %conv64, 0
  br i1 %cmp65, label %for.end43, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc42.for.body_crit_edge
  %4 = phi %struct.he** [ %.pre68, %for.inc42.for.body_crit_edge ], [ %2, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc42.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %5 = phi %struct.xpvhv* [ %23, %for.inc42.for.body_crit_edge ], [ %0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.he** %4, i64 %indvars.iv
  %entry1.060 = load %struct.he** %arrayidx, align 8
  %tobool761 = icmp eq %struct.he* %entry1.060, null
  br i1 %tobool761, label %for.inc42, label %for.body8

for.body8:                                        ; preds = %for.body, %for.inc
  %entry1.062 = phi %struct.he* [ %entry1.0, %for.inc ], [ %entry1.060, %for.body ]
  %hent_val = getelementptr inbounds %struct.he* %entry1.062, i64 0, i32 2
  %6 = load %struct.sv** %hent_val, align 8, !tbaa !3
  %7 = bitcast %struct.sv* %6 to %struct.gv*
  %8 = getelementptr inbounds %struct.sv* %6, i64 0, i32 2
  %9 = load i32* %8, align 4, !tbaa !0
  %and = and i32 %9, 255
  %cmp9 = icmp eq i32 %and, 13
  br i1 %cmp9, label %lor.lhs.false, label %for.inc

lor.lhs.false:                                    ; preds = %for.body8
  %sv_any11 = bitcast %struct.sv* %6 to %struct.xpvgv**
  %10 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %tobool12 = icmp eq %struct.gp* %11, null
  br i1 %tobool12, label %for.inc, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false
  %gp_cvgen = getelementptr inbounds %struct.gp* %11, i64 0, i32 8
  %12 = load i32* %gp_cvgen, align 4, !tbaa !0
  %tobool17 = icmp eq i32 %12, 0
  br i1 %tobool17, label %cond.false, label %if.end22

cond.false:                                       ; preds = %if.end14
  %gp_cv = getelementptr inbounds %struct.gp* %11, i64 0, i32 7
  %13 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %tobool20 = icmp eq %struct.cv* %13, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %cond.false
  tail call void @Perl_dump_sub(%struct.gv* %7) #4
  %.pre = load %struct.xpvgv** %sv_any11, align 8, !tbaa !3
  %xgv_gp24.phi.trans.insert = getelementptr inbounds %struct.xpvgv* %.pre, i64 0, i32 7
  %.pre67 = load %struct.gp** %xgv_gp24.phi.trans.insert, align 8, !tbaa !3
  br label %if.end22

if.end22:                                         ; preds = %cond.false, %if.end14, %if.then21
  %14 = phi %struct.gp* [ %11, %cond.false ], [ %11, %if.end14 ], [ %.pre67, %if.then21 ]
  %gp_form = getelementptr inbounds %struct.gp* %14, i64 0, i32 3
  %15 = load %struct.cv** %gp_form, align 8, !tbaa !3
  %tobool25 = icmp eq %struct.cv* %15, null
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  tail call void @Perl_dump_form(%struct.gv* %7) #4
  br label %if.end27

if.end27:                                         ; preds = %if.end22, %if.then26
  %hent_hek = getelementptr inbounds %struct.he* %entry1.062, i64 0, i32 1
  %16 = load %struct.hek** %hent_hek, align 8, !tbaa !3
  %hek_len = getelementptr inbounds %struct.hek* %16, i64 0, i32 1
  %17 = load i32* %hek_len, align 4, !tbaa !0
  %sub = add nsw i32 %17, -1
  %idxprom28 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds %struct.hek* %16, i64 0, i32 2, i64 %idxprom28
  %18 = load i8* %arrayidx30, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %18, 58
  br i1 %cmp32, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end27
  %19 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !3
  %xgv_gp35 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp35, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %20, i64 0, i32 5
  %21 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %tobool36 = icmp eq %struct.hv* %21, null
  %22 = load %struct.hv** @PL_defstash, align 8, !tbaa !3
  %cmp38 = icmp eq %struct.hv* %21, %22
  %or.cond = or i1 %tobool36, %cmp38
  br i1 %or.cond, label %for.inc, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  tail call void @Perl_dump_packsubs(%struct.hv* %21) #4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false, %for.body8, %if.end27, %if.then40
  %hent_next = getelementptr inbounds %struct.he* %entry1.062, i64 0, i32 0
  %entry1.0 = load %struct.he** %hent_next, align 8
  %tobool7 = icmp eq %struct.he* %entry1.0, null
  br i1 %tobool7, label %for.cond6.for.inc42_crit_edge, label %for.body8

for.cond6.for.inc42_crit_edge:                    ; preds = %for.inc
  %.pre69 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  br label %for.inc42

for.inc42:                                        ; preds = %for.body, %for.cond6.for.inc42_crit_edge
  %23 = phi %struct.xpvhv* [ %.pre69, %for.cond6.for.inc42_crit_edge ], [ %5, %for.body ]
  %xhv_max = getelementptr inbounds %struct.xpvhv* %23, i64 0, i32 2
  %24 = load i64* %xhv_max, align 8, !tbaa !4
  %conv = trunc i64 %24 to i32
  %25 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %25, %conv
  br i1 %cmp, label %for.inc42.for.body_crit_edge, label %for.end43

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  %indvars.iv.next = add i64 %indvars.iv, 1
  %.phi.trans.insert = bitcast %struct.xpvhv* %23 to %struct.he***
  %.pre68 = load %struct.he*** %.phi.trans.insert, align 8, !tbaa !3
  br label %for.body

for.end43:                                        ; preds = %for.cond.preheader, %for.inc42, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_sub(%struct.gv* %gv) #0 {
entry:
  %call = tail call %struct.sv* @Perl_sv_newmortal() #3
  tail call void @Perl_gv_fullname4(%struct.sv* %call, %struct.gv* %gv, i8* null, i8 signext 1) #3
  %call1 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call1, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* %1) #4
  %sv_any2 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any2, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %3, i64 0, i32 7
  %4 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %sv_any3 = getelementptr inbounds %struct.cv* %4, i64 0, i32 0
  %5 = load %struct.xpvcv** %sv_any3, align 8, !tbaa !3
  %xcv_xsub = getelementptr inbounds %struct.xpvcv* %5, i64 0, i32 10
  %6 = load void (%struct.cv*)** %xcv_xsub, align 8, !tbaa !3
  %tobool = icmp eq void (%struct.cv*)* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %7 = load %struct.xpvgv** %sv_any2, align 8, !tbaa !3
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp6, align 8, !tbaa !3
  %gp_cv7 = getelementptr inbounds %struct.gp* %8, i64 0, i32 7
  %9 = load %struct.cv** %gp_cv7, align 8, !tbaa !3
  %sv_any8 = getelementptr inbounds %struct.cv* %9, i64 0, i32 0
  %10 = load %struct.xpvcv** %sv_any8, align 8, !tbaa !3
  %xcv_xsub9 = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 10
  %11 = load void (%struct.cv*)** %xcv_xsub9, align 8, !tbaa !3
  %12 = ptrtoint void (%struct.cv*)* %11 to i64
  %xcv_xsubany = getelementptr inbounds %struct.xpvcv* %10, i64 0, i32 11
  %any_i32 = bitcast %union.any* %xcv_xsubany to i32*
  %13 = load i32* %any_i32, align 4, !tbaa !0
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call4, i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i64 %12, i32 %13) #4
  br label %if.end27

if.else:                                          ; preds = %entry
  %xcv_root = getelementptr inbounds %struct.xpvcv* %5, i64 0, i32 9
  %14 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool18 = icmp eq %struct.op* %14, null
  %call26 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br i1 %tobool18, label %if.else25, label %if.then19

if.then19:                                        ; preds = %if.else
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call26, %struct.op* %14) #3
  br label %if.end27

if.else25:                                        ; preds = %if.else
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call26, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.else25, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_form(%struct.gv* %gv) #0 {
entry:
  %call = tail call %struct.sv* @Perl_sv_newmortal() #3
  tail call void @Perl_gv_fullname4(%struct.sv* %call, %struct.gv* %gv, i8* null, i8 signext 1) #3
  %call1 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call1, i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* %1) #4
  %sv_any2 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any2, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_form = getelementptr inbounds %struct.gp* %3, i64 0, i32 3
  %4 = load %struct.cv** %gp_form, align 8, !tbaa !3
  %sv_any3 = getelementptr inbounds %struct.cv* %4, i64 0, i32 0
  %5 = load %struct.xpvcv** %sv_any3, align 8, !tbaa !3
  %xcv_root = getelementptr inbounds %struct.xpvcv* %5, i64 0, i32 9
  %6 = load %struct.op** %xcv_root, align 8, !tbaa !3
  %tobool = icmp eq %struct.op* %6, null
  %call9 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call9, %struct.op* %6) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call9, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #2

; Function Attrs: optsize
declare void @Perl_gv_fullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_dump_eval() #0 {
entry:
  %0 = load %struct.op** @PL_eval_root, align 8, !tbaa !3
  %call.i = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call.i, %struct.op* %0) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_pv_display(%struct.sv* %dsv, i8* %pv, i64 %cur, i64 %len, i64 %pvlim) #0 {
entry:
  %cmp = icmp ugt i64 %len, %cur
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds i8* %pv, i64 %cur
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %0, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  tail call void @Perl_sv_setpvn(%struct.sv* %dsv, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i64 1) #3
  %tobool78 = icmp eq i64 %cur, 0
  br i1 %tobool78, label %if.end41.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %land.end
  %tobool3 = icmp eq i64 %pvlim, 0
  %sv_any = getelementptr inbounds %struct.sv* %dsv, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %dec81.in = phi i64 [ %cur, %for.body.lr.ph ], [ %dec81, %for.inc ]
  %pv.addr.079 = phi i8* [ %pv, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %dec81 = add i64 %dec81.in, -1
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %2 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  %cmp4 = icmp ult i64 %4, %pvlim
  br i1 %cmp4, label %if.end, label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %5 = load i8* %pv.addr.079, align 1, !tbaa !1
  %conv6 = sext i8 %5 to i32
  switch i32 %conv6, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb7
    i32 13, label %sw.bb8
    i32 12, label %sw.bb9
    i32 34, label %sw.bb10
    i32 92, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.bb7:                                           ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.bb8:                                           ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.bb9:                                           ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.bb10:                                          ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.bb11:                                          ; preds = %if.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i64 2, i32 2) #3
  br label %for.inc

sw.default:                                       ; preds = %if.end
  %notlhs = icmp sgt i8 %5, 32
  %notrhs = icmp ne i8 %5, 127
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp20 = icmp eq i8 %5, 32
  %or.cond76 = or i1 %or.cond.not, %cmp20
  br i1 %or.cond76, label %if.then22, label %if.else

if.then22:                                        ; preds = %sw.default
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* %pv.addr.079, i64 1, i32 2) #3
  br label %for.inc

if.else:                                          ; preds = %sw.default
  %tobool23 = icmp eq i64 %dec81, 0
  br i1 %tobool23, label %if.else35, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.else
  %add.ptr = getelementptr inbounds i8* %pv.addr.079, i64 1
  %6 = load i8* %add.ptr, align 1, !tbaa !1
  %.off = add i8 %6, -48
  %7 = icmp ult i8 %.off, 10
  br i1 %7, label %if.then33, label %if.else35

if.then33:                                        ; preds = %land.lhs.true24
  %conv34 = zext i8 %5 to i32
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %dsv, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i32 %conv34) #3
  br label %for.inc

if.else35:                                        ; preds = %if.else, %land.lhs.true24
  %conv36 = zext i8 %5 to i32
  tail call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %dsv, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %conv36) #3
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %if.then33, %if.else35, %if.then22
  %incdec.ptr = getelementptr inbounds i8* %pv.addr.079, i64 1
  %tobool = icmp eq i64 %dec81, 0
  br i1 %tobool, label %if.end41.critedge, label %for.body

for.end:                                          ; preds = %land.lhs.true
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i64 1, i32 2) #3
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i64 3, i32 2) #3
  br label %if.end41

if.end41.critedge:                                ; preds = %for.inc, %land.end
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i64 1, i32 2) #3
  br label %if.end41

if.end41:                                         ; preds = %if.end41.critedge, %for.end
  br i1 %1, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %dsv, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i64 2, i32 2) #3
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41
  %sv_any45 = getelementptr inbounds %struct.sv* %dsv, i64 0, i32 0
  %8 = load i8** %sv_any45, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %8 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !3
  ret i8* %9
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #2

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_sv_peek(%struct.sv* %sv) #0 {
entry:
  %n_a = alloca i64, align 8
  %call = call %struct.sv* @Perl_sv_newmortal() #3
  call void @Perl_sv_setpvn(%struct.sv* %call, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  %sv_any116 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  br label %retry

retry:                                            ; preds = %if.end130, %entry
  %unref.0 = phi i32 [ 0, %entry ], [ %unref.1, %if.end130 ]
  %sv.addr.0 = phi %struct.sv* [ %sv, %entry ], [ %39, %if.end130 ]
  %magicptr = ptrtoint %struct.sv* %sv.addr.0 to i64
  switch i64 %magicptr, label %lor.lhs.false [
    i64 0, label %if.then
    i64 1431655765, label %if.then2
  ]

if.then:                                          ; preds = %retry
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #3
  br label %finish

lor.lhs.false:                                    ; preds = %retry
  %sv_flags = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 255
  %cmp1 = icmp eq i32 %and, 85
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %retry, %lor.lhs.false
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #3
  br label %finish

if.else3:                                         ; preds = %lor.lhs.false
  %cmp4 = icmp eq %struct.sv* %sv.addr.0, @PL_sv_undef
  %cmp6 = icmp eq %struct.sv* %sv.addr.0, @PL_sv_no
  %or.cond = or i1 %cmp4, %cmp6
  %cmp8 = icmp eq %struct.sv* %sv.addr.0, @PL_sv_yes
  %or.cond234 = or i1 %or.cond, %cmp8
  %cmp10 = icmp eq %struct.sv* %sv.addr.0, @PL_sv_placeholder
  %or.cond235 = or i1 %or.cond234, %cmp10
  br i1 %or.cond235, label %if.then11, label %if.else81

if.then11:                                        ; preds = %if.else3
  br i1 %cmp4, label %if.then13, label %if.else21

if.then13:                                        ; preds = %if.then11
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0)) #3
  %1 = load i32* %sv_flags, align 4, !tbaa !0
  %2 = and i32 %1, 128970752
  %3 = icmp eq i32 %2, 8388608
  br i1 %3, label %finish, label %if.end80

if.else21:                                        ; preds = %if.then11
  br i1 %cmp6, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.else21
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0)) #3
  %4 = load i32* %sv_flags, align 4, !tbaa !0
  %5 = and i32 %4, 112128000
  %6 = icmp eq i32 %5, 109445120
  br i1 %6, label %land.lhs.true31, label %if.end80

land.lhs.true31:                                  ; preds = %if.then23
  %7 = load i8** getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 0), align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %8 = bitcast i8* %xpv_cur to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  %cmp32 = icmp eq i64 %9, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.end80

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %xnv_nv = getelementptr inbounds i8* %7, i64 32
  %10 = bitcast i8* %xnv_nv to double*
  %11 = load double* %10, align 8, !tbaa !5
  %cmp35 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp35, label %finish, label %if.end80

if.else38:                                        ; preds = %if.else21
  br i1 %cmp8, label %if.then40, label %if.else68

if.then40:                                        ; preds = %if.else38
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0)) #3
  %12 = load i32* %sv_flags, align 4, !tbaa !0
  %13 = and i32 %12, 112128000
  %14 = icmp eq i32 %13, 109445120
  br i1 %14, label %land.lhs.true49, label %if.end80

land.lhs.true49:                                  ; preds = %if.then40
  %15 = load i8** getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 0), align 8, !tbaa !3
  %xpv_cur51 = getelementptr inbounds i8* %15, i64 8
  %16 = bitcast i8* %xpv_cur51 to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  %cmp52 = icmp eq i64 %17, 1
  br i1 %cmp52, label %land.lhs.true53, label %if.end80

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %xpv_pv = bitcast i8* %15 to i8**
  %18 = load i8** %xpv_pv, align 8, !tbaa !3
  %tobool55 = icmp eq i8* %18, null
  br i1 %tobool55, label %if.end80, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %19 = load i8* %18, align 1, !tbaa !1
  %cmp59 = icmp eq i8 %19, 49
  br i1 %cmp59, label %land.lhs.true61, label %if.end80

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %xnv_nv63 = getelementptr inbounds i8* %15, i64 32
  %20 = bitcast i8* %xnv_nv63 to double*
  %21 = load double* %20, align 8, !tbaa !5
  %cmp64 = fcmp oeq double %21, 1.000000e+00
  br i1 %cmp64, label %finish, label %if.end80

if.else68:                                        ; preds = %if.else38
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0)) #3
  %22 = load i32* %sv_flags, align 4, !tbaa !0
  %23 = and i32 %22, 128970752
  %24 = icmp eq i32 %23, 8388608
  br i1 %24, label %finish, label %if.end80

if.end80:                                         ; preds = %if.then13, %if.else68, %if.then23, %land.lhs.true53, %if.then40, %land.lhs.true33, %land.lhs.true31, %land.lhs.true49, %land.lhs.true56, %land.lhs.true61
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)) #3
  br label %if.end111

if.else81:                                        ; preds = %if.else3
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 1
  %25 = load i32* %sv_refcnt, align 4, !tbaa !0
  %cmp82 = icmp eq i32 %25, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else81
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #3
  %inc = add nsw i32 %unref.0, 1
  br label %if.end111

if.else85:                                        ; preds = %if.else81
  %26 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and86 = and i32 %26, 262144
  %tobool87 = icmp eq i32 %and86, 0
  br i1 %tobool87, label %if.end111, label %if.then88

if.then88:                                        ; preds = %if.else85
  %27 = load i32* @PL_tmps_ix, align 4, !tbaa !0
  %cmp89343 = icmp sgt i32 %27, -1
  br i1 %cmp89343, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then88
  %28 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !3
  %29 = sext i32 %27 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, -1
  %30 = trunc i64 %indvars.iv to i32
  %cmp89 = icmp sgt i32 %30, 0
  br i1 %cmp89, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %29, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds %struct.sv** %28, i64 %indvars.iv
  %31 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %cmp91 = icmp eq %struct.sv* %31, %sv.addr.0
  br i1 %cmp91, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %if.then88
  %is_tmp.0 = phi i32 [ 0, %if.then88 ], [ 1, %for.body ], [ 0, %for.cond ]
  %32 = load i32* %sv_refcnt, align 4, !tbaa !0
  %cmp96 = icmp ugt i32 %32, 1
  br i1 %cmp96, label %if.then98, label %if.else102

if.then98:                                        ; preds = %for.end
  %conv100 = zext i32 %32 to i64
  %tobool101 = icmp ne i32 %is_tmp.0, 0
  %cond = select i1 %tobool101, i8* getelementptr inbounds ([2 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0), i64 %conv100, i8* %cond) #3
  br label %if.end111

if.else102:                                       ; preds = %for.end
  %tobool103 = icmp eq i32 %is_tmp.0, 0
  br i1 %tobool103, label %if.end111, label %if.then104

if.then104:                                       ; preds = %if.else102
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #3
  br label %if.end111

if.end111:                                        ; preds = %if.else102, %if.else85, %if.then84, %if.then98, %if.then104, %if.end80
  %unref.1 = phi i32 [ %unref.0, %if.end80 ], [ %inc, %if.then84 ], [ %unref.0, %if.then98 ], [ %unref.0, %if.then104 ], [ %unref.0, %if.else102 ], [ %unref.0, %if.else85 ]
  %33 = load i32* %sv_flags, align 4, !tbaa !0
  %and113 = and i32 %33, 524288
  %tobool114 = icmp eq i32 %and113, 0
  br i1 %tobool114, label %if.end132, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str28, i64 0, i64 0)) #3
  %34 = load i8** %sv_any116, align 8, !tbaa !3
  %xpv_cur117 = getelementptr inbounds i8* %34, i64 8
  %35 = bitcast i8* %xpv_cur117 to i64*
  %36 = load i64* %35, align 8, !tbaa !4
  %conv118 = sext i32 %unref.1 to i64
  %add = add i64 %36, %conv118
  %cmp119 = icmp ugt i64 %add, 10
  br i1 %cmp119, label %if.then121, label %if.end130

if.then121:                                       ; preds = %if.then115
  %add122 = add nsw i32 %unref.1, 3
  %conv123 = sext i32 %add122 to i64
  store i64 %conv123, i64* %35, align 8, !tbaa !4
  %xpv_pv127 = bitcast i8* %34 to i8**
  %37 = load i8** %xpv_pv127, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %37, i64 %conv123
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0)) #3
  br label %finish

if.end130:                                        ; preds = %if.then115
  %sv_any131 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %38 = load i8** %sv_any131, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %38 to %struct.sv**
  %39 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  br label %retry

if.end132:                                        ; preds = %if.end111
  %and134 = and i32 %33, 255
  switch i32 %and134, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb135
    i32 2, label %sw.bb136
    i32 3, label %sw.bb137
    i32 4, label %sw.bb138
    i32 5, label %sw.bb139
    i32 6, label %sw.bb140
    i32 7, label %sw.bb141
    i32 9, label %sw.bb142
    i32 10, label %sw.bb143
    i32 11, label %sw.bb144
    i32 12, label %sw.bb145
    i32 13, label %sw.bb154
    i32 8, label %sw.bb155
    i32 14, label %sw.bb156
    i32 15, label %sw.bb157
  ]

sw.default:                                       ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0)) #3
  br label %finish

sw.bb:                                            ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0)) #3
  br label %finish

sw.bb135:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str34, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb143:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end132
  %sv_any146 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %40 = load i8** %sv_any146, align 8, !tbaa !3
  %xcv_gv = getelementptr inbounds i8* %40, i64 96
  %41 = bitcast i8* %xcv_gv to %struct.gv**
  %42 = load %struct.gv** %41, align 8, !tbaa !3
  %tobool147 = icmp eq %struct.gv* %42, null
  br i1 %tobool147, label %if.else152, label %if.then148

if.then148:                                       ; preds = %sw.bb145
  %sv_any151 = getelementptr inbounds %struct.gv* %42, i64 0, i32 0
  %43 = load %struct.xpvgv** %sv_any151, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %43, i64 0, i32 8
  %44 = load i8** %xgv_name, align 8, !tbaa !3
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* %44) #3
  br label %finish

if.else152:                                       ; preds = %sw.bb145
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0)) #3
  br label %finish

sw.bb154:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb156:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end132
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str46, i64 0, i64 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb157, %sw.bb156, %sw.bb155, %sw.bb154, %sw.bb144, %sw.bb143, %sw.bb142, %sw.bb141, %sw.bb140, %sw.bb139, %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135
  %45 = load i32* %sv_flags, align 4, !tbaa !0
  %and159 = and i32 %45, 67108864
  %tobool160 = icmp eq i32 %and159, 0
  br i1 %tobool160, label %if.else194, label %if.then161

if.then161:                                       ; preds = %sw.epilog
  %sv_any162 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %46 = load i8** %sv_any162, align 8, !tbaa !3
  %xpv_pv163 = bitcast i8* %46 to i8**
  %47 = load i8** %xpv_pv163, align 8, !tbaa !3
  %tobool164 = icmp eq i8* %47, null
  br i1 %tobool164, label %if.then165, label %if.else166

if.then165:                                       ; preds = %if.then161
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0)) #3
  br label %finish

if.else166:                                       ; preds = %if.then161
  %call167 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #3
  %48 = load i32* %sv_flags, align 4, !tbaa !0
  %and169 = and i32 %48, 2097152
  %tobool170 = icmp eq i32 %and169, 0
  br i1 %tobool170, label %if.end179, label %if.then171

if.then171:                                       ; preds = %if.else166
  %49 = load i8** %sv_any162, align 8, !tbaa !3
  %xpv_pv173 = bitcast i8* %49 to i8**
  %50 = load i8** %xpv_pv173, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %49, i64 24
  %51 = bitcast i8* %xiv_iv to i64*
  %52 = load i64* %51, align 8, !tbaa !4
  %idx.neg = sub i64 0, %52
  %add.ptr175 = getelementptr inbounds i8* %50, i64 %idx.neg
  %call178 = call i8* @Perl_pv_display(%struct.sv* %call167, i8* %add.ptr175, i64 %52, i64 0, i64 127) #4
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* %call178) #3
  br label %if.end179

if.end179:                                        ; preds = %if.else166, %if.then171
  %53 = load i8** %sv_any162, align 8, !tbaa !3
  %xpv_pv181 = bitcast i8* %53 to i8**
  %54 = load i8** %xpv_pv181, align 8, !tbaa !3
  %xpv_cur183 = getelementptr inbounds i8* %53, i64 8
  %55 = bitcast i8* %xpv_cur183 to i64*
  %56 = load i64* %55, align 8, !tbaa !4
  %xpv_len = getelementptr inbounds i8* %53, i64 16
  %57 = bitcast i8* %xpv_len to i64*
  %58 = load i64* %57, align 8, !tbaa !4
  %call185 = call i8* @Perl_pv_display(%struct.sv* %call167, i8* %54, i64 %56, i64 %58, i64 127) #4
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str49, i64 0, i64 0), i8* %call185) #3
  %59 = load i32* %sv_flags, align 4, !tbaa !0
  %and187 = and i32 %59, 536870912
  %tobool188 = icmp eq i32 %and187, 0
  br i1 %tobool188, label %if.end192, label %if.then189

if.then189:                                       ; preds = %if.end179
  %call190 = call i64 @Perl_sv_len_utf8(%struct.sv* %sv.addr.0) #3
  %mul = shl i64 %call190, 3
  %call191 = call i8* @Perl_sv_uni_display(%struct.sv* %call167, %struct.sv* %sv.addr.0, i64 %mul, i64 3) #3
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([13 x i8]* @.str50, i64 0, i64 0), i8* %call191) #3
  br label %if.end192

if.end192:                                        ; preds = %if.end179, %if.then189
  call void @Perl_sv_free(%struct.sv* %call167) #3
  br label %finish

if.else194:                                       ; preds = %sw.epilog
  %and196 = and i32 %45, 33554432
  %tobool197 = icmp eq i32 %and196, 0
  br i1 %tobool197, label %if.else201, label %if.then198

if.then198:                                       ; preds = %if.else194
  %sv_any199 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %60 = load i8** %sv_any199, align 8, !tbaa !3
  %xnv_nv200 = getelementptr inbounds i8* %60, i64 32
  %61 = bitcast i8* %xnv_nv200 to double*
  %62 = load double* %61, align 8, !tbaa !5
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), double %62) #3
  br label %finish

if.else201:                                       ; preds = %if.else194
  %and203 = and i32 %45, 16777216
  %tobool204 = icmp eq i32 %and203, 0
  br i1 %tobool204, label %if.else215, label %if.then205

if.then205:                                       ; preds = %if.else201
  %tobool208 = icmp slt i32 %45, 0
  %sv_any210 = getelementptr inbounds %struct.sv* %sv.addr.0, i64 0, i32 0
  %63 = load i8** %sv_any210, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %63, i64 24
  %64 = bitcast i8* %xuv_uv to i64*
  %65 = load i64* %64, align 8, !tbaa !4
  br i1 %tobool208, label %if.then209, label %if.else211

if.then209:                                       ; preds = %if.then205
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str52, i64 0, i64 0), i64 %65) #3
  br label %finish

if.else211:                                       ; preds = %if.then205
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i64 %65) #3
  br label %finish

if.else215:                                       ; preds = %if.else201
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([3 x i8]* @.str54, i64 0, i64 0)) #3
  br label %finish

finish:                                           ; preds = %if.then13, %if.else68, %land.lhs.true61, %land.lhs.true33, %if.end192, %if.then165, %if.else215, %if.else211, %if.then209, %if.then198, %if.then148, %if.else152, %sw.bb, %sw.default, %if.then121, %if.then2, %if.then
  %unref.2 = phi i32 [ %unref.0, %if.then2 ], [ %unref.1, %if.then121 ], [ %unref.1, %sw.default ], [ %unref.1, %if.end192 ], [ %unref.1, %if.then165 ], [ %unref.1, %if.then198 ], [ %unref.1, %if.then209 ], [ %unref.1, %if.else211 ], [ %unref.1, %if.else215 ], [ %unref.1, %if.then148 ], [ %unref.1, %if.else152 ], [ %unref.1, %sw.bb ], [ %unref.0, %if.then ], [ %unref.0, %land.lhs.true33 ], [ %unref.0, %land.lhs.true61 ], [ %unref.0, %if.else68 ], [ %unref.0, %if.then13 ]
  %tobool219 = icmp eq i32 %unref.2, 0
  br i1 %tobool219, label %if.end223, label %while.body

while.body:                                       ; preds = %finish, %while.body
  %unref.3342 = phi i32 [ %dec221, %while.body ], [ %unref.2, %finish ]
  %dec221 = add nsw i32 %unref.3342, -1
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str55, i64 0, i64 0)) #3
  %tobool222 = icmp eq i32 %dec221, 0
  br i1 %tobool222, label %if.end223, label %while.body

if.end223:                                        ; preds = %while.body, %finish
  %sv_flags224 = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %66 = load i32* %sv_flags224, align 4, !tbaa !0
  %and225 = and i32 %66, 262144
  %cmp226 = icmp eq i32 %and225, 0
  br i1 %cmp226, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end223
  %67 = load i8** %sv_any116, align 8, !tbaa !3
  %xpv_cur229 = getelementptr inbounds i8* %67, i64 8
  %68 = bitcast i8* %xpv_cur229 to i64*
  %69 = load i64* %68, align 8, !tbaa !4
  store i64 %69, i64* %n_a, align 8, !tbaa !4
  %xpv_pv231 = bitcast i8* %67 to i8**
  %70 = load i8** %xpv_pv231, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.end223
  %call232 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %n_a, i32 2) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond233 = phi i8* [ %70, %cond.true ], [ %call232, %cond.false ]
  ret i8* %cond233
}

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

; Function Attrs: optsize
declare i8* @Perl_sv_uni_display(%struct.sv*, %struct.sv*, i64, i64) #2

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_pmop_dump(i32 %level, %struct._PerlIO** %file, %struct.pmop* %pm) #0 {
entry:
  %tobool = icmp eq %struct.pmop* %pm, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str57, i64 0, i64 0)) #4
  %inc = add nsw i32 %level, 1
  %op_pmflags = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 14
  %0 = load i32* %op_pmflags, align 4, !tbaa !0
  %and = shl i32 %0, 3
  %1 = and i32 %and, 16
  %2 = or i32 %1, 47
  %op_pmregexp = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 13
  %3 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.regexp* %3, null
  br i1 %tobool4, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.end
  %precomp = getelementptr inbounds %struct.regexp* %3, i64 0, i32 4
  %4 = load i8** %precomp, align 8, !tbaa !3
  %op_private = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 7
  %5 = load i8* %op_private, align 1, !tbaa !1
  %and9 = and i8 %5, 64
  %tobool10 = icmp ne i8 %and9, 0
  %cond = select i1 %tobool10, i8* getelementptr inbounds ([11 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str58, i64 0, i64 0), i32 %2, i8* %4, i32 %2, i8* %cond) #4
  br label %if.end12

if.else11:                                        ; preds = %if.end
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str60, i64 0, i64 0)) #4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then5
  %op_type = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 4
  %6 = load i16* %op_type, align 2, !tbaa !6
  %cmp = icmp eq i16 %6, 13
  br i1 %cmp, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %op_pmreplroot = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 10
  %7 = load %struct.op** %op_pmreplroot, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.op* %7, null
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0)) #4
  %8 = load %struct.op** %op_pmreplroot, align 8, !tbaa !3
  %call.i = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_op_dump(i32 0, %struct._PerlIO** %call.i, %struct.op* %8) #3
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end12, %if.then16
  %9 = load i32* %op_pmflags, align 4, !tbaa !0
  %tobool20 = icmp eq i32 %9, 0
  br i1 %tobool20, label %lor.lhs.false, label %if.then26

lor.lhs.false:                                    ; preds = %if.end18
  %10 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !3
  %tobool22 = icmp eq %struct.regexp* %10, null
  br i1 %tobool22, label %if.end112, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %substrs = getelementptr inbounds %struct.regexp* %10, i64 0, i32 3
  %11 = load %struct.reg_substr_data** %substrs, align 8, !tbaa !3
  %substr = getelementptr inbounds %struct.reg_substr_data* %11, i64 0, i32 0, i64 2, i32 2
  %12 = load %struct.sv** %substr, align 8, !tbaa !3
  %tobool25 = icmp eq %struct.sv* %12, null
  br i1 %tobool25, label %if.end112, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23, %if.end18
  %call = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  %op_pmdynflags = getelementptr inbounds %struct.pmop* %pm, i64 0, i32 16
  %13 = load i8* %op_pmdynflags, align 1, !tbaa !1
  %and28 = and i8 %13, 1
  %tobool29 = icmp eq i8 %and28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then26
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0)) #3
  %.pre = load i8* %op_pmdynflags, align 1, !tbaa !1
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then30
  %14 = phi i8 [ %13, %if.then26 ], [ %.pre, %if.then30 ]
  %and34 = and i8 %14, 2
  %tobool35 = icmp eq i8 %and34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str63, i64 0, i64 0)) #3
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.then36
  %15 = load i32* %op_pmflags, align 4, !tbaa !0
  %and39 = and i32 %15, 2
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end37
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0)) #3
  br label %if.end42

if.end42:                                         ; preds = %if.end37, %if.then41
  %16 = load %struct.regexp** %op_pmregexp, align 8, !tbaa !3
  %tobool44 = icmp eq %struct.regexp* %16, null
  br i1 %tobool44, label %if.end73, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.end42
  %substrs47 = getelementptr inbounds %struct.regexp* %16, i64 0, i32 3
  %17 = load %struct.reg_substr_data** %substrs47, align 8, !tbaa !3
  %substr50 = getelementptr inbounds %struct.reg_substr_data* %17, i64 0, i32 0, i64 2, i32 2
  %18 = load %struct.sv** %substr50, align 8, !tbaa !3
  %tobool51 = icmp eq %struct.sv* %18, null
  br i1 %tobool51, label %land.lhs.true60, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true45
  %reganch = getelementptr inbounds %struct.regexp* %16, i64 0, i32 15
  %19 = load i32* %reganch, align 4, !tbaa !0
  %and54 = and i32 %19, 64
  %tobool55 = icmp eq i32 %and54, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true52
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([11 x i8]* @.str65, i64 0, i64 0)) #3
  %.pr.pre = load %struct.regexp** %op_pmregexp, align 8, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true52, %if.then56
  %.pr = phi %struct.regexp* [ %16, %land.lhs.true52 ], [ %.pr.pre, %if.then56 ]
  %tobool59 = icmp eq %struct.regexp* %.pr, null
  br i1 %tobool59, label %if.end73, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true45, %if.end57
  %.pr172 = phi %struct.regexp* [ %.pr, %if.end57 ], [ %16, %land.lhs.true45 ]
  %substrs62 = getelementptr inbounds %struct.regexp* %.pr172, i64 0, i32 3
  %20 = load %struct.reg_substr_data** %substrs62, align 8, !tbaa !3
  %substr65 = getelementptr inbounds %struct.reg_substr_data* %20, i64 0, i32 0, i64 2, i32 2
  %21 = load %struct.sv** %substr65, align 8, !tbaa !3
  %tobool66 = icmp eq %struct.sv* %21, null
  br i1 %tobool66, label %if.end73, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true60
  %reganch69 = getelementptr inbounds %struct.regexp* %.pr172, i64 0, i32 15
  %22 = load i32* %reganch69, align 4, !tbaa !0
  %and70 = and i32 %22, 256
  %tobool71 = icmp eq i32 %and70, 0
  br i1 %tobool71, label %if.end73, label %if.then72

if.then72:                                        ; preds = %land.lhs.true67
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str66, i64 0, i64 0)) #3
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true67, %land.lhs.true60, %if.end57, %if.end42, %if.then72
  %23 = load i32* %op_pmflags, align 4, !tbaa !0
  %and75 = and i32 %23, 16
  %tobool76 = icmp eq i32 %and75, 0
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end73
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([11 x i8]* @.str67, i64 0, i64 0)) #3
  %.pre164 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end78

if.end78:                                         ; preds = %if.end73, %if.then77
  %24 = phi i32 [ %23, %if.end73 ], [ %.pre164, %if.then77 ]
  %and80 = and i32 %24, 64
  %tobool81 = icmp eq i32 %and80, 0
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end78
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str68, i64 0, i64 0)) #3
  %.pre165 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end83

if.end83:                                         ; preds = %if.end78, %if.then82
  %25 = phi i32 [ %24, %if.end78 ], [ %.pre165, %if.then82 ]
  %and85 = and i32 %25, 128
  %tobool86 = icmp eq i32 %and85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end83
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #3
  %.pre166 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end88

if.end88:                                         ; preds = %if.end83, %if.then87
  %26 = phi i32 [ %25, %if.end83 ], [ %.pre166, %if.then87 ]
  %and90 = and i32 %26, 256
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end88
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0)) #3
  %.pre167 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %if.end88, %if.then92
  %27 = phi i32 [ %26, %if.end88 ], [ %.pre167, %if.then92 ]
  %and95 = and i32 %27, 512
  %tobool96 = icmp eq i32 %and95, 0
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end93
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([10 x i8]* @.str71, i64 0, i64 0)) #3
  %.pre168 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end98

if.end98:                                         ; preds = %if.end93, %if.then97
  %28 = phi i32 [ %27, %if.end93 ], [ %.pre168, %if.then97 ]
  %and100 = and i32 %28, 1
  %tobool101 = icmp eq i32 %and100, 0
  br i1 %tobool101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %if.end98
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str72, i64 0, i64 0)) #3
  %.pre169 = load i32* %op_pmflags, align 4, !tbaa !0
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %if.then102
  %29 = phi i32 [ %28, %if.end98 ], [ %.pre169, %if.then102 ]
  %and105 = and i32 %29, 1024
  %tobool106 = icmp eq i32 %and105, 0
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end103
  tail call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0)) #3
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.then107
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %30 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %30, i64 8
  %31 = bitcast i8* %xpv_cur to i64*
  %32 = load i64* %31, align 8, !tbaa !4
  %tobool109 = icmp eq i64 %32, 0
  br i1 %tobool109, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end108
  %xpv_pv = bitcast i8* %30 to i8**
  %33 = load i8** %xpv_pv, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %33, i64 1
  br label %cond.end

cond.end:                                         ; preds = %if.end108, %cond.true
  %cond111 = phi i8* [ %add.ptr, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), %if.end108 ]
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str74, i64 0, i64 0), i8* %cond111) #4
  tail call void @Perl_sv_free(%struct.sv* %call) #3
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true23, %lor.lhs.false, %cond.end
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %if.end112, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_pmop_dump(%struct.pmop* %pm) #0 {
entry:
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_pmop_dump(i32 0, %struct._PerlIO** %call, %struct.pmop* %pm) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_op_dump(i32 %level, %struct._PerlIO** %file, %struct.op* %o) #0 {
entry:
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str57, i64 0, i64 0)) #4
  %inc = add nsw i32 %level, 1
  %op_seq = getelementptr inbounds %struct.op* %o, i64 0, i32 5
  %0 = load i16* %op_seq, align 2, !tbaa !6
  %tobool = icmp eq i16 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %0 to i32
  %call = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([5 x i8]* @.str76, i64 0, i64 0), i32 %conv) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([5 x i8]* @.str77, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32* @PL_dumpindent, align 4, !tbaa !0
  %mul = mul nsw i32 %1, %inc
  %sub = add nsw i32 %mul, -4
  %op_type = getelementptr inbounds %struct.op* %o, i64 0, i32 4
  %2 = load i16* %op_type, align 2, !tbaa !6
  %cmp = icmp eq i16 %2, 351
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call5 = tail call i8* @Perl_custom_op_name(%struct.op* %o) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %idxprom
  %3 = load i8** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call5, %cond.true ], [ %3, %cond.false ]
  %call7 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str78, i64 0, i64 0), i32 %sub, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* %cond) #3
  %op_next = getelementptr inbounds %struct.op* %o, i64 0, i32 0
  %4 = load %struct.op** %op_next, align 8, !tbaa !3
  %tobool8 = icmp eq %struct.op* %4, null
  br i1 %tobool8, label %if.else23, label %if.then9

if.then9:                                         ; preds = %cond.end
  %5 = load i16* %op_seq, align 2, !tbaa !6
  %tobool11 = icmp eq i16 %5, 0
  %op_seq14 = getelementptr inbounds %struct.op* %4, i64 0, i32 5
  %6 = load i16* %op_seq14, align 2, !tbaa !6
  %conv15 = zext i16 %6 to i32
  br i1 %tobool11, label %if.else17, label %if.then12

if.then12:                                        ; preds = %if.then9
  %call16 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str79, i64 0, i64 0), i32 %conv15) #3
  br label %if.end25

if.else17:                                        ; preds = %if.then9
  %call21 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i32 %conv15) #3
  br label %if.end25

if.else23:                                        ; preds = %cond.end
  %call24 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #3
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.else17, %if.else23
  %op_targ = getelementptr inbounds %struct.op* %o, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %tobool26 = icmp eq i64 %7, 0
  br i1 %tobool26, label %if.end68, label %if.then27

if.then27:                                        ; preds = %if.end25
  %8 = load i16* %op_type, align 2, !tbaa !6
  %cmp30 = icmp eq i16 %8, 0
  br i1 %cmp30, label %if.then32, label %if.else65

if.then32:                                        ; preds = %if.then27
  %arrayidx34 = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %7
  %9 = load i8** %arrayidx34, align 8, !tbaa !3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str82, i64 0, i64 0), i8* %9) #4
  %10 = load i64* %op_targ, align 8, !tbaa !4
  %cmp36 = icmp eq i64 %10, 174
  br i1 %cmp36, label %if.then38, label %if.end68

if.then38:                                        ; preds = %if.then32
  %cop_line = getelementptr inbounds %struct.op* %o, i64 1, i32 4
  %11 = bitcast i16* %cop_line to i32*
  %12 = load i32* %11, align 4, !tbaa !0
  %tobool39 = icmp eq i32 %12, 0
  br i1 %tobool39, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.then38
  %conv42 = zext i32 %12 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str83, i64 0, i64 0), i64 %conv42) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.then40
  %cop_stash = getelementptr inbounds %struct.op* %o, i64 1, i32 1
  %13 = load %struct.op** %cop_stash, align 8
  %tobool44 = icmp eq %struct.op* %13, null
  br i1 %tobool44, label %if.end59, label %cond.true45

cond.true45:                                      ; preds = %if.end43
  %sv_any = bitcast %struct.op* %13 to %struct.xpvhv**
  %14 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %14, i64 0, i32 10
  %15 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool47 = icmp eq i8* %15, null
  br i1 %tobool47, label %if.end59, label %if.then49

if.then49:                                        ; preds = %cond.true45
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str84, i64 0, i64 0), i8* %15) #4
  br label %if.end59

if.end59:                                         ; preds = %if.end43, %cond.true45, %if.then49
  %cop_label = getelementptr inbounds %struct.op* %o, i64 1
  %16 = bitcast %struct.op* %cop_label to i8**
  %17 = load i8** %16, align 8, !tbaa !3
  %tobool60 = icmp eq i8* %17, null
  br i1 %tobool60, label %if.end68, label %if.then61

if.then61:                                        ; preds = %if.end59
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str85, i64 0, i64 0), i8* %17) #4
  br label %if.end68

if.else65:                                        ; preds = %if.then27
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str86, i64 0, i64 0), i64 %7) #4
  br label %if.end68

if.end68:                                         ; preds = %if.end59, %if.end25, %if.else65, %if.then61, %if.then32
  %op_flags = getelementptr inbounds %struct.op* %o, i64 0, i32 6
  %18 = load i8* %op_flags, align 1, !tbaa !1
  %tobool69 = icmp eq i8 %18, 0
  br i1 %tobool69, label %if.end119, label %if.then70

if.then70:                                        ; preds = %if.end68
  %call71 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  %19 = load i8* %op_flags, align 1, !tbaa !1
  %conv73 = zext i8 %19 to i32
  %and = and i32 %conv73, 3
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb74
    i32 3, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.then70
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([6 x i8]* @.str87, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.then70
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([8 x i8]* @.str88, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.then70
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([6 x i8]* @.str89, i64 0, i64 0)) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.then70
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([9 x i8]* @.str90, i64 0, i64 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb75, %sw.bb74, %sw.bb
  %20 = load i8* %op_flags, align 1, !tbaa !1
  %and78 = and i8 %20, 4
  %tobool79 = icmp eq i8 %and78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %sw.epilog
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0)) #3
  %.pre1049 = load i8* %op_flags, align 1, !tbaa !1
  br label %if.end81

if.end81:                                         ; preds = %sw.epilog, %if.then80
  %21 = phi i8 [ %20, %sw.epilog ], [ %.pre1049, %if.then80 ]
  %and84 = and i8 %21, 8
  %tobool85 = icmp eq i8 %and84, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end81
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([8 x i8]* @.str92, i64 0, i64 0)) #3
  %.pre1050 = load i8* %op_flags, align 1, !tbaa !1
  br label %if.end87

if.end87:                                         ; preds = %if.end81, %if.then86
  %22 = phi i8 [ %21, %if.end81 ], [ %.pre1050, %if.then86 ]
  %and90 = and i8 %22, 64
  %tobool91 = icmp eq i8 %and90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end87
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([9 x i8]* @.str93, i64 0, i64 0)) #3
  %.pre1051 = load i8* %op_flags, align 1, !tbaa !1
  br label %if.end93

if.end93:                                         ; preds = %if.end87, %if.then92
  %23 = phi i8 [ %22, %if.end87 ], [ %.pre1051, %if.then92 ]
  %and96 = and i8 %23, 16
  %tobool97 = icmp eq i8 %and96, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end93
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([5 x i8]* @.str94, i64 0, i64 0)) #3
  %.pre1052 = load i8* %op_flags, align 1, !tbaa !1
  br label %if.end99

if.end99:                                         ; preds = %if.end93, %if.then98
  %24 = phi i8 [ %23, %if.end93 ], [ %.pre1052, %if.then98 ]
  %and102 = and i8 %24, 32
  %tobool103 = icmp eq i8 %and102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end99
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([5 x i8]* @.str95, i64 0, i64 0)) #3
  %.pr = load i8* %op_flags, align 1, !tbaa !1
  br label %if.end105

if.end105:                                        ; preds = %if.end99, %if.then104
  %25 = phi i8 [ %24, %if.end99 ], [ %.pr, %if.then104 ]
  %tobool109 = icmp slt i8 %25, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end105
  tail call void @Perl_sv_catpv(%struct.sv* %call71, i8* getelementptr inbounds ([9 x i8]* @.str96, i64 0, i64 0)) #3
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end105
  %sv_any112 = getelementptr inbounds %struct.sv* %call71, i64 0, i32 0
  %26 = load i8** %sv_any112, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur to i64*
  %28 = load i64* %27, align 8, !tbaa !4
  %tobool113 = icmp eq i64 %28, 0
  br i1 %tobool113, label %cond.end117, label %cond.true114

cond.true114:                                     ; preds = %if.end111
  %xpv_pv = bitcast i8* %26 to i8**
  %29 = load i8** %xpv_pv, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %29, i64 1
  br label %cond.end117

cond.end117:                                      ; preds = %if.end111, %cond.true114
  %cond118 = phi i8* [ %add.ptr, %cond.true114 ], [ getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), %if.end111 ]
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str97, i64 0, i64 0), i8* %cond118) #4
  tail call void @Perl_sv_free(%struct.sv* %call71) #3
  br label %if.end119

if.end119:                                        ; preds = %if.end68, %cond.end117
  %op_private = getelementptr inbounds %struct.op* %o, i64 0, i32 7
  %30 = load i8* %op_private, align 1, !tbaa !1
  %tobool120 = icmp eq i8 %30, 0
  br i1 %tobool120, label %if.end664, label %if.then121

if.then121:                                       ; preds = %if.end119
  %call123 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  %31 = load i16* %op_type, align 2, !tbaa !6
  %idxprom125 = zext i16 %31 to i64
  %arrayidx126 = getelementptr inbounds [0 x i32]* @PL_opargs, i64 0, i64 %idxprom125
  %32 = load i32* %arrayidx126, align 4, !tbaa !0
  %and127 = and i32 %32, 256
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %if.else136, label %if.then129

if.then129:                                       ; preds = %if.then121
  %33 = load i8* %op_private, align 1, !tbaa !1
  %and132 = and i8 %33, 16
  %tobool133 = icmp eq i8 %and132, 0
  br i1 %tobool133, label %if.end645, label %if.then134

if.then134:                                       ; preds = %if.then129
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([11 x i8]* @.str98, i64 0, i64 0)) #3
  br label %if.end645

if.else136:                                       ; preds = %if.then121
  switch i16 %31, label %if.end645 [
    i16 167, label %if.then155
    i16 178, label %if.then155
    i16 168, label %if.then155
    i16 207, label %if.then155
    i16 37, label %if.then167
    i16 36, label %if.then185
    i16 35, label %if.then197
    i16 61, label %if.then233
    i16 166, label %if.then280
    i16 15, label %if.then280
    i16 6, label %if.then280
    i16 125, label %if.then280
    i16 134, label %if.then280
    i16 14, label %if.then280
    i16 127, label %if.then280
    i16 135, label %if.then280
    i16 5, label %if.then372
    i16 157, label %if.then408
    i16 158, label %if.then420
    i16 17, label %if.then432
    i16 7, label %if.then444
    i16 141, label %if.then456
    i16 132, label %if.then468
    i16 133, label %if.then480
    i16 150, label %if.then492
    i16 348, label %if.then516
    i16 191, label %if.then533
    i16 24, label %if.then533
    i16 190, label %if.then563
    i16 171, label %if.then581
    i16 236, label %if.then618
    i16 237, label %if.then618
    i16 238, label %if.then618
    i16 239, label %if.then618
    i16 240, label %if.then618
    i16 241, label %if.then618
  ]

if.then155:                                       ; preds = %if.else136, %if.else136, %if.else136, %if.else136
  %34 = load i8* %op_private, align 1, !tbaa !1
  %and158 = and i8 %34, 64
  %tobool159 = icmp eq i8 %and158, 0
  br i1 %tobool159, label %if.end645, label %if.then160

if.then160:                                       ; preds = %if.then155
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([12 x i8]* @.str99, i64 0, i64 0)) #3
  br label %if.end645

if.then167:                                       ; preds = %if.else136
  %35 = load i8* %op_private, align 1, !tbaa !1
  %and170 = and i8 %35, 64
  %tobool171 = icmp eq i8 %and170, 0
  br i1 %tobool171, label %if.end173, label %if.then172

if.then172:                                       ; preds = %if.then167
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str100, i64 0, i64 0)) #3
  %.pre = load i8* %op_private, align 1, !tbaa !1
  br label %if.end173

if.end173:                                        ; preds = %if.then167, %if.then172
  %36 = phi i8 [ %35, %if.then167 ], [ %.pre, %if.then172 ]
  %and176 = and i8 %36, 32
  %tobool177 = icmp eq i8 %and176, 0
  br i1 %tobool177, label %if.end645, label %if.then178

if.then178:                                       ; preds = %if.end173
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([6 x i8]* @.str101, i64 0, i64 0)) #3
  br label %if.end645

if.then185:                                       ; preds = %if.else136
  %37 = load i8* %op_private, align 1, !tbaa !1
  %and188 = and i8 %37, 64
  %tobool189 = icmp eq i8 %and188, 0
  br i1 %tobool189, label %if.end645, label %if.then190

if.then190:                                       ; preds = %if.then185
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([11 x i8]* @.str102, i64 0, i64 0)) #3
  br label %if.end645

if.then197:                                       ; preds = %if.else136
  %38 = load i8* %op_private, align 1, !tbaa !1
  %and200 = and i8 %38, 8
  %tobool201 = icmp eq i8 %and200, 0
  br i1 %tobool201, label %if.end203, label %if.then202

if.then202:                                       ; preds = %if.then197
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str103, i64 0, i64 0)) #3
  %.pre1032 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %if.then202
  %39 = phi i8 [ %38, %if.then197 ], [ %.pre1032, %if.then202 ]
  %and206 = and i8 %39, 16
  %tobool207 = icmp eq i8 %and206, 0
  br i1 %tobool207, label %if.end209, label %if.then208

if.then208:                                       ; preds = %if.end203
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str104, i64 0, i64 0)) #3
  %.pre1033 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end209

if.end209:                                        ; preds = %if.end203, %if.then208
  %40 = phi i8 [ %39, %if.end203 ], [ %.pre1033, %if.then208 ]
  %and212 = and i8 %40, 32
  %tobool213 = icmp eq i8 %and212, 0
  br i1 %tobool213, label %if.end215, label %if.then214

if.then214:                                       ; preds = %if.end209
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([12 x i8]* @.str105, i64 0, i64 0)) #3
  %.pre1034 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end215

if.end215:                                        ; preds = %if.end209, %if.then214
  %41 = phi i8 [ %40, %if.end209 ], [ %.pre1034, %if.then214 ]
  %and218 = and i8 %41, 4
  %tobool219 = icmp eq i8 %and218, 0
  br i1 %tobool219, label %if.end221, label %if.then220

if.then220:                                       ; preds = %if.end215
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([11 x i8]* @.str106, i64 0, i64 0)) #3
  %.pre1035 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end221

if.end221:                                        ; preds = %if.end215, %if.then220
  %42 = phi i8 [ %41, %if.end215 ], [ %.pre1035, %if.then220 ]
  %and224 = and i8 %42, 64
  %tobool225 = icmp eq i8 %and224, 0
  br i1 %tobool225, label %if.end645, label %if.then226

if.then226:                                       ; preds = %if.end221
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str107, i64 0, i64 0)) #3
  br label %if.end645

if.then233:                                       ; preds = %if.else136
  %43 = load i8* %op_private, align 1, !tbaa !1
  %and236 = and i8 %43, 64
  %tobool237 = icmp eq i8 %and236, 0
  br i1 %tobool237, label %if.end645, label %if.then238

if.then238:                                       ; preds = %if.then233
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str108, i64 0, i64 0)) #3
  br label %if.end645

if.then280:                                       ; preds = %if.else136, %if.else136, %if.else136, %if.else136, %if.else136, %if.else136, %if.else136, %if.else136
  %cmp283 = icmp eq i16 %31, 166
  %44 = load i8* %op_private, align 1, !tbaa !1
  %conv287 = zext i8 %44 to i32
  br i1 %cmp283, label %if.then285, label %if.else322

if.then285:                                       ; preds = %if.then280
  %and288 = and i32 %conv287, 8
  %tobool289 = icmp eq i32 %and288, 0
  br i1 %tobool289, label %if.end291, label %if.then290

if.then290:                                       ; preds = %if.then285
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str109, i64 0, i64 0)) #3
  %.pre1036 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end291

if.end291:                                        ; preds = %if.then285, %if.then290
  %45 = phi i8 [ %44, %if.then285 ], [ %.pre1036, %if.then290 ]
  %and294 = and i8 %45, 16
  %tobool295 = icmp eq i8 %and294, 0
  br i1 %tobool295, label %if.end297, label %if.then296

if.then296:                                       ; preds = %if.end291
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([4 x i8]* @.str110, i64 0, i64 0)) #3
  %.pre1037 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end297

if.end297:                                        ; preds = %if.end291, %if.then296
  %46 = phi i8 [ %45, %if.end291 ], [ %.pre1037, %if.then296 ]
  %and300 = and i8 %46, 32
  %tobool301 = icmp eq i8 %and300, 0
  br i1 %tobool301, label %if.end303, label %if.then302

if.then302:                                       ; preds = %if.end297
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str111, i64 0, i64 0)) #3
  %.pr1026 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end303

if.end303:                                        ; preds = %if.end297, %if.then302
  %47 = phi i8 [ %46, %if.end297 ], [ %.pr1026, %if.then302 ]
  %tobool307 = icmp slt i8 %47, 0
  br i1 %tobool307, label %if.then308, label %if.end309

if.then308:                                       ; preds = %if.end303
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str112, i64 0, i64 0)) #3
  %.pre1038 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %if.end303
  %48 = phi i8 [ %.pre1038, %if.then308 ], [ %47, %if.end303 ]
  %and312 = and i8 %48, 4
  %tobool313 = icmp eq i8 %and312, 0
  br i1 %tobool313, label %if.end315, label %if.then314

if.then314:                                       ; preds = %if.end309
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str113, i64 0, i64 0)) #3
  %.pre1039 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end315

if.end315:                                        ; preds = %if.end309, %if.then314
  %49 = phi i8 [ %48, %if.end309 ], [ %.pre1039, %if.then314 ]
  %and318 = and i8 %49, 64
  %tobool319 = icmp eq i8 %and318, 0
  br i1 %tobool319, label %if.end336, label %if.then320

if.then320:                                       ; preds = %if.end315
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str114, i64 0, i64 0)) #3
  br label %if.end336

if.else322:                                       ; preds = %if.then280
  %and325 = and i32 %conv287, 96
  switch i32 %and325, label %sw.epilog329 [
    i32 96, label %sw.bb326
    i32 32, label %sw.bb327
    i32 64, label %sw.bb328
  ]

sw.bb326:                                         ; preds = %if.else322
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([4 x i8]* @.str115, i64 0, i64 0)) #3
  br label %sw.epilog329

sw.bb327:                                         ; preds = %if.else322
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([4 x i8]* @.str116, i64 0, i64 0)) #3
  br label %sw.epilog329

sw.bb328:                                         ; preds = %if.else322
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([4 x i8]* @.str117, i64 0, i64 0)) #3
  br label %sw.epilog329

sw.epilog329:                                     ; preds = %if.else322, %sw.bb328, %sw.bb327, %sw.bb326
  %50 = load i8* %op_private, align 1, !tbaa !1
  %and332 = and i8 %50, 8
  %tobool333 = icmp eq i8 %and332, 0
  br i1 %tobool333, label %if.end336, label %if.then334

if.then334:                                       ; preds = %sw.epilog329
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([13 x i8]* @.str118, i64 0, i64 0)) #3
  br label %if.end336

if.end336:                                        ; preds = %sw.epilog329, %if.end315, %if.then334, %if.then320
  %51 = load i16* %op_type, align 2, !tbaa !6
  switch i16 %51, label %if.else353 [
    i16 127, label %if.then346
    i16 135, label %if.then346
  ]

if.then346:                                       ; preds = %if.end336, %if.end336
  %52 = load i8* %op_private, align 1, !tbaa !1
  %and349 = and i8 %52, 16
  %tobool350 = icmp eq i8 %and349, 0
  br i1 %tobool350, label %if.end645, label %if.then351

if.then351:                                       ; preds = %if.then346
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([12 x i8]* @.str119, i64 0, i64 0)) #3
  br label %if.end645

if.else353:                                       ; preds = %if.end336
  %53 = load i8* %op_private, align 1, !tbaa !1
  %and356 = and i8 %53, 2
  %tobool357 = icmp eq i8 %and356, 0
  br i1 %tobool357, label %if.end359, label %if.then358

if.then358:                                       ; preds = %if.else353
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([13 x i8]* @.str120, i64 0, i64 0)) #3
  %.pre1040 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end359

if.end359:                                        ; preds = %if.else353, %if.then358
  %54 = phi i8 [ %53, %if.else353 ], [ %.pre1040, %if.then358 ]
  %and362 = and i8 %54, 16
  %tobool363 = icmp eq i8 %and362, 0
  br i1 %tobool363, label %if.end645, label %if.then364

if.then364:                                       ; preds = %if.end359
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([11 x i8]* @.str121, i64 0, i64 0)) #3
  br label %if.end645

if.then372:                                       ; preds = %if.else136
  %55 = load i8* %op_private, align 1, !tbaa !1
  %and375 = and i8 %55, 64
  %tobool376 = icmp eq i8 %and375, 0
  br i1 %tobool376, label %if.end378, label %if.then377

if.then377:                                       ; preds = %if.then372
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([6 x i8]* @.str122, i64 0, i64 0)) #3
  %.pre1041 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end378

if.end378:                                        ; preds = %if.then372, %if.then377
  %56 = phi i8 [ %55, %if.then372 ], [ %.pre1041, %if.then377 ]
  %and381 = and i8 %56, 8
  %tobool382 = icmp eq i8 %and381, 0
  br i1 %tobool382, label %if.end384, label %if.then383

if.then383:                                       ; preds = %if.end378
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str123, i64 0, i64 0)) #3
  %.pre1042 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end384

if.end384:                                        ; preds = %if.end378, %if.then383
  %57 = phi i8 [ %56, %if.end378 ], [ %.pre1042, %if.then383 ]
  %and387 = and i8 %57, 32
  %tobool388 = icmp eq i8 %and387, 0
  br i1 %tobool388, label %if.end390, label %if.then389

if.then389:                                       ; preds = %if.end384
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str124, i64 0, i64 0)) #3
  %.pr1027 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end390

if.end390:                                        ; preds = %if.end384, %if.then389
  %58 = phi i8 [ %57, %if.end384 ], [ %.pr1027, %if.then389 ]
  %tobool394 = icmp slt i8 %58, 0
  br i1 %tobool394, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.end390
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str125, i64 0, i64 0)) #3
  %.pre1043 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end396

if.end396:                                        ; preds = %if.then395, %if.end390
  %59 = phi i8 [ %.pre1043, %if.then395 ], [ %58, %if.end390 ]
  %and399 = and i8 %59, 16
  %tobool400 = icmp eq i8 %and399, 0
  br i1 %tobool400, label %if.end645, label %if.then401

if.then401:                                       ; preds = %if.end396
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str126, i64 0, i64 0)) #3
  br label %if.end645

if.then408:                                       ; preds = %if.else136
  %60 = load i8* %op_private, align 1, !tbaa !1
  %and411 = and i8 %60, 64
  %tobool412 = icmp eq i8 %and411, 0
  br i1 %tobool412, label %if.end645, label %if.then413

if.then413:                                       ; preds = %if.then408
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str127, i64 0, i64 0)) #3
  br label %if.end645

if.then420:                                       ; preds = %if.else136
  %61 = load i8* %op_private, align 1, !tbaa !1
  %and423 = and i8 %61, 64
  %tobool424 = icmp eq i8 %and423, 0
  br i1 %tobool424, label %if.end645, label %if.then425

if.then425:                                       ; preds = %if.then420
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str127, i64 0, i64 0)) #3
  br label %if.end645

if.then432:                                       ; preds = %if.else136
  %62 = load i8* %op_private, align 1, !tbaa !1
  %tobool436 = icmp slt i8 %62, 0
  br i1 %tobool436, label %if.then437, label %if.end645

if.then437:                                       ; preds = %if.then432
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str128, i64 0, i64 0)) #3
  br label %if.end645

if.then444:                                       ; preds = %if.else136
  %63 = load i8* %op_private, align 1, !tbaa !1
  %and447 = and i8 %63, 32
  %tobool448 = icmp eq i8 %and447, 0
  br i1 %tobool448, label %if.end645, label %if.then449

if.then449:                                       ; preds = %if.then444
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([10 x i8]* @.str129, i64 0, i64 0)) #3
  br label %if.end645

if.then456:                                       ; preds = %if.else136
  %64 = load i8* %op_private, align 1, !tbaa !1
  %and459 = and i8 %64, 64
  %tobool460 = icmp eq i8 %and459, 0
  br i1 %tobool460, label %if.end645, label %if.then461

if.then461:                                       ; preds = %if.then456
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str130, i64 0, i64 0)) #3
  br label %if.end645

if.then468:                                       ; preds = %if.else136
  %65 = load i8* %op_private, align 1, !tbaa !1
  %and471 = and i8 %65, 64
  %tobool472 = icmp eq i8 %and471, 0
  br i1 %tobool472, label %if.end645, label %if.then473

if.then473:                                       ; preds = %if.then468
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str131, i64 0, i64 0)) #3
  br label %if.end645

if.then480:                                       ; preds = %if.else136
  %66 = load i8* %op_private, align 1, !tbaa !1
  %and483 = and i8 %66, 64
  %tobool484 = icmp eq i8 %and483, 0
  br i1 %tobool484, label %if.end645, label %if.then485

if.then485:                                       ; preds = %if.then480
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([12 x i8]* @.str132, i64 0, i64 0)) #3
  br label %if.end645

if.then492:                                       ; preds = %if.else136
  %67 = load i8* %op_private, align 1, !tbaa !1
  %and495 = and i8 %67, 1
  %tobool496 = icmp eq i8 %and495, 0
  br i1 %tobool496, label %if.end498, label %if.then497

if.then497:                                       ; preds = %if.then492
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str133, i64 0, i64 0)) #3
  %.pre1044 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end498

if.end498:                                        ; preds = %if.then492, %if.then497
  %68 = phi i8 [ %67, %if.then492 ], [ %.pre1044, %if.then497 ]
  %and501 = and i8 %68, 2
  %tobool502 = icmp eq i8 %and501, 0
  br i1 %tobool502, label %if.end504, label %if.then503

if.then503:                                       ; preds = %if.end498
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str134, i64 0, i64 0)) #3
  %.pre1045 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end504

if.end504:                                        ; preds = %if.end498, %if.then503
  %69 = phi i8 [ %68, %if.end498 ], [ %.pre1045, %if.then503 ]
  %and507 = and i8 %69, 4
  %tobool508 = icmp eq i8 %and507, 0
  br i1 %tobool508, label %if.end645, label %if.then509

if.then509:                                       ; preds = %if.end504
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str135, i64 0, i64 0)) #3
  br label %if.end645

if.then516:                                       ; preds = %if.else136
  %70 = load i8* %op_private, align 1, !tbaa !1
  %and519 = and i8 %70, 64
  %tobool520 = icmp eq i8 %and519, 0
  br i1 %tobool520, label %if.end645, label %if.then521

if.then521:                                       ; preds = %if.then516
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str136, i64 0, i64 0)) #3
  br label %if.end645

if.then533:                                       ; preds = %if.else136, %if.else136
  %71 = load i8* %op_private, align 1, !tbaa !1
  %and536 = and i8 %71, 16
  %tobool537 = icmp eq i8 %and536, 0
  br i1 %tobool537, label %if.end539, label %if.then538

if.then538:                                       ; preds = %if.then533
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([8 x i8]* @.str137, i64 0, i64 0)) #3
  %.pre1046 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end539

if.end539:                                        ; preds = %if.then533, %if.then538
  %72 = phi i8 [ %71, %if.then533 ], [ %.pre1046, %if.then538 ]
  %and542 = and i8 %72, 32
  %tobool543 = icmp eq i8 %and542, 0
  br i1 %tobool543, label %if.end545, label %if.then544

if.then544:                                       ; preds = %if.end539
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str138, i64 0, i64 0)) #3
  %.pre1047 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end545

if.end545:                                        ; preds = %if.end539, %if.then544
  %73 = phi i8 [ %72, %if.end539 ], [ %.pre1047, %if.then544 ]
  %and548 = and i8 %73, 64
  %tobool549 = icmp eq i8 %and548, 0
  br i1 %tobool549, label %if.end551, label %if.then550

if.then550:                                       ; preds = %if.end545
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([9 x i8]* @.str139, i64 0, i64 0)) #3
  %.pr1028 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end551

if.end551:                                        ; preds = %if.end545, %if.then550
  %74 = phi i8 [ %73, %if.end545 ], [ %.pr1028, %if.then550 ]
  %tobool555 = icmp slt i8 %74, 0
  br i1 %tobool555, label %if.then556, label %if.end645

if.then556:                                       ; preds = %if.end551
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([10 x i8]* @.str140, i64 0, i64 0)) #3
  br label %if.end645

if.then563:                                       ; preds = %if.else136
  %75 = load i8* %op_private, align 1, !tbaa !1
  %tobool567 = icmp slt i8 %75, 0
  br i1 %tobool567, label %if.then568, label %if.end569

if.then568:                                       ; preds = %if.then563
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([13 x i8]* @.str141, i64 0, i64 0)) #3
  %.pre1048 = load i8* %op_private, align 1, !tbaa !1
  br label %if.end569

if.end569:                                        ; preds = %if.then568, %if.then563
  %76 = phi i8 [ %.pre1048, %if.then568 ], [ %75, %if.then563 ]
  %and572 = and i8 %76, 64
  %tobool573 = icmp eq i8 %and572, 0
  br i1 %tobool573, label %if.end645, label %if.then574

if.then574:                                       ; preds = %if.end569
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([13 x i8]* @.str142, i64 0, i64 0)) #3
  br label %if.end645

if.then581:                                       ; preds = %if.else136
  %77 = load i8* %op_private, align 1, !tbaa !1
  %and584 = and i8 %77, 64
  %tobool585 = icmp eq i8 %and584, 0
  br i1 %tobool585, label %if.end645, label %if.then586

if.then586:                                       ; preds = %if.then581
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([13 x i8]* @.str142, i64 0, i64 0)) #3
  br label %if.end645

if.then618:                                       ; preds = %if.else136, %if.else136, %if.else136, %if.else136, %if.else136, %if.else136
  %78 = load i8* %op_private, align 1, !tbaa !1
  %and621 = and i8 %78, 2
  %tobool622 = icmp eq i8 %and621, 0
  br i1 %tobool622, label %if.end645, label %if.then623

if.then623:                                       ; preds = %if.then618
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([11 x i8]* @.str143, i64 0, i64 0)) #3
  br label %if.end645

if.end645:                                        ; preds = %if.else136, %if.then129, %if.then155, %if.end173, %if.then185, %if.end221, %if.then233, %if.then346, %if.end359, %if.end396, %if.then408, %if.then420, %if.then444, %if.then456, %if.then468, %if.then480, %if.end504, %if.then516, %if.end569, %if.then581, %if.then618, %if.then160, %if.then190, %if.then238, %if.then401, %if.then425, %if.then449, %if.then473, %if.then509, %if.then556, %if.end551, %if.then586, %if.then623, %if.then574, %if.then521, %if.then485, %if.then461, %if.then432, %if.then437, %if.then413, %if.then351, %if.then364, %if.then226, %if.then178, %if.then134
  %79 = load i8* %op_flags, align 1, !tbaa !1
  %and648 = and i8 %79, 32
  %tobool649 = icmp eq i8 %and648, 0
  br i1 %tobool649, label %if.end655, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end645
  %80 = load i8* %op_private, align 1, !tbaa !1
  %tobool653 = icmp slt i8 %80, 0
  br i1 %tobool653, label %if.then654, label %if.end655

if.then654:                                       ; preds = %land.lhs.true
  tail call void @Perl_sv_catpv(%struct.sv* %call123, i8* getelementptr inbounds ([7 x i8]* @.str128, i64 0, i64 0)) #3
  br label %if.end655

if.end655:                                        ; preds = %if.end645, %if.then654, %land.lhs.true
  %sv_any656 = getelementptr inbounds %struct.sv* %call123, i64 0, i32 0
  %81 = load i8** %sv_any656, align 8, !tbaa !3
  %xpv_cur657 = getelementptr inbounds i8* %81, i64 8
  %82 = bitcast i8* %xpv_cur657 to i64*
  %83 = load i64* %82, align 8, !tbaa !4
  %tobool658 = icmp eq i64 %83, 0
  br i1 %tobool658, label %if.end663, label %if.then659

if.then659:                                       ; preds = %if.end655
  %xpv_pv661 = bitcast i8* %81 to i8**
  %84 = load i8** %xpv_pv661, align 8, !tbaa !3
  %add.ptr662 = getelementptr inbounds i8* %84, i64 1
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str144, i64 0, i64 0), i8* %add.ptr662) #4
  br label %if.end663

if.end663:                                        ; preds = %if.end655, %if.then659
  tail call void @Perl_sv_free(%struct.sv* %call123) #3
  br label %if.end664

if.end664:                                        ; preds = %if.end119, %if.end663
  %85 = load i16* %op_type, align 2, !tbaa !6
  %conv666 = zext i16 %85 to i32
  switch i32 %conv666, label %sw.epilog775 [
    i32 179, label %sw.bb766
    i32 207, label %sw.bb766
    i32 168, label %sw.bb766
    i32 5, label %sw.bb693
    i32 350, label %sw.bb693
    i32 349, label %sw.bb696
    i32 174, label %sw.bb696
    i32 175, label %sw.bb696
    i32 182, label %sw.bb727
    i32 162, label %sw.bb755
    i32 156, label %sw.bb755
    i32 155, label %sw.bb755
    i32 153, label %sw.bb755
    i32 160, label %sw.bb755
    i32 159, label %sw.bb755
    i32 13, label %sw.bb765
    i32 31, label %sw.bb765
    i32 32, label %sw.bb765
    i32 33, label %sw.bb765
    i32 178, label %sw.bb766
    i32 312, label %sw.bb766
    i32 167, label %sw.bb766
  ]

sw.bb693:                                         ; preds = %if.end664, %if.end664
  %op_sv694 = getelementptr inbounds %struct.op* %o, i64 1
  %86 = bitcast %struct.op* %op_sv694 to %struct.sv**
  %87 = load %struct.sv** %86, align 8, !tbaa !3
  %call695 = tail call i8* @Perl_sv_peek(%struct.sv* %87) #4
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([9 x i8]* @.str147, i64 0, i64 0), i8* %call695) #4
  br label %sw.epilog775

sw.bb696:                                         ; preds = %if.end664, %if.end664, %if.end664
  %cop_line697 = getelementptr inbounds %struct.op* %o, i64 1, i32 4
  %88 = bitcast i16* %cop_line697 to i32*
  %89 = load i32* %88, align 4, !tbaa !0
  %tobool698 = icmp eq i32 %89, 0
  br i1 %tobool698, label %if.end702, label %if.then699

if.then699:                                       ; preds = %sw.bb696
  %conv701 = zext i32 %89 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str83, i64 0, i64 0), i64 %conv701) #4
  br label %if.end702

if.end702:                                        ; preds = %sw.bb696, %if.then699
  %cop_stash703 = getelementptr inbounds %struct.op* %o, i64 1, i32 1
  %90 = load %struct.op** %cop_stash703, align 8
  %tobool704 = icmp eq %struct.op* %90, null
  br i1 %tobool704, label %if.end721, label %cond.true705

cond.true705:                                     ; preds = %if.end702
  %sv_any707 = bitcast %struct.op* %90 to %struct.xpvhv**
  %91 = load %struct.xpvhv** %sv_any707, align 8, !tbaa !3
  %xhv_name708 = getelementptr inbounds %struct.xpvhv* %91, i64 0, i32 10
  %92 = load i8** %xhv_name708, align 8, !tbaa !3
  %tobool709 = icmp eq i8* %92, null
  br i1 %tobool709, label %if.end721, label %if.then711

if.then711:                                       ; preds = %cond.true705
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str84, i64 0, i64 0), i8* %92) #4
  br label %if.end721

if.end721:                                        ; preds = %cond.true705, %if.end702, %if.then711
  %cop_label722 = getelementptr inbounds %struct.op* %o, i64 1
  %93 = bitcast %struct.op* %cop_label722 to i8**
  %94 = load i8** %93, align 8, !tbaa !3
  %tobool723 = icmp eq i8* %94, null
  br i1 %tobool723, label %sw.epilog775, label %if.then724

if.then724:                                       ; preds = %if.end721
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str85, i64 0, i64 0), i8* %94) #4
  br label %sw.epilog775

sw.bb727:                                         ; preds = %if.end664
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str148, i64 0, i64 0)) #4
  %op_redoop = getelementptr inbounds %struct.op* %o, i64 1, i32 2
  %95 = load %struct.op* ()** %op_redoop, align 8
  %tobool728 = icmp eq %struct.op* ()* %95, null
  br i1 %tobool728, label %if.else734, label %if.then729

if.then729:                                       ; preds = %sw.bb727
  %96 = bitcast %struct.op* ()* %95 to %struct.op*
  %op_seq731 = getelementptr inbounds %struct.op* %96, i64 0, i32 5
  %97 = load i16* %op_seq731, align 2, !tbaa !6
  %conv732 = zext i16 %97 to i32
  %call733 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str79, i64 0, i64 0), i32 %conv732) #3
  br label %if.end736

if.else734:                                       ; preds = %sw.bb727
  %call735 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #3
  br label %if.end736

if.end736:                                        ; preds = %if.else734, %if.then729
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str149, i64 0, i64 0)) #4
  %op_nextop = getelementptr inbounds %struct.op* %o, i64 1, i32 3
  %98 = bitcast i64* %op_nextop to %struct.op**
  %99 = load %struct.op** %98, align 8, !tbaa !3
  %tobool737 = icmp eq %struct.op* %99, null
  br i1 %tobool737, label %if.else743, label %if.then738

if.then738:                                       ; preds = %if.end736
  %op_seq740 = getelementptr inbounds %struct.op* %99, i64 0, i32 5
  %100 = load i16* %op_seq740, align 2, !tbaa !6
  %conv741 = zext i16 %100 to i32
  %call742 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str79, i64 0, i64 0), i32 %conv741) #3
  br label %if.end745

if.else743:                                       ; preds = %if.end736
  %call744 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #3
  br label %if.end745

if.end745:                                        ; preds = %if.else743, %if.then738
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str150, i64 0, i64 0)) #4
  %op_lastop = getelementptr inbounds %struct.op* %o, i64 1, i32 4
  %101 = bitcast i16* %op_lastop to %struct.op**
  %102 = load %struct.op** %101, align 8, !tbaa !3
  %tobool746 = icmp eq %struct.op* %102, null
  br i1 %tobool746, label %if.else752, label %if.then747

if.then747:                                       ; preds = %if.end745
  %op_seq749 = getelementptr inbounds %struct.op* %102, i64 0, i32 5
  %103 = load i16* %op_seq749, align 2, !tbaa !6
  %conv750 = zext i16 %103 to i32
  %call751 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str79, i64 0, i64 0), i32 %conv750) #3
  br label %sw.epilog775

if.else752:                                       ; preds = %if.end745
  %call753 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #3
  br label %sw.epilog775

sw.bb755:                                         ; preds = %if.end664, %if.end664, %if.end664, %if.end664, %if.end664, %if.end664
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0)) #4
  %104 = getelementptr inbounds %struct.op* %o, i64 1, i32 1
  %105 = load %struct.op** %104, align 8, !tbaa !3
  %tobool756 = icmp eq %struct.op* %105, null
  br i1 %tobool756, label %if.else762, label %if.then757

if.then757:                                       ; preds = %sw.bb755
  %op_seq759 = getelementptr inbounds %struct.op* %105, i64 0, i32 5
  %106 = load i16* %op_seq759, align 2, !tbaa !6
  %conv760 = zext i16 %106 to i32
  %call761 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str79, i64 0, i64 0), i32 %conv760) #3
  br label %sw.epilog775

if.else762:                                       ; preds = %sw.bb755
  %call763 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0)) #3
  br label %sw.epilog775

sw.bb765:                                         ; preds = %if.end664, %if.end664, %if.end664, %if.end664
  %107 = bitcast %struct.op* %o to %struct.pmop*
  tail call void @Perl_do_pmop_dump(i32 %inc, %struct._PerlIO** %file, %struct.pmop* %107) #4
  br label %sw.epilog775

sw.bb766:                                         ; preds = %if.end664, %if.end664, %if.end664, %if.end664, %if.end664, %if.end664
  %108 = load i8* %op_private, align 1, !tbaa !1
  %and769 = and i8 %108, 64
  %tobool770 = icmp eq i8 %and769, 0
  br i1 %tobool770, label %sw.epilog775, label %if.then771

if.then771:                                       ; preds = %sw.bb766
  %109 = load i64* %op_targ, align 8, !tbaa !4
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %inc, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str152, i64 0, i64 0), i64 %109) #4
  br label %sw.epilog775

sw.epilog775:                                     ; preds = %sw.bb766, %if.end721, %if.end664, %if.then771, %if.then757, %if.else762, %if.then747, %if.else752, %if.then724, %sw.bb765, %sw.bb693
  %110 = load i8* %op_flags, align 1, !tbaa !1
  %and778 = and i8 %110, 4
  %tobool779 = icmp eq i8 %and778, 0
  br i1 %tobool779, label %if.end782, label %if.then780

if.then780:                                       ; preds = %sw.epilog775
  %111 = getelementptr inbounds %struct.op* %o, i64 1, i32 0
  %kid.01029 = load %struct.op** %111, align 8
  %tobool7811030 = icmp eq %struct.op* %kid.01029, null
  br i1 %tobool7811030, label %if.end782, label %for.body

for.body:                                         ; preds = %if.then780, %for.body
  %kid.01031 = phi %struct.op* [ %kid.0, %for.body ], [ %kid.01029, %if.then780 ]
  tail call void @Perl_do_op_dump(i32 %inc, %struct._PerlIO** %file, %struct.op* %kid.01031) #4
  %op_sibling = getelementptr inbounds %struct.op* %kid.01031, i64 0, i32 1
  %kid.0 = load %struct.op** %op_sibling, align 8
  %tobool781 = icmp eq %struct.op* %kid.0, null
  br i1 %tobool781, label %if.end782, label %for.body

if.end782:                                        ; preds = %if.then780, %for.body, %sw.epilog775
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_custom_op_name(%struct.op*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_gv_dump(%struct.gv* %gv) #0 {
entry:
  %tobool = icmp eq %struct.gv* %gv, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call1 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0)) #3
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.sv* @Perl_sv_newmortal() #3
  %call3 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call4 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call3, i8* getelementptr inbounds ([3 x i8]* @.str57, i64 0, i64 0)) #3
  tail call void @Perl_gv_fullname4(%struct.sv* %call2, %struct.gv* %gv, i8* null, i8 signext 1) #3
  %call5 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %sv_any = getelementptr inbounds %struct.sv* %call2, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 1, %struct._PerlIO** %call5, i8* getelementptr inbounds ([13 x i8]* @.str153, i64 0, i64 0), i8* %1) #4
  %sv_any6 = getelementptr inbounds %struct.gv* %gv, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any6, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_egv = getelementptr inbounds %struct.gp* %3, i64 0, i32 6
  %4 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  %cmp = icmp eq %struct.gv* %4, %gv
  br i1 %cmp, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @Perl_gv_efullname4(%struct.sv* %call2, %struct.gv* %4, i8* null, i8 signext 1) #3
  %call11 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %5 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv13 = bitcast i8* %5 to i8**
  %6 = load i8** %xpv_pv13, align 8, !tbaa !3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 1, %struct._PerlIO** %call11, i8* getelementptr inbounds ([6 x i8]* @.str154, i64 0, i64 0), i8* %6) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  %call15 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call16 = tail call i32 @PerlIO_putc(%struct._PerlIO** %call15, i32 10) #3
  %call17 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 0, %struct._PerlIO** %call17, i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(%struct.sv*, %struct.gv*, i8*, i8 signext) #2

; Function Attrs: optsize
declare i32 @PerlIO_putc(%struct._PerlIO**, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_magic_dump(i32 %level, %struct._PerlIO** %file, %struct.magic* %mg, i32 %nest, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #0 {
entry:
  %tobool354 = icmp eq %struct.magic* %mg, null
  br i1 %tobool354, label %for.end239, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add208 = add nsw i32 %level, 2
  %add210 = add nsw i32 %nest, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc238
  %mg.addr.0355 = phi %struct.magic* [ %mg, %for.body.lr.ph ], [ %34, %for.inc238 ]
  %0 = ptrtoint %struct.magic* %mg.addr.0355 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str155, i64 0, i64 0), i64 %0) #4
  %mg_virtual = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 1
  %1 = load %struct.mgvtbl** %mg_virtual, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.mgvtbl* %1, null
  br i1 %tobool1, label %if.else103, label %if.then

if.then:                                          ; preds = %for.body
  %cmp = icmp eq %struct.mgvtbl* %1, @PL_vtbl_sv
  br i1 %cmp, label %if.then100, label %if.else

if.else:                                          ; preds = %if.then
  %cmp4 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_env
  br i1 %cmp4, label %if.then100, label %if.else6

if.else6:                                         ; preds = %if.else
  %cmp7 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_envelem
  br i1 %cmp7, label %if.then100, label %if.else9

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_sig
  br i1 %cmp10, label %if.then100, label %if.else12

if.else12:                                        ; preds = %if.else9
  %cmp13 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_sigelem
  br i1 %cmp13, label %if.then100, label %if.else15

if.else15:                                        ; preds = %if.else12
  %cmp16 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_pack
  br i1 %cmp16, label %if.then100, label %if.else18

if.else18:                                        ; preds = %if.else15
  %cmp19 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_packelem
  br i1 %cmp19, label %if.then100, label %if.else21

if.else21:                                        ; preds = %if.else18
  %cmp22 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_dbline
  br i1 %cmp22, label %if.then100, label %if.else24

if.else24:                                        ; preds = %if.else21
  %cmp25 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_isa
  br i1 %cmp25, label %if.then100, label %if.else27

if.else27:                                        ; preds = %if.else24
  %cmp28 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_arylen
  br i1 %cmp28, label %if.then100, label %if.else30

if.else30:                                        ; preds = %if.else27
  %cmp31 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_glob
  br i1 %cmp31, label %if.then100, label %if.else33

if.else33:                                        ; preds = %if.else30
  %cmp34 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_mglob
  br i1 %cmp34, label %if.then100, label %if.else36

if.else36:                                        ; preds = %if.else33
  %cmp37 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_nkeys
  br i1 %cmp37, label %if.then100, label %if.else39

if.else39:                                        ; preds = %if.else36
  %cmp40 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_taint
  br i1 %cmp40, label %if.then100, label %if.else42

if.else42:                                        ; preds = %if.else39
  %cmp43 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_substr
  br i1 %cmp43, label %if.then100, label %if.else45

if.else45:                                        ; preds = %if.else42
  %cmp46 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_vec
  br i1 %cmp46, label %if.then100, label %if.else48

if.else48:                                        ; preds = %if.else45
  %cmp49 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_pos
  br i1 %cmp49, label %if.then100, label %if.else51

if.else51:                                        ; preds = %if.else48
  %cmp52 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_bm
  br i1 %cmp52, label %if.then100, label %if.else54

if.else54:                                        ; preds = %if.else51
  %cmp55 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_fm
  br i1 %cmp55, label %if.then100, label %if.else57

if.else57:                                        ; preds = %if.else54
  %cmp58 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_uvar
  br i1 %cmp58, label %if.then100, label %if.else60

if.else60:                                        ; preds = %if.else57
  %cmp61 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_defelem
  br i1 %cmp61, label %if.then100, label %if.else63

if.else63:                                        ; preds = %if.else60
  %cmp64 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_amagic
  br i1 %cmp64, label %if.then100, label %if.else66

if.else66:                                        ; preds = %if.else63
  %cmp67 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_amagicelem
  br i1 %cmp67, label %if.then100, label %if.else69

if.else69:                                        ; preds = %if.else66
  %cmp70 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_backref
  br i1 %cmp70, label %if.then100, label %if.end98

if.end98:                                         ; preds = %if.else69
  %not.cmp73 = icmp eq %struct.mgvtbl* %1, @PL_vtbl_utf8
  br i1 %not.cmp73, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.end98, %if.else69, %if.else66, %if.else63, %if.else60, %if.else57, %if.else54, %if.else51, %if.else48, %if.else45, %if.else42, %if.else39, %if.else36, %if.else33, %if.else30, %if.else27, %if.else24, %if.else21, %if.else18, %if.else15, %if.else12, %if.else9, %if.else6, %if.else, %if.then
  %s.0347 = phi i8* [ getelementptr inbounds ([5 x i8]* @.str180, i64 0, i64 0), %if.end98 ], [ getelementptr inbounds ([3 x i8]* @.str156, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([4 x i8]* @.str157, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([8 x i8]* @.str158, i64 0, i64 0), %if.else6 ], [ getelementptr inbounds ([4 x i8]* @.str159, i64 0, i64 0), %if.else9 ], [ getelementptr inbounds ([8 x i8]* @.str160, i64 0, i64 0), %if.else12 ], [ getelementptr inbounds ([5 x i8]* @.str161, i64 0, i64 0), %if.else15 ], [ getelementptr inbounds ([9 x i8]* @.str162, i64 0, i64 0), %if.else18 ], [ getelementptr inbounds ([7 x i8]* @.str163, i64 0, i64 0), %if.else21 ], [ getelementptr inbounds ([4 x i8]* @.str164, i64 0, i64 0), %if.else24 ], [ getelementptr inbounds ([7 x i8]* @.str165, i64 0, i64 0), %if.else27 ], [ getelementptr inbounds ([5 x i8]* @.str166, i64 0, i64 0), %if.else30 ], [ getelementptr inbounds ([6 x i8]* @.str167, i64 0, i64 0), %if.else33 ], [ getelementptr inbounds ([6 x i8]* @.str168, i64 0, i64 0), %if.else36 ], [ getelementptr inbounds ([6 x i8]* @.str169, i64 0, i64 0), %if.else39 ], [ getelementptr inbounds ([7 x i8]* @.str170, i64 0, i64 0), %if.else42 ], [ getelementptr inbounds ([4 x i8]* @.str171, i64 0, i64 0), %if.else45 ], [ getelementptr inbounds ([4 x i8]* @.str172, i64 0, i64 0), %if.else48 ], [ getelementptr inbounds ([3 x i8]* @.str173, i64 0, i64 0), %if.else51 ], [ getelementptr inbounds ([3 x i8]* @.str174, i64 0, i64 0), %if.else54 ], [ getelementptr inbounds ([5 x i8]* @.str175, i64 0, i64 0), %if.else57 ], [ getelementptr inbounds ([8 x i8]* @.str176, i64 0, i64 0), %if.else60 ], [ getelementptr inbounds ([7 x i8]* @.str177, i64 0, i64 0), %if.else63 ], [ getelementptr inbounds ([11 x i8]* @.str178, i64 0, i64 0), %if.else66 ], [ getelementptr inbounds ([8 x i8]* @.str179, i64 0, i64 0), %if.else69 ]
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([30 x i8]* @.str181, i64 0, i64 0), i8* %s.0347) #4
  br label %if.end104

if.else101:                                       ; preds = %if.end98
  %2 = ptrtoint %struct.mgvtbl* %1 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([24 x i8]* @.str182, i64 0, i64 0), i64 %2) #4
  br label %if.end104

if.else103:                                       ; preds = %for.body
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str183, i64 0, i64 0)) #4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.else101, %if.else103
  %mg_private = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 2
  %3 = load i16* %mg_private, align 2, !tbaa !6
  %tobool105 = icmp eq i16 %3, 0
  br i1 %tobool105, label %for.cond109.preheader, label %if.then106

if.then106:                                       ; preds = %if.end104
  %conv = zext i16 %3 to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([21 x i8]* @.str184, i64 0, i64 0), i32 %conv) #4
  br label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %if.end104, %if.then106
  %mg_type = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 3
  %4 = load i8* %mg_type, align 1, !tbaa !1
  br label %for.body112

for.cond109:                                      ; preds = %for.body112
  %inc = add nsw i32 %n.0351, 1
  %name110 = getelementptr inbounds [40 x %struct.anon]* @magic_names, i64 0, i64 %indvars.iv.next, i32 1
  %5 = load i8** %name110, align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %tobool111 = icmp eq i32 %6, 39
  br i1 %tobool111, label %if.else126, label %for.body112

for.body112:                                      ; preds = %for.cond109.preheader, %for.cond109
  %indvars.iv = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next, %for.cond109 ]
  %7 = phi i8* [ getelementptr inbounds ([7 x i8]* @.str378, i64 0, i64 0), %for.cond109.preheader ], [ %5, %for.cond109 ]
  %n.0351 = phi i32 [ 0, %for.cond109.preheader ], [ %inc, %for.cond109 ]
  %type = getelementptr inbounds [40 x %struct.anon]* @magic_names, i64 0, i64 %indvars.iv, i32 0
  %8 = load i8* %type, align 16, !tbaa !1
  %cmp117 = icmp eq i8 %4, %8
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp117, label %for.end, label %for.cond109

for.end:                                          ; preds = %for.body112
  %tobool124 = icmp eq i32 %n.0351, 39
  br i1 %tobool124, label %if.else126, label %if.then125

if.then125:                                       ; preds = %for.end
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([29 x i8]* @.str185, i64 0, i64 0), i8* %7) #4
  br label %if.end129

if.else126:                                       ; preds = %for.cond109, %for.end
  %conv128 = sext i8 %4 to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([28 x i8]* @.str186, i64 0, i64 0), i32 %conv128) #4
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then125
  %mg_flags = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 4
  %9 = load i8* %mg_flags, align 1, !tbaa !1
  %tobool130 = icmp eq i8 %9, 0
  br i1 %tobool130, label %if.end166, label %if.then131

if.then131:                                       ; preds = %if.end129
  %conv133 = zext i8 %9 to i32
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([23 x i8]* @.str187, i64 0, i64 0), i32 %conv133) #4
  %10 = load i8* %mg_type, align 1, !tbaa !1
  %cmp136 = icmp eq i8 %10, 101
  br i1 %cmp136, label %land.lhs.true, label %if.end142

land.lhs.true:                                    ; preds = %if.then131
  %11 = load i8* %mg_flags, align 1, !tbaa !1
  %and = and i8 %11, 1
  %tobool140 = icmp eq i8 %and, 0
  br i1 %tobool140, label %if.end142, label %if.then141

if.then141:                                       ; preds = %land.lhs.true
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str188, i64 0, i64 0)) #4
  br label %if.end142

if.end142:                                        ; preds = %if.then131, %land.lhs.true, %if.then141
  %12 = load i8* %mg_flags, align 1, !tbaa !1
  %and145 = and i8 %12, 2
  %tobool146 = icmp eq i8 %and145, 0
  br i1 %tobool146, label %if.end148, label %if.then147

if.then147:                                       ; preds = %if.end142
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str189, i64 0, i64 0)) #4
  %.pre = load i8* %mg_flags, align 1, !tbaa !1
  br label %if.end148

if.end148:                                        ; preds = %if.end142, %if.then147
  %13 = phi i8 [ %12, %if.end142 ], [ %.pre, %if.then147 ]
  %and151 = and i8 %13, 4
  %tobool152 = icmp eq i8 %and151, 0
  br i1 %tobool152, label %if.end154, label %if.then153

if.then153:                                       ; preds = %if.end148
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str190, i64 0, i64 0)) #4
  br label %if.end154

if.end154:                                        ; preds = %if.end148, %if.then153
  %14 = load i8* %mg_type, align 1, !tbaa !1
  %cmp157 = icmp eq i8 %14, 103
  br i1 %cmp157, label %land.lhs.true159, label %if.end166

land.lhs.true159:                                 ; preds = %if.end154
  %15 = load i8* %mg_flags, align 1, !tbaa !1
  %and162 = and i8 %15, 1
  %tobool163 = icmp eq i8 %and162, 0
  br i1 %tobool163, label %if.end166, label %if.then164

if.then164:                                       ; preds = %land.lhs.true159
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str191, i64 0, i64 0)) #4
  br label %if.end166

if.end166:                                        ; preds = %land.lhs.true159, %if.end129, %if.end154, %if.then164
  %mg_obj = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 5
  %16 = load %struct.sv** %mg_obj, align 8, !tbaa !3
  %tobool167 = icmp eq %struct.sv* %16, null
  br i1 %tobool167, label %if.end178, label %if.then168

if.then168:                                       ; preds = %if.end166
  %17 = ptrtoint %struct.sv* %16 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str192, i64 0, i64 0), i64 %17) #4
  %18 = load i8* %mg_flags, align 1, !tbaa !1
  %and172 = and i8 %18, 2
  %tobool173 = icmp eq i8 %and172, 0
  br i1 %tobool173, label %if.end178, label %if.then174

if.then174:                                       ; preds = %if.then168
  %19 = load %struct.sv** %mg_obj, align 8, !tbaa !3
  tail call void @Perl_do_sv_dump(i32 %add208, %struct._PerlIO** %file, %struct.sv* %19, i32 %add210, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %if.end178

if.end178:                                        ; preds = %if.then168, %if.end166, %if.then174
  %mg_len = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 7
  %20 = load i32* %mg_len, align 4, !tbaa !0
  %tobool179 = icmp eq i32 %20, 0
  br i1 %tobool179, label %if.end183, label %if.then180

if.then180:                                       ; preds = %if.end178
  %conv182 = sext i32 %20 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str193, i64 0, i64 0), i64 %conv182) #4
  br label %if.end183

if.end183:                                        ; preds = %if.end178, %if.then180
  %mg_ptr = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 6
  %21 = load i8** %mg_ptr, align 8, !tbaa !3
  %tobool184 = icmp eq i8* %21, null
  br i1 %tobool184, label %if.end216, label %if.then185

if.then185:                                       ; preds = %if.end183
  %22 = ptrtoint i8* %21 to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str194, i64 0, i64 0), i64 %22) #4
  %23 = load i32* %mg_len, align 4, !tbaa !0
  %cmp188 = icmp sgt i32 %23, -1
  br i1 %cmp188, label %if.then190, label %if.else202

if.then190:                                       ; preds = %if.then185
  %24 = load i8* %mg_type, align 1, !tbaa !1
  %cmp193 = icmp eq i8 %24, 119
  br i1 %cmp193, label %if.end214, label %if.then195

if.then195:                                       ; preds = %if.then190
  %call = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #3
  %25 = load i8** %mg_ptr, align 8, !tbaa !3
  %26 = load i32* %mg_len, align 4, !tbaa !0
  %conv198 = sext i32 %26 to i64
  %call199 = tail call i8* @Perl_pv_display(%struct.sv* %call, i8* %25, i64 %conv198, i64 0, i64 %pvlim) #4
  %call200 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str195, i64 0, i64 0), i8* %call199) #3
  tail call void @Perl_sv_free(%struct.sv* %call) #3
  br label %if.end214

if.else202:                                       ; preds = %if.then185
  %cmp204 = icmp eq i32 %23, -2
  br i1 %cmp204, label %if.then206, label %if.else211

if.then206:                                       ; preds = %if.else202
  %call207 = tail call i32 @PerlIO_puts(%struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str196, i64 0, i64 0)) #3
  %27 = load i8** %mg_ptr, align 8, !tbaa !3
  %28 = bitcast i8* %27 to %struct.sv*
  tail call void @Perl_do_sv_dump(i32 %add208, %struct._PerlIO** %file, %struct.sv* %28, i32 %add210, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %for.inc238

if.else211:                                       ; preds = %if.else202
  %call212 = tail call i32 @PerlIO_puts(%struct._PerlIO** %file, i8* getelementptr inbounds ([25 x i8]* @.str197, i64 0, i64 0)) #3
  br label %if.end214

if.end214:                                        ; preds = %if.then190, %if.then195, %if.else211
  %call215 = tail call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end216

if.end216:                                        ; preds = %if.end183, %if.end214
  %29 = load i8* %mg_type, align 1, !tbaa !1
  %cmp219 = icmp eq i8 %29, 119
  br i1 %cmp219, label %if.then221, label %for.inc238

if.then221:                                       ; preds = %if.end216
  %30 = load i8** %mg_ptr, align 8, !tbaa !3
  %31 = bitcast i8* %30 to i64*
  %tobool223 = icmp eq i8* %30, null
  br i1 %tobool223, label %for.inc238, label %for.body228

for.body228:                                      ; preds = %if.then221, %for.body228
  %i.0353 = phi i64 [ %inc234, %for.body228 ], [ 0, %if.then221 ]
  %mul = shl nsw i64 %i.0353, 1
  %arrayidx229 = getelementptr inbounds i64* %31, i64 %mul
  %32 = load i64* %arrayidx229, align 8, !tbaa !4
  %add231345 = or i64 %mul, 1
  %arrayidx232 = getelementptr inbounds i64* %31, i64 %add231345
  %33 = load i64* %arrayidx232, align 8, !tbaa !4
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([24 x i8]* @.str198, i64 0, i64 0), i64 %i.0353, i64 %32, i64 %33) #4
  %inc234 = add nsw i64 %i.0353, 1
  %exitcond = icmp eq i64 %inc234, 2
  br i1 %exitcond, label %for.inc238, label %for.body228

for.inc238:                                       ; preds = %for.body228, %if.then221, %if.end216, %if.then206
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.addr.0355, i64 0, i32 0
  %34 = load %struct.magic** %mg_moremagic, align 8, !tbaa !3
  %tobool = icmp eq %struct.magic* %34, null
  br i1 %tobool, label %for.end239, label %for.body

for.end239:                                       ; preds = %for.inc238, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_sv_dump(i32 %level, %struct._PerlIO** %file, %struct.sv* %sv, i32 %nest, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #0 {
entry:
  %freq = alloca [200 x i32], align 16
  %len = alloca i64, align 8
  %tobool = icmp eq %struct.sv* %sv, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str204, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 255
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !3
  %2 = ptrtoint i8* %1 to i64
  %3 = ptrtoint %struct.sv* %sv to i64
  %4 = load i32* @PL_dumpindent, align 4, !tbaa !0
  %mul = mul nsw i32 %4, %level
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv, i64 0, i32 1
  %5 = load i32* %sv_refcnt, align 4, !tbaa !0
  %conv = zext i32 %5 to i64
  %call = call %struct.sv* (i8*, ...)* @Perl_newSVpvf(i8* getelementptr inbounds ([50 x i8]* @.str205, i64 0, i64 0), i64 %2, i64 %3, i32 %mul, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 %conv, i32 %mul, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #3
  %and3 = and i32 %0, 256
  %tobool4 = icmp eq i32 %and3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str206, i64 0, i64 0)) #3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %and7 = and i32 %0, 512
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str207, i64 0, i64 0)) #3
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %if.then9
  %and11 = and i32 %0, 1024
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str208, i64 0, i64 0)) #3
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.then13
  %and15 = and i32 %0, 2048
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str209, i64 0, i64 0)) #3
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.then17
  %and19 = and i32 %0, 4096
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str210, i64 0, i64 0)) #3
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then21
  %and23 = and i32 %0, 8192
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str211, i64 0, i64 0)) #3
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then25
  %and27 = and i32 %0, 16384
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str212, i64 0, i64 0)) #3
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.then29
  %and31 = and i32 %0, 32768
  %tobool32 = icmp eq i32 %and31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str213, i64 0, i64 0)) #3
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then33
  %and35 = and i32 %0, 65536
  %tobool36 = icmp eq i32 %and35, 0
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str214, i64 0, i64 0)) #3
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.then37
  %and39 = and i32 %0, 131072
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str215, i64 0, i64 0)) #3
  br label %if.end42

if.end42:                                         ; preds = %if.end38, %if.then41
  %and43 = and i32 %0, 262144
  %tobool44 = icmp eq i32 %and43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str216, i64 0, i64 0)) #3
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.then45
  %and47 = and i32 %0, 524288
  %tobool48 = icmp eq i32 %and47, 0
  br i1 %tobool48, label %if.end55, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str217, i64 0, i64 0)) #3
  %6 = load i32* %sv_flags, align 4, !tbaa !0
  %and51 = and i32 %6, -2146959360
  %cmp = icmp eq i32 %and51, -2146959360
  br i1 %cmp, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then49
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str218, i64 0, i64 0)) #3
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %if.then49, %if.then53
  %and56 = and i32 %0, 2097152
  %tobool57 = icmp eq i32 %and56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str219, i64 0, i64 0)) #3
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.then58
  %and60 = and i32 %0, 1048576
  %tobool61 = icmp eq i32 %and60, 0
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end59
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str220, i64 0, i64 0)) #3
  br label %if.end63

if.end63:                                         ; preds = %if.end59, %if.then62
  %and64 = and i32 %0, 8388608
  %tobool65 = icmp eq i32 %and64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([10 x i8]* @.str221, i64 0, i64 0)) #3
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.then66
  %and68 = and i32 %0, 268435456
  %tobool69 = icmp eq i32 %and68, 0
  %cmp70 = icmp eq i32 %and, 11
  %or.cond1567 = or i1 %tobool69, %cmp70
  br i1 %or.cond1567, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end67
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([10 x i8]* @.str222, i64 0, i64 0)) #3
  br label %if.end73

if.end73:                                         ; preds = %if.end67, %if.then72
  %and74 = and i32 %0, 16777216
  %tobool75 = icmp eq i32 %and74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end73
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str223, i64 0, i64 0)) #3
  br label %if.end77

if.end77:                                         ; preds = %if.end73, %if.then76
  %and78 = and i32 %0, 33554432
  %tobool79 = icmp eq i32 %and78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str224, i64 0, i64 0)) #3
  br label %if.end81

if.end81:                                         ; preds = %if.end77, %if.then80
  %and82 = and i32 %0, 67108864
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end81
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str225, i64 0, i64 0)) #3
  br label %if.end85

if.end85:                                         ; preds = %if.end81, %if.then84
  %and86 = and i32 %0, 134217728
  %tobool87 = icmp ne i32 %and86, 0
  %tobool87.not = xor i1 %tobool87, true
  %or.cond1568 = or i1 %cmp70, %tobool87.not
  br i1 %or.cond1568, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end85
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str226, i64 0, i64 0)) #3
  br label %if.end92

if.end92:                                         ; preds = %if.end85, %if.then91
  switch i32 %and, label %sw.default [
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 11, label %sw.bb167
    i32 13, label %sw.bb192
    i32 8, label %sw.bb286
    i32 7, label %sw.bb297
  ]

sw.bb:                                            ; preds = %if.end92, %if.end92
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags = getelementptr inbounds i8* %7, i64 136
  %8 = bitcast i8* %xcv_flags to i16*
  %9 = load i16* %8, align 2, !tbaa !6
  %and95 = and i16 %9, 4
  %tobool96 = icmp eq i16 %and95, 0
  br i1 %tobool96, label %if.end98, label %if.then97

if.then97:                                        ; preds = %sw.bb
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str227, i64 0, i64 0)) #3
  %.pre1617 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags100.phi.trans.insert = getelementptr inbounds i8* %.pre1617, i64 136
  %.phi.trans.insert1618 = bitcast i8* %xcv_flags100.phi.trans.insert to i16*
  %.pre1619 = load i16* %.phi.trans.insert1618, align 2, !tbaa !6
  br label %if.end98

if.end98:                                         ; preds = %sw.bb, %if.then97
  %10 = phi i16 [ %9, %sw.bb ], [ %.pre1619, %if.then97 ]
  %and102 = and i16 %10, 16
  %tobool103 = icmp eq i16 %and102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end98
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0)) #3
  %.pre1620 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags107.phi.trans.insert = getelementptr inbounds i8* %.pre1620, i64 136
  %.phi.trans.insert1621 = bitcast i8* %xcv_flags107.phi.trans.insert to i16*
  %.pre1622 = load i16* %.phi.trans.insert1621, align 2, !tbaa !6
  br label %if.end105

if.end105:                                        ; preds = %if.end98, %if.then104
  %11 = phi i16 [ %10, %if.end98 ], [ %.pre1622, %if.then104 ]
  %and109 = and i16 %11, 1
  %tobool110 = icmp eq i16 %and109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end105
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str229, i64 0, i64 0)) #3
  %.pre1623 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags114.phi.trans.insert = getelementptr inbounds i8* %.pre1623, i64 136
  %.phi.trans.insert1624 = bitcast i8* %xcv_flags114.phi.trans.insert to i16*
  %.pre1625 = load i16* %.phi.trans.insert1624, align 2, !tbaa !6
  br label %if.end112

if.end112:                                        ; preds = %if.end105, %if.then111
  %12 = phi i16 [ %11, %if.end105 ], [ %.pre1625, %if.then111 ]
  %and116 = and i16 %12, 2
  %tobool117 = icmp eq i16 %and116, 0
  br i1 %tobool117, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end112
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str230, i64 0, i64 0)) #3
  %.pre1626 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags121.phi.trans.insert = getelementptr inbounds i8* %.pre1626, i64 136
  %.phi.trans.insert1627 = bitcast i8* %xcv_flags121.phi.trans.insert to i16*
  %.pre1628 = load i16* %.phi.trans.insert1627, align 2, !tbaa !6
  br label %if.end119

if.end119:                                        ; preds = %if.end112, %if.then118
  %13 = phi i16 [ %12, %if.end112 ], [ %.pre1628, %if.then118 ]
  %and123 = and i16 %13, 512
  %tobool124 = icmp eq i16 %and123, 0
  br i1 %tobool124, label %if.end126, label %if.then125

if.then125:                                       ; preds = %if.end119
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str231, i64 0, i64 0)) #3
  %.pre1629 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags128.phi.trans.insert = getelementptr inbounds i8* %.pre1629, i64 136
  %.phi.trans.insert1630 = bitcast i8* %xcv_flags128.phi.trans.insert to i16*
  %.pre1631 = load i16* %.phi.trans.insert1630, align 2, !tbaa !6
  br label %if.end126

if.end126:                                        ; preds = %if.end119, %if.then125
  %14 = phi i16 [ %13, %if.end119 ], [ %.pre1631, %if.then125 ]
  %and130 = and i16 %14, 32
  %tobool131 = icmp eq i16 %and130, 0
  br i1 %tobool131, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end126
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str232, i64 0, i64 0)) #3
  br label %if.end133

if.end133:                                        ; preds = %if.end126, %if.then132
  %15 = load i32* %sv_flags, align 4, !tbaa !0
  %tobool136 = icmp slt i32 %15, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end133
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([10 x i8]* @.str233, i64 0, i64 0)) #3
  br label %if.end138

if.end138:                                        ; preds = %if.end133, %if.then137
  %16 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags140 = getelementptr inbounds i8* %16, i64 136
  %17 = bitcast i8* %xcv_flags140 to i16*
  %18 = load i16* %17, align 2, !tbaa !6
  %and142 = and i16 %18, 256
  %tobool143 = icmp eq i16 %and142, 0
  br i1 %tobool143, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.end138
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str234, i64 0, i64 0)) #3
  %.pre1632 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags147.phi.trans.insert = getelementptr inbounds i8* %.pre1632, i64 136
  %.phi.trans.insert1633 = bitcast i8* %xcv_flags147.phi.trans.insert to i16*
  %.pre1634 = load i16* %.phi.trans.insert1633, align 2, !tbaa !6
  br label %if.end145

if.end145:                                        ; preds = %if.end138, %if.then144
  %19 = phi i16 [ %18, %if.end138 ], [ %.pre1634, %if.then144 ]
  %and149 = and i16 %19, 64
  %tobool150 = icmp eq i16 %and149, 0
  br i1 %tobool150, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.end145
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str235, i64 0, i64 0)) #3
  %.pre1635 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags154.phi.trans.insert = getelementptr inbounds i8* %.pre1635, i64 136
  %.phi.trans.insert1636 = bitcast i8* %xcv_flags154.phi.trans.insert to i16*
  %.pre1637 = load i16* %.phi.trans.insert1636, align 2, !tbaa !6
  br label %if.end152

if.end152:                                        ; preds = %if.end145, %if.then151
  %20 = phi i16 [ %19, %if.end145 ], [ %.pre1637, %if.then151 ]
  %and156 = and i16 %20, 128
  %tobool157 = icmp eq i16 %and156, 0
  br i1 %tobool157, label %if.end159, label %if.then158

if.then158:                                       ; preds = %if.end152
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str236, i64 0, i64 0)) #3
  %.pre1638 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags161.phi.trans.insert = getelementptr inbounds i8* %.pre1638, i64 136
  %.phi.trans.insert1639 = bitcast i8* %xcv_flags161.phi.trans.insert to i16*
  %.pre1640 = load i16* %.phi.trans.insert1639, align 2, !tbaa !6
  br label %if.end159

if.end159:                                        ; preds = %if.end152, %if.then158
  %21 = phi i16 [ %20, %if.end152 ], [ %.pre1640, %if.then158 ]
  %and163 = and i16 %21, 1024
  %tobool164 = icmp eq i16 %and163, 0
  br i1 %tobool164, label %sw.epilog, label %if.then165

if.then165:                                       ; preds = %if.end159
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([13 x i8]* @.str237, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end92
  %22 = load i32* %sv_flags, align 4, !tbaa !0
  %and169 = and i32 %22, 536870912
  %tobool170 = icmp eq i32 %and169, 0
  br i1 %tobool170, label %if.end172, label %if.then171

if.then171:                                       ; preds = %sw.bb167
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([11 x i8]* @.str238, i64 0, i64 0)) #3
  %.pre1641 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end172

if.end172:                                        ; preds = %sw.bb167, %if.then171
  %23 = phi i32 [ %22, %sw.bb167 ], [ %.pre1641, %if.then171 ]
  %and174 = and i32 %23, 1073741824
  %tobool175 = icmp eq i32 %and174, 0
  br i1 %tobool175, label %if.end177, label %if.then176

if.then176:                                       ; preds = %if.end172
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([9 x i8]* @.str239, i64 0, i64 0)) #3
  %.pr = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end177

if.end177:                                        ; preds = %if.end172, %if.then176
  %24 = phi i32 [ %23, %if.end172 ], [ %.pr, %if.then176 ]
  %tobool180 = icmp slt i32 %24, 0
  br i1 %tobool180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end177
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([11 x i8]* @.str240, i64 0, i64 0)) #3
  %.pre1642 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end177
  %25 = phi i32 [ %.pre1642, %if.then181 ], [ %24, %if.end177 ]
  %and184 = and i32 %25, 268435456
  %tobool185 = icmp eq i32 %and184, 0
  br i1 %tobool185, label %if.end187, label %if.then186

if.then186:                                       ; preds = %if.end182
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str241, i64 0, i64 0)) #3
  br label %if.end187

if.end187:                                        ; preds = %if.end182, %if.then186
  br i1 %tobool87, label %if.then190, label %sw.epilog

if.then190:                                       ; preds = %if.end187
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([11 x i8]* @.str242, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb192:                                         ; preds = %if.end92
  %26 = load i8** %sv_any, align 8, !tbaa !3
  %27 = getelementptr inbounds i8* %26, i64 88
  %28 = load i8* %27, align 1, !tbaa !1
  %and195 = and i8 %28, 1
  %tobool196 = icmp eq i8 %and195, 0
  br i1 %tobool196, label %if.end198, label %if.then197

if.then197:                                       ; preds = %sw.bb192
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str243, i64 0, i64 0)) #3
  %.pre1643 = load i8** %sv_any, align 8, !tbaa !3
  %.phi.trans.insert1644 = getelementptr inbounds i8* %.pre1643, i64 88
  %.pre1645 = load i8* %.phi.trans.insert1644, align 1, !tbaa !1
  br label %if.end198

if.end198:                                        ; preds = %sw.bb192, %if.then197
  %29 = phi i8 [ %28, %sw.bb192 ], [ %.pre1645, %if.then197 ]
  %30 = phi i8* [ %26, %sw.bb192 ], [ %.pre1643, %if.then197 ]
  %and202 = and i8 %29, 2
  %tobool203 = icmp eq i8 %and202, 0
  br i1 %tobool203, label %if.end205, label %if.then204

if.then204:                                       ; preds = %if.end198
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str244, i64 0, i64 0)) #3
  %.pre1646 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end205

if.end205:                                        ; preds = %if.end198, %if.then204
  %31 = phi i8* [ %30, %if.end198 ], [ %.pre1646, %if.then204 ]
  %xgv_gp = getelementptr inbounds i8* %31, i64 56
  %32 = bitcast i8* %xgv_gp to %struct.gp**
  %33 = load %struct.gp** %32, align 8, !tbaa !3
  %tobool207 = icmp eq %struct.gp* %33, null
  br i1 %tobool207, label %if.end214, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %if.end205
  %gp_flags = getelementptr inbounds %struct.gp* %33, i64 0, i32 9
  %34 = load i32* %gp_flags, align 4, !tbaa !0
  %and211 = and i32 %34, 1
  %tobool212 = icmp eq i32 %and211, 0
  br i1 %tobool212, label %if.end214, label %if.then213

if.then213:                                       ; preds = %land.lhs.true208
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0)) #3
  %.pre1647 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end214

if.end214:                                        ; preds = %land.lhs.true208, %if.end205, %if.then213
  %35 = phi i8* [ %31, %land.lhs.true208 ], [ %31, %if.end205 ], [ %.pre1647, %if.then213 ]
  %36 = getelementptr inbounds i8* %35, i64 88
  %37 = load i8* %36, align 1, !tbaa !1
  %and218 = and i8 %37, 4
  %tobool219 = icmp eq i8 %and218, 0
  br i1 %tobool219, label %if.end221, label %if.then220

if.then220:                                       ; preds = %if.end214
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([10 x i8]* @.str245, i64 0, i64 0)) #3
  %.pre1648 = load i8** %sv_any, align 8, !tbaa !3
  %.phi.trans.insert1649 = getelementptr inbounds i8* %.pre1648, i64 88
  %.pre1650 = load i8* %.phi.trans.insert1649, align 1, !tbaa !1
  br label %if.end221

if.end221:                                        ; preds = %if.end214, %if.then220
  %38 = phi i8 [ %37, %if.end214 ], [ %.pre1650, %if.then220 ]
  %and225 = and i8 %38, 8
  %tobool226 = icmp eq i8 %and225, 0
  br i1 %tobool226, label %if.end228, label %if.then227

if.then227:                                       ; preds = %if.end221
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str246, i64 0, i64 0)) #3
  br label %if.end228

if.end228:                                        ; preds = %if.end221, %if.then227
  %tobool230 = icmp slt i32 %0, 0
  br i1 %tobool230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end228
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str247, i64 0, i64 0)) #3
  br label %if.end232

if.end232:                                        ; preds = %if.end228, %if.then231
  %39 = load i8** %sv_any, align 8, !tbaa !3
  %40 = getelementptr inbounds i8* %39, i64 88
  %41 = load i8* %40, align 1, !tbaa !1
  %tobool237 = icmp ugt i8 %41, 15
  br i1 %tobool237, label %if.then238, label %sw.default

if.then238:                                       ; preds = %if.end232
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str248, i64 0, i64 0)) #3
  %42 = load i8** %sv_any, align 8, !tbaa !3
  %43 = getelementptr inbounds i8* %42, i64 88
  %44 = load i8* %43, align 1, !tbaa !1
  %and242 = and i8 %44, -16
  %cmp243 = icmp eq i8 %and242, -16
  br i1 %cmp243, label %if.then245, label %if.else

if.then245:                                       ; preds = %if.then238
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str249, i64 0, i64 0)) #3
  br label %sw.default

if.else:                                          ; preds = %if.then238
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #3
  %45 = load i8** %sv_any, align 8, !tbaa !3
  %46 = getelementptr inbounds i8* %45, i64 88
  %47 = load i8* %46, align 1, !tbaa !1
  %and249 = and i8 %47, 16
  %tobool250 = icmp eq i8 %and249, 0
  br i1 %tobool250, label %if.end252, label %if.then251

if.then251:                                       ; preds = %if.else
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str250, i64 0, i64 0)) #3
  %.pre1651 = load i8** %sv_any, align 8, !tbaa !3
  %.phi.trans.insert1652 = getelementptr inbounds i8* %.pre1651, i64 88
  %.pre1653 = load i8* %.phi.trans.insert1652, align 1, !tbaa !1
  br label %if.end252

if.end252:                                        ; preds = %if.else, %if.then251
  %48 = phi i8 [ %47, %if.else ], [ %.pre1653, %if.then251 ]
  %and256 = and i8 %48, 32
  %tobool257 = icmp eq i8 %and256, 0
  br i1 %tobool257, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.end252
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str251, i64 0, i64 0)) #3
  %.pre1654 = load i8** %sv_any, align 8, !tbaa !3
  %.phi.trans.insert1655 = getelementptr inbounds i8* %.pre1654, i64 88
  %.pre1656 = load i8* %.phi.trans.insert1655, align 1, !tbaa !1
  br label %if.end259

if.end259:                                        ; preds = %if.end252, %if.then258
  %49 = phi i8 [ %48, %if.end252 ], [ %.pre1656, %if.then258 ]
  %and263 = and i8 %49, 64
  %tobool264 = icmp eq i8 %and263, 0
  br i1 %tobool264, label %if.end266, label %if.then265

if.then265:                                       ; preds = %if.end259
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str252, i64 0, i64 0)) #3
  %.pre1657 = load i8** %sv_any, align 8, !tbaa !3
  %.phi.trans.insert1658 = getelementptr inbounds i8* %.pre1657, i64 88
  %.pre1659 = load i8* %.phi.trans.insert1658, align 1, !tbaa !1
  br label %if.end266

if.end266:                                        ; preds = %if.end259, %if.then265
  %50 = phi i8 [ %49, %if.end259 ], [ %.pre1659, %if.then265 ]
  %tobool271 = icmp slt i8 %50, 0
  br i1 %tobool271, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.end266
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str253, i64 0, i64 0)) #3
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.end266
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([4 x i8]* @.str254, i64 0, i64 0)) #3
  br label %sw.default

sw.default:                                       ; preds = %if.end232, %if.end92, %if.end273, %if.then245
  %51 = load i32* %sv_flags, align 4, !tbaa !0
  %and277 = and i32 %51, 1073741824
  %tobool278 = icmp eq i32 %and277, 0
  br i1 %tobool278, label %if.end280, label %if.then279

if.then279:                                       ; preds = %sw.default
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str255, i64 0, i64 0)) #3
  %.pr1573 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end280

if.end280:                                        ; preds = %sw.default, %if.then279
  %52 = phi i32 [ %51, %sw.default ], [ %.pr1573, %if.then279 ]
  %tobool283 = icmp slt i32 %52, 0
  br i1 %tobool283, label %if.then284, label %sw.epilog

if.then284:                                       ; preds = %if.end280
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str256, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb286:                                         ; preds = %if.end92
  %53 = load i32* %sv_flags, align 4, !tbaa !0
  %and288 = and i32 %53, 1073741824
  %tobool289 = icmp eq i32 %and288, 0
  br i1 %tobool289, label %if.end291, label %if.then290

if.then290:                                       ; preds = %sw.bb286
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str257, i64 0, i64 0)) #3
  %.pr1574 = load i32* %sv_flags, align 4, !tbaa !0
  br label %if.end291

if.end291:                                        ; preds = %sw.bb286, %if.then290
  %54 = phi i32 [ %53, %sw.bb286 ], [ %.pr1574, %if.then290 ]
  %tobool294 = icmp slt i32 %54, 0
  br i1 %tobool294, label %if.then295, label %sw.epilog

if.then295:                                       ; preds = %if.end291
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str258, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb297:                                         ; preds = %if.end92
  %and298 = and i32 %0, 1073741824
  %tobool299 = icmp eq i32 %and298, 0
  br i1 %tobool299, label %sw.epilog, label %if.then300

if.then300:                                       ; preds = %sw.bb297
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str259, i64 0, i64 0)) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end159, %sw.bb297, %if.then300, %if.end291, %if.then295, %if.end280, %if.then284, %if.end187, %if.then190, %if.then165
  br i1 %cmp70, label %if.end309, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %sw.epilog
  %55 = load i32* %sv_flags, align 4, !tbaa !0
  %and306 = and i32 %55, 536870912
  %tobool307 = icmp eq i32 %and306, 0
  br i1 %tobool307, label %if.end309, label %if.then308

if.then308:                                       ; preds = %land.lhs.true304
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([5 x i8]* @.str260, i64 0, i64 0)) #3
  br label %if.end309

if.end309:                                        ; preds = %land.lhs.true304, %sw.epilog, %if.then308
  %sv_any310 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %56 = load i8** %sv_any310, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %56 to i8**
  %57 = load i8** %xpv_pv, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %56, i64 8
  %58 = bitcast i8* %xpv_cur to i64*
  %59 = load i64* %58, align 8, !tbaa !4
  %add.ptr.sum = add i64 %59, -1
  %add.ptr312 = getelementptr inbounds i8* %57, i64 %add.ptr.sum
  %60 = load i8* %add.ptr312, align 1, !tbaa !1
  %cmp314 = icmp eq i8 %60, 44
  br i1 %cmp314, label %if.then316, label %if.end321

if.then316:                                       ; preds = %if.end309
  store i64 %add.ptr.sum, i64* %58, align 8, !tbaa !4
  store i8 0, i8* %add.ptr312, align 1, !tbaa !1
  br label %if.end321

if.end321:                                        ; preds = %if.then316, %if.end309
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([2 x i8]* @.str55, i64 0, i64 0)) #3
  %61 = load i8** %sv_any310, align 8, !tbaa !3
  %xpv_pv323 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv323, align 8, !tbaa !3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str261, i64 0, i64 0)) #4
  switch i32 %and, label %sw.default356 [
    i32 0, label %sw.bb324
    i32 1, label %sw.bb326
    i32 2, label %if.end380.thread
    i32 3, label %sw.bb330
    i32 4, label %sw.bb332
    i32 5, label %sw.bb334
    i32 6, label %sw.bb336
    i32 8, label %sw.bb338
    i32 7, label %sw.bb340
    i32 9, label %sw.bb342
    i32 10, label %sw.bb344
    i32 11, label %sw.bb346
    i32 12, label %sw.bb348
    i32 13, label %sw.bb350
    i32 14, label %sw.bb352
    i32 15, label %sw.bb354
  ]

sw.bb324:                                         ; preds = %if.end321
  %call325 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str262, i64 0, i64 0), i8* %62) #3
  call void @Perl_sv_free(%struct.sv* %call) #3
  br label %return

sw.bb326:                                         ; preds = %if.end321
  %call327 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str263, i64 0, i64 0), i8* %62) #3
  br label %if.then364

if.end380.thread:                                 ; preds = %if.end321
  %call329 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str264, i64 0, i64 0), i8* %62) #3
  br label %if.then386

sw.bb330:                                         ; preds = %if.end321
  %call331 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str265, i64 0, i64 0), i8* %62) #3
  br label %if.end380

sw.bb332:                                         ; preds = %if.end321
  %call333 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([6 x i8]* @.str266, i64 0, i64 0), i8* %62) #3
  br label %if.end380

sw.bb334:                                         ; preds = %if.end321
  %call335 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str267, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb336:                                         ; preds = %if.end321
  %call337 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str268, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb338:                                         ; preds = %if.end321
  %call339 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str269, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb340:                                         ; preds = %if.end321
  %call341 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str270, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb342:                                         ; preds = %if.end321
  %call343 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str271, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb344:                                         ; preds = %if.end321
  %call345 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str272, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb346:                                         ; preds = %if.end321
  %call347 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str273, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb348:                                         ; preds = %if.end321
  %call349 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str274, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb350:                                         ; preds = %if.end321
  %call351 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str275, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb352:                                         ; preds = %if.end321
  %call353 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str276, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.bb354:                                         ; preds = %if.end321
  %call355 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str277, i64 0, i64 0), i8* %62) #3
  br label %if.then364

sw.default356:                                    ; preds = %if.end321
  %conv357 = zext i32 %and to i64
  %call358 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str278, i64 0, i64 0), i64 %conv357, i8* %62) #3
  call void @Perl_sv_free(%struct.sv* %call) #3
  br label %return

if.then364:                                       ; preds = %sw.bb326, %sw.bb334, %sw.bb336, %sw.bb338, %sw.bb340, %sw.bb342, %sw.bb344, %sw.bb346, %sw.bb348, %sw.bb350, %sw.bb352, %sw.bb354
  %63 = load i32* %sv_flags, align 4, !tbaa !0
  %tobool367 = icmp slt i32 %63, 0
  %64 = load i8** %sv_any, align 8, !tbaa !3
  %xuv_uv = getelementptr inbounds i8* %64, i64 24
  %65 = bitcast i8* %xuv_uv to i64*
  %66 = load i64* %65, align 8, !tbaa !4
  br i1 %tobool367, label %if.then368, label %if.else370

if.then368:                                       ; preds = %if.then364
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str279, i64 0, i64 0), i64 %66) #4
  br label %if.end372

if.else370:                                       ; preds = %if.then364
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str280, i64 0, i64 0), i64 %66) #4
  br label %if.end372

if.end372:                                        ; preds = %if.else370, %if.then368
  %67 = load i32* %sv_flags, align 4, !tbaa !0
  %and374 = and i32 %67, 2097152
  %tobool375 = icmp eq i32 %and374, 0
  br i1 %tobool375, label %if.end378, label %if.then376

if.then376:                                       ; preds = %if.end372
  %call377 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str281, i64 0, i64 0)) #3
  br label %if.end378

if.end378:                                        ; preds = %if.end372, %if.then376
  %call379 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end380

if.end380:                                        ; preds = %sw.bb330, %sw.bb332, %if.end378
  %cmp381 = icmp ugt i32 %and, 5
  %cmp384 = icmp eq i32 %and, 2
  %or.cond974 = or i1 %cmp381, %cmp384
  br i1 %or.cond974, label %if.then386, label %if.end388

if.then386:                                       ; preds = %if.end380.thread, %if.end380
  %68 = load i8** %sv_any, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %68, i64 32
  %69 = bitcast i8* %xnv_nv to double*
  %70 = load double* %69, align 8, !tbaa !5
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str282, i64 0, i64 0), i32 15, double %70) #4
  br label %if.end388

if.end388:                                        ; preds = %if.end380, %if.then386
  %71 = load i32* %sv_flags, align 4, !tbaa !0
  %and390 = and i32 %71, 524288
  %tobool391 = icmp eq i32 %and390, 0
  br i1 %tobool391, label %if.end401, label %if.then392

if.then392:                                       ; preds = %if.end388
  %72 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %72 to %struct.sv**
  %73 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %74 = ptrtoint %struct.sv* %73 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str283, i64 0, i64 0), i64 %74) #4
  %cmp394 = icmp slt i32 %nest, %maxnest
  br i1 %cmp394, label %if.then396, label %if.end401

if.then396:                                       ; preds = %if.then392
  %add = add nsw i32 %level, 1
  %75 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv398 = bitcast i8* %75 to %struct.sv**
  %76 = load %struct.sv** %xrv_rv398, align 8, !tbaa !3
  %add399 = add nsw i32 %nest, 1
  call void @Perl_do_sv_dump(i32 %add, %struct._PerlIO** %file, %struct.sv* %76, i32 %add399, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %if.end401

if.end401:                                        ; preds = %if.end388, %if.then392, %if.then396
  %cmp402 = icmp ult i32 %and, 4
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.end401
  call void @Perl_sv_free(%struct.sv* %call) #3
  br label %return

if.end405:                                        ; preds = %if.end401
  %cmp406 = icmp ult i32 %and, 10
  br i1 %cmp406, label %if.then408, label %if.then455

if.then408:                                       ; preds = %if.end405
  %77 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv410 = bitcast i8* %77 to i8**
  %78 = load i8** %xpv_pv410, align 8, !tbaa !3
  %tobool411 = icmp eq i8* %78, null
  br i1 %tobool411, label %if.else450, label %if.then412

if.then412:                                       ; preds = %if.then408
  %79 = ptrtoint i8* %78 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str284, i64 0, i64 0), i64 %79) #4
  %80 = load i32* %sv_flags, align 4, !tbaa !0
  %and416 = and i32 %80, 2097152
  %tobool417 = icmp eq i32 %and416, 0
  br i1 %tobool417, label %if.end428, label %if.then418

if.then418:                                       ; preds = %if.then412
  %81 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv420 = bitcast i8* %81 to i8**
  %82 = load i8** %xpv_pv420, align 8, !tbaa !3
  %xiv_iv422 = getelementptr inbounds i8* %81, i64 24
  %83 = bitcast i8* %xiv_iv422 to i64*
  %84 = load i64* %83, align 8, !tbaa !4
  %idx.neg = sub i64 0, %84
  %add.ptr423 = getelementptr inbounds i8* %82, i64 %idx.neg
  %call426 = call i8* @Perl_pv_display(%struct.sv* %call, i8* %add.ptr423, i64 %84, i64 0, i64 %pvlim) #4
  %call427 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([10 x i8]* @.str285, i64 0, i64 0), i8* %call426) #3
  br label %if.end428

if.end428:                                        ; preds = %if.then412, %if.then418
  %85 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv430 = bitcast i8* %85 to i8**
  %86 = load i8** %xpv_pv430, align 8, !tbaa !3
  %xpv_cur432 = getelementptr inbounds i8* %85, i64 8
  %87 = bitcast i8* %xpv_cur432 to i64*
  %88 = load i64* %87, align 8, !tbaa !4
  %xpv_len = getelementptr inbounds i8* %85, i64 16
  %89 = bitcast i8* %xpv_len to i64*
  %90 = load i64* %89, align 8, !tbaa !4
  %call434 = call i8* @Perl_pv_display(%struct.sv* %call, i8* %86, i64 %88, i64 %90, i64 %pvlim) #4
  %call435 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str286, i64 0, i64 0), i8* %call434) #3
  %91 = load i32* %sv_flags, align 4, !tbaa !0
  %and437 = and i32 %91, 536870912
  %tobool438 = icmp eq i32 %and437, 0
  br i1 %tobool438, label %if.end444, label %if.then439

if.then439:                                       ; preds = %if.end428
  %call440 = call i64 @Perl_sv_len_utf8(%struct.sv* %sv) #3
  %mul441 = shl i64 %call440, 3
  %call442 = call i8* @Perl_sv_uni_display(%struct.sv* %call, %struct.sv* %sv, i64 %mul441, i64 3) #3
  %call443 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str50, i64 0, i64 0), i8* %call442) #3
  br label %if.end444

if.end444:                                        ; preds = %if.end428, %if.then439
  %call445 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([2 x i8]* @.str287, i64 0, i64 0)) #3
  %92 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur447 = getelementptr inbounds i8* %92, i64 8
  %93 = bitcast i8* %xpv_cur447 to i64*
  %94 = load i64* %93, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str288, i64 0, i64 0), i64 %94) #4
  %95 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_len449 = getelementptr inbounds i8* %95, i64 16
  %96 = bitcast i8* %xpv_len449 to i64*
  %97 = load i64* %96, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str289, i64 0, i64 0), i64 %97) #4
  br label %if.end452

if.else450:                                       ; preds = %if.then408
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([10 x i8]* @.str290, i64 0, i64 0)) #4
  br label %if.end452

if.end452:                                        ; preds = %if.end444, %if.else450
  %cmp453 = icmp ugt i32 %and, 6
  br i1 %cmp453, label %if.then455, label %if.end468

if.then455:                                       ; preds = %if.end405, %if.end452
  %98 = load i8** %sv_any, align 8, !tbaa !3
  %xmg_magic = getelementptr inbounds i8* %98, i64 40
  %99 = bitcast i8* %xmg_magic to %struct.magic**
  %100 = load %struct.magic** %99, align 8, !tbaa !3
  %tobool457 = icmp eq %struct.magic* %100, null
  br i1 %tobool457, label %if.end461, label %if.then458

if.then458:                                       ; preds = %if.then455
  call void @Perl_do_magic_dump(i32 %level, %struct._PerlIO** %file, %struct.magic* %100, i32 %nest, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  %.pre = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end461

if.end461:                                        ; preds = %if.then455, %if.then458
  %101 = phi i8* [ %98, %if.then455 ], [ %.pre, %if.then458 ]
  %xmg_stash = getelementptr inbounds i8* %101, i64 48
  %102 = bitcast i8* %xmg_stash to %struct.hv**
  %103 = load %struct.hv** %102, align 8, !tbaa !3
  %tobool463 = icmp eq %struct.hv* %103, null
  br i1 %tobool463, label %if.end468, label %if.then464

if.then464:                                       ; preds = %if.end461
  call void @Perl_do_hv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str291, i64 0, i64 0), %struct.hv* %103) #4
  br label %if.end468

if.end468:                                        ; preds = %if.end461, %if.then464, %if.end452
  switch i32 %and, label %sw.epilog973 [
    i32 9, label %sw.bb469
    i32 10, label %sw.bb492
    i32 11, label %sw.bb554
    i32 12, label %sw.bb747
    i32 14, label %sw.bb764
    i32 13, label %sw.bb871
    i32 15, label %sw.bb915
  ]

sw.bb469:                                         ; preds = %if.end468
  %104 = load i8** %sv_any, align 8, !tbaa !3
  %105 = getelementptr inbounds i8* %104, i64 80
  %106 = load i8* %105, align 1, !tbaa !1
  %conv471 = sext i8 %106 to i32
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str292, i64 0, i64 0), i32 %conv471) #4
  %107 = load i8** %sv_any, align 8, !tbaa !3
  %xlv_targoff = getelementptr inbounds i8* %107, i64 56
  %108 = bitcast i8* %xlv_targoff to i64*
  %109 = load i64* %108, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str293, i64 0, i64 0), i64 %109) #4
  %110 = load i8** %sv_any, align 8, !tbaa !3
  %xlv_targlen = getelementptr inbounds i8* %110, i64 64
  %111 = bitcast i8* %xlv_targlen to i64*
  %112 = load i64* %111, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str294, i64 0, i64 0), i64 %112) #4
  %113 = load i8** %sv_any, align 8, !tbaa !3
  %xlv_targ = getelementptr inbounds i8* %113, i64 72
  %114 = bitcast i8* %xlv_targ to %struct.sv**
  %115 = load %struct.sv** %114, align 8, !tbaa !3
  %116 = ptrtoint %struct.sv* %115 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str295, i64 0, i64 0), i64 %116) #4
  %117 = load i8** %sv_any, align 8, !tbaa !3
  %118 = getelementptr inbounds i8* %117, i64 80
  %119 = load i8* %118, align 1, !tbaa !1
  switch i8 %119, label %if.then486 [
    i8 116, label %sw.epilog973
    i8 84, label %sw.epilog973
  ]

if.then486:                                       ; preds = %sw.bb469
  %add487 = add nsw i32 %level, 1
  %xlv_targ489 = getelementptr inbounds i8* %117, i64 72
  %120 = bitcast i8* %xlv_targ489 to %struct.sv**
  %121 = load %struct.sv** %120, align 8, !tbaa !3
  %add490 = add nsw i32 %nest, 1
  call void @Perl_do_sv_dump(i32 %add487, %struct._PerlIO** %file, %struct.sv* %121, i32 %add490, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %sw.epilog973

sw.bb492:                                         ; preds = %if.end468
  %122 = load i8** %sv_any, align 8, !tbaa !3
  %xav_array = bitcast i8* %122 to i8**
  %123 = load i8** %xav_array, align 8, !tbaa !3
  %124 = ptrtoint i8* %123 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str296, i64 0, i64 0), i64 %124) #4
  %125 = load i8** %sv_any, align 8, !tbaa !3
  %xav_array495 = bitcast i8* %125 to i8**
  %126 = load i8** %xav_array495, align 8, !tbaa !3
  %127 = bitcast i8* %126 to %struct.sv**
  %xav_alloc = getelementptr inbounds i8* %125, i64 56
  %128 = bitcast i8* %xav_alloc to %struct.sv***
  %129 = load %struct.sv*** %128, align 8, !tbaa !3
  %cmp497 = icmp eq %struct.sv** %127, %129
  br i1 %cmp497, label %if.else507, label %if.then499

if.then499:                                       ; preds = %sw.bb492
  %sub.ptr.lhs.cast = ptrtoint i8* %126 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %129 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %call504 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str297, i64 0, i64 0), i64 %sub.ptr.div) #3
  %130 = load i8** %sv_any, align 8, !tbaa !3
  %xav_alloc506 = getelementptr inbounds i8* %130, i64 56
  %131 = bitcast i8* %xav_alloc506 to %struct.sv***
  %132 = load %struct.sv*** %131, align 8, !tbaa !3
  %133 = ptrtoint %struct.sv** %132 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str298, i64 0, i64 0), i64 %133) #4
  br label %if.end509

if.else507:                                       ; preds = %sw.bb492
  %call508 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end509

if.end509:                                        ; preds = %if.else507, %if.then499
  %134 = load i8** %sv_any, align 8, !tbaa !3
  %xav_fill = getelementptr inbounds i8* %134, i64 8
  %135 = bitcast i8* %xav_fill to i64*
  %136 = load i64* %135, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str299, i64 0, i64 0), i64 %136) #4
  %137 = load i8** %sv_any, align 8, !tbaa !3
  %xav_max = getelementptr inbounds i8* %137, i64 16
  %138 = bitcast i8* %xav_max to i64*
  %139 = load i64* %138, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str300, i64 0, i64 0), i64 %139) #4
  %140 = load i8** %sv_any, align 8, !tbaa !3
  %xav_arylen = getelementptr inbounds i8* %140, i64 64
  %141 = bitcast i8* %xav_arylen to %struct.sv**
  %142 = load %struct.sv** %141, align 8, !tbaa !3
  %143 = ptrtoint %struct.sv* %142 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str301, i64 0, i64 0), i64 %143) #4
  %144 = load i8** %sv_any, align 8, !tbaa !3
  %145 = getelementptr inbounds i8* %144, i64 72
  %146 = load i8* %145, align 1, !tbaa !1
  %conv514 = zext i8 %146 to i32
  call void @Perl_sv_setpv(%struct.sv* %call, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #3
  %and515 = and i32 %conv514, 1
  %tobool516 = icmp eq i32 %and515, 0
  br i1 %tobool516, label %if.end518, label %if.then517

if.then517:                                       ; preds = %if.end509
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([6 x i8]* @.str302, i64 0, i64 0)) #3
  br label %if.end518

if.end518:                                        ; preds = %if.end509, %if.then517
  %and519 = and i32 %conv514, 2
  %tobool520 = icmp eq i32 %and519, 0
  br i1 %tobool520, label %if.end522, label %if.then521

if.then521:                                       ; preds = %if.end518
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([7 x i8]* @.str303, i64 0, i64 0)) #3
  br label %if.end522

if.end522:                                        ; preds = %if.end518, %if.then521
  %and523 = and i32 %conv514, 4
  %tobool524 = icmp eq i32 %and523, 0
  br i1 %tobool524, label %if.end526, label %if.then525

if.then525:                                       ; preds = %if.end522
  call void @Perl_sv_catpv(%struct.sv* %call, i8* getelementptr inbounds ([8 x i8]* @.str304, i64 0, i64 0)) #3
  br label %if.end526

if.end526:                                        ; preds = %if.end522, %if.then525
  %147 = load i8** %sv_any310, align 8, !tbaa !3
  %xpv_cur528 = getelementptr inbounds i8* %147, i64 8
  %148 = bitcast i8* %xpv_cur528 to i64*
  %149 = load i64* %148, align 8, !tbaa !4
  %tobool529 = icmp eq i64 %149, 0
  br i1 %tobool529, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end526
  %xpv_pv531 = bitcast i8* %147 to i8**
  %150 = load i8** %xpv_pv531, align 8, !tbaa !3
  %add.ptr532 = getelementptr inbounds i8* %150, i64 1
  br label %cond.end

cond.end:                                         ; preds = %if.end526, %cond.true
  %cond = phi i8* [ %add.ptr532, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), %if.end526 ]
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str305, i64 0, i64 0), i8* %cond) #4
  %cmp533 = icmp slt i32 %nest, %maxnest
  br i1 %cmp533, label %land.lhs.true535, label %sw.epilog973

land.lhs.true535:                                 ; preds = %cond.end
  %151 = bitcast %struct.sv* %sv to %struct.av*
  %call536 = call i32 @Perl_av_len(%struct.av* %151) #3
  %cmp537 = icmp sgt i32 %call536, -1
  br i1 %cmp537, label %for.cond.preheader, label %sw.epilog973

for.cond.preheader:                               ; preds = %land.lhs.true535
  %call5401580 = call i32 @Perl_av_len(%struct.av* %151) #3
  %cmp5411581 = icmp sgt i32 %call5401580, -1
  %cmp5431582 = icmp sgt i32 %maxnest, 0
  %or.cond15691583 = and i1 %cmp5411581, %cmp5431582
  br i1 %or.cond15691583, label %for.body.lr.ph, label %sw.epilog973

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add546 = add nsw i32 %level, 1
  %add551 = add nsw i32 %nest, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %152 = trunc i64 %indvars.iv to i32
  %call545 = call %struct.sv** @Perl_av_fetch(%struct.av* %151, i32 %152, i32 0) #3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %add546, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str306, i64 0, i64 0), i64 %indvars.iv) #4
  %tobool548 = icmp eq %struct.sv** %call545, null
  br i1 %tobool548, label %for.inc, label %if.then549

if.then549:                                       ; preds = %for.body
  %153 = load %struct.sv** %call545, align 8, !tbaa !3
  call void @Perl_do_sv_dump(i32 %add546, %struct._PerlIO** %file, %struct.sv* %153, i32 %add551, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then549
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call540 = call i32 @Perl_av_len(%struct.av* %151) #3
  %cmp541 = icmp slt i32 %152, %call540
  %154 = trunc i64 %indvars.iv.next to i32
  %cmp543 = icmp slt i32 %154, %maxnest
  %or.cond1569 = and i1 %cmp541, %cmp543
  br i1 %or.cond1569, label %for.body, label %sw.epilog973

sw.bb554:                                         ; preds = %if.end468
  %155 = load i8** %sv_any, align 8, !tbaa !3
  %156 = bitcast i8* %155 to %struct.he***
  %157 = load %struct.he*** %156, align 8, !tbaa !3
  %158 = ptrtoint %struct.he** %157 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str296, i64 0, i64 0), i64 %158) #4
  %159 = load i8** %sv_any, align 8, !tbaa !3
  %160 = bitcast i8* %159 to %struct.he***
  %161 = load %struct.he*** %160, align 8, !tbaa !3
  %tobool558 = icmp eq %struct.he** %161, null
  br i1 %tobool558, label %if.end658, label %land.lhs.true559

land.lhs.true559:                                 ; preds = %sw.bb554
  %xhv_keys = getelementptr inbounds i8* %159, i64 24
  %162 = bitcast i8* %xhv_keys to i64*
  %163 = load i64* %162, align 8, !tbaa !4
  %xnv_nv562 = getelementptr inbounds i8* %159, i64 32
  %164 = bitcast i8* %xnv_nv562 to double*
  %165 = load double* %164, align 8, !tbaa !5
  %conv563 = fptosi double %165 to i64
  %tobool564 = icmp eq i64 %163, %conv563
  br i1 %tobool564, label %if.end658, label %if.then565

if.then565:                                       ; preds = %land.lhs.true559
  %166 = bitcast [200 x i32]* %freq to i8*
  call void @llvm.lifetime.start(i64 800, i8* %166) #1
  %sub571 = sub nsw i64 %163, %conv563
  %call573 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([4 x i8]* @.str307, i64 0, i64 0)) #3
  call void @llvm.memset.p0i8.i64(i8* %166, i8 0, i64 800, i32 16, i1 false)
  %167 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_max = getelementptr inbounds i8* %167, i64 16
  %168 = bitcast i8* %xhv_max to i64*
  %169 = load i64* %168, align 8, !tbaa !4
  %.phi.trans.insert = bitcast i8* %167 to %struct.he***
  %.pre1611 = load %struct.he*** %.phi.trans.insert, align 8, !tbaa !3
  br label %for.body579

for.cond605.preheader:                            ; preds = %for.end589
  %conv572 = trunc i64 %sub571 to i32
  %cmp6061592 = icmp slt i32 %max.1, 0
  br i1 %cmp6061592, label %for.end628.thread, label %for.body608

for.end628.thread:                                ; preds = %for.cond605.preheader
  %call6291664 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 41) #3
  br label %while.cond.preheader

for.body579:                                      ; preds = %if.then565, %for.end589
  %indvars.iv1608 = phi i64 [ 0, %if.then565 ], [ %indvars.iv.next1609, %for.end589 ]
  %max.01600 = phi i32 [ 0, %if.then565 ], [ %max.1, %for.end589 ]
  %arrayidx583 = getelementptr inbounds %struct.he** %.pre1611, i64 %indvars.iv1608
  %h.01594 = load %struct.he** %arrayidx583, align 8
  %tobool5851595 = icmp eq %struct.he* %h.01594, null
  br i1 %tobool5851595, label %for.end589, label %for.body586

for.body586:                                      ; preds = %for.body579, %for.body586
  %h.01597 = phi %struct.he* [ %h.0, %for.body586 ], [ %h.01594, %for.body579 ]
  %count580.01596 = phi i32 [ %inc587, %for.body586 ], [ 0, %for.body579 ]
  %inc587 = add nsw i32 %count580.01596, 1
  %hent_next = getelementptr inbounds %struct.he* %h.01597, i64 0, i32 0
  %h.0 = load %struct.he** %hent_next, align 8
  %tobool585 = icmp eq %struct.he* %h.0, null
  br i1 %tobool585, label %for.end589, label %for.body586

for.end589:                                       ; preds = %for.body586, %for.body579
  %count580.0.lcssa = phi i32 [ 0, %for.body579 ], [ %inc587, %for.body586 ]
  %cmp591 = icmp ugt i32 %count580.0.lcssa, 199
  %.count580.0 = select i1 %cmp591, i32 199, i32 %count580.0.lcssa
  %idxprom595 = sext i32 %.count580.0 to i64
  %arrayidx596 = getelementptr inbounds [200 x i32]* %freq, i64 0, i64 %idxprom595
  %170 = load i32* %arrayidx596, align 4, !tbaa !0
  %inc597 = add nsw i32 %170, 1
  store i32 %inc597, i32* %arrayidx596, align 4, !tbaa !0
  %cmp598 = icmp slt i32 %max.01600, %.count580.0
  %max.1 = select i1 %cmp598, i32 %.count580.0, i32 %max.01600
  %indvars.iv.next1609 = add i64 %indvars.iv1608, 1
  %exitcond = icmp eq i64 %indvars.iv1608, %169
  br i1 %exitcond, label %for.cond605.preheader, label %for.body579

for.body608:                                      ; preds = %for.cond605.preheader, %for.inc626
  %indvars.iv1605 = phi i64 [ %indvars.iv.next1606, %for.inc626 ], [ 0, %for.cond605.preheader ]
  %arrayidx610 = getelementptr inbounds [200 x i32]* %freq, i64 0, i64 %indvars.iv1605
  %171 = load i32* %arrayidx610, align 4, !tbaa !0
  %tobool611 = icmp eq i32 %171, 0
  %.pre1660 = trunc i64 %indvars.iv1605 to i32
  br i1 %tobool611, label %for.inc626, label %if.then612

if.then612:                                       ; preds = %for.body608
  %cmp614 = icmp eq i32 %.pre1660, 199
  %cond616 = select i1 %cmp614, i8* getelementptr inbounds ([2 x i8]* @.str309, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)
  %call619 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str308, i64 0, i64 0), i32 %.pre1660, i8* %cond616, i32 %171) #3
  %cmp620 = icmp eq i32 %.pre1660, %max.1
  br i1 %cmp620, label %for.inc626, label %if.then622

if.then622:                                       ; preds = %if.then612
  %call623 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str310, i64 0, i64 0)) #3
  br label %for.inc626

for.inc626:                                       ; preds = %for.body608, %if.then612, %if.then622
  %indvars.iv.next1606 = add i64 %indvars.iv1605, 1
  %cmp606 = icmp slt i32 %.pre1660, %max.1
  br i1 %cmp606, label %for.body608, label %for.end628

for.end628:                                       ; preds = %for.inc626
  %call629 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 41) #3
  %cmp6311589 = icmp sgt i32 %max.1, 0
  br i1 %cmp6311589, label %for.body633.lr.ph, label %while.cond.preheader

for.body633.lr.ph:                                ; preds = %for.end628
  %172 = icmp ult i32 %count580.0.lcssa, 199
  %173 = select i1 %172, i32 %count580.0.lcssa, i32 199
  %174 = icmp sgt i32 %max.01600, %173
  %smax = select i1 %174, i32 %max.01600, i32 %173
  %175 = sext i32 %smax to i64
  br label %for.body633

while.cond.preheader:                             ; preds = %for.body633, %for.end628.thread, %for.end628
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.end628 ], [ 0.000000e+00, %for.end628.thread ], [ %add639, %for.body633 ]
  br label %while.cond

for.body633:                                      ; preds = %for.body633.lr.ph, %for.body633
  %indvars.iv1603 = phi i64 [ %175, %for.body633.lr.ph ], [ %indvars.iv.next1604, %for.body633 ]
  %sum.01590 = phi double [ 0.000000e+00, %for.body633.lr.ph ], [ %add639, %for.body633 ]
  %arrayidx635 = getelementptr inbounds [200 x i32]* %freq, i64 0, i64 %indvars.iv1603
  %176 = load i32* %arrayidx635, align 4, !tbaa !0
  %177 = trunc i64 %indvars.iv1603 to i32
  %mul636 = mul i32 %177, %177
  %mul637 = mul i32 %mul636, %176
  %conv638 = sitofp i32 %mul637 to double
  %add639 = fadd double %sum.01590, %conv638
  %indvars.iv.next1604 = add i64 %indvars.iv1603, -1
  %178 = trunc i64 %indvars.iv.next1604 to i32
  %cmp631 = icmp sgt i32 %178, 0
  br i1 %cmp631, label %for.body633, label %while.cond.preheader

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %keys.0 = phi i32 [ %shr, %while.cond ], [ %conv572, %while.cond.preheader ]
  %pow2.0 = phi i32 [ %shl, %while.cond ], [ 2, %while.cond.preheader ]
  %shr = lshr i32 %keys.0, 1
  %tobool643 = icmp eq i32 %shr, 0
  %shl = shl i32 %pow2.0, 1
  br i1 %tobool643, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %179 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_keys645 = getelementptr inbounds i8* %179, i64 24
  %180 = bitcast i8* %xhv_keys645 to i64*
  %181 = load i64* %180, align 8, !tbaa !4
  %xnv_nv647 = getelementptr inbounds i8* %179, i64 32
  %182 = bitcast i8* %xnv_nv647 to double*
  %183 = load double* %182, align 8, !tbaa !5
  %conv648 = fptosi double %183 to i64
  %sub649 = sub nsw i64 %181, %conv648
  %conv650 = sitofp i64 %sub649 to double
  %sub651 = fadd double %conv650, -1.000000e+00
  %mul652 = fmul double %conv650, %sub651
  %conv653 = uitofp i32 %pow2.0 to double
  %div = fdiv double %mul652, %conv653
  %add654 = fadd double %div, %conv650
  %call655 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  %div656 = fdiv double %add654, %sum.0.lcssa
  %mul657 = fmul double %div656, 1.000000e+02
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([24 x i8]* @.str311, i64 0, i64 0), double %mul657) #4
  call void @llvm.lifetime.end(i64 800, i8* %166) #1
  br label %if.end658

if.end658:                                        ; preds = %land.lhs.true559, %sw.bb554, %while.end
  %call659 = call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  %184 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_keys661 = getelementptr inbounds i8* %184, i64 24
  %185 = bitcast i8* %xhv_keys661 to i64*
  %186 = load i64* %185, align 8, !tbaa !4
  %xnv_nv663 = getelementptr inbounds i8* %184, i64 32
  %187 = bitcast i8* %xnv_nv663 to double*
  %188 = load double* %187, align 8, !tbaa !5
  %conv664 = fptosi double %188 to i64
  %sub665 = sub nsw i64 %186, %conv664
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str312, i64 0, i64 0), i64 %sub665) #4
  %189 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_fill = getelementptr inbounds i8* %189, i64 8
  %190 = bitcast i8* %xhv_fill to i64*
  %191 = load i64* %190, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str299, i64 0, i64 0), i64 %191) #4
  %192 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_max668 = getelementptr inbounds i8* %192, i64 16
  %193 = bitcast i8* %xhv_max668 to i64*
  %194 = load i64* %193, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str300, i64 0, i64 0), i64 %194) #4
  %195 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_riter = getelementptr inbounds i8* %195, i64 56
  %196 = bitcast i8* %xhv_riter to i32*
  %197 = load i32* %196, align 4, !tbaa !0
  %conv670 = sext i32 %197 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str313, i64 0, i64 0), i64 %conv670) #4
  %198 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_eiter = getelementptr inbounds i8* %198, i64 64
  %199 = bitcast i8* %xhv_eiter to %struct.he**
  %200 = load %struct.he** %199, align 8, !tbaa !3
  %201 = ptrtoint %struct.he* %200 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str314, i64 0, i64 0), i64 %201) #4
  %202 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_pmroot = getelementptr inbounds i8* %202, i64 72
  %203 = bitcast i8* %xhv_pmroot to %struct.pmop**
  %204 = load %struct.pmop** %203, align 8, !tbaa !3
  %tobool673 = icmp eq %struct.pmop* %204, null
  br i1 %tobool673, label %if.end677, label %if.then674

if.then674:                                       ; preds = %if.end658
  %205 = ptrtoint %struct.pmop* %204 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str315, i64 0, i64 0), i64 %205) #4
  %.pre1610 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end677

if.end677:                                        ; preds = %if.end658, %if.then674
  %206 = phi i8* [ %202, %if.end658 ], [ %.pre1610, %if.then674 ]
  %xhv_name = getelementptr inbounds i8* %206, i64 80
  %207 = bitcast i8* %xhv_name to i8**
  %208 = load i8** %207, align 8, !tbaa !3
  %tobool679 = icmp eq i8* %208, null
  br i1 %tobool679, label %if.end683, label %if.then680

if.then680:                                       ; preds = %if.end677
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str316, i64 0, i64 0), i8* %208) #4
  br label %if.end683

if.end683:                                        ; preds = %if.end677, %if.then680
  %cmp684 = icmp slt i32 %nest, %maxnest
  br i1 %cmp684, label %land.lhs.true686, label %sw.epilog973

land.lhs.true686:                                 ; preds = %if.end683
  %209 = load i8** %sv_any, align 8, !tbaa !3
  %xhv_eiter688 = getelementptr inbounds i8* %209, i64 64
  %210 = bitcast i8* %xhv_eiter688 to %struct.he**
  %211 = load %struct.he** %210, align 8, !tbaa !3
  %tobool689 = icmp eq %struct.he* %211, null
  br i1 %tobool689, label %if.then690, label %sw.epilog973

if.then690:                                       ; preds = %land.lhs.true686
  %212 = bitcast %struct.sv* %sv to %struct.hv*
  %call693 = call i32 @Perl_hv_iterinit(%struct.hv* %212) #3
  %call6951585 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %212, i32 1) #3
  %tobool6961586 = icmp eq %struct.he* %call6951585, null
  br i1 %tobool6961586, label %while.end744, label %land.rhs697.lr.ph

land.rhs697.lr.ph:                                ; preds = %if.then690
  %sub692 = sub nsw i32 %maxnest, %nest
  %add718 = add nsw i32 %level, 1
  %add743 = add nsw i32 %nest, 1
  br label %land.rhs697

land.rhs697:                                      ; preds = %land.rhs697.lr.ph, %if.end739
  %call6951588 = phi %struct.he* [ %call6951585, %land.rhs697.lr.ph ], [ %call695, %if.end739 ]
  %count691.01587 = phi i32 [ %sub692, %land.rhs697.lr.ph ], [ %dec698, %if.end739 ]
  %dec698 = add nsw i32 %count691.01587, -1
  %tobool699 = icmp eq i32 %count691.01587, 0
  br i1 %tobool699, label %while.end744, label %while.body701

while.body701:                                    ; preds = %land.rhs697
  %hent_hek = getelementptr inbounds %struct.he* %call6951588, i64 0, i32 1
  %213 = load %struct.hek** %hent_hek, align 8, !tbaa !3
  %hek_hash = getelementptr inbounds %struct.hek* %213, i64 0, i32 0
  %214 = load i32* %hek_hash, align 4, !tbaa !0
  %call703 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %call6951588) #3
  %sv_flags704 = getelementptr inbounds %struct.sv* %call703, i64 0, i32 2
  %215 = load i32* %sv_flags704, align 4, !tbaa !0
  %and705 = and i32 %215, 262144
  %cmp706 = icmp eq i32 %and705, 0
  br i1 %cmp706, label %cond.false713, label %cond.true708

cond.true708:                                     ; preds = %while.body701
  %sv_any709 = getelementptr inbounds %struct.sv* %call703, i64 0, i32 0
  %216 = load i8** %sv_any709, align 8, !tbaa !3
  %xpv_cur710 = getelementptr inbounds i8* %216, i64 8
  %217 = bitcast i8* %xpv_cur710 to i64*
  %218 = load i64* %217, align 8, !tbaa !4
  store i64 %218, i64* %len, align 8, !tbaa !4
  %xpv_pv712 = bitcast i8* %216 to i8**
  %219 = load i8** %xpv_pv712, align 8, !tbaa !3
  br label %cond.end715

cond.false713:                                    ; preds = %while.body701
  %call714 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call703, i64* %len, i32 2) #3
  br label %cond.end715

cond.end715:                                      ; preds = %cond.false713, %cond.true708
  %cond716 = phi i8* [ %219, %cond.true708 ], [ %call714, %cond.false713 ]
  %call717 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %212, %struct.he* %call6951588) #3
  %220 = load i64* %len, align 8, !tbaa !4
  %call719 = call i8* @Perl_pv_display(%struct.sv* %call, i8* %cond716, i64 %220, i64 0, i64 %pvlim) #4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %add718, %struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str317, i64 0, i64 0), i8* %call719) #4
  %221 = load i32* %sv_flags704, align 4, !tbaa !0
  %and721 = and i32 %221, 536870912
  %tobool722 = icmp eq i32 %and721, 0
  br i1 %tobool722, label %if.end728, label %if.then723

if.then723:                                       ; preds = %cond.end715
  %call724 = call i64 @Perl_sv_len_utf8(%struct.sv* %call703) #3
  %mul725 = shl i64 %call724, 3
  %call726 = call i8* @Perl_sv_uni_display(%struct.sv* %call, %struct.sv* %call703, i64 %mul725, i64 3) #3
  %call727 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str318, i64 0, i64 0), i8* %call726) #3
  br label %if.end728

if.end728:                                        ; preds = %cond.end715, %if.then723
  %222 = load %struct.hek** %hent_hek, align 8, !tbaa !3
  %hek_len = getelementptr inbounds %struct.hek* %222, i64 0, i32 1
  %223 = load i32* %hek_len, align 4, !tbaa !0
  %idx.ext = sext i32 %223 to i64
  %add.ptr732.sum = add i64 %idx.ext, 1
  %add.ptr733 = getelementptr inbounds %struct.hek* %222, i64 0, i32 2, i64 %add.ptr732.sum
  %224 = load i8* %add.ptr733, align 1, !tbaa !1
  %and735 = and i8 %224, 4
  %tobool736 = icmp eq i8 %and735, 0
  br i1 %tobool736, label %if.end739, label %if.then737

if.then737:                                       ; preds = %if.end728
  %call738 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([10 x i8]* @.str319, i64 0, i64 0)) #3
  br label %if.end739

if.end739:                                        ; preds = %if.end728, %if.then737
  %conv740 = zext i32 %214 to i64
  %call741 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str320, i64 0, i64 0), i64 %conv740) #3
  call void @Perl_do_sv_dump(i32 %add718, %struct._PerlIO** %file, %struct.sv* %call717, i32 %add743, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  %call695 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %212, i32 1) #3
  %tobool696 = icmp eq %struct.he* %call695, null
  br i1 %tobool696, label %while.end744, label %land.rhs697

while.end744:                                     ; preds = %if.end739, %land.rhs697, %if.then690
  %call745 = call i32 @Perl_hv_iterinit(%struct.hv* %212) #3
  br label %sw.epilog973

sw.bb747:                                         ; preds = %if.end468
  %225 = load i32* %sv_flags, align 4, !tbaa !0
  %and749 = and i32 %225, 262144
  %tobool750 = icmp eq i32 %and749, 0
  br i1 %tobool750, label %sw.bb764, label %cond.true756

cond.true756:                                     ; preds = %sw.bb747
  %226 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv758 = bitcast i8* %226 to i8**
  %227 = load i8** %xpv_pv758, align 8, !tbaa !3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str321, i64 0, i64 0), i8* %227) #4
  br label %sw.bb764

sw.bb764:                                         ; preds = %sw.bb747, %if.end468, %cond.true756
  %228 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_stash = getelementptr inbounds i8* %228, i64 56
  %229 = bitcast i8* %xcv_stash to %struct.hv**
  %230 = load %struct.hv** %229, align 8, !tbaa !3
  call void @Perl_do_hv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([13 x i8]* @.str322, i64 0, i64 0), %struct.hv* %230) #4
  %231 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_start = getelementptr inbounds i8* %231, i64 64
  %232 = bitcast i8* %xcv_start to %struct.op**
  %233 = load %struct.op** %232, align 8, !tbaa !3
  %tobool767 = icmp eq %struct.op* %233, null
  br i1 %tobool767, label %if.end774, label %if.then768

if.then768:                                       ; preds = %sw.bb764
  %234 = ptrtoint %struct.op* %233 to i64
  %op_seq = getelementptr inbounds %struct.op* %233, i64 0, i32 5
  %235 = load i16* %op_seq, align 2, !tbaa !6
  %conv773 = zext i16 %235 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([26 x i8]* @.str323, i64 0, i64 0), i64 %234, i64 %conv773) #4
  %.pre1612 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end774

if.end774:                                        ; preds = %sw.bb764, %if.then768
  %236 = phi i8* [ %231, %sw.bb764 ], [ %.pre1612, %if.then768 ]
  %xcv_root = getelementptr inbounds i8* %236, i64 72
  %237 = bitcast i8* %xcv_root to %struct.op**
  %238 = load %struct.op** %237, align 8, !tbaa !3
  %239 = ptrtoint %struct.op* %238 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str324, i64 0, i64 0), i64 %239) #4
  %240 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_root777 = getelementptr inbounds i8* %240, i64 72
  %241 = bitcast i8* %xcv_root777 to %struct.op**
  %242 = load %struct.op** %241, align 8, !tbaa !3
  %tobool778 = icmp eq %struct.op* %242, null
  %tobool781 = icmp eq i8 %dumpops, 0
  %or.cond1570 = or i1 %tobool778, %tobool781
  br i1 %or.cond1570, label %if.end786, label %if.then782

if.then782:                                       ; preds = %if.end774
  %add783 = add nsw i32 %level, 1
  call void @Perl_do_op_dump(i32 %add783, %struct._PerlIO** %file, %struct.op* %242) #4
  %.pre1613 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end786

if.end786:                                        ; preds = %if.end774, %if.then782
  %243 = phi i8* [ %240, %if.end774 ], [ %.pre1613, %if.then782 ]
  %xcv_xsub = getelementptr inbounds i8* %243, i64 80
  %244 = bitcast i8* %xcv_xsub to void (%struct.cv*)**
  %245 = load void (%struct.cv*)** %244, align 8, !tbaa !3
  %246 = ptrtoint void (%struct.cv*)* %245 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str325, i64 0, i64 0), i64 %246) #4
  %247 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_xsubany = getelementptr inbounds i8* %247, i64 88
  %any_i32 = bitcast i8* %xcv_xsubany to i32*
  %248 = load i32* %any_i32, align 4, !tbaa !0
  %conv789 = sext i32 %248 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str326, i64 0, i64 0), i64 %conv789) #4
  %249 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_gv = getelementptr inbounds i8* %249, i64 96
  %250 = bitcast i8* %xcv_gv to %struct.gv**
  %251 = load %struct.gv** %250, align 8, !tbaa !3
  call void @Perl_do_gvgv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str327, i64 0, i64 0), %struct.gv* %251) #4
  %252 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_file = getelementptr inbounds i8* %252, i64 104
  %253 = bitcast i8* %xcv_file to i8**
  %254 = load i8** %253, align 8, !tbaa !3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str328, i64 0, i64 0), i8* %254) #4
  %255 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_depth = getelementptr inbounds i8* %255, i64 112
  %256 = bitcast i8* %xcv_depth to i64*
  %257 = load i64* %256, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str329, i64 0, i64 0), i64 %257) #4
  %258 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags794 = getelementptr inbounds i8* %258, i64 136
  %259 = bitcast i8* %xcv_flags794 to i16*
  %260 = load i16* %259, align 2, !tbaa !6
  %conv795 = zext i16 %260 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str330, i64 0, i64 0), i64 %conv795) #4
  %261 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_outside_seq = getelementptr inbounds i8* %261, i64 140
  %262 = bitcast i8* %xcv_outside_seq to i32*
  %263 = load i32* %262, align 4, !tbaa !0
  %conv797 = zext i32 %263 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([21 x i8]* @.str331, i64 0, i64 0), i64 %conv797) #4
  %cmp798 = icmp eq i32 %and, 14
  br i1 %cmp798, label %if.then800, label %if.end802

if.then800:                                       ; preds = %if.end786
  %264 = load i8** %sv_any, align 8, !tbaa !3
  %xfm_lines = getelementptr inbounds i8* %264, i64 144
  %265 = bitcast i8* %xfm_lines to i64*
  %266 = load i64* %265, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str332, i64 0, i64 0), i64 %266) #4
  br label %if.end802

if.end802:                                        ; preds = %if.then800, %if.end786
  %267 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_padlist = getelementptr inbounds i8* %267, i64 120
  %268 = bitcast i8* %xcv_padlist to %struct.av**
  %269 = load %struct.av** %268, align 8, !tbaa !3
  %270 = ptrtoint %struct.av* %269 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str333, i64 0, i64 0), i64 %270) #4
  %cmp804 = icmp slt i32 %nest, %maxnest
  br i1 %cmp804, label %if.then806, label %if.end810

if.then806:                                       ; preds = %if.end802
  %add807 = add nsw i32 %level, 1
  %271 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_padlist809 = getelementptr inbounds i8* %271, i64 120
  %272 = bitcast i8* %xcv_padlist809 to %struct.av**
  %273 = load %struct.av** %272, align 8, !tbaa !3
  call void @Perl_do_dump_pad(i32 %add807, %struct._PerlIO** %file, %struct.av* %273, i32 0) #3
  br label %if.end810

if.end810:                                        ; preds = %if.then806, %if.end802
  %274 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_outside = getelementptr inbounds i8* %274, i64 128
  %275 = bitcast i8* %xcv_outside to %struct.cv**
  %276 = load %struct.cv** %275, align 8, !tbaa !3
  %277 = ptrtoint %struct.cv* %276 to i64
  %tobool812 = icmp eq %struct.cv* %276, null
  br i1 %tobool812, label %cond.end849, label %cond.false814

cond.false814:                                    ; preds = %if.end810
  %sv_any815 = getelementptr inbounds %struct.cv* %276, i64 0, i32 0
  %278 = load %struct.xpvcv** %sv_any815, align 8, !tbaa !3
  %xcv_flags816 = getelementptr inbounds %struct.xpvcv* %278, i64 0, i32 17
  %279 = load i16* %xcv_flags816, align 2, !tbaa !6
  %conv817 = zext i16 %279 to i32
  %and818 = and i32 %conv817, 4
  %tobool819 = icmp eq i32 %and818, 0
  br i1 %tobool819, label %cond.false821, label %cond.end849

cond.false821:                                    ; preds = %cond.false814
  %280 = load %struct.cv** @PL_main_cv, align 8, !tbaa !3
  %cmp822 = icmp eq %struct.cv* %276, %280
  br i1 %cmp822, label %cond.end849, label %cond.false825

cond.false825:                                    ; preds = %cond.false821
  %and829 = and i32 %conv817, 16
  %tobool830 = icmp eq i32 %and829, 0
  br i1 %tobool830, label %cond.false832, label %cond.end849

cond.false832:                                    ; preds = %cond.false825
  %xcv_gv834 = getelementptr inbounds %struct.xpvcv* %278, i64 0, i32 12
  %281 = load %struct.gv** %xcv_gv834, align 8, !tbaa !3
  %tobool835 = icmp eq %struct.gv* %281, null
  br i1 %tobool835, label %cond.end849, label %cond.true836

cond.true836:                                     ; preds = %cond.false832
  %sv_any839 = getelementptr inbounds %struct.gv* %281, i64 0, i32 0
  %282 = load %struct.xpvgv** %sv_any839, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %282, i64 0, i32 8
  %283 = load i8** %xgv_name, align 8, !tbaa !3
  br label %cond.end849

cond.end849:                                      ; preds = %cond.false832, %cond.false825, %cond.false814, %if.end810, %cond.true836, %cond.false821
  %cond850 = phi i8* [ getelementptr inbounds ([5 x i8]* @.str335, i64 0, i64 0), %if.end810 ], [ getelementptr inbounds ([5 x i8]* @.str336, i64 0, i64 0), %cond.false814 ], [ getelementptr inbounds ([5 x i8]* @.str337, i64 0, i64 0), %cond.false821 ], [ getelementptr inbounds ([7 x i8]* @.str338, i64 0, i64 0), %cond.false825 ], [ %283, %cond.true836 ], [ getelementptr inbounds ([10 x i8]* @.str339, i64 0, i64 0), %cond.false832 ]
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([24 x i8]* @.str334, i64 0, i64 0), i64 %277, i8* %cond850) #4
  br i1 %cmp804, label %land.lhs.true853, label %sw.epilog973

land.lhs.true853:                                 ; preds = %cond.end849
  %284 = load i8** %sv_any, align 8, !tbaa !3
  %xcv_flags855 = getelementptr inbounds i8* %284, i64 136
  %285 = bitcast i8* %xcv_flags855 to i16*
  %286 = load i16* %285, align 2, !tbaa !6
  %287 = and i16 %286, 3
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %sw.epilog973, label %if.then865

if.then865:                                       ; preds = %land.lhs.true853
  %add866 = add nsw i32 %level, 1
  %xcv_outside868 = getelementptr inbounds i8* %284, i64 128
  %289 = bitcast i8* %xcv_outside868 to %struct.cv**
  %290 = load %struct.cv** %289, align 8, !tbaa !3
  %291 = bitcast %struct.cv* %290 to %struct.sv*
  %add869 = add nsw i32 %nest, 1
  call void @Perl_do_sv_dump(i32 %add866, %struct._PerlIO** %file, %struct.sv* %291, i32 %add869, i32 %maxnest, i8 signext %dumpops, i64 %pvlim) #4
  br label %sw.epilog973

sw.bb871:                                         ; preds = %if.end468
  %292 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_name873 = getelementptr inbounds i8* %292, i64 64
  %293 = bitcast i8* %xgv_name873 to i8**
  %294 = load i8** %293, align 8, !tbaa !3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str316, i64 0, i64 0), i8* %294) #4
  %295 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_namelen = getelementptr inbounds i8* %295, i64 72
  %296 = bitcast i8* %xgv_namelen to i64*
  %297 = load i64* %296, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str340, i64 0, i64 0), i64 %297) #4
  %298 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_stash = getelementptr inbounds i8* %298, i64 80
  %299 = bitcast i8* %xgv_stash to %struct.hv**
  %300 = load %struct.hv** %299, align 8, !tbaa !3
  call void @Perl_do_hv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([10 x i8]* @.str341, i64 0, i64 0), %struct.hv* %300) #4
  %301 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp877 = getelementptr inbounds i8* %301, i64 56
  %302 = bitcast i8* %xgv_gp877 to %struct.gp**
  %303 = load %struct.gp** %302, align 8, !tbaa !3
  %304 = ptrtoint %struct.gp* %303 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str342, i64 0, i64 0), i64 %304) #4
  %305 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp879 = getelementptr inbounds i8* %305, i64 56
  %306 = bitcast i8* %xgv_gp879 to %struct.gp**
  %307 = load %struct.gp** %306, align 8, !tbaa !3
  %tobool880 = icmp eq %struct.gp* %307, null
  br i1 %tobool880, label %sw.epilog973, label %if.end882

if.end882:                                        ; preds = %sw.bb871
  %gp_sv = getelementptr inbounds %struct.gp* %307, i64 0, i32 0
  %308 = load %struct.sv** %gp_sv, align 8, !tbaa !3
  %309 = ptrtoint %struct.sv* %308 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str343, i64 0, i64 0), i64 %309) #4
  %310 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp886 = getelementptr inbounds i8* %310, i64 56
  %311 = bitcast i8* %xgv_gp886 to %struct.gp**
  %312 = load %struct.gp** %311, align 8, !tbaa !3
  %gp_refcnt = getelementptr inbounds %struct.gp* %312, i64 0, i32 1
  %313 = load i32* %gp_refcnt, align 4, !tbaa !0
  %conv887 = zext i32 %313 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str344, i64 0, i64 0), i64 %conv887) #4
  %314 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp889 = getelementptr inbounds i8* %314, i64 56
  %315 = bitcast i8* %xgv_gp889 to %struct.gp**
  %316 = load %struct.gp** %315, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %316, i64 0, i32 2
  %317 = load %struct.io** %gp_io, align 8, !tbaa !3
  %318 = ptrtoint %struct.io* %317 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str345, i64 0, i64 0), i64 %318) #4
  %319 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp891 = getelementptr inbounds i8* %319, i64 56
  %320 = bitcast i8* %xgv_gp891 to %struct.gp**
  %321 = load %struct.gp** %320, align 8, !tbaa !3
  %gp_form = getelementptr inbounds %struct.gp* %321, i64 0, i32 3
  %322 = load %struct.cv** %gp_form, align 8, !tbaa !3
  %323 = ptrtoint %struct.cv* %322 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str346, i64 0, i64 0), i64 %323) #4
  %324 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp893 = getelementptr inbounds i8* %324, i64 56
  %325 = bitcast i8* %xgv_gp893 to %struct.gp**
  %326 = load %struct.gp** %325, align 8, !tbaa !3
  %gp_av = getelementptr inbounds %struct.gp* %326, i64 0, i32 4
  %327 = load %struct.av** %gp_av, align 8, !tbaa !3
  %328 = ptrtoint %struct.av* %327 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str347, i64 0, i64 0), i64 %328) #4
  %329 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp895 = getelementptr inbounds i8* %329, i64 56
  %330 = bitcast i8* %xgv_gp895 to %struct.gp**
  %331 = load %struct.gp** %330, align 8, !tbaa !3
  %gp_hv = getelementptr inbounds %struct.gp* %331, i64 0, i32 5
  %332 = load %struct.hv** %gp_hv, align 8, !tbaa !3
  %333 = ptrtoint %struct.hv* %332 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str348, i64 0, i64 0), i64 %333) #4
  %334 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp897 = getelementptr inbounds i8* %334, i64 56
  %335 = bitcast i8* %xgv_gp897 to %struct.gp**
  %336 = load %struct.gp** %335, align 8, !tbaa !3
  %gp_cv = getelementptr inbounds %struct.gp* %336, i64 0, i32 7
  %337 = load %struct.cv** %gp_cv, align 8, !tbaa !3
  %338 = ptrtoint %struct.cv* %337 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str349, i64 0, i64 0), i64 %338) #4
  %339 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp899 = getelementptr inbounds i8* %339, i64 56
  %340 = bitcast i8* %xgv_gp899 to %struct.gp**
  %341 = load %struct.gp** %340, align 8, !tbaa !3
  %gp_cvgen = getelementptr inbounds %struct.gp* %341, i64 0, i32 8
  %342 = load i32* %gp_cvgen, align 4, !tbaa !0
  %conv900 = zext i32 %342 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str350, i64 0, i64 0), i64 %conv900) #4
  %343 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp902 = getelementptr inbounds i8* %343, i64 56
  %344 = bitcast i8* %xgv_gp902 to %struct.gp**
  %345 = load %struct.gp** %344, align 8, !tbaa !3
  %gp_flags903 = getelementptr inbounds %struct.gp* %345, i64 0, i32 9
  %346 = load i32* %gp_flags903, align 4, !tbaa !0
  %conv904 = zext i32 %346 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([21 x i8]* @.str351, i64 0, i64 0), i64 %conv904) #4
  %347 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp906 = getelementptr inbounds i8* %347, i64 56
  %348 = bitcast i8* %xgv_gp906 to %struct.gp**
  %349 = load %struct.gp** %348, align 8, !tbaa !3
  %gp_line = getelementptr inbounds %struct.gp* %349, i64 0, i32 10
  %350 = load i32* %gp_line, align 4, !tbaa !0
  %conv907 = zext i32 %350 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str352, i64 0, i64 0), i64 %conv907) #4
  %351 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp909 = getelementptr inbounds i8* %351, i64 56
  %352 = bitcast i8* %xgv_gp909 to %struct.gp**
  %353 = load %struct.gp** %352, align 8, !tbaa !3
  %gp_file = getelementptr inbounds %struct.gp* %353, i64 0, i32 11
  %354 = load i8** %gp_file, align 8, !tbaa !3
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str353, i64 0, i64 0), i8* %354) #4
  %355 = load i8** %sv_any, align 8, !tbaa !3
  %356 = getelementptr inbounds i8* %355, i64 88
  %357 = load i8* %356, align 1, !tbaa !1
  %conv912 = zext i8 %357 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str354, i64 0, i64 0), i64 %conv912) #4
  %358 = load i8** %sv_any, align 8, !tbaa !3
  %xgv_gp914 = getelementptr inbounds i8* %358, i64 56
  %359 = bitcast i8* %xgv_gp914 to %struct.gp**
  %360 = load %struct.gp** %359, align 8, !tbaa !3
  %gp_egv = getelementptr inbounds %struct.gp* %360, i64 0, i32 6
  %361 = load %struct.gv** %gp_egv, align 8, !tbaa !3
  call void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([8 x i8]* @.str355, i64 0, i64 0), %struct.gv* %361) #4
  br label %sw.epilog973

sw.bb915:                                         ; preds = %if.end468
  %362 = load i8** %sv_any, align 8, !tbaa !3
  %xio_ifp = getelementptr inbounds i8* %362, i64 56
  %363 = bitcast i8* %xio_ifp to %struct._PerlIO***
  %364 = load %struct._PerlIO*** %363, align 8, !tbaa !3
  %365 = ptrtoint %struct._PerlIO** %364 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str356, i64 0, i64 0), i64 %365) #4
  %366 = load i8** %sv_any, align 8, !tbaa !3
  %xio_ofp = getelementptr inbounds i8* %366, i64 64
  %367 = bitcast i8* %xio_ofp to %struct._PerlIO***
  %368 = load %struct._PerlIO*** %367, align 8, !tbaa !3
  %369 = ptrtoint %struct._PerlIO** %368 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str357, i64 0, i64 0), i64 %369) #4
  %370 = load i8** %sv_any, align 8, !tbaa !3
  %xio_dirpu = getelementptr inbounds i8* %370, i64 72
  %xiou_dirp = bitcast i8* %xio_dirpu to %struct.__dirstream**
  %371 = load %struct.__dirstream** %xiou_dirp, align 8, !tbaa !3
  %372 = ptrtoint %struct.__dirstream* %371 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str358, i64 0, i64 0), i64 %372) #4
  %373 = load i8** %sv_any, align 8, !tbaa !3
  %xio_lines = getelementptr inbounds i8* %373, i64 80
  %374 = bitcast i8* %xio_lines to i64*
  %375 = load i64* %374, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str332, i64 0, i64 0), i64 %375) #4
  %376 = load i8** %sv_any, align 8, !tbaa !3
  %xio_page = getelementptr inbounds i8* %376, i64 88
  %377 = bitcast i8* %xio_page to i64*
  %378 = load i64* %377, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([14 x i8]* @.str359, i64 0, i64 0), i64 %378) #4
  %379 = load i8** %sv_any, align 8, !tbaa !3
  %xio_page_len = getelementptr inbounds i8* %379, i64 96
  %380 = bitcast i8* %xio_page_len to i64*
  %381 = load i64* %380, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([18 x i8]* @.str360, i64 0, i64 0), i64 %381) #4
  %382 = load i8** %sv_any, align 8, !tbaa !3
  %xio_lines_left = getelementptr inbounds i8* %382, i64 104
  %383 = bitcast i8* %xio_lines_left to i64*
  %384 = load i64* %383, align 8, !tbaa !4
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str361, i64 0, i64 0), i64 %384) #4
  %385 = load i8** %sv_any, align 8, !tbaa !3
  %xio_top_name = getelementptr inbounds i8* %385, i64 112
  %386 = bitcast i8* %xio_top_name to i8**
  %387 = load i8** %386, align 8, !tbaa !3
  %tobool924 = icmp eq i8* %387, null
  br i1 %tobool924, label %if.end928, label %if.then925

if.then925:                                       ; preds = %sw.bb915
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str362, i64 0, i64 0), i8* %387) #4
  %.pre1614 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end928

if.end928:                                        ; preds = %sw.bb915, %if.then925
  %388 = phi i8* [ %385, %sw.bb915 ], [ %.pre1614, %if.then925 ]
  %xio_top_gv = getelementptr inbounds i8* %388, i64 120
  %389 = bitcast i8* %xio_top_gv to %struct.gv**
  %390 = load %struct.gv** %389, align 8, !tbaa !3
  call void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([9 x i8]* @.str363, i64 0, i64 0), %struct.gv* %390) #4
  %391 = load i8** %sv_any, align 8, !tbaa !3
  %xio_fmt_name = getelementptr inbounds i8* %391, i64 128
  %392 = bitcast i8* %xio_fmt_name to i8**
  %393 = load i8** %392, align 8, !tbaa !3
  %tobool931 = icmp eq i8* %393, null
  br i1 %tobool931, label %if.end935, label %if.then932

if.then932:                                       ; preds = %if.end928
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([19 x i8]* @.str364, i64 0, i64 0), i8* %393) #4
  %.pre1615 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end935

if.end935:                                        ; preds = %if.end928, %if.then932
  %394 = phi i8* [ %391, %if.end928 ], [ %.pre1615, %if.then932 ]
  %xio_fmt_gv = getelementptr inbounds i8* %394, i64 136
  %395 = bitcast i8* %xio_fmt_gv to %struct.gv**
  %396 = load %struct.gv** %395, align 8, !tbaa !3
  call void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([9 x i8]* @.str365, i64 0, i64 0), %struct.gv* %396) #4
  %397 = load i8** %sv_any, align 8, !tbaa !3
  %xio_bottom_name = getelementptr inbounds i8* %397, i64 144
  %398 = bitcast i8* %xio_bottom_name to i8**
  %399 = load i8** %398, align 8, !tbaa !3
  %tobool938 = icmp eq i8* %399, null
  br i1 %tobool938, label %if.end942, label %if.then939

if.then939:                                       ; preds = %if.end935
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([22 x i8]* @.str366, i64 0, i64 0), i8* %399) #4
  %.pre1616 = load i8** %sv_any, align 8, !tbaa !3
  br label %if.end942

if.end942:                                        ; preds = %if.end935, %if.then939
  %400 = phi i8* [ %397, %if.end935 ], [ %.pre1616, %if.then939 ]
  %xio_bottom_gv = getelementptr inbounds i8* %400, i64 152
  %401 = bitcast i8* %xio_bottom_gv to %struct.gv**
  %402 = load %struct.gv** %401, align 8, !tbaa !3
  call void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([12 x i8]* @.str367, i64 0, i64 0), %struct.gv* %402) #4
  %403 = load i8** %sv_any, align 8, !tbaa !3
  %xio_subprocess = getelementptr inbounds i8* %403, i64 160
  %404 = bitcast i8* %xio_subprocess to i16*
  %405 = load i16* %404, align 2, !tbaa !6
  %conv945 = sext i16 %405 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([20 x i8]* @.str368, i64 0, i64 0), i64 %conv945) #4
  %406 = load i8** %sv_any, align 8, !tbaa !3
  %407 = getelementptr inbounds i8* %406, i64 162
  %408 = load i8* %407, align 1, !tbaa !1
  %notlhs = icmp sgt i8 %408, 32
  %notrhs = icmp ne i8 %408, 127
  %or.cond1572.not = and i1 %notrhs, %notlhs
  %cmp960 = icmp eq i8 %408, 32
  %or.cond1579 = or i1 %or.cond1572.not, %cmp960
  %conv965 = sext i8 %408 to i32
  br i1 %or.cond1579, label %if.then962, label %if.else966

if.then962:                                       ; preds = %if.end942
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([15 x i8]* @.str369, i64 0, i64 0), i32 %conv965) #4
  br label %if.end970

if.else966:                                       ; preds = %if.end942
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([16 x i8]* @.str370, i64 0, i64 0), i32 %conv965) #4
  br label %if.end970

if.end970:                                        ; preds = %if.else966, %if.then962
  %409 = load i8** %sv_any, align 8, !tbaa !3
  %410 = getelementptr inbounds i8* %409, i64 163
  %411 = load i8* %410, align 1, !tbaa !1
  %conv972 = sext i8 %411 to i64
  call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([17 x i8]* @.str330, i64 0, i64 0), i64 %conv972) #4
  br label %sw.epilog973

sw.epilog973:                                     ; preds = %for.cond.preheader, %for.inc, %land.lhs.true853, %sw.bb469, %sw.bb469, %land.lhs.true686, %sw.bb871, %cond.end849, %if.then865, %if.end683, %while.end744, %cond.end, %land.lhs.true535, %if.then486, %if.end468, %if.end970, %if.end882
  call void @Perl_sv_free(%struct.sv* %call) #3
  br label %return

return:                                           ; preds = %sw.epilog973, %if.then404, %sw.default356, %sw.bb324, %if.then
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_puts(%struct._PerlIO**, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_magic_dump(%struct.magic* %mg) #0 {
entry:
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_magic_dump(i32 0, %struct._PerlIO** %call, %struct.magic* %mg, i32 0, i32 0, i8 signext 0, i64 0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_hv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.hv* %sv) #0 {
entry:
  %0 = ptrtoint %struct.hv* %sv to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str199, i64 0, i64 0), i8* %name, i64 %0) #4
  %tobool = icmp eq %struct.hv* %sv, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %sv, i64 0, i32 0
  %1 = load %struct.xpvhv** %sv_any, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %1, i64 0, i32 10
  %2 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([7 x i8]* @.str200, i64 0, i64 0), i8* %2) #3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = tail call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_gv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.gv* %sv) #0 {
entry:
  %0 = ptrtoint %struct.gv* %sv to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str199, i64 0, i64 0), i8* %name, i64 %0) #4
  %tobool = icmp eq %struct.gv* %sv, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %sv, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 8
  %2 = load i8** %xgv_name, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([7 x i8]* @.str200, i64 0, i64 0), i8* %2) #3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = tail call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_do_gvgv_dump(i32 %level, %struct._PerlIO** %file, i8* %name, %struct.gv* %sv) #0 {
entry:
  %0 = ptrtoint %struct.gv* %sv to i64
  tail call void (i32, %struct._PerlIO**, i8*, ...)* @Perl_dump_indent(i32 %level, %struct._PerlIO** %file, i8* getelementptr inbounds ([11 x i8]* @.str199, i64 0, i64 0), i8* %name, i64 %0) #4
  %tobool = icmp eq %struct.gv* %sv, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %sv, i64 0, i32 0
  %1 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_name = getelementptr inbounds %struct.xpvgv* %1, i64 0, i32 8
  %2 = load i8** %xgv_name, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %2, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([3 x i8]* @.str201, i64 0, i64 0)) #3
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_stash = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 10
  %4 = load %struct.hv** %xgv_stash, align 8, !tbaa !3
  %tobool3 = icmp eq %struct.hv* %4, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %sv_any7 = getelementptr inbounds %struct.hv* %4, i64 0, i32 0
  %5 = load %struct.xpvhv** %sv_any7, align 8, !tbaa !3
  %xhv_name = getelementptr inbounds %struct.xpvhv* %5, i64 0, i32 10
  %6 = load i8** %xhv_name, align 8, !tbaa !3
  %tobool8 = icmp eq i8* %6, null
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %land.lhs.true4
  %call14 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([9 x i8]* @.str202, i64 0, i64 0), i8* %6) #3
  %.pre = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %if.then, %if.then9
  %7 = phi %struct.xpvgv* [ %3, %land.lhs.true4 ], [ %3, %if.then ], [ %.pre, %if.then9 ]
  %xgv_name16 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 8
  %8 = load i8** %xgv_name16, align 8, !tbaa !3
  %call17 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %file, i8* getelementptr inbounds ([5 x i8]* @.str203, i64 0, i64 0), i8* %8) #3
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %entry
  %call18 = tail call i32 @PerlIO_putc(%struct._PerlIO** %file, i32 10) #3
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvf(i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(%struct.hv*) #2

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext_flags(%struct.hv*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #2

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_do_dump_pad(i32, %struct._PerlIO**, %struct.av*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_sv_dump(%struct.sv* %sv) #0 {
entry:
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  tail call void @Perl_do_sv_dump(i32 0, %struct._PerlIO** %call, %struct.sv* %sv, i32 0, i32 0, i8 signext 0, i64 0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_runops_debug() #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !3
  %tobool = icmp eq %struct.op* %0, null
  br i1 %tobool, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %1 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %1, i64 0, i32 14
  %2 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp = icmp eq %struct.sv* %2, null
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings1 = getelementptr inbounds %struct.cop* %3, i64 0, i32 14
  %4 = load %struct.sv** %cop_warnings1, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.sv* %4, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp2, label %if.then8, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings4 = getelementptr inbounds %struct.cop* %5, i64 0, i32 14
  %6 = load %struct.sv** %cop_warnings4, align 8, !tbaa !3
  %cmp5 = icmp eq %struct.sv* %6, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp5, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %7 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings6 = getelementptr inbounds %struct.cop* %7, i64 0, i32 14
  %8 = load %struct.sv** %cop_warnings6, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %9 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %10, i64 5
  %11 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %11, 16
  %tobool7 = icmp eq i8 %and, 0
  br i1 %tobool7, label %return, label %if.then8

if.then8:                                         ; preds = %land.lhs.true, %lor.lhs.false, %if.then
  tail call void (i32, i8*, ...)* @Perl_warner(i32 22, i8* getelementptr inbounds ([15 x i8]* @.str371, i64 0, i64 0)) #3
  br label %return

do.body:                                          ; preds = %entry, %do.cond
  %12 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool10 = icmp eq i32 %12, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %do.body
  tail call void @Perl_despatch_signals() #3
  br label %if.end12

if.end12:                                         ; preds = %do.body, %if.then11
  %13 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %13, 0
  br i1 %tobool13, label %do.cond, label %if.then14

if.then14:                                        ; preds = %if.end12
  %14 = load i8*** @PL_watchaddr, align 8, !tbaa !3
  %cmp15 = icmp eq i8** %14, null
  br i1 %cmp15, label %if.end22, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then14
  %15 = load i8** %14, align 8, !tbaa !3
  %16 = load i8** @PL_watchok, align 8, !tbaa !3
  %cmp18 = icmp eq i8* %15, %16
  br i1 %cmp18, label %if.end22, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %17 = load i8*** @PL_watchaddr, align 8, !tbaa !3
  %18 = ptrtoint i8** %17 to i64
  %19 = load i8** @PL_watchok, align 8, !tbaa !3
  %20 = ptrtoint i8* %19 to i64
  %21 = load i8** %17, align 8, !tbaa !3
  %22 = ptrtoint i8* %21 to i64
  %call21 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([38 x i8]* @.str372, i64 0, i64 0), i64 %18, i64 %20, i64 %22) #3
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true17, %if.then14, %if.then20
  %23 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and23 = and i32 %23, 2
  %tobool24 = icmp eq i32 %and23, 0
  br i1 %tobool24, label %if.end33, label %if.then25

if.then25:                                        ; preds = %if.end22
  %24 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and26 = and i32 %24, 1048576
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then25
  %call29 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call30 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call29, i8* getelementptr inbounds ([2 x i8]* @.str287, i64 0, i64 0)) #3
  tail call void @Perl_deb_stack_all() #3
  br label %if.end33

if.else:                                          ; preds = %if.then25
  %call31 = tail call i32 @Perl_debstack() #3
  br label %if.end33

if.end33:                                         ; preds = %if.end22, %if.then28, %if.else
  %25 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and34 = and i32 %25, 8
  %tobool35 = icmp eq i32 %and34, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end33
  %26 = load %struct.op** @PL_op, align 8, !tbaa !3
  %call37 = tail call i32 @Perl_debop(%struct.op* %26) #4
  br label %if.end38

if.end38:                                         ; preds = %if.end33, %if.then36
  %27 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and39 = and i32 %27, 64
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %do.cond, label %if.then41

if.then41:                                        ; preds = %if.end38
  %28 = load %struct.op** @PL_op, align 8, !tbaa !3
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_stash.i = getelementptr inbounds %struct.cop* %29, i64 0, i32 9
  %30 = load %struct.hv** %cop_stash.i, align 8, !tbaa !3
  %31 = load %struct.hv** @PL_debstash, align 8, !tbaa !3
  %cmp.i = icmp eq %struct.hv* %30, %31
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then41
  %32 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and.i = and i32 %32, 524288
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %do.cond, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then41
  %33 = load i32** @PL_profiledata, align 8, !tbaa !3
  %tobool1.i = icmp eq i32* %33, null
  br i1 %tobool1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call i8* @Perl_safesysmalloc(i64 1408) #3
  %34 = bitcast i8* %call.i to i32*
  store i32* %34, i32** @PL_profiledata, align 8, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 1408, i32 1, i1 false) #1
  %.pre.i = load i32** @PL_profiledata, align 8, !tbaa !3
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %35 = phi i32* [ %33, %if.end.i ], [ %.pre.i, %if.then2.i ]
  %op_type.i = getelementptr inbounds %struct.op* %28, i64 0, i32 4
  %36 = load i16* %op_type.i, align 2, !tbaa !6
  %idxprom.i = zext i16 %36 to i64
  %arrayidx.i = getelementptr inbounds i32* %35, i64 %idxprom.i
  %37 = load i32* %arrayidx.i, align 4, !tbaa !0
  %inc.i = add i32 %37, 1
  store i32 %inc.i, i32* %arrayidx.i, align 4, !tbaa !0
  br label %do.cond

do.cond:                                          ; preds = %if.end3.i, %land.lhs.true.i, %if.end38, %if.end12
  %38 = load %struct.op** @PL_op, align 8, !tbaa !3
  %op_ppaddr = getelementptr inbounds %struct.op* %38, i64 0, i32 2
  %39 = load %struct.op* ()** %op_ppaddr, align 8, !tbaa !3
  %call44 = tail call %struct.op* %39() #3
  store %struct.op* %call44, %struct.op** @PL_op, align 8, !tbaa !3
  %tobool45 = icmp eq %struct.op* %call44, null
  br i1 %tobool45, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then8, %lor.lhs.false3, %land.lhs.true, %do.end
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_despatch_signals() #2

; Function Attrs: optsize
declare void @Perl_deb_stack_all() #2

; Function Attrs: optsize
declare i32 @Perl_debstack() #2

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_debop(%struct.op* %o) #0 {
entry:
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_stash = getelementptr inbounds %struct.cop* %0, i64 0, i32 9
  %1 = load %struct.hv** %cop_stash, align 8, !tbaa !3
  %2 = load %struct.hv** @PL_debstash, align 8, !tbaa !3
  %cmp = icmp eq %struct.hv* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32* @PL_debug, align 4, !tbaa !0
  %and = and i32 %3, 524288
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %op_type = getelementptr inbounds %struct.op* %o, i64 0, i32 4
  %4 = load i16* %op_type, align 2, !tbaa !6
  %cmp1 = icmp eq i16 %4, 351
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call = tail call i8* @Perl_custom_op_name(%struct.op* %o) #3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %idxprom = zext i16 %4 to i64
  %arrayidx = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %idxprom
  %5 = load i8** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %5, %cond.false ]
  tail call void (i8*, ...)* @Perl_deb(i8* getelementptr inbounds ([3 x i8]* @.str286, i64 0, i64 0), i8* %cond) #3
  %6 = load i16* %op_type, align 2, !tbaa !6
  %conv5 = zext i16 %6 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 5, label %sw.bb
    i32 6, label %sw.bb9
    i32 7, label %sw.bb9
    i32 9, label %sw.bb28
    i32 10, label %sw.bb28
    i32 11, label %sw.bb28
  ]

sw.bb:                                            ; preds = %cond.end
  %call6 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %op_sv = getelementptr inbounds %struct.op* %o, i64 1
  %7 = bitcast %struct.op* %op_sv to %struct.sv**
  %8 = load %struct.sv** %7, align 8, !tbaa !3
  %call7 = tail call i8* @Perl_sv_peek(%struct.sv* %8) #4
  %call8 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call6, i8* getelementptr inbounds ([5 x i8]* @.str373, i64 0, i64 0), i8* %call7) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %cond.end, %cond.end
  %op_sv10 = getelementptr inbounds %struct.op* %o, i64 1
  %9 = bitcast %struct.op* %op_sv10 to %struct.sv**
  %10 = load %struct.sv** %9, align 8, !tbaa !3
  %tobool11 = icmp eq %struct.sv* %10, null
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb9
  %call13 = tail call %struct.sv* @Perl_newSV(i64 0) #3
  %11 = load %struct.sv** %9, align 8, !tbaa !3
  %12 = bitcast %struct.sv* %11 to %struct.gv*
  tail call void @Perl_gv_fullname4(%struct.sv* %call13, %struct.gv* %12, i8* null, i8 signext 1) #3
  %call15 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %sv_flags = getelementptr inbounds %struct.sv* %call13, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !0
  %and16 = and i32 %13, 262144
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %cond.false20, label %cond.true19

cond.true19:                                      ; preds = %if.then12
  %sv_any = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end22

cond.false20:                                     ; preds = %if.then12
  %call21 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call13) #3
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true19
  %cond23 = phi i8* [ %15, %cond.true19 ], [ %call21, %cond.false20 ]
  %call24 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call15, i8* getelementptr inbounds ([5 x i8]* @.str373, i64 0, i64 0), i8* %cond23) #3
  tail call void @Perl_sv_free(%struct.sv* %call13) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb9
  %call25 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call26 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call25, i8* getelementptr inbounds ([7 x i8]* @.str374, i64 0, i64 0)) #3
  br label %sw.epilog

sw.bb28:                                          ; preds = %cond.end, %cond.end, %cond.end
  %16 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 2
  %17 = load i32* %si_cxix, align 4, !tbaa !0
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 1
  %18 = load %struct.context** %si_cxstack.i, align 8, !tbaa !3
  %19 = sext i32 %17 to i64
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.else16.i, %sw.bb28
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.else16.i ], [ %19, %sw.bb28 ]
  %cx_type.i = getelementptr inbounds %struct.context* %18, i64 %indvars.iv.i, i32 0
  %20 = load i32* %cx_type.i, align 4, !tbaa !0
  %and.i = and i32 %20, 255
  switch i32 %and.i, label %if.else11.i [
    i32 1, label %if.then.i
    i32 6, label %if.then.i
    i32 2, label %land.lhs.true.i
  ]

if.then.i:                                        ; preds = %tailrecurse.i, %tailrecurse.i
  %blk_u.i = getelementptr inbounds %struct.context* %18, i64 %indvars.iv.i, i32 1, i32 0, i32 7
  %cv.i = bitcast %union.anon.1* %blk_u.i to %struct.cv**
  %21 = load %struct.cv** %cv.i, align 8, !tbaa !3
  br label %S_deb_curcv.exit

land.lhs.true.i:                                  ; preds = %tailrecurse.i
  %and8.i = and i32 %20, 514
  %cmp9.i = icmp eq i32 %and8.i, 514
  br i1 %cmp9.i, label %if.else11.i, label %if.then10.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %22 = load %struct.cv** @PL_compcv, align 8, !tbaa !3
  br label %S_deb_curcv.exit

if.else11.i:                                      ; preds = %land.lhs.true.i, %tailrecurse.i
  %23 = trunc i64 %indvars.iv.i to i32
  %cmp12.i = icmp eq i32 %23, 0
  br i1 %cmp12.i, label %land.lhs.true13.i, label %if.else16.i

land.lhs.true13.i:                                ; preds = %if.else11.i
  %si_type.i = getelementptr inbounds %struct.stackinfo* %16, i64 0, i32 4
  %24 = load i32* %si_type.i, align 4, !tbaa !0
  %cmp14.i = icmp eq i32 %24, 1
  %25 = load %struct.cv** @PL_main_cv, align 8, !tbaa !3
  %..i = select i1 %cmp14.i, %struct.cv* %25, %struct.cv* null
  br label %S_deb_curcv.exit

if.else16.i:                                      ; preds = %if.else11.i
  %cmp17.i = icmp slt i32 %23, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  br i1 %cmp17.i, label %if.end37.thread, label %tailrecurse.i

S_deb_curcv.exit:                                 ; preds = %if.then.i, %if.then10.i, %land.lhs.true13.i
  %call2974 = phi %struct.cv* [ %..i, %land.lhs.true13.i ], [ %21, %if.then.i ], [ %22, %if.then10.i ]
  %tobool30 = icmp eq %struct.cv* %call2974, null
  br i1 %tobool30, label %if.end37.thread, label %if.end37

if.end37.thread:                                  ; preds = %if.else16.i, %S_deb_curcv.exit
  %call4077 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %op_targ55.pre = getelementptr inbounds %struct.op* %o, i64 0, i32 3
  br label %if.else53

if.end37:                                         ; preds = %S_deb_curcv.exit
  %sv_any32 = getelementptr inbounds %struct.cv* %call2974, i64 0, i32 0
  %26 = load %struct.xpvcv** %sv_any32, align 8, !tbaa !3
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %26, i64 0, i32 15
  %27 = load %struct.av** %xcv_padlist, align 8, !tbaa !3
  %call33 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %27, i32 0, i32 0) #3
  %28 = load %struct.sv** %call33, align 8, !tbaa !3
  %29 = bitcast %struct.sv* %28 to %struct.av*
  %op_targ = getelementptr inbounds %struct.op* %o, i64 0, i32 3
  %30 = load i64* %op_targ, align 8, !tbaa !4
  %conv34 = trunc i64 %30 to i32
  %call35 = tail call %struct.sv** @Perl_av_fetch(%struct.av* %29, i32 %conv34, i32 0) #3
  %31 = load %struct.sv** %call35, align 8, !tbaa !3
  %tobool38 = icmp eq %struct.sv* %31, null
  %call40 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  br i1 %tobool38, label %if.else53, label %if.then39

if.then39:                                        ; preds = %if.end37
  %sv_flags41 = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags41, align 4, !tbaa !0
  %and42 = and i32 %32, 262144
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %cond.false48, label %cond.true45

cond.true45:                                      ; preds = %if.then39
  %sv_any46 = getelementptr inbounds %struct.sv* %31, i64 0, i32 0
  %33 = load i8** %sv_any46, align 8, !tbaa !3
  %xpv_pv47 = bitcast i8* %33 to i8**
  %34 = load i8** %xpv_pv47, align 8, !tbaa !3
  br label %cond.end50

cond.false48:                                     ; preds = %if.then39
  %call49 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %31) #3
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false48, %cond.true45
  %cond51 = phi i8* [ %34, %cond.true45 ], [ %call49, %cond.false48 ]
  %call52 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call40, i8* getelementptr inbounds ([5 x i8]* @.str373, i64 0, i64 0), i8* %cond51) #3
  br label %sw.epilog

if.else53:                                        ; preds = %if.end37.thread, %if.end37
  %op_targ55.pre-phi = phi i64* [ %op_targ55.pre, %if.end37.thread ], [ %op_targ, %if.end37 ]
  %call4078 = phi %struct._PerlIO** [ %call4077, %if.end37.thread ], [ %call40, %if.end37 ]
  %35 = load i64* %op_targ55.pre-phi, align 8, !tbaa !4
  %call56 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call4078, i8* getelementptr inbounds ([6 x i8]* @.str375, i64 0, i64 0), i64 %35) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %cond.end50, %if.else53, %cond.end22, %if.else, %sw.bb
  %call58 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %call59 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call58, i8* getelementptr inbounds ([2 x i8]* @.str287, i64 0, i64 0)) #3
  br label %return

return:                                           ; preds = %land.lhs.true, %sw.epilog
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_deb(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @Perl_watch(i8** %addr) #0 {
entry:
  store i8** %addr, i8*** @PL_watchaddr, align 8, !tbaa !3
  %0 = load i8** %addr, align 8, !tbaa !3
  store i8* %0, i8** @PL_watchok, align 8, !tbaa !3
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %1 = load i8*** @PL_watchaddr, align 8, !tbaa !3
  %2 = ptrtoint i8** %1 to i64
  %3 = load i8** @PL_watchok, align 8, !tbaa !3
  %4 = ptrtoint i8* %3 to i64
  %call1 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([32 x i8]* @.str376, i64 0, i64 0), i64 %2, i64 %4) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_debprofdump() #0 {
entry:
  %0 = load i32** @PL_profiledata, align 8, !tbaa !3
  %tobool = icmp eq i32* %0, null
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc.for.body_crit_edge
  %1 = phi i32* [ %.pre, %for.inc.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %2, 0
  br i1 %tobool1, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #3
  %3 = load i32** @PL_profiledata, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %3, i64 %indvars.iv
  %4 = load i32* %arrayidx4, align 4, !tbaa !0
  %conv = zext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [0 x i8*]* @PL_op_name, i64 0, i64 %indvars.iv
  %5 = load i8** %arrayidx6, align 8, !tbaa !3
  %call7 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call, i8* getelementptr inbounds ([9 x i8]* @.str377, i64 0, i64 0), i64 %conv, i8* %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 352
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32** @PL_profiledata, align 8, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
