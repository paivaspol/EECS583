; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/perl.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interpreter = type { i8 }
%struct.sv = type { i8*, i32, i32 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], %struct.jmpenv*, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.perl_debug_pad = type { [3 x %struct.sv] }
%struct.exitlistentry = type { void (i8*)*, i8* }
%struct.stackinfo = type { %struct.av*, %struct.context*, i32, i32, i32, %struct.stackinfo*, %struct.stackinfo*, i32 }
%struct.context = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.block }
%struct.block = type { i32, %struct.cop*, i32, i32, i32, %struct.pmop*, i8, %union.anon.1 }
%union.anon.1 = type { %struct.block_loop }
%struct.block_loop = type { i8*, i32, %struct.op*, %struct.op*, %struct.op*, %struct.sv**, %struct.sv*, %struct.sv*, %struct.av*, i64, i64 }
%struct.xpv = type { i8*, i64, i64 }
%struct.PerlIO_list_s = type opaque
%struct.re_scream_pos_data_s = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.logop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op* }
%struct.unop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op* }
%struct.block_eval = type { i32, i32, %struct.sv*, %struct.op*, %struct.sv*, %struct.cv* }

@PL_curinterp = external global %struct.interpreter*
@PL_perl_destruct_level = external global i32
@PL_linestr = external global %struct.sv*
@PL_compiling = external global %struct.cop
@PL_curcop = external global %struct.cop*
@PL_sv_undef = external global %struct.sv
@PL_sv_no = external global %struct.sv
@PL_No = external global i8*
@PL_sv_yes = external global %struct.sv
@PL_Yes = external global i8*
@PL_sv_placeholder = external global %struct.sv
@PL_sighandlerp = external global void (i32)*
@PL_pidstatus = external global %struct.hv*
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_rs = external global %struct.sv*
@PL_lex_state = external global i32
@PL_start_env = external global %struct.jmpenv
@PL_top_env = external global %struct.jmpenv*
@PL_statusvalue = external global i32
@PL_patchlevel = external global %struct.sv*
@local_patches = internal global [2 x i8*] zeroinitializer, align 16
@PL_localpatches = external global i8**
@PL_fdpid = external global %struct.av*
@PL_modglobal = external global %struct.hv*
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_errors = external global %struct.sv*
@PL_debug_pad = external global %struct.perl_debug_pad
@PL_strtab = external global %struct.hv*
@environ = external global i8**
@PL_origenviron = external global i8**
@PL_clocktick = external global i64
@PL_stashcache = external global %struct.hv*
@PL_exit_flags = external global i8
@PL_endav = external global %struct.av*
@PL_minus_c = external global i8
@PL_scopestack_ix = external global i32
@PL_tmps_ix = external global i32
@PL_tmps_floor = external global i32
@PL_threadhook = external global i32 ()*
@PL_main_root = external global %struct.op*
@PL_main_cv = external global %struct.cv*
@PL_comppad = external global %struct.av*
@PL_curpad = external global %struct.sv**
@PL_main_start = external global %struct.op*
@PL_dirty = external global i8
@PL_sv_objcount = external global i32
@PL_warnhook = external global %struct.sv*
@PL_diehook = external global %struct.sv*
@PL_exitlistlen = external global i32
@PL_exitlist = external global %struct.exitlistentry*
@PL_use_safe_putenv = external global i32
@PL_rsfp = external global %struct._PerlIO**
@PL_rsfp_filters = external global %struct.av*
@PL_preprocess = external global i8
@PL_minus_n = external global i8
@PL_minus_p = external global i8
@PL_minus_l = external global i8
@PL_minus_a = external global i8
@PL_minus_F = external global i8
@PL_doswitches = external global i8
@PL_dowarn = external global i8
@PL_doextract = external global i8
@PL_sawampersand = external global i8
@PL_unsafe = external global i8
@PL_inplace = external global i8*
@PL_e_script = external global %struct.sv*
@PL_perldb = external global i32
@PL_ofs_sv = external global %struct.sv*
@PL_ors_sv = external global %struct.sv*
@PL_multiline = external global i32
@PL_osname = external global i8*
@PL_statname = external global %struct.sv*
@PL_statgv = external global %struct.gv*
@PL_lastscream = external global %struct.sv*
@PL_screamfirst = external global i32*
@PL_screamnext = external global i32*
@PL_efloatbuf = external global i8*
@PL_efloatsize = external global i64
@PL_beginav = external global %struct.av*
@PL_beginav_save = external global %struct.av*
@PL_checkav = external global %struct.av*
@PL_checkav_save = external global %struct.av*
@PL_initav = external global %struct.av*
@PL_envgv = external global %struct.gv*
@PL_incgv = external global %struct.gv*
@PL_hintgv = external global %struct.gv*
@PL_errgv = external global %struct.gv*
@PL_argvgv = external global %struct.gv*
@PL_argvoutgv = external global %struct.gv*
@PL_stdingv = external global %struct.gv*
@PL_stderrgv = external global %struct.gv*
@PL_last_in_gv = external global %struct.gv*
@PL_replgv = external global %struct.gv*
@PL_DBgv = external global %struct.gv*
@PL_DBline = external global %struct.gv*
@PL_DBsub = external global %struct.gv*
@PL_DBsingle = external global %struct.sv*
@PL_DBtrace = external global %struct.sv*
@PL_DBsignal = external global %struct.sv*
@PL_DBcv = external global %struct.cv*
@PL_dbargs = external global %struct.av*
@PL_debstash = external global %struct.hv*
@PL_argvout_stack = external global %struct.av*
@PL_preambleav = external global %struct.av*
@PL_subname = external global %struct.sv*
@PL_toptarget = external global %struct.sv*
@PL_bodytarget = external global %struct.sv*
@PL_formtarget = external global %struct.sv*
@PL_utf8_alnum = external global %struct.sv*
@PL_utf8_alnumc = external global %struct.sv*
@PL_utf8_ascii = external global %struct.sv*
@PL_utf8_alpha = external global %struct.sv*
@PL_utf8_space = external global %struct.sv*
@PL_utf8_cntrl = external global %struct.sv*
@PL_utf8_graph = external global %struct.sv*
@PL_utf8_digit = external global %struct.sv*
@PL_utf8_upper = external global %struct.sv*
@PL_utf8_lower = external global %struct.sv*
@PL_utf8_print = external global %struct.sv*
@PL_utf8_punct = external global %struct.sv*
@PL_utf8_xdigit = external global %struct.sv*
@PL_utf8_mark = external global %struct.sv*
@PL_utf8_toupper = external global %struct.sv*
@PL_utf8_totitle = external global %struct.sv*
@PL_utf8_tolower = external global %struct.sv*
@PL_utf8_tofold = external global %struct.sv*
@PL_utf8_idstart = external global %struct.sv*
@PL_utf8_idcont = external global %struct.sv*
@PL_defstash = external global %struct.hv*
@PL_curstname = external global %struct.sv*
@.str2 = private unnamed_addr constant [48 x i8] c"Unbalanced scopes: %ld more ENTERs than LEAVEs\0A\00", align 1
@PL_savestack_ix = external global i32
@.str3 = private unnamed_addr constant [48 x i8] c"Unbalanced saves: %ld more saves than restores\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"Unbalanced tmps: %ld more allocs than frees\0A\00", align 1
@PL_curstackinfo = external global %struct.stackinfo*
@.str5 = private unnamed_addr constant [47 x i8] c"Unbalanced context: %ld more PUSHes than POPs\0A\00", align 1
@PL_sv_count = external global i32
@.str6 = private unnamed_addr constant [48 x i8] c"Unbalanced string table refcount: (%d) for \22%s\22\00", align 1
@.str7 = private unnamed_addr constant [21 x i8] c"Scalars leaked: %ld\0A\00", align 1
@PL_origfilename = external global i8*
@PL_reg_start_tmp = external global i8**
@PL_reg_start_tmpl = external global i32
@PL_reg_curpm = external global %struct.pmop*
@PL_reg_poscache = external global i8*
@PL_op_mask = external global i8*
@PL_psig_ptr = external global %struct.sv**
@PL_psig_name = external global %struct.sv**
@PL_bitcount = external global i8*
@PL_psig_pend = external global i32*
@PL_formfeed = external global %struct.sv*
@PL_ofmt = external global i8*
@PL_tainting = external global i8
@PL_taint_warn = external global i8
@PL_hints = external global i32
@PL_debug = external global i32
@PL_mess_sv = external global %struct.sv*
@PL_rehash_seed_set = external global i8
@PL_rehash_seed = external global i64
@PL_origargc = external global i32
@PL_origargv = external global i8**
@.str8 = private unnamed_addr constant [11 x i8] c"NoNe  SuCh\00", align 1
@PL_origalen = external global i32
@PL_do_undump = external global i8
@PL_basetime = external global i64
@PL_curstash = external global %struct.hv*
@.str9 = private unnamed_addr constant [16 x i8] c"panic: top_env\0A\00", align 1
@PL_restartop = external global %struct.op*
@PL_curstack = external global %struct.av*
@PL_mainstack = external global %struct.av*
@PL_stack_sp = external global %struct.sv**
@.str10 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_stack_base = external global %struct.sv**
@PL_stack_max = external global %struct.sv**
@.str11 = private unnamed_addr constant [18 x i8] c"panic: restartop\0A\00", align 1
@PL_markstack_ptr = external global i32*
@PL_markstack_max = external global i32*
@PL_op = external global %struct.op*
@PL_ppaddr = external global [0 x %struct.op* ()*]
@PL_markstack = external global i32*
@PL_retstack_ix = external global i32
@PL_curpm = external global %struct.pmop*
@PL_in_eval = external global i32
@PL_eval_root = external global %struct.op*
@.str12 = private unnamed_addr constant [21 x i8] c"Callback called exit\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"eval_sv()\00", align 1
@PL_Xpv = external global %struct.xpv*
@PL_Sv = external global %struct.sv*
@.str14 = private unnamed_addr constant [10 x i8] c"require '\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PL_unicode = external global i32
@PL_splitstr = external global i8*
@.str17 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"PERL5DB_THREADED\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"use Devel::\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c" split(/,/,q{\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str23 = private unnamed_addr constant [8 x i8] c"PERL5DB\00", align 1
@PL_na = external global i64
@.str24 = private unnamed_addr constant [70 x i8] c"Recompile perl with -DDEBUGGING to use -D switch (did you mean -d ?)\0A\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str26 = private unnamed_addr constant [30 x i8] c"No directory specified for -I\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"use \00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str32 = private unnamed_addr constant [28 x i8] c"Can't use '%c' after -mname\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c" ()\00", align 1
@.str34 = private unnamed_addr constant [37 x i8] c"Module name required with -%c option\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c" split(/,/,q\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"\00)\00", align 1
@.str37 = private unnamed_addr constant [24 x i8] c"Missing argument to -%c\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str39 = private unnamed_addr constant [68 x i8] c"\22-%c\22 is on the #! line, it must also be used on the command line%s\00", align 1
@.str40 = private unnamed_addr constant [33 x i8] c"\0AThis is perl, v%vd built for %s\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"spec-cpu\00", align 1
@.str42 = private unnamed_addr constant [35 x i8] c"\0A\0ACopyright 1987-2005, Larry Wall\0A\00", align 1
@.str43 = private unnamed_addr constant [377 x i8] c"\0APerl may be copied only under the terms of either the Artistic License or the\0AGNU General Public License, which may be found in the Perl 5 source kit.\0A\0AComplete documentation for Perl, including FAQ lists, should be found on\0Athis system using `man perl' or `perldoc perl'.  If you have access to the\0AInternet, point your browser at http://www.perl.org/, the Perl Home Page.\0A\0A\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"Can't emulate -%.1s on #! line\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"DB::args\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"DB::DB\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"DB::dbline\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"DB::sub\00", align 1
@.str49 = private unnamed_addr constant [11 x i8] c"DB::single\00", align 1
@.str50 = private unnamed_addr constant [10 x i8] c"DB::trace\00", align 1
@.str51 = private unnamed_addr constant [11 x i8] c"DB::signal\00", align 1
@PL_tmps_stack = external global %struct.sv**
@PL_tmps_max = external global i32
@PL_scopestack = external global i32*
@PL_scopestack_max = external global i32
@PL_savestack = external global %union.any*
@PL_savestack_max = external global i32
@PL_retstack = external global %struct.op**
@PL_retstack_max = external global i32
@.str52 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@PL_utf8locale = external global i8
@PL_savebegin = external global i8
@.str53 = private unnamed_addr constant [34 x i8] c"BEGIN failed--compilation aborted\00", align 1
@.str54 = private unnamed_addr constant [30 x i8] c"%s failed--call queue aborted\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str57 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str58 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"%_/%d.%d.%d/%s\00", align 1
@.str60 = private unnamed_addr constant [12 x i8] c"%_/%d.%d.%d\00", align 1
@.str61 = private unnamed_addr constant [6 x i8] c"%_/%s\00", align 1
@PL_tainted = external global i8
@.str62 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str63 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str64 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str65 = private unnamed_addr constant [8 x i8] c"main::F\00", align 1
@.str66 = private unnamed_addr constant [8 x i8] c"main::-\00", align 1
@.str67 = private unnamed_addr constant [8 x i8] c"main::+\00", align 1
@.str68 = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@PL_suidscript = external global i32
@.str69 = private unnamed_addr constant [35 x i8] c"No %s allowed with (suid) fdscript\00", align 1
@PL_uid = external global i32
@PL_euid = external global i32
@PL_gid = external global i32
@PL_egid = external global i32
@.str70 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PL_maxsysfd = external global i32
@PL_sub_generation = external global i32
@PL_curcopdb = external global %struct.cop*
@PL_copline = external global i32
@PL_gensym = external global i32
@PL_laststatval = external global i32
@PL_laststype = external global i32
@PL_profiledata = external global i32*
@PL_generation = external global i32
@PL_in_clean_objs = external global i8
@PL_in_clean_all = external global i8
@PL_an = external global i32
@PL_cop_seqmax = external global i32
@PL_op_seqmax = external global i16
@PL_evalseq = external global i32
@PL_maxo = external global i32
@.str71 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@PL_sh_path_compat = external global i8*
@PL_runops = external global i32 ()*
@PL_cshname = external global i8*
@PL_cshlen = external global i32
@PL_expect = external global i32
@PL_amagic_generation = external global i64
@PL_glob_index = external global i32
@PL_sig_pending = external global i32
@PL_perlio = external global %struct._PerlIO**
@PL_known_layers = external global %struct.PerlIO_list_s*
@PL_def_layerlist = external global %struct.PerlIO_list_s*
@PL_encoding = external global %struct.sv*
@PL_in_load_module = external global i32
@PL_sharehook = external global void (%struct.sv*)*
@PL_lockhook = external global void (%struct.sv*)*
@PL_unlockhook = external global void (%struct.sv*)*
@PL_runops_std = external global i32 ()*
@PL_runops_dbg = external global i32 ()*
@PL_hash_seed = external global i64
@PL_hash_seed_set = external global i8
@PL_fdscript = external global i32
@.str72 = private unnamed_addr constant [4 x i8] c" \0A-\00", align 1
@PL_chopset = external global i8*
@PL_dumpindent = external global i32
@PL_maxscream = external global i32
@PL_regindent = external global i32
@PL_reg_oldcurpm = external global %struct.pmop*
@PL_peepp = external global void (%struct.op*)*
@PL_regcompp = external global %struct.regexp* (i8*, i8*, %struct.pmop*)*
@PL_regexecp = external global i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)*
@PL_regint_start = external global i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)*
@PL_regint_string = external global %struct.sv* (%struct.regexp*)*
@PL_regfree = external global void (%struct.regexp*)*
@PL_reginterp_cnt = external global i32
@PL_reg_starttry = external global i8*
@PL_watchaddr = external global i8**
@S_usage.usage_msg = internal unnamed_addr constant [29 x i8*] [i8* getelementptr inbounds ([62 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str73 = private unnamed_addr constant [62 x i8] c"-0[octal]       specify record separator (\5C0, if no argument)\00", align 1
@.str74 = private unnamed_addr constant [65 x i8] c"-a              autosplit mode with -n or -p (splits $_ into @F)\00", align 1
@.str75 = private unnamed_addr constant [52 x i8] c"-C[number/list] enables the listed Unicode features\00", align 1
@.str76 = private unnamed_addr constant [64 x i8] c"-c              check syntax only (runs BEGIN and CHECK blocks)\00", align 1
@.str77 = private unnamed_addr constant [43 x i8] c"-d[:debugger]   run program under debugger\00", align 1
@.str78 = private unnamed_addr constant [74 x i8] c"-D[number/list] set debugging flags (argument is a bit mask or alphabets)\00", align 1
@.str79 = private unnamed_addr constant [77 x i8] c"-e program      one line of program (several -e's allowed, omit programfile)\00", align 1
@.str80 = private unnamed_addr constant [66 x i8] c"-F/pattern/     split() pattern for -a switch (//'s are optional)\00", align 1
@.str81 = private unnamed_addr constant [76 x i8] c"-i[extension]   edit <> files in place (makes backup if extension supplied)\00", align 1
@.str82 = private unnamed_addr constant [71 x i8] c"-Idirectory     specify @INC/#include directory (several -I's allowed)\00", align 1
@.str83 = private unnamed_addr constant [73 x i8] c"-l[octal]       enable line ending processing, specifies line terminator\00", align 1
@.str84 = private unnamed_addr constant [68 x i8] c"-[mM][-]module  execute `use/no module...' before executing program\00", align 1
@.str85 = private unnamed_addr constant [64 x i8] c"-n              assume 'while (<>) { ... }' loop around program\00", align 1
@.str86 = private unnamed_addr constant [66 x i8] c"-p              assume loop like -n but print line also, like sed\00", align 1
@.str87 = private unnamed_addr constant [70 x i8] c"-P              run program through C preprocessor before compilation\00", align 1
@.str88 = private unnamed_addr constant [74 x i8] c"-s              enable rudimentary parsing for switches after programfile\00", align 1
@.str89 = private unnamed_addr constant [69 x i8] c"-S              look for programfile using PATH environment variable\00", align 1
@.str90 = private unnamed_addr constant [41 x i8] c"-t              enable tainting warnings\00", align 1
@.str91 = private unnamed_addr constant [39 x i8] c"-T              enable tainting checks\00", align 1
@.str92 = private unnamed_addr constant [48 x i8] c"-u              dump core after parsing program\00", align 1
@.str93 = private unnamed_addr constant [40 x i8] c"-U              allow unsafe operations\00", align 1
@.str94 = private unnamed_addr constant [78 x i8] c"-v              print version, subversion (includes VERY IMPORTANT perl info)\00", align 1
@.str95 = private unnamed_addr constant [77 x i8] c"-V[:variable]   print configuration summary (or a single Config.pm variable)\00", align 1
@.str96 = private unnamed_addr constant [58 x i8] c"-w              enable many useful warnings (RECOMMENDED)\00", align 1
@.str97 = private unnamed_addr constant [36 x i8] c"-W              enable all warnings\00", align 1
@.str98 = private unnamed_addr constant [78 x i8] c"-x[directory]   strip off text before #!perl line and perhaps cd to directory\00", align 1
@.str99 = private unnamed_addr constant [37 x i8] c"-X              disable all warnings\00", align 1
@.str100 = private unnamed_addr constant [53 x i8] c"\0AUsage: %s [switches] [--] [programfile] [arguments]\00", align 1
@.str101 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@.str102 = private unnamed_addr constant [14 x i8] c"%s syntax OK\0A\00", align 1
@.str103 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str104 = private unnamed_addr constant [25 x i8] c"No code specified for -e\00", align 1
@.str105 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str106 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str107 = private unnamed_addr constant [36 x i8] c"use Config qw(myconfig config_vars)\00", align 1
@.str108 = private unnamed_addr constant [18 x i8] c"print myconfig();\00", align 1
@.str109 = private unnamed_addr constant [61 x i8] c"print \22\5CnCharacteristics of this binary (from libperl): \5Cn\22,\00", align 1
@.str110 = private unnamed_addr constant [25 x i8] c"\22  Compile-time options:\00", align 1
@.str111 = private unnamed_addr constant [26 x i8] c"\5Cn                       \00", align 1
@.str112 = private unnamed_addr constant [5 x i8] c"\5Cn\22,\00", align 1
@.str113 = private unnamed_addr constant [21 x i8] c"\22  Built under %s\5Cn\22\00", align 1
@.str114 = private unnamed_addr constant [9 x i8] c"SPEC CPU\00", align 1
@.str115 = private unnamed_addr constant [25 x i8] c",\22  Compiled at %s %s\5Cn\22\00", align 1
@.str116 = private unnamed_addr constant [12 x i8] c"Dec  8 2015\00", align 1
@.str117 = private unnamed_addr constant [9 x i8] c"15:15:32\00", align 1
@.str118 = private unnamed_addr constant [80 x i8] c"; $\22=\22\5Cn    \22; @env = map { \22$_=\5C\22$ENV{$_}\5C\22\22 } sort grep {/^PERL/} keys %ENV; \00", align 1
@.str119 = private unnamed_addr constant [68 x i8] c"print \22  \5C%ENV:\5Cn    @env\5Cn\22 if @env; print \22  \5C@INC:\5Cn    @INC\5Cn\22;\00", align 1
@.str120 = private unnamed_addr constant [16 x i8] c"config_vars(qw(\00", align 1
@.str121 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str122 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str123 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str124 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str125 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str126 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str127 = private unnamed_addr constant [55 x i8] c"Unrecognized switch: -%s  (-h will show valid options)\00", align 1
@.str128 = private unnamed_addr constant [13 x i8] c"\00\00\00\00\00\00\00\00\00@\00\00\00", align 1
@.str129 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str130 = private unnamed_addr constant [18 x i8] c"Can't chdir to %s\00", align 1
@PL_compcv = external global %struct.cv*
@.str131 = private unnamed_addr constant [6 x i8] c":utf8\00", align 1
@PL_defoutgv = external global %struct.gv*
@.str132 = private unnamed_addr constant [5 x i8] c"\0FPEN\00", align 1
@.str133 = private unnamed_addr constant [12 x i8] c":utf8\00:utf8\00", align 1
@.str134 = private unnamed_addr constant [7 x i8] c":utf8\00\00", align 1
@.str135 = private unnamed_addr constant [7 x i8] c"\00:utf8\00", align 1
@PL_error_count = external global i32
@.str136 = private unnamed_addr constant [28 x i8] c"%s had compilation errors.\0A\00", align 1
@.str137 = private unnamed_addr constant [52 x i8] c"Execution of %s aborted due to compilation errors.\0A\00", align 1
@.str138 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str139 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str140 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str141 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str142 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str143 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str144 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str145 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str146 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str147 = private unnamed_addr constant [31 x i8] c"No Perl script found in input\0A\00", align 1
@.str148 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str149 = private unnamed_addr constant [5 x i8] c"PERL\00", align 1
@PL_statbuf = external global %struct.stat
@.str150 = private unnamed_addr constant [131 x i8] c"YOU HAVEN'T DISABLED SET-ID SCRIPTS IN THE KERNEL YET!\0AFIX YOUR KERNEL, PUT A C WRAPPER AROUND THIS SCRIPT, OR USE -u AND UNDUMP!\0A\00", align 1
@.str151 = private unnamed_addr constant [9 x i8] c"/dev/fd/\00", align 1
@.str152 = private unnamed_addr constant [41 x i8] c"Wrong syntax (suid) fd script name \22%s\22\0A\00", align 1
@.str153 = private unnamed_addr constant [31 x i8] c"Missing (suid) fd script name\0A\00", align 1
@.str154 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str155 = private unnamed_addr constant [25 x i8] c"program input from stdin\00", align 1
@.str156 = private unnamed_addr constant [33 x i8] c"Can't open perl script \22%s\22: %s\0A\00", align 1
@.str157 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str158 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str159 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@.str160 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str161 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str162 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@PL_defgv = external global %struct.gv*
@.str163 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str164 = private unnamed_addr constant [2 x i8] c"\12\00", align 1
@.str165 = private unnamed_addr constant [6 x i8] c"%240s\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"DB::\00", align 1
@.str167 = private unnamed_addr constant [15 x i8] c"CORE::GLOBAL::\00", align 1
@PL_globalstash = external global %struct.hv*
@.str168 = private unnamed_addr constant [9 x i8] c"<none>::\00", align 1
@PL_nullstash = external global %struct.hv*

; Function Attrs: nounwind optsize uwtable
define %struct.interpreter* @perl_alloc() #0 {
entry:
  %call = tail call i8* @malloc(i64 1) #7
  %0 = load %struct.interpreter** @PL_curinterp, align 8, !tbaa !0
  %tobool = icmp eq %struct.interpreter* %0, null
  %1 = bitcast i8* %call to %struct.interpreter*
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.interpreter* %1, %struct.interpreter** @PL_curinterp, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store i8 0, i8* %call, align 1
  ret %struct.interpreter* %1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @perl_construct(%struct.interpreter* nocapture %my_perl) #0 {
entry:
  %0 = load i32* @PL_perl_destruct_level, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8]* @.str70, i64 0, i64 0), i8** @PL_splitstr, align 8, !tbaa !0
  store i32 0, i32* @PL_perl_destruct_level, align 4, !tbaa !3
  store i32 2, i32* @PL_maxsysfd, align 4, !tbaa !3
  store i32 1, i32* @PL_sub_generation, align 4, !tbaa !3
  store i8* null, i8** @PL_op_mask, align 8, !tbaa !0
  store %struct.cop* null, %struct.cop** @PL_curcopdb, align 8, !tbaa !0
  store i32 -1, i32* @PL_copline, align 4, !tbaa !3
  store i32 0, i32* @PL_gensym, align 4, !tbaa !3
  store i32 -1, i32* @PL_laststatval, align 4, !tbaa !3
  store i32 235, i32* @PL_laststype, align 4, !tbaa !3
  store %struct.exitlistentry* null, %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  store i32 0, i32* @PL_exitlistlen, align 4, !tbaa !3
  store i32* null, i32** @PL_profiledata, align 8, !tbaa !0
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_rsfp_filters, align 8, !tbaa !0
  store i32 100, i32* @PL_generation, align 4, !tbaa !3
  store i8 0, i8* @PL_in_clean_objs, align 1, !tbaa !1
  store i8 0, i8* @PL_in_clean_all, align 1, !tbaa !1
  store i32 0, i32* @PL_an, align 4, !tbaa !3
  store i32 0, i32* @PL_cop_seqmax, align 4, !tbaa !3
  store i16 0, i16* @PL_op_seqmax, align 2, !tbaa !4
  store i32 0, i32* @PL_evalseq, align 4, !tbaa !3
  store i32 352, i32* @PL_maxo, align 4, !tbaa !3
  store i8* getelementptr inbounds ([8 x i8]* @.str71, i64 0, i64 0), i8** @PL_sh_path_compat, align 8, !tbaa !0
  store i32 ()* @Perl_runops_standard, i32 ()** @PL_runops, align 8, !tbaa !0
  store i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8** @PL_cshname, align 8, !tbaa !0
  store i32 0, i32* @PL_cshlen, align 4, !tbaa !3
  store i32 3, i32* @PL_expect, align 4, !tbaa !3
  store i64 0, i64* @PL_amagic_generation, align 8, !tbaa !5
  store i32 0, i32* @PL_glob_index, align 4, !tbaa !3
  store %struct.av* null, %struct.av** @PL_beginav_save, align 8, !tbaa !0
  store i32 0, i32* @PL_sig_pending, align 4, !tbaa !3
  store i8 0, i8* @PL_savebegin, align 1, !tbaa !1
  store %struct._PerlIO** null, %struct._PerlIO*** @PL_perlio, align 8, !tbaa !0
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !0
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_encoding, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_checkav_save, align 8, !tbaa !0
  store i64 0, i64* @PL_clocktick, align 8, !tbaa !5
  store i32 0, i32* @PL_in_load_module, align 4, !tbaa !3
  store void (%struct.sv*)* @Perl_sv_nosharing, void (%struct.sv*)** @PL_sharehook, align 8, !tbaa !0
  store void (%struct.sv*)* @Perl_sv_nolocking, void (%struct.sv*)** @PL_lockhook, align 8, !tbaa !0
  store void (%struct.sv*)* @Perl_sv_nounlocking, void (%struct.sv*)** @PL_unlockhook, align 8, !tbaa !0
  store i32 ()* @Perl_nothreadhook, i32 ()** @PL_threadhook, align 8, !tbaa !0
  store i32 ()* @Perl_runops_standard, i32 ()** @PL_runops_std, align 8, !tbaa !0
  store i32 ()* @Perl_runops_debug, i32 ()** @PL_runops_dbg, align 8, !tbaa !0
  store i64 0, i64* @PL_hash_seed, align 8, !tbaa !5
  store i8 0, i8* @PL_hash_seed_set, align 1, !tbaa !1
  store i64 0, i64* @PL_rehash_seed, align 8, !tbaa !5
  store i8 0, i8* @PL_rehash_seed_set, align 1, !tbaa !1
  store i32 -1, i32* @PL_fdscript, align 4, !tbaa !3
  store i32 -1, i32* @PL_suidscript, align 4, !tbaa !3
  store i32 -1, i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 -1, i32* @PL_tmps_floor, align 4, !tbaa !3
  store %struct.sv* null, %struct.sv** @PL_statname, align 8, !tbaa !0
  store i8* getelementptr inbounds ([4 x i8]* @.str72, i64 0, i64 0), i8** @PL_chopset, align 8, !tbaa !0
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  store i8 0, i8* @PL_dirty, align 1, !tbaa !1
  store %struct.sv* null, %struct.sv** @PL_errors, align 8, !tbaa !0
  store i32 4, i32* @PL_dumpindent, align 4, !tbaa !3
  store i32 -1, i32* @PL_maxscream, align 4, !tbaa !3
  store i32 0, i32* @PL_regindent, align 4, !tbaa !3
  store %struct.pmop* null, %struct.pmop** @PL_reg_oldcurpm, align 8, !tbaa !0
  store %struct.pmop* null, %struct.pmop** @PL_reg_curpm, align 8, !tbaa !0
  store i8* null, i8** @PL_reg_poscache, align 8, !tbaa !0
  store void (%struct.op*)* @Perl_peep, void (%struct.op*)** @PL_peepp, align 8, !tbaa !0
  store %struct.regexp* (i8*, i8*, %struct.pmop*)* @Perl_pregcomp, %struct.regexp* (i8*, i8*, %struct.pmop*)** @PL_regcompp, align 8, !tbaa !0
  store i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)* @Perl_regexec_flags, i32 (%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32)** @PL_regexecp, align 8, !tbaa !0
  store i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)* @Perl_re_intuit_start, i8* (%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*)** @PL_regint_start, align 8, !tbaa !0
  store %struct.sv* (%struct.regexp*)* @Perl_re_intuit_string, %struct.sv* (%struct.regexp*)** @PL_regint_string, align 8, !tbaa !0
  store void (%struct.regexp*)* @Perl_pregfree, void (%struct.regexp*)** @PL_regfree, align 8, !tbaa !0
  store i32 0, i32* @PL_reginterp_cnt, align 4, !tbaa !3
  store i8* null, i8** @PL_reg_starttry, align 8, !tbaa !0
  store i8** null, i8*** @PL_watchaddr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %1, null
  br i1 %tobool, label %if.then1, label %if.end36

if.then1:                                         ; preds = %if.end
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %call = tail call %struct.sv* @Perl_newSV(i64 79) #7
  store %struct.sv* %call, %struct.sv** @PL_linestr, align 8, !tbaa !0
  %call2 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 5) #7
  %2 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !3
  %and = and i32 %2, 8388608
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end34

if.then4:                                         ; preds = %if.then1
  %or = or i32 %2, 8388608
  store i32 %or, i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !3
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 1), align 8, !tbaa !3
  %3 = load i8** @PL_No, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* @PL_sv_no, i8* %3) #7
  %4 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 2), align 4, !tbaa !3
  %and5 = and i32 %4, 65536
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then4
  %call7 = tail call i64 @Perl_sv_2iv(%struct.sv* @PL_sv_no) #7
  %.pre = load i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 2), align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then4, %cond.false
  %5 = phi i32 [ %4, %if.then4 ], [ %.pre, %cond.false ]
  %and8 = and i32 %5, 131072
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %cond.false11, label %cond.end13

cond.false11:                                     ; preds = %cond.end
  %call12 = tail call double @Perl_sv_2nv(%struct.sv* @PL_sv_no) #7
  %.pre71 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 2), align 4, !tbaa !3
  br label %cond.end13

cond.end13:                                       ; preds = %cond.end, %cond.false11
  %6 = phi i32 [ %5, %cond.end ], [ %.pre71, %cond.false11 ]
  %or15 = or i32 %6, 8388608
  store i32 %or15, i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 2), align 4, !tbaa !3
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 1), align 8, !tbaa !3
  %7 = load i8** @PL_Yes, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* @PL_sv_yes, i8* %7) #7
  %8 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 2), align 4, !tbaa !3
  %and16 = and i32 %8, 65536
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %cond.false20, label %cond.end22

cond.false20:                                     ; preds = %cond.end13
  %call21 = tail call i64 @Perl_sv_2iv(%struct.sv* @PL_sv_yes) #7
  %.pre72 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 2), align 4, !tbaa !3
  br label %cond.end22

cond.end22:                                       ; preds = %cond.end13, %cond.false20
  %9 = phi i32 [ %8, %cond.end13 ], [ %.pre72, %cond.false20 ]
  %and24 = and i32 %9, 131072
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %cond.false28, label %cond.end30

cond.false28:                                     ; preds = %cond.end22
  %call29 = tail call double @Perl_sv_2nv(%struct.sv* @PL_sv_yes) #7
  %.pre73 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 2), align 4, !tbaa !3
  br label %cond.end30

cond.end30:                                       ; preds = %cond.end22, %cond.false28
  %10 = phi i32 [ %9, %cond.end22 ], [ %.pre73, %cond.false28 ]
  %or32 = or i32 %10, 8388608
  store i32 %or32, i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 2), align 4, !tbaa !3
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 1), align 8, !tbaa !3
  %11 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_placeholder, i64 0, i32 2), align 4, !tbaa !3
  %or33 = or i32 %11, 8388608
  store i32 %or33, i32* getelementptr inbounds (%struct.sv* @PL_sv_placeholder, i64 0, i32 2), align 4, !tbaa !3
  store i32 2147483647, i32* getelementptr inbounds (%struct.sv* @PL_sv_placeholder, i64 0, i32 1), align 8, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.then1, %cond.end30
  store void (i32)* @Perl_sighandler, void (i32)** @PL_sighandlerp, align 8, !tbaa !0
  %call35 = tail call %struct.hv* @Perl_newHV() #7
  store %struct.hv* %call35, %struct.hv** @PL_pidstatus, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.end34
  %call37 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i64 1) #7
  store %struct.sv* %call37, %struct.sv** @PL_rs, align 8, !tbaa !0
  tail call void @Perl_init_stacks() #8
  tail call fastcc void @S_init_ids() #8
  store i32 11, i32* @PL_lex_state, align 4, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.jmpenv* @PL_start_env to i8*), i8 0, i64 216, i32 8, i1 false)
  store i32 -1, i32* getelementptr inbounds (%struct.jmpenv* @PL_start_env, i64 0, i32 2), align 8, !tbaa !3
  store i8 1, i8* getelementptr inbounds (%struct.jmpenv* @PL_start_env, i64 0, i32 3), align 4, !tbaa !1
  store %struct.jmpenv* @PL_start_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  %call38 = tail call i32 @Perl_init_i18nl10n(i32 1) #7
  %call39 = tail call %struct.sv* @Perl_newSV(i64 4) #7
  store %struct.sv* %call39, %struct.sv** @PL_patchlevel, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %call39, i64 0, i32 2
  %12 = load i32* %sv_flags, align 4, !tbaa !3
  %and40 = and i32 %12, 254
  %cmp41 = icmp ugt i32 %and40, 5
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end36
  %call42 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call39, i32 6) #7
  %.pre74 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end36
  %13 = phi %struct.sv* [ %.pre74, %lor.rhs ], [ %call39, %if.end36 ]
  %sv_any = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %14 to i8**
  %15 = load i8** %xpv_pv, align 8, !tbaa !0
  %call44 = tail call i8* @Perl_uvuni_to_utf8(i8* %15, i64 5) #7
  %call45 = tail call i8* @Perl_uvuni_to_utf8(i8* %call44, i64 8) #7
  %call46 = tail call i8* @Perl_uvuni_to_utf8(i8* %call45, i64 7) #7
  store i8 0, i8* %call46, align 1, !tbaa !1
  %16 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !0
  %sv_any47 = getelementptr inbounds %struct.sv* %16, i64 0, i32 0
  %17 = load i8** %sv_any47, align 8, !tbaa !0
  %xpv_pv48 = bitcast i8* %17 to i8**
  %18 = load i8** %xpv_pv48, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %call46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %xpv_cur = getelementptr inbounds i8* %17, i64 8
  %19 = bitcast i8* %xpv_cur to i64*
  store i64 %sub.ptr.sub, i64* %19, align 8, !tbaa !5
  %sv_flags50 = getelementptr inbounds %struct.sv* %16, i64 0, i32 2
  %20 = load i32* %sv_flags50, align 4, !tbaa !3
  %xnv_nv53 = getelementptr inbounds i8* %17, i64 32
  %21 = bitcast i8* %xnv_nv53 to double*
  store double 5.008007e+00, double* %21, align 8, !tbaa !6
  %or59 = or i32 %20, 646316032
  store i32 %or59, i32* %sv_flags50, align 4, !tbaa !3
  store i8** getelementptr inbounds ([2 x i8*]* @local_patches, i64 0, i64 0), i8*** @PL_localpatches, align 8, !tbaa !0
  tail call void @PerlIO_init() #7
  %call60 = tail call %struct.av* @Perl_newAV() #7
  store %struct.av* %call60, %struct.av** @PL_fdpid, align 8, !tbaa !0
  %call61 = tail call %struct.hv* @Perl_newHV() #7
  store %struct.hv* %call61, %struct.hv** @PL_modglobal, align 8, !tbaa !0
  %call62 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call62, %struct.sv** @PL_errors, align 8, !tbaa !0
  tail call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  tail call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 1), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  tail call void @Perl_sv_setpvn(%struct.sv* getelementptr inbounds (%struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 2), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  %call63 = tail call %struct.hv* @Perl_newHV() #7
  store %struct.hv* %call63, %struct.hv** @PL_strtab, align 8, !tbaa !0
  %sv_flags64 = getelementptr inbounds %struct.hv* %call63, i64 0, i32 2
  %22 = load i32* %sv_flags64, align 4, !tbaa !3
  %and65 = and i32 %22, -536870913
  store i32 %and65, i32* %sv_flags64, align 4, !tbaa !3
  tail call void @Perl_hv_ksplit(%struct.hv* %call63, i64 512) #7
  %23 = load i8*** @environ, align 8, !tbaa !0
  store i8** %23, i8*** @PL_origenviron, align 8, !tbaa !0
  store i64 60, i64* @PL_clocktick, align 8, !tbaa !5
  %call66 = tail call %struct.hv* @Perl_newHV() #7
  store %struct.hv* %call66, %struct.hv** @PL_stashcache, align 8, !tbaa !0
  tail call void @Perl_push_scope() #7
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #3

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #3

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #3

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #3

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_sighandler(i32) #3

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_init_stacks() #0 {
entry:
  %call = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 128, i32 55) #7
  store %struct.stackinfo* %call, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_type = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 4
  store i32 1, i32* %si_type, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 0
  %0 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %0, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.av* %0, %struct.av** @PL_mainstack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %0, i64 0, i32 0
  %1 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %1, i64 0, i32 0
  %2 = load i8** %xav_array, align 8, !tbaa !0
  %3 = bitcast i8* %2 to %struct.sv**
  store %struct.sv** %3, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  store %struct.sv** %3, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 2
  %5 = load i64* %xav_max, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.sv** %3, i64 %5
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %call2 = tail call i8* @Perl_safesysmalloc(i64 1024) #7
  %6 = bitcast i8* %call2 to %struct.sv**
  store %struct.sv** %6, %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  store i32 -1, i32* @PL_tmps_floor, align 4, !tbaa !3
  store i32 -1, i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 128, i32* @PL_tmps_max, align 4, !tbaa !3
  %call3 = tail call i8* @Perl_safesysmalloc(i64 128) #7
  %7 = bitcast i8* %call3 to i32*
  store i32* %7, i32** @PL_markstack, align 8, !tbaa !0
  store i32* %7, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %add.ptr4 = getelementptr inbounds i8* %call3, i64 128
  %8 = bitcast i8* %add.ptr4 to i32*
  store i32* %8, i32** @PL_markstack_max, align 8, !tbaa !0
  %call5 = tail call i8* @Perl_safesysmalloc(i64 128) #7
  %9 = bitcast i8* %call5 to i32*
  store i32* %9, i32** @PL_scopestack, align 8, !tbaa !0
  store i32 0, i32* @PL_scopestack_ix, align 4, !tbaa !3
  store i32 32, i32* @PL_scopestack_max, align 4, !tbaa !3
  %call6 = tail call i8* @Perl_safesysmalloc(i64 1024) #7
  %10 = bitcast i8* %call6 to %union.any*
  store %union.any* %10, %union.any** @PL_savestack, align 8, !tbaa !0
  store i32 0, i32* @PL_savestack_ix, align 4, !tbaa !3
  store i32 128, i32* @PL_savestack_max, align 4, !tbaa !3
  %call7 = tail call i8* @Perl_safesysmalloc(i64 128) #7
  %11 = bitcast i8* %call7 to %struct.op**
  store %struct.op** %11, %struct.op*** @PL_retstack, align 8, !tbaa !0
  store i32 0, i32* @PL_retstack_ix, align 4, !tbaa !3
  store i32 16, i32* @PL_retstack_max, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_init_ids() #0 {
entry:
  %call = tail call i32 @getuid() #7
  store i32 %call, i32* @PL_uid, align 4, !tbaa !3
  %call1 = tail call i32 @geteuid() #7
  store i32 %call1, i32* @PL_euid, align 4, !tbaa !3
  %call2 = tail call i32 @getgid() #7
  store i32 %call2, i32* @PL_gid, align 4, !tbaa !3
  %call3 = tail call i32 @getegid() #7
  store i32 %call3, i32* @PL_egid, align 4, !tbaa !3
  %0 = load i32* @PL_uid, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = load i32* @PL_euid, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, %0
  br i1 %cmp, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %call3, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry, %lor.rhs
  %3 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  %land.ext = zext i1 %3 to i8
  %4 = load i8* @PL_tainting, align 1, !tbaa !1
  %or = or i8 %4, %land.ext
  store i8 %or, i8* @PL_tainting, align 1, !tbaa !1
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_init_i18nl10n(i32) #3

; Function Attrs: optsize
declare i8* @Perl_uvuni_to_utf8(i8*, i64) #3

; Function Attrs: optsize
declare void @PerlIO_init() #3

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #3

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #3

; Function Attrs: optsize
declare void @Perl_hv_ksplit(%struct.hv*, i64) #3

; Function Attrs: optsize
declare void @Perl_push_scope() #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Perl_nothreadhook() #4 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @perl_destruct(%struct.interpreter* nocapture %my_perl) #0 {
entry:
  %destruct_level = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = load i32* @PL_perl_destruct_level, align 4, !tbaa !3
  store volatile i32 %0, i32* %destruct_level, align 4
  %1 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %and = and i8 %1, 2
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %2) #2
  %3 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %3, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  %4 = load %struct.av** @PL_endav, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.av* %4, null
  %5 = load i8* @PL_minus_c, align 1, !tbaa !1
  %tobool3 = icmp ne i8 %5, 0
  %or.cond = or i1 %tobool2, %tobool3
  br i1 %or.cond, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %6 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  call void @Perl_call_list(i32 %6, %struct.av* %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then4
  %7 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %7, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 216, i8* %2) #2
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  call void @Perl_pop_scope() #7
  %8 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %9 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp = icmp sgt i32 %8, %9
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @Perl_free_tmps() #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %call10 = call i32 @Perl_my_fflush_all() #7
  %10 = load i32 ()** @PL_threadhook, align 8, !tbaa !0
  %call11 = call i32 %10() #7
  %tobool12 = icmp eq i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %return

if.end14:                                         ; preds = %if.end9
  %11 = load %struct.op** @PL_main_root, align 8, !tbaa !0
  %tobool15 = icmp eq %struct.op* %11, null
  br i1 %tobool15, label %if.end25, label %if.then16

if.then16:                                        ; preds = %if.end14
  %12 = load %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.cv* %12, i64 0, i32 0
  %13 = load %struct.xpvcv** %sv_any, align 8, !tbaa !0
  %xcv_padlist = getelementptr inbounds %struct.xpvcv* %13, i64 0, i32 15
  %14 = load %struct.av** %xcv_padlist, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.av* %14, null
  br i1 %tobool17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.then16
  %sv_any21 = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any21, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 0
  %16 = load i8** %xav_array, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %16, i64 8
  %17 = bitcast i8* %arrayidx to %struct.sv**
  %18 = load %struct.sv** %17, align 8, !tbaa !0
  %19 = bitcast %struct.sv* %18 to %struct.av*
  store %struct.av* %19, %struct.av** @PL_comppad, align 8, !tbaa !0
  %sv_any22 = bitcast %struct.sv* %18 to %struct.xpvav**
  %20 = load %struct.xpvav** %sv_any22, align 8, !tbaa !0
  %xav_array23 = getelementptr inbounds %struct.xpvav* %20, i64 0, i32 0
  %21 = load i8** %xav_array23, align 8, !tbaa !0
  %22 = bitcast i8* %21 to %struct.sv**
  store %struct.sv** %22, %struct.sv*** @PL_curpad, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.then18
  call void @Perl_op_free(%struct.op* %11) #7
  store %struct.op* null, %struct.op** @PL_main_root, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.end14, %if.end24
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  store %struct.op* null, %struct.op** @PL_main_start, align 8, !tbaa !0
  %23 = load %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %24 = bitcast %struct.cv* %23 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %24) #7
  store %struct.cv* null, %struct.cv** @PL_main_cv, align 8, !tbaa !0
  store i8 1, i8* @PL_dirty, align 1, !tbaa !1
  call void @PerlIO_destruct() #7
  %25 = load i32* @PL_sv_objcount, align 4, !tbaa !3
  %tobool26 = icmp eq i32 %25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @Perl_sv_clean_objs() #7
  store i32 0, i32* @PL_sv_objcount, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.then27
  %26 = load %struct.sv** @PL_warnhook, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %26) #7
  store %struct.sv* null, %struct.sv** @PL_warnhook, align 8, !tbaa !0
  %27 = load %struct.sv** @PL_diehook, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %27) #7
  store %struct.sv* null, %struct.sv** @PL_diehook, align 8, !tbaa !0
  %28 = load i32* @PL_exitlistlen, align 4, !tbaa !3
  %dec299 = add nsw i32 %28, -1
  store i32 %dec299, i32* @PL_exitlistlen, align 4, !tbaa !3
  %cmp29300 = icmp sgt i32 %28, 0
  br i1 %cmp29300, label %while.body, label %while.end

while.body:                                       ; preds = %if.end28, %while.body
  %dec301 = phi i32 [ %dec, %while.body ], [ %dec299, %if.end28 ]
  %idxprom = sext i32 %dec301 to i64
  %29 = load %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  %fn = getelementptr inbounds %struct.exitlistentry* %29, i64 %idxprom, i32 0
  %30 = load void (i8*)** %fn, align 8, !tbaa !0
  %ptr = getelementptr inbounds %struct.exitlistentry* %29, i64 %idxprom, i32 1
  %31 = load i8** %ptr, align 8, !tbaa !0
  call void %30(i8* %31) #7
  %32 = load i32* @PL_exitlistlen, align 4, !tbaa !3
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* @PL_exitlistlen, align 4, !tbaa !3
  %cmp29 = icmp sgt i32 %32, 0
  br i1 %cmp29, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end28
  %33 = load %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  %34 = bitcast %struct.exitlistentry* %33 to i8*
  call void @Perl_safesysfree(i8* %34) #7
  store %struct.exitlistentry* null, %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  store i32 0, i32* @PL_exitlistlen, align 4, !tbaa !3
  %destruct_level.0.load290 = load volatile i32* %destruct_level, align 4
  %cmp34 = icmp eq i32 %destruct_level.0.load290, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  call void @PerlIO_cleanup() #7
  br label %return

if.end37:                                         ; preds = %while.end
  %35 = load i8*** @environ, align 8, !tbaa !0
  %36 = load i8*** @PL_origenviron, align 8, !tbaa !0
  %cmp38 = icmp eq i8** %35, %36
  %37 = load i32* @PL_use_safe_putenv, align 4, !tbaa !3
  %tobool41 = icmp ne i32 %37, 0
  %or.cond262 = or i1 %cmp38, %tobool41
  br i1 %or.cond262, label %if.end48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end37
  %38 = load i8** %35, align 8, !tbaa !0
  %tobool45297 = icmp eq i8* %38, null
  br i1 %tobool45297, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv305 = phi i64 [ %indvars.iv.next306, %for.body ], [ 0, %for.cond.preheader ]
  %39 = phi i8* [ %41, %for.body ], [ %38, %for.cond.preheader ]
  call void @Perl_safesysfree(i8* %39) #7
  %indvars.iv.next306 = add i64 %indvars.iv305, 1
  %40 = load i8*** @environ, align 8, !tbaa !0
  %arrayidx44 = getelementptr inbounds i8** %40, i64 %indvars.iv.next306
  %41 = load i8** %arrayidx44, align 8, !tbaa !0
  %tobool45 = icmp eq i8* %41, null
  br i1 %tobool45, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %.lcssa296 = phi i8** [ %35, %for.cond.preheader ], [ %40, %for.body ]
  %42 = bitcast i8** %.lcssa296 to i8*
  call void @Perl_safesysfree(i8* %42) #7
  %43 = load i8*** @PL_origenviron, align 8, !tbaa !0
  store i8** %43, i8*** @environ, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.end37, %for.end
  call void @Perl_setdefout(%struct.gv* null) #7
  %44 = load %struct.hv** @PL_stashcache, align 8, !tbaa !0
  %45 = bitcast %struct.hv* %44 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %45) #7
  store %struct.hv* null, %struct.hv** @PL_stashcache, align 8, !tbaa !0
  %46 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %tobool49 = icmp eq %struct._PerlIO** %46, null
  br i1 %tobool49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end48
  %47 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call51 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %47) #7
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.then50
  %48 = load %struct.av** @PL_rsfp_filters, align 8, !tbaa !0
  %49 = bitcast %struct.av* %48 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %49) #7
  store %struct.av* null, %struct.av** @PL_rsfp_filters, align 8, !tbaa !0
  store i8 0, i8* @PL_preprocess, align 1, !tbaa !1
  store i8 0, i8* @PL_minus_n, align 1, !tbaa !1
  store i8 0, i8* @PL_minus_p, align 1, !tbaa !1
  store i8 0, i8* @PL_minus_l, align 1, !tbaa !1
  store i8 0, i8* @PL_minus_a, align 1, !tbaa !1
  store i8 0, i8* @PL_minus_F, align 1, !tbaa !1
  store i8 0, i8* @PL_doswitches, align 1, !tbaa !1
  store i8 0, i8* @PL_dowarn, align 1, !tbaa !1
  store i8 0, i8* @PL_doextract, align 1, !tbaa !1
  store i8 0, i8* @PL_sawampersand, align 1, !tbaa !1
  store i8 0, i8* @PL_unsafe, align 1, !tbaa !1
  %50 = load i8** @PL_inplace, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %50) #7
  store i8* null, i8** @PL_inplace, align 8, !tbaa !0
  %51 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %51) #7
  %52 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool53 = icmp eq %struct.sv* %52, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @Perl_sv_free(%struct.sv* %52) #7
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %if.then54
  store i32 0, i32* @PL_perldb, align 4, !tbaa !3
  %53 = load %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %53) #7
  store %struct.sv* null, %struct.sv** @PL_ofs_sv, align 8, !tbaa !0
  %54 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %54) #7
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %55 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %55) #7
  store %struct.sv* null, %struct.sv** @PL_rs, align 8, !tbaa !0
  store i32 0, i32* @PL_multiline, align 4, !tbaa !3
  %56 = load i8** @PL_osname, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %56) #7
  store i8* null, i8** @PL_osname, align 8, !tbaa !0
  %57 = load %struct.sv** @PL_statname, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %57) #7
  store %struct.sv* null, %struct.sv** @PL_statname, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_statgv, align 8, !tbaa !0
  %58 = load %struct.sv** @PL_lastscream, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %58) #7
  store %struct.sv* null, %struct.sv** @PL_lastscream, align 8, !tbaa !0
  %59 = load i32** @PL_screamfirst, align 8, !tbaa !0
  %60 = bitcast i32* %59 to i8*
  call void @Perl_safesysfree(i8* %60) #7
  store i32* null, i32** @PL_screamfirst, align 8, !tbaa !0
  %61 = load i32** @PL_screamnext, align 8, !tbaa !0
  %62 = bitcast i32* %61 to i8*
  call void @Perl_safesysfree(i8* %62) #7
  store i32* null, i32** @PL_screamnext, align 8, !tbaa !0
  %63 = load i8** @PL_efloatbuf, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %63) #7
  store i8* null, i8** @PL_efloatbuf, align 8, !tbaa !0
  store i64 0, i64* @PL_efloatsize, align 8, !tbaa !5
  %64 = load %struct.av** @PL_beginav, align 8, !tbaa !0
  %65 = bitcast %struct.av* %64 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %65) #7
  %66 = load %struct.av** @PL_beginav_save, align 8, !tbaa !0
  %67 = bitcast %struct.av* %66 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %67) #7
  %68 = load %struct.av** @PL_endav, align 8, !tbaa !0
  %69 = bitcast %struct.av* %68 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %69) #7
  %70 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %71 = bitcast %struct.av* %70 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %71) #7
  %72 = load %struct.av** @PL_checkav_save, align 8, !tbaa !0
  %73 = bitcast %struct.av* %72 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %73) #7
  %74 = load %struct.av** @PL_initav, align 8, !tbaa !0
  %75 = bitcast %struct.av* %74 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %75) #7
  store %struct.av* null, %struct.av** @PL_beginav, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_beginav_save, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_endav, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_checkav, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_checkav_save, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_initav, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_envgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_incgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_hintgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_errgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_argvgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_argvoutgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_stdingv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_last_in_gv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_replgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_DBgv, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_DBline, align 8, !tbaa !0
  store %struct.gv* null, %struct.gv** @PL_DBsub, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_DBsingle, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_DBtrace, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_DBsignal, align 8, !tbaa !0
  store %struct.cv* null, %struct.cv** @PL_DBcv, align 8, !tbaa !0
  store %struct.av* null, %struct.av** @PL_dbargs, align 8, !tbaa !0
  store %struct.hv* null, %struct.hv** @PL_debstash, align 8, !tbaa !0
  %76 = load %struct.av** @PL_argvout_stack, align 8, !tbaa !0
  %77 = bitcast %struct.av* %76 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %77) #7
  store %struct.av* null, %struct.av** @PL_argvout_stack, align 8, !tbaa !0
  %78 = load %struct.hv** @PL_modglobal, align 8, !tbaa !0
  %79 = bitcast %struct.hv* %78 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %79) #7
  store %struct.hv* null, %struct.hv** @PL_modglobal, align 8, !tbaa !0
  %80 = load %struct.av** @PL_preambleav, align 8, !tbaa !0
  %81 = bitcast %struct.av* %80 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %81) #7
  store %struct.av* null, %struct.av** @PL_preambleav, align 8, !tbaa !0
  %82 = load %struct.sv** @PL_subname, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %82) #7
  store %struct.sv* null, %struct.sv** @PL_subname, align 8, !tbaa !0
  %83 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %83) #7
  store %struct.sv* null, %struct.sv** @PL_linestr, align 8, !tbaa !0
  %84 = load %struct.hv** @PL_pidstatus, align 8, !tbaa !0
  %85 = bitcast %struct.hv* %84 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %85) #7
  store %struct.hv* null, %struct.hv** @PL_pidstatus, align 8, !tbaa !0
  %86 = load %struct.sv** @PL_toptarget, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %86) #7
  store %struct.sv* null, %struct.sv** @PL_toptarget, align 8, !tbaa !0
  %87 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %87) #7
  store %struct.sv* null, %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_formtarget, align 8, !tbaa !0
  %88 = load %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %88) #7
  %89 = load %struct.sv** @PL_utf8_alnumc, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %89) #7
  %90 = load %struct.sv** @PL_utf8_ascii, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %90) #7
  %91 = load %struct.sv** @PL_utf8_alpha, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %91) #7
  %92 = load %struct.sv** @PL_utf8_space, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %92) #7
  %93 = load %struct.sv** @PL_utf8_cntrl, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %93) #7
  %94 = load %struct.sv** @PL_utf8_graph, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %94) #7
  %95 = load %struct.sv** @PL_utf8_digit, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %95) #7
  %96 = load %struct.sv** @PL_utf8_upper, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %96) #7
  %97 = load %struct.sv** @PL_utf8_lower, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %97) #7
  %98 = load %struct.sv** @PL_utf8_print, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %98) #7
  %99 = load %struct.sv** @PL_utf8_punct, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %99) #7
  %100 = load %struct.sv** @PL_utf8_xdigit, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %100) #7
  %101 = load %struct.sv** @PL_utf8_mark, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %101) #7
  %102 = load %struct.sv** @PL_utf8_toupper, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %102) #7
  %103 = load %struct.sv** @PL_utf8_totitle, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %103) #7
  %104 = load %struct.sv** @PL_utf8_tolower, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %104) #7
  %105 = load %struct.sv** @PL_utf8_tofold, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %105) #7
  %106 = load %struct.sv** @PL_utf8_idstart, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %106) #7
  %107 = load %struct.sv** @PL_utf8_idcont, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %107) #7
  store %struct.sv* null, %struct.sv** @PL_utf8_alnum, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_alnumc, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_ascii, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_alpha, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_space, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_cntrl, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_graph, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_digit, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_upper, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_lower, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_print, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_punct, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_xdigit, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_mark, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_toupper, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_totitle, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_tolower, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_tofold, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_idstart, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_utf8_idcont, align 8, !tbaa !0
  %108 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %magicptr = ptrtoint %struct.sv* %108 to i64
  switch i64 %magicptr, label %if.then63 [
    i64 32, label %if.end64
    i64 16, label %if.end64
    i64 0, label %if.end64
  ]

if.then63:                                        ; preds = %if.end55
  call void @Perl_sv_free(%struct.sv* %108) #7
  br label %if.end64

if.end64:                                         ; preds = %if.end55, %if.end55, %if.end55, %if.then63
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %109 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  %cmp65 = icmp eq %struct.sv* %109, null
  br i1 %cmp65, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @Perl_sv_free(%struct.sv* %109) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end64
  store %struct.sv* null, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 15), align 8, !tbaa !0
  %110 = load %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  %111 = bitcast %struct.gv* %110 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %111) #7
  store %struct.gv* null, %struct.gv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 10), align 8, !tbaa !0
  %112 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* null, %struct.hv** @PL_defstash, align 8, !tbaa !0
  %113 = bitcast %struct.hv* %112 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %113) #7
  %114 = load %struct.sv** @PL_curstname, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %114) #7
  store %struct.sv* null, %struct.sv** @PL_curstname, align 8, !tbaa !0
  %115 = load %struct.sv** @PL_errors, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %115) #7
  store %struct.sv* null, %struct.sv** @PL_errors, align 8, !tbaa !0
  %116 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %117 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp69 = icmp sgt i32 %116, %117
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @Perl_free_tmps() #7
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68
  %destruct_level.0.load291 = load volatile i32* %destruct_level, align 4
  %cmp73 = icmp sgt i32 %destruct_level.0.load291, 1
  br i1 %cmp73, label %land.lhs.true75, label %if.end116

land.lhs.true75:                                  ; preds = %if.end72
  %118 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %118, i64 0, i32 14
  %119 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp76 = icmp eq %struct.sv* %119, null
  br i1 %cmp76, label %if.then93, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %land.lhs.true75
  %120 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings79 = getelementptr inbounds %struct.cop* %120, i64 0, i32 14
  %121 = load %struct.sv** %cop_warnings79, align 8, !tbaa !0
  %cmp80 = icmp eq %struct.sv* %121, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp80, label %if.then93, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false78
  %122 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings83 = getelementptr inbounds %struct.cop* %122, i64 0, i32 14
  %123 = load %struct.sv** %cop_warnings83, align 8, !tbaa !0
  %cmp84 = icmp eq %struct.sv* %123, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp84, label %if.end116, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %lor.lhs.false82
  %124 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings87 = getelementptr inbounds %struct.cop* %124, i64 0, i32 14
  %125 = load %struct.sv** %cop_warnings87, align 8, !tbaa !0
  %sv_any88 = getelementptr inbounds %struct.sv* %125, i64 0, i32 0
  %126 = load i8** %sv_any88, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %126 to i8**
  %127 = load i8** %xpv_pv, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i8* %127, i64 6
  %128 = load i8* %arrayidx89, align 1, !tbaa !1
  %and91 = and i8 %128, 1
  %tobool92 = icmp eq i8 %and91, 0
  br i1 %tobool92, label %if.end116, label %if.then93

if.then93:                                        ; preds = %land.lhs.true86, %lor.lhs.false78, %land.lhs.true75
  %129 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp94 = icmp eq i32 %129, 0
  br i1 %cmp94, label %if.end98, label %if.then96

if.then96:                                        ; preds = %if.then93
  %conv97 = sext i32 %129 to i64
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i64 %conv97) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.then96
  %130 = load i32* @PL_savestack_ix, align 4, !tbaa !3
  %cmp99 = icmp eq i32 %130, 0
  br i1 %cmp99, label %if.end103, label %if.then101

if.then101:                                       ; preds = %if.end98
  %conv102 = sext i32 %130 to i64
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), i64 %conv102) #7
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %if.then101
  %131 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp104 = icmp eq i32 %131, -1
  br i1 %cmp104, label %if.end108, label %if.then106

if.then106:                                       ; preds = %if.end103
  %conv107 = sext i32 %131 to i64
  %add = add nsw i64 %conv107, 1
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), i64 %add) #7
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.then106
  %132 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %132, i64 0, i32 2
  %133 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp109 = icmp eq i32 %133, -1
  br i1 %cmp109, label %if.end116, label %if.then111

if.then111:                                       ; preds = %if.end108
  %conv113 = sext i32 %133 to i64
  %add114 = add nsw i64 %conv113, 1
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([47 x i8]* @.str5, i64 0, i64 0), i64 %add114) #7
  br label %if.end116

if.end116:                                        ; preds = %if.end108, %land.lhs.true86, %lor.lhs.false82, %if.then111, %if.end72
  %134 = load %struct.av** @PL_fdpid, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.av* %134, i64 0, i32 2
  %135 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %135, 255
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %136 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %sv_flags117 = getelementptr inbounds %struct.hv* %136, i64 0, i32 2
  %137 = load i32* %sv_flags117, align 4, !tbaa !3
  %or118 = or i32 %137, 255
  store i32 %or118, i32* %sv_flags117, align 4, !tbaa !3
  %.old = load i32* @PL_sv_count, align 4, !tbaa !3
  %cmp120.old = icmp sgt i32 %.old, 2
  br i1 %cmp120.old, label %land.rhs, label %while.end125

land.rhs:                                         ; preds = %if.end116, %land.rhs
  %call122 = call i32 @Perl_sv_clean_all() #7
  %tobool123 = icmp ne i32 %call122, 0
  %138 = load i32* @PL_sv_count, align 4, !tbaa !3
  %cmp120 = icmp sgt i32 %138, 2
  %or.cond265 = and i1 %tobool123, %cmp120
  br i1 %or.cond265, label %land.rhs, label %while.end125.loopexit

while.end125.loopexit:                            ; preds = %land.rhs
  %.pre = load %struct.av** @PL_fdpid, align 8, !tbaa !0
  %.pre307 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  br label %while.end125

while.end125:                                     ; preds = %while.end125.loopexit, %if.end116
  %139 = phi %struct.hv* [ %.pre307, %while.end125.loopexit ], [ %136, %if.end116 ]
  %140 = phi %struct.av* [ %.pre, %while.end125.loopexit ], [ %134, %if.end116 ]
  %sv_flags126 = getelementptr inbounds %struct.av* %140, i64 0, i32 2
  %141 = load i32* %sv_flags126, align 4, !tbaa !3
  %and127 = and i32 %141, -256
  %or129 = or i32 %and127, 10
  store i32 %or129, i32* %sv_flags126, align 4, !tbaa !3
  %sv_flags130 = getelementptr inbounds %struct.hv* %139, i64 0, i32 2
  %142 = load i32* %sv_flags130, align 4, !tbaa !3
  %and131 = and i32 %142, -256
  %or133 = or i32 %and131, 11
  store i32 %or133, i32* %sv_flags130, align 4, !tbaa !3
  %sv_any134 = getelementptr inbounds %struct.av* %140, i64 0, i32 0
  %143 = load %struct.xpvav** %sv_any134, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %143, i64 0, i32 9
  %144 = load i8* %xav_flags, align 1, !tbaa !1
  %and136 = and i8 %144, -2
  store i8 %and136, i8* %xav_flags, align 1, !tbaa !1
  %145 = load %struct.av** @PL_fdpid, align 8, !tbaa !0
  %146 = bitcast %struct.av* %145 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %146) #7
  store %struct.av* null, %struct.av** @PL_fdpid, align 8, !tbaa !0
  %147 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %sv_any138 = getelementptr inbounds %struct.hv* %147, i64 0, i32 0
  %148 = load %struct.xpvhv** %sv_any138, align 8, !tbaa !0
  %xhv_max = getelementptr inbounds %struct.xpvhv* %148, i64 0, i32 2
  %149 = load i64* %xhv_max, align 8, !tbaa !5
  %conv139 = trunc i64 %149 to i32
  %150 = bitcast %struct.xpvhv* %148 to %struct.he***
  %151 = load %struct.he*** %150, align 8, !tbaa !0
  br label %for.cond142.outer

for.cond142.outer:                                ; preds = %if.end174, %while.end125
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %if.end174 ], [ 0, %while.end125 ]
  %hent.0.ph.in = phi %struct.he** [ %arrayidx176, %if.end174 ], [ %151, %while.end125 ]
  %hent.0.ph = load %struct.he** %hent.0.ph.in, align 8
  br label %for.cond142

for.cond142:                                      ; preds = %for.cond142.outer, %if.end167
  %hent.0 = phi %struct.he* [ %hent.1, %if.end167 ], [ %hent.0.ph, %for.cond142.outer ]
  %tobool143 = icmp eq %struct.he* %hent.0, null
  br i1 %tobool143, label %if.then169, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %for.cond142
  %152 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings145 = getelementptr inbounds %struct.cop* %152, i64 0, i32 14
  %153 = load %struct.sv** %cop_warnings145, align 8, !tbaa !0
  %cmp146 = icmp eq %struct.sv* %153, null
  br i1 %cmp146, label %if.then164, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %land.lhs.true144
  %154 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings149 = getelementptr inbounds %struct.cop* %154, i64 0, i32 14
  %155 = load %struct.sv** %cop_warnings149, align 8, !tbaa !0
  %cmp150 = icmp eq %struct.sv* %155, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp150, label %if.then164, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false148
  %156 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings153 = getelementptr inbounds %struct.cop* %156, i64 0, i32 14
  %157 = load %struct.sv** %cop_warnings153, align 8, !tbaa !0
  %cmp154 = icmp eq %struct.sv* %157, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp154, label %if.end167, label %land.lhs.true156

land.lhs.true156:                                 ; preds = %lor.lhs.false152
  %158 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings157 = getelementptr inbounds %struct.cop* %158, i64 0, i32 14
  %159 = load %struct.sv** %cop_warnings157, align 8, !tbaa !0
  %sv_any158 = getelementptr inbounds %struct.sv* %159, i64 0, i32 0
  %160 = load i8** %sv_any158, align 8, !tbaa !0
  %xpv_pv159 = bitcast i8* %160 to i8**
  %161 = load i8** %xpv_pv159, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i8* %161, i64 6
  %162 = load i8* %arrayidx160, align 1, !tbaa !1
  %and162 = and i8 %162, 1
  %tobool163 = icmp eq i8 %and162, 0
  br i1 %tobool163, label %if.end167, label %if.then164

if.then164:                                       ; preds = %land.lhs.true156, %lor.lhs.false148, %land.lhs.true144
  %hent_val = getelementptr inbounds %struct.he* %hent.0, i64 0, i32 2
  %163 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv* %163 to i64
  %sub.ptr.div = ashr exact i64 %sub.ptr.lhs.cast, 4
  %hent_hek = getelementptr inbounds %struct.he* %hent.0, i64 0, i32 1
  %164 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %arraydecay165 = getelementptr inbounds %struct.hek* %164, i64 0, i32 2, i64 0
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 %sub.ptr.div, i8* %arraydecay165) #7
  store %struct.sv* null, %struct.sv** %hent_val, align 8, !tbaa !0
  %hent_next = getelementptr inbounds %struct.he* %hent.0, i64 0, i32 0
  %165 = load %struct.he** %hent_next, align 8, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %land.lhs.true156, %lor.lhs.false152, %if.then164
  %hent.1 = phi %struct.he* [ %165, %if.then164 ], [ %hent.0, %land.lhs.true156 ], [ %hent.0, %lor.lhs.false152 ]
  %tobool168 = icmp eq %struct.he* %hent.1, null
  br i1 %tobool168, label %if.then169, label %for.cond142

if.then169:                                       ; preds = %for.cond142, %if.end167
  %indvars.iv.next303 = add i64 %indvars.iv302, 1
  %166 = trunc i64 %indvars.iv302 to i32
  %cmp171 = icmp slt i32 %166, %conv139
  br i1 %cmp171, label %if.end174, label %for.end178

if.end174:                                        ; preds = %if.then169
  %arrayidx176 = getelementptr inbounds %struct.he** %151, i64 %indvars.iv.next303
  br label %for.cond142.outer

for.end178:                                       ; preds = %if.then169
  %167 = load %struct.hv** @PL_strtab, align 8, !tbaa !0
  %168 = bitcast %struct.hv* %167 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %168) #7
  store i32 0, i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 1), align 8, !tbaa !3
  call void @Perl_sv_clear(%struct.sv* @PL_sv_yes) #7
  store i8* null, i8** getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 0), align 8, !tbaa !0
  store i32 0, i32* getelementptr inbounds (%struct.sv* @PL_sv_yes, i64 0, i32 2), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 1), align 8, !tbaa !3
  call void @Perl_sv_clear(%struct.sv* @PL_sv_no) #7
  store i8* null, i8** getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 0), align 8, !tbaa !0
  store i32 0, i32* getelementptr inbounds (%struct.sv* @PL_sv_no, i64 0, i32 2), align 4, !tbaa !3
  br label %for.body183

for.body183:                                      ; preds = %for.body183, %for.end178
  %indvars.iv = phi i64 [ 0, %for.end178 ], [ %indvars.iv.next, %for.body183 ]
  %arrayidx185 = getelementptr inbounds %struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 %indvars.iv
  %sv_refcnt = getelementptr inbounds %struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 %indvars.iv, i32 1
  store i32 0, i32* %sv_refcnt, align 8, !tbaa !3
  call void @Perl_sv_clear(%struct.sv* %arrayidx185) #7
  %sv_any190 = getelementptr inbounds %struct.sv* %arrayidx185, i64 0, i32 0
  store i8* null, i8** %sv_any190, align 8, !tbaa !0
  %sv_flags193 = getelementptr inbounds %struct.perl_debug_pad* @PL_debug_pad, i64 0, i32 0, i64 %indvars.iv, i32 2
  store i32 0, i32* %sv_flags193, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end196, label %for.body183

for.end196:                                       ; preds = %for.body183
  %169 = load i32* @PL_sv_count, align 4, !tbaa !3
  %cmp197 = icmp eq i32 %169, 0
  br i1 %cmp197, label %if.end221, label %land.lhs.true199

land.lhs.true199:                                 ; preds = %for.end196
  %170 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings200 = getelementptr inbounds %struct.cop* %170, i64 0, i32 14
  %171 = load %struct.sv** %cop_warnings200, align 8, !tbaa !0
  %cmp201 = icmp eq %struct.sv* %171, null
  br i1 %cmp201, label %if.then219, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %land.lhs.true199
  %172 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings204 = getelementptr inbounds %struct.cop* %172, i64 0, i32 14
  %173 = load %struct.sv** %cop_warnings204, align 8, !tbaa !0
  %cmp205 = icmp eq %struct.sv* %173, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp205, label %if.then219, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %lor.lhs.false203
  %174 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings208 = getelementptr inbounds %struct.cop* %174, i64 0, i32 14
  %175 = load %struct.sv** %cop_warnings208, align 8, !tbaa !0
  %cmp209 = icmp eq %struct.sv* %175, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp209, label %if.end221, label %land.lhs.true211

land.lhs.true211:                                 ; preds = %lor.lhs.false207
  %176 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings212 = getelementptr inbounds %struct.cop* %176, i64 0, i32 14
  %177 = load %struct.sv** %cop_warnings212, align 8, !tbaa !0
  %sv_any213 = getelementptr inbounds %struct.sv* %177, i64 0, i32 0
  %178 = load i8** %sv_any213, align 8, !tbaa !0
  %xpv_pv214 = bitcast i8* %178 to i8**
  %179 = load i8** %xpv_pv214, align 8, !tbaa !0
  %arrayidx215 = getelementptr inbounds i8* %179, i64 6
  %180 = load i8* %arrayidx215, align 1, !tbaa !1
  %and217 = and i8 %180, 1
  %tobool218 = icmp eq i8 %and217, 0
  br i1 %tobool218, label %if.end221, label %if.then219

if.then219:                                       ; preds = %land.lhs.true211, %lor.lhs.false203, %land.lhs.true199
  %181 = load i32* @PL_sv_count, align 4, !tbaa !3
  %conv220 = sext i32 %181 to i64
  call void (i32, i8*, ...)* @Perl_warner(i32 24, i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i64 %conv220) #7
  br label %if.end221

if.end221:                                        ; preds = %land.lhs.true211, %lor.lhs.false207, %for.end196, %if.then219
  store i32 0, i32* @PL_sv_count, align 4, !tbaa !3
  call void @PerlIO_cleanup() #7
  store i32 0, i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 1), align 8, !tbaa !3
  %182 = load i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !3
  %and222 = and i32 %182, -8388609
  store i32 %and222, i32* getelementptr inbounds (%struct.sv* @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !3
  %183 = load i8** @PL_origfilename, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %183) #7
  store i8* null, i8** @PL_origfilename, align 8, !tbaa !0
  %184 = load i8*** @PL_reg_start_tmp, align 8, !tbaa !0
  %185 = bitcast i8** %184 to i8*
  call void @Perl_safesysfree(i8* %185) #7
  store i8** null, i8*** @PL_reg_start_tmp, align 8, !tbaa !0
  store i32 0, i32* @PL_reg_start_tmpl, align 4, !tbaa !3
  %186 = load %struct.pmop** @PL_reg_curpm, align 8, !tbaa !0
  %tobool223 = icmp eq %struct.pmop* %186, null
  br i1 %tobool223, label %if.end225, label %if.then224

if.then224:                                       ; preds = %if.end221
  %187 = bitcast %struct.pmop* %186 to i8*
  call void @Perl_safesysfree(i8* %187) #7
  br label %if.end225

if.end225:                                        ; preds = %if.end221, %if.then224
  %188 = load i8** @PL_reg_poscache, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %188) #7
  call void @Perl_free_tied_hv_pool() #7
  %189 = load i8** @PL_op_mask, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %189) #7
  %190 = load %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %191 = bitcast %struct.sv** %190 to i8*
  call void @Perl_safesysfree(i8* %191) #7
  store %struct.sv** null, %struct.sv*** @PL_psig_ptr, align 8, !tbaa !0
  %192 = load %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %193 = bitcast %struct.sv** %192 to i8*
  call void @Perl_safesysfree(i8* %193) #7
  store %struct.sv** null, %struct.sv*** @PL_psig_name, align 8, !tbaa !0
  %194 = load i8** @PL_bitcount, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %194) #7
  store i8* null, i8** @PL_bitcount, align 8, !tbaa !0
  %195 = load i32** @PL_psig_pend, align 8, !tbaa !0
  %196 = bitcast i32* %195 to i8*
  call void @Perl_safesysfree(i8* %196) #7
  store i32* null, i32** @PL_psig_pend, align 8, !tbaa !0
  store %struct.sv* null, %struct.sv** @PL_formfeed, align 8, !tbaa !0
  %197 = load i8** @PL_ofmt, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %197) #7
  store i8* null, i8** @PL_ofmt, align 8, !tbaa !0
  %198 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next7.i = getelementptr inbounds %struct.stackinfo* %198, i64 0, i32 6
  %199 = load %struct.stackinfo** %si_next7.i, align 8, !tbaa !0
  %tobool8.i = icmp eq %struct.stackinfo* %199, null
  br i1 %tobool8.i, label %while.cond2.preheader.i, label %while.body.i

while.cond2.preheader.i:                          ; preds = %if.end225
  %tobool36.i = icmp eq %struct.stackinfo* %198, null
  br i1 %tobool36.i, label %S_nuke_stacks.exit, label %while.body4.i

while.body.i:                                     ; preds = %if.end225, %while.body.i
  %200 = phi %struct.stackinfo* [ %201, %while.body.i ], [ %199, %if.end225 ]
  store %struct.stackinfo* %200, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next.i = getelementptr inbounds %struct.stackinfo* %200, i64 0, i32 6
  %201 = load %struct.stackinfo** %si_next.i, align 8, !tbaa !0
  %tobool.i = icmp eq %struct.stackinfo* %201, null
  br i1 %tobool.i, label %while.body4.i, label %while.body.i

while.body4.i:                                    ; preds = %while.cond2.preheader.i, %while.body.i, %while.body4.i
  %202 = phi %struct.stackinfo* [ %203, %while.body4.i ], [ %198, %while.cond2.preheader.i ], [ %200, %while.body.i ]
  %si_prev.i = getelementptr inbounds %struct.stackinfo* %202, i64 0, i32 5
  %203 = load %struct.stackinfo** %si_prev.i, align 8, !tbaa !0
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo* %202, i64 0, i32 1
  %204 = load %struct.context** %si_cxstack.i, align 8, !tbaa !0
  %205 = bitcast %struct.context* %204 to i8*
  call void @Perl_safesysfree(i8* %205) #7
  %206 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %207 = bitcast %struct.stackinfo* %206 to i8*
  call void @Perl_safesysfree(i8* %207) #7
  store %struct.stackinfo* %203, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %tobool3.i = icmp eq %struct.stackinfo* %203, null
  br i1 %tobool3.i, label %S_nuke_stacks.exit, label %while.body4.i

S_nuke_stacks.exit:                               ; preds = %while.body4.i, %while.cond2.preheader.i
  %208 = load %struct.sv*** @PL_tmps_stack, align 8, !tbaa !0
  %209 = bitcast %struct.sv** %208 to i8*
  call void @Perl_safesysfree(i8* %209) #7
  %210 = load i32** @PL_markstack, align 8, !tbaa !0
  %211 = bitcast i32* %210 to i8*
  call void @Perl_safesysfree(i8* %211) #7
  %212 = load i32** @PL_scopestack, align 8, !tbaa !0
  %213 = bitcast i32* %212 to i8*
  call void @Perl_safesysfree(i8* %213) #7
  %214 = load %union.any** @PL_savestack, align 8, !tbaa !0
  %215 = bitcast %union.any* %214 to i8*
  call void @Perl_safesysfree(i8* %215) #7
  %216 = load %struct.op*** @PL_retstack, align 8, !tbaa !0
  %217 = bitcast %struct.op** %216 to i8*
  call void @Perl_safesysfree(i8* %217) #7
  store i8 0, i8* @PL_tainting, align 1, !tbaa !1
  store i8 0, i8* @PL_taint_warn, align 1, !tbaa !1
  store i32 0, i32* @PL_hints, align 4, !tbaa !3
  store volatile i32 0, i32* @PL_debug, align 4, !tbaa !3
  call void @Perl_sv_free_arenas() #7
  %218 = load %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  %tobool226 = icmp eq %struct.sv* %218, null
  br i1 %tobool226, label %return, label %if.then227

if.then227:                                       ; preds = %S_nuke_stacks.exit
  %sv_flags228 = getelementptr inbounds %struct.sv* %218, i64 0, i32 2
  %219 = load i32* %sv_flags228, align 4, !tbaa !3
  %and229 = and i32 %219, 255
  %cmp230 = icmp ugt i32 %and229, 6
  br i1 %cmp230, label %if.then232, label %if.end250

if.then232:                                       ; preds = %if.then227
  %sv_any233 = getelementptr inbounds %struct.sv* %218, i64 0, i32 0
  %220 = load i8** %sv_any233, align 8, !tbaa !0
  %xmg_magic = getelementptr inbounds i8* %220, i64 40
  %221 = bitcast i8* %xmg_magic to %struct.magic**
  %222 = load %struct.magic** %221, align 8, !tbaa !0
  %tobool235293 = icmp eq %struct.magic* %222, null
  br i1 %tobool235293, label %if.end250, label %for.body236

for.body236:                                      ; preds = %if.then232, %if.end247
  %mg.0294 = phi %struct.magic* [ %223, %if.end247 ], [ %222, %if.then232 ]
  %mg_moremagic = getelementptr inbounds %struct.magic* %mg.0294, i64 0, i32 0
  %223 = load %struct.magic** %mg_moremagic, align 8, !tbaa !0
  %mg_ptr = getelementptr inbounds %struct.magic* %mg.0294, i64 0, i32 6
  %224 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool237 = icmp eq i8* %224, null
  br i1 %tobool237, label %if.end247, label %land.lhs.true238

land.lhs.true238:                                 ; preds = %for.body236
  %mg_type = getelementptr inbounds %struct.magic* %mg.0294, i64 0, i32 3
  %225 = load i8* %mg_type, align 1, !tbaa !1
  %cmp240 = icmp eq i8 %225, 103
  br i1 %cmp240, label %if.end247, label %land.lhs.true242

land.lhs.true242:                                 ; preds = %land.lhs.true238
  %mg_len = getelementptr inbounds %struct.magic* %mg.0294, i64 0, i32 7
  %226 = load i32* %mg_len, align 4, !tbaa !3
  %cmp243 = icmp sgt i32 %226, -1
  br i1 %cmp243, label %if.then245, label %if.end247

if.then245:                                       ; preds = %land.lhs.true242
  call void @Perl_safesysfree(i8* %224) #7
  br label %if.end247

if.end247:                                        ; preds = %land.lhs.true238, %for.body236, %if.then245, %land.lhs.true242
  %227 = bitcast %struct.magic* %mg.0294 to i8*
  call void @Perl_safesysfree(i8* %227) #7
  %tobool235 = icmp eq %struct.magic* %223, null
  br i1 %tobool235, label %for.cond234.if.end250.loopexit_crit_edge, label %for.body236

for.cond234.if.end250.loopexit_crit_edge:         ; preds = %if.end247
  %.pre308.pre = load %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  %sv_flags251.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre308.pre, i64 0, i32 2
  %.pre309.pre = load i32* %sv_flags251.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  br label %if.end250

if.end250:                                        ; preds = %if.then232, %for.cond234.if.end250.loopexit_crit_edge, %if.then227
  %228 = phi i32 [ %219, %if.then227 ], [ %.pre309.pre, %for.cond234.if.end250.loopexit_crit_edge ], [ %219, %if.then232 ]
  %229 = phi %struct.sv* [ %218, %if.then227 ], [ %.pre308.pre, %for.cond234.if.end250.loopexit_crit_edge ], [ %218, %if.then232 ]
  %and252 = and i32 %228, 2097152
  %tobool253 = icmp eq i32 %and252, 0
  br i1 %tobool253, label %land.end257, label %land.rhs254

land.rhs254:                                      ; preds = %if.end250
  %call255 = call i32 @Perl_sv_backoff(%struct.sv* %229) #7
  %.pre310 = load %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  br label %land.end257

land.end257:                                      ; preds = %if.end250, %land.rhs254
  %230 = phi %struct.sv* [ %229, %if.end250 ], [ %.pre310, %land.rhs254 ]
  %sv_any258 = getelementptr inbounds %struct.sv* %230, i64 0, i32 0
  %231 = load i8** %sv_any258, align 8, !tbaa !0
  %xpv_pv259 = bitcast i8* %231 to i8**
  %232 = load i8** %xpv_pv259, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %232) #7
  %233 = load %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  %sv_any260 = getelementptr inbounds %struct.sv* %233, i64 0, i32 0
  %234 = load i8** %sv_any260, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %234) #7
  %235 = load %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  %236 = bitcast %struct.sv* %235 to i8*
  call void @Perl_safesysfree(i8* %236) #7
  store %struct.sv* null, %struct.sv** @PL_mess_sv, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %land.end257, %S_nuke_stacks.exit, %if.end9, %if.then36
  %retval.0 = load i32* @PL_statusvalue, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_call_list(i32 %oldscope, %struct.av* %paramList) #0 {
entry:
  %len = alloca i64, align 8
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line = getelementptr inbounds %struct.cop* %0, i64 0, i32 13
  %1 = load i32* %cop_line, align 4, !tbaa !3
  %2 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %2) #2
  %3 = getelementptr inbounds %struct.av* %paramList, i64 0, i32 2
  %sv_any = getelementptr inbounds %struct.av* %paramList, i64 0, i32 0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  %4 = bitcast %struct.av* %paramList to %struct.sv*
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %5 = load i32* %3, align 4, !tbaa !3
  %and = and i32 %5, 32768
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.cond
  %call = call i32 @Perl_mg_size(%struct.sv* %4) #7
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  %7 = load i64* %xav_fill, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ]
  %cmp = icmp sgt i64 %cond, -1
  br i1 %cmp, label %while.body, label %while.end137

while.body:                                       ; preds = %cond.end
  %call2 = call %struct.sv* @Perl_av_shift(%struct.av* %paramList) #7
  %8 = load i8* @PL_savebegin, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %8, 0
  br i1 %tobool3, label %if.else19, label %if.then

if.then:                                          ; preds = %while.body
  %9 = load %struct.av** @PL_beginav, align 8, !tbaa !0
  %cmp4 = icmp eq %struct.av* %9, %paramList
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %10 = load %struct.av** @PL_beginav_save, align 8, !tbaa !0
  %tobool7 = icmp eq %struct.av* %10, null
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then6
  %call9 = call %struct.av* @Perl_newAV() #7
  store %struct.av* %call9, %struct.av** @PL_beginav_save, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then8
  %11 = phi %struct.av* [ %10, %if.then6 ], [ %call9, %if.then8 ]
  call void @Perl_av_push(%struct.av* %11, %struct.sv* %call2) #7
  br label %if.end20

if.else:                                          ; preds = %if.then
  %12 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %cmp10 = icmp eq %struct.av* %12, %paramList
  br i1 %cmp10, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.else
  %13 = load %struct.av** @PL_checkav_save, align 8, !tbaa !0
  %tobool13 = icmp eq %struct.av* %13, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %call15 = call %struct.av* @Perl_newAV() #7
  store %struct.av* %call15, %struct.av** @PL_checkav_save, align 8, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then14
  %14 = phi %struct.av* [ %13, %if.then12 ], [ %call15, %if.then14 ]
  call void @Perl_av_push(%struct.av* %14, %struct.sv* %call2) #7
  br label %if.end20

if.else19:                                        ; preds = %while.body
  call void @Perl_save_freesv(%struct.sv* %call2) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.end16, %if.else, %if.else19
  %15 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  store %struct.jmpenv* %15, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %call21 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  store i32 %call21, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  switch i32 %call21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb59
    i32 2, label %while.cond61.preheader
    i32 3, label %sw.bb92
  ]

sw.bb:                                            ; preds = %if.end20
  %16 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr.i = getelementptr inbounds i32* %16, i64 1
  store i32* %incdec.ptr.i, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %17 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp.i = icmp eq i32* %incdec.ptr.i, %17
  br i1 %cmp.i, label %if.then.i, label %S_call_list_body.exit

if.then.i:                                        ; preds = %sw.bb
  call void @Perl_markstack_grow() #7
  %.pre.i = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %S_call_list_body.exit

S_call_list_body.exit:                            ; preds = %sw.bb, %if.then.i
  %18 = phi i32* [ %.pre.i, %if.then.i ], [ %incdec.ptr.i, %sw.bb ]
  %19 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.sv** %20 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div1.i = lshr exact i64 %sub.ptr.sub.i, 3
  %conv.i = trunc i64 %sub.ptr.div1.i to i32
  store i32 %conv.i, i32* %18, align 4, !tbaa !3
  %call.i = call i32 @Perl_call_sv(%struct.sv* %call2, i32 6) #7
  %21 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any24 = getelementptr inbounds %struct.gv* %21, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any24, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %23, i64 0, i32 0
  %24 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %sv_flags25 = getelementptr inbounds %struct.sv* %24, i64 0, i32 2
  %25 = load i32* %sv_flags25, align 4, !tbaa !3
  %and26 = and i32 %25, 262144
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %cond.false32, label %cond.true29

cond.true29:                                      ; preds = %S_call_list_body.exit
  %sv_any30 = getelementptr inbounds %struct.sv* %24, i64 0, i32 0
  %26 = load i8** %sv_any30, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %26, i64 8
  %27 = bitcast i8* %xpv_cur to i64*
  %28 = load i64* %27, align 8, !tbaa !5
  store i64 %28, i64* %len, align 8, !tbaa !5
  br label %cond.end34

cond.false32:                                     ; preds = %S_call_list_body.exit
  %call33 = call i8* @Perl_sv_2pv_flags(%struct.sv* %24, i64* %len, i32 2) #7
  %.pr = load i64* %len, align 8, !tbaa !5
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true29
  %29 = phi i64 [ %.pr, %cond.false32 ], [ %28, %cond.true29 ]
  %tobool36 = icmp eq i64 %29, 0
  br i1 %tobool36, label %sw.epilog, label %if.then37

if.then37:                                        ; preds = %cond.end34
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %30 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line38 = getelementptr inbounds %struct.cop* %30, i64 0, i32 13
  store i32 %1, i32* %cop_line38, align 4, !tbaa !3
  %31 = load %struct.av** @PL_beginav, align 8, !tbaa !0
  %cmp39 = icmp eq %struct.av* %31, %paramList
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.then37
  call void @Perl_sv_catpv(%struct.sv* %24, i8* getelementptr inbounds ([34 x i8]* @.str53, i64 0, i64 0)) #7
  br label %while.cond53.preheader

if.else42:                                        ; preds = %if.then37
  %32 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %cmp43 = icmp eq %struct.av* %32, %paramList
  br i1 %cmp43, label %cond.end50, label %cond.false46

cond.false46:                                     ; preds = %if.else42
  %33 = load %struct.av** @PL_initav, align 8, !tbaa !0
  %cmp47 = icmp eq %struct.av* %33, %paramList
  %cond49 = select i1 %cmp47, i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0)
  br label %cond.end50

cond.end50:                                       ; preds = %if.else42, %cond.false46
  %cond51 = phi i8* [ %cond49, %cond.false46 ], [ getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), %if.else42 ]
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %24, i8* getelementptr inbounds ([30 x i8]* @.str54, i64 0, i64 0), i8* %cond51) #7
  br label %while.cond53.preheader

while.cond53.preheader:                           ; preds = %cond.end50, %if.then41
  %34 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp54159 = icmp sgt i32 %34, %oldscope
  br i1 %cmp54159, label %while.body56, label %while.end

while.body56:                                     ; preds = %while.cond53.preheader, %while.body56
  call void @Perl_pop_scope() #7
  %35 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %35, %oldscope
  br i1 %cmp54, label %while.body56, label %while.end

while.end:                                        ; preds = %while.body56, %while.cond53.preheader
  %36 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %36, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([3 x i8]* @.str58, i64 0, i64 0), %struct.sv* %24) #7
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end20
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %while.cond61.preheader

while.cond61.preheader:                           ; preds = %if.end20, %sw.bb59
  %37 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp62158 = icmp sgt i32 %37, %oldscope
  br i1 %cmp62158, label %while.body64, label %while.end65

while.body64:                                     ; preds = %while.cond61.preheader, %while.body64
  call void @Perl_pop_scope() #7
  %38 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %38, %oldscope
  br i1 %cmp62, label %while.body64, label %while.end65

while.end65:                                      ; preds = %while.body64, %while.cond61.preheader
  %39 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %40 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp66 = icmp sgt i32 %39, %40
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end65
  call void @Perl_free_tmps() #7
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end65
  %41 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %41, %struct.hv** @PL_curstash, align 8, !tbaa !0
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %42 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line70 = getelementptr inbounds %struct.cop* %42, i64 0, i32 13
  store i32 %1, i32* %cop_line70, align 4, !tbaa !3
  %43 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %43, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %44 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %tobool72 = icmp eq i32 %44, 0
  br i1 %tobool72, label %if.end91, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end69
  %45 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %and74 = and i8 %45, 1
  %tobool75 = icmp eq i8 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end91

if.then76:                                        ; preds = %land.lhs.true
  %46 = load %struct.av** @PL_beginav, align 8, !tbaa !0
  %cmp77 = icmp eq %struct.av* %46, %paramList
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then76
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str53, i64 0, i64 0)) #7
  br label %if.end91

if.else80:                                        ; preds = %if.then76
  %47 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %cmp81 = icmp eq %struct.av* %47, %paramList
  br i1 %cmp81, label %cond.end88, label %cond.false84

cond.false84:                                     ; preds = %if.else80
  %48 = load %struct.av** @PL_initav, align 8, !tbaa !0
  %cmp85 = icmp eq %struct.av* %48, %paramList
  %cond87 = select i1 %cmp85, i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0)
  br label %cond.end88

cond.end88:                                       ; preds = %if.else80, %cond.false84
  %cond89 = phi i8* [ %cond87, %cond.false84 ], [ getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), %if.else80 ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str54, i64 0, i64 0), i8* %cond89) #7
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true, %if.end69, %if.then79, %cond.end88
  call fastcc void @S_my_exit_jump() #8
  br label %sw.bb92

sw.bb92:                                          ; preds = %if.end20, %if.end91
  %49 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool93 = icmp eq %struct.op* %49, null
  br i1 %tobool93, label %if.end104, label %if.then94

if.then94:                                        ; preds = %sw.bb92
  store volatile %struct.cop* @PL_compiling, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line95 = getelementptr inbounds %struct.cop* %50, i64 0, i32 13
  store i32 %1, i32* %cop_line95, align 4, !tbaa !3
  %51 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev96 = getelementptr inbounds %struct.jmpenv* %51, i64 0, i32 1
  %52 = load %struct.jmpenv** %je_prev96, align 8, !tbaa !0
  %tobool97 = icmp eq %struct.jmpenv* %52, null
  br i1 %tobool97, label %if.end101, label %if.then98

if.then98:                                        ; preds = %if.then94
  %arraydecay100 = getelementptr inbounds %struct.jmpenv* %51, i64 0, i32 0, i64 0
  call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay100, i32 3) #9
  unreachable

if.end101:                                        ; preds = %if.then94
  %call102 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  %call103 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call102, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #7
  call void @exit(i32 1) #9
  unreachable

if.end104:                                        ; preds = %sw.bb92
  %53 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool105 = icmp eq %struct.gv* %53, null
  br i1 %tobool105, label %cond.false127, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.end104
  %sv_flags107 = getelementptr inbounds %struct.gv* %53, i64 0, i32 2
  %54 = load i32* %sv_flags107, align 4, !tbaa !3
  %and108 = and i32 %54, 255
  %cmp109 = icmp eq i32 %and108, 13
  br i1 %cmp109, label %land.lhs.true111, label %cond.false127

land.lhs.true111:                                 ; preds = %land.lhs.true106
  %sv_any112 = getelementptr inbounds %struct.gv* %53, i64 0, i32 0
  %55 = load %struct.xpvgv** %sv_any112, align 8, !tbaa !0
  %xgv_gp113 = getelementptr inbounds %struct.xpvgv* %55, i64 0, i32 7
  %56 = load %struct.gp** %xgv_gp113, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %56, i64 0, i32 2
  %57 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool114 = icmp eq %struct.io* %57, null
  br i1 %tobool114, label %cond.false127, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true111
  %sv_any119 = getelementptr inbounds %struct.io* %57, i64 0, i32 0
  %58 = load %struct.xpvio** %sv_any119, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %58, i64 0, i32 8
  %59 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool120 = icmp eq %struct._PerlIO** %59, null
  br i1 %tobool120, label %cond.false127, label %cond.end129

cond.false127:                                    ; preds = %land.lhs.true115, %land.lhs.true111, %if.end104, %land.lhs.true106
  %call128 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end129

cond.end129:                                      ; preds = %land.lhs.true115, %cond.false127
  %cond130 = phi %struct._PerlIO** [ %call128, %cond.false127 ], [ %59, %land.lhs.true115 ]
  %call131 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond130, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #7
  %60 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %61 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp132 = icmp sgt i32 %60, %61
  br i1 %cmp132, label %if.then134, label %sw.epilog

if.then134:                                       ; preds = %cond.end129
  call void @Perl_free_tmps() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end34, %cond.end129, %if.then134, %while.end, %if.end20
  %62 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %62, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  br label %while.cond

while.end137:                                     ; preds = %cond.end
  call void @llvm.lifetime.end(i64 216, i8* %2) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @Perl_pop_scope() #3

; Function Attrs: optsize
declare void @Perl_free_tmps() #3

; Function Attrs: optsize
declare i32 @Perl_my_fflush_all() #3

; Function Attrs: optsize
declare void @Perl_op_free(%struct.op*) #3

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #3

; Function Attrs: optsize
declare void @PerlIO_destruct() #3

; Function Attrs: optsize
declare void @Perl_sv_clean_objs() #3

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #3

; Function Attrs: optsize
declare void @PerlIO_cleanup() #3

; Function Attrs: optsize
declare void @Perl_setdefout(%struct.gv*) #3

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(%struct._PerlIO**) #3

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #3

; Function Attrs: optsize
declare i32 @Perl_sv_clean_all() #3

; Function Attrs: optsize
declare void @Perl_sv_clear(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_free_tied_hv_pool() #3

; Function Attrs: optsize
declare void @Perl_sv_free_arenas() #3

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define void @perl_free(%struct.interpreter* nocapture %my_perl) #0 {
entry:
  %0 = getelementptr inbounds %struct.interpreter* %my_perl, i64 0, i32 0
  tail call void @free(i8* %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Perl_call_atexit(void (i8*)* %fn, i8* %ptr) #0 {
entry:
  %0 = load %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  %1 = bitcast %struct.exitlistentry* %0 to i8*
  %2 = load i32* @PL_exitlistlen, align 4, !tbaa !3
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 4
  %call = tail call i8* @Perl_safesysrealloc(i8* %1, i64 %mul) #7
  %3 = bitcast i8* %call to %struct.exitlistentry*
  store %struct.exitlistentry* %3, %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  %4 = load i32* @PL_exitlistlen, align 4, !tbaa !3
  %idxprom = sext i32 %4 to i64
  %fn1 = getelementptr inbounds %struct.exitlistentry* %3, i64 %idxprom, i32 0
  store void (i8*)* %fn, void (i8*)** %fn1, align 8, !tbaa !0
  %5 = load %struct.exitlistentry** @PL_exitlist, align 8, !tbaa !0
  %ptr4 = getelementptr inbounds %struct.exitlistentry* %5, i64 %idxprom, i32 1
  store i8* %ptr, i8** %ptr4, align 8, !tbaa !0
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @PL_exitlistlen, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @perl_parse(%struct.interpreter* nocapture %my_perl, void ()* %xsinit, i32 %argc, i8** %argv, i8** %env) #0 {
entry:
  %dosearch.i = alloca i8, align 1
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %0) #2
  %1 = load i8* @PL_rehash_seed_set, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @Perl_get_hash_seed() #7
  store i64 %call, i64* @PL_rehash_seed, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store i32 %argc, i32* @PL_origargc, align 4, !tbaa !3
  store i8** %argv, i8*** @PL_origargv, align 8, !tbaa !0
  %2 = load i8** %argv, align 8, !tbaa !0
  %3 = ptrtoint i8* %2 to i64
  %and = and i64 %3, -8
  %cmp2 = icmp eq i64 %and, %3
  %notlhs = icmp eq i8** %argv, null
  %notrhs = icmp slt i32 %argc, 1
  %or.cond.not = or i1 %notrhs, %notlhs
  %tobool8 = icmp eq i8* %2, null
  %or.cond202 = or i1 %or.cond.not, %tobool8
  br i1 %or.cond202, label %if.end38, label %while.cond

while.cond:                                       ; preds = %if.end, %while.cond
  %s.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %2, %if.end ]
  %4 = load i8* %s.0, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %4, 0
  %incdec.ptr = getelementptr inbounds i8* %s.0, i64 1
  br i1 %tobool10, label %for.cond.preheader, label %while.cond

for.cond.preheader:                               ; preds = %while.cond
  %cmp11235 = icmp sgt i32 %argc, 1
  br i1 %cmp11235, label %for.body, label %if.end38

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.inc ], [ 1, %for.cond.preheader ]
  %s.1236 = phi i8* [ %s.2, %for.inc ], [ %s.0, %for.cond.preheader ]
  %arrayidx13 = getelementptr inbounds i8** %argv, i64 %indvars.iv265
  %5 = load i8** %arrayidx13, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %s.1236, i64 1
  %cmp14 = icmp eq i8* %5, %add.ptr
  br i1 %cmp14, label %while.cond32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp20 = icmp ugt i8* %5, %s.1236
  %or.cond199 = and i1 %cmp2, %cmp20
  br i1 %or.cond199, label %land.lhs.true22, label %if.end38

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %add.ptr25 = getelementptr inbounds i8* %s.1236, i64 8
  %6 = ptrtoint i8* %add.ptr25 to i64
  %and26 = and i64 %6, -8
  %7 = inttoptr i64 %and26 to i8*
  %cmp27 = icmp ugt i8* %5, %7
  br i1 %cmp27, label %if.end38, label %while.cond32

while.cond32:                                     ; preds = %for.body, %land.lhs.true22, %while.cond32
  %s.2 = phi i8* [ %incdec.ptr35, %while.cond32 ], [ %5, %land.lhs.true22 ], [ %5, %for.body ]
  %8 = load i8* %s.2, align 1, !tbaa !1
  %tobool33 = icmp eq i8 %8, 0
  %incdec.ptr35 = getelementptr inbounds i8* %s.2, i64 1
  br i1 %tobool33, label %for.inc, label %while.cond32

for.inc:                                          ; preds = %while.cond32
  %indvars.iv.next266 = add i64 %indvars.iv265, 1
  %9 = trunc i64 %indvars.iv.next266 to i32
  %cmp11 = icmp slt i32 %9, %argc
  br i1 %cmp11, label %for.body, label %if.end38

if.end38:                                         ; preds = %for.cond.preheader, %land.lhs.true22, %lor.lhs.false, %for.inc, %if.end
  %s.3 = phi i8* [ null, %if.end ], [ %s.0, %for.cond.preheader ], [ %s.1236, %land.lhs.true22 ], [ %s.1236, %lor.lhs.false ], [ %s.2, %for.inc ]
  %10 = load i8*** @PL_origenviron, align 8, !tbaa !0
  %tobool39 = icmp eq i8** %10, null
  br i1 %tobool39, label %if.end102, label %if.then40

if.then40:                                        ; preds = %if.end38
  %11 = load i8** %10, align 8, !tbaa !0
  %add.ptr42 = getelementptr inbounds i8* %s.3, i64 1
  %cmp43 = icmp eq i8* %11, %add.ptr42
  br i1 %cmp43, label %while.cond59, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.then40
  %cmp49 = icmp ugt i8* %11, %s.3
  %or.cond200 = and i1 %cmp2, %cmp49
  br i1 %or.cond200, label %land.lhs.true51, label %if.end102

land.lhs.true51:                                  ; preds = %lor.lhs.false45
  %add.ptr53 = getelementptr inbounds i8* %s.3, i64 8
  %12 = ptrtoint i8* %add.ptr53 to i64
  %and54 = and i64 %12, -8
  %13 = inttoptr i64 %and54 to i8*
  %cmp55 = icmp ugt i8* %11, %13
  br i1 %cmp55, label %if.end102, label %while.cond59

while.cond59:                                     ; preds = %if.then40, %land.lhs.true51, %while.cond59
  %s.4 = phi i8* [ %incdec.ptr62, %while.cond59 ], [ %11, %land.lhs.true51 ], [ %11, %if.then40 ]
  %14 = load i8* %s.4, align 1, !tbaa !1
  %tobool60 = icmp eq i8 %14, 0
  %incdec.ptr62 = getelementptr inbounds i8* %s.4, i64 1
  br i1 %tobool60, label %while.end63, label %while.cond59

while.end63:                                      ; preds = %while.cond59
  call void @Perl_my_setenv(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* null) #7
  %15 = load i8*** @PL_origenviron, align 8, !tbaa !0
  %arrayidx66230 = getelementptr inbounds i8** %15, i64 1
  %16 = load i8** %arrayidx66230, align 8, !tbaa !0
  %tobool67231 = icmp eq i8* %16, null
  br i1 %tobool67231, label %if.end102.loopexit, label %for.body68

for.body68:                                       ; preds = %while.end63, %for.inc98
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc98 ], [ 1, %while.end63 ]
  %17 = phi i8* [ %21, %for.inc98 ], [ %16, %while.end63 ]
  %s.5232 = phi i8* [ %s.6, %for.inc98 ], [ %s.4, %while.end63 ]
  %add.ptr71 = getelementptr inbounds i8* %s.5232, i64 1
  %cmp72 = icmp eq i8* %17, %add.ptr71
  br i1 %cmp72, label %while.cond91, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %for.body68
  %cmp79 = icmp ugt i8* %17, %s.5232
  %or.cond201 = and i1 %cmp2, %cmp79
  br i1 %or.cond201, label %land.lhs.true81, label %if.end102.loopexit

land.lhs.true81:                                  ; preds = %lor.lhs.false74
  %add.ptr84 = getelementptr inbounds i8* %s.5232, i64 8
  %18 = ptrtoint i8* %add.ptr84 to i64
  %and85 = and i64 %18, -8
  %19 = inttoptr i64 %and85 to i8*
  %cmp86 = icmp ugt i8* %17, %19
  br i1 %cmp86, label %if.end102.loopexit, label %while.cond91

while.cond91:                                     ; preds = %for.body68, %land.lhs.true81, %while.cond91
  %s.6 = phi i8* [ %incdec.ptr94, %while.cond91 ], [ %17, %land.lhs.true81 ], [ %17, %for.body68 ]
  %20 = load i8* %s.6, align 1, !tbaa !1
  %tobool92 = icmp eq i8 %20, 0
  %incdec.ptr94 = getelementptr inbounds i8* %s.6, i64 1
  br i1 %tobool92, label %for.inc98, label %while.cond91

for.inc98:                                        ; preds = %while.cond91
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx66 = getelementptr inbounds i8** %15, i64 %indvars.iv.next
  %21 = load i8** %arrayidx66, align 8, !tbaa !0
  %tobool67 = icmp eq i8* %21, null
  br i1 %tobool67, label %if.end102.loopexit, label %for.body68

if.end102.loopexit:                               ; preds = %for.inc98, %lor.lhs.false74, %land.lhs.true81, %while.end63
  %s.5.lcssa = phi i8* [ %s.4, %while.end63 ], [ %s.5232, %land.lhs.true81 ], [ %s.5232, %lor.lhs.false74 ], [ %s.6, %for.inc98 ]
  %.pre = load i8*** @PL_origargv, align 8, !tbaa !0
  %.pre267 = load i8** %.pre, align 8, !tbaa !0
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true51, %lor.lhs.false45, %if.end38, %if.end102.loopexit
  %22 = phi i8* [ %.pre267, %if.end102.loopexit ], [ %2, %if.end38 ], [ %2, %lor.lhs.false45 ], [ %2, %land.lhs.true51 ]
  %s.7 = phi i8* [ %s.5.lcssa, %if.end102.loopexit ], [ %s.3, %if.end38 ], [ %s.3, %lor.lhs.false45 ], [ %s.3, %land.lhs.true51 ]
  %sub.ptr.lhs.cast = ptrtoint i8* %s.7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv104 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv104, i32* @PL_origalen, align 4, !tbaa !3
  %23 = load i8* @PL_do_undump, align 1, !tbaa !1
  %tobool105 = icmp eq i8 %23, 0
  br i1 %tobool105, label %if.end109, label %if.then106

if.then106:                                       ; preds = %if.end102
  %24 = load i8** %argv, align 8, !tbaa !0
  %call108 = call i8* @Perl_savepv(i8* %24) #7
  store i8* %call108, i8** @PL_origfilename, align 8, !tbaa !0
  store i8 0, i8* @PL_do_undump, align 1, !tbaa !1
  %25 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %25, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  call fastcc void @S_init_ids() #8
  call fastcc void @S_init_postdump_symbols(i32 %argc, i8** %argv, i8** %env) #8
  br label %cleanup

if.end109:                                        ; preds = %if.end102
  %26 = load %struct.op** @PL_main_root, align 8, !tbaa !0
  %tobool110 = icmp eq %struct.op* %26, null
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end109
  call void @Perl_op_free(%struct.op* %26) #7
  store %struct.op* null, %struct.op** @PL_main_root, align 8, !tbaa !0
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %if.then111
  store %struct.op* null, %struct.op** @PL_main_start, align 8, !tbaa !0
  %27 = load %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %28 = bitcast %struct.cv* %27 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %28) #7
  store %struct.cv* null, %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %call113 = call i64 @time(i64* @PL_basetime) #7
  %29 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  store i8 0, i8* @PL_dowarn, align 1, !tbaa !1
  %30 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %30, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call114 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call114, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  switch i32 %call114, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb120
    i32 2, label %while.cond122.preheader
    i32 3, label %sw.bb134
  ]

sw.bb:                                            ; preds = %if.end112
  call void @llvm.lifetime.start(i64 1, i8* %dosearch.i)
  %31 = load i32* @PL_origargc, align 4, !tbaa !3
  %32 = load i8*** @PL_origargv, align 8, !tbaa !0
  store volatile i8 0, i8* %dosearch.i, align 1
  store i16 0, i16* @PL_op_seqmax, align 2, !tbaa !4
  store i32 -1, i32* @PL_fdscript, align 4, !tbaa !3
  store i32 -1, i32* @PL_suidscript, align 4, !tbaa !3
  %33 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  call void @Perl_sv_setpvn(%struct.sv* %33, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  %call.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  call void @Perl_save_freesv(%struct.sv* %call.i) #7
  %call.i.i = call %struct.hv* @Perl_newHV() #7
  store %struct.hv* %call.i.i, %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %call.i.i, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %call1.i.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8]* @.str138, i64 0, i64 0), i64 4) #7
  store %struct.sv* %call1.i.i, %struct.sv** @PL_curstname, align 8, !tbaa !0
  %call2.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str159, i64 0, i64 0), i32 1, i32 11) #7
  %sv_any.i.i = getelementptr inbounds %struct.gv* %call2.i.i, i64 0, i32 0
  %34 = load %struct.xpvgv** %sv_any.i.i, align 8, !tbaa !0
  %xgv_gp.i.i = getelementptr inbounds %struct.xpvgv* %34, i64 0, i32 7
  %35 = load %struct.gp** %xgv_gp.i.i, align 8, !tbaa !0
  %gp_hv.i.i = getelementptr inbounds %struct.gp* %35, i64 0, i32 5
  %36 = load %struct.hv** %gp_hv.i.i, align 8, !tbaa !0
  %37 = bitcast %struct.hv* %36 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %37) #7
  %38 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  %39 = bitcast %struct.hv* %38 to %struct.sv*
  store %struct.sv* %39, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool.i.i = icmp eq %struct.hv* %38, null
  br i1 %tobool.i.i, label %land.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %sw.bb
  %40 = getelementptr inbounds %struct.hv* %38, i64 0, i32 1
  %41 = load i32* %40, align 4, !tbaa !3
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, i32* %40, align 4, !tbaa !3
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %42 = load %struct.xpvgv** %sv_any.i.i, align 8, !tbaa !0
  %xgv_gp5.i.i = getelementptr inbounds %struct.xpvgv* %42, i64 0, i32 7
  %43 = load %struct.gp** %xgv_gp5.i.i, align 8, !tbaa !0
  %gp_hv6.i.i = getelementptr inbounds %struct.gp* %43, i64 0, i32 5
  store %struct.hv* %38, %struct.hv** %gp_hv6.i.i, align 8, !tbaa !0
  %sv_flags.i.i = getelementptr inbounds %struct.gv* %call2.i.i, i64 0, i32 2
  %44 = load i32* %sv_flags.i.i, align 4, !tbaa !3
  %or.i.i = or i32 %44, 8388608
  store i32 %or.i.i, i32* %sv_flags.i.i, align 4, !tbaa !3
  %call7.i.i = call i8* @Perl_savepv(i8* getelementptr inbounds ([5 x i8]* @.str138, i64 0, i64 0)) #7
  %45 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  %sv_any8.i.i = getelementptr inbounds %struct.hv* %45, i64 0, i32 0
  %46 = load %struct.xpvhv** %sv_any8.i.i, align 8, !tbaa !0
  %xhv_name.i.i = getelementptr inbounds %struct.xpvhv* %46, i64 0, i32 10
  store i8* %call7.i.i, i8** %xhv_name.i.i, align 8, !tbaa !0
  %call9.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8]* @.str160, i64 0, i64 0), i32 1, i32 10) #7
  %call10.i.i = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call9.i.i) #7
  %call11.i.i = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call10.i.i) #7
  store %struct.gv* %call11.i.i, %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any12.i.i = getelementptr inbounds %struct.gv* %call11.i.i, i64 0, i32 0
  %47 = load %struct.xpvgv** %sv_any12.i.i, align 8, !tbaa !0
  %xgv_flags.i.i = getelementptr inbounds %struct.xpvgv* %47, i64 0, i32 11
  %48 = load i8* %xgv_flags.i.i, align 1, !tbaa !1
  %or13.i.i = or i8 %48, 2
  store i8 %or13.i.i, i8* %xgv_flags.i.i, align 1, !tbaa !1
  %call15.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str161, i64 0, i64 0), i32 1, i32 4) #7
  store %struct.gv* %call15.i.i, %struct.gv** @PL_hintgv, align 8, !tbaa !0
  %sv_any16.i.i = getelementptr inbounds %struct.gv* %call15.i.i, i64 0, i32 0
  %49 = load %struct.xpvgv** %sv_any16.i.i, align 8, !tbaa !0
  %xgv_flags17.i.i = getelementptr inbounds %struct.xpvgv* %49, i64 0, i32 11
  %50 = load i8* %xgv_flags17.i.i, align 1, !tbaa !1
  %or19.i.i = or i8 %50, 2
  store i8 %or19.i.i, i8* %xgv_flags17.i.i, align 1, !tbaa !1
  %call21.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str162, i64 0, i64 0), i32 1, i32 10) #7
  store %struct.gv* %call21.i.i, %struct.gv** @PL_defgv, align 8, !tbaa !0
  %call22.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str163, i64 0, i64 0), i32 1, i32 4) #7
  %call23.i.i = call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call22.i.i) #7
  store %struct.gv* %call23.i.i, %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any24.i.i = getelementptr inbounds %struct.gv* %call23.i.i, i64 0, i32 0
  %51 = load %struct.xpvgv** %sv_any24.i.i, align 8, !tbaa !0
  %xgv_flags25.i.i = getelementptr inbounds %struct.xpvgv* %51, i64 0, i32 11
  %52 = load i8* %xgv_flags25.i.i, align 1, !tbaa !1
  %or27.i.i = or i8 %52, 2
  store i8 %or27.i.i, i8* %xgv_flags25.i.i, align 1, !tbaa !1
  %call29.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str164, i64 0, i64 0), i32 1, i32 4) #7
  store %struct.gv* %call29.i.i, %struct.gv** @PL_replgv, align 8, !tbaa !0
  %sv_any30.i.i = getelementptr inbounds %struct.gv* %call29.i.i, i64 0, i32 0
  %53 = load %struct.xpvgv** %sv_any30.i.i, align 8, !tbaa !0
  %xgv_flags31.i.i = getelementptr inbounds %struct.xpvgv* %53, i64 0, i32 11
  %54 = load i8* %xgv_flags31.i.i, align 1, !tbaa !1
  %or33.i.i = or i8 %54, 2
  store i8 %or33.i.i, i8* %xgv_flags31.i.i, align 1, !tbaa !1
  %call35.i.i = call i8* (i8*, ...)* @Perl_form(i8* getelementptr inbounds ([6 x i8]* @.str165, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  %55 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any36.i.i = getelementptr inbounds %struct.gv* %55, i64 0, i32 0
  %56 = load %struct.xpvgv** %sv_any36.i.i, align 8, !tbaa !0
  %xgv_gp37.i.i = getelementptr inbounds %struct.xpvgv* %56, i64 0, i32 7
  %57 = load %struct.gp** %xgv_gp37.i.i, align 8, !tbaa !0
  %gp_sv.i.i = getelementptr inbounds %struct.gp* %57, i64 0, i32 0
  %58 = load %struct.sv** %gp_sv.i.i, align 8, !tbaa !0
  %call38.i.i = call i8* @Perl_sv_grow(%struct.sv* %58, i64 240) #7
  %59 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any39.i.i = getelementptr inbounds %struct.gv* %59, i64 0, i32 0
  %60 = load %struct.xpvgv** %sv_any39.i.i, align 8, !tbaa !0
  %xgv_gp40.i.i = getelementptr inbounds %struct.xpvgv* %60, i64 0, i32 7
  %61 = load %struct.gp** %xgv_gp40.i.i, align 8, !tbaa !0
  %gp_sv41.i.i = getelementptr inbounds %struct.gp* %61, i64 0, i32 0
  %62 = load %struct.sv** %gp_sv41.i.i, align 8, !tbaa !0
  call void @Perl_sv_setpvn(%struct.sv* %62, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  %63 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %63, %struct.hv** @PL_curstash, align 8, !tbaa !0
  store %struct.hv* %63, %struct.hv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 9), align 8, !tbaa !0
  %call42.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8]* @.str166, i64 0, i64 0), i32 2, i32 11) #7
  %sv_any43.i.i = getelementptr inbounds %struct.gv* %call42.i.i, i64 0, i32 0
  %64 = load %struct.xpvgv** %sv_any43.i.i, align 8, !tbaa !0
  %xgv_gp44.i.i = getelementptr inbounds %struct.xpvgv* %64, i64 0, i32 7
  %65 = load %struct.gp** %xgv_gp44.i.i, align 8, !tbaa !0
  %gp_hv45.i.i = getelementptr inbounds %struct.gp* %65, i64 0, i32 5
  %66 = load %struct.hv** %gp_hv45.i.i, align 8, !tbaa !0
  store %struct.hv* %66, %struct.hv** @PL_debstash, align 8, !tbaa !0
  %call46.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([15 x i8]* @.str167, i64 0, i64 0), i32 2, i32 11) #7
  %sv_any47.i.i = getelementptr inbounds %struct.gv* %call46.i.i, i64 0, i32 0
  %67 = load %struct.xpvgv** %sv_any47.i.i, align 8, !tbaa !0
  %xgv_gp48.i.i = getelementptr inbounds %struct.xpvgv* %67, i64 0, i32 7
  %68 = load %struct.gp** %xgv_gp48.i.i, align 8, !tbaa !0
  %gp_hv49.i.i = getelementptr inbounds %struct.gp* %68, i64 0, i32 5
  %69 = load %struct.hv** %gp_hv49.i.i, align 8, !tbaa !0
  store %struct.hv* %69, %struct.hv** @PL_globalstash, align 8, !tbaa !0
  %call50.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([9 x i8]* @.str168, i64 0, i64 0), i32 2, i32 11) #7
  %sv_any51.i.i = getelementptr inbounds %struct.gv* %call50.i.i, i64 0, i32 0
  %70 = load %struct.xpvgv** %sv_any51.i.i, align 8, !tbaa !0
  %xgv_gp52.i.i = getelementptr inbounds %struct.xpvgv* %70, i64 0, i32 7
  %71 = load %struct.gp** %xgv_gp52.i.i, align 8, !tbaa !0
  %gp_hv53.i.i = getelementptr inbounds %struct.gp* %71, i64 0, i32 5
  %72 = load %struct.hv** %gp_hv53.i.i, align 8, !tbaa !0
  store %struct.hv* %72, %struct.hv** @PL_nullstash, align 8, !tbaa !0
  %call.i.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 4) #7
  %tobool.i.i.i = icmp eq %struct.gv* %call.i.i.i, null
  br i1 %tobool.i.i.i, label %S_init_main_stash.exit.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i
  %sv_any.i.i.i = getelementptr inbounds %struct.gv* %call.i.i.i, i64 0, i32 0
  %73 = load %struct.xpvgv** %sv_any.i.i.i, align 8, !tbaa !0
  %xgv_gp.i.i.i = getelementptr inbounds %struct.xpvgv* %73, i64 0, i32 7
  %74 = load %struct.gp** %xgv_gp.i.i.i, align 8, !tbaa !0
  %gp_sv.i.i.i = getelementptr inbounds %struct.gp* %74, i64 0, i32 0
  %75 = load %struct.sv** %gp_sv.i.i.i, align 8, !tbaa !0
  br label %S_init_main_stash.exit.i

S_init_main_stash.exit.i:                         ; preds = %if.then.i.i.i, %land.end.i.i
  %retval.0.i.i.i = phi %struct.sv* [ %75, %if.then.i.i.i ], [ null, %land.end.i.i ]
  call void @Perl_sv_setpvn(%struct.sv* %retval.0.i.i.i, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i64 1) #7
  %argv.0113139.i = getelementptr inbounds i8** %32, i64 1
  %argc.0114140.i = add nsw i32 %31, -1
  %cmp115141.i = icmp sgt i32 %argc.0114140.i, 0
  br i1 %cmp115141.i, label %for.body.lr.ph.i, label %switch_end.i

for.body.lr.ph.i:                                 ; preds = %S_init_main_stash.exit.i, %sw.bb101.i
  %argc.0114147.i = phi i32 [ %argc.0114.i, %sw.bb101.i ], [ %argc.0114140.i, %S_init_main_stash.exit.i ]
  %argv.0113146.i = phi i8** [ %argv.0113.i, %sw.bb101.i ], [ %argv.0113139.i, %S_init_main_stash.exit.i ]
  %argc.0.in.ph145.i = phi i32 [ %argc.0121.i, %sw.bb101.i ], [ %31, %S_init_main_stash.exit.i ]
  %.pn.ph144.i = phi i8** [ %argv.0119.i, %sw.bb101.i ], [ %32, %S_init_main_stash.exit.i ]
  %scriptname.0.ph143.i = phi i8* [ %scriptname.1.i, %sw.bb101.i ], [ null, %S_init_main_stash.exit.i ]
  %cddir.0.ph142.i = phi i8* [ %cddir.0.incdec.ptr102.i, %sw.bb101.i ], [ null, %S_init_main_stash.exit.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %argc.0121.i = phi i32 [ %argc.0114147.i, %for.body.lr.ph.i ], [ %argc.0.i, %for.cond.backedge.i ]
  %argv.0119.i = phi i8** [ %argv.0113146.i, %for.body.lr.ph.i ], [ %argv.0.i, %for.cond.backedge.i ]
  %argc.0.in118.i = phi i32 [ %argc.0.in.ph145.i, %for.body.lr.ph.i ], [ %argc.0.in.be.i, %for.cond.backedge.i ]
  %.pn117.i = phi i8** [ %.pn.ph144.i, %for.body.lr.ph.i ], [ %.pn.be.i, %for.cond.backedge.i ]
  %scriptname.0116.i = phi i8* [ %scriptname.0.ph143.i, %for.body.lr.ph.i ], [ %scriptname.1.i, %for.cond.backedge.i ]
  %76 = load i8** %argv.0119.i, align 8, !tbaa !0
  %77 = load i8* %76, align 1, !tbaa !1
  %cmp2.i = icmp eq i8 %77, 45
  br i1 %cmp2.i, label %lor.lhs.false.i, label %switch_end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx5.i = getelementptr inbounds i8* %76, i64 1
  %78 = load i8* %arrayidx5.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %78, 0
  br i1 %tobool.i, label %switch_end.i, label %reswitch.i

reswitch.i:                                       ; preds = %lor.lhs.false.i, %reswitch.backedge.i
  %79 = phi i8 [ %.pre190.i, %reswitch.backedge.i ], [ %78, %lor.lhs.false.i ]
  %s.0.i = phi i8* [ %s.0.be.i, %reswitch.backedge.i ], [ %arrayidx5.i, %lor.lhs.false.i ]
  %scriptname.1.i = phi i8* [ %scriptname.1.be.i, %reswitch.backedge.i ], [ %scriptname.0116.i, %lor.lhs.false.i ]
  %conv7.i = sext i8 %79 to i32
  switch i32 %conv7.i, label %sw.default.i [
    i32 67, label %sw.bb.i
    i32 13, label %sw.bb.i
    i32 32, label %sw.bb.i
    i32 48, label %sw.bb.i
    i32 70, label %sw.bb.i
    i32 97, label %sw.bb.i
    i32 99, label %sw.bb.i
    i32 100, label %sw.bb.i
    i32 68, label %sw.bb.i
    i32 104, label %sw.bb.i
    i32 105, label %sw.bb.i
    i32 108, label %sw.bb.i
    i32 77, label %sw.bb.i
    i32 109, label %sw.bb.i
    i32 110, label %sw.bb.i
    i32 112, label %sw.bb.i
    i32 115, label %sw.bb.i
    i32 117, label %sw.bb.i
    i32 85, label %sw.bb.i
    i32 118, label %sw.bb.i
    i32 87, label %sw.bb.i
    i32 88, label %sw.bb.i
    i32 119, label %sw.bb.i
    i32 116, label %sw.bb12.i
    i32 84, label %sw.bb17.i
    i32 101, label %sw.bb19.i
    i32 102, label %sw.bb37.i
    i32 73, label %sw.bb39.i
    i32 80, label %sw.bb59.i
    i32 83, label %sw.bb61.i
    i32 86, label %sw.bb63.i
    i32 120, label %sw.bb101.i
    i32 0, label %for.cond.backedge.i
    i32 45, label %sw.bb106.i
  ]

sw.bb.i:                                          ; preds = %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i, %reswitch.i
  %call8.i = call i8* @Perl_moreswitches(i8* %s.0.i) #7
  %tobool9.i = icmp eq i8* %call8.i, null
  br i1 %tobool9.i, label %for.cond.backedge.i, label %reswitch.backedge.i

sw.bb12.i:                                        ; preds = %reswitch.i
  %80 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool13.i = icmp eq i8 %80, 0
  br i1 %tobool13.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %sw.bb12.i
  store i8 1, i8* @PL_taint_warn, align 1, !tbaa !1
  store i8 1, i8* @PL_tainting, align 1, !tbaa !1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %sw.bb12.i
  %incdec.ptr16.i = getelementptr inbounds i8* %s.0.i, i64 1
  br label %reswitch.backedge.i

reswitch.backedge.i:                              ; preds = %if.end136.i, %if.end132.i, %if.end100.i, %S_forbid_setid.exit11.i, %S_forbid_setid.exit8.i, %sw.bb37.i, %sw.bb17.i, %if.end15.i, %sw.bb.i
  %s.0.be.i = phi i8* [ %s.2.i, %if.end100.i ], [ %incdec.ptr62.i, %S_forbid_setid.exit11.i ], [ %incdec.ptr60.i, %S_forbid_setid.exit8.i ], [ %incdec.ptr38.i, %sw.bb37.i ], [ %incdec.ptr18.i, %sw.bb17.i ], [ %incdec.ptr16.i, %if.end15.i ], [ %call8.i, %sw.bb.i ], [ getelementptr inbounds ([2 x i8]* @.str124, i64 0, i64 0), %if.end132.i ], [ getelementptr inbounds ([2 x i8]* @.str126, i64 0, i64 0), %if.end136.i ]
  %scriptname.1.be.i = phi i8* [ getelementptr inbounds ([10 x i8]* @.str122, i64 0, i64 0), %if.end100.i ], [ %scriptname.1.i, %S_forbid_setid.exit11.i ], [ %scriptname.1.i, %S_forbid_setid.exit8.i ], [ %scriptname.1.i, %sw.bb37.i ], [ %scriptname.1.i, %sw.bb17.i ], [ %scriptname.1.i, %if.end15.i ], [ %scriptname.1.i, %sw.bb.i ], [ %scriptname.1.i, %if.end132.i ], [ %scriptname.1.i, %if.end136.i ]
  %.pre190.i = load i8* %s.0.be.i, align 1, !tbaa !1
  br label %reswitch.i

sw.bb17.i:                                        ; preds = %reswitch.i
  store i8 1, i8* @PL_tainting, align 1, !tbaa !1
  store i8 0, i8* @PL_taint_warn, align 1, !tbaa !1
  %incdec.ptr18.i = getelementptr inbounds i8* %s.0.i, i64 1
  br label %reswitch.backedge.i

sw.bb19.i:                                        ; preds = %reswitch.i
  %81 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i.i = icmp sgt i32 %81, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %S_forbid_setid.exit.i

if.then.i.i:                                      ; preds = %sw.bb19.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit.i

S_forbid_setid.exit.i:                            ; preds = %if.then.i.i, %sw.bb19.i
  %82 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool20.i = icmp eq %struct.sv* %82, null
  br i1 %tobool20.i, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %S_forbid_setid.exit.i
  %call22.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call22.i, %struct.sv** @PL_e_script, align 8, !tbaa !0
  %call23.i = call %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)* @read_e_script, %struct.sv* null) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %S_forbid_setid.exit.i
  %incdec.ptr25.i = getelementptr inbounds i8* %s.0.i, i64 1
  %83 = load i8* %incdec.ptr25.i, align 1, !tbaa !1
  %tobool26.i = icmp eq i8 %83, 0
  br i1 %tobool26.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end24.i
  %84 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %84, i8* %incdec.ptr25.i) #7
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end24.i
  %arrayidx28.i = getelementptr inbounds i8** %.pn117.i, i64 2
  %85 = load i8** %arrayidx28.i, align 8, !tbaa !0
  %tobool29.i = icmp eq i8* %85, null
  br i1 %tobool29.i, label %if.else34.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else.i
  %86 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %86, i8* %85) #7
  %dec32.i = add nsw i32 %argc.0.in118.i, -2
  br label %if.end36.i

if.else34.i:                                      ; preds = %if.else.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([25 x i8]* @.str104, i64 0, i64 0)) #7
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else34.i, %if.then30.i, %if.then27.i
  %argv.1.i = phi i8** [ %argv.0119.i, %if.then27.i ], [ %arrayidx28.i, %if.then30.i ], [ %argv.0119.i, %if.else34.i ]
  %argc.1.i = phi i32 [ %argc.0121.i, %if.then27.i ], [ %dec32.i, %if.then30.i ], [ %argc.0121.i, %if.else34.i ]
  %87 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %87, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %sw.bb.i, %reswitch.i, %sw.default.i, %if.else57.i, %if.then53.i, %if.end36.i
  %.pn.be.i = phi i8** [ %argv.0119.i, %sw.default.i ], [ %argv.2.ph195.i, %if.then53.i ], [ %argv.274.i, %if.else57.i ], [ %argv.1.i, %if.end36.i ], [ %argv.0119.i, %reswitch.i ], [ %argv.0119.i, %sw.bb.i ]
  %argc.0.in.be.i = phi i32 [ %argc.0121.i, %sw.default.i ], [ %argc.2.ph196.i, %if.then53.i ], [ %argc.276.i, %if.else57.i ], [ %argc.1.i, %if.end36.i ], [ %argc.0121.i, %reswitch.i ], [ %argc.0121.i, %sw.bb.i ]
  %argv.0.i = getelementptr inbounds i8** %.pn.be.i, i64 1
  %argc.0.i = add nsw i32 %argc.0.in.be.i, -1
  %cmp.i = icmp sgt i32 %argc.0.i, 0
  br i1 %cmp.i, label %for.body.i, label %switch_end.i

sw.bb37.i:                                        ; preds = %reswitch.i
  %incdec.ptr38.i = getelementptr inbounds i8* %s.0.i, i64 1
  br label %reswitch.backedge.i

sw.bb39.i:                                        ; preds = %reswitch.i
  %88 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i3.i = icmp sgt i32 %88, -1
  br i1 %cmp.i3.i, label %if.then.i4.i, label %S_forbid_setid.exit5.i

if.then.i4.i:                                     ; preds = %sw.bb39.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit5.i

S_forbid_setid.exit5.i:                           ; preds = %if.then.i4.i, %sw.bb39.i
  %incdec.ptr40.i = getelementptr inbounds i8* %s.0.i, i64 1
  %89 = load i8* %incdec.ptr40.i, align 1, !tbaa !1
  %tobool41.i = icmp eq i8 %89, 0
  br i1 %tobool41.i, label %land.lhs.true.i, label %if.then53.i

land.lhs.true.i:                                  ; preds = %S_forbid_setid.exit5.i
  %arrayidx42.i = getelementptr inbounds i8** %.pn117.i, i64 2
  %90 = load i8** %arrayidx42.i, align 8, !tbaa !0
  %cmp43.i = icmp eq i8* %90, null
  br i1 %cmp43.i, label %if.else57.i, label %land.lhs.true50.i

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %dec46.i = add nsw i32 %argc.0.in118.i, -2
  %.pre191.i = load i8* %90, align 1, !tbaa !1
  %tobool52.i = icmp eq i8 %.pre191.i, 0
  br i1 %tobool52.i, label %if.else57.i, label %if.then53.i

if.then53.i:                                      ; preds = %land.lhs.true50.i, %S_forbid_setid.exit5.i
  %argc.2.ph196.i = phi i32 [ %dec46.i, %land.lhs.true50.i ], [ %argc.0121.i, %S_forbid_setid.exit5.i ]
  %argv.2.ph195.i = phi i8** [ %arrayidx42.i, %land.lhs.true50.i ], [ %argv.0119.i, %S_forbid_setid.exit5.i ]
  %s.1.ph194.i = phi i8* [ %90, %land.lhs.true50.i ], [ %incdec.ptr40.i, %S_forbid_setid.exit5.i ]
  %call54.i = call i64 @strlen(i8* %s.1.ph194.i) #7
  %conv55.i = trunc i64 %call54.i to i32
  %call56.i = call i8* @Perl_savepvn(i8* %s.1.ph194.i, i32 %conv55.i) #7
  call fastcc void @S_incpush(i8* %call56.i, i32 1, i32 1, i32 0) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i32 2) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* %call56.i, i64 %call54.i, i32 2) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %call.i, i8* getelementptr inbounds ([2 x i8]* @.str70, i64 0, i64 0), i64 1, i32 2) #7
  call void @Perl_safesysfree(i8* %call56.i) #7
  br label %for.cond.backedge.i

if.else57.i:                                      ; preds = %land.lhs.true50.i, %land.lhs.true.i
  %argc.276.i = phi i32 [ %dec46.i, %land.lhs.true50.i ], [ %argc.0121.i, %land.lhs.true.i ]
  %argv.274.i = phi i8** [ %arrayidx42.i, %land.lhs.true50.i ], [ %argv.0119.i, %land.lhs.true.i ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0)) #7
  br label %for.cond.backedge.i

sw.bb59.i:                                        ; preds = %reswitch.i
  %91 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i6.i = icmp sgt i32 %91, -1
  br i1 %cmp.i6.i, label %if.then.i7.i, label %S_forbid_setid.exit8.i

if.then.i7.i:                                     ; preds = %sw.bb59.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str105, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit8.i

S_forbid_setid.exit8.i:                           ; preds = %if.then.i7.i, %sw.bb59.i
  store i8 1, i8* @PL_preprocess, align 1, !tbaa !1
  %incdec.ptr60.i = getelementptr inbounds i8* %s.0.i, i64 1
  br label %reswitch.backedge.i

sw.bb61.i:                                        ; preds = %reswitch.i
  %92 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i9.i = icmp sgt i32 %92, -1
  br i1 %cmp.i9.i, label %if.then.i10.i, label %S_forbid_setid.exit11.i

if.then.i10.i:                                    ; preds = %sw.bb61.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str106, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit11.i

S_forbid_setid.exit11.i:                          ; preds = %if.then.i10.i, %sw.bb61.i
  store volatile i8 1, i8* %dosearch.i, align 1
  %incdec.ptr62.i = getelementptr inbounds i8* %s.0.i, i64 1
  br label %reswitch.backedge.i

sw.bb63.i:                                        ; preds = %reswitch.i
  %93 = load %struct.av** @PL_preambleav, align 8, !tbaa !0
  %tobool64.i = icmp eq %struct.av* %93, null
  br i1 %tobool64.i, label %if.then65.i, label %if.end67.i

if.then65.i:                                      ; preds = %sw.bb63.i
  %call66.i = call %struct.av* @Perl_newAV() #7
  store %struct.av* %call66.i, %struct.av** @PL_preambleav, align 8, !tbaa !0
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then65.i, %sw.bb63.i
  %94 = phi %struct.av* [ %93, %sw.bb63.i ], [ %call66.i, %if.then65.i ]
  %call68.i = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([36 x i8]* @.str107, i64 0, i64 0), i64 0) #7
  call void @Perl_av_push(%struct.av* %94, %struct.sv* %call68.i) #7
  %incdec.ptr69.i = getelementptr inbounds i8* %s.0.i, i64 1
  %95 = load i8* %incdec.ptr69.i, align 1, !tbaa !1
  %cmp71.i = icmp eq i8 %95, 58
  br i1 %cmp71.i, label %if.else95.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.end67.i
  %call74.i = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([18 x i8]* @.str108, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call74.i, %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %call74.i, i8* getelementptr inbounds ([61 x i8]* @.str109, i64 0, i64 0)) #7
  %96 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.sv* %96, i64 0, i32 0
  %97 = load i8** %sv_any.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %97, i64 8
  %98 = bitcast i8* %xpv_cur.i to i64*
  %99 = load i64* %98, align 8, !tbaa !5
  call void @Perl_sv_catpv(%struct.sv* %96, i8* getelementptr inbounds ([25 x i8]* @.str110, i64 0, i64 0)) #7
  %100 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_any7587.i = getelementptr inbounds %struct.sv* %100, i64 0, i32 0
  %101 = load i8** %sv_any7587.i, align 8, !tbaa !0
  %xpv_cur7688.i = getelementptr inbounds i8* %101, i64 8
  %102 = bitcast i8* %xpv_cur7688.i to i64*
  %103 = load i64* %102, align 8, !tbaa !5
  %add89.i = add i64 %99, 76
  %cmp7790.i = icmp ugt i64 %103, %add89.i
  br i1 %cmp7790.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %if.then73.i, %if.end94.i
  %add92.i = phi i64 [ %add.i, %if.end94.i ], [ %add89.i, %if.then73.i ]
  %104 = phi i8* [ %111, %if.end94.i ], [ %101, %if.then73.i ]
  %105 = phi %struct.sv* [ %110, %if.end94.i ], [ %100, %if.then73.i ]
  %opts.091.i = phi i64 [ %sub.ptr.sub.i, %if.end94.i ], [ %99, %if.then73.i ]
  %sv_flags.i = getelementptr inbounds %struct.sv* %105, i64 0, i32 2
  %106 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %106, 262144
  %cmp79.i = icmp eq i32 %and.i, 0
  br i1 %cmp79.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %while.body.i
  %xpv_pv.i = bitcast i8* %104 to i8**
  %107 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i:                                     ; preds = %while.body.i
  %call82.i = call i8* @Perl_sv_2pv_nolen(%struct.sv* %105) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8* [ %107, %cond.true.i ], [ %call82.i, %cond.false.i ]
  %arrayidx84.i = getelementptr inbounds i8* %cond.i, i64 %add92.i
  %108 = load i8* %arrayidx84.i, align 1, !tbaa !1
  store i8 0, i8* %arrayidx84.i, align 1, !tbaa !1
  %add.ptr87.sum.i = add i64 %opts.091.i, 26
  %add.ptr88.i = getelementptr inbounds i8* %cond.i, i64 %add.ptr87.sum.i
  %call89.i = call i8* @strrchr(i8* %add.ptr88.i, i32 32) #7
  store i8 %108, i8* %arrayidx84.i, align 1, !tbaa !1
  %tobool92.i = icmp eq i8* %call89.i, null
  br i1 %tobool92.i, label %while.endsplit.i, label %if.end94.i

if.end94.i:                                       ; preds = %cond.end.i
  %sub.ptr.lhs.cast.i = ptrtoint i8* %call89.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %cond.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %109 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_sv_insert(%struct.sv* %109, i64 %sub.ptr.sub.i, i64 0, i8* getelementptr inbounds ([26 x i8]* @.str111, i64 0, i64 0), i64 25) #7
  %110 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_any75.i = getelementptr inbounds %struct.sv* %110, i64 0, i32 0
  %111 = load i8** %sv_any75.i, align 8, !tbaa !0
  %xpv_cur76.i = getelementptr inbounds i8* %111, i64 8
  %112 = bitcast i8* %xpv_cur76.i to i64*
  %113 = load i64* %112, align 8, !tbaa !5
  %add.i = add i64 %sub.ptr.sub.i, 76
  %cmp77.i = icmp ugt i64 %113, %add.i
  br i1 %cmp77.i, label %while.body.i, label %while.end.i

while.endsplit.i:                                 ; preds = %cond.end.i
  %.pre192.i = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  br label %while.end.i

while.end.i:                                      ; preds = %if.end94.i, %while.endsplit.i, %if.then73.i
  %114 = phi %struct.sv* [ %.pre192.i, %while.endsplit.i ], [ %100, %if.then73.i ], [ %110, %if.end94.i ]
  call void @Perl_sv_catpv(%struct.sv* %114, i8* getelementptr inbounds ([5 x i8]* @.str112, i64 0, i64 0)) #7
  %115 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %115, i8* getelementptr inbounds ([21 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str114, i64 0, i64 0)) #7
  %116 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void (%struct.sv*, i8*, ...)* @Perl_sv_catpvf(%struct.sv* %116, i8* getelementptr inbounds ([25 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str117, i64 0, i64 0)) #7
  %117 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %117, i8* getelementptr inbounds ([80 x i8]* @.str118, i64 0, i64 0)) #7
  %118 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %118, i8* getelementptr inbounds ([68 x i8]* @.str119, i64 0, i64 0)) #7
  br label %if.end100.i

if.else95.i:                                      ; preds = %if.end67.i
  %call96.i = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([16 x i8]* @.str120, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call96.i, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %incdec.ptr97.i = getelementptr inbounds i8* %s.0.i, i64 2
  call void @Perl_sv_catpv(%struct.sv* %call96.i, i8* %incdec.ptr97.i) #7
  %119 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %119, i8* getelementptr inbounds ([3 x i8]* @.str121, i64 0, i64 0)) #7
  %call98.i = call i64 @strlen(i8* %incdec.ptr97.i) #7
  %incdec.ptr97.sum.i = add i64 %call98.i, 2
  %add.ptr99.i = getelementptr inbounds i8* %s.0.i, i64 %incdec.ptr97.sum.i
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else95.i, %while.end.i
  %s.2.i = phi i8* [ %incdec.ptr69.i, %while.end.i ], [ %add.ptr99.i, %if.else95.i ]
  %120 = load %struct.av** @PL_preambleav, align 8, !tbaa !0
  %121 = load %struct.sv** @PL_Sv, align 8, !tbaa !0
  call void @Perl_av_push(%struct.av* %120, %struct.sv* %121) #7
  br label %reswitch.backedge.i

sw.bb101.i:                                       ; preds = %reswitch.i
  store i8 1, i8* @PL_doextract, align 1, !tbaa !1
  %incdec.ptr102.i = getelementptr inbounds i8* %s.0.i, i64 1
  %122 = load i8* %incdec.ptr102.i, align 1, !tbaa !1
  %tobool103.i = icmp eq i8 %122, 0
  %cddir.0.incdec.ptr102.i = select i1 %tobool103.i, i8* %cddir.0.ph142.i, i8* %incdec.ptr102.i
  %argv.0113.i = getelementptr inbounds i8** %argv.0119.i, i64 1
  %argc.0114.i = add nsw i32 %argc.0121.i, -1
  %cmp115.i = icmp sgt i32 %argc.0114.i, 0
  br i1 %cmp115.i, label %for.body.lr.ph.i, label %switch_end.i

sw.bb106.i:                                       ; preds = %reswitch.i
  %incdec.ptr107.i = getelementptr inbounds i8* %s.0.i, i64 1
  %123 = load i8* %incdec.ptr107.i, align 1, !tbaa !1
  switch i8 %123, label %if.end132.i [
    i8 0, label %if.then129.i
    i8 32, label %if.then129.i
    i8 9, label %if.then129.i
    i8 10, label %if.then129.i
    i8 13, label %if.then129.i
    i8 12, label %if.then129.i
  ]

if.then129.i:                                     ; preds = %sw.bb106.i, %sw.bb106.i, %sw.bb106.i, %sw.bb106.i, %sw.bb106.i, %sw.bb106.i
  %dec130.i = add nsw i32 %argc.0.in118.i, -2
  %incdec.ptr131.i = getelementptr inbounds i8** %.pn117.i, i64 2
  br label %switch_end.i

if.end132.i:                                      ; preds = %sw.bb106.i
  %call133.i = call i32 @strcmp(i8* %incdec.ptr107.i, i8* getelementptr inbounds ([8 x i8]* @.str123, i64 0, i64 0)) #7
  %tobool134.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.i, label %reswitch.backedge.i, label %if.end136.i

if.end136.i:                                      ; preds = %if.end132.i
  %call137.i = call i32 @strcmp(i8* %incdec.ptr107.i, i8* getelementptr inbounds ([5 x i8]* @.str125, i64 0, i64 0)) #7
  %tobool138.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.i, label %reswitch.backedge.i, label %sw.default.i

sw.default.i:                                     ; preds = %if.end136.i, %reswitch.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str127, i64 0, i64 0), i8* %s.0.i) #7
  br label %for.cond.backedge.i

switch_end.i:                                     ; preds = %sw.bb101.i, %for.cond.backedge.i, %lor.lhs.false.i, %for.body.i, %S_init_main_stash.exit.i, %if.then129.i
  %cddir.0.ph128.i = phi i8* [ %cddir.0.ph142.i, %if.then129.i ], [ null, %S_init_main_stash.exit.i ], [ %cddir.0.ph142.i, %for.body.i ], [ %cddir.0.ph142.i, %lor.lhs.false.i ], [ %cddir.0.ph142.i, %for.cond.backedge.i ], [ %cddir.0.incdec.ptr102.i, %sw.bb101.i ]
  %scriptname.2.i = phi i8* [ %scriptname.1.i, %if.then129.i ], [ null, %S_init_main_stash.exit.i ], [ %scriptname.0116.i, %for.body.i ], [ %scriptname.0116.i, %lor.lhs.false.i ], [ %scriptname.1.i, %for.cond.backedge.i ], [ %scriptname.1.i, %sw.bb101.i ]
  %argv.4.i = phi i8** [ %incdec.ptr131.i, %if.then129.i ], [ %argv.0113139.i, %S_init_main_stash.exit.i ], [ %argv.0119.i, %for.body.i ], [ %argv.0119.i, %lor.lhs.false.i ], [ %argv.0.i, %for.cond.backedge.i ], [ %argv.0113.i, %sw.bb101.i ]
  %argc.4.i = phi i32 [ %dec130.i, %if.then129.i ], [ %argc.0114140.i, %S_init_main_stash.exit.i ], [ %argc.0121.i, %for.body.i ], [ %argc.0121.i, %lor.lhs.false.i ], [ %argc.0.i, %for.cond.backedge.i ], [ %argc.0114.i, %sw.bb101.i ]
  %124 = load i8* @PL_taint_warn, align 1, !tbaa !1
  %tobool145.i = icmp eq i8 %124, 0
  %125 = load i8* @PL_dowarn, align 1, !tbaa !1
  %cmp148.i = icmp eq i8 %125, 4
  %or.cond1.i = or i1 %tobool145.i, %cmp148.i
  br i1 %or.cond1.i, label %if.end152.i, label %if.then150.i

if.then150.i:                                     ; preds = %switch_end.i
  %call151.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([13 x i8]* @.str128, i64 0, i64 0), i64 12) #7
  store %struct.sv* %call151.i, %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then150.i, %switch_end.i
  %tobool153.i = icmp eq i8* %scriptname.2.i, null
  br i1 %tobool153.i, label %if.then154.i, label %if.end156.i

if.then154.i:                                     ; preds = %if.end152.i
  %126 = load i8** %argv.4.i, align 8, !tbaa !0
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.then154.i, %if.end152.i
  %scriptname.3.i = phi i8* [ %scriptname.2.i, %if.end152.i ], [ %126, %if.then154.i ]
  %127 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool157.i = icmp eq %struct.sv* %127, null
  br i1 %tobool157.i, label %if.else160.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.end156.i
  %inc.i = add nsw i32 %argc.4.i, 1
  %incdec.ptr159.i = getelementptr inbounds i8** %argv.4.i, i64 -1
  br label %if.end165.i

if.else160.i:                                     ; preds = %if.end156.i
  %cmp161.i = icmp eq i8* %scriptname.3.i, null
  %.scriptname.3.i = select i1 %cmp161.i, i8* getelementptr inbounds ([2 x i8]* @.str129, i64 0, i64 0), i8* %scriptname.3.i
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.else160.i, %if.then158.i
  %scriptname.4.i = phi i8* [ getelementptr inbounds ([10 x i8]* @.str122, i64 0, i64 0), %if.then158.i ], [ %.scriptname.3.i, %if.else160.i ]
  %argv.5.i = phi i8** [ %incdec.ptr159.i, %if.then158.i ], [ %argv.4.i, %if.else160.i ]
  %argc.5.i = phi i32 [ %inc.i, %if.then158.i ], [ %argc.4.i, %if.else160.i ]
  %128 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool.i12.i = icmp eq i8 %128, 0
  br i1 %tobool.i12.i, label %if.then.i13.i, label %S_init_perllib.exit.i

if.then.i13.i:                                    ; preds = %if.end165.i
  call fastcc void @S_incpush(i8* getelementptr inbounds ([4 x i8]* @.str157, i64 0, i64 0), i32 1, i32 1, i32 1) #7
  call fastcc void @S_incpush(i8* getelementptr inbounds ([2 x i8]* @.str158, i64 0, i64 0), i32 0, i32 0, i32 1) #7
  br label %S_init_perllib.exit.i

S_init_perllib.exit.i:                            ; preds = %if.then.i13.i, %if.end165.i
  %dosearch.i.0.load = load volatile i8* %dosearch.i, align 1
  store i32 -1, i32* @PL_fdscript, align 4, !tbaa !3
  store i32 -1, i32* @PL_suidscript, align 4, !tbaa !3
  %129 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool.i14.i = icmp eq %struct.sv* %129, null
  br i1 %tobool.i14.i, label %if.else.i.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %S_init_perllib.exit.i
  %call.i15.i = call i8* @Perl_savepv(i8* getelementptr inbounds ([3 x i8]* @.str103, i64 0, i64 0)) #7
  store i8* %call.i15.i, i8** @PL_origfilename, align 8, !tbaa !0
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %S_init_perllib.exit.i
  %call1.i17.i = call i8* @Perl_find_script(i8* %scriptname.4.i, i8 signext %dosearch.i.0.load, i8** null, i32 1) #7
  store i8* %call1.i17.i, i8** @PL_origfilename, align 8, !tbaa !0
  %call2.i18.i = call i32 @strncmp(i8* %call1.i17.i, i8* getelementptr inbounds ([9 x i8]* @.str151, i64 0, i64 0), i64 8) #7
  %tobool3.i.i = icmp eq i32 %call2.i18.i, 0
  br i1 %tobool3.i.i, label %land.lhs.true.i.i, label %if.end32.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %arrayidx.i.i = getelementptr inbounds i8* %call1.i17.i, i64 8
  %130 = load i8* %arrayidx.i.i, align 1, !tbaa !1
  %.off.i.i = add i8 %130, -48
  %131 = icmp ult i8 %.off.i.i, 10
  br i1 %131, label %if.then10.i.i, label %if.end32.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true.i.i
  %call11.i19.i = call i32 @atoi(i8* %arrayidx.i.i) #7
  store i32 %call11.i19.i, i32* @PL_fdscript, align 4, !tbaa !3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.then10.i.i
  %s.0.i.i = phi i8* [ %arrayidx.i.i, %if.then10.i.i ], [ %incdec.ptr.i.i, %while.cond.i.i ]
  %132 = load i8* %s.0.i.i, align 1, !tbaa !1
  %.off1.i.i = add i8 %132, -48
  %133 = icmp ult i8 %.off1.i.i, 10
  %incdec.ptr.i.i = getelementptr inbounds i8* %s.0.i.i, i64 1
  br i1 %133, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %tobool18.i.i = icmp eq i8 %132, 0
  br i1 %tobool18.i.i, label %if.end32.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %while.end.i.i
  store i32 1, i32* @PL_suidscript, align 4, !tbaa !3
  %134 = load i8* %s.0.i.i, align 1, !tbaa !1
  %cmp21.i.i = icmp eq i8 %134, 47
  br i1 %cmp21.i.i, label %if.end.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.then19.i.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([41 x i8]* @.str152, i64 0, i64 0), i8* %s.0.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then23.i.i, %if.then19.i.i
  %135 = load i8* %incdec.ptr.i.i, align 1, !tbaa !1
  %tobool25.i.i = icmp eq i8 %135, 0
  br i1 %tobool25.i.i, label %if.then26.i.i, label %if.end27.i.i

if.then26.i.i:                                    ; preds = %if.end.i.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str153, i64 0, i64 0)) #7
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then26.i.i, %if.end.i.i
  %call29.i20.i = call i8* @Perl_savepv(i8* %incdec.ptr.i.i) #7
  %136 = load i8** @PL_origfilename, align 8, !tbaa !0
  call void @Perl_safesysfree(i8* %136) #7
  store i8* %call29.i20.i, i8** @PL_origfilename, align 8, !tbaa !0
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end27.i.i, %while.end.i.i, %land.lhs.true.i.i, %if.else.i.i, %if.then.i16.i
  %scriptname.addr.0.i.i = phi i8* [ %scriptname.4.i, %if.then.i16.i ], [ %call1.i17.i, %if.else.i.i ], [ %call29.i20.i, %if.end27.i.i ], [ %call1.i17.i, %while.end.i.i ], [ %call1.i17.i, %land.lhs.true.i.i ]
  %137 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv.i.i = getelementptr inbounds %struct.cop* %137, i64 0, i32 10
  %138 = load %struct.gv** %cop_filegv.i.i, align 8, !tbaa !0
  %139 = bitcast %struct.gv* %138 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %139) #7
  %140 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv33.i.i = getelementptr inbounds %struct.cop* %140, i64 0, i32 10
  store %struct.gv* null, %struct.gv** %cop_filegv33.i.i, align 8, !tbaa !0
  %141 = load i8** @PL_origfilename, align 8, !tbaa !0
  %call34.i.i = call %struct.gv* @Perl_gv_fetchfile(i8* %141) #7
  %142 = bitcast %struct.gv* %call34.i.i to %struct.sv*
  store %struct.sv* %142, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool35.i.i = icmp eq %struct.gv* %call34.i.i, null
  br i1 %tobool35.i.i, label %land.end38.i.i, label %land.rhs36.i.i

land.rhs36.i.i:                                   ; preds = %if.end32.i.i
  %143 = getelementptr inbounds %struct.gv* %call34.i.i, i64 0, i32 1
  %144 = load i32* %143, align 4, !tbaa !3
  %inc.i21.i = add i32 %144, 1
  store i32 %inc.i21.i, i32* %143, align 4, !tbaa !3
  br label %land.end38.i.i

land.end38.i.i:                                   ; preds = %land.rhs36.i.i, %if.end32.i.i
  %145 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv39.i.i = getelementptr inbounds %struct.cop* %145, i64 0, i32 10
  store %struct.gv* %call34.i.i, %struct.gv** %cop_filegv39.i.i, align 8, !tbaa !0
  %146 = load i8** @PL_origfilename, align 8, !tbaa !0
  %147 = load i8* %146, align 1, !tbaa !1
  %cmp41.i.i = icmp eq i8 %147, 45
  br i1 %cmp41.i.i, label %land.lhs.true43.i.i, label %if.end49.i.i

land.lhs.true43.i.i:                              ; preds = %land.end38.i.i
  %arrayidx44.i.i = getelementptr inbounds i8* %146, i64 1
  %148 = load i8* %arrayidx44.i.i, align 1, !tbaa !1
  %cmp46.i.i = icmp eq i8 %148, 0
  %.scriptname.addr.0.i.i = select i1 %cmp46.i.i, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* %scriptname.addr.0.i.i
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %land.lhs.true43.i.i, %land.end38.i.i
  %scriptname.addr.1.i.i = phi i8* [ %scriptname.addr.0.i.i, %land.end38.i.i ], [ %.scriptname.addr.0.i.i, %land.lhs.true43.i.i ]
  %149 = load i32* @PL_fdscript, align 4, !tbaa !3
  %cmp50.i.i = icmp sgt i32 %149, -1
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.else59.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  %call53.i.i = call %struct._PerlIO** @PerlIO_fdopen(i32 %149, i8* getelementptr inbounds ([2 x i8]* @.str154, i64 0, i64 0)) #7
  store volatile %struct._PerlIO** %call53.i.i, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %150 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %tobool54.i.i = icmp eq %struct._PerlIO** %150, null
  br i1 %tobool54.i.i, label %if.end71.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.then52.i.i
  %151 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call56.i.i = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %151) #7
  %call57.i.i = call i32 (i32, i32, ...)* @fcntl(i32 %call56.i.i, i32 2, i32 1) #7
  br label %if.end71.i.i

if.else59.i.i:                                    ; preds = %if.end49.i.i
  %152 = load i8* %scriptname.addr.1.i.i, align 1, !tbaa !1
  %tobool60.i.i = icmp eq i8 %152, 0
  br i1 %tobool60.i.i, label %if.then61.i.i, label %if.else63.i.i

if.then61.i.i:                                    ; preds = %if.else59.i.i
  %153 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i.i.i = icmp sgt i32 %153, -1
  br i1 %cmp.i.i.i, label %if.then.i.i22.i, label %S_forbid_setid.exit.i.i

if.then.i.i22.i:                                  ; preds = %if.then61.i.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str155, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit.i.i

S_forbid_setid.exit.i.i:                          ; preds = %if.then.i.i22.i, %if.then61.i.i
  %call62.i.i = call %struct._PerlIO** @Perl_PerlIO_stdin() #7
  store volatile %struct._PerlIO** %call62.i.i, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  br label %if.end71.i.i

if.else63.i.i:                                    ; preds = %if.else59.i.i
  %call64.i.i = call %struct._PerlIO** @PerlIO_open(i8* %scriptname.addr.1.i.i, i8* getelementptr inbounds ([2 x i8]* @.str154, i64 0, i64 0)) #7
  store volatile %struct._PerlIO** %call64.i.i, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %154 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %tobool65.i.i = icmp eq %struct._PerlIO** %154, null
  br i1 %tobool65.i.i, label %if.end71.i.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %if.else63.i.i
  %155 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call67.i.i = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %155) #7
  %call68.i.i = call i32 (i32, i32, ...)* @fcntl(i32 %call67.i.i, i32 2, i32 1) #7
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then66.i.i, %if.else63.i.i, %S_forbid_setid.exit.i.i, %if.then55.i.i, %if.then52.i.i
  %156 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %tobool72.i.i = icmp eq %struct._PerlIO** %156, null
  br i1 %tobool72.i.i, label %if.then73.i.i, label %S_open_script.exit.i

if.then73.i.i:                                    ; preds = %if.end71.i.i
  %157 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv74.i.i = getelementptr inbounds %struct.cop* %157, i64 0, i32 10
  %158 = load %struct.gv** %cop_filegv74.i.i, align 8, !tbaa !0
  %tobool75.i.i = icmp eq %struct.gv* %158, null
  br i1 %tobool75.i.i, label %cond.end89.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then73.i.i
  %159 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv76.i.i = getelementptr inbounds %struct.cop* %159, i64 0, i32 10
  %160 = load %struct.gv** %cop_filegv76.i.i, align 8, !tbaa !0
  %sv_any.i23.i = getelementptr inbounds %struct.gv* %160, i64 0, i32 0
  %161 = load %struct.xpvgv** %sv_any.i23.i, align 8, !tbaa !0
  %xgv_gp.i24.i = getelementptr inbounds %struct.xpvgv* %161, i64 0, i32 7
  %162 = load %struct.gp** %xgv_gp.i24.i, align 8, !tbaa !0
  %gp_sv.i25.i = getelementptr inbounds %struct.gp* %162, i64 0, i32 0
  %163 = load %struct.sv** %gp_sv.i25.i, align 8, !tbaa !0
  %tobool77.i.i = icmp eq %struct.sv* %163, null
  br i1 %tobool77.i.i, label %cond.end89.i.i, label %cond.true78.i.i

cond.true78.i.i:                                  ; preds = %cond.true.i.i
  %164 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %165 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv82.i.i = getelementptr inbounds %struct.cop* %165, i64 0, i32 10
  %166 = load %struct.gv** %cop_filegv82.i.i, align 8, !tbaa !0
  %sv_any83.i.i = getelementptr inbounds %struct.gv* %166, i64 0, i32 0
  %167 = load %struct.xpvgv** %sv_any83.i.i, align 8, !tbaa !0
  %xgv_gp84.i.i = getelementptr inbounds %struct.xpvgv* %167, i64 0, i32 7
  %168 = load %struct.gp** %xgv_gp84.i.i, align 8, !tbaa !0
  %gp_sv85.i.i = getelementptr inbounds %struct.gp* %168, i64 0, i32 0
  %169 = load %struct.sv** %gp_sv85.i.i, align 8, !tbaa !0
  %sv_any87.i.i = getelementptr inbounds %struct.sv* %169, i64 0, i32 0
  %170 = load i8** %sv_any87.i.i, align 8, !tbaa !0
  %xpv_pv.i.i = bitcast i8* %170 to i8**
  %171 = load i8** %xpv_pv.i.i, align 8, !tbaa !0
  br label %cond.end89.i.i

cond.end89.i.i:                                   ; preds = %cond.true78.i.i, %cond.true.i.i, %if.then73.i.i
  %cond90.i.i = phi i8* [ %171, %cond.true78.i.i ], [ null, %if.then73.i.i ], [ null, %cond.true.i.i ]
  %call91.i.i = call i32* @__errno_location() #7
  %172 = load i32* %call91.i.i, align 4, !tbaa !3
  %call92.i.i = call i8* @strerror(i32 %172) #7
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str156, i64 0, i64 0), i8* %cond90.i.i, i8* %call92.i.i) #7
  br label %S_open_script.exit.i

S_open_script.exit.i:                             ; preds = %cond.end89.i.i, %if.end71.i.i
  %173 = load i32* @PL_euid, align 4, !tbaa !3
  %174 = load i32* @PL_uid, align 4, !tbaa !3
  %cmp.i26.i = icmp eq i32 %173, %174
  br i1 %cmp.i26.i, label %lor.lhs.false.i.i, label %if.then.i29.i

lor.lhs.false.i.i:                                ; preds = %S_open_script.exit.i
  %175 = load i32* @PL_egid, align 4, !tbaa !3
  %176 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp1.i.i = icmp eq i32 %175, %176
  br i1 %cmp1.i.i, label %S_validate_suid.exit.i, label %if.then.i29.i

if.then.i29.i:                                    ; preds = %lor.lhs.false.i.i, %S_open_script.exit.i
  %177 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call.i27.i = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %177) #7
  %call2.i28.i = call i32 @fstat(i32 %call.i27.i, %struct.stat* @PL_statbuf) #7
  %178 = load i32* @PL_euid, align 4, !tbaa !3
  %179 = load i32* @PL_uid, align 4, !tbaa !3
  %cmp3.i.i = icmp ne i32 %178, %179
  %180 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 4), align 4, !tbaa !3
  %cmp4.i.i = icmp eq i32 %178, %180
  %or.cond2.i.i = and i1 %cmp3.i.i, %cmp4.i.i
  br i1 %or.cond2.i.i, label %land.lhs.true5.i.i, label %lor.lhs.false6.i.i

land.lhs.true5.i.i:                               ; preds = %if.then.i29.i
  %181 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !3
  %and.i.i = and i32 %181, 2048
  %tobool.i30.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i30.i, label %lor.lhs.false6.i.i, label %if.then13.i.i

lor.lhs.false6.i.i:                               ; preds = %land.lhs.true5.i.i, %if.then.i29.i
  %182 = load i32* @PL_egid, align 4, !tbaa !3
  %183 = load i32* @PL_gid, align 4, !tbaa !3
  %cmp7.i.i = icmp ne i32 %182, %183
  %184 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 5), align 8, !tbaa !3
  %cmp9.i.i = icmp eq i32 %182, %184
  %or.cond4.i.i = and i1 %cmp7.i.i, %cmp9.i.i
  br i1 %or.cond4.i.i, label %land.lhs.true10.i.i, label %S_validate_suid.exit.i

land.lhs.true10.i.i:                              ; preds = %lor.lhs.false6.i.i
  %185 = load i32* getelementptr inbounds (%struct.stat* @PL_statbuf, i64 0, i32 3), align 8, !tbaa !3
  %and11.i.i = and i32 %185, 1024
  %tobool12.i.i = icmp eq i32 %and11.i.i, 0
  %186 = load i8* @PL_do_undump, align 1, !tbaa !1
  %tobool14.i.i = icmp ne i8 %186, 0
  %or.cond.i.i = or i1 %tobool12.i.i, %tobool14.i.i
  br i1 %or.cond.i.i, label %S_validate_suid.exit.i, label %if.then15.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true5.i.i
  %.old.i.i = load i8* @PL_do_undump, align 1, !tbaa !1
  %tobool14.old.i.i = icmp eq i8 %.old.i.i, 0
  br i1 %tobool14.old.i.i, label %if.then15.i.i, label %S_validate_suid.exit.i

if.then15.i.i:                                    ; preds = %if.then13.i.i, %land.lhs.true10.i.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([131 x i8]* @.str150, i64 0, i64 0)) #7
  br label %S_validate_suid.exit.i

S_validate_suid.exit.i:                           ; preds = %if.then15.i.i, %if.then13.i.i, %land.lhs.true10.i.i, %lor.lhs.false6.i.i, %lor.lhs.false.i.i
  %187 = load i8* @PL_doextract, align 1, !tbaa !1
  %tobool166.i = icmp eq i8 %187, 0
  br i1 %tobool166.i, label %if.end175.i, label %if.then167.i

if.then167.i:                                     ; preds = %S_validate_suid.exit.i
  %188 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i.i31.i = icmp sgt i32 %188, -1
  br i1 %cmp.i.i31.i, label %while.cond.preheader.i.i, label %while.body.i.i

while.cond.preheader.i.i:                         ; preds = %if.then167.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str146, i64 0, i64 0)) #7
  %.pre189.i = load i8* @PL_doextract, align 1, !tbaa !1
  %tobool121.i.i = icmp eq i8 %.pre189.i, 0
  br i1 %tobool121.i.i, label %S_find_beginning.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.preheader.i.i, %if.then167.i, %while.cond.backedge.i.i
  %189 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %190 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call.i33.i = call i8* @Perl_sv_gets(%struct.sv* %189, %struct._PerlIO** %190, i32 0) #7
  %cmp.i34.i = icmp eq i8* %call.i33.i, null
  br i1 %cmp.i34.i, label %if.then.i35.i, label %if.end.i37.i

if.then.i35.i:                                    ; preds = %while.body.i.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str147, i64 0, i64 0)) #7
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.then.i35.i, %while.body.i.i
  %191 = load i8* %call.i33.i, align 1, !tbaa !1
  %cmp1.i36.i = icmp eq i8 %191, 35
  br i1 %cmp1.i36.i, label %land.lhs.true.i40.i, label %while.cond.backedge.i.i

land.lhs.true.i40.i:                              ; preds = %if.end.i37.i
  %arrayidx.i38.i = getelementptr inbounds i8* %call.i33.i, i64 1
  %192 = load i8* %arrayidx.i38.i, align 1, !tbaa !1
  %cmp4.i39.i = icmp eq i8 %192, 33
  br i1 %cmp4.i39.i, label %land.lhs.true6.i.i, label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %lor.lhs.false.i44.i, %while.cond88.i.i, %while.cond39.i.i, %land.lhs.true.i40.i, %if.end.i37.i, %lor.rhs76.i.i
  %193 = load i8* @PL_doextract, align 1, !tbaa !1
  %tobool.i41.i = icmp eq i8 %193, 0
  br i1 %tobool.i41.i, label %S_find_beginning.exit.i, label %while.body.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i40.i
  %call7.i42.i = call i8* @Perl_instr(i8* %call.i33.i, i8* getelementptr inbounds ([5 x i8]* @.str148, i64 0, i64 0)) #7
  %tobool8.i.i = icmp eq i8* %call7.i42.i, null
  br i1 %tobool8.i.i, label %lor.lhs.false.i44.i, label %if.then11.i.i

lor.lhs.false.i44.i:                              ; preds = %land.lhs.true6.i.i
  %call9.i43.i = call i8* @Perl_instr(i8* %call.i33.i, i8* getelementptr inbounds ([5 x i8]* @.str149, i64 0, i64 0)) #7
  %tobool10.i.i = icmp eq i8* %call9.i43.i, null
  br i1 %tobool10.i.i, label %while.cond.backedge.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %lor.lhs.false.i44.i, %land.lhs.true6.i.i
  %s.0.i45.i = phi i8* [ %call7.i42.i, %land.lhs.true6.i.i ], [ %call9.i43.i, %lor.lhs.false.i44.i ]
  %194 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call12.i.i = call i32 @PerlIO_ungetc(%struct._PerlIO** %194, i32 10) #7
  store i8 0, i8* @PL_doextract, align 1, !tbaa !1
  br label %while.cond13.i.i

while.cond13.i.i:                                 ; preds = %while.body38.critedge.i.i, %if.then11.i.i
  %s.1.i.i = phi i8* [ %s.0.i45.i, %if.then11.i.i ], [ %incdec.ptr.i46.i, %while.body38.critedge.i.i ]
  %195 = load i8* %s.1.i.i, align 1, !tbaa !1
  switch i8 %195, label %while.body38.critedge.i.i [
    i8 0, label %while.cond39.i.i
    i8 32, label %while.cond39.i.i
    i8 9, label %while.cond39.i.i
    i8 10, label %while.cond39.i.i
    i8 13, label %while.cond39.i.i
    i8 12, label %while.cond39.i.i
    i8 35, label %while.cond39.i.i
  ]

while.body38.critedge.i.i:                        ; preds = %while.cond13.i.i
  %incdec.ptr.i46.i = getelementptr inbounds i8* %s.1.i.i, i64 1
  br label %while.cond13.i.i

while.cond39.i.i:                                 ; preds = %while.cond13.i.i, %while.cond13.i.i, %while.cond13.i.i, %while.cond13.i.i, %while.cond13.i.i, %while.cond13.i.i, %while.cond13.i.i, %while.cond39.backedge.i.i
  %196 = phi i8 [ %.pre.i.i, %while.cond39.backedge.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ], [ %195, %while.cond13.i.i ]
  %s.2.i.i = phi i8* [ %incdec.ptr49.i.i, %while.cond39.backedge.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ], [ %s.1.i.i, %while.cond13.i.i ]
  %incdec.ptr49.i.i = getelementptr inbounds i8* %s.2.i.i, i64 1
  switch i8 %196, label %while.cond.backedge.i.i [
    i8 32, label %while.cond39.backedge.i.i
    i8 9, label %while.cond39.backedge.i.i
    i8 45, label %while.cond56.i.i
  ]

while.cond39.backedge.i.i:                        ; preds = %while.cond39.i.i, %while.cond39.i.i
  %.pre.i.i = load i8* %incdec.ptr49.i.i, align 1, !tbaa !1
  br label %while.cond39.i.i

while.cond56.i.i:                                 ; preds = %lor.lhs.false66.i.i, %lor.lhs.false66.i.i, %lor.lhs.false66.i.i, %while.cond56.i.i, %while.cond39.i.i
  %s2.0.i.i = phi i8* [ %s.1.i.i, %while.cond39.i.i ], [ %arrayidx57.i.i, %while.cond56.i.i ], [ %arrayidx57.i.i, %lor.lhs.false66.i.i ], [ %arrayidx57.i.i, %lor.lhs.false66.i.i ], [ %arrayidx57.i.i, %lor.lhs.false66.i.i ]
  %arrayidx57.i.i = getelementptr inbounds i8* %s2.0.i.i, i64 -1
  %197 = load i8* %arrayidx57.i.i, align 1, !tbaa !1
  %.off.i47.i = add i8 %197, -48
  %198 = icmp ult i8 %.off.i47.i, 10
  br i1 %198, label %while.cond56.i.i, label %lor.lhs.false66.i.i

lor.lhs.false66.i.i:                              ; preds = %while.cond56.i.i
  switch i8 %197, label %lor.rhs76.i.i [
    i8 45, label %while.cond56.i.i
    i8 46, label %while.cond56.i.i
    i8 95, label %while.cond56.i.i
  ]

lor.rhs76.i.i:                                    ; preds = %lor.lhs.false66.i.i
  %add.ptr.i.i = getelementptr inbounds i8* %s2.0.i.i, i64 -4
  %call85.i.i = call i32 @strncmp(i8* %add.ptr.i.i, i8* getelementptr inbounds ([5 x i8]* @.str148, i64 0, i64 0), i64 4) #7
  %tobool86.i.i = icmp eq i32 %call85.i.i, 0
  br i1 %tobool86.i.i, label %while.cond88.i.i, label %while.cond.backedge.i.i

while.cond88.i.i:                                 ; preds = %lor.rhs76.i.i, %while.cond88.i.i
  %s.3.i.i = phi i8* [ %call89.i.i, %while.cond88.i.i ], [ %incdec.ptr49.i.i, %lor.rhs76.i.i ]
  %call89.i.i = call i8* @Perl_moreswitches(i8* %s.3.i.i) #7
  %tobool90.i.i = icmp eq i8* %call89.i.i, null
  br i1 %tobool90.i.i, label %while.cond.backedge.i.i, label %while.cond88.i.i

S_find_beginning.exit.i:                          ; preds = %while.cond.backedge.i.i, %while.cond.preheader.i.i
  %tobool168.i = icmp eq i8* %cddir.0.ph128.i, null
  br i1 %tobool168.i, label %if.end175.i, label %land.lhs.true169.i

land.lhs.true169.i:                               ; preds = %S_find_beginning.exit.i
  %call170.i = call i32 @chdir(i8* %cddir.0.ph128.i) #7
  %cmp171.i = icmp slt i32 %call170.i, 0
  br i1 %cmp171.i, label %if.then173.i, label %if.end175.i

if.then173.i:                                     ; preds = %land.lhs.true169.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([18 x i8]* @.str130, i64 0, i64 0), i8* %cddir.0.ph128.i) #7
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then173.i, %land.lhs.true169.i, %S_find_beginning.exit.i, %S_validate_suid.exit.i
  %call176.i = call %struct.sv* @Perl_newSV(i64 0) #7
  %199 = bitcast %struct.sv* %call176.i to %struct.cv*
  store %struct.cv* %199, %struct.cv** @PL_compcv, align 8, !tbaa !0
  store %struct.cv* %199, %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %call177.i = call signext i8 @Perl_sv_upgrade(%struct.sv* %call176.i, i32 12) #7
  %200 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any178.i = getelementptr inbounds %struct.cv* %200, i64 0, i32 0
  %201 = load %struct.xpvcv** %sv_any178.i, align 8, !tbaa !0
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv* %201, i64 0, i32 17
  %202 = load i16* %xcv_flags.i, align 2, !tbaa !4
  %or.i = or i16 %202, 16
  store i16 %or.i, i16* %xcv_flags.i, align 2, !tbaa !4
  %call181.i = call %struct.av* @Perl_pad_new(i32 0) #7
  %203 = load %struct.cv** @PL_compcv, align 8, !tbaa !0
  %sv_any182.i = getelementptr inbounds %struct.cv* %203, i64 0, i32 0
  %204 = load %struct.xpvcv** %sv_any182.i, align 8, !tbaa !0
  %xcv_padlist.i = getelementptr inbounds %struct.xpvcv* %204, i64 0, i32 15
  store %struct.av* %call181.i, %struct.av** %xcv_padlist.i, align 8, !tbaa !0
  call void @Perl_boot_core_PerlIO() #7
  call void @Perl_boot_core_UNIVERSAL() #7
  call void @Perl_boot_core_xsutils() #7
  %tobool183.i = icmp eq void ()* %xsinit, null
  br i1 %tobool183.i, label %if.end185.i, label %if.then184.i

if.then184.i:                                     ; preds = %if.end175.i
  call void %xsinit() #7
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then184.i, %if.end175.i
  %call.i.i48.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str139, i64 0, i64 0), i32 1, i32 4) #7
  %tobool.i.i49.i = icmp eq %struct.gv* %call.i.i48.i, null
  br i1 %tobool.i.i49.i, label %Perl_get_sv.exit.i.i, label %if.then.i.i53.i

if.then.i.i53.i:                                  ; preds = %if.end185.i
  %sv_any.i.i50.i = getelementptr inbounds %struct.gv* %call.i.i48.i, i64 0, i32 0
  %205 = load %struct.xpvgv** %sv_any.i.i50.i, align 8, !tbaa !0
  %xgv_gp.i.i51.i = getelementptr inbounds %struct.xpvgv* %205, i64 0, i32 7
  %206 = load %struct.gp** %xgv_gp.i.i51.i, align 8, !tbaa !0
  %gp_sv.i.i52.i = getelementptr inbounds %struct.gp* %206, i64 0, i32 0
  %207 = load %struct.sv** %gp_sv.i.i52.i, align 8, !tbaa !0
  br label %Perl_get_sv.exit.i.i

Perl_get_sv.exit.i.i:                             ; preds = %if.then.i.i53.i, %if.end185.i
  %retval.0.i.i54.i = phi %struct.sv* [ %207, %if.then.i.i53.i ], [ null, %if.end185.i ]
  call void @Perl_sv_setpvn(%struct.sv* %retval.0.i.i54.i, i8* getelementptr inbounds ([2 x i8]* @.str70, i64 0, i64 0), i64 1) #7
  %call1.i55.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([6 x i8]* @.str140, i64 0, i64 0), i32 1, i32 15) #7
  store %struct.gv* %call1.i55.i, %struct.gv** @PL_stdingv, align 8, !tbaa !0
  %sv_any.i56.i = getelementptr inbounds %struct.gv* %call1.i55.i, i64 0, i32 0
  %208 = load %struct.xpvgv** %sv_any.i56.i, align 8, !tbaa !0
  %xgv_flags.i57.i = getelementptr inbounds %struct.xpvgv* %208, i64 0, i32 11
  %209 = load i8* %xgv_flags.i57.i, align 1, !tbaa !1
  %or.i58.i = or i8 %209, 2
  store i8 %or.i58.i, i8* %xgv_flags.i57.i, align 1, !tbaa !1
  %210 = load %struct.gv** @PL_stdingv, align 8, !tbaa !0
  %sv_any3.i.i = getelementptr inbounds %struct.gv* %210, i64 0, i32 0
  %211 = load %struct.xpvgv** %sv_any3.i.i, align 8, !tbaa !0
  %xgv_gp.i59.i = getelementptr inbounds %struct.xpvgv* %211, i64 0, i32 7
  %212 = load %struct.gp** %xgv_gp.i59.i, align 8, !tbaa !0
  %gp_io.i.i = getelementptr inbounds %struct.gp* %212, i64 0, i32 2
  %213 = load %struct.io** %gp_io.i.i, align 8, !tbaa !0
  %sv_any4.i.i = getelementptr inbounds %struct.io* %213, i64 0, i32 0
  %214 = load %struct.xpvio** %sv_any4.i.i, align 8, !tbaa !0
  %xio_type.i.i = getelementptr inbounds %struct.xpvio* %214, i64 0, i32 21
  store i8 60, i8* %xio_type.i.i, align 1, !tbaa !1
  %call5.i.i = call %struct._PerlIO** @Perl_PerlIO_stdin() #7
  %215 = load %struct.xpvio** %sv_any4.i.i, align 8, !tbaa !0
  %xio_ifp.i.i = getelementptr inbounds %struct.xpvio* %215, i64 0, i32 7
  store %struct._PerlIO** %call5.i.i, %struct._PerlIO*** %xio_ifp.i.i, align 8, !tbaa !0
  %call7.i60.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([6 x i8]* @.str141, i64 0, i64 0), i32 1, i32 4) #7
  %sv_any8.i61.i = getelementptr inbounds %struct.gv* %call7.i60.i, i64 0, i32 0
  %216 = load %struct.xpvgv** %sv_any8.i61.i, align 8, !tbaa !0
  %xgv_flags9.i.i = getelementptr inbounds %struct.xpvgv* %216, i64 0, i32 11
  %217 = load i8* %xgv_flags9.i.i, align 1, !tbaa !1
  %or11.i.i = or i8 %217, 2
  store i8 %or11.i.i, i8* %xgv_flags9.i.i, align 1, !tbaa !1
  %218 = bitcast %struct.io* %213 to %struct.sv*
  store %struct.sv* %218, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool.i62.i = icmp eq %struct.io* %213, null
  br i1 %tobool.i62.i, label %land.end.i65.i, label %land.rhs.i64.i

land.rhs.i64.i:                                   ; preds = %Perl_get_sv.exit.i.i
  %219 = getelementptr inbounds %struct.io* %213, i64 0, i32 1
  %220 = load i32* %219, align 4, !tbaa !3
  %inc.i63.i = add i32 %220, 1
  store i32 %inc.i63.i, i32* %219, align 4, !tbaa !3
  br label %land.end.i65.i

land.end.i65.i:                                   ; preds = %land.rhs.i64.i, %Perl_get_sv.exit.i.i
  %221 = load %struct.xpvgv** %sv_any8.i61.i, align 8, !tbaa !0
  %xgv_gp15.i.i = getelementptr inbounds %struct.xpvgv* %221, i64 0, i32 7
  %222 = load %struct.gp** %xgv_gp15.i.i, align 8, !tbaa !0
  %gp_io16.i.i = getelementptr inbounds %struct.gp* %222, i64 0, i32 2
  store %struct.io* %213, %struct.io** %gp_io16.i.i, align 8, !tbaa !0
  %call17.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str142, i64 0, i64 0), i32 1, i32 15) #7
  %sv_any18.i.i = getelementptr inbounds %struct.gv* %call17.i.i, i64 0, i32 0
  %223 = load %struct.xpvgv** %sv_any18.i.i, align 8, !tbaa !0
  %xgv_flags19.i.i = getelementptr inbounds %struct.xpvgv* %223, i64 0, i32 11
  %224 = load i8* %xgv_flags19.i.i, align 1, !tbaa !1
  %or21.i.i = or i8 %224, 2
  store i8 %or21.i.i, i8* %xgv_flags19.i.i, align 1, !tbaa !1
  %225 = load %struct.xpvgv** %sv_any18.i.i, align 8, !tbaa !0
  %xgv_gp24.i.i = getelementptr inbounds %struct.xpvgv* %225, i64 0, i32 7
  %226 = load %struct.gp** %xgv_gp24.i.i, align 8, !tbaa !0
  %gp_io25.i.i = getelementptr inbounds %struct.gp* %226, i64 0, i32 2
  %227 = load %struct.io** %gp_io25.i.i, align 8, !tbaa !0
  %sv_any26.i.i = getelementptr inbounds %struct.io* %227, i64 0, i32 0
  %228 = load %struct.xpvio** %sv_any26.i.i, align 8, !tbaa !0
  %xio_type27.i.i = getelementptr inbounds %struct.xpvio* %228, i64 0, i32 21
  store i8 62, i8* %xio_type27.i.i, align 1, !tbaa !1
  %call28.i.i = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %229 = load %struct.xpvio** %sv_any26.i.i, align 8, !tbaa !0
  %xio_ifp30.i.i = getelementptr inbounds %struct.xpvio* %229, i64 0, i32 7
  store %struct._PerlIO** %call28.i.i, %struct._PerlIO*** %xio_ifp30.i.i, align 8, !tbaa !0
  %230 = load %struct.xpvio** %sv_any26.i.i, align 8, !tbaa !0
  %xio_ofp.i.i = getelementptr inbounds %struct.xpvio* %230, i64 0, i32 8
  store %struct._PerlIO** %call28.i.i, %struct._PerlIO*** %xio_ofp.i.i, align 8, !tbaa !0
  call void @Perl_setdefout(%struct.gv* %call17.i.i) #7
  %call32.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str143, i64 0, i64 0), i32 1, i32 4) #7
  %sv_any33.i.i = getelementptr inbounds %struct.gv* %call32.i.i, i64 0, i32 0
  %231 = load %struct.xpvgv** %sv_any33.i.i, align 8, !tbaa !0
  %xgv_flags34.i.i = getelementptr inbounds %struct.xpvgv* %231, i64 0, i32 11
  %232 = load i8* %xgv_flags34.i.i, align 1, !tbaa !1
  %or36.i.i = or i8 %232, 2
  store i8 %or36.i.i, i8* %xgv_flags34.i.i, align 1, !tbaa !1
  %233 = bitcast %struct.io* %227 to %struct.sv*
  store %struct.sv* %233, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool38.i.i = icmp eq %struct.io* %227, null
  br i1 %tobool38.i.i, label %land.end43.i.i, label %land.rhs39.i.i

land.rhs39.i.i:                                   ; preds = %land.end.i65.i
  %234 = getelementptr inbounds %struct.io* %227, i64 0, i32 1
  %235 = load i32* %234, align 4, !tbaa !3
  %inc41.i.i = add i32 %235, 1
  store i32 %inc41.i.i, i32* %234, align 4, !tbaa !3
  br label %land.end43.i.i

land.end43.i.i:                                   ; preds = %land.rhs39.i.i, %land.end.i65.i
  %236 = load %struct.xpvgv** %sv_any33.i.i, align 8, !tbaa !0
  %xgv_gp46.i.i = getelementptr inbounds %struct.xpvgv* %236, i64 0, i32 7
  %237 = load %struct.gp** %xgv_gp46.i.i, align 8, !tbaa !0
  %gp_io47.i.i = getelementptr inbounds %struct.gp* %237, i64 0, i32 2
  store %struct.io* %227, %struct.io** %gp_io47.i.i, align 8, !tbaa !0
  %call48.i.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str144, i64 0, i64 0), i32 1, i32 15) #7
  store %struct.gv* %call48.i.i, %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %sv_any49.i.i = getelementptr inbounds %struct.gv* %call48.i.i, i64 0, i32 0
  %238 = load %struct.xpvgv** %sv_any49.i.i, align 8, !tbaa !0
  %xgv_flags50.i.i = getelementptr inbounds %struct.xpvgv* %238, i64 0, i32 11
  %239 = load i8* %xgv_flags50.i.i, align 1, !tbaa !1
  %or52.i.i = or i8 %239, 2
  store i8 %or52.i.i, i8* %xgv_flags50.i.i, align 1, !tbaa !1
  %240 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %sv_any54.i.i = getelementptr inbounds %struct.gv* %240, i64 0, i32 0
  %241 = load %struct.xpvgv** %sv_any54.i.i, align 8, !tbaa !0
  %xgv_gp55.i.i = getelementptr inbounds %struct.xpvgv* %241, i64 0, i32 7
  %242 = load %struct.gp** %xgv_gp55.i.i, align 8, !tbaa !0
  %gp_io56.i.i = getelementptr inbounds %struct.gp* %242, i64 0, i32 2
  %243 = load %struct.io** %gp_io56.i.i, align 8, !tbaa !0
  %sv_any57.i.i = getelementptr inbounds %struct.io* %243, i64 0, i32 0
  %244 = load %struct.xpvio** %sv_any57.i.i, align 8, !tbaa !0
  %xio_type58.i.i = getelementptr inbounds %struct.xpvio* %244, i64 0, i32 21
  store i8 62, i8* %xio_type58.i.i, align 1, !tbaa !1
  %call59.i.i = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  %245 = load %struct.xpvio** %sv_any57.i.i, align 8, !tbaa !0
  %xio_ifp61.i.i = getelementptr inbounds %struct.xpvio* %245, i64 0, i32 7
  store %struct._PerlIO** %call59.i.i, %struct._PerlIO*** %xio_ifp61.i.i, align 8, !tbaa !0
  %246 = load %struct.xpvio** %sv_any57.i.i, align 8, !tbaa !0
  %xio_ofp63.i.i = getelementptr inbounds %struct.xpvio* %246, i64 0, i32 8
  store %struct._PerlIO** %call59.i.i, %struct._PerlIO*** %xio_ofp63.i.i, align 8, !tbaa !0
  %call64.i66.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str145, i64 0, i64 0), i32 1, i32 4) #7
  %sv_any65.i.i = getelementptr inbounds %struct.gv* %call64.i66.i, i64 0, i32 0
  %247 = load %struct.xpvgv** %sv_any65.i.i, align 8, !tbaa !0
  %xgv_flags66.i.i = getelementptr inbounds %struct.xpvgv* %247, i64 0, i32 11
  %248 = load i8* %xgv_flags66.i.i, align 1, !tbaa !1
  %or68.i.i = or i8 %248, 2
  store i8 %or68.i.i, i8* %xgv_flags66.i.i, align 1, !tbaa !1
  %249 = bitcast %struct.io* %243 to %struct.sv*
  store %struct.sv* %249, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool70.i.i = icmp eq %struct.io* %243, null
  br i1 %tobool70.i.i, label %land.end75.i.i, label %land.rhs71.i.i

land.rhs71.i.i:                                   ; preds = %land.end43.i.i
  %250 = getelementptr inbounds %struct.io* %243, i64 0, i32 1
  %251 = load i32* %250, align 4, !tbaa !3
  %inc73.i.i = add i32 %251, 1
  store i32 %inc73.i.i, i32* %250, align 4, !tbaa !3
  br label %land.end75.i.i

land.end75.i.i:                                   ; preds = %land.rhs71.i.i, %land.end43.i.i
  %252 = load %struct.xpvgv** %sv_any65.i.i, align 8, !tbaa !0
  %xgv_gp78.i.i = getelementptr inbounds %struct.xpvgv* %252, i64 0, i32 7
  %253 = load %struct.gp** %xgv_gp78.i.i, align 8, !tbaa !0
  %gp_io79.i.i = getelementptr inbounds %struct.gp* %253, i64 0, i32 2
  store %struct.io* %243, %struct.io** %gp_io79.i.i, align 8, !tbaa !0
  %call80.i.i = call %struct.sv* @Perl_newSV(i64 0) #7
  store %struct.sv* %call80.i.i, %struct.sv** @PL_statname, align 8, !tbaa !0
  %254 = load i8** @PL_osname, align 8, !tbaa !0
  %tobool81.i.i = icmp eq i8* %254, null
  br i1 %tobool81.i.i, label %S_init_predump_symbols.exit.i, label %if.then.i67.i

if.then.i67.i:                                    ; preds = %land.end75.i.i
  call void @Perl_safesysfree(i8* %254) #7
  br label %S_init_predump_symbols.exit.i

S_init_predump_symbols.exit.i:                    ; preds = %if.then.i67.i, %land.end75.i.i
  %call82.i.i = call i8* @Perl_savepv(i8* getelementptr inbounds ([9 x i8]* @.str114, i64 0, i64 0)) #7
  store i8* %call82.i.i, i8** @PL_osname, align 8, !tbaa !0
  %255 = load i8* @PL_do_undump, align 1, !tbaa !1
  %tobool186.i = icmp eq i8 %255, 0
  br i1 %tobool186.i, label %if.then187.i, label %if.end188.i

if.then187.i:                                     ; preds = %S_init_predump_symbols.exit.i
  call fastcc void @S_init_postdump_symbols(i32 %argc.5.i, i8** %argv.5.i, i8** %env) #7
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.then187.i, %S_init_predump_symbols.exit.i
  %256 = load i32* @PL_unicode, align 4, !tbaa !3
  %tobool189.i = icmp eq i32 %256, 0
  br i1 %tobool189.i, label %if.end321.i, label %if.then190.i

if.then190.i:                                     ; preds = %if.end188.i
  %and191.i = and i32 %256, 64
  %tobool192.i = icmp ne i32 %and191.i, 0
  %257 = load i8* @PL_utf8locale, align 1, !tbaa !1
  %tobool195.i = icmp eq i8 %257, 0
  %or.cond2.i = and i1 %tobool192.i, %tobool195.i
  br i1 %or.cond2.i, label %if.end321.i, label %if.then196.i

if.then196.i:                                     ; preds = %if.then190.i
  %and198.i = and i32 %256, 1
  %tobool199.i = icmp ne i32 %and198.i, 0
  %258 = load %struct.gv** @PL_stdingv, align 8, !tbaa !0
  %tobool201.i = icmp ne %struct.gv* %258, null
  %brmerge.demorgan.i = and i1 %tobool199.i, %tobool201.i
  br i1 %brmerge.demorgan.i, label %land.lhs.true204.i, label %if.end226.i

land.lhs.true204.i:                               ; preds = %if.then196.i
  %259 = getelementptr inbounds %struct.gv* %258, i64 0, i32 2
  %260 = load i32* %259, align 4, !tbaa !3
  %and206.i = and i32 %260, 255
  %cmp207.i = icmp eq i32 %and206.i, 13
  br i1 %cmp207.i, label %land.lhs.true209.i, label %if.end226.i

land.lhs.true209.i:                               ; preds = %land.lhs.true204.i
  %sv_any210.i = getelementptr inbounds %struct.gv* %258, i64 0, i32 0
  %261 = load %struct.xpvgv** %sv_any210.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %261, i64 0, i32 7
  %262 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !0
  %tobool211.i = icmp eq %struct.gp* %262, null
  br i1 %tobool211.i, label %if.end226.i, label %cond.end216.i

cond.end216.i:                                    ; preds = %land.lhs.true209.i
  %gp_io.i = getelementptr inbounds %struct.gp* %262, i64 0, i32 2
  %263 = load %struct.io** %gp_io.i, align 8, !tbaa !0
  %tobool218.i = icmp eq %struct.io* %263, null
  br i1 %tobool218.i, label %if.end226.i, label %land.lhs.true219.i

land.lhs.true219.i:                               ; preds = %cond.end216.i
  %sv_any220.i = getelementptr inbounds %struct.io* %263, i64 0, i32 0
  %264 = load %struct.xpvio** %sv_any220.i, align 8, !tbaa !0
  %xio_ifp.i = getelementptr inbounds %struct.xpvio* %264, i64 0, i32 7
  %265 = load %struct._PerlIO*** %xio_ifp.i, align 8, !tbaa !0
  %tobool221.i = icmp eq %struct._PerlIO** %265, null
  br i1 %tobool221.i, label %if.end226.i, label %if.then222.i

if.then222.i:                                     ; preds = %land.lhs.true219.i
  %xio_type.i = getelementptr inbounds %struct.xpvio* %264, i64 0, i32 21
  %266 = load i8* %xio_type.i, align 1, !tbaa !1
  %conv224.i = sext i8 %266 to i32
  %call225.i = call i32 @PerlIO_binmode(%struct._PerlIO** %265, i32 %conv224.i, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str131, i64 0, i64 0)) #7
  %.pre.i = load i32* @PL_unicode, align 4, !tbaa !3
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.then222.i, %land.lhs.true219.i, %cond.end216.i, %land.lhs.true209.i, %land.lhs.true204.i, %if.then196.i
  %267 = phi i32 [ %256, %if.then196.i ], [ %256, %land.lhs.true204.i ], [ %256, %land.lhs.true209.i ], [ %256, %land.lhs.true219.i ], [ %256, %cond.end216.i ], [ %.pre.i, %if.then222.i ]
  %and227.i = and i32 %267, 2
  %tobool228.i = icmp ne i32 %and227.i, 0
  %268 = load %struct.gv** @PL_defoutgv, align 8, !tbaa !0
  %tobool230.i = icmp ne %struct.gv* %268, null
  %brmerge82.demorgan.i = and i1 %tobool228.i, %tobool230.i
  br i1 %brmerge82.demorgan.i, label %land.lhs.true233.i, label %if.end258.i

land.lhs.true233.i:                               ; preds = %if.end226.i
  %269 = getelementptr inbounds %struct.gv* %268, i64 0, i32 2
  %270 = load i32* %269, align 4, !tbaa !3
  %and235.i = and i32 %270, 255
  %cmp236.i = icmp eq i32 %and235.i, 13
  br i1 %cmp236.i, label %land.lhs.true238.i, label %if.end258.i

land.lhs.true238.i:                               ; preds = %land.lhs.true233.i
  %sv_any239.i = getelementptr inbounds %struct.gv* %268, i64 0, i32 0
  %271 = load %struct.xpvgv** %sv_any239.i, align 8, !tbaa !0
  %xgv_gp240.i = getelementptr inbounds %struct.xpvgv* %271, i64 0, i32 7
  %272 = load %struct.gp** %xgv_gp240.i, align 8, !tbaa !0
  %tobool241.i = icmp eq %struct.gp* %272, null
  br i1 %tobool241.i, label %if.end258.i, label %cond.end247.i

cond.end247.i:                                    ; preds = %land.lhs.true238.i
  %gp_io245.i = getelementptr inbounds %struct.gp* %272, i64 0, i32 2
  %273 = load %struct.io** %gp_io245.i, align 8, !tbaa !0
  %tobool249.i = icmp eq %struct.io* %273, null
  br i1 %tobool249.i, label %if.end258.i, label %land.lhs.true250.i

land.lhs.true250.i:                               ; preds = %cond.end247.i
  %sv_any251.i = getelementptr inbounds %struct.io* %273, i64 0, i32 0
  %274 = load %struct.xpvio** %sv_any251.i, align 8, !tbaa !0
  %xio_ofp.i = getelementptr inbounds %struct.xpvio* %274, i64 0, i32 8
  %275 = load %struct._PerlIO*** %xio_ofp.i, align 8, !tbaa !0
  %tobool252.i = icmp eq %struct._PerlIO** %275, null
  br i1 %tobool252.i, label %if.end258.i, label %if.then253.i

if.then253.i:                                     ; preds = %land.lhs.true250.i
  %xio_type255.i = getelementptr inbounds %struct.xpvio* %274, i64 0, i32 21
  %276 = load i8* %xio_type255.i, align 1, !tbaa !1
  %conv256.i = sext i8 %276 to i32
  %call257.i = call i32 @PerlIO_binmode(%struct._PerlIO** %275, i32 %conv256.i, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str131, i64 0, i64 0)) #7
  %.pre187.i = load i32* @PL_unicode, align 4, !tbaa !3
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.then253.i, %land.lhs.true250.i, %cond.end247.i, %land.lhs.true238.i, %land.lhs.true233.i, %if.end226.i
  %277 = phi i32 [ %267, %if.end226.i ], [ %267, %land.lhs.true233.i ], [ %267, %land.lhs.true238.i ], [ %267, %land.lhs.true250.i ], [ %267, %cond.end247.i ], [ %.pre187.i, %if.then253.i ]
  %and259.i = and i32 %277, 4
  %tobool260.i = icmp ne i32 %and259.i, 0
  %278 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool262.i = icmp ne %struct.gv* %278, null
  %brmerge83.demorgan.i = and i1 %tobool260.i, %tobool262.i
  br i1 %brmerge83.demorgan.i, label %land.lhs.true265.i, label %if.end291.i

land.lhs.true265.i:                               ; preds = %if.end258.i
  %279 = getelementptr inbounds %struct.gv* %278, i64 0, i32 2
  %280 = load i32* %279, align 4, !tbaa !3
  %and267.i = and i32 %280, 255
  %cmp268.i = icmp eq i32 %and267.i, 13
  br i1 %cmp268.i, label %land.lhs.true270.i, label %if.end291.i

land.lhs.true270.i:                               ; preds = %land.lhs.true265.i
  %sv_any271.i = getelementptr inbounds %struct.gv* %278, i64 0, i32 0
  %281 = load %struct.xpvgv** %sv_any271.i, align 8, !tbaa !0
  %xgv_gp272.i = getelementptr inbounds %struct.xpvgv* %281, i64 0, i32 7
  %282 = load %struct.gp** %xgv_gp272.i, align 8, !tbaa !0
  %tobool273.i = icmp eq %struct.gp* %282, null
  br i1 %tobool273.i, label %if.end291.i, label %cond.end279.i

cond.end279.i:                                    ; preds = %land.lhs.true270.i
  %gp_io277.i = getelementptr inbounds %struct.gp* %282, i64 0, i32 2
  %283 = load %struct.io** %gp_io277.i, align 8, !tbaa !0
  %tobool281.i = icmp eq %struct.io* %283, null
  br i1 %tobool281.i, label %if.end291.i, label %land.lhs.true282.i

land.lhs.true282.i:                               ; preds = %cond.end279.i
  %sv_any283.i = getelementptr inbounds %struct.io* %283, i64 0, i32 0
  %284 = load %struct.xpvio** %sv_any283.i, align 8, !tbaa !0
  %xio_ofp284.i = getelementptr inbounds %struct.xpvio* %284, i64 0, i32 8
  %285 = load %struct._PerlIO*** %xio_ofp284.i, align 8, !tbaa !0
  %tobool285.i = icmp eq %struct._PerlIO** %285, null
  br i1 %tobool285.i, label %if.end291.i, label %if.then286.i

if.then286.i:                                     ; preds = %land.lhs.true282.i
  %xio_type288.i = getelementptr inbounds %struct.xpvio* %284, i64 0, i32 21
  %286 = load i8* %xio_type288.i, align 1, !tbaa !1
  %conv289.i = sext i8 %286 to i32
  %call290.i = call i32 @PerlIO_binmode(%struct._PerlIO** %285, i32 %conv289.i, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str131, i64 0, i64 0)) #7
  %.pre188.i = load i32* @PL_unicode, align 4, !tbaa !3
  br label %if.end291.i

if.end291.i:                                      ; preds = %if.then286.i, %land.lhs.true282.i, %cond.end279.i, %land.lhs.true270.i, %land.lhs.true265.i, %if.end258.i
  %287 = phi i32 [ %277, %if.end258.i ], [ %277, %land.lhs.true265.i ], [ %277, %land.lhs.true270.i ], [ %277, %land.lhs.true282.i ], [ %277, %cond.end279.i ], [ %.pre188.i, %if.then286.i ]
  %and292.i = and i32 %287, 24
  %tobool293.i = icmp eq i32 %and292.i, 0
  br i1 %tobool293.i, label %if.end321.i, label %land.lhs.true294.i

land.lhs.true294.i:                               ; preds = %if.end291.i
  %call295.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8]* @.str132, i64 0, i64 0), i32 1, i32 4) #7
  %sv_any296.i = getelementptr inbounds %struct.gv* %call295.i, i64 0, i32 0
  %288 = load %struct.xpvgv** %sv_any296.i, align 8, !tbaa !0
  %xgv_gp297.i = getelementptr inbounds %struct.xpvgv* %288, i64 0, i32 7
  %289 = load %struct.gp** %xgv_gp297.i, align 8, !tbaa !0
  %gp_sv.i = getelementptr inbounds %struct.gp* %289, i64 0, i32 0
  %290 = load %struct.sv** %gp_sv.i, align 8, !tbaa !0
  %tobool298.i = icmp eq %struct.sv* %290, null
  br i1 %tobool298.i, label %if.end321.i, label %if.then299.i

if.then299.i:                                     ; preds = %land.lhs.true294.i
  %291 = load i32* @PL_unicode, align 4, !tbaa !3
  %and300.i = and i32 %291, 8
  %and301.i = and i32 %291, 16
  %tobool302.i = icmp eq i32 %and300.i, 0
  %tobool304.i = icmp ne i32 %and301.i, 0
  br i1 %tobool302.i, label %if.else308.i, label %if.then303.i

if.then303.i:                                     ; preds = %if.then299.i
  br i1 %tobool304.i, label %if.then305.i, label %if.else306.i

if.then305.i:                                     ; preds = %if.then303.i
  call void @Perl_sv_setpvn(%struct.sv* %290, i8* getelementptr inbounds ([12 x i8]* @.str133, i64 0, i64 0), i64 11) #7
  br label %if.end312.i

if.else306.i:                                     ; preds = %if.then303.i
  call void @Perl_sv_setpvn(%struct.sv* %290, i8* getelementptr inbounds ([7 x i8]* @.str134, i64 0, i64 0), i64 6) #7
  br label %if.end312.i

if.else308.i:                                     ; preds = %if.then299.i
  br i1 %tobool304.i, label %if.then310.i, label %if.end312.i

if.then310.i:                                     ; preds = %if.else308.i
  call void @Perl_sv_setpvn(%struct.sv* %290, i8* getelementptr inbounds ([7 x i8]* @.str135, i64 0, i64 0), i64 6) #7
  br label %if.end312.i

if.end312.i:                                      ; preds = %if.then310.i, %if.else308.i, %if.else306.i, %if.then305.i
  %sv_flags313.i = getelementptr inbounds %struct.sv* %290, i64 0, i32 2
  %292 = load i32* %sv_flags313.i, align 4, !tbaa !3
  %and314.i = and i32 %292, 16384
  %tobool315.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.i, label %if.end321.i, label %if.then316.i

if.then316.i:                                     ; preds = %if.end312.i
  %call317.i = call i32 @Perl_mg_set(%struct.sv* %290) #7
  br label %if.end321.i

if.end321.i:                                      ; preds = %if.then316.i, %if.end312.i, %land.lhs.true294.i, %if.end291.i, %if.then190.i, %if.end188.i
  %293 = load volatile %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  store volatile %struct._PerlIO** null, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %294 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  call void @Perl_lex_start(%struct.sv* %294) #7
  store volatile %struct._PerlIO** %293, %struct._PerlIO*** @PL_rsfp, align 8, !tbaa !0
  %call.i69.i = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8]* @.str138, i64 0, i64 0), i64 4) #7
  store %struct.sv* %call.i69.i, %struct.sv** @PL_subname, align 8, !tbaa !0
  %call322.i = call i32* @__errno_location() #7
  store i32 0, i32* %call322.i, align 4, !tbaa !3
  store i32 0, i32* @PL_error_count, align 4, !tbaa !3
  %call323.i = call i32 @Perl_yyparse() #7
  %295 = load i32* @PL_error_count, align 4, !tbaa !3
  %296 = or i32 %295, %call323.i
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %if.end332.i, label %if.then327.i

if.then327.i:                                     ; preds = %if.end321.i
  %298 = load i8* @PL_minus_c, align 1, !tbaa !1
  %tobool328.i = icmp eq i8 %298, 0
  %299 = load i8** @PL_origfilename, align 8, !tbaa !0
  br i1 %tobool328.i, label %if.else330.i, label %if.then329.i

if.then329.i:                                     ; preds = %if.then327.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str136, i64 0, i64 0), i8* %299) #7
  br label %if.end332.i

if.else330.i:                                     ; preds = %if.then327.i
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str137, i64 0, i64 0), i8* %299) #7
  br label %if.end332.i

if.end332.i:                                      ; preds = %if.else330.i, %if.then329.i, %if.end321.i
  %300 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line.i = getelementptr inbounds %struct.cop* %300, i64 0, i32 13
  store i32 0, i32* %cop_line.i, align 4, !tbaa !3
  %301 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %301, %struct.hv** @PL_curstash, align 8, !tbaa !0
  store i8 0, i8* @PL_preprocess, align 1, !tbaa !1
  %302 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool333.i = icmp eq %struct.sv* %302, null
  br i1 %tobool333.i, label %if.end338.i, label %if.then334.i

if.then334.i:                                     ; preds = %if.end332.i
  call void @Perl_sv_free(%struct.sv* %302) #7
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8, !tbaa !0
  br label %if.end338.i

if.end338.i:                                      ; preds = %if.then334.i, %if.end332.i
  %303 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and340.i = and i8 %303, 9
  %tobool341.i = icmp eq i8 %and340.i, 0
  br i1 %tobool341.i, label %if.end344.i, label %if.then342.i

if.then342.i:                                     ; preds = %if.end338.i
  %304 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_filegv.i = getelementptr inbounds %struct.cop* %304, i64 0, i32 10
  %305 = bitcast %struct.gv** %cop_filegv.i to %struct.sv**
  call void @Perl_save_sptr(%struct.sv** %305) #7
  %306 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_line343.i = getelementptr inbounds %struct.cop* %306, i64 0, i32 13
  call void @Perl_save_I32(i32* %cop_line343.i) #7
  %307 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  call void @Perl_gv_check(%struct.hv* %307) #7
  br label %if.end344.i

if.end344.i:                                      ; preds = %if.then342.i, %if.end338.i
  call void @Perl_pop_scope() #7
  %308 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %309 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp345.i = icmp sgt i32 %308, %309
  br i1 %cmp345.i, label %if.then347.i, label %S_parse_body.exit

if.then347.i:                                     ; preds = %if.end344.i
  call void @Perl_free_tmps() #7
  br label %S_parse_body.exit

S_parse_body.exit:                                ; preds = %if.end344.i, %if.then347.i
  call void @Perl_push_scope() #7
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 1, i8* %dosearch.i)
  %310 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %tobool117 = icmp eq %struct.av* %310, null
  br i1 %tobool117, label %sw.epilog, label %if.then118

if.then118:                                       ; preds = %S_parse_body.exit
  call void @Perl_call_list(i32 %29, %struct.av* %310) #8
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end112
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %while.cond122.preheader

while.cond122.preheader:                          ; preds = %if.end112, %sw.bb120
  %311 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp123229 = icmp sgt i32 %311, %29
  br i1 %cmp123229, label %while.body125, label %while.end126

while.body125:                                    ; preds = %while.cond122.preheader, %while.body125
  call void @Perl_pop_scope() #7
  %312 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp123 = icmp sgt i32 %312, %29
  br i1 %cmp123, label %while.body125, label %while.end126

while.end126:                                     ; preds = %while.body125, %while.cond122.preheader
  %313 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %314 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp127 = icmp sgt i32 %313, %314
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %while.end126
  call void @Perl_free_tmps() #7
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %while.end126
  %315 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %315, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %316 = load %struct.av** @PL_checkav, align 8, !tbaa !0
  %tobool131 = icmp eq %struct.av* %316, null
  br i1 %tobool131, label %if.end133, label %if.then132

if.then132:                                       ; preds = %if.end130
  call void @Perl_call_list(i32 %29, %struct.av* %316) #8
  br label %if.end133

if.end133:                                        ; preds = %if.end130, %if.then132
  %317 = load i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end112
  %318 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool135 = icmp eq %struct.gv* %318, null
  br i1 %tobool135, label %cond.false, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %sw.bb134
  %sv_flags = getelementptr inbounds %struct.gv* %318, i64 0, i32 2
  %319 = load i32* %sv_flags, align 4, !tbaa !3
  %and137 = and i32 %319, 255
  %cmp138 = icmp eq i32 %and137, 13
  br i1 %cmp138, label %land.lhs.true140, label %cond.false

land.lhs.true140:                                 ; preds = %land.lhs.true136
  %sv_any = getelementptr inbounds %struct.gv* %318, i64 0, i32 0
  %320 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %320, i64 0, i32 7
  %321 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %321, i64 0, i32 2
  %322 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool141 = icmp eq %struct.io* %322, null
  br i1 %tobool141, label %cond.false, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %land.lhs.true140
  %sv_any146 = getelementptr inbounds %struct.io* %322, i64 0, i32 0
  %323 = load %struct.xpvio** %sv_any146, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %323, i64 0, i32 8
  %324 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool147 = icmp eq %struct._PerlIO** %324, null
  br i1 %tobool147, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true142, %land.lhs.true140, %sw.bb134, %land.lhs.true136
  %call153 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true142, %cond.false
  %cond = phi %struct._PerlIO** [ %call153, %cond.false ], [ %324, %land.lhs.true142 ]
  %call154 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then118, %S_parse_body.exit, %if.end112, %cond.end, %if.end133
  %ret.0 = phi i32 [ %call114, %if.end112 ], [ 1, %cond.end ], [ %317, %if.end133 ], [ 0, %S_parse_body.exit ], [ 0, %if.then118 ]
  %325 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %325, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then106
  %retval.0 = phi i32 [ 0, %if.then106 ], [ %ret.0, %sw.epilog ]
  call void @llvm.lifetime.end(i64 216, i8* %0) #2
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_get_hash_seed() #3

; Function Attrs: optsize
declare void @Perl_my_setenv(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @Perl_savepv(i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_init_postdump_symbols(i32 %argc, i8** nocapture %argv, i8** %env) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  store %struct.sv* %call, %struct.sv** @PL_toptarget, align 8, !tbaa !0
  %call1 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 14) #7
  %0 = load %struct.sv** @PL_toptarget, align 8, !tbaa !0
  tail call void @Perl_sv_setpvn(%struct.sv* %0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  %call2 = tail call %struct.sv* @Perl_newSV(i64 0) #7
  store %struct.sv* %call2, %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  %call3 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call2, i32 14) #7
  %1 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  tail call void @Perl_sv_setpvn(%struct.sv* %1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  %2 = load %struct.sv** @PL_bodytarget, align 8, !tbaa !0
  store %struct.sv* %2, %struct.sv** @PL_formtarget, align 8, !tbaa !0
  store i8 1, i8* @PL_tainted, align 1, !tbaa !1
  tail call void @Perl_init_argv_symbols(i32 %argc, i8** %argv) #8
  %call4 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str62, i64 0, i64 0), i32 1, i32 4) #7
  %tobool = icmp eq %struct.gv* %call4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call4, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %4, i64 0, i32 0
  %5 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %6 = load i8** @PL_origfilename, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* %6) #7
  tail call void @Perl_magicname(i8* getelementptr inbounds ([2 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str62, i64 0, i64 0), i32 1) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call.i = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str68, i64 0, i64 0), i32 1, i32 4) #7
  %tobool.i = icmp eq %struct.gv* %call.i, null
  br i1 %tobool.i, label %S_set_caret_X.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %sv_any.i = getelementptr inbounds %struct.gv* %call.i, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !0
  %gp_sv.i = getelementptr inbounds %struct.gp* %8, i64 0, i32 0
  %9 = load %struct.sv** %gp_sv.i, align 8, !tbaa !0
  %10 = load i8*** @PL_origargv, align 8, !tbaa !0
  %11 = load i8** %10, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %9, i8* %11) #7
  br label %S_set_caret_X.exit

S_set_caret_X.exit:                               ; preds = %if.end, %if.then.i
  %call5 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([4 x i8]* @.str63, i64 0, i64 0), i32 1, i32 11) #7
  store %struct.gv* %call5, %struct.gv** @PL_envgv, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.gv* %call5, null
  br i1 %tobool6, label %if.end52, label %if.then7

if.then7:                                         ; preds = %S_set_caret_X.exit
  %sv_any8 = getelementptr inbounds %struct.gv* %call5, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 11
  %13 = load i8* %xgv_flags, align 1, !tbaa !1
  %or = or i8 %13, 2
  store i8 %or, i8* %xgv_flags, align 1, !tbaa !1
  %14 = load %struct.gv** @PL_envgv, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.gv* %14, i64 0, i32 0
  %15 = load %struct.xpvgv** %sv_any10, align 8, !tbaa !0
  %xgv_gp11 = getelementptr inbounds %struct.xpvgv* %15, i64 0, i32 7
  %16 = load %struct.gp** %xgv_gp11, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %16, i64 0, i32 5
  %17 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.hv* %17, null
  br i1 %tobool12, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then7
  %call16 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %14) #7
  %sv_any17 = getelementptr inbounds %struct.gv* %call16, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any17, align 8, !tbaa !0
  %xgv_gp18 = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp18, align 8, !tbaa !0
  %gp_hv19 = getelementptr inbounds %struct.gp* %19, i64 0, i32 5
  %20 = load %struct.hv** %gp_hv19, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then7, %cond.false
  %cond = phi %struct.hv* [ %20, %cond.false ], [ %17, %if.then7 ]
  tail call void @Perl_hv_magic(%struct.hv* %cond, %struct.gv* null, i32 69) #7
  %tobool20 = icmp eq i8** %env, null
  %21 = load i8*** @environ, align 8, !tbaa !0
  %.env = select i1 %tobool20, i8** %21, i8** %env
  %cmp = icmp eq i8** %.env, %21
  br i1 %cmp, label %if.end25, label %if.then24

if.then24:                                        ; preds = %cond.end
  store i8* null, i8** %21, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %cond.end, %if.then24
  %tobool26 = icmp eq i8** %.env, null
  br i1 %tobool26, label %if.end52, label %if.then27

if.then27:                                        ; preds = %if.end25
  %22 = load i8** %.env, align 8, !tbaa !0
  %tobool2894 = icmp eq i8* %22, null
  br i1 %tobool2894, label %if.end52, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then27
  %23 = load i8*** @environ, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %24 = phi i8* [ %22, %for.body.lr.ph ], [ %28, %for.inc ]
  %origenv.096 = phi i8** [ %23, %for.body.lr.ph ], [ %origenv.1, %for.inc ]
  %env.addr.195 = phi i8** [ %.env, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call29 = tail call i8* @strchr(i8* %24, i32 61) #7
  %tobool30 = icmp eq i8* %call29, null
  %cmp31 = icmp eq i8* %call29, %24
  %or.cond = or i1 %tobool30, %cmp31
  br i1 %or.cond, label %for.inc, label %if.end34

if.end34:                                         ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %call29, i64 1
  %call35 = tail call %struct.sv* @Perl_newSVpv(i8* %add.ptr, i64 0) #7
  %25 = load i8** %env.addr.195, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %call29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  %call37 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %cond, i8* %25, i32 %conv36, %struct.sv* %call35, i32 0) #7
  %26 = load i8*** @environ, align 8, !tbaa !0
  %cmp38 = icmp eq i8** %env.addr.195, %26
  br i1 %cmp38, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end34
  %call41 = tail call i32 @Perl_mg_set(%struct.sv* %call35) #7
  %.pre = load i8*** @environ, align 8, !tbaa !0
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.then40
  %27 = phi i8** [ %env.addr.195, %if.end34 ], [ %.pre, %if.then40 ]
  %cmp43 = icmp eq i8** %origenv.096, %27
  br i1 %cmp43, label %for.inc, label %if.then45

if.then45:                                        ; preds = %if.end42
  %sub.ptr.lhs.cast46 = ptrtoint i8** %env.addr.195 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8** %origenv.096 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub48, 3
  %add.ptr49 = getelementptr inbounds i8** %27, i64 %sub.ptr.div
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %for.body, %if.then45
  %env.addr.2 = phi i8** [ %add.ptr49, %if.then45 ], [ %env.addr.195, %if.end42 ], [ %env.addr.195, %for.body ]
  %origenv.1 = phi i8** [ %27, %if.then45 ], [ %origenv.096, %if.end42 ], [ %origenv.096, %for.body ]
  %incdec.ptr = getelementptr inbounds i8** %env.addr.2, i64 1
  %28 = load i8** %incdec.ptr, align 8, !tbaa !0
  %tobool28 = icmp eq i8* %28, null
  br i1 %tobool28, label %if.end52, label %for.body

if.end52:                                         ; preds = %if.then27, %for.inc, %if.end25, %S_set_caret_X.exit
  store i8 0, i8* @PL_tainted, align 1, !tbaa !1
  %call53 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str64, i64 0, i64 0), i32 1, i32 4) #7
  %tobool54 = icmp eq %struct.gv* %call53, null
  br i1 %tobool54, label %if.end69, label %if.then55

if.then55:                                        ; preds = %if.end52
  %sv_any56 = getelementptr inbounds %struct.gv* %call53, i64 0, i32 0
  %29 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv* %29, i64 0, i32 7
  %30 = load %struct.gp** %xgv_gp57, align 8, !tbaa !0
  %gp_sv58 = getelementptr inbounds %struct.gp* %30, i64 0, i32 0
  %31 = load %struct.sv** %gp_sv58, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %31, i64 0, i32 2
  %32 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %32, -8388609
  store i32 %and, i32* %sv_flags, align 4, !tbaa !3
  %call62 = tail call i32 @getpid() #7
  %conv63 = sext i32 %call62 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %31, i64 %conv63) #7
  %33 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp65 = getelementptr inbounds %struct.xpvgv* %33, i64 0, i32 7
  %34 = load %struct.gp** %xgv_gp65, align 8, !tbaa !0
  %gp_sv66 = getelementptr inbounds %struct.gp* %34, i64 0, i32 0
  %35 = load %struct.sv** %gp_sv66, align 8, !tbaa !0
  %sv_flags67 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %36 = load i32* %sv_flags67, align 4, !tbaa !3
  %or68 = or i32 %36, 8388608
  store i32 %or68, i32* %sv_flags67, align 4, !tbaa !3
  br label %if.end69

if.end69:                                         ; preds = %if.end52, %if.then55
  %37 = load i8* @PL_minus_a, align 1, !tbaa !1
  %tobool70 = icmp eq i8 %37, 0
  br i1 %tobool70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end69
  %call72 = tail call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8]* @.str65, i64 0, i64 0), i32 3) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end69, %if.then71
  %call74 = tail call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8]* @.str66, i64 0, i64 0), i32 3) #8
  %call75 = tail call %struct.av* @Perl_get_av(i8* getelementptr inbounds ([8 x i8]* @.str67, i64 0, i64 0), i32 3) #8
  ret void
}

; Function Attrs: optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare i32 @PerlIO_printf(%struct._PerlIO**, i8*, ...) #3

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stderr() #3

; Function Attrs: nounwind optsize uwtable
define i32 @perl_run(%struct.interpreter* nocapture %my_perl) #0 {
entry:
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %0) #2
  %1 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %2 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %2, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %redo_body
    i32 2, label %while.cond.preheader
    i32 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %3, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  br label %redo_body

redo_body:                                        ; preds = %while.cond14.preheader, %if.end40, %entry, %sw.bb
  %4 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool.i = icmp eq %struct.op* %4, null
  br i1 %tobool.i, label %if.then.i, label %if.then31.i

if.then.i:                                        ; preds = %redo_body
  %5 = load i8* @PL_minus_c, align 1, !tbaa !1
  %tobool1.i = icmp eq i8 %5, 0
  br i1 %tobool1.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %6 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool3.i = icmp eq %struct.gv* %6, null
  br i1 %tobool3.i, label %cond.false.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %sv_flags.i = getelementptr inbounds %struct.gv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %7, 255
  %cmp.i = icmp eq i32 %and.i, 13
  br i1 %cmp.i, label %land.lhs.true4.i, label %cond.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sv_any.i = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !0
  %gp_io.i = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io.i, align 8, !tbaa !0
  %tobool5.i = icmp eq %struct.io* %10, null
  br i1 %tobool5.i, label %cond.false.i, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %sv_any10.i = getelementptr inbounds %struct.io* %10, i64 0, i32 0
  %11 = load %struct.xpvio** %sv_any10.i, align 8, !tbaa !0
  %xio_ofp.i = getelementptr inbounds %struct.xpvio* %11, i64 0, i32 8
  %12 = load %struct._PerlIO*** %xio_ofp.i, align 8, !tbaa !0
  %tobool11.i = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool11.i, label %cond.false.i, label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true6.i, %land.lhs.true4.i, %land.lhs.true.i, %if.then2.i
  %call.i = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true6.i
  %cond.i = phi %struct._PerlIO** [ %call.i, %cond.false.i ], [ %12, %land.lhs.true6.i ]
  %13 = load i8** @PL_origfilename, align 8, !tbaa !0
  %call17.i = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond.i, i8* getelementptr inbounds ([14 x i8]* @.str102, i64 0, i64 0), i8* %13) #7
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  call fastcc void @S_my_exit_jump() #7
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end.i, %if.then.i
  %14 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool18.i = icmp eq i32 %14, 0
  br i1 %tobool18.i, label %if.end25.i, label %land.lhs.true19.i

land.lhs.true19.i:                                ; preds = %if.end.i
  %and20.i = and i32 %14, 32
  %tobool21.i = icmp ne i32 %and20.i, 0
  %15 = load %struct.sv** @PL_DBsingle, align 8, !tbaa !0
  %tobool23.i = icmp ne %struct.sv* %15, null
  %or.cond.i = and i1 %tobool21.i, %tobool23.i
  br i1 %or.cond.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %land.lhs.true19.i
  call void @Perl_sv_setiv(%struct.sv* %15, i64 1) #7
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %land.lhs.true19.i, %if.end.i
  %16 = load %struct.av** @PL_initav, align 8, !tbaa !0
  %tobool26.i = icmp eq %struct.av* %16, null
  br i1 %tobool26.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @Perl_call_list(i32 %1, %struct.av* %16) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end25.i, %if.then27.i
  %.pr.i = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool30.i = icmp eq %struct.op* %.pr.i, null
  br i1 %tobool30.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i, %redo_body
  %17 = phi %struct.op* [ %.pr.i, %if.end29.i ], [ %4, %redo_body ]
  store %struct.op* %17, %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  %18 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call32.i = call i32 %18() #7
  br label %S_run_body.exit

if.else.i:                                        ; preds = %if.end29.i
  %19 = load %struct.op** @PL_main_start, align 8, !tbaa !0
  %tobool33.i = icmp eq %struct.op* %19, null
  br i1 %tobool33.i, label %S_run_body.exit, label %if.then34.i

if.then34.i:                                      ; preds = %if.else.i
  %20 = load %struct.cv** @PL_main_cv, align 8, !tbaa !0
  %sv_any35.i = getelementptr inbounds %struct.cv* %20, i64 0, i32 0
  %21 = load %struct.xpvcv** %sv_any35.i, align 8, !tbaa !0
  %xcv_depth.i = getelementptr inbounds %struct.xpvcv* %21, i64 0, i32 14
  store i64 1, i64* %xcv_depth.i, align 8, !tbaa !5
  store %struct.op* %19, %struct.op** @PL_op, align 8, !tbaa !0
  %22 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call36.i = call i32 %22() #7
  br label %S_run_body.exit

S_run_body.exit:                                  ; preds = %if.then31.i, %if.else.i, %if.then34.i
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  call fastcc void @S_my_exit_jump() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %S_run_body.exit
  %23 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp95 = icmp sgt i32 %23, %1
  br i1 %cmp95, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  call void @Perl_pop_scope() #7
  %24 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp = icmp sgt i32 %24, %1
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %25 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %26 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %25, %26
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @Perl_free_tmps() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %27 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %27, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %28 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %and = and i8 %28, 2
  %29 = load %struct.av** @PL_endav, align 8, !tbaa !0
  %notlhs = icmp ne i8 %and, 0
  %notrhs = icmp eq %struct.av* %29, null
  %or.cond.not = or i1 %notrhs, %notlhs
  %30 = load i8* @PL_minus_c, align 1, !tbaa !1
  %tobool8 = icmp ne i8 %30, 0
  %or.cond86 = or i1 %or.cond.not, %tobool8
  br i1 %or.cond86, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @Perl_call_list(i32 %1, %struct.av* %29) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then9
  %31 = load i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %32 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool12 = icmp eq %struct.op* %32, null
  br i1 %tobool12, label %if.end51, label %while.cond14.preheader

while.cond14.preheader:                           ; preds = %sw.bb11
  %33 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %34 = load %struct.av** @PL_mainstack, align 8, !tbaa !0
  %cmp1596 = icmp eq %struct.av* %33, %34
  br i1 %cmp1596, label %redo_body, label %while.body17

while.body17:                                     ; preds = %while.cond14.preheader, %if.end40
  call void @Perl_dounwind(i32 -1) #7
  %35 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %36 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %36, i64 0, i32 5
  %37 = load %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.stackinfo* %37, null
  br i1 %tobool18, label %if.then19, label %if.end40

if.then19:                                        ; preds = %while.body17
  %38 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool20 = icmp eq %struct.gv* %38, null
  br i1 %tobool20, label %cond.false, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.then19
  %sv_flags = getelementptr inbounds %struct.gv* %38, i64 0, i32 2
  %39 = load i32* %sv_flags, align 4, !tbaa !3
  %and22 = and i32 %39, 255
  %cmp23 = icmp eq i32 %and22, 13
  br i1 %cmp23, label %land.lhs.true25, label %cond.false

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %sv_any = getelementptr inbounds %struct.gv* %38, i64 0, i32 0
  %40 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %40, i64 0, i32 7
  %41 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %41, i64 0, i32 2
  %42 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool26 = icmp eq %struct.io* %42, null
  br i1 %tobool26, label %cond.false, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %sv_any31 = getelementptr inbounds %struct.io* %42, i64 0, i32 0
  %43 = load %struct.xpvio** %sv_any31, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %43, i64 0, i32 8
  %44 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool32 = icmp eq %struct._PerlIO** %44, null
  br i1 %tobool32, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true27, %land.lhs.true25, %if.then19, %land.lhs.true21
  %call38 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true27, %cond.false
  %cond = phi %struct._PerlIO** [ %call38, %cond.false ], [ %44, %land.lhs.true27 ]
  %call39 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0)) #7
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  call fastcc void @S_my_exit_jump() #7
  br label %if.end40

if.end40:                                         ; preds = %while.body17, %cond.end
  %45 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %46 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any41 = getelementptr inbounds %struct.av* %46, i64 0, i32 0
  %47 = load %struct.xpvav** %sv_any41, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %47, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8, !tbaa !5
  %si_stack = getelementptr inbounds %struct.stackinfo* %37, i64 0, i32 0
  %48 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any42 = getelementptr inbounds %struct.av* %48, i64 0, i32 0
  %49 = load %struct.xpvav** %sv_any42, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %49, i64 0, i32 0
  %50 = load i8** %xav_array, align 8, !tbaa !0
  %51 = bitcast i8* %50 to %struct.sv**
  store %struct.sv** %51, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %52 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any44 = getelementptr inbounds %struct.av* %52, i64 0, i32 0
  %53 = load %struct.xpvav** %sv_any44, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %53, i64 0, i32 2
  %54 = load i64* %xav_max, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.sv** %51, i64 %54
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %55 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any46 = getelementptr inbounds %struct.av* %55, i64 0, i32 0
  %56 = load %struct.xpvav** %sv_any46, align 8, !tbaa !0
  %xav_fill47 = getelementptr inbounds %struct.xpvav* %56, i64 0, i32 1
  %57 = load i64* %xav_fill47, align 8, !tbaa !5
  %add.ptr48 = getelementptr inbounds %struct.sv** %51, i64 %57
  store %struct.sv** %add.ptr48, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %58 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %58, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %37, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %59 = load %struct.av** @PL_mainstack, align 8, !tbaa !0
  %cmp15 = icmp eq %struct.av* %58, %59
  br i1 %cmp15, label %redo_body, label %while.body17

if.end51:                                         ; preds = %sw.bb11
  %60 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.gv* %60, null
  br i1 %tobool52, label %cond.false76, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end51
  %sv_flags54 = getelementptr inbounds %struct.gv* %60, i64 0, i32 2
  %61 = load i32* %sv_flags54, align 4, !tbaa !3
  %and55 = and i32 %61, 255
  %cmp56 = icmp eq i32 %and55, 13
  br i1 %cmp56, label %land.lhs.true58, label %cond.false76

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %sv_any59 = getelementptr inbounds %struct.gv* %60, i64 0, i32 0
  %62 = load %struct.xpvgv** %sv_any59, align 8, !tbaa !0
  %xgv_gp60 = getelementptr inbounds %struct.xpvgv* %62, i64 0, i32 7
  %63 = load %struct.gp** %xgv_gp60, align 8, !tbaa !0
  %gp_io61 = getelementptr inbounds %struct.gp* %63, i64 0, i32 2
  %64 = load %struct.io** %gp_io61, align 8, !tbaa !0
  %tobool62 = icmp eq %struct.io* %64, null
  br i1 %tobool62, label %cond.false76, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %sv_any67 = getelementptr inbounds %struct.io* %64, i64 0, i32 0
  %65 = load %struct.xpvio** %sv_any67, align 8, !tbaa !0
  %xio_ofp68 = getelementptr inbounds %struct.xpvio* %65, i64 0, i32 8
  %66 = load %struct._PerlIO*** %xio_ofp68, align 8, !tbaa !0
  %tobool69 = icmp eq %struct._PerlIO** %66, null
  br i1 %tobool69, label %cond.false76, label %cond.end78

cond.false76:                                     ; preds = %land.lhs.true63, %land.lhs.true58, %if.end51, %land.lhs.true53
  %call77 = call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end78

cond.end78:                                       ; preds = %land.lhs.true63, %cond.false76
  %cond79 = phi %struct._PerlIO** [ %call77, %cond.false76 ], [ %66, %land.lhs.true63 ]
  %call80 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond79, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #7
  %67 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %68 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp81 = icmp sgt i32 %67, %68
  br i1 %cmp81, label %if.then83, label %sw.epilog

if.then83:                                        ; preds = %cond.end78
  call void @Perl_free_tmps() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end78, %if.then83, %entry, %if.end10
  %ret.0 = phi i32 [ %call, %entry ], [ %31, %if.end10 ], [ 1, %if.then83 ], [ 1, %cond.end78 ]
  %69 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %69, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 216, i8* %0) #2
  ret i32 %ret.0
}

; Function Attrs: optsize
declare void @Perl_dounwind(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_my_exit(i32 %status) #0 {
entry:
  switch i32 %status, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 %status, i32* @PL_statusvalue, align 4, !tbaa !3
  %cmp = icmp eq i32 %status, -1
  br i1 %cmp, label %sw.epilog, label %if.then

if.then:                                          ; preds = %sw.default
  %and = and i32 %status, 65535
  store i32 %and, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb1, %sw.bb
  tail call fastcc void @S_my_exit_jump() #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_get_sv(i8* %name, i32 %create) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* %name, i32 %create, i32 4) #7
  %tobool = icmp eq %struct.gv* %call, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.sv* [ %2, %if.then ], [ null, %entry ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct.av* @Perl_get_av(i8* %name, i32 %create) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* %name, i32 %create, i32 10) #7
  %tobool = icmp eq i32 %create, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %1, i64 0, i32 4
  %2 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.av* %2, null
  br i1 %tobool1, label %cond.false, label %return

cond.false:                                       ; preds = %if.then
  %call5 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call) #7
  %sv_any6 = getelementptr inbounds %struct.gv* %call5, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any6, align 8, !tbaa !0
  %xgv_gp7 = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp7, align 8, !tbaa !0
  %gp_av8 = getelementptr inbounds %struct.gp* %4, i64 0, i32 4
  %5 = load %struct.av** %gp_av8, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %tobool9 = icmp eq %struct.gv* %call, null
  br i1 %tobool9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end
  %sv_any11 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp12, align 8, !tbaa !0
  %gp_av13 = getelementptr inbounds %struct.gp* %7, i64 0, i32 4
  %8 = load %struct.av** %gp_av13, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %cond.false, %if.then, %if.then10
  %retval.0 = phi %struct.av* [ %8, %if.then10 ], [ %5, %cond.false ], [ %2, %if.then ], [ null, %if.end ]
  ret %struct.av* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_AVadd(%struct.gv*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.hv* @Perl_get_hv(i8* %name, i32 %create) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* %name, i32 %create, i32 11) #7
  %tobool = icmp eq i32 %create, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_hv = getelementptr inbounds %struct.gp* %1, i64 0, i32 5
  %2 = load %struct.hv** %gp_hv, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.hv* %2, null
  br i1 %tobool1, label %cond.false, label %return

cond.false:                                       ; preds = %if.then
  %call5 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call) #7
  %sv_any6 = getelementptr inbounds %struct.gv* %call5, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any6, align 8, !tbaa !0
  %xgv_gp7 = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp7, align 8, !tbaa !0
  %gp_hv8 = getelementptr inbounds %struct.gp* %4, i64 0, i32 5
  %5 = load %struct.hv** %gp_hv8, align 8, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %tobool9 = icmp eq %struct.gv* %call, null
  br i1 %tobool9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end
  %sv_any11 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp12, align 8, !tbaa !0
  %gp_hv13 = getelementptr inbounds %struct.gp* %7, i64 0, i32 5
  %8 = load %struct.hv** %gp_hv13, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %cond.false, %if.then, %if.then10
  %retval.0 = phi %struct.hv* [ %8, %if.then10 ], [ %5, %cond.false ], [ %2, %if.then ], [ null, %if.end ]
  ret %struct.hv* %retval.0
}

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_HVadd(%struct.gv*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.cv* @Perl_get_cv(i8* %name, i32 %create) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* %name, i32 %create, i32 12) #7
  %tobool = icmp eq i32 %create, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cvgen = getelementptr inbounds %struct.gp* %1, i64 0, i32 8
  %2 = load i32* %gp_cvgen, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %2, 0
  br i1 %tobool1, label %cond.false, label %if.then

cond.false:                                       ; preds = %land.lhs.true
  %gp_cv = getelementptr inbounds %struct.gp* %1, i64 0, i32 7
  %3 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.cv* %3, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %land.lhs.true
  %call5 = tail call i32 @Perl_start_subparse(i32 0, i32 0) #7
  %call6 = tail call %struct.sv* @Perl_newSVpv(i8* %name, i64 0) #7
  %call7 = tail call %struct.op* @Perl_newSVOP(i32 5, i32 0, %struct.sv* %call6) #7
  %call8 = tail call %struct.cv* @Perl_newSUB(i32 %call5, %struct.op* %call7, %struct.op* null, %struct.op* null) #7
  br label %return

if.end:                                           ; preds = %cond.false, %entry
  %tobool9 = icmp eq %struct.gv* %call, null
  br i1 %tobool9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end
  %sv_any11 = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %4 = load %struct.xpvgv** %sv_any11, align 8, !tbaa !0
  %xgv_gp12 = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp12, align 8, !tbaa !0
  %gp_cvgen13 = getelementptr inbounds %struct.gp* %5, i64 0, i32 8
  %6 = load i32* %gp_cvgen13, align 4, !tbaa !3
  %tobool14 = icmp eq i32 %6, 0
  br i1 %tobool14, label %cond.false16, label %return

cond.false16:                                     ; preds = %if.then10
  %gp_cv19 = getelementptr inbounds %struct.gp* %5, i64 0, i32 7
  %7 = load %struct.cv** %gp_cv19, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %cond.false16, %if.then10, %if.then
  %retval.0 = phi %struct.cv* [ %call8, %if.then ], [ %7, %cond.false16 ], [ null, %if.then10 ], [ null, %if.end ]
  ret %struct.cv* %retval.0
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newSUB(i32, %struct.op*, %struct.op*, %struct.op*) #3

; Function Attrs: optsize
declare i32 @Perl_start_subparse(i32, i32) #3

; Function Attrs: optsize
declare %struct.op* @Perl_newSVOP(i32, i32, %struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_call_argv(i8* %sub_name, i32 %flags, i8** %argv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %1, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp = icmp eq i32* %incdec.ptr, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @Perl_markstack_grow() #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32* [ %.pre, %if.then ], [ %incdec.ptr, %entry ]
  %4 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div25 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div25 to i32
  store i32 %conv, i32* %3, align 4, !tbaa !3
  %tobool = icmp eq i8** %argv, null
  br i1 %tobool, label %if.end15, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %5 = load i8** %argv, align 8, !tbaa !0
  %tobool226 = icmp eq i8* %5, null
  br i1 %tobool226, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end10
  %6 = phi i8* [ %9, %if.end10 ], [ %5, %while.cond.preheader ]
  %sp.028 = phi %struct.sv** [ %incdec.ptr13, %if.end10 ], [ %0, %while.cond.preheader ]
  %argv.addr.027 = phi i8** [ %incdec.ptr14, %if.end10 ], [ %argv, %while.cond.preheader ]
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast3 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast4 = ptrtoint %struct.sv** %sp.028 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %cmp7 = icmp slt i64 %sub.ptr.sub5, 8
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  %call = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.028, %struct.sv** %sp.028, i32 1) #7
  %.pre29 = load i8** %argv.addr.027, align 8, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.body
  %8 = phi i8* [ %.pre29, %if.then9 ], [ %6, %while.body ]
  %sp.1 = phi %struct.sv** [ %call, %if.then9 ], [ %sp.028, %while.body ]
  %call11 = tail call %struct.sv* @Perl_newSVpv(i8* %8, i64 0) #7
  %call12 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call11) #7
  %incdec.ptr13 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %call12, %struct.sv** %incdec.ptr13, align 8, !tbaa !0
  %incdec.ptr14 = getelementptr inbounds i8** %argv.addr.027, i64 1
  %9 = load i8** %incdec.ptr14, align 8, !tbaa !0
  %tobool2 = icmp eq i8* %9, null
  br i1 %tobool2, label %while.end, label %while.body

while.end:                                        ; preds = %if.end10, %while.cond.preheader
  %sp.0.lcssa = phi %struct.sv** [ %0, %while.cond.preheader ], [ %incdec.ptr13, %if.end10 ]
  store %struct.sv** %sp.0.lcssa, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.end, %while.end
  %call.i = tail call %struct.cv* @Perl_get_cv(i8* %sub_name, i32 1) #7
  %10 = bitcast %struct.cv* %call.i to %struct.sv*
  %call1.i = tail call i32 @Perl_call_sv(%struct.sv* %10, i32 %flags) #7
  ret i32 %call1.i
}

; Function Attrs: optsize
declare void @Perl_markstack_grow() #3

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_call_pv(i8* %sub_name, i32 %flags) #0 {
entry:
  %call = tail call %struct.cv* @Perl_get_cv(i8* %sub_name, i32 1) #8
  %0 = bitcast %struct.cv* %call to %struct.sv*
  %call1 = tail call i32 @Perl_call_sv(%struct.sv* %0, i32 %flags) #8
  ret i32 %call1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_call_sv(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %myop = alloca %struct.logop, align 8
  %method_op = alloca %struct.unop, align 8
  %retval1 = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = bitcast %struct.logop* %myop to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #2
  %2 = bitcast %struct.unop* %method_op to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #2
  store volatile i32 0, i32* %retval1, align 4
  %3 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %3, i64 0, i32 3
  %4 = load i8* %je_mustcatch, align 1, !tbaa !1
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %6 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %6) #2
  %and = and i32 %flags, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %7 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %7, i32* @PL_tmps_floor, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 8, i1 false)
  %op_next = getelementptr inbounds %struct.logop* %myop, i64 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8, !tbaa !0
  %and2 = and i32 %flags, 8
  %tobool3 = icmp eq i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %op_flags = getelementptr inbounds %struct.logop* %myop, i64 0, i32 6
  store i8 64, i8* %op_flags, align 4, !tbaa !1
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then4
  %8 = phi i32 [ 0, %if.end ], [ 64, %if.then4 ]
  %and7 = and i32 %flags, 128
  %tobool8 = icmp eq i32 %and7, 0
  br i1 %tobool8, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end6
  %and9 = and i32 %flags, 1
  %9 = or i32 %and9, 2
  br label %cond.end

cond.end:                                         ; preds = %if.end6, %cond.false
  %cond11 = phi i32 [ %9, %cond.false ], [ 1, %if.end6 ]
  %op_flags12 = getelementptr inbounds %struct.logop* %myop, i64 0, i32 6
  %or14 = or i32 %8, %cond11
  %conv15 = trunc i32 %or14 to i8
  store i8 %conv15, i8* %op_flags12, align 4, !tbaa !1
  call void @Perl_save_op() #7
  %10 = bitcast %struct.logop* %myop to %struct.op*
  store %struct.op* %10, %struct.op** @PL_op, align 8, !tbaa !0
  %11 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %12 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %11 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %cond.end
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %12, i32 1) #7
  %.pre = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %cond.end
  %13 = phi %struct.sv** [ %.pre, %if.then17 ], [ %12, %cond.end ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %13, i64 1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.sv* %sv, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %14 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %15 = load i32* %14, align 4, !tbaa !3
  %16 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %17 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool19 = icmp eq i32 %17, 0
  %and20 = and i32 %17, 1
  %tobool21 = icmp eq i32 %and20, 0
  %or.cond = or i1 %tobool19, %tobool21
  br i1 %or.cond, label %if.end43, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end18
  %18 = load %struct.hv** @PL_curstash, align 8, !tbaa !0
  %19 = load %struct.hv** @PL_debstash, align 8, !tbaa !0
  %cmp23 = icmp eq %struct.hv* %18, %19
  br i1 %cmp23, label %if.end43, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %20 = load %struct.cv** @PL_DBcv, align 8, !tbaa !0
  %tobool26 = icmp eq %struct.cv* %20, null
  br i1 %tobool26, label %lor.lhs.false, label %land.lhs.true28

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %21 = load %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %21, i64 0, i32 0
  %22 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %22, i64 0, i32 7
  %23 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_cv = getelementptr inbounds %struct.gp* %23, i64 0, i32 7
  %24 = load %struct.cv** %gp_cv, align 8, !tbaa !0
  store %struct.cv* %24, %struct.cv** @PL_DBcv, align 8, !tbaa !0
  %tobool27 = icmp eq %struct.cv* %24, null
  br i1 %tobool27, label %if.end43, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %lor.lhs.false, %land.lhs.true25
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %25 = load i32* %sv_flags, align 4, !tbaa !3
  %and29 = and i32 %25, 255
  %cmp30 = icmp eq i32 %and29, 12
  br i1 %cmp30, label %lor.lhs.false32, label %land.lhs.true36

lor.lhs.false32:                                  ; preds = %land.lhs.true28
  %sv_any33 = bitcast %struct.sv* %sv to %struct.xpvcv**
  %26 = load %struct.xpvcv** %sv_any33, align 8, !tbaa !0
  %xcv_stash = getelementptr inbounds %struct.xpvcv* %26, i64 0, i32 7
  %27 = load %struct.hv** %xcv_stash, align 8, !tbaa !0
  %cmp34 = icmp eq %struct.hv* %27, %19
  br i1 %cmp34, label %if.end43, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %lor.lhs.false32, %land.lhs.true28
  %and37 = and i32 %flags, 32
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %land.lhs.true36
  %28 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %28, i64 0, i32 7
  %29 = load i8* %op_private, align 1, !tbaa !1
  %or41 = or i8 %29, 16
  store i8 %or41, i8* %op_private, align 1, !tbaa !1
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true36, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true22, %if.end18, %if.then39
  %and44 = and i32 %flags, 64
  %tobool45 = icmp eq i32 %and44, 0
  br i1 %tobool45, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 8, i1 false)
  %30 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_next47 = getelementptr inbounds %struct.unop* %method_op, i64 0, i32 0
  store %struct.op* %30, %struct.op** %op_next47, align 8, !tbaa !0
  %31 = load %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*]* @PL_ppaddr, i64 0, i64 165), align 8, !tbaa !0
  %op_ppaddr = getelementptr inbounds %struct.unop* %method_op, i64 0, i32 2
  store %struct.op* ()* %31, %struct.op* ()** %op_ppaddr, align 8, !tbaa !0
  %32 = load %struct.op* ()** getelementptr inbounds ([0 x %struct.op* ()*]* @PL_ppaddr, i64 0, i64 166), align 8, !tbaa !0
  %op_ppaddr48 = getelementptr inbounds %struct.logop* %myop, i64 0, i32 2
  store %struct.op* ()* %32, %struct.op* ()** %op_ppaddr48, align 8, !tbaa !0
  %33 = bitcast %struct.unop* %method_op to %struct.op*
  store %struct.op* %33, %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.then46
  %and50 = and i32 %flags, 4
  %tobool51 = icmp eq i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  %34 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch53 = getelementptr inbounds %struct.jmpenv* %34, i64 0, i32 3
  store i8 1, i8* %je_mustcatch53, align 1, !tbaa !1
  call fastcc void @S_call_body(%struct.op* %10, i32 0) #8
  %35 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %36 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %36, i64 %idx.ext
  %sub.ptr.lhs.cast54 = ptrtoint %struct.sv** %35 to i64
  %sub.ptr.rhs.cast55 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub56 = sub i64 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %sub.ptr.div57314 = lshr exact i64 %sub.ptr.sub56, 3
  %conv58 = trunc i64 %sub.ptr.div57314 to i32
  store volatile i32 %conv58, i32* %retval1, align 4
  %37 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch59 = getelementptr inbounds %struct.jmpenv* %37, i64 0, i32 3
  store i8 %4, i8* %je_mustcatch59, align 1, !tbaa !1
  br label %if.end264

if.else:                                          ; preds = %if.end49
  %op_other = getelementptr inbounds %struct.logop* %myop, i64 0, i32 9
  store %struct.op* %10, %struct.op** %op_other, align 8, !tbaa !0
  %38 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr60 = getelementptr inbounds i32* %38, i64 -1
  store i32* %incdec.ptr60, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %39 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_flags61 = getelementptr inbounds %struct.op* %39, i64 0, i32 6
  %40 = load i8* %op_flags61, align 1, !tbaa !1
  %conv62 = zext i8 %40 to i32
  %and63 = and i32 %conv62, 3
  %cmp64 = icmp eq i32 %and63, 1
  br i1 %cmp64, label %cond.end87, label %cond.false67

cond.false67:                                     ; preds = %if.else
  %cmp71 = icmp eq i32 %and63, 2
  br i1 %cmp71, label %cond.end87, label %cond.false74

cond.false74:                                     ; preds = %cond.false67
  %cmp78 = icmp eq i32 %and63, 3
  br i1 %cmp78, label %cond.end87, label %cond.false81

cond.false81:                                     ; preds = %cond.false74
  %call82 = call i32 @Perl_block_gimme() #7
  %phitmp = trunc i32 %call82 to i8
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false67, %cond.false74, %cond.false81, %if.else
  %cond88 = phi i8 [ -128, %if.else ], [ 0, %cond.false67 ], [ %phitmp, %cond.false81 ], [ 1, %cond.false74 ]
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %41 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %41, i32* @PL_tmps_floor, align 4, !tbaa !3
  call void @Perl_push_return(%struct.op* null) #7
  %42 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix = getelementptr inbounds %struct.stackinfo* %42, i64 0, i32 2
  %43 = load i32* %si_cxix, align 4, !tbaa !3
  %si_cxmax = getelementptr inbounds %struct.stackinfo* %42, i64 0, i32 3
  %44 = load i32* %si_cxmax, align 4, !tbaa !3
  %cmp89 = icmp slt i32 %43, %44
  br i1 %cmp89, label %cond.true91, label %cond.false93

cond.true91:                                      ; preds = %cond.end87
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %si_cxix, align 4, !tbaa !3
  br label %cond.end96

cond.false93:                                     ; preds = %cond.end87
  %call94 = call i32 @Perl_cxinc() #7
  %45 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix95 = getelementptr inbounds %struct.stackinfo* %45, i64 0, i32 2
  store i32 %call94, i32* %si_cxix95, align 4, !tbaa !3
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false93, %cond.true91
  %46 = phi i32 [ %call94, %cond.false93 ], [ %inc, %cond.true91 ]
  %47 = phi %struct.stackinfo* [ %45, %cond.false93 ], [ %42, %cond.true91 ]
  %idxprom = sext i32 %46 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %47, i64 0, i32 1
  %48 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %cx_type = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 0
  store i32 514, i32* %cx_type, align 4, !tbaa !3
  %49 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %50 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast99 = ptrtoint %struct.sv** %49 to i64
  %sub.ptr.rhs.cast100 = ptrtoint %struct.sv** %50 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %sub.ptr.div102315 = lshr exact i64 %sub.ptr.sub101, 3
  %conv103 = trunc i64 %sub.ptr.div102315 to i32
  %blku_oldsp = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 0
  store i32 %conv103, i32* %blku_oldsp, align 4, !tbaa !3
  %51 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 1
  store %struct.cop* %51, %struct.cop** %blku_oldcop, align 8, !tbaa !0
  %52 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %53 = load i32** @PL_markstack, align 8, !tbaa !0
  %sub.ptr.lhs.cast106 = ptrtoint i32* %52 to i64
  %sub.ptr.rhs.cast107 = ptrtoint i32* %53 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %sub.ptr.div109316 = lshr exact i64 %sub.ptr.sub108, 2
  %conv110 = trunc i64 %sub.ptr.div109316 to i32
  %blku_oldmarksp = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 3
  store i32 %conv110, i32* %blku_oldmarksp, align 4, !tbaa !3
  %54 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldscopesp = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 4
  store i32 %54, i32* %blku_oldscopesp, align 4, !tbaa !3
  %55 = load i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 2
  store i32 %55, i32* %blku_oldretsp, align 4, !tbaa !3
  %56 = load %struct.pmop** @PL_curpm, align 8, !tbaa !0
  %blku_oldpm = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 5
  store %struct.pmop* %56, %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  %blku_gimme = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 6
  store i8 %cond88, i8* %blku_gimme, align 1, !tbaa !1
  %57 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %blk_u = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 7
  %blku_eval = bitcast %union.anon.1* %blk_u to %struct.block_eval*
  %old_in_eval = bitcast %union.anon.1* %blk_u to i32*
  store i32 %57, i32* %old_in_eval, align 4, !tbaa !3
  %58 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.op* %58, i64 0, i32 4
  %59 = load i16* %op_type, align 2, !tbaa !4
  %conv124 = zext i16 %59 to i32
  %old_op_type = getelementptr inbounds %struct.block_eval* %blku_eval, i64 0, i32 1
  store i32 %conv124, i32* %old_op_type, align 4, !tbaa !3
  %old_namesv = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 1
  %60 = bitcast i32* %old_namesv to %struct.sv**
  store %struct.sv* null, %struct.sv** %60, align 8, !tbaa !0
  %61 = load %struct.op** @PL_eval_root, align 8, !tbaa !0
  %62 = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 2
  store %struct.op* %61, %struct.op** %62, align 8, !tbaa !0
  %63 = load %struct.sv** @PL_linestr, align 8, !tbaa !0
  %cur_text = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 3
  %.c = bitcast %struct.sv* %63 to %struct.op*
  store %struct.op* %.c, %struct.op** %cur_text, align 8, !tbaa !0
  %cv = getelementptr inbounds %struct.context* %48, i64 %idxprom, i32 1, i32 0, i32 7, i32 0, i32 4
  store %struct.op* null, %struct.op** %cv, align 8, !tbaa !0
  %64 = load %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.op* %64, %struct.op** @PL_eval_root, align 8, !tbaa !0
  store volatile i32 1, i32* @PL_in_eval, align 4, !tbaa !3
  %and145 = and i32 %flags, 16
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then147, label %if.else149

if.then147:                                       ; preds = %cond.end96
  %65 = load volatile i32* @PL_in_eval, align 4, !tbaa !3
  %or148 = or i32 %65, 4
  store volatile i32 %or148, i32* @PL_in_eval, align 4, !tbaa !3
  br label %if.end152

if.else149:                                       ; preds = %cond.end96
  %66 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any150 = getelementptr inbounds %struct.gv* %66, i64 0, i32 0
  %67 = load %struct.xpvgv** %sv_any150, align 8, !tbaa !0
  %xgv_gp151 = getelementptr inbounds %struct.xpvgv* %67, i64 0, i32 7
  %68 = load %struct.gp** %xgv_gp151, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %68, i64 0, i32 0
  %69 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %69, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then147
  %70 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr153 = getelementptr inbounds i32* %70, i64 1
  store i32* %incdec.ptr153, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %71 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %71, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call154 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call154, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch155 = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch155, align 4, !tbaa !1
  switch i32 %call154, label %sw.epilog [
    i32 0, label %redo_body
    i32 1, label %sw.bb171
    i32 2, label %sw.bb172
    i32 3, label %sw.bb185
  ]

redo_body:                                        ; preds = %if.end152, %if.then187
  call fastcc void @S_call_body(%struct.op* %10, i32 0) #8
  %72 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %73 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idx.ext157 = sext i32 %15 to i64
  %add.ptr158 = getelementptr inbounds %struct.sv** %73, i64 %idx.ext157
  %sub.ptr.lhs.cast159 = ptrtoint %struct.sv** %72 to i64
  %sub.ptr.rhs.cast160 = ptrtoint %struct.sv** %add.ptr158 to i64
  %sub.ptr.sub161 = sub i64 %sub.ptr.lhs.cast159, %sub.ptr.rhs.cast160
  %sub.ptr.div162317 = lshr exact i64 %sub.ptr.sub161, 3
  %conv163 = trunc i64 %sub.ptr.div162317 to i32
  store volatile i32 %conv163, i32* %retval1, align 4
  br i1 %tobool146, label %sw.epilog, label %if.then166

if.then166:                                       ; preds = %redo_body
  %74 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any167 = getelementptr inbounds %struct.gv* %74, i64 0, i32 0
  %75 = load %struct.xpvgv** %sv_any167, align 8, !tbaa !0
  %xgv_gp168 = getelementptr inbounds %struct.xpvgv* %75, i64 0, i32 7
  %76 = load %struct.gp** %xgv_gp168, align 8, !tbaa !0
  %gp_sv169 = getelementptr inbounds %struct.gp* %76, i64 0, i32 0
  %77 = load %struct.sv** %gp_sv169, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %77, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end152
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.bb172

sw.bb172:                                         ; preds = %if.end152, %sw.bb171
  %78 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %78, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %79 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %80 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp173 = icmp sgt i32 %79, %80
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %sw.bb172
  call void @Perl_free_tmps() #7
  br label %if.end176

if.end176:                                        ; preds = %sw.bb172, %if.then175
  %81 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %81, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %82 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %tobool178 = icmp eq i32 %82, 0
  br i1 %tobool178, label %if.end184, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.end176
  %83 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %and181 = and i8 %83, 1
  %tobool182 = icmp eq i8 %and181, 0
  br i1 %tobool182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %land.lhs.true179
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str12, i64 0, i64 0)) #7
  br label %if.end184

if.end184:                                        ; preds = %land.lhs.true179, %if.end176, %if.then183
  call fastcc void @S_my_exit_jump() #8
  br label %sw.bb185

sw.bb185:                                         ; preds = %if.end152, %if.end184
  %84 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool186 = icmp eq %struct.op* %84, null
  br i1 %tobool186, label %if.end188, label %if.then187

if.then187:                                       ; preds = %sw.bb185
  store %struct.op* %84, %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  br label %redo_body

if.end188:                                        ; preds = %sw.bb185
  %85 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idx.ext189 = sext i32 %15 to i64
  %add.ptr190 = getelementptr inbounds %struct.sv** %85, i64 %idx.ext189
  store %struct.sv** %add.ptr190, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %and191 = and i32 %flags, 1
  %tobool192 = icmp eq i32 %and191, 0
  br i1 %tobool192, label %if.else194, label %if.then193

if.then193:                                       ; preds = %if.end188
  store volatile i32 0, i32* %retval1, align 4
  br label %sw.epilog

if.else194:                                       ; preds = %if.end188
  store volatile i32 1, i32* %retval1, align 4
  %86 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr195 = getelementptr inbounds %struct.sv** %86, i64 1
  store %struct.sv** %incdec.ptr195, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr195, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then193, %if.else194, %redo_body, %if.then166, %if.end152
  %87 = load i32* @PL_scopestack_ix, align 4, !tbaa !3
  %cmp197 = icmp sgt i32 %87, %16
  br i1 %cmp197, label %if.then199, label %if.end262

if.then199:                                       ; preds = %sw.epilog
  %88 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix202 = getelementptr inbounds %struct.stackinfo* %88, i64 0, i32 2
  %89 = load i32* %si_cxix202, align 4, !tbaa !3
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %si_cxix202, align 4, !tbaa !3
  %idxprom203 = sext i32 %89 to i64
  %si_cxstack204 = getelementptr inbounds %struct.stackinfo* %88, i64 0, i32 1
  %90 = load %struct.context** %si_cxstack204, align 8, !tbaa !0
  %blku_oldcop213 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 1
  %91 = load %struct.cop** %blku_oldcop213, align 8, !tbaa !0
  store volatile %struct.cop* %91, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %92 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp216 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 3
  %93 = load i32* %blku_oldmarksp216, align 4, !tbaa !3
  %idx.ext217 = sext i32 %93 to i64
  %add.ptr218 = getelementptr inbounds i32* %92, i64 %idx.ext217
  store i32* %add.ptr218, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp221 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 4
  %94 = load i32* %blku_oldscopesp221, align 4, !tbaa !3
  store i32 %94, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp224 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 2
  %95 = load i32* %blku_oldretsp224, align 4, !tbaa !3
  store i32 %95, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm227 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 5
  %96 = load %struct.pmop** %blku_oldpm227, align 8, !tbaa !0
  %blk_u234 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 7
  %old_in_eval236 = bitcast %union.anon.1* %blk_u234 to i32*
  %97 = load i32* %old_in_eval236, align 4, !tbaa !3
  store volatile i32 %97, i32* @PL_in_eval, align 4, !tbaa !3
  %98 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 7, i32 0, i32 2
  %99 = load %struct.op** %98, align 8, !tbaa !0
  store %struct.op* %99, %struct.op** @PL_eval_root, align 8, !tbaa !0
  %old_namesv251 = getelementptr inbounds %struct.context* %90, i64 %idxprom203, i32 1, i32 0, i32 7, i32 0, i32 1
  %100 = bitcast i32* %old_namesv251 to %struct.sv**
  %101 = load %struct.sv** %100, align 8, !tbaa !0
  %tobool252 = icmp eq %struct.sv* %101, null
  br i1 %tobool252, label %if.end260, label %if.then253

if.then253:                                       ; preds = %if.then199
  %call259 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %101) #7
  br label %if.end260

if.end260:                                        ; preds = %if.then199, %if.then253
  %call261 = call %struct.op* @Perl_pop_return() #7
  store %struct.pmop* %96, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  call void @Perl_pop_scope() #7
  br label %if.end262

if.end262:                                        ; preds = %if.end260, %sw.epilog
  %102 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %102, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  br label %if.end264

if.end264:                                        ; preds = %if.end262, %if.then52
  br i1 %tobool, label %if.then267, label %if.end274

if.then267:                                       ; preds = %if.end264
  %103 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %idx.ext268 = sext i32 %15 to i64
  %add.ptr269 = getelementptr inbounds %struct.sv** %103, i64 %idx.ext268
  store %struct.sv** %add.ptr269, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store volatile i32 0, i32* %retval1, align 4
  %104 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %105 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp270 = icmp sgt i32 %104, %105
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %if.then267
  call void @Perl_free_tmps() #7
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.then267
  call void @Perl_pop_scope() #7
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.end264
  store %struct.op* %5, %struct.op** @PL_op, align 8, !tbaa !0
  %retval1.0.load318 = load volatile i32* %retval1, align 4
  call void @llvm.lifetime.end(i64 216, i8* %6) #2
  call void @llvm.lifetime.end(i64 48, i8* %2) #2
  call void @llvm.lifetime.end(i64 56, i8* %1) #2
  ret i32 %retval1.0.load318
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_call_method(i8* %methname, i32 %flags) #0 {
entry:
  %call = tail call %struct.sv* @Perl_newSVpv(i8* %methname, i64 0) #7
  %call1 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call) #7
  %or = or i32 %flags, 64
  %call2 = tail call i32 @Perl_call_sv(%struct.sv* %call1, i32 %or) #8
  ret i32 %call2
}

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #3

; Function Attrs: optsize
declare void @Perl_save_op() #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_call_body(%struct.op* %myop, i32 %is_eval) #0 {
entry:
  %0 = load %struct.op** @PL_op, align 8, !tbaa !0
  %cmp = icmp eq %struct.op* %0, %myop
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %is_eval, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %call = tail call %struct.op* @Perl_pp_entereval() #7
  store %struct.op* %call, %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end3

if.else:                                          ; preds = %if.then
  %call2 = tail call %struct.op* @Perl_pp_entersub() #7
  store %struct.op* %call2, %struct.op** @PL_op, align 8, !tbaa !0
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.else, %entry
  %1 = phi %struct.op* [ %call, %if.then1 ], [ %call2, %if.else ], [ %0, %entry ]
  %tobool4 = icmp eq %struct.op* %1, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %2 = load i32 ()** @PL_runops, align 8, !tbaa !0
  %call6 = tail call i32 %2() #7
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() #3

; Function Attrs: optsize
declare void @Perl_push_return(%struct.op*) #3

; Function Attrs: optsize
declare i32 @Perl_cxinc() #3

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_my_exit_jump() #0 {
entry:
  %0 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %0, null
  br i1 %tobool, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @Perl_sv_free(%struct.sv* %0) #7
  store %struct.sv* null, %struct.sv** @PL_e_script, align 8, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry
  %1 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %2 = load %struct.av** @PL_mainstack, align 8, !tbaa !0
  %cmp66 = icmp eq %struct.av* %1, %2
  br i1 %cmp66, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  %.pre68 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader, %if.end19
  tail call void @Perl_dounwind(i32 -1) #7
  %3 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 5
  %5 = load %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %tobool1 = icmp eq %struct.stackinfo* %5, null
  br i1 %tobool1, label %if.then2, label %if.end19

if.then2:                                         ; preds = %while.body
  %6 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool3 = icmp eq %struct.gv* %6, null
  br i1 %tobool3, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %sv_flags = getelementptr inbounds %struct.gv* %6, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 255
  %cmp4 = icmp eq i32 %and, 13
  br i1 %cmp4, label %land.lhs.true5, label %cond.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %6, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %9, i64 0, i32 2
  %10 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool6 = icmp eq %struct.io* %10, null
  br i1 %tobool6, label %cond.false, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %sv_any11 = getelementptr inbounds %struct.io* %10, i64 0, i32 0
  %11 = load %struct.xpvio** %sv_any11, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %11, i64 0, i32 8
  %12 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool12 = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool12, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true5, %if.then2, %land.lhs.true
  %call = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true7, %cond.false
  %cond = phi %struct._PerlIO** [ %call, %cond.false ], [ %12, %land.lhs.true7 ]
  %call18 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0)) #7
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  tail call fastcc void @S_my_exit_jump() #7
  br label %if.end19

if.end19:                                         ; preds = %while.body, %cond.end
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %3 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %14 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any20 = getelementptr inbounds %struct.av* %14, i64 0, i32 0
  %15 = load %struct.xpvav** %sv_any20, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %15, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill, align 8, !tbaa !5
  %si_stack = getelementptr inbounds %struct.stackinfo* %5, i64 0, i32 0
  %16 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any21 = getelementptr inbounds %struct.av* %16, i64 0, i32 0
  %17 = load %struct.xpvav** %sv_any21, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %17, i64 0, i32 0
  %18 = load i8** %xav_array, align 8, !tbaa !0
  %19 = bitcast i8* %18 to %struct.sv**
  store %struct.sv** %19, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %20 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any23 = getelementptr inbounds %struct.av* %20, i64 0, i32 0
  %21 = load %struct.xpvav** %sv_any23, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %21, i64 0, i32 2
  %22 = load i64* %xav_max, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.sv** %19, i64 %22
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %23 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any25 = getelementptr inbounds %struct.av* %23, i64 0, i32 0
  %24 = load %struct.xpvav** %sv_any25, align 8, !tbaa !0
  %xav_fill26 = getelementptr inbounds %struct.xpvav* %24, i64 0, i32 1
  %25 = load i64* %xav_fill26, align 8, !tbaa !5
  %add.ptr27 = getelementptr inbounds %struct.sv** %19, i64 %25
  store %struct.sv** %add.ptr27, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %26 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %26, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %5, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %27 = load %struct.av** @PL_mainstack, align 8, !tbaa !0
  %cmp = icmp eq %struct.av* %26, %27
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %if.end19, %while.cond.preheader.while.end_crit_edge
  %28 = phi %struct.stackinfo* [ %.pre68, %while.cond.preheader.while.end_crit_edge ], [ %5, %if.end19 ]
  %si_cxix = getelementptr inbounds %struct.stackinfo* %28, i64 0, i32 2
  %29 = load i32* %si_cxix, align 4, !tbaa !3
  %cmp29 = icmp sgt i32 %29, -1
  br i1 %cmp29, label %if.then30, label %if.end51

if.then30:                                        ; preds = %while.end
  %cmp32 = icmp sgt i32 %29, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then30
  tail call void @Perl_dounwind(i32 0) #7
  %.pre = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_cxix35.phi.trans.insert = getelementptr inbounds %struct.stackinfo* %.pre, i64 0, i32 2
  %.pre67 = load i32* %si_cxix35.phi.trans.insert, align 4, !tbaa !3
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  %30 = phi i32 [ %.pre67, %if.then33 ], [ 0, %if.then30 ]
  %31 = phi %struct.stackinfo* [ %.pre, %if.then33 ], [ %28, %if.then30 ]
  %si_cxix35 = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 2
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %si_cxix35, align 4, !tbaa !3
  %idxprom = sext i32 %30 to i64
  %si_cxstack = getelementptr inbounds %struct.stackinfo* %31, i64 0, i32 1
  %32 = load %struct.context** %si_cxstack, align 8, !tbaa !0
  %blku_oldcop = getelementptr inbounds %struct.context* %32, i64 %idxprom, i32 1, i32 0, i32 1
  %33 = load %struct.cop** %blku_oldcop, align 8, !tbaa !0
  store volatile %struct.cop* %33, %struct.cop** @PL_curcop, align 8, !tbaa !0
  %34 = load i32** @PL_markstack, align 8, !tbaa !0
  %blku_oldmarksp = getelementptr inbounds %struct.context* %32, i64 %idxprom, i32 1, i32 0, i32 3
  %35 = load i32* %blku_oldmarksp, align 4, !tbaa !3
  %idx.ext41 = sext i32 %35 to i64
  %add.ptr42 = getelementptr inbounds i32* %34, i64 %idx.ext41
  store i32* %add.ptr42, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %blku_oldscopesp = getelementptr inbounds %struct.context* %32, i64 %idxprom, i32 1, i32 0, i32 4
  %36 = load i32* %blku_oldscopesp, align 4, !tbaa !3
  store i32 %36, i32* @PL_scopestack_ix, align 4, !tbaa !3
  %blku_oldretsp = getelementptr inbounds %struct.context* %32, i64 %idxprom, i32 1, i32 0, i32 2
  %37 = load i32* %blku_oldretsp, align 4, !tbaa !3
  store i32 %37, i32* @PL_retstack_ix, align 4, !tbaa !3
  %blku_oldpm = getelementptr inbounds %struct.context* %32, i64 %idxprom, i32 1, i32 0, i32 5
  %38 = load %struct.pmop** %blku_oldpm, align 8, !tbaa !0
  store %struct.pmop* %38, %struct.pmop** @PL_curpm, align 8, !tbaa !0
  tail call void @Perl_pop_scope() #7
  br label %if.end51

if.end51:                                         ; preds = %if.end34, %while.end
  %39 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %39, i64 0, i32 1
  %40 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %tobool52 = icmp eq %struct.jmpenv* %40, null
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end51
  %arraydecay = getelementptr inbounds %struct.jmpenv* %39, i64 0, i32 0, i64 0
  tail call void @siglongjmp(%struct.__jmp_buf_tag* %arraydecay, i32 2) #9
  unreachable

if.end54:                                         ; preds = %if.end51
  %41 = load i32* @PL_statusvalue, align 4, !tbaa !3
  tail call void @exit(i32 %41) #9
  unreachable
}

; Function Attrs: optsize
declare %struct.op* @Perl_pop_return() #3

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_eval_sv(%struct.sv* %sv, i32 %flags) #0 {
entry:
  %myop = alloca %struct.unop, align 8
  %oldmark = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cur_env = alloca %struct.jmpenv, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = bitcast %struct.unop* %myop to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #2
  %2 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div88 = lshr exact i64 %sub.ptr.sub, 3
  %conv = trunc i64 %sub.ptr.div88 to i32
  store volatile i32 %conv, i32* %oldmark, align 4
  store volatile i32 0, i32* %retval1, align 4
  %3 = load %struct.op** @PL_op, align 8, !tbaa !0
  %4 = bitcast %struct.jmpenv* %cur_env to i8*
  call void @llvm.lifetime.start(i64 216, i8* %4) #2
  %and = and i32 %flags, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %5 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %5, i32* @PL_tmps_floor, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @Perl_save_op() #7
  %6 = bitcast %struct.unop* %myop to %struct.op*
  store %struct.op* %6, %struct.op** @PL_op, align 8, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %7 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %sub.ptr.lhs.cast2 = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.rhs.cast3 = ptrtoint %struct.sv** %8 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %cmp = icmp slt i64 %sub.ptr.sub4, 8
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %call = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %8, i32 1) #7
  %.pre = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %9 = phi %struct.sv** [ %.pre, %if.then7 ], [ %8, %if.end ]
  %incdec.ptr = getelementptr inbounds %struct.sv** %9, i64 1
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.sv* %sv, %struct.sv** %incdec.ptr, align 8, !tbaa !0
  %and9 = and i32 %flags, 8
  %tobool10 = icmp eq i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %op_flags = getelementptr inbounds %struct.unop* %myop, i64 0, i32 6
  store i8 64, i8* %op_flags, align 4, !tbaa !1
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then11
  %op_next = getelementptr inbounds %struct.unop* %myop, i64 0, i32 0
  store %struct.op* null, %struct.op** %op_next, align 8, !tbaa !0
  %op_type = getelementptr inbounds %struct.unop* %myop, i64 0, i32 4
  store i16 311, i16* %op_type, align 8, !tbaa !4
  %and13 = and i32 %flags, 128
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end12
  %and15 = and i32 %flags, 1
  %10 = or i32 %and15, 2
  br label %cond.end

cond.end:                                         ; preds = %if.end12, %cond.false
  %cond17 = phi i32 [ %10, %cond.false ], [ 1, %if.end12 ]
  %op_flags18 = getelementptr inbounds %struct.unop* %myop, i64 0, i32 6
  %11 = load i8* %op_flags18, align 4, !tbaa !1
  %conv19 = zext i8 %11 to i32
  %and21 = and i32 %flags, 16
  %tobool22 = icmp eq i32 %and21, 0
  %12 = shl nuw nsw i32 %and21, 3
  %or = or i32 %cond17, %12
  %13 = or i32 %or, %conv19
  %storemerge = trunc i32 %13 to i8
  store i8 %storemerge, i8* %op_flags18, align 4, !tbaa !1
  %14 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool29 = icmp eq i8 %14, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %cond.end
  call void @Perl_taint_proper(i8* null, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0)) #7
  br label %if.end31

if.end31:                                         ; preds = %cond.end, %if.then30
  %15 = load %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_prev = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 1
  store %struct.jmpenv* %15, %struct.jmpenv** %je_prev, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 0, i64 0
  %call32 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* %arraydecay, i32 0) #7
  %je_ret = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 2
  store i32 %call32, i32* %je_ret, align 8, !tbaa !3
  store %struct.jmpenv* %cur_env, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %je_mustcatch = getelementptr inbounds %struct.jmpenv* %cur_env, i64 0, i32 3
  store i8 0, i8* %je_mustcatch, align 4, !tbaa !1
  switch i32 %call32, label %sw.epilog [
    i32 0, label %redo_body
    i32 1, label %sw.bb43
    i32 2, label %sw.bb44
    i32 3, label %sw.bb56
  ]

redo_body:                                        ; preds = %if.end31, %if.then58
  call fastcc void @S_call_body(%struct.op* %6, i32 1) #8
  %16 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %17 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %oldmark.0.load91 = load volatile i32* %oldmark, align 4
  %idx.ext = sext i32 %oldmark.0.load91 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %17, i64 %idx.ext
  %sub.ptr.lhs.cast34 = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.rhs.cast35 = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %sub.ptr.div3789 = lshr exact i64 %sub.ptr.sub36, 3
  %conv38 = trunc i64 %sub.ptr.div3789 to i32
  store volatile i32 %conv38, i32* %retval1, align 4
  br i1 %tobool22, label %if.then41, label %sw.epilog

if.then41:                                        ; preds = %redo_body
  %18 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %18, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %20, i64 0, i32 0
  %21 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  call void @Perl_sv_setpv(%struct.sv* %21, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end31
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %sw.bb44

sw.bb44:                                          ; preds = %if.end31, %sw.bb43
  %22 = load %struct.hv** @PL_defstash, align 8, !tbaa !0
  store %struct.hv* %22, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %23 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %24 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp45 = icmp sgt i32 %23, %24
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %sw.bb44
  call void @Perl_free_tmps() #7
  br label %if.end48

if.end48:                                         ; preds = %sw.bb44, %if.then47
  %25 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %25, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  %26 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %tobool50 = icmp eq i32 %26, 0
  br i1 %tobool50, label %if.end55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end48
  %27 = load i8* @PL_exit_flags, align 1, !tbaa !1
  %and52 = and i8 %27, 1
  %tobool53 = icmp eq i8 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str12, i64 0, i64 0)) #7
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %if.end48, %if.then54
  call fastcc void @S_my_exit_jump() #8
  br label %sw.bb56

sw.bb56:                                          ; preds = %if.end31, %if.end55
  %28 = load %struct.op** @PL_restartop, align 8, !tbaa !0
  %tobool57 = icmp eq %struct.op* %28, null
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %sw.bb56
  store %struct.op* %28, %struct.op** @PL_op, align 8, !tbaa !0
  store %struct.op* null, %struct.op** @PL_restartop, align 8, !tbaa !0
  br label %redo_body

if.end59:                                         ; preds = %sw.bb56
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %oldmark.0.load92 = load volatile i32* %oldmark, align 4
  %idx.ext60 = sext i32 %oldmark.0.load92 to i64
  %add.ptr61 = getelementptr inbounds %struct.sv** %29, i64 %idx.ext60
  store %struct.sv** %add.ptr61, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %and62 = and i32 %flags, 1
  %tobool63 = icmp eq i32 %and62, 0
  br i1 %tobool63, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end59
  store volatile i32 0, i32* %retval1, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end59
  store volatile i32 1, i32* %retval1, align 4
  %30 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr65 = getelementptr inbounds %struct.sv** %30, i64 1
  store %struct.sv** %incdec.ptr65, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store %struct.sv* @PL_sv_undef, %struct.sv** %incdec.ptr65, align 8, !tbaa !0
  br label %sw.epilog

sw.epilog:                                        ; preds = %redo_body, %if.then64, %if.else, %if.then41, %if.end31
  %31 = load %struct.jmpenv** %je_prev, align 8, !tbaa !0
  store %struct.jmpenv* %31, %struct.jmpenv** @PL_top_env, align 8, !tbaa !0
  br i1 %tobool, label %if.then70, label %if.end77

if.then70:                                        ; preds = %sw.epilog
  %32 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %oldmark.0.load93 = load volatile i32* %oldmark, align 4
  %idx.ext71 = sext i32 %oldmark.0.load93 to i64
  %add.ptr72 = getelementptr inbounds %struct.sv** %32, i64 %idx.ext71
  store %struct.sv** %add.ptr72, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  store volatile i32 0, i32* %retval1, align 4
  %33 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %34 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp73 = icmp sgt i32 %33, %34
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then70
  call void @Perl_free_tmps() #7
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then70
  call void @Perl_pop_scope() #7
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %sw.epilog
  store %struct.op* %3, %struct.op** @PL_op, align 8, !tbaa !0
  %retval1.0.load90 = load volatile i32* %retval1, align 4
  call void @llvm.lifetime.end(i64 216, i8* %4) #2
  call void @llvm.lifetime.end(i64 48, i8* %1) #2
  ret i32 %retval1.0.load90
}

; Function Attrs: optsize
declare void @Perl_taint_proper(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @Perl_eval_pv(i8* %p, i32 %croak_on_error) #0 {
entry:
  %n_a = alloca i64, align 8
  %call = call %struct.sv* @Perl_newSVpv(i8* %p, i64 0) #7
  %call1 = call i32 @Perl_eval_sv(%struct.sv* %call, i32 0) #8
  call void @Perl_sv_free(%struct.sv* %call) #7
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds %struct.sv** %0, i64 -1
  %1 = load %struct.sv** %0, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool = icmp eq i32 %croak_on_error, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %2, i64 0, i32 0
  %3 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %3, i64 0, i32 7
  %4 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %4, i64 0, i32 0
  %5 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %tobool2 = icmp eq %struct.sv* %5, null
  br i1 %tobool2, label %if.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %6, 262144
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %cond.false21, label %cond.true7

cond.true7:                                       ; preds = %cond.false
  %sv_any11 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any11, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.xpv*
  store %struct.xpv* %8, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool12 = icmp eq i8* %7, null
  br i1 %tobool12, label %if.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %cond.true7
  %xpv_cur = getelementptr inbounds i8* %7, i64 8
  %9 = bitcast i8* %xpv_cur to i64*
  %10 = load i64* %9, align 8, !tbaa !5
  %cmp = icmp ugt i64 %10, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %tobool15 = icmp eq i64 %10, 0
  br i1 %tobool15, label %if.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %xpv_pv = bitcast i8* %7 to i8**
  %11 = load i8** %xpv_pv, align 8, !tbaa !0
  %12 = load i8* %11, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %12, 48
  br i1 %cmp17, label %if.end, label %if.then

cond.false21:                                     ; preds = %cond.false
  %and26 = and i32 %6, 65536
  %tobool27 = icmp eq i32 %and26, 0
  br i1 %tobool27, label %cond.false35, label %cond.true28

cond.true28:                                      ; preds = %cond.false21
  %sv_any32 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %13 = load i8** %sv_any32, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %13, i64 24
  %14 = bitcast i8* %xiv_iv to i64*
  %15 = load i64* %14, align 8, !tbaa !5
  %cmp33 = icmp eq i64 %15, 0
  br i1 %cmp33, label %if.end, label %if.then

cond.false35:                                     ; preds = %cond.false21
  %and40 = and i32 %6, 131072
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %cond.false49, label %cond.true42

cond.true42:                                      ; preds = %cond.false35
  %sv_any46 = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %16 = load i8** %sv_any46, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %16, i64 32
  %17 = bitcast i8* %xnv_nv to double*
  %18 = load double* %17, align 8, !tbaa !6
  %cmp47 = fcmp une double %18, 0.000000e+00
  br i1 %cmp47, label %if.then, label %if.end

cond.false49:                                     ; preds = %cond.false35
  %call53 = call signext i8 @Perl_sv_2bool(%struct.sv* %5) #7
  %tobool55 = icmp eq i8 %call53, 0
  br i1 %tobool55, label %if.end, label %cond.false49.if.then_crit_edge

cond.false49.if.then_crit_edge:                   ; preds = %cond.false49
  %.pre = load %struct.gv** @PL_errgv, align 8, !tbaa !0
  br label %if.then

if.then:                                          ; preds = %land.lhs.true16, %land.lhs.true13, %cond.false49.if.then_crit_edge, %cond.true28, %cond.true42
  %19 = phi %struct.gv* [ %.pre, %cond.false49.if.then_crit_edge ], [ %2, %cond.true28 ], [ %2, %cond.true42 ], [ %2, %land.lhs.true13 ], [ %2, %land.lhs.true16 ]
  %sv_any56 = getelementptr inbounds %struct.gv* %19, i64 0, i32 0
  %20 = load %struct.xpvgv** %sv_any56, align 8, !tbaa !0
  %xgv_gp57 = getelementptr inbounds %struct.xpvgv* %20, i64 0, i32 7
  %21 = load %struct.gp** %xgv_gp57, align 8, !tbaa !0
  %gp_sv58 = getelementptr inbounds %struct.gp* %21, i64 0, i32 0
  %22 = load %struct.sv** %gp_sv58, align 8, !tbaa !0
  store %struct.sv* %22, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_flags59 = getelementptr inbounds %struct.sv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags59, align 4, !tbaa !3
  %and60 = and i32 %23, 262144
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %cond.false68, label %cond.true63

cond.true63:                                      ; preds = %if.then
  %sv_any64 = getelementptr inbounds %struct.sv* %22, i64 0, i32 0
  %24 = load i8** %sv_any64, align 8, !tbaa !0
  %xpv_cur65 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur65 to i64*
  %26 = load i64* %25, align 8, !tbaa !5
  store i64 %26, i64* %n_a, align 8, !tbaa !5
  %xpv_pv67 = bitcast i8* %24 to i8**
  %27 = load i8** %xpv_pv67, align 8, !tbaa !0
  br label %cond.end

cond.false68:                                     ; preds = %if.then
  %call69 = call i8* @Perl_sv_2pv_flags(%struct.sv* %22, i64* %n_a, i32 2) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false68, %cond.true63
  %cond = phi i8* [ %27, %cond.true63 ], [ %call69, %cond.false68 ]
  call void (i8*, ...)* @Perl_croak(i8* %cond) #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true16, %lor.lhs.false, %cond.true7, %cond.true28, %cond.false49, %land.lhs.true, %entry, %cond.end, %cond.true42
  ret %struct.sv* %1
}

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #3

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_require_pv(i8* %pv) #0 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next = getelementptr inbounds %struct.stackinfo* %1, i64 0, i32 6
  %2 = load %struct.stackinfo** %si_next, align 8, !tbaa !0
  %tobool = icmp eq %struct.stackinfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.stackinfo* @Perl_new_stackinfo(i32 32, i32 13) #7
  %3 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev = getelementptr inbounds %struct.stackinfo* %call, i64 0, i32 5
  store %struct.stackinfo* %3, %struct.stackinfo** %si_prev, align 8, !tbaa !0
  %4 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_next1 = getelementptr inbounds %struct.stackinfo* %4, i64 0, i32 6
  store %struct.stackinfo* %call, %struct.stackinfo** %si_next1, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %next.0 = phi %struct.stackinfo* [ %2, %entry ], [ %call, %if.then ]
  %si_type = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 4
  store i32 9, i32* %si_type, align 4, !tbaa !3
  %si_cxix = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 2
  store i32 -1, i32* %si_cxix, align 4, !tbaa !3
  %si_stack = getelementptr inbounds %struct.stackinfo* %next.0, i64 0, i32 0
  %5 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.av* %5, i64 0, i32 0
  %6 = load %struct.xpvav** %sv_any, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 1
  store i64 0, i64* %xav_fill, align 8, !tbaa !5
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %8 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.av* %8, i64 0, i32 0
  %9 = load %struct.xpvav** %sv_any2, align 8, !tbaa !0
  %xav_fill3 = getelementptr inbounds %struct.xpvav* %9, i64 0, i32 1
  store i64 %sub.ptr.div, i64* %xav_fill3, align 8, !tbaa !5
  %xav_array = getelementptr inbounds %struct.xpvav* %6, i64 0, i32 0
  %10 = load i8** %xav_array, align 8, !tbaa !0
  %11 = bitcast i8* %10 to %struct.sv**
  store %struct.sv** %11, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %12 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any7 = getelementptr inbounds %struct.av* %12, i64 0, i32 0
  %13 = load %struct.xpvav** %sv_any7, align 8, !tbaa !0
  %xav_max = getelementptr inbounds %struct.xpvav* %13, i64 0, i32 2
  %14 = load i64* %xav_max, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.sv** %11, i64 %14
  store %struct.sv** %add.ptr, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %15 = load %struct.av** %si_stack, align 8, !tbaa !0
  %sv_any9 = getelementptr inbounds %struct.av* %15, i64 0, i32 0
  %16 = load %struct.xpvav** %sv_any9, align 8, !tbaa !0
  %xav_fill10 = getelementptr inbounds %struct.xpvav* %16, i64 0, i32 1
  %17 = load i64* %xav_fill10, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds %struct.sv** %11, i64 %17
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %18 = load %struct.av** %si_stack, align 8, !tbaa !0
  store %struct.av* %18, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %next.0, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  store %struct.sv** %add.ptr11, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call13 = tail call %struct.sv* @Perl_sv_newmortal() #7
  tail call void @Perl_sv_setpv(%struct.sv* %call13, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0)) #7
  tail call void @Perl_sv_catpv(%struct.sv* %call13, i8* %pv) #7
  tail call void @Perl_sv_catpv(%struct.sv* %call13, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7
  %call14 = tail call i32 @Perl_eval_sv(%struct.sv* %call13, i32 2) #8
  %19 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %20 = load %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  %si_prev16 = getelementptr inbounds %struct.stackinfo* %20, i64 0, i32 5
  %21 = load %struct.stackinfo** %si_prev16, align 8, !tbaa !0
  %tobool17 = icmp eq %struct.stackinfo* %21, null
  br i1 %tobool17, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.end
  %22 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !0
  %tobool19 = icmp eq %struct.gv* %22, null
  br i1 %tobool19, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then18
  %sv_flags = getelementptr inbounds %struct.gv* %22, i64 0, i32 2
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %23, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true20, label %cond.false

land.lhs.true20:                                  ; preds = %land.lhs.true
  %sv_any21 = getelementptr inbounds %struct.gv* %22, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any21, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_io = getelementptr inbounds %struct.gp* %25, i64 0, i32 2
  %26 = load %struct.io** %gp_io, align 8, !tbaa !0
  %tobool22 = icmp eq %struct.io* %26, null
  br i1 %tobool22, label %cond.false, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %sv_any27 = getelementptr inbounds %struct.io* %26, i64 0, i32 0
  %27 = load %struct.xpvio** %sv_any27, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %27, i64 0, i32 8
  %28 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %tobool28 = icmp eq %struct._PerlIO** %28, null
  br i1 %tobool28, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true23, %land.lhs.true20, %if.then18, %land.lhs.true
  %call34 = tail call %struct._PerlIO** @Perl_PerlIO_stderr() #7
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true23, %cond.false
  %cond = phi %struct._PerlIO** [ %call34, %cond.false ], [ %28, %land.lhs.true23 ]
  %call35 = tail call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %cond, i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0)) #7
  store i32 1, i32* @PL_statusvalue, align 4, !tbaa !3
  tail call fastcc void @S_my_exit_jump() #7
  br label %if.end36

if.end36:                                         ; preds = %if.end, %cond.end
  %29 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast37 = ptrtoint %struct.sv** %19 to i64
  %sub.ptr.rhs.cast38 = ptrtoint %struct.sv** %29 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %sub.ptr.div40 = ashr exact i64 %sub.ptr.sub39, 3
  %30 = load %struct.av** @PL_curstack, align 8, !tbaa !0
  %sv_any41 = getelementptr inbounds %struct.av* %30, i64 0, i32 0
  %31 = load %struct.xpvav** %sv_any41, align 8, !tbaa !0
  %xav_fill42 = getelementptr inbounds %struct.xpvav* %31, i64 0, i32 1
  store i64 %sub.ptr.div40, i64* %xav_fill42, align 8, !tbaa !5
  %si_stack43 = getelementptr inbounds %struct.stackinfo* %21, i64 0, i32 0
  %32 = load %struct.av** %si_stack43, align 8, !tbaa !0
  %sv_any44 = getelementptr inbounds %struct.av* %32, i64 0, i32 0
  %33 = load %struct.xpvav** %sv_any44, align 8, !tbaa !0
  %xav_array45 = getelementptr inbounds %struct.xpvav* %33, i64 0, i32 0
  %34 = load i8** %xav_array45, align 8, !tbaa !0
  %35 = bitcast i8* %34 to %struct.sv**
  store %struct.sv** %35, %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %36 = load %struct.av** %si_stack43, align 8, !tbaa !0
  %sv_any47 = getelementptr inbounds %struct.av* %36, i64 0, i32 0
  %37 = load %struct.xpvav** %sv_any47, align 8, !tbaa !0
  %xav_max48 = getelementptr inbounds %struct.xpvav* %37, i64 0, i32 2
  %38 = load i64* %xav_max48, align 8, !tbaa !5
  %add.ptr49 = getelementptr inbounds %struct.sv** %35, i64 %38
  store %struct.sv** %add.ptr49, %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %39 = load %struct.av** %si_stack43, align 8, !tbaa !0
  %sv_any51 = getelementptr inbounds %struct.av* %39, i64 0, i32 0
  %40 = load %struct.xpvav** %sv_any51, align 8, !tbaa !0
  %xav_fill52 = getelementptr inbounds %struct.xpvav* %40, i64 0, i32 1
  %41 = load i64* %xav_fill52, align 8, !tbaa !5
  %add.ptr53 = getelementptr inbounds %struct.sv** %35, i64 %41
  store %struct.sv** %add.ptr53, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %42 = load %struct.av** %si_stack43, align 8, !tbaa !0
  store %struct.av* %42, %struct.av** @PL_curstack, align 8, !tbaa !0
  store %struct.stackinfo* %21, %struct.stackinfo** @PL_curstackinfo, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.stackinfo* @Perl_new_stackinfo(i32, i32) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #3

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_magicname(i8* %sym, i8* %name, i32 %namlen) #0 {
entry:
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* %sym, i32 1, i32 4) #7
  %tobool = icmp eq %struct.gv* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_any = getelementptr inbounds %struct.gv* %call, i64 0, i32 0
  %0 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %0, i64 0, i32 7
  %1 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %1, i64 0, i32 0
  %2 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %3 = bitcast %struct.gv* %call to %struct.sv*
  tail call void @Perl_sv_magic(%struct.sv* %2, %struct.sv* %3, i32 0, i8* %name, i32 %namlen) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_moreswitches(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %numlen = alloca i64, align 8
  %flags = alloca i32, align 4
  %ch = alloca i8, align 1
  %flags534 = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 67, label %sw.bb163
    i32 70, label %sw.bb166
    i32 97, label %sw.bb189
    i32 99, label %sw.bb191
    i32 100, label %sw.bb193
    i32 68, label %sw.bb311
    i32 104, label %sw.bb366
    i32 105, label %sw.bb368
    i32 73, label %sw.bb414
    i32 108, label %sw.bb521
    i32 77, label %sw.bb560
    i32 109, label %sw.bb561
    i32 110, label %sw.bb648
    i32 112, label %sw.bb650
    i32 115, label %sw.bb652
    i32 116, label %sw.bb654
    i32 84, label %sw.bb659
    i32 117, label %sw.bb664
    i32 85, label %sw.bb666
    i32 118, label %sw.bb668
    i32 119, label %sw.bb676
    i32 87, label %sw.bb686
    i32 88, label %sw.bb698
    i32 42, label %sw.bb710
    i32 32, label %sw.bb710
    i32 45, label %return
    i32 0, label %return
    i32 13, label %return
    i32 10, label %return
    i32 9, label %return
    i32 80, label %sw.bb719
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %flags, align 4, !tbaa !3
  %1 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %1) #7
  %2 = load i8** %s.addr, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %2, i64 1
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %3, 120
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx3 = getelementptr inbounds i8* %2, i64 2
  %4 = load i8* %arrayidx3, align 1, !tbaa !1
  %tobool = icmp eq i8 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8* %arrayidx3, i8** %s.addr, align 8, !tbaa !0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.then
  %e.0 = phi i8* [ %arrayidx3, %if.then ], [ %incdec.ptr, %for.cond ]
  %5 = load i8* %e.0, align 1, !tbaa !1
  %tobool5 = icmp eq i8 %5, 0
  %incdec.ptr = getelementptr inbounds i8* %e.0, i64 1
  br i1 %tobool5, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %e.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arrayidx3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %numlen, align 8, !tbaa !5
  store i32 4, i32* %flags, align 4, !tbaa !3
  %call = call i64 @Perl_grok_hex(i8* %arrayidx3, i64* %numlen, i32* %flags, double* null) #7
  %conv7 = and i64 %call, 4294967295
  %6 = load i8** %s.addr, align 8, !tbaa !0
  %7 = load i64* %numlen, align 8, !tbaa !5
  %add.ptr8 = getelementptr inbounds i8* %6, i64 %7
  %cmp9 = icmp ult i8* %add.ptr8, %e.0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.end
  store i64 0, i64* %numlen, align 8, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds i8* %6, i64 -1
  store i8* %incdec.ptr12, i8** %s.addr, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then11, %for.end
  %rschar.0 = phi i64 [ 0, %if.then11 ], [ %conv7, %for.end ]
  %call13 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call13, %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %8 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %8, i64 16
  %9 = bitcast i8* %xpv_len to i64*
  %10 = load i64* %9, align 8, !tbaa !5
  %cmp14 = icmp ult i64 %rschar.0, 128
  br i1 %cmp14, label %cond.end47, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp16 = icmp ult i64 %rschar.0, 2048
  br i1 %cmp16, label %cond.end47, label %cond.false19

cond.false19:                                     ; preds = %cond.false
  %cmp20 = icmp ult i64 %rschar.0, 65536
  br i1 %cmp20, label %cond.end47, label %cond.false23

cond.false23:                                     ; preds = %cond.false19
  %cmp24 = icmp ult i64 %rschar.0, 2097152
  br i1 %cmp24, label %cond.end47, label %cond.false27

cond.false27:                                     ; preds = %cond.false23
  %cmp28 = icmp ult i64 %rschar.0, 67108864
  br i1 %cmp28, label %cond.end47, label %cond.false31

cond.false31:                                     ; preds = %cond.false27
  %cmp32 = icmp ult i64 %rschar.0, 2147483648
  %. = select i1 %cmp32, i64 7, i64 8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false31, %cond.false, %cond.false23, %cond.false27, %cond.false19, %if.end
  %cond48 = phi i64 [ 2, %if.end ], [ 3, %cond.false ], [ 4, %cond.false19 ], [ 5, %cond.false23 ], [ 6, %cond.false27 ], [ %., %cond.false31 ]
  %cmp50 = icmp ult i64 %10, %cond48
  br i1 %cmp50, label %cond.true52, label %cond.end97

cond.true52:                                      ; preds = %cond.end47
  br i1 %cmp14, label %cond.end90, label %cond.false56

cond.false56:                                     ; preds = %cond.true52
  %cmp57 = icmp ult i64 %rschar.0, 2048
  br i1 %cmp57, label %cond.end90, label %cond.false60

cond.false60:                                     ; preds = %cond.false56
  %cmp61 = icmp ult i64 %rschar.0, 65536
  br i1 %cmp61, label %cond.end90, label %cond.false64

cond.false64:                                     ; preds = %cond.false60
  %cmp65 = icmp ult i64 %rschar.0, 2097152
  br i1 %cmp65, label %cond.end90, label %cond.false68

cond.false68:                                     ; preds = %cond.false64
  %cmp69 = icmp ult i64 %rschar.0, 67108864
  br i1 %cmp69, label %cond.end90, label %cond.false72

cond.false72:                                     ; preds = %cond.false68
  %cmp73 = icmp ult i64 %rschar.0, 2147483648
  %.802 = select i1 %cmp73, i64 7, i64 8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false72, %cond.false56, %cond.false64, %cond.false68, %cond.false60, %cond.true52
  %cond91 = phi i64 [ 2, %cond.true52 ], [ 3, %cond.false56 ], [ 4, %cond.false60 ], [ 5, %cond.false64 ], [ 6, %cond.false68 ], [ %.802, %cond.false72 ]
  %call94 = call i8* @Perl_sv_grow(%struct.sv* %call13, i64 %cond91) #7
  %.pre = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_any99.phi.trans.insert = getelementptr inbounds %struct.sv* %.pre, i64 0, i32 0
  %.pre875 = load i8** %sv_any99.phi.trans.insert, align 8, !tbaa !0
  br label %cond.end97

cond.end97:                                       ; preds = %cond.end47, %cond.end90
  %11 = phi i8* [ %8, %cond.end47 ], [ %.pre875, %cond.end90 ]
  %xpv_pv100 = bitcast i8* %11 to i8**
  %12 = load i8** %xpv_pv100, align 8, !tbaa !0
  %call101 = call i8* @Perl_uvuni_to_utf8(i8* %12, i64 %rschar.0) #7
  br i1 %cmp14, label %cond.end139, label %cond.false105

cond.false105:                                    ; preds = %cond.end97
  %cmp106 = icmp ult i64 %rschar.0, 2048
  br i1 %cmp106, label %cond.end139, label %cond.false109

cond.false109:                                    ; preds = %cond.false105
  %cmp110 = icmp ult i64 %rschar.0, 65536
  br i1 %cmp110, label %cond.end139, label %cond.false113

cond.false113:                                    ; preds = %cond.false109
  %cmp114 = icmp ult i64 %rschar.0, 2097152
  br i1 %cmp114, label %cond.end139, label %cond.false117

cond.false117:                                    ; preds = %cond.false113
  %cmp118 = icmp ult i64 %rschar.0, 67108864
  br i1 %cmp118, label %cond.end139, label %cond.false121

cond.false121:                                    ; preds = %cond.false117
  %cmp122 = icmp ult i64 %rschar.0, 2147483648
  %.803 = select i1 %cmp122, i64 6, i64 7
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false121, %cond.false105, %cond.false113, %cond.false117, %cond.false109, %cond.end97
  %cond140 = phi i64 [ 1, %cond.end97 ], [ 2, %cond.false105 ], [ 3, %cond.false109 ], [ 4, %cond.false113 ], [ 5, %cond.false117 ], [ %.803, %cond.false121 ]
  %13 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_any142 = getelementptr inbounds %struct.sv* %13, i64 0, i32 0
  %14 = load i8** %sv_any142, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %14, i64 8
  %15 = bitcast i8* %xpv_cur to i64*
  store i64 %cond140, i64* %15, align 8, !tbaa !5
  %sv_flags = getelementptr inbounds %struct.sv* %13, i64 0, i32 2
  %16 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %16, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end160

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  store i64 4, i64* %numlen, align 8, !tbaa !5
  %call143 = call i64 @Perl_grok_oct(i8* %2, i64* %numlen, i32* %flags, double* null) #7
  %and = and i64 %call143, 4294967040
  %tobool146 = icmp eq i64 %and, 0
  br i1 %tobool146, label %if.else148, label %if.then147

if.then147:                                       ; preds = %if.else
  store %struct.sv* @PL_sv_undef, %struct.sv** @PL_rs, align 8, !tbaa !0
  br label %if.end160

if.else148:                                       ; preds = %if.else
  %conv145 = and i64 %call143, 4294967295
  %tobool149 = icmp eq i64 %conv145, 0
  %17 = load i64* %numlen, align 8, !tbaa !5
  %cmp151 = icmp ugt i64 %17, 1
  %or.cond804 = and i1 %tobool149, %cmp151
  br i1 %or.cond804, label %if.then153, label %if.else155

if.then153:                                       ; preds = %if.else148
  %call154 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i64 0) #7
  store %struct.sv* %call154, %struct.sv** @PL_rs, align 8, !tbaa !0
  br label %if.end160

if.else155:                                       ; preds = %if.else148
  %conv156 = trunc i64 %call143 to i8
  store i8 %conv156, i8* %ch, align 1, !tbaa !1
  %call157 = call %struct.sv* @Perl_newSVpvn(i8* %ch, i64 1) #7
  store %struct.sv* %call157, %struct.sv** @PL_rs, align 8, !tbaa !0
  br label %if.end160

if.end160:                                        ; preds = %if.then147, %if.else155, %if.then153, %cond.end139
  %call.i = call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 4) #7
  %tobool.i = icmp eq %struct.gv* %call.i, null
  br i1 %tobool.i, label %Perl_get_sv.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end160
  %sv_any.i = getelementptr inbounds %struct.gv* %call.i, i64 0, i32 0
  %18 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %18, i64 0, i32 7
  %19 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !0
  %gp_sv.i = getelementptr inbounds %struct.gp* %19, i64 0, i32 0
  %20 = load %struct.sv** %gp_sv.i, align 8, !tbaa !0
  br label %Perl_get_sv.exit

Perl_get_sv.exit:                                 ; preds = %if.end160, %if.then.i
  %retval.0.i = phi %struct.sv* [ %20, %if.then.i ], [ null, %if.end160 ]
  %21 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  call void @Perl_sv_setsv_flags(%struct.sv* %retval.0.i, %struct.sv* %21, i32 2) #7
  %22 = load i8** %s.addr, align 8, !tbaa !0
  %23 = load i64* %numlen, align 8, !tbaa !5
  %add.ptr162 = getelementptr inbounds i8* %22, i64 %23
  br label %return

sw.bb163:                                         ; preds = %entry
  %incdec.ptr164 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr164, i8** %s.addr, align 8, !tbaa !0
  %call165 = call i32 @Perl_parse_unicode_opts(i8** %s.addr) #7
  store i32 %call165, i32* @PL_unicode, align 4, !tbaa !3
  %24 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb166:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_F, align 1, !tbaa !1
  %incdec.ptr167 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr167, i8** %s.addr, align 8, !tbaa !0
  store i8* %incdec.ptr167, i8** @PL_splitstr, align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb166
  %25 = phi i8* [ %incdec.ptr187, %while.body ], [ %incdec.ptr167, %sw.bb166 ]
  %26 = load i8* %25, align 1, !tbaa !1
  %27 = icmp ult i8 %26, 33
  br i1 %27, label %land.end, label %while.body

land.end:                                         ; preds = %while.cond
  %switch.cast = zext i8 %26 to i33
  %switch.downshift = lshr i33 4294953470, %switch.cast
  %28 = and i33 %switch.downshift, 1
  %switch.masked = icmp eq i33 %28, 0
  br i1 %switch.masked, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond, %land.end
  %incdec.ptr187 = getelementptr inbounds i8* %25, i64 1
  store i8* %incdec.ptr187, i8** %s.addr, align 8, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i8 0, i8* %25, align 1, !tbaa !1
  %29 = load i8** @PL_splitstr, align 8, !tbaa !0
  %call188 = call i8* @Perl_savepv(i8* %29) #7
  store i8* %call188, i8** @PL_splitstr, align 8, !tbaa !0
  %30 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb189:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_a, align 1, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr190, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb191:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_c, align 1, !tbaa !1
  %incdec.ptr192 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr192, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb193:                                         ; preds = %entry
  %31 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i = icmp sgt i32 %31, -1
  br i1 %cmp.i, label %if.then.i828, label %S_forbid_setid.exit

if.then.i828:                                     ; preds = %sw.bb193
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7
  %.pre876 = load i8** %s.addr, align 8, !tbaa !0
  br label %S_forbid_setid.exit

S_forbid_setid.exit:                              ; preds = %sw.bb193, %if.then.i828
  %32 = phi i8* [ %s, %sw.bb193 ], [ %.pre876, %if.then.i828 ]
  %incdec.ptr194 = getelementptr inbounds i8* %32, i64 1
  store i8* %incdec.ptr194, i8** %s.addr, align 8, !tbaa !0
  %33 = load i8* %incdec.ptr194, align 1, !tbaa !1
  %cmp196 = icmp eq i8 %33, 116
  br i1 %cmp196, label %land.lhs.true198, label %if.end235

land.lhs.true198:                                 ; preds = %S_forbid_setid.exit
  %arrayidx199 = getelementptr inbounds i8* %32, i64 2
  %34 = load i8* %arrayidx199, align 1, !tbaa !1
  %.off854 = add i8 %34, -65
  %35 = icmp ult i8 %.off854, 26
  %.off855 = add i8 %34, -97
  %36 = icmp ult i8 %.off855, 26
  %or.cond894 = or i1 %35, %36
  br i1 %or.cond894, label %if.end307, label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %land.lhs.true198
  %.off856 = add i8 %34, -48
  %37 = icmp ult i8 %.off856, 10
  %cmp231 = icmp eq i8 %34, 95
  %or.cond = or i1 %37, %cmp231
  br i1 %or.cond, label %if.end307, label %if.then233

if.then233:                                       ; preds = %lor.lhs.false218
  store i8* %arrayidx199, i8** %s.addr, align 8, !tbaa !0
  call void @Perl_my_setenv(i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7
  %.pre877 = load i8** %s.addr, align 8, !tbaa !0
  %.pre878 = load i8* %.pre877, align 1, !tbaa !1
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %S_forbid_setid.exit
  %38 = phi i8 [ %.pre878, %if.then233 ], [ %33, %S_forbid_setid.exit ]
  switch i8 %38, label %if.end307 [
    i8 58, label %if.then243
    i8 61, label %if.then243
  ]

if.then243:                                       ; preds = %if.end235, %if.end235
  %call244 = call %struct.sv* @Perl_newSVpv(i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i64 0) #7
  %39 = load i8** %s.addr, align 8, !tbaa !0
  %incdec.ptr245 = getelementptr inbounds i8* %39, i64 1
  br label %while.cond246

while.cond246:                                    ; preds = %while.body279, %if.then243
  %storemerge800 = phi i8* [ %incdec.ptr245, %if.then243 ], [ %incdec.ptr280, %while.body279 ]
  store i8* %storemerge800, i8** %s.addr, align 8, !tbaa !0
  %40 = load i8* %storemerge800, align 1, !tbaa !1
  %.off851 = add i8 %40, -65
  %41 = icmp ult i8 %.off851, 26
  %.off852 = add i8 %40, -97
  %42 = icmp ult i8 %.off852, 26
  %or.cond858 = or i1 %41, %42
  %.off853 = add i8 %40, -48
  %43 = icmp ult i8 %.off853, 10
  %or.cond860 = or i1 %or.cond858, %43
  br i1 %or.cond860, label %while.body279, label %lor.end278

lor.end278:                                       ; preds = %while.cond246
  switch i8 %40, label %if.then285 [
    i8 95, label %while.body279
    i8 58, label %while.body279
    i8 61, label %if.else286
  ]

while.body279:                                    ; preds = %lor.end278, %lor.end278, %while.cond246
  %incdec.ptr280 = getelementptr inbounds i8* %storemerge800, i64 1
  br label %while.cond246

if.then285:                                       ; preds = %lor.end278
  call void @Perl_sv_catpv(%struct.sv* %call244, i8* %incdec.ptr245) #7
  br label %if.end291

if.else286:                                       ; preds = %lor.end278
  %sub.ptr.lhs.cast287 = ptrtoint i8* %storemerge800 to i64
  %sub.ptr.rhs.cast288 = ptrtoint i8* %incdec.ptr245 to i64
  %sub.ptr.sub289 = sub i64 %sub.ptr.lhs.cast287, %sub.ptr.rhs.cast288
  call void @Perl_sv_catpvn_flags(%struct.sv* %call244, i8* %incdec.ptr245, i64 %sub.ptr.sub289, i32 2) #7
  call void @Perl_sv_catpv(%struct.sv* %call244, i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0)) #7
  %44 = load i8** %s.addr, align 8, !tbaa !0
  %incdec.ptr290 = getelementptr inbounds i8* %44, i64 1
  store i8* %incdec.ptr290, i8** %s.addr, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %call244, i8* %incdec.ptr290) #7
  call void @Perl_sv_catpv(%struct.sv* %call244, i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)) #7
  br label %if.end291

if.end291:                                        ; preds = %if.else286, %if.then285
  %45 = load i8** %s.addr, align 8, !tbaa !0
  %call292 = call i64 @strlen(i8* %45) #7
  %add.ptr293 = getelementptr inbounds i8* %45, i64 %call292
  store i8* %add.ptr293, i8** %s.addr, align 8, !tbaa !0
  %sv_flags294 = getelementptr inbounds %struct.sv* %call244, i64 0, i32 2
  %46 = load i32* %sv_flags294, align 4, !tbaa !3
  %and295 = and i32 %46, 262144
  %cmp296 = icmp eq i32 %and295, 0
  br i1 %cmp296, label %cond.false303, label %cond.true298

cond.true298:                                     ; preds = %if.end291
  %sv_any299 = getelementptr inbounds %struct.sv* %call244, i64 0, i32 0
  %47 = load i8** %sv_any299, align 8, !tbaa !0
  %xpv_cur300 = getelementptr inbounds i8* %47, i64 8
  %48 = bitcast i8* %xpv_cur300 to i64*
  %49 = load i64* %48, align 8, !tbaa !5
  store i64 %49, i64* @PL_na, align 8, !tbaa !5
  %xpv_pv302 = bitcast i8* %47 to i8**
  %50 = load i8** %xpv_pv302, align 8, !tbaa !0
  br label %cond.end305

cond.false303:                                    ; preds = %if.end291
  %call304 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call244, i64* @PL_na, i32 2) #7
  br label %cond.end305

cond.end305:                                      ; preds = %cond.false303, %cond.true298
  %cond306 = phi i8* [ %50, %cond.true298 ], [ %call304, %cond.false303 ]
  call void @Perl_my_setenv(i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0), i8* %cond306) #7
  br label %if.end307

if.end307:                                        ; preds = %land.lhs.true198, %lor.lhs.false218, %if.end235, %cond.end305
  %51 = load i32* @PL_perldb, align 4, !tbaa !3
  %tobool308 = icmp eq i32 %51, 0
  br i1 %tobool308, label %if.then309, label %if.end310

if.then309:                                       ; preds = %if.end307
  store i32 831, i32* @PL_perldb, align 4, !tbaa !3
  call void @Perl_init_debugger() #8
  br label %if.end310

if.end310:                                        ; preds = %if.end307, %if.then309
  %52 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb311:                                         ; preds = %entry
  %53 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings = getelementptr inbounds %struct.cop* %53, i64 0, i32 14
  %54 = load %struct.sv** %cop_warnings, align 8, !tbaa !0
  %cmp312 = icmp eq %struct.sv* %54, null
  br i1 %cmp312, label %if.then330, label %lor.lhs.false314

lor.lhs.false314:                                 ; preds = %sw.bb311
  %55 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings315 = getelementptr inbounds %struct.cop* %55, i64 0, i32 14
  %56 = load %struct.sv** %cop_warnings315, align 8, !tbaa !0
  %cmp316 = icmp eq %struct.sv* %56, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp316, label %if.then330, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %lor.lhs.false314
  %57 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings319 = getelementptr inbounds %struct.cop* %57, i64 0, i32 14
  %58 = load %struct.sv** %cop_warnings319, align 8, !tbaa !0
  %cmp320 = icmp eq %struct.sv* %58, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp320, label %for.cond333.preheader, label %land.lhs.true322

land.lhs.true322:                                 ; preds = %lor.lhs.false318
  %59 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !0
  %cop_warnings323 = getelementptr inbounds %struct.cop* %59, i64 0, i32 14
  %60 = load %struct.sv** %cop_warnings323, align 8, !tbaa !0
  %sv_any324 = getelementptr inbounds %struct.sv* %60, i64 0, i32 0
  %61 = load i8** %sv_any324, align 8, !tbaa !0
  %xpv_pv325 = bitcast i8* %61 to i8**
  %62 = load i8** %xpv_pv325, align 8, !tbaa !0
  %arrayidx326 = getelementptr inbounds i8* %62, i64 5
  %63 = load i8* %arrayidx326, align 1, !tbaa !1
  %and328 = and i8 %63, 16
  %tobool329 = icmp eq i8 %and328, 0
  br i1 %tobool329, label %for.cond333.preheader, label %if.then330

if.then330:                                       ; preds = %land.lhs.true322, %lor.lhs.false314, %sw.bb311
  call void (i32, i8*, ...)* @Perl_warner(i32 22, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0)) #7
  br label %for.cond333.preheader

for.cond333.preheader:                            ; preds = %land.lhs.true322, %lor.lhs.false318, %if.then330
  %.pn798.pre = load i8** %s.addr, align 8
  br label %for.cond333

for.cond333:                                      ; preds = %for.cond333, %lor.lhs.false349, %for.cond333.preheader
  %.pn798 = phi i8* [ %.pn798.pre, %for.cond333.preheader ], [ %storemerge797, %lor.lhs.false349 ], [ %storemerge797, %for.cond333 ]
  %storemerge797 = getelementptr inbounds i8* %.pn798, i64 1
  store i8* %storemerge797, i8** %s.addr, align 8, !tbaa !0
  %64 = load i8* %storemerge797, align 1, !tbaa !1
  %.off848 = add i8 %64, -65
  %65 = icmp ult i8 %.off848, 26
  %.off849 = add i8 %64, -97
  %66 = icmp ult i8 %.off849, 26
  %or.cond862 = or i1 %65, %66
  br i1 %or.cond862, label %for.cond333, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %for.cond333
  %.off850 = add i8 %64, -48
  %67 = icmp ult i8 %.off850, 10
  %cmp359 = icmp eq i8 %64, 95
  %or.cond844 = or i1 %67, %cmp359
  br i1 %or.cond844, label %for.cond333, label %return

sw.bb366:                                         ; preds = %entry
  %68 = load i8*** @PL_origargv, align 8, !tbaa !0
  %69 = load i8** %68, align 8, !tbaa !0
  %call.i829 = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %call1.i = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call.i829, i8* getelementptr inbounds ([53 x i8]* @.str100, i64 0, i64 0), i8* %69) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %sw.bb366
  %p.05.i = phi i8** [ getelementptr inbounds ([29 x i8*]* @S_usage.usage_msg, i64 0, i64 0), %sw.bb366 ], [ %incdec.ptr.i, %while.body.i ]
  %call2.i = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %incdec.ptr.i = getelementptr inbounds i8** %p.05.i, i64 1
  %70 = load i8** %p.05.i, align 8, !tbaa !0
  %call3.i = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call2.i, i8* getelementptr inbounds ([6 x i8]* @.str101, i64 0, i64 0), i8* %70) #7
  %71 = load i8** %incdec.ptr.i, align 8, !tbaa !0
  %tobool.i830 = icmp eq i8* %71, null
  br i1 %tobool.i830, label %S_usage.exit, label %while.body.i

S_usage.exit:                                     ; preds = %while.body.i
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  call fastcc void @S_my_exit_jump() #7
  br label %sw.bb368

sw.bb368:                                         ; preds = %entry, %S_usage.exit
  %72 = load i8** @PL_inplace, align 8, !tbaa !0
  %tobool369 = icmp eq i8* %72, null
  br i1 %tobool369, label %if.end371, label %if.then370

if.then370:                                       ; preds = %sw.bb368
  call void @Perl_safesysfree(i8* %72) #7
  br label %if.end371

if.end371:                                        ; preds = %sw.bb368, %if.then370
  %73 = load i8** %s.addr, align 8, !tbaa !0
  %add.ptr372 = getelementptr inbounds i8* %73, i64 1
  %call373 = call i8* @Perl_savepv(i8* %add.ptr372) #7
  store i8* %call373, i8** @PL_inplace, align 8, !tbaa !0
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc401.critedge, %if.end371
  %74 = phi i8* [ %call373, %if.end371 ], [ %incdec.ptr402, %for.inc401.critedge ]
  store i8* %74, i8** %s.addr, align 8, !tbaa !0
  %75 = load i8* %74, align 1, !tbaa !1
  switch i8 %75, label %for.inc401.critedge [
    i8 0, label %return
    i8 9, label %if.then405
    i8 10, label %if.then405
    i8 12, label %if.then405
    i8 13, label %if.then405
    i8 32, label %if.then405
  ]

for.inc401.critedge:                              ; preds = %for.cond374
  %incdec.ptr402 = getelementptr inbounds i8* %74, i64 1
  br label %for.cond374

if.then405:                                       ; preds = %for.cond374, %for.cond374, %for.cond374, %for.cond374, %for.cond374
  %incdec.ptr406 = getelementptr inbounds i8* %74, i64 1
  store i8* %incdec.ptr406, i8** %s.addr, align 8, !tbaa !0
  store i8 0, i8* %74, align 1, !tbaa !1
  %76 = load i8** %s.addr, align 8, !tbaa !0
  %77 = load i8* %76, align 1, !tbaa !1
  %cmp408 = icmp eq i8 %77, 45
  br i1 %cmp408, label %if.then410, label %return

if.then410:                                       ; preds = %if.then405
  %incdec.ptr411 = getelementptr inbounds i8* %76, i64 1
  store i8* %incdec.ptr411, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb414:                                         ; preds = %entry
  %78 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i831 = icmp sgt i32 %78, -1
  br i1 %cmp.i831, label %if.then.i832, label %while.cond416

if.then.i832:                                     ; preds = %sw.bb414
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0)) #7
  %.pre880 = load i8** %s.addr, align 8, !tbaa !0
  br label %while.cond416

while.cond416:                                    ; preds = %if.then.i832, %sw.bb414, %land.end440
  %.pn = phi i8* [ %storemerge, %land.end440 ], [ %s, %sw.bb414 ], [ %.pre880, %if.then.i832 ]
  %storemerge = getelementptr inbounds i8* %.pn, i64 1
  store i8* %storemerge, i8** %s.addr, align 8, !tbaa !0
  %79 = load i8* %storemerge, align 1, !tbaa !1
  %tobool418 = icmp eq i8 %79, 0
  br i1 %tobool418, label %if.else519, label %land.rhs419

land.rhs419:                                      ; preds = %while.cond416
  %switch.tableidx823 = add i8 %79, -9
  %80 = icmp ult i8 %switch.tableidx823, 24
  br i1 %80, label %land.end440, label %for.cond447

land.end440:                                      ; preds = %land.rhs419
  %switch.cast824 = zext i8 %switch.tableidx823 to i24
  %switch.downshift826 = lshr i24 -8388581, %switch.cast824
  %81 = and i24 %switch.downshift826, 1
  %switch.masked827 = icmp eq i24 %81, 0
  br i1 %switch.masked827, label %while.end443, label %while.cond416

while.end443:                                     ; preds = %land.end440
  br i1 %tobool418, label %if.else519, label %for.cond447

for.cond447:                                      ; preds = %land.rhs419, %while.end443, %for.cond447.backedge
  %82 = phi i8 [ %.pre883, %for.cond447.backedge ], [ %79, %while.end443 ], [ %79, %land.rhs419 ]
  %e446.0 = phi i8* [ %e446.0.be, %for.cond447.backedge ], [ %storemerge, %while.end443 ], [ %storemerge, %land.rhs419 ]
  switch i8 %82, label %for.inc474.critedge [
    i8 0, label %while.cond477
    i8 32, label %while.cond477
    i8 9, label %while.cond477
    i8 10, label %while.cond477
    i8 13, label %while.cond477
    i8 12, label %while.cond477
  ]

for.inc474.critedge:                              ; preds = %for.cond447
  %incdec.ptr475 = getelementptr inbounds i8* %e446.0, i64 1
  br label %for.cond447.backedge

for.cond447.backedge:                             ; preds = %while.cond477, %for.inc474.critedge
  %e446.0.be = phi i8* [ %incdec.ptr475, %for.inc474.critedge ], [ %p.1, %while.cond477 ]
  %.pre883 = load i8* %e446.0.be, align 1, !tbaa !1
  br label %for.cond447

while.cond477:                                    ; preds = %for.cond447, %for.cond447, %for.cond447, %for.cond447, %for.cond447, %for.cond447, %while.body498
  %83 = phi i8 [ %.pre884, %while.body498 ], [ %82, %for.cond447 ], [ %82, %for.cond447 ], [ %82, %for.cond447 ], [ %82, %for.cond447 ], [ %82, %for.cond447 ], [ %82, %for.cond447 ]
  %p.1 = phi i8* [ %incdec.ptr499, %while.body498 ], [ %e446.0, %for.cond447 ], [ %e446.0, %for.cond447 ], [ %e446.0, %for.cond447 ], [ %e446.0, %for.cond447 ], [ %e446.0, %for.cond447 ], [ %e446.0, %for.cond447 ]
  switch i8 %83, label %for.cond447.backedge [
    i8 32, label %while.body498
    i8 9, label %while.body498
    i8 10, label %while.body498
    i8 13, label %while.body498
    i8 12, label %while.body498
    i8 0, label %do.end
    i8 45, label %do.end
  ]

while.body498:                                    ; preds = %while.cond477, %while.cond477, %while.cond477, %while.cond477, %while.cond477
  %incdec.ptr499 = getelementptr inbounds i8* %p.1, i64 1
  %.pre884 = load i8* %incdec.ptr499, align 1, !tbaa !1
  br label %while.cond477

do.end:                                           ; preds = %while.cond477, %while.cond477
  %sub.ptr.lhs.cast508 = ptrtoint i8* %e446.0 to i64
  %sub.ptr.rhs.cast509 = ptrtoint i8* %storemerge to i64
  %sub.ptr.sub510 = sub i64 %sub.ptr.lhs.cast508, %sub.ptr.rhs.cast509
  %conv511 = trunc i64 %sub.ptr.sub510 to i32
  %call512 = call i8* @Perl_savepvn(i8* %storemerge, i32 %conv511) #7
  call fastcc void @S_incpush(i8* %call512, i32 1, i32 1, i32 0) #8
  call void @Perl_safesysfree(i8* %call512) #7
  store i8* %p.1, i8** %s.addr, align 8, !tbaa !0
  %84 = load i8* %p.1, align 1, !tbaa !1
  %cmp514 = icmp eq i8 %84, 45
  br i1 %cmp514, label %if.then516, label %return

if.then516:                                       ; preds = %do.end
  %incdec.ptr517 = getelementptr inbounds i8* %p.1, i64 1
  store i8* %incdec.ptr517, i8** %s.addr, align 8, !tbaa !0
  br label %return

if.else519:                                       ; preds = %while.cond416, %while.end443
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0)) #7
  %.pre882 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb521:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_l, align 1, !tbaa !1
  %incdec.ptr522 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr522, i8** %s.addr, align 8, !tbaa !0
  %85 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %tobool523 = icmp eq %struct.sv* %85, null
  br i1 %tobool523, label %if.end525, label %if.then524

if.then524:                                       ; preds = %sw.bb521
  call void @Perl_sv_free(%struct.sv* %85) #7
  store %struct.sv* null, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %.pre885 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end525

if.end525:                                        ; preds = %sw.bb521, %if.then524
  %86 = phi i8* [ %incdec.ptr522, %sw.bb521 ], [ %.pre885, %if.then524 ]
  %87 = load i8* %86, align 1, !tbaa !1
  %.off847 = add i8 %87, -48
  %88 = icmp ult i8 %.off847, 10
  br i1 %88, label %if.then533, label %if.else546

if.then533:                                       ; preds = %if.end525
  store i32 0, i32* %flags534, align 4, !tbaa !3
  %call535 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i64 1) #7
  store %struct.sv* %call535, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %89 = load i8** %s.addr, align 8, !tbaa !0
  %90 = load i8* %89, align 1, !tbaa !1
  %cmp537 = icmp eq i8 %90, 48
  %conv540 = select i1 %cmp537, i64 4, i64 3
  store i64 %conv540, i64* %numlen, align 8, !tbaa !5
  %call541 = call i64 @Perl_grok_oct(i8* %89, i64* %numlen, i32* %flags534, double* null) #7
  %conv542 = trunc i64 %call541 to i8
  %91 = load %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  %sv_any543 = getelementptr inbounds %struct.sv* %91, i64 0, i32 0
  %92 = load i8** %sv_any543, align 8, !tbaa !0
  %xpv_pv544 = bitcast i8* %92 to i8**
  %93 = load i8** %xpv_pv544, align 8, !tbaa !0
  store i8 %conv542, i8* %93, align 1, !tbaa !1
  %94 = load i64* %numlen, align 8, !tbaa !5
  %95 = load i8** %s.addr, align 8, !tbaa !0
  %add.ptr545 = getelementptr inbounds i8* %95, i64 %94
  store i8* %add.ptr545, i8** %s.addr, align 8, !tbaa !0
  br label %if.end559

if.else546:                                       ; preds = %if.end525
  %96 = load %struct.sv** @PL_rs, align 8, !tbaa !0
  %sv_flags547 = getelementptr inbounds %struct.sv* %96, i64 0, i32 2
  %97 = load i32* %sv_flags547, align 4, !tbaa !3
  %and548 = and i32 %97, 262144
  %tobool549 = icmp eq i32 %and548, 0
  br i1 %tobool549, label %if.else556, label %land.lhs.true550

land.lhs.true550:                                 ; preds = %if.else546
  %sv_any551 = getelementptr inbounds %struct.sv* %96, i64 0, i32 0
  %98 = load i8** %sv_any551, align 8, !tbaa !0
  %xpv_cur552 = getelementptr inbounds i8* %98, i64 8
  %99 = bitcast i8* %xpv_cur552 to i64*
  %100 = load i64* %99, align 8, !tbaa !5
  %tobool553 = icmp eq i64 %100, 0
  br i1 %tobool553, label %if.then554, label %if.else556

if.then554:                                       ; preds = %land.lhs.true550
  %call555 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([3 x i8]* @.str27, i64 0, i64 0), i64 2) #7
  store %struct.sv* %call555, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  br label %if.end559

if.else556:                                       ; preds = %land.lhs.true550, %if.else546
  %call557 = call %struct.sv* @Perl_newSVsv(%struct.sv* %96) #7
  store %struct.sv* %call557, %struct.sv** @PL_ors_sv, align 8, !tbaa !0
  br label %if.end559

if.end559:                                        ; preds = %if.then554, %if.else556, %if.then533
  %101 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb560:                                         ; preds = %entry
  %102 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i834 = icmp sgt i32 %102, -1
  br i1 %cmp.i834, label %if.then.i835, label %S_forbid_setid.exit839

if.then.i835:                                     ; preds = %sw.bb560
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0)) #7
  br label %sw.bb561

sw.bb561:                                         ; preds = %if.then.i835, %entry
  %.pr = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i837 = icmp sgt i32 %.pr, -1
  br i1 %cmp.i837, label %if.then.i838, label %S_forbid_setid.exit839

if.then.i838:                                     ; preds = %sw.bb561
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0)) #7
  br label %S_forbid_setid.exit839

S_forbid_setid.exit839:                           ; preds = %sw.bb561, %sw.bb560, %if.then.i838
  %103 = load i8** %s.addr, align 8, !tbaa !0
  %incdec.ptr562 = getelementptr inbounds i8* %103, i64 1
  store i8* %incdec.ptr562, i8** %s.addr, align 8, !tbaa !0
  %104 = load i8* %incdec.ptr562, align 1, !tbaa !1
  switch i8 %104, label %if.end572 [
    i8 0, label %if.else644
    i8 45, label %if.then570
  ]

if.then570:                                       ; preds = %S_forbid_setid.exit839
  %incdec.ptr571 = getelementptr inbounds i8* %103, i64 2
  store i8* %incdec.ptr571, i8** %s.addr, align 8, !tbaa !0
  br label %if.end572

if.end572:                                        ; preds = %S_forbid_setid.exit839, %if.then570
  %use.0 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), %if.then570 ], [ getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), %S_forbid_setid.exit839 ]
  %call573 = call %struct.sv* @Perl_newSVpv(i8* %use.0, i64 0) #7
  %105 = load i8** %s.addr, align 8, !tbaa !0
  br label %while.cond574

while.cond574:                                    ; preds = %while.body607, %if.end572
  %106 = phi i8* [ %incdec.ptr608, %while.body607 ], [ %105, %if.end572 ]
  %107 = load i8* %106, align 1, !tbaa !1
  %.off = add i8 %107, -65
  %108 = icmp ult i8 %.off, 26
  %.off845 = add i8 %107, -97
  %109 = icmp ult i8 %.off845, 26
  %or.cond864 = or i1 %108, %109
  %.off846 = add i8 %107, -48
  %110 = icmp ult i8 %.off846, 10
  %or.cond866 = or i1 %or.cond864, %110
  br i1 %or.cond866, label %while.body607, label %lor.end606

lor.end606:                                       ; preds = %while.cond574
  switch i8 %107, label %if.then613 [
    i8 95, label %while.body607
    i8 58, label %while.body607
    i8 61, label %if.else626
  ]

while.body607:                                    ; preds = %lor.end606, %lor.end606, %while.cond574
  %incdec.ptr608 = getelementptr inbounds i8* %106, i64 1
  store i8* %incdec.ptr608, i8** %s.addr, align 8, !tbaa !0
  br label %while.cond574

if.then613:                                       ; preds = %lor.end606
  call void @Perl_sv_catpv(%struct.sv* %call573, i8* %105) #7
  %add.ptr614 = getelementptr inbounds i8* %105, i64 -1
  %111 = load i8* %add.ptr614, align 1, !tbaa !1
  %cmp616 = icmp eq i8 %111, 109
  br i1 %cmp616, label %if.then618, label %if.end637

if.then618:                                       ; preds = %if.then613
  %112 = load i8** %s.addr, align 8, !tbaa !0
  %113 = load i8* %112, align 1, !tbaa !1
  %cmp620 = icmp eq i8 %113, 0
  br i1 %cmp620, label %if.end624, label %if.then622

if.then622:                                       ; preds = %if.then618
  %conv619 = sext i8 %113 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str32, i64 0, i64 0), i32 %conv619) #7
  br label %if.end624

if.end624:                                        ; preds = %if.then618, %if.then622
  call void @Perl_sv_catpv(%struct.sv* %call573, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #7
  br label %if.end637

if.else626:                                       ; preds = %lor.end606
  %cmp627 = icmp eq i8* %106, %105
  br i1 %cmp627, label %if.then629, label %if.end632

if.then629:                                       ; preds = %if.else626
  %arrayidx630 = getelementptr inbounds i8* %105, i64 -1
  %114 = load i8* %arrayidx630, align 1, !tbaa !1
  %conv631 = sext i8 %114 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str34, i64 0, i64 0), i32 %conv631) #7
  %.pre886 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end632

if.end632:                                        ; preds = %if.then629, %if.else626
  %115 = phi i8* [ %.pre886, %if.then629 ], [ %106, %if.else626 ]
  %sub.ptr.lhs.cast633 = ptrtoint i8* %115 to i64
  %sub.ptr.rhs.cast634 = ptrtoint i8* %105 to i64
  %sub.ptr.sub635 = sub i64 %sub.ptr.lhs.cast633, %sub.ptr.rhs.cast634
  call void @Perl_sv_catpvn_flags(%struct.sv* %call573, i8* %105, i64 %sub.ptr.sub635, i32 2) #7
  call void @Perl_sv_catpv(%struct.sv* %call573, i8* getelementptr inbounds ([13 x i8]* @.str35, i64 0, i64 0)) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %call573, i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0), i64 1, i32 2) #7
  %116 = load i8** %s.addr, align 8, !tbaa !0
  %incdec.ptr636 = getelementptr inbounds i8* %116, i64 1
  store i8* %incdec.ptr636, i8** %s.addr, align 8, !tbaa !0
  call void @Perl_sv_catpv(%struct.sv* %call573, i8* %incdec.ptr636) #7
  call void @Perl_sv_catpvn_flags(%struct.sv* %call573, i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0), i64 2, i32 2) #7
  br label %if.end637

if.end637:                                        ; preds = %if.then613, %if.end624, %if.end632
  %117 = load i8** %s.addr, align 8, !tbaa !0
  %call638 = call i64 @strlen(i8* %117) #7
  %add.ptr639 = getelementptr inbounds i8* %117, i64 %call638
  store i8* %add.ptr639, i8** %s.addr, align 8, !tbaa !0
  %118 = load %struct.av** @PL_preambleav, align 8, !tbaa !0
  %tobool640 = icmp eq %struct.av* %118, null
  br i1 %tobool640, label %if.then641, label %if.end643

if.then641:                                       ; preds = %if.end637
  %call642 = call %struct.av* @Perl_newAV() #7
  store %struct.av* %call642, %struct.av** @PL_preambleav, align 8, !tbaa !0
  br label %if.end643

if.end643:                                        ; preds = %if.end637, %if.then641
  %119 = phi %struct.av* [ %118, %if.end637 ], [ %call642, %if.then641 ]
  call void @Perl_av_push(%struct.av* %119, %struct.sv* %call573) #7
  br label %if.end647

if.else644:                                       ; preds = %S_forbid_setid.exit839
  %120 = load i8* %103, align 1, !tbaa !1
  %conv646 = sext i8 %120 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([24 x i8]* @.str37, i64 0, i64 0), i32 %conv646) #7
  br label %if.end647

if.end647:                                        ; preds = %if.else644, %if.end643
  %121 = load i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb648:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_n, align 1, !tbaa !1
  %incdec.ptr649 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr649, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb650:                                         ; preds = %entry
  store i8 1, i8* @PL_minus_p, align 1, !tbaa !1
  %incdec.ptr651 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr651, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb652:                                         ; preds = %entry
  %122 = load i32* @PL_suidscript, align 4, !tbaa !3
  %cmp.i840 = icmp sgt i32 %122, -1
  br i1 %cmp.i840, label %if.then.i841, label %S_forbid_setid.exit842

if.then.i841:                                     ; preds = %sw.bb652
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #7
  %.pre887 = load i8** %s.addr, align 8, !tbaa !0
  br label %S_forbid_setid.exit842

S_forbid_setid.exit842:                           ; preds = %sw.bb652, %if.then.i841
  %123 = phi i8* [ %s, %sw.bb652 ], [ %.pre887, %if.then.i841 ]
  store i8 1, i8* @PL_doswitches, align 1, !tbaa !1
  %incdec.ptr653 = getelementptr inbounds i8* %123, i64 1
  store i8* %incdec.ptr653, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb654:                                         ; preds = %entry
  %124 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool655 = icmp eq i8 %124, 0
  br i1 %tobool655, label %if.then656, label %if.end657

if.then656:                                       ; preds = %sw.bb654
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([68 x i8]* @.str39, i64 0, i64 0), i32 116, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  %.pre888 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end657

if.end657:                                        ; preds = %sw.bb654, %if.then656
  %125 = phi i8* [ %s, %sw.bb654 ], [ %.pre888, %if.then656 ]
  %incdec.ptr658 = getelementptr inbounds i8* %125, i64 1
  store i8* %incdec.ptr658, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb659:                                         ; preds = %entry
  %126 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool660 = icmp eq i8 %126, 0
  br i1 %tobool660, label %if.then661, label %if.end662

if.then661:                                       ; preds = %sw.bb659
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([68 x i8]* @.str39, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) #7
  %.pre889 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end662

if.end662:                                        ; preds = %sw.bb659, %if.then661
  %127 = phi i8* [ %s, %sw.bb659 ], [ %.pre889, %if.then661 ]
  %incdec.ptr663 = getelementptr inbounds i8* %127, i64 1
  store i8* %incdec.ptr663, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb664:                                         ; preds = %entry
  store i8 1, i8* @PL_do_undump, align 1, !tbaa !1
  %incdec.ptr665 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr665, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb666:                                         ; preds = %entry
  store i8 1, i8* @PL_unsafe, align 1, !tbaa !1
  %incdec.ptr667 = getelementptr inbounds i8* %s, i64 1
  store i8* %incdec.ptr667, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb668:                                         ; preds = %entry
  %call669 = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %128 = load %struct.sv** @PL_patchlevel, align 8, !tbaa !0
  %call670 = call i8* (i8*, ...)* @Perl_form(i8* getelementptr inbounds ([33 x i8]* @.str40, i64 0, i64 0), %struct.sv* %128, i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0)) #7
  %call671 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call669, i8* %call670) #7
  %call672 = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %call673 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call672, i8* getelementptr inbounds ([35 x i8]* @.str42, i64 0, i64 0)) #7
  %call674 = call %struct._PerlIO** @Perl_PerlIO_stdout() #7
  %call675 = call i32 (%struct._PerlIO**, i8*, ...)* @PerlIO_printf(%struct._PerlIO** %call674, i8* getelementptr inbounds ([377 x i8]* @.str43, i64 0, i64 0)) #7
  store i32 0, i32* @PL_statusvalue, align 4, !tbaa !3
  call fastcc void @S_my_exit_jump() #7
  br label %sw.bb676

sw.bb676:                                         ; preds = %entry, %sw.bb668
  %129 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and678 = and i8 %129, 6
  %tobool679 = icmp eq i8 %and678, 0
  br i1 %tobool679, label %if.then680, label %if.end684

if.then680:                                       ; preds = %sw.bb676
  %or682 = or i8 %129, 1
  store i8 %or682, i8* @PL_dowarn, align 1, !tbaa !1
  br label %if.end684

if.end684:                                        ; preds = %sw.bb676, %if.then680
  %130 = load i8** %s.addr, align 8, !tbaa !0
  %incdec.ptr685 = getelementptr inbounds i8* %130, i64 1
  store i8* %incdec.ptr685, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb686:                                         ; preds = %entry
  store i8 3, i8* @PL_dowarn, align 1, !tbaa !1
  %131 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %magicptr = ptrtoint %struct.sv* %131 to i64
  switch i64 %magicptr, label %if.then695 [
    i64 32, label %if.end696
    i64 16, label %if.end696
    i64 0, label %if.end696
  ]

if.then695:                                       ; preds = %sw.bb686
  call void @Perl_sv_free(%struct.sv* %131) #7
  %.pre890 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end696

if.end696:                                        ; preds = %sw.bb686, %sw.bb686, %sw.bb686, %if.then695
  %132 = phi i8* [ %s, %sw.bb686 ], [ %s, %sw.bb686 ], [ %s, %sw.bb686 ], [ %.pre890, %if.then695 ]
  store %struct.sv* inttoptr (i64 16 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %incdec.ptr697 = getelementptr inbounds i8* %132, i64 1
  store i8* %incdec.ptr697, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb698:                                         ; preds = %entry
  store i8 4, i8* @PL_dowarn, align 1, !tbaa !1
  %133 = load %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %magicptr821 = ptrtoint %struct.sv* %133 to i64
  switch i64 %magicptr821, label %if.then707 [
    i64 32, label %if.end708
    i64 16, label %if.end708
    i64 0, label %if.end708
  ]

if.then707:                                       ; preds = %sw.bb698
  call void @Perl_sv_free(%struct.sv* %133) #7
  %.pre891 = load i8** %s.addr, align 8, !tbaa !0
  br label %if.end708

if.end708:                                        ; preds = %sw.bb698, %sw.bb698, %sw.bb698, %if.then707
  %134 = phi i8* [ %s, %sw.bb698 ], [ %s, %sw.bb698 ], [ %s, %sw.bb698 ], [ %.pre891, %if.then707 ]
  store %struct.sv* inttoptr (i64 32 to %struct.sv*), %struct.sv** getelementptr inbounds (%struct.cop* @PL_compiling, i64 0, i32 14), align 8, !tbaa !0
  %incdec.ptr709 = getelementptr inbounds i8* %134, i64 1
  store i8* %incdec.ptr709, i8** %s.addr, align 8, !tbaa !0
  br label %return

sw.bb710:                                         ; preds = %entry, %entry
  %arrayidx711 = getelementptr inbounds i8* %s, i64 1
  %135 = load i8* %arrayidx711, align 1, !tbaa !1
  %cmp713 = icmp eq i8 %135, 45
  %add.ptr716 = getelementptr inbounds i8* %s, i64 2
  %add.ptr716. = select i1 %cmp713, i8* %add.ptr716, i8* null
  ret i8* %add.ptr716.

sw.bb719:                                         ; preds = %entry
  %136 = load i8* @PL_preprocess, align 1, !tbaa !1
  %tobool720 = icmp eq i8 %136, 0
  br i1 %tobool720, label %sw.default, label %if.then721

if.then721:                                       ; preds = %sw.bb719
  %add.ptr722 = getelementptr inbounds i8* %s, i64 1
  br label %return

sw.default:                                       ; preds = %sw.bb719, %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0), i8* %s) #7
  br label %return

return:                                           ; preds = %for.cond374, %lor.lhs.false349, %if.else519, %if.then516, %do.end, %if.then410, %if.then405, %sw.default, %entry, %entry, %entry, %entry, %entry, %if.then721, %if.end708, %if.end696, %if.end684, %sw.bb666, %sw.bb664, %if.end662, %if.end657, %S_forbid_setid.exit842, %sw.bb650, %sw.bb648, %if.end647, %if.end559, %if.end310, %sw.bb191, %sw.bb189, %while.end, %sw.bb163, %Perl_get_sv.exit
  %retval.0 = phi i8* [ %add.ptr722, %if.then721 ], [ %incdec.ptr709, %if.end708 ], [ %incdec.ptr697, %if.end696 ], [ %incdec.ptr685, %if.end684 ], [ %incdec.ptr667, %sw.bb666 ], [ %incdec.ptr665, %sw.bb664 ], [ %incdec.ptr663, %if.end662 ], [ %incdec.ptr658, %if.end657 ], [ %incdec.ptr653, %S_forbid_setid.exit842 ], [ %incdec.ptr651, %sw.bb650 ], [ %incdec.ptr649, %sw.bb648 ], [ %121, %if.end647 ], [ %101, %if.end559 ], [ %52, %if.end310 ], [ %incdec.ptr192, %sw.bb191 ], [ %incdec.ptr190, %sw.bb189 ], [ %30, %while.end ], [ %24, %sw.bb163 ], [ %add.ptr162, %Perl_get_sv.exit ], [ null, %entry ], [ null, %entry ], [ null, %entry ], [ null, %entry ], [ null, %entry ], [ null, %sw.default ], [ %76, %if.then405 ], [ %incdec.ptr411, %if.then410 ], [ %p.1, %do.end ], [ %incdec.ptr517, %if.then516 ], [ %.pre882, %if.else519 ], [ %storemerge797, %lor.lhs.false349 ], [ %74, %for.cond374 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i64 @Perl_grok_hex(i8*, i64*, i32*, double*) #3

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #3

; Function Attrs: optsize
declare i64 @Perl_grok_oct(i8*, i64*, i32*, double*) #3

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #3

; Function Attrs: optsize
declare i32 @Perl_parse_unicode_opts(i8**) #3

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(%struct.sv*, i8*, i64, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @Perl_init_debugger() #0 {
entry:
  %0 = load %struct.hv** @PL_curstash, align 8, !tbaa !0
  %1 = load %struct.hv** @PL_debstash, align 8, !tbaa !0
  store %struct.hv* %1, %struct.hv** @PL_curstash, align 8, !tbaa !0
  %call = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i32 2, i32 10) #7
  %call1 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %call) #7
  %sv_any = getelementptr inbounds %struct.gv* %call1, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %3, i64 0, i32 4
  %4 = load %struct.av** %gp_av, align 8, !tbaa !0
  store %struct.av* %4, %struct.av** @PL_dbargs, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.av* %4, i64 0, i32 0
  %5 = load %struct.xpvav** %sv_any2, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %5, i64 0, i32 9
  %6 = load i8* %xav_flags, align 1, !tbaa !1
  %and = and i8 %6, -2
  store i8 %and, i8* %xav_flags, align 1, !tbaa !1
  %call4 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([7 x i8]* @.str46, i64 0, i64 0), i32 2, i32 13) #7
  store %struct.gv* %call4, %struct.gv** @PL_DBgv, align 8, !tbaa !0
  %call5 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 2, i32 10) #7
  store %struct.gv* %call5, %struct.gv** @PL_DBline, align 8, !tbaa !0
  %call6 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), i32 2, i32 11) #7
  %call7 = tail call %struct.gv* @Perl_gv_HVadd(%struct.gv* %call6) #7
  store %struct.gv* %call7, %struct.gv** @PL_DBsub, align 8, !tbaa !0
  %sv_any8 = getelementptr inbounds %struct.gv* %call7, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any8, align 8, !tbaa !0
  %xgv_gp9 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp9, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %8, i64 0, i32 0
  %9 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  %call10 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %9, i32 1) #7
  %call11 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8]* @.str49, i64 0, i64 0), i32 2, i32 4) #7
  %sv_any12 = getelementptr inbounds %struct.gv* %call11, i64 0, i32 0
  %10 = load %struct.xpvgv** %sv_any12, align 8, !tbaa !0
  %xgv_gp13 = getelementptr inbounds %struct.xpvgv* %10, i64 0, i32 7
  %11 = load %struct.gp** %xgv_gp13, align 8, !tbaa !0
  %gp_sv14 = getelementptr inbounds %struct.gp* %11, i64 0, i32 0
  %12 = load %struct.sv** %gp_sv14, align 8, !tbaa !0
  store %struct.sv* %12, %struct.sv** @PL_DBsingle, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %12, i64 0) #7
  %call15 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([10 x i8]* @.str50, i64 0, i64 0), i32 2, i32 4) #7
  %sv_any16 = getelementptr inbounds %struct.gv* %call15, i64 0, i32 0
  %13 = load %struct.xpvgv** %sv_any16, align 8, !tbaa !0
  %xgv_gp17 = getelementptr inbounds %struct.xpvgv* %13, i64 0, i32 7
  %14 = load %struct.gp** %xgv_gp17, align 8, !tbaa !0
  %gp_sv18 = getelementptr inbounds %struct.gp* %14, i64 0, i32 0
  %15 = load %struct.sv** %gp_sv18, align 8, !tbaa !0
  store %struct.sv* %15, %struct.sv** @PL_DBtrace, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %15, i64 0) #7
  %call19 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), i32 2, i32 4) #7
  %sv_any20 = getelementptr inbounds %struct.gv* %call19, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any20, align 8, !tbaa !0
  %xgv_gp21 = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp21, align 8, !tbaa !0
  %gp_sv22 = getelementptr inbounds %struct.gp* %17, i64 0, i32 0
  %18 = load %struct.sv** %gp_sv22, align 8, !tbaa !0
  store %struct.sv* %18, %struct.sv** @PL_DBsignal, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %18, i64 0) #7
  store %struct.hv* %0, %struct.hv** @PL_curstash, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_savepvn(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @S_incpush(i8* %p, i32 %addsubdirs, i32 %addoldvers, i32 %usesep) #0 {
entry:
  %tobool = icmp eq i8* %p, null
  br i1 %tobool, label %if.end51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8* %p, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %0, 0
  br i1 %tobool1, label %if.end51, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %tobool2 = icmp ne i32 %addsubdirs, 0
  %tobool2.not = xor i1 %tobool2, true
  %tobool4 = icmp eq i32 %addoldvers, 0
  %or.cond = and i1 %tobool4, %tobool2.not
  br i1 %or.cond, label %land.rhs.lr.ph, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = call %struct.sv* @Perl_newSV(i64 0) #7
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end, %if.then5
  %subdir.0.ph = phi %struct.sv* [ null, %if.end ], [ %call, %if.then5 ]
  %tobool10 = icmp eq i32 %usesep, 0
  br label %land.rhs

land.rhs:                                         ; preds = %cond.end, %land.rhs.lr.ph
  %p.addr.092 = phi i8* [ %p, %land.rhs.lr.ph ], [ %p.addr.3, %cond.end ]
  %subdir.091 = phi %struct.sv* [ %subdir.0.ph, %land.rhs.lr.ph ], [ %subdir.3, %cond.end ]
  %1 = load i8* %p.addr.092, align 1, !tbaa !1
  %tobool8 = icmp eq i8 %1, 0
  br i1 %tobool8, label %while.end48, label %while.body

while.body:                                       ; preds = %land.rhs
  %call9 = call %struct.sv* @Perl_newSV(i64 0) #7
  br i1 %tobool10, label %if.else, label %while.cond12

while.cond12:                                     ; preds = %while.body, %while.cond12
  %p.addr.1 = phi i8* [ %incdec.ptr, %while.cond12 ], [ %p.addr.092, %while.body ]
  %2 = load i8* %p.addr.1, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 58
  %incdec.ptr = getelementptr inbounds i8* %p.addr.1, i64 1
  br i1 %cmp, label %while.cond12, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond12
  %call18 = call i8* @strchr(i8* %p.addr.1, i32 58) #7
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.else, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint i8* %call18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %p.addr.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @Perl_sv_setpvn(%struct.sv* %call9, i8* %p.addr.1, i64 %sub.ptr.sub) #7
  %add.ptr = getelementptr inbounds i8* %call18, i64 1
  br label %if.end22

if.else:                                          ; preds = %while.body, %land.lhs.true
  %p.addr.286 = phi i8* [ %p.addr.1, %land.lhs.true ], [ %p.addr.092, %while.body ]
  call void @Perl_sv_setpv(%struct.sv* %call9, i8* %p.addr.286) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %p.addr.3 = phi i8* [ %add.ptr, %if.then21 ], [ null, %if.else ]
  %tobool2.not95 = xor i1 %tobool2, true
  %brmerge = or i1 %or.cond, %tobool2.not95
  br i1 %brmerge, label %if.end39, label %if.then28

if.then28:                                        ; preds = %if.end22
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %subdir.091, i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0), %struct.sv* %call9, i32 5, i32 8, i32 7, i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0)) #7
  %call29 = call fastcc %struct.sv* @S_incpush_if_exists(%struct.sv* %subdir.091) #8
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call29, i8* getelementptr inbounds ([12 x i8]* @.str60, i64 0, i64 0), %struct.sv* %call9, i32 5, i32 8, i32 7) #7
  %call30 = call fastcc %struct.sv* @S_incpush_if_exists(%struct.sv* %call29) #8
  call void (%struct.sv*, i8*, ...)* @Perl_sv_setpvf(%struct.sv* %call30, i8* getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), %struct.sv* %call9, i8* getelementptr inbounds ([9 x i8]* @.str41, i64 0, i64 0)) #7
  %call31 = call fastcc %struct.sv* @S_incpush_if_exists(%struct.sv* %call30) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end22, %if.then28
  %subdir.3 = phi %struct.sv* [ %subdir.091, %if.end22 ], [ %call31, %if.then28 ]
  %3 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.gv* %3, i64 0, i32 0
  %4 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %4, i64 0, i32 7
  %5 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %5, i64 0, i32 4
  %6 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool40 = icmp eq %struct.av* %6, null
  br i1 %tobool40, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end39
  %call44 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %3) #7
  %sv_any45 = getelementptr inbounds %struct.gv* %call44, i64 0, i32 0
  %7 = load %struct.xpvgv** %sv_any45, align 8, !tbaa !0
  %xgv_gp46 = getelementptr inbounds %struct.xpvgv* %7, i64 0, i32 7
  %8 = load %struct.gp** %xgv_gp46, align 8, !tbaa !0
  %gp_av47 = getelementptr inbounds %struct.gp* %8, i64 0, i32 4
  %9 = load %struct.av** %gp_av47, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.end39, %cond.false
  %cond = phi %struct.av* [ %9, %cond.false ], [ %6, %if.end39 ]
  call void @Perl_av_push(%struct.av* %cond, %struct.sv* %call9) #7
  %tobool7 = icmp eq i8* %p.addr.3, null
  br i1 %tobool7, label %while.end48, label %land.rhs

while.end48:                                      ; preds = %cond.end, %land.rhs
  %subdir.0.lcssa = phi %struct.sv* [ %subdir.091, %land.rhs ], [ %subdir.3, %cond.end ]
  %tobool49 = icmp eq %struct.sv* %subdir.0.lcssa, null
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %while.end48
  call void @Perl_sv_free(%struct.sv* %subdir.0.lcssa) #7
  br label %if.end51

if.end51:                                         ; preds = %while.end48, %lor.lhs.false, %entry, %if.then50
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #3

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stdout() #3

; Function Attrs: optsize
declare i8* @Perl_form(i8*, ...) #3

; Function Attrs: nounwind optsize readnone uwtable
define void @Perl_my_unexec() #4 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define signext i8 @Perl_doing_taint(i32 %argc, i8** nocapture %argv, i8** nocapture %envp) #0 {
entry:
  %call = tail call i32 @getuid() #7
  %call1 = tail call i32 @geteuid() #7
  %call2 = tail call i32 @getgid() #7
  %call3 = tail call i32 @getegid() #7
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp eq i32 %call1, %call
  %cmp4 = icmp eq i32 %call3, %call2
  %or.cond = and i1 %cmp, %cmp4
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp5 = icmp sgt i32 %argc, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.end23

land.lhs.true6:                                   ; preds = %if.end
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %1, 45
  br i1 %cmp8, label %land.lhs.true10, label %if.end23

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %arrayidx12 = getelementptr inbounds i8* %0, i64 1
  %2 = load i8* %arrayidx12, align 1, !tbaa !1
  switch i8 %2, label %if.end23 [
    i8 116, label %return
    i8 84, label %return
  ]

if.end23:                                         ; preds = %land.lhs.true10, %land.lhs.true6, %if.end
  br label %return

return:                                           ; preds = %land.lhs.true10, %land.lhs.true10, %land.lhs.true, %if.end23
  %retval.0 = phi i8 [ 0, %if.end23 ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true10 ], [ 1, %land.lhs.true10 ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @getuid() #3

; Function Attrs: optsize
declare i32 @geteuid() #3

; Function Attrs: optsize
declare i32 @getgid() #3

; Function Attrs: optsize
declare i32 @getegid() #3

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #3

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define void @Perl_init_argv_symbols(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %dec = add nsw i32 %argc, -1
  %incdec.ptr = getelementptr inbounds i8** %argv, i64 1
  %0 = load i8* @PL_doswitches, align 1, !tbaa !1
  %tobool = icmp ne i8 %0, 0
  %cmp117 = icmp sgt i32 %dec, 0
  %or.cond125 = and i1 %tobool, %cmp117
  br i1 %or.cond125, label %land.rhs, label %if.end33

land.rhs:                                         ; preds = %entry, %for.inc
  %argc.addr.0119 = phi i32 [ %dec31, %for.inc ], [ %dec, %entry ]
  %argv.addr.0118 = phi i8** [ %incdec.ptr32, %for.inc ], [ %incdec.ptr, %entry ]
  %1 = load i8** %argv.addr.0118, align 8, !tbaa !0
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %2, 45
  br i1 %cmp1, label %for.body, label %if.end33

for.body:                                         ; preds = %land.rhs
  %arrayidx3 = getelementptr inbounds i8* %1, i64 1
  %3 = load i8* %arrayidx3, align 1, !tbaa !1
  switch i8 %3, label %if.end17 [
    i8 0, label %if.end33
    i8 45, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.body
  %arrayidx12 = getelementptr inbounds i8* %1, i64 2
  %4 = load i8* %arrayidx12, align 1, !tbaa !1
  %tobool13 = icmp eq i8 %4, 0
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  %dec15 = add nsw i32 %argc.addr.0119, -1
  %incdec.ptr16 = getelementptr inbounds i8** %argv.addr.0118, i64 1
  br label %if.end33

if.end17:                                         ; preds = %for.body, %land.lhs.true
  %call = tail call i8* @strchr(i8* %1, i32 61) #7
  %tobool19 = icmp eq i8* %call, null
  br i1 %tobool19, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  %incdec.ptr21 = getelementptr inbounds i8* %call, i64 1
  store i8 0, i8* %call, align 1, !tbaa !1
  %5 = load i8** %argv.addr.0118, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %5, i64 1
  %call23 = tail call %struct.gv* @Perl_gv_fetchpv(i8* %add.ptr, i32 1, i32 4) #7
  %sv_any = getelementptr inbounds %struct.gv* %call23, i64 0, i32 0
  %6 = load %struct.xpvgv** %sv_any, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %6, i64 0, i32 7
  %7 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_sv = getelementptr inbounds %struct.gp* %7, i64 0, i32 0
  %8 = load %struct.sv** %gp_sv, align 8, !tbaa !0
  tail call void @Perl_sv_setpv(%struct.sv* %8, i8* %incdec.ptr21) #7
  br label %for.inc

if.else:                                          ; preds = %if.end17
  %call26 = tail call %struct.gv* @Perl_gv_fetchpv(i8* %arrayidx3, i32 1, i32 4) #7
  %sv_any27 = getelementptr inbounds %struct.gv* %call26, i64 0, i32 0
  %9 = load %struct.xpvgv** %sv_any27, align 8, !tbaa !0
  %xgv_gp28 = getelementptr inbounds %struct.xpvgv* %9, i64 0, i32 7
  %10 = load %struct.gp** %xgv_gp28, align 8, !tbaa !0
  %gp_sv29 = getelementptr inbounds %struct.gp* %10, i64 0, i32 0
  %11 = load %struct.sv** %gp_sv29, align 8, !tbaa !0
  tail call void @Perl_sv_setiv(%struct.sv* %11, i64 1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.else
  %dec31 = add nsw i32 %argc.addr.0119, -1
  %incdec.ptr32 = getelementptr inbounds i8** %argv.addr.0118, i64 1
  %cmp = icmp sgt i32 %dec31, 0
  br i1 %cmp, label %land.rhs, label %if.end33

if.end33:                                         ; preds = %entry, %for.body, %land.rhs, %for.inc, %if.then14
  %argv.addr.1 = phi i8** [ %incdec.ptr16, %if.then14 ], [ %incdec.ptr, %entry ], [ %argv.addr.0118, %for.body ], [ %argv.addr.0118, %land.rhs ], [ %incdec.ptr32, %for.inc ]
  %argc.addr.1 = phi i32 [ %dec15, %if.then14 ], [ %dec, %entry ], [ %argc.addr.0119, %for.body ], [ %argc.addr.0119, %land.rhs ], [ %dec31, %for.inc ]
  %call34 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i32 1, i32 10) #7
  store %struct.gv* %call34, %struct.gv** @PL_argvgv, align 8, !tbaa !0
  %tobool35 = icmp eq %struct.gv* %call34, null
  br i1 %tobool35, label %if.end91, label %if.then36

if.then36:                                        ; preds = %if.end33
  %sv_any37 = getelementptr inbounds %struct.gv* %call34, i64 0, i32 0
  %12 = load %struct.xpvgv** %sv_any37, align 8, !tbaa !0
  %xgv_flags = getelementptr inbounds %struct.xpvgv* %12, i64 0, i32 11
  %13 = load i8* %xgv_flags, align 1, !tbaa !1
  %or = or i8 %13, 2
  store i8 %or, i8* %xgv_flags, align 1, !tbaa !1
  %14 = load %struct.gv** @PL_argvgv, align 8, !tbaa !0
  %call40 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %14) #7
  %15 = load %struct.gv** @PL_argvgv, align 8, !tbaa !0
  %sv_any41 = getelementptr inbounds %struct.gv* %15, i64 0, i32 0
  %16 = load %struct.xpvgv** %sv_any41, align 8, !tbaa !0
  %xgv_gp42 = getelementptr inbounds %struct.xpvgv* %16, i64 0, i32 7
  %17 = load %struct.gp** %xgv_gp42, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %17, i64 0, i32 4
  %18 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool43 = icmp eq %struct.av* %18, null
  br i1 %tobool43, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then36
  %call47 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %15) #7
  %sv_any48 = getelementptr inbounds %struct.gv* %call47, i64 0, i32 0
  %19 = load %struct.xpvgv** %sv_any48, align 8, !tbaa !0
  %xgv_gp49 = getelementptr inbounds %struct.xpvgv* %19, i64 0, i32 7
  %20 = load %struct.gp** %xgv_gp49, align 8, !tbaa !0
  %gp_av50 = getelementptr inbounds %struct.gp* %20, i64 0, i32 4
  %21 = load %struct.av** %gp_av50, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then36, %cond.false
  %cond = phi %struct.av* [ %21, %cond.false ], [ %18, %if.then36 ]
  tail call void @Perl_av_clear(%struct.av* %cond) #7
  %cmp52112 = icmp sgt i32 %argc.addr.1, 0
  br i1 %cmp52112, label %for.body54, label %if.end91

for.body54:                                       ; preds = %cond.end, %for.inc87
  %argc.addr.2114 = phi i32 [ %dec88, %for.inc87 ], [ %argc.addr.1, %cond.end ]
  %argv.addr.2113 = phi i8** [ %incdec.ptr89, %for.inc87 ], [ %argv.addr.1, %cond.end ]
  %22 = load i8** %argv.addr.2113, align 8, !tbaa !0
  %call56 = tail call %struct.sv* @Perl_newSVpv(i8* %22, i64 0) #7
  %23 = load %struct.gv** @PL_argvgv, align 8, !tbaa !0
  %sv_any57 = getelementptr inbounds %struct.gv* %23, i64 0, i32 0
  %24 = load %struct.xpvgv** %sv_any57, align 8, !tbaa !0
  %xgv_gp58 = getelementptr inbounds %struct.xpvgv* %24, i64 0, i32 7
  %25 = load %struct.gp** %xgv_gp58, align 8, !tbaa !0
  %gp_av59 = getelementptr inbounds %struct.gp* %25, i64 0, i32 4
  %26 = load %struct.av** %gp_av59, align 8, !tbaa !0
  %tobool60 = icmp eq %struct.av* %26, null
  br i1 %tobool60, label %cond.false65, label %cond.end70

cond.false65:                                     ; preds = %for.body54
  %call66 = tail call %struct.gv* @Perl_gv_AVadd(%struct.gv* %23) #7
  %sv_any67 = getelementptr inbounds %struct.gv* %call66, i64 0, i32 0
  %27 = load %struct.xpvgv** %sv_any67, align 8, !tbaa !0
  %xgv_gp68 = getelementptr inbounds %struct.xpvgv* %27, i64 0, i32 7
  %28 = load %struct.gp** %xgv_gp68, align 8, !tbaa !0
  %gp_av69 = getelementptr inbounds %struct.gp* %28, i64 0, i32 4
  %29 = load %struct.av** %gp_av69, align 8, !tbaa !0
  br label %cond.end70

cond.end70:                                       ; preds = %for.body54, %cond.false65
  %cond71 = phi %struct.av* [ %29, %cond.false65 ], [ %26, %for.body54 ]
  tail call void @Perl_av_push(%struct.av* %cond71, %struct.sv* %call56) #7
  %30 = load i32* @PL_unicode, align 4, !tbaa !3
  %and = and i32 %30, 64
  %tobool72 = icmp ne i32 %and, 0
  %31 = load i8* @PL_utf8locale, align 1, !tbaa !1
  %tobool74 = icmp eq i8 %31, 0
  %or.cond = and i1 %tobool72, %tobool74
  %and76 = and i32 %30, 32
  %tobool77 = icmp eq i32 %and76, 0
  %or.cond111 = or i1 %or.cond, %tobool77
  br i1 %or.cond111, label %if.end81, label %if.then78

if.then78:                                        ; preds = %cond.end70
  %sv_flags = getelementptr inbounds %struct.sv* %call56, i64 0, i32 2
  %32 = load i32* %sv_flags, align 4, !tbaa !3
  %or79 = or i32 %32, 536870912
  store i32 %or79, i32* %sv_flags, align 4, !tbaa !3
  %.pre = load i32* @PL_unicode, align 4, !tbaa !3
  br label %if.end81

if.end81:                                         ; preds = %cond.end70, %if.then78
  %33 = phi i32 [ %30, %cond.end70 ], [ %.pre, %if.then78 ]
  %and82 = and i32 %33, 128
  %tobool83 = icmp eq i32 %and82, 0
  br i1 %tobool83, label %for.inc87, label %if.then84

if.then84:                                        ; preds = %if.end81
  %call85 = tail call signext i8 @Perl_sv_utf8_decode(%struct.sv* %call56) #7
  br label %for.inc87

for.inc87:                                        ; preds = %if.end81, %if.then84
  %dec88 = add nsw i32 %argc.addr.2114, -1
  %incdec.ptr89 = getelementptr inbounds i8** %argv.addr.2113, i64 1
  %cmp52 = icmp sgt i32 %dec88, 0
  br i1 %cmp52, label %for.body54, label %if.end91

if.end91:                                         ; preds = %cond.end, %for.inc87, %if.end33
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare void @Perl_av_clear(%struct.av*) #3

; Function Attrs: optsize
declare signext i8 @Perl_sv_utf8_decode(%struct.sv*) #3

; Function Attrs: optsize
declare i32 @Perl_mg_size(%struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_av_shift(%struct.av*) #3

; Function Attrs: optsize
declare void @Perl_save_freesv(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_sv_catpvf(%struct.sv*, i8*, ...) #3

; Function Attrs: noreturn optsize
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #6

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize uwtable
define void @Perl_my_failure_exit() #0 {
entry:
  %call = tail call i32* @__errno_location() #7
  %0 = load i32* %call, align 4, !tbaa !3
  %and = and i32 %0, 255
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #7
  %1 = load i32* %call1, align 4, !tbaa !3
  store i32 %1, i32* @PL_statusvalue, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.end17, label %if.then2

if.then2:                                         ; preds = %if.then
  %and3 = and i32 %1, 65535
  store i32 %and3, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %entry
  %2 = load i32* @PL_statusvalue, align 4, !tbaa !3
  %shr = ashr i32 %2, 8
  %and4 = and i32 %shr, 255
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.else11, label %if.then6

if.then6:                                         ; preds = %if.else
  store i32 %shr, i32* @PL_statusvalue, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %shr, -1
  br i1 %cmp7, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.then6
  %and9 = and i32 %shr, 65535
  store i32 %and9, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %if.end17

if.else11:                                        ; preds = %if.else
  store i32 255, i32* @PL_statusvalue, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.then6, %if.then8, %if.else11, %if.then2
  tail call fastcc void @S_my_exit_jump() #8
  ret void
}

; Function Attrs: optsize
declare i32* @__errno_location() #3

; Function Attrs: optsize
declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @S_incpush_if_exists(%struct.sv* %dir) #0 {
entry:
  %tmpstatbuf = alloca %struct.stat, align 8
  %0 = bitcast %struct.stat* %tmpstatbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #2
  %sv_any = getelementptr inbounds %struct.sv* %dir, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %1 to i8**
  %2 = load i8** %xpv_pv, align 8, !tbaa !0
  %call = call i32 @stat(i8* %2, %struct.stat* %tmpstatbuf) #7
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat* %tmpstatbuf, i64 0, i32 3
  %3 = load i32* %st_mode, align 8, !tbaa !3
  %and = and i32 %3, 61440
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.gv** @PL_incgv, align 8, !tbaa !0
  %sv_any2 = getelementptr inbounds %struct.gv* %4, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any2, align 8, !tbaa !0
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp, align 8, !tbaa !0
  %gp_av = getelementptr inbounds %struct.gp* %6, i64 0, i32 4
  %7 = load %struct.av** %gp_av, align 8, !tbaa !0
  %tobool = icmp eq %struct.av* %7, null
  br i1 %tobool, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.then
  %call6 = call %struct.gv* @Perl_gv_AVadd(%struct.gv* %4) #7
  %sv_any7 = getelementptr inbounds %struct.gv* %call6, i64 0, i32 0
  %8 = load %struct.xpvgv** %sv_any7, align 8, !tbaa !0
  %xgv_gp8 = getelementptr inbounds %struct.xpvgv* %8, i64 0, i32 7
  %9 = load %struct.gp** %xgv_gp8, align 8, !tbaa !0
  %gp_av9 = getelementptr inbounds %struct.gp* %9, i64 0, i32 4
  %10 = load %struct.av** %gp_av9, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi %struct.av* [ %10, %cond.false ], [ %7, %if.then ]
  call void @Perl_av_push(%struct.av* %cond, %struct.sv* %dir) #7
  %call10 = call %struct.sv* @Perl_newSV(i64 0) #7
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %dir.addr.0 = phi %struct.sv* [ %call10, %cond.end ], [ %dir, %land.lhs.true ], [ %dir, %entry ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #2
  ret %struct.sv* %dir.addr.0
}

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #1

; Function Attrs: optsize
declare void @Perl_hv_magic(%struct.hv*, %struct.gv*, i32) #3

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #3

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #3

; Function Attrs: optsize
declare i32 @getpid() #3

; Function Attrs: optsize
declare i32 @Perl_runops_standard() #3

; Function Attrs: optsize
declare void @Perl_sv_nosharing(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_sv_nolocking(%struct.sv*) #3

; Function Attrs: optsize
declare void @Perl_sv_nounlocking(%struct.sv*) #3

; Function Attrs: optsize
declare i32 @Perl_runops_debug() #3

; Function Attrs: optsize
declare void @Perl_peep(%struct.op*) #3

; Function Attrs: optsize
declare %struct.regexp* @Perl_pregcomp(i8*, i8*, %struct.pmop*) #3

; Function Attrs: optsize
declare i32 @Perl_regexec_flags(%struct.regexp*, i8*, i8*, i8*, i32, %struct.sv*, i8*, i32) #3

; Function Attrs: optsize
declare i8* @Perl_re_intuit_start(%struct.regexp*, %struct.sv*, i8*, i8*, i32, %struct.re_scream_pos_data_s*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_re_intuit_string(%struct.regexp*) #3

; Function Attrs: optsize
declare void @Perl_pregfree(%struct.regexp*) #3

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entereval() #3

; Function Attrs: optsize
declare %struct.op* @Perl_pp_entersub() #3

; Function Attrs: optsize
declare %struct.sv* @Perl_filter_add(i32 (i32, %struct.sv*, i32)*, %struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_e_script(i32 %idx, %struct.sv* %buf_sv, i32 %maxlen) #0 {
entry:
  %0 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %1 to i8**
  %2 = load i8** %xpv_pv, align 8, !tbaa !0
  %call = tail call i8* @strchr(i8* %2, i32 10) #7
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %call, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %3 = bitcast i8* %xpv_cur to i64*
  %4 = load i64* %3, align 8, !tbaa !5
  %add.ptr4 = getelementptr inbounds i8* %2, i64 %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  %cmp = icmp eq i8* %cond, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @Perl_filter_del(i32 (i32, %struct.sv*, i32)* @read_e_script) #7
  br label %return

if.end:                                           ; preds = %cond.end
  %sub.ptr.lhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @Perl_sv_catpvn_flags(%struct.sv* %buf_sv, i8* %2, i64 %sub.ptr.sub, i32 2) #7
  %5 = load %struct.sv** @PL_e_script, align 8, !tbaa !0
  tail call void @Perl_sv_chop(%struct.sv* %5, i8* %cond) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: optsize
declare void @Perl_sv_insert(%struct.sv*, i64, i64, i8*, i64) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @chdir(i8*) #3

; Function Attrs: optsize
declare %struct.av* @Perl_pad_new(i32) #3

; Function Attrs: optsize
declare void @Perl_boot_core_PerlIO() #3

; Function Attrs: optsize
declare void @Perl_boot_core_UNIVERSAL() #3

; Function Attrs: optsize
declare void @Perl_boot_core_xsutils() #3

; Function Attrs: optsize
declare i32 @PerlIO_binmode(%struct._PerlIO**, i32, i32, i8*) #3

; Function Attrs: optsize
declare i32 @Perl_yyparse() #3

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #3

; Function Attrs: optsize
declare void @Perl_save_I32(i32*) #3

; Function Attrs: optsize
declare void @Perl_gv_check(%struct.hv*) #3

; Function Attrs: optsize
declare void @Perl_lex_start(%struct.sv*) #3

; Function Attrs: optsize
declare %struct._PerlIO** @Perl_PerlIO_stdin() #3

; Function Attrs: optsize
declare i8* @Perl_sv_gets(%struct.sv*, %struct._PerlIO**, i32) #3

; Function Attrs: optsize
declare i8* @Perl_instr(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(%struct._PerlIO**, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i32 @fstat(i32, %struct.stat* nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(%struct._PerlIO**) #3

; Function Attrs: optsize
declare i8* @Perl_find_script(i8*, i8 signext, i8**, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchfile(i8*) #3

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_fdopen(i32, i8*) #3

; Function Attrs: optsize
declare i32 @fcntl(i32, i32, ...) #3

; Function Attrs: optsize
declare %struct._PerlIO** @PerlIO_open(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @strerror(i32) #3

; Function Attrs: optsize
declare void @Perl_filter_del(i32 (i32, %struct.sv*, i32)*) #3

; Function Attrs: optsize
declare void @Perl_sv_chop(%struct.sv*, i8*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
